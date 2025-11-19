uint64_t sub_216915F70()
{
  OUTLINED_FUNCTION_82_0();
  if (qword_27CAB5A58 != -1)
  {
    OUTLINED_FUNCTION_2_45();
  }

  v1 = *(v0 + 336);
  v2 = sub_217007CA4();
  __swift_project_value_buffer(v2, qword_27CABCA88);
  v3 = v1;
  v4 = sub_217007C84();
  v5 = sub_21700ED84();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 336);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_216679000, v4, v5, "Unable to perform action due to error: '%@'  Attempting to use fallback action.", v7, 0xCu);
    sub_21669987C(v8, &qword_27CABF880);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v11 = *(v0 + 320);
  v12 = *(v0 + 152);

  sub_216681B64(v12 + *(v11 + 20), v0 + 56, &qword_27CAB6DB0);
  if (!*(v0 + 80))
  {
    v24 = *(v0 + 280);

    sub_21669987C(v0 + 56, &qword_27CAB6DB0);
    swift_willThrow();

    v25 = OUTLINED_FUNCTION_5_36();
    v26(v25);
    sub_216916A88(v24);
    OUTLINED_FUNCTION_10_31();

    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_91_0();

    __asm { BRAA            X1, X16 }
  }

  v14 = *(v0 + 176);
  v13 = *(v0 + 184);
  v15 = *(v0 + 168);
  sub_2166A0F18((v0 + 56), v0 + 16);
  (*(v14 + 104))(v13, *MEMORY[0x277D21E18], v15);
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v0 + 360) = v16;
  *v16 = v17;
  v16[1] = sub_216916368;
  OUTLINED_FUNCTION_91_0();

  return MEMORY[0x28217F468](v18, v19, v20, v21, v22);
}

uint64_t sub_21691624C()
{
  OUTLINED_FUNCTION_82_0();
  v1 = v0[35];
  v3 = v0[33];
  v2 = v0[34];
  v5 = v0[31];
  v4 = v0[32];
  v6 = v0[29];
  v7 = v0[30];

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  sub_216916A88(v1);
  v8 = OUTLINED_FUNCTION_0_70();
  (*(v9 + 104))(v8, *MEMORY[0x277D21CA8]);

  OUTLINED_FUNCTION_3();

  return v10();
}

uint64_t sub_216916368()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  v2[46] = v0;

  if (v0)
  {
    (*(v2[22] + 8))(v2[23], v2[21]);
    v6 = v2[37];
    v7 = v2[38];
    v8 = sub_21691680C;
  }

  else
  {
    v10 = v2[26];
    v9 = v2[27];
    v11 = v2[25];
    (*(v2[22] + 8))(v2[23], v2[21]);
    (*(v10 + 8))(v9, v11);
    v6 = v2[37];
    v7 = v2[38];
    v8 = sub_2169164C8;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

void sub_2169164C8()
{
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_7_36();

  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 16);
  v3 = OUTLINED_FUNCTION_5_36();
  v4(v3);
  sub_216916A88(v1);
  v5 = OUTLINED_FUNCTION_0_70();
  (*(v6 + 104))(v5, *MEMORY[0x277D21CA8]);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_91_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2169165B8()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 12));
  if (qword_27CAB5A58 != -1)
  {
    OUTLINED_FUNCTION_2_45();
  }

  v1 = v0[44];
  v2 = sub_217007CA4();
  __swift_project_value_buffer(v2, qword_27CABCA88);
  v3 = v1;
  v4 = sub_217007C84();
  v5 = sub_21700ED84();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[44];
  v9 = v0[34];
  v8 = v0[35];
  v10 = v0[33];
  v11 = v0[30];
  v23 = v0[31];
  v24 = v0[32];
  v12 = v0[29];
  if (v6)
  {
    v22 = v0[35];
    v13 = swift_slowAlloc();
    v21 = v9;
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = v7;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_216679000, v4, v5, "Unable to perform action due to error: '%@'", v13, 0xCu);
    sub_21669987C(v14, &qword_27CABF880);
    v9 = v21;
    OUTLINED_FUNCTION_6();
    v8 = v22;
    OUTLINED_FUNCTION_6();
  }

  (*(v11 + 8))(v23, v12);
  (*(v10 + 8))(v9, v24);
  sub_216916A88(v8);
  v17 = OUTLINED_FUNCTION_0_70();
  (*(v18 + 104))(v17, *MEMORY[0x277D21CA8]);

  OUTLINED_FUNCTION_3();

  return v19();
}

void sub_21691680C()
{
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_7_36();

  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 16);
  v3 = OUTLINED_FUNCTION_5_36();
  v4(v3);
  sub_216916A88(v1);
  OUTLINED_FUNCTION_10_31();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_91_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2169168D8()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CABCA88);
  __swift_project_value_buffer(v0, qword_27CABCA88);
  return sub_217007C94();
}

uint64_t sub_216916958()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v0 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_21677A0BC;

  return sub_216915840(v6, v4, v2);
}

unint64_t sub_216916A00(uint64_t a1)
{
  result = sub_216857328();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216916A2C()
{
  result = qword_27CABCAA0;
  if (!qword_27CABCAA0)
  {
    type metadata accessor for RoutedAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCAA0);
  }

  return result;
}

uint64_t sub_216916A88(uint64_t a1)
{
  v2 = type metadata accessor for RoutedActionIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ContextMenuItem()
{
  result = qword_27CABCAA8;
  if (!qword_27CABCAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216916B58()
{
  type metadata accessor for MenuActionType();
  if (v0 <= 0x3F)
  {
    sub_216833F44();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_216916C08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCAB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA360);
  sub_2166D9530(&qword_27CABCAC0, &qword_27CABCAB8);
  sub_2169176E0();
  return sub_21700AE24();
}

uint64_t sub_216916CF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCAD0);
  sub_2166D9530(&qword_27CABCAD8, &qword_27CABCAD0);
  return sub_217007FC4();
}

uint64_t sub_216917050()
{
  v1 = type metadata accessor for MenuActionType();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  v4 = v3 - v2;
  sub_21691775C(v0, v3 - v2);
  swift_getEnumCaseMultiPayload();
  sub_2169177C0(v4);
  return 0;
}

uint64_t sub_21691719C()
{
  v1 = sub_21700C924();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  v5 = v4 - v3;
  v6 = type metadata accessor for MenuActionType();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v9 = v8 - v7;
  sub_21691775C(v0, v8 - v7);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 0xDu:
    case 0x16u:
    case 0x17u:
    case 0x18u:
    case 0x19u:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Fu:
    case 0x24u:
    case 0x27u:
    case 0x29u:
      goto LABEL_6;
    case 2u:
    case 3u:
      sub_2169177C0(v9);
      return sub_21700ADB4();
    case 4u:
      (*(v2 + 32))(v5, v9, v1);
      v12 = sub_21700C6C4();
      if (v12 == 2 || (v12 & 1) == 0)
      {
        OUTLINED_FUNCTION_40();
      }

      (*(v2 + 8))(v5, v1);
      return sub_21700ADB4();
    case 5u:
      v11 = *(v9 + 16);

      if (v11)
      {
        return sub_21700ADA4();
      }

      else
      {
        return 0;
      }

    case 6u:
      OUTLINED_FUNCTION_40();
      sub_2169177C0(v9);
      return sub_21700ADB4();
    case 7u:
      sub_2169177C0(v9);
      return sub_21700ADD4();
    case 8u:
    case 9u:
    case 0xBu:
    case 0xCu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x12u:
    case 0x14u:
    case 0x15u:
    case 0x1Au:
    case 0x20u:
    case 0x21u:
    case 0x22u:
    case 0x23u:
    case 0x25u:
    case 0x26u:
    case 0x28u:
    case 0x2Au:
    case 0x2Bu:
    case 0x2Cu:
      return sub_21700ADB4();
    case 0xAu:
    case 0x13u:
      OUTLINED_FUNCTION_40();
      return sub_21700ADB4();
    case 0x1Du:
    case 0x1Eu:
      OUTLINED_FUNCTION_40();
      return sub_21700ADB4();
    default:
      sub_2169177C0(v9);
LABEL_6:
      OUTLINED_FUNCTION_0_71();
      return sub_21700ADB4();
  }
}

unint64_t sub_2169176E0()
{
  result = qword_27CABCAC8;
  if (!qword_27CABCAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCAC8);
  }

  return result;
}

uint64_t sub_21691775C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MenuActionType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2169177C0(uint64_t a1)
{
  v2 = type metadata accessor for MenuActionType();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216917824(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_216917864(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2169178C8(void *a1)
{
  (*v1)();
  v3 = [a1 transitionCoordinator];
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    v6 = *(v1 + 16);
    v5[1] = *v1;
    v5[2] = v6;
    v7 = *(v1 + 48);
    v5[3] = *(v1 + 32);
    v5[4] = v7;
    OUTLINED_FUNCTION_0_72();
    OUTLINED_FUNCTION_1_58();
    v11[2] = v8;
    v11[3] = &block_descriptor_6;
    v9 = _Block_copy(v11);

    [v4 animateAlongsideTransition:0 completion:v9];
    _Block_release(v9);
    swift_unknownObjectRelease();
  }

  else
  {
    (*(v1 + 16))();
  }

  return 1;
}

uint64_t sub_216917A08(void *a1, uint64_t a2)
{
  result = [a1 isCancelled];
  if ((result & 1) == 0)
  {
    return (*(a2 + 16))();
  }

  return result;
}

uint64_t sub_216917A44(void *a1)
{
  (*(v1 + 32))();
  v3 = [a1 transitionCoordinator];
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    v6 = *(v1 + 16);
    v5[1] = *v1;
    v5[2] = v6;
    v7 = *(v1 + 48);
    v5[3] = *(v1 + 32);
    v5[4] = v7;
    OUTLINED_FUNCTION_0_72();
    OUTLINED_FUNCTION_1_58();
    v11[2] = v8;
    v11[3] = &block_descriptor_7;
    v9 = _Block_copy(v11);

    [v4 animateAlongsideTransition:0 completion:v9];
    _Block_release(v9);
    swift_unknownObjectRelease();
  }

  else
  {
    (*(v1 + 48))();
  }

  return 1;
}

uint64_t sub_216917B84(void *a1, uint64_t a2)
{
  result = [a1 isCancelled];
  if ((result & 1) == 0)
  {
    return (*(a2 + 48))();
  }

  return result;
}

uint64_t sub_216917C80(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v58 = a1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  OUTLINED_FUNCTION_1();
  v65 = v2;
  MEMORY[0x28223BE20](v3);
  v64 = &v56 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v62 = v6;
  v63 = v5;
  MEMORY[0x28223BE20](v5);
  v61 = &v56 - v7;
  sub_217006224();
  OUTLINED_FUNCTION_1();
  v59 = v9;
  v60 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v57 = v11 - v10;
  type metadata accessor for FlowAction.Destination(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v15 = v14 - v13;
  v16 = sub_21700D704();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v56 - v23;
  v56 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7();
  v30 = v29 - v28;
  v31 = type metadata accessor for FlowAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_7();
  v35 = v34 - v33;
  if (sub_21688D828(0, 48))
  {
    sub_21700D234();
  }

  else
  {
    sub_21700D6F4();
    sub_21700D6D4();
    (*(v18 + 16))(v21, v24, v16);
    sub_21700D244();
    (*(v18 + 8))(v24, v16);
  }

  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80E8) + 48);
  sub_21700C084();
  OUTLINED_FUNCTION_34();
  v38 = v58;
  (*(v37 + 16))(v15, v58);
  *(v15 + v36) = *(v38 + *(type metadata accessor for GoToAlbumAction() + 20));
  swift_storeEnumTagMultiPayload();
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v39 = sub_217005EF4();
  OUTLINED_FUNCTION_3_57(v39);
  v40 = type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_3_57(v40);
  v41 = type metadata accessor for ReferrerInfo();
  OUTLINED_FUNCTION_3_57(v41);
  v42 = v35 + v31[10];
  *(v42 + 32) = 0;
  *v42 = 0u;
  *(v42 + 16) = 0u;
  v43 = v56;
  (*(v26 + 16))(v35, v30, v56);
  sub_2167B9654(v15, v35 + v31[5], type metadata accessor for FlowAction.Destination);
  v44 = v57;
  sub_217006214();
  v58 = sub_2170061F4();
  v46 = v45;
  (*(v59 + 8))(v44, v60);
  sub_2167B96B4(v15, type metadata accessor for FlowAction.Destination);
  (*(v26 + 8))(v30, v43);
  v47 = (v35 + v31[6]);
  *v47 = v58;
  v47[1] = v46;
  *(v35 + v31[7]) = 0;
  sub_2167A66B4(&v68, v42);
  type metadata accessor for ObjectGraph();
  v48 = v61;
  v49 = v63;
  sub_21700E094();
  *(&v69 + 1) = v31;
  v70 = sub_2169182F0(qword_280E45BB8, type metadata accessor for FlowAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v68);
  sub_2167B9654(v35, boxed_opaque_existential_1, type metadata accessor for FlowAction);
  v52 = v64;
  v51 = v65;
  v53 = v67;
  (*(v65 + 104))(v64, *MEMORY[0x277D21E18], v67);
  v54 = sub_21700D5E4();
  (*(v51 + 8))(v52, v53);
  (*(v62 + 8))(v48, v49);
  sub_2167B96B4(v35, type metadata accessor for FlowAction);
  __swift_destroy_boxed_opaque_existential_1Tm(&v68);
  return v54;
}

uint64_t sub_2169182F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216918338()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21691838C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a3;
  v8[11] = a5;
  v8[8] = a1;
  v8[9] = a2;
  v9 = sub_21700D284();
  v8[14] = v9;
  OUTLINED_FUNCTION_2(v9);
  v8[15] = v10;
  v8[16] = OUTLINED_FUNCTION_80();
  GenericMusicItemStationAction = type metadata accessor for CreateGenericMusicItemStationAction();
  v8[17] = GenericMusicItemStationAction;
  OUTLINED_FUNCTION_36(GenericMusicItemStationAction);
  v8[18] = OUTLINED_FUNCTION_80();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7088);
  OUTLINED_FUNCTION_36(v12);
  v8[19] = OUTLINED_FUNCTION_80();
  v13 = sub_2170067A4();
  v8[20] = v13;
  OUTLINED_FUNCTION_2(v13);
  v8[21] = v14;
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0);
  OUTLINED_FUNCTION_36(v15);
  v8[24] = OUTLINED_FUNCTION_80();
  v16 = sub_217006924();
  v8[25] = v16;
  OUTLINED_FUNCTION_2(v16);
  v8[26] = v17;
  v8[27] = OUTLINED_FUNCTION_80();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  OUTLINED_FUNCTION_36(v18);
  v8[28] = OUTLINED_FUNCTION_80();
  v19 = type metadata accessor for ContentDescriptor();
  v8[29] = v19;
  OUTLINED_FUNCTION_36(v19);
  v8[30] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v8[31] = sub_21700EA24();
  v21 = sub_21700E9B4();
  v8[32] = v21;
  v8[33] = v20;

  return MEMORY[0x2822009F8](sub_2169185F0, v21, v20);
}

uint64_t sub_2169185F0()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[9];
  StationAction = type metadata accessor for CreateStationAction();
  sub_216919014(v3 + *(StationAction + 20), v1);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v6 = v0[28];
  v7 = v0[25];
  if (EnumTagSinglePayload == 1)
  {

    sub_2166997CC(v6, &qword_27CAB6A00);
    type metadata accessor for MapCreateStationActionImplementation.Error();
    OUTLINED_FUNCTION_0_73();
    OUTLINED_FUNCTION_3_0();
    __swift_storeEnumTagSinglePayload(v8, 1, 2, v7);
    swift_willThrow();
    goto LABEL_9;
  }

  v9 = v0[24];
  sub_2168ED900(v0[28], v0[30]);
  sub_216C6C5E8(v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v7) == 1)
  {
    v10 = v0[30];
    v11 = v0[24];
    v12 = v0[25];

    sub_2166997CC(v11, &unk_27CABF9C0);
    type metadata accessor for MapCreateStationActionImplementation.Error();
    OUTLINED_FUNCTION_0_73();
    OUTLINED_FUNCTION_3_0();
    __swift_storeEnumTagSinglePayload(v13, 2, 2, v12);
    swift_willThrow();
LABEL_8:
    sub_2169190E4(v10, type metadata accessor for ContentDescriptor);
LABEL_9:
    OUTLINED_FUNCTION_5_37();

    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_7_3();

    __asm { BRAA            X1, X16 }
  }

  v15 = v0[19];
  v14 = v0[20];
  (*(v0[26] + 32))(v0[27], v0[24], v0[25]);
  sub_217006A84();
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    v10 = v0[30];
    v17 = v0[26];
    v16 = v0[27];
    v18 = v0[25];
    v19 = v0[19];

    sub_2166997CC(v19, &qword_27CAB7088);
    type metadata accessor for MapCreateStationActionImplementation.Error();
    OUTLINED_FUNCTION_0_73();
    OUTLINED_FUNCTION_3_0();
    v21 = v20;
    (*(v17 + 16))(v20, v16, v18);
    __swift_storeEnumTagSinglePayload(v21, 0, 2, v18);
    swift_willThrow();
    (*(v17 + 8))(v16, v18);
    goto LABEL_8;
  }

  v22 = v0[22];
  v23 = v0[23];
  v24 = v0[20];
  v25 = v0[21];
  v26 = v0[18];
  v28 = v0[15];
  v27 = v0[16];
  v29 = v0[14];
  v30 = v0[9];
  (*(v25 + 32))(v23, v0[19], v24);
  (*(v25 + 16))(v22, v23, v24);
  (*(v28 + 16))(v27, v30, v29);
  sub_216A3F730(v22, v27, v26);
  v33 = v0[18];
  v0[5] = v0[17];
  v0[6] = sub_21691909C(&qword_27CABC010, type metadata accessor for CreateGenericMusicItemStationAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_2168F95F0(v33, boxed_opaque_existential_1);
  v35 = swift_task_alloc();
  v0[34] = v35;
  type metadata accessor for MapCreateStationActionImplementation();
  swift_getWitnessTable();
  *v35 = v0;
  v35[1] = sub_216918AB4;
  OUTLINED_FUNCTION_7_3();

  return sub_216B6DB60();
}

uint64_t sub_216918AB4()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = *(v2 + 256);
    v4 = *(v2 + 264);
    v5 = sub_216918D04;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 16);
    v3 = *(v2 + 256);
    v4 = *(v2 + 264);
    v5 = sub_216918BD0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_216918BD0()
{
  v1 = v0[30];
  v2 = v0[27];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[23];
  v6 = v0[21];
  v7 = v0[20];
  v8 = v0[18];

  OUTLINED_FUNCTION_2_46();
  sub_2169190E4(v8, v9);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  OUTLINED_FUNCTION_1_59();
  sub_2169190E4(v1, v10);

  OUTLINED_FUNCTION_3();

  return v11();
}

void sub_216918D04()
{
  v1 = v0[30];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  v5 = v0[23];
  v6 = v0[20];
  v7 = v0[21];
  v8 = v0[18];

  OUTLINED_FUNCTION_2_46();
  sub_2169190E4(v8, v9);
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  OUTLINED_FUNCTION_1_59();
  sub_2169190E4(v1, v10);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  OUTLINED_FUNCTION_5_37();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_3();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_216918E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  v15 = *(a6 + 16);
  v16 = *(a6 + 24);
  *v14 = v6;
  v14[1] = sub_2167AF644;

  return sub_21691838C(a1, a2, a3, v12, a5, v13, v15, v16);
}

uint64_t sub_216918EE8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216918F24(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216918FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_216ED7B54(a1, a2, a3, WitnessTable);
}

