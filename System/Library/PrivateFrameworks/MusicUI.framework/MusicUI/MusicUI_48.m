uint64_t sub_216B6D6E4(uint64_t a1, char a2)
{
  v4 = sub_217007CA4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  if (a2)
  {
    return qword_21704A5C8[a1];
  }

  sub_217007C94();
  v12 = sub_217007C84();
  v13 = sub_21700ED84();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136315394;
    v16 = sub_21700F784();
    v18 = sub_2166A85FC(v16, v17, &v22);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3DE0);
    v19 = sub_21700E594();
    v21 = sub_2166A85FC(v19, v20, &v22);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_216679000, v12, v13, "Unrecognized value '%s' for type '%s'", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v15, -1, -1);
    MEMORY[0x21CEA1440](v14, -1, -1);
  }

  (*(v6 + 8))(v10, v4);
  return 0;
}

void (*sub_216B6D944@<X0>(void *a1@<X0>, void (**a2)(uint64_t, uint64_t)@<X8>))(uint64_t, uint64_t)
{
  result = sub_216B6D284(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_216B6D970(uint64_t a1)
{
  v2 = type metadata accessor for AttributedDateRange();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_216B6D9CC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA978]) init];
  result = [v0 setBoundaryStyle_];
  qword_27CAC3DA8 = v0;
  return result;
}

uint64_t sub_216B6DA1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ObjectGraph.init(name:dependencies:)()
{
  OUTLINED_FUNCTION_4_95();
  OUTLINED_FUNCTION_2_116();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_171();
  v2 = OUTLINED_FUNCTION_1_149();
  v3(v2);
  sub_21700D464();
  v4 = OUTLINED_FUNCTION_3_113();
  v5(v4);
  return v0;
}

uint64_t ObjectGraph.__deallocating_deinit()
{
  v0 = _s7MusicUI11ObjectGraphCfd_0();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t sub_216B6DB60()
{
  OUTLINED_FUNCTION_33();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v0[5] = v4;
  v0[6] = *(v4 - 8);
  v0[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v0[8] = v5;
  v0[9] = *(v5 - 8);
  v0[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216B6DC94, 0, 0);
}

uint64_t sub_216B6DC94()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  (*(v3 + 104))(v1, *MEMORY[0x277D21E18], v2);
  v0[11] = sub_21700D5E4();
  (*(v3 + 8))(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0);
  sub_216B50BCC();
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_216B6DDF8;
  v5 = v0[2];

  return MEMORY[0x282180360](v5);
}

uint64_t sub_216B6DDF8()
{
  OUTLINED_FUNCTION_33();
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_216B6DF9C;
  }

  else
  {
    v2 = sub_216B6DF24;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_216B6DF24()
{
  OUTLINED_FUNCTION_33();
  v1 = OUTLINED_FUNCTION_0_13();
  v2(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_216B6DF9C()
{
  OUTLINED_FUNCTION_33();
  v1 = OUTLINED_FUNCTION_0_13();
  v2(v1);

  v3 = *(v0 + 8);

  return v3();
}

_BYTE *storeEnumTagSinglePayload for UnifiedMessagesLaunchIntent(_BYTE *result, unsigned int a2, unsigned int a3)
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

id sub_216B6E0F0(void *a1, char a2)
{
  v4 = objc_opt_self();
  result = [v4 valueWithNewObjectInContext_];
  if (result)
  {
    v6 = result;
    sub_2166F1DCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2D00);
    v7 = sub_21700E594();
    v13 = MEMORY[0x277D837D0];
    v11 = v7;
    v12 = v8;
    v9 = a1;
    v10 = sub_2166F1E10(&v11, a1);
    sub_2166F1F64(v10);
    sub_2166F1F64([v4 valueWithBool:a2 & 1 inContext:{v9, v11, v12}]);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_216B6E22C(uint64_t a1)
{
  *(a1 + 8) = sub_216ABE8E8();
  result = sub_216B6E25C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_216B6E25C()
{
  result = qword_27CAC3DE8;
  if (!qword_27CAC3DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3DE8);
  }

  return result;
}

uint64_t sub_216B6E2C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = OUTLINED_FUNCTION_80();
  v3[13] = type metadata accessor for PresentSheetAction();
  v3[14] = OUTLINED_FUNCTION_80();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = OUTLINED_FUNCTION_80();
  v3[18] = type metadata accessor for MusicAppDestination(0);
  v3[19] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v3[20] = sub_21700EA24();
  v7 = sub_21700E9B4();
  v3[21] = v7;
  v3[22] = v6;

  return MEMORY[0x2822009F8](sub_216B6E46C, v7, v6);
}

uint64_t sub_216B6E46C()
{
  v1 = v0[19];
  v2 = v0[14];
  v3 = v0[13];
  v14 = v0[11];
  v15 = v0[10];
  v16 = v0[12];
  v4 = v0[8];
  *v1 = *v4;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ObjectGraph();
  sub_21700DF14();
  sub_21700E094();
  sub_2169152B0(v1, v2 + *(v3 + 20), type metadata accessor for MusicAppDestination);
  type metadata accessor for ModalActionModelDestinations.Destination();
  swift_storeEnumTagMultiPayload();
  v5 = *(type metadata accessor for OpenAddToPlaylistAction() + 20);
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v6 + 16))(v2, &v4[v5]);
  v0[5] = v3;
  v0[6] = sub_216B6E7C0(qword_280E3EA78, type metadata accessor for PresentSheetAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_2169152B0(v2, boxed_opaque_existential_1, type metadata accessor for PresentSheetAction);
  (*(v14 + 104))(v16, *MEMORY[0x277D21E18], v15);
  v8 = swift_task_alloc();
  v0[23] = v8;
  *v8 = v0;
  v8[1] = sub_216914E5C;
  v9 = v0[15];
  v10 = v0[12];
  v11 = v0[9];
  v12 = v0[7];

  return MEMORY[0x28217F468](v12, v0 + 2, v10, v11, v9);
}

uint64_t sub_216B6E69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2166DFAC0;

  return sub_216B6E2C0(a1, a2, a3);
}

unint64_t sub_216B6E74C(uint64_t a1)
{
  result = sub_2166DA6BC();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216B6E7C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ShowInLibraryAction()
{
  result = qword_280E3D0F8;
  if (!qword_280E3D0F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216B6E87C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v54 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = &v42 - v4;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v44 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v50 = v14;
  v51 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v43 = v15;
  MEMORY[0x28223BE20](v16);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v46 = v18;
  v47 = v17;
  MEMORY[0x28223BE20](v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(type metadata accessor for ShowInLibraryAction() + 20);
  v22 = type metadata accessor for ContentDescriptor();
  v53 = a2;
  v49 = v21;
  __swift_storeEnumTagSinglePayload(a2 + v21, 1, 1, v22);
  sub_21700CE04();
  v23 = *(v7 + 16);
  v52 = v5;
  v23(v12, v54, v5);
  v24 = v48;
  sub_21700D224();
  if (v24)
  {
    (*(v7 + 8))(v54, v52);
    v25 = OUTLINED_FUNCTION_1_108();
    v26(v25);
    return sub_2168F3EB8(v53 + v49);
  }

  else
  {
    v42 = v22;
    v48 = v7;
    v27 = v53;
    (*(v46 + 32))(v53, v20, v47);
    v28 = v43;
    sub_21700CE04();
    v29 = v44;
    v23(v44, v54, v52);
    v30 = v45;
    ContentDescriptor.init(deserializing:using:)(v28, v29, v31, v32, v33, v34, v35, v36, v42, v43, SWORD2(v43), SBYTE6(v43), SHIBYTE(v43));
    v38 = OUTLINED_FUNCTION_2_117();
    v39(v38);
    v40 = OUTLINED_FUNCTION_1_108();
    v41(v40);
    __swift_storeEnumTagSinglePayload(v30, 0, 1, v42);
    return sub_216A765E0(v30, v27 + v49);
  }
}

unint64_t sub_216B6EC98()
{
  result = qword_280E3A9B8[0];
  if (!qword_280E3A9B8[0])
  {
    type metadata accessor for EngagementEventAction();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E3A9B8);
  }

  return result;
}

uint64_t sub_216B6ECF0(uint64_t a1)
{
  v2 = type metadata accessor for EngagementEventAction();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  type metadata accessor for UnifiedMessages.Coordinator();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v9 = v29;
  if (qword_27CAB5DE8 != -1)
  {
    swift_once();
  }

  v10 = sub_217007CA4();
  __swift_project_value_buffer(v10, qword_27CAC3DF0);
  sub_216B6F248(a1, v8);
  v11 = sub_217007C84();
  v12 = sub_21700EDA4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = v9;
    v14 = v13;
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 136315138;
    v16 = sub_21700E364();
    v28 = v4;
    v17 = a1;
    v18 = v3;
    v20 = v19;
    sub_216B6F2AC(v8);
    v21 = sub_2166A85FC(v16, v20, &v29);
    v3 = v18;
    a1 = v17;
    v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

    *(v14 + 4) = v21;
    _os_log_impl(&dword_216679000, v11, v12, "💬 event: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x21CEA1440](v15, -1, -1);
    v22 = v14;
    v9 = v27;
    MEMORY[0x21CEA1440](v22, -1, -1);
  }

  else
  {

    sub_216B6F2AC(v8);
  }

  sub_216B6F248(a1, v5);
  v23 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v9;
  sub_216B6F308(v5, v24 + v23);
  return sub_216ECDBF4(&unk_21704A8D0, v24);
}

uint64_t sub_216B6EFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_216B6F008, 0, 0);
}

uint64_t sub_216B6F008()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[4];
  v0[5] = *(v1 + *(type metadata accessor for EngagementEventAction() + 20));
  sub_21700EA34();
  v0[6] = sub_21700EA24();
  v3 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216B6F0B0, v3, v2);
}

uint64_t sub_216B6F0B0()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 40);

  sub_216A04B10(v1);

  return MEMORY[0x2822009F8](sub_216B6F120, 0, 0);
}

uint64_t sub_216B6F120()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 16);
  v2 = *MEMORY[0x277D21CA8];
  v3 = sub_21700D2A4();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_216B6F1C8()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC3DF0);
  __swift_project_value_buffer(v0, qword_27CAC3DF0);
  return sub_217007C94();
}

uint64_t sub_216B6F248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EngagementEventAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B6F2AC(uint64_t a1)
{
  v2 = type metadata accessor for EngagementEventAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216B6F308(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EngagementEventAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B6F36C(uint64_t a1)
{
  v4 = *(type metadata accessor for EngagementEventAction() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2167CCCD0;

  return sub_216B6EFE4(a1, v6, v1 + v5);
}

uint64_t sub_216B6F478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a3;
  v63 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0);
  MEMORY[0x28223BE20](v4 - 8);
  v56 = &v47 - v5;
  v58 = sub_21700E2C4();
  OUTLINED_FUNCTION_1();
  v53 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v51 = v8;
  MEMORY[0x28223BE20](v9);
  v52 = &v47 - v10;
  v11 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v50 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v47 - v17;
  v61 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_0();
  v54 = v22;
  MEMORY[0x28223BE20](v23);
  v55 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v57 = v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a1;
  sub_21700CE04();
  v28 = v11;
  v29 = *(v13 + 16);
  v30 = v63;
  v29(v18);
  v31 = v60;
  sub_21700D224();
  if (v31)
  {
    (*(v13 + 8))(v30, v28);
    return (*(v20 + 8))(v62, v61);
  }

  else
  {
    v48 = v29;
    v49 = v13;
    v60 = v28;
    (*(v57 + 32))(v59, v27, v55);
    v33 = v54;
    v34 = v62;
    sub_21700CE04();
    v35 = v56;
    sub_21700CD74();
    v38 = *(v20 + 8);
    v36 = v20 + 8;
    v37 = v38;
    v39 = v61;
    v38(v33, v61);
    if (__swift_getEnumTagSinglePayload(v35, 1, v58) == 1)
    {
      (*(v49 + 8))(v63, v60);
      v37(v34, v39);
      sub_216A0BF90(v35);
      v40 = 0;
    }

    else
    {
      v47 = v37;
      v54 = v36;
      v42 = v52;
      v41 = v53;
      v43 = v58;
      (*(v53 + 32))(v52, v35, v58);
      (*(v41 + 16))(v51, v42, v43);
      v48(v50, v63, v60);
      sub_216A0BFF8();
      v40 = sub_21700E934();
      v44 = OUTLINED_FUNCTION_2_118();
      v45(v44);
      v47(v62, v61);
      (*(v41 + 8))(v42, v58);
    }

    v46 = v59;
    result = type metadata accessor for FindFriendsBatchFollowAction();
    *(v46 + *(result + 20)) = v40;
  }

  return result;
}

uint64_t sub_216B6FA48()
{

  return v0;
}

uint64_t sub_216B6FA78()
{
  sub_216B6FA48();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void sub_216B6FAAC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = type metadata accessor for ContentDescriptor();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  switch(*v5)
  {
    case 4:
      v29 = type metadata accessor for AlbumDetailPageIntent();
      *(a4 + 24) = v29;
      v30 = &unk_27CAC3E50;
      v31 = type metadata accessor for AlbumDetailPageIntent;
      goto LABEL_13;
    case 5:
      v32 = type metadata accessor for ArtistDetailPageIntent();
      OUTLINED_FUNCTION_0_173(v32);
      v26 = &unk_27CAC3E48;
      v27 = type metadata accessor for ArtistDetailPageIntent;
      goto LABEL_22;
    case 6:
      v28 = type metadata accessor for ArtistUploadedVideoDetailPageIntent();
      OUTLINED_FUNCTION_0_173(v28);
      v26 = &unk_27CAC3E20;
      v27 = type metadata accessor for ArtistUploadedVideoDetailPageIntent;
      goto LABEL_22;
    case 7:
    case 8:
    case 0xA:
    case 0xB:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x15:
      if (qword_27CAB5DF8 != -1)
      {
        swift_once();
      }

      v16 = sub_217007CA4();
      __swift_project_value_buffer(v16, qword_27CAC3E08);
      sub_21695BC04(v5, v15);
      v17 = sub_217007C84();
      v18 = sub_21700ED84();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v44 = v20;
        *v19 = 136446210;
        sub_21695BC04(v15, v13);
        v21 = sub_21700E594();
        v23 = v22;
        sub_2168F3F20(v15);
        v24 = sub_2166A85FC(v21, v23, &v44);

        *(v19 + 4) = v24;
        _os_log_impl(&dword_216679000, v17, v18, "Unable to create detail page intent for content descriptor: '%{public}s'", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        MEMORY[0x21CEA1440](v20, -1, -1);
        MEMORY[0x21CEA1440](v19, -1, -1);
      }

      else
      {

        sub_2168F3F20(v15);
      }

      *(a4 + 32) = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return;
    case 9:
      v25 = type metadata accessor for CuratorDetailPageIntent();
      OUTLINED_FUNCTION_0_173(v25);
      v26 = &unk_27CAB94B0;
      v27 = type metadata accessor for CuratorDetailPageIntent;
      goto LABEL_22;
    case 0xC:
      v35 = type metadata accessor for MovieDetailPageIntent();
      OUTLINED_FUNCTION_0_173(v35);
      v26 = &unk_27CAC3E38;
      v27 = type metadata accessor for MovieDetailPageIntent;
      goto LABEL_22;
    case 0xD:
      v38 = type metadata accessor for MusicVideoDetailPageIntent();
      OUTLINED_FUNCTION_0_173(v38);
      v26 = &unk_27CAC3E30;
      v27 = type metadata accessor for MusicVideoDetailPageIntent;
      goto LABEL_22;
    case 0xE:
      v29 = type metadata accessor for PlaylistDetailPageIntent();
      *(a4 + 24) = v29;
      v30 = &unk_27CAC3E40;
      v31 = type metadata accessor for PlaylistDetailPageIntent;
LABEL_13:
      *(a4 + 32) = sub_216B700D0(v30, v31);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
      sub_21695BC04(v5, boxed_opaque_existential_1);
      sub_2168CC268(a3, boxed_opaque_existential_1 + *(v29 + 24));
      v34 = (boxed_opaque_existential_1 + *(v29 + 20));
      *v34 = a1;
      v34[1] = a2;

      sub_21700DF14();
      return;
    case 0x13:
      v40 = type metadata accessor for SongAlbumDetailPageIntent();
      OUTLINED_FUNCTION_0_173(v40);
      v26 = &unk_27CAC3E28;
      v27 = type metadata accessor for SongAlbumDetailPageIntent;
      goto LABEL_22;
    case 0x14:
      v36 = type metadata accessor for TVEpisodeDetailPageIntent();
      OUTLINED_FUNCTION_0_173(v36);
      v26 = &unk_27CAB80D8;
      v27 = type metadata accessor for TVEpisodeDetailPageIntent;
      goto LABEL_22;
    case 0x16:
      v37 = type metadata accessor for TVShowDetailPageIntent();
      OUTLINED_FUNCTION_0_173(v37);
      v26 = &unk_27CAC1000;
      v27 = type metadata accessor for TVShowDetailPageIntent;
      goto LABEL_22;
    default:
      v39 = type metadata accessor for AppleCuratorDetailPageIntent();
      OUTLINED_FUNCTION_0_173(v39);
      v26 = &unk_27CAB94B8;
      v27 = type metadata accessor for AppleCuratorDetailPageIntent;
LABEL_22:
      *(a4 + 32) = sub_216B700D0(v26, v27);
      v41 = __swift_allocate_boxed_opaque_existential_1(a4);
      sub_21695BC04(v5, v41);
      v42 = v41 + *(a2 + 20);

      sub_2168CC268(a3, v42);
      return;
  }
}

uint64_t sub_216B70050()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC3E08);
  __swift_project_value_buffer(v0, qword_27CAC3E08);
  return sub_217007C94();
}

uint64_t sub_216B700D0(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_216B70144@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2170091A4();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3E58);
  sub_216B70260(a1, a2 + *(v4 + 44));
  v5 = sub_217009C84();
  v6 = sub_217008A34();
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3E60) + 36);
  *v7 = v6;
  *(v7 + 8) = v5;
  v13.origin.x = OUTLINED_FUNCTION_0_174();
  CGRectGetWidth(v13);
  v14.origin.x = OUTLINED_FUNCTION_0_174();
  CGRectGetHeight(v14);
  sub_21700B3B4();
  sub_2170083C4();
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3E68) + 36));
  *v8 = v10;
  v8[1] = v11;
  result = *&v12;
  v8[2] = v12;
  return result;
}

uint64_t sub_216B70260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3E70);
  MEMORY[0x28223BE20](v4);
  v6 = &v71 - v5;
  v7 = type metadata accessor for MarketingAlbumArtworkContentView.MarketingGridColumn(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v83 = &v71 - v11;
  MEMORY[0x28223BE20](v12);
  v82 = &v71 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v71 - v15;
  MEMORY[0x28223BE20](v17);
  v81 = &v71 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v71 - v20;
  MEMORY[0x28223BE20](v22);
  v84 = &v71 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v71 - v25;
  MEMORY[0x28223BE20](v27);
  v85 = &v71 - v28;
  swift_beginAccess();
  v29 = *(a1 + 48);
  if (v29 && *(v29 + 16) >= 0xFuLL)
  {
    v75 = v9;
    v73 = a2;
    v31 = sub_216A73E6C(1uLL, 5, v29);
    v79 = v32;
    v80 = v33;
    v35 = v34;
    v74 = v4;
    v76 = v6;
    if (v34)
    {
      sub_21700F7E4();
      swift_unknownObjectRetain_n();
      sub_21700DF14();
      v38 = swift_dynamicCastClass();
      if (!v38)
      {
        swift_unknownObjectRelease();
        v38 = MEMORY[0x277D84F90];
      }

      v39 = *(v38 + 16);

      if (__OFSUB__(v35 >> 1, v80))
      {
        goto LABEL_40;
      }

      if (v39 != (v35 >> 1) - v80)
      {
        goto LABEL_41;
      }

      v37 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v6 = v76;
      if (v37)
      {
        goto LABEL_14;
      }

      v37 = MEMORY[0x277D84F90];
      goto LABEL_13;
    }

    sub_21700DF14();
    while (1)
    {
      sub_216A73BEC(v31, v79, v80, v35);
      v37 = v36;
LABEL_13:
      swift_unknownObjectRelease();
LABEL_14:
      if (*(v29 + 16) < 6uLL)
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v40 = *(v7 + 24);
      v41 = sub_21700C4B4();
      v42 = *(v41 - 8);
      v43 = *(v42 + 16);
      v44 = v29 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
      v72 = *(v42 + 72);
      v77 = v44;
      v78 = v42 + 16;
      v79 = v43;
      v80 = v41;
      (v43)(&v26[v40], v44 + 5 * v72);
      v45 = sub_216A39FAC();
      *v26 = v37;
      v26[8] = 2;
      *&v26[*(v7 + 28)] = v45;
      sub_216B7197C(v26, v85);
      v31 = sub_216A73E6C(6uLL, 10, v29);
      v48 = v47;
      v50 = v49;
      if ((v49 & 1) == 0)
      {
        goto LABEL_16;
      }

      v71 = v46;
      sub_21700F7E4();
      swift_unknownObjectRetain_n();
      v52 = swift_dynamicCastClass();
      if (!v52)
      {
        swift_unknownObjectRelease();
        v52 = MEMORY[0x277D84F90];
      }

      v53 = *(v52 + 16);

      if (__OFSUB__(v50 >> 1, v48))
      {
        break;
      }

      if (v53 != (v50 >> 1) - v48)
      {
        goto LABEL_43;
      }

      v26 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v35 = v75;
      v6 = v76;
      if (v26)
      {
        goto LABEL_24;
      }

      v26 = MEMORY[0x277D84F90];
LABEL_23:
      swift_unknownObjectRelease();
LABEL_24:
      if (!*(v29 + 16))
      {
        goto LABEL_38;
      }

      v79(&v21[*(v7 + 24)], v77, v80);
      v54 = sub_216A39FAC();
      *v21 = v26;
      v21[8] = 1;
      *&v21[*(v7 + 28)] = v54;
      sub_216B7197C(v21, v84);
      v31 = sub_216A73E6C(0xBuLL, 15, v29);
      v56 = v55;
      v26 = v57;
      v59 = v58;
      if ((v58 & 1) == 0)
      {
        goto LABEL_26;
      }

      sub_21700F7E4();
      swift_unknownObjectRetain_n();
      v61 = swift_dynamicCastClass();
      if (!v61)
      {
        swift_unknownObjectRelease();
        v61 = MEMORY[0x277D84F90];
      }

      v62 = *(v61 + 16);

      if (__OFSUB__(v59 >> 1, v26))
      {
        __break(1u);
LABEL_45:
        swift_unknownObjectRelease();
        v35 = v75;
        v6 = v76;
LABEL_26:
        sub_216A73BEC(v31, v56, v26, v59);
        v21 = v60;
        v4 = v74;
        goto LABEL_33;
      }

      if (v62 != (v59 >> 1) - v26)
      {
        goto LABEL_45;
      }

      v21 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v4 = v74;
      v35 = v75;
      v6 = v76;
      if (v21)
      {
        goto LABEL_34;
      }

      v21 = MEMORY[0x277D84F90];
LABEL_33:
      swift_unknownObjectRelease();
LABEL_34:
      if (*(v29 + 16) >= 0xBuLL)
      {
        v79(&v16[*(v7 + 24)], v77 + 10 * v72, v80);

        v63 = sub_216A39FAC();
        *v16 = v21;
        v16[8] = 0;
        *&v16[*(v7 + 28)] = v63;
        v64 = v81;
        sub_216B7197C(v16, v81);
        v65 = v85;
        v66 = v82;
        sub_216B71E44(v85, v82, type metadata accessor for MarketingAlbumArtworkContentView.MarketingGridColumn);
        v67 = v83;
        v68 = v84;
        sub_216B71E44(v84, v83, type metadata accessor for MarketingAlbumArtworkContentView.MarketingGridColumn);
        sub_216B71E44(v64, v35, type metadata accessor for MarketingAlbumArtworkContentView.MarketingGridColumn);
        sub_216B71E44(v66, v6, type metadata accessor for MarketingAlbumArtworkContentView.MarketingGridColumn);
        v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3E78);
        sub_216B71E44(v67, &v6[*(v69 + 48)], type metadata accessor for MarketingAlbumArtworkContentView.MarketingGridColumn);
        sub_216B71E44(v35, &v6[*(v69 + 64)], type metadata accessor for MarketingAlbumArtworkContentView.MarketingGridColumn);
        sub_216B71F04(v64, type metadata accessor for MarketingAlbumArtworkContentView.MarketingGridColumn);
        sub_216B71F04(v68, type metadata accessor for MarketingAlbumArtworkContentView.MarketingGridColumn);
        sub_216B71F04(v65, type metadata accessor for MarketingAlbumArtworkContentView.MarketingGridColumn);
        sub_216B71F04(v35, type metadata accessor for MarketingAlbumArtworkContentView.MarketingGridColumn);
        sub_216B71F04(v67, type metadata accessor for MarketingAlbumArtworkContentView.MarketingGridColumn);
        sub_216B71F04(v66, type metadata accessor for MarketingAlbumArtworkContentView.MarketingGridColumn);
        a2 = v73;
        sub_216B719E0(v6, v73);
        v30 = 0;
        return __swift_storeEnumTagSinglePayload(a2, v30, 1, v4);
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      swift_unknownObjectRelease();
      v6 = v76;
    }

    __break(1u);
LABEL_43:
    swift_unknownObjectRelease();
    v6 = v76;
    v46 = v71;
LABEL_16:
    sub_216A73BEC(v31, v46, v48, v50);
    v26 = v51;
    v35 = v75;
    goto LABEL_23;
  }

  v30 = 1;
  return __swift_storeEnumTagSinglePayload(a2, v30, 1, v4);
}

