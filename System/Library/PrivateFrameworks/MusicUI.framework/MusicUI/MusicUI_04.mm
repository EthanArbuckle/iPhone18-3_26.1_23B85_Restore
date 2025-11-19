uint64_t sub_2166DE720()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2166DE78C(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_2166DE7B8(result);
  }

  return result;
}

unint64_t sub_2166DE7B8(unint64_t result)
{
  if (result >> 62)
  {
    if (result >> 62 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_2166DE830()
{
  OUTLINED_FUNCTION_33();
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_21683B084;
  v1 = swift_continuation_init();
  sub_2166DE9B8(v1);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2166DE8CC()
{
  result = type metadata accessor for LibraryPinActionType();
  if (v1 <= 0x3F)
  {
    result = sub_21700D284();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2166DE954()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2166DE9B8(uint64_t a1)
{
  v25 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1F0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC9DE0);
  v5 = *(v4 - 8);
  v21 = v4;
  v22 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9468);
  v9 = *(v8 - 8);
  v23 = v8;
  v24 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BB8);
  sub_217007DB4();
  swift_endAccess();

  sub_216685F4C(0, &qword_280E29CD0);
  v13 = sub_21700EE84();
  v26 = v13;
  v14 = sub_21700EE64();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v14);
  sub_216844C20(&unk_280E484E0);
  sub_216685F8C(&qword_280E29CD8);
  v15 = v21;
  sub_217007E54();
  sub_216697664(v3, &qword_27CABE1F0);

  (*(v22 + 8))(v7, v15);
  v16 = swift_allocObject();
  v17 = v25;
  *(v16 + 16) = v12;
  *(v16 + 24) = v17;
  sub_216844C20(&unk_280E48560);

  v18 = v23;
  v19 = sub_217007E84();

  (*(v24 + 8))(v11, v18);
  swift_beginAccess();
  *(v12 + 16) = v19;
}

uint64_t sub_2166DEDB8()
{

  OUTLINED_FUNCTION_143();

  return swift_deallocObject();
}

uint64_t sub_2166DEDEC()
{

  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

unint64_t sub_2166DEE20()
{
  result = qword_280E2DB48;
  if (!qword_280E2DB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2DB48);
  }

  return result;
}

uint64_t type metadata accessor for RemoveFromPlaylistAction()
{
  result = qword_280E36500;
  if (!qword_280E36500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166DEED0()
{
  result = sub_21700D284();
  if (v1 <= 0x3F)
  {
    result = sub_21700C8E4();
    if (v2 <= 0x3F)
    {
      result = sub_21700C924();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t MusicPageProvider.libraryImportStatus.getter()
{
  OUTLINED_FUNCTION_33();
  v1[3] = v2;
  v1[4] = v0;
  sub_21700EA34();
  v1[5] = sub_21700EA24();
  OUTLINED_FUNCTION_47();
  v4 = sub_21700E9B4();
  v1[6] = v4;
  v1[7] = v3;

  return MEMORY[0x2822009F8](sub_2166DF050, v4, v3);
}

unint64_t sub_2166DEFFC()
{
  result = qword_280E301C8[0];
  if (!qword_280E301C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E301C8);
  }

  return result;
}

uint64_t sub_2166DF050()
{
  OUTLINED_FUNCTION_33();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_99_0(v1);

  return sub_2166DE4E0();
}

uint64_t sub_2166DF0DC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA2F0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_2166DFAC0;

  return sub_2166DF2F4(a1, v7, v8, v1 + v6, v9);
}

uint64_t type metadata accessor for NewPlaylistAction()
{
  result = qword_280E3FE50;
  if (!qword_280E3FE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166DF270()
{
  sub_21700D284();
  if (v0 <= 0x3F)
  {
    sub_2166DF3F4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2166DF2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA2F0);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  sub_21700EA34();
  v5[11] = sub_21700EA24();
  v8 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_2166DF458, v8, v7);
}

void sub_2166DF3F4()
{
  if (!qword_280E29F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8E18);
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E29F50);
    }
  }
}

uint64_t sub_2166DF458()
{
  v29 = v0;

  if (qword_280E464C8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = sub_217007CA4();
  __swift_project_value_buffer(v5, qword_280E464D0);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_217007C84();
  v7 = sub_21700EDA4();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 80);
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 136446210;
    sub_217005D44();
    v12 = *(v0 + 40);
    if (v12)
    {
      [*(v0 + 40) status];

      v13 = sub_2166DF810();
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v18 = *(v0 + 72);
    v17 = *(v0 + 80);
    v19 = *(v0 + 64);
    *(v0 + 16) = v13;
    *(v0 + 24) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA40);
    v20 = sub_21700E594();
    v22 = v21;
    (*(v18 + 8))(v17, v19);
    v23 = sub_2166A85FC(v20, v22, &v28);

    *(v10 + 4) = v23;
    _os_log_impl(&dword_216679000, v6, v7, "Network connectivity changed to %{public}s.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x21CEA1440](v11, -1, -1);
    MEMORY[0x21CEA1440](v10, -1, -1);
  }

  else
  {
    v15 = *(v0 + 64);
    v16 = *(v0 + 72);

    (*(v16 + 8))(v9, v15);
  }

  sub_217005D44();
  v24 = *(v0 + 32);
  if (v24)
  {
    v25 = [*(v0 + 32) status];
  }

  else
  {
    v25 = 0;
  }

  sub_2166DF8D4(v25, v24 == 0);

  v26 = *(v0 + 8);

  return v26();
}

unint64_t sub_2166DF71C()
{
  result = qword_280E366D8;
  if (!qword_280E366D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E366D8);
  }

  return result;
}

uint64_t sub_2166DF770()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_280E464D0);
  __swift_project_value_buffer(v0, qword_280E464D0);
  return sub_217007C94();
}

uint64_t sub_2166DF8D4(uint64_t a1, int a2)
{
  v2 = (a1 == 1) & ~a2;
  result = sub_2166C129C();
  if (v2 != (result & 1))
  {

    return sub_21686C6DC();
  }

  return result;
}

uint64_t sub_2166DF938@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v16 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  sub_2166DFBB4(a1, v8);
  sub_2166E0520(a1, v11);
  v14 = *(v5 + 8);
  v14(v8, v4);
  sub_2166E0A9C(a1, v13);
  v14(v11, v4);
  sub_2166E1C2C(a1, a2);
  return (v14)(v13, v4);
}

uint64_t sub_2166DFAC0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2166DFBB4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v20 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v17 - v9;
  MEMORY[0x28223BE20](v8);
  v18 = v17 - v11;
  v21 = a1;
  v13 = *(v12 + 16);
  v13(v7, v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8660);
  v17[1] = &unk_217063768;
  sub_2166D9530(&qword_280E47640, &qword_27CAC8660);
  sub_21700D5A4();
  v21 = a1;
  v13(v10, v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8668);
  sub_2166D9530(&qword_280E47638, &qword_27CAC8668);
  sub_21700D5A4();
  v14 = *(v20 + 8);
  v20 += 8;
  v14(v7, v4);
  v21 = a1;
  v15 = v18;
  v13(v18, v10, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8670);
  sub_2166D9530(qword_280E47648, &qword_27CAC8670);
  sub_21700D5A4();
  v14(v10, v4);
  v21 = a1;
  v13(v19, v15, v4);
  sub_2166E03A0();
  sub_21700D5A4();
  return (v14)(v15, v4);
}

uint64_t sub_2166DFED8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2166DFF34(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2166C1368(v1);
  }

  return result;
}

uint64_t sub_2166DFF94()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_36(AssociatedTypeWitness);
  v2 = *(v0 + 24);
  v3 = *(v0 + 64);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20_0(v4);
  *v5 = v6;
  v5[1] = sub_2166AB4A0;
  v7 = OUTLINED_FUNCTION_19_10();

  return sub_2166E0118(v7, v8, v2, v3, v9);
}

uint64_t sub_2166E0090()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_21700D284();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2166E0118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = *a4;
  v5[7] = *(*a4 + 96);
  v5[8] = *(v6 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[9] = AssociatedTypeWitness;
  v5[10] = *(AssociatedTypeWitness - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  sub_21700EA34();
  v5[13] = sub_21700EA24();
  v9 = sub_21700E9B4();
  v5[14] = v9;
  v5[15] = v8;

  return MEMORY[0x2822009F8](sub_2166E0268, v9, v8);
}

uint64_t sub_2166E0268()
{
  OUTLINED_FUNCTION_31();
  if (qword_280E2C138 != -1)
  {
    OUTLINED_FUNCTION_54_5();
  }

  v1 = sub_217007CA4();
  v0[16] = __swift_project_value_buffer(v1, qword_280E2C140);
  v2 = sub_217007C84();
  v3 = sub_21700EDA4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_216679000, v2, v3, "Awaiting for the objectGraph…", v4, 2u);
    OUTLINED_FUNCTION_6();
  }

  v5 = v0[5];

  v0[17] = *(v5 + 40);
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_99_0(v6);

  return sub_2166DE4E0();
}

unint64_t sub_2166E03A0()
{
  result = qword_280E47F80[0];
  if (!qword_280E47F80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E47F80);
  }

  return result;
}

uint64_t type metadata accessor for CreateGenericMusicItemStationAction()
{
  result = qword_280E48008;
  if (!qword_280E48008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166E0458()
{
  result = sub_2170067A4();
  if (v1 <= 0x3F)
  {
    result = sub_21700D284();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2166E04DC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_2166E0520@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v20 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v17 - v9;
  MEMORY[0x28223BE20](v8);
  v18 = v17 - v11;
  v21 = a1;
  v13 = *(v12 + 16);
  v13(v7, v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8648);
  v17[1] = &unk_217044AA8;
  sub_2166D9530(qword_280E47AB8, &qword_27CAC8648);
  sub_21700D5A4();
  v21 = a1;
  v13(v10, v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8650);
  sub_2166D9530(&qword_280E47AA8, &qword_27CAC8650);
  sub_21700D5A4();
  v14 = *(v20 + 8);
  v20 += 8;
  v14(v7, v4);
  v21 = a1;
  v15 = v18;
  v13(v18, v10, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8658);
  sub_2166D9530(&qword_280E47AB0, &qword_27CAC8658);
  sub_21700D5A4();
  v14(v10, v4);
  v21 = a1;
  v13(v19, v15, v4);
  sub_2166E0978();
  sub_21700D5A4();
  return (v14)(v15, v4);
}

uint64_t sub_2166E0868()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_2166E08BC()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_21700D284();
      if (v2 <= 0x3F)
      {
        sub_216689C64();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_2166E0978()
{
  result = qword_280E2DCB8;
  if (!qword_280E2DCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2DCB8);
  }

  return result;
}

uint64_t type metadata accessor for PlayLibraryArtistAction()
{
  result = qword_280E37A70;
  if (!qword_280E37A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166E0A18()
{
  result = sub_21700C384();
  if (v1 <= 0x3F)
  {
    result = sub_21700D284();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2166E0A9C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v78 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v87 = *(v4 - 8);
  v5 = v87;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v67 = &v66 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v80 = &v66 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v68 = &v66 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v69 = &v66 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v70 = &v66 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v71 = &v66 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v81 = &v66 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v72 = &v66 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v82 = &v66 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v73 = &v66 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v74 = &v66 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v75 = &v66 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v76 = &v66 - v34;
  MEMORY[0x28223BE20](v33);
  v77 = &v66 - v35;
  v84 = a1;
  v88 = a1;
  v36 = *(v5 + 16);
  v36(v8, v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC85E8);
  v86 = &unk_217056900;
  sub_2166D9530(&qword_280E47B68, &qword_27CAC85E8);
  sub_21700D5A4();
  v88 = a1;
  v37 = v67;
  v36(v67, v8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC85F0);
  sub_2166D9530(&qword_280E47B40, &qword_27CAC85F0);
  sub_21700D5A4();
  v38 = *(v87 + 8);
  v87 += 8;
  v38(v8, v4);
  v39 = v84;
  v88 = v84;
  v40 = v80;
  v36(v80, v37, v4);
  v79 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC85F8);
  sub_2166D9530(&qword_280E47B70, &qword_27CAC85F8);
  sub_21700D5A4();
  v83 = v38;
  v38(v37, v4);
  v41 = v39;
  v88 = v39;
  v42 = v68;
  v36(v68, v40, v4);
  v85 = v5 + 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8600);
  sub_2166D9530(&qword_280E47B60, &qword_27CAC8600);
  sub_21700D5A4();
  v38(v80, v4);
  v88 = v41;
  v43 = v41;
  v44 = v69;
  v45 = v79;
  v79(v69, v42, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8608);
  sub_2166D9530(&qword_280E47B48, &qword_27CAC8608);
  sub_21700D5A4();
  v46 = v83;
  v83(v42, v4);
  v88 = v43;
  v47 = v70;
  v45(v70, v44, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8610);
  sub_2166D9530(&qword_280E47B50, &qword_27CAC8610);
  sub_21700D5A4();
  v46(v44, v4);
  v48 = v46;
  v49 = v84;
  v88 = v84;
  v50 = v71;
  v51 = v79;
  v79(v71, v47, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8618);
  sub_2166D9530(&qword_280E47B58, &qword_27CAC8618);
  sub_21700D5A4();
  v48(v47, v4);
  v88 = v49;
  v52 = v81;
  v51(v81, v50, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8620);
  sub_2166D9530(qword_280E47B98, &qword_27CAC8620);
  sub_21700D5A4();
  v53 = v83;
  v83(v50, v4);
  v54 = v49;
  v88 = v49;
  v55 = v72;
  v51(v72, v52, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8628);
  sub_2166D9530(&qword_280E47B78, &qword_27CAC8628);
  sub_21700D5A4();
  v53(v81, v4);
  v88 = v54;
  v56 = v82;
  v51(v82, v55, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8630);
  sub_2166D9530(&qword_280E47B80, &qword_27CAC8630);
  sub_21700D5A4();
  v57 = v83;
  v83(v55, v4);
  v88 = v54;
  v58 = v73;
  v51(v73, v56, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8638);
  sub_2166D9530(&qword_280E47B90, &qword_27CAC8638);
  v59 = v58;
  sub_21700D5A4();
  v57(v82, v4);
  v60 = v84;
  v88 = v84;
  v61 = v74;
  v51(v74, v59, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8640);
  sub_2166D9530(&qword_280E47B88, &qword_27CAC8640);
  sub_21700D5A4();
  v57(v59, v4);
  v88 = v60;
  v62 = v75;
  v51(v75, v61, v4);
  sub_2166E1710();
  sub_21700D5A4();
  v57(v61, v4);
  v63 = v76;
  v51(v76, v62, v4);
  sub_2166E18AC();
  sub_21700D5A4();
  v57(v62, v4);
  v64 = v77;
  v51(v77, v63, v4);
  sub_2166E194C();
  sub_21700D5A4();
  v57(v63, v4);
  v88 = v60;
  v51(v78, v64, v4);
  sub_2166E1A80();
  sub_21700D5A4();
  return (v57)(v64, v4);
}

uint64_t sub_2166E1590()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2166E15E4()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_21700E984();
    v2 = sub_21700F164();
    if (v3 > 0x3F)
    {
      return v2;
    }

    v2 = sub_21700D284();
    if (v4 > 0x3F)
    {
      return v2;
    }

    else
    {
      v0 = type metadata accessor for PlayMusicItemAction.ShuffleMode();
      if (v5 <= 0x3F)
      {
        sub_216689C64();
        v0 = v6;
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v0;
}

unint64_t sub_2166E1710()
{
  result = qword_280E48170[0];
  if (!qword_280E48170[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E48170);
  }

  return result;
}

uint64_t type metadata accessor for PlayGenericMusicItemAction()
{
  result = qword_280E482A8;
  if (!qword_280E482A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166E17B0()
{
  sub_2170067A4();
  if (v0 <= 0x3F)
  {
    sub_21668A338(319, &qword_280E2A050, &qword_27CAB6A38);
    if (v1 <= 0x3F)
    {
      sub_21700D284();
      if (v2 <= 0x3F)
      {
        sub_21668A338(319, &qword_280E2A2A8, &qword_27CAB6D68);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_2166E18AC()
{
  result = qword_280E2F158[0];
  if (!qword_280E2F158[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2F158);
  }

  return result;
}

uint64_t type metadata accessor for PausePlaybackAction()
{
  result = qword_280E3D7A0;
  if (!qword_280E3D7A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2166E194C()
{
  result = qword_280E2E640;
  if (!qword_280E2E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2E640);
  }

  return result;
}

uint64_t type metadata accessor for PlayPauseTappedAction()
{
  result = qword_280E3A068;
  if (!qword_280E3A068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2166E19EC()
{
  result = sub_21668B174();
  if (v1 <= 0x3F)
  {
    result = sub_21700D284();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2166E1A80()
{
  result = qword_280E48168;
  if (!qword_280E48168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E48168);
  }

  return result;
}

uint64_t type metadata accessor for PlayGenericMusicItemCollectionAction()
{
  result = qword_280E48208;
  if (!qword_280E48208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166E1B20()
{
  sub_2166E1BD4();
  if (v0 <= 0x3F)
  {
    sub_21700D284();
    if (v1 <= 0x3F)
    {
      sub_216689C64();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2166E1BD4()
{
  if (!qword_280E2A058)
  {
    sub_2170067A4();
    v0 = sub_21700E984();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2A058);
    }
  }
}

uint64_t sub_2166E1C2C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v69 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v77 = *(v4 - 8);
  v5 = v77;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v61 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v61 = &v61 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v71 = &v61 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v62 = &v61 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v63 = &v61 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v64 = &v61 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v65 = &v61 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v72 = &v61 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v66 = &v61 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v67 = &v61 - v29;
  MEMORY[0x28223BE20](v28);
  v68 = &v61 - v30;
  v74 = a1;
  v78 = a1;
  v31 = *(v5 + 16);
  v31(v8, v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8588);
  sub_2166D9530(&qword_280E478F0, &qword_27CAC8588);
  sub_21700D5A4();
  v78 = a1;
  v31(v11, v8, v4);
  v70 = v5 + 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8590);
  sub_2166D9530(&qword_280E478C8, &qword_27CAC8590);
  v32 = v11;
  sub_21700D5A4();
  v33 = *(v77 + 8);
  v77 += 8;
  v33(v8, v4);
  v75 = v33;
  v34 = v74;
  v78 = v74;
  v35 = v61;
  v31(v61, v32, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8598);
  v76 = &unk_217040A20;
  sub_2166D9530(&qword_280E478F8, &qword_27CAC8598);
  sub_21700D5A4();
  v33(v32, v4);
  v78 = v34;
  v36 = v71;
  v73 = v31;
  v31(v71, v35, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC85A0);
  sub_2166D9530(&qword_280E478E8, &qword_27CAC85A0);
  v37 = v36;
  sub_21700D5A4();
  v38 = v75;
  v75(v35, v4);
  v39 = v74;
  v78 = v74;
  v40 = v62;
  v31(v62, v37, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC85A8);
  sub_2166D9530(&qword_280E478D0, &qword_27CAC85A8);
  sub_21700D5A4();
  v38(v71, v4);
  v78 = v39;
  v41 = v63;
  v42 = v73;
  v73(v63, v40, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC85B0);
  sub_2166D9530(&qword_280E478D8, &qword_27CAC85B0);
  sub_21700D5A4();
  v43 = v40;
  v44 = v75;
  v75(v43, v4);
  v78 = v39;
  v45 = v64;
  v42(v64, v41, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC85B8);
  sub_2166D9530(&qword_280E478E0, &qword_27CAC85B8);
  sub_21700D5A4();
  v44(v41, v4);
  v78 = v39;
  v46 = v65;
  v47 = v73;
  v73(v65, v45, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC85C0);
  sub_2166D9530(qword_280E47920, &qword_27CAC85C0);
  sub_21700D5A4();
  v48 = v45;
  v49 = v75;
  v75(v48, v4);
  v78 = v39;
  v50 = v72;
  v47(v72, v46, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC85C8);
  sub_2166D9530(&qword_280E47900, &qword_27CAC85C8);
  sub_21700D5A4();
  v49(v46, v4);
  v78 = v39;
  v51 = v66;
  v47(v66, v50, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC85D0);
  sub_2166D9530(&qword_280E47908, &qword_27CAC85D0);
  sub_21700D5A4();
  v49(v72, v4);
  v78 = v39;
  v52 = v67;
  v53 = v51;
  v54 = v73;
  v73(v67, v51, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC85D8);
  sub_2166D9530(&qword_280E47918, &qword_27CAC85D8);
  v55 = v52;
  sub_21700D5A4();
  v56 = v53;
  v57 = v75;
  v75(v56, v4);
  v58 = v74;
  v78 = v74;
  v59 = v68;
  v54(v68, v55, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC85E0);
  sub_2166D9530(&qword_280E47910, &qword_27CAC85E0);
  sub_21700D5A4();
  v57(v55, v4);
  v78 = v58;
  v54(v69, v59, v4);
  sub_2166E26E4();
  sub_21700D5A4();
  return (v57)(v59, v4);
}

uint64_t sub_2166E25CC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2166E2620()
{
  result = sub_21700E984();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for QueueMusicItemsAction.InsertionPosition();
    if (v2 <= 0x3F)
    {
      result = sub_21700D284();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2166E26E4()
{
  result = qword_280E48018[0];
  if (!qword_280E48018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E48018);
  }

  return result;
}

uint64_t type metadata accessor for QueueGenericMusicItemsAction()
{
  result = qword_280E480A8;
  if (!qword_280E480A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2166E2784()
{
  sub_2166E1BD4();
  if (v0 <= 0x3F)
  {
    sub_21700D284();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2166E2810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_49();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_77();
  v30 = (v28 - v29);
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  v34 = *(v26 + 16);
  OUTLINED_FUNCTION_42();
  v34();
  sub_2166E2994();
  OUTLINED_FUNCTION_6_10();
  sub_21700D5A4();
  (v34)(v33, v30, v24);
  sub_2166E2A94();
  OUTLINED_FUNCTION_6_10();
  sub_21700D5A4();
  v35 = *(v26 + 8);
  v35(v30, v24);
  (v34)(v23, v33, v24);
  sub_2166E2B08();
  OUTLINED_FUNCTION_6_10();
  sub_21700D5A4();
  v35(v33, v24);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_2166E2994()
{
  result = qword_280E2CAC8[0];
  if (!qword_280E2CAC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2CAC8);
  }

  return result;
}

void sub_2166E2A08()
{
  sub_2166D94CC();
  if (v0 <= 0x3F)
  {
    sub_21700D284();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_2166E2A94()
{
  result = qword_280E2C9D0;
  if (!qword_280E2C9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2C9D0);
  }

  return result;
}

unint64_t sub_2166E2B08()
{
  result = qword_280E2CC00[0];
  if (!qword_280E2CC00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2CC00);
  }

  return result;
}

uint64_t type metadata accessor for AgeVerificationOnboardingAction()
{
  result = qword_280E305C8;
  if (!qword_280E305C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166E2BA8(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_21700E514();

  return v3;
}

void sub_2166E2C24()
{
  OUTLINED_FUNCTION_48_28();
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABACE8), v4 = OUTLINED_FUNCTION_6_129(), (v5 = *(v0 + 16)) != 0))
  {
    OUTLINED_FUNCTION_36_46();
    while (v3 < *(v0 + 16))
    {
      OUTLINED_FUNCTION_30_54();
      sub_21700DF14();
      OUTLINED_FUNCTION_47_2();
      sub_21700E614();
      sub_21700F944();
      OUTLINED_FUNCTION_1_223();
      while (1)
      {
        OUTLINED_FUNCTION_34_39();
        if (v8)
        {
          break;
        }

        OUTLINED_FUNCTION_45_33();
        v8 = v8 && v7 == v2;
        if (v8 || (sub_21700F7D4() & 1) != 0)
        {

          goto LABEL_15;
        }
      }

      OUTLINED_FUNCTION_19_65(v6);
      if (v10)
      {
        goto LABEL_18;
      }

      *(v4 + 16) = v9;
LABEL_15:
      if (v3 == v5)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_16:
  }
}

unint64_t sub_2166E2D40()
{
  result = qword_280E44FD8;
  if (!qword_280E44FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E44FD8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_73_3(uint64_t result, __n128 a2)
{
  *(result + 16) = a2;
  v7 = *(v5 - 176);
  *(result + 32) = *(v5 - 168);
  *(result + 40) = v7;
  *(result + 48) = *(v5 - 184);
  *(result + 56) = v3;
  *(result + 64) = v4;
  *(result + 72) = v2;

  return sub_2167A2998(result);
}

void sub_2166E2EC8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_2166E2F40(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA2F8);
    return sub_21700E9C4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA2F8);
    return sub_21700E9D4();
  }
}

uint64_t sub_2166E2FC0(int a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA2F8);

  return sub_2166E2F40(a1, a2);
}

uint64_t sub_2166E304C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *(v1 + 32) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2166E3168()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 56) = v4;
  *(v2 + 64) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2166E3268()
{
  if (qword_280E32630 != -1)
  {
    OUTLINED_FUNCTION_1_38();
  }

  v1 = sub_217007CA4();
  __swift_project_value_buffer(v1, qword_280E32638);
  v2 = sub_217007C84();
  v3 = sub_21700ED64();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 56);
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_216679000, v2, v3, "iCloud account status: %{public}ld", v5, 0xCu);
    MEMORY[0x21CEA1440](v5, -1, -1);
  }

  OUTLINED_FUNCTION_6_28();

  return v6();
}

uint64_t sub_2166E337C()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_280E32638);
  __swift_project_value_buffer(v0, qword_280E32638);
  return sub_217007C94();
}

uint64_t sub_2166E33FC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2166E34EC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2166E35DC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 24) = v1 & 1;
  return (*(v0 + 8))();
}

void sub_2166E360C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21[-v3 - 8];
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v5 = sub_217007CA4();
  __swift_project_value_buffer(v5, qword_280E73D20);
  v6 = sub_217007C84();
  v7 = sub_21700EDA4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_216679000, v6, v7, "💬 ┏ Checking GDPR acknowledgement...", v8, 2u);
    MEMORY[0x21CEA1440](v8, -1, -1);
  }

  v9 = [objc_opt_self() sharedPrivacyInfo];
  v10 = [v9 privacyAcknowledgementRequiredForMusic];

  v11 = sub_217007C84();
  v12 = sub_21700EDA4();
  v13 = os_log_type_enabled(v11, v12);
  if (v10)
  {
    if (v13)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_216679000, v11, v12, "💬 ┃ ⛔ GDPR has not been accepted; prevent setup and observing for messages.", v14, 2u);
      MEMORY[0x21CEA1440](v14, -1, -1);
    }

    v15 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_privacyAcknowledgementObserver;
    if (!*(v1 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_privacyAcknowledgementObserver))
    {
      type metadata accessor for PrivacyAcknowledgementDidChangeObserver();
      swift_allocObject();
      *(v1 + v15) = sub_216AFB544();

      if (*(v1 + v15))
      {
        swift_allocObject();
        swift_weakInit();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD68);
        sub_2166EF228(&qword_280E2A2F0, &qword_27CABCD68);

        sub_21700D1D4();
        sub_21700D1F4();

        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD60);
        v17 = v4;
        v18 = 0;
      }

      else
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCD60);
        v17 = v4;
        v18 = 1;
      }

      __swift_storeEnumTagSinglePayload(v17, v18, 1, v16);
      sub_216697664(v4, &unk_27CABFB90);
    }
  }

  else
  {
    if (v13)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_216679000, v11, v12, "💬 ┃ 🟢 GDPR was accepted, proceed with checking for enablement.", v19, 2u);
      MEMORY[0x21CEA1440](v19, -1, -1);
    }

    sub_2166E3A90();
  }
}