uint64_t sub_216919014(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21691909C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2169190E4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216919138()
{
  v0 = sub_217006924();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_2169191E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v81 = a3;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_77();
  v76 = v14 - v15;
  MEMORY[0x28223BE20](v16);
  v78 = &v73 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v73 - v19;
  MEMORY[0x28223BE20](v21);
  sub_21700D7A4();
  OUTLINED_FUNCTION_0_7();
  sub_21700CE04();
  v82 = v7;
  v22 = *(v7 + 16);
  v88 = a2;
  v85 = v5;
  v23 = v5;
  v24 = v81;
  v80 = v7 + 16;
  v74 = v22;
  v22(v10, a2, v23);
  v75 = v10;
  v25 = v83;
  sub_21700D734();
  v84 = a1;
  sub_21700CE04();
  v26 = sub_21700CDB4();
  v28 = v27;
  v31 = *(v12 + 8);
  v29 = (v12 + 8);
  v30 = v31;
  (v31)(v20, v25);
  v77 = v28;
  if (v28)
  {
    v32 = type metadata accessor for SocialCardLockup();
    v86 = v26;
    v87 = v28;
    sub_21700F364();
    sub_21700CE04();
    OUTLINED_FUNCTION_13_22();
    v33 = OUTLINED_FUNCTION_8_30();
    v30(v33);
    sub_21700CE04();
    sub_21700D2E4();
    v34 = OUTLINED_FUNCTION_8_30();
    v30(v34);
    sub_21700CE04();
    v35 = sub_21700CDB4();
    v37 = v36;
    v38 = OUTLINED_FUNCTION_8_30();
    v30(v38);
    v39 = (v24 + *(v32 + 36));
    *v39 = v35;
    v39[1] = v37;
    sub_21700CE04();
    v40 = sub_21700CDB4();
    v42 = v41;
    v43 = OUTLINED_FUNCTION_8_30();
    v30(v43);
    v79 = v32;
    v44 = (v24 + *(v32 + 40));
    *v44 = v40;
    v44[1] = v42;
    v45 = v78;
    sub_21700CE04();
    v46 = sub_21700CDB4();
    v48 = v47;
    (v30)(v45, v25);
    if (v48)
    {
      v49 = (v24 + *(v79 + 44));
      *v49 = v46;
      v49[1] = v48;
      v50 = v84;
      sub_21700CE04();
      OUTLINED_FUNCTION_13_22();
      v51 = OUTLINED_FUNCTION_8_30();
      v30(v51);
      type metadata accessor for Artwork();
      v78 = v29;
      v52 = v50;
      sub_21700CE04();
      v53 = v75;
      v54 = v48;
      v55 = v74;
      v74(v75, v54, v85);
      v56 = v79;
      sub_2166D70B4(&qword_280E2BF60, type metadata accessor for Artwork);
      OUTLINED_FUNCTION_8_30();
      sub_21700D734();
      type metadata accessor for ContentDescriptor();
      OUTLINED_FUNCTION_0_7();
      sub_21700CE04();
      v55(v53, v88, v85);
      sub_2166D70B4(qword_280E40390, type metadata accessor for ContentDescriptor);
      OUTLINED_FUNCTION_8_30();
      sub_21700D734();
      v57 = v76;
      sub_21700CE04();
      v58 = sub_21700CD44();
      (*(v82 + 8))(v88, v85);
      v59 = v83;
      (v30)(v52, v83);
      result = (v30)(v57, v59);
      *(v24 + *(v56 + 48)) = v58 & 1;
      return result;
    }

    v61 = v88;
    v68 = sub_21700E2E4();
    OUTLINED_FUNCTION_2_47();
    sub_2166D70B4(v69, v70);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_12();
    *v71 = 0x69546E6F74747562;
    v71[1] = 0xEB00000000656C74;
    v71[2] = v79;
    (*(*(v68 - 8) + 104))(v71, *MEMORY[0x277D22530], v68);
  }

  else
  {
    v61 = v88;
    v62 = sub_21700E2E4();
    OUTLINED_FUNCTION_2_47();
    sub_2166D70B4(v63, v64);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_12();
    v66 = v65;
    v67 = type metadata accessor for SocialCardLockup();
    *v66 = 25705;
    v66[1] = 0xE200000000000000;
    v66[2] = v67;
    (*(*(v62 - 8) + 104))(v66, *MEMORY[0x277D22530], v62);
  }

  swift_willThrow();
  (*(v82 + 8))(v61, v85);
  (v30)(v84, v25);
  result = sub_216697664(v24, &qword_27CAB6D58);
  if (v77)
  {
    v72 = type metadata accessor for SocialCardLockup();
    sub_216788110(v24 + v72[5]);
    sub_216697664(v24 + v72[6], &qword_27CAB6DB0);
    sub_216697664(v24 + v72[8], &qword_27CAB6DB0);
  }

  return result;
}

uint64_t sub_216919AE8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ContentDescriptor(0);
  v4 = OUTLINED_FUNCTION_36(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_77();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v67 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  v12 = OUTLINED_FUNCTION_36(v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v67 - v13;
  v15 = type metadata accessor for Artwork(0);
  v16 = OUTLINED_FUNCTION_36(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_77();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v67 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  v24 = OUTLINED_FUNCTION_36(v23);
  MEMORY[0x28223BE20](v24);
  v26 = &v67 - v25;
  if (!sub_216FBDB0C())
  {
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCB78);
    sub_2167880BC();
    OUTLINED_FUNCTION_12();
    *v42 = xmmword_217014E10;
    *(v42 + 16) = v41;
    swift_willThrow();
    return OUTLINED_FUNCTION_0_74();
  }

  v67 = v7;
  v68 = v10;
  v69 = v14;
  v27 = sub_216FBD9AC();
  v29 = v28;
  v30 = type metadata accessor for SocialCardLockup();
  v31 = v30[5];
  v73 = v27;
  v74 = v29;
  v76 = v31;
  sub_21700F364();
  v32 = sub_21700D7A4();
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v32);
  v33 = a1 + v30[6];
  *(v33 + 32) = 0;
  *v33 = 0u;
  *(v33 + 16) = 0u;
  v34 = a1 + v30[8];
  *(v34 + 32) = 0;
  *v34 = 0u;
  *(v34 + 16) = 0u;
  v35 = sub_216FBDD00();
  v36 = 0;
  v37 = 0;
  if (v35)
  {
    v36 = sub_216FBDBA0();
  }

  v38 = (a1 + v30[9]);
  *v38 = v36;
  v38[1] = v37;
  v72 = v37;
  if (sub_216FBDEF4())
  {
    v39 = sub_216FBDD94();
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  v44 = (a1 + v30[10]);
  *v44 = v39;
  v44[1] = v40;
  v71 = v40;
  HIDWORD(v70) = sub_216FBED98();
  if ((v70 & 0x100000000) == 0)
  {
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCB78);
    sub_2167880BC();
    OUTLINED_FUNCTION_12();
    *v50 = xmmword_217027C30;
    *(v50 + 16) = v49;
    swift_willThrow();
    goto LABEL_13;
  }

  v45 = sub_216FBDBA0();
  v46 = (a1 + v30[11]);
  *v46 = v45;
  v46[1] = v47;
  v48 = a1 + v30[7];
  *(v48 + 32) = 0;
  *v48 = 0u;
  *(v48 + 16) = 0u;
  if (!sub_216FBE2DC())
  {
    v52 = 1;
    goto LABEL_21;
  }

  sub_216FBDF88(v22);
  sub_21691A084(v22, v19, type metadata accessor for Artwork);
  sub_216C7DA84(v19, v26);
  if (!v1)
  {
    OUTLINED_FUNCTION_3_58();
    v52 = 0;
LABEL_21:
    v53 = type metadata accessor for Artwork();
    v54 = 1;
    __swift_storeEnumTagSinglePayload(v26, v52, 1, v53);
    sub_21678818C(v26, a1 + v30[13], &qword_27CAB6D60);
    if (sub_216FBE6B0())
    {
      v55 = v68;
      sub_216FBE33C(v68);
      v56 = v67;
      sub_21691A084(v55, v67, type metadata accessor for ContentDescriptor);
      sub_21689C518(v56, v57, v58, v59, v60, v61, v62, v63, v67, v68, SWORD1(v68), SWORD2(v68), SBYTE6(v68), SHIBYTE(v68), v69, v70, v71, v72, v73, v74, v75, v76, v77, v78);
      if (v1)
      {
        OUTLINED_FUNCTION_4_34();
        v51 = 1;
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_4_34();
      v54 = 0;
    }

    v64 = type metadata accessor for ContentDescriptor();
    v65 = v69;
    __swift_storeEnumTagSinglePayload(v69, v54, 1, v64);
    sub_21678818C(v65, a1 + v30[14], &qword_27CAB6A00);
    v66 = sub_216FBEE70();
    result = OUTLINED_FUNCTION_0_74();
    *(a1 + v30[12]) = v66 & 1;
    return result;
  }

  OUTLINED_FUNCTION_3_58();
LABEL_13:
  v51 = 0;
LABEL_14:
  OUTLINED_FUNCTION_0_74();
  sub_216697664(a1, &qword_27CAB6D58);
  sub_216788110(a1 + v76);
  sub_216697664(v33, &qword_27CAB6DB0);
  if ((v70 & 0x100000000) != 0)
  {
    sub_216697664(a1 + v30[7], &qword_27CAB6DB0);
    sub_216697664(v34, &qword_27CAB6DB0);
  }

  else
  {
    sub_216697664(v34, &qword_27CAB6DB0);
  }

  if (v51)
  {
    return sub_216697664(a1 + v30[13], &qword_27CAB6D60);
  }

  return result;
}

uint64_t sub_21691A084(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_21691A0E4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_21691A188(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 84))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 83);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21691A1C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 84) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 84) = 0;
    }

    if (a2)
    {
      *(result + 83) = -a2;
    }
  }

  return result;
}

uint64_t sub_21691A23C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PosterLockup();
  sub_2166A6EA4();
  if (v4)
  {
    return sub_2166A0F18(&v3, a1);
  }

  else
  {
    return sub_2166A6EA4();
  }
}

uint64_t sub_21691A2FC(char a1)
{
  if (a1)
  {
    return 0x656772616CLL;
  }

  else
  {
    return 0x72616C75676572;
  }
}

uint64_t sub_21691A354@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216786440();
  *a1 = result;
  return result;
}

uint64_t sub_21691A38C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21691A2FC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_21691A3B8()
{
  OUTLINED_FUNCTION_22_3();
  v85 = v0;
  v103 = v2;
  v4 = v3;
  v93 = v5;
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v92 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_57();
  v10 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v14);
  v16 = &v79 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v79 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v79 - v21;
  sub_21700D7A4();
  OUTLINED_FUNCTION_17_5();
  sub_21700CE04();
  v23 = *(v92 + 16);
  v91 = v6;
  v89 = v92 + 16;
  v88 = v23;
  (v23)(v1, v103, v6);
  v87 = v22;
  v86 = v1;
  v24 = v4;
  sub_21700D734();
  sub_21700CE04();
  v25 = sub_21700CDB4();
  v27 = v26;
  v28 = *(v12 + 8);
  v94 = v10;
  v29 = v10;
  v30 = v28;
  v28(v19, v29);
  v90 = v12 + 8;
  if (!v27)
  {
    v35 = sub_21700E2E4();
    OUTLINED_FUNCTION_5_38();
    sub_2166D5AF0(v41, v42);
    OUTLINED_FUNCTION_12();
    v39 = v43;
    v40 = type metadata accessor for PosterLockup();
    *v39 = 25705;
    v39[1] = 0xE200000000000000;
    goto LABEL_5;
  }

  v81 = v25;
  sub_21700CE04();
  v31 = sub_21700CD24();
  v32 = v24;
  v34 = v33;
  v30(v16, v94);
  if (v34)
  {

    v35 = sub_21700E2E4();
    OUTLINED_FUNCTION_5_38();
    sub_2166D5AF0(v36, v37);
    OUTLINED_FUNCTION_12();
    v39 = v38;
    v40 = type metadata accessor for PosterLockup();
    *v39 = 0xD000000000000014;
    v39[1] = 0x8000000217081C10;
LABEL_5:
    v39[2] = v40;
    (*(*(v35 - 8) + 104))(v39, *MEMORY[0x277D22530], v35);
    swift_willThrow();
    v44 = 0;
    v45 = v93;
    v46 = v91;
    goto LABEL_11;
  }

  v47 = type metadata accessor for PosterLockup();
  v48 = v81;
  *&v99 = v81;
  *(&v99 + 1) = v27;
  sub_21700DF14();
  v45 = v93;
  sub_21700F364();
  *(v45 + v47[8]) = v31;
  v49 = v87;
  sub_21700CE04();
  sub_21700D2E4();
  v30(v49, v94);
  v50 = v97;
  v82 = v32;
  if (v97)
  {
    v51 = v98;
    __swift_project_boxed_opaque_existential_1(v96, v97);
    *&v99 = v48;
    *(&v99 + 1) = v27;
    sub_21700F364();
    sub_216BA9D20(v95, v50, v51, &v99);
    sub_216788110(v95);
    __swift_destroy_boxed_opaque_existential_1Tm(v96);
  }

  else
  {

    sub_216697664(v96, &qword_27CAB6DB0);
    v99 = 0u;
    v100 = 0u;
    v101 = 0;
  }

  v52 = v45 + v47[13];
  v53 = v100;
  *v52 = v99;
  *(v52 + 16) = v53;
  *(v52 + 32) = v101;
  sub_21700CE04();
  v46 = v91;
  v54 = v88;
  (v88)(v84, v103, v91);
  OUTLINED_FUNCTION_27_0();
  v55 = v85;
  sub_21691B028();
  if (!v55)
  {
    v57 = v47[6];
    v83 = 0;
    v58 = v46;
    memcpy((v45 + v57), v102, 0x54uLL);
    v85 = type metadata accessor for Artwork();
    v79 = v47;
    v59 = v87;
    v60 = v54;
    sub_21700CE04();
    v61 = v86;
    (v60)(v86, v103, v58);
    v84 = sub_2166D5AF0(&qword_280E2BF60, type metadata accessor for Artwork);
    OUTLINED_FUNCTION_31_1();
    sub_21700D734();
    v62 = type metadata accessor for VideoArtwork();
    sub_21700CE04();
    (v88)(v61, v103, v91);
    v63 = v79;
    sub_2166D5AF0(qword_280E44448, type metadata accessor for VideoArtwork);
    OUTLINED_FUNCTION_31_1();
    sub_21700D734();
    sub_21700CE04();
    sub_21700CDB4();
    OUTLINED_FUNCTION_35_17();
    v80 = v30;
    OUTLINED_FUNCTION_23_20();
    (v30)();
    v64 = (v45 + v63[7]);
    *v64 = v62;
    v64[1] = v59;
    v65 = type metadata accessor for ContentDescriptor();
    OUTLINED_FUNCTION_17_5();
    sub_21700CE04();
    OUTLINED_FUNCTION_43_16();
    v88();
    v66 = v63;
    sub_2166D5AF0(qword_280E40390, type metadata accessor for ContentDescriptor);
    OUTLINED_FUNCTION_31_1();
    sub_21700D734();
    sub_21700CE04();
    sub_21700D2E4();
    v67 = v94;
    v68 = v80;
    v80(v59, v94);
    OUTLINED_FUNCTION_32_1();
    sub_21700CE04();
    sub_21700CDB4();
    v69 = OUTLINED_FUNCTION_35_17();
    v68(v69, v67);
    v70 = (v45 + v63[9]);
    *v70 = v65;
    v70[1] = v59;
    sub_21700CE04();
    v71 = v86;
    OUTLINED_FUNCTION_43_16();
    v88();
    sub_21691E81C();
    sub_21700D734();
    v72 = v100;
    v73 = v45 + v63[10];
    *v73 = v99;
    *(v73 + 16) = v72;
    sub_21700CE04();
    sub_21700CDB4();
    v74 = OUTLINED_FUNCTION_35_17();
    v75 = v80;
    v80(v74, v67);
    v76 = (v45 + v66[16]);
    *v76 = v71;
    v76[1] = v59;
    sub_21700CE04();
    sub_21691E870();
    sub_21700CCC4();
    v75(v59, v67);
    *(v45 + v66[11]) = v99;
    type metadata accessor for ColorSchemeArtwork();
    OUTLINED_FUNCTION_32_1();
    sub_21700CE04();
    v77 = v88;
    OUTLINED_FUNCTION_43_16();
    v77();
    sub_2166D5AF0(&qword_27CABA350, type metadata accessor for ColorSchemeArtwork);
    sub_21700D734();
    sub_21700CE04();
    v78 = v91;
    OUTLINED_FUNCTION_43_16();
    v77();
    sub_21700D734();
    (*(v92 + 8))(v103, v78);
    OUTLINED_FUNCTION_23_20();
    (v80)();
    goto LABEL_14;
  }

  v44 = 1;
LABEL_11:
  (*(v92 + 8))(v103, v46);
  OUTLINED_FUNCTION_23_20();
  (v30)();
  sub_216697664(v45, &qword_27CAB6D58);
  if (v44)
  {
    v56 = type metadata accessor for PosterLockup();
    sub_216788110(v45 + *(v56 + 20));
    sub_216697664(v45 + *(v56 + 52), &qword_27CAB6DB0);
  }

LABEL_14:
  OUTLINED_FUNCTION_21_4();
}

void sub_21691B028()
{
  OUTLINED_FUNCTION_22_3();
  v67 = v2;
  *&v68 = v0;
  v73 = v3;
  v5 = v4;
  sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v71 = v7;
  v72 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v65[1] = v8;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v9);
  *&v66 = v65 - v10;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v11);
  v12 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  v65[0] = v16;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_39_0();
  v94 = v5;
  sub_21700CE04();
  v20 = v12;
  v21 = sub_21700CDB4();
  v23 = v22;
  v69 = *(v14 + 8);
  v70 = v14 + 8;
  v69(v1, v20);
  if (!v23)
  {
    v29 = v20;
    v30 = sub_21700E2E4();
    OUTLINED_FUNCTION_5_38();
    sub_2166D5AF0(v31, v32);
    OUTLINED_FUNCTION_12();
    v34 = v33;
    *v33 = 1684957547;
    v33[1] = 0xE400000000000000;
    v33[2] = &type metadata for PosterLockup.Kind;
    v35 = MEMORY[0x277D22530];
    goto LABEL_10;
  }

  v24 = v21 == 0x7241657261757173 && v23 == 0xED00006B726F7774;
  if (!v24 && (OUTLINED_FUNCTION_45_16() & 1) == 0)
  {
    v46 = v21 == 0x777472416C6C6174 && v23 == 0xEB000000006B726FLL;
    if (v46 || (OUTLINED_FUNCTION_45_16() & 1) != 0)
    {

      OUTLINED_FUNCTION_38_14();
      v47();
      v48 = v71;
      v49 = v72;
      v50 = OUTLINED_FUNCTION_36_14();
      v51(v50);
      v52 = v68;
      sub_21691BD9C();
      if (v52)
      {
        v29 = v20;
        goto LABEL_11;
      }

      v68 = *&v82[45];
      v66 = *&v82[29];
      v38 = v83;
      v53 = v48;
      v39 = v84 | (v85 << 16);
      v75[0] = v86;
      v75[1] = v87;
      v76 = v88;
      (*(v53 + 8))(v21, v49);
      v54 = OUTLINED_FUNCTION_52_9();
      (v69)(v54);
      v42 = 1;
LABEL_13:
      v43 = v67;
      v44 = v68;
      *v67 = v66;
      v43[1] = v44;
      *(v43 + 4) = v38;
      *(v43 + 20) = v39;
      *(v43 + 42) = BYTE2(v39);
      v45 = v75[1];
      *(v43 + 43) = v75[0];
      *(v43 + 59) = v45;
      *(v43 + 75) = v76;
      *(v43 + 83) = v42;
      goto LABEL_14;
    }

    v55 = v21 == 0x64657265746E6563 && v23 == 0xEF6B726F77747241;
    if (v55 || (OUTLINED_FUNCTION_45_16() & 1) != 0)
    {

      OUTLINED_FUNCTION_38_14();
      v56();
      v57 = OUTLINED_FUNCTION_36_14();
      v58(v57);
      OUTLINED_FUNCTION_27_0();
      v59 = v68;
      sub_21691BF78();
      v29 = v20;
      if (v59)
      {
        goto LABEL_11;
      }

      v68 = v90;
      v66 = v89;
      v38 = v91;
      v39 = v92 | (v93 << 16);
      v60 = OUTLINED_FUNCTION_31_1();
      v61(v60);
      v69(v23, v20);
      v42 = 2;
      goto LABEL_13;
    }

    v29 = v20;
    v30 = sub_21700E2E4();
    OUTLINED_FUNCTION_5_38();
    sub_2166D5AF0(v62, v63);
    OUTLINED_FUNCTION_12();
    v34 = v64;
    *v64 = v21;
    v64[1] = v23;
    v64[2] = &type metadata for PosterLockup.Kind;
    v35 = MEMORY[0x277D22520];
LABEL_10:
    (*(*(v30 - 8) + 104))(v34, *v35, v30);
    swift_willThrow();
    v23 = v94;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_38_14();
  v25();
  v26 = OUTLINED_FUNCTION_36_14();
  v27(v26);
  OUTLINED_FUNCTION_27_0();
  v28 = v68;
  sub_21691BB18();
  if (!v28)
  {
    v68 = v78;
    v66 = v77;
    v38 = v79;
    v39 = v80 | (v81 << 16);
    v74[0] = *v82;
    *(v74 + 14) = *&v82[14];
    v40 = OUTLINED_FUNCTION_31_1();
    v41(v40);
    v69(v23, v20);
    v42 = 0;
    v75[0] = v74[0];
    *(v75 + 14) = *(v74 + 14);
    goto LABEL_13;
  }

  v29 = v20;
LABEL_11:
  v36 = OUTLINED_FUNCTION_31_1();
  v37(v36);
  v69(v23, v29);
LABEL_14:
  OUTLINED_FUNCTION_21_4();
}

void sub_21691B7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_22_3();
  v46 = v14;
  v16 = v15;
  OUTLINED_FUNCTION_58_10();
  v45 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  v42 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7();
  v22 = v21 - v20;
  v23 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_7();
  sub_21700CE04();
  v27 = sub_21700CDB4();
  v43 = v28;
  v44 = v27;
  v29 = *(v25 + 8);
  v30 = OUTLINED_FUNCTION_194();
  v29(v30);
  OUTLINED_FUNCTION_56_3();
  sub_21700CE04();
  (*(v18 + 16))(v22, v46, v45);
  sub_216AC6598();
  v32 = v31;
  sub_21700CE04();
  v33 = sub_21700CDB4();
  v40 = v34;
  v41 = v33;
  v35 = OUTLINED_FUNCTION_194();
  v29(v35);
  sub_21700CE04();
  v47 = sub_21700CD44();
  v36 = OUTLINED_FUNCTION_194();
  v29(v36);
  sub_21700CE04();
  sub_21691E918();
  sub_21700CCC4();
  v37 = OUTLINED_FUNCTION_194();
  v29(v37);
  OUTLINED_FUNCTION_17_5();
  sub_21700CE04();
  v38 = sub_21700CD44();
  (*(v42 + 8))(v46, v45);
  (v29)(v16, v23);
  v39 = OUTLINED_FUNCTION_194();
  v29(v39);
  *v13 = v44;
  *(v13 + 8) = v43;
  *(v13 + 16) = v32;
  *(v13 + 24) = v41;
  *(v13 + 32) = v40;
  *(v13 + 40) = v47;
  *(v13 + 41) = a13;
  *(v13 + 42) = v38;
  OUTLINED_FUNCTION_21_4();
}

double sub_21691BAD4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  sub_21691B7B0(a1, a2, a3, a4, a5, a6, a7, a8, v12, v14, SWORD2(v14), SBYTE6(v14), SHIBYTE(v14));
  if (!v9)
  {
    *a9 = v13;
    a9[1] = *v15;
    result = *&v15[11];
    *(a9 + 27) = *&v15[11];
  }

  return result;
}

void sub_21691BB18()
{
  OUTLINED_FUNCTION_22_3();
  v31 = v2;
  v4 = v3;
  v6 = v5;
  v7 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v30 = v11;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  v32 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_39_0();
  sub_21700CE04();
  v19 = *(v9 + 16);
  v19(v14, v4, v7);
  sub_21691B7B0(v1, v14, v20, v21, v22, v23, v24, v25, v30, v31, SWORD2(v31), SBYTE6(v31), SHIBYTE(v31));
  if (v0)
  {
    (*(v9 + 8))(v4, v7);
    (*(v16 + 8))(v6, v32);
  }

  else
  {
    v35 = v37;
    *v36 = *v38;
    *&v36[11] = *&v38[11];
    OUTLINED_FUNCTION_50_9();
    sub_21700CE04();
    v19(v30, v4, v7);
    sub_21691E8C4();
    sub_21700D734();
    (*(v9 + 8))(v4, v7);
    (*(v16 + 8))(v6, v32);
    v26 = v34;
    v27 = v33;
    v28 = *v36;
    v29 = v31;
    *v31 = v35;
    v29[1] = v28;
    v29[2] = *&v36[16];
    v29[3] = v27;
    *(v29 + 64) = v26;
  }

  OUTLINED_FUNCTION_21_4();
}

void sub_21691BD9C()
{
  OUTLINED_FUNCTION_22_3();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_58_10();
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  v19 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_71_1();
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v20 = v10;
  v21 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_50_9();
  sub_21700CE04();
  v11 = *(v7 + 16);
  v12 = OUTLINED_FUNCTION_194();
  v11(v12);
  sub_21691E96C();
  OUTLINED_FUNCTION_29_18();
  OUTLINED_FUNCTION_41_12();
  sub_21700CE04();
  v13 = OUTLINED_FUNCTION_194();
  v11(v13);
  sub_21691E9C0();
  OUTLINED_FUNCTION_29_18();
  (*(v19 + 8))(v2, v5);
  (*(v20 + 8))(v4, v21);
  v14 = OUTLINED_FUNCTION_59_9();
  *v0 = v22;
  *(v0 + 16) = v23;
  *(v0 + 32) = v24;
  *(v0 + 40) = v14;
  *(v0 + 56) = v15;
  *(v0 + 72) = v16;
  *(v0 + 82) = v17;
  *(v0 + 80) = v18;
  OUTLINED_FUNCTION_21_4();
}