double sub_216B70998@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_2170093B4();
  v12 = 0;
  sub_216B70A20(v1, v11);
  v4 = v11[0];
  result = *&v11[1];
  v6 = v11[2];
  v7 = v11[3];
  v8 = v11[4];
  v9 = v11[5];
  v10 = v12;
  *a1 = v3;
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = v10;
  *(a1 + 24) = v4;
  *(a1 + 32) = result;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  *(a1 + 64) = v9;
  return result;
}

uint64_t sub_216B70A20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = &unk_217013000;
  if (!*(a1 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1BC8);
    v15 = sub_21700C4B4();
    v16 = *(v15 - 8);
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_217013DA0;
    v18 = type metadata accessor for MarketingAlbumArtworkContentView.MarketingGridColumn(0);
    (*(v16 + 16))(v14 + v17, a1 + *(v18 + 24), v15);
    goto LABEL_11;
  }

  v6 = sub_216A73E6C(0, 2, *a1);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if ((v11 & 1) == 0)
  {
LABEL_3:
    sub_216A73BEC(v6, v8, v10, v12);
    v14 = v13;
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  sub_21700F7E4();
  swift_unknownObjectRetain_n();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = MEMORY[0x277D84F90];
  }

  v20 = *(v19 + 16);

  if (__OFSUB__(v12 >> 1, v10))
  {
    __break(1u);
    goto LABEL_45;
  }

  if (v20 != (v12 >> 1) - v10)
  {
LABEL_45:
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  v14 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v14)
  {
    swift_unknownObjectRelease();
    v14 = MEMORY[0x277D84F90];
  }

LABEL_11:
  v21 = type metadata accessor for MarketingAlbumArtworkContentView.MarketingGridColumn(0);
  v22 = *(a1 + *(v21 + 28));
  if (v4 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1BC8);
    v23 = sub_21700C4B4();
    v24 = *(v23 - 8);
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_217013DA0;
    (*(v24 + 16))(v26 + v25, a1 + *(v21 + 24), v23);
    goto LABEL_33;
  }

  v27 = *a1;
  if (!v4)
  {
    v35 = sub_216A73E6C(0, 2, v27);
    v37 = v36;
    v39 = v38;
    v41 = v40;
    if (v40)
    {
      sub_21700F7E4();
      swift_unknownObjectRetain_n();
      v51 = swift_dynamicCastClass();
      if (!v51)
      {
        swift_unknownObjectRelease();
        v51 = MEMORY[0x277D84F90];
      }

      v52 = *(v51 + 16);

      if (__OFSUB__(v41 >> 1, v39))
      {
        __break(1u);
      }

      else if (v52 == (v41 >> 1) - v39)
      {
        v26 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (!v26)
        {
          swift_unknownObjectRelease();
          v26 = MEMORY[0x277D84F90];
        }

        goto LABEL_33;
      }

      swift_unknownObjectRelease();
    }

    sub_216A73BEC(v35, v37, v39, v41);
    v26 = v42;
    swift_unknownObjectRelease();
    goto LABEL_33;
  }

  v29 = sub_216A73E6C(2uLL, 4, v27);
  v31 = v30;
  v33 = v32;
  if ((v32 & 1) == 0)
  {
    goto LABEL_15;
  }

  v63 = v28;
  sub_21700F7E4();
  swift_unknownObjectRetain_n();
  v43 = swift_dynamicCastClass();
  if (!v43)
  {
    swift_unknownObjectRelease();
    v43 = MEMORY[0x277D84F90];
  }

  v44 = *(v43 + 16);

  if (__OFSUB__(v33 >> 1, v31))
  {
    __break(1u);
    goto LABEL_47;
  }

  if (v44 != (v33 >> 1) - v31)
  {
LABEL_47:
    swift_unknownObjectRelease();
    v5 = &unk_217013000;
    v28 = v63;
LABEL_15:
    sub_216A73BEC(v29, v28, v31, v33);
    v26 = v34;
    goto LABEL_24;
  }

  v26 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v5 = &unk_217013000;
  if (v26)
  {
    goto LABEL_25;
  }

  v26 = MEMORY[0x277D84F90];
LABEL_24:
  swift_unknownObjectRelease();
LABEL_25:
  if (v4 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1BC8);
    v45 = sub_21700C4B4();
    v46 = *(v45 - 8);
    v47 = v5;
    v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = v47[218];
    result = (*(v46 + 16))(v49 + v48, a1 + *(v21 + 24), v45);
    goto LABEL_41;
  }

LABEL_33:
  v53 = sub_216A73E6C(2uLL, 4, *a1);
  v55 = v54;
  v57 = v56;
  v59 = v58;
  if ((v58 & 1) == 0)
  {
LABEL_34:
    sub_216A73BEC(v53, v55, v57, v59);
    v49 = v60;
    result = swift_unknownObjectRelease();
    goto LABEL_41;
  }

  sub_21700F7E4();
  swift_unknownObjectRetain_n();
  v61 = swift_dynamicCastClass();
  if (!v61)
  {
    swift_unknownObjectRelease();
    v61 = MEMORY[0x277D84F90];
  }

  v62 = *(v61 + 16);

  if (__OFSUB__(v59 >> 1, v57))
  {
    __break(1u);
    goto LABEL_43;
  }

  if (v62 != (v59 >> 1) - v57)
  {
LABEL_43:
    swift_unknownObjectRelease();
    goto LABEL_34;
  }

  v49 = swift_dynamicCastClass();
  result = swift_unknownObjectRelease();
  if (!v49)
  {
    result = swift_unknownObjectRelease();
    v49 = MEMORY[0x277D84F90];
  }

LABEL_41:
  *a2 = v14;
  a2[1] = v22;
  a2[2] = v26;
  a2[3] = v22;
  a2[4] = v49;
  a2[5] = v22;
  return result;
}

void sub_216B71028(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (*(a1 + 16) <= 1uLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x4028000000000000;
  }

  *a2 = sub_2170091A4();
  *(a2 + 8) = v6;
  *(a2 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3ED0);
  sub_216B710A4(a1, a2 + *(v7 + 44), a3);
}

void sub_216B710A4(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3ED8);
  MEMORY[0x28223BE20](v33);
  v7 = v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3EE0);
  MEMORY[0x28223BE20](v8);
  v10 = v32 - v9;
  v11 = type metadata accessor for MarketingAlbumArtworkContentView.ArtworkView(0);
  MEMORY[0x28223BE20](v11);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v32 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v32 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = v32 - v21;
  v23 = *(a1 + 16);
  if (v23 >= 2)
  {
    v24 = sub_21700C4B4();
    v32[2] = a2;
    v25 = v24;
    v26 = *(v24 - 8);
    v32[0] = v7;
    v27 = *(v26 + 16);
    v32[1] = v8;
    v28 = v26 + 16;
    v29 = a1 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v27(v22, v29, v24);
    *&v22[*(v11 + 20)] = a3;
    v27(v19, v29 + *(v28 + 56), v25);
    *&v19[*(v11 + 20)] = a3;
    sub_216B71E44(v22, v16, type metadata accessor for MarketingAlbumArtworkContentView.ArtworkView);
    sub_216B71E44(v19, v13, type metadata accessor for MarketingAlbumArtworkContentView.ArtworkView);
    sub_216B71E44(v16, v10, type metadata accessor for MarketingAlbumArtworkContentView.ArtworkView);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3EF8);
    sub_216B71E44(v13, &v10[*(v30 + 48)], type metadata accessor for MarketingAlbumArtworkContentView.ArtworkView);
    sub_216B71F04(v13, type metadata accessor for MarketingAlbumArtworkContentView.ArtworkView);
    sub_216B71F04(v16, type metadata accessor for MarketingAlbumArtworkContentView.ArtworkView);
    sub_216B71F64(v10, v32[0]);
    swift_storeEnumTagMultiPayload();
    sub_2166D9530(&qword_27CAC3EE8, &qword_27CAC3EE0);
    sub_216B71EAC();
    sub_217009554();
    sub_216B71FD4(v10);
    sub_216B71F04(v19, type metadata accessor for MarketingAlbumArtworkContentView.ArtworkView);
LABEL_5:
    sub_216B71F04(v22, type metadata accessor for MarketingAlbumArtworkContentView.ArtworkView);
    return;
  }

  if (v23 == 1)
  {
    v31 = sub_21700C4B4();
    (*(*(v31 - 8) + 16))(v22, a1 + ((*(*(v31 - 8) + 80) + 32) & ~*(*(v31 - 8) + 80)), v31);
    *&v22[*(v11 + 20)] = a3 + a3 + 12.0;
    sub_216B71E44(v22, v7, type metadata accessor for MarketingAlbumArtworkContentView.ArtworkView);
    swift_storeEnumTagMultiPayload();
    sub_2166D9530(&qword_27CAC3EE8, &qword_27CAC3EE0);
    sub_216B71EAC();
    sub_217009554();
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_216B7151C@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v37 = sub_21700C444();
  v2 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21700C4B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_217007474();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v36 - v15;
  (*(v6 + 16))(v8, v1, v5, v14);
  type metadata accessor for MarketingAlbumArtworkContentView.ArtworkView(0);
  v17 = v36;
  sub_217007484();
  sub_21700C404();
  sub_2170073E4();
  (*(v2 + 8))(v4, v37);
  v18 = *(v10 + 8);
  v18(v12, v9);
  *(swift_allocObject() + 16) = xmmword_217016ED0;
  sub_2167C505C();
  sub_2170073F4();

  v18(v16, v9);
  v19 = v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3770) + 36);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7440);
  v21 = (v19 + *(v20 + 36));
  v22 = *(sub_217008B44() + 20);
  v23 = *MEMORY[0x277CE0118];
  v24 = sub_217009294();
  (*(*(v24 - 8) + 104))(&v21[v22], v23, v24);
  __asm { FMOV            V0.2D, #7.0 }

  *v21 = _Q0;
  if (qword_280E2C2C8 != -1)
  {
    swift_once();
  }

  v30 = qword_280E73AA0;
  v31 = byte_280E73AA8;
  v32 = qword_280E73AB0;
  v33 = v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8930) + 36);
  sub_216B71E44(v21, v33, MEMORY[0x277CDFC08]);
  *(v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438) + 36)) = 256;
  *v19 = v30;
  *(v19 + 8) = v31;
  *(v19 + 16) = v32;
  v34 = v19 + *(v20 + 40);
  *v34 = swift_getKeyPath();
  *(v34 + 8) = 0;
}

uint64_t sub_216B7197C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketingAlbumArtworkContentView.MarketingGridColumn(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B719E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3E70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_216B71A78()
{
  sub_216B71B0C();
  if (v0 <= 0x3F)
  {
    sub_21700C4B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216B71B0C()
{
  if (!qword_27CAC3E90)
  {
    sub_21700C4B4();
    v0 = sub_21700E984();
    if (!v1)
    {
      atomic_store(v0, &qword_27CAC3E90);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for MarketingAlbumArtworkContentView.LargeArtworkPosition(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_216B71C40()
{
  result = qword_27CAC3E98;
  if (!qword_27CAC3E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3E68);
    sub_216B71CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3E98);
  }

  return result;
}

unint64_t sub_216B71CCC()
{
  result = qword_27CAC3EA0;
  if (!qword_27CAC3EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3E60);
    sub_2166D9530(&qword_27CAC3EA8, &qword_27CAC3EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3EA0);
  }

  return result;
}

unint64_t sub_216B71D88()
{
  result = qword_27CAC3EB8;
  if (!qword_27CAC3EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3EB8);
  }

  return result;
}

uint64_t sub_216B71E44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_216B71EAC()
{
  result = qword_27CAC3EF0;
  if (!qword_27CAC3EF0)
  {
    type metadata accessor for MarketingAlbumArtworkContentView.ArtworkView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3EF0);
  }

  return result;
}

uint64_t sub_216B71F04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_216B71F64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3EE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B71FD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3EE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216B72064()
{
  result = sub_21700C4B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_216B720F4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_20;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_20:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_20;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    switch(v4)
    {
      case 2:
        LODWORD(v4) = *a1;
        break;
      case 3:
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v4) = *a1;
        break;
      default:
        LODWORD(v4) = *a1;
        break;
    }
  }

  return (v4 | v9) + 255;
}

void sub_216B7220C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_35:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_24;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_23;
      case 3:
        goto LABEL_35;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_24;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_216B723C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = sub_21700D284();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  if (!a2)
  {
    return 0;
  }

  v11 = v5 + v10 + 1;
  if (a2 <= v9)
  {
    goto LABEL_25;
  }

  v12 = (v11 & ~v10) + *(*(v6 - 8) + 64);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((a2 - v9 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }

    if (v16 < 2)
    {
LABEL_25:
      if (v8 > 0xFE)
      {

        return __swift_getEnumTagSinglePayload((a1 + v11) & ~v10, v8, v6);
      }

      else
      {
        v20 = *(a1 + v5);
        if (v20 >= 2)
        {
          return (v20 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_25;
  }

LABEL_15:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 <= 3)
    {
      v18 = v12;
    }

    else
    {
      v18 = 4;
    }

    switch(v18)
    {
      case 2:
        v19 = *a1;
        break;
      case 3:
        v19 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v19 = *a1;
        break;
      default:
        v19 = *a1;
        break;
    }
  }

  else
  {
    v19 = 0;
  }

  return v9 + (v19 | v17) + 1;
}

void sub_216B725AC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = sub_21700D284();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = v7 + 1;
  v13 = *(v9 + 80);
  v14 = v7 + 1 + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  if (a3 <= v11)
  {
    v17 = 0;
  }

  else if (v15 <= 3)
  {
    v20 = ((a3 - v11 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v11 >= a2)
  {
    switch(v17)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_55:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v10 > 0xFE)
          {

            __swift_storeEnumTagSinglePayload(&a1[v14] & ~v13, a2, v10, v8);
          }

          else if (a2 > 0xFE)
          {
            if (v12 <= 3)
            {
              v23 = ~(-1 << (8 * v12));
            }

            else
            {
              v23 = -1;
            }

            if (v7 != -1)
            {
              v24 = v23 & (a2 - 255);
              if (v12 <= 3)
              {
                v25 = v7 + 1;
              }

              else
              {
                v25 = 4;
              }

              bzero(a1, v12);
              switch(v25)
              {
                case 2:
                  *a1 = v24;
                  break;
                case 3:
                  *a1 = v24;
                  a1[2] = BYTE2(v24);
                  break;
                case 4:
                  *a1 = v24;
                  break;
                default:
                  *a1 = v24;
                  break;
              }
            }
          }

          else
          {
            a1[v7] = -a2;
          }
        }

        break;
    }
  }

  else
  {
    v18 = ~v11 + a2;
    if (v15 < 4)
    {
      v19 = (v18 >> v16) + 1;
      if (v15)
      {
        v22 = v18 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v22;
          a1[2] = BYTE2(v22);
        }

        else if (v15 == 2)
        {
          *a1 = v22;
        }

        else
        {
          *a1 = v18;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v18;
      v19 = 1;
    }

    switch(v17)
    {
      case 1:
        a1[v15] = v19;
        break;
      case 2:
        *&a1[v15] = v19;
        break;
      case 3:
        goto LABEL_55;
      case 4:
        *&a1[v15] = v19;
        break;
      default:
        return;
    }
  }
}

uint64_t type metadata accessor for PlayNextAction()
{
  result = qword_280E430C0;
  if (!qword_280E430C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216B72910()
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

uint64_t sub_216B729F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  Action = type metadata accessor for PlayNextAction();
  *(a3 + *(Action + 32)) = 0x80;
  v47 = Action;
  v20 = *(Action + 40);
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
    sub_216B72F38(qword_280E40390, type metadata accessor for ContentDescriptor);
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
    v43 = (v36 + *(v29 + 36));
    *v43 = v37;
    v43[1] = v39;
  }

  return result;
}

uint64_t sub_216B72EE0(uint64_t a1)
{
  result = sub_216B72F38(qword_280E430E0, type metadata accessor for PlayNextAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216B72F38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216B72F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v4;
  return v3(v7);
}

uint64_t sub_216B72FC8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a6 + 16);
  v7 = *(a4 + 32);
  v8 = *(a4 + 16);
  v10[0] = *a4;
  v10[1] = v8;
  v11 = v7;
  return v6(a1, a2, a3 & 1, v10);
}

uint64_t sub_216B73010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  v5 = *(a2 + 32);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  v9 = v5;
  return v4(a1, v8);
}

uint64_t sub_216B73054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v4;
  return v3(v7);
}

uint64_t sub_216B73098(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v55 = a4;
  v53 = a3;
  v52 = type metadata accessor for PersistentPageSectionManager.ShelfMetadata();
  v48 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v50 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC15C0);
  MEMORY[0x28223BE20](v7 - 8);
  v49 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v51 = &v47 - v10;
  v11 = a1 + 64;
  v12 = 1 << *(a1 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(a1 + 64);
  v15 = (v12 + 63) >> 6;
  v60 = a2 + 56;
  result = sub_21700DF14();
  v17 = 0;
  v54 = a1;
  while (v14)
  {
    v18 = v17;
LABEL_10:
    v19 = *(a1 + 48) + 40 * (__clz(__rbit64(v14)) | (v18 << 6));
    v21 = *v19;
    v20 = *(v19 + 16);
    v59 = *(v19 + 32);
    v58[0] = v21;
    v58[1] = v20;
    v22 = v21;
    if (v59)
    {
      sub_21700DF14();
    }

    else
    {
      sub_2168387D4(v58, v57);
    }

    v14 &= v14 - 1;
    if (*(a2 + 16))
    {
      sub_21700F8F4();
      sub_2168387D4(v58, v56);
      sub_21700E614();
      v23 = sub_21700F944();
      v24 = ~(-1 << *(a2 + 32));
      do
      {
        v25 = v23 & v24;
        if (((*(v60 + (((v23 & v24) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v23 & v24)) & 1) == 0)
        {

          goto LABEL_32;
        }

        v26 = (*(a2 + 48) + 16 * v25);
        if (*v26 == v22 && v26[1] == *(&v22 + 1))
        {
          break;
        }

        v28 = sub_21700F7D4();
        v23 = v25 + 1;
      }

      while ((v28 & 1) == 0);

      v29 = v55;
      swift_beginAccess();
      v30 = *(v29 + 16);
      if (*(v30 + 16))
      {
        sub_2168387D4(v58, v57);
        v31 = sub_216E68214();
        v32 = v51;
        if (v33)
        {
          sub_216B751C8(*(v30 + 56) + *(v48 + 72) * v31, v51);
          v34 = v32;
          v35 = 0;
        }

        else
        {
          v34 = v51;
          v35 = 1;
        }

        v36 = v52;
        __swift_storeEnumTagSinglePayload(v34, v35, 1, v52);
      }

      else
      {
        v32 = v51;
        v36 = v52;
        __swift_storeEnumTagSinglePayload(v51, 1, 1, v52);
        sub_2168387D4(v58, v57);
      }

      swift_endAccess();
      if (__swift_getEnumTagSinglePayload(v32, 1, v36) == 1)
      {
        sub_216697664(v32, &qword_27CAC15C0);
        v37 = v49;
        sub_216A51910(v58, v38, v39, v40, v41, v42, v43, v44, v47, v48);
        sub_216A8DB24(v58);
        sub_216697664(v37, &qword_27CAC15C0);
      }

      else
      {
        v45 = v50;
        sub_216B752B4(v32, v50, type metadata accessor for PersistentPageSectionManager.ShelfMetadata);
        v46 = v53;
        swift_isUniquelyReferenced_nonNull_native();
        v57[0] = *v46;
        sub_21693A140(v45, v58);
        sub_216A8DB24(v58);
        *v46 = v57[0];
      }

LABEL_32:
      result = sub_216A8DB24(v58);
      v17 = v18;
      a1 = v54;
    }

    else
    {

      v17 = v18;
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
    }

    v14 = *(v11 + 8 * v18);
    ++v17;
    if (v14)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_216B7354C(char a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    _s7SectionVMa(0);
    v4 = sub_21700E384();
  }

  v5 = qword_280E32070;
  sub_21700DF14();
  if (v5 != -1)
  {
LABEL_23:
    swift_once();
  }

  v6 = sub_217007CA4();
  __swift_project_value_buffer(v6, qword_280E32078);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_21700DF14();
  v7 = sub_217007C84();
  v8 = sub_21700EDA4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v9 = 136446466;
    _s7SectionVMa(0);
    v11 = sub_21700E394();
    v13 = sub_2166A85FC(v11, v12, &v25);

    *(v9 + 4) = v13;
    *(v9 + 12) = 1026;

    *(v9 + 14) = a1 & 1;

    _os_log_impl(&dword_216679000, v7, v8, "Page updated: updatedSectionIDs=%{public}s, isPaginationUpdate=%{BOOL,public}d", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x21CEA1440](v10, -1, -1);
    MEMORY[0x21CEA1440](v9, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v14 = 1 << *(v4 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v4 + 64);
  v17 = (v14 + 63) >> 6;
  sub_21700DF14();
  v18 = 0;
  while (v16)
  {
    v19 = v16;
LABEL_17:
    v16 = (v19 - 1) & v19;
    if ((a1 & 1) == 0)
    {
      v21 = (*(v4 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v19)))));
      v23 = *v21;
      v22 = v21[1];
      sub_21700DF14();
      sub_216B73C18(v23, v22);
    }
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v20 >= v17)
    {
      break;
    }

    v19 = *(v4 + 64 + 8 * v20);
    ++v18;
    if (v19)
    {
      v18 = v20;
      goto LABEL_17;
    }
  }

  sub_216B73F7C();
}

uint64_t (*sub_216B73868(void *a1, uint64_t a2))()
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[4] = sub_216B74764(v4, a2);
  return sub_216B75318;
}