uint64_t sub_2166E39D4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2166E3A0C()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_280E73D20);
  __swift_project_value_buffer(v0, qword_280E73D20);
  return sub_217007C94();
}

uint64_t sub_2166E3A90()
{
  v1 = v0;
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v2 = sub_217007CA4();
  __swift_project_value_buffer(v2, qword_280E73D20);
  v3 = sub_217007C84();
  v4 = sub_21700EDA4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_216679000, v3, v4, "💬 ┃ Checking for UM enablement in JS...", v5, 2u);
    MEMORY[0x21CEA1440](v5, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFBA0);
  v6 = *(v1 + 208);
  sub_21700D4D4();
  result = sub_21700E094();
  if (v8)
  {
    sub_2166E3BD0(v8, v6);
  }

  return result;
}

uint64_t sub_2166E3BD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = sub_216A06C54(&unk_280E41BA8, type metadata accessor for UnifiedMessages.Coordinator);
  v11 = swift_allocObject();
  v11[2] = v3;
  v11[3] = v10;
  v11[4] = v3;
  v11[5] = a2;
  v11[6] = a1;
  swift_retain_n();

  sub_21677BBA0();
}

uint64_t sub_2166E3D24()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_22_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_3(v1);
  OUTLINED_FUNCTION_12_7();

  return sub_2166E3DC4(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_2166E3DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFB78);
  v6[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2166E3EA0, a4, 0);
}

uint64_t sub_2166E3EA0()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];
  v4 = sub_21700EA74();
  OUTLINED_FUNCTION_88(v1, v5, v6, v4);
  OUTLINED_FUNCTION_30_25();
  v9 = sub_216A06C54(v7, v8);
  OUTLINED_FUNCTION_53();
  v10 = swift_allocObject();
  v10[2] = v2;
  v10[3] = v9;
  v10[4] = v2;
  v10[5] = v3;
  swift_retain_n();

  OUTLINED_FUNCTION_9_46();
  sub_21677E950();
  v11 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_enablementTask;
  v0[15] = v12;
  v0[16] = v11;
  *(v2 + v11) = v12;

  v13 = swift_task_alloc();
  v0[17] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0);
  *v13 = v0;
  v13[1] = sub_216A02308;
  OUTLINED_FUNCTION_47_8();

  return MEMORY[0x282200430](v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t ObjectGraph.__allocating_init(name:dependencies:)()
{
  OUTLINED_FUNCTION_4_95();
  OUTLINED_FUNCTION_2_116();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_0_171();
  v1 = swift_allocObject();
  v2 = OUTLINED_FUNCTION_1_149();
  v3(v2);
  sub_21700D464();
  v4 = OUTLINED_FUNCTION_3_113();
  v5(v4);
  return v1;
}

uint64_t sub_2166E40FC()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_22_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_3(v1);
  OUTLINED_FUNCTION_82_11();
  OUTLINED_FUNCTION_47_8();

  return sub_2166E4190(v3, v4, v5, v6, v7);
}

uint64_t sub_2166E4190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a4;
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_216A02A00;

  return sub_2166E44C8(a5);
}

uint64_t sub_2166E4230()
{
  OUTLINED_FUNCTION_31();
  if (qword_280E2B908 != -1)
  {
    swift_once();
  }

  if (byte_280E73A82)
  {
    if (qword_280E416F8 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v2 = sub_217007CA4();
    OUTLINED_FUNCTION_29_2(v2, qword_280E73D20);
    v3 = sub_217007C84();
    v4 = sub_21700ED84();
    if (!OUTLINED_FUNCTION_41_0(v4))
    {
      goto LABEL_14;
    }

    v5 = OUTLINED_FUNCTION_43();
    *v5 = 0;
    v6 = "💬 ┃┃ ⛔ Automation has disabled Unified Messages";
LABEL_13:
    _os_log_impl(&dword_216679000, v3, v0, v6, v5, 2u);
    OUTLINED_FUNCTION_6();
LABEL_14:

    OUTLINED_FUNCTION_43_4();

    return v11(0);
  }

  v7 = [objc_opt_self() sharedPrivacyInfo];
  v8 = [v7 privacyAcknowledgementRequiredForMusic];

  if (v8)
  {
    if (qword_280E416F8 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v9 = sub_217007CA4();
    OUTLINED_FUNCTION_29_2(v9, qword_280E73D20);
    v3 = sub_217007C84();
    v10 = sub_21700EDA4();
    if (!OUTLINED_FUNCTION_41_0(v10))
    {
      goto LABEL_14;
    }

    v5 = OUTLINED_FUNCTION_43();
    *v5 = 0;
    v6 = "💬 ┃┃ ⛔ GDPR has not been accepted; disallow UM.";
    goto LABEL_13;
  }

  v13 = v1[3];
  type metadata accessor for JSIntentDispatcher();
  sub_21700D4D4();
  OUTLINED_FUNCTION_116();
  sub_21700E094();
  v1[5] = v1[2];
  OUTLINED_FUNCTION_17_5();
  v1[6] = sub_2166E5204(0xD00000000000001FLL, v14, v13);
  v15 = swift_task_alloc();
  v1[7] = v15;
  *v15 = v1;
  v15[1] = sub_216A02B68;

  return sub_2166E5748();
}

uint64_t sub_2166E44C8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_2166E4230, v1, 0);
}

id sub_2166E44E8()
{
  result = sub_2166E450C();
  byte_280E73A82 = result & 1;
  return result;
}

id sub_2166E450C()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_21700E354();
  sub_2166AF628(0xD000000000000016, 0x8000000217086BA0, v2);
  v4 = v3;

  if (v4)
  {
    sub_21700DF14();
    v5 = sub_21700E4D4();
    v6 = [v5 BOOLValue];
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v7 = [objc_opt_self() standardUserDefaults];
    v5 = sub_21700E4D4();
    v6 = [v7 BOOLForKey_];
  }

  return v6;
}

uint64_t sub_2166E465C()
{

  return sub_2166E46E8();
}

uint64_t sub_2166E46E8()
{
  OUTLINED_FUNCTION_22_7();
  os_unfair_lock_lock(*(v0 + 16));
  v1 = OUTLINED_FUNCTION_1_194();
  sub_2166E4754(v1);
  OUTLINED_FUNCTION_3_155();
}

void sub_2166E4754(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_objectGraph))
  {
    if (qword_280E328A0 != -1)
    {
      OUTLINED_FUNCTION_1_107();
    }

    v1 = sub_217007CA4();
    __swift_project_value_buffer(v1, qword_280E328A8);
    v2 = sub_217007C84();
    v3 = sub_21700EDA4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_216679000, v2, v3, "Secondary object graph built.", v4, 2u);
      MEMORY[0x21CEA1440](v4, -1, -1);
    }
  }

  else
  {
    if (qword_280E328A0 != -1)
    {
      OUTLINED_FUNCTION_1_107();
    }

    v5 = sub_217007CA4();
    __swift_project_value_buffer(v5, qword_280E328A8);
    v6 = sub_217007C84();
    v7 = sub_21700EDA4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_216679000, v6, v7, "Object graph built.", v8, 2u);
      MEMORY[0x21CEA1440](v8, -1, -1);
    }

    v9 = sub_21700D454();
    sub_2166E4984(v9);
  }
}

uint64_t sub_2166E4904()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_280E328A8);
  __swift_project_value_buffer(v0, qword_280E328A8);
  return sub_217007C94();
}

uint64_t sub_2166E4984(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_objectGraph) = a1;

  sub_2166E49E0();
}

uint64_t sub_2166E49E0()
{
  os_unfair_lock_assert_owner(*(*(v0 + OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_lock) + 16));
  v1 = OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_queuedIntents;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    sub_21700DF14();
    do
    {
      sub_216681B64(v4, v6, &qword_27CABD288);
      sub_2166EFE80(v6);
      sub_21669987C(v6, &qword_27CABD288);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  *(v0 + v1) = MEMORY[0x277D84F90];
}

uint64_t sub_2166E4ACC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v5 = *(v4 + 344);
  v6 = *v1;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v9 + 360) = v8;
  *(v9 + 368) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2166E4C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();
  v18 = v16[27];

  sub_2166A8544();
  sub_2166C7454(v18);
  v19 = sub_217007C84();
  v20 = sub_21700EDA4();
  if (OUTLINED_FUNCTION_9_3(v20))
  {
    v21 = OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_36_5(v21);
    OUTLINED_FUNCTION_121(&dword_216679000, v22, v23, "UI Bootstrap complete.");
    OUTLINED_FUNCTION_26_4();
  }

  v24 = v16[39];
  v25 = v16[18];
  v26 = v16[17];

  v27 = OUTLINED_FUNCTION_116();
  v24(v27);
  sub_216697664(v26, &qword_27CAB94C8);
  if (qword_280E2B920 != -1)
  {
    OUTLINED_FUNCTION_117_2();
  }

  if (byte_280E73A84 == 1)
  {
    if (qword_280E2B900 != -1)
    {
      swift_once();
    }

    if (byte_280E73A81 == 1)
    {
      OUTLINED_FUNCTION_213();
      v28 = sub_217007C84();
      v29 = sub_21700EDA4();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = OUTLINED_FUNCTION_43();
        OUTLINED_FUNCTION_36_5(v30);
        _os_log_impl(&dword_216679000, v28, v29, "Sheet presentation was disabled. Acknowledging privacy disclaimer automatically.", v25, 2u);
        OUTLINED_FUNCTION_26_4();
      }

      v31 = v16[39];

      v32 = OUTLINED_FUNCTION_116();
      v31(v32);
      sub_216B94470();
      goto LABEL_18;
    }
  }

  v33 = sub_21669DAC4();

  if ((v33 & 1) == 0)
  {
LABEL_18:
    sub_2166E660C();
    if (qword_280E2B930 != -1)
    {
      OUTLINED_FUNCTION_116_1();
    }

    if (byte_280E73A85 == 1)
    {
      OUTLINED_FUNCTION_213();
      v48 = sub_217007C84();
      v49 = sub_21700EDA4();
      if (OUTLINED_FUNCTION_9_3(v49))
      {
        v50 = OUTLINED_FUNCTION_43();
        OUTLINED_FUNCTION_36_5(v50);
        OUTLINED_FUNCTION_121(&dword_216679000, v51, v52, "🧙 Wizard is enabled! ✨");
        OUTLINED_FUNCTION_26_4();
      }

      v53 = v16[39];

      v54 = OUTLINED_FUNCTION_116();
      v53(v54);
    }

    v55 = v16[22];
    OUTLINED_FUNCTION_58();
    sub_2166E6984(v56, v57, v58);

    sub_2166C7454(v55);
    v59 = sub_217007C84();
    v60 = sub_21700EDA4();
    if (os_log_type_enabled(v59, v60))
    {
      *OUTLINED_FUNCTION_43() = 0;
      OUTLINED_FUNCTION_245_0(&dword_216679000, v61, v62, "Bootstrap complete.");
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_205_0();
    v63 = OUTLINED_FUNCTION_119();
    v17(v63);
    sub_21700EA74();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
    OUTLINED_FUNCTION_65_0();
    v68 = swift_allocObject();
    OUTLINED_FUNCTION_86_5(v68);

    sub_216697664(v60, &unk_27CABFAC0);
    OUTLINED_FUNCTION_26_15();

    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_13_2();

    return v70(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  OUTLINED_FUNCTION_213();
  v34 = sub_217007C84();
  v35 = sub_21700EDA4();
  if (OUTLINED_FUNCTION_9_3(v35))
  {
    v36 = OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_36_5(v36);
    OUTLINED_FUNCTION_121(&dword_216679000, v37, v38, "Awaiting privacy disclaimer acknowledgement...");
    OUTLINED_FUNCTION_26_4();
  }

  v77 = v16[41];
  v40 = v16[39];
  v39 = v16[40];
  v78 = v16[30];
  v42 = v16[15];
  v41 = v16[16];
  v43 = v16[13];

  v44 = OUTLINED_FUNCTION_115();
  v40(v44);
  v77(v42, v39, v43);
  sub_21669E79C(v42, "PrivacyDisclaimerAcknowledgement", 32, 2, v41);
  v16[47] = *(v78 + 16);

  v45 = swift_task_alloc();
  v16[48] = v45;
  *v45 = v16;
  v45[1] = sub_2168425AC;
  OUTLINED_FUNCTION_13_2();

  return sub_216A4F6C8();
}

uint64_t sub_2166E513C()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_147_1()
{

  return sub_217009554();
}

uint64_t OUTLINED_FUNCTION_147_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_147_5()
{

  return sub_216FB315C();
}

uint64_t sub_2166E5204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_53();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_40_31(v6);
  *(v7 + 32) = v3;
  *(v7 + 40) = a3;

  sub_21700DF14();

  return sub_2166B1FC4(&unk_21706DA50, v4, &qword_27CAC1AF0, &unk_21703F930, &unk_28293C8E0, &unk_21706DA68);
}

uint64_t OUTLINED_FUNCTION_107_5()
{

  return sub_21700D284();
}

uint64_t OUTLINED_FUNCTION_107_7()
{

  return sub_2168AEDA8(v3 + v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_107_8()
{

  return sub_217009554();
}

uint64_t OUTLINED_FUNCTION_107_10()
{

  return sub_216F3D2E4(v0);
}

uint64_t OUTLINED_FUNCTION_114_1()
{

  return sub_216681B04(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_114_4()
{

  return sub_216697664(v1, v0);
}

uint64_t OUTLINED_FUNCTION_114_5(uint64_t a1, uint64_t a2)
{
  *v2 = a1;
  v2[1] = a2;

  return type metadata accessor for MappedSection.Content(0);
}

uint64_t OUTLINED_FUNCTION_114_6(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_114_7()
{

  return __swift_getEnumTagSinglePayload(v0 + v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_71_5()
{

  return sub_2167A4788();
}

__n128 OUTLINED_FUNCTION_71_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (*(a4 + 48) + 40 * a1);
  result = *a2;
  v6 = *(a2 + 16);
  *v4 = *a2;
  v4[1] = v6;
  return result;
}

uint64_t OUTLINED_FUNCTION_71_12()
{
}

uint64_t OUTLINED_FUNCTION_71_13()
{
}

uint64_t OUTLINED_FUNCTION_71_15()
{

  return sub_21700D734();
}

uint64_t OUTLINED_FUNCTION_125_0()
{

  return sub_217007ED4();
}

uint64_t OUTLINED_FUNCTION_125_2(uint64_t a1)
{

  return sub_216697664(a1, v1);
}

uint64_t OUTLINED_FUNCTION_125_4(uint64_t a1, uint64_t a2)
{
  *v2 = a1;
  v2[1] = a2;

  return type metadata accessor for PlaybackPresenter();
}

uint64_t OUTLINED_FUNCTION_125_7(uint64_t a1)
{
  *v1 = a1;

  return sub_217007874();
}

void sub_2166E5660()
{
  if (qword_280E404C8 != -1)
  {
    swift_once();
  }

  if (qword_280E404D8)
  {
    sub_21700E5D4();
    has_internal_content = os_variant_has_internal_content();
  }

  else
  {
    has_internal_content = 0;
  }

  byte_280E73A84 = has_internal_content;
}

uint64_t sub_2166E56EC()
{
  type metadata accessor for Platform();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  result = sub_2166E2BA8(v1);
  qword_280E404D0 = result;
  qword_280E404D8 = v3;
  return result;
}

uint64_t sub_2166E5748()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_55();
  sub_2166D9530(v0, v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v3[1] = sub_216A967B0;
  OUTLINED_FUNCTION_71_0();

  return MEMORY[0x282180360](v5);
}

uint64_t sub_2166E5828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_2_181();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_20_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_1_215(v11);
  OUTLINED_FUNCTION_91_0();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_2166E58B8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 24) = v7;
  *v7 = v6;
  v7[1] = sub_216ED0D94;

  return v9(v6 + 40);
}

uint64_t sub_2166E59AC()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_7_119();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_255(v1);
  OUTLINED_FUNCTION_47_8();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2166E5A3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *a3;
  v8 = a3[1];
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  *v9 = v4;
  v9[1] = sub_216ED1EB8;

  return sub_2166E5AF0(a2, v7, v8, a4);
}

uint64_t sub_2166E5AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_216ECE95C;

  return sub_2166E5BA4(a2, a3, a4);
}

uint64_t sub_2166E5BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t OUTLINED_FUNCTION_202()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2166E5C04()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t sub_2166E5D40()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_55();
  sub_2166D9530(v1, v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v0 + 24) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_57_15(v3);

  return MEMORY[0x282180360](v5);
}

uint64_t sub_2166E5E18()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F940);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_98_12(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_14_42(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t OUTLINED_FUNCTION_108_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_getEnumTagSinglePayload(a1, a2, a3);
}

__n128 OUTLINED_FUNCTION_108_3()
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  *(v0 + 1248) = *v1;
  result = *(v1 + 24);
  *(v0 + 1272) = result;
  *(v0 + 1264) = v2;
  *(v0 + 1288) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_108_6(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_2166A6F60(a1, va, v3);
}

uint64_t OUTLINED_FUNCTION_108_7()
{

  return sub_217009554();
}

uint64_t OUTLINED_FUNCTION_108_10()
{

  return swift_allocObject();
}

uint64_t sub_2166E6084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858);
  v4[6] = v7;
  v4[7] = *(v7 - 8);
  v4[8] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860);
  v4[9] = v8;
  v4[10] = *(v8 - 8);
  v4[11] = swift_task_alloc();
  v9 = sub_21700D2F4();
  v4[12] = v9;
  v4[13] = *(v9 - 8);
  v4[14] = swift_task_alloc();
  v10 = sub_21700CF34();
  v4[15] = v10;
  v4[16] = *(v10 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[2] = a1;
  v4[3] = a2;

  return MEMORY[0x2822009F8](sub_2166E62F8, 0, 0);
}

unint64_t sub_2166E62A4()
{
  result = qword_280E45D38;
  if (!qword_280E45D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E45D38);
  }

  return result;
}

uint64_t sub_2166E62F8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_34_23();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_35_26();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_105_8(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_12_45(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_2166E63A8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_55();
  sub_2166D9530(v1, v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v0 + 24) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_57_15(v3);

  return MEMORY[0x282180360](v5);
}

void sub_2166E6480()
{
  if (qword_280E2B918 != -1)
  {
    swift_once();
  }

  if (byte_280E73A83)
  {
    v0 = 1;
  }

  else
  {
    v1 = [objc_opt_self() processInfo];
    v2 = [v1 environment];

    v3 = sub_21700E354();
    v4 = OUTLINED_FUNCTION_0_117();
    sub_2166AF628(v4, v5, v3);
    v7 = v6;

    if (v7)
    {
      sub_21700DF14();
      v8 = sub_21700E4D4();
      v0 = [v8 BOOLValue];
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v0 = 0;
    }
  }

  byte_280E73A81 = v0;
}

void OUTLINED_FUNCTION_215_0()
{
}

uint64_t sub_2166E660C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  sub_21700EA34();

  v6 = sub_21700EA24();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v1;
  sub_21677BBA0();
}