void sub_21691BF78()
{
  OUTLINED_FUNCTION_22_3();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_58_10();
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_71_1();
  v18 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_41_12();
  sub_21700CE04();
  v12 = OUTLINED_FUNCTION_194();
  v13(v12);
  sub_21691E9C0();
  OUTLINED_FUNCTION_29_18();
  (*(v7 + 8))(v2, v5);
  (*(v10 + 8))(v4, v18);
  *v0 = OUTLINED_FUNCTION_59_9();
  *(v0 + 16) = v14;
  *(v0 + 32) = v15;
  *(v0 + 42) = v16;
  *(v0 + 40) = v17;
  OUTLINED_FUNCTION_21_4();
}

void sub_21691C0FC(void *a1@<X8>)
{
  sub_21691B028();
  if (!v1)
  {
    memcpy(a1, __src, 0x54uLL);
  }
}

unint64_t sub_21691C14C()
{
  result = qword_27CABCB80;
  if (!qword_27CABCB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCB80);
  }

  return result;
}

void sub_21691C1E8()
{
  OUTLINED_FUNCTION_22_3();
  v14 = v1;
  v3 = v2;
  v4 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_77();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_25_20();
  sub_21700CE04();
  sub_21700CDB4();
  v12 = *(v6 + 8);
  v12(v0, v4);
  OUTLINED_FUNCTION_17_5();
  sub_21700CE04();
  sub_21700CD44();
  sub_21700CF34();
  OUTLINED_FUNCTION_34();
  (*(v13 + 8))(v14);
  v12(v3, v4);
  v12(v10, v4);
  OUTLINED_FUNCTION_21_4();
}

void sub_21691C368(uint64_t a1@<X8>)
{
  sub_21691C1E8();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5 & 1;
  }
}

void sub_21691C39C(void *a1@<X8>)
{
  sub_21691BB18();
  if (!v1)
  {
    memcpy(a1, __src, 0x41uLL);
  }
}

double sub_21691C3E8@<D0>(_OWORD *a1@<X8>)
{
  sub_21691BF78();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = *v5;
    result = *&v5[11];
    *(a1 + 27) = *&v5[11];
  }

  return result;
}

void sub_21691C42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_22_3();
  v39 = v14;
  v16 = v15;
  OUTLINED_FUNCTION_58_10();
  v17 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_77();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_25_20();
  sub_21700CE04();
  v25 = sub_21700CDB4();
  v37 = v26;
  v38 = v25;
  v27 = *(v19 + 8);
  v28 = OUTLINED_FUNCTION_52_9();
  v27(v28);
  OUTLINED_FUNCTION_56_3();
  sub_21700CE04();
  v29 = sub_21700CDB4();
  v35 = v30;
  v36 = v29;
  v31 = OUTLINED_FUNCTION_52_9();
  v27(v31);
  OUTLINED_FUNCTION_17_5();
  sub_21700CE04();
  v32 = sub_21700CD44();
  (v27)(v23, v17);
  sub_21700CE04();
  sub_21691F0D4();
  sub_21700CCC4();
  sub_21700CF34();
  OUTLINED_FUNCTION_34();
  (*(v33 + 8))(v39);
  (v27)(v16, v17);
  v34 = OUTLINED_FUNCTION_52_9();
  v27(v34);
  *v13 = v38;
  *(v13 + 8) = v37;
  *(v13 + 16) = v36;
  *(v13 + 24) = v35;
  *(v13 + 32) = v32 & 1;
  *(v13 + 33) = a13;
  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_21691C660(char a1)
{
  if (a1)
  {
    return 0x6E656E696D6F7270;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_21691C6C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216786440();
  *a1 = result;
  return result;
}

uint64_t sub_21691C6F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21691C660(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double sub_21691C724@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_21691C42C(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13, SWORD2(v13), SBYTE6(v13), SBYTE7(v13));
  if (!v9)
  {
    result = *&v13;
    *a9 = v13;
    *(a9 + 16) = v14;
    *(a9 + 32) = v15;
  }

  return result;
}

void sub_21691C76C(void *a1@<X8>)
{
  sub_21691BD9C();
  if (!v1)
  {
    memcpy(a1, __src, 0x53uLL);
  }
}

void sub_21691C7F8()
{
  OUTLINED_FUNCTION_22_3();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for AccessoryBadge();
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_47_1();
  v13 = OUTLINED_FUNCTION_8_0(v12);
  v14 = type metadata accessor for ContentDescriptor(v13);
  v15 = OUTLINED_FUNCTION_36(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_47_1();
  v112 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  OUTLINED_FUNCTION_36(v18);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  v21 = OUTLINED_FUNCTION_8_0(&v102 - v20);
  v22 = type metadata accessor for VideoArtwork(v21);
  v23 = OUTLINED_FUNCTION_36(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_47_1();
  v111 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8);
  OUTLINED_FUNCTION_36(v26);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  v29 = OUTLINED_FUNCTION_8_0(&v102 - v28);
  v30 = type metadata accessor for Artwork(v29);
  v31 = OUTLINED_FUNCTION_36(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_77();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_39_0();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  OUTLINED_FUNCTION_36(v36);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v37);
  v39 = &v102 - v38;
  v40 = type metadata accessor for PosterLockup.Kind(0);
  v41 = OUTLINED_FUNCTION_36(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v42);
  if (sub_216F283E0())
  {
    v103 = v4;
    v106 = v2;
    v43 = sub_216F28238();
    v44 = v8;
    v46 = v45;
    v47 = type metadata accessor for PosterLockup();
    v48 = *(v47 + 20);
    v115 = v43;
    v116 = v46;
    v49 = v44;
    v50 = v47;
    v104 = v48;
    sub_21700F364();
    v51 = sub_21700D7A4();
    __swift_storeEnumTagSinglePayload(v49, 1, 1, v51);
    OUTLINED_FUNCTION_55_12(v50[13]);
    v105 = v52;
    if ((sub_216F28A40() & 1) == 0)
    {
      OUTLINED_FUNCTION_46_13();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBC0);
      sub_2167880BC();
      v59 = OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_33_5(xmmword_217021350, v59, v60);
      OUTLINED_FUNCTION_0_75();
      v54 = v6;
      goto LABEL_7;
    }

    sub_216F286C0();
    sub_21691E6E4();
    sub_21691D1AC();
    if (v0)
    {
      OUTLINED_FUNCTION_46_13();
      OUTLINED_FUNCTION_0_75();
      sub_21691E7C4(v6, v53);
      v54 = OUTLINED_FUNCTION_1_60();
LABEL_7:
      sub_21691E7C4(v54, v55);
      sub_216697664(v49, &qword_27CAB6D58);
      OUTLINED_FUNCTION_43_16();
      sub_216788110(v49 + v61);
      sub_216697664(v105, &qword_27CAB6DB0);
      goto LABEL_8;
    }

    v62 = OUTLINED_FUNCTION_1_60();
    sub_21691E7C4(v62, v63);
    memcpy((v49 + v50[6]), v117, 0x54uLL);
    if (sub_216F296D8())
    {
      sub_216F29390();
      sub_21691E6E4();
      sub_216C7DA84(v34, v39);
      OUTLINED_FUNCTION_21_24();
      v64 = 0;
    }

    else
    {
      v64 = 1;
    }

    v65 = type metadata accessor for Artwork();
    v66 = 1;
    __swift_storeEnumTagSinglePayload(v39, v64, 1, v65);
    sub_2167A4788();
    if (sub_216F29A80())
    {
      sub_216F29738();
      v67 = v110;
      sub_21691E6E4();
      v68 = v114;
      sub_216DEFB24(v67);
      OUTLINED_FUNCTION_19_25();
      v66 = 0;
    }

    else
    {
      v68 = v114;
    }

    v69 = type metadata accessor for VideoArtwork();
    __swift_storeEnumTagSinglePayload(v68, v66, 1, v69);
    sub_2167A4788();
    v70 = sub_216F28604();
    v71 = 0;
    v72 = 0;
    if (v70)
    {
      v71 = sub_216F2849C();
    }

    v73 = (v49 + v50[7]);
    *v73 = v71;
    v73[1] = v72;
    if (sub_216F29E5C())
    {
      sub_216F29AE0();
      v74 = v108;
      sub_21691E6E4();
      sub_21689C518(v74, v75, v76, v77, v78, v79, v80, v81, v102, v103, SWORD1(v103), SWORD2(v103), SBYTE6(v103), SHIBYTE(v103), v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
      OUTLINED_FUNCTION_18_22();
      v82 = 0;
    }

    else
    {
      v82 = 1;
    }

    v83 = type metadata accessor for ContentDescriptor();
    __swift_storeEnumTagSinglePayload(v113, v82, 1, v83);
    sub_2167A4788();
    OUTLINED_FUNCTION_55_12(v50[14]);
    v84 = sub_216F2A398();
    v85 = 0;
    v86 = 0;
    if (v84)
    {
      v85 = sub_216F2A18C();
    }

    v87 = (v49 + v50[9]);
    *v87 = v85;
    v87[1] = v86;
    if (sub_216F2A794())
    {
      sub_216F2A460(v109);
      v88 = v107;
      sub_21691E6E4();
      v89 = sub_216B91BA0(v88);
      v91 = v90;
      v93 = v92;
      OUTLINED_FUNCTION_17_29();
      v94 = v93 & 1;
    }

    else
    {
      v89 = 0;
      v91 = 0;
      v94 = 0;
    }

    v95 = v49 + v50[10];
    *v95 = v89;
    *(v95 + 8) = v91;
    *(v95 + 16) = v94;
    v96 = (v49 + v50[16]);
    v97 = v106;
    *v96 = v103;
    v96[1] = v97;
    v98 = sub_216F29EBC();
    OUTLINED_FUNCTION_0_75();
    sub_21691E7C4(v6, v99);
    *(v49 + v50[8]) = v98;
    *(v49 + v50[11]) = 0;
    v100 = v50[19];
    v101 = type metadata accessor for ColorSchemeArtwork();
    __swift_storeEnumTagSinglePayload(v49 + v100, 1, 1, v101);
    __swift_storeEnumTagSinglePayload(v49 + v50[12], 1, 1, v65);
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBC0);
    sub_2167880BC();
    v56 = OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_33_5(xmmword_217014E10, v56, v57);
    OUTLINED_FUNCTION_0_75();
    sub_21691E7C4(v6, v58);
  }

LABEL_8:
  OUTLINED_FUNCTION_21_4();
}

void sub_21691D1AC()
{
  OUTLINED_FUNCTION_22_3();
  v43 = v1;
  v2 = type metadata accessor for PosterLockup.Kind.SquareArtwork(0);
  v3 = OUTLINED_FUNCTION_36(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_47_1();
  v6 = OUTLINED_FUNCTION_8_0(v5);
  v7 = type metadata accessor for PosterLockup.Kind.TallArtwork(v6);
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBC8);
  OUTLINED_FUNCTION_36(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  v16 = type metadata accessor for PosterLockup.Kind.OneOf_Kind(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
  {
    sub_21691E73C();
    sub_21691E6E4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = v45;
      sub_21691E73C();
      v26 = v44;
      sub_21691E6E4();
      sub_21691E274(v26, v48);
      if (v0)
      {
        v27 = OUTLINED_FUNCTION_1_60();
        sub_21691E7C4(v27, v28);
        OUTLINED_FUNCTION_4_35();
        v30 = v25;
LABEL_8:
        sub_21691E7C4(v30, v29);
        OUTLINED_FUNCTION_15_26();
        v23 = v20;
        goto LABEL_9;
      }

      memcpy(v46, v48, 0x41uLL);
      v33 = OUTLINED_FUNCTION_1_60();
      sub_21691E7C4(v33, v34);
      OUTLINED_FUNCTION_4_35();
      sub_21691E7C4(v25, v35);
      v36 = 0;
    }

    else
    {
      sub_21691E73C();
      sub_21691E6E4();
      sub_21691D5E0();
      if (v0)
      {
        v31 = OUTLINED_FUNCTION_1_60();
        sub_21691E7C4(v31, v32);
        OUTLINED_FUNCTION_2_48();
        v30 = v11;
        goto LABEL_8;
      }

      memcpy(v46, v47, sizeof(v46));
      v37 = OUTLINED_FUNCTION_1_60();
      sub_21691E7C4(v37, v38);
      OUTLINED_FUNCTION_2_48();
      sub_21691E7C4(v11, v39);
      v36 = 1;
    }

    OUTLINED_FUNCTION_15_26();
    sub_21691E7C4(v20, v40);
    v41 = v43;
    memcpy(v43, v46, 0x53uLL);
    v41[83] = v36;
    goto LABEL_10;
  }

  sub_216697664(v15, &qword_27CABCBC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBC0);
  sub_2167880BC();
  v21 = OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_33_5(xmmword_217021350, v21, v22);
  v23 = OUTLINED_FUNCTION_1_60();
LABEL_9:
  sub_21691E7C4(v23, v24);
LABEL_10:
  OUTLINED_FUNCTION_21_4();
}

void sub_21691D594(void *a1@<X8>)
{
  sub_21691D1AC();
  if (!v1)
  {
    memcpy(a1, __src, 0x54uLL);
  }
}

void sub_21691D5E0()
{
  OUTLINED_FUNCTION_22_3();
  v3 = v2;
  v67 = v4;
  v72 = type metadata accessor for PosterLockup.Kind.TallArtwork.Bottom(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v64 = v6;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_47_1();
  v65 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBD0);
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v71 = &v64 - v11;
  v12 = type metadata accessor for PosterLockup.Kind.TallArtwork.Top(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v69 = v14;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_47_1();
  v70 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBD8);
  v18 = OUTLINED_FUNCTION_36(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_77();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v23 = OUTLINED_FUNCTION_57();
  v68 = type metadata accessor for PosterLockup.Kind.TallArtwork(v23);
  v24 = v3;
  sub_2166A6EA4();
  v73 = 1;
  LODWORD(v3) = OUTLINED_FUNCTION_17_13(v1);
  sub_216697664(v1, &qword_27CABCBD8);
  if (v3 == 1)
  {
    v69 = 0;
    v70 = 0;
    v25 = 0;
    HIDWORD(v66) = 0;
    v26 = v0;
    v27 = v24;
  }

  else
  {
    sub_2166A6EA4();
    v27 = v24;
    if (OUTLINED_FUNCTION_17_13(v21) == 1)
    {
      v28 = v70;
      sub_217007874();
      v29 = (v28 + v12[5]);
      *v29 = 0;
      v29[1] = 0;
      v30 = (v28 + v12[6]);
      *v30 = 0;
      v30[1] = 0;
      *(v28 + v12[7]) = 2;
      v31 = v28 + v12[8];
      *v31 = 0;
      *(v31 + 8) = 256;
      v32 = OUTLINED_FUNCTION_17_13(v21);
      v26 = v0;
      v33 = v69;
      if (v32 != 1)
      {
        sub_216697664(v21, &qword_27CABCBD8);
      }
    }

    else
    {
      v28 = v70;
      sub_21691E73C();
      v26 = v0;
      v33 = v69;
    }

    OUTLINED_FUNCTION_27_0();
    sub_21691E6E4();
    v34 = (v33 + v12[5]);
    v35 = *v34;
    v36 = v34[1];
    v37 = (v33 + v12[6]);
    v25 = v37[1];
    v69 = *v37;
    v70 = v35;
    v92 = *(v33 + v12[7]);
    OUTLINED_FUNCTION_42_17();
    v40 = v38 | v39;
    sub_21700DF14();
    sub_21700DF14();
    sub_21691DC64(v0, v40 & 1, v41, v42, v43, v44, v45, v46, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74[0], v74[1]);
    if (v26)
    {

      OUTLINED_FUNCTION_14_26();
      sub_21691E7C4(v33, v48);
      OUTLINED_FUNCTION_2_48();
      sub_21691E7C4(v27, v49);
      sub_21691E7C4(v28, v40);
      goto LABEL_16;
    }

    v50 = v47;
    v73 = v36;
    OUTLINED_FUNCTION_14_26();
    sub_21691E7C4(v33, v51);
    sub_21691E7C4(v28, v40);
    HIDWORD(v66) = v92 & 1 | (v50 << 8);
  }

  v52 = v71;
  sub_2166A6EA4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v52, 1, v72);
  sub_216697664(v52, &qword_27CABCBD0);
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_2_48();
    sub_21691E7C4(v27, v54);
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 1;
LABEL_15:
    v75[0] = v70;
    v75[1] = v73;
    v75[2] = v69;
    v75[3] = v25;
    LOWORD(v75[4]) = WORD2(v66);
    v75[5] = v55;
    v75[6] = v60;
    v75[7] = v56;
    v75[8] = v57;
    v75[9] = v58;
    BYTE2(v75[10]) = BYTE2(v59);
    LOWORD(v75[10]) = v59;
    v76[0] = v70;
    v76[1] = v73;
    v76[2] = v69;
    v76[3] = v25;
    v77 = WORD2(v66);
    v78 = v55;
    v79 = v60;
    v80 = v56;
    v81 = v57;
    v82 = v58;
    v83 = v59;
    v84 = BYTE2(v59);
    sub_21691E634(v75, v74);
    sub_21691E66C(v76);
    memcpy(v67, v75, 0x53uLL);
    goto LABEL_16;
  }

  sub_216F2BEFC(v65);
  sub_21691E6E4();
  sub_21691DF30();
  if (!v26)
  {
    v55 = v85;
    v60 = v86;
    v56 = v87;
    v57 = v88;
    v58 = v89;
    v59 = v90 | (v91 << 16);
    OUTLINED_FUNCTION_2_48();
    sub_21691E7C4(v62, v63);
    OUTLINED_FUNCTION_8_33();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_2_48();
  sub_21691E7C4(v27, v61);
  OUTLINED_FUNCTION_8_33();
  sub_21691E69C(v70, v73);
LABEL_16:
  OUTLINED_FUNCTION_21_4();
}

void sub_21691DB44(void *a1@<X8>)
{
  sub_21691D5E0();
  if (!v1)
  {
    memcpy(a1, __src, 0x53uLL);
  }
}

void sub_21691DC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = sub_217007CA4();
  OUTLINED_FUNCTION_1();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7();
  v30 = v29 - v28;
  if ((v23 & 1) == 0)
  {
    sub_217007C94();
    v31 = sub_217007C84();
    v32 = sub_21700ED84();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      a10 = v34;
      *v33 = 136315394;
      v35 = sub_21700F784();
      v37 = sub_2166A85FC(v35, v36, &a10);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBE0);
      v38 = sub_21700E594();
      v40 = sub_2166A85FC(v38, v39, &a10);

      *(v33 + 14) = v40;
      _os_log_impl(&dword_216679000, v31, v32, "Unrecognized value '%s' for type '%s'", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEA1440](v34, -1, -1);
      MEMORY[0x21CEA1440](v33, -1, -1);
    }

    (*(v26 + 8))(v30, v24);
  }

  OUTLINED_FUNCTION_21_4();
}

double sub_21691DEB0@<D0>(uint64_t a1@<X8>)
{
  sub_21691DB90(v5);
  if (!v1)
  {
    result = *v5;
    v4 = v5[1];
    *a1 = v5[0];
    *(a1 + 16) = v4;
    *(a1 + 32) = v6;
  }

  return result;
}

uint64_t sub_21691DF30()
{
  v6 = OUTLINED_FUNCTION_48_12();
  type metadata accessor for PosterLockup.Kind.TallArtwork.Bottom(v6);
  v7 = OUTLINED_FUNCTION_47_14();
  sub_21700DF14();
  v8 = sub_21700DF14();
  v9 = v7;
  v10 = v3;
  v12 = sub_216F76E04(v8, v11, &type metadata for Link, v9);
  if (v10)
  {
    OUTLINED_FUNCTION_8_33();
  }

  else
  {
    OUTLINED_FUNCTION_49_13();
    v23 = v14;
    v15 = *(v2 + v5[10]);
    v16 = (v2 + v5[9]);
    if (*(v16 + 9))
    {
      sub_21700DF14();
      v17 = 2;
    }

    else
    {
      v22 = *(v2 + v5[10]);
      v18 = *(v16 + 8);
      v15 = *v16;
      sub_21700DF14();
      v17 = sub_21697DAF8(v15, v18 & 1);
      LOBYTE(v15) = v22;
    }

    v19 = *(v2 + v5[8]);
    OUTLINED_FUNCTION_8_33();
    *&v25 = v0;
    *(&v25 + 1) = v1;
    *v26 = v12;
    *&v26[8] = v23;
    *&v26[16] = v4;
    v26[24] = v15 & 1;
    v26[25] = v17;
    v26[26] = v19 & 1;
    v27[0] = v0;
    v27[1] = v1;
    v27[2] = v12;
    v27[3] = v23;
    v27[4] = v4;
    v28 = v15 & 1;
    v29 = v17;
    v30 = v19 & 1;
    sub_21686BE0C(&v25, v24);
    result = sub_21691E794(v27);
    v20 = *v26;
    v21 = v31;
    *v31 = v25;
    v21[1] = v20;
    *(v21 + 27) = *&v26[11];
  }

  return result;
}

uint64_t sub_21691E0B8()
{
  v6 = OUTLINED_FUNCTION_48_12();
  type metadata accessor for PosterLockup.Kind.SquareArtwork.Chin(v6);
  v7 = OUTLINED_FUNCTION_47_14();
  sub_21700DF14();
  v8 = sub_21700DF14();
  v9 = v7;
  v10 = v3;
  v12 = sub_216F76E04(v8, v11, &type metadata for Link, v9);
  if (v10)
  {
    OUTLINED_FUNCTION_20_21();
  }

  else
  {
    OUTLINED_FUNCTION_49_13();
    v22 = v14;
    v15 = (v2 + *(v5 + 36));
    if (*(v15 + 9))
    {
      sub_21700DF14();
      v16 = 2;
    }

    else
    {
      v17 = *(v15 + 8);
      v18 = *v15;
      sub_21700DF14();
      v16 = sub_21697DAF8(v18, v17 & 1);
    }

    v19 = *(v2 + *(v5 + 32));
    OUTLINED_FUNCTION_20_21();
    *&v24 = v0;
    *(&v24 + 1) = v1;
    *v25 = v12;
    *&v25[8] = v22;
    *&v25[16] = v4;
    v25[24] = 2;
    v25[25] = v16;
    v25[26] = v19 & 1;
    v26[0] = v0;
    v26[1] = v1;
    v26[2] = v12;
    v26[3] = v22;
    v26[4] = v4;
    v27 = 2;
    v28 = v16;
    v29 = v19 & 1;
    sub_21686BE0C(&v24, v23);
    result = sub_21691E794(v26);
    v20 = *v25;
    v21 = v30;
    *v30 = v24;
    v21[1] = v20;
    *(v21 + 27) = *&v25[11];
  }

  return result;
}

double sub_21691E230@<D0>(_OWORD *a1@<X8>)
{
  sub_21691DF30();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = *v5;
    result = *&v5[11];
    *(a1 + 27) = *&v5[11];
  }

  return result;
}