uint64_t (*sub_216B738CC(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_216B747F4(v6, a2, a3);
  return sub_216B73940;
}

void sub_216B73944(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_216B73990(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if ((a1[4] & 1) == 0)
  {
    if ((a2[4] & 1) == 0)
    {
      if (v4 != v6 || v5 != v7)
      {
        goto LABEL_19;
      }

      return 1;
    }

    return 0;
  }

  if ((a2[4] & 1) == 0)
  {
    return 0;
  }

  v8 = a1[2];
  v9 = a1[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = v4 == v6 && v5 == v7;
  if (!v12 && (sub_21700F7D4() & 1) == 0)
  {
    return 0;
  }

  if (v8 == v10 && v9 == v11)
  {
    return 1;
  }

LABEL_19:

  return sub_21700F7D4();
}

uint64_t sub_216B73A5C()
{
  if (*(v0 + 32))
  {
    MEMORY[0x21CEA0720](1);
    sub_21700E614();
  }

  else
  {
    MEMORY[0x21CEA0720](0);
  }

  return sub_21700E614();
}

uint64_t sub_216B73AF0()
{
  sub_21700F8F4();
  if (*(v0 + 32))
  {
    v1 = MEMORY[0x21CEA0720](1);
    OUTLINED_FUNCTION_4_96(v1, v2, v3, v4, v5, v6, v7, v8, v18, v19);
    sub_21700E614();
  }

  else
  {
    v9 = MEMORY[0x21CEA0720](0);
    OUTLINED_FUNCTION_4_96(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19);
  }

  sub_21700E614();
  return sub_21700F944();
}

uint64_t sub_216B73B88()
{
  v1 = *(v0 + 32);
  sub_21700F8F4();
  if (v1)
  {
    v2 = MEMORY[0x21CEA0720](1);
    OUTLINED_FUNCTION_4_96(v2, v3, v4, v5, v6, v7, v8, v9, v19, v20);
    sub_21700E614();
  }

  else
  {
    v10 = MEMORY[0x21CEA0720](0);
    OUTLINED_FUNCTION_4_96(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20);
  }

  sub_21700E614();
  return sub_21700F944();
}

uint64_t sub_216B73C18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v41 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC15C0);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = &v37 - v6;
  swift_beginAccess();
  v7 = *(v2 + 16);
  v10 = *(v7 + 64);
  v9 = v7 + 64;
  v8 = v10;
  v11 = 1 << *(*(v2 + 16) + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v40 = *(v2 + 16);
  result = swift_bridgeObjectRetain_n();
  v16 = 0;
  v38 = a2;
  if (v13)
  {
LABEL_8:
    while (1)
    {
      v18 = *(v40 + 48) + 40 * (__clz(__rbit64(v13)) | (v16 << 6));
      v20 = *v18;
      v19 = *(v18 + 16);
      v45 = *(v18 + 32);
      v44[0] = v20;
      v44[1] = v19;
      v21 = *(&v20 + 1);
      v22 = v20;
      sub_21700DF14();
      if (v22 == v41 && v21 == a2)
      {
        break;
      }

      v24 = sub_21700F7D4();
      sub_2168387D4(v44, v43);

      if (v24)
      {
        goto LABEL_15;
      }

LABEL_19:
      v13 &= v13 - 1;
      result = sub_216A8DB24(v44);
      if (!v13)
      {
        goto LABEL_4;
      }
    }

    sub_2168387D4(v44, v43);

LABEL_15:
    swift_beginAccess();
    v25 = sub_216E68214();
    if (v26)
    {
      v27 = v25;
      swift_isUniquelyReferenced_nonNull_native();
      v42 = *(v3 + 16);
      *(v3 + 16) = 0x8000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD1A8);
      sub_21700F554();
      v28 = v3;
      v29 = v42;
      v30 = *(v42 + 48) + 40 * v27;
      sub_216838830(*v30, *(v30 + 8), *(v30 + 16), *(v30 + 24), *(v30 + 32));
      v31 = *(v29 + 56);
      v32 = type metadata accessor for PersistentPageSectionManager.ShelfMetadata();
      v33 = v39;
      sub_216B752B4(v31 + *(*(v32 - 8) + 72) * v27, v39, type metadata accessor for PersistentPageSectionManager.ShelfMetadata);
      sub_2167CB9EC();
      sub_21700F574();
      *(v28 + 16) = v29;
      v3 = v28;

      v34 = v33;
      v35 = 0;
      v36 = v32;
      a2 = v38;
    }

    else
    {
      v36 = type metadata accessor for PersistentPageSectionManager.ShelfMetadata();
      v33 = v39;
      v34 = v39;
      v35 = 1;
    }

    __swift_storeEnumTagSinglePayload(v34, v35, 1, v36);
    sub_216697664(v33, &qword_27CAC15C0);
    swift_endAccess();
    goto LABEL_19;
  }

LABEL_4:
  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
    }

    v13 = *(v9 + 8 * v17);
    ++v16;
    if (v13)
    {
      v16 = v17;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_216B73F7C()
{
  v1 = sub_21700DF14();
  v2 = sub_216E64354(v1);
  type metadata accessor for PersistentPageSectionManager.ShelfMetadata();
  sub_2167CB9EC();
  v5 = sub_21700E384();
  swift_beginAccess();
  sub_21700DF14();

  v3 = sub_21700DF14();
  sub_216B73098(v3, v2, &v5, v0);

  *(v0 + 16) = v5;
}

uint64_t sub_216B7404C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC15C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v18 - v8;
  swift_beginAccess();
  sub_216935074();
  swift_endAccess();
  v10 = type metadata accessor for PersistentPageSectionManager.ShelfMetadata();
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    *v9 = 0;
    *(v9 + 1) = 0;
    v9[16] = 1;
    v11 = *(v10 + 20);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC35F8);
    __swift_storeEnumTagSinglePayload(&v9[v11], 1, 1, v12);
    if (__swift_getEnumTagSinglePayload(v6, 1, v10) != 1)
    {
      sub_216697664(v6, &qword_27CAC15C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_175();
    sub_216B752B4(v6, v9, v13);
  }

  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  swift_beginAccess();
  sub_2168387D4(a2, v18);
  sub_216A8BB9C(v9, a2);
  v14 = sub_216B73868(v18, a2);
  v16 = v15;
  if (!__swift_getEnumTagSinglePayload(v15, 1, v10))
  {
    sub_216B746F4(a1, v16 + *(v10 + 20));
  }

  (v14)(v18, 0);
  return swift_endAccess();
}

uint64_t sub_216B74270@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC15C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  swift_beginAccess();
  v6 = *(v1 + 16);
  if (*(v6 + 16) && (v7 = sub_216E68214(), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    v11 = type metadata accessor for PersistentPageSectionManager.ShelfMetadata();
    OUTLINED_FUNCTION_34();
    sub_216B751C8(v10 + *(v12 + 72) * v9, v5);
    v13 = v5;
    v14 = 0;
  }

  else
  {
    v11 = type metadata accessor for PersistentPageSectionManager.ShelfMetadata();
    v13 = v5;
    v14 = 1;
  }

  __swift_storeEnumTagSinglePayload(v13, v14, 1, v11);
  type metadata accessor for PersistentPageSectionManager.ShelfMetadata();
  if (__swift_getEnumTagSinglePayload(v5, 1, v11))
  {
    sub_216697664(v5, &qword_27CAC15C0);
    swift_endAccess();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC35F8);
    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v15);
  }

  else
  {
    sub_216681B04(&v5[*(v11 + 20)], a1, &qword_27CAC3618);
    sub_216697664(v5, &qword_27CAC15C0);
    return swift_endAccess();
  }
}

uint64_t sub_216B74428()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_280E32078);
  __swift_project_value_buffer(v0, qword_280E32078);
  return sub_217007C94();
}

uint64_t type metadata accessor for PersistentPageSectionManager.ShelfMetadata()
{
  result = qword_280E320E8;
  if (!qword_280E320E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216B74540()
{
  sub_216B745C4();
  if (v0 <= 0x3F)
  {
    sub_216B7461C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216B745C4()
{
  if (!qword_280E29B60)
  {
    type metadata accessor for CGPoint(255);
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E29B60);
    }
  }
}

void sub_216B7461C()
{
  if (!qword_280E333D8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC35F8);
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, qword_280E333D8);
    }
  }
}

unint64_t sub_216B746A0()
{
  result = qword_280E3F8D8;
  if (!qword_280E3F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E3F8D8);
  }

  return result;
}

uint64_t sub_216B746F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3618);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*sub_216B74764(void *a1, uint64_t a2))()
{
  v4 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v4[8] = sub_216B751A0(v4);
  v4[9] = sub_216B748F0(v4 + 4, a2);
  return sub_216B7531C;
}

uint64_t (*sub_216B747F4(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_216B7522C(v6);
  v6[9] = sub_216B74D48(v6 + 4, a2, a3);
  return sub_216B7488C;
}

void sub_216B74890(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_216B748F0(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v3 = v2;
  v6 = __swift_coroFrameAllocStub(0xA8uLL);
  *a1 = v6;
  v6[10] = a2;
  v6[11] = v2;
  v7 = type metadata accessor for PersistentPageSectionManager.ShelfMetadata();
  v6[12] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[13] = v8;
  v10 = *(v8 + 64);
  v6[14] = __swift_coroFrameAllocStub(v10);
  v6[15] = __swift_coroFrameAllocStub(v10);
  v6[16] = __swift_coroFrameAllocStub(v10);
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC15C0) - 8) + 64);
  v6[17] = __swift_coroFrameAllocStub(v11);
  v6[18] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v6[19] = v12;
  v13 = *v3;
  v14 = sub_216E68214();
  *(v6 + 33) = v15 & 1;
  if (__OFADD__(*(v13 + 16), (v15 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = v14;
  v17 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD1A8);
  if (sub_21700F554())
  {
    v18 = sub_216E68214();
    if ((v17 & 1) == (v19 & 1))
    {
      v16 = v18;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_21700F824();
    __break(1u);
    return result;
  }

LABEL_5:
  v6[20] = v16;
  if (v17)
  {
    sub_216B752B4(*(*v3 + 56) + *(v9 + 72) * v16, v12, type metadata accessor for PersistentPageSectionManager.ShelfMetadata);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  __swift_storeEnumTagSinglePayload(v12, v20, 1, v7);
  return sub_216B74B40;
}

void sub_216B74B40(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 152);
  if (a2)
  {
    sub_216681B04(v3, *(v2 + 136), &qword_27CAC15C0);
    OUTLINED_FUNCTION_2_119();
    v4 = *(v2 + 33);
    v5 = *(v2 + 136);
    if (v6 != 1)
    {
      OUTLINED_FUNCTION_0_175();
      sub_216B752B4(v7, v8, v9);
      if ((v4 & 1) == 0)
      {
        v10 = *(v2 + 112);
        v11 = *(v2 + 80);
        OUTLINED_FUNCTION_0_175();
        sub_216B752B4(v12, v10, v13);
        OUTLINED_FUNCTION_5_85();
        v14 = v11;
        v15 = v2;
LABEL_11:
        sub_2168387D4(v14, v15);
        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  else
  {
    sub_216681B04(v3, *(v2 + 144), &qword_27CAC15C0);
    OUTLINED_FUNCTION_2_119();
    v4 = *(v2 + 33);
    v5 = *(v2 + 144);
    if (v16 != 1)
    {
      OUTLINED_FUNCTION_0_175();
      sub_216B752B4(v17, v18, v19);
      if ((v4 & 1) == 0)
      {
        v23 = *(v2 + 112);
        v24 = *(v2 + 80);
        OUTLINED_FUNCTION_0_175();
        sub_216B752B4(v25, v23, v26);
        OUTLINED_FUNCTION_5_85();
        v15 = v2 + 40;
        v14 = v24;
        goto LABEL_11;
      }

LABEL_9:
      OUTLINED_FUNCTION_0_175();
      sub_216B752B4(v20, v21, v22);
      goto LABEL_12;
    }
  }

  sub_216697664(v5, &qword_27CAC15C0);
  if (v4)
  {
    sub_216A8DB24(*(**(v2 + 88) + 48) + 40 * *(v2 + 160));
    sub_2167CB9EC();
    sub_21700F574();
  }

LABEL_12:
  v27 = *(v2 + 144);
  v28 = *(v2 + 152);
  v30 = *(v2 + 128);
  v29 = *(v2 + 136);
  v32 = *(v2 + 112);
  v31 = *(v2 + 120);
  sub_216697664(v28, &qword_27CAC15C0);
  free(v28);
  free(v27);
  free(v29);
  free(v30);
  free(v31);
  free(v32);

  free(v2);
}

void (*sub_216B74D48(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  v4 = v3;
  v8 = __swift_coroFrameAllocStub(0x68uLL);
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v9 = type metadata accessor for PopoverBubbleTipDismissContext(0);
  v8[3] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v8[4] = v10;
  v12 = *(v10 + 64);
  v8[5] = __swift_coroFrameAllocStub(v12);
  v8[6] = __swift_coroFrameAllocStub(v12);
  v8[7] = __swift_coroFrameAllocStub(v12);
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC09A0) - 8) + 64);
  v8[8] = __swift_coroFrameAllocStub(v13);
  v8[9] = __swift_coroFrameAllocStub(v13);
  v14 = __swift_coroFrameAllocStub(v13);
  v8[10] = v14;
  v15 = *v3;
  v16 = sub_216E69548(a2, a3);
  *(v8 + 96) = v17 & 1;
  if (__OFADD__(*(v15 + 16), (v17 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v18 = v16;
  v19 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD200);
  if (sub_21700F554())
  {
    v20 = sub_216E69548(a2, a3);
    if ((v19 & 1) == (v21 & 1))
    {
      v18 = v20;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_21700F824();
    __break(1u);
    return result;
  }

LABEL_5:
  v8[11] = v18;
  if (v19)
  {
    sub_216B752B4(*(*v4 + 56) + *(v11 + 72) * v18, v14, type metadata accessor for PopoverBubbleTipDismissContext);
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v22, 1, v9);
  return sub_216B74FB0;
}

void sub_216B74FB0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    sub_216681B04(v3, *(v2 + 8), &qword_27CAC09A0);
    OUTLINED_FUNCTION_2_119();
    v4 = *(v2 + 96);
    v5 = *(v2 + 8);
    if (v6 != 1)
    {
      v7 = *(v2 + 2);
      OUTLINED_FUNCTION_1_150();
      sub_216B752B4(v8, v9, v10);
      v11 = *v7;
      v12 = *(v2 + 11);
      if ((v4 & 1) == 0)
      {
LABEL_4:
        v13 = *(v2 + 5);
        v15 = *v2;
        v14 = *(v2 + 1);
        OUTLINED_FUNCTION_1_150();
        sub_216B752B4(v16, v13, v17);
        sub_21693B160(v12, v15, v14, v13, v11);
        sub_21700DF14();
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    sub_216681B04(v3, *(v2 + 9), &qword_27CAC09A0);
    OUTLINED_FUNCTION_2_119();
    v4 = *(v2 + 96);
    v5 = *(v2 + 9);
    if (v18 != 1)
    {
      v19 = *(v2 + 2);
      OUTLINED_FUNCTION_1_150();
      sub_216B752B4(v20, v21, v22);
      v11 = *v19;
      v12 = *(v2 + 11);
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      OUTLINED_FUNCTION_1_150();
      sub_216B752B4(v23, v24, v25);
      goto LABEL_10;
    }
  }

  sub_216697664(v5, &qword_27CAC09A0);
  if (v4)
  {
    sub_216B75260(*(**(v2 + 2) + 48) + 16 * *(v2 + 11));
    sub_216A069B8();
    sub_21700F574();
  }

LABEL_10:
  v26 = *(v2 + 9);
  v27 = *(v2 + 10);
  v29 = *(v2 + 7);
  v28 = *(v2 + 8);
  v31 = *(v2 + 5);
  v30 = *(v2 + 6);
  sub_216697664(v27, &qword_27CAC09A0);
  free(v27);
  free(v26);
  free(v28);
  free(v29);
  free(v30);
  free(v31);

  free(v2);
}

uint64_t (*sub_216B751A0(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_216B75314;
}

uint64_t sub_216B751C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersistentPageSectionManager.ShelfMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t (*sub_216B7522C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_216B75254;
}

uint64_t sub_216B752B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void sub_216B75320(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)()@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t (**a6)()@<X8>)
{
  v68 = a2;
  v69 = a4;
  v67 = a1;
  v64 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A38);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_105();
  v63 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v58 - v11;
  v70 = type metadata accessor for SocialOnboardingSharedPlaylistLockup();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v16 = v15 - v14;
  type metadata accessor for MappedSection.Content(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  v20 = (v19 - v18);
  v59 = type metadata accessor for MappedSection(0);
  OUTLINED_FUNCTION_1();
  v71 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7();
  v25 = v24 - v23;
  v66 = type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_7();
  v29 = v28 - v27;
  v30 = *(a5 + 32);
  v65 = a3;

  v72 = a5;
  if (v30(v69, a5))
  {
    sub_216DE8DC8();

    v31 = (v29 + *(v66 + 24));
    v32 = *v31;
    v61 = v31[1];
    v62 = v32;
    sub_21700DF14();
    sub_216B785AC(v29, type metadata accessor for Page.Header);
  }

  else
  {
    v61 = 0;
    v62 = 0;
  }

  v33 = type metadata accessor for SocialOnboardingSharedPlaylistPageLockup();
  v34 = v72;
  v35 = *(v72 + 56);
  v60 = *(v67 + *(v33 + 24));
  sub_21700DF14();
  v36 = v35(v69, v34);
  v37 = *(v36 + 16);
  v66 = MEMORY[0x277D84F90];
  if (v37)
  {
    v38 = *(v59 + 28);
    v39 = *(v71 + 80);
    v72 = v36;
    v40 = v36 + ((v39 + 32) & ~v39);
    v41 = *(v71 + 72);
    v42 = MEMORY[0x277D84F90];
    do
    {
      v43 = OUTLINED_FUNCTION_39_3();
      sub_216B75938(v43, v44, v45);
      sub_216B75938(v25 + v38, v20, type metadata accessor for MappedSection.Content);
      sub_216B785AC(v25, type metadata accessor for MappedSection);
      if (swift_getEnumCaseMultiPayload() == 36)
      {

        v42 = *v20;
      }

      else
      {
        sub_216B785AC(v20, type metadata accessor for MappedSection.Content);
      }

      v40 += v41;
      --v37;
    }

    while (v37);
  }

  else
  {

    v42 = MEMORY[0x277D84F90];
  }

  v73 = MEMORY[0x277D84F90];
  v46 = sub_2166BF3C8(v42);
  v47 = 0;
  v71 = v42 & 0xFFFFFFFFFFFFFF8;
  v72 = v42 & 0xC000000000000001;
  while (1)
  {
    if (v46 == v47)
    {

      v51 = type metadata accessor for SocialProfileEditorHeaderLockup(0);
      __swift_storeEnumTagSinglePayload(v63, 1, 1, v51);
      type metadata accessor for SocialProfileUpdater(0);
      swift_allocObject();
      v52 = v65;
      sub_216AFBA30();
      v54 = v53;
      (*(*(v69 - 8) + 8))(v68);
      sub_216B785AC(v67, type metadata accessor for SocialOnboardingSharedPlaylistPageLockup);
      v55 = v64;
      *v64 = sub_2167D8C58;
      v55[1] = v54;
      *(v55 + 16) = 0;
      v56 = v61;
      v57 = v62;
      v55[3] = v60;
      v55[4] = v57;
      v55[5] = v56;
      v55[6] = v52;
      return;
    }

    if (v72)
    {
      MEMORY[0x21CEA0220](v47, v42);
    }

    else
    {
      if (v47 >= *(v71 + 16))
      {
        goto LABEL_28;
      }
    }

    if (__OFADD__(v47, 1))
    {
      break;
    }

    sub_216DE9B98();
    sub_216683A80(v16 + *(v70 + 20), v12, &qword_27CAB6A00);
    sub_216B785AC(v16, type metadata accessor for SocialOnboardingSharedPlaylistLockup);
    v48 = type metadata accessor for ContentDescriptor();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v48);
    sub_216699778(v12, &qword_27CAB6A00);
    if (EnumTagSinglePayload == 1)
    {

      goto LABEL_21;
    }

    type metadata accessor for SocialProfileUpdater.PlaylistDescriptor(0);
    swift_allocObject();
    sub_216B02848();
    if (v50)
    {
      MEMORY[0x21CE9F610]();
      if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21700E874();
      }

      sub_21700E8C4();
      v66 = v73;
      ++v47;
    }

    else
    {
LABEL_21:
      ++v47;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_216B75938(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216B75994()
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3F30);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_105();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3F38);
  OUTLINED_FUNCTION_1();
  v43 = v1;
  v44 = v2;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_105();
  v40 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3F40);
  OUTLINED_FUNCTION_1();
  v45 = v5;
  v46 = v6;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_105();
  v42 = v8;
  sub_216B75F54(v47);
  sub_2170093C4();
  v9 = OUTLINED_FUNCTION_39_3();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3F50);
  OUTLINED_FUNCTION_5_86();
  v13 = sub_216B790C0(v12);
  v14 = OUTLINED_FUNCTION_39_3();
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3FB8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3FC0);
  OUTLINED_FUNCTION_3_114();
  v19 = sub_216B79044(v18);
  __dst[0] = v15;
  __dst[1] = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = sub_216B78B58();
  __dst[0] = v15;
  __dst[1] = MEMORY[0x277CE1350];
  __dst[2] = v16;
  __dst[3] = v17;
  __dst[4] = v19;
  __dst[5] = MEMORY[0x277CE1340];
  __dst[6] = OpaqueTypeConformance2;
  __dst[7] = v21;
  v22 = swift_getOpaqueTypeConformance2();
  sub_21700A444();
  memcpy(__dst, v47, 0x92uLL);
  sub_216699778(__dst, &qword_27CAC3F48);
  sub_2170093B4();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4018);
  v47[0] = v10;
  v47[1] = v11;
  v47[2] = v13;
  v47[3] = v22;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4020);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4028);
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4030);
  v28 = sub_216B78C44();
  v47[0] = v25;
  v47[1] = v28;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = sub_216B78E3C();
  v47[0] = v25;
  v47[1] = MEMORY[0x277CE1350];
  v47[2] = v26;
  v47[3] = v27;
  v47[4] = v28;
  v47[5] = MEMORY[0x277CE1340];
  v47[6] = v29;
  v47[7] = v30;
  v39 = swift_getOpaqueTypeConformance2();
  sub_21700A444();
  v31 = OUTLINED_FUNCTION_39_3();
  v32(v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4088);
  v47[0] = v41;
  v47[1] = v23;
  v47[2] = v24;
  v47[3] = v39;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4090);
  v36 = sub_216B78EFC();
  v47[0] = v35;
  v47[1] = v36;
  OUTLINED_FUNCTION_2_2();
  v37 = swift_getOpaqueTypeConformance2();
  sub_21700AAD4();
  (*(v44 + 8))(v40, v43);
  v47[0] = v43;
  v47[1] = v33;
  v47[2] = v34;
  v47[3] = v37;
  OUTLINED_FUNCTION_4_97();
  swift_getOpaqueTypeConformance2();
  sub_21700A8C4();
  return (*(v46 + 8))(v42, v45);
}