uint64_t sub_2166E670C()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_181();

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_124_0()
{

  return swift_task_alloc();
}

void *OUTLINED_FUNCTION_124_3(void *a1)
{

  return memcpy(a1, v1, 0x61uLL);
}

uint64_t OUTLINED_FUNCTION_124_5@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a3 - 256);

  return sub_2169C3618(a1, v4, a2);
}

id sub_2166E6800()
{
  result = sub_2166E6824();
  byte_280E73A85 = result & 1;
  return result;
}

id sub_2166E6824()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_21700E354();
  sub_2166AF628(0x6957656C62616E45, 0xEC0000006472617ALL, v2);
  v4 = v3;

  if (v4)
  {
    sub_21700DF14();
    v5 = sub_21700E4D4();
    v6 = [v5 BOOLValue];
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v7 = [objc_opt_self() standardUserDefaults];
    v5 = sub_21700E4D4();
    v6 = [v7 BOOLForKey_];
  }

  return v6;
}

uint64_t sub_2166E6984(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  sub_21700EA34();

  sub_2166E6B18(a1);
  v12 = sub_21700EA24();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v4;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  sub_216888C34(0, 0, v10, &unk_21701D758, v13);

  return sub_216697664(v10, &unk_27CABFAC0);
}

uint64_t sub_2166E6ACC()
{
  swift_unknownObjectRelease();

  sub_2166DE7B8(*(v0 + 40));

  return swift_deallocObject();
}

unint64_t sub_2166E6B18(unint64_t result)
{
  if (result >> 62)
  {
    if (result >> 62 != 1)
    {
      return result;
    }

    v1 = (result & 0x3FFFFFFFFFFFFFFFLL);
  }
}

uint64_t OUTLINED_FUNCTION_247()
{
  v3 = *(v1 + 224);
  *(v1 + 304) = v0;

  return sub_2166C7454(v3);
}

uint64_t OUTLINED_FUNCTION_247_0()
{
}

uint64_t OUTLINED_FUNCTION_198()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_174()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_174_2()
{

  return sub_216F98238();
}

uint64_t sub_2166E6C54()
{
  OUTLINED_FUNCTION_31();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_55_7(v1);

  return sub_2166E6DD8();
}

uint64_t sub_2166E6CEC()
{
  OUTLINED_FUNCTION_33();
  if (qword_280E2B920 != -1)
  {
    OUTLINED_FUNCTION_117_2();
  }

  if (byte_280E73A84 == 1)
  {
    sub_21700EA34();
    *(v0 + 16) = sub_21700EA24();
    v2 = sub_21700E9B4();

    return MEMORY[0x2822009F8](sub_2166E7B9C, v2, v1);
  }

  else
  {
    OUTLINED_FUNCTION_3();

    return v3();
  }
}

uint64_t OUTLINED_FUNCTION_221_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);

  return type metadata accessor for Page.Header(0);
}

uint64_t OUTLINED_FUNCTION_221_2()
{

  return sub_216E47F84();
}

uint64_t sub_2166E6E50(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = sub_21700CB94();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v4 = sub_21700CA94();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2166E6F6C, 0, 0);
}

uint64_t sub_2166E6F6C()
{
  if (qword_280E3E770 != -1)
  {
    OUTLINED_FUNCTION_3_87();
  }

  __swift_project_value_buffer(v0[14], qword_280E73CF0);
  v1 = OUTLINED_FUNCTION_13_38();
  v2(v1);
  v3 = sub_21700CBD4();
  v4 = MEMORY[0x277D21A60];
  v0[5] = v3;
  v0[6] = v4;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_21700CBC4();
  sub_21700CA74();
  sub_21700CC14();
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_8_53(v5);

  return MEMORY[0x28217E6F8](v6);
}

uint64_t sub_2166E7094()
{
  v0 = sub_21700CB94();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_280E73CF0);
  v5 = __swift_project_value_buffer(v0, qword_280E73CF0);
  if (qword_280E2B920 != -1)
  {
    swift_once();
  }

  if (byte_280E73A84)
  {
    v6 = MEMORY[0x277D21A30];
  }

  else
  {
    v6 = MEMORY[0x277D21A38];
  }

  (*(v1 + 104))(v4, *v6, v0);
  return (*(v1 + 32))(v5, v4, v0);
}

uint64_t sub_2166E71E0()
{
  OUTLINED_FUNCTION_33();
  v7 = *v1;
  OUTLINED_FUNCTION_28();
  *v2 = v7;
  *(v7 + 168) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm(v7 + 56);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2166E72EC()
{
  OUTLINED_FUNCTION_33();
  v0 = OUTLINED_FUNCTION_14_41();
  v1(v0);

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_2166E7360()
{

  if (qword_280E3CB20 != -1)
  {
    swift_once();
  }

  if (![qword_280E3CB28 applicationState])
  {
    [*(*(v0 + 16) + 40) becomeActive];
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2166E741C(unsigned __int8 *a1, void *a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1228);
  result = MEMORY[0x28223BE20](v6 - 8);
  v9 = v16 - v8;
  v10 = *a1;
  if (v10 == 2)
  {
    v14 = type metadata accessor for SocialBadgingMap();
    v15 = __swift_storeEnumTagSinglePayload(v9, 1, 1, v14);
    MEMORY[0x28223BE20](v15);
    v16[-2] = a2;
    v16[-1] = v9;
    sub_216AB3DDC(sub_216ED1938);
    return sub_216697664(v9, &qword_27CAC1228);
  }

  else if (v10 == 3)
  {
    sub_216ED0250(a3 & 1);
    *(swift_allocObject() + 16) = a2;
    *(swift_allocObject() + 16) = a2;
    v11 = sub_2166AF2EC();
    v12 = a2;
    v13 = sub_21700EE84();
    v16[3] = v11;
    v16[4] = MEMORY[0x277D225C0];
    v16[0] = v13;
    sub_21700E1C4();

    return __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  return result;
}

uint64_t sub_2166E762C()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_55_7(v5);

  return sub_2166E76CC(v7, v1, v2, v3);
}

uint64_t sub_2166E76CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_217007CA4();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94D8);
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB94E0);
  v4[9] = v7;
  v4[10] = *(v7 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = sub_21700EA34();
  v4[13] = sub_21700EA24();
  v9 = sub_21700E9B4();
  v4[14] = v9;
  v4[15] = v8;

  return MEMORY[0x2822009F8](sub_2166E7894, v9, v8);
}

uint64_t sub_2166E7894()
{
  OUTLINED_FUNCTION_93();
  v0[16] = *(v0[2] + 24);

  sub_2166AACE4();

  sub_21700EAB4();
  v1 = OUTLINED_FUNCTION_115();
  v2(v1);
  v3 = sub_21700EA24();
  v0[17] = v3;
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_77_4(v4);
  v5 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 19, v3, v5);
}

uint64_t sub_2166E7994()
{
  OUTLINED_FUNCTION_82_0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_20_0(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_55_7(v8);

  return sub_2166E7B00(v10, v1, v2, v3, v4, v6, v5);
}

uint64_t sub_2166E7A54()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_191();
  sub_2166E6B18(v0);
  OUTLINED_FUNCTION_191();
  sub_21669727C();

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_2166E7B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_21700EA34();
  v7[6] = sub_21700EA24();
  v9 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_2166E7A54, v9, v8);
}

uint64_t sub_2166E7B9C()
{
  OUTLINED_FUNCTION_33();

  sub_217007CB4();
  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_2166E7BF8()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *(v3 + 152) = v5;
  *(v3 + 160) = v0;

  v6 = *(v2 + 120);
  v7 = *(v2 + 112);
  if (v0)
  {
    v8 = sub_21677FDF4;
  }

  else
  {
    v8 = sub_2166E7D30;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2166E7D30()
{
  v32 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);

  v5 = *(v4 + 56);
  swift_unknownObjectRetain();
  v5(v3, v4);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_71_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 24);
  v7(&v28, v1, AssociatedConformanceWitness);
  v8 = *(v2 + 8);
  v9 = OUTLINED_FUNCTION_98();
  v8(v9);
  v29 = v28;
  v7(&v30, v1, AssociatedConformanceWitness);
  *v31 = v30;
  v10 = static MusicTabID.== infix(_:_:)(&v29, v31);
  sub_2166E8284(v31[0], v31[1]);
  sub_2166E8284(v29, *(&v29 + 1));
  if ((v10 & 1) == 0)
  {
    goto LABEL_8;
  }

  v27 = v8;
  (*(*(v0 + 80) + 16))(*(v0 + 88), *(v0 + 48), *(v0 + 72));
  v11 = sub_217007C84();
  v12 = sub_21700EDA4();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 72);
  v26 = v7;
  if (v13)
  {
    v15 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v30 = v25;
    *v15 = 136446210;
    v7(v31, v14, AssociatedConformanceWitness);
    *(v0 + 16) = *v31;
    v24 = v12;
    v16 = sub_21700E594();
    v18 = v17;
    v19 = OUTLINED_FUNCTION_75();
    v27(v19);
    v20 = sub_2166A85FC(v16, v18, &v30);

    *(v15 + 4) = v20;
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v21 = OUTLINED_FUNCTION_75();
    v27(v21);
  }

  type metadata accessor for MusicTabChangePublisher();
  sub_21700D4B4();
  if (*(v0 + 32))
  {
    v26(&v30, *(v0 + 72), AssociatedConformanceWitness);
    *v31 = v30;
    sub_216C2DF48(v31);

    sub_2166E8284(v31[0], v31[1]);
  }

  else
  {
LABEL_8:
  }

  OUTLINED_FUNCTION_23();

  return v22();
}

uint64_t static MusicTabID.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  switch(v3)
  {
    case 0uLL:
      if (v5)
      {
        goto LABEL_22;
      }

      v6 = OUTLINED_FUNCTION_1_216(*a1, 0);
      v7 = 0;
      goto LABEL_24;
    case 1uLL:
      if (v5 != 1)
      {
        goto LABEL_22;
      }

      v17 = 1;
      v18 = OUTLINED_FUNCTION_1_216(*a1, 1uLL);
      sub_2166E8284(v18, 1uLL);
      return v17;
    case 2uLL:
      if (v5 != 2)
      {
        goto LABEL_22;
      }

      v6 = OUTLINED_FUNCTION_1_216(*a1, 2uLL);
      v7 = 2;
      goto LABEL_24;
    case 3uLL:
      if (v5 != 3)
      {
        goto LABEL_22;
      }

      v6 = OUTLINED_FUNCTION_1_216(*a1, 3uLL);
      v7 = 3;
      goto LABEL_24;
    case 4uLL:
      if (v5 != 4)
      {
        goto LABEL_22;
      }

      v6 = OUTLINED_FUNCTION_1_216(*a1, 4uLL);
      v7 = 4;
      goto LABEL_24;
    case 5uLL:
      if (v5 != 5)
      {
        goto LABEL_22;
      }

      v6 = OUTLINED_FUNCTION_1_216(*a1, 5uLL);
      v7 = 5;
      goto LABEL_24;
    case 6uLL:
      if (v5 != 6)
      {
        goto LABEL_22;
      }

      v6 = OUTLINED_FUNCTION_1_216(*a1, 6uLL);
      v7 = 6;
      goto LABEL_24;
    default:
      if (v5 < 7)
      {
LABEL_22:
        sub_2166E8270(*a2, *(a2 + 8));
        v19 = OUTLINED_FUNCTION_7_4();
        sub_2166E8270(v19, v20);
        v21 = OUTLINED_FUNCTION_7_4();
        v23 = OUTLINED_FUNCTION_1_216(v21, v22);
        sub_2166E8284(v23, v5);
        return 0;
      }

      else
      {
        v8 = *a1;
        if (v2 != v4 || v3 != v5)
        {
          v10 = sub_21700F7D4();
          sub_2166E8270(v4, v5);
          v11 = OUTLINED_FUNCTION_7_4();
          sub_2166E8270(v11, v12);
          v13 = OUTLINED_FUNCTION_7_4();
          v15 = OUTLINED_FUNCTION_1_216(v13, v14);
          sub_2166E8284(v15, v5);
          return v10 & 1;
        }

        sub_2166E8270(v8, v3);
        v24 = OUTLINED_FUNCTION_7_4();
        sub_2166E8270(v24, v25);
        v26 = OUTLINED_FUNCTION_7_4();
        sub_2166E8284(v26, v27);
        v6 = OUTLINED_FUNCTION_7_4();
LABEL_24:
        sub_2166E8284(v6, v7);
        return 1;
      }
  }
}

uint64_t sub_2166E8270(uint64_t a1, unint64_t a2)
{
  if (a2 >= 7)
  {
    return sub_21700DF14();
  }

  return result;
}

uint64_t sub_2166E8284(uint64_t a1, unint64_t a2)
{
  if (a2 >= 7)
  {
  }

  return result;
}