uint64_t sub_21691E274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for PosterLockup.Kind.SquareArtwork.Chin(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v9 = (v8 - v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBE8);
  OUTLINED_FUNCTION_36(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_71_1();
  type metadata accessor for PosterLockup.Kind.SquareArtwork(v12);
  sub_2166A6EA4();
  v13 = OUTLINED_FUNCTION_17_13(v3);
  sub_216697664(v3, &qword_27CABCBE8);
  if (v13 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCBC0);
    sub_2167880BC();
    v14 = OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_33_5(xmmword_217027D50, v14, v15);
LABEL_4:
    OUTLINED_FUNCTION_4_35();
    return sub_21691E7C4(a1, v16);
  }

  sub_216F2CF94(v9);
  sub_21691E0B8();
  if (v2)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_4_35();
  result = sub_21691E7C4(a1, v18);
  *v19 = *v21;
  *&v19[11] = *&v21[11];
  *a2 = v20;
  *(a2 + 16) = *v19;
  *(a2 + 32) = *&v19[16];
  *(a2 + 48) = xmmword_217016ED0;
  *(a2 + 64) = 0;
  return result;
}

void *sub_21691E428@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_21691E274(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x41uLL);
  }

  return result;
}

unint64_t sub_21691E4C0()
{
  result = qword_27CABCB98;
  if (!qword_27CABCB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCB98);
  }

  return result;
}

uint64_t sub_21691E69C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_21691E6E4()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_21691E73C()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_21691E7C4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_21691E81C()
{
  result = qword_280E43848;
  if (!qword_280E43848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E43848);
  }

  return result;
}

unint64_t sub_21691E870()
{
  result = qword_27CABCBF0;
  if (!qword_27CABCBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCBF0);
  }

  return result;
}

unint64_t sub_21691E8C4()
{
  result = qword_27CABCBF8;
  if (!qword_27CABCBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCBF8);
  }

  return result;
}

unint64_t sub_21691E918()
{
  result = qword_27CABCC00;
  if (!qword_27CABCC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCC00);
  }

  return result;
}

unint64_t sub_21691E96C()
{
  result = qword_27CABCC08;
  if (!qword_27CABCC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCC08);
  }

  return result;
}

unint64_t sub_21691E9C0()
{
  result = qword_27CABCC10;
  if (!qword_27CABCC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCC10);
  }

  return result;
}

uint64_t sub_21691EA14(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 17))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_21691EA68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_21691EACC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_21691EB20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_21691EB80(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 34))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_21691EBD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *sub_21691EC3C(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy43_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21691ED2C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 43))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_21691ED80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 43) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 43) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_21691EDF4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 43))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21691EE54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 43) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 43) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_21691EECC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 83))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21691EF2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 82) = 0;
    *(result + 80) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 83) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 83) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_21691EFB0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 65))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_21691F004(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_21691F080()
{
  result = qword_27CABCC18;
  if (!qword_27CABCC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCC18);
  }

  return result;
}

unint64_t sub_21691F0D4()
{
  result = qword_27CABCC20;
  if (!qword_27CABCC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCC20);
  }

  return result;
}

uint64_t sub_21691F164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_21700F7D4();
  }
}

uint64_t sub_21691F188()
{
  sub_21700F8F4();
  sub_21700E614();
  return sub_21700F944();
}

void sub_21691F1FC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v26 = sub_217005EF4();
  v10 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() valueWithNewObjectInContext_];
  if (v13)
  {
    v14 = v13;
    v15 = sub_2166F1DCC();
    v29 = MEMORY[0x277D837D0];
    v27 = a2;
    v28 = a3;
    sub_21700DF14();
    v16 = a1;
    v17 = sub_2166F1E10(&v27, a1);
    sub_2166F1F64(v17);
    v18 = [a4 resourceURL];
    sub_217005E64();

    v19 = sub_217005DE4();
    v21 = v20;
    (*(v10 + 8))(v12, v26);
    v29 = MEMORY[0x277D837D0];
    v27 = v19;
    v28 = v21;
    v22 = v16;
    v23 = sub_2166F1E10(&v27, a1);
    sub_2166F1F64(v23);
    v24 = MEMORY[0x277D225C8];
    a5[3] = v15;
    a5[4] = v24;
    *a5 = v14;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_21691F410()
{
  result = qword_27CABCC28;
  if (!qword_27CABCC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCC28);
  }

  return result;
}

uint64_t sub_21691F474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v4[16] = v5;
  OUTLINED_FUNCTION_2(v5);
  v4[17] = v6;
  v4[18] = OUTLINED_FUNCTION_80();
  v7 = sub_217006224();
  v4[19] = v7;
  OUTLINED_FUNCTION_2(v7);
  v4[20] = v8;
  v4[21] = OUTLINED_FUNCTION_80();
  v4[22] = type metadata accessor for FlowAction.Destination(0);
  v4[23] = OUTLINED_FUNCTION_80();
  v9 = sub_21700D704();
  v4[24] = v9;
  OUTLINED_FUNCTION_2(v9);
  v4[25] = v10;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v11 = sub_21700D284();
  v4[28] = v11;
  OUTLINED_FUNCTION_2(v11);
  v4[29] = v12;
  v4[30] = OUTLINED_FUNCTION_80();
  v4[31] = type metadata accessor for FlowAction(0);
  v4[32] = OUTLINED_FUNCTION_80();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v4[33] = v13;
  OUTLINED_FUNCTION_2(v13);
  v4[34] = v14;
  v4[35] = OUTLINED_FUNCTION_80();
  v15 = sub_217008674();
  v4[36] = v15;
  OUTLINED_FUNCTION_2(v15);
  v4[37] = v16;
  v4[38] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v4[39] = sub_21700EA24();
  v18 = sub_21700E9B4();
  v4[40] = v18;
  v4[41] = v17;

  return MEMORY[0x2822009F8](sub_21691F754, v18, v17);
}

uint64_t sub_21691F754()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 288);
  *(v0 + 352) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  *(swift_task_alloc() + 16) = v0 + 352;
  sub_217008624();

  (*(v2 + 8))(v1, v3);
  if (*(v0 + 352))
  {

    if (qword_27CAB5A60 != -1)
    {
      swift_once();
    }

    v4 = sub_217007CA4();
    __swift_project_value_buffer(v4, qword_27CABCC30);
    v5 = sub_217007C84();
    v6 = sub_21700EDA4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_216679000, v5, v6, "Now playing is already visible, not pushing another now playing page.", v7, 2u);
      MEMORY[0x21CEA1440](v7, -1, -1);
    }

    v8 = *(v0 + 96);

    v9 = *MEMORY[0x277D21CA8];
    sub_21700D2A4();
    OUTLINED_FUNCTION_34();
    (*(v10 + 104))(v8, v9);
    OUTLINED_FUNCTION_3_59();

    OUTLINED_FUNCTION_3();

    return v11();
  }

  else
  {
    type metadata accessor for ObjectGraph();
    sub_21700E094();
    if (sub_21688D828(24, 48))
    {
      sub_21700D234();
    }

    else
    {
      v14 = *(v0 + 208);
      v13 = *(v0 + 216);
      v15 = *(v0 + 192);
      v16 = *(v0 + 200);
      sub_21700D6F4();
      sub_21700D6D4();
      (*(v16 + 16))(v14, v13, v15);
      sub_21700D244();
      (*(v16 + 8))(v13, v15);
    }

    v18 = *(v0 + 248);
    v17 = *(v0 + 256);
    v20 = *(v0 + 232);
    v19 = *(v0 + 240);
    v21 = *(v0 + 224);
    v41 = v21;
    v22 = *(v0 + 184);
    v23 = *(v0 + 168);
    v42 = *(v0 + 160);
    v43 = *(v0 + 152);
    v44 = *(v0 + 136);
    v45 = *(v0 + 128);
    v46 = *(v0 + 144);
    v24 = *(v0 + 104);
    v25 = *v24;
    v26 = *(v24 + 1);
    LOBYTE(v24) = v24[16];
    *v22 = v25;
    *(v22 + 8) = v26;
    *(v22 + 16) = v24;
    swift_storeEnumTagMultiPayload();
    *(v0 + 48) = 0;
    *(v0 + 32) = 0u;
    *(v0 + 16) = 0u;
    v27 = sub_217005EF4();
    OUTLINED_FUNCTION_4_36(v27);
    v28 = type metadata accessor for Page.Header(0);
    OUTLINED_FUNCTION_4_36(v28);
    v29 = type metadata accessor for ReferrerInfo();
    OUTLINED_FUNCTION_4_36(v29);
    v30 = v17 + v18[10];
    *(v30 + 32) = 0;
    *v30 = 0u;
    *(v30 + 16) = 0u;
    (*(v20 + 16))(v17, v19, v21);
    sub_2167B9654(v22, v17 + v18[5], type metadata accessor for FlowAction.Destination);
    sub_217006214();
    v31 = sub_2170061F4();
    v33 = v32;
    (*(v42 + 8))(v23, v43);
    sub_2167B96B4(v22, type metadata accessor for FlowAction.Destination);
    (*(v20 + 8))(v19, v41);
    v34 = (v17 + v18[6]);
    *v34 = v31;
    v34[1] = v33;
    *(v17 + v18[7]) = 0;
    sub_2167A66B4(v0 + 16, v30);
    *(v0 + 80) = v18;
    *(v0 + 88) = sub_216920920(qword_280E45BB8, type metadata accessor for FlowAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    sub_2167B9654(v17, boxed_opaque_existential_1, type metadata accessor for FlowAction);
    (*(v44 + 104))(v46, *MEMORY[0x277D21E18], v45);
    v36 = swift_task_alloc();
    *(v0 + 336) = v36;
    *v36 = v0;
    v36[1] = sub_21691FD24;
    v37 = *(v0 + 264);
    v38 = *(v0 + 144);
    v39 = *(v0 + 112);
    v40 = *(v0 + 96);

    return MEMORY[0x28217F468](v40, v0 + 56, v38, v39, v37);
  }
}

uint64_t sub_21691FD24()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  *(*v1 + 344) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = *(v2 + 320);
    v7 = *(v2 + 328);
    v8 = sub_21691FF8C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 56);
    v6 = *(v2 + 320);
    v7 = *(v2 + 328);
    v8 = sub_21691FEA4;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_21691FEA4()
{
  v2 = v0[34];
  v1 = v0[35];
  v4 = v0[32];
  v3 = v0[33];

  OUTLINED_FUNCTION_1_61();
  sub_2167B96B4(v4, v5);
  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_3_59();

  OUTLINED_FUNCTION_3();

  return v6();
}

uint64_t sub_21691FF8C()
{
  v2 = v0[34];
  v1 = v0[35];
  v4 = v0[32];
  v3 = v0[33];

  OUTLINED_FUNCTION_1_61();
  sub_2167B96B4(v4, v5);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 7));

  OUTLINED_FUNCTION_3();

  return v6();
}

void sub_2169200A0(uint64_t a1, _BYTE *a2)
{
  v4 = sub_217008604();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCC48);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCC50);
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - v12;
  if (sub_216E9A414())
  {
    return;
  }

  if (__OFSUB__(MEMORY[0x21CE99410](), 1))
  {
    __break(1u);
  }

  else
  {
    v47 = v5;
    v45 = v7;
    sub_217008614();
    v14 = v52;
    __swift_project_boxed_opaque_existential_1(&v50, v52);
    LOBYTE(v14) = Hashable.representsNowPlaying.getter(v14);
    __swift_destroy_boxed_opaque_existential_1Tm(&v50);
    if (v14)
    {
      *a2 = 1;
      return;
    }

    v46 = v11;
    v42 = *(v47 + 16);
    v42(v10, a1, v4);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCC58);
    v41 = *(v15 + 36);
    v43 = v15;
    v44 = MEMORY[0x277CDD948];
    sub_216920920(&qword_27CABCC60, MEMORY[0x277CDD948]);
    sub_21700EC54();
    sub_21700EC94();
    v16 = *(v8 + 52);
    v42(&v10[v16], a1, v4);
    sub_2169208B0(v10, v13);
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCC68) + 36);
    v18 = *&v10[v41];
    sub_216697664(v10, &qword_27CABCC58);
    *&v13[v17] = v18;
    (*(v47 + 32))(v45, &v10[v16], v4);
    v19 = &v13[*(v46 + 52)];
    sub_216920920(&qword_27CABCC70, v44);
    sub_21700E754();
    v20 = *&v13[*(v43 + 40)];
    v47 = MEMORY[0x277D84F90];
    while (1)
    {
      v21 = *&v13[v17];
      if (v21 == v20)
      {
        break;
      }

      sub_21700ECA4();
      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCC78) + 36);
      sub_21700EC94();
      if (*&v19[v22] == v48[0])
      {
        break;
      }

      v23 = sub_21700ECE4();
      sub_2167B7D58(v24, v49);
      v23(v48, 0);
      sub_21700ECA4();
      sub_2166A0F18(v49, v51);
      v25 = v53;
      __swift_project_boxed_opaque_existential_1(v51, v53);
      LOBYTE(v25) = Hashable.representsNowPlaying.getter(v25);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      if (v25)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_216938800();
          v47 = v28;
        }

        v26 = *(v47 + 16);
        if (v26 >= *(v47 + 24) >> 1)
        {
          sub_216938800();
          v47 = v29;
        }

        v27 = v47;
        *(v47 + 16) = v26 + 1;
        *(v27 + 8 * v26 + 32) = v21;
      }
    }

    v13[*(v46 + 56)] = 1;
    sub_216697664(v13, &qword_27CABCC50);
    if (!*(v47 + 16))
    {

      return;
    }

    if (qword_27CAB5A60 == -1)
    {
      goto LABEL_16;
    }
  }

  swift_once();
LABEL_16:
  v30 = sub_217007CA4();
  __swift_project_value_buffer(v30, qword_27CABCC30);
  v31 = sub_217007C84();
  v32 = sub_21700EDA4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v50 = v34;
    *v33 = 136446210;
    v35 = sub_21700DF14();
    v36 = MEMORY[0x21CE9F660](v35, MEMORY[0x277D83B88]);
    v38 = v37;

    v39 = sub_2166A85FC(v36, v38, &v50);

    *(v33 + 4) = v39;
    _os_log_impl(&dword_216679000, v31, v32, "Pushing Now Playing with previous Now Playing pages at indices: %{public}s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x21CEA1440](v34, -1, -1);
    MEMORY[0x21CEA1440](v33, -1, -1);
  }
}

uint64_t sub_2169206F8()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CABCC30);
  __swift_project_value_buffer(v0, qword_27CABCC30);
  return sub_217007C94();
}

uint64_t sub_216920778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2167AF644;

  return sub_21691F474(a1, a2, a3, v8);
}