void *sub_216B75F54@<X0>(void *a1@<X8>)
{
  type metadata accessor for SocialProfileUpdater(0);
  sub_216B78FF0(&qword_280E3B500);
  sub_2170081B4();
  v2 = sub_216AFF318();

  v3 = sub_2166BF3C8(v2);

  if (v3)
  {
    v4 = sub_217008CF4();
    v6 = v5;
    v7 = sub_2170081B4();
    v8 = sub_217007D54();
    v9 = sub_217009CA4();
    sub_217007F24();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    __src[0] = 0;
    v18 = sub_217009C74();
    sub_217007F24();
    v29[0] = v4;
    v29[1] = v6;
    v29[2] = v8;
    v29[3] = v7;
    LOBYTE(v29[4]) = v9;
    v29[5] = v11;
    v29[6] = v13;
    v29[7] = v15;
    v29[8] = v17;
    LOBYTE(v29[9]) = 0;
    LOBYTE(v29[10]) = v18;
    v29[11] = v19;
    v29[12] = v20;
    v29[13] = v21;
    v29[14] = v22;
    LOBYTE(v29[15]) = 0;
    sub_216B79134(v29);
  }

  else
  {
    v23 = sub_2170093B4();
    v28[0] = 1;
    sub_216B76280(__src);
    memcpy(__dst, __src, 0x79uLL);
    memcpy(v27, __src, 0x79uLL);
    sub_216683A80(__dst, v29, &qword_27CAC40E8);
    sub_216699778(v27, &qword_27CAC40E8);
    memcpy(&v25[7], __dst, 0x79uLL);
    v29[0] = v23;
    v29[1] = 0;
    LOBYTE(v29[2]) = v28[0];
    memcpy(&v29[2] + 1, v25, 0x80uLL);
    sub_216B7913C(v29);
  }

  memcpy(v28, v29, sizeof(v28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3F78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3FA8);
  sub_216B79044(&unk_27CAC3F70);
  sub_2167D2D50(&unk_27CAC3FA0);
  sub_217009554();
  return memcpy(a1, __src, 0x92uLL);
}

uint64_t sub_216B76280@<X0>(uint64_t a1@<X8>)
{
  sub_216983738(174);
  sub_217009EA4();
  v2 = sub_21700A094();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  KeyPath = swift_getKeyPath();
  v10 = sub_217009CA4();
  if (qword_27CAB5E10 != -1)
  {
    swift_once();
  }

  sub_217007F24();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = v6 & 1;
  v22[96] = 0;
  __src[0] = v2;
  __src[1] = v4;
  LOBYTE(__src[2]) = v19;
  __src[3] = v8;
  __src[4] = KeyPath;
  LOBYTE(__src[5]) = 1;
  LOBYTE(__src[6]) = v10;
  __src[7] = v11;
  __src[8] = v13;
  __src[9] = v15;
  __src[10] = v17;
  LOBYTE(__src[11]) = 0;
  memcpy(&v22[7], __src, 0x59uLL);
  v21[96] = 0;
  *a1 = 0x4049000000000000;
  *(a1 + 8) = 0;
  memcpy((a1 + 9), v22, 0x60uLL);
  *(a1 + 112) = 0x4049000000000000;
  *(a1 + 120) = 0;
  v24[0] = v2;
  v24[1] = v4;
  v25 = v19;
  v26 = v8;
  v27 = KeyPath;
  v28 = 1;
  v29 = v10;
  v30 = v12;
  v31 = v14;
  v32 = v16;
  v33 = v18;
  v34 = 0;
  sub_216683A80(__src, v21, &qword_27CAC40F0);
  return sub_216699778(v24, &qword_27CAC40F0);
}

uint64_t sub_216B7645C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3FB0);
  MEMORY[0x28223BE20](v0);
  v2 = v5 - v1;
  sub_216B76610(v5 - v1);
  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3FB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3FC0);
  v3 = sub_216B79044(&unk_27CAC3FC8);
  v5[0] = v0;
  v5[1] = v3;
  swift_getOpaqueTypeConformance2();
  sub_216B78B58();
  sub_21700AB34();
  return sub_216699778(v2, &qword_27CAC3FB0);
}

uint64_t sub_216B76610@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7640);
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v44 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4008);
  MEMORY[0x28223BE20](v47);
  v6 = &v44 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3FF8);
  MEMORY[0x28223BE20](v48);
  v8 = &v44 - v7;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3FE8);
  MEMORY[0x28223BE20](v45);
  v10 = &v44 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3FD8);
  MEMORY[0x28223BE20](v46);
  v49 = &v44 - v11;
  v12 = *(v1 + 40);
  if (v12)
  {
    v13 = *(v1 + 32);
    v14 = v12;
  }

  else
  {
    v13 = sub_216983738(316);
    v14 = v15;
  }

  sub_21700DF14();
  v16 = sub_217009D34();
  KeyPath = swift_getKeyPath();
  __src[0] = v13;
  __src[1] = v14;
  __src[2] = 0;
  __src[3] = MEMORY[0x277D84F90];
  __src[4] = KeyPath;
  __src[5] = v16;
  sub_217009D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7660);
  sub_2167C4CBC();
  sub_21700A304();

  sub_21700B3C4();
  sub_217008BB4();
  (*(v50 + 32))(v6, v4, v51);
  memcpy(&v6[*(v47 + 36)], __src, 0x70uLL);
  v18 = swift_getKeyPath();
  sub_2167C5834(v6, v8, &qword_27CAC4008);
  v19 = &v8[*(v48 + 36)];
  *v19 = v18;
  v19[8] = 0;
  v20 = swift_getKeyPath();
  sub_2167C5834(v8, v10, &qword_27CAC3FF8);
  v21 = &v10[*(v45 + 36)];
  *v21 = v20;
  *(v21 + 1) = 0;
  v21[16] = 1;
  LOBYTE(v20) = sub_217009C74();
  sub_217007F24();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = v49;
  sub_2167C5834(v10, v49, &qword_27CAC3FE8);
  v31 = v30 + *(v46 + 36);
  *v31 = v20;
  *(v31 + 8) = v23;
  *(v31 + 16) = v25;
  *(v31 + 24) = v27;
  *(v31 + 32) = v29;
  *(v31 + 40) = 0;
  LOBYTE(v20) = sub_217009CA4();
  sub_217007F24();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = v30;
  v41 = v52;
  sub_2167C5834(v40, v52, &qword_27CAC3FD8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3FB0);
  v43 = v41 + *(result + 36);
  *v43 = v20;
  *(v43 + 8) = v33;
  *(v43 + 16) = v35;
  *(v43 + 24) = v37;
  *(v43 + 32) = v39;
  *(v43 + 40) = 0;
  return result;
}

uint64_t sub_216B76ADC()
{
  v0 = sub_217009334();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217009324();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3FB0);
  sub_216B79044(&unk_27CAC3FC8);
  sub_21700A704();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_216B76C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4020);
  MEMORY[0x28223BE20](v46);
  v4 = (v45 - v3);
  v45[1] = type metadata accessor for SocialProfileUpdater(0);
  sub_216B78FF0(&qword_280E3B500);
  sub_2170081B4();
  v5 = sub_21700D3B4();
  v6 = MEMORY[0x277D21D10];
  v4[3] = v5;
  v4[4] = v6;
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_216AFDE5C();

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4078);
  v8 = v7[11];
  v9 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v4 + v8, 1, 1, v9);
  v50 = *(a1 + 24);
  v49 = *(a1 + 32);
  v10 = swift_allocObject();
  v11 = *(a1 + 16);
  *(v10 + 16) = *a1;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(a1 + 32);
  *(v10 + 64) = *(a1 + 48);
  v12 = swift_allocObject();
  v13 = *(a1 + 16);
  *(v12 + 16) = *a1;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(a1 + 32);
  *(v12 + 64) = *(a1 + 48);
  v14 = v7[12];
  *(v4 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v15 = v4 + v7[13];
  *v15 = swift_getKeyPath();
  v15[40] = 0;
  v4[5] = sub_216B79034;
  v4[6] = v10;
  v4[7] = sub_216B7903C;
  v4[8] = v12;
  sub_2167759EC();
  sub_216683A80(&v50, v48, &qword_27CABBAF0);
  sub_216683A80(&v49, v48, &qword_27CABAA40);

  sub_2167759EC();
  sub_216683A80(&v50, v48, &qword_27CABBAF0);
  sub_216683A80(&v49, v48, &qword_27CABAA40);

  sub_2170081B4();
  v16 = sub_216AFF2F0();

  KeyPath = swift_getKeyPath();
  v18 = swift_allocObject();
  *(v18 + 16) = v16 & 1;
  v19 = (v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4068) + 36));
  *v19 = KeyPath;
  v19[1] = sub_2167D2420;
  v19[2] = v18;
  v20 = sub_217009CA4();
  sub_217007F24();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4058) + 36);
  *v29 = v20;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  v30 = sub_217009C74();
  sub_217007F24();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4048) + 36);
  *v39 = v30;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  v40 = swift_getKeyPath();
  v41 = v46;
  v42 = v4 + *(v46 + 36);
  *v42 = v40;
  v42[8] = 0;
  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4028);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4030);
  v43 = sub_216B78C44();
  v48[0] = v41;
  v48[1] = v43;
  swift_getOpaqueTypeConformance2();
  sub_216B78E3C();
  sub_21700AB34();
  return sub_216699778(v4, &qword_27CAC4020);
}

double sub_216B77174@<D0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E28);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v25 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E30);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E38);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E40);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC40D8);
  v25 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v16 = &v25 - v15;
  sub_216B7760C(v3);
  sub_21700B3B4();
  sub_217008BB4();
  sub_2167C5834(v3, v7, &qword_27CAB7E28);
  memcpy(&v7[*(v5 + 44)], __src, 0x70uLL);
  v17 = sub_217009C84();
  sub_2167C5834(v7, v11, &qword_27CAB7E30);
  v18 = &v11[*(v9 + 44)];
  *v18 = v17;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  v18[40] = 1;
  v19 = sub_21700AC54();
  LOBYTE(v5) = sub_217009C84();
  sub_2167C5834(v11, v14, &qword_27CAB7E38);
  v20 = &v14[*(v12 + 36)];
  *v20 = v19;
  v20[8] = v5;
  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E50);
  sub_2167D92B8();
  sub_2167D9660();
  sub_2167D9718();
  sub_21700AB34();
  sub_216699778(v14, &qword_27CAB7E40);
  if (qword_27CAB5E08 != -1)
  {
    swift_once();
  }

  sub_21700B3B4();
  sub_2170083C4();
  v21 = v27;
  (*(v25 + 32))(v27, v16, v26);
  v22 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC40E0) + 36));
  v23 = v30;
  *v22 = v29;
  v22[1] = v23;
  result = *&v31;
  v22[2] = v31;
  return result;
}

uint64_t sub_216B7760C@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7EA0);
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v2 = &v25 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7EA8);
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7BD0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - v8;
  type metadata accessor for SocialProfileUpdater(0);
  sub_216B78FF0(&qword_280E3B500);
  sub_2170081B4();
  v10 = sub_216AFF2F0();

  if (v10)
  {
    sub_217008294();
    (*(v7 + 16))(v5, v9, v6);
    swift_storeEnumTagMultiPayload();
    sub_2167D2D50(&qword_27CAB7BC8);
    v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7E88);
    v12 = sub_2167D95A8();
    *&v33[0] = v11;
    *(&v33[0] + 1) = v12;
    swift_getOpaqueTypeConformance2();
    sub_217009554();
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    v14 = sub_216983738(90);
    v16 = v15;
    v17 = sub_21700ACF4();
    KeyPath = swift_getKeyPath();
    v19 = sub_217009D54();
    v20 = swift_getKeyPath();
    *&v29 = v14;
    *(&v29 + 1) = v16;
    *&v30 = 0;
    *(&v30 + 1) = MEMORY[0x277D84F90];
    *&v31 = KeyPath;
    *(&v31 + 1) = v17;
    *&v32 = v20;
    *(&v32 + 1) = v19;
    sub_217009DE4();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E88);
    v22 = sub_2167D95A8();
    sub_21700A304();
    v33[0] = v29;
    v33[1] = v30;
    v33[2] = v31;
    v33[3] = v32;
    sub_216699778(v33, &qword_27CAB7E88);
    v23 = v26;
    v24 = v28;
    (*(v26 + 16))(v5, v2, v28);
    swift_storeEnumTagMultiPayload();
    sub_2167D2D50(&qword_27CAB7BC8);
    *&v29 = v21;
    *(&v29 + 1) = v22;
    swift_getOpaqueTypeConformance2();
    sub_217009554();
    return (*(v23 + 8))(v2, v24);
  }
}

uint64_t sub_216B77A88()
{
  type metadata accessor for SocialProfileUpdater(0);
  sub_216B78FF0(&qword_280E3B500);
  sub_2170081B4();
  sub_216AFF304();
}

uint64_t sub_216B77B2C()
{
  v0 = sub_217009334();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217009324();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4020);
  sub_216B78C44();
  sub_21700A704();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_216B77C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v7 = OUTLINED_FUNCTION_100(a1, a2);
  v8 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 36);
  sub_21700B2D4();
  v9 = sub_217009C84();
  *(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B20) + 36)) = v9;
  return sub_216683A80(a1, a4, a3);
}

uint64_t sub_216B77CDC@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC40B0);
  v25 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v24 = &v22 - v2;
  v3 = sub_217009684();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC40A0);
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4090);
  MEMORY[0x28223BE20](v26);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  type metadata accessor for SocialProfileUpdater(0);
  sub_216B78FF0(&qword_280E3B500);
  sub_2170081B4();
  v12 = sub_216AFF318();

  v13 = sub_2166BF3C8(v12);

  if (v13)
  {
    sub_217009634();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC40B8);
    sub_2167D2D50(&unk_27CAC40C0);
    sub_2170081F4();
    v14 = sub_2167D2D50(&unk_27CAC40A8);
    v15 = v24;
    MEMORY[0x21CE9A570](v6, v4, v14);
    v16 = v25;
    (*(v25 + 16))(v8, v15, v1);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v1);
    v28 = v4;
    v29 = v14;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CE9A5A0](v8, v1, OpaqueTypeConformance2);
    sub_216699778(v8, &qword_27CAC4090);
    (*(v16 + 8))(v15, v1);
    (*(v23 + 8))(v6, v4);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v1);
    v18 = sub_2167D2D50(&unk_27CAC40A8);
    v28 = v4;
    v29 = v18;
    v19 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CE9A5A0](v8, v1, v19);
    sub_216699778(v8, &qword_27CAC4090);
  }

  v20 = sub_216B78EFC();
  MEMORY[0x21CE9A570](v11, v26, v20);
  return sub_216699778(v11, &qword_27CAC4090);
}

uint64_t sub_216B781BC@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for HideAllPlaylistsAction();
  a1[4] = sub_216B78FF0(qword_280E39410);
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_21700D234();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC40B8);
  v3 = v2[11];
  v4 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
  v5 = v2[12];
  *(a1 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v6 = a1 + v2[13];
  result = swift_getKeyPath();
  *v6 = result;
  v6[40] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[5] = sub_216B782DC;
  a1[6] = 0;
  return result;
}

uint64_t sub_216B782DC()
{
  sub_216983738(139);
  sub_21700AC54();
  swift_getKeyPath();
  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7BD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC40C8);
  sub_2167D2750();
  sub_216B79044(&unk_27CAC40D0);
  sub_21700AB44();
}

uint64_t sub_216B78428@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = sub_217009C84();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 1;
  sub_2167770D0(v3, v4, v5, v6);
}

uint64_t sub_216B78514()
{
  result = sub_21700B304();
  v1 = 50.0;
  if (result)
  {
    v1 = 48.0;
  }

  qword_27CAC3F20 = *&v1;
  return result;
}

double sub_216B7854C()
{
  if (qword_27CAB5E08 != -1)
  {
    swift_once();
  }

  result = *&qword_27CAC3F20 + 16.0;
  *&qword_27CAC3F28 = *&qword_27CAC3F20 + 16.0;
  return result;
}

uint64_t sub_216B785AC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216B78610(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_216B78650(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

unint64_t sub_216B786D0()
{
  result = qword_27CAC3F60;
  if (!qword_27CAC3F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3F68);
    sub_216B79044(&unk_27CAC3F70);
    sub_2167D2D50(&unk_27CAC3FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3F60);
  }

  return result;
}

unint64_t sub_216B787E4()
{
  result = qword_27CAC3F88;
  if (!qword_27CAC3F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3F90);
    sub_216B7889C();
    sub_2167D2D50(&unk_27CAB7C98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3F88);
  }

  return result;
}

unint64_t sub_216B7889C()
{
  result = qword_27CAC3F98;
  if (!qword_27CAC3F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3F98);
  }

  return result;
}

unint64_t sub_216B78920()
{
  result = qword_27CAC3FE0;
  if (!qword_27CAC3FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3FE8);
    sub_216B789D8();
    sub_2167D2D50(&qword_280E2A6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3FE0);
  }

  return result;
}

unint64_t sub_216B789D8()
{
  result = qword_27CAC3FF0;
  if (!qword_27CAC3FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3FF8);
    sub_216B78A90();
    sub_2167D2D50(&qword_280E2A730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3FF0);
  }

  return result;
}

unint64_t sub_216B78A90()
{
  result = qword_27CAC4000;
  if (!qword_27CAC4000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4008);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7660);
    sub_2167C4CBC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4000);
  }

  return result;
}

unint64_t sub_216B78B58()
{
  result = qword_27CAC4010;
  if (!qword_27CAC4010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3FC0);
    sub_216B79044(&unk_27CAC3FC8);
    sub_2167D2D50(&unk_27CAB7B18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4010);
  }

  return result;
}

unint64_t sub_216B78C44()
{
  result = qword_27CAC4038;
  if (!qword_27CAC4038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4020);
    sub_216B79044(&unk_27CAC4040);
    sub_2167D2D50(&qword_280E2A700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4038);
  }

  return result;
}

unint64_t sub_216B78D58()
{
  result = qword_27CAC4060;
  if (!qword_27CAC4060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4068);
    sub_2167D2D50(&unk_27CAC4070);
    sub_2167D2D50(&qword_280E2A6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4060);
  }

  return result;
}

unint64_t sub_216B78E3C()
{
  result = qword_27CAC4080;
  if (!qword_27CAC4080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4030);
    sub_216B78C44();
    sub_2167D2D50(&unk_27CAB7B18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4080);
  }

  return result;
}

unint64_t sub_216B78EFC()
{
  result = qword_27CAC4098;
  if (!qword_27CAC4098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4090);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC40A0);
    sub_2167D2D50(&unk_27CAC40A8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4098);
  }

  return result;
}

unint64_t sub_216B78FF0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_216B79044(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_100(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_216B790C0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_100(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_216B791B0(uint64_t a1, uint64_t a2)
{
  v91 = a2;
  v82 = a1;
  v96 = sub_21700D2A4();
  OUTLINED_FUNCTION_1();
  v95 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_0();
  v94 = v4;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  OUTLINED_FUNCTION_1();
  v90 = v5;
  MEMORY[0x28223BE20](v6);
  v89 = &v80 - v7;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v93 = v8;
  MEMORY[0x28223BE20](v9);
  v87 = &v80 - v10;
  OUTLINED_FUNCTION_4_1();
  v86 = type metadata accessor for PresentAlertAction();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_0();
  v85 = v12;
  OUTLINED_FUNCTION_4_1();
  v13 = _s6ActionVMa();
  v14 = v13 - 8;
  v83 = *(v13 - 8);
  v84 = v83;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_77();
  v81 = v15 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v80 - v18;
  sub_217006224();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  v23 = sub_216983738(140);
  v25 = v24;
  v26 = type metadata accessor for HideFromProfileAction(0);
  v103[3] = v26;
  v103[4] = sub_216B7A06C(&qword_27CAC40F8, type metadata accessor for HideFromProfileAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v103);
  sub_21700D234();
  v28 = type metadata accessor for PromptHideFromProfileAction(0);
  sub_2167B7D58(v82 + *(v28 + 20), boxed_opaque_existential_1 + *(v26 + 20));
  sub_217006214();
  v29 = sub_2170061F4();
  v31 = v30;
  v32 = *(v21 + 8);
  v33 = OUTLINED_FUNCTION_46_1();
  v32(v33);
  v102[0] = v29;
  v102[1] = v31;
  v102[2] = v23;
  v102[3] = v25;
  sub_2167ADC3C(v102, v19);
  v34 = sub_217007F04();
  v80 = v19;
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v34);
  sub_217006214();
  v38 = sub_2170061F4();
  v40 = v39;
  v41 = OUTLINED_FUNCTION_46_1();
  v32(v41);
  v42 = &v19[*(v14 + 32)];
  *v42 = v38;
  v42[1] = v40;
  v43 = sub_216983738(43);
  v45 = v44;
  v99 = 0u;
  v100 = 0u;
  v101 = 0;
  sub_217006214();
  v46 = sub_2170061F4();
  v48 = v47;
  v49 = OUTLINED_FUNCTION_46_1();
  v32(v49);
  v98[0] = v46;
  v98[1] = v48;
  v98[2] = v43;
  v98[3] = v45;
  v50 = v81;
  sub_2167ADC3C(v98, v81);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v34);
  sub_217006214();
  v54 = sub_2170061F4();
  v56 = v55;
  v57 = OUTLINED_FUNCTION_46_1();
  v32(v57);
  v58 = (v50 + *(v14 + 32));
  *v58 = v54;
  v58[1] = v56;
  v59 = sub_216983738(141);
  v61 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC0130);
  v62 = *(v83 + 72);
  v63 = (*(v84 + 80) + 32) & ~*(v84 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_217013D90;
  v65 = v64 + v63;
  v66 = v80;
  sub_216B7A0B4(v80, v65, _s6ActionVMa);
  sub_216B7A0B4(v50, v65 + v62, _s6ActionVMa);
  sub_216933384(v59, v61, v64, 0, 0, v104);
  v67 = v85;
  sub_21700D234();
  v68 = v86;
  v69 = v67 + *(v86 + 20);
  v70 = v104[1];
  *v69 = v104[0];
  *(v69 + 16) = v70;
  *(v69 + 32) = v105;
  type metadata accessor for ObjectGraph();
  v71 = v87;
  v72 = v88;
  sub_21700E094();
  v97[3] = v68;
  v97[4] = sub_216B7A06C(qword_280E3EB18, type metadata accessor for PresentAlertAction);
  v73 = __swift_allocate_boxed_opaque_existential_1(v97);
  sub_216B7A0B4(v67, v73, type metadata accessor for PresentAlertAction);
  v74 = v90;
  v75 = v89;
  v76 = v92;
  (*(v90 + 104))(v89, *MEMORY[0x277D21E18], v92);
  v77 = v71;
  sub_21700D5E4();

  (*(v74 + 8))(v75, v76);
  __swift_destroy_boxed_opaque_existential_1Tm(v97);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0);
  (*(v95 + 104))(v94, *MEMORY[0x277D21CA8], v96);
  v78 = sub_21700E1F4();
  (*(v93 + 8))(v77, v72);
  sub_216B7A130(v67, type metadata accessor for PresentAlertAction);
  sub_216B7A130(v50, _s6ActionVMa);
  sub_2167ADC98(v98);
  sub_216B7A130(v66, _s6ActionVMa);
  sub_2167ADC98(v102);
  return v78;
}

uint64_t sub_216B79998(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v61 = a1;
  v63 = sub_21700D2A4();
  OUTLINED_FUNCTION_1();
  v57 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_0();
  v56 = v4;
  OUTLINED_FUNCTION_4_1();
  v5 = type metadata accessor for HideFromProfileIntent();
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_6_0();
  v59 = v6;
  OUTLINED_FUNCTION_4_1();
  v7 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  v58 = v9;
  OUTLINED_FUNCTION_4_1();
  sub_21700C924();
  OUTLINED_FUNCTION_1();
  v54 = v11;
  v55 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_77();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v53 - v16;
  v18 = sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_77();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v53 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v28 - 8);
  OUTLINED_FUNCTION_77();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v53 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v53 - v36;
  OUTLINED_FUNCTION_38_2();
  v62 = v7;
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v7);
  v41 = type metadata accessor for HideFromProfileAction(0);
  sub_2167B7D58(v61 + *(v41 + 20), v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74C0);
  if (swift_dynamicCast())
  {
    (*(v20 + 32))(v24, v27, v18);
    sub_216BC88B8(v34);
    (*(v20 + 8))(v24, v18);
LABEL_5:
    sub_2168F3EB8(v37);
    sub_216816BC4(v34, v37);
    v44 = v62;
    goto LABEL_7;
  }

  v42 = v55;
  if (swift_dynamicCast())
  {
    v43 = v54;
    (*(v54 + 32))(v14, v17, v42);
    sub_216BCC2D0(v34);
    (*(v43 + 8))(v14, v42);
    goto LABEL_5;
  }

  sub_2168F3EB8(v37);
  OUTLINED_FUNCTION_38_2();
  v44 = v62;
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v62);
LABEL_7:
  __swift_destroy_boxed_opaque_existential_1Tm(v64);
  sub_216919014(v37, v31);
  if (__swift_getEnumTagSinglePayload(v31, 1, v44) == 1)
  {
    sub_2168F3EB8(v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0);
    (*(v57 + 104))(v56, *MEMORY[0x277D21CA0], v63);
    v48 = sub_21700E1F4();
    sub_2168F3EB8(v37);
  }

  else
  {
    v49 = v58;
    sub_2168ED900(v31, v58);
    v50 = v59;
    sub_216B7A0B4(v49, v59, type metadata accessor for ContentDescriptor);
    type metadata accessor for JSIntentDispatcher();
    type metadata accessor for ObjectGraph();
    v51 = v60;
    sub_21700E094();
    sub_216ECE1E4(v50, v51);
    v64[3] = sub_21700D7C4();
    v64[4] = MEMORY[0x277D21FB0];
    __swift_allocate_boxed_opaque_existential_1(v64);

    sub_21700D7B4();
    v48 = sub_21700E1B4();

    sub_216B7A130(v50, type metadata accessor for HideFromProfileIntent);
    sub_216B7A130(v49, type metadata accessor for ContentDescriptor);
    sub_2168F3EB8(v37);
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
  }

  return v48;
}