uint64_t sub_2166E8298()
{
  OUTLINED_FUNCTION_33();
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  *(v4 + 96) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2166E839C()
{
  v1 = v0[10];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_21700CB24();
  (*(v3 + 8))(v2, v4);
  sub_2166A8544();
  sub_21669987C(v1, &qword_27CAB94C8);

  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t sub_2166E8470()
{
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2166E8680()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2166E8778()
{
  OUTLINED_FUNCTION_31();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_21700E224();
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_2166E8800()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t objectdestroy_24Tm()
{
  OUTLINED_FUNCTION_49();
  v2 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_4_4();
  v9 = *(v8 + 80);
  (*(v4 + 8))(v1 + v5, v2);
  v10 = v1 + ((v5 + v7 + v9) & ~v9);
  v11 = type metadata accessor for ContentDescriptor();
  if (!__swift_getEnumTagSinglePayload(v10, 1, v11))
  {

    v12 = *(v11 + 24);
    v13 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v10 + v12, 1, v13))
    {
      (*(*(v13 - 8) + 8))(v10 + v12, v13);
    }
  }

  v14 = v10 + *(v0 + 20);
  type metadata accessor for MenuContext(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_34();
    (*(v15 + 8))(v14);
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0) + 48);
    v17 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v14 + v16, 1, v17))
    {
      (*(*(v17 - 8) + 8))(v14 + v16, v17);
    }
  }

  v18 = v10 + *(v0 + 32);
  if (*(v18 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t objectdestroy_24Tm_0()
{
  type metadata accessor for ReplayPageBackgroundView.TimelineAnimationView();
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  v4 = v3 + *(v0 + 44);
  v5 = sub_2170061E4();
  if (!__swift_getEnumTagSinglePayload(v4, 1, v5))
  {
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CABE9C0);

  return swift_deallocObject();
}

uint64_t objectdestroy_24Tm_1()
{
  OUTLINED_FUNCTION_8_52();
  type metadata accessor for PresentationSourceModifier();
  OUTLINED_FUNCTION_117();
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  v4 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0B18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217008034();
    OUTLINED_FUNCTION_9_0();
    (*(v5 + 8))(v1 + v3 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_24Tm_2()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_68_1();

  return swift_deallocObject();
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_38();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_0(uint64_t *a1)
{
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(a1) - 8);
  v3 = (*(*v2 + 80) + 24) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  v5 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  v8 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  v9 = v2[12];
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v10 + 8))(v1 + v3 + v9);
  (*(v7 + 8))(v1 + v8, v5);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for ViewAppearanceLifecycleModifier() - 8);
  (*(*(v1 - 8) + 8))(v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for SocialOnboardingPrivacySettingsPageView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_2166B8588();
  v3 = v2 + *(v1 + 20);
  __swift_destroy_boxed_opaque_existential_1Tm(v3);

  v4 = *(type metadata accessor for SocialOnboardingPrivacySettingsPageLockup() + 48);
  v5 = sub_21700D7A4();
  if (!__swift_getEnumTagSinglePayload(v3 + v4, 1, v5))
  {
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  v6 = v2 + *(v1 + 24);
  v7 = type metadata accessor for LinkComponentModel();
  if (!__swift_getEnumTagSinglePayload(v6, 1, v7))
  {
    if (!__swift_getEnumTagSinglePayload(v6, 1, v5))
    {
      (*(*(v5 - 8) + 8))(v6, v5);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v6 + *(v7 + 20));
    v8 = v6 + *(v7 + 24);
    if (*(v8 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
    }
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_4(void (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_117();
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  sub_2170075A4();
  OUTLINED_FUNCTION_1();

  v5 = *(v1 + 28);
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v6 + 8))(v2 + v4 + v5);
  v7 = OUTLINED_FUNCTION_8_11();
  v8(v7);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_5()
{
  v2 = type metadata accessor for SongDetailHeaderView();
  v3 = (*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80);
  v4 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2170098A4();
    if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v5))
    {
      OUTLINED_FUNCTION_50();
      (*(v6 + 8))(v0 + v3, v5);
    }
  }

  else
  {
  }

  sub_216684F5C(*(v4 + v2[10]), *(v4 + v2[10] + 8));
  v7 = v2[11];
  sub_21700C084();
  OUTLINED_FUNCTION_9_0();
  (*(v8 + 8))(v4 + v7);
  v9 = v4 + v2[12];
  v10 = type metadata accessor for SongDetailListHeaderLockup();
  if (!OUTLINED_FUNCTION_15_10(v10))
  {
    v11 = sub_21700D7A4();
    if (!__swift_getEnumTagSinglePayload(v9, 1, v11))
    {
      OUTLINED_FUNCTION_50();
      (*(v12 + 8))(v9, v11);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v9 + v1[5]);

    v13 = v9 + v1[8];
    if (*(v13 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
    }

    v14 = v9 + v1[9];
    if (*(v14 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
    }

    v15 = v9 + v1[10];
    v16 = type metadata accessor for ContentDescriptor();
    if (!__swift_getEnumTagSinglePayload(v15, 1, v16))
    {

      v17 = *(v16 + 24);
      v18 = sub_217005EF4();
      if (!__swift_getEnumTagSinglePayload(v15 + v17, 1, v18))
      {
        OUTLINED_FUNCTION_50();
        (*(v19 + 8))(v15 + v17, v18);
      }
    }

    v20 = v9 + v1[11];
    v21 = type metadata accessor for Artwork();
    if (!OUTLINED_FUNCTION_15_10(v21))
    {
      sub_21700C4B4();
      OUTLINED_FUNCTION_9_0();
      (*(v22 + 8))(v20);
      v23 = v1[5];
      sub_21700C444();
      OUTLINED_FUNCTION_9_0();
      (*(v24 + 8))(v20 + v23);
    }
  }

  v25 = v4 + v2[13];
  v26 = type metadata accessor for ContentDescriptor();
  if (!__swift_getEnumTagSinglePayload(v25, 1, v26))
  {

    v27 = *(v26 + 24);
    v28 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v25 + v27, 1, v28))
    {
      OUTLINED_FUNCTION_50();
      (*(v29 + 8))(v25 + v27, v28);
    }
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_6()
{
  v1 = sub_2170075E4();
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_217005EF4();
  OUTLINED_FUNCTION_16();
  v9 = v8;
  v10 = (v6 + *(v8 + 80) + v4 + 1) & ~*(v8 + 80);
  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_7()
{
  OUTLINED_FUNCTION_49();
  type metadata accessor for TopSearchLockupView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = v0[5];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
  OUTLINED_FUNCTION_34();
  v7 = *(v6 + 8);
  v7(v3 + v4, v5);
  v7(v3 + v0[6], v5);
  v8 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217008844();
    OUTLINED_FUNCTION_34();
    (*(v9 + 8))(v3 + v8);
  }

  else
  {
  }

  v10 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_34();
    (*(v11 + 8))(v3 + v10);
  }

  else
  {
  }

  v12 = v3 + v0[9];
  if (*(v12 + 40))
  {
    if (*(v12 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
    }
  }

  else
  {
  }

  sub_2166B8588();
  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_8()
{
  v1 = sub_21700C924();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_9()
{
  type metadata accessor for PosterLockupView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = v3 + *(v0 + 24);
  if (*(v6 + 40))
  {
    if (*(v6 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_10()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_11()
{
  v1 = (type metadata accessor for SocialProfileButtonView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2166B8588();
  v3 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_2170098A4();
    if (!__swift_getEnumTagSinglePayload(v2 + v3, 1, v4))
    {
      (*(*(v4 - 8) + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_12()
{

  swift_unknownObjectRelease();

  sub_2166B8588();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_13()
{
  v1 = (type metadata accessor for ContentDescriptor() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  v4 = sub_217005EF4();
  if (!__swift_getEnumTagSinglePayload(v2 + v3, 1, v4))
  {
    OUTLINED_FUNCTION_50();
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_14()
{
  OUTLINED_FUNCTION_49();
  v1 = (type metadata accessor for AlbumTrackLockupView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_216684F5C(*(v2 + 24), *(v2 + 32));
  sub_216684F5C(*(v2 + 40), *(v2 + 48));
  v3 = v1[10];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
  OUTLINED_FUNCTION_34();
  v6 = *(v5 + 8);
  v6(v2 + v3, v4);
  v6(v2 + v1[11], v4);
  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_15()
{
  OUTLINED_FUNCTION_49();
  type metadata accessor for PageViewContentViewModifier();
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  swift_unknownObjectRelease();
  v4 = *(v0 + 36);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9_0();
  (*(v5 + 8))(v3 + v4);

  v6 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9310);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217009804();
    OUTLINED_FUNCTION_9_0();
    (*(v7 + 8))(v3 + v6);
  }

  else
  {
  }

  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_16()
{
  Context = type metadata accessor for SearchResultsQueryContextView.TextView(0);
  v2 = (*(*(Context - 8) + 80) + 16) & ~*(*(Context - 8) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_34();
    (*(v4 + 8))(v0 + v2);
  }

  else
  {
  }

  v5 = v3 + *(Context + 20);
  if (*(v5 + 40))
  {
    if (*(v5 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
    }
  }

  else
  {
  }

  v6 = v3 + *(Context + 24);

  v7 = *(type metadata accessor for JSSearchResultsPage.QueryContext(0) + 36);
  sub_21700D7A4();
  OUTLINED_FUNCTION_34();
  (*(v8 + 8))(v6 + v7);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_17()
{
  OUTLINED_FUNCTION_49();
  v1 = (type metadata accessor for FavoriteAction(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  v7 = *(v5 + 80);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + v2);
  v8 = v1[7];
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v9 + 8))(v0 + v2 + v8);
  (*(v6 + 8))(v0 + ((v2 + v3 + v7) & ~v7), v4);
  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_18()
{
  v1 = type metadata accessor for ArtistDetailHeaderLockupView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80));

  sub_216684F5C(*(v2 + 8), *(v2 + 16));
  sub_21680E444(*(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56));
  v3 = *(v1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217008844();
    OUTLINED_FUNCTION_34();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  sub_216684F5C(*(v2 + *(v1 + 48)), *(v2 + *(v1 + 48) + 8));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_19()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_20(uint64_t *a1, uint64_t a2, void (*a3)(void))
{
  v5 = (__swift_instantiateConcreteTypeFromMangledNameV2(a1) - 8);
  v6 = (*(*v5 + 80) + 24) & ~*(*v5 + 80);
  v7 = *(*v5 + 64);
  v8 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  v11 = (v6 + v7 + *(v9 + 80)) & ~*(v9 + 80);

  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v12 + 8))(v3 + v6);
  v13 = v5[11];
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v14 + 8))(v3 + v6 + v13);
  (*(v10 + 8))(v3 + v11, v8);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_21()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_22()
{
  v1 = type metadata accessor for ContainerDetailMediaButton(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  type metadata accessor for MediaButtonType(0);
  if (swift_getEnumCaseMultiPayload() <= 2)
  {
    v4 = sub_21700D7A4();
    if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v4))
    {
      (*(*(v4 - 8) + 8))(v0 + v2, v4);
    }

    v5 = type metadata accessor for LinkComponentModel();
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + v5[5]);
    v6 = v3 + v5[6];
    if (*(v6 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }

    OUTLINED_FUNCTION_7_7(v5[7]);
  }

  OUTLINED_FUNCTION_7_7(*(v1 + 20));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_23()
{
  v1 = (type metadata accessor for UnifiedMessagesSheetView.Content() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217008424();
    OUTLINED_FUNCTION_9_0();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_24()
{
  v1 = (type metadata accessor for PageRenderMetricsViewModifier() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_216684F5C(*(v2 + 8), *(v2 + 16));
  v3 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFC80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_217007554();
    if (!__swift_getEnumTagSinglePayload(v2 + v3, 1, v4))
    {
      (*(*(v4 - 8) + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_25(uint64_t *a1, uint64_t a2, void (*a3)(void))
{
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(a1) - 8);
  v7 = (*(*v6 + 80) + 24) & ~*(*v6 + 80);
  v8 = *(*v6 + 64);
  sub_2170075A4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  v11 = *(v9 + 80);

  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v12 + 8))(v4 + v7);
  v13 = v6[11];
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v14 + 8))(v4 + v7 + v13);
  (*(v10 + 8))(v4 + ((v7 + v8 + v11) & ~v11), v3);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_26()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_27()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 40);
  OUTLINED_FUNCTION_67_11();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_28(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_29()
{
  OUTLINED_FUNCTION_8_52();
  type metadata accessor for PresentationSourceModifier();
  OUTLINED_FUNCTION_117();
  v3 = v1 + ((*(v2 + 80) + 48) & ~*(v2 + 80));

  v4 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0B18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217008034();
    OUTLINED_FUNCTION_9_0();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_30()
{
  v1 = type metadata accessor for Content();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_34();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  v5 = v2 + *(v1 + 36);
  if (*(v5 + 40))
  {
    if (*(v5 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_31()
{
  type metadata accessor for SuperHeroLockupView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_34();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = v3 + v0[6];
  if (*(v6 + 40))
  {
    if (*(v6 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }
  }

  else
  {
  }

  sub_216684F5C(*(v3 + v0[7]), *(v3 + v0[7] + 8));
  sub_216684F5C(*(v3 + v0[8]), *(v3 + v0[8] + 8));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_32()
{
  type metadata accessor for BubbleLockupView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_34();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = v3 + *(v0 + 24);
  if (*(v6 + 40))
  {
    if (*(v6 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_33()
{
  v1 = type metadata accessor for UserNotificationSettingsPageView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  v3 = type metadata accessor for SocialOnboardingNotificationSettingsPageLockup();
  v4 = *(v3 + 20);
  v5 = sub_21700D7A4();
  if (!__swift_getEnumTagSinglePayload(v2 + v4, 1, v5))
  {
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  OUTLINED_FUNCTION_7_7(*(v3 + 32));

  v6 = v2 + v1[7];
  if (*(v6 + 40))
  {
    if (*(v6 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }
  }

  else
  {
  }

  v7 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_34();
    (*(v8 + 8))(v2 + v7);
  }

  else
  {
  }

  OUTLINED_FUNCTION_7_7(v1[9]);

  OUTLINED_FUNCTION_7_7(v1[10]);

  OUTLINED_FUNCTION_7_7(v1[11]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_34(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 32));
  OUTLINED_FUNCTION_38();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_35()
{
  OUTLINED_FUNCTION_49();
  type metadata accessor for SplitPosterLockup.Item(0);
  OUTLINED_FUNCTION_4_4();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  v5 = v4 + v0[5];
  v6 = type metadata accessor for ContentDescriptor();
  if (!OUTLINED_FUNCTION_15_10(v6))
  {

    v7 = *(v2 + 24);
    v2 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v5 + v7, 1, v2))
    {
      OUTLINED_FUNCTION_50();
      (*(v8 + 8))(v5 + v7, v2);
    }
  }

  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_2();
  v9 = v4 + v0[9];
  v10 = type metadata accessor for Artwork();
  if (!OUTLINED_FUNCTION_15_10(v10))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v11 + 8))(v9);
    v12 = *(v2 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v13 + 8))(v9 + v12);
  }

  v14 = v4 + v0[10];
  if (*(v14 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_36()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v12 = *(v0 + 32);
  v3 = type metadata accessor for ExpandableTextView();
  v4 = v0 + ((*(*(v3 - 1) + 80) + 64) & ~*(*(v3 - 1) + 80));
  (*(*(v2 - 8) + 8))(v4, v2);
  v5 = v3[17];
  if (!__swift_getEnumTagSinglePayload(v4 + v5, 1, v1))
  {
    (*(*(v1 - 8) + 8))(v4 + v5, v1);
  }

  v6 = v3[18];
  if (!__swift_getEnumTagSinglePayload(v4 + v6, 1, v12))
  {
    (*(*(v12 - 8) + 8))(v4 + v6, v12);
  }

  OUTLINED_FUNCTION_93_0(v3[19]);

  OUTLINED_FUNCTION_93_0(v3[20]);

  OUTLINED_FUNCTION_93_0(v3[22]);

  v7 = v3[24];
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v8 + 8))(v4 + v7);
  OUTLINED_FUNCTION_93_0(v3[25]);

  v9 = v3[26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217008934();
    OUTLINED_FUNCTION_34();
    (*(v10 + 8))(v4 + v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_37()
{
  v1 = type metadata accessor for SocialProfileContextMenu();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_34();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  v5 = v2 + v1[9];
  v6 = sub_21700C4B4();
  if (!__swift_getEnumTagSinglePayload(v5, 1, v6))
  {
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  v7 = type metadata accessor for SocialProfileDescriptor(0);

  v8 = *(v7 + 32);
  v9 = sub_217005EF4();
  OUTLINED_FUNCTION_34();
  v11 = *(v10 + 8);
  v11(v5 + v8, v9);
  v12 = v2 + v1[10];
  v13 = type metadata accessor for ContentDescriptor();
  if (!__swift_getEnumTagSinglePayload(v12, 1, v13))
  {

    v14 = *(v13 + 24);
    if (!__swift_getEnumTagSinglePayload(v12 + v14, 1, v9))
    {
      v11(v12 + v14, v9);
    }
  }

  v15 = type metadata accessor for MenuConfiguration(0);
  v16 = v12 + *(v15 + 20);
  type metadata accessor for MenuContext(0);
  OUTLINED_FUNCTION_2_101();
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21700C8E4();
    OUTLINED_FUNCTION_34();
    (*(v17 + 8))(v16);
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0) + 48);
    v19 = sub_21700C924();
    if (!__swift_getEnumTagSinglePayload(v16 + v18, 1, v19))
    {
      (*(*(v19 - 8) + 8))(v16 + v18, v19);
    }
  }

  v20 = v12 + *(v15 + 32);
  if (*(v20 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_38()
{
  v1 = type metadata accessor for PlaylistTrackLockupView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  sub_216684F5C(*(v2 + 24), *(v2 + 32));
  sub_216684F5C(*(v2 + 40), *(v2 + 48));
  v3 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217008844();
    OUTLINED_FUNCTION_34();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  v5 = v1[9];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
  OUTLINED_FUNCTION_34();
  v8 = *(v7 + 8);
  v8(v2 + v5, v6);
  v8(v2 + v1[10], v6);
  v8(v2 + v1[11], v6);
  v8(v2 + v1[12], v6);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_39()
{
  type metadata accessor for ReportAConcern();
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_4_86();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217008424();
    OUTLINED_FUNCTION_34();
    (*(v2 + 8))(v1 + v0);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_40()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_41()
{
  sub_2166B8588();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_42()
{
  type metadata accessor for LiveRadioPosterLockupView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = v3 + *(v0 + 28);
  if (*(v6 + 40))
  {
    if (*(v6 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_43()
{
  v1 = type metadata accessor for AnimatedTextListItemView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  v3 = *(type metadata accessor for AnimatedTextListItem() + 20);
  v4 = sub_21700D7A4();
  if (!__swift_getEnumTagSinglePayload(v2 + v3, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  v5 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_34();
    (*(v6 + 8))(v2 + v5);
  }

  else
  {
  }

  v7 = v2 + *(v1 + 24);
  sub_2170061E4();
  OUTLINED_FUNCTION_34();
  (*(v8 + 8))(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4548);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_44()
{
  v2 = (type metadata accessor for DislikeAction() - 8);
  v3 = (*(*v2 + 80) + 24) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  sub_2170075A4();
  OUTLINED_FUNCTION_3_121();
  v6 = v5;
  v7 = *(v5 + 80);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + v3);
  v8 = v2[7];
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v9 + 8))(v0 + v3 + v8);
  (*(v6 + 8))(v0 + ((v3 + v4 + v7) & ~v7), v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_45()
{
  OUTLINED_FUNCTION_49();
  type metadata accessor for GradientListRowView();
  OUTLINED_FUNCTION_4_4();
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = v1 + v5;

  __swift_destroy_boxed_opaque_existential_1Tm(v1 + v5 + 8);
  type metadata accessor for GradientListRowModel();
  v7 = OUTLINED_FUNCTION_9_75();
  if (!OUTLINED_FUNCTION_13_58(v7))
  {
    OUTLINED_FUNCTION_4_23();
    (*(v8 + 8))(v6 + v3, v2);
  }

  v9 = v6 + *(v1 + v5 + 36);
  if (*(v9 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  v10 = v6 + *(v1 + v5 + 40);
  if (*(v10 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v10 + 8);
  }

  v11 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
  OUTLINED_FUNCTION_9_0();
  (*(v12 + 8))(v6 + v11);

  v13 = v6 + v0[7];
  if (*(v13 + 40))
  {
    if (*(v13 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
    }
  }

  else
  {
  }

  v14 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  if (OUTLINED_FUNCTION_16_53() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v15 + 8))(v6 + v14);
  }

  else
  {
  }

  v16 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  if (OUTLINED_FUNCTION_16_53() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_9_0();
    (*(v17 + 8))(v6 + v16);
  }

  else
  {
  }

  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_46()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for NavigationDestinationsModifier() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));

  (*(*(v1 - 8) + 8))(v3 + v2[11], v1);
  v4 = v2[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2170080D4();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_47()
{
  FriendContentView = type metadata accessor for FollowRequestFindFriendContentView(0);
  v2 = v0 + ((*(*(FriendContentView - 8) + 80) + 16) & ~*(*(FriendContentView - 8) + 80));

  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  v4 = v2 + Friends[12];

  v5 = *(type metadata accessor for SocialContactsCoordinator.Contact() + 44);
  v6 = sub_21700C4B4();
  if (!__swift_getEnumTagSinglePayload(v4 + v5, 1, v6))
  {
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  v7 = Friends[16];
  if (!__swift_getEnumTagSinglePayload(v2 + v7, 1, v6))
  {
    (*(*(v6 - 8) + 8))(v2 + v7, v6);
  }

  return swift_deallocObject();
}

void objectdestroyTm_48()
{
  OUTLINED_FUNCTION_50_19();
  OUTLINED_FUNCTION_42_29();
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_65_12();
  OUTLINED_FUNCTION_71_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FB8);
  OUTLINED_FUNCTION_34();
  (*(v1 + 8))(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F38);
  OUTLINED_FUNCTION_64_14();
  OUTLINED_FUNCTION_7_85();
  OUTLINED_FUNCTION_48_21();
  OUTLINED_FUNCTION_3_132();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
  if (OUTLINED_FUNCTION_81_9() == 1)
  {
    v2 = sub_2170098A4();
    if (!OUTLINED_FUNCTION_37_37(v2))
    {
      OUTLINED_FUNCTION_50();
      v3 = OUTLINED_FUNCTION_68_14();
      v4(v3);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_2_7();
  swift_deallocObject();
  OUTLINED_FUNCTION_49_25();
}

uint64_t objectdestroyTm_49()
{
  v1 = _s7MusicUI7ContentVMa_0(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  v4 = sub_21700D7A4();
  if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  v5 = type metadata accessor for SocialCardLockup();
  __swift_destroy_boxed_opaque_existential_1Tm(v3 + v5[5]);
  v6 = v3 + v5[6];
  if (*(v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  v7 = v3 + v5[7];
  if (*(v7 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  v8 = v3 + v5[8];
  if (*(v8 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  OUTLINED_FUNCTION_7_7(v5[9]);

  OUTLINED_FUNCTION_7_7(v5[10]);

  OUTLINED_FUNCTION_7_7(v5[11]);

  v9 = v3 + v5[13];
  v10 = type metadata accessor for Artwork();
  if (!__swift_getEnumTagSinglePayload(v9, 1, v10))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_34();
    (*(v11 + 8))(v9);
    v12 = *(v10 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_34();
    (*(v13 + 8))(v9 + v12);
  }

  v14 = v3 + v5[14];
  v15 = type metadata accessor for ContentDescriptor();
  if (!__swift_getEnumTagSinglePayload(v14, 1, v15))
  {

    v16 = *(v15 + 24);
    v17 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v14 + v16, 1, v17))
    {
      (*(*(v17 - 8) + 8))(v14 + v16, v17);
    }
  }

  sub_216684F5C(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  OUTLINED_FUNCTION_7_7(v1[8]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_50()
{
  v2 = *(v1 + 16);
  OUTLINED_FUNCTION_6_5();
  type metadata accessor for LoadablePageView();
  OUTLINED_FUNCTION_4_4();
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  OUTLINED_FUNCTION_50();
  (*(v5 + 8))(v4, v2);
  v6 = (v4 + *(v0 + 36));
  OUTLINED_FUNCTION_6_5();
  type metadata accessor for LoadablePageView.LoadingState();
  OUTLINED_FUNCTION_21_52();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_50();
    (*(v8 + 8))(v6);
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  sub_21700AEE4();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_51()
{
  type metadata accessor for LibraryImportWebView(0);
  OUTLINED_FUNCTION_117();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_216845090(*v3, *(v3 + 8), *(v3 + 16));
  v4 = *(v0 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217008424();
    OUTLINED_FUNCTION_34();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_52()
{
  FriendsPageView = type metadata accessor for SocialOnboardingFindFriendsPageView();
  v2 = v0 + ((*(*(FriendsPageView - 1) + 80) + 16) & ~*(*(FriendsPageView - 1) + 80));
  sub_2166B8588();
  sub_21680E444(*(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56));

  v3 = v2 + FriendsPageView[7];
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  v4 = *(type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup() + 20);
  v5 = sub_21700D7A4();
  if (!__swift_getEnumTagSinglePayload(v3 + v4, 1, v5))
  {
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  v6 = v2 + FriendsPageView[8];
  v7 = type metadata accessor for LinkComponentModel();
  if (!__swift_getEnumTagSinglePayload(v6, 1, v7))
  {
    if (!__swift_getEnumTagSinglePayload(v6, 1, v5))
    {
      (*(*(v5 - 8) + 8))(v6, v5);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v6 + *(v7 + 20));
    v8 = v6 + *(v7 + 24);
    if (*(v8 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
    }
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_53()
{
  type metadata accessor for SearchResultsPageView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_2166B8588();

  v4 = *(v0 + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_9_0();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  sub_216684F5C(*(v3 + *(v0 + 64)), *(v3 + *(v0 + 64) + 8));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_54()
{
  v1 = sub_21700C1E4();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_55()
{
  v1 = type metadata accessor for SocialProfileDetailHeaderLockupView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  v4 = sub_21700D7A4();
  if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  v5 = type metadata accessor for SocialProfileDetailHeaderLockup();
  __swift_destroy_boxed_opaque_existential_1Tm(v3 + v5[5]);
  v6 = v3 + v5[6];

  v7 = *(type metadata accessor for ContentDescriptor() + 24);
  v8 = sub_217005EF4();
  if (!__swift_getEnumTagSinglePayload(v6 + v7, 1, v8))
  {
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  OUTLINED_FUNCTION_7_7(v5[7]);

  OUTLINED_FUNCTION_7_7(v5[8]);

  v9 = v3 + v5[11];
  v10 = type metadata accessor for Artwork();
  if (!__swift_getEnumTagSinglePayload(v9, 1, v10))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_34();
    (*(v11 + 8))(v9);
    v12 = *(v10 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_34();
    (*(v13 + 8))(v9 + v12);
  }

  OUTLINED_FUNCTION_7_7(v1[9]);

  v14 = v1[13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
  OUTLINED_FUNCTION_34();
  v17 = *(v16 + 8);
  v17(v3 + v14, v15);
  v17(v3 + v1[14], v15);
  v17(v3 + v1[15], v15);
  OUTLINED_FUNCTION_7_7(v1[16]);

  v18 = v3 + v1[20];
  sub_21680E444(*v18, *(v18 + 8), *(v18 + 16), *(v18 + 24), *(v18 + 32));
  OUTLINED_FUNCTION_4_128(v1[21]);
  OUTLINED_FUNCTION_4_128(v1[22]);
  OUTLINED_FUNCTION_4_128(v1[23]);
  v19 = v1[24];
  sub_217007CA4();
  OUTLINED_FUNCTION_34();
  (*(v20 + 8))(v3 + v19);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_56()
{

  OUTLINED_FUNCTION_38();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_57()
{
  type metadata accessor for HorizontalLockupView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_9_0();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = v3 + v0[6];
  if (*(v6 + 40))
  {
    if (*(v6 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }
  }

  else
  {
  }

  v7 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
  OUTLINED_FUNCTION_9_0();
  (*(v8 + 8))(v3 + v7);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_58()
{
  type metadata accessor for BannerHeaderView.ContentView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v1 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2170098A4();
    if (!__swift_getEnumTagSinglePayload(v1 + v3, 1, v5))
    {
      OUTLINED_FUNCTION_4_23();
      (*(v6 + 8))(v1 + v3, v5);
    }
  }

  else
  {
  }

  v7 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217008844();
    OUTLINED_FUNCTION_34();
    (*(v8 + 8))(v4 + v7);
  }

  else
  {
  }

  v9 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9A20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_217008A94();
    if (!OUTLINED_FUNCTION_30_44(v10))
    {
      OUTLINED_FUNCTION_4_23();
      (*(v11 + 8))(v4 + v9, v7);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_7_7(v0[9]);

  v12 = v4 + v0[10];
  sub_21700DA84();
  OUTLINED_FUNCTION_34();
  (*(v13 + 8))(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC99D8);

  OUTLINED_FUNCTION_7_7(v0[11]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_59()
{

  if (*(v0 + 64))
  {
    if (*(v0 + 48))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACA7A0);
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_217005EF4();
  OUTLINED_FUNCTION_16();
  v9 = v8;
  v10 = (v6 + *(v8 + 80) + v4 + 1) & ~*(v8 + 80);
  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_61()
{
  type metadata accessor for ArtistLatestReleaseLockupView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
  OUTLINED_FUNCTION_34();
  (*(v5 + 8))(v3 + v4);
  sub_216684F5C(*(v3 + v0[6]), *(v3 + v0[6] + 8));
  v6 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217008844();
    OUTLINED_FUNCTION_34();
    (*(v7 + 8))(v3 + v6);
  }

  else
  {
  }

  v8 = v3 + v0[8];
  sub_21680E444(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32));
  sub_216684F5C(*(v3 + v0[9]), *(v3 + v0[9] + 8));
  v9 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_34();
    (*(v10 + 8))(v3 + v9);
  }

  else
  {
  }

  v11 = v3 + v0[11];
  if (*(v11 + 40))
  {
    if (*(v11 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_62(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  v4 = type metadata accessor for LandingUpsell();
  v5 = v4[5];
  v6 = sub_21700D7A4();
  if (!__swift_getEnumTagSinglePayload(v3 + v5, 1, v6))
  {
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_28_0();
  v7 = v3 + v4[10];
  if (*(v7 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  v8 = v3 + v4[11];
  if (*(v8 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  v9 = v3 + v4[12];
  if (*(v9 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  v10 = v3 + v4[13];
  v11 = type metadata accessor for Artwork();
  if (!__swift_getEnumTagSinglePayload(v10, 1, v11))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v12 + 8))(v10);
    v13 = *(v11 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v14 + 8))(v10 + v13);
  }

  v15 = v3 + v4[14];
  if (!__swift_getEnumTagSinglePayload(v15, 1, v11))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_9_0();
    (*(v16 + 8))(v15);
    v17 = *(v11 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_9_0();
    (*(v18 + 8))(v15 + v17);
  }

  sub_216684F5C(*(v3 + *(v2 + 20)), *(v3 + *(v2 + 20) + 8));
  v19 = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_9_0();
    (*(v20 + 8))(v3 + v19);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_63()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_64()
{
  j__swift_release();

  OUTLINED_FUNCTION_26_52();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_65()
{
  v1 = type metadata accessor for CompositeLibraryCatalogView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_34();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  sub_2166B8588();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_66()
{
  OUTLINED_FUNCTION_49();
  v1 = (type metadata accessor for SocialProfileEditorPageView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_2166B8588();

  v3 = v2 + v1[10];
  v4 = type metadata accessor for SocialProfileEditorHeaderLockup(0);
  if (!__swift_getEnumTagSinglePayload(v3, 1, v4))
  {
    v5 = sub_21700D7A4();
    if (!__swift_getEnumTagSinglePayload(v3, 1, v5))
    {
      OUTLINED_FUNCTION_50();
      (*(v6 + 8))(v3, v5);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v3 + v4[5]);
    v7 = v3 + v4[6];

    v8 = *(type metadata accessor for ContentDescriptor() + 24);
    v9 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v7 + v8, 1, v9))
    {
      OUTLINED_FUNCTION_50();
      (*(v10 + 8))(v7 + v8, v9);
    }

    OUTLINED_FUNCTION_28_0();
    OUTLINED_FUNCTION_28_0();
    OUTLINED_FUNCTION_28_0();
    OUTLINED_FUNCTION_28_0();
    OUTLINED_FUNCTION_28_0();
    OUTLINED_FUNCTION_28_0();

    v11 = v3 + v4[16];
    v12 = type metadata accessor for Artwork();
    if (!__swift_getEnumTagSinglePayload(v11, 1, v12))
    {
      sub_21700C4B4();
      OUTLINED_FUNCTION_34();
      (*(v13 + 8))(v11);
      v14 = *(v12 + 20);
      sub_21700C444();
      OUTLINED_FUNCTION_34();
      (*(v15 + 8))(v11 + v14);
    }

    OUTLINED_FUNCTION_28_0();
  }

  OUTLINED_FUNCTION_26();

  return swift_deallocObject();
}

void sub_2166EEC6C()
{
  sub_2166EED8C(319, &qword_280E2A0F0, MEMORY[0x277D22558]);
  if (v0 <= 0x3F)
  {
    sub_2166EED8C(319, &qword_280E2A2C0, MEMORY[0x277D21B08]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2166EED8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_2166EEDE0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4B0);
  OUTLINED_FUNCTION_1();
  v22 = v5;
  v23 = v4;
  MEMORY[0x28223BE20](v4);
  v21 = &v21 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4B8);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC7MusicUI30JSUserSocialProfileCoordinator_pendingProfileFetch;
  v14 = sub_21700E314();
  __swift_storeEnumTagSinglePayload(&v1[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC7MusicUI30JSUserSocialProfileCoordinator_pendingProfileFetchResolution;
  v16 = sub_21700CCA4();
  __swift_storeEnumTagSinglePayload(&v1[v15], 1, 1, v16);
  __swift_storeEnumTagSinglePayload(&v1[OBJC_IVAR____TtC7MusicUI30JSUserSocialProfileCoordinator_pendingIsCloudAndMediaAccountIdenticalFetch], 1, 1, v14);
  type metadata accessor for UserSocialProfileCoordinator();
  sub_21700D4D4();
  sub_21700E094();
  *&v1[OBJC_IVAR____TtC7MusicUI30JSUserSocialProfileCoordinator_userSocialProfileCoordinator] = v24[0];
  type metadata accessor for SocialGraphController();
  sub_21700E094();
  *&v1[OBJC_IVAR____TtC7MusicUI30JSUserSocialProfileCoordinator_socialGraphController] = v24[0];
  *&v1[OBJC_IVAR____TtC7MusicUI30JSUserSocialProfileCoordinator_objectGraph] = a1;
  v25.receiver = v1;
  v25.super_class = ObjectType;

  v17 = objc_msgSendSuper2(&v25, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4C0);
  sub_2166EF228(&qword_280E2A2D8, &qword_27CABA4C0);
  v18 = v17;

  sub_21700D1D4();
  sub_21700D1E4();

  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  (*(v9 + 8))(v12, v7);
  *(swift_allocObject() + 16) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4D0);
  sub_2166EF228(&unk_280E2A2E0, &qword_27CABA4D0);

  sub_21700D1D4();
  v19 = v21;
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  (*(v22 + 8))(v19, v23);

  return v18;
}

uint64_t sub_2166EF1F0()
{

  return swift_deallocObject();
}

uint64_t sub_2166EF228(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for JSCampaignAttributionService()
{
  result = qword_27CABE178;
  if (!qword_27CABE178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_2166EF2C8()
{
  v1 = sub_21700DFD4();
  MEMORY[0x28223BE20](v1);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216685F4C(0, &qword_280E29D60);
  sub_21700D4D4();
  sub_21700E094();
  v4 = v9[1];
  sub_21700E294();
  sub_21700E094();
  v5 = v9[0];
  sub_21700E094();
  v6 = objc_allocWithZone(v0);
  v7 = sub_216972B48(v4, v5, v3);

  return v7;
}

id sub_2166EF4B0()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC7MusicUI10JSPlatform__isDebugOrInternalBuild;
  if (qword_280E2B920 != -1)
  {
    swift_once();
  }

  v0[v2] = byte_280E73A84;
  v3 = OBJC_IVAR____TtC7MusicUI10JSPlatform__is24HourClockEnabled;
  if (qword_280E45AE8 != -1)
  {
    swift_once();
  }

  v0[v3] = byte_280E45AF0;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_2166EF584()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89F0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v15 - v1;
  v3 = sub_217006274();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = sub_21700E4D4();
  sub_217006254();
  v9 = sub_217006244();
  (*(v4 + 8))(v6, v3);
  v10 = [v7 dateFormatFromTemplate:v8 options:0 locale:v9];

  if (v10)
  {
    v11 = sub_21700E514();
    v13 = v12;

    v15[2] = v11;
    v15[3] = v13;
    v15[0] = 97;
    v15[1] = 0xE100000000000000;
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
    sub_2167B2E14();
    sub_21700F1C4();
    LOBYTE(v10) = v14;
    sub_216AEFC1C(v2);
  }

  byte_280E45AF0 = v10 & 1;
}

uint64_t sub_2166EF85C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_2166EF8CC(uint64_t a1)
{
  sub_2166A6DF8(a1, &v2);
  sub_21700DF14();
  return sub_2166EF928();
}

uint64_t sub_2166EF928()
{
  OUTLINED_FUNCTION_8_54();
  if (*(v1 + 24))
  {
    sub_2166EF9C4(v1, v4);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_23_31();
    sub_2166EF9D4();

    *v0 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_27_29(v1);
    OUTLINED_FUNCTION_7_64();
    sub_216A51514();

    return OUTLINED_FUNCTION_27_29(v4);
  }

  return result;
}

_OWORD *sub_2166EF9C4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

_OWORD *sub_2166EF9D4()
{
  OUTLINED_FUNCTION_75_6();
  v5 = OUTLINED_FUNCTION_4_38(v3, v4);
  sub_2166AF66C(v5, v6);
  OUTLINED_FUNCTION_1_63();
  if (v7)
  {
    __break(1u);
LABEL_14:
    result = sub_21700F824();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_41_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82A8);
  OUTLINED_FUNCTION_10_33();
  if (sub_21700F554())
  {
    v8 = OUTLINED_FUNCTION_45_0();
    sub_2166AF66C(v8, v9);
    OUTLINED_FUNCTION_14_27();
    if (!v11)
    {
      goto LABEL_14;
    }

    v2 = v10;
  }

  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(*(*v0 + 56) + 32 * v2);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_65_2();

    return sub_2166EF9C4(v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_19_26();
    sub_2166EFAC8(v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_65_2();

    return sub_21700DF14();
  }
}

void sub_2166EFAC8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_8_34(a1, a2, a3, a4, a5);
  sub_2166EF9C4(v8, (*(v7 + 56) + 32 * v6));
  OUTLINED_FUNCTION_52_10();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v9;
  }
}

uint64_t sub_2166EFB30@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D22340];
  v3 = sub_21700DEF4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2166EFBA4(uint64_t a1)
{
  v2 = sub_2166EFC70();
  if (!v2)
  {
    v2 = 3;
  }

  v3 = sub_2166C0DB4(v2);
  v6[3] = MEMORY[0x277D837D0];
  v6[0] = v3;
  v6[1] = v4;
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_21700DA14();
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_2166EFC70()
{
  sub_2166C0578(&v2);
  if (!v4)
  {
    return 4;
  }

  v0 = v3;
  sub_21669987C(&v2, &qword_27CAC5980);
  return v0;
}

uint64_t sub_2166EFD28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_17_2();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2166EFD90(a2, a3);
  }

  return result;
}

uint64_t sub_2166EFD90(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = *(v2 + OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_lock);
  v6 = *(v5 + 16);

  os_unfair_lock_lock(v6);
  v9 = a1;
  v10 = a2();
  sub_2166EFE80(v8);
  sub_21669987C(v8, &qword_27CABD288);
  os_unfair_lock_unlock(*(v5 + 16));
}

unint64_t sub_2166EFE2C()
{
  result = qword_280E35C30;
  if (!qword_280E35C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E35C30);
  }

  return result;
}

uint64_t sub_2166EFE80(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  os_unfair_lock_assert_owner(*(*(v2 + OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_lock) + 16));
  v7 = *(v2 + OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_objectGraph);
  if (v7)
  {
    v8 = sub_21700EA74();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v8);
    sub_216681B64(a1, v16, &qword_27CABD288);
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    *(v9 + 32) = v2;
    v10 = v16[1];
    *(v9 + 40) = v16[0];
    *(v9 + 56) = v10;
    *(v9 + 72) = v17;
    *(v9 + 80) = v7;

    sub_21677E228();
  }

  else
  {
    v12 = OBJC_IVAR____TtC7MusicUI28AppLifeCycleIntentDispatcher_queuedIntents;
    swift_beginAccess();
    sub_216DF3B74();
    v13 = *(*(v2 + v12) + 16);
    sub_216DF3CD8(v13);
    v14 = *(v2 + v12);
    *(v14 + 16) = v13 + 1;
    sub_216681B64(a1, v14 + 40 * v13 + 32, &qword_27CABD288);
    *(v2 + v12) = v14;
    return swift_endAccess();
  }
}

uint64_t sub_2166F0050()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_2166F00A0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    [*(result + 40) resignActive];
  }

  return result;
}

uint64_t sub_2166F013C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v8 = sub_21700D2A4();
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();
  v10 = sub_21700D3B4();
  v6[19] = v10;
  v6[20] = *(v10 - 8);
  v6[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2166F0434, 0, 0);
}

uint64_t sub_2166F0370()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[10];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_2166F2728;

  return sub_2166F013C(v3, v4, v5, v6, (v0 + 5), v7);
}

uint64_t sub_2166F0434()
{
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_2166F23D8;

  return sub_2166F04F0();
}

uint64_t sub_2166F04F0()
{
  OUTLINED_FUNCTION_33();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_217007C24();
  v1[6] = v5;
  OUTLINED_FUNCTION_2(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_80();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB08);
  OUTLINED_FUNCTION_36(v7);
  v1[9] = OUTLINED_FUNCTION_80();
  v8 = type metadata accessor for Empty();
  OUTLINED_FUNCTION_36(v8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8E30);
  OUTLINED_FUNCTION_36(v9);
  v1[12] = OUTLINED_FUNCTION_80();
  v10 = type metadata accessor for NoProtoRequest();
  v1[13] = v10;
  OUTLINED_FUNCTION_36(v10);
  v1[14] = OUTLINED_FUNCTION_80();
  v11 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t type metadata accessor for Empty()
{
  result = qword_280E487E0;
  if (!qword_280E487E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for NoProtoRequest()
{
  result = qword_280E4A168;
  if (!qword_280E4A168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2166F06E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_98_10();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_299();
  if (!v12)
  {
LABEL_10:
    swift_task_alloc();
    OUTLINED_FUNCTION_52();
    *(v11 + 136) = v27;
    *v27 = v28;
    OUTLINED_FUNCTION_137_3(v27);
    OUTLINED_FUNCTION_74_12();

    return sub_2166F08EC(v29, v30, v31);
  }

  v13 = OUTLINED_FUNCTION_13_74(*(v11 + 24));
  v15 = v14(v13);
  v17 = *(v11 + 96);
  if (v10)
  {
    OUTLINED_FUNCTION_961();

    OUTLINED_FUNCTION_180_1();
    OUTLINED_FUNCTION_74_12();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_15_42(v15, v16, *(v11 + 104));
    if (v12)
    {
      sub_2166997CC(v17, &qword_27CAC8E30);
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_1141();
    OUTLINED_FUNCTION_51_13(v33, v34);
    OUTLINED_FUNCTION_38_0(&unk_21705F100);
    v46 = v35;
    swift_task_alloc();
    OUTLINED_FUNCTION_52();
    *(v11 + 120) = v36;
    *v36 = v37;
    OUTLINED_FUNCTION_313(v36);
    OUTLINED_FUNCTION_74_12();

    return v40(v38, v39, v40, v41, v42, v43, v44, v45, v46, a10);
  }
}

uint64_t OUTLINED_FUNCTION_1020()
{

  return sub_216F072A0(v0);
}

uint64_t sub_2166F08EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_2166F0904()
{
  OUTLINED_FUNCTION_31();
  if (OUTLINED_FUNCTION_167_0())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_88_9(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_75_11(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

uint64_t OUTLINED_FUNCTION_210()
{

  return swift_getWitnessTable();
}

void OUTLINED_FUNCTION_210_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 - 312) = a4;
  *(v5 - 288) = a3;
  *(v5 - 328) = v4;
  *(v5 - 320) = a2;
}

uint64_t sub_2166F0A54()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703F8F8);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_39_18(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_10_51(v18);
    OUTLINED_FUNCTION_47_8();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_2166F0BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_21700D2F4();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = sub_21700CF34();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2166F0DBC, 0, 0);
}

uint64_t sub_2166F0DBC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_34_23();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_35_26();
  os_unfair_lock_unlock(v1);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v15 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_105_8(v3);
  *v4 = v5;
  v13 = OUTLINED_FUNCTION_12_45(v4, v6, v7, v8, v9, v10, v11, v12, v15);

  return v13();
}

uint64_t sub_2166F0E6C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  OUTLINED_FUNCTION_169_0(v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

__n128 OUTLINED_FUNCTION_166@<Q0>(uint64_t a1@<X8>)
{
  result = v2[72];
  v2[66] = result;
  v2[67].n128_u64[0] = v1 | a1;
  v2[67].n128_u64[1] = 0;
  v2[68].n128_u8[0] = 0;
  return result;
}

uint64_t sub_2166F0FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_168();
  sub_21700CF24();
  if (qword_280E45D50 != -1)
  {
    OUTLINED_FUNCTION_2_96();
  }

  OUTLINED_FUNCTION_0_132();
  v18 = OUTLINED_FUNCTION_4_74(v17, qword_280E73D98);
  v19(v18);
  sub_2166F1194();
  sub_2166F1214();
  OUTLINED_FUNCTION_67_12();
  sub_21700D304();
  sub_21700CEE4();
  OUTLINED_FUNCTION_15_43();
  v20 = OUTLINED_FUNCTION_31_33();
  v21(v20);
  v22 = OUTLINED_FUNCTION_30_30();
  v23(v22);
  v24 = OUTLINED_FUNCTION_5_69();
  v25(v24);
  sub_21700DB74();
  OUTLINED_FUNCTION_160_0();
  sub_21700D4F4();
  OUTLINED_FUNCTION_70_0();
  v26 = sub_21700DB44();
  OUTLINED_FUNCTION_85_10(v26);
  v27 = swift_task_alloc();
  OUTLINED_FUNCTION_126_1(v27);
  v28 = OUTLINED_FUNCTION_115();
  __swift_instantiateConcreteTypeFromMangledNameV2(v28);
  OUTLINED_FUNCTION_55_15(qword_280E2FA98);
  OUTLINED_FUNCTION_2_57();
  *v16 = v29;
  OUTLINED_FUNCTION_9_55();
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x282180628](v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16);
}

void *OUTLINED_FUNCTION_151(uint64_t a1)
{
  v1[168] = a1;

  return memcpy(v1 + 170, v1 + 159, 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_151_0()
{

  return sub_21700F6A4();
}

void OUTLINED_FUNCTION_151_1()
{
  *(v0 + v1[9]) = 0;
  *(v0 + v1[10]) = 0;
  *(v0 + v1[11]) = 0;
  *(v0 + v1[12]) = 0;
}

unint64_t sub_2166F1194()
{
  result = qword_280E45D40;
  if (!qword_280E45D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E45D40);
  }

  return result;
}

uint64_t sub_2166F11E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2166F12F8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2166F1214()
{
  result = qword_280E45D30;
  if (!qword_280E45D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E45D30);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_150()
{

  return sub_21700DC04();
}

uint64_t OUTLINED_FUNCTION_150_0()
{

  return sub_21700DF14();
}

uint64_t OUTLINED_FUNCTION_150_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  *(v13 - 88) = a1;
  *v11 = a11;
  return v12;
}

uint64_t OUTLINED_FUNCTION_150_3()
{

  return sub_216F982E0();
}

uint64_t sub_2166F12F8(char a1)
{
  result = 0x7463417472656C61;
  switch(a1)
  {
    case 1:
      return 0xD000000000000013;
    case 2:
      return result;
    case 3:
    case 9:
    case 15:
    case 34:
      OUTLINED_FUNCTION_11_71();
      return v8 + 11;
    case 4:
    case 16:
    case 28:
    case 56:
    case 61:
      OUTLINED_FUNCTION_11_71();
      return v17 + 5;
    case 5:
    case 63:
    case 66:
      OUTLINED_FUNCTION_11_71();
      return v10 | 4;
    case 6:
    case 11:
    case 46:
      OUTLINED_FUNCTION_11_71();
      return v23 + 6;
    case 7:
      return 0x6573556B636F6C62;
    case 8:
      return 0xD000000000000013;
    case 10:
      return 0x646E756F706D6F63;
    case 12:
      return 0x7453657461657263;
    case 13:
      return 0xD000000000000013;
    case 14:
      OUTLINED_FUNCTION_11_71();
      return v5 + 17;
    case 17:
      return 0x64616F6C6E776F64;
    case 18:
      return 0x7463417974706D65;
    case 19:
    case 35:
    case 54:
      OUTLINED_FUNCTION_11_71();
      return v20 + 9;
    case 20:
      v9 = 2003790950;
      return v9 | 0x6974634100000000;
    case 21:
    case 49:
    case 64:
      OUTLINED_FUNCTION_11_71();
      return v12 - 3;
    case 22:
    case 32:
    case 50:
      OUTLINED_FUNCTION_11_71();
      return v15 | 8;
    case 23:
      return 0x416F666E49746567;
    case 24:
    case 55:
      OUTLINED_FUNCTION_11_71();
      return v22 + 3;
    case 25:
      v6 = 0x746E65746E69;
      goto LABEL_14;
    case 26:
    case 43:
    case 71:
      OUTLINED_FUNCTION_11_71();
      return v19 - 1;
    case 27:
      return 0x6F6C466C61646F6DLL;
    case 29:
      OUTLINED_FUNCTION_11_71();
      return v18 + 18;
    case 30:
    case 31:
    case 33:
    case 44:
      OUTLINED_FUNCTION_11_71();
      return v13 + 2;
    case 36:
      return 0xD000000000000013;
    case 37:
    case 75:
      OUTLINED_FUNCTION_11_71();
      return v4 | 0xC;
    case 38:
      v9 = 2036427888;
      return v9 | 0x6974634100000000;
    case 39:
      return 0x6574614C79616C70;
    case 40:
      return 0x7478654E79616C70;
    case 41:
      return 0x6F6F526F54706F70;
    case 42:
      return 0x6F69746341706F70;
    case 45:
    case 69:
      OUTLINED_FUNCTION_11_71();
      return v14 + 7;
    case 47:
    case 48:
    case 57:
      OUTLINED_FUNCTION_11_71();
      return v16 + 1;
    case 51:
    case 76:
      OUTLINED_FUNCTION_11_71();
      return v26 + 14;
    case 52:
      return 0xD000000000000013;
    case 53:
      return 0xD000000000000013;
    case 58:
      v6 = 0x686372616573;
LABEL_14:
      result = v6 & 0xFFFFFFFFFFFFLL | 0x6341000000000000;
      break;
    case 59:
      result = 0x61547463656C6573;
      break;
    case 60:
      OUTLINED_FUNCTION_11_71();
      result = v7 + 16;
      break;
    case 62:
      OUTLINED_FUNCTION_11_71();
      result = v11 + 10;
      break;
    case 65:
      result = 0xD000000000000013;
      break;
    case 67:
      result = 0x41656C6666756873;
      break;
    case 68:
      OUTLINED_FUNCTION_11_71();
      result = v27 + 23;
      break;
    case 72:
      OUTLINED_FUNCTION_11_71();
      result = v21 + 19;
      break;
    case 73:
      OUTLINED_FUNCTION_11_71();
      result = v24 + 13;
      break;
    case 74:
      OUTLINED_FUNCTION_11_71();
      result = v25 + 22;
      break;
    default:
      OUTLINED_FUNCTION_11_71();
      result = v3 - 2;
      break;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_129_3()
{

  return sub_216FB315C();
}

uint64_t sub_2166F1C1C(uint64_t a1, uint64_t (*a2)(uint64_t, void))
{
  v4 = v2[3];
  v5 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  return a2(v4, *(v5 + 8));
}

id sub_2166F1CF8(void *a1)
{
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v3 = result;
    sub_2166F1DCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC28F8);
    v4 = sub_21700E594();
    v8[3] = MEMORY[0x277D837D0];
    v8[0] = v4;
    v8[1] = v5;
    v6 = a1;
    v7 = sub_2166F1E10(v8, a1);
    sub_2166F1F64(v7);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2166F1DCC()
{
  result = qword_280E29B58;
  if (!qword_280E29B58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E29B58);
  }

  return result;
}

id sub_2166F1E10(void *a1, void *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v6 = *(v3 - 8);
    MEMORY[0x28223BE20](v5);
    v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = sub_21700F7B4();
    (*(v6 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v9 = 0;
  }

  v10 = [swift_getObjCClassFromMetadata() valueWithObject:v9 inContext:a2];
  swift_unknownObjectRelease();

  return v10;
}

void sub_2166F1F64(void *a1)
{
  v2 = a1;
  v3 = sub_21700E4D4();

  [v1 setObject:v2 forKeyedSubscript:v3];
}

uint64_t sub_2166F1FEC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 224) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2166F2104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_46_19();

  v13 = OUTLINED_FUNCTION_226();
  v12(v13);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_7_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t OUTLINED_FUNCTION_113_1()
{

  return sub_216681B04(v1 - 104, v1 - 144, v0);
}

uint64_t OUTLINED_FUNCTION_113_3()
{

  return sub_21700D5E4();
}

uint64_t OUTLINED_FUNCTION_113_5()
{

  return sub_216697664(v1, v0);
}

uint64_t OUTLINED_FUNCTION_113_6()
{

  return swift_beginAccess();
}

uint64_t sub_2166F226C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2166F2364()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_2166F23D8()
{
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  *(v4 + 200) = v0;

  if (v0)
  {
    v5 = sub_216A75F9C;
  }

  else
  {
    v5 = sub_2166F24E4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2166F24E4()
{
  v1 = v0[22];
  v2 = v0[19];
  sub_216681B64(v0[23], v1, &qword_27CAB89C0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v4 = v0[22];
  if (EnumTagSinglePayload == 1)
  {
    sub_21669987C(v0[23], &qword_27CAB89C0);
    sub_21669987C(v4, &qword_27CAB89C0);
    OUTLINED_FUNCTION_12_43();

    OUTLINED_FUNCTION_3();

    return v5();
  }

  else
  {
    v8 = v0[20];
    v7 = v0[21];
    v9 = v0[19];
    v10 = v0[11];
    v20 = v0[12];
    v11 = v0[10];
    OUTLINED_FUNCTION_42();
    v12();
    type metadata accessor for ObjectGraph();
    sub_21700E094();
    v13 = MEMORY[0x277D21D10];
    v0[5] = v9;
    v0[6] = v13;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    (*(v8 + 16))(boxed_opaque_existential_1, v7, v9);
    (*(v10 + 104))(v20, *MEMORY[0x277D21E18], v11);
    v15 = swift_task_alloc();
    v0[26] = v15;
    *v15 = v0;
    v15[1] = sub_216A75D40;
    v16 = v0[15];
    v17 = v0[16];
    v18 = v0[12];
    v19 = v0[9];

    return MEMORY[0x28217F468](v16, v0 + 2, v18, v19, v17);
  }
}

uint64_t sub_2166F2728()
{
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_2166F2810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2166DFAC0;

  return MEMORY[0x28217FBA8](a1, a2, a3, a4);
}

uint64_t sub_2166F28D4()
{
  v1 = sub_21700D7E4();
  MEMORY[0x28223BE20](v1 - 8);
  if (sub_21669DAC4())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC780);
    sub_21700D7D4();
    return sub_21700E1F4();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v0, v0[3]);
    return sub_21700D7F4();
  }
}

uint64_t sub_2166F29C4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for JSIntentDispatcher();
  sub_21700D4D4();
  sub_21700E094();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CACC788);
  v4 = sub_21700E594();
  v6 = v5;
  sub_21700DF14();
  v7 = sub_2166F2AA0(v4, v6, a1, a2);

  return v7;
}

uint64_t sub_2166F2AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_68_1();
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = a4;

  sub_21700DF14();
  sub_21700DF14();

  return sub_2166B1FC4(&unk_21706DC18, v9, &qword_27CACC780, &unk_21706DC20, &unk_28293CBA0, &unk_21706DC30);
}

uint64_t sub_2166F2B64()
{

  OUTLINED_FUNCTION_68_1();

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_173_2()
{

  return sub_21700E494();
}

uint64_t sub_2166F2C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_2_181();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_20_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_1_215(v11);
  OUTLINED_FUNCTION_91_0();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_2166F2CEC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = sub_21700D7E4();
  v6[3] = v8;
  v6[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[5] = v9;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v6[6] = v10;
  *v10 = v6;
  v10[1] = sub_2166F46C4;

  return v12(v9);
}

uint64_t sub_2166F2E4C()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_255(v1);
  OUTLINED_FUNCTION_47_8();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2166F2EE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2166AB4A0;

  return sub_2166F2FB0(a1, a2, v8, v9, v10, a4);
}

uint64_t sub_2166F2FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_2166AB4A0;

  return sub_2166F3080(a1, a3, a4, a5, a6);
}

uint64_t sub_2166F3080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_1_112();
}

uint64_t sub_2166F309C()
{
  OUTLINED_FUNCTION_31();
  if (sub_21669DAC4())
  {
    v0 = swift_task_alloc();
    v1 = OUTLINED_FUNCTION_75_11(v0);
    *v1 = v2;
    OUTLINED_FUNCTION_99_0(v1);

    return sub_216A4F6C8();
  }

  else
  {
    OUTLINED_FUNCTION_145_3();
    OUTLINED_FUNCTION_206();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_207_0(v4);
    *v5 = v6;
    v14 = OUTLINED_FUNCTION_23_32(v5, v7, v8, v9, v10, v11, v12, v13, v15, v16);

    return v14();
  }
}

double OUTLINED_FUNCTION_139_0@<D0>(char a1@<W8>)
{
  *v1 = a1;
  result = 0.0;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  return result;
}

uint64_t sub_2166F3228()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_28_3();
  v4 = v3;
  OUTLINED_FUNCTION_26_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v4 + 88) = v0;

  if (v1)
  {
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_8();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_38_0(&unk_21703FA98);
    swift_task_alloc();
    OUTLINED_FUNCTION_100_11();
    *(v4 + 96) = v17;
    *v17 = v18;
    v17[1] = sub_2166F4574;
    OUTLINED_FUNCTION_47_8();

    return v24(v19, v20, v21, v22, v23, v24, v25, v26);
  }
}

uint64_t OUTLINED_FUNCTION_116_1()
{

  return swift_once();
}

uint64_t sub_2166F345C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[5] = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1858);
  v6[8] = v10;
  v6[9] = *(v10 - 8);
  v6[10] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860);
  v6[11] = v11;
  v6[12] = *(v11 - 8);
  v6[13] = swift_task_alloc();
  v12 = sub_21700D2F4();
  v6[14] = v12;
  v6[15] = *(v12 - 8);
  v6[16] = swift_task_alloc();
  v13 = sub_21700CF34();
  v6[17] = v13;
  v6[18] = *(v13 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a4;

  return MEMORY[0x2822009F8](sub_2166F3674, 0, 0);
}

uint64_t sub_2166F3674()
{
  OUTLINED_FUNCTION_31();
  v2 = *(v1[7] + 40);
  v1[21] = v2;
  OUTLINED_FUNCTION_162_0();
  os_unfair_lock_lock(v0);
  OUTLINED_FUNCTION_79_15();
  v1[22] = v0;
  OUTLINED_FUNCTION_161_0();
  os_unfair_lock_unlock(v2);

  OUTLINED_FUNCTION_38_0(&dword_21703F4C8);
  v14 = v3;
  v4 = swift_task_alloc();
  v1[23] = v4;
  *v4 = v1;
  v12 = OUTLINED_FUNCTION_12_45(v4, v5, v6, v7, v8, v9, v10, v11, v14);

  return v12();
}

void OUTLINED_FUNCTION_152()
{

  JUMPOUT(0x21CEA1440);
}

uint64_t sub_2166F37A0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 192) = v4;
  *(v2 + 200) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2166F38A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_142();

  v17 = sub_21700CF24();
  if (qword_280E45D50 != -1)
  {
    v17 = OUTLINED_FUNCTION_2_96();
  }

  v39 = v16[14];
  v40 = v16[8];
  v41 = v16[20];
  v42 = v16[6];
  v43 = v16[17];
  v18 = OUTLINED_FUNCTION_4_74(v17, qword_280E73D98);
  v19(v18);
  sub_2166F1194();
  sub_2166F1214();
  OUTLINED_FUNCTION_67_12();
  sub_21700D304();
  sub_21700CEE4();
  OUTLINED_FUNCTION_15_43();
  v20 = OUTLINED_FUNCTION_31_33();
  v21(v20);
  v22 = OUTLINED_FUNCTION_30_30();
  v23(v22);
  OUTLINED_FUNCTION_29_28();
  v16[26] = v24;
  v16[27] = v25;
  v26 = OUTLINED_FUNCTION_78_12();
  v27(v26);
  sub_21700DB74();
  OUTLINED_FUNCTION_160_0();
  sub_21700D4F4();
  OUTLINED_FUNCTION_70_0();
  v16[28] = sub_21700DB44();

  v28 = swift_task_alloc();
  v16[29] = v28;
  sub_2166F3A50();
  OUTLINED_FUNCTION_38_21();
  *v28 = v29;
  v28[1] = sub_2166F439C;
  OUTLINED_FUNCTION_41_19();
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x282180628](v30, v31, v32, v33, v34, v35, v36, v37, v39, v40, v41, v42, v43, a14, a15, a16);
}

unint64_t sub_2166F3A50()
{
  result = qword_280E460E8;
  if (!qword_280E460E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E460E8);
  }

  return result;
}

uint64_t sub_2166F3AA4()
{
  v1 = *v0;
  sub_21700DF14();
  return v1;
}

id sub_2166F3ADC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v7 = result;
    sub_2166F1DCC();
    v10[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    v10[0] = a4;
    sub_21700DF14();
    v8 = a1;
    v9 = sub_2166F1E10(v10, a1);
    sub_2166F1F64(v9);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2166F3BE4()
{
  sub_216685F4C(0, &qword_280E29AF8);
  v0 = sub_21700F124();
  v1 = sub_21700F134();

  return v1;
}

id sub_2166F3C5C(void *a1)
{
  sub_2166C0578(&v4);
  if (v6)
  {
    v9 = v4;
    v10 = v5;
    v11 = v6;
    v12 = v7;
    v13 = v8;
    v2 = sub_2166F3D44(a1);
    sub_2166997CC(&v4, &qword_27CAC5980);
    return v2;
  }

  result = [objc_opt_self() valueWithNullInContext_];
  v2 = result;
  if (result)
  {
    return v2;
  }

  __break(1u);
  return result;
}

id sub_2166F3D44(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  result = [v4 valueWithNewObjectInContext_];
  if (result)
  {
    v6 = result;
    v105 = *v1;
    v7 = MEMORY[0x277D837D0];
    if (*(&v105 + 1))
    {
      sub_216685F4C(0, &qword_280E29B58);
      v104 = v7;
      v103 = v105;
      sub_216681B64(&v105, v101, &qword_27CABAA40);
      v8 = a1;
      v9 = sub_2166F1E10(&v103, a1);
      sub_2166F1F64(v9);
    }

    sub_216685F4C(0, &qword_280E29B58);
    v10 = sub_2166C0DB4(*(v1 + 16));
    v104 = v7;
    *&v103 = v10;
    *(&v103 + 1) = v11;
    v12 = a1;
    v20 = OUTLINED_FUNCTION_7_93(v12, v13, v14, v15, v16, v17, v18, v19, v92, v96);
    sub_2166F1F64(v20);
    v21 = sub_216C6DFE0(*(v1 + 3));
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
    v104 = v100;
    *&v103 = v21;
    v22 = v12;
    v30 = OUTLINED_FUNCTION_7_93(v22, v23, v24, v25, v26, v27, v28, v29, v93, v97);
    sub_2166F1F64(v30);
    sub_2166F1F64([v4 valueWithBool:*(v2 + 32) inContext:v22]);
    v31 = *(v2 + 5);
    if (v31)
    {
      v32 = *(v31 + 16);
      v33 = MEMORY[0x277D84F90];
      if (v32)
      {
        v98 = v22;
        *&v103 = MEMORY[0x277D84F90];
        sub_2166F4258();
        v33 = v103;
        v34 = (v31 + 40);
        do
        {
          v35 = *(v34 - 1);
          v36 = *v34;
          *&v103 = v33;
          v38 = *(v33 + 16);
          v37 = *(v33 + 24);
          sub_21700DF14();
          if (v38 >= v37 >> 1)
          {
            sub_2166F4258();
            v33 = v103;
          }

          *(v33 + 16) = v38 + 1;
          v39 = v33 + 16 * v38;
          *(v39 + 32) = v35;
          *(v39 + 40) = v36;
          v34 += 2;
          --v32;
        }

        while (v32);
        v22 = v98;
      }

      v104 = v100;
      *&v103 = v33;
      v40 = v22;
      v48 = OUTLINED_FUNCTION_7_93(v40, v41, v42, v43, v44, v45, v46, v47, v94, v98);
      sub_2166F1F64(v48);
    }

    v49 = *(v2 + 48);
    v104 = MEMORY[0x277D839B0];
    LOBYTE(v103) = v49;
    v50 = v22;
    v58 = OUTLINED_FUNCTION_7_93(v50, v51, v52, v53, v54, v55, v56, v57, v94, v98);
    sub_2166F1F64(v58);
    v59 = *(v2 + 49);
    if (v59 != 5)
    {
      v60 = sub_2166F42F4(v59);
      v104 = MEMORY[0x277D837D0];
      *&v103 = v60;
      *(&v103 + 1) = v61;
      v62 = v50;
      v70 = OUTLINED_FUNCTION_7_93(v62, v63, v64, v65, v66, v67, v68, v69, v95, v99);
      sub_2166F1F64(v70);
    }

    v71 = *(v2 + 50);
    if (v71 != 2)
    {
      v72 = OUTLINED_FUNCTION_6_98(v71);
      sub_2166F1F64(v72);
    }

    v73 = *(v2 + 51);
    if (v73 != 2)
    {
      v74 = OUTLINED_FUNCTION_6_98(v73);
      sub_2166F1F64(v74);
    }

    v75 = *(v2 + 52);
    if (v75 != 2)
    {
      v76 = OUTLINED_FUNCTION_6_98(v75);
      sub_2166F1F64(v76);
    }

    v77 = *(v2 + 53);
    if (v77 != 2)
    {
      v78 = OUTLINED_FUNCTION_6_98(v77);
      sub_2166F1F64(v78);
    }

    v79 = *(v2 + 54);
    if (v79 != 2)
    {
      v80 = OUTLINED_FUNCTION_6_98(v79);
      sub_2166F1F64(v80);
    }

    v81 = *(v2 + 7);
    v101[0] = v81;
    if (v81)
    {
      v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6B30);
      *&v103 = v81;
      v82 = v50;
      v83 = sub_216681B64(v101, v102, &qword_27CABDB30);
      v91 = OUTLINED_FUNCTION_7_93(v83, v84, v85, v86, v87, v88, v89, v90, v95, v99);
      sub_2166F1F64(v91);
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2166F42E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2166F42F4(char a1)
{
  result = 0x64656B6E696C6E75;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = OUTLINED_FUNCTION_9_84();
      break;
    case 3:
      result = 0x6967696C45746F6ELL;
      break;
    case 4:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2166F439C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_37_6();
  OUTLINED_FUNCTION_26_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 240) = v0;

  OUTLINED_FUNCTION_119_0();

  OUTLINED_FUNCTION_33_24();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2166F44B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  v13 = *(v12 + 208);
  v24 = *(v12 + 80);

  v14 = OUTLINED_FUNCTION_226();
  v13(v14);

  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_7_3();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, v24, a10, a11, a12);
}

uint64_t sub_2166F4574()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2166F466C()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_23();

  return v0();
}

uint64_t sub_2166F46C4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2166F47C8()
{
  if (OUTLINED_FUNCTION_20_7())
  {
    OUTLINED_FUNCTION_14_0();
  }

  else
  {
    OUTLINED_FUNCTION_15_0();
  }

  return swift_getOpaqueTypeMetadata2();
}

uint64_t sub_2166F481C()
{
  if (OUTLINED_FUNCTION_20_7())
  {
    OUTLINED_FUNCTION_14_0();
  }

  else
  {
    OUTLINED_FUNCTION_15_0();
  }

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2166F486C()
{
  if (OUTLINED_FUNCTION_25())
  {
    sub_217009974();

    return sub_2170089F4();
  }

  else
  {
    sub_217008B84();
    OUTLINED_FUNCTION_17_7();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_19_0();
    sub_217009794();
    OUTLINED_FUNCTION_19_0();
    sub_2170089F4();
    sub_21700F164();
    OUTLINED_FUNCTION_16_8();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_19_0();
    sub_217008B84();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_19_0();
    sub_217009794();
    return sub_2170089F4();
  }
}

uint64_t sub_2166F4990()
{
  if (OUTLINED_FUNCTION_25())
  {
    sub_217009974();
    OUTLINED_FUNCTION_24_4();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_0_9();
  }

  else
  {
    sub_217008B84();
    OUTLINED_FUNCTION_17_7();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_19_0();
    sub_217009794();
    OUTLINED_FUNCTION_24_4();
    sub_21700F164();
    OUTLINED_FUNCTION_16_8();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_19_0();
    sub_217008B84();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_19_0();
    sub_217009794();
    sub_2170089F4();
    swift_getWitnessTable();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  return swift_getWitnessTable();
}

uint64_t sub_2166F4B64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216777E14();
  *a1 = result;
  return result;
}

void sub_2166F4BDC(uint64_t a1@<X8>)
{
  sub_2166F4C10();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

uint64_t sub_2166F4C1C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_23_0(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2166F4C34(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return OUTLINED_FUNCTION_23_0(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2166F4C4C(uint64_t result, int a2, int a3)
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

uint64_t sub_2166F4C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2166F4D20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21700D284();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2166F4DE0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216781480();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2166F4E38@<X0>(uint64_t *a1@<X8>)
{
  result = MusicPageProvider.accountButtonCoordinator.getter();
  *a1 = result;
  return result;
}

__n128 sub_2166F4E6C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_2166F4EAC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A68);
  type metadata accessor for SearchPageView();
  type metadata accessor for FlowActionPageView();
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A70);
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A78);
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A80);
  OUTLINED_FUNCTION_19_0();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A88);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  OUTLINED_FUNCTION_11_8();
  sub_2166B5148(v0, &qword_27CAB6A68, &unk_21701D690, v1);
  OUTLINED_FUNCTION_10_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_13();
  sub_2166B52EC(v2, v3);
  OUTLINED_FUNCTION_42_3();
  swift_getWitnessTable();
  sub_2166B53E0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_75();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_4();
  sub_2166B5148(v4, &qword_27CAB6A78, &unk_217013DD8, v5);
  swift_getWitnessTable();
  sub_2166B58AC();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_5();
  sub_21669E098(v6, &qword_27CAB6A88);
  OUTLINED_FUNCTION_0_9();
  return swift_getWitnessTable();
}

uint64_t sub_2166F5108@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2167812BC();
  *a1 = result;
  return result;
}

uint64_t sub_2166F5138()
{

  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

uint64_t sub_2166F5184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for ModalActionModelDestinations.Destination();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_2166F5220(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21700D284();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for ModalActionModelDestinations.Destination();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2166F52C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D194();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0);
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_2166F53A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D194();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2166F5478(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2166F54C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2166F563C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6D38);
  OUTLINED_FUNCTION_6_14();
  type metadata accessor for ModalNavigationStack();
  OUTLINED_FUNCTION_6_14();
  type metadata accessor for AppDestinationSheetPageView();
  sub_217009564();
  sub_217009564();
  OUTLINED_FUNCTION_6_14();
  type metadata accessor for AppDestinationFullScreenCoverPageView();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6D40);
  sub_217009564();
  sub_217009564();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6D48);
  sub_217009564();
  type metadata accessor for NestedPresentationModifier();
  sub_2170089F4();
  sub_216785CE8();
  OUTLINED_FUNCTION_0_17();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  sub_216785E20();
  swift_getWitnessTable();
  sub_216785E74();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_216785F4C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_20();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_9();
  return swift_getWitnessTable();
}

uint64_t sub_2166F58B4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[19];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
        v11 = a3[21];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_2166F59E0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
      OUTLINED_FUNCTION_17();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[19];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
        v11 = a4[21];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_2166F5B5C(uint64_t a1)
{
  result = sub_2166D4B78(qword_280E410F0, type metadata accessor for HorizontalLockup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2166F6040()
{
  v1 = type metadata accessor for PlayAction();
  v2 = *(*(v1 - 8) + 80);
  v15 = *(*(v1 - 8) + 64);
  v3 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  v6 = *(v4 + 80);

  v7 = v0 + ((v2 + 24) & ~v2);
  sub_21700D284();
  OUTLINED_FUNCTION_9_0();
  (*(v8 + 8))(v7);

  v9 = v7 + *(v1 + 28);
  v10 = type metadata accessor for ContentDescriptor();
  if (!__swift_getEnumTagSinglePayload(v9, 1, v10))
  {

    v11 = *(v10 + 24);
    v12 = sub_217005EF4();
    if (!__swift_getEnumTagSinglePayload(v9 + v11, 1, v12))
    {
      (*(*(v12 - 8) + 8))(v9 + v11, v12);
    }
  }

  v13 = v7 + *(v1 + 44);
  if (*(v13 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  (*(v5 + 8))(v0 + ((((v2 + 24) & ~v2) + v15 + v6) & ~v6), v3);

  return swift_deallocObject();
}

uint64_t sub_2166F6390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2166F6440(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2166F64EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2166F6580(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2166F668C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentDescriptor();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2166F66D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentDescriptor();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2166F6724()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70B0);
  OUTLINED_FUNCTION_117();
  v3 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  v4 = *(v0 + 36);
  sub_217006E04();
  OUTLINED_FUNCTION_34();
  (*(v5 + 8))(v3 + v4);
  v6 = *(v0 + 40);
  v7 = sub_217007F04();
  if (!__swift_getEnumTagSinglePayload(v3 + v6, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_2166F6860()
{
  type metadata accessor for PresentAlertAction();
  OUTLINED_FUNCTION_117();
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t sub_2166F6970()
{
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_43_7();
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_43_7();
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_43_7();
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_43_7();
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_43_7();
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_43_7();
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_43_7();
  return OUTLINED_FUNCTION_43_7();
}

uint64_t sub_2166F6A74(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2166F6ABC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2166F6B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2166F6B50(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700D284();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2166F6C04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicAppDestination(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2166F6C4C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for MusicAppDestination(0);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_2166F6CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2166F6D64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2166F6E1C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = OUTLINED_FUNCTION_110();
  type metadata accessor for MusicMetrics.ClickFields(v6);
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    if (a2 == 254)
    {
      v11 = *(v3 + a3[5] + 40);
      if (v11 > 1)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7168);
    OUTLINED_FUNCTION_17();
    if (*(v14 + 84) == a2)
    {
      v9 = v13;
      v15 = a3[6];
    }

    else
    {
      v9 = sub_217007CA4();
      v15 = a3[8];
    }

    v10 = v3 + v15;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

void sub_2166F6F2C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = OUTLINED_FUNCTION_110();
  type metadata accessor for MusicMetrics.ClickFields(v8);
  OUTLINED_FUNCTION_17();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    if (a3 == 254)
    {
      *(v4 + a4[5] + 40) = -a2;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7168);
    OUTLINED_FUNCTION_17();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[6];
    }

    else
    {
      v11 = sub_217007CA4();
      v15 = a4[8];
    }

    v12 = v4 + v15;
  }

  __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_2166F703C()
{
  v1 = type metadata accessor for MusicClickMetricsModifier();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = *(v2 + 32);
  if (v3 >> 60 != 15)
  {
    sub_21677A524(*(v2 + 24), v3);
  }

  v4 = *(type metadata accessor for MusicMetrics.ClickFields(0) + 36);
  v5 = sub_217005EF4();
  if (!__swift_getEnumTagSinglePayload(v2 + v4, 1, v5))
  {
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  v6 = v2 + v1[5];
  if (*(v6 + 40))
  {
    if (*(v6 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }
  }

  else
  {
  }

  v7 = v2 + v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB71B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for MusicMetrics.PageFields(0);
    if (!__swift_getEnumTagSinglePayload(v7, 1, v8))
    {

      v9 = *(v8 + 28);
      if (!__swift_getEnumTagSinglePayload(v7 + v9, 1, v5))
      {
        (*(*(v5 - 8) + 8))(v7 + v9, v5);
      }
    }
  }

  else
  {
  }

  v10 = v2 + v1[7];
  if (*(v10 + 40))
  {
    if (*(v10 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
    }
  }

  else
  {
  }

  v11 = v1[8];
  sub_217007CA4();
  OUTLINED_FUNCTION_34();
  (*(v12 + 8))(v2 + v11);

  return swift_deallocObject();
}

uint64_t sub_2166F72E4()
{

  return swift_deallocObject();
}

uint64_t sub_2166F7334()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB71C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB71B0);
  OUTLINED_FUNCTION_2_22();
  sub_2166D9530(v0, &qword_27CAB71C0);
  OUTLINED_FUNCTION_1_9();
  sub_2166D9530(v1, &qword_27CAB71B0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2166F7404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    v8 = a1 + *(a3 + 28);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_2166F74EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 20)) = a2;
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
    v10 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2166F75C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21700D284();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2166F7674(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21700D284();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2166F7794()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216E1343C();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_2166F77BC()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216E13448();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_2166F77E4()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216E13454();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_2166F780C()
{
  OUTLINED_FUNCTION_0_0();
  v0 = OUTLINED_FUNCTION_10_4();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_2166F7834()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_2166C1A3C();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_2166F785C()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216E198BC();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_2166F7884()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_2167B268C();
  *v0 = result;
  return result;
}

uint64_t sub_2166F78B0()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_2167B2634();
  *v0 = result;
  return result;
}

uint64_t sub_2166F78D8()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_2167B25DC();
  *v0 = result;
  return result;
}

uint64_t sub_2166F7900()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_2167B2584();
  *v0 = result;
  return result;
}

uint64_t sub_2166F7928()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_2167B2528();
  *v0 = result;
  return result;
}

uint64_t sub_2166F7950()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_2167B24D0();
  *v0 = result;
  return result;
}

uint64_t sub_2166F79AC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7238);
  sub_2167B35EC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2166F7A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 40);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_21700D284();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2166F7A90(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 40) = -a2;
  }

  else
  {
    v7 = sub_21700D284();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2166F7B1C()
{

  return swift_deallocObject();
}

uint64_t sub_2166F7B5C()
{
  type metadata accessor for LiveRadioGridLockupView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_34();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = v3 + *(v0 + 28);
  if (*(v6 + 40))
  {
    if (*(v6 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2166F7CB0()
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB72D8);
  OUTLINED_FUNCTION_34();
  v1 = OUTLINED_FUNCTION_8();
  v2(v1);
  return v0;
}

uint64_t sub_2166F7D10()
{
  type metadata accessor for LiveRadioGridLockupView(0);
  OUTLINED_FUNCTION_4_4();
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 56);
  v4 = v1 + v3;

  v5 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170075A4();
    OUTLINED_FUNCTION_34();
    (*(v6 + 8))(v4 + v5);
  }

  else
  {
  }

  v7 = v4 + *(v0 + 28);
  if (*(v7 + 40))
  {
    if (*(v7 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2166F7E6C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*(a1 + 64));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  v5 = OUTLINED_FUNCTION_19_1(*(a3 + 32));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_2166F7EF0()
{
  OUTLINED_FUNCTION_21_0();
  if (v3)
  {
    *(v1 + 64) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
    v5 = OUTLINED_FUNCTION_19_1(*(v4 + 32));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_2166F7F6C(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_22_1(*a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
  v5 = OUTLINED_FUNCTION_19_1(*(a3 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_2166F7FF0()
{
  OUTLINED_FUNCTION_21_0();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7370);
    v5 = OUTLINED_FUNCTION_19_1(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_2166F8070()
{
  type metadata accessor for LiveRadioGridLockupContent(0);
  OUTLINED_FUNCTION_4_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_216684F5C(*v3, *(v3 + 8));
  sub_2166B8588();
  sub_2166B8588();

  v4 = v3 + v0[8];
  v5 = type metadata accessor for Artwork();
  if (!__swift_getEnumTagSinglePayload(v4, 1, v5))
  {
    sub_21700C4B4();
    OUTLINED_FUNCTION_34();
    (*(v6 + 8))(v4);
    v7 = *(v5 + 20);
    sub_21700C444();
    OUTLINED_FUNCTION_34();
    (*(v8 + 8))(v4 + v7);
  }

  if ((*(v3 + v0[9] + 8) - 1) >= 9)
  {
  }

  v9 = v3 + v0[11];
  if (*(v9 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v3 + v0[12]);

  return swift_deallocObject();
}

uint64_t sub_2166F8234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 2147483637)
  {
    v8 = sub_21700C444();
    v9 = a1 + *(a3 + 36);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_43_8();
  if (v11 != v12)
  {
    v13 = -1;
  }

  else
  {
    v13 = v10;
  }

  v14 = v13 - 8;
  if (v10 >= 9)
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

void sub_2166F8318()
{
  OUTLINED_FUNCTION_14_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    if (v3 == 2147483637)
    {
      *(v1 + *(v2 + 20) + 8) = (v0 + 9);
      return;
    }

    v6 = sub_21700C444();
    v7 = v1 + *(v2 + 36);
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_2166F83E8()
{
  OUTLINED_FUNCTION_80_0();
  type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0);
  OUTLINED_FUNCTION_17();
  if (*(v1 + 84) == v0)
  {
    v2 = OUTLINED_FUNCTION_73();

    return __swift_getEnumTagSinglePayload(v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_43_8();
    if (v7 != v8)
    {
      v6 = -1;
    }

    return (v6 + 1);
  }
}

void sub_2166F8480()
{
  OUTLINED_FUNCTION_14_8();
  type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0);
  OUTLINED_FUNCTION_17();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_54();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = v0;
  }
}

uint64_t sub_2166F8538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7528);
  OUTLINED_FUNCTION_17();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_12:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 2147483646)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
    OUTLINED_FUNCTION_17();
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v16 = *(a3 + 28);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
      v16 = *(a3 + 32);
    }

    v9 = a1 + v16;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_43_8();
  if (v11 != v12)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

void sub_2166F8668()
{
  OUTLINED_FUNCTION_14_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7528);
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    if (v3 == 2147483646)
    {
      *(v1 + v2[6] + 24) = v0;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
    OUTLINED_FUNCTION_17();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[7];
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
      v10 = v2[8];
    }

    v7 = v1 + v10;
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_2166F878C()
{
  v1 = type metadata accessor for ContextMenuPreview(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  v4 = type metadata accessor for ContextMenuPreview.ViewModel(0);
  if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v4))
  {
    v5 = sub_21700C4B4();
    if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v5))
    {
      OUTLINED_FUNCTION_50();
      (*(v6 + 8))(v0 + v2, v5);
    }

    v7 = type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0);
    if ((OUTLINED_FUNCTION_93_0(*(v7 + 20)) - 1) >= 9)
    {
    }

    v8 = *(v7 + 36);
    sub_21700C444();
    OUTLINED_FUNCTION_34();
    (*(v9 + 8))(v3 + v8);
    OUTLINED_FUNCTION_93_0(v4[5]);

    OUTLINED_FUNCTION_93_0(v4[6]);

    OUTLINED_FUNCTION_93_0(v4[7]);
  }

  v10 = v3 + v1[6];
  if (*(v10 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  v11 = v1[7];
  v12 = sub_21700C4B4();
  if (!__swift_getEnumTagSinglePayload(v3 + v11, 1, v12))
  {
    OUTLINED_FUNCTION_50();
    (*(v13 + 8))(v3 + v11, v12);
  }

  v14 = v1[8];
  v15 = sub_21700C444();
  if (!__swift_getEnumTagSinglePayload(v3 + v14, 1, v15))
  {
    OUTLINED_FUNCTION_50();
    (*(v16 + 8))(v3 + v14, v15);
  }

  return swift_deallocObject();
}

uint64_t sub_2166F89D8()
{
  OUTLINED_FUNCTION_80_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7528);
  OUTLINED_FUNCTION_17();
  if (*(v3 + 84) == v1)
  {
    v4 = OUTLINED_FUNCTION_73();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }

  else
  {
    v8 = *(v0 + *(v2 + 20));
    if (v8 >= 2)
    {
      return OUTLINED_FUNCTION_95_4(v8);
    }

    else
    {
      return 0;
    }
  }
}

void sub_2166F8A80()
{
  OUTLINED_FUNCTION_14_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7528);
  OUTLINED_FUNCTION_17();
  if (*(v1 + 84) == v0)
  {
    v2 = OUTLINED_FUNCTION_54();

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_74_3();
  }
}

uint64_t sub_2166F8B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_110();
  type metadata accessor for ContextMenuPreview.ViewModel(v6);
  OUTLINED_FUNCTION_17();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    if (a2 == 254)
    {
      v11 = *(v3 + *(a3 + 20));
      if (v11 >= 2)
      {
        return OUTLINED_FUNCTION_95_4(v11);
      }

      else
      {
        return 0;
      }
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598);
    v10 = v3 + *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

void sub_2166F8C30()
{
  OUTLINED_FUNCTION_14_8();
  type metadata accessor for ContextMenuPreview.ViewModel(0);
  OUTLINED_FUNCTION_17();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    if (v3 == 254)
    {
      OUTLINED_FUNCTION_74_3();
      return;
    }

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7598);
    v7 = v1 + *(v2 + 28);
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_2166F8CEC()
{
  OUTLINED_FUNCTION_80_0();
  type metadata accessor for ContextMenuPreview.ViewModel(0);
  OUTLINED_FUNCTION_17();
  if (*(v3 + 84) == v1)
  {
    v4 = OUTLINED_FUNCTION_73();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }

  else
  {
    v8 = *(v0 + *(v2 + 20));
    if (v8 >= 2)
    {
      return v8 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_2166F8D80()
{
  OUTLINED_FUNCTION_14_8();
  type metadata accessor for ContextMenuPreview.ViewModel(0);
  OUTLINED_FUNCTION_17();
  if (*(v1 + 84) == v0)
  {
    v2 = OUTLINED_FUNCTION_54();

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_74_3();
  }
}

uint64_t sub_2166F8E68()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB75E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB75E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB75D0);
  sub_2167C4A34();
  sub_2166D9530(&qword_280E29AE8, &qword_27CAB75D0);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2166F8F70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7840);
  OUTLINED_FUNCTION_1();
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_3_12();
  v1(v0);
  OUTLINED_FUNCTION_2_7();

  return swift_deallocObject();
}

uint64_t sub_2166F902C()
{
  sub_217006224();
  OUTLINED_FUNCTION_1();

  v0 = OUTLINED_FUNCTION_3_12();
  v1(v0);
  OUTLINED_FUNCTION_2_7();

  return swift_deallocObject();
}

uint64_t sub_2166F90D4()
{
  sub_217006224();
  OUTLINED_FUNCTION_1();
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_3_12();
  v1(v0);
  OUTLINED_FUNCTION_2_7();

  return swift_deallocObject();
}

uint64_t sub_2166F9184()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2166F9214(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7878);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_2166F92A8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7878);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2166F9334()
{
  v1 = (type metadata accessor for InlineBubbleTipView.WrappedInlineBubbleTip() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7858);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21700DA84();
    OUTLINED_FUNCTION_34();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2166F9448(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78A8);
  OUTLINED_FUNCTION_34();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2166F94F0()
{
  type metadata accessor for ViewAppearanceLifecycleModifier();
  swift_getWitnessTable();
  sub_2170097A4();
  sub_2170089F4();
  sub_2170089F4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_2166F963C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MappedSection(0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 36);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7928);
      v10 = *(a3 + 48);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_2166F9714(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for MappedSection(0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 36);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7928);
      v10 = *(a4 + 48);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_2166F97E8()
{
  v4 = type metadata accessor for SongDetailPageView();
  v5 = *(*(v4 - 8) + 80);
  v6 = v0 + ((v5 + 32) & ~v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v6);

  v7 = v6 + *(v4 + 36);

  v8 = type metadata accessor for MappedSection(0);
  v9 = (v7 + v8[6]);
  v10 = _s7SectionV6HeaderVMa(0);
  if (!OUTLINED_FUNCTION_4_16(v10))
  {
    v11 = OUTLINED_FUNCTION_20_11();
    v2 = _s7SectionV6HeaderV12HeaderLockupOMa(v11);
    v12 = OUTLINED_FUNCTION_88_0();
    if (!__swift_getEnumTagSinglePayload(v12, v13, v2))
    {
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:

          goto LABEL_18;
        case 1u:
          OUTLINED_FUNCTION_9_12();
          v19 = type metadata accessor for ComposerSectionHeader();
          v20 = v19[5];
          v3 = sub_21700D7A4();
          if (!OUTLINED_FUNCTION_21_2(&v9[v20]))
          {
            OUTLINED_FUNCTION_50();
            (*(v21 + 8))(&v9[v20], v3);
          }

          OUTLINED_FUNCTION_8_9(v19[6]);

          OUTLINED_FUNCTION_8_9(v19[10]);

          v22 = OUTLINED_FUNCTION_13_4(v19[11]);
          if (v23)
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v22);
          }

          OUTLINED_FUNCTION_20_11();
          v2 = type metadata accessor for ContentDescriptor();
          v24 = OUTLINED_FUNCTION_88_0();
          if (!__swift_getEnumTagSinglePayload(v24, v25, v2))
          {

            v3 = *(v2 + 24);
            v26 = sub_217005EF4();
            if (!OUTLINED_FUNCTION_5_17(v26))
            {
              OUTLINED_FUNCTION_3_10();
              v27 = OUTLINED_FUNCTION_15_7();
              v28(v27);
            }
          }

          break;
        case 2u:
          if (*(v9 + 1))
          {

            if (*(v9 + 7))
            {
              __swift_destroy_boxed_opaque_existential_1Tm((v9 + 32));
            }
          }

          if (*(v9 + 10))
          {

            if (*(v9 + 16))
            {
              __swift_destroy_boxed_opaque_existential_1Tm((v9 + 104));
            }
          }

          type metadata accessor for DefaultSectionHeader();
          OUTLINED_FUNCTION_20_11();
          v2 = type metadata accessor for Artwork();
          v15 = OUTLINED_FUNCTION_88_0();
          if (!__swift_getEnumTagSinglePayload(v15, v16, v2))
          {
            sub_21700C4B4();
            OUTLINED_FUNCTION_9_0();
            (*(v17 + 8))(v9);
            v2 = *(v2 + 20);
            sub_21700C444();
            OUTLINED_FUNCTION_9_0();
            (*(v18 + 8))(&v9[v2]);
          }

          break;
        case 3u:
          if (*(v9 + 1))
          {

            if (*(v9 + 7))
            {
              __swift_destroy_boxed_opaque_existential_1Tm((v9 + 32));
            }
          }

LABEL_18:

          break;
        default:
          break;
      }
    }
  }

  v14 = v7 + v8[7];
  type metadata accessor for MappedSection.Content(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 4u:
    case 5u:
    case 0xDu:
    case 0x17u:
    case 0x35u:
    case 0x3Au:
    case 0x3Bu:
      goto LABEL_128;
    case 1u:
      sub_21700C1E4();
      OUTLINED_FUNCTION_9_0();
      (*(v172 + 8))(v14);
      v131 = &unk_27CAB7938;
      goto LABEL_130;
    case 2u:
      OUTLINED_FUNCTION_9_12();
      type metadata accessor for AnimatedTextListItem();
      goto LABEL_81;
    case 3u:
    case 7u:
    case 0xBu:
    case 0xEu:
    case 0xFu:
    case 0x12u:
    case 0x13u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Fu:
    case 0x20u:
    case 0x21u:
    case 0x24u:
    case 0x2Du:
    case 0x33u:
    case 0x34u:
    case 0x36u:
    case 0x37u:
    case 0x38u:
    case 0x39u:
    case 0x3Du:
      goto LABEL_176;
    case 6u:
      v161 = OUTLINED_FUNCTION_9_12();
      v162 = type metadata accessor for MappedArtistLatestReleaseAndTopSongs(v161);
      v163 = v162[5];
      v164 = sub_21700D7A4();
      if (!__swift_getEnumTagSinglePayload(v14 + v163, 1, v164))
      {
        OUTLINED_FUNCTION_50();
        (*(v165 + 8))(v14 + v163, v164);
      }

      v331 = v164;
      v166 = v14 + v162[6];
      if (!OUTLINED_FUNCTION_17_13(v166))
      {
        v167 = v166 + *(v1 + 20);
        v168 = _s7SectionV6HeaderV12HeaderLockupOMa(0);
        if (!OUTLINED_FUNCTION_18_8(v168))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:

              goto LABEL_246;
            case 1u:
              __swift_destroy_boxed_opaque_existential_1Tm(v167);
              v311 = type metadata accessor for ComposerSectionHeader();
              if (!__swift_getEnumTagSinglePayload(v167 + v311[5], 1, v331))
              {
                OUTLINED_FUNCTION_50();
                (*(v312 + 8))(v167 + v313);
              }

              v314 = v167 + v311[11];
              if (*(v314 + 24))
              {
                __swift_destroy_boxed_opaque_existential_1Tm(v314);
              }

              v315 = v167 + v311[12];
              v316 = type metadata accessor for ContentDescriptor();
              if (!OUTLINED_FUNCTION_18_8(v316))
              {

                v317 = v311[6];
                v328 = sub_217005EF4();
                if (!__swift_getEnumTagSinglePayload(v315 + v317, 1, v328))
                {
                  OUTLINED_FUNCTION_50();
                  (*(v318 + 8))(v315 + v317);
                }
              }

              break;
            case 2u:
              if (*(v167 + 8))
              {

                if (*(v167 + 56))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v167 + 32);
                }
              }

              if (*(v167 + 80))
              {

                if (*(v167 + 128))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v167 + 104);
                }
              }

              v300 = v167 + *(type metadata accessor for DefaultSectionHeader() + 32);
              v301 = type metadata accessor for Artwork();
              if (!OUTLINED_FUNCTION_27_7(v301))
              {
                sub_21700C4B4();
                OUTLINED_FUNCTION_9_0();
                (*(v302 + 8))(v300);
                v327 = v300;
                v303 = *(v167 + 20);
                sub_21700C444();
                OUTLINED_FUNCTION_9_0();
                (*(v304 + 8))(v327 + v303);
              }

              break;
            case 3u:
              if (*(v167 + 8))
              {

                if (*(v167 + 56))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v167 + 32);
                }
              }

LABEL_246:

              break;
            default:
              break;
          }
        }
      }

      v169 = v14 + v162[8];
      if (!OUTLINED_FUNCTION_17_13(v169))
      {
        v170 = (v169 + *(v1 + 20));
        v171 = _s7SectionV6HeaderV12HeaderLockupOMa(0);
        if (!__swift_getEnumTagSinglePayload(v170, 1, v171))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:

              goto LABEL_251;
            case 1u:
              __swift_destroy_boxed_opaque_existential_1Tm(v170);
              v319 = type metadata accessor for ComposerSectionHeader();
              v329 = v319[5];
              if (!__swift_getEnumTagSinglePayload(&v170[v329], 1, v331))
              {
                OUTLINED_FUNCTION_50();
                (*(v320 + 8))(&v170[v329], v331);
              }

              v321 = &v170[v319[11]];
              if (*(v321 + 24))
              {
                __swift_destroy_boxed_opaque_existential_1Tm(v321);
              }

              v322 = &v170[v319[12]];
              v323 = type metadata accessor for ContentDescriptor();
              if (!OUTLINED_FUNCTION_21_2(v322))
              {

                v324 = *(v323 + 24);
                v325 = sub_217005EF4();
                if (!OUTLINED_FUNCTION_21_2(v322 + v324))
                {
                  OUTLINED_FUNCTION_50();
                  (*(v326 + 8))(v322 + v324, v325);
                }
              }

              break;
            case 2u:
              if (*(v170 + 1))
              {

                if (*(v170 + 7))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm((v170 + 32));
                }
              }

              if (*(v170 + 10))
              {

                if (*(v170 + 16))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm((v170 + 104));
                }
              }

              v305 = &v170[*(type metadata accessor for DefaultSectionHeader() + 32)];
              v306 = type metadata accessor for Artwork();
              if (!OUTLINED_FUNCTION_21_2(v305))
              {
                sub_21700C4B4();
                OUTLINED_FUNCTION_9_0();
                (*(v307 + 8))(v305);
                v308 = *(v306 + 20);
                sub_21700C444();
                OUTLINED_FUNCTION_9_0();
                (*(v309 + 8))(v305 + v308, v310);
              }

              break;
            case 3u:
              if (*(v170 + 1))
              {

                if (*(v170 + 7))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm((v170 + 32));
                }
              }

LABEL_251:

              break;
            default:
              break;
          }
        }
      }

LABEL_128:

      goto LABEL_177;
    case 8u:
      OUTLINED_FUNCTION_24_9();
      v72 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v72))
      {
        OUTLINED_FUNCTION_2_11();
        v73 = OUTLINED_FUNCTION_108();
        v74(v73);
      }

      v75 = type metadata accessor for ContainerDetailTracklistFooterLockup();
      OUTLINED_FUNCTION_1_15(v75);
      OUTLINED_FUNCTION_25_5();
      v76 = type metadata accessor for ContentDescriptor();
      if (!OUTLINED_FUNCTION_19_3(v76))
      {

        v77 = *(v3 + 24);
        v78 = sub_217005EF4();
        if (!OUTLINED_FUNCTION_21_2(v2 + v77))
        {
          OUTLINED_FUNCTION_50();
          (*(v79 + 8))(v2 + v77, v78);
        }
      }

      OUTLINED_FUNCTION_8_9(*(v1 + 32));

      if (*(v14 + *(v1 + 36) + 8))
      {
      }

      goto LABEL_176;
    case 9u:
      v80 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v80))
      {
        OUTLINED_FUNCTION_2_11();
        v81 = OUTLINED_FUNCTION_108();
        v82(v81);
      }

      OUTLINED_FUNCTION_24_9();
      v83 = type metadata accessor for CuratorDetailHeaderComponentModel();
      __swift_destroy_boxed_opaque_existential_1Tm(v14 + v83[5]);
      OUTLINED_FUNCTION_8_9(v83[6]);

      v84 = v83[7];
      v330 = sub_217005EF4();
      if (!__swift_getEnumTagSinglePayload(v14 + v84, 1, v330))
      {
        OUTLINED_FUNCTION_50();
        (*(v85 + 8))(v14 + v84);
      }

      v86 = v14 + v83[8];
      v87 = type metadata accessor for Artwork();
      if (!OUTLINED_FUNCTION_18_8(v87))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v88 + 8))(v86);
        v89 = *(v84 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v90 + 8))(v86 + v89);
      }

      v91 = v14 + v83[10];
      if (!OUTLINED_FUNCTION_21_2(v91))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v92 + 8))(v91);
        v93 = *(v84 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v94 + 8))(v91 + v93);
      }

      v95 = v14 + v83[11];
      v96 = type metadata accessor for VideoArtwork();
      if (!OUTLINED_FUNCTION_27_7(v96))
      {

        v97 = *(v91 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v98 + 8))(v95 + v97);
      }

      OUTLINED_FUNCTION_20_11();
      v99 = type metadata accessor for ContentDescriptor();
      v100 = OUTLINED_FUNCTION_88_0();
      if (!__swift_getEnumTagSinglePayload(v100, v101, v99))
      {

        v102 = *(v99 + 24);
        if (!__swift_getEnumTagSinglePayload(v14 + v102, 1, v330))
        {
          OUTLINED_FUNCTION_50();
          (*(v103 + 8))(v14 + v102, v104);
        }
      }

      goto LABEL_177;
    case 0xAu:
      OUTLINED_FUNCTION_9_12();
      v136 = type metadata accessor for EmptyStateLockup();
      v137 = v136[5];
      v138 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_17_13(v14 + v137))
      {
        OUTLINED_FUNCTION_2_11();
        (*(v139 + 8))(v14 + v137, v138);
      }

      OUTLINED_FUNCTION_8_9(v136[7]);

      OUTLINED_FUNCTION_8_9(v136[8]);

      OUTLINED_FUNCTION_8_9(v136[9]);

      v140 = v14 + v136[10];
      v1 = type metadata accessor for Artwork();
      if (!OUTLINED_FUNCTION_17_13(v140))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v141 + 8))(v140);
        v142 = *(v1 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v143 + 8))(v140 + v142);
      }

      OUTLINED_FUNCTION_20_11();
      v144 = type metadata accessor for ColorSchemeArtwork();
      v145 = OUTLINED_FUNCTION_88_0();
      if (!__swift_getEnumTagSinglePayload(v145, v146, v144))
      {
        v147 = OUTLINED_FUNCTION_88_0();
        if (!__swift_getEnumTagSinglePayload(v147, v148, v1))
        {
          sub_21700C4B4();
          OUTLINED_FUNCTION_9_0();
          (*(v149 + 8))(v14);
          v150 = *(v1 + 20);
          sub_21700C444();
          OUTLINED_FUNCTION_9_0();
          (*(v151 + 8))(v14 + v150);
        }

        v14 += *(v144 + 20);
        v152 = OUTLINED_FUNCTION_88_0();
        if (!__swift_getEnumTagSinglePayload(v152, v153, v1))
        {
          goto LABEL_159;
        }
      }

      goto LABEL_177;
    case 0xCu:
      v61 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v61))
      {
        OUTLINED_FUNCTION_2_11();
        v62 = OUTLINED_FUNCTION_108();
        v63(v62);
      }

      v64 = type metadata accessor for GroupedTextListLockup();
      OUTLINED_FUNCTION_1_15(v64);
      OUTLINED_FUNCTION_25_5();
      v65 = type metadata accessor for ModalPresentationDescriptor();
      if (!OUTLINED_FUNCTION_19_3(v65))
      {

        v66 = *(v3 + 40);
        sub_21700D284();
        OUTLINED_FUNCTION_9_0();
        (*(v67 + 8))(v2 + v66);
      }

      goto LABEL_176;
    case 0x10u:
      OUTLINED_FUNCTION_9_12();
      type metadata accessor for InlineUpsell();
      v113 = OUTLINED_FUNCTION_16_14();
      if (!OUTLINED_FUNCTION_5_17(v113))
      {
        OUTLINED_FUNCTION_3_10();
        v114 = OUTLINED_FUNCTION_15_7();
        v115(v114);
      }

      OUTLINED_FUNCTION_6_20();

      OUTLINED_FUNCTION_8_9(*(v1 + 28));

      OUTLINED_FUNCTION_8_9(*(v1 + 32));

      v116 = OUTLINED_FUNCTION_13_4(*(v1 + 36));
      if (v117)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v116);
      }

      v118 = OUTLINED_FUNCTION_13_4(*(v1 + 40));
      if (v119)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v118);
      }

      v120 = *(v1 + 44);
      goto LABEL_139;
    case 0x11u:
      OUTLINED_FUNCTION_9_12();
      type metadata accessor for LandingUpsell();
      v43 = OUTLINED_FUNCTION_16_14();
      if (!OUTLINED_FUNCTION_5_17(v43))
      {
        OUTLINED_FUNCTION_3_10();
        v44 = OUTLINED_FUNCTION_15_7();
        v45(v44);
      }

      OUTLINED_FUNCTION_6_20();

      OUTLINED_FUNCTION_8_9(*(v1 + 28));

      OUTLINED_FUNCTION_8_9(*(v1 + 32));

      OUTLINED_FUNCTION_8_9(*(v1 + 36));

      v46 = OUTLINED_FUNCTION_13_4(*(v1 + 40));
      if (v47)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v46);
      }

      v48 = OUTLINED_FUNCTION_13_4(*(v1 + 44));
      if (v49)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
      }

      v50 = OUTLINED_FUNCTION_13_4(*(v1 + 48));
      if (v51)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
      }

      v52 = v14 + *(v1 + 52);
      v53 = type metadata accessor for Artwork();
      if (!__swift_getEnumTagSinglePayload(v52, 1, v53))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v54 + 8))(v52);
        v55 = *(v53 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v56 + 8))(v52 + v55);
      }

      v14 += *(v1 + 56);
      v57 = OUTLINED_FUNCTION_88_0();
      if (__swift_getEnumTagSinglePayload(v57, v58, v53))
      {
        goto LABEL_177;
      }

      sub_21700C4B4();
      OUTLINED_FUNCTION_9_0();
      (*(v59 + 8))(v14);
      v60 = *(v53 + 20);
      goto LABEL_160;
    case 0x14u:
      v125 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v125))
      {
        OUTLINED_FUNCTION_2_11();
        v126 = OUTLINED_FUNCTION_108();
        v127(v126);
      }

      v128 = type metadata accessor for ListSection();
      OUTLINED_FUNCTION_1_15(v128);
      OUTLINED_FUNCTION_8_9(v129);

      OUTLINED_FUNCTION_8_9(*(v1 + 28));

      goto LABEL_176;
    case 0x15u:

      __swift_destroy_boxed_opaque_existential_1Tm(v14 + 8);
      v154 = type metadata accessor for GradientListRowModel();
      v155 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_5_17(v155))
      {
        OUTLINED_FUNCTION_3_10();
        v156 = OUTLINED_FUNCTION_15_7();
        v157(v156);
      }

      v158 = OUTLINED_FUNCTION_13_4(*(v154 + 28));
      if (v159)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v158);
      }

      v160 = v14 + *(v154 + 32);
      if (*(v160 + 32))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v160 + 8);
      }

      goto LABEL_121;
    case 0x16u:
      v200 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v200))
      {
        OUTLINED_FUNCTION_2_11();
        v201 = OUTLINED_FUNCTION_108();
        v202(v201);
      }

      v203 = type metadata accessor for ParagraphComponentModel();
      OUTLINED_FUNCTION_1_15(v203);
      OUTLINED_FUNCTION_8_9(v204);
      goto LABEL_152;
    case 0x18u:
      sub_21700C924();
      OUTLINED_FUNCTION_9_0();
      (*(v130 + 8))(v14);
      v131 = &unk_27CAB7940;
LABEL_130:
      __swift_instantiateConcreteTypeFromMangledNameV2(v131);
      goto LABEL_176;
    case 0x19u:
      v132 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v132))
      {
        OUTLINED_FUNCTION_2_11();
        v133 = OUTLINED_FUNCTION_108();
        v134(v133);
      }

      v135 = type metadata accessor for PopoverSelector();
      OUTLINED_FUNCTION_1_15(v135);
LABEL_152:

      goto LABEL_174;
    case 0x1Du:
      v187 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v187))
      {
        OUTLINED_FUNCTION_2_11();
        v188 = OUTLINED_FUNCTION_108();
        v189(v188);
      }

      ContextLockup = type metadata accessor for SearchQueryContextLockup();
      OUTLINED_FUNCTION_1_15(ContextLockup);
      OUTLINED_FUNCTION_8_9(v191);

      OUTLINED_FUNCTION_8_9(*(v1 + 32));

      OUTLINED_FUNCTION_8_9(*(v1 + 36));

      OUTLINED_FUNCTION_8_9(*(v1 + 40));

      goto LABEL_176;
    case 0x1Eu:
      __swift_destroy_boxed_opaque_existential_1Tm(v14);

      v60 = *(type metadata accessor for MappedSearchResultsList(0) + 24);
      sub_21700D194();
      goto LABEL_161;
    case 0x22u:
      OUTLINED_FUNCTION_9_12();
      type metadata accessor for SocialOnboardingNotificationSettingsPageLockup();
      v109 = OUTLINED_FUNCTION_16_14();
      if (!OUTLINED_FUNCTION_5_17(v109))
      {
        OUTLINED_FUNCTION_3_10();
        v110 = OUTLINED_FUNCTION_15_7();
        v111(v110);
      }

      goto LABEL_87;
    case 0x23u:
      __swift_destroy_boxed_opaque_existential_1Tm(v14);

      v108 = *(type metadata accessor for SocialOnboardingPrivacySettingsPageLockup() + 48);
      goto LABEL_170;
    case 0x25u:

      __swift_destroy_boxed_opaque_existential_1Tm(v14 + 16);
      v1 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup();
      v233 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_5_17(v233))
      {
        OUTLINED_FUNCTION_3_10();
        v234 = OUTLINED_FUNCTION_15_7();
        v235(v234);
      }

LABEL_174:
      v112 = *(v1 + 28);
      goto LABEL_175;
    case 0x26u:
      v36 = type metadata accessor for Artwork();
      if (!OUTLINED_FUNCTION_4_16(v36))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v37 + 8))(v14);
        v1 = *(v1 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v38 + 8))(v14 + v1);
      }

      v39 = type metadata accessor for SocialOnboardingWelcomePageLockup();
      OUTLINED_FUNCTION_11_13(v39);
      v40 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_5_17(v40))
      {
        OUTLINED_FUNCTION_3_10();
        v41 = OUTLINED_FUNCTION_15_7();
        v42(v41);
      }

      OUTLINED_FUNCTION_8_9(*(v1 + 28));