unint64_t sub_216920830(uint64_t a1)
{
  result = sub_2168572D4();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2169208B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCC58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216920920(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216920968(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  *(v1 + 16) = a1;
  type metadata accessor for ObjectGraph();

  sub_21700E094();

  (*(v5 + 32))(v1 + OBJC_IVAR____TtC7MusicUI31GoToTVEpisodeMenuActionProvider_actionDispatcher, v8, v3);
  return v1;
}

uint64_t sub_216920A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  swift_storeEnumTagMultiPayload();
  v12 = sub_217007374();
  sub_216920C14(a1, v8, v12, v13, a2, a3, v11);

  sub_2168CD6E4(v8);
  v14 = sub_21678C1C4();
  sub_2166997CC(v11, &qword_27CAB6DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = v14;
  v16 = sub_2167A2998(inited);
  swift_setDeallocating();
  sub_2169FAC94();
  return v16;
}

uint64_t sub_216920C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v73 = a6;
  v91 = a5;
  v83 = a4;
  v82 = a3;
  v86 = a1;
  v94 = sub_2170075A4();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v90 = v10;
  v92 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for GoToTVEpisodeAction();
  v87 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v89 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v11;
  MEMORY[0x28223BE20](v12);
  v84 = &v69 - v13;
  v81 = sub_21700CFB4();
  v14 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_217005EF4();
  v72 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_21700D704();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v75 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v69 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v69 - v27;
  v77 = sub_21700D284();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v74 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v30);
  v32 = &v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(a2) = sub_216B88F54(a2, v32);
  sub_2168CD6E4(v32);
  if (a2)
  {
    v71 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v34 = &v73[*(type metadata accessor for MenuConfiguration(0) + 36)];
    v35 = *(v34 + 1);
    v36 = MEMORY[0x277D837D0];
    *(inited + 48) = *v34;
    *(inited + 56) = v35;
    *(inited + 72) = v36;
    *(inited + 80) = 1684957547;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = 0x646F736970457674;
    *(inited + 104) = 0xE900000000000065;
    *(inited + 120) = v36;
    *(inited + 128) = 0x657461676976616ELL;
    *(inited + 168) = v36;
    *(inited + 136) = 0xEA00000000006F54;
    *(inited + 144) = 0x776F68537674;
    *(inited + 152) = 0xE600000000000000;
    sub_21700DF14();
    v37 = sub_21700E384();
    __swift_storeEnumTagSinglePayload(v28, 1, 1, v16);
    v70 = v22;
    sub_21700D6F4();
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v97 = v37;
    sub_2166EF9C4(&v97, v96);
    v38 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v95 = v38;
    sub_2166EF9D4();
    v39 = v95;
    v98 = v36;
    *&v97 = 0x657461676976616ELL;
    *(&v97 + 1) = 0xE800000000000000;
    sub_2166EF9C4(&v97, v96);
    swift_isUniquelyReferenced_nonNull_native();
    v95 = v39;
    sub_2166EF9D4();
    v40 = v95;
    v98 = v36;
    *&v97 = 0xD000000000000010;
    *(&v97 + 1) = 0x80000002170801D0;
    sub_2166EF9C4(&v97, v96);
    swift_isUniquelyReferenced_nonNull_native();
    v95 = v40;
    sub_2166EF9D4();
    v41 = v95;
    v73 = v28;
    sub_2167DE934(v28, v25);
    if (__swift_getEnumTagSinglePayload(v25, 1, v16) == 1)
    {
      sub_2166997CC(v25, &qword_27CABA820);
    }

    else
    {
      v44 = v72;
      (*(v72 + 32))(v18, v25, v16);
      v45 = sub_217005DE4();
      v98 = v36;
      *&v97 = v45;
      *(&v97 + 1) = v46;
      sub_2166EF9C4(&v97, v96);
      swift_isUniquelyReferenced_nonNull_native();
      v95 = v41;
      sub_2166EF9D4();
      v41 = v95;
      (*(v44 + 8))(v18, v16);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v47 = sub_21700CF84();
    v48 = __swift_project_value_buffer(v47, qword_280E73DB0);
    v49 = v80;
    MEMORY[0x21CE9DD70](v82, v83, 0x6E6F74747562, 0xE600000000000000, v41, v48);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v50 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_217013DA0;
    v52 = v51 + v50;
    v53 = v81;
    (*(v14 + 16))(v52, v49, v81);
    v54 = v78;
    v55 = v70;
    v56 = v79;
    (*(v78 + 16))(v75, v70, v79);
    v57 = v74;
    sub_21700D244();
    (*(v14 + 8))(v49, v53);
    (*(v54 + 8))(v55, v56);
    sub_2166997CC(v73, &qword_27CABA820);
    v58 = sub_2170073D4();
    v59 = v84;
    (*(*(v58 - 8) + 16))(v84, v86, v58);
    (*(v76 + 32))(v59 + *(v85 + 20), v57, v77);
    type metadata accessor for MenuActionType();
    swift_storeEnumTagMultiPayload();
    v60 = v89;
    sub_21692199C(v59, v89);
    v61 = v93;
    v62 = v92;
    v63 = v94;
    (*(v93 + 16))(v92, v91, v94);
    v64 = (*(v87 + 80) + 24) & ~*(v87 + 80);
    v65 = (v88 + *(v61 + 80) + v64) & ~*(v61 + 80);
    v66 = swift_allocObject();
    *(v66 + 16) = v71;
    sub_21692199C(v60, v66 + v64);
    (*(v61 + 32))(v66 + v65, v62, v63);
    v67 = type metadata accessor for MenuAction();
    v68 = (a7 + *(v67 + 20));
    *v68 = sub_216921A00;
    v68[1] = v66;
    __swift_storeEnumTagSinglePayload(a7, 0, 1, v67);
  }

  else
  {
    v42 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(a7, 1, 1, v42);
  }
}

uint64_t sub_2169217D4(uint64_t a1, uint64_t a2)
{
  v5[3] = type metadata accessor for GoToTVEpisodeAction();
  v5[4] = sub_216921AD0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  sub_216921B28(a2, boxed_opaque_existential_1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  sub_21700D594();

  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t sub_216921880()
{

  v1 = OBJC_IVAR____TtC7MusicUI31GoToTVEpisodeMenuActionProvider_actionDispatcher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for GoToTVEpisodeMenuActionProvider()
{
  result = qword_280E303D8;
  if (!qword_280E303D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21692199C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GoToTVEpisodeAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216921A00()
{
  v1 = *(type metadata accessor for GoToTVEpisodeAction() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  sub_2170075A4();
  v3 = *(v0 + 16);

  return sub_2169217D4(v3, v0 + v2);
}

unint64_t sub_216921AD0()
{
  result = qword_27CAB7488;
  if (!qword_27CAB7488)
  {
    type metadata accessor for GoToTVEpisodeAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7488);
  }

  return result;
}

uint64_t sub_216921B28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GoToTVEpisodeAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_216921B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = 0;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  return v4;
}

id sub_216921BA0()
{
  v1 = v0[6];
  v2 = v1;
  if (!v1)
  {
    if (v0[3])
    {
      v3 = v0[4];
      v4 = objc_allocWithZone(MEMORY[0x277D63FD0]);
      sub_21700DF14();
      v5 = v3;
      v2 = [v4 initWithHighlight_];

      v6 = v0[6];
      v0[6] = v2;
      v7 = v2;
    }

    else
    {
      v2 = 0;
    }
  }

  v8 = v1;
  return v2;
}

void sub_216921C48()
{
  v22 = type metadata accessor for MenuAction();
  v0 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v2 = (&v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_216921BA0();
  if (v3)
  {
    v4 = sub_21692203C(v3);
    if (v4)
    {
      v5 = v4;
      v6 = sub_2166BF3C8(v4);
      if (!v6)
      {
LABEL_12:

        return;
      }

      v7 = v6;
      v23 = MEMORY[0x277D84F90];
      sub_216AB99F8();
      if ((v7 & 0x8000000000000000) == 0)
      {
        v8 = 0;
        v9 = v23;
        v21 = v5 & 0xC000000000000001;
        do
        {
          if (v21)
          {
            v10 = MEMORY[0x21CEA0220](v8, v5);
          }

          else
          {
            v10 = *(v5 + 8 * v8 + 32);
          }

          v11 = v10;
          v12 = [v10 title];
          v13 = sub_21700E514();
          v15 = v14;

          v16 = [v11 image];
          *v2 = v13;
          v2[1] = v15;
          v2[2] = v16;
          type metadata accessor for MenuActionType();
          swift_storeEnumTagMultiPayload();
          v17 = swift_allocObject();
          *(v17 + 16) = v11;
          v18 = (v2 + *(v22 + 20));
          *v18 = sub_2169220A4;
          v18[1] = v17;
          v23 = v9;
          v19 = *(v9 + 16);
          if (v19 >= *(v9 + 24) >> 1)
          {
            sub_216AB99F8();
            v9 = v23;
          }

          ++v8;
          *(v9 + 16) = v19 + 1;
          sub_2169220BC(v2, v9 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v19);
        }

        while (v7 != v8);
        goto LABEL_12;
      }

      __break(1u);
    }
  }
}

uint64_t sub_216921EDC(uint64_t result)
{
  v2 = v1[3];
  if (v2)
  {
    v3 = result;
    v4 = v1[2];
    v5 = v1[4];
    sub_21700DF14();
    v6 = v5;
    v3(v4, v2, v6);
  }

  return result;
}

uint64_t sub_216921F6C()
{
  sub_216921FF8(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return v0;
}

uint64_t sub_216921FA0()
{
  sub_216921F6C();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

void sub_216921FF8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

uint64_t sub_21692203C(void *a1)
{
  v2 = [a1 contextMenuItems];

  if (!v2)
  {
    return 0;
  }

  sub_216922120();
  v3 = sub_21700E824();

  return v3;
}

uint64_t sub_2169220BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MenuAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_216922120()
{
  result = qword_27CABCC80;
  if (!qword_27CABCC80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CABCC80);
  }

  return result;
}

uint64_t sub_216922164()
{
  sub_21692757C();
  sub_217009104();
  return v1;
}

double sub_2169221DC()
{
  sub_2169272B4();
  sub_217009104();
  return v1;
}

double sub_2169222A4()
{
  sub_2169274D4();
  sub_217009104();
  return v1;
}

void sub_2169222E4()
{
  OUTLINED_FUNCTION_17_6();
  *v0 = sub_2169222A4();
  *(v0 + 8) = v1;
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
}

uint64_t sub_21692237C()
{
  sub_217009714();
  sub_21692A060(&qword_280E2A8F0, MEMORY[0x277CE0428]);
  return sub_21700F9B4();
}

uint64_t sub_2169223FC()
{
  sub_216927528();
  sub_217009104();
  return v1;
}

uint64_t sub_216922438()
{
  OUTLINED_FUNCTION_17_6();
  result = sub_2169223FC();
  *v0 = result;
  return result;
}

uint64_t sub_2169224C4(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_216A1204C(a1);

  return sub_216927308(v6, v7, a3, a4);
}

void sub_216922530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_149();
  v33 = v32;
  v52 = v34;
  v36 = v35;
  v53 = v37;
  v54 = v38;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  OUTLINED_FUNCTION_23_21();
  v47 = type metadata accessor for ShelfCollection();
  v48 = *(a32 - 8);
  (*(v48 + 16))(&v46[v47[21]], v44, a32);
  v49 = &v46[v47[22]];
  *v49 = v33;
  *(v49 + 1) = a31;
  v50 = &v46[v47[26]];
  *v50 = v36;
  *(v50 + 1) = v52;
  v51 = &v46[v47[23]];
  *v51 = v42;
  v51[8] = v40 & 1;
  v46[v47[24]] = v53;
  v46[v47[25]] = v54;
  (*(v48 + 8))(v44, a32);
  *v46 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_148_0();
}

uint64_t sub_216922660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  OUTLINED_FUNCTION_1();
  v75 = v3;
  v76 = *(v4 + 64);
  MEMORY[0x28223BE20](v5);
  v74 = &v55[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = &v84;
  v8 = *(v7 + 16);
  OUTLINED_FUNCTION_16();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v78 = &v55[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v79 = *(v13 + 32);
  v14 = sub_2170075B4();
  v15 = *(a1 + 72);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v72 = *(a1 + 24);
  v17 = v72;
  OUTLINED_FUNCTION_12_6();
  WitnessTable = swift_getWitnessTable();
  v64 = v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v82 = v14;
  v83 = AssociatedTypeWitness;
  v84 = v17;
  v85 = WitnessTable;
  v86 = AssociatedConformanceWitness;
  sub_21700B174();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_34_4();
  v20 = sub_21700B4E4();
  v69 = v20;
  OUTLINED_FUNCTION_0_2();
  v21 = swift_getWitnessTable();
  v68 = v21;
  v63 = *(a1 + 64);
  v22 = v63;
  v82 = v8;
  v83 = v20;
  *v71 = *(&v79 + 1);
  v85 = v21;
  v86 = v22;
  v87 = v15;
  v23 = type metadata accessor for _ShelfCollection();
  OUTLINED_FUNCTION_1();
  v71 = v24;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v25);
  v62 = &v55[-v26];
  OUTLINED_FUNCTION_11_31();
  v66 = swift_getWitnessTable();
  v82 = v23;
  v83 = v66;
  v67 = MEMORY[0x277D269F8];
  swift_getOpaqueTypeMetadata2();
  v27 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v70 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_77();
  v61 = v30 - v31;
  v33 = MEMORY[0x28223BE20](v32);
  v65 = &v55[-v34];
  v35 = v73;
  v36 = v8;
  (*(v10 + 16))(v78, v73 + *(a1 + 84), v8, v33);
  v37 = *(a1 + 96);
  v38 = v35 + *(a1 + 92);
  v60 = *v38;
  v59 = v38[8];
  v57 = *v35;
  v58 = *(v35 + v37);
  v56 = *(v35 + *(a1 + 100));
  v40 = v74;
  v39 = v75;
  (*(v75 + 16))(v74, v35, a1);
  v41 = (*(v39 + 80) + 80) & ~*(v39 + 80);
  v42 = swift_allocObject();
  *&v43 = v36;
  *(&v43 + 1) = v72;
  v44 = v79;
  *(v42 + 16) = v43;
  *(v42 + 32) = v44;
  *(v42 + 48) = *(a1 + 48);
  v45 = v64;
  *(v42 + 64) = v63;
  *(v42 + 72) = v45;
  (*(v39 + 32))(v42 + v41, v40, a1);
  v54 = v36;
  v46 = v62;
  LODWORD(v36) = v56;
  sub_2169238EC(v78, v60, v59, v57, v58, v56, sub_216927BD4, v42, v62, v54);
  sub_21700DF14();
  v47 = v61;
  v48 = v36;
  v49 = v66;
  sub_2169239F4(v48, v23, v66, v61);
  (v71[1])(v46, v23);
  v82 = v23;
  v83 = v49;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v81 = v49;
  OUTLINED_FUNCTION_6_1();
  v50 = swift_getWitnessTable();
  v51 = v65;
  sub_2166C24DC(v47, v27, v50);
  v52 = *(v70 + 8);
  v52(v47, v27);
  sub_2166C24DC(v51, v27, v50);
  return (v52)(v51, v27);
}

uint64_t sub_216922C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v109 = a7;
  v106 = a6;
  v81 = a2;
  v90 = a1;
  v100 = a8;
  v92 = *(a3 - 8);
  v97 = *(v92 + 64);
  v82 = a9;
  MEMORY[0x28223BE20](a1);
  v107 = &KeyPath - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = v14;
  v130 = v15;
  v16 = v15;
  v131 = v17;
  v132 = v18;
  v133 = v19;
  v134 = v20;
  v135 = v21;
  v136 = a10;
  v103 = type metadata accessor for ShelfCollection();
  v105 = *(v103 - 8);
  v83 = *(v105 + 64);
  MEMORY[0x28223BE20](v103);
  v104 = &KeyPath - v22;
  v23 = sub_2170075B4();
  v86 = v23;
  MEMORY[0x28223BE20](v23);
  v108 = &KeyPath - v24;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v79 = a10;
  v94 = AssociatedTypeWitness;
  v26 = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  v85 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v129 = v23;
  v130 = v26;
  v102 = v16;
  v131 = v16;
  v132 = WitnessTable;
  v133 = AssociatedConformanceWitness;
  v93 = sub_21700B174();
  v96 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v80 = &KeyPath - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v89 = &KeyPath - v30;
  MEMORY[0x28223BE20](v31);
  v95 = &KeyPath - v32;
  v88 = *(a4 - 8);
  v33 = v88;
  MEMORY[0x28223BE20](v34);
  v36 = &KeyPath - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v37);
  v91 = &KeyPath - v39;
  v40 = v103;
  v41 = v81;
  (*(v81 + *(v103 + 88)))(v38);
  v42 = v36;
  v87 = v36;
  v43 = v36;
  v44 = a4;
  v45 = v109;
  sub_2166C24DC(v43, a4, v109);
  v46 = *(v33 + 8);
  v98 = v33 + 8;
  v99 = v46;
  v46(v42, a4);
  v47 = a3;
  v101 = a5;
  v48 = v90;
  sub_21700EC34();
  v118 = a3;
  v119 = v102;
  v120 = a4;
  v121 = a5;
  v49 = v106;
  v122 = v106;
  v123 = v45;
  v50 = v82;
  v51 = v79;
  v124 = v82;
  v125 = v79;
  KeyPath = swift_getKeyPath();
  v52 = v105;
  (*(v105 + 16))(v104, v41, v40);
  v53 = v92;
  (*(v92 + 16))(v107, v48, v47);
  v54 = (*(v52 + 80) + 80) & ~*(v52 + 80);
  v55 = v53;
  v56 = (v83 + *(v53 + 80) + v54) & ~*(v53 + 80);
  v57 = swift_allocObject();
  v58 = v102;
  *(v57 + 2) = v47;
  *(v57 + 3) = v58;
  v59 = v101;
  *(v57 + 4) = v44;
  *(v57 + 5) = v59;
  *(v57 + 6) = v49;
  v60 = v109;
  *(v57 + 7) = v109;
  *(v57 + 8) = v50;
  *(v57 + 9) = v51;
  (*(v105 + 32))(&v57[v54], v104, v103);
  (*(v55 + 32))(&v57[v56], v107, v47);
  v61 = swift_allocObject();
  v62 = v47;
  v61[2] = v47;
  v61[3] = v58;
  v63 = v58;
  v64 = v101;
  v61[4] = v44;
  v61[5] = v64;
  v65 = v106;
  v61[6] = v106;
  v61[7] = v60;
  v61[8] = v50;
  v61[9] = v51;
  v61[10] = sub_216927C90;
  v61[11] = v57;
  v66 = v80;
  v67 = v63;
  sub_21700B154();
  v110 = v62;
  v111 = v67;
  v112 = v44;
  v113 = v64;
  v114 = v65;
  v115 = v60;
  v116 = v50;
  v117 = v51;
  swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v68 = v89;
  v69 = v93;
  sub_21700B144();

  v70 = v96;
  v71 = *(v96 + 8);
  v71(v66, v69);
  v128[2] = v65;
  v72 = swift_getWitnessTable();
  v73 = v95;
  sub_2166C24DC(v68, v69, v72);
  v71(v68, v69);
  v74 = v87;
  v75 = v91;
  (*(v88 + 16))(v87, v91, v44);
  v129 = v74;
  (*(v70 + 16))(v68, v73, v69);
  v130 = v68;
  v128[0] = v44;
  v128[1] = v69;
  v126 = v109;
  v127 = v72;
  sub_216984F84(&v129, 2, v128);
  v71(v73, v69);
  v76 = v99;
  v99(v75, v44);
  v71(v68, v69);
  return v76(v74, v44);
}

uint64_t sub_216923620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X8>, uint64_t a6)
{
  v25 = a2;
  v26 = a1;
  v27 = a5;
  v8 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x28223BE20](v11);
  v14 = &v24 - v13;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v32 = a6;
  v33 = v12;
  v34 = v19;
  v20 = *(a3 + *(type metadata accessor for ShelfCollection() + 104));
  v21 = sub_21700EC74();
  v20(v25, v26, v21);
  sub_2166C24DC(v10, a4, a6);
  v22 = *(v8 + 8);
  v22(v10, a4);
  sub_2166C24DC(v14, a4, a6);
  return (v22)(v14, a4);
}

uint64_t sub_2169237C4(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_216923868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 16);
  v4 = *(v3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return v4(AssociatedTypeWitness, v3);
}

int *sub_2169238EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  (*(*(a10 - 8) + 32))(a9, a1, a10);
  result = type metadata accessor for _ShelfCollection();
  v19 = a9 + result[17];
  *v19 = a2;
  *(v19 + 8) = a3 & 1;
  v20 = (a9 + result[18]);
  *v20 = a7;
  v20[1] = a8;
  *(a9 + result[20]) = a5;
  *(a9 + result[21]) = a6;
  *(a9 + result[19]) = a4;
  return result;
}

uint64_t sub_2169239F4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a1;
  v50 = a4;
  OUTLINED_FUNCTION_16();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_77();
  v45 = (v9 - v10);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  sub_2170064D4();
  OUTLINED_FUNCTION_1();
  v43 = v15;
  v44 = v14;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - v17;
  OUTLINED_FUNCTION_2_49();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v23);
  v25 = &v43 - v24;
  sub_217009564();
  OUTLINED_FUNCTION_1();
  v48 = v27;
  v49 = v26;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  v30 = &v43 - v29;
  if (v46)
  {
    sub_21700A2A4();
    v31 = v44;
    sub_217006474();

    (*(v43 + 8))(v18, v31);
    OUTLINED_FUNCTION_2_49();
    v32 = OUTLINED_FUNCTION_30_19();
    v33 = OUTLINED_FUNCTION_26_22();
    sub_2166C24DC(v33, v34, v32);
    v35 = *(v21 + 8);
    v36 = OUTLINED_FUNCTION_26_22();
    v35(v36);
    sub_2166C24DC(v25, OpaqueTypeMetadata2, v32);
    OUTLINED_FUNCTION_26_22();
    sub_2166C2718();
    v37 = OUTLINED_FUNCTION_26_22();
    v35(v37);
    (v35)(v25, OpaqueTypeMetadata2);
  }

  else
  {
    sub_2166C24DC(v47, a2, a3);
    v38 = v45;
    sub_2166C24DC(v13, a2, a3);
    OUTLINED_FUNCTION_2_49();
    OUTLINED_FUNCTION_30_19();
    sub_2166C2CB0();
    v39 = *(v7 + 8);
    v39(v38, a2);
    v39(v13, a2);
  }

  OUTLINED_FUNCTION_2_49();
  v51 = OUTLINED_FUNCTION_30_19();
  v52 = a3;
  OUTLINED_FUNCTION_6_1();
  v40 = v49;
  WitnessTable = swift_getWitnessTable();
  sub_2166C24DC(v30, v40, WitnessTable);
  return (*(v48 + 8))(v30, v40);
}

uint64_t sub_216923DE0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  OUTLINED_FUNCTION_50();
  result = (*(v8 + 16))(a4, v10, v9);
  if (a1)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;

    sub_216DF3B2C();
    v13 = *(*a4 + 16);
    result = sub_216DF3C90(v13);
    v14 = *a4;
    *(v14 + 16) = v13 + 1;
    v15 = v14 + 16 * v13;
    *(v15 + 32) = sub_2166EFCD4;
    *(v15 + 40) = v12;
    *a4 = v14;
  }

  return result;
}

uint64_t sub_216923EB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v3 = *(a1 - 1);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v17[0] = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v7 = a1[2];
  v8 = a1[3];
  *(v6 + 2) = v7;
  *(v6 + 3) = v8;
  v9 = a1[4];
  v10 = a1[5];
  *(v6 + 4) = v9;
  *(v6 + 5) = v10;
  v11 = a1[6];
  v12 = a1[7];
  *(v6 + 6) = v11;
  *(v6 + 7) = v12;
  (*(v3 + 32))(&v6[v17[0]], v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v20 = v7;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  type metadata accessor for _ShelfCollection.ContentView();
  swift_getWitnessTable();
  v18 = sub_217008594();
  v19 = v13;
  v14 = sub_2170085A4();
  WitnessTable = swift_getWitnessTable();
  sub_2166C24DC(&v18, v14, WitnessTable);

  v18 = v20;
  v19 = v21;
  sub_2166C24DC(&v18, v14, WitnessTable);
}

uint64_t sub_2169240C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v48 = a5;
  v46 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v45 = &v37[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = v9;
  v50 = v10;
  v11 = v10;
  v42 = v12;
  v43 = v10;
  v51 = v12;
  v52 = v13;
  v14 = v12;
  v15 = v13;
  v40 = v16;
  v41 = v13;
  v53 = v16;
  v54 = v17;
  v18 = v16;
  v39 = v17;
  v19 = type metadata accessor for _ShelfCollection.ContentView();
  v47 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v37[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v44 = &v37[-v23];
  sub_217008444();
  v25 = v24;
  v49 = a3;
  v50 = v11;
  v51 = v14;
  v52 = v15;
  v53 = v18;
  v54 = a4;
  v26 = type metadata accessor for _ShelfCollection();
  v38 = *(a2 + v26[20]);
  v27 = a2 + v26[17];
  v28 = *v27;
  LOBYTE(v18) = *(v27 + 8);
  v29 = (a2 + v26[18]);
  v30 = *v29;
  v31 = v29[1];
  v32 = v45;
  (*(v46 + 16))(v45, a2, a3);
  sub_2169243B4(v38, v28, v18, v30, v31, v32, *(a2 + v26[19]), a3, v21, v25);
  WitnessTable = swift_getWitnessTable();
  v34 = v44;
  sub_2166C24DC(v21, v19, WitnessTable);
  v35 = *(v47 + 8);

  sub_21700DF14();
  v35(v21, v19);
  sub_2166C24DC(v34, v19, WitnessTable);
  return (v35)(v34, v19);
}

uint64_t sub_2169243B4@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  *a9 = a10;
  *(a9 + 8) = a1;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3 & 1;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  v14 = type metadata accessor for _ShelfCollection.ContentView();
  (*(*(a8 - 8) + 32))(a9 + v14[20], a6, a8);
  *(a9 + v14[21]) = a7;
  v15 = v14[22];
  *(a9 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCCA0);
  swift_storeEnumTagMultiPayload();
  v16 = v14[23];
  *(a9 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7920);
  result = swift_storeEnumTagMultiPayload();
  v18 = a9 + v14[24];
  *v18 = sub_216924518;
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  *(a9 + v14[25]) = 0x407F400000000000;
  return result;
}

uint64_t sub_21692451C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v165 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB9E8);
  MEMORY[0x28223BE20](v3 - 8);
  v162 = &v120 - v4;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCCA8);
  v164 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v163 = &v120 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7930);
  MEMORY[0x28223BE20](v6 - 8);
  v161 = &v120 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  MEMORY[0x28223BE20](v8 - 8);
  v160 = &v120 - v9;
  v176 = *(a1 - 1);
  v171 = *(v176 + 64);
  MEMORY[0x28223BE20](v10);
  v158 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = 0x8000000217084850;
  v153 = a1;
  *&v175 = a1[3];
  *&v174 = a1[5];
  sub_217008024();
  sub_21700B084();
  sub_217009564();
  v12 = sub_21700AD94();
  WitnessTable = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  v199 = WitnessTable;
  v200 = v14;
  v144 = MEMORY[0x277CE0340];
  v198 = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v194 = v12;
  v195 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v194 = v12;
  v195 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = sub_217008044();
  v169 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v166 = &v120 - v17;
  v18 = swift_getWitnessTable();
  v194 = v16;
  v195 = v18;
  v143 = v16;
  v19 = v18;
  v145 = v18;
  v20 = swift_getOpaqueTypeMetadata2();
  v155 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v170 = &v120 - v21;
  v194 = v16;
  v195 = v19;
  v22 = swift_getOpaqueTypeConformance2();
  v194 = v20;
  v195 = MEMORY[0x277D839B0];
  v23 = v20;
  v136 = v20;
  v196 = v22;
  v197 = MEMORY[0x277D839C8];
  v137 = v22;
  v150 = swift_getOpaqueTypeMetadata2();
  v154 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v147 = &v120 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCCB0);
  v25 = sub_2170089F4();
  v151 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v148 = &v120 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F0);
  v140 = v25;
  v27 = sub_2170089F4();
  v152 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v146 = &v120 - v28;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCC88);
  v141 = v27;
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCC90);
  v29 = sub_2170089F4();
  v149 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v142 = &v120 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7980);
  v194 = v23;
  v195 = MEMORY[0x277D839B0];
  v196 = v22;
  v197 = MEMORY[0x277D839C8];
  v32 = swift_getOpaqueTypeConformance2();
  v139 = v32;
  v33 = sub_2166D9530(&qword_280E2A838, &qword_27CABCCB0);
  v192 = v32;
  v193 = v33;
  v34 = MEMORY[0x277CDFAD8];
  v35 = swift_getWitnessTable();
  v135 = v35;
  v36 = MEMORY[0x277CE0868];
  v37 = sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0);
  v190 = v35;
  v191 = v37;
  v38 = swift_getWitnessTable();
  v138 = v38;
  v156 = v36;
  v39 = sub_2166D9530(&qword_280E2A760, &qword_27CABCC88);
  v188 = v38;
  v189 = v39;
  v157 = v34;
  v40 = swift_getWitnessTable();
  v41 = sub_2166D9530(&qword_280E2A740, &qword_27CABCC90);
  v186 = v40;
  v187 = v41;
  v42 = v29;
  v43 = swift_getWitnessTable();
  v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7990);
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7998);
  v46 = sub_2167CBD04();
  v194 = v45;
  v195 = v46;
  v47 = swift_getOpaqueTypeConformance2();
  v194 = v44;
  v195 = v47;
  v48 = swift_getOpaqueTypeConformance2();
  v194 = v42;
  v195 = v31;
  v196 = v43;
  v197 = v48;
  v49 = swift_getOpaqueTypeMetadata2();
  v194 = v42;
  v195 = v31;
  v124 = v42;
  v196 = v43;
  v197 = v48;
  v50 = v43;
  v122 = v43;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = sub_2167B2E14();
  v194 = v49;
  v195 = MEMORY[0x277D837D0];
  v53 = MEMORY[0x277D837D0];
  v196 = v51;
  v197 = v52;
  v54 = swift_getOpaqueTypeMetadata2();
  v194 = v49;
  v195 = v53;
  v196 = v51;
  v197 = v52;
  v55 = swift_getOpaqueTypeConformance2();
  v194 = v54;
  v195 = v53;
  v196 = v55;
  v197 = v52;
  v56 = swift_getOpaqueTypeMetadata2();
  v194 = v54;
  v195 = v53;
  v196 = v55;
  v197 = v52;
  v57 = swift_getOpaqueTypeConformance2();
  v194 = v56;
  v195 = v57;
  swift_getOpaqueTypeMetadata2();
  v58 = sub_217009564();
  v126 = v58;
  v132 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v123 = &v120 - v59;
  v60 = sub_2166D9530(&qword_280E48588, &qword_27CABCCA8);
  v128 = v60;
  v194 = v56;
  v195 = v57;
  v184 = swift_getOpaqueTypeConformance2();
  v185 = v50;
  v127 = swift_getWitnessTable();
  v194 = v173;
  v195 = v58;
  v196 = v60;
  v197 = v127;
  v130 = sub_217008B74();
  v134 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v125 = &v120 - v61;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCCB8);
  v133 = sub_2170089F4();
  v144 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v129 = &v120 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v131 = &v120 - v64;
  sub_217009C64();
  v65 = v153;
  *&v66 = v153[2];
  *(&v66 + 1) = v175;
  v175 = v66;
  *&v67 = v153[4];
  *(&v67 + 1) = v174;
  v174 = v67;
  v178 = v67;
  v177 = v66;
  v68 = v153[7];
  v179 = v153[6];
  v69 = v179;
  v180 = v68;
  v70 = v68;
  v71 = v172;
  v181 = v172;
  v72 = v166;
  sub_217008054();
  v73 = v143;
  sub_21700A874();
  v169[1](v72, v73);
  v74 = v176;
  v75 = *(v176 + 16);
  OpaqueTypeMetadata2 = v176 + 16;
  v169 = v75;
  v76 = v158;
  (v75)(v158, v71, v65);
  OpaqueTypeConformance2 = *(v74 + 80);
  v77 = (OpaqueTypeConformance2 + 64) & ~OpaqueTypeConformance2;
  v78 = swift_allocObject();
  v79 = v174;
  *(v78 + 16) = v175;
  *(v78 + 32) = v79;
  v120 = v69;
  *(v78 + 48) = v69;
  *(v78 + 56) = v70;
  v121 = v70;
  v166 = *(v74 + 32);
  v176 = v74 + 32;
  (v166)(v78 + v77, v76, v65);
  (v169)(v76, v71, v65);
  v80 = swift_allocObject();
  v81 = v174;
  *(v80 + 16) = v175;
  *(v80 + 32) = v81;
  *(v80 + 48) = v69;
  *(v80 + 56) = v70;
  v82 = v80 + v77;
  v83 = v77;
  v84 = v76;
  (v166)(v82, v76, v65);
  v85 = v147;
  v86 = v136;
  v87 = v170;
  sub_21700A844();

  (*(v155 + 8))(v87, v86);
  v194 = 0xD000000000000021;
  v195 = v159;
  v88 = v148;
  v89 = v150;
  sub_21700A594();
  (*(v154 + 8))(v85, v89);
  v90 = v172;
  v91 = *v172;
  v92 = v146;
  v93 = v140;
  sub_2169267B8();
  (*(v151 + 8))(v88, v93);
  v94 = sub_2170098A4();
  v95 = v160;
  __swift_storeEnumTagSinglePayload(v160, 1, 1, v94);
  v96 = v142;
  v97 = v141;
  sub_2169224C4(v91, v95, v141, v138);
  sub_2166997CC(v95, &qword_27CAB8600);
  (*(v152 + 8))(v92, v97);
  v98 = v161;
  sub_216C0C748();
  v99 = v123;
  v100 = v124;
  sub_216B51454();
  sub_2166997CC(v98, &qword_27CAB7930);
  (*(v149 + 8))(v96, v100);
  v101 = v162;
  sub_216C0C94C();
  v102 = sub_216C093A4();
  sub_2166997CC(v101, &qword_27CABB9E8);
  v194 = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCCC0);
  sub_2166D9530(&qword_280E48520, &qword_27CABCCC0);
  v103 = v163;
  sub_217007E64();

  (v169)(v84, v90, v65);
  v104 = swift_allocObject();
  v105 = v174;
  *(v104 + 16) = v175;
  *(v104 + 32) = v105;
  v106 = v121;
  *(v104 + 48) = v120;
  *(v104 + 56) = v106;
  (v166)(v104 + v83, v84, v65);
  v107 = v125;
  v108 = v103;
  v109 = v126;
  v110 = v173;
  sub_21700ABE4();

  (*(v164 + 8))(v108, v110);
  (*(v132 + 8))(v99, v109);
  swift_getKeyPath();
  type metadata accessor for PersistentPageSectionManager();
  sub_21692A060(&unk_280E32060, type metadata accessor for PersistentPageSectionManager);
  v194 = sub_2170081B4();
  v111 = v130;
  v112 = swift_getWitnessTable();
  v113 = v129;
  sub_21700A3D4();

  (*(v134 + 8))(v107, v111);
  v114 = sub_2166D9530(&qword_280E2A780, &qword_27CABCCB8);
  v182 = v112;
  v183 = v114;
  v115 = v133;
  v116 = swift_getWitnessTable();
  v117 = v131;
  sub_2166C24DC(v113, v115, v116);
  v118 = *(v144 + 8);
  v118(v113, v115);
  sub_2166C24DC(v117, v115, v116);
  return (v118)(v117, v115);
}