uint64_t sub_216B79F48@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1 == 1)
  {
    type metadata accessor for UserSocialProfileCoordinator();
    type metadata accessor for ObjectGraph();
    sub_21700E094();
    sub_21700CC34();
  }

  v3 = *MEMORY[0x277D21CA8];
  v4 = sub_21700D2A4();
  return (*(*(v4 - 8) + 104))(a2, v3, v4);
}

uint64_t sub_216B7A06C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216B7A0B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216B7A130(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216B7A1A4()
{
  result = sub_21700E4D4();
  qword_27CAC4100 = result;
  return result;
}

uint64_t sub_216B7A200()
{
  result = sub_21700E4D4();
  qword_27CAC4108 = result;
  return result;
}

BOOL static DownloadState.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 9) != 1)
  {
    if ((*(a2 + 9) & 1) == 0)
    {
      if (a1[1])
      {
        if (v4)
        {
          return 1;
        }
      }

      else if ((v4 & 1) == 0 && v2 == v3)
      {
        return 1;
      }
    }

    return 0;
  }

  switch(v2)
  {
    case 1:
      if (!*(a2 + 9))
      {
        return 0;
      }

      v3 ^= 1uLL;
      break;
    case 2:
      if (!*(a2 + 9))
      {
        return 0;
      }

      v3 ^= 2uLL;
      break;
    case 3:
      if (!*(a2 + 9))
      {
        return 0;
      }

      v3 ^= 3uLL;
      break;
    case 4:
      return *(a2 + 9) && v3 > 3;
    default:
      if (!*(a2 + 9))
      {
        return 0;
      }

      break;
  }

  return !(v3 | v4);
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DownloadState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DownloadState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 10) = v3;
  return result;
}

uint64_t sub_216B7A37C(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216B7A398(uint64_t result, int a2)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 9) = v2;
  return result;
}

uint64_t dispatch thunk of DownloadManager.downloadItems.getter()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v8 = (*(v0 + 8) + **(v0 + 8));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_9_5(v4);
  *v5 = v6;
  v5[1] = sub_216B7A9E0;

  return v8(v3, v1);
}

uint64_t dispatch thunk of DownloadManager.downloadItems(for:)()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_1_151(v0, v1, v2);
  OUTLINED_FUNCTION_2_120();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_9_5(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_176(v4);

  return v7(v6);
}

uint64_t dispatch thunk of DownloadManager.download(identifiers:)()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_1_151(v0, v1, v2);
  OUTLINED_FUNCTION_2_120();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_9_5(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_176(v4);

  return v7(v6);
}

uint64_t dispatch thunk of DownloadManager.removeDownloads(identifiers:)()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_1_151(v0, v1, v2);
  OUTLINED_FUNCTION_2_120();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_9_5(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_176(v4);

  return v7(v6);
}

uint64_t dispatch thunk of DownloadManager.pauseDownloads(identifiers:)()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_1_151(v0, v1, v2);
  OUTLINED_FUNCTION_2_120();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_9_5(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_176(v4);

  return v7(v6);
}

uint64_t dispatch thunk of DownloadManager.resumeDownloads(identifiers:)()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_1_151(v0, v1, v2);
  OUTLINED_FUNCTION_2_120();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_9_5(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_176(v4);

  return v7(v6);
}

void sub_216B7A9F8()
{
  sub_21700D574();
  if (v0 <= 0x3F)
  {
    sub_2166B41F4();
    if (v1 <= 0x3F)
    {
      sub_217006714();
      if (v2 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_216B7AB58()
{
  OUTLINED_FUNCTION_0_1();
  swift_getKeyPath();
  sub_216B7BBC8();

  return *(v0 + 16);
}

uint64_t sub_216B7ABC8()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216B7AB58();
  *v0 = result;
  return result;
}

uint64_t sub_216B7AC18(char a1)
{
  OUTLINED_FUNCTION_16_0();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_16_0();
  v6 = *(v5 + 88);
  _s14RequestManagerC5StateOMa();
  swift_getWitnessTable();
  result = sub_21669946C();
  if (result)
  {
    MEMORY[0x28223BE20](result);
    OUTLINED_FUNCTION_2_121();
    *(v8 - 16) = v4;
    *(v8 - 8) = v6;
    swift_getKeyPath();
    OUTLINED_FUNCTION_5_87();
    MEMORY[0x28223BE20](v9);
    OUTLINED_FUNCTION_1_152();
    *(v10 - 16) = v1;
    *(v10 - 8) = a1;
    OUTLINED_FUNCTION_6_79();
  }

  else
  {
    *(v1 + 16) = a1;
  }

  return result;
}

uint64_t sub_216B7AD48()
{
  OUTLINED_FUNCTION_0_1();
  swift_getKeyPath();
  sub_216B7BBC8();

  swift_beginAccess();
  return sub_21700DF14();
}

uint64_t sub_216B7ADD0()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216B7AD48();
  *v0 = result;
  return result;
}

uint64_t sub_216B7AE24(uint64_t a1)
{
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  swift_beginAccess();
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4120);
  sub_2166D9530(&qword_27CAC4128, &qword_27CAC4120);
  v5 = sub_21669946C();

  if (v5)
  {
    MEMORY[0x28223BE20](v6);
    OUTLINED_FUNCTION_2_121();
    *(v7 - 16) = *(v4 + 80);
    swift_getKeyPath();
    OUTLINED_FUNCTION_5_87();
    MEMORY[0x28223BE20](v8);
    OUTLINED_FUNCTION_1_152();
    *(v9 - 16) = v1;
    *(v9 - 8) = a1;
    OUTLINED_FUNCTION_6_79();
  }

  else
  {
    *(v1 + 24) = a1;
  }
}

uint64_t sub_216B7AFA8()
{
  OUTLINED_FUNCTION_0_1();
  swift_getKeyPath();
  sub_216B7BBC8();
}

uint64_t sub_216B7B01C()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216B7AFA8();
  *v0 = result;
  return result;
}

uint64_t sub_216B7B070(uint64_t a1)
{
  OUTLINED_FUNCTION_12_3();
  v4 = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8118);
  sub_216B7C0E4();
  v5 = sub_21669946C();

  if (v5)
  {
    MEMORY[0x28223BE20](v6);
    OUTLINED_FUNCTION_2_121();
    *(v7 - 16) = *(v4 + 80);
    swift_getKeyPath();
    OUTLINED_FUNCTION_5_87();
    MEMORY[0x28223BE20](v8);
    OUTLINED_FUNCTION_1_152();
    *(v9 - 16) = v1;
    *(v9 - 8) = a1;
    OUTLINED_FUNCTION_6_79();
  }

  else
  {
    *(v1 + 32) = a1;
  }
}

uint64_t sub_216B7B1AC()
{
  OUTLINED_FUNCTION_0_1();
  swift_getKeyPath();
  sub_216B7BBC8();

  return sub_21700DF14();
}

uint64_t sub_216B7B228()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216B7B1AC();
  *v0 = result;
  return result;
}

uint64_t sub_216B7B27C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_80();
}

uint64_t sub_216B7B324@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_0_1();
  swift_getKeyPath();
  sub_216B7BBC8();

  v3 = qword_280E41B70;
  swift_beginAccess();
  return sub_216861304(v1 + v3, a1);
}

uint64_t sub_216B7B3E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_216861304(a1, &v6 - v3);
  return sub_216B7B47C(v4);
}

uint64_t sub_216B7B47C(uint64_t a1)
{
  OUTLINED_FUNCTION_12_3();
  swift_beginAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_5_87();
  OUTLINED_FUNCTION_7_80();

  return sub_2168116E4(a1);
}

uint64_t sub_216B7B548(uint64_t a1, uint64_t a2)
{
  v4 = qword_280E41B70;
  swift_beginAccess();
  sub_216861520(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_216B7B5B4()
{
  OUTLINED_FUNCTION_0_1();
  swift_getKeyPath();
  sub_216B7BBC8();

  return *(v0 + qword_280E41B60);
}

uint64_t sub_216B7B62C()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216B7B5B4();
  *v0 = result & 1;
  return result;
}

uint64_t sub_216B7B67C()
{
  OUTLINED_FUNCTION_12_3();
  v2 = v1;
  v3 = qword_280E41B60;
  v5 = v4 & 1;
  result = sub_21669946C();
  if (result)
  {
    MEMORY[0x28223BE20](result);
    OUTLINED_FUNCTION_2_121();
    *(v7 - 16) = *(v2 + 80);
    swift_getKeyPath();
    OUTLINED_FUNCTION_10_67();
    MEMORY[0x28223BE20](v8);
    OUTLINED_FUNCTION_1_152();
    *(v9 - 16) = v0;
    *(v9 - 8) = v5;
    OUTLINED_FUNCTION_6_79();
  }

  else
  {
    *(v0 + v3) = v5;
  }

  return result;
}

uint64_t sub_216B7B784()
{
  OUTLINED_FUNCTION_0_1();
  swift_getKeyPath();
  sub_216B7BBC8();

  return *(v0 + qword_280E41AD8);
}

uint64_t sub_216B7B7FC()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216B7B784();
  *v0 = result;
  return result;
}

uint64_t sub_216B7B848(char a1)
{
  v2 = qword_280E41AD8;
  v3 = a1 & 1;
  OUTLINED_FUNCTION_16_0();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_16_0();
  v7 = *(v6 + 88);
  _s14RequestManagerC19PageAppearanceStateOMa();
  swift_getWitnessTable();
  result = sub_21669946C();
  if (result)
  {
    MEMORY[0x28223BE20](result);
    OUTLINED_FUNCTION_2_121();
    *(v9 - 16) = v5;
    *(v9 - 8) = v7;
    swift_getKeyPath();
    OUTLINED_FUNCTION_10_67();
    MEMORY[0x28223BE20](v10);
    OUTLINED_FUNCTION_1_152();
    *(v11 - 16) = v1;
    *(v11 - 8) = v3;
    OUTLINED_FUNCTION_6_79();
  }

  else
  {
    *(v1 + v2) = v3;
  }

  return result;
}

uint64_t sub_216B7B97C()
{
  if (sub_216B7BA2C())
  {
  }

  else
  {

    return sub_216B7AC18(0);
  }
}

uint64_t sub_216B7B9D0(uint64_t a1)
{
  *(v1 + qword_280E41A48) = a1;

  sub_216B7B97C();
}

uint64_t sub_216B7BA2C()
{
  OUTLINED_FUNCTION_0_1();
  swift_getKeyPath();
  sub_216B7BBC8();

  return sub_216B7B9C0();
}

uint64_t sub_216B7BA9C()
{
  sub_216B7B9C0();
  swift_getAssociatedTypeWitness();
  sub_21700F164();

  swift_getKeyPath();
  OUTLINED_FUNCTION_7_80();
}