LABEL_87:
      v112 = *(v1 + 32);
      goto LABEL_175;
    case 0x27u:
      OUTLINED_FUNCTION_24_9();
      v205 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v205))
      {
        OUTLINED_FUNCTION_2_11();
        v206 = OUTLINED_FUNCTION_108();
        v207(v206);
      }

      v208 = type metadata accessor for SocialProfileDetailHeaderLockup();
      OUTLINED_FUNCTION_1_15(v208);
      v210 = v14 + v209;

      v211 = *(type metadata accessor for ContentDescriptor() + 24);
      v212 = sub_217005EF4();
      if (!OUTLINED_FUNCTION_26_11(v212))
      {
        OUTLINED_FUNCTION_3_10();
        (*(v213 + 8))(v210 + v211, v2);
      }

      OUTLINED_FUNCTION_8_9(*(v1 + 28));

      OUTLINED_FUNCTION_8_9(*(v1 + 32));

      OUTLINED_FUNCTION_20_11();
      v214 = type metadata accessor for Artwork();
      if (!OUTLINED_FUNCTION_4_16(v214))
      {
LABEL_159:
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v215 + 8))(v14);
        v60 = *(v1 + 20);
LABEL_160:
        sub_21700C444();
LABEL_161:
        OUTLINED_FUNCTION_9_0();
        (*(v216 + 8))(v14 + v60, v217);
      }

      goto LABEL_177;
    case 0x28u:
      OUTLINED_FUNCTION_24_9();
      v218 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v218))
      {
        OUTLINED_FUNCTION_2_11();
        v219 = OUTLINED_FUNCTION_108();
        v220(v219);
      }

      v221 = type metadata accessor for SocialProfileEditorHeaderLockup(0);
      OUTLINED_FUNCTION_1_15(v221);
      v223 = v14 + v222;

      v224 = *(type metadata accessor for ContentDescriptor() + 24);
      v225 = sub_217005EF4();
      if (!OUTLINED_FUNCTION_26_11(v225))
      {
        OUTLINED_FUNCTION_3_10();
        (*(v226 + 8))(v223 + v224, v2);
      }

      OUTLINED_FUNCTION_8_9(*(v1 + 28));

      OUTLINED_FUNCTION_8_9(*(v1 + 32));

      OUTLINED_FUNCTION_8_9(*(v1 + 44));

      OUTLINED_FUNCTION_8_9(*(v1 + 48));

      OUTLINED_FUNCTION_8_9(*(v1 + 52));

      OUTLINED_FUNCTION_8_9(*(v1 + 56));

      OUTLINED_FUNCTION_25_5();
      v227 = type metadata accessor for Artwork();
      if (!OUTLINED_FUNCTION_19_3(v227))
      {
        sub_21700C4B4();
        OUTLINED_FUNCTION_9_0();
        (*(v228 + 8))(v2);
        v229 = *(v223 + 20);
        sub_21700C444();
        OUTLINED_FUNCTION_9_0();
        (*(v230 + 8))(v2 + v229);
      }

      OUTLINED_FUNCTION_8_9(*(v1 + 68));
      goto LABEL_176;
    case 0x29u:
      v173 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v173))
      {
        OUTLINED_FUNCTION_2_11();
        v174 = OUTLINED_FUNCTION_108();
        v175(v174);
      }

      FriendsButtonComponentModel = type metadata accessor for SocialProfileFindFriendsButtonComponentModel();
      OUTLINED_FUNCTION_1_15(FriendsButtonComponentModel);
      OUTLINED_FUNCTION_8_9(v177);

      v120 = *(v1 + 28);
      goto LABEL_139;
    case 0x2Au:
      v121 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v121))
      {
        OUTLINED_FUNCTION_2_11();
        v122 = OUTLINED_FUNCTION_108();
        v123(v122);
      }

      v124 = type metadata accessor for SocialProfileDetailViewFollowRequestsHeader();
      OUTLINED_FUNCTION_11_13(v124);
      goto LABEL_176;
    case 0x2Bu:
      v178 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v178))
      {
        OUTLINED_FUNCTION_2_11();
        v179 = OUTLINED_FUNCTION_108();
        v180(v179);
      }

      v181 = type metadata accessor for SocialProfileFollowRequestResponseHeader();
      OUTLINED_FUNCTION_1_15(v181);
      OUTLINED_FUNCTION_8_9(v182);

      OUTLINED_FUNCTION_8_9(*(v1 + 28));

      v183 = OUTLINED_FUNCTION_13_4(*(v1 + 32));
      if (v184)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v183);
      }

      v120 = *(v1 + 36);