uint64_t sub_216925B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v51 = a7;
  v50 = a6;
  v48 = a5;
  v53 = a8;
  sub_217008024();
  sub_21700B084();
  v44 = sub_217009564();
  v12 = sub_21700AD94();
  v52 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v49 = &v38 - v13;
  WitnessTable = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v69 = WitnessTable;
  v70 = v15;
  v42 = swift_getWitnessTable();
  v68 = v42;
  v40 = v12;
  v41 = swift_getWitnessTable();
  v62 = v12;
  v63 = v41;
  v45 = MEMORY[0x277CDEA40];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v47 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v38 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v39 = &v38 - v18;
  v19 = a3;
  v43 = *(a3 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a1 + 32);
  v62 = a2;
  v63 = a3;
  v24 = v48;
  v64 = a4;
  v65 = v48;
  v25 = v50;
  v26 = v51;
  v66 = v50;
  v67 = v51;
  v27 = type metadata accessor for _ShelfCollection.ContentView();
  v23(a1 + *(v27 + 80));
  v54 = a2;
  v55 = v19;
  v28 = v19;
  v56 = a4;
  v57 = v24;
  v58 = v25;
  v59 = v26;
  v60 = a1;
  v61 = v22;
  v29 = v49;
  sub_21700AD84();
  v30 = v40;
  v31 = v41;
  OUTLINED_FUNCTION_2_14();
  v32 = v38;
  sub_21700A714();
  (*(v52 + 8))(v29, v30);
  v62 = v30;
  v63 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v39;
  v35 = OpaqueTypeMetadata2;
  sub_2166C24DC(v32, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v36 = *(v47 + 8);
  v36(v32, v35);
  sub_2166C24DC(v34, v35, OpaqueTypeConformance2);
  v36(v34, v35);
  return (*(v43 + 8))(v22, v28);
}

uint64_t sub_216926014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v49 = a7;
  v50 = a8;
  v46 = a3;
  v47 = a5;
  v48 = a2;
  v54 = a9;
  v12 = sub_21700B084();
  v44 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v43 = v40 - v16;
  v17 = sub_217009714();
  MEMORY[0x28223BE20](v17 - 8);
  v40[1] = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_217008024();
  v42 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v41 = v40 - v23;
  v24 = sub_217009564();
  v52 = *(v24 - 8);
  v53 = v24;
  MEMORY[0x28223BE20](v24);
  v51 = v40 - v25;
  v26 = *(a1 + 8);
  sub_2170093C4();
  v45 = v40;
  v55 = v46;
  v56 = a4;
  v57 = v47;
  v58 = a6;
  v59 = v49;
  v60 = v50;
  v61 = v48;
  if (v26 == 1)
  {
    sub_21692237C();
    sub_217008014();
    WitnessTable = swift_getWitnessTable();
    v28 = v41;
    sub_2166C24DC(v21, v19, WitnessTable);
    v29 = *(v42 + 8);
    v29(v21, v19);
    sub_2166C24DC(v28, v19, WitnessTable);
    swift_getWitnessTable();
    v30 = v51;
    sub_2166C2718();
    v29(v21, v19);
    v31 = v28;
    v32 = v19;
  }

  else
  {
    sub_21700B074();
    v33 = swift_getWitnessTable();
    v34 = v43;
    sub_2166C24DC(v14, v12, v33);
    v29 = *(v44 + 8);
    v29(v14, v12);
    sub_2166C24DC(v34, v12, v33);
    swift_getWitnessTable();
    v30 = v51;
    sub_2166C2CB0();
    v29(v14, v12);
    v31 = v34;
    v32 = v12;
  }

  v29(v31, v32);
  v35 = swift_getWitnessTable();
  v36 = swift_getWitnessTable();
  v62 = v35;
  v63 = v36;
  v37 = v53;
  v38 = swift_getWitnessTable();
  sub_2166C24DC(v30, v37, v38);
  return (*(v52 + 8))(v30, v37);
}

uint64_t sub_21692659C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_16();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2166C24DC(v12, v13, v14);
  sub_2166C24DC(v11, a3, a5);
  return (*(v8 + 8))(v11, a3);
}

uint64_t sub_216926678@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for _ShelfCollection.ContentView();
  v5 = *(*(a1 + *(result + 84)) + 16);
  if (v5)
  {
    v6 = result;
    sub_217008704();
    v8 = v7;
    sub_217008704();
    v10 = v8 + v9;
    sub_217008714();
    v12 = v10 + v11;
    sub_2170086F4();
    v14 = v12 + v13 + *(a1 + *(v6 + 100));
    result = sub_2170086E4();
    LOBYTE(v5) = v15 <= v14;
  }

  *a2 = v5;
  return result;
}

void sub_216926720(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*a2 == 1)
  {
    v3 = *(a3 + *(type metadata accessor for _ShelfCollection.ContentView() + 84));
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = v3 + 40;
      do
      {
        v6 = *(v5 - 8);

        v6(v7);

        v5 += 16;
        --v4;
      }

      while (v4);
    }
  }
}

uint64_t sub_2169267B8()
{
  swift_getKeyPath();
  sub_21700A3D4();
}

uint64_t sub_216926834(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = *(result + 16);
    v3 = *result;
    type metadata accessor for _ShelfCollection.ContentView();
    type metadata accessor for PersistentPageSectionManager();
    sub_21692A060(&unk_280E32060, type metadata accessor for PersistentPageSectionManager);
    sub_2170081B4();
    sub_216B7354C(v3 & 1, v1, v2);
  }

  return result;
}

void sub_21692693C(uint64_t a1@<X8>)
{
  *a1 = sub_216926928();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t sub_216926968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_216927610();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_2169269CC@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_10_4();
  *a1 = result;
  return result;
}

uint64_t sub_2169269F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_216927664();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_216926A58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2167CB87C();
  *a1 = result;
  return result;
}

uint64_t sub_216926A80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v34 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  v10 = OUTLINED_FUNCTION_2(v9);
  v12 = v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  OUTLINED_FUNCTION_16();
  v16 = v15;
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v19);
  (*(v16 + 16))(&v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v5, a2, v20);
  sub_2169270E4(a1, v14);
  v21 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v22 = (v18 + v21 + *(v12 + 80)) & ~*(v12 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  (*(v16 + 32))(v23 + v21, &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  sub_216927154(v14, v23 + v22);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCC88);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCC90);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F0);
  sub_2170089F4();
  OUTLINED_FUNCTION_10_32();
  v25 = sub_2166D9530(v24, &qword_27CABCC88);
  v39 = a3;
  v40 = v25;
  WitnessTable = swift_getWitnessTable();
  v27 = sub_2166D9530(&qword_280E2A740, &qword_27CABCC90);
  v37 = WitnessTable;
  v38 = v27;
  OUTLINED_FUNCTION_26_22();
  v28 = swift_getWitnessTable();
  v29 = sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0);
  v35 = v28;
  v36 = v29;
  swift_getWitnessTable();
  result = sub_217008594();
  v31 = v34;
  *v34 = result;
  v31[1] = v32;
  return result;
}

uint64_t sub_216926D94@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v28 = a1;
  v29 = a4;
  v27 = a2;
  v31 = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCC88);
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCC90);
  v6 = sub_2170089F4();
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F0);
  v9 = sub_2170089F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  sub_217008444();
  v16 = a3;
  v17 = v29;
  sub_2169224C4(v18, v27, v16, v29);
  sub_217008444();
  v19 = sub_2166D9530(&qword_280E2A760, &qword_27CABCC88);
  v36 = v17;
  v37 = v19;
  WitnessTable = swift_getWitnessTable();
  v21 = sub_2166D9530(&qword_280E2A740, &qword_27CABCC90);
  v34 = WitnessTable;
  v35 = v21;
  v22 = swift_getWitnessTable();
  sub_2169267B8();
  (*(v30 + 8))(v8, v6);
  v23 = sub_2166D9530(&qword_280E2A758, &qword_27CAB93F0);
  v32 = v22;
  v33 = v23;
  swift_getWitnessTable();
  sub_2166C24DC(v12, v9);
  v24 = *(v10 + 8);
  v24(v12, v9);
  sub_2166C24DC(v15, v9);
  return (v24)(v15, v9);
}

uint64_t sub_2169270E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216927154(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2169271C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  OUTLINED_FUNCTION_16();
  v7 = *(v6 + 64);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  OUTLINED_FUNCTION_36(v9);
  v11 = v1 + ((v8 + v7 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_216926D94(v1 + v8, v11, v3, v4, a1);
}

unint64_t sub_2169272B4()
{
  result = qword_280E2EAC8;
  if (!qword_280E2EAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2EAC8);
  }

  return result;
}

uint64_t sub_216927308(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCC88);
  v6 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = v15 - v10;
  v12 = qword_217028DF0[a1];
  swift_getKeyPath();
  LOBYTE(v16) = a1;
  sub_21700A3D4();

  swift_getKeyPath();
  v16 = 0;
  v17 = v12;
  v18 = 0;
  v19 = v12;
  v13 = sub_2166D9530(&qword_280E2A760, &qword_27CABCC88);
  v15[0] = a4;
  v15[1] = v13;
  swift_getWitnessTable();
  sub_21700A3D4();

  return (*(v8 + 8))(v11, v6);
}

unint64_t sub_2169274D4()
{
  result = qword_280E2F200[0];
  if (!qword_280E2F200[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2F200);
  }

  return result;
}

unint64_t sub_216927528()
{
  result = qword_280E30C90[0];
  if (!qword_280E30C90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E30C90);
  }

  return result;
}

unint64_t sub_21692757C()
{
  result = qword_280E2D1A8;
  if (!qword_280E2D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2D1A8);
  }

  return result;
}

unint64_t sub_216927610()
{
  result = qword_280E2B4F8;
  if (!qword_280E2B4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B4F8);
  }

  return result;
}

unint64_t sub_216927664()
{
  result = qword_280E2C438;
  if (!qword_280E2C438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2C438);
  }

  return result;
}