uint64_t sub_216B7BD38()
{

  v1 = qword_280E41B68;
  sub_21700D574();
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);

  sub_2168116E4(v0 + qword_280E41B70);

  v3 = qword_280E41AD0;
  sub_217006714();
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_216B7BE40()
{
  sub_216B7BD38();
  OUTLINED_FUNCTION_12_3();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

_BYTE *sub_216B7BEAC(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_216B7BF90(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_216B7C0E4()
{
  result = qword_27CAC4110;
  if (!qword_27CAC4110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8118);
    sub_2166D9530(&qword_27CAC4118, &qword_27CAC0990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4110);
  }

  return result;
}

unint64_t sub_216B7C198()
{
  v1 = v0;
  v2 = sub_2170067A4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D2A400])
  {
    v8 = 0x6D75626C61;
    goto LABEL_20;
  }

  if (v7 == *MEMORY[0x277D2A418])
  {
    v8 = 0x747369747261;
    goto LABEL_20;
  }

  if (v7 == *MEMORY[0x277D2A438])
  {
    v8 = 0x7265736F706D6F63;
    goto LABEL_20;
  }

  if (v7 == *MEMORY[0x277D2A3C8])
  {
    v8 = 0x7241746964657263;
    goto LABEL_20;
  }

  v8 = 0x726F7461727563;
  if (v7 != *MEMORY[0x277D2A428] && v7 != *MEMORY[0x277D2A388])
  {
    if (v7 == *MEMORY[0x277D2A408])
    {
      v10 = 1919837543;
LABEL_19:
      v8 = v10 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      goto LABEL_20;
    }

    if (v7 == *MEMORY[0x277D2A3B0])
    {
      v10 = 1769369453;
      goto LABEL_19;
    }

    if (v7 == *MEMORY[0x277D2A3B8])
    {
      v8 = 0x646956636973756DLL;
    }

    else if (v7 == *MEMORY[0x277D2A440] || v7 == *MEMORY[0x277D2A3E8])
    {
      v8 = 0x7473696C79616C70;
    }

    else if (v7 != *MEMORY[0x277D2A450])
    {
      if (v7 == *MEMORY[0x277D2A3C0])
      {
        v8 = 0x614C64726F636572;
      }

      else if (v7 == *MEMORY[0x277D2A3D0])
      {
        v8 = 0x65506C6169636F73;
      }

      else if (v7 == *MEMORY[0x277D2A3F8])
      {
        v8 = 1735290739;
      }

      else if (v7 == *MEMORY[0x277D2A430])
      {
        v8 = 0x6174536F69646172;
      }

      else if (v7 == *MEMORY[0x277D2A458])
      {
        v8 = 0x646F736970457674;
      }

      else if (v7 == *MEMORY[0x277D2A448])
      {
        v8 = 0x6E6F736165537674;
      }

      else if (v7 == *MEMORY[0x277D2A420])
      {
        v8 = 0x776F68537674;
      }

      else
      {
        v8 = 0x646564616F6C7075;
        if (v7 != *MEMORY[0x277D2A3D8] && v7 != *MEMORY[0x277D2A3E0])
        {
          v8 = 0x6E776F6E6B6E75;
        }
      }
    }
  }

LABEL_20:
  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t sub_216B7C624(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  *(v1 + 16) = a1;
  type metadata accessor for ObjectGraph();

  sub_21700E094();

  (*(v5 + 32))(v1 + OBJC_IVAR____TtC7MusicUI28GoToArtistMenuActionProvider_actionDispatcher, v8, v3);
  return v1;
}

void sub_216B7C728()
{
  OUTLINED_FUNCTION_49();
  v5 = OUTLINED_FUNCTION_5_88();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_122();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_55_1();
  sub_21700C1E4();
  OUTLINED_FUNCTION_34();
  (*(v9 + 16))(v4, v1);
  swift_storeEnumTagMultiPayload();
  sub_21700C164();
  OUTLINED_FUNCTION_7_81();
  v10 = OUTLINED_FUNCTION_4_98();
  sub_216B7C8A0(v10, v11, v5, v3, v2, v12, 0xE500000000000000, v13, v14);

  OUTLINED_FUNCTION_1_153();
  sub_21678C1C4();
  OUTLINED_FUNCTION_10_68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = v0;
  sub_2167A2998(inited);
  swift_setDeallocating();
  sub_2169FAC94();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216B7C8A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned __int8 *a8@<X7>, uint64_t a9@<X8>)
{
  v90 = a7;
  v89 = a6;
  v110 = a4;
  v103 = a3;
  v101 = a2;
  v115 = a1;
  v113 = sub_2170075A4();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v109 = v12;
  v111 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for GoToArtistAction(0);
  v106 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v108 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = v13;
  MEMORY[0x28223BE20](v14);
  v104 = &v83 - v15;
  v102 = sub_21700CFB4();
  v100 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v99 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_217005EF4();
  v85 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v84 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21700D704();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v95 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v96 = &v83 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v21 - 8);
  v87 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v116 = &v83 - v24;
  v94 = sub_21700D284();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_21700C1E4();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for GoToArtistContext(0);
  MEMORY[0x28223BE20](v30);
  v32 = &v83 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v33);
  v35 = &v83 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = *a8;
  v36 = type metadata accessor for MenuConfiguration(0);
  v37 = *(v36 + 20);
  v88 = a5;
  sub_216B7DED0(a5 + v37, v35, type metadata accessor for MenuContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_216B7DCF0(v35, type metadata accessor for MenuContext);
  if (EnumCaseMultiPayload != 5)
  {
    goto LABEL_5;
  }

  v39 = a9;
  sub_216B7DED0(v115, v32, type metadata accessor for GoToArtistContext);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    (*(v27 + 32))(v29, v32, v26);
    v40 = sub_21700C124();
    (*(v27 + 8))(v29, v26);
    if (v40 != 2 && (v40 & 1) != 0)
    {
LABEL_5:
      v41 = type metadata accessor for MenuAction();
      return __swift_storeEnumTagSinglePayload(a9, 1, 1, v41);
    }
  }

  else
  {
    sub_216B7DCF0(v32, type metadata accessor for GoToArtistContext);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217015230;
  *(inited + 32) = 0x4E6E6F6974636573;
  *(inited + 40) = 0xEB00000000656D61;
  v44 = (v88 + *(v36 + 36));
  v45 = v44[1];
  v46 = MEMORY[0x277D837D0];
  *(inited + 48) = *v44;
  *(inited + 56) = v45;
  *(inited + 72) = v46;
  *(inited + 80) = 1684957547;
  v47 = v89;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = v47;
  *(inited + 104) = v90;
  *(inited + 120) = v46;
  *(inited + 128) = 0x657461676976616ELL;
  *(inited + 168) = v46;
  *(inited + 136) = 0xEA00000000006F54;
  *(inited + 144) = 0x747369747261;
  *(inited + 152) = 0xE600000000000000;
  sub_21700DF14();
  sub_21700DF14();
  v48 = sub_21700E384();
  v49 = v91;
  __swift_storeEnumTagSinglePayload(v116, 1, 1, v91);
  v50 = v96;
  sub_21700D6F4();
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
  *&v119 = v48;
  sub_2166EF9C4(&v119, &v118);
  v51 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v117 = v51;
  sub_2166EF9D4();
  v52 = v117;
  v120 = v46;
  v53 = 0xE800000000000000;
  *&v119 = 0x657461676976616ELL;
  *(&v119 + 1) = 0xE800000000000000;
  sub_2166EF9C4(&v119, &v118);
  swift_isUniquelyReferenced_nonNull_native();
  v117 = v52;
  sub_2166EF9D4();
  v54 = v117;
  v55 = 0x6472616F6279656BLL;
  switch(v86)
  {
    case 1:
      v53 = 0xE500000000000000;
      v55 = 0x79726F7473;
      break;
    case 2:
      v53 = 0xE400000000000000;
      v55 = 1701998445;
      break;
    case 3:
      v53 = 0xE500000000000000;
      v55 = 0x636972796CLL;
      break;
    case 4:
      v55 = 0xD000000000000010;
      v53 = 0x80000002170801D0;
      break;
    case 5:
      v53 = 0x80000002170801F0;
      v55 = 0xD000000000000012;
      break;
    case 6:
      v53 = 0xE900000000000075;
      v55 = 0x6E654D6570697773;
      break;
    case 7:
      v53 = 0x8000000217080210;
      v55 = 0xD000000000000015;
      break;
    default:
      break;
  }

  v120 = v46;
  *&v119 = v55;
  *(&v119 + 1) = v53;
  sub_2166EF9C4(&v119, &v118);
  swift_isUniquelyReferenced_nonNull_native();
  v117 = v54;
  sub_2166EF9D4();
  v56 = v117;
  v57 = v87;
  sub_2167DE934(v116, v87);
  if (__swift_getEnumTagSinglePayload(v57, 1, v49) == 1)
  {
    sub_216697664(v57, &qword_27CABA820);
  }

  else
  {
    v58 = v85;
    v59 = v84;
    (*(v85 + 32))(v84, v57, v49);
    v60 = sub_217005DE4();
    v120 = v46;
    *&v119 = v60;
    *(&v119 + 1) = v61;
    sub_2166EF9C4(&v119, &v118);
    swift_isUniquelyReferenced_nonNull_native();
    v117 = v56;
    sub_2166EF9D4();
    v56 = v117;
    (*(v58 + 8))(v59, v49);
  }

  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v62 = sub_21700CF84();
  v63 = __swift_project_value_buffer(v62, qword_280E73DB0);
  v64 = v99;
  MEMORY[0x21CE9DD70](v101, v103, 0x6E6F74747562, 0xE600000000000000, v56, v63);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
  v65 = v100;
  v66 = (*(v100 + 80) + 32) & ~*(v100 + 80);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_217013DA0;
  v68 = v67 + v66;
  v69 = v102;
  (*(v65 + 16))(v68, v64, v102);
  v70 = v97;
  v71 = v98;
  (*(v97 + 16))(v95, v50, v98);
  v72 = v92;
  sub_21700D244();
  (*(v65 + 8))(v64, v69);
  (*(v70 + 8))(v50, v71);
  sub_216697664(v116, &qword_27CABA820);
  v73 = v104;
  sub_216B7DED0(v115, v104, type metadata accessor for GoToArtistContext);
  (*(v93 + 32))(v73 + *(v105 + 20), v72, v94);
  type metadata accessor for MenuActionType();
  swift_storeEnumTagMultiPayload();
  v74 = v108;
  sub_216B7DD48(v73, v108);
  v75 = v112;
  v76 = v111;
  v77 = v113;
  (*(v112 + 16))(v111, v110, v113);
  v78 = (*(v106 + 80) + 24) & ~*(v106 + 80);
  v79 = (v107 + *(v75 + 80) + v78) & ~*(v75 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = v114;
  sub_216B7DD48(v74, v80 + v78);
  (*(v75 + 32))(v80 + v79, v76, v77);
  v81 = type metadata accessor for MenuAction();
  v82 = (v39 + *(v81 + 20));
  *v82 = sub_216B7DDAC;
  v82[1] = v80;
  __swift_storeEnumTagSinglePayload(v39, 0, 1, v81);
}

void sub_216B7D720()
{
  OUTLINED_FUNCTION_49();
  v5 = OUTLINED_FUNCTION_5_88();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_122();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_55_1();
  sub_21700BA44();
  OUTLINED_FUNCTION_34();
  (*(v9 + 16))(v4, v1);
  swift_storeEnumTagMultiPayload();
  sub_21700B9F4();
  OUTLINED_FUNCTION_7_81();
  v10 = OUTLINED_FUNCTION_4_98();
  sub_216B7C8A0(v10, v11, v5, v3, v2, v12, 0xEA00000000006F65, v13, v14);

  OUTLINED_FUNCTION_1_153();
  sub_21678C1C4();
  OUTLINED_FUNCTION_10_68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = v0;
  sub_2167A2998(inited);
  swift_setDeallocating();
  sub_2169FAC94();
  OUTLINED_FUNCTION_26();
}

void sub_216B7D8A0()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_5_88();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_122();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_55_1();
  type metadata accessor for MenuContext(v8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(type metadata accessor for MenuConfiguration(0) + 20);
  swift_storeEnumTagMultiPayload();
  v13 = sub_216B88F54(v1 + v12, v11);
  sub_216B7DCF0(v11, type metadata accessor for MenuContext);
  if (v13)
  {
    v14 = 4;
  }

  else
  {
    v14 = 7;
  }

  sub_21700C084();
  OUTLINED_FUNCTION_34();
  (*(v15 + 16))(v3, v0);
  swift_storeEnumTagMultiPayload();
  sub_21700BFF4();
  v17 = v16;
  v24[47] = v14;
  v18 = OUTLINED_FUNCTION_4_98();
  sub_216B7C8A0(v18, v19, v17, v2, v1, 1735290739, 0xE400000000000000, v20, v21);

  OUTLINED_FUNCTION_1_153();
  v22 = sub_21678C1C4();
  sub_216697664(v4, &qword_27CAB6DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = v22;
  sub_2167A2998(inited);
  swift_setDeallocating();
  sub_2169FAC94();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216B7DAC8(uint64_t a1, uint64_t a2)
{
  v5[3] = type metadata accessor for GoToArtistAction(0);
  v5[4] = sub_216B7DE78();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  sub_216B7DED0(a2, boxed_opaque_existential_1, type metadata accessor for GoToArtistAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  sub_21700D594();

  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t sub_216B7DB88()
{

  v1 = OBJC_IVAR____TtC7MusicUI28GoToArtistMenuActionProvider_actionDispatcher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for GoToArtistMenuActionProvider()
{
  result = qword_280E323B8;
  if (!qword_280E323B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216B7DCF0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216B7DD48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GoToArtistAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B7DDAC()
{
  v1 = *(type metadata accessor for GoToArtistAction(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = sub_2170075A4();
  OUTLINED_FUNCTION_36(v3);
  v4 = *(v0 + 16);

  return sub_216B7DAC8(v4, v0 + v2);
}

unint64_t sub_216B7DE78()
{
  result = qword_27CAC4130;
  if (!qword_27CAC4130)
  {
    type metadata accessor for GoToArtistAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4130);
  }

  return result;
}

uint64_t sub_216B7DED0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216B7DF80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v41 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v38 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  sub_21700CE04();
  v16 = sub_21700CDB4();
  v18 = v17;
  v19 = *(v11 + 8);
  v36 = v11 + 8;
  v37 = v9;
  v34 = v19;
  v19(v15, v9);
  if (v18)
  {
    v39 = v16;
    v40 = v18;
    v33 = a3;
    sub_21700F364();
    sub_21700D7A4();
    sub_21700CE04();
    v31 = *(v38 + 16);
    v20 = v35;
    v21 = v41;
    v31(v8, v35, v41);
    FriendsPageSectionLockup = type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup();
    OUTLINED_FUNCTION_0_177();
    sub_21700D734();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4138);
    v30 = a1;
    sub_21700CE04();
    v22 = v21;
    v23 = v31;
    v31(v8, v20, v22);
    sub_216B7E444();
    OUTLINED_FUNCTION_0_177();
    sub_21700D734();
    *(v33 + *(FriendsPageSectionLockup + 24)) = v39;
    sub_21700CE04();
    v24 = v41;
    v23(v8, v20, v41);
    OUTLINED_FUNCTION_0_177();
    sub_21700D734();
    (*(v38 + 8))(v20, v24);
    result = v34(v30, v37);
    *(v33 + *(FriendsPageSectionLockup + 28)) = v39;
  }

  else
  {
    v26 = sub_21700E2E4();
    sub_216B7E4F8(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    v28 = v27;
    v29 = type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup();
    *v28 = 25705;
    v28[1] = 0xE200000000000000;
    v28[2] = v29;
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D22530], v26);
    swift_willThrow();
    (*(v38 + 8))(v35, v41);
    return v34(a1, v37);
  }

  return result;
}

unint64_t sub_216B7E444()
{
  result = qword_27CAC4140;
  if (!qword_27CAC4140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4138);
    sub_216B7E4F8(&qword_280E2DC20, type metadata accessor for SocialOnboardingFindFriendsPageLockup);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4140);
  }

  return result;
}

uint64_t sub_216B7E4F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ListenNowPageIntent()
{
  result = qword_280E3DBC0;
  if (!qword_280E3DBC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216B7E5B4()
{
  sub_216692630(319, &qword_280E4A510, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    sub_216692630(319, &qword_280E44870, type metadata accessor for ReferrerInfo);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

id sub_216B7E6B8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v16 - v5;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v8 = result;
    sub_2166F1DCC();
    v9 = type metadata accessor for ListenNowPageIntent();
    v16[0] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2D28);
    v10 = sub_21700E594();
    v16[3] = MEMORY[0x277D837D0];
    v16[0] = v10;
    v16[1] = v11;
    v12 = a1;
    v13 = sub_2166F1E10(v16, a1);
    sub_2166F1F64(v13);
    sub_2168CC268(v2 + *(v9 + 20), v6);
    v14 = type metadata accessor for ReferrerInfo();
    if (__swift_getEnumTagSinglePayload(v6, 1, v14) == 1)
    {
      sub_2168CC2D8(v6);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(v12).super.isa;
      sub_216B7EB84(v6, type metadata accessor for ReferrerInfo);
    }

    sub_2166F1F64(isa);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216B7E88C@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for AnyPageRequestBody.OneOf_InnerBody(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_217007874();
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for AnyPageRequest(0);
  v10 = v6;
  v11 = v1;
  sub_2166CE6FC(&qword_27CAC4148, type metadata accessor for AnyPageRequest);
  sub_217007A44();
  result = sub_216B7EB84(v6, type metadata accessor for AnyPageRequestBody.OneOf_InnerBody);
  if (!v2)
  {
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v7);
  }

  return result;
}

uint64_t sub_216B7EA44(uint64_t a1)
{
  result = sub_2166CE6FC(&qword_280E3DBD8, type metadata accessor for ListenNowPageIntent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216B7EAE4(uint64_t a1)
{
  *(a1 + 8) = sub_2166CE6FC(&qword_280E3DBD8, type metadata accessor for ListenNowPageIntent);
  result = sub_2166CE6FC(&qword_280E3DBE0, type metadata accessor for ListenNowPageIntent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_216B7EB84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for ShowInAppleMusicAction()
{
  result = qword_280E48148;
  if (!qword_280E48148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216B7EC58()
{
  sub_21700D284();
  if (v0 <= 0x3F)
  {
    sub_2166D90EC();
    if (v1 <= 0x3F)
    {
      sub_216688154();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_216B7ECF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v45 - v6;
  v7 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v59 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v47 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v55 = v15;
  v56 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v46 = v16;
  MEMORY[0x28223BE20](v17);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v49 = v19;
  v50 = v18;
  MEMORY[0x28223BE20](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ShowInAppleMusicAction();
  v23 = *(v22 + 20);
  v24 = type metadata accessor for ContentDescriptor();
  v54 = v23;
  __swift_storeEnumTagSinglePayload(a3 + v23, 1, 1, v24);
  v25 = *(v22 + 24);
  v57 = a1;
  v58 = a3;
  v26 = (a3 + v25);
  *v26 = 0;
  v26[1] = 0;
  sub_21700CE04();
  v27 = v59;
  v28 = *(v59 + 16);
  v29 = v52;
  v51 = v7;
  v28(v13);
  v30 = v53;
  sub_21700D224();
  if (v30)
  {
    (*(v27 + 8))(v29, v51);
    (*(v55 + 8))(v57, v56);
    return sub_2168F3EB8(v58 + v54);
  }

  else
  {
    v53 = v24;
    v31 = v58;
    (*(v49 + 32))(v58, v21, v50);
    v32 = v46;
    v33 = v57;
    sub_21700CE04();
    v34 = v47;
    (v28)(v47, v29, v51);
    v35 = v48;
    ContentDescriptor.init(deserializing:using:)(v32, v34, v36, v37, v38, v39, v40, v41, v45, v46, SWORD2(v46), SBYTE6(v46), SHIBYTE(v46));
    v43 = OUTLINED_FUNCTION_1_154();
    v44(v43);
    (*(v55 + 8))(v33, v56);
    __swift_storeEnumTagSinglePayload(v35, 0, 1, v53);
    return sub_216A765E0(v35, v31 + v54);
  }
}

uint64_t sub_216B7F12C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4150);
  __swift_allocate_value_buffer(v0, qword_27CB229F8);
  __swift_project_value_buffer(v0, qword_27CB229F8);
  return sub_21700DA54();
}

void sub_216B7F1A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4160);
  MEMORY[0x28223BE20](v5);
  v7 = v58 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4168);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v58 - v13;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v61 = v12;
    v62 = v14;
    v63 = v9;
    v64 = a1;
    v65 = v8;
    v16 = Strong;
    sub_216B803CC(a1, v7, type metadata accessor for FlowAction);
    v17 = type metadata accessor for FlowActionPageView();
    *&v7[*(v17 + 20)] = a3;
    v18 = &v7[*(v17 + 24)];
    type metadata accessor for MusicStackAuthority();
    sub_2166B4CA8(&qword_280E46D08, type metadata accessor for MusicStackAuthority);

    *v18 = sub_217008CF4();
    v18[1] = v19;
    v20 = sub_217007D54();
    v60 = v5;
    v21 = *(v5 + 36);
    v59 = v7;
    v22 = &v7[v21];
    *v22 = v20;
    v22[1] = v16;
    v23 = objc_opt_self();
    v58[3] = v16;

    v24 = [v23 sharedApplication];
    v25 = [v24 connectedScenes];

    v26 = sub_2169657E4();
    sub_2166B4CA8(&qword_280E29B28, sub_2169657E4);
    v27 = sub_21700EB84();

    v58[2] = v27;
    v66 = v26;
    if ((v27 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_21700F264();
      sub_21700EBC4();
      v27 = v71;
      v28 = v72;
      v29 = v73;
      v30 = v74;
      v31 = v75;
    }

    else
    {
      v32 = -1 << *(v27 + 32);
      v28 = v27 + 56;
      v33 = ~v32;
      v34 = -v32;
      if (v34 < 64)
      {
        v35 = ~(-1 << v34);
      }

      else
      {
        v35 = -1;
      }

      v31 = v35 & *(v27 + 56);
      sub_21700DF14();
      v29 = v33;
      v30 = 0;
    }

    v58[1] = v29;
    v36 = (v29 + 64) >> 6;
    v69 = *MEMORY[0x277D772C8];
    if (v27 < 0)
    {
      goto LABEL_16;
    }

LABEL_10:
    v37 = v30;
    v38 = v31;
    v39 = v30;
    if (v31)
    {
LABEL_14:
      v40 = (v38 - 1) & v38;
      v41 = *(*(v27 + 48) + ((v39 << 9) | (8 * __clz(__rbit64(v38)))));
      if (v41)
      {
        while (1)
        {
          v67 = v31;
          v68 = v30;
          v43 = v27;
          v44 = [v41 session];
          v45 = [v44 role];

          v46 = sub_21700E514();
          v48 = v47;
          if (v46 == sub_21700E514() && v48 == v49)
          {
            break;
          }

          v51 = sub_21700F7D4();

          if (v51)
          {
            goto LABEL_27;
          }

          v30 = v39;
          v31 = v40;
          v27 = v43;
          if ((v43 & 0x8000000000000000) == 0)
          {
            goto LABEL_10;
          }

LABEL_16:
          v42 = sub_21700F2E4();
          if (!v42)
          {
            goto LABEL_25;
          }

          v70 = v42;
          swift_dynamicCast();
          v41 = v76[0];
          v39 = v30;
          v40 = v31;
          if (!v76[0])
          {
            goto LABEL_27;
          }
        }
      }

LABEL_27:
      sub_216687978();

      sub_216B80434();
      v52 = v62;
      v53 = v59;
      sub_21700A1D4();

      sub_216B804F0(v53);
      v54 = v63;
      v55 = v61;
      v56 = v65;
      (*(v63 + 16))(v61, v52, v65);
      sub_216EB0ED4(v76);
      v57 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4178));
      sub_216B80268(v55, v76);

      (*(v54 + 8))(v52, v56);
    }

    else
    {
      while (1)
      {
        v39 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v39 >= v36)
        {
LABEL_25:
          v41 = 0;
          goto LABEL_27;
        }

        v38 = *(v28 + 8 * v39);
        ++v37;
        if (v38)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }
}

void sub_216B7F7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v83 = a3;
  v82 = a1;
  v7 = type metadata accessor for MusicAppDestinationContext(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v79 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = *(a4 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v76 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = v68 - v13;
  v15 = type metadata accessor for AppDestinationPageView();
  v78 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = v68 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A88);
  v18 = sub_2170089F4();
  v72 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v81 = v68 - v19;
  WitnessTable = swift_getWitnessTable();
  v21 = sub_216A528D0();
  v85 = WitnessTable;
  v86 = v21;
  v22 = swift_getWitnessTable();
  v73 = v18;
  v87 = v18;
  v88 = v22;
  v70 = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v74 = *(OpaqueTypeMetadata2 - 8);
  v23 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v71 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = v68 - v25;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v80 = Strong;
    if ((*(a5 + 152))(a4, a5))
    {
      swift_getAssociatedConformanceWitness();
      v28 = type metadata accessor for WrappedAppPageDestination();
      (*(a5 + 160))(v82, v80, v82 + *(v28 + 40), a4, a5);
    }

    else
    {
      v69 = v26;
      v29 = v82;
      (*(v76 + 16))(v14, v82, AssociatedTypeWitness);
      (*(v77 + 16))(v11, v83, a4);
      swift_getAssociatedConformanceWitness();
      v76 = type metadata accessor for WrappedAppPageDestination();
      v30 = v29 + *(v76 + 40);
      v31 = v79;
      sub_216B803CC(v30, v79, type metadata accessor for MusicAppDestinationContext);
      sub_216B5EEBC(v14, v11, v31, a4, v17);
      type metadata accessor for MusicStackAuthority();
      sub_2166B4CA8(&qword_280E46D08, type metadata accessor for MusicStackAuthority);
      sub_21700A654();
      (*(v78 + 8))(v17, v15);
      v32 = [objc_opt_self() sharedApplication];
      v33 = [v32 connectedScenes];

      v34 = sub_2169657E4();
      sub_2166B4CA8(&qword_280E29B28, sub_2169657E4);
      v35 = sub_21700EB84();

      v68[2] = v35;
      v77 = v34;
      if ((v35 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_21700F264();
        sub_21700EBC4();
        v35 = v87;
        v36 = v88;
        v37 = v89;
        v38 = v90;
        v39 = v91;
      }

      else
      {
        v40 = -1 << *(v35 + 32);
        v36 = v35 + 56;
        v37 = ~v40;
        v41 = -v40;
        if (v41 < 64)
        {
          v42 = ~(-1 << v41);
        }

        else
        {
          v42 = -1;
        }

        v39 = v42 & *(v35 + 56);
        sub_21700DF14();
        v38 = 0;
      }

      v68[1] = v37;
      v43 = (v37 + 64) >> 6;
      v83 = *MEMORY[0x277D772C8];
      if (v35 < 0)
      {
        goto LABEL_18;
      }

LABEL_12:
      v44 = v38;
      v45 = v39;
      v46 = v38;
      if (v39)
      {
LABEL_16:
        v47 = (v45 - 1) & v45;
        v48 = *(*(v35 + 48) + ((v46 << 9) | (8 * __clz(__rbit64(v45)))));
        if (v48)
        {
          while (1)
          {
            v79 = v38;
            v78 = v39;
            v50 = v35;
            v51 = [v48 session];
            v52 = [v51 role];

            v53 = sub_21700E514();
            v55 = v54;
            if (v53 == sub_21700E514() && v55 == v56)
            {
              break;
            }

            v58 = sub_21700F7D4();

            if (v58)
            {
              goto LABEL_29;
            }

            v38 = v46;
            v39 = v47;
            v35 = v50;
            if ((v50 & 0x8000000000000000) == 0)
            {
              goto LABEL_12;
            }

LABEL_18:
            v49 = sub_21700F2E4();
            if (!v49)
            {
              goto LABEL_27;
            }

            *&v96 = v49;
            swift_dynamicCast();
            v48 = v92;
            v46 = v38;
            v47 = v39;
            if (!v92)
            {
              goto LABEL_29;
            }
          }
        }

LABEL_29:
        sub_216687978();

        v59 = v69;
        v60 = v73;
        v61 = v70;
        v62 = v81;
        sub_21700A1D4();

        (*(v72 + 8))(v62, v60);
        *&v92 = v60;
        *(&v92 + 1) = v61;
        swift_getOpaqueTypeConformance2();
        v63 = OpaqueTypeMetadata2;
        type metadata accessor for PageHostingController();
        v64 = v74;
        v65 = v71;
        (*(v74 + 16))(v71, v59, v63);
        v66 = (v82 + *(v76 + 48));
        v67 = v66[1];
        v92 = *v66;
        v93 = v67;
        v94 = *(v66 + 16);
        v95 = v92;
        v96 = v67;
        sub_216A2841C(&v95, v84);
        sub_216A2841C(&v96, v84);
        sub_2166CBBF4(v65);

        (*(v64 + 8))(v59, v63);
      }

      else
      {
        while (1)
        {
          v46 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            break;
          }

          if (v46 >= v43)
          {
LABEL_27:
            v48 = 0;
            goto LABEL_29;
          }

          v45 = *(v36 + 8 * v46);
          ++v44;
          if (v45)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
      }
    }
  }
}

uint64_t sub_216B80268(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4168);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  v9 = v2 + *((*MEMORY[0x277D85000] & *v2) + qword_280E73C80 + 16);
  v10 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 1) = v10;
  *(v9 + 16) = *(a2 + 32);
  (*(v6 + 16))(v8, a1, v5);
  v11 = sub_217009444();
  (*(v6 + 8))(a1, v5);
  return v11;
}

uint64_t sub_216B803CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_216B80434()
{
  result = qword_27CAC4170;
  if (!qword_27CAC4170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4160);
    sub_2166B4CA8(qword_280E3F018, type metadata accessor for FlowActionPageView);
    sub_216A528D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4170);
  }

  return result;
}

uint64_t sub_216B804F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216B80558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v36 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - v8;
  v10 = sub_217005AB4();
  OUTLINED_FUNCTION_1();
  v36 = v11;
  MEMORY[0x28223BE20](v12);
  v39 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2C90);
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  type metadata accessor for OpenFinancePageAction.Kind(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v20);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216B80B24(a1, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = a3;
    v24 = sub_21700E4D4();
    sub_21700DFC4();

    sub_21700DFA4();
    (*(v16 + 8))(v19, v14);
    MEMORY[0x21CE9F490](0xD000000000000012, 0x8000000217089C70);
    v26 = v40;
    v25 = v41;
    sub_217005A94();
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      sub_216697664(v9, &qword_27CAB6BD0);
      sub_216B80BA8();
      swift_allocError();
      *v27 = v26;
      v27[1] = v25;
      return swift_willThrow();
    }

    else
    {
      v30 = v10;

      v31 = v36;
      (*(v36 + 32))(v39, v9, v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6AC8);
      sub_2170059B4();
      *(swift_allocObject() + 16) = xmmword_217013DA0;
      sub_217005984();

      v32 = v39;
      sub_2170059D4();
      v33 = v37;
      sub_2170059F4();
      v34 = sub_217005EF4();
      if (__swift_getEnumTagSinglePayload(v33, 1, v34) == 1)
      {
        sub_216697664(v33, &qword_27CABA820);
        sub_216B80BA8();
        swift_allocError();
        *v35 = 0;
        v35[1] = 0;
        swift_willThrow();
        return (*(v31 + 8))(v32, v30);
      }

      else
      {
        (*(v31 + 8))(v32, v30);
        return (*(*(v34 - 8) + 32))(v23, v33);
      }
    }
  }

  else
  {
    sub_217005EF4();
    OUTLINED_FUNCTION_34();
    return (*(v29 + 32))(a3, v22);
  }
}

uint64_t sub_216B80B24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenFinancePageAction.Kind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_216B80BA8()
{
  result = qword_27CAC4180;
  if (!qword_27CAC4180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4180);
  }

  return result;
}

uint64_t sub_216B80C28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4190);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_105();
  v28 = v6;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4198);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_105();
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC41A0);
  OUTLINED_FUNCTION_1();
  v27 = v12;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_105();
  v26 = v14;
  v15 = *(a1 + 16);
  v16 = MEMORY[0x277D84F90];
  v29 = v17;
  v30 = v2;
  if (v15)
  {
    v24 = v4;
    v32 = MEMORY[0x277D84F90];
    sub_2166F4258();
    v18 = a1 + 32;
    do
    {
      sub_2167ADC3C(v18, v31);
      v20 = v31[2];
      v19 = v31[3];
      sub_21700DF14();
      sub_2167ADC98(v31);
      v32 = v16;
      v21 = *(v16 + 16);
      if (v21 >= *(v16 + 24) >> 1)
      {
        sub_2166F4258();
        v16 = v32;
      }

      *(v16 + 16) = v21 + 1;
      v22 = v16 + 16 * v21;
      *(v22 + 32) = v20;
      *(v22 + 40) = v19;
      v18 += 72;
      --v15;
    }

    while (v15);
    v2 = v30;
    v4 = v24;
  }

  v32 = v16;
  (*(v8 + 104))(v11, *MEMORY[0x277CC8AF0], v25);
  (*(v4 + 104))(v28, *MEMORY[0x277CC8B00], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
  sub_2166D9530(&qword_280E29E30, &qword_27CAB74F8);
  sub_217005864();
  (*(v4 + 8))(v28, v30);
  (*(v8 + 8))(v11, v25);
  sub_2166D9530(&qword_280E4A518, &qword_27CAC41A0);
  sub_21700E744();
  (*(v27 + 8))(v26, v29);

  return v31[0];
}