LABEL_139:
      v185 = OUTLINED_FUNCTION_13_4(v120);
      if (v186)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v185);
      }

      goto LABEL_177;
    case 0x2Cu:
      v68 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v68))
      {
        OUTLINED_FUNCTION_2_11();
        v69 = OUTLINED_FUNCTION_108();
        v70(v69);
      }

      v71 = type metadata accessor for SocialProfileFollowRequestsPageComponentModel();
      OUTLINED_FUNCTION_11_13(v71);
      goto LABEL_176;
    case 0x2Eu:
      OUTLINED_FUNCTION_9_12();
      type metadata accessor for SocialOnboardingSharedPlaylistPageLockup();
LABEL_81:
      v105 = OUTLINED_FUNCTION_16_14();
      if (!OUTLINED_FUNCTION_5_17(v105))
      {
        OUTLINED_FUNCTION_3_10();
        v106 = OUTLINED_FUNCTION_15_7();
        v107(v106);
      }

      goto LABEL_176;
    case 0x2Fu:
      OUTLINED_FUNCTION_9_12();
      type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup();
      v29 = OUTLINED_FUNCTION_16_14();
      if (!OUTLINED_FUNCTION_5_17(v29))
      {
        OUTLINED_FUNCTION_3_10();
        v30 = OUTLINED_FUNCTION_15_7();
        v31(v30);
      }