unint64_t sub_2169276D0()
{
  sub_2169294B0(319, &qword_280E29DF0, &qword_27CABCC98, &unk_21702A060, MEMORY[0x277D83940]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      v1 = sub_2166B0B84();
      if (v4 <= 0x3F)
      {
        sub_216927B20();
        if (v6 > 0x3F)
        {
          return v5;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

uint64_t sub_2169277DC(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((result + v7 + 8) & ~v7, v6, v4);
    }

    else
    {
      v17 = *result;
      if (*result >= 0xFFFFFFFFuLL)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((((((*(*(v4 - 8) + 64) + ((v7 + 8) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 16;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_216927934(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((((((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 18) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v8 & 0x80000000) != 0)
          {
            v19 = &a1[v10 + 8] & ~v10;

            __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *a1 = v18;
          }
        }

        break;
    }
  }

  else
  {
    if (((((((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 18) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((*(*(v6 - 8) + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 18) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

void sub_216927B20()
{
  if (!qword_280E4A490)
  {
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E4A490);
    }
  }
}

uint64_t sub_216927BD4()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = type metadata accessor for ShelfCollection();
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_5_39();
  return sub_216922C80(v4, v5, v6, v7, v8, v9, v10, v11, v2, v1);
}

uint64_t sub_216927C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 24);
  v6 = *(v3 + 48);
  v7 = type metadata accessor for ShelfCollection();
  OUTLINED_FUNCTION_2(v7);
  return sub_216923620(a1, a2, v3 + ((*(v8 + 80) + 80) & ~*(v8 + 80)), v5, a3, v6);
}

void sub_216927DEC()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_216927B20();
    if (v1 <= 0x3F)
    {
      sub_2166B0B84();
      if (v2 <= 0x3F)
      {
        sub_2169294B0(319, &qword_280E29DF0, &qword_27CABCC98, &unk_21702A060, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_216927EE0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 23) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 10;
    v9 = (a2 - v7 + 0xFFFF) >> 16;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        result = v7 + (v15 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_216928040(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 10;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 0xFFFF) >> 16;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 23] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 10);
    if (v10 <= 3)
    {
      v16 = HIWORD(v15) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_216928254()
{
  OUTLINED_FUNCTION_12_30();
  v0 = type metadata accessor for _ShelfCollection();
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_5_39();

  return sub_2169240C4(v1, v2, v3, v4, v5);
}

void sub_216928304()
{
  sub_216927B20();
  if (v0 <= 0x3F)
  {
    sub_2166B0B84();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_2169294B0(319, &qword_280E29DF0, &qword_27CABCC98, &unk_21702A060, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_2169294B0(319, &qword_280E2B478, &qword_27CABB9E8, &unk_217028D30, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_2169294B0(319, &qword_280E2B4A8, &qword_27CAB7930, &unk_21701A250, MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_2167CBB2C();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2169284A0(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v55 = *(a3 + 16);
  v75 = *(v55 - 8);
  if (*(v75 + 84) <= 0x7FFFFFFFu)
  {
    v3 = 0x7FFFFFFF;
  }

  else
  {
    v3 = *(v75 + 84);
  }

  v58 = *(v75 + 84);
  v59 = v3;
  v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA38) - 8);
  v70 = *(v57 + 84);
  v69 = *(v57 + 64);
  v4 = *(sub_217005EF4() - 8);
  v67 = *(v4 + 84);
  v5 = *(v4 + 80);
  v68 = *(v4 + 64);
  v6 = *(sub_21700C384() - 8);
  v63 = *(v6 + 80);
  v74 = *(v6 + 64);
  v7 = *(sub_21700DFD4() - 8);
  v62 = *(v7 + 80);
  v73 = *(v7 + 64);
  v8 = *(sub_217009124() - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64);
  v56 = *(sub_21700D7A4() - 8);
  v11 = *(v56 + 84);
  v66 = *(v56 + 64);
  v12 = *(sub_21700C4B4() - 8);
  v61 = *(v12 + 80);
  v13 = *(sub_21700C444() - 8);
  v14 = *(v13 + 80);
  LODWORD(v65) = *(v13 + 84);
  HIDWORD(v65) = *(v12 + 84);
  v64 = *(v12 + 64);
  v15 = *(v13 + 64);
  v16 = *(sub_2170067A4() - 8);
  v71 = *(v16 + 80);
  v72 = *(v16 + 64);
  v17 = *(sub_21700C8E4() - 8);
  v18 = *(v17 + 80);
  v19 = *(sub_21700C924() - 8);
  if (*(v19 + 84))
  {
    v20 = *(v19 + 64);
  }

  else
  {
    v20 = *(v19 + 64) + 1;
  }

  v21 = v69;
  if (!v70)
  {
    v21 = v69 + 1;
  }

  v22 = 8;
  if (v21 <= 8)
  {
    v21 = 8;
  }

  if (v67)
  {
    v23 = v68;
  }

  else
  {
    v23 = v68 + 1;
  }

  v24 = *(v19 + 80);
  v25 = v24 | v18;
  v26 = ((v9 + 32) & ~v9) + v10;
  v27 = v20 + ((*(v17 + 64) + v24) & ~v24);
  v28 = *(v75 + 80);
  v29 = ((v5 + 113) & ~v5) + v23;
  v30 = v14 | v61;
  v31 = v66;
  if (!v11)
  {
    v31 = v66 + 1;
  }

  v32 = ((v5 + 16 + ((((v31 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v5) + v23 + v30;
  if (v65)
  {
    v33 = 0;
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 - (((v64 + v14) & ~v14) + v15);
  v35 = (v34 - (v32 | v30) - 2) | v30;
  v36 = v9 | 7;
  v37 = ((((((v73 + ((((v29 + v63) & ~v63) + v74 + v62) & ~v62) + 7) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + (v9 | 7) + 16) & ~(v9 | 7)) + v26;
  v38 = (((v9 | 7) + v29 + (((v5 | 7) + v15 - ((-9 - v14) | v14) - ((v34 - (v14 | 7) + v35) | v14 | 7) - 2) & ~(v5 | 7))) & ~(v9 | 7)) + v26;
  if (v38 > v37)
  {
    v37 = v38;
  }

  v39 = 7;
  if (!HIDWORD(v65))
  {
    v39 = 8;
  }

  v40 = ((v68 + v36 + ((v5 + 16 + ((((((v39 + v64) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v5) + 2) & ~v36) + v26;
  if (v40 > v37)
  {
    v37 = v40;
  }

  v41 = (((v29 + v71) & ~v71) + v72 + v25) & ~v25;
  if (v27 <= 1)
  {
    v27 = 1;
  }

  v42 = ((v36 + v27 + v41 + 1) & ~v36) + v26;
  if (v42 <= v37)
  {
    v42 = v37;
  }

  if (((((v10 + ((v9 + 120) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16 > v42)
  {
    v42 = ((((v10 + ((v9 + 120) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v42 + 1 > 8)
  {
    v22 = v42 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  result = v59;
  if (v59 >= a2)
  {
LABEL_55:
    v53 = a1 & 0xFFFFFFFFFFFFFFF8;
    if ((v58 & 0x80000000) != 0)
    {

      return __swift_getEnumTagSinglePayload((v53 + v28 + 48) & ~v28, v58, v55);
    }

    else
    {
      v54 = *(v53 + 32);
      if (v54 >= 0xFFFFFFFF)
      {
        LODWORD(v54) = -1;
      }

      return (v54 + 1);
    }
  }

  else
  {
    v44 = *(v57 + 80) & 0xF8 | 7;
    v45 = (v44 + ((*(v75 + 64) + ((v28 + 48) & ~v28) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v44;
    LODWORD(v44) = v63 | v5 | *(v56 + 80) & 0xF8 | v62 | v9 | v61;
    v46 = ((v22 + ((v21 + (v44 | v14 | v71 | v25 | 7) + v45 + 1) & ~(v44 | v14 | v71 | v25 | 7)) + 32) & 0xFFFFFFFFFFFFFFF8) + 8;
    v47 = v46 & 0xFFFFFFF8;
    if ((v46 & 0xFFFFFFF8) != 0)
    {
      v48 = 2;
    }

    else
    {
      v48 = a2 - v59 + 1;
    }

    if (v48 >= 0x10000)
    {
      v49 = 4;
    }

    else
    {
      v49 = 2;
    }

    if (v48 < 0x100)
    {
      v49 = 1;
    }

    if (v48 >= 2)
    {
      v50 = v49;
    }

    else
    {
      v50 = 0;
    }

    switch(v50)
    {
      case 1:
        v51 = *(a1 + v46);
        if (!v51)
        {
          goto LABEL_55;
        }

        goto LABEL_51;
      case 2:
        v51 = *(a1 + v46);
        if (!v51)
        {
          goto LABEL_55;
        }

        goto LABEL_51;
      case 3:
        __break(1u);
        return result;
      case 4:
        v51 = *(a1 + v46);
        if (!v51)
        {
          goto LABEL_55;
        }

LABEL_51:
        v52 = v51 - 1;
        if (v47)
        {
          v52 = 0;
          LODWORD(v47) = *a1;
        }

        result = v59 + (v47 | v52) + 1;
        break;
      default:
        goto LABEL_55;
    }
  }

  return result;
}

void sub_216928C7C(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v55 = *(a4 + 16);
  v73 = *(v55 - 8);
  v56 = *(v73 + 84);
  if (v56 <= 0x7FFFFFFF)
  {
    v4 = 0x7FFFFFFF;
  }

  else
  {
    v4 = *(v73 + 84);
  }

  v75 = v4;
  v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA38) - 8);
  v63 = *(v72 + 84);
  v62 = *(v72 + 64);
  v5 = *(sub_217005EF4() - 8);
  v60 = *(v5 + 84);
  v6 = *(v5 + 80);
  v61 = *(v5 + 64);
  v7 = *(sub_21700C384() - 8);
  v68 = *(v7 + 80);
  v71 = *(v7 + 64);
  v8 = *(sub_21700DFD4() - 8);
  v9 = *(v8 + 80);
  v70 = *(v8 + 64);
  v10 = *(sub_217009124() - 8);
  v11 = *(v10 + 80);
  v12 = *(v10 + 64);
  v59 = *(sub_21700D7A4() - 8);
  v57 = *(v59 + 84);
  v67 = *(v59 + 64);
  v13 = *(sub_21700C4B4() - 8);
  v58 = *(v13 + 80);
  v14 = *(sub_21700C444() - 8);
  v15 = *(v14 + 80);
  LODWORD(v66) = *(v14 + 84);
  HIDWORD(v66) = *(v13 + 84);
  v65 = *(v13 + 64);
  v64 = *(v14 + 64);
  v16 = *(sub_2170067A4() - 8);
  v17 = *(v16 + 80);
  v69 = *(v16 + 64);
  v18 = *(sub_21700C8E4() - 8);
  v19 = *(v18 + 80);
  v20 = *(sub_21700C924() - 8);
  if (*(v20 + 84))
  {
    v21 = *(v20 + 64);
  }

  else
  {
    v21 = *(v20 + 64) + 1;
  }

  if (v63)
  {
    v22 = v62;
  }

  else
  {
    v22 = v62 + 1;
  }

  if (v22 <= 8)
  {
    v23 = 8;
  }

  else
  {
    v23 = v22;
  }

  if (v60)
  {
    v24 = v61;
  }

  else
  {
    v24 = v61 + 1;
  }

  v25 = *(v20 + 80);
  v26 = v25 | v19;
  v27 = (*(v18 + 64) + v25) & ~v25;
  v28 = ((v11 + 32) & ~v11) + v12;
  v29 = v21 + v27;
  v30 = *(v73 + 80);
  v31 = *(v72 + 80) & 0xF8 | 7;
  v32 = (v31 + ((*(v73 + 64) + ((v30 + 48) & ~v30) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v31;
  v33 = v68 | v6 | *(v59 + 80) & 0xF8 | v9 | v11 | v58 | v15 | v17 | v26 | 7;
  v34 = (v23 + v33 + v32 + 1) & ~v33;
  v35 = ((v6 + 113) & ~v6) + v24;
  v36 = v15 | v58;
  v37 = v67;
  if (!v57)
  {
    v37 = v67 + 1;
  }

  v38 = ((v6 + 16 + ((((v37 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v6) + v24 + v36;
  if (v66)
  {
    v39 = 0;
  }

  else
  {
    v39 = -1;
  }

  v40 = (v39 - (((v65 + v15) & ~v15) + v64) - (v15 | 7) + ((v39 - (((v65 + v15) & ~v15) + v64) - (v38 | v36) - 2) | v36)) | v15 | 7;
  v41 = v11 | 7;
  v42 = (((v11 | 7) + v35 + (((v6 | 7) + v64 - ((-9 - v15) | v15) - v40 - 2) & ~(v6 | 7))) & ~(v11 | 7)) + v28;
  if (v42 <= ((((((v70 + ((((v35 + v68) & ~v68) + v71 + v9) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + (v11 | 7) + 16) & ~(v11 | 7)) + v28)
  {
    v42 = ((((((v70 + ((((v35 + v68) & ~v68) + v71 + v9) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + (v11 | 7) + 16) & ~(v11 | 7)) + v28;
  }

  v43 = 7;
  if (!HIDWORD(v66))
  {
    v43 = 8;
  }

  v44 = ((v61 + v41 + ((v6 + 16 + ((((((v43 + v65) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v6) + 2) & ~v41) + v28;
  if (v44 > v42)
  {
    v42 = v44;
  }

  v45 = (((v35 + v17) & ~v17) + v69 + v26) & ~v26;
  if (v29 <= 1)
  {
    v29 = 1;
  }

  v46 = ((v41 + v29 + v45 + 1) & ~v41) + v28;
  if (v46 <= v42)
  {
    v46 = v42;
  }

  if (((((v12 + ((v11 + 120) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16 > v46)
  {
    v46 = ((((v12 + ((v11 + 120) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v46 + 1 > 8)
  {
    v47 = v46 + 1;
  }

  else
  {
    v47 = 8;
  }

  v48 = ((v47 + v34 + 32) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v75 >= a3)
  {
    v51 = 0;
  }

  else
  {
    if (((v47 + v34 + 32) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v49 = a3 - v75 + 1;
    }

    else
    {
      v49 = 2;
    }

    if (v49 >= 0x10000)
    {
      v50 = 4;
    }

    else
    {
      v50 = 2;
    }

    if (v49 < 0x100)
    {
      v50 = 1;
    }

    if (v49 >= 2)
    {
      v51 = v50;
    }

    else
    {
      v51 = 0;
    }
  }

  if (a2 <= v75)
  {
    switch(v51)
    {
      case 1:
        *(a1 + v48) = 0;
        if (a2)
        {
          goto LABEL_64;
        }

        break;
      case 2:
        *(a1 + v48) = 0;
        if (a2)
        {
          goto LABEL_64;
        }

        break;
      case 3:
LABEL_75:
        __break(1u);
        break;
      case 4:
        *(a1 + v48) = 0;
        goto LABEL_63;
      default:
LABEL_63:
        if (a2)
        {
LABEL_64:
          v53 = a1 & 0xFFFFFFFFFFFFFFF8;
          if ((v56 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload((v53 + v30 + 48) & ~v30, a2, v56, v55);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v54 = a2 & 0x7FFFFFFF;
              *(v53 + 40) = 0;
            }

            else
            {
              v54 = a2 - 1;
            }

            *(v53 + 32) = v54;
          }
        }

        break;
    }
  }

  else
  {
    if (v48)
    {
      v52 = 1;
    }

    else
    {
      v52 = a2 - v75;
    }

    if (v48)
    {
      bzero(a1, v48);
      *a1 = ~v75 + a2;
    }

    switch(v51)
    {
      case 1:
        *(a1 + v48) = v52;
        break;
      case 2:
        *(a1 + v48) = v52;
        break;
      case 3:
        goto LABEL_75;
      case 4:
        *(a1 + v48) = v52;
        break;
      default:
        return;
    }
  }
}

void sub_2169294B0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_216929540()
{
  OUTLINED_FUNCTION_12_30();
  v0 = type metadata accessor for _ShelfCollection.ContentView();
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_5_39();

  return sub_216926678(v1, v2);
}

void sub_2169295D0()
{
  OUTLINED_FUNCTION_23_21();
  v0 = type metadata accessor for _ShelfCollection.ContentView();
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_24_20();
  sub_216926720(v1, v2, v3);
}

void objectdestroy_65Tm()
{
  OUTLINED_FUNCTION_149();
  v1 = type metadata accessor for _ShelfCollection.ContentView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 64) & ~*(*(v1 - 8) + 80));

  OUTLINED_FUNCTION_31_23();
  (*(v3 + 8))(v2 + v4);

  v5 = *(v1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCCA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA38);
    if (!__swift_getEnumTagSinglePayload(v2 + v5, 1, v6))
    {
      OUTLINED_FUNCTION_50();
      (*(v7 + 8))(v2 + v5, v6);
    }
  }

  else
  {
  }

  v8 = v2 + *(v1 + 92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for ToolbarConfiguration(0);
    if (!OUTLINED_FUNCTION_9_1(v9))
    {
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v10 = type metadata accessor for ContentDescriptor();
          if (!OUTLINED_FUNCTION_9_1(v10))
          {

            v11 = *(v5 + 24);
            v12 = sub_217005EF4();
            if (!OUTLINED_FUNCTION_20_1(v8 + v11))
            {
              OUTLINED_FUNCTION_50();
              (*(v13 + 8))(v8 + v11, v12);
            }
          }

          v14 = type metadata accessor for ArtistPageToolbarContent(0);
          v15 = *(v14 + 20);
          sub_21700C384();
          OUTLINED_FUNCTION_9_0();
          (*(v16 + 8))(v8 + v15);
          v17 = *(v14 + 24);
          sub_21700DFD4();
          OUTLINED_FUNCTION_9_0();
          (*(v18 + 8))(v8 + v17);

          sub_2166B8588();

          v19 = type metadata accessor for ArtistPageToolbarContentProvider(0);
          goto LABEL_43;
        case 1u:
          v39 = sub_21700D7A4();
          if (!OUTLINED_FUNCTION_9_1(v39))
          {
            OUTLINED_FUNCTION_50();
            (*(v40 + 8))(v8, v5);
          }

          v41 = type metadata accessor for CuratorDetailHeaderComponentModel();
          __swift_destroy_boxed_opaque_existential_1Tm(v8 + v41[5]);
          OUTLINED_FUNCTION_7_7(v41[6]);

          v42 = v41[7];
          v64 = sub_217005EF4();
          if (!__swift_getEnumTagSinglePayload(v8 + v42, 1, v64))
          {
            OUTLINED_FUNCTION_50();
            (*(v43 + 8))(v8 + v42);
          }

          v44 = v8 + v41[8];
          v45 = type metadata accessor for Artwork();
          if (!OUTLINED_FUNCTION_20_1(v44))
          {
            sub_21700C4B4();
            OUTLINED_FUNCTION_9_0();
            (*(v46 + 8))(v44);
            v63 = *(v45 + 20);
            sub_21700C444();
            OUTLINED_FUNCTION_9_0();
            (*(v47 + 8))(v44 + v63);
          }

          v48 = v8 + v41[10];
          if (!OUTLINED_FUNCTION_20_1(v48))
          {
            sub_21700C4B4();
            OUTLINED_FUNCTION_9_0();
            (*(v49 + 8))(v48);
            v50 = *(v45 + 20);
            sub_21700C444();
            OUTLINED_FUNCTION_9_0();
            (*(v51 + 8))(v48 + v50);
          }

          v52 = v8 + v41[11];
          v53 = type metadata accessor for VideoArtwork();
          if (!__swift_getEnumTagSinglePayload(v52, 1, v53))
          {

            v54 = *(v53 + 20);
            sub_21700C444();
            OUTLINED_FUNCTION_9_0();
            (*(v55 + 8))(v52 + v54);
          }

          v56 = v8 + v41[12];
          v57 = type metadata accessor for ContentDescriptor();
          if (!OUTLINED_FUNCTION_20_1(v56))
          {

            v58 = *(v57 + 24);
            if (!__swift_getEnumTagSinglePayload(v56 + v58, 1, v64))
            {
              OUTLINED_FUNCTION_50();
              (*(v59 + 8))(v56 + v58);
            }
          }

          v19 = type metadata accessor for CuratorPageToolbarContentProvider(0);
          goto LABEL_43;
        case 2u:
          v22 = sub_21700C4B4();
          if (!OUTLINED_FUNCTION_9_1(v22))
          {
            OUTLINED_FUNCTION_50();
            (*(v23 + 8))(v8, v5);
          }

          v24 = type metadata accessor for SocialProfileDescriptor(0);
          OUTLINED_FUNCTION_7_7(v24[5]);

          OUTLINED_FUNCTION_7_7(v24[6]);

          OUTLINED_FUNCTION_7_7(v24[7]);

          v25 = v24[8];
          sub_217005EF4();
          OUTLINED_FUNCTION_9_0();
          (*(v26 + 8))(v8 + v25);
          v19 = type metadata accessor for SocialProfilePageToolbarContentProvider(0);
          goto LABEL_43;
        case 3u:
          v27 = type metadata accessor for ContentDescriptor();
          if (!OUTLINED_FUNCTION_9_1(v27))
          {

            v28 = *(v5 + 24);
            v29 = sub_217005EF4();
            if (!OUTLINED_FUNCTION_20_1(v8 + v28))
            {
              OUTLINED_FUNCTION_50();
              (*(v30 + 8))(v8 + v28, v29);
            }
          }

          v31 = type metadata accessor for GenericMusicItemToolbarContent(0);
          v32 = *(v31 + 20);
          sub_2170067A4();
          OUTLINED_FUNCTION_9_0();
          (*(v33 + 8))(v8 + v32);
          v34 = v8 + *(v31 + 24);
          type metadata accessor for MenuContext(0);
          if (!swift_getEnumCaseMultiPayload())
          {
            sub_21700C8E4();
            OUTLINED_FUNCTION_9_0();
            (*(v35 + 8))(v34);
            v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0) + 48);
            v37 = sub_21700C924();
            if (!__swift_getEnumTagSinglePayload(v34 + v36, 1, v37))
            {
              OUTLINED_FUNCTION_50();
              (*(v38 + 8))(v34 + v36, v37);
            }
          }

          v19 = type metadata accessor for GenericMusicItemToolbarContentProvider(0);
LABEL_43:
          v60 = v8 + *(v19 + 20);

          v61 = *(type metadata accessor for ToolbarProperties(0) + 24);
          sub_217009124();
          OUTLINED_FUNCTION_9_0();
          (*(v62 + 8))(v60 + v61);
          break;
        case 4u:
          if (*(v8 + 24))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v8);
          }

          if (*(v8 + 64))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v8 + 40);
          }

          v20 = *(type metadata accessor for ReplayPageToolbarProvider(0) + 36);
          sub_217009124();
          OUTLINED_FUNCTION_9_0();
          (*(v21 + 8))(v8 + v20);

          swift_unknownObjectRelease();
          break;
        default:
          break;
      }
    }
  }

  else
  {
  }

  sub_2166B8588();
  swift_deallocObject();
  OUTLINED_FUNCTION_148_0();
}

uint64_t sub_216929F78()
{
  v0 = type metadata accessor for _ShelfCollection.ContentView();
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_24_20();

  return sub_216926834(v1);
}

uint64_t sub_21692A060(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21692A0AC()
{
  sub_21692A98C();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

char *sub_21692A14C()
{
  OUTLINED_FUNCTION_2_1();
  swift_allocObject();
  return sub_21692A1A4();
}

char *sub_21692A1A4()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_1();
  v5 = *(v4 + 280);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD60);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  type metadata accessor for UserSocialProfileCoordinator();
  type metadata accessor for ObjectGraph();
  sub_21700E094();

  OUTLINED_FUNCTION_0_1();
  *(v0 + *(v7 + 272)) = v8;
  return sub_216B12724(v3, v2, v1 & 1);
}

uint64_t sub_21692A270(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB90);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17[-v8 - 8];
  v10 = v3[2];
  v3[2] = a1;
  v3[3] = a2;

  sub_21667E91C(v10);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = *(v6 + 264);
  *(v12 + 24) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD68);
  sub_2166D9530(&qword_280E2A2F0, &qword_27CABCD68);

  sub_21700D1D4();
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD60);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v13);
  v14 = *(*v3 + 280);
  swift_beginAccess();
  sub_21692AB48(v9, v3 + v14);
  return swift_endAccess();
}

void sub_21692A4B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB90);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v21 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD60);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - v6;
  OUTLINED_FUNCTION_0_1();
  v9 = *(v8 + 280);
  swift_beginAccess();
  sub_21692A9F0(v0 + v9, v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_21692AA60(v3);
    if (qword_27CAB5A68 != -1)
    {
      swift_once();
    }

    v10 = sub_217007CA4();
    __swift_project_value_buffer(v10, qword_27CABCCC8);
    v11 = sub_217007C84();
    v12 = sub_21700ED84();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136446466;
      *(v13 + 4) = sub_2166A85FC(0x2928706F7473, 0xE600000000000000, &v22);
      *(v13 + 12) = 2082;
      v15 = [objc_opt_self() callStackSymbols];
      v16 = sub_21700E824();

      v21[1] = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
      sub_2166D9530(&qword_280E29E38, &qword_27CAB74F8);
      v17 = sub_21700E454();
      v19 = v18;

      v20 = sub_2166A85FC(v17, v19, &v22);

      *(v13 + 14) = v20;
      _os_log_impl(&dword_216679000, v11, v12, "Unbalanced call to %{public}s\nStack:\n%{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEA1440](v14, -1, -1);
      MEMORY[0x21CEA1440](v13, -1, -1);
    }
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    OUTLINED_FUNCTION_0_1();

    sub_21700CC24();

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_21692A870()
{
  OUTLINED_FUNCTION_0_1();

  OUTLINED_FUNCTION_0_1();
  v3 = v0 + *(v2 + 280);

  return sub_21692AA60(v3);
}

char *sub_21692A8C0()
{
  v0 = sub_216B127F4();

  sub_21692AA60(&v0[*(*v0 + 280)]);
  return v0;
}

uint64_t sub_21692A920()
{
  v0 = sub_21692A8C0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_21692A98C()
{
  if (!qword_280E2A1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCD60);
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2A1C8);
    }
  }
}

uint64_t sub_21692A9F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21692AA60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21692AAC8()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CABCCC8);
  __swift_project_value_buffer(v0, qword_27CABCCC8);
  return sub_217007C94();
}

uint64_t sub_21692AB48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21692ABB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD98);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - v1, *MEMORY[0x277D85778]);
  return sub_21700EAD4();
}

uint64_t sub_21692ACA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD78);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_21692AE6C();
  v10 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v10);
  (*(v3 + 16))(v5, a1, v2);
  v11 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = v9;
  (*(v3 + 32))(&v12[v11], v5, v2);
  sub_21677BBA0();
}

uint64_t sub_21692AE6C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD80);
    v1 = swift_allocObject();
    swift_defaultActor_initialize();
    sub_217006224();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD78);
    sub_2166A8A94();
    *(v1 + 112) = sub_21700E384();
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_21692AF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_217006224();
  v5[4] = v7;
  v8 = *(v7 - 8);
  v5[5] = v8;
  v5[6] = *(v8 + 64);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21692B008, a4, 0);
}

uint64_t sub_21692B008()
{
  OUTLINED_FUNCTION_33();
  sub_216A50A8C(*(v0 + 24));

  return MEMORY[0x2822009F8](sub_21692B070, 0, 0);
}

uint64_t sub_21692B070()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[4];
  v5 = v0[2];
  (*(v3 + 16))(v1, v2, v4);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  (*(v3 + 32))(v7 + v6, v1, v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD78);
  sub_21700EA84();
  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_3();

  return v8();
}

uint64_t sub_21692B1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_217006224();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  (*(v6 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v12 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v6 + 32))(&v13[v12], &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_21677BBA0();
}

uint64_t sub_21692B374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_21692B394, a4, 0);
}

uint64_t sub_21692B394()
{
  OUTLINED_FUNCTION_33();
  sub_216A50F70();
  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_21692B3EC(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - v5;
  v7 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v9 = a1[3];
  v11 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v1;
  v12[5] = v7;
  v12[6] = v8;
  v12[7] = v10;
  v12[8] = v9;

  sub_21692B6BC(v7, v8);
  sub_21677BBA0();
}

uint64_t sub_21692B500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2822009F8](sub_21692B528, 0, 0);
}

uint64_t sub_21692B528()
{
  OUTLINED_FUNCTION_33();
  v1 = sub_21692AE6C();
  *(v0 + 56) = v1;

  return MEMORY[0x2822009F8](sub_21692B590, v1, 0);
}

uint64_t sub_21692B590()
{
  OUTLINED_FUNCTION_33();
  sub_21692B908(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_21692B5F8()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[8];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_20_0(v5);
  *v6 = v7;
  v6[1] = sub_2167C6858;
  v8 = OUTLINED_FUNCTION_1_12();

  return sub_21692B500(v8, v9, v10, v11, v1, v2, v3, v4);
}

uint64_t sub_21692B6BC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
    sub_21700DF14();

    return sub_21700DF14();
  }

  return result;
}

uint64_t sub_21692B704(int a1)
{
  v25 = a1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCDA0);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v23 = v22 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7840);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_37();
  v12 = OUTLINED_FUNCTION_2_50();
  v14 = v13 >> 6;
  v15 = (v5 + 8);
  v22[0] = v10 + 8;
  v22[1] = v10 + 16;
  v26 = v12;
  result = sub_21700DF14();
  v17 = 0;
  if (v1)
  {
    while (1)
    {
LABEL_5:
      OUTLINED_FUNCTION_3_60();
      (*(v10 + 16))(v2, v20 + *(v10 + 72) * v19, v8);
      v27 = v25;
      v21 = v23;
      sub_21700EA94();
      (*v15)(v21, v24);
      (*(v10 + 8))(v2, v8);
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v14)
    {
    }

    ++v17;
    if (*(v3 + 8 * v18))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21692B908(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v26 = a1;
  v27 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD70);
  v5 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v24 = v23 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD78);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - v9;
  swift_beginAccess();
  v11 = *(v4 + 112);
  v12 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v11 + 64);
  v16 = (v13 + 63) >> 6;
  v17 = (v5 + 8);
  v23[0] = v8 + 8;
  v23[1] = v8 + 16;
  v30 = v11;
  result = sub_21700DF14();
  for (i = 0; v15; result = (*(v8 + 8))(v10, v7))
  {
    v20 = i;
LABEL_9:
    v21 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    (*(v8 + 16))(v10, *(v30 + 56) + *(v8 + 72) * (v21 | (v20 << 6)), v7);
    v31 = v26;
    v32 = v27;
    v33 = v28;
    v34 = v29;
    sub_21692B6BC(v26, v27);
    v22 = v24;
    sub_21700EA94();
    (*v17)(v22, v25);
  }

  while (1)
  {
    v20 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v20 >= v16)
    {
    }

    v15 = *(v12 + 8 * v20);
    ++i;
    if (v15)
    {
      i = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21692BB9C(char a1)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD88);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD90);
  OUTLINED_FUNCTION_1();
  v11 = v10;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_37();
  v13 = OUTLINED_FUNCTION_2_50();
  v15 = v14 >> 6;
  v25 = v11 + 16;
  v24 = a1 & 1;
  v16 = (v6 + 8);
  v23 = v11 + 8;
  v28 = v13;
  result = sub_21700DF14();
  v18 = 0;
  if (v1)
  {
    while (1)
    {
LABEL_5:
      OUTLINED_FUNCTION_3_60();
      (*(v11 + 16))(v2, v21 + *(v11 + 72) * v20, v9);
      v29 = v24;
      v22 = v26;
      sub_21700EA94();
      (*v16)(v22, v27);
      (*(v11 + 8))(v2, v9);
    }
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v15)
    {
    }

    ++v18;
    if (*(v3 + 8 * v19))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21692BDB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD78);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_7_11();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v2[1] = sub_2167C6580;
  v4 = OUTLINED_FUNCTION_1_12();

  return sub_21692AF30(v4, v5, v6, v7, v8);
}

uint64_t sub_21692BE90(uint64_t a1)
{
  v3 = sub_217006224();
  OUTLINED_FUNCTION_36(v3);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return sub_21692B1B8(a1, v5, v6);
}

uint64_t sub_21692BF00()
{
  v0 = sub_217006224();
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_7_11();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v2[1] = sub_2167C6858;
  v4 = OUTLINED_FUNCTION_1_12();

  return sub_21692B374(v4, v5, v6, v7, v8);
}

uint64_t type metadata accessor for MusicPageMetricsModifier()
{
  result = qword_27CABCDC0;
  if (!qword_27CABCDC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21692C044()
{
  type metadata accessor for MusicMetrics.PageFields(319);
  if (v0 <= 0x3F)
  {
    sub_2166B44E8(319, &qword_27CAB7180, &qword_27CAB7188);
    if (v1 <= 0x3F)
    {
      sub_2166B44E8(319, &qword_27CAB71A0, &qword_27CAB71A8);
      if (v2 <= 0x3F)
      {
        sub_217007CA4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21692C144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for MusicPageMetricsModifier();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  KeyPath = swift_getKeyPath();
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCDD0) + 36));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCDD8) + 28);
  sub_21692C950(v2, v9 + v10);
  v11 = type metadata accessor for MusicMetrics.PageFields(0);
  __swift_storeEnumTagSinglePayload(v9 + v10, 0, 1, v11);
  *v9 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCDE0);
  OUTLINED_FUNCTION_34();
  (*(v12 + 16))(a2, a1);
  sub_21692C950(v2, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  sub_21692CC2C(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCDE8);
  v16 = (a2 + *(result + 36));
  *v16 = sub_21692C9AC;
  v16[1] = v14;
  v16[2] = 0;
  v16[3] = 0;
  return result;
}

uint64_t sub_21692C358()
{
  sub_21692CBD8();

  return sub_217009104();
}

uint64_t sub_21692C3C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7198);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_21692CB68(a1, &v6 - v3);
  return sub_21692C454(v4);
}

uint64_t sub_21692C454(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7198);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21692CB68(a1, &v5 - v3);
  sub_21692CBD8();
  sub_217009114();
  return sub_216697664(a1, &qword_27CAB7198);
}

void sub_21692C514(uint64_t a1)
{
  v2 = type metadata accessor for MusicMetrics.PageFields(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22[-1] - v6;
  v8 = sub_21700D574();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MusicPageMetricsModifier();
  sub_216C0C3A0(v22);
  v12 = v23;
  if (v23)
  {
    v13 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    (*(v13 + 8))(v12, v13);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v11, v7, v8);
      sub_21692C950(a1, v4);
      sub_216C0C3D8(v22);
      v14 = v23;
      if (v23)
      {
        v15 = v24;
        __swift_project_boxed_opaque_existential_1(v22, v23);
        v14 = (*(v15 + 8))(v14, v15);
        v17 = v16;
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
      }

      else
      {
        sub_216697664(v22, &qword_27CAB71A8);
        v17 = 0;
      }

      sub_216C947C0(v4, v11, v14, v17);

      sub_21692CB0C(v4);
      (*(v9 + 8))(v11, v8);
      return;
    }
  }

  else
  {
    sub_216697664(v22, &qword_27CAB7188);
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  }

  sub_216697664(v7, &unk_27CABFB50);
  v18 = sub_217007C84();
  v19 = sub_21700ED84();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_216679000, v18, v19, "No Metrics Pipeline found on the bootstrap, skipping Page metrics. Did you remember to call the Music Metrics Context modifier?", v20, 2u);
    MEMORY[0x21CEA1440](v20, -1, -1);
  }
}

uint64_t sub_21692C88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21692CC2C(a1, a2);
  v3 = type metadata accessor for MusicPageMetricsModifier();
  v4 = a2 + *(v3 + 20);
  *v4 = swift_getKeyPath();
  *(v4 + 40) = 0;
  v5 = a2 + *(v3 + 24);
  *v5 = swift_getKeyPath();
  *(v5 + 40) = 0;
  return sub_217007C94();
}

uint64_t sub_21692C950(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_110();
  v5(v4);
  OUTLINED_FUNCTION_34();
  (*(v6 + 16))(a2, v2);
  return a2;
}

void sub_21692C9AC()
{
  v1 = *(type metadata accessor for MusicPageMetricsModifier() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_21692C514(v2);
}

uint64_t sub_21692CA0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7198);
  __swift_allocate_value_buffer(v0, qword_27CABCDA8);
  v1 = __swift_project_value_buffer(v0, qword_27CABCDA8);
  v2 = type metadata accessor for MusicMetrics.PageFields(0);

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
}

uint64_t sub_21692CA88@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CAB5A70 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7198);
  v3 = __swift_project_value_buffer(v2, qword_27CABCDA8);

  return sub_21692CB68(v3, a1);
}

uint64_t sub_21692CB0C(uint64_t a1)
{
  v2 = type metadata accessor for MusicMetrics.PageFields(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21692CB68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7198);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21692CBD8()
{
  result = qword_27CABCDF0;
  if (!qword_27CABCDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCDF0);
  }

  return result;
}

uint64_t sub_21692CC2C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_110();
  v5(v4);
  OUTLINED_FUNCTION_34();
  (*(v6 + 32))(a2, v2);
  return a2;
}

unint64_t sub_21692CC98()
{
  result = qword_27CABCDF8;
  if (!qword_27CABCDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCDE8);
    sub_21692CD24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCDF8);
  }

  return result;
}

unint64_t sub_21692CD24()
{
  result = qword_27CABCE00;
  if (!qword_27CABCE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCDD0);
    sub_2166D9530(&qword_27CABCE08, &qword_27CABCDE0);
    sub_2166D9530(&qword_27CABCE10, &qword_27CABCDD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCE00);
  }

  return result;
}

uint64_t type metadata accessor for ShuffleAction()
{
  result = qword_280E438F0;
  if (!qword_280E438F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21692CE7C()
{
  v0 = sub_21700D284();
  if (v1 <= 0x3F)
  {
    sub_21692CF60();
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_216688154();
      v0 = v4;
      if (v5 <= 0x3F)
      {
        sub_2166D90EC();
        if (v7 > 0x3F)
        {
          return v6;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v0;
}

void sub_21692CF60()
{
  if (!qword_280E29FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB71D8);
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E29FA8);
    }
  }
}

uint64_t sub_21692CFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a2;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v48 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v55 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v53 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v49 = v15;
  MEMORY[0x28223BE20](v16);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v46 = v17;
  MEMORY[0x28223BE20](v18);
  v19 = type metadata accessor for ShuffleAction();
  *(a3 + *(v19 + 36)) = 1;
  v47 = v19;
  v20 = *(v19 + 40);
  v51 = a3;
  *(a3 + v20) = 0;
  v21 = a1;
  sub_21700CE04();
  v22 = v56;
  v54 = v7;
  v50 = *(v7 + 16);
  v50(v12, v56, v5);
  v23 = v52;
  sub_21700D224();
  if (v23)
  {
    (*(v54 + 8))(v22, v5);
    return (*(v53 + 8))(v21, v55);
  }

  else
  {
    v25 = *(v46 + 32);
    v52 = 0;
    v26 = v51;
    v25();
    v27 = v49;
    sub_21700CE04();
    v28 = v48;
    v45 = v5;
    v50(v48, v22, v5);
    sub_216AC609C();
    v29 = v47;
    *(v26 + *(v47 + 20)) = v30;
    sub_21700CE04();
    v31 = sub_21700CDB4();
    v33 = v32;
    v53 = *(v53 + 8);
    (v53)(v27, v55);
    v34 = (v26 + *(v29 + 24));
    *v34 = v31;
    v34[1] = v33;
    type metadata accessor for ContentDescriptor();
    sub_21700CE04();
    v35 = v45;
    v50(v28, v56, v45);
    sub_21692D50C(qword_280E40390, type metadata accessor for ContentDescriptor);
    v36 = v51;
    sub_21700D734();
    sub_21700CE04();
    v37 = sub_21700CDB4();
    v39 = v38;
    (*(v54 + 8))(v56, v35);
    v40 = v21;
    v41 = v55;
    v42 = v53;
    (v53)(v40, v55);
    result = v42(v27, v41);
    v43 = (v36 + *(v29 + 32));
    *v43 = v37;
    v43[1] = v39;
  }

  return result;
}

uint64_t sub_21692D4B4(uint64_t a1)
{
  result = sub_21692D50C(qword_280E43910, type metadata accessor for ShuffleAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21692D50C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PlacementID.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v23 = a2;
  v5 = sub_21700CDF4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  sub_21700CE04();
  v12 = sub_21700CDB4();
  v14 = v13;
  v15 = *(v6 + 8);
  v15(v11, v5);
  if (v14 || (sub_21700CE04(), v12 = sub_21700CDB4(), v14 = v16, v15(v8, v5), v14))
  {
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v17 + 8))(v23);
    result = (v15)(a1, v5);
    *a3 = v12;
    a3[1] = v14;
  }

  else
  {
    v19 = sub_21700E2E4();
    sub_2167B1EA4();
    swift_allocError();
    *v20 = 0x6E656D6563616C70;
    v20[1] = 0xEB00000000444974;
    v20[2] = &type metadata for PlacementID;
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D22530], v19);
    swift_willThrow();
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v21 + 8))(v23);
    return (v15)(a1, v5);
  }

  return result;
}

uint64_t PlacementID.rawValue.getter()
{
  v1 = *v0;
  sub_21700DF14();
  return v1;
}

uint64_t sub_21692DA90@<X0>(Swift::String *a1@<X0>, void *a2@<X8>)
{
  result = PlacementID.init(rawValue:)(*a1).rawValue._countAndFlagsBits;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_21692DAD0@<X0>(uint64_t *a1@<X8>)
{
  result = PlacementID.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *sub_21692DB64(_BYTE *result, int a2, int a3)
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

uint64_t sub_21692DC18(uint64_t a1, uint64_t a2)
{
  sub_21700CF34();
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(a2);
  sub_21700CDF4();
  OUTLINED_FUNCTION_9_0();
  return (*(v5 + 8))(a1);
}

void *sub_21692DCE8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE18);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &__src[-v4];
  *v5 = sub_2170093B4();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE20);
  sub_21692DE30(v1, &v5[*(v6 + 44)]);
  sub_21700B3B4();
  sub_217008BB4();
  sub_2167A4788();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE28);
  return memcpy((a1 + *(v7 + 36)), __src, 0x70uLL);
}

void *sub_21692DE30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v61 = sub_2170090F4();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  FriendsButtonView = type metadata accessor for SocialProfileFindFriendsButtonView();
  v6 = FriendsButtonView - 8;
  v7 = *(FriendsButtonView - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](FriendsButtonView);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE30);
  MEMORY[0x28223BE20](v10);
  v12 = (&v59 - v11);
  FriendsButtonComponentModel = type metadata accessor for SocialProfileFindFriendsButtonComponentModel();
  sub_21692E9E8(a1 + *(FriendsButtonComponentModel + 28), v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE38);
  v15 = v14[11];
  v16 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v12 + v15, 1, 1, v16);
  sub_21692EC18();
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  sub_21692EA58(v9, v18 + v17);
  v19 = v14[12];
  *(v12 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v20 = v12 + v14[13];
  *v20 = swift_getKeyPath();
  v20[40] = 0;
  v12[5] = sub_21692EABC;
  v12[6] = v18;
  v12[7] = 0;
  v12[8] = 0;
  KeyPath = swift_getKeyPath();
  v22 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE40) + 36);
  *v22 = KeyPath;
  v22[8] = 0;
  v23 = a1 + *(v6 + 28);
  v25 = *v23;
  v24 = *(v23 + 16);
  LOBYTE(v23) = *(v23 + 32);
  v64 = v24;
  v63 = v25;
  if ((v23 & 1) == 0)
  {
    v26 = v25;

    sub_21700ED94();
    v27 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_21680E444(v26, *(&v63 + 1), v64, *(&v64 + 1), 0);
    (*(v60 + 8))(v4, v61);
    v64 = __src[1];
    v63 = __src[0];
  }

  v28 = sub_217009C84();
  v29 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE48) + 36);
  *v29 = v28;
  *(v29 + 24) = v64;
  *(v29 + 8) = v63;
  v29[40] = 0;
  v30 = sub_217009C74();
  sub_217007F24();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE50) + 36);
  *v39 = v30;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  v40 = sub_217009C94();
  sub_217007F24();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE58) + 36);
  *v49 = v40;
  *(v49 + 1) = v42;
  *(v49 + 2) = v44;
  *(v49 + 3) = v46;
  *(v49 + 4) = v48;
  v49[40] = 0;
  v50 = sub_217009CA4();
  sub_217007F24();
  v51 = v12 + *(v10 + 36);
  *v51 = v50;
  *(v51 + 1) = v52;
  *(v51 + 2) = v53;
  *(v51 + 3) = v54;
  *(v51 + 4) = v55;
  v51[40] = 0;
  sub_21700B3B4();
  sub_217008BB4();
  v56 = v62;
  sub_2167A4788();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE60);
  return memcpy((v56 + *(v57 + 36)), __src, 0x70uLL);
}

uint64_t sub_21692E398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE68);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v31 - v6;
  v8 = (a1 + *(type metadata accessor for SocialProfileFindFriendsButtonComponentModel() + 24));
  v9 = *v8;
  v10 = v8[1];
  sub_21700DF14();
  v11 = sub_21700ACF4();
  KeyPath = swift_getKeyPath();
  v31[0] = v9;
  v31[1] = v10;
  v31[2] = 0;
  v31[3] = MEMORY[0x277D84F90];
  v31[4] = KeyPath;
  v31[5] = v11;
  sub_217009DE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7BD8);
  sub_2167D2750();
  sub_21700A304();

  LOBYTE(v9) = sub_217009C74();
  sub_217007F24();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C48) + 36)];
  *v21 = v9;
  *(v21 + 1) = v14;
  *(v21 + 2) = v16;
  *(v21 + 3) = v18;
  *(v21 + 4) = v20;
  v21[40] = 0;
  v22 = swift_getKeyPath();
  v23 = &v7[*(v5 + 44)];
  *v23 = v22;
  *(v23 + 1) = 0;
  v23[16] = 1;
  LOBYTE(v9) = sub_217009C84();
  sub_2167130B8();
  v24 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE70) + 36);
  *v24 = v9;
  *(v24 + 8) = 0u;
  *(v24 + 24) = 0u;
  *(v24 + 40) = 1;
  v25 = sub_21700B3B4();
  v27 = v26;
  v28 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE78) + 36);
  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE80);
  sub_2167FD26C();
  sub_21692EB60();
  sub_21700B324();
  sub_216713118(v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCEA0);
  v30 = (v28 + *(result + 36));
  *v30 = v25;
  v30[1] = v27;
  return result;
}

void *sub_21692E684@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8780);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &__src[-v4];
  v6 = *MEMORY[0x277CE0118];
  v7 = sub_217009294();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  *&v5[*(v3 + 60)] = sub_21700AC54();
  *&v5[*(v3 + 64)] = 256;
  sub_21700B3B4();
  sub_217008BB4();
  sub_2167A4788();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8760);
  return memcpy((a1 + *(v8 + 36)), __src, 0x70uLL);
}