uint64_t sub_216B80FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = type metadata accessor for ContainerDetailHeaderView.ArtworkData(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  v78 = type metadata accessor for ContainerDetailHeaderView(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4188);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_105();
  v81 = v13;
  v14 = type metadata accessor for AlbumDetailHeaderLockup();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v18 = v17 - v16;
  v19 = sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v79 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v71 - v25;
  sub_216CCC4A8();
  sub_216DEA0E8();
  sub_216681B04(v18 + v14[13], v7, &qword_27CAB6D60);
  v27 = *(v4 + 28);
  v28 = v18 + v14[14];
  v76 = v7;
  sub_216681B04(v28, v7 + v27, &qword_27CABBEA8);
  v29 = (v18 + v14[6]);
  v30 = v29[1];
  if (v30)
  {
    v75 = *v29;
    v74 = v30;
  }

  else
  {
    v75 = sub_21700C184();
    v74 = v31;
  }

  v32 = *(v18 + v14[7]);
  v77 = v26;
  if (v32 && *(v32 + 16))
  {
    sub_21700DF14();
    v33 = sub_216B80C28(v32);
    OUTLINED_FUNCTION_4_99(v33, v34);
  }

  else
  {
    sub_21700DF14();
    v35 = sub_21700C0C4();
    OUTLINED_FUNCTION_4_99(v35, v36);
    if (!v32)
    {
      goto LABEL_11;
    }
  }

  sub_216CE09CC(v32, &v83);
  if (v83.n128_u64[1])
  {
    sub_216681B04(v85, &v86, &qword_27CAB6DB0);
    sub_2167ADC98(&v83);
    goto LABEL_12;
  }

  sub_216697664(&v83, &qword_27CAB8100);
LABEL_11:
  v86 = 0u;
  v87 = 0u;
  v88 = 0;
LABEL_12:
  v37 = sub_216CCC4A8();
  sub_2168A5DB0(v37, v38, v39, v40, v41, v42, v43, v44, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
  v46 = v45;
  v79 = *(v79 + 8);
  (v79)(v23, v19);
  v83 = v86;
  v84 = v87;
  v85[0] = v88;
  v47 = v46 & 1;
  v48 = (v18 + v14[8]);
  v71 = v19;
  v50 = *v48;
  v49 = v48[1];
  v51 = a1;
  if (*(v18 + v14[11]))
  {
    v52 = *(v18 + v14[11]);
  }

  else
  {
    v52 = MEMORY[0x277D84F90];
  }

  sub_21700DF14();
  sub_21700DF14();
  v53 = sub_216B8159C(v51);
  v54 = v14[9];
  v55 = v78;
  sub_216681B04(v18 + v54, v11 + v78[8], &qword_27CABBE20);
  sub_216B81CA4(v76, v11, type metadata accessor for ContainerDetailHeaderView.ArtworkData);
  v56 = v11 + v55[5];
  v57 = v74;
  *v56 = v75;
  *(v56 + 8) = v57;
  v58 = v72;
  *(v56 + 16) = v73;
  *(v56 + 24) = v58;
  v59 = v84;
  *(v56 + 32) = v83;
  *(v56 + 48) = v59;
  *(v56 + 64) = v85[0];
  *(v56 + 72) = v47;
  v60 = (v11 + v55[6]);
  *v60 = v50;
  v60[1] = v49;
  v60[2] = v52;
  *(v11 + v55[7]) = v53;
  v61 = v11 + v55[9];
  *v61 = swift_getKeyPath();
  *(v61 + 8) = 0;
  v62 = v11 + v55[10];
  *v62 = swift_getKeyPath();
  *(v62 + 8) = 0;
  *(v62 + 16) = 0;
  *(v62 + 24) = 0;
  *(v62 + 32) = 0;
  v63 = v11 + v55[11];
  *v63 = swift_getKeyPath();
  *(v63 + 8) = 0;
  v64 = v71;
  *(&v84 + 1) = v71;
  v85[0] = MEMORY[0x277CD82B8];
  __swift_allocate_boxed_opaque_existential_1(&v83);
  sub_216CCC4A8();
  v65 = v81;
  v66 = (v81 + *(v80 + 36));
  sub_2167B7D58(&v83, (v66 + 2));
  type metadata accessor for MusicEntityAnnotationWrapper();
  sub_216B81DD0(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper);
  v67 = sub_217008CF4();
  v69 = v68;
  (v79)(v77, v64);
  *v66 = v67;
  v66[1] = v69;
  sub_216B81CA4(v11, v65, type metadata accessor for ContainerDetailHeaderView);
  __swift_destroy_boxed_opaque_existential_1Tm(&v83);
  sub_216B81B78(v65, v82);
  return sub_216B81C4C(v18, type metadata accessor for AlbumDetailHeaderLockup);
}

uint64_t sub_216B8159C(uint64_t a1)
{
  v2 = type metadata accessor for MediaButtonType(0);
  v39 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v37 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  v13 = type metadata accessor for AlbumDetailHeaderLockup();
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  v19 = type metadata accessor for LinkComponentModel();
  MEMORY[0x28223BE20](v19);
  v36 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v36 - v22;
  v38 = a1;
  sub_216DEA0E8();
  sub_216681B04(&v18[*(v13 + 64)], v12, &qword_27CAB7A30);
  sub_216B81C4C(v18, type metadata accessor for AlbumDetailHeaderLockup);
  if (__swift_getEnumTagSinglePayload(v12, 1, v19) == 1)
  {
    sub_216697664(v12, &qword_27CAB7A30);
    v24 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_216B81CA4(v12, v23, type metadata accessor for LinkComponentModel);
    sub_216B81BE8(v23, v6);
    swift_storeEnumTagMultiPayload();
    sub_216939060(0, 1, 1, MEMORY[0x277D84F90]);
    v24 = v25;
    v27 = *(v25 + 16);
    v26 = *(v25 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_216939060(v26 > 1, v27 + 1, 1, v25);
      v24 = v33;
    }

    sub_216B81C4C(v23, type metadata accessor for LinkComponentModel);
    *(v24 + 16) = v27 + 1;
    sub_216B81CA4(v6, v24 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v27, type metadata accessor for MediaButtonType);
  }

  sub_216DEA0E8();
  sub_216681B04(&v15[*(v13 + 68)], v9, &qword_27CAB7A30);
  sub_216B81C4C(v15, type metadata accessor for AlbumDetailHeaderLockup);
  if (__swift_getEnumTagSinglePayload(v9, 1, v19) == 1)
  {
    sub_216697664(v9, &qword_27CAB7A30);
  }

  else
  {
    v28 = v36;
    sub_216B81CA4(v9, v36, type metadata accessor for LinkComponentModel);
    v29 = v37;
    sub_216B81BE8(v28, v37);
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_216939060(0, *(v24 + 16) + 1, 1, v24);
      v24 = v34;
    }

    v31 = *(v24 + 16);
    v30 = *(v24 + 24);
    if (v31 >= v30 >> 1)
    {
      sub_216939060(v30 > 1, v31 + 1, 1, v24);
      v24 = v35;
    }

    sub_216B81C4C(v28, type metadata accessor for LinkComponentModel);
    *(v24 + 16) = v31 + 1;
    sub_216B81CA4(v29, v24 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v31, type metadata accessor for MediaButtonType);
  }

  return v24;
}

unint64_t sub_216B81AFC(uint64_t a1)
{
  result = sub_216B81B24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216B81B24()
{
  result = qword_280E3AC78[0];
  if (!qword_280E3AC78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E3AC78);
  }

  return result;
}

uint64_t sub_216B81B78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4188);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B81BE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkComponentModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B81C4C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216B81CA4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_216B81D14()
{
  result = qword_27CAC41A8;
  if (!qword_27CAC41A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4188);
    sub_216B81DD0(&qword_27CAC41B0, type metadata accessor for ContainerDetailHeaderView);
    sub_2167B8760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC41A8);
  }

  return result;
}

uint64_t sub_216B81DD0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_216B81E60()
{
  sub_216B81F04();
  if (v0 <= 0x3F)
  {
    sub_2167EE974();
    if (v1 <= 0x3F)
    {
      sub_21680D428();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216B81F04()
{
  if (!qword_280E457E8)
  {
    type metadata accessor for HorizontalPosterLockup();
    sub_2166D4DA8(qword_280E39370, type metadata accessor for HorizontalPosterLockup);
    sub_2166D4DA8(&qword_280E39358, type metadata accessor for HorizontalPosterLockup);
    v0 = type metadata accessor for MappedItem();
    if (!v1)
    {
      atomic_store(v0, &qword_280E457E8);
    }
  }
}

void sub_216B81FFC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for HorizontalPosterLockup();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  v9 = type metadata accessor for LiveRadioPosterLockupView(0);
  v10 = *(v9 + 24);
  *(a2 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v11 = a2 + *(v9 + 28);
  *v11 = swift_getKeyPath();
  v11[40] = 0;
  *a2 = a1;

  sub_216DE9648();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7228);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217015240;
  v13 = (v8 + v4[10]);
  v14 = v13[1];
  *(inited + 32) = *v13;
  *(inited + 40) = v14;
  v15 = (v8 + v4[11]);
  v16 = v15[1];
  *(inited + 48) = *v15;
  *(inited + 56) = v16;
  v17 = v8 + v4[7];
  v18 = *(v17 + 16);
  if (v18 == 255)
  {
    *(inited + 64) = 0;
    *(inited + 72) = 0;
    sub_21700DF14();
    sub_21700DF14();
  }

  else
  {
    v19 = *v17;
    if (v18)
    {
      sub_21700DF14();
      sub_21700DF14();
      v19 = sub_216B6BEC8();
      v21 = v20;
    }

    else
    {
      v21 = *(v17 + 8);
      sub_21700DF14();
      sub_21700DF14();
      sub_216B87640(v19, v21, v18);
    }

    *(inited + 64) = v19;
    *(inited + 72) = v21;
  }

  v22 = (v8 + v4[8]);
  v23 = v22[1];
  *(inited + 80) = *v22;
  *(inited + 88) = v23;
  v24 = (v8 + v4[9]);
  v25 = v24[1];
  *(inited + 96) = *v24;
  *(inited + 104) = v25;
  sub_21700DF14();
  sub_21700DF14();
  v26 = 0;
  v27 = MEMORY[0x277D84F90];
LABEL_8:
  v28 = v26 - 1;
  v29 = 16 * v26 + 40;
  while (1)
  {
    if (v28 == 4)
    {
      swift_setDeallocating();
      sub_2169FAC80();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
      OUTLINED_FUNCTION_5_89();
      sub_2166D9530(v37, v38);
      v39 = sub_21700E454();
      v41 = v40;
      sub_216B87ACC(v8, type metadata accessor for HorizontalPosterLockup);

      a2[1] = v39;
      a2[2] = v41;
      return;
    }

    if (++v28 > 4)
    {
      break;
    }

    v30 = v29 + 16;
    v31 = *(inited + v29);
    v29 += 16;
    if (v31)
    {
      v32 = *(inited + v30 - 24);
      sub_21700DF14();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21693776C();
        v27 = v35;
      }

      v33 = *(v27 + 16);
      if (v33 >= *(v27 + 24) >> 1)
      {
        sub_21693776C();
        v27 = v36;
      }

      v26 = v28 + 1;
      *(v27 + 16) = v33 + 1;
      v34 = v27 + 16 * v33;
      *(v34 + 32) = v32;
      *(v34 + 40) = v31;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_216B8233C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v154 = a1;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC41E8);
  OUTLINED_FUNCTION_1();
  v151 = v3;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_105();
  v149 = v5;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC41F0);
  OUTLINED_FUNCTION_1();
  v150 = v6;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_105();
  v148 = v8;
  v9 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v145 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_70(v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_70(v115 - v14);
  v143 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_70(v115 - v17);
  v137 = sub_2170098C4();
  OUTLINED_FUNCTION_1();
  v136 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v21 - v20);
  v134 = sub_217009314();
  OUTLINED_FUNCTION_1();
  v133 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v25 - v24);
  v130 = sub_2170099D4();
  OUTLINED_FUNCTION_1();
  v129 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v29 - v28);
  v30 = type metadata accessor for LiveRadioPosterLockupView(0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC41F8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v34);
  v36 = v115 - v35;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4200);
  OUTLINED_FUNCTION_1();
  v119 = v37;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v39);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4208);
  OUTLINED_FUNCTION_1();
  v123 = v40;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v42);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4210);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v47);
  v158 = v115 - v48;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4218);
  OUTLINED_FUNCTION_1();
  v140 = v49;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v51);
  *v36 = sub_2170093C4();
  *(v36 + 1) = 0;
  v36[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4220);
  sub_216B83444();
  v52 = *v1;
  v147 = v9;
  v164 = v9;
  v165 = sub_2166D4DA8(&qword_280E4A480, MEMORY[0x277D2A460]);
  __swift_allocate_boxed_opaque_existential_1Tm(&v161);
  v126 = v52;
  sub_216CCBECC();
  v53 = &v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4228) + 36)];
  sub_216681AA4(&v161, (v53 + 2));
  type metadata accessor for MusicEntityAnnotationWrapper();
  sub_2166D4DA8(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper);
  *v53 = sub_217008CF4();
  v53[1] = v54;
  __swift_destroy_boxed_opaque_existential_1Tm(&v161);
  v118 = v33;
  v55 = *(v33 + 36);
  v116 = v36;
  v56 = &v36[v55];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A90);
  sub_217008C64();
  if (qword_280E2C2C0 != -1)
  {
    swift_once();
  }

  v58 = sub_217008B34();
  __swift_project_value_buffer(v58, qword_280E73A88);
  v59 = sub_216B87668();
  v115[0] = v115;
  v56[*(v57 + 36)] = 0;
  MEMORY[0x28223BE20](v59);
  MEMORY[0x28223BE20](v60);
  v155 = v2;
  v115[4] = type metadata accessor for LiveRadioPosterLockupView;
  sub_216B87668();
  v156 = *(v31 + 80);
  v115[2] = (v156 + 16) & ~v156;
  swift_allocObject();
  v115[3] = type metadata accessor for LiveRadioPosterLockupView;
  sub_216B87B90();
  v115[1] = v115 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AA0);
  v157 = v32;
  v62 = v61;
  v63 = type metadata accessor for ContextMenuPreview(0);
  v64 = sub_216B876D8();
  v111 = sub_2166D9530(qword_280E2BAE8, &qword_27CAB8AA0);
  v113 = sub_2166D4DA8(qword_280E3F158, type metadata accessor for ContextMenuPreview);
  v65 = v117;
  v66 = v118;
  v67 = v116;
  sub_21700A394();

  sub_2166997CC(v67, &qword_27CAC41F8);
  v68 = v128;
  sub_2170099A4();
  v161 = v66;
  v162 = v62;
  v163 = v63;
  v164 = v64;
  v165 = v111;
  v166 = v113;
  v69 = OUTLINED_FUNCTION_21_43();
  v70 = v120;
  v71 = v124;
  sub_21700A784();
  OUTLINED_FUNCTION_67();
  v72(v68, v130);
  OUTLINED_FUNCTION_67();
  v73(v65, v71);
  v74 = v155[2];
  v161 = v155[1];
  v162 = v74;
  v159 = v71;
  v160 = v69;
  OUTLINED_FUNCTION_5_5();
  swift_getOpaqueTypeConformance2();
  sub_2167B2E14();
  v75 = v121;
  v76 = v125;
  sub_21700A6B4();
  OUTLINED_FUNCTION_67();
  v77(v70, v76);
  v78 = v132;
  sub_2170092F4();
  v79 = v122;
  v80 = v138;
  sub_2170089A4();
  OUTLINED_FUNCTION_67();
  v81(v78, v134);
  sub_2166997CC(v75, &qword_27CAC4210);
  v82 = v127;
  sub_2170089D4();
  sub_2166997CC(v79, &qword_27CAC4210);
  v83 = v135;
  sub_2170098B4();
  sub_216B87668();
  swift_allocObject();
  sub_216B87B90();
  v84 = v131;
  sub_217008994();

  OUTLINED_FUNCTION_67();
  v85(v83, v137);
  sub_2166997CC(v82, &qword_27CAC4210);
  sub_216983738(219);
  sub_216B87668();
  swift_allocObject();
  sub_216B87B90();
  sub_217008984();

  sub_2166997CC(v84, &qword_27CAC4210);
  v86 = v146;
  v87 = sub_216CCBECC();
  v157 = v115;
  v88 = MEMORY[0x28223BE20](v87);
  v89 = v145;
  v90 = v145[2];
  v91 = v142;
  v92 = v147;
  v90(v142, v86, v147, v88);
  (v89[11])(v91, v92);
  v93 = v89[1];
  v155 = v89 + 1;
  v156 = v93;
  v93(v91, v92);
  v164 = v92;
  v94 = __swift_allocate_boxed_opaque_existential_1Tm(&v161);
  (v90)(v94, v86, v92);
  v95 = v144;
  (v90)(v144, v86, v92);
  v96 = (*(v89 + 80) + 16) & ~*(v89 + 80);
  v97 = swift_allocObject();
  v98 = (v89[4])(v97 + v96, v95, v92);
  v145 = v115;
  MEMORY[0x28223BE20](v98);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA000);
  v112 = sub_216B878E8();
  v114 = sub_21686AF54();
  v100 = v149;
  v101 = v158;
  sub_21700AA24();

  sub_2166997CC(&v161, &unk_27CABF7A0);
  v161 = v80;
  v162 = v99;
  v163 = v112;
  v164 = v114;
  v102 = OUTLINED_FUNCTION_21_43();
  v103 = v148;
  v104 = v153;
  sub_21700A724();
  (*(v151 + 8))(v100, v104);
  v161 = v104;
  v162 = v102;
  OUTLINED_FUNCTION_21_43();
  v105 = v139;
  v106 = v152;
  sub_21700A8D4();
  (*(v150 + 8))(v103, v106);
  (v156)(v86, v92);
  sub_2166997CC(v101, &qword_27CAC4210);
  KeyPath = swift_getKeyPath();
  v108 = v154;
  (*(v140 + 32))(v154, v105, v141);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4258);
  v110 = v108 + *(result + 36);
  *v110 = KeyPath;
  *(v110 + 8) = 0;
  return result;
}

uint64_t sub_216B83444()
{
  v0 = type metadata accessor for LiveRadioPosterLockupView(0);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = type metadata accessor for HorizontalPosterLockup();
  MEMORY[0x28223BE20](v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4268);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  sub_216DE9648();
  sub_2166A6EA4();
  sub_216B87ACC(v3, type metadata accessor for HorizontalPosterLockup);
  if (v16)
  {
    sub_2166A0F18(&v15, v17);
  }

  else
  {
    sub_216DE9648();
    sub_2166A6EA4();
    sub_216B87ACC(v3, type metadata accessor for HorizontalPosterLockup);
    if (v16)
    {
      sub_2166997CC(&v15, &qword_27CAB6DB0);
    }
  }

  v7 = v4[11];
  v8 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(&v6[v7], 1, 1, v8);
  sub_216B87668();
  v9 = swift_allocObject();
  sub_216B87B90();
  v10 = v4[12];
  *&v6[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v11 = &v6[v4[13]];
  *v11 = swift_getKeyPath();
  v11[40] = 0;
  v12 = v18;
  v13 = v17[1];
  *v6 = v17[0];
  *(v6 + 1) = v13;
  *(v6 + 4) = v12;
  *(v6 + 5) = sub_216B87C4C;
  *(v6 + 6) = v9;
  *(v6 + 7) = 0;
  *(v6 + 8) = 0;
  sub_216E3177C();
  return sub_2166997CC(v6, &qword_27CAC4268);
}

uint64_t sub_216B8378C()
{
  v0 = sub_217008B44();
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LiveRadioPosterLockupView.CardView(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9648();
  v19[1] = 0x405A000000000000;
  sub_216B87C98();
  sub_2170082B4();
  v8 = &v7[*(v5 + 32)];
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v9 = &v7[*(v5 + 36)];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = *(v1 + 28);
  v11 = *MEMORY[0x277CE0118];
  v12 = sub_217009294();
  (*(*(v12 - 8) + 104))(&v3[v10], v11, v12);
  __asm { FMOV            V0.2D, #14.0 }

  *v3 = _Q0;
  if (qword_280E2C2C8 != -1)
  {
    swift_once();
  }

  sub_216E3006C();
  sub_216B87ACC(v3, MEMORY[0x277CDFC08]);
  return sub_216B87ACC(v7, type metadata accessor for LiveRadioPosterLockupView.CardView);
}

uint64_t sub_216B839A4@<X0>(void (**a1)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)@<X8>)
{
  v26 = a1;
  v24 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v24);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for HorizontalPosterLockup();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MenuConfiguration(0);
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v23 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v22 = sub_2170067A4();
  v9 = *(v22 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v22);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  sub_216CCBECC();
  sub_216DE9648();
  sub_216B83CF4();
  swift_storeEnumTagMultiPayload();
  sub_2168A8DCC();

  sub_216B87ACC(v2, type metadata accessor for MenuContext);
  sub_216B87ACC(v5, type metadata accessor for HorizontalPosterLockup);
  v15 = *(v9 + 32);
  v16 = v22;
  v15(v11, v14, v22);
  sub_216B87B90();
  v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  v15((v18 + v17), v11, v16);
  result = sub_216B87B90();
  v20 = v26;
  *v26 = sub_21680CDC8;
  v20[1] = v18;
  return result;
}

uint64_t sub_216B83CF4()
{
  v0 = type metadata accessor for LiveRadioPosterLockupView(0);
  MEMORY[0x28223BE20](v0);
  v1 = type metadata accessor for HorizontalPosterLockup();
  MEMORY[0x28223BE20](v1);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9648();
  sub_2166A6EA4();
  sub_216B87ACC(v3, type metadata accessor for HorizontalPosterLockup);
  if (!v16)
  {
    v9 = &qword_27CAB6DB0;
    v10 = &v15;
LABEL_6:
    sub_2166997CC(v10, v9);
    return MEMORY[0x277D84F90];
  }

  sub_2166A0F18(&v15, v17);
  sub_216C0C534(&v13);
  if (!v14)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    v9 = &qword_27CAB7310;
    v10 = &v13;
    goto LABEL_6;
  }

  sub_2166A0F18(&v13, &v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E38);
  v4 = (type metadata accessor for MenuAction() - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_217013DA0;
  type metadata accessor for MenuActionType();
  swift_storeEnumTagMultiPayload();
  sub_216681AA4(&v15, &v13);
  sub_216681AA4(v17, v12);
  sub_216B87668();
  v7 = swift_allocObject();
  sub_2166A0F18(&v13, v7 + 16);
  sub_2166A0F18(v12, v7 + 56);
  sub_216B87B90();
  v8 = (v6 + v5 + v4[7]);
  *v8 = sub_216B87BE8;
  v8[1] = v7;
  __swift_destroy_boxed_opaque_existential_1Tm(&v15);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  return v6;
}

uint64_t sub_216B84028@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for HorizontalPosterLockup();
  MEMORY[0x28223BE20](v2);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7528);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16[-v6 - 8];
  sub_216B841E0(&v16[-v6 - 8]);
  sub_216DE9648();
  sub_2166A6EA4();
  sub_216B87ACC(v4, type metadata accessor for HorizontalPosterLockup);
  LOBYTE(v4) = v17 != 0;
  sub_2166997CC(v16, &qword_27CAB6DB0);
  sub_216B87B20(v7, a1);
  v8 = type metadata accessor for ContextMenuPreview(0);
  *(a1 + v8[5]) = v4;
  v9 = a1 + v8[6];
  *(v9 + 32) = 0;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  v10 = v8[7];
  v11 = sub_21700C4B4();
  __swift_storeEnumTagSinglePayload(a1 + v10, 1, 1, v11);
  v12 = v8[8];
  v13 = sub_21700C444();
  return __swift_storeEnumTagSinglePayload(a1 + v12, 1, 1, v13);
}

uint64_t sub_216B841E0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32 - v3;
  v5 = sub_2170067A4();
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for HorizontalPosterLockup();
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Artwork();
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9648();
  sub_2166A6EA4();
  sub_216B87ACC(v13, type metadata accessor for HorizontalPosterLockup);
  if (__swift_getEnumTagSinglePayload(v10, 1, v14) == 1)
  {
    sub_2166997CC(v10, &qword_27CAB6D60);
    sub_216CCBECC();
    v17 = sub_21700C4B4();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v17);
    sub_2167BF2A8(v4, v18, v19, v20, v21, v22, v23, v24, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
    sub_2166997CC(v4, &qword_27CABF770);
    (*(v32 + 8))(v7, v33);
    v25 = type metadata accessor for ContextMenuPreview.ViewModel(0);
  }

  else
  {
    sub_216B87B90();
    v26 = sub_21700C4B4();
    (*(*(v26 - 8) + 16))(a1, v16, v26);
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v26);
    v27 = type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0);
    sub_21700C404();
    sub_216B87ACC(v16, type metadata accessor for Artwork);
    *(a1 + v27[5]) = xmmword_217016F10;
    *(a1 + v27[6]) = 0x3FF0000000000000;
    *(a1 + v27[7]) = 0x4024000000000000;
    *(a1 + v27[8]) = 0;
    v25 = type metadata accessor for ContextMenuPreview.ViewModel(0);
    v28 = (a1 + v25[5]);
    *v28 = 0;
    v28[1] = 0;
    v29 = (a1 + v25[6]);
    *v29 = 0;
    v29[1] = 0;
    v30 = (a1 + v25[7]);
    *v30 = 0;
    v30[1] = 0;
    *(a1 + v25[8]) = 1;
  }

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v25);
}