LABEL_121:

      goto LABEL_176;
    case 0x30u:
      v32 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_4_16(v32))
      {
        OUTLINED_FUNCTION_2_11();
        v33 = OUTLINED_FUNCTION_108();
        v34(v33);
      }

      v35 = type metadata accessor for SocialProfileHorizontalLockupSection();
      OUTLINED_FUNCTION_1_15(v35);

      if (*(v14 + *(v1 + 28)) == 1)
      {
        goto LABEL_177;
      }

LABEL_176:

LABEL_177:
      v236 = v8[9];
      v237 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_23_4(v7 + v236))
      {
        OUTLINED_FUNCTION_50();
        (*(v238 + 8))(v7 + v236, v237);
      }

      v239 = v7 + v8[10];
      v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7948);
      if (!OUTLINED_FUNCTION_17_13(v239))
      {

        v241 = *(v240 + 36);
        sub_21700CDF4();
        OUTLINED_FUNCTION_9_0();
        (*(v242 + 8))(v239 + v241);
      }

      sub_2166B8588();
      v243 = v6 + *(v4 + 48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7920);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v244 = type metadata accessor for ToolbarConfiguration(0);
        if (!OUTLINED_FUNCTION_14_9(v244))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              v245 = type metadata accessor for ContentDescriptor();
              if (!OUTLINED_FUNCTION_14_9(v245))
              {

                v246 = *(v6 + 24);
                v247 = sub_217005EF4();
                if (!OUTLINED_FUNCTION_22_8(v243 + v246))
                {
                  OUTLINED_FUNCTION_50();
                  (*(v248 + 8))(v243 + v246, v247);
                }
              }

              v249 = type metadata accessor for ArtistPageToolbarContent(0);
              v250 = *(v249 + 20);
              sub_21700C384();
              OUTLINED_FUNCTION_9_0();
              (*(v251 + 8))(v243 + v250);
              v252 = *(v249 + 24);
              sub_21700DFD4();
              OUTLINED_FUNCTION_9_0();
              (*(v253 + 8))(v243 + v252);

              sub_2166B8588();

              v254 = type metadata accessor for ArtistPageToolbarContentProvider(0);
              goto LABEL_221;
            case 1u:
              if (!OUTLINED_FUNCTION_23_4(v243))
              {
                OUTLINED_FUNCTION_50();
                (*(v275 + 8))(v243, v237);
              }

              v276 = type metadata accessor for CuratorDetailHeaderComponentModel();
              __swift_destroy_boxed_opaque_existential_1Tm(v243 + v276[5]);
              OUTLINED_FUNCTION_28_0();
              v277 = v276[7];
              v278 = sub_217005EF4();
              if (!OUTLINED_FUNCTION_22_8(v243 + v277))
              {
                OUTLINED_FUNCTION_50();
                (*(v279 + 8))(v243 + v277, v278);
              }

              v280 = v243 + v276[8];
              v281 = type metadata accessor for Artwork();
              if (!OUTLINED_FUNCTION_23_4(v280))
              {
                sub_21700C4B4();
                OUTLINED_FUNCTION_9_0();
                (*(v282 + 8))(v280);
                v283 = *(v281 + 20);
                sub_21700C444();
                OUTLINED_FUNCTION_9_0();
                (*(v284 + 8))(v280 + v283);
              }

              v285 = v243 + v276[10];
              if (!OUTLINED_FUNCTION_23_4(v285))
              {
                sub_21700C4B4();
                OUTLINED_FUNCTION_9_0();
                (*(v286 + 8))(v285);
                v287 = *(v281 + 20);
                sub_21700C444();
                OUTLINED_FUNCTION_9_0();
                (*(v288 + 8))(v285 + v287);
              }

              v289 = v243 + v276[11];
              v290 = type metadata accessor for VideoArtwork();
              if (!OUTLINED_FUNCTION_4_16(v290))
              {

                v291 = *(v285 + 20);
                sub_21700C444();
                OUTLINED_FUNCTION_9_0();
                (*(v292 + 8))(v289 + v291);
              }

              v293 = v243 + v276[12];
              v294 = type metadata accessor for ContentDescriptor();
              if (!OUTLINED_FUNCTION_23_4(v293))
              {

                v295 = *(v294 + 24);
                if (!OUTLINED_FUNCTION_22_8(v293 + v295))
                {
                  OUTLINED_FUNCTION_50();
                  (*(v296 + 8))(v293 + v295, v278);
                }
              }

              v254 = type metadata accessor for CuratorPageToolbarContentProvider(0);
              goto LABEL_221;
            case 2u:
              v258 = sub_21700C4B4();
              if (!OUTLINED_FUNCTION_14_9(v258))
              {
                OUTLINED_FUNCTION_50();
                (*(v259 + 8))(v243, v6);
              }

              v260 = type metadata accessor for SocialProfileDescriptor(0);
              OUTLINED_FUNCTION_28_0();
              OUTLINED_FUNCTION_28_0();
              OUTLINED_FUNCTION_28_0();
              v261 = *(v260 + 32);
              sub_217005EF4();
              OUTLINED_FUNCTION_9_0();
              (*(v262 + 8))(v243 + v261);
              v254 = type metadata accessor for SocialProfilePageToolbarContentProvider(0);
              goto LABEL_221;
            case 3u:
              v263 = type metadata accessor for ContentDescriptor();
              if (!OUTLINED_FUNCTION_14_9(v263))
              {

                v264 = *(v6 + 24);
                v265 = sub_217005EF4();
                if (!OUTLINED_FUNCTION_22_8(v243 + v264))
                {
                  OUTLINED_FUNCTION_50();
                  (*(v266 + 8))(v243 + v264, v265);
                }
              }

              v267 = type metadata accessor for GenericMusicItemToolbarContent(0);
              v268 = *(v267 + 20);
              sub_2170067A4();
              OUTLINED_FUNCTION_9_0();
              (*(v269 + 8))(v243 + v268);
              v270 = v243 + *(v267 + 24);
              type metadata accessor for MenuContext(0);
              if (!swift_getEnumCaseMultiPayload())
              {
                sub_21700C8E4();
                OUTLINED_FUNCTION_9_0();
                (*(v271 + 8))(v270);
                v272 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0) + 48);
                v273 = sub_21700C924();
                if (!__swift_getEnumTagSinglePayload(v270 + v272, 1, v273))
                {
                  OUTLINED_FUNCTION_50();
                  (*(v274 + 8))(v270 + v272, v273);
                }
              }

              v254 = type metadata accessor for GenericMusicItemToolbarContentProvider(0);