void *sub_21692E800@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE98);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &__src[-v4];
  v6 = *(sub_217008B44() + 20);
  v7 = *MEMORY[0x277CE0118];
  v8 = sub_217009294();
  (*(*(v8 - 8) + 104))(&v5[v6], v7, v8);
  __asm { FMOV            V0.2D, #8.0 }

  *v5 = _Q0;
  *&v5[*(v3 + 60)] = sub_21700AC54();
  *&v5[*(v3 + 64)] = 256;
  sub_21700B3B4();
  sub_217008BB4();
  sub_2167A4788();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCE80);
  return memcpy((a1 + *(v14 + 36)), __src, 0x70uLL);
}

uint64_t type metadata accessor for SocialProfileFindFriendsButtonView()
{
  result = qword_280E2EA68;
  if (!qword_280E2EA68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21692E9E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21692EA58(uint64_t a1, uint64_t a2)
{
  FriendsButtonView = type metadata accessor for SocialProfileFindFriendsButtonView();
  (*(*(FriendsButtonView - 8) + 32))(a2, a1, FriendsButtonView);
  return a2;
}

uint64_t sub_21692EABC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SocialProfileFindFriendsButtonView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21692E398(v4, a1);
}

unint64_t sub_21692EB60()
{
  result = qword_27CABCE88;
  if (!qword_27CABCE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCE80);
    sub_2166D9530(&qword_27CABCE90, &qword_27CABCE98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCE88);
  }

  return result;
}

uint64_t sub_21692EC18()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

void sub_21692EC98()
{
  type metadata accessor for SocialProfileFindFriendsButtonComponentModel();
  if (v0 <= 0x3F)
  {
    sub_21692ED34();
    if (v1 <= 0x3F)
    {
      sub_2167D1C30();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21692ED34()
{
  if (!qword_280E2B468)
  {
    v0 = sub_2170080E4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2B468);
    }
  }
}

unint64_t sub_21692ED84()
{
  result = qword_27CABCEA8;
  if (!qword_27CABCEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCE28);
    sub_2166D9530(&qword_27CABCEB0, &qword_27CABCE18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABCEA8);
  }

  return result;
}

uint64_t sub_21692EE90()
{
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_47();
  sub_21692EECC(v1);
  return v0;
}

void *sub_21692EECC(uint64_t a1)
{
  type metadata accessor for AsyncQueue();
  v1[2] = 0;
  v1[3] = 0;
  swift_allocObject();
  v1[5] = sub_216CA9FD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CABCEB8);
  v1[6] = sub_21700E244();
  v1[4] = a1;

  sub_216CA9EA0(&unk_217029670, v1);

  return v1;
}

uint64_t sub_21692EF94(uint64_t a1)
{
  v1[2] = a1;
  sub_21700EA34();
  v1[3] = sub_21700EA24();
  v3 = sub_21700E9B4();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_21692F02C, v3, v2);
}

uint64_t sub_21692F02C()
{
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CABCEB8);
  sub_216930BA8();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_99_0(v1);

  return MEMORY[0x282180360](v2);
}

uint64_t sub_21692F0EC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v3 + 32);
    v8 = *(v3 + 40);
    v9 = sub_216930FBC;
  }

  else
  {
    v7 = *(v3 + 32);
    v8 = *(v3 + 40);
    v9 = sub_21692F1F8;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_21692F1F8()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_21692F250()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 40);
    swift_unknownObjectRetain();
    v0 = v3(ObjectType, v1);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRetain();
  }

  return v0;
}

uint64_t sub_21692F2E8(uint64_t a1, char a2)
{
  v5 = *v2;
  OUTLINED_FUNCTION_143();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = *(v5 + 80);
  *(v7 + 24) = *(v5 + 88);
  *(v7 + 32) = v6;
  *(v7 + 40) = a1;
  *(v7 + 48) = a2 & 1;

  sub_21700DF14();
  sub_216CA9EA0(&unk_217029660, v7);
}

uint64_t sub_21692F3EC(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 96) = a3;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  sub_21700EA34();
  *(v3 + 56) = sub_21700EA24();
  v5 = sub_21700E9B4();
  *(v3 + 64) = v5;
  *(v3 + 72) = v4;

  return MEMORY[0x2822009F8](sub_21692F488, v5, v4);
}

uint64_t sub_21692F488()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_241();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(v0 + 80) = *(Strong + 32);

    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_21692F594;

    return sub_216E582CC();
  }

  else
  {

    OUTLINED_FUNCTION_3();

    return v4();
  }
}

uint64_t sub_21692F594()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  *v3 = *v1;

  OUTLINED_FUNCTION_119_0();
  if (v0)
  {

    v4 = *(v2 + 64);
    v5 = *(v2 + 72);
    v6 = sub_216930FC0;
  }

  else
  {

    v4 = *(v2 + 64);
    v5 = *(v2 + 72);
    v6 = sub_21692F6C8;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_21692F6C8()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_21692F720(uint64_t a1, unint64_t a2, char a3)
{
  v7 = *v3;
  OUTLINED_FUNCTION_143();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = *(v7 + 80);
  *(v9 + 24) = *(v7 + 88);
  *(v9 + 32) = v8;
  *(v9 + 40) = a1;
  *(v9 + 48) = a2;
  *(v9 + 56) = a3 & 1;

  sub_21677A404(a1, a2);
  sub_216CA9EA0(&unk_217029650, v9);
}

uint64_t sub_21692F82C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 104) = a4;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 40) = a1;
  sub_21700EA34();
  *(v4 + 64) = sub_21700EA24();
  v6 = sub_21700E9B4();
  *(v4 + 72) = v6;
  *(v4 + 80) = v5;

  return MEMORY[0x2822009F8](sub_21692F8CC, v6, v5);
}

uint64_t sub_21692F8CC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_241();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(v0 + 88) = *(Strong + 32);

    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_21692F9D8;

    return sub_216E587F0();
  }

  else
  {

    OUTLINED_FUNCTION_3();

    return v4();
  }
}

uint64_t sub_21692F9D8()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  *v3 = *v1;

  OUTLINED_FUNCTION_119_0();
  if (v0)
  {

    v4 = *(v2 + 72);
    v5 = *(v2 + 80);
    v6 = sub_216930FC4;
  }

  else
  {

    v4 = *(v2 + 72);
    v5 = *(v2 + 80);
    v6 = sub_21692FB0C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_21692FB0C()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_21692FB64()
{
  OUTLINED_FUNCTION_33();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = *v0;
  v1[5] = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BE8);
  v1[6] = swift_task_alloc();
  v5 = *(v4 + 80);
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v1[9] = *(v6 + 64);
  v1[10] = swift_task_alloc();
  sub_21700EA34();
  v1[11] = sub_21700EA24();
  OUTLINED_FUNCTION_47();
  v8 = sub_21700E9B4();
  v1[12] = v8;
  v1[13] = v7;

  return MEMORY[0x2822009F8](sub_21692FCCC, v8, v7);
}

uint64_t sub_21692FCCC()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[3];
  OUTLINED_FUNCTION_143();
  v6 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(v1, v5, v2);
  v7 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 2) = v2;
  v9 = *(v4 + 88);
  v0[14] = v9;
  *(v8 + 3) = v9;
  *(v8 + 4) = v6;
  (*(v3 + 32))(&v8[v7], v1, v2);
  sub_216D07F2C();
  v11 = v10;
  v0[15] = v10;

  v12 = swift_task_alloc();
  v0[16] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6B78);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
  *v12 = v0;
  v12[1] = sub_21692FE94;
  v18 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 18, v11, v13, v14, v18, v15, v16, v17);
}