uint64_t sub_216B845D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DE8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v26 - v1;
  v27 = sub_2170075A4();
  v3 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2170067A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HorizontalPosterLockup();
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9648();
  sub_2166A6EA4();
  sub_216B87ACC(v12, type metadata accessor for HorizontalPosterLockup);
  sub_216CCBECC();
  type metadata accessor for LiveRadioPosterLockupView(0);
  v13 = sub_216C0C534(&v28);
  sub_216C0C548(v13, v14, v15, v16, v17, v18, v19, v20, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
  v21 = type metadata accessor for MenuContext(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v21);
  sub_2167B9BDC(&v33, v9, &v28, v5, v2, v22, v23, v24, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
  sub_2166997CC(v2, &qword_27CAB6DE8);
  (*(v3 + 8))(v5, v27);
  sub_2166997CC(&v28, &qword_27CAB7310);
  (*(v7 + 8))(v9, v6);
  return sub_2166997CC(&v33, &qword_27CAB6DB0);
}

uint64_t sub_216B848CC()
{
  v0 = sub_2170075A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for HorizontalPosterLockup();
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = sub_2170090F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for LiveRadioPosterLockupView(0);
  sub_2166A6EA4();
  if (v36 == 1)
  {
    v37 = v33;
    v38 = v34;
    v39 = v35;
  }

  else
  {
    v25 = v1;
    v26 = v5;
    sub_21700ED94();
    v13 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    v1 = v25;
    v5 = v26;

    (*(v10 + 8))(v12, v9);
  }

  if (!*(&v38 + 1))
  {
    return sub_2166997CC(&v37, &qword_27CAB7310);
  }

  sub_2166A0F18(&v37, &v33);
  sub_216DE9648();
  sub_2166A6EA4();
  sub_216B87ACC(v8, type metadata accessor for HorizontalPosterLockup);
  if (v31 || (sub_2166997CC(&v29, &qword_27CAB6DB0), sub_216DE9648(), sub_2166A6EA4(), sub_216B87ACC(v5, type metadata accessor for HorizontalPosterLockup), v31))
  {
    sub_2166A0F18(&v29, &v37);
    v14 = __swift_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
    v15 = v28;
    sub_216C0C548(v14, v16, v17, v18, v19, v20, v21, v22, v24, v25, v26, v27, v28, v29, *(&v29 + 1), v30, v31, v32, v33, *(&v33 + 1));
    sub_217007544();
    (*(v1 + 8))(v15, v0);
    __swift_destroy_boxed_opaque_existential_1Tm(&v37);
  }

  else
  {
    sub_2166997CC(&v29, &qword_27CAB6DB0);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(&v33);
}

uint64_t sub_216B84CD8()
{
  v0 = sub_2170075A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HorizontalPosterLockup();
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9648();
  sub_2166A6EA4();
  sub_216B87ACC(v6, type metadata accessor for HorizontalPosterLockup);
  if (v25)
  {
    sub_2166A0F18(&v23, v27);
    type metadata accessor for LiveRadioPosterLockupView(0);
    sub_216C0C534(&v19);
    if (v21)
    {
      sub_2166A0F18(&v19, &v23);
      v7 = __swift_project_boxed_opaque_existential_1(&v23, v25);
      sub_216C0C548(v7, v8, v9, v10, v11, v12, v13, v14, v18, v19, *(&v19 + 1), v20, v21, v22, v23, *(&v23 + 1), v24, v25, v26, v27[0]);
      sub_217007544();
      (*(v1 + 8))(v3, v0);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v23);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    v16 = &qword_27CAB7310;
    v17 = &v19;
  }

  else
  {
    v16 = &qword_27CAB6DB0;
    v17 = &v23;
  }

  return sub_2166997CC(v17, v16);
}

uint64_t sub_216B84F0C@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA020);
  MEMORY[0x28223BE20](v1 - 8);
  v47 = &v42 - v2;
  v45 = sub_217009D24();
  MEMORY[0x28223BE20](v45);
  v46 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v4 - 8);
  v43 = sub_217007474();
  v5 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - v9;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7680);
  MEMORY[0x28223BE20](v44);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA028);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - v17;
  v49[3] = sub_2170067A4();
  v49[4] = sub_2166D4DA8(&qword_280E4A480, MEMORY[0x277D2A460]);
  __swift_allocate_boxed_opaque_existential_1Tm(v49);
  sub_216CCBECC();
  sub_2167BB664(v49);
  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  sub_2166A6EA4();
  v19 = type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0);
  if (__swift_getEnumTagSinglePayload(v15, 1, v19) == 1)
  {
    sub_2166997CC(v18, &qword_27CABA028);
    sub_2166997CC(v15, &qword_27CABA028);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA010);
    v21 = v48;
    v22 = 1;
  }

  else
  {
    sub_2166A6EA4();
    sub_217007434();
    sub_2170073E4();
    v23 = *(v5 + 8);
    v42 = v12;
    v24 = v43;
    v23(v7, v43);
    v25 = &v15[*(v19 + 20)];
    v26 = *v25;
    v27 = v25[1];
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    *(v28 + 24) = v27;
    sub_2167B8890(v26, v27);
    sub_2167C505C();
    v29 = v42;
    sub_2170073F4();

    v23(v10, v24);
    if (qword_280E2C2C8 != -1)
    {
      swift_once();
    }

    v30 = qword_280E73AA0;
    v31 = byte_280E73AA8;
    v32 = qword_280E73AB0;
    v33 = v47;
    sub_217009D14();
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v45);
    sub_217009D04();
    sub_2166997CC(v33, &qword_27CABA020);
    v34 = &v29[*(v44 + 36)];
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F0);
    v36 = v29;
    v37 = &v34[*(v35 + 36)];
    sub_217009374();
    sub_2166997CC(v18, &qword_27CABA028);
    *&v37[*(type metadata accessor for InsettableConcentricRectangle() + 20)] = 0;
    v38 = &v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76E0) + 36)];
    sub_216B87668();
    *&v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76E8) + 36)] = 256;
    *v34 = v30;
    v34[8] = v31;
    *(v34 + 2) = v32;
    v39 = &v34[*(v35 + 40)];
    *v39 = swift_getKeyPath();
    v39[8] = 0;

    sub_216B87ACC(v15, type metadata accessor for ContextMenuPreview.ContextPreviewArtwork);
    v40 = v48;
    sub_2167A4788();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA010);
    *(v40 + *(v20 + 36)) = xmmword_21701F260;
    v21 = v40;
    v22 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v21, v22, 1, v20);
}

uint64_t sub_216B855A0(void *a1)
{
  v2 = sub_2170075A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = var50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = type metadata accessor for LiveRadioPosterLockupView(0);
  sub_216C0C548(v6, v7, v8, v9, v10, v11, v12, v13, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
  sub_217007544();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_216B856C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v91 = sub_217008B44();
  MEMORY[0x28223BE20](v91);
  v92 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC42A0);
  v88 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v86 = &v72 - v5;
  v6 = type metadata accessor for LiveRadioPosterLockupView.CardView(0);
  v82 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v83 = v7;
  v84 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v72 - v9;
  v77 = sub_2170090F4();
  v11 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_2170071B4();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC42A8);
  MEMORY[0x28223BE20](v16);
  v18 = &v72 - v17;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC42B0);
  v87 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v85 = &v72 - v19;
  v20 = type metadata accessor for HorizontalPosterLockup();
  v95 = v20;
  v96 = &off_2829380D0;
  v97 = &off_282938088;
  v98 = &off_2829380C0;
  __swift_allocate_boxed_opaque_existential_1Tm(&v94);
  sub_216B87668();
  v79 = v15;
  sub_217007194();
  v21 = *(v6 + 24);
  v78 = v2;
  v22 = v2 + v21;
  v23 = *v22;
  if (*(v22 + 8) == 1)
  {
    v24 = *v22;
  }

  else
  {

    sub_21700ED94();
    v76 = a1;
    v25 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v23, 0);
    v75 = v6;
    v26 = *(v11 + 8);
    v74 = v20;
    v27 = v77;
    v26(v13, v77);
    v73 = *&v93;

    sub_21700ED94();
    v28 = sub_217009C34();
    sub_217007BC4();

    a1 = v76;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v23, 0);
    v26(v13, v27);
    v24 = v93;
    v23 = v73;
  }

  v29 = sub_216B860FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4278);
  sub_2170082C4();
  v30 = v93;
  sub_2166A6EA4();
  v31 = type metadata accessor for ContentDescriptor();
  if (__swift_getEnumTagSinglePayload(v10, 1, v31) == 1)
  {
    sub_2166997CC(v10, &qword_27CAB6A00);
    v32 = 23;
  }

  else
  {
    v32 = *v10;
    sub_216B87ACC(v10, type metadata accessor for ContentDescriptor);
  }

  LOBYTE(v93) = v32;
  v33 = sub_216E41068(&v93, 0);
  v35 = v34;
  sub_216B87668();
  v36 = swift_allocObject();
  sub_216B87B90();
  v37 = v16[14];
  *&v18[v37] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  swift_storeEnumTagMultiPayload();
  sub_21686BC70(&v94, v18);
  (*(v80 + 32))(&v18[v16[9]], v79, v81);
  v38 = &v18[v16[10]];
  *v38 = v23;
  *(v38 + 1) = v24 / v29;
  v38[16] = 0;
  *&v18[v16[12]] = v30;
  v39 = &v18[v16[13]];
  *v39 = sub_216B88000;
  v39[1] = v36;
  v40 = &v18[v16[11]];
  *v40 = v33;
  v40[1] = v35;
  sub_2166D9530(&qword_27CAC42B8, &qword_27CAC42A8);
  v41 = v86;
  sub_21700A2A4();
  sub_2166997CC(v18, &qword_27CAC42A8);
  sub_216B862CC();
  v42 = v85;
  v43 = v90;
  sub_2170064C4();

  (*(v88 + 8))(v41, v43);
  if (qword_280E2C2D8 != -1)
  {
    swift_once();
  }

  v44 = xmmword_280E73AF0;
  v45 = qword_280E73B00;
  v46 = qword_280E73B08;
  v47 = *(v91 + 20);
  v48 = *MEMORY[0x277CE0118];
  v49 = sub_217009294();
  v50 = v92;
  (*(*(v49 - 8) + 104))(&v92[v47], v48, v49);
  __asm { FMOV            V0.2D, #14.0 }

  *v50 = _Q0;
  v56 = sub_21700B3B4();
  v58 = v57;
  v59 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC42C0) + 36);
  sub_216B87668();
  v60 = v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB73B0) + 36);
  *v60 = v46;
  *(v60 + 8) = v45;
  *(v60 + 16) = v44;

  LOBYTE(v46) = sub_217009C84();
  sub_217007F24();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v69 = v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB73B8) + 36);
  *v69 = v46;
  *(v69 + 8) = v62;
  *(v69 + 16) = v64;
  *(v69 + 24) = v66;
  *(v69 + 32) = v68;
  *(v69 + 40) = 0;
  v70 = (v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9FF8) + 36));
  *v70 = v56;
  v70[1] = v58;
  (*(v87 + 32))(a1, v42, v89);
  return sub_216B87ACC(v50, MEMORY[0x277CDFC08]);
}

double sub_216B860FC()
{
  v1 = sub_2170090F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for LiveRadioPosterLockupView.CardView(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = *v5;
  }

  else
  {

    sub_21700ED94();
    v8 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v6, 0);
    (*(v2 + 8))(v4, v1);
    v7 = v10[15];
  }

  result = 1.77777778;
  if (v7 < 2)
  {
    return 1.5;
  }

  return result;
}

uint64_t sub_216B8626C@<X0>(uint64_t a1@<X8>)
{
  sub_216B87668();
  v2 = a1 + *(type metadata accessor for LiveRadioPosterLockupView.CardView.ChinView(0) + 20);
  result = swift_getKeyPath();
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

void sub_216B862CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7228);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217015240;
  v3 = type metadata accessor for HorizontalPosterLockup();
  v4 = (v0 + v3[10]);
  v5 = v4[1];
  *(inited + 32) = *v4;
  *(inited + 40) = v5;
  v6 = (v1 + v3[11]);
  v7 = v6[1];
  *(inited + 48) = *v6;
  *(inited + 56) = v7;
  v8 = v1 + v3[7];
  v9 = *(v8 + 16);
  if (v9 == 255)
  {
    *(inited + 64) = 0;
    *(inited + 72) = 0;
    sub_21700DF14();
    sub_21700DF14();
  }

  else
  {
    v10 = *v8;
    if (v9)
    {
      sub_21700DF14();
      sub_21700DF14();
      v10 = sub_216B6BEC8();
      v12 = v11;
    }

    else
    {
      v12 = *(v8 + 8);
      sub_21700DF14();
      sub_21700DF14();
      sub_216B87640(v10, v12, v9);
    }

    *(inited + 64) = v10;
    *(inited + 72) = v12;
  }

  v13 = (v1 + v3[8]);
  v14 = v13[1];
  *(inited + 80) = *v13;
  *(inited + 88) = v14;
  v15 = (v1 + v3[9]);
  v16 = v15[1];
  *(inited + 96) = *v15;
  *(inited + 104) = v16;
  sub_21700DF14();
  sub_21700DF14();
  v17 = 0;
  v18 = MEMORY[0x277D84F90];
LABEL_8:
  v19 = v17 - 1;
  v20 = 16 * v17 + 40;
  while (1)
  {
    if (v19 == 4)
    {
      swift_setDeallocating();
      sub_2169FAC80();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
      OUTLINED_FUNCTION_5_89();
      sub_2166D9530(v28, v29);
      v30 = sub_21700E454();
      v32 = v31;

      sub_21700F9C4();
      MEMORY[0x21CE9F490](8250, 0xE200000000000000);
      MEMORY[0x21CE9F490](v30, v32);

      return;
    }

    if (++v19 > 4)
    {
      break;
    }

    v21 = v20 + 16;
    v22 = *(inited + v20);
    v20 += 16;
    if (v22)
    {
      v23 = *(inited + v21 - 24);
      sub_21700DF14();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21693776C();
        v18 = v26;
      }

      v24 = *(v18 + 16);
      if (v24 >= *(v18 + 24) >> 1)
      {
        sub_21693776C();
        v18 = v27;
      }

      v17 = v19 + 1;
      *(v18 + 16) = v24 + 1;
      v25 = v18 + 16 * v24;
      *(v25 + 32) = v23;
      *(v25 + 40) = v22;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_216B86574()
{
  v1 = sub_2170099D4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &__src[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC42E0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &__src[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC42E8);
  MEMORY[0x28223BE20](v9);
  v11 = &__src[-v10];
  *v8 = sub_2170093C4();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC42F0);
  sub_216B86914(v0, &v8[*(v12 + 44)]);
  v13 = sub_21700ACF4();
  KeyPath = swift_getKeyPath();
  v15 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC42F8) + 36)];
  *v15 = KeyPath;
  v15[1] = v13;
  LOBYTE(v13) = sub_217009C74();
  sub_217007F24();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4300) + 36)];
  *v24 = v13;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  LOBYTE(v13) = sub_217009C94();
  sub_217007F24();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4308) + 36)];
  *v33 = v13;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  LOBYTE(v13) = sub_217009CA4();
  sub_217007F24();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4310) + 36)];
  *v42 = v13;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  *&v8[*(v6 + 44)] = 256;
  sub_21700B354();
  sub_217008BB4();
  sub_2167A4788();
  memcpy(&v11[*(v9 + 36)], __src, 0x70uLL);
  sub_2170099A4();
  sub_216B882CC();
  sub_21700A784();
  (*(v2 + 8))(v4, v1);
  return sub_2166997CC(v11, &qword_27CAC42E8);
}

uint64_t sub_216B86914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v106 = sub_21700D864();
  v115 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v104 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_21700D8E4();
  v4 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v112 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4358);
  v109 = *(v6 - 8);
  v110 = v6;
  MEMORY[0x28223BE20](v6);
  v97 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v96 = &v94 - v9;
  MEMORY[0x28223BE20](v10);
  v108 = &v94 - v11;
  MEMORY[0x28223BE20](v12);
  v107 = &v94 - v13;
  MEMORY[0x28223BE20](v14);
  v95 = &v94 - v15;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4360);
  MEMORY[0x28223BE20](v94);
  v105 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v94 - v18;
  MEMORY[0x28223BE20](v20);
  v111 = &v94 - v21;
  v102 = type metadata accessor for HorizontalPosterLockup();
  v103 = a1;
  v22 = a1 + v102[7];
  v23 = *(v22 + 16);
  if (v23 == 255)
  {
    v24 = 0;
    v26 = 0;
    v27 = 0;
  }

  else
  {
    v24 = *v22;
    if (v23)
    {
      v24 = sub_216B6BEC8();
      v26 = v25;
    }

    else
    {
      v26 = *(v22 + 8);
      sub_216777114(*v22, v26, 0);
    }

    v27 = MEMORY[0x277D84F90];
  }

  v113 = v4;
  if (qword_27CAB5E30 != -1)
  {
    swift_once();
  }

  v28 = qword_27CAC41B8;
  KeyPath = swift_getKeyPath();
  v30 = qword_27CAB5E38;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = qword_27CAC41C0;
  v32 = swift_getKeyPath();
  v33 = swift_getKeyPath();
  v34 = swift_getKeyPath();
  v123 = 0;
  v121[0] = v24;
  v121[1] = v26;
  v121[2] = 0;
  v121[3] = v27;
  v121[4] = KeyPath;
  v121[5] = v28;
  v121[6] = v32;
  v121[7] = v31;
  v121[8] = v33;
  LOBYTE(v121[9]) = 0;
  v121[10] = v34;
  v121[11] = 1;
  LOBYTE(v121[12]) = 0;
  memset(__dst, 0, 32);
  memset(v119, 0, 32);

  v35 = v112;
  sub_21700D884();
  sub_2166997CC(v119, &unk_27CABF7A0);
  sub_2166997CC(__dst, &unk_27CABF7A0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB2F8);
  v37 = sub_216B8866C();
  v38 = v95;
  v100 = v37;
  v101 = v36;
  sub_21700A204();
  v39 = v113 + 8;
  v99 = *(v113 + 8);
  v99(v35, v114);
  memcpy(__dst, v121, 0x61uLL);
  sub_2166997CC(__dst, &qword_27CABB2F8);
  v40 = sub_217009CA4();
  sub_217007F24();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  (*(v109 + 32))(v19, v38, v110);
  v49 = &v19[*(v94 + 36)];
  *v49 = v40;
  *(v49 + 1) = v42;
  *(v49 + 2) = v44;
  *(v49 + 3) = v46;
  *(v49 + 4) = v48;
  v49[40] = 0;
  sub_2167A4788();
  v50 = (v103 + v102[8]);
  v51 = v50[1];
  if (v51)
  {
    v52 = *v50;
    v53 = MEMORY[0x277D84F90];
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  v54 = qword_27CAB5E40;
  sub_21700DF14();
  if (v54 != -1)
  {
    swift_once();
  }

  v55 = qword_27CAC41C8;
  v56 = swift_getKeyPath();
  v57 = qword_27CAB5E48;

  if (v57 != -1)
  {
    swift_once();
  }

  v58 = qword_27CAC41D0;
  v59 = swift_getKeyPath();
  v60 = swift_getKeyPath();
  v61 = swift_getKeyPath();
  v120 = 0;
  v119[0] = v52;
  v119[1] = v51;
  v119[2] = 0;
  v119[3] = v53;
  v119[4] = v56;
  v119[5] = v55;
  v119[6] = v59;
  v119[7] = v58;
  v119[8] = v60;
  LOBYTE(v119[9]) = 0;
  v119[10] = v61;
  v119[11] = 1;
  LOBYTE(v119[12]) = 0;
  v62 = *MEMORY[0x277D22050];
  v63 = v115;
  v64 = v104;
  v65 = v106;
  v95 = *(v115 + 104);
  (v95)(v104, v62, v106);
  memset(v121, 0, 32);
  memset(v117, 0, 32);

  v66 = v112;
  sub_21700D874();
  sub_2166997CC(v117, &unk_27CABF7A0);
  sub_2166997CC(v121, &unk_27CABF7A0);
  v67 = *(v63 + 8);
  v115 = v63 + 8;
  v94 = v67;
  v67(v64, v65);
  sub_21700A204();
  v113 = v39;
  v99(v66, v114);
  memcpy(v121, v119, 0x61uLL);
  sub_2166997CC(v121, &qword_27CABB2F8);
  v68 = (v103 + v102[9]);
  v69 = v68[1];
  if (v69)
  {
    v70 = *v68;
    v71 = MEMORY[0x277D84F90];
  }

  else
  {
    v70 = 0;
    v71 = 0;
  }

  v72 = qword_27CAB5E50;
  sub_21700DF14();
  if (v72 != -1)
  {
    swift_once();
  }

  v73 = qword_27CAC41D8;
  v74 = swift_getKeyPath();
  v75 = qword_27CAB5E58;

  if (v75 != -1)
  {
    swift_once();
  }

  v76 = qword_27CAC41E0;
  v77 = swift_getKeyPath();
  v78 = swift_getKeyPath();
  v79 = swift_getKeyPath();
  v118 = 0;
  v117[0] = v70;
  v117[1] = v69;
  v117[2] = 0;
  v117[3] = v71;
  v117[4] = v74;
  v117[5] = v73;
  v117[6] = v77;
  v117[7] = v76;
  v117[8] = v78;
  LOBYTE(v117[9]) = 0;
  v117[10] = v79;
  v117[11] = 2;
  LOBYTE(v117[12]) = 0;
  v80 = v104;
  v81 = v106;
  (v95)(v104, *MEMORY[0x277D22070], v106);
  memset(v119, 0, 32);
  memset(v116, 0, sizeof(v116));

  v82 = v112;
  sub_21700D874();
  sub_2166997CC(v116, &unk_27CABF7A0);
  sub_2166997CC(v119, &unk_27CABF7A0);
  (v94)(v80, v81);
  v83 = v108;
  sub_21700A204();
  v99(v82, v114);
  memcpy(v119, v117, 0x61uLL);
  sub_2166997CC(v119, &qword_27CABB2F8);
  sub_216740C24();
  v85 = v109;
  v84 = v110;
  v86 = *(v109 + 16);
  v87 = v96;
  v88 = v107;
  v86(v96, v107, v110);
  v89 = v97;
  v86(v97, v83, v84);
  v90 = v98;
  sub_216740C24();
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4370);
  v86((v90 + *(v91 + 48)), v87, v84);
  v86((v90 + *(v91 + 64)), v89, v84);
  v92 = *(v85 + 8);
  v92(v108, v84);
  v92(v88, v84);
  sub_2166997CC(v111, &qword_27CAC4360);
  v92(v89, v84);
  v92(v87, v84);
  return sub_2166997CC(v105, &qword_27CAC4360);
}

uint64_t sub_216B87484(uint64_t a1)
{
  result = sub_2166D4DA8(qword_280E35708, type metadata accessor for LiveRadioPosterLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216B87510()
{
  sub_21700ACF4();
  v0 = sub_21700AD04();

  qword_27CAC41C0 = v0;
  return result;
}

uint64_t sub_216B87588(uint64_t a1, void (*a2)(void), void (*a3)(void), uint64_t *a4)
{
  a2();
  a3();
  v6 = sub_217009E34();

  *a4 = v6;
  return result;
}

uint64_t sub_216B875E0()
{
  result = sub_21700ACF4();
  qword_27CAC41D0 = result;
  return result;
}

uint64_t sub_216B87600()
{
  result = sub_217009D44();
  qword_27CAC41D8 = result;
  return result;
}

uint64_t sub_216B87620()
{
  result = sub_21700ACF4();
  qword_27CAC41E0 = result;
  return result;
}

uint64_t sub_216B87640(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_216777114(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_216B87668()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

unint64_t sub_216B876D8()
{
  result = qword_27CAC4230;
  if (!qword_27CAC4230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC41F8);
    sub_216B87790();
    sub_2166D9530(&qword_280E2A810, &qword_27CAB8A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4230);
  }

  return result;
}

unint64_t sub_216B87790()
{
  result = qword_27CAC4238;
  if (!qword_27CAC4238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4228);
    sub_2166D9530(&qword_27CAC4240, &qword_27CAC4248);
    sub_2167B8760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4238);
  }

  return result;
}

uint64_t sub_216B87860(uint64_t (*a1)(uint64_t))
{
  v1 = type metadata accessor for LiveRadioPosterLockupView(0);
  OUTLINED_FUNCTION_36(v1);
  v3 = OUTLINED_FUNCTION_31_3(*(v2 + 80));

  return a1(v3);
}

unint64_t sub_216B878E8()
{
  result = qword_27CAC4250;
  if (!qword_27CAC4250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4210);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4200);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC41F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8AA0);
    type metadata accessor for ContextMenuPreview(255);
    sub_216B876D8();
    sub_2166D9530(qword_280E2BAE8, &qword_27CAB8AA0);
    sub_2166D4DA8(qword_280E3F158, type metadata accessor for ContextMenuPreview);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2166D4DA8(&qword_280E2A6F0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4250);
  }

  return result;
}

uint64_t sub_216B87ACC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216B87B20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7528);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B87B90()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}