LABEL_221:
              v297 = v243 + *(v254 + 20);

              v298 = *(type metadata accessor for ToolbarProperties(0) + 24);
              sub_217009124();
              OUTLINED_FUNCTION_9_0();
              (*(v299 + 8))(v297 + v298);
              break;
            case 4u:
              if (*(v243 + 24))
              {
                __swift_destroy_boxed_opaque_existential_1Tm(v243);
              }

              if (*(v243 + 64))
              {
                __swift_destroy_boxed_opaque_existential_1Tm(v243 + 40);
              }

              v256 = *(type metadata accessor for ReplayPageToolbarProvider(0) + 36);
              sub_217009124();
              OUTLINED_FUNCTION_9_0();
              (*(v257 + 8))(v243 + v256);

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

      return swift_deallocObject();
    case 0x31u:
      __swift_destroy_boxed_opaque_existential_1Tm(v14);

      goto LABEL_176;
    case 0x32u:
      OUTLINED_FUNCTION_9_12();
      v108 = *(type metadata accessor for Spacer() + 20);
LABEL_170:
      v231 = sub_21700D7A4();
      if (!OUTLINED_FUNCTION_17_13(v14 + v108))
      {
        OUTLINED_FUNCTION_2_11();
        (*(v232 + 8))(v14 + v108, v231);
      }

      goto LABEL_177;
    case 0x3Cu:
      OUTLINED_FUNCTION_9_12();
      type metadata accessor for VerticalArtworkListItem();
      v192 = OUTLINED_FUNCTION_16_14();
      if (!OUTLINED_FUNCTION_5_17(v192))
      {
        OUTLINED_FUNCTION_3_10();
        v193 = OUTLINED_FUNCTION_15_7();
        v194(v193);
      }

      OUTLINED_FUNCTION_6_20();

      OUTLINED_FUNCTION_25_5();
      sub_21700C4B4();
      OUTLINED_FUNCTION_9_0();
      (*(v195 + 8))(v2);
      v196 = *(type metadata accessor for Artwork() + 20);
      sub_21700C444();
      OUTLINED_FUNCTION_9_0();
      (*(v197 + 8))(v2 + v196);
      v198 = OUTLINED_FUNCTION_13_4(*(v1 + 32));
      if (v199)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v198);
      }

      v112 = *(v1 + 36);
LABEL_175:
      OUTLINED_FUNCTION_8_9(v112);
      goto LABEL_176;
    default:
      goto LABEL_177;
  }
}