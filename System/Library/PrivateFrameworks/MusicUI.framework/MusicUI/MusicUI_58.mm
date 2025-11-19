uint64_t sub_216C7A4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a1;
  v5 = type metadata accessor for CatalogPagePresenter.State();
  v6 = sub_21700F164();
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v24 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_21700F164();
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  type metadata accessor for PaginationPageResult();
  swift_getWitnessTable();
  v12 = type metadata accessor for OpaqueProtoRequestConvertibleIntent();
  v28 = type metadata accessor for PaginatedPagePresenterState();
  MEMORY[0x28223BE20](v28);
  v14 = &v21 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = type metadata accessor for ShelfCollectionPaginatedPagePresenter();
    WitnessTable = swift_getWitnessTable();
    LOBYTE(v16) = sub_21686D76C(v16, WitnessTable);

    if ((v16 & 1) == 0)
    {
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
        v18 = v26;
        (*(v26 + 16))(v8, v27, v6);
        if (__swift_getEnumTagSinglePayload(v8, 1, v5) == 1)
        {
          (*(v18 + 8))(v8, v6);
        }

        else
        {
          sub_216A404D8(v5);
          (*(*(v5 - 8) + 8))(v8, v5);
          v19 = AssociatedTypeWitness;
          if (__swift_getEnumTagSinglePayload(v11, 1, AssociatedTypeWitness) != 1)
          {
            AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
            (*(AssociatedConformanceWitness + 64))(v19, AssociatedConformanceWitness);
            (*(*(v19 - 8) + 8))(v11, v19);
            goto LABEL_10;
          }

          (*(v22 + 8))(v11, v23);
        }

        __swift_storeEnumTagSinglePayload(v14, 1, 1, v12);
LABEL_10:
        sub_21700F164();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDAE0);
        *&v14[*(swift_getTupleTypeMetadata2() + 48)] = 0;
        swift_storeEnumTagMultiPayload();
        sub_216C7A900(v14);
      }
    }
  }

  return result;
}

uint64_t sub_216C7A900(uint64_t a1)
{
  OUTLINED_FUNCTION_5_112();
  v4 = *(v3 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_5_112();
  OUTLINED_FUNCTION_5_112();
  type metadata accessor for PaginationPageResult();
  OUTLINED_FUNCTION_0_215();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  type metadata accessor for OpaqueProtoRequestConvertibleIntent();
  OUTLINED_FUNCTION_32();
  v5 = type metadata accessor for PaginatedPagePresenterState();
  v6 = *(v5 - 8);
  (*(v6 + 24))(v1 + v4, a1, v5);
  swift_endAccess();
  sub_216C7AA1C();
  return (*(v6 + 8))(a1, v5);
}

uint64_t sub_216C7AA1C()
{
  v1 = v0;
  v2 = *v0;
  type metadata accessor for PaginationPageResult();
  swift_getWitnessTable();
  v3 = type metadata accessor for OpaqueProtoRequestConvertibleIntent();
  v4 = sub_21700F164();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v8 = type metadata accessor for PaginatedPagePresenterState();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  v12 = *(v2 + 96);
  swift_beginAccess();
  (*(v9 + 16))(v11, &v1[v12], v8);
  sub_216A534A0(v8, v7);
  (*(v9 + 8))(v11, v8);
  LODWORD(v12) = __swift_getEnumTagSinglePayload(v7, 1, v3);
  result = (*(v5 + 8))(v7, v4);
  if (v12 != 1)
  {
    return sub_216C7ADF0();
  }

  return result;
}

uint64_t sub_216C7AC6C@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_5_112();
  v4 = *(v3 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_5_112();
  OUTLINED_FUNCTION_5_112();
  type metadata accessor for PaginationPageResult();
  OUTLINED_FUNCTION_0_215();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  type metadata accessor for OpaqueProtoRequestConvertibleIntent();
  OUTLINED_FUNCTION_32();
  v5 = type metadata accessor for PaginatedPagePresenterState();
  return (*(*(v5 - 8) + 16))(a1, v1 + v4, v5);
}

uint64_t sub_216C7AD44()
{
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_16_0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  return v1;
}

uint64_t sub_216C7ADF0()
{
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_16_0();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

uint64_t sub_216C7AEA0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - v3;
  v5 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  sub_21700EA34();

  v6 = sub_21700EA24();
  OUTLINED_FUNCTION_181();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v1;
  sub_21677BBA0();
}

uint64_t sub_216C7AF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = type metadata accessor for PaginationPageResult();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_getWitnessTable();
  v6 = type metadata accessor for OpaqueProtoRequestConvertibleIntent();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v7 = type metadata accessor for PaginatedPagePresenterState();
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v8 = sub_21700F164();
  v4[22] = v8;
  v4[23] = *(v8 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  sub_21700EA34();
  v4[26] = sub_21700EA24();
  v10 = sub_21700E9B4();
  v4[27] = v10;
  v4[28] = v9;

  return MEMORY[0x2822009F8](sub_216C7B224, v10, v9);
}

uint64_t sub_216C7B224()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[18];
  v4 = v0[10];
  v5 = *(*v4 + 96);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = v0[19];

    (*(v6 + 8))(v0[21], v0[18]);
    goto LABEL_8;
  }

  v7 = v0[25];
  v8 = v0[24];
  v9 = v0[23];
  v11 = v0 + 22;
  v10 = v0[22];
  v12 = v0[21];
  v13 = v0[15];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDAE0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v0[29] = TupleTypeMetadata2;
  v31 = *(v12 + *(TupleTypeMetadata2 + 48));
  (*(v9 + 32))(v7, v12, v10);
  v15 = *(v9 + 16);
  v0[30] = v15;
  v0[31] = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v8, v7, v10);
  if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
  {
    v16 = *(v0[23] + 8);
    v16(v0[25], v0[22]);

    v16(v0[24], *v11);
LABEL_8:

    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_7_3();

    __asm { BRAA            X1, X16 }
  }

  (*(v0[16] + 32))(v0[17], v0[24], v0[15]);
  if (v31)
  {
    v17 = v0[23];
    v19 = v0[16];
    v18 = v0[17];
    v20 = v0[15];

    (*(v19 + 8))(v18, v20);
    (*(v17 + 8))(v0[25], *v11);
    goto LABEL_8;
  }

  v23 = v0[20];
  v24 = v0[15];
  v25 = v0[10];
  (*(v0[16] + 16))(v23, v0[17], v24);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v24);
  swift_storeEnumTagMultiPayload();
  sub_216C7A900(v23);
  OUTLINED_FUNCTION_0_1();
  v0[32] = *(v25 + *(v26 + 112));
  WitnessTable = swift_getWitnessTable();
  sub_2169424F0(v24, WitnessTable, v0 + 2);

  v28 = swift_task_alloc();
  v0[33] = v28;
  *v28 = v0;
  v28[1] = sub_216C7B5E4;
  OUTLINED_FUNCTION_7_3();

  return sub_216A4581C();
}

uint64_t sub_216C7B5E4()
{
  v2 = *v1;
  v2[34] = v0;

  type metadata accessor for AnyProtoRequestConvertibleIntent();
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(v2 + 2);

  v4 = v2[27];
  v5 = v2[28];
  if (v0)
  {
    v6 = sub_216C7B8DC;
  }

  else
  {
    v6 = sub_216C7B784;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_216C7B784()
{
  v13 = v0[30];
  v1 = v0[29];
  v2 = v0[22];
  v3 = v0[20];
  v4 = v0[16];
  v14 = v0[15];
  v15 = v0[17];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[11];

  v8 = *(v1 + 48);
  v13(v3, v6 + *(v7 + 36), v2);
  *(v3 + v8) = 0;
  swift_storeEnumTagMultiPayload();
  sub_216C7A900(v3);
  (*(v5 + 8))(v6, v7);
  (*(v4 + 8))(v15, v14);
  v9 = OUTLINED_FUNCTION_6_100();
  v10(v9);

  OUTLINED_FUNCTION_3();

  return v11();
}

void sub_216C7B8DC()
{
  v1 = v0[34];
  v2 = v0[29];
  v3 = v0[20];
  v4 = v0[15];

  v5 = *(v2 + 48);
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  *(v3 + v5) = v1;
  swift_storeEnumTagMultiPayload();
  v6 = v1;
  sub_216C7A900(v3);
  if (qword_27CAB6000 != -1)
  {
    swift_once();
  }

  v7 = v0[34];
  v8 = sub_217007CA4();
  __swift_project_value_buffer(v8, qword_27CAC77D8);
  v9 = v7;
  v10 = sub_217007C84();
  v11 = sub_21700ED84();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[34];
  v15 = v0[16];
  v14 = v0[17];
  v16 = v0[15];
  if (v12)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138543362;
    v19 = v13;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_216679000, v10, v11, "An error occurred attempting to retrieve the next page: '%{public}@'", v17, 0xCu);
    sub_2166ADB8C(v18);
    MEMORY[0x21CEA1440](v18, -1, -1);
    MEMORY[0x21CEA1440](v17, -1, -1);
  }

  (*(v15 + 8))(v14, v16);
  v21 = OUTLINED_FUNCTION_6_100();
  v22(v21);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_3();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_216C7BB28()
{
  OUTLINED_FUNCTION_16_0();
  v2 = *(v1 + 96);
  OUTLINED_FUNCTION_16_0();
  type metadata accessor for PaginationPageResult();
  OUTLINED_FUNCTION_0_215();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  type metadata accessor for OpaqueProtoRequestConvertibleIntent();
  OUTLINED_FUNCTION_32();
  type metadata accessor for PaginatedPagePresenterState();
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(v0 + v2);
  OUTLINED_FUNCTION_0_1();
  v5 = *(v4 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  OUTLINED_FUNCTION_9_0();
  (*(v6 + 8))(v0 + v5);
  OUTLINED_FUNCTION_0_1();

  OUTLINED_FUNCTION_0_1();

  return v0;
}

uint64_t sub_216C7BC50()
{
  sub_216C7BB28();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_216C7BCC0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C7BD04(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C7BD40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2167AF644;

  return sub_216C7AF98(a1, v4, v5, v6);
}

uint64_t sub_216C7BDF4()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC77D8);
  __swift_project_value_buffer(v0, qword_27CAC77D8);
  return sub_217007C94();
}

uint64_t sub_216C7BE74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216C7AD44();
  *a1 = result & 1;
  return result;
}

uint64_t sub_216C7BEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 34) = a6;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  *(v6 + 40) = a1;
  sub_21700EA34();
  *(v6 + 64) = sub_21700EA24();
  v8 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216C7BF88, v8, v7);
}

uint64_t sub_216C7BF88()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 34);
  v3 = *(v0 + 48);

  *(v0 + 16) = v3;
  *(v0 + 24) = v1;
  *(v0 + 32) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC43A8);
  sub_217007F74();
  if (*(v0 + 33) == 1)
  {
    OUTLINED_FUNCTION_0_216();
    OUTLINED_FUNCTION_0_216();
  }

  v4 = *(v0 + 40);
  v5 = *MEMORY[0x277D21CA8];
  v6 = sub_21700D2A4();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_216C7C0B8(uint64_t a1)
{
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2166DFAC0;

  return sub_216C7BEE8(a1, v7, v8, v4, v5, v6);
}

unint64_t sub_216C7C16C(uint64_t a1)
{
  result = sub_216C1CCB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216C7C1B8()
{
  result = qword_280E2DE90[0];
  if (!qword_280E2DE90[0])
  {
    type metadata accessor for AllowDeviceNotificationSettingsAction();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2DE90);
  }

  return result;
}

uint64_t sub_216C7C210()
{
  v0 = sub_21700D2A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = [objc_opt_self() currentNotificationCenter];
  v8 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;
  v10 = v7;
  sub_21677BBA0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0);
  (*(v1 + 104))(v3, *MEMORY[0x277D21CA8], v0);
  v11 = sub_21700E1F4();

  return v11;
}

uint64_t sub_216C7C40C()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[35];
  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = sub_216C7C524;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0120);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_216A2DEE4;
  v0[21] = &block_descriptor_33;
  v0[22] = v2;
  [v1 getNotificationSettingsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_216C7C524()
{
  OUTLINED_FUNCTION_33();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_216C7C5F8, 0, 0);
}

uint64_t sub_216C7C5F8()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[34];
  v0[36] = v1;
  if (![v1 authorizationStatus])
  {
    v5 = v0[35];
    v0[10] = v0;
    v0[15] = v0 + 40;
    v0[11] = sub_216C7C7C0;
    v6 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0128);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_216A2DF78;
    v0[29] = &block_descriptor_5;
    v0[30] = v6;
    [v5 requestAuthorizationWithOptions:7 completionHandler:v0 + 26];
    v2 = v0 + 10;

    return MEMORY[0x282200938](v2);
  }

  v2 = [objc_opt_self() defaultWorkspace];
  v0[38] = v2;
  if (!v2)
  {
    __break(1u);
    return MEMORY[0x282200938](v2);
  }

  v3 = swift_task_alloc();
  v0[39] = v3;
  *v3 = v0;
  v3[1] = sub_216C7C924;

  return sub_216C7CA9C();
}

uint64_t sub_216C7C7C0()
{
  OUTLINED_FUNCTION_33();
  v1 = *(*v0 + 112);
  *(*v0 + 296) = v1;
  if (v1)
  {
    v2 = sub_216C7CA2C;
  }

  else
  {
    v2 = sub_216C7C8CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_216C7C8CC()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_216C7C924()
{
  OUTLINED_FUNCTION_33();
  v1 = *(*v0 + 304);
  v2 = *v0;
  OUTLINED_FUNCTION_28();
  *v3 = v2;

  return MEMORY[0x2822009F8](sub_216C7C8CC, 0, 0);
}

uint64_t sub_216C7CA2C()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  swift_willThrow();

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_216C7CA9C()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v1[3] = swift_task_alloc();
  v2 = sub_217005EF4();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216C7CB94, 0, 0);
}

uint64_t sub_216C7CB94()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_217005ED4();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_216846CF0(v0[3]);
    v3 = 0;
  }

  else
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = v0[4];
    v7 = v0[2];
    (*(v5 + 32))(v4, v0[3], v6);
    v8 = sub_217005E04();
    v9 = sub_21700E384();
    v3 = sub_2169C5BD4(v8, v9, v7);

    (*(v5 + 8))(v4, v6);
  }

  v10 = v0[1];

  return v10(v3 & 1);
}

uint64_t sub_216C7CCF0()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2169D1708;

  return sub_216C7C3EC(v3, v4, v5, v6);
}

uint64_t sub_216C7CDA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v41 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  v5 = OUTLINED_FUNCTION_36(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - v6;
  v8 = sub_21700C444();
  OUTLINED_FUNCTION_1();
  v38 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v37 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  v14 = OUTLINED_FUNCTION_36(v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  v17 = sub_21700C4B4();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7();
  v23 = v22 - v21;
  v40 = type metadata accessor for Artwork();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7();
  v27 = v26 - v25;
  sub_216681B04(a1, v16, &qword_27CABF770);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_216697664(v39, &qword_27CAB7530);
    sub_216697664(a1, &qword_27CABF770);
    sub_216697664(v16, &qword_27CABF770);
    v28 = 1;
    v30 = v40;
    v29 = v41;
  }

  else
  {
    v36 = a1;
    (*(v19 + 32))(v23, v16, v17);
    (*(v19 + 16))(v27, v23, v17);
    v31 = v39;
    sub_216681B04(v39, v7, &qword_27CAB7530);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
    {
      v29 = v41;
      v33 = v37;
      v32 = v38;
      if (qword_280E2BF98 != -1)
      {
        OUTLINED_FUNCTION_4_122();
        swift_once();
      }

      v34 = __swift_project_value_buffer(v8, qword_280E2BFA0);
      (*(v32 + 16))(v33, v34, v8);
      sub_216697664(v31, &qword_27CAB7530);
      sub_216697664(v36, &qword_27CABF770);
      (*(v19 + 8))(v23, v17);
      if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
      {
        sub_216697664(v7, &qword_27CAB7530);
      }
    }

    else
    {
      sub_216697664(v31, &qword_27CAB7530);
      sub_216697664(v36, &qword_27CABF770);
      (*(v19 + 8))(v23, v17);
      v33 = v37;
      v32 = v38;
      (*(v38 + 32))(v37, v7, v8);
      v29 = v41;
    }

    v30 = v40;
    (*(v32 + 32))(v27 + *(v40 + 20), v33, v8);
    sub_216A912E8(v27, v29);
    v28 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v29, v28, 1, v30);
}

uint64_t sub_216C7D220(uint64_t a1, uint64_t a2)
{
  if ((sub_21700C4A4() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Artwork() + 20);

  return sub_21688ADC8(a1 + v4, a2 + v4);
}

id sub_216C7D280(JSContext a1)
{
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v3 = result;
    type metadata accessor for Artwork();
    sub_21700C434();
    sub_21700DD04();

    sub_21700F0B4();
    Artwork.makeValue(in:)(a1);
    sub_21700F0B4();
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216C7D384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  v40 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  v16 = MEMORY[0x28223BE20](v15);
  v37 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = OUTLINED_FUNCTION_13_72();
  OUTLINED_FUNCTION_1();
  v36 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7();
  v23 = v22 - v21;
  v43 = a1;
  sub_21700CE04();
  v24 = *(v8 + 16);
  v41 = v6;
  v42 = a2;
  v24(v12, a2, v6);
  MEMORY[0x21CE9F200](v12);
  OUTLINED_FUNCTION_6_101();
  sub_216C7E1E0(v25, v26);
  v27 = v39;
  sub_21700CD84();
  if (v27)
  {

    (*(v8 + 8))(v42, v41);
    v28 = *(v14 + 8);
    v29 = v40;
    v28(v43, v40);
    return (v28)(v3, v29);
  }

  else
  {
    v39 = *(v14 + 8);
    v31 = v40;
    v39(v3, v40);

    (*(v36 + 32))(v38, v23, v18);
    v32 = v37;
    v33 = v43;
    sub_21700CE04();
    type metadata accessor for Artwork();
    sub_21700C444();
    sub_216C7E1E0(&qword_280E2A3B0, MEMORY[0x277D2B220]);
    sub_21700CCC4();
    (*(v8 + 8))(v42, v41);
    v34 = v39;
    v39(v33, v31);
    return v34(v32, v31);
  }
}

uint64_t sub_216C7D734@<X0>(uint64_t a1@<X8>)
{
  if (qword_280E2BF98 != -1)
  {
    swift_once();
  }

  v2 = sub_21700C444();
  v3 = __swift_project_value_buffer(v2, qword_280E2BFA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

JSValue __swiftcall Artwork.makeValue(in:)(JSContext in)
{
  v19 = *MEMORY[0x277D85DE8];
  sub_2170058C4();
  swift_allocObject();
  sub_2170058B4();
  sub_21700C4B4();
  OUTLINED_FUNCTION_6_101();
  sub_216C7E1E0(v2, v3);
  v4 = sub_2170058A4();
  v6 = v5;
  v7 = objc_opt_self();
  v8 = sub_217005F94();
  v16[0] = 0;
  v9 = [v7 JSONObjectWithData:v8 options:4 error:v16];

  v10 = v16[0];
  if (v9)
  {
    sub_21700F1E4();
    swift_unknownObjectRelease();
    sub_2166EF9C4(v17, v18);
    sub_2166F1DCC();
    sub_2166A6DF8(v18, v17);
    v11 = in.super.isa;
    result.super.isa = sub_2166F1E10(v17, in.super.isa);
    if (result.super.isa)
    {
      isa = result.super.isa;
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
LABEL_6:
      sub_21677A524(v4, v6);

      return isa;
    }

    __break(1u);
  }

  else
  {
    v14 = v10;
    v15 = sub_217005D34();

    swift_willThrow();
    result.super.isa = [objc_opt_self() valueWithUndefinedInContext_];
    if (result.super.isa)
    {
      isa = result.super.isa;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_216C7DA18()
{
  v0 = sub_21700C444();
  __swift_allocate_value_buffer(v0, qword_280E2BFA0);
  __swift_project_value_buffer(v0, qword_280E2BFA0);
  return sub_21700C404();
}

uint64_t sub_216C7DA84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v5 = sub_21700C444();
  OUTLINED_FUNCTION_1();
  v30 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  v11 = type metadata accessor for Artwork.ArtworkDictionary(0);
  v12 = OUTLINED_FUNCTION_36(v11);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = OUTLINED_FUNCTION_13_72();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7();
  v22 = v21 - v20;
  sub_216F82BDC(v3);
  sub_216C7E124(v3, v15);
  sub_216C7DD24(v15, v22);
  OUTLINED_FUNCTION_5_113();
  sub_216C7E188(v3, v23);
  if (v2)
  {
    return OUTLINED_FUNCTION_7_96();
  }

  v25 = v30;
  v26 = v31;
  (*(v18 + 32))(v31, v22, v16);
  if (*(a1 + *(type metadata accessor for Artwork(0) + 24) + 8))
  {
    sub_21700DF14();
    sub_21700C424();
  }

  else
  {
    if (qword_280E2BF98 != -1)
    {
      OUTLINED_FUNCTION_4_122();
      swift_once();
    }

    v27 = __swift_project_value_buffer(v5, qword_280E2BFA0);
    (*(v25 + 16))(v10, v27, v5);
  }

  OUTLINED_FUNCTION_7_96();
  v28 = type metadata accessor for Artwork();
  return (*(v25 + 32))(v26 + *(v28 + 20), v10, v5);
}

uint64_t sub_216C7DD24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  v6 = OUTLINED_FUNCTION_36(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = type metadata accessor for Artwork.ArtworkDictionary(0);
  v10 = (a1 + v9[6]);
  v11 = v10[1];
  v12 = MEMORY[0x277D84F98];
  v13 = MEMORY[0x277D837D0];
  if (v11)
  {
    v14 = *v10;
    v36 = MEMORY[0x277D837D0];
    v34 = v14;
    v35 = v11;
    OUTLINED_FUNCTION_9_86();
    sub_21700DF14();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_150();
    sub_2166EF9D4();
    v12 = v37;
  }

  v15 = a1 + v9[7];
  v16 = MEMORY[0x277D849A8];
  if ((*(v15 + 4) & 1) == 0)
  {
    v17 = *v15;
    v36 = MEMORY[0x277D849A8];
    LODWORD(v34) = v17;
    OUTLINED_FUNCTION_9_86();
    swift_isUniquelyReferenced_nonNull_native();
    v37 = v12;
    sub_2166EF9D4();
    v12 = v37;
  }

  v18 = a1 + v9[8];
  if ((*(v18 + 4) & 1) == 0)
  {
    v19 = *v18;
    v36 = v16;
    LODWORD(v34) = v19;
    OUTLINED_FUNCTION_9_86();
    swift_isUniquelyReferenced_nonNull_native();
    v37 = v12;
    sub_2166EF9D4();
    v12 = v37;
  }

  v20 = (a1 + v9[9]);
  v21 = v20[1];
  if (v21)
  {
    v22 = *v20;
    v36 = v13;
    v34 = v22;
    v35 = v21;
    OUTLINED_FUNCTION_9_86();
    sub_21700DF14();
    swift_isUniquelyReferenced_nonNull_native();
    v37 = v12;
    sub_2166EF9D4();
  }

  OUTLINED_FUNCTION_12_75();
  if (v2)
  {
    OUTLINED_FUNCTION_3_140(v23);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_150();
    OUTLINED_FUNCTION_11_81();
    sub_2166EF9D4();
  }

  OUTLINED_FUNCTION_12_75();
  if (v2)
  {
    OUTLINED_FUNCTION_3_140(v24);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_150();
    OUTLINED_FUNCTION_11_81();
    sub_2166EF9D4();
  }

  OUTLINED_FUNCTION_12_75();
  if (v2)
  {
    OUTLINED_FUNCTION_3_140(v25);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_150();
    OUTLINED_FUNCTION_11_81();
    sub_2166EF9D4();
  }

  OUTLINED_FUNCTION_12_75();
  if (v2)
  {
    OUTLINED_FUNCTION_3_140(v26);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_150();
    OUTLINED_FUNCTION_11_81();
    sub_2166EF9D4();
  }

  v27 = (a1 + v9[14]);
  v28 = v27[1];
  if (v28)
  {
    v29 = *v27;
    v36 = v13;
    v34 = v29;
    v35 = v28;
    OUTLINED_FUNCTION_9_86();
    sub_21700DF14();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_150();
    sub_2166EF9D4();
  }

  sub_21700DF14();
  sub_21700C464();
  v30 = sub_21700C4B4();
  result = __swift_getEnumTagSinglePayload(v8, 1, v30);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    OUTLINED_FUNCTION_5_113();
    sub_216C7E188(a1, v32);
    return (*(*(v30 - 8) + 32))(a2, v8, v30);
  }

  return result;
}

uint64_t sub_216C7E124(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork.ArtworkDictionary(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216C7E188(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216C7E1E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ArtworkView()
{
  result = qword_280E45410;
  if (!qword_280E45410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216C7E29C()
{
  sub_21668A38C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_216C7E344@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v48 - v4;
  v6 = sub_21700C444();
  OUTLINED_FUNCTION_1();
  v52 = v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v48 - v18;
  v20 = sub_217007474();
  OUTLINED_FUNCTION_1();
  v51 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v50 = &v48 - v26;
  sub_2169833F8(v2, v16);
  v27 = type metadata accessor for Artwork();
  if (__swift_getEnumTagSinglePayload(v16, 1, v27) == 1)
  {
    sub_21669987C(v16, &qword_27CAB6D60);
    v28 = sub_21700C4B4();
    v29 = v19;
    v30 = 1;
  }

  else
  {
    v31 = sub_21700C4B4();
    v49 = v20;
    v32 = v6;
    v33 = v10;
    v34 = v5;
    v35 = v2;
    v36 = v31;
    (*(*(v31 - 8) + 16))(v19, v16, v31);
    sub_216A2910C(v16);
    v29 = v19;
    v30 = 0;
    v28 = v36;
    v2 = v35;
    v5 = v34;
    v10 = v33;
    v6 = v32;
    v20 = v49;
  }

  __swift_storeEnumTagSinglePayload(v29, v30, 1, v28);
  v37 = type metadata accessor for ArtworkView();
  sub_217007434();
  sub_2169833F8(v2, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v27) == 1)
  {
    sub_21669987C(v13, &qword_27CAB6D60);
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
    sub_21700C404();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v6);
    v39 = v52;
    if (EnumTagSinglePayload != 1)
    {
      sub_21669987C(v5, &qword_27CAB7530);
    }
  }

  else
  {
    v40 = *(v27 + 20);
    v39 = v52;
    (*(v52 + 16))(v5, &v13[v40], v6);
    sub_216A2910C(v13);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
    (*(v39 + 32))(v10, v5, v6);
  }

  v41 = v50;
  sub_2170073E4();
  (*(v39 + 8))(v10, v6);
  v42 = *(v51 + 8);
  v42(v24, v20);
  v43 = (v2 + *(v37 + 20));
  v44 = *v43;
  v45 = v43[1];
  v46 = swift_allocObject();
  *(v46 + 16) = v44;
  *(v46 + 24) = v45;
  sub_2167B8890(v44, v45);
  sub_2167C505C();
  sub_2170073F4();

  return (v42)(v41, v20);
}

_BYTE *sub_216C7E8E0(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_216C7E9E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a4;
  v46 = a3;
  v48 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A28);
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30);
  OUTLINED_FUNCTION_36(v13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_105();
  v45 = v15;
  v16 = type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  v20 = v19 - v18;
  *(a6 + 24) = swift_getKeyPath();
  FriendsPageView = type metadata accessor for SocialOnboardingFindFriendsPageView();
  *(a6 + 40) = 0;
  *(a6 + 48) = 0;
  *(a6 + 32) = 0;
  *(a6 + 56) = 0;
  v22 = FriendsPageView[10];
  v23 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  *(a6 + v22) = v23;
  v24 = *(a5 + 32);
  v44 = v23;
  v47 = a2;
  v25 = v43;
  v26 = v24();
  if (v26)
  {
    sub_216DE8DC8();

    v27 = (v20 + *(v16 + 24));
    v28 = *v27;
    v26 = v27[1];
    sub_21700DF14();
    sub_216C83828(v20, type metadata accessor for Page.Header);
  }

  else
  {
    v28 = 0;
  }

  v29 = (a6 + FriendsPageView[9]);
  *v29 = v28;
  v29[1] = v26;
  v30 = v47;
  (*(a5 + 40))(v25, a5);
  v31 = type metadata accessor for Page.Footer(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v31);
  v33 = v45;
  if (EnumTagSinglePayload == 1)
  {
    sub_216699778(v12, &qword_27CAB7A28);
    v34 = 1;
  }

  else
  {
    sub_216C8408C(&v12[*(v31 + 20)], v45, type metadata accessor for LinkComponentModel);
    sub_216C83828(v12, type metadata accessor for Page.Footer);
    v34 = 0;
  }

  v35 = type metadata accessor for LinkComponentModel();
  __swift_storeEnumTagSinglePayload(v33, v34, 1, v35);
  sub_2167C5834(v33, a6 + FriendsPageView[8], &qword_27CAB7A30);
  v36 = v48;
  sub_216C8408C(v48, a6 + FriendsPageView[7], type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup);
  type metadata accessor for UserSocialProfileCoordinator();
  type metadata accessor for ObjectGraph();
  v37 = v46;
  sub_21700E094();
  *(a6 + 64) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = v44;
  sub_216F0FC74();
  v40 = v39;
  type metadata accessor for SocialFindFriendsController(0);
  swift_allocObject();
  v41 = sub_216B1C820(v40, v37);
  (*(*(v25 - 8) + 8))(v30, v25);
  result = sub_216C83828(v36, type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup);
  *a6 = sub_2167D8C58;
  *(a6 + 8) = v41;
  *(a6 + 16) = 0;
  return result;
}

uint64_t type metadata accessor for SocialOnboardingFindFriendsPageView()
{
  result = qword_280E2E510;
  if (!qword_280E2E510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216C7EE38@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v70 = sub_217008214();
  OUTLINED_FUNCTION_1();
  v68 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v67 = v5 - v4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7908);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v52 - v7;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7910);
  OUTLINED_FUNCTION_1();
  v60 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_105();
  v71 = v11;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7918);
  OUTLINED_FUNCTION_1();
  v62 = v12;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_105();
  v56 = v14;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7920);
  OUTLINED_FUNCTION_1();
  v64 = v15;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_105();
  v57 = v17;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7928);
  OUTLINED_FUNCTION_1();
  v66 = v18;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_105();
  v58 = v20;
  sub_216C7F568(v1, v8);
  sub_2170093C4();
  v73 = v1;
  v53 = v1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7930);
  v22 = sub_216C82DDC();
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7990);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7998);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC79A0);
  v26 = sub_216C830C0();
  v74 = v23;
  v75 = v26;
  v54 = MEMORY[0x277CDEA38];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = sub_216C833E4();
  v74 = v23;
  v75 = MEMORY[0x277CE1350];
  v76 = v24;
  v77 = v25;
  v78 = v26;
  v79 = MEMORY[0x277CE1340];
  v80 = OpaqueTypeConformance2;
  v81 = v28;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = v55;
  sub_21700A444();
  sub_216699778(v8, &qword_27CAC7908);
  v72 = v1;
  sub_2170093B4();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC79E8);
  v74 = v30;
  v75 = v21;
  v76 = v22;
  v77 = v29;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC79F0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC79F8);
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7A00);
  v36 = sub_216C834A4();
  v74 = v33;
  v75 = v36;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = sub_216C836A0();
  v74 = v33;
  v75 = MEMORY[0x277CE1350];
  v76 = v34;
  v77 = v35;
  v78 = v36;
  v79 = MEMORY[0x277CE1340];
  v80 = v37;
  v81 = v38;
  v51 = swift_getOpaqueTypeConformance2();
  v39 = v56;
  v40 = v59;
  v41 = v71;
  sub_21700A444();
  (*(v60 + 8))(v41, v40);
  v74 = v40;
  v75 = v31;
  v76 = v32;
  v77 = v51;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = v57;
  v44 = v61;
  sub_21700A8C4();
  (*(v62 + 8))(v39, v44);
  v74 = v44;
  v75 = v42;
  OUTLINED_FUNCTION_2_151();
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v58;
  v47 = v63;
  sub_21700A8F4();
  (*(v64 + 8))(v43, v47);
  v48 = v67;
  sub_217008204();
  v74 = v47;
  v75 = v45;
  OUTLINED_FUNCTION_3_141();
  swift_getOpaqueTypeConformance2();
  v49 = v65;
  sub_21700A454();
  (*(v68 + 8))(v48, v70);
  return (*(v66 + 8))(v46, v49);
}

uint64_t sub_216C7F568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  *(&v70 + 1) = sub_2170086D4();
  v56 = *(*(&v70 + 1) - 8);
  MEMORY[0x28223BE20](*(&v70 + 1));
  v54 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7980);
  v53 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v52 = &v51 - v4;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7AB0);
  v57 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v55 = &v51 - v5;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7640);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v51 - v6;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4008);
  MEMORY[0x28223BE20](v66);
  v58 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v62 = &v51 - v9;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7AB8);
  MEMORY[0x28223BE20](v68);
  v67 = &v51 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7AC0);
  MEMORY[0x28223BE20](v64);
  v12 = &v51 - v11;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7958);
  MEMORY[0x28223BE20](v69);
  v65 = &v51 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7978);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v51 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7968);
  MEMORY[0x28223BE20](v17);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v63 = &v51 - v21;
  v51 = a1;
  type metadata accessor for SocialFindFriendsController(0);
  sub_216C840E8(&unk_280E32F88, type metadata accessor for SocialFindFriendsController);
  LODWORD(a1) = *(sub_2170081B4() + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_isUpdating);

  if (a1 == 1)
  {
    *v16 = sub_2170093B4();
    *(v16 + 1) = 0;
    v16[16] = 1;
    v22 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7B18) + 44)];
    sub_217008294();
    sub_21700B3B4();
    sub_2170083C4();
    v23 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7B20) + 36)];
    v24 = v77;
    *v23 = v76;
    *(v23 + 1) = v24;
    *(v23 + 2) = v78;
    sub_21700B3B4();
    sub_217008BB4();
    sub_2167C5834(v16, v19, &qword_27CAC7978);
    memcpy(&v19[*(v17 + 36)], __src, 0x70uLL);
    v25 = v63;
    sub_2167C5834(v19, v63, &qword_27CAC7968);
    sub_216683A80(v25, v12, &qword_27CAC7968);
    swift_storeEnumTagMultiPayload();
    sub_216C83008();
    sub_216B78A90();
    v26 = v65;
    sub_217009554();
    sub_216683A80(v26, v67, &qword_27CAC7958);
    swift_storeEnumTagMultiPayload();
    sub_216C82F7C();
    v27 = sub_21669E098(&qword_27CAC7988, &qword_27CAC7980);
    v73 = v70;
    v74 = v27;
    v75 = MEMORY[0x277CDD980];
    swift_getOpaqueTypeConformance2();
    sub_217009554();
    sub_216699778(v26, &qword_27CAC7958);
    return sub_216699778(v25, &qword_27CAC7968);
  }

  else
  {
    v63 = v17;
    v29 = v66;
    v30 = *(sub_2170081B4() + OBJC_IVAR____TtC7MusicUI27SocialFindFriendsController_friends);
    sub_21700DF14();

    if (v30 && (v31 = *(v30 + 16), v32 = , v31))
    {
      MEMORY[0x28223BE20](v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7AC8);
      sub_216C83CBC();
      v33 = v52;
      sub_217009ED4();
      v34 = v54;
      sub_2170086C4();
      v35 = sub_21669E098(&qword_27CAC7988, &qword_27CAC7980);
      v36 = MEMORY[0x277CDD980];
      v37 = v55;
      v38 = v70;
      sub_21700ABC4();
      (*(v56 + 8))(v34, *(&v38 + 1));
      (*(v53 + 8))(v33, v38);
      v39 = v57;
      v40 = v71;
      (*(v57 + 16))(v67, v37, v71);
      swift_storeEnumTagMultiPayload();
      sub_216C82F7C();
      __src[0] = v38;
      *&__src[1] = v35;
      *(&__src[1] + 1) = v36;
      swift_getOpaqueTypeConformance2();
      sub_217009554();
      return (*(v39 + 8))(v37, v40);
    }

    else
    {
      v41 = sub_216983738(170);
      v43 = v42;
      v44 = sub_217009E14();
      KeyPath = swift_getKeyPath();
      *&__src[0] = v41;
      *(&__src[0] + 1) = v43;
      *&__src[1] = 0;
      *(&__src[1] + 1) = MEMORY[0x277D84F90];
      *&__src[2] = KeyPath;
      *(&__src[2] + 1) = v44;
      sub_217009D94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7660);
      sub_2167C4CBC();
      v46 = v59;
      sub_21700A304();

      sub_21700B3B4();
      sub_217008BB4();
      v47 = v58;
      (*(v60 + 32))(v58, v46, v61);
      memcpy((v47 + *(v29 + 36)), __src, 0x70uLL);
      v48 = v62;
      sub_2167C5834(v47, v62, &qword_27CAC4008);
      sub_216683A80(v48, v12, &qword_27CAC4008);
      swift_storeEnumTagMultiPayload();
      sub_216C83008();
      sub_216B78A90();
      v49 = v65;
      sub_217009554();
      sub_216683A80(v49, v67, &qword_27CAC7958);
      swift_storeEnumTagMultiPayload();
      sub_216C82F7C();
      v50 = sub_21669E098(&qword_27CAC7988, &qword_27CAC7980);
      v76 = v70;
      *&v77 = v50;
      *(&v77 + 1) = MEMORY[0x277CDD980];
      swift_getOpaqueTypeConformance2();
      sub_217009554();
      sub_216699778(v49, &qword_27CAC7958);
      return sub_216699778(v48, &qword_27CAC4008);
    }
  }
}

double sub_216C802A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  FriendsPageView = type metadata accessor for SocialOnboardingFindFriendsPageView();
  v5 = *(FriendsPageView - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](FriendsPageView - 8);
  sub_216C80470(a2);
  v7 = sub_217009C74();
  sub_217007F24();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7AF0) + 36);
  *v16 = v7;
  *(v16 + 8) = v9;
  *(v16 + 16) = v11;
  *(v16 + 24) = v13;
  *(v16 + 32) = v15;
  *(v16 + 40) = 0;
  v17 = sub_217009394();
  sub_216C8408C(a1, &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SocialOnboardingFindFriendsPageView);
  v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v19 = swift_allocObject();
  sub_216C83758(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v20 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7AE0) + 36));
  *v20 = v17;
  v20[1] = sub_216C83F3C;
  v20[2] = v19;
  v21 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7AC8) + 36);
  result = 6.0;
  *v21 = xmmword_21705A7C0;
  *(v21 + 16) = xmmword_21705A7C0;
  *(v21 + 32) = 0;
  return result;
}

uint64_t sub_216C80470@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7B28);
  MEMORY[0x28223BE20](v51);
  v49 = v44 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7B30);
  v50 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v48 = v44 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7B38);
  MEMORY[0x28223BE20](v4 - 8);
  v56 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v55 = v44 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7B40);
  MEMORY[0x28223BE20](v47);
  v9 = v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7B48);
  v46 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v45 = v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7B50);
  MEMORY[0x28223BE20](v12 - 8);
  v53 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v57 = v44 - v15;
  type metadata accessor for SocialFindFriendsController(0);
  sub_216C840E8(&unk_280E32F88, type metadata accessor for SocialFindFriendsController);
  sub_2170081B4();
  v16 = sub_216B1D6D8();

  v54 = v2;
  if (v16)
  {
    if (*(v16 + 16))
    {
      v44[3] = v44;
      MEMORY[0x28223BE20](v17);
      v44[2] = &v44[-4];
      v44[-2] = v16;
      sub_216C80C98(v9);
      v44[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7B60);
      v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7640);
      v44[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7B88);
      v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7660);
      v20 = sub_2167C4CBC();
      v58 = v19;
      v59 = v20;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v58 = v18;
      v59 = OpaqueTypeConformance2;
      v22 = swift_getOpaqueTypeConformance2();
      v58 = v18;
      v59 = MEMORY[0x277CE1350];
      v60 = v44[0];
      v61 = OpaqueTypeConformance2;
      v62 = MEMORY[0x277CE1340];
      v63 = v22;
      swift_getOpaqueTypeConformance2();
      sub_216C83FD8();
      v23 = v45;
      sub_21700B194();

      v24 = v57;
      (*(v46 + 32))(v57, v23, v10);
      v25 = 0;
      goto LABEL_6;
    }
  }

  v25 = 1;
  v24 = v57;
LABEL_6:
  v26 = 1;
  __swift_storeEnumTagSinglePayload(v24, v25, 1, v10);
  sub_2170081B4();
  v27 = sub_216B1D700();

  if (!v27)
  {
LABEL_10:
    v36 = v54;
    v37 = v55;
    goto LABEL_11;
  }

  if (!*(v27 + 16))
  {

    goto LABEL_10;
  }

  MEMORY[0x28223BE20](v28);
  v44[-2] = v27;
  sub_216C8125C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7B60);
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7668);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7B68);
  v31 = sub_2167C4D74();
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7B70);
  v58 = v29;
  v59 = v31;
  v33 = swift_getOpaqueTypeConformance2();
  v58 = v32;
  v59 = v33;
  v34 = swift_getOpaqueTypeConformance2();
  v58 = v29;
  v59 = MEMORY[0x277CE1350];
  v60 = v30;
  v61 = v31;
  v62 = MEMORY[0x277CE1340];
  v63 = v34;
  swift_getOpaqueTypeConformance2();
  sub_216C83FD8();
  v35 = v48;
  sub_21700B194();

  v36 = v54;
  v37 = v55;
  (*(v50 + 32))(v55, v35, v54);
  v26 = 0;
LABEL_11:
  __swift_storeEnumTagSinglePayload(v37, v26, 1, v36);
  v38 = v57;
  v39 = v53;
  sub_216683A80(v57, v53, &qword_27CAC7B50);
  v40 = v56;
  sub_216683A80(v37, v56, &qword_27CAC7B38);
  v41 = v52;
  sub_216683A80(v39, v52, &qword_27CAC7B50);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7B58);
  sub_216683A80(v40, v41 + *(v42 + 48), &qword_27CAC7B38);
  sub_216699778(v37, &qword_27CAC7B38);
  sub_216699778(v38, &qword_27CAC7B50);
  sub_216699778(v40, &qword_27CAC7B38);
  return sub_216699778(v39, &qword_27CAC7B50);
}

uint64_t sub_216C80C98@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7640);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - v3;
  v5 = sub_216983738(60);
  v7 = v6;
  v8 = sub_217009D54();
  KeyPath = swift_getKeyPath();
  v15 = v5;
  v16 = v7;
  v17 = 0;
  v18 = MEMORY[0x277D84F90];
  v19 = KeyPath;
  v20 = v8;
  sub_217009DE4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7660);
  v11 = sub_2167C4CBC();
  sub_21700A304();

  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7B88);
  v15 = v10;
  v16 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = v1;
  v16 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_21700AB44();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_216C80EC0()
{
  v0 = sub_217009334();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217009324();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7640);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7660);
  v5 = sub_2167C4CBC();
  v7[0] = v4;
  v7[1] = v5;
  swift_getOpaqueTypeConformance2();
  sub_21700A704();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_216C81008()
{
  swift_getKeyPath();
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7B90);
  type metadata accessor for SocialFindFriendsContactLockupView(0);
  sub_21669E098(&qword_27CAC7B98, &qword_27CAC7B90);
  sub_216C840E8(&qword_27CAC7BA0, type metadata accessor for SocialFindFriendsController.Friend);
  sub_216C840E8(&qword_27CAC7B80, type metadata accessor for SocialFindFriendsContactLockupView);
  return sub_21700B154();
}

uint64_t sub_216C8115C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_216C8408C(a1, a2, type metadata accessor for SocialFindFriendsController.Friend);
  FriendsContactLockupView = type metadata accessor for SocialFindFriendsContactLockupView(0);
  v4 = (a2 + *(FriendsContactLockupView + 20));
  type metadata accessor for UserSocialProfileCoordinator();
  sub_216C840E8(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator);
  *v4 = sub_217008CF4();
  v4[1] = v5;
  v6 = (a2 + *(FriendsContactLockupView + 24));
  type metadata accessor for SocialGraphController();
  sub_216C840E8(&qword_280E39AC8, type metadata accessor for SocialGraphController);
  result = sub_217008CF4();
  *v6 = result;
  v6[1] = v8;
  return result;
}

uint64_t sub_216C8125C()
{
  sub_216983738(59);
  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7B68);
  sub_2167C4D74();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7B70);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21700AB44();
}

uint64_t sub_216C81398(_OWORD *a1)
{
  v2 = sub_217009334();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7B70);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v14 - v8;
  v10 = a1[1];
  v14[0] = *a1;
  v14[1] = v10;
  sub_217009324();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668);
  v12 = sub_2167C4D74();
  sub_21700A704();
  (*(v3 + 8))(v5, v2);
  *&v14[0] = v11;
  *(&v14[0] + 1) = v12;
  swift_getOpaqueTypeConformance2();
  sub_21700A4A4();
  return (*(v7 + 8))(v9, v6);
}

double sub_216C81590(uint64_t a1, uint64_t a2)
{
  v3 = sub_2170090F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2170093C4();
  v8 = MEMORY[0x21CE995B0](v7);
  v9 = *(a2 + 32);
  if (*(a2 + 56) == 1)
  {
    v10 = *(a2 + 32);
  }

  else
  {
    v11 = *(a2 + 24);
    v13 = *(a2 + 40);
    v12 = *(a2 + 48);

    sub_21700ED94();
    v14 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_21680E444(v11, v9, v13, v12, 0);
    (*(v4 + 8))(v6, v3);
    v10 = v17;
  }

  return v8 + v10 + 44.0 + 12.0;
}

uint64_t sub_216C81734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7640);
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v4 = &v54 - v3;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C68);
  MEMORY[0x28223BE20](v54);
  v6 = &v54 - v5;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C70);
  MEMORY[0x28223BE20](v55);
  v8 = &v54 - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC79C8);
  MEMORY[0x28223BE20](v57);
  v10 = &v54 - v9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC79B8);
  MEMORY[0x28223BE20](v59);
  v56 = &v54 - v11;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7990);
  MEMORY[0x28223BE20](v63);
  v62 = &v54 - v12;
  v13 = *(type metadata accessor for SocialOnboardingFindFriendsPageView() + 36);
  v61 = a1;
  v14 = (a1 + v13);
  if (v14[1])
  {
    v15 = *v14;
    v16 = v14[1];
  }

  else
  {
    v15 = sub_216983738(123);
    v16 = v17;
  }

  sub_21700DF14();
  v18 = sub_217009D34();
  KeyPath = swift_getKeyPath();
  __src[0] = v15;
  __src[1] = v16;
  __src[2] = 0;
  __src[3] = MEMORY[0x277D84F90];
  __src[4] = KeyPath;
  __src[5] = v18;
  sub_217009D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7660);
  sub_2167C4CBC();
  sub_21700A304();

  v20 = swift_getKeyPath();
  (*(v58 + 32))(v6, v4, v60);
  v21 = &v6[*(v54 + 36)];
  *v21 = v20;
  *(v21 + 1) = 0;
  v21[16] = 1;
  LOBYTE(v20) = sub_217009CA4();
  sub_217007F24();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_2167C5834(v6, v8, &qword_27CAB7C68);
  v30 = &v8[*(v55 + 36)];
  *v30 = v20;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  LOBYTE(v20) = sub_217009C74();
  sub_217007F24();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_2167C5834(v8, v10, &qword_27CAB7C70);
  v39 = &v10[*(v57 + 36)];
  *v39 = v20;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  LOBYTE(v20) = sub_217009C94();
  sub_217007F24();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = v56;
  sub_2167C5834(v10, v56, &qword_27CAC79C8);
  v49 = v48 + *(v59 + 36);
  *v49 = v20;
  *(v49 + 8) = v41;
  *(v49 + 16) = v43;
  *(v49 + 24) = v45;
  *(v49 + 32) = v47;
  *(v49 + 40) = 0;
  sub_21700B3C4();
  sub_217008BB4();
  v50 = v62;
  sub_2167C5834(v48, v62, &qword_27CAC79B8);
  v51 = v63;
  memcpy((v50 + *(v63 + 36)), __src, 0x70uLL);
  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7998);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC79A0);
  v52 = sub_216C830C0();
  v65 = v51;
  v66 = v52;
  swift_getOpaqueTypeConformance2();
  sub_216C833E4();
  sub_21700AB34();
  return sub_216699778(v50, &qword_27CAC7990);
}

uint64_t sub_216C81E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  FriendsPageView = type metadata accessor for SocialOnboardingFindFriendsPageView();
  v4 = FriendsPageView - 8;
  v37 = *(FriendsPageView - 8);
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](FriendsPageView);
  v38 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7A38);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7A28);
  MEMORY[0x28223BE20](v40);
  v13 = &v37 - v12;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7A18);
  MEMORY[0x28223BE20](v41);
  v15 = &v37 - v14;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC79F0);
  MEMORY[0x28223BE20](v39);
  v17 = &v37 - v16;
  sub_216683A80(a1 + *(v4 + 40), v8, &qword_27CAB7A30);
  v18 = type metadata accessor for LinkComponentModel();
  if (__swift_getEnumTagSinglePayload(v8, 1, v18) == 1)
  {
    sub_216699778(v8, &qword_27CAB7A30);
    v45 = 0u;
    v46 = 0u;
    *&v47 = 0;
  }

  else
  {
    sub_216683A80(&v8[*(v18 + 24)], &v45, &qword_27CAB6DB0);
    sub_216C83828(v8, type metadata accessor for LinkComponentModel);
  }

  v19 = v9[11];
  v20 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(&v11[v19], 1, 1, v20);
  v21 = v38;
  sub_216C8408C(a1, v38, type metadata accessor for SocialOnboardingFindFriendsPageView);
  v22 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v23 = swift_allocObject();
  sub_216C83758(v21, v23 + v22);
  v24 = v9[12];
  *&v11[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v25 = &v11[v9[13]];
  *v25 = swift_getKeyPath();
  v25[40] = 0;
  v26 = v47;
  v27 = v46;
  *v11 = v45;
  *(v11 + 1) = v27;
  *(v11 + 4) = v26;
  *(v11 + 5) = sub_216C837BC;
  *(v11 + 6) = v23;
  *(v11 + 7) = 0;
  *(v11 + 8) = 0;
  if (qword_27CAB6010 != -1)
  {
    swift_once();
  }

  sub_21700B3B4();
  sub_2170083C4();
  sub_2167C5834(v11, v13, &qword_27CAC7A38);
  v28 = &v13[*(v40 + 36)];
  v29 = v46;
  *v28 = v45;
  *(v28 + 1) = v29;
  *(v28 + 2) = v47;
  v30 = sub_217009C84();
  sub_2167C5834(v13, v15, &qword_27CAC7A28);
  v31 = &v15[*(v41 + 36)];
  *v31 = v30;
  *(v31 + 8) = 0u;
  *(v31 + 24) = 0u;
  v31[40] = 1;
  KeyPath = swift_getKeyPath();
  sub_2167C5834(v15, v17, &qword_27CAC7A18);
  v33 = v39;
  v34 = &v17[*(v39 + 36)];
  *v34 = KeyPath;
  v34[8] = 0;
  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC79F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7A00);
  v35 = sub_216C834A4();
  v43 = v33;
  v44 = v35;
  swift_getOpaqueTypeConformance2();
  sub_216C836A0();
  sub_21700AB34();
  return sub_216699778(v17, &qword_27CAC79F0);
}

uint64_t sub_216C8241C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7A48);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7A50);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7A58);
  MEMORY[0x28223BE20](v24);
  v11 = &v23 - v10;
  if (*(*(a1 + 64) + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded))
  {
    v12 = 90;
  }

  else
  {
    v12 = 168;
  }

  v13 = sub_216983738(v12);
  v15 = v14;
  sub_21700B3B4();
  sub_217008BB4();
  v16 = sub_21700ACF4();
  KeyPath = swift_getKeyPath();
  v28[0] = v13;
  v28[1] = v15;
  v28[2] = 0;
  v28[3] = MEMORY[0x277D84F90];
  v28[18] = KeyPath;
  v28[19] = v16;
  sub_217009DE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7A60);
  sub_216C83880();
  sub_21700A304();
  memcpy(v29, v28, 0xA0uLL);
  sub_216699778(v29, &qword_27CAC7A60);
  LOBYTE(v13) = sub_217009C84();
  (*(v25 + 32))(v9, v5, v26);
  v18 = &v9[*(v7 + 44)];
  *v18 = v13;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  v18[40] = 1;
  v19 = sub_21700AC54();
  v20 = sub_217009C84();
  sub_2167C5834(v9, v11, &qword_27CAC7A50);
  v21 = &v11[*(v24 + 36)];
  *v21 = v19;
  v21[8] = v20;
  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7A80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7A88);
  sub_216C839C4();
  sub_216C83B44();
  sub_216C83BFC();
  sub_21700AB34();
  return sub_216699778(v11, &qword_27CAC7A58);
}

uint64_t sub_216C827E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7A80) + 36);
  v5 = *MEMORY[0x277CE0118];
  v6 = sub_217009294();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C00) + 36)) = 256;
  return sub_216683A80(a1, a2, &qword_27CAC7A58);
}

uint64_t sub_216C828B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7A88) + 36));
  v5 = *(sub_217008B44() + 20);
  v6 = *MEMORY[0x277CE0118];
  v7 = sub_217009294();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  __asm { FMOV            V0.2D, #8.0 }

  *v4 = _Q0;
  *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438) + 36)] = 256;
  return sub_216683A80(a1, a2, &qword_27CAC7A58);
}

uint64_t sub_216C829C4(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_217009334();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  sub_217009324();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  a4();
  sub_21700A704();
  return (*(v8 + 8))(v12, v6);
}

uint64_t sub_216C82AEC()
{
  result = sub_21700B304();
  v1 = 50.0;
  if (result)
  {
    v1 = 48.0;
  }

  qword_27CAC78F8 = *&v1;
  return result;
}

void sub_216C82B4C()
{
  sub_216C82C90();
  if (v0 <= 0x3F)
  {
    sub_216C82D24(319, &qword_280E2B468, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UserSocialProfileCoordinator();
      if (v2 <= 0x3F)
      {
        type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup();
        if (v3 <= 0x3F)
        {
          sub_2167D8DAC();
          if (v4 <= 0x3F)
          {
            sub_216C82D24(319, &qword_280E2A070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_216C82D74();
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

void sub_216C82C90()
{
  if (!qword_280E2B3C8)
  {
    type metadata accessor for SocialFindFriendsController(255);
    sub_216C840E8(&unk_280E32F88, type metadata accessor for SocialFindFriendsController);
    v0 = sub_2170081D4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2B3C8);
    }
  }
}

void sub_216C82D24(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_216C82D74()
{
  result = qword_280E29D50;
  if (!qword_280E29D50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E29D50);
  }

  return result;
}

unint64_t sub_216C82DDC()
{
  result = qword_27CAC7938;
  if (!qword_27CAC7938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7908);
    sub_216C82E60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7938);
  }

  return result;
}

unint64_t sub_216C82E60()
{
  result = qword_27CAC7940;
  if (!qword_27CAC7940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7948);
    sub_216C82F7C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7980);
    sub_2170086D4();
    sub_21669E098(&qword_27CAC7988, &qword_27CAC7980);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7940);
  }

  return result;
}

unint64_t sub_216C82F7C()
{
  result = qword_27CAC7950;
  if (!qword_27CAC7950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7958);
    sub_216C83008();
    sub_216B78A90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7950);
  }

  return result;
}

unint64_t sub_216C83008()
{
  result = qword_27CAC7960;
  if (!qword_27CAC7960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7968);
    sub_21669E098(&qword_27CAC7970, &unk_27CAC7978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7960);
  }

  return result;
}

unint64_t sub_216C830C0()
{
  result = qword_27CAC79A8;
  if (!qword_27CAC79A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7990);
    sub_216C8314C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC79A8);
  }

  return result;
}

unint64_t sub_216C8314C()
{
  result = qword_27CAC79B0;
  if (!qword_27CAC79B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC79B8);
    sub_216C831D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC79B0);
  }

  return result;
}

unint64_t sub_216C831D8()
{
  result = qword_27CAC79C0;
  if (!qword_27CAC79C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC79C8);
    sub_216C83264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC79C0);
  }

  return result;
}

unint64_t sub_216C83264()
{
  result = qword_27CAC79D0;
  if (!qword_27CAC79D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7C70);
    sub_216C832F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC79D0);
  }

  return result;
}

unint64_t sub_216C832F0()
{
  result = qword_27CAC79D8;
  if (!qword_27CAC79D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7C68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7660);
    sub_2167C4CBC();
    swift_getOpaqueTypeConformance2();
    sub_21669E098(&qword_280E2A6F8, &qword_27CAB7638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC79D8);
  }

  return result;
}

unint64_t sub_216C833E4()
{
  result = qword_27CAC79E0;
  if (!qword_27CAC79E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC79A0);
    sub_216C830C0();
    sub_21669E098(&qword_27CAB7B18, &unk_27CAB7B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC79E0);
  }

  return result;
}

unint64_t sub_216C834A4()
{
  result = qword_27CAC7A08;
  if (!qword_27CAC7A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC79F0);
    sub_216C8355C();
    sub_21669E098(&qword_280E2A700, &qword_27CAB7388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7A08);
  }

  return result;
}

unint64_t sub_216C8355C()
{
  result = qword_27CAC7A10;
  if (!qword_27CAC7A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7A18);
    sub_216C835E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7A10);
  }

  return result;
}

unint64_t sub_216C835E8()
{
  result = qword_27CAC7A20;
  if (!qword_27CAC7A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7A28);
    sub_21669E098(&qword_27CAC7A30, &unk_27CAC7A38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7A20);
  }

  return result;
}

unint64_t sub_216C836A0()
{
  result = qword_27CAC7A40;
  if (!qword_27CAC7A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7A00);
    sub_216C834A4();
    sub_21669E098(&qword_27CAB7B18, &unk_27CAB7B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7A40);
  }

  return result;
}

uint64_t sub_216C83758(uint64_t a1, uint64_t a2)
{
  FriendsPageView = type metadata accessor for SocialOnboardingFindFriendsPageView();
  (*(*(FriendsPageView - 8) + 32))(a2, a1, FriendsPageView);
  return a2;
}

uint64_t sub_216C837BC@<X0>(uint64_t a1@<X8>)
{
  FriendsPageView = type metadata accessor for SocialOnboardingFindFriendsPageView();
  OUTLINED_FUNCTION_36(FriendsPageView);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_216C8241C(v5, a1);
}

uint64_t sub_216C83828(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216C83880()
{
  result = qword_27CAC7A68;
  if (!qword_27CAC7A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7A60);
    sub_216C83938();
    sub_21669E098(&qword_280E2A718, &qword_27CAB7BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7A68);
  }

  return result;
}

unint64_t sub_216C83938()
{
  result = qword_27CAC7A70;
  if (!qword_27CAC7A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7A78);
    sub_2167C4D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7A70);
  }

  return result;
}

unint64_t sub_216C839C4()
{
  result = qword_27CAC7A90;
  if (!qword_27CAC7A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7A58);
    sub_216C83A7C();
    sub_21669E098(&qword_280E2A840, &qword_27CAB7BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7A90);
  }

  return result;
}

unint64_t sub_216C83A7C()
{
  result = qword_27CAC7A98;
  if (!qword_27CAC7A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7A50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7A60);
    sub_216C83880();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7A98);
  }

  return result;
}

unint64_t sub_216C83B44()
{
  result = qword_27CAC7AA0;
  if (!qword_27CAC7AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7A80);
    sub_216C839C4();
    sub_21669E098(&qword_27CAB7BF8, &qword_27CAB7C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7AA0);
  }

  return result;
}

unint64_t sub_216C83BFC()
{
  result = qword_27CAC7AA8;
  if (!qword_27CAC7AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7A88);
    sub_216C839C4();
    sub_21669E098(&qword_280E2B390, &qword_27CAB7438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7AA8);
  }

  return result;
}

unint64_t sub_216C83CBC()
{
  result = qword_27CAC7AD0;
  if (!qword_27CAC7AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7AC8);
    sub_216C83D74();
    sub_21669E098(&qword_280E2A8D8, &qword_27CAB8860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7AD0);
  }

  return result;
}

unint64_t sub_216C83D74()
{
  result = qword_27CAC7AD8;
  if (!qword_27CAC7AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7AE0);
    sub_216C83E00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7AD8);
  }

  return result;
}

unint64_t sub_216C83E00()
{
  result = qword_27CAC7AE8;
  if (!qword_27CAC7AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7AF0);
    sub_216C83E8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7AE8);
  }

  return result;
}

unint64_t sub_216C83E8C()
{
  result = qword_27CAC7AF8;
  if (!qword_27CAC7AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7B00);
    sub_21669E098(&qword_27CAC7B08, &unk_27CAC7B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7AF8);
  }

  return result;
}

double sub_216C83F3C(uint64_t a1)
{
  FriendsPageView = type metadata accessor for SocialOnboardingFindFriendsPageView();
  OUTLINED_FUNCTION_36(FriendsPageView);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_216C81590(a1, v5);
}

unint64_t sub_216C83FD8()
{
  result = qword_27CAC7B78;
  if (!qword_27CAC7B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7B60);
    sub_216C840E8(&qword_27CAC7B80, type metadata accessor for SocialFindFriendsContactLockupView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7B78);
  }

  return result;
}

uint64_t sub_216C8408C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216C840E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216C84150(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFBB8);
  sub_21700AEA4();
  return a1;
}

uint64_t sub_216C841AC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v88 = a3;
  HIDWORD(v87) = a2;
  v98 = a4;
  v5 = sub_217009124();
  v6 = OUTLINED_FUNCTION_0(v5, &v105);
  v97 = v7;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v96 = v9 - v8;
  v10 = type metadata accessor for ContainerDetailHeaderView.ArtworkData(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v14 = v13 - v12;
  v15 = type metadata accessor for ContainerDetailHeaderView(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7();
  v19 = v18 - v17;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4188);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v93 = &v81 - v21;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7BA8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  v95 = &v81 - v23;
  v24 = type metadata accessor for PlaylistDetailHeaderLockup();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7();
  v28 = v27 - v26;
  v29 = sub_21700C924();
  v30 = OUTLINED_FUNCTION_0(v29, &v106);
  v90 = v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v81 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v81 - v35;
  sub_216CCBDA0();
  sub_216DE9FD8();
  sub_2166A6E54(v28 + v24[12], v14, &qword_27CAB6D60);
  v37 = *(v11 + 28);
  v38 = v28 + v24[13];
  v86 = v14;
  sub_2166A6E54(v38, v14 + v37, &qword_27CABBEA8);
  v39 = (v28 + v24[6]);
  v40 = v39[1];
  if (v40)
  {
    v85 = *v39;
    v84 = v40;
  }

  else
  {
    v85 = sub_21700C804();
    v84 = v41;
  }

  v42 = v24[7];
  v92 = v28;
  v43 = *(v28 + v42);
  v91 = v36;
  if (v43 && v43[2])
  {
    v44 = v43[7];
    v83 = v43[6];
    sub_21700DF14();
    v82 = v44;
    sub_21700DF14();
  }

  else
  {
    sub_21700DF14();
    v83 = sub_21700C774();
    v82 = v45;
    if (!v43)
    {
LABEL_11:
      v101 = 0u;
      v102 = 0u;
      v103 = 0;
      goto LABEL_12;
    }
  }

  sub_216CE09CC(v43, __src);
  if (!__src[0].n128_u64[1])
  {
    sub_216697664(__src, &qword_27CAB8100);
    goto LABEL_11;
  }

  sub_2166A6E54(&__src[2], &v101, &qword_27CAB6DB0);
  sub_2167ADC98(__src);
LABEL_12:
  v46 = a1;
  v47 = sub_216CCBDA0();
  sub_2168A5DDC(v47, v48, v49, v50, v51, v52, v53, v54, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92);
  v56 = v55;
  v90 = *(v90 + 8);
  (v90)(v33, v100);
  __src[0] = v101;
  __src[1] = v102;
  __src[2].n128_u64[0] = v103;
  v57 = v56 & 1;
  v58 = sub_216C8499C(v46, SBYTE4(v87), v88);
  v60 = v59;
  v61 = sub_216C84B5C(v46);
  v62 = v24[9];
  v63 = v92;
  sub_2166A6E54(v92 + v62, v19 + v15[8], &qword_27CABBE20);
  sub_216B81CA4(v86, v19, type metadata accessor for ContainerDetailHeaderView.ArtworkData);
  v64 = (v19 + v15[5]);
  v65 = v84;
  v64->n128_u64[0] = v85;
  v64->n128_u64[1] = v65;
  v66 = v82;
  v64[1].n128_u64[0] = v83;
  v64[1].n128_u64[1] = v66;
  v67 = __src[1];
  v64[2] = __src[0];
  v64[3] = v67;
  v64[4].n128_u64[0] = __src[2].n128_u64[0];
  v64[4].n128_u8[8] = v57;
  v68 = (v19 + v15[6]);
  *v68 = v58;
  v68[1] = v60;
  v68[2] = MEMORY[0x277D84F90];
  *(v19 + v15[7]) = v61;
  v69 = v19 + v15[9];
  *v69 = swift_getKeyPath();
  *(v69 + 8) = 0;
  v70 = v19 + v15[10];
  *v70 = swift_getKeyPath();
  *(v70 + 8) = 0;
  *(v70 + 16) = 0;
  *(v70 + 24) = 0;
  *(v70 + 32) = 0;
  v71 = v19 + v15[11];
  *v71 = swift_getKeyPath();
  *(v71 + 8) = 0;
  v72 = v100;
  __src[1].n128_u64[1] = v100;
  __src[2].n128_u64[0] = MEMORY[0x277CD85F0];
  __swift_allocate_boxed_opaque_existential_1(__src);
  sub_216CCBDA0();
  v73 = v93;
  v74 = &v93[*(v89 + 36)];
  sub_2167B7D58(__src, (v74 + 2));
  type metadata accessor for MusicEntityAnnotationWrapper();
  sub_216B81DD0(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper);
  *v74 = sub_217008CF4();
  v74[1] = v75;
  sub_216B81CA4(v19, v73, type metadata accessor for ContainerDetailHeaderView);
  __swift_destroy_boxed_opaque_existential_1Tm(__src);
  sub_21700B3B4();
  sub_217008BB4();
  v76 = v95;
  sub_21678818C(v73, v95, &qword_27CAC4188);
  memcpy((v76 + *(v94 + 36)), __src, 0x70uLL);
  v77 = v97;
  v78 = v96;
  v79 = v99;
  (*(v97 + 104))(v96, *MEMORY[0x277CDDDC0], v99);
  sub_216C85418();
  sub_21700A904();
  (*(v77 + 8))(v78, v79);
  sub_216697664(v76, &qword_27CAC7BA8);
  (v90)(v91, v72);
  return sub_216C854A4(v63, type metadata accessor for PlaylistDetailHeaderLockup);
}

uint64_t sub_216C8499C(uint64_t a1, char a2, uint64_t a3)
{
  v5 = type metadata accessor for PlaylistDetailHeaderLockup();
  MEMORY[0x28223BE20](v5);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_21700C924();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = a2;
  v17 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7BB8);
  sub_21700AEB4();
  if (v15 == 2 || (v15 & 1) == 0)
  {
    sub_216DE9FD8();
    v12 = *&v7[*(v5 + 32)];
    sub_21700DF14();
    sub_216C854A4(v7, type metadata accessor for PlaylistDetailHeaderLockup);
  }

  else
  {
    sub_216CCBDA0();
    v12 = sub_216C85070();
    (*(v9 + 8))(v11, v8);
  }

  return v12;
}

uint64_t sub_216C84B5C(uint64_t a1)
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
  v13 = type metadata accessor for PlaylistDetailHeaderLockup();
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
  sub_216DE9FD8();
  sub_2166A6E54(&v18[*(v13 + 60)], v12, &qword_27CAB7A30);
  sub_216C854A4(v18, type metadata accessor for PlaylistDetailHeaderLockup);
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

    sub_216C854A4(v23, type metadata accessor for LinkComponentModel);
    *(v24 + 16) = v27 + 1;
    sub_216B81CA4(v6, v24 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v27, type metadata accessor for MediaButtonType);
  }

  sub_216DE9FD8();
  sub_2166A6E54(&v15[*(v13 + 64)], v9, &qword_27CAB7A30);
  sub_216C854A4(v15, type metadata accessor for PlaylistDetailHeaderLockup);
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

    sub_216C854A4(v28, type metadata accessor for LinkComponentModel);
    *(v24 + 16) = v31 + 1;
    sub_216B81CA4(v29, v24 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v31, type metadata accessor for MediaButtonType);
  }

  return v24;
}

uint64_t sub_216C85070()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7BC0) - 8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  v3 = &v21 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3270);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7BC8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  sub_21700C754();
  sub_21700C7F4();
  v13 = *(v0 + 56);
  sub_21678818C(v12, v3, &qword_27CAC7BC8);
  sub_21678818C(v6, &v3[v13], &qword_27CAC3270);
  v14 = sub_21700C744();
  if (__swift_getEnumTagSinglePayload(v3, 1, v14) == 1)
  {
    goto LABEL_2;
  }

  sub_2166A6E54(v3, v9, &qword_27CAC7BC8);
  v17 = *(v14 - 8);
  v18 = (*(v17 + 88))(v9, v14);
  if (v18 == *MEMORY[0x277D2B3E8])
  {
    v19 = sub_21700C7E4();
    if (__swift_getEnumTagSinglePayload(&v3[v13], 1, v19) == 1)
    {
      v15 = sub_216983738(173);
LABEL_8:
      v16 = &qword_27CAC7BC8;
      goto LABEL_9;
    }
  }

  else
  {
    if (v18 == *MEMORY[0x277D2B3D0])
    {
      v15 = sub_216983738(171);
      sub_216697664(&v3[v13], &qword_27CAC3270);
      goto LABEL_8;
    }

    (*(v17 + 8))(v9, v14);
  }

LABEL_2:
  v15 = sub_216983738(172);
  v16 = &qword_27CAC7BC0;
LABEL_9:
  sub_216697664(v3, v16);
  return v15;
}

uint64_t sub_216C8536C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_216C84150(*a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return result;
}

unint64_t sub_216C853B4()
{
  result = qword_27CABE120;
  if (!qword_27CABE120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB7C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABE120);
  }

  return result;
}

unint64_t sub_216C85418()
{
  result = qword_27CAC7BB0;
  if (!qword_27CAC7BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7BA8);
    sub_216B81D14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7BB0);
  }

  return result;
}

uint64_t sub_216C854A4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for RecordLabelDetailPageIntent()
{
  result = qword_27CAC7BD0;
  if (!qword_27CAC7BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216C855C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v47 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v43 - v5;
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v45 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v48 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v44 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v21 = type metadata accessor for ContentDescriptor();
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE04();
  v24 = *(v8 + 16);
  v50 = v6;
  v24(v13, v51, v6);
  v25 = v49;
  ContentDescriptor.init(deserializing:using:)(v20, v13, v26, v27, v28, v29, v30, v31, v43, v44, SWORD2(v44), SBYTE6(v44), SHIBYTE(v44));
  if (v25)
  {
    (*(v8 + 8))(v51, v50);
    return (*(v15 + 8))(a1, v48);
  }

  else
  {
    v43 = v15;
    v49 = v8;
    v33 = v47;
    v34 = v48;
    sub_2168ED900(v23, v47);
    v35 = v44;
    sub_21700CE04();
    v36 = v45;
    v37 = v51;
    (v24)(v45);
    v38 = v46;
    ReferrerInfo.init(deserializing:using:)(v35, v36, v46);
    v39 = v34;
    v40 = v43;
    (*(v49 + 8))(v37, v50);
    (*(v40 + 8))(a1, v39);
    v41 = type metadata accessor for ReferrerInfo();
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v41);
    v42 = type metadata accessor for RecordLabelDetailPageIntent();
    return sub_21693FB5C(v38, v33 + *(v42 + 20));
  }
}

id sub_216C85958@<X0>(JSContext a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v9 = result;
    ContentDescriptor.makeValue(in:)(a1);
    sub_21700F0B4();
    v10 = type metadata accessor for RecordLabelDetailPageIntent();
    sub_2168CC268(v2 + *(v10 + 20), v7);
    v11 = type metadata accessor for ReferrerInfo();
    if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
    {
      sub_2168CC2D8(v7);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(a1).super.isa;
      sub_2168CC340(v7);
    }

    sub_2166F1F64(isa);
    result = sub_2166F1DCC();
    v13 = MEMORY[0x277D225C8];
    a2[3] = result;
    a2[4] = v13;
    *a2 = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216C85B68(uint64_t a1)
{
  result = sub_2166CE93C(&qword_27CAC7BE0, type metadata accessor for RecordLabelDetailPageIntent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C85C08(uint64_t a1)
{
  *(a1 + 8) = sub_2166CE93C(&qword_27CAC7BE0, type metadata accessor for RecordLabelDetailPageIntent);
  result = sub_2166CE93C(qword_27CAC7BE8, type metadata accessor for RecordLabelDetailPageIntent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_216C85C9C()
{
  OUTLINED_FUNCTION_33();
  *(v0 + 16) = v1;
  sub_21700EA34();
  *(v0 + 24) = sub_21700EA24();
  v3 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216C85D30, v3, v2);
}

id sub_216C85D30()
{
  OUTLINED_FUNCTION_33();
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 16);

    v4 = sub_21700E514();
    sub_216C85F50(1, v4, v5, v2);

    v6 = *MEMORY[0x277D21CA8];
    v7 = sub_21700D2A4();
    (*(*(v7 - 8) + 104))(v3, v6, v7);
    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216C85E34()
{
  OUTLINED_FUNCTION_33();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2167CCCD0;

  return sub_216C85C9C();
}

unint64_t sub_216C85EC8(uint64_t a1)
{
  result = sub_2166D5C20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216C85EF4()
{
  result = qword_27CABDB28;
  if (!qword_27CABDB28)
  {
    type metadata accessor for AllowExplicitContentAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABDB28);
  }

  return result;
}

void sub_216C85F50(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_21700E4D4();

  [a4 setBoolValue:a1 & 1 forSetting:v6];
}

uint64_t sub_216C85FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 32) = *(a1 + 32);
  v5 = a3 + *(type metadata accessor for InvalidationActionIntent() + 44);

  return sub_216C86048(a2, v5);
}

uint64_t sub_216C86048(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAB8320);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_216C860B8()
{
  type metadata accessor for AnyProtoRequestConvertibleIntent();
  if (v0 <= 0x3F)
  {
    sub_2166D5480();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_216C8618C()
{
  type metadata accessor for AnyProtoRequestConvertibleIntent();

  return sub_2169426B4();
}

id sub_216C861C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAB8320);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  v9 = *(a2 + 16);
  v10 = type metadata accessor for AnyProtoRequestConvertibleIntent();
  (*(*(v10 - 8) + 16))(v19, v3, v10);
  sub_2166A0F18(v19, v18);
  v15[1] = v9;
  swift_getExtendedExistentialTypeMetadata_unique();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4B00);
  if (swift_dynamicCast())
  {
    sub_2166A0F18(v16, v20);
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    v11 = sub_21700DCD4();
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  else
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_21669987C(v16, &qword_27CAC4B08);
    result = [objc_opt_self() valueWithNewObjectInContext_];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v11 = result;
  }

  sub_2167F3B8C(v3 + *(a2 + 44), v8);
  v13 = sub_21700D704();
  if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
  {
    sub_21669987C(v8, qword_27CAB8320);
    v14 = 0;
  }

  else
  {
    v14 = sub_21700D6E4();
    (*(*(v13 - 8) + 8))(v8, v13);
  }

  sub_2166F1F64(v14);

  return v11;
}

uint64_t sub_216C864C0(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_216C86520(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
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

uint64_t sub_216C86560(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_216C865C4()
{
  OUTLINED_FUNCTION_22_3();
  v1 = v0;
  v3 = v2;
  v19 = v4;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  v20 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v21 = v10;
  v22 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  sub_21700CE04();
  v11 = *(v7 + 16);
  v12 = OUTLINED_FUNCTION_9_87();
  v11(v12);
  sub_2167A7528();
  sub_21700D734();
  sub_21700CE04();
  v13 = OUTLINED_FUNCTION_9_87();
  v11(v13);
  sub_216AC7084();
  *(v19 + 72) = v14;
  sub_21700CE04();
  v15 = OUTLINED_FUNCTION_9_87();
  v11(v15);
  type metadata accessor for ContainerPlayableItemsSectionHeader.Button();
  OUTLINED_FUNCTION_3_142();
  sub_216C87720(v16, v17);
  v18 = sub_21700E944();
  (*(v20 + 8))(v1, v5);
  (*(v21 + 8))(v3, v22);
  *(v19 + 80) = v18;
  OUTLINED_FUNCTION_21_4();
}

void sub_216C86828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_22_3();
  v45 = v13;
  v46 = v14;
  v16 = v15;
  v44 = v17;
  v18 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7();
  v24 = v23 - v22;
  v25 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_77();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v44 - v33;
  v35 = type metadata accessor for LinkComponentModel();
  MEMORY[0x28223BE20](v35 - 8);
  OUTLINED_FUNCTION_7();
  v38 = v37 - v36;
  v47 = v16;
  sub_21700CE04();
  v39 = v46;
  (*(v20 + 16))(v24, v46, v18);
  v40 = v45;
  sub_216970674(v34, v24, v38);
  if (v40)
  {
    (*(v20 + 8))(v39, v18);
    (*(v27 + 8))(v47, v25);
  }

  else
  {
    OUTLINED_FUNCTION_5_114();
    v41 = v44;
    sub_216C87668(v38, v44, v42);
    sub_21700CE04();
    sub_216C87938();
    sub_21700CCD4();
    (*(v20 + 8))(v46, v18);
    v43 = *(v27 + 8);
    v43(v47, v25);
    v43(v31, v25);
    *(v41 + *(type metadata accessor for ContainerPlayableItemsSectionHeader.Button() + 20)) = a13;
  }

  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216C86B1C()
{
  v0 = sub_21700F5E4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_216C86B68(char a1)
{
  if (!a1)
  {
    return 2036427888;
  }

  if (a1 == 1)
  {
    return 1735289203;
  }

  return 0x656C6666756873;
}

uint64_t sub_216C86BD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216C86B1C();
  *a1 = result;
  return result;
}

uint64_t sub_216C86C04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216C86B68(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_216C86C64()
{
  result = qword_27CAC7C70;
  if (!qword_27CAC7C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7C70);
  }

  return result;
}

void sub_216C86CB8()
{
  OUTLINED_FUNCTION_22_3();
  v2 = v1;
  v32 = v3;
  v4 = type metadata accessor for Link(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7C88);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_77();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  v16 = *(type metadata accessor for Section.Header.ContainerPlayableItemsHeader(0) + 28);
  sub_216C87548(v2 + v16, v15);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v4);
  sub_216697664(v15, &qword_27CAC7C88);
  if (EnumTagSinglePayload == 1)
  {
    memset(v33, 0, 72);
    v18 = v0;
  }

  else
  {
    sub_216C87548(v2 + v16, v12);
    if (__swift_getEnumTagSinglePayload(v12, 1, v4) == 1)
    {
      sub_217007874();
      OUTLINED_FUNCTION_11_82(*(v4 + 20));
      OUTLINED_FUNCTION_11_82(*(v4 + 24));
      v19 = type metadata accessor for AnyAction(0);
      OUTLINED_FUNCTION_12_76(v19);
      v18 = v0;
      if (__swift_getEnumTagSinglePayload(v12, 1, v4) != 1)
      {
        sub_216697664(v12, &qword_27CAC7C88);
      }
    }

    else
    {
      OUTLINED_FUNCTION_4_123();
      sub_216C87668(v12, v8, v20);
      v18 = v0;
    }

    sub_21681BBDC(v8, v33);
    if (v18)
    {
      OUTLINED_FUNCTION_8_96();
      goto LABEL_18;
    }
  }

  v21 = v32;
  memcpy(v32, v33, 0x48uLL);
  v22 = *v2;
  if (*(*v2 + 16))
  {
    sub_21700DF14();
  }

  else
  {
    v22 = 0;
  }

  v21[9] = v22;
  v23 = type metadata accessor for ContainerPlayableItemsSectionHeader.Button();
  OUTLINED_FUNCTION_3_142();
  v26 = sub_216C87720(v24, v25);
  v27 = sub_21700DF14();
  v29 = sub_216F76E04(v27, v28, v23, v26);
  if (v18)
  {
    OUTLINED_FUNCTION_8_96();
    sub_216697664(v21, &qword_27CAB8100);
  }

  else
  {
    if (v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = MEMORY[0x277D84F90];
    }

    sub_216C876C8(v2, type metadata accessor for Section.Header.ContainerPlayableItemsHeader);
    v21[10] = v30;
  }

LABEL_18:
  OUTLINED_FUNCTION_21_4();
}

void sub_216C86FB8()
{
  OUTLINED_FUNCTION_22_3();
  v46 = v0;
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7C88);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v45 - v6;
  v8 = type metadata accessor for Link(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_77();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for LinkComponentModel();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  v20 = v19 - v18;
  v21 = type metadata accessor for Section.Header.ContainerPlayableItemsHeader.Button(0);
  sub_216C87548(v2 + *(v21 + 20), v7);
  v49 = v4;
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_217007874();
    OUTLINED_FUNCTION_11_82(*(v8 + 20));
    OUTLINED_FUNCTION_11_82(*(v8 + 24));
    v22 = type metadata accessor for AnyAction(0);
    OUTLINED_FUNCTION_12_76(v22);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      sub_216697664(v7, &qword_27CAC7C88);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_123();
    sub_216C87668(v7, v15, v23);
  }

  sub_216C87604(v15, v12);
  v24 = (v12 + *(v8 + 20));
  v25 = v24[1];
  if (v25)
  {
    v47 = *v24;
    v48 = v25;
    sub_21700DF14();
    sub_21700F364();
    v26 = (v12 + *(v8 + 24));
    v27 = *v26;
    v28 = v26[1];
    sub_21700DF14();
    sub_216C876C8(v12, type metadata accessor for Link);
    v29 = (v20 + *(v16 + 28));
    *v29 = v27;
    v29[1] = v28;
    v30 = v20 + *(v16 + 24);
    v31 = sub_21700D7A4();
    *v30 = 0u;
    *(v30 + 16) = 0u;
    *(v30 + 32) = 0;
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v31);
    sub_216C876C8(v15, type metadata accessor for Link);
    OUTLINED_FUNCTION_5_114();
    sub_216C87668(v20, v49, v32);
    v33 = v2 + *(v21 + 24);
    v34 = *v33;
    v35 = *(v33 + 8);
    v36 = *(v33 + 9);
    if (v36)
    {
      v37 = 0;
    }

    else
    {
      v37 = v34;
    }

    v38 = v46;
    v39 = sub_216C87348(v37, (v36 | v35) & 1);
    OUTLINED_FUNCTION_6_102();
    sub_216C876C8(v2, v40);
    if (!v38)
    {
      *(v49 + *(type metadata accessor for ContainerPlayableItemsSectionHeader.Button() + 20)) = v39;
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_7_97();
    v42 = v49;
  }

  else
  {
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F58);
    sub_2167880BC();
    swift_allocError();
    *v44 = xmmword_217014E10;
    *(v44 + 16) = v43;
    swift_willThrow();
    sub_216C876C8(v12, type metadata accessor for Link);
    sub_216C876C8(v15, type metadata accessor for Link);
    OUTLINED_FUNCTION_6_102();
    v42 = v2;
  }

  sub_216C876C8(v42, v41);
LABEL_14:
  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216C87348(uint64_t a1, char a2)
{
  if (a2)
  {
    result = 0;
    switch(a1)
    {
      case 1:
        return result;
      case 2:
        result = 2;
        break;
      case 3:
        result = 1;
        break;
      default:
        v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7C98);
        sub_2167880BC();
        swift_allocError();
        v6 = 0;
        v7 = 0x4000000000000000;
        goto LABEL_5;
    }
  }

  else
  {
    v4 = sub_21700F784();
    v6 = v8;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7C98) | 0x8000000000000000;
    sub_2167880BC();
    swift_allocError();
LABEL_5:
    *v5 = v4;
    v5[1] = v6;
    v5[2] = v7;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_216C87480@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216C87348(*a1, *(a1 + 8));
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_216C87548(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7C88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ContainerPlayableItemsSectionHeader.Button()
{
  result = qword_280E2E788;
  if (!qword_280E2E788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216C87604(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Link(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216C87668(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216C876C8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216C87720(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for ContainerPlayableItemsSectionHeader.Button.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_216C8786C()
{
  result = type metadata accessor for LinkComponentModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_216C878E4()
{
  result = qword_27CAC7CA8;
  if (!qword_27CAC7CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7CA8);
  }

  return result;
}

unint64_t sub_216C87938()
{
  result = qword_27CAC7CB0;
  if (!qword_27CAC7CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7CB0);
  }

  return result;
}

BOOL sub_216C8798C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v4;
  v12 = *(a1 + 32);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  v10 = *(a2 + 32);
  result = 0;
  if (sub_216A4C7D8(v11, v9) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56))
  {
    v6 = *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72);
    if (v6 && *(a1 + 80) == *(a2 + 80))
    {
      return 1;
    }
  }

  return result;
}

void *sub_216C87A48@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  LOBYTE(v6[2]) = *(v1 + 32);
  *(&v6[2] + 8) = *(v1 + 40);
  *(&v6[3] + 8) = *(v1 + 56);
  *(&v6[4] + 8) = *(v1 + 72);
  v4 = sub_21698EE54();
  result = memcpy(a1, v6, 0x58uLL);
  *(a1 + 11) = v4;
  return result;
}

uint64_t sub_216C87AFC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3E && *(a1 + 88))
    {
      v2 = *a1 + 61;
    }

    else
    {
      v2 = ((2 * *(a1 + 32)) & 0x3C | (*(a1 + 32) >> 5) & 3) ^ 0x3F;
      if (v2 >= 0x3D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_216C87B48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 62;
    if (a3 >= 0x3E)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * ((((-a2 >> 2) & 0xF) - 16 * a2) & 0x3F);
    }
  }

  return result;
}

uint64_t sub_216C87BC4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_216C87C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v26 = a2;
  v27 = a3;
  v28 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB9F8);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6E20);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA00);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  v9 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  sub_216C87EF4(a1, v26, v27, a4, a5, v14);
  v18 = sub_216941D00(&qword_280E2A7F0, &qword_27CABB9F8);
  v35 = a5;
  v36 = v18;
  WitnessTable = swift_getWitnessTable();
  v20 = sub_216941D00(&qword_280E2A7A0, &qword_27CAC6E20);
  v33 = WitnessTable;
  v34 = v20;
  v21 = swift_getWitnessTable();
  v22 = sub_216941D00(&qword_280E2A7D8, &qword_27CABBA00);
  v31 = v21;
  v32 = v22;
  v29 = swift_getWitnessTable();
  v30 = v29;
  OUTLINED_FUNCTION_6_1();
  swift_getWitnessTable();
  sub_2166C24DC(v14, v9);
  v23 = *(v11 + 8);
  v23(v14, v9);
  sub_2166C24DC(v17, v9);
  return (v23)(v17, v9);
}

uint64_t sub_216C87EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v94 = a3;
  v95 = a2;
  v107 = a6;
  v8 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB9F8);
  v11 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v96 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v92 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6E20);
  v109 = v11;
  v16 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v99 = v17;
  MEMORY[0x28223BE20](v18);
  v98 = &v92 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBA00);
  v106 = v16;
  sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v102 = v20;
  MEMORY[0x28223BE20](v21);
  v100 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v101 = &v92 - v24;
  v108 = v25;
  v105 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v104 = v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v92 - v28;

  v30 = sub_2166DDC34();
  v92 = v31;
  v93 = v32;

  v103 = v29;
  v97 = a5;
  if ((~v30 & 0xF000000000000007) != 0)
  {
    if (!(v30 >> 62))
    {

      v68 = sub_2166DDC34();

      OUTLINED_FUNCTION_10_85();
      v69();
      sub_2166DE78C(v68);
      type metadata accessor for MusicEntityAnnotationWrapper();
      type metadata accessor for ObjectGraph();
      sub_21700E094();
      OUTLINED_FUNCTION_4_124();
      sub_216C88AFC(v70, v71);
      sub_21700A654();

      (*(v8 + 8))(v10, a4);
      type metadata accessor for ExplicitBadgingPresenter();
      OUTLINED_FUNCTION_9_88();
      v72 = sub_216941D00(&qword_280E2A7F0, &qword_27CABB9F8);
      v128 = a5;
      v129 = v72;
      v73 = v109;
      WitnessTable = swift_getWitnessTable();
      OUTLINED_FUNCTION_2_152();
      sub_216C88AFC(v75, v76);
      OUTLINED_FUNCTION_12_77();
      sub_21700A654();

      OUTLINED_FUNCTION_67();
      v77(v15, v73);
      type metadata accessor for PlaybackPresenter();
      OUTLINED_FUNCTION_9_88();
      v78 = sub_216941D00(&qword_280E2A7A0, &qword_27CAC6E20);
      v126 = WitnessTable;
      v127 = v78;
      v79 = v106;
      v80 = swift_getWitnessTable();
      OUTLINED_FUNCTION_3_143();
      sub_216C88AFC(v81, v82);
      OUTLINED_FUNCTION_11_83();
      sub_21700A654();

      OUTLINED_FUNCTION_67();
      v83(a4, v79);
      v84 = sub_216941D00(&qword_280E2A7D8, &qword_27CABBA00);
      v124 = v80;
      v125 = v84;
      v45 = v103;
      v85 = v108;
      swift_getWitnessTable();
      v86 = v101;
      v87 = OUTLINED_FUNCTION_108();
      sub_2166C24DC(v87, v88);
      v89 = *(v102 + 8);
      v90 = OUTLINED_FUNCTION_108();
      v89(v90);
      sub_2166C24DC(v86, v85);
      OUTLINED_FUNCTION_108();
      sub_2166C2CB0();
      sub_2166DE78C(v30);
      v91 = OUTLINED_FUNCTION_108();
      v89(v91);
      (v89)(v86, v85);
      goto LABEL_6;
    }

    if (v30 >> 62 == 1)
    {
    }
  }

  sub_21684202C();

  v33 = sub_2166DDC34();
  v93 = a4;
  v34 = a5;

  OUTLINED_FUNCTION_10_85();
  v35();
  v36 = v109;
  sub_2166DE78C(v33);

  type metadata accessor for MusicEntityAnnotationWrapper();
  v95 = type metadata accessor for ObjectGraph();

  OUTLINED_FUNCTION_5_115();
  sub_21700E094();

  OUTLINED_FUNCTION_4_124();
  sub_216C88AFC(v37, v38);
  v39 = v93;
  sub_21700A654();

  (*(v8 + 8))(v10, v39);
  type metadata accessor for ExplicitBadgingPresenter();

  OUTLINED_FUNCTION_5_115();
  sub_21700E094();

  v40 = sub_216941D00(&qword_280E2A7F0, &qword_27CABB9F8);
  v114 = v34;
  v115 = v40;
  v41 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_152();
  sub_216C88AFC(v42, v43);
  OUTLINED_FUNCTION_12_77();
  sub_21700A654();

  OUTLINED_FUNCTION_67();
  v44(v15, v36);
  type metadata accessor for PlaybackPresenter();
  v45 = v103;

  OUTLINED_FUNCTION_5_115();
  sub_21700E094();

  v46 = sub_216941D00(&qword_280E2A7A0, &qword_27CAC6E20);
  v112 = v41;
  v113 = v46;
  v47 = v106;
  v48 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_143();
  sub_216C88AFC(v49, v50);
  OUTLINED_FUNCTION_11_83();
  sub_21700A654();

  OUTLINED_FUNCTION_67();
  v51(v34, v47);
  v52 = sub_216941D00(&qword_280E2A7D8, &qword_27CABBA00);
  v110 = v48;
  v111 = v52;
  v53 = v108;
  swift_getWitnessTable();
  v54 = v101;
  v55 = OUTLINED_FUNCTION_108();
  sub_2166C24DC(v55, v56);
  v57 = *(v102 + 8);
  v58 = OUTLINED_FUNCTION_108();
  v57(v58);
  sub_2166C24DC(v54, v53);
  OUTLINED_FUNCTION_108();
  sub_2166C2718();
  v59 = OUTLINED_FUNCTION_108();
  v57(v59);
  (v57)(v54, v53);
LABEL_6:
  v60 = sub_216941D00(&qword_280E2A7F0, &qword_27CABB9F8);
  v122 = v97;
  v123 = v60;
  v61 = swift_getWitnessTable();
  v62 = sub_216941D00(&qword_280E2A7A0, &qword_27CAC6E20);
  v120 = v61;
  v121 = v62;
  v63 = swift_getWitnessTable();
  v64 = sub_216941D00(&qword_280E2A7D8, &qword_27CABBA00);
  v118 = v63;
  v119 = v64;
  v116 = swift_getWitnessTable();
  v117 = v116;
  OUTLINED_FUNCTION_6_1();
  v65 = v105;
  swift_getWitnessTable();
  sub_2166C24DC(v45, v65);
  OUTLINED_FUNCTION_67();
  return v66(v45, v65);
}

uint64_t sub_216C88AFC(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_216C88B44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7EA8);
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - v2;
  v4 = *(*v0 + 96);
  swift_beginAccess();
  sub_216683A80(v0 + v4, v3, &qword_27CAC7EA8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v6 = &qword_27CAC7EC8;
  }

  else
  {
    v6 = &qword_27CAC7EA8;
  }

  sub_2167FDB84(v3, v6);
  return EnumCaseMultiPayload == 1;
}

uint64_t sub_216C88C5C()
{
  type metadata accessor for JSSearchResultsPage(0);
  sub_2166B4D38(&unk_280E3DCA0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  return v1;
}

uint64_t sub_216C88D28@<X0>(void *a1@<X8>)
{

  return sub_2168027B0(v2, a1);
}

uint64_t sub_216C88D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  type metadata accessor for MusicStackAuthority();
  OUTLINED_FUNCTION_5_116();
  sub_2166B4D38(v12);
  *(a6 + 120) = sub_217008CF4();
  *(a6 + 128) = v13;
  v14 = type metadata accessor for SearchResultsPageView(0);
  v15 = v14[15];
  *(a6 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  swift_storeEnumTagMultiPayload();
  v16 = a6 + v14[16];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = a6 + v14[18];
  type metadata accessor for FacetBarState(0);
  sub_2166B4D38(qword_280E44190);
  *v17 = sub_217008104();
  *(v17 + 8) = v18 & 1;
  type metadata accessor for UserSocialProfileCoordinator();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  *(a6 + 64) = v27[0];
  type metadata accessor for SubscriptionStatusCoordinator();
  OUTLINED_FUNCTION_4_125();
  *(a6 + 72) = v27[0];
  type metadata accessor for SocialGraphController();
  OUTLINED_FUNCTION_4_125();
  *(a6 + 88) = v27[0];
  type metadata accessor for AppDestinationPageProviderBox();
  OUTLINED_FUNCTION_4_125();
  *(a6 + 24) = v27[0];
  *(a6 + 48) = a2;
  *(a6 + 56) = a3;
  type metadata accessor for CloudLibraryStatusController();
  OUTLINED_FUNCTION_4_125();
  *(a6 + 80) = v27[0];
  type metadata accessor for UnifiedMessages.Coordinator();
  OUTLINED_FUNCTION_4_125();
  *(a6 + 112) = v27[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB30);
  OUTLINED_FUNCTION_4_125();
  v19 = v28;
  v20 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  *(a6 + 32) = (*(v20 + 8))(v19, v20);
  *(a6 + 40) = v21;
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  *a6 = sub_2167D8C58;
  *(a6 + 8) = a1;
  *(a6 + 16) = 0;
  type metadata accessor for MusicTabChangePublisher();

  sub_21700E094();
  sub_2166B4D38(&qword_280E46AC8);
  v22 = sub_217008684();
  v24 = v23;

  *(a6 + 96) = v22;
  *(a6 + 104) = v24;
  v26 = (a6 + v14[17]);
  *v26 = a4;
  v26[1] = a5;
  return result;
}

uint64_t sub_216C8908C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7E98);
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7D60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7EA0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7EA8);
  MEMORY[0x28223BE20](v33);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - v17;
  v19 = *(*v2 + 104);
  v40 = 0;
  sub_217007DA4();
  (*(v16 + 32))(v2 + v19, v18, v15);
  v20 = *(*v2 + 120);
  *(v2 + v20) = 0;
  *(v2 + *(*v2 + 112)) = a1;
  v21 = type metadata accessor for JSSearchResultsPage(0);
  v38 = v21;
  v22 = sub_2166B4D38(&qword_280E3DCA0);
  v39 = v22;
  swift_getKeyPath();
  v36 = v21;
  v37 = v22;
  swift_getKeyPath();

  sub_217007DE4();

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0F8);
  if (__swift_getEnumTagSinglePayload(v9, 1, v23) == 1)
  {
    v24 = &qword_27CAC7D60;
    v25 = v9;
  }

  else
  {
    sub_21696EC3C(v12);
    sub_2167FDB84(v9, &qword_27CABE0F8);
    v26 = type metadata accessor for MappedSearchResultsPage(0);
    if (__swift_getEnumTagSinglePayload(v12, 1, v26) != 1)
    {
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD50);
      __swift_storeEnumTagSinglePayload(v14, 1, 1, v28);
      sub_2167FDB84(v12, &qword_27CAC7EA0);
      goto LABEL_7;
    }

    v24 = &qword_27CAC7EA0;
    v25 = v12;
  }

  sub_2167FDB84(v25, v24);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD50);
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v27);
LABEL_7:
  *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7EB0) + 48)] = 0;
  swift_storeEnumTagMultiPayload();
  sub_2167C5834(v14, v2 + *(*v2 + 96), &qword_27CAC7EA8);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7EB8);
  sub_217007DB4();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_2167D2D50(&unk_27CAC7EC0);
  v29 = v35;
  v30 = sub_217007E84();

  (*(v34 + 8))(v6, v29);
  *(v2 + v20) = v30;

  sub_216C899D0();

  return v2;
}

uint64_t sub_216C89654(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7D60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7EA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7EA8);
  MEMORY[0x28223BE20](v8);
  v10 = &v19[-v9];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = sub_216C88B44();

    if (!v12)
    {
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
        sub_216683A80(a1, v4, &qword_27CAC7D60);
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0F8);
        if (__swift_getEnumTagSinglePayload(v4, 1, v13) == 1)
        {
          v14 = &qword_27CAC7D60;
          v15 = v4;
        }

        else
        {
          sub_21696EC3C(v7);
          sub_2167FDB84(v4, &qword_27CABE0F8);
          v16 = type metadata accessor for MappedSearchResultsPage(0);
          if (__swift_getEnumTagSinglePayload(v7, 1, v16) != 1)
          {
            v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD50);
            __swift_storeEnumTagSinglePayload(v10, 1, 1, v18);
            sub_2167FDB84(v7, &qword_27CAC7EA0);
            goto LABEL_10;
          }

          v14 = &qword_27CAC7EA0;
          v15 = v7;
        }

        sub_2167FDB84(v15, v14);
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD50);
        __swift_storeEnumTagSinglePayload(v10, 1, 1, v17);
LABEL_10:
        *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7EB0) + 48)] = 0;
        swift_storeEnumTagMultiPayload();
        sub_216C89948(v10);
      }
    }
  }

  return result;
}

uint64_t sub_216C89948(uint64_t a1)
{
  v3 = *(*v1 + 96);
  swift_beginAccess();
  sub_216C92DC4(a1, v1 + v3);
  swift_endAccess();
  sub_216C899D0();
  return sub_2167FDB84(a1, &qword_27CAC7EA8);
}

uint64_t sub_216C899D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7EC8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7EA8);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = *(*v0 + 96);
  swift_beginAccess();
  sub_216683A80(v0 + v10, v9, &qword_27CAC7EA8);
  sub_2167C5834(v9, v6, &qword_27CAC7EA8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
  }

  sub_2167C5834(v6, v3, &qword_27CAC7EC8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD50);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v11);
  result = sub_2167FDB84(v3, &qword_27CAC7EC8);
  if (EnumTagSinglePayload != 1)
  {
    return sub_216C89BD8();
  }

  return result;
}

uint64_t sub_216C89BD8()
{
  type metadata accessor for JSSearchResultsPage(0);
  sub_2166B4D38(&unk_280E3DCA0);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

void sub_216C89CD0()
{
  sub_216C89EA4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AppDestinationPageProviderBox();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UserSocialProfileCoordinator();
      if (v2 <= 0x3F)
      {
        type metadata accessor for SubscriptionStatusCoordinator();
        if (v3 <= 0x3F)
        {
          type metadata accessor for CloudLibraryStatusController();
          if (v4 <= 0x3F)
          {
            type metadata accessor for SocialGraphController();
            if (v5 <= 0x3F)
            {
              sub_2166DB34C();
              if (v6 <= 0x3F)
              {
                type metadata accessor for UnifiedMessages.Coordinator();
                if (v7 <= 0x3F)
                {
                  sub_2166B49AC();
                  if (v8 <= 0x3F)
                  {
                    sub_2166DB82C(319, &qword_280E2B460, MEMORY[0x277CDF3E0]);
                    if (v9 <= 0x3F)
                    {
                      sub_2166DB904();
                      if (v10 <= 0x3F)
                      {
                        sub_216820E14();
                        if (v11 <= 0x3F)
                        {
                          sub_2166DB82C(319, &qword_280E2B4B8, type metadata accessor for FacetBarState);
                          if (v12 <= 0x3F)
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
          }
        }
      }
    }
  }
}

void sub_216C89EA4()
{
  if (!qword_280E2B3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7CB8);
    sub_2167D2D50(&unk_280E3C7E8);
    v0 = sub_2170081D4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2B3F0);
    }
  }
}

void sub_216C89F64()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v23 = v2;
  v3 = type metadata accessor for SearchResultsPageView(0);
  v21[0] = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v21[1] = v4;
  v22 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5);
  sub_2167D2D50(&unk_280E3C7E8);
  OUTLINED_FUNCTION_7_98();
  if (*(v0 + 120))
  {
    v6 = *(v0 + 24);

    v8 = sub_216BBC67C(v7, v6, 0, 0);

    v9 = OUTLINED_FUNCTION_7_98();
    v10 = v23;
    sub_216C8A1F4(v9, v8, v23);

    OUTLINED_FUNCTION_7_98();
    v11 = sub_217008684();
    v13 = v12;
    v14 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7CC0) + 36));
    *v14 = v8;
    v14[1] = v11;
    v14[2] = v13;
    v15 = v1;
    v16 = v22;
    sub_216C925DC(v15, v22);
    v17 = (*(v21[0] + 80) + 16) & ~*(v21[0] + 80);
    v18 = swift_allocObject();
    sub_216C92584(v16, v18 + v17);
    v19 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7CC8) + 36));
    *v19 = sub_216C91AB4;
    v19[1] = v18;
    v19[2] = 0;
    v19[3] = 0;
    OUTLINED_FUNCTION_26();
  }

  else
  {
    type metadata accessor for MusicStackAuthority();
    OUTLINED_FUNCTION_5_116();
    sub_2166B4D38(v20);
    sub_217008CD4();
    __break(1u);
  }
}

uint64_t sub_216C8A1F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v243 = a2;
  v257 = a1;
  v255 = a3;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9150);
  v202 = *(v256 - 8);
  MEMORY[0x28223BE20](v256);
  v200 = &v186 - v3;
  v246 = type metadata accessor for SearchResultsPageView(0);
  v237 = *(v246 - 8);
  MEMORY[0x28223BE20](v246);
  v238 = v4;
  v239 = &v186 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_2170090F4();
  v193 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v192 = &v186 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1E28);
  MEMORY[0x28223BE20](v6 - 8);
  v227 = &v186 - v7;
  v228 = sub_21700D574();
  v226 = *(v228 - 8);
  MEMORY[0x28223BE20](v228);
  v222 = &v186 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7CD0);
  v221 = *(v230 - 8);
  MEMORY[0x28223BE20](v230);
  v218 = &v186 - v9;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7CD8);
  v229 = *(v236 - 8);
  MEMORY[0x28223BE20](v236);
  v225 = &v186 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8);
  MEMORY[0x28223BE20](v11 - 8);
  v215 = &v186 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v245 = &v186 - v14;
  MEMORY[0x28223BE20](v15);
  v214 = &v186 - v16;
  MEMORY[0x28223BE20](v17);
  v244 = &v186 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9180);
  MEMORY[0x28223BE20](v19 - 8);
  v196 = &v186 - v20;
  v199 = sub_2170080D4();
  v241 = *(v199 - 8);
  MEMORY[0x28223BE20](v199);
  v240 = &v186 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7CE0);
  MEMORY[0x28223BE20](v22 - 8);
  v242 = &v186 - v23;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7CE8);
  MEMORY[0x28223BE20](v195);
  v198 = &v186 - v24;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7CF0);
  MEMORY[0x28223BE20](v197);
  v203 = &v186 - v25;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7CF8);
  MEMORY[0x28223BE20](v201);
  v205 = &v186 - v26;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7D00);
  MEMORY[0x28223BE20](v204);
  v207 = &v186 - v27;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7D08);
  MEMORY[0x28223BE20](v206);
  v209 = &v186 - v28;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7D10);
  MEMORY[0x28223BE20](v208);
  v211 = &v186 - v29;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7D18);
  MEMORY[0x28223BE20](v210);
  v212 = &v186 - v30;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7D20);
  MEMORY[0x28223BE20](v213);
  v247 = &v186 - v31;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7D28);
  v217 = *(v220 - 8);
  MEMORY[0x28223BE20](v220);
  v216 = &v186 - v32;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7D30);
  v223 = *(v224 - 8);
  MEMORY[0x28223BE20](v224);
  v219 = &v186 - v33;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7D38);
  v233 = *(v234 - 8);
  MEMORY[0x28223BE20](v234);
  v232 = &v186 - v34;
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7D40);
  MEMORY[0x28223BE20](v254);
  v231 = &v186 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v235 = &v186 - v37;
  v191 = type metadata accessor for MappedSearchResultsPage(0);
  MEMORY[0x28223BE20](v191);
  v248 = &v186 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7D48);
  MEMORY[0x28223BE20](v39);
  v41 = &v186 - v40;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7D50);
  MEMORY[0x28223BE20](v250);
  v251 = &v186 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7D58);
  MEMORY[0x28223BE20](v43);
  v253 = &v186 - v44;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9140);
  v45 = *(v252 - 8);
  MEMORY[0x28223BE20](v252);
  v47 = &v186 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7D60);
  MEMORY[0x28223BE20](v48 - 8);
  v50 = (&v186 - v49);
  v51 = type metadata accessor for JSSearchResultsPage(0);
  v260 = v51;
  v52 = sub_2166B4D38(&qword_280E3DCA0);
  v261 = v52;
  swift_getKeyPath();
  v258 = v51;
  v259 = v52;
  swift_getKeyPath();
  sub_217007DE4();

  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0F8);
  if (__swift_getEnumTagSinglePayload(v50, 1, v53) == 1)
  {
LABEL_5:
    sub_217007514();
    v61 = v252;
    (*(v45 + 16))(v251, v47, v252);
    swift_storeEnumTagMultiPayload();
    sub_2167D2D50(qword_280E48638);
    sub_216C91C18();
    v62 = v253;
    sub_217009554();
    sub_216683A80(v62, v41, &qword_27CAC7D58);
    swift_storeEnumTagMultiPayload();
    sub_216C91B60();
    sub_2167D2D50(&qword_280E48630);
    sub_217009554();
    sub_2167FDB84(v62, &qword_27CAC7D58);
    return (*(v45 + 8))(v47, v61);
  }

  v188 = v39;
  v189 = v43;
  v190 = v41;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v41 = v190;
    if (EnumCaseMultiPayload == 1)
    {
      v55 = *v50;
      v56 = *v50;

      v57 = v200;
      sub_217007564();
      v58 = v202;
      v59 = v256;
      (*(v202 + 16))(v41, v57, v256);
      swift_storeEnumTagMultiPayload();
      sub_216C91B60();
      sub_2167D2D50(&qword_280E48630);
      sub_217009554();

      return (*(v58 + 8))(v57, v59);
    }

    goto LABEL_5;
  }

  v63 = v50;
  v64 = v248;
  sub_216C92584(v63, v248);
  v65 = type metadata accessor for SearchResultsPageView.ContentView(0);
  v66 = v242;
  sub_216C925DC(v64, v242 + v65[5]);
  v67 = v249[7];
  v187 = v249[6];
  v68 = (v249 + *(v246 + 68));
  v70 = *v68;
  v69 = v68[1];
  *v66 = sub_2167CB87C;
  *(v66 + 8) = 0;
  *(v66 + 16) = 0;
  v71 = v66 + v65[10];
  type metadata accessor for FacetBarState(0);
  sub_2166B4D38(qword_280E44190);
  sub_21700DF14();
  swift_unknownObjectRetain();
  v72 = sub_217008104();
  *v71 = v72;
  *(v71 + 8) = v73 & 1;
  *(v66 + v65[6]) = v243;
  v74 = (v66 + v65[7]);
  v202 = v70;
  *v74 = v70;
  v74[1] = v69;
  v200 = v69;
  v75 = (v66 + v65[8]);
  *v75 = v187;
  v75[1] = v67;
  v76 = v257;
  *(v66 + v65[9]) = v257;
  MEMORY[0x28223BE20](v72);
  *(&v186 - 2) = v51;
  *(&v186 - 1) = v52;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v186 - 2) = v51;
  *(&v186 - 1) = v52;
  swift_getKeyPath();
  v78 = v76;

  v79 = v196;
  sub_217007DE4();

  v80 = v199;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v79, 1, v199);
  if (EnumTagSinglePayload == 1)
  {
    v89 = v249;
    v90 = v240;
    sub_216C0C924(EnumTagSinglePayload, v82, v83, v84, v85, v86, v87, v88, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197);
    v91 = __swift_getEnumTagSinglePayload(v79, 1, v80);
    v92 = v241;
    if (v91 != 1)
    {
      sub_2167FDB84(v79, &qword_27CAB9180);
    }
  }

  else
  {
    v92 = v241;
    v90 = v240;
    (*(v241 + 32))(v240, v79, v80);
    v89 = v249;
  }

  v93 = swift_getKeyPath();
  v94 = v198;
  v95 = &v198[*(v195 + 36)];
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9278);
  (*(v92 + 32))(v95 + *(v96 + 28), v90, v80);
  *v95 = v93;
  sub_2167C5834(v242, v94, &qword_27CAC7CE0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7CB8);
  v241 = sub_2167D2D50(&unk_280E3C7E8);
  v242 = v97;
  v98 = sub_217007D54();
  v99 = v203;
  v100 = sub_2167C5834(v94, v203, &qword_27CAC7CE8);
  v101 = (v99 + *(v197 + 36));
  *v101 = v98;
  v101[1] = v78;
  v102 = *(v78 + *(*v78 + 176));
  MEMORY[0x28223BE20](v100);
  *(&v186 - 2) = type metadata accessor for SocialBadgingRequestCoordinator();
  *(&v186 - 1) = sub_2166B4D38(&qword_280E2FFC0);
  v103 = swift_getKeyPath();
  v104 = v205;
  sub_216683A80(v99, v205, &qword_27CAC7CF0);
  v105 = (v104 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7DB0) + 36));
  *v105 = v103;
  v105[1] = v102;

  v106 = sub_217007D54();
  sub_2167FDB84(v99, &qword_27CAC7CF0);
  v107 = (v104 + *(v201 + 36));
  *v107 = v106;
  v107[1] = v102;
  v108 = v89[8];
  type metadata accessor for UserSocialProfileCoordinator();
  sub_2166B4D38(&unk_280E31C00);

  v109 = sub_217007D54();
  v110 = v207;
  sub_2167C5834(v104, v207, &qword_27CAC7CF8);
  v111 = (v110 + *(v204 + 36));
  *v111 = v109;
  v111[1] = v108;
  v112 = v89[11];
  type metadata accessor for SocialGraphController();
  sub_2166B4D38(&qword_280E39AC8);
  v113 = v108;
  v114 = sub_217007D54();
  v115 = v110;
  v116 = v209;
  sub_2167C5834(v115, v209, &qword_27CAC7D00);
  v117 = (v116 + *(v206 + 36));
  *v117 = v114;
  v117[1] = v112;
  v118 = v89[9];
  type metadata accessor for SubscriptionStatusCoordinator();
  sub_2166B4D38(&qword_280E30FC8);

  v119 = sub_217007D54();
  v120 = v116;
  v121 = v211;
  sub_2167C5834(v120, v211, &qword_27CAC7D08);
  v122 = (v121 + *(v208 + 36));
  *v122 = v119;
  v122[1] = v118;
  v123 = v89[10];
  type metadata accessor for CloudLibraryStatusController();
  sub_2166B4D38(&qword_280E32560);

  v124 = sub_217007D54();
  v125 = v121;
  v126 = v212;
  sub_2167C5834(v125, v212, &qword_27CAC7D10);
  v127 = (v126 + *(v210 + 36));
  *v127 = v124;
  v127[1] = v123;
  v128 = v89[13];
  type metadata accessor for MusicTabChangePublisher();
  sub_2166B4D38(&qword_280E46AC8);

  v129 = sub_217007D54();
  v130 = v247;
  sub_2167C5834(v126, v247, &qword_27CAC7D18);
  v131 = v213;
  v132 = (v130 + *(v213 + 36));
  *v132 = v129;
  v132[1] = v128;

  v133 = v214;
  v134 = v248;
  sub_216C8CC48(v248, v214);
  v135 = sub_21700D194();
  if (__swift_getEnumTagSinglePayload(v133, 1, v135) == 1)
  {
    v136 = v244;
    (*(*(v135 - 8) + 16))(v244, v134 + *(v191 + 32), v135);
    v137 = __swift_getEnumTagSinglePayload(v133, 1, v135);
    v138 = v245;
    if (v137 != 1)
    {
      sub_2167FDB84(v133, &qword_27CAB8DF8);
    }
  }

  else
  {
    v136 = v244;
    (*(*(v135 - 8) + 32))(v244, v133, v135);
    v138 = v245;
  }

  __swift_storeEnumTagSinglePayload(v136, 0, 1, v135);
  v140 = v89[4];
  v139 = v89[5];
  sub_216683A80(v136, v138, &qword_27CAB8DF8);
  if (!__swift_getEnumTagSinglePayload(v138, 1, v135))
  {
    v141 = sub_21700D0E4();
    if (*v142)
    {
      v264 = MEMORY[0x277D837D0];
      v262 = v140;
      v263 = v139;
      sub_21700DF14();
      sub_2166EF928();
    }

    v141(&v265, 0);
  }

  v143 = sub_216C91E38();
  v144 = v218;
  sub_21700A224();
  v145 = v215;
  sub_216683A80(v138, v215, &qword_27CAB8DF8);
  v146 = v222;
  v147 = v228;
  sub_21700D444();
  v148 = v227;
  sub_217007584();
  v149 = sub_217007594();
  __swift_storeEnumTagSinglePayload(v148, 0, 1, v149);
  v265 = v131;
  v266 = v143;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v151 = v225;
  v152 = v230;
  sub_21700A194();
  sub_2167FDB84(v148, &qword_27CAC1E28);
  (*(v226 + 8))(v146, v147);
  sub_2167FDB84(v145, &qword_27CAB8DF8);
  (*(v221 + 8))(v144, v152);
  sub_21700D844();
  sub_21700D444();
  v265 = v152;
  v266 = OpaqueTypeConformance2;
  v153 = swift_getOpaqueTypeConformance2();
  v154 = v216;
  v155 = v236;
  sub_21700A1F4();

  (*(v229 + 8))(v151, v155);
  sub_2167FDB84(v244, &qword_27CAB8DF8);
  sub_2167FDB84(v247, &qword_27CAC7D20);
  sub_2167FDB84(v245, &qword_27CAB8DF8);
  v156 = v249;
  LOBYTE(v146) = *(v249 + *(v246 + 72) + 8);

  if ((v146 & 1) == 0)
  {
    sub_21700ED94();
    v157 = sub_217009C34();
    sub_217007BC4();

    v158 = v192;
    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v193 + 8))(v158, v194);
  }

  v159 = sub_216C03B7C();

  if (v159)
  {
    v160 = sub_216C03990();
  }

  else
  {
    v160 = 0;
  }

  v262 = v160;
  v161 = v239;
  sub_216C925DC(v156, v239);
  v162 = (*(v237 + 80) + 16) & ~*(v237 + 80);
  v163 = swift_allocObject();
  sub_216C92584(v161, v163 + v162);
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA550);
  v265 = v155;
  v266 = v153;
  v165 = swift_getOpaqueTypeConformance2();
  v166 = sub_21687C5A0();
  v167 = v219;
  v168 = v220;
  sub_21700AB04();

  (*(v217 + 8))(v154, v168);
  sub_2170081C4();
  swift_getKeyPath();
  sub_2170086A4();

  v265 = v168;
  v266 = v164;
  v267 = v165;
  v268 = v166;
  swift_getOpaqueTypeConformance2();
  v169 = v232;
  v170 = v224;
  sub_21700A1B4();

  (*(v223 + 8))(v167, v170);
  v171 = *(v156 + 112);
  v172 = v231;
  v173 = &v231[*(v254 + 36)];
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7DD8);
  v175 = v248;
  sub_216C925DC(v248, &v173[v174[9]]);
  v176 = v200;
  *v173 = v202;
  *(v173 + 1) = v176;
  *&v173[v174[10]] = v243;
  v177 = &v173[v174[11]];
  swift_unknownObjectRetain();

  *v177 = sub_217008684();
  v177[1] = v178;
  v179 = &v173[v174[12]];
  *v179 = 0u;
  *(v179 + 1) = 0u;
  *(v179 + 16) = 260;
  *&v173[v174[13]] = v171;
  v180 = v174[14];
  *&v173[v180] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9310);
  swift_storeEnumTagMultiPayload();
  v181 = &v173[v174[15]];
  type metadata accessor for MusicStackAuthority();
  sub_2166B4D38(&qword_280E46D08);

  *v181 = sub_217008CF4();
  v181[1] = v182;
  (*(v233 + 32))(v172, v169, v234);
  v183 = v172;
  v184 = v235;
  sub_2167C5834(v183, v235, &qword_27CAC7D40);
  sub_216683A80(v184, v251, &qword_27CAC7D40);
  swift_storeEnumTagMultiPayload();
  sub_2167D2D50(qword_280E48638);
  sub_216C91C18();
  v185 = v253;
  sub_217009554();
  sub_216683A80(v185, v190, &qword_27CAC7D58);
  swift_storeEnumTagMultiPayload();
  sub_216C91B60();
  sub_2167D2D50(&qword_280E48630);
  sub_217009554();
  sub_2167FDB84(v185, &qword_27CAC7D58);
  sub_2167FDB84(v184, &qword_27CAC7D40);
  return sub_216C933CC(v175, type metadata accessor for MappedSearchResultsPage);
}

uint64_t sub_216C8C510()
{
  v28 = sub_21700B5A4();
  v31 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v27 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_21700B5E4();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x28223BE20](v2);
  v26 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SearchResultsPageView(0);
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21700B604();
  v7 = *(v6 - 8);
  v32 = v6;
  v33 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v23 = &v23 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7CB8);
  sub_2167D2D50(&unk_280E3C7E8);
  sub_2170081C4();
  swift_getKeyPath();
  sub_2170086A4();

  v35 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20);
  sub_21700B0D4();

  sub_2166AF2EC();
  v12 = sub_21700EE84();
  sub_21700B5F4();
  sub_21700B634();
  v13 = *(v33 + 8);
  v33 += 8;
  v13(v9, v32);
  v14 = v24;
  sub_216C925DC(v0, v24);
  v15 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v16 = swift_allocObject();
  sub_216C92584(v14, v16 + v15);
  aBlock[4] = sub_216C91B08;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2169F0990;
  aBlock[3] = &block_descriptor_34;
  v17 = _Block_copy(aBlock);

  v18 = v26;
  sub_21700B5C4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2166B4D38(&qword_280E2A480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABC970);
  sub_2167D2D50(&qword_280E29E50);
  v20 = v27;
  v19 = v28;
  sub_21700F214();
  v21 = v23;
  MEMORY[0x21CE9FC70](v23, v18, v20, v17);
  _Block_release(v17);

  (*(v31 + 8))(v20, v19);
  (*(v29 + 8))(v18, v30);
  return (v13)(v21, v32);
}

uint64_t sub_216C8CA94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7CB8);
  sub_2167D2D50(&unk_280E3C7E8);
  sub_2170081C4();
  swift_getKeyPath();
  sub_2170086A4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20);
  MEMORY[0x21CE9BEE0](&v2);
  v0 = v2;

  if ((v0 & 1) == 0)
  {
    sub_2170081C4();
    swift_getKeyPath();
    sub_2170086A4();

    LOBYTE(v2) = 1;
    sub_21700B0D4();
  }

  return result;
}

uint64_t sub_216C8CC48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v4 = type metadata accessor for MappedSearchResultsList(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAE0);
  MEMORY[0x28223BE20](v7 - 8);
  v54 = &v48 - v8;
  v51 = type metadata accessor for MappedSection.Content(0);
  MEMORY[0x28223BE20](v51);
  v52 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v50 = &v48 - v11;
  MEMORY[0x28223BE20](v12);
  v49 = &v48 - v13;
  v14 = sub_2170090F4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5A0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v48 - v19;
  v21 = type metadata accessor for SearchResultsListSection();
  MEMORY[0x28223BE20](v21);
  v55 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v2 + *(type metadata accessor for SearchResultsPageView(0) + 72) + 8);

  if ((v23 & 1) == 0)
  {
    sub_21700ED94();
    v24 = sub_217009C34();
    v48 = v14;
    v25 = v4;
    v26 = v6;
    v27 = a2;
    v28 = v24;
    sub_217007BC4();

    a2 = v27;
    v6 = v26;
    v4 = v25;
    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v15 + 8))(v17, v48);
  }

  v29 = sub_216C03B7C();

  if (!v29)
  {
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
    goto LABEL_8;
  }

  v30 = sub_216C03990();

  (*(*v30 + 112))(v56, v31);

  v32 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v20, v32 ^ 1u, 1, v21);
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
LABEL_8:
    sub_2167FDB84(v20, &qword_27CABA5A0);
    goto LABEL_9;
  }

  v33 = v55;
  v34 = sub_216C92584(v20, v55);
  MEMORY[0x28223BE20](v34);
  *(&v48 - 2) = v33;
  v35 = v54;
  sub_216C2E93C(sub_216C9371C, v36, v54);
  v37 = type metadata accessor for MappedSection(0);
  if (__swift_getEnumTagSinglePayload(v35, 1, v37) == 1)
  {
    sub_2167FDB84(v35, &qword_27CABBAE0);
    sub_216C933CC(v33, type metadata accessor for SearchResultsListSection);
LABEL_9:
    v38 = sub_21700D194();
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v38);
  }

  v40 = v50;
  sub_216C925DC(v35 + *(v37 + 28), v50);
  sub_216C933CC(v35, type metadata accessor for MappedSection);
  v41 = v40;
  v42 = v49;
  sub_216C92584(v41, v49);
  v43 = v42;
  v44 = v52;
  sub_216C92584(v43, v52);
  if (swift_getEnumCaseMultiPayload() == 30)
  {
    sub_216C92584(v44, v6);
    v45 = *(v4 + 24);
    v46 = sub_21700D194();
    (*(*(v46 - 8) + 16))(a2, &v6[v45], v46);
    sub_216C933CC(v6, type metadata accessor for MappedSearchResultsList);
    __swift_storeEnumTagSinglePayload(a2, 0, 1, v46);
  }

  else
  {
    v47 = sub_21700D194();
    __swift_storeEnumTagSinglePayload(a2, 1, 1, v47);
    sub_216C933CC(v44, type metadata accessor for MappedSection.Content);
  }

  return sub_216C933CC(v33, type metadata accessor for SearchResultsListSection);
}

uint64_t sub_216C8D2E0@<X0>(_OWORD *a1@<X8>)
{
  v40 = a1;
  v2 = type metadata accessor for MappedSection(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SearchResultsPageView.ContentView(0);
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  sub_216C8D950(&v37 - v13);
  if (__swift_getEnumTagSinglePayload(v14, 1, v2) == 1)
  {
    sub_2167FDB84(v14, &qword_27CABBAE0);
  }

  else
  {
    v15 = *&v14[*(v2 + 32)];
    sub_216C933CC(v14, type metadata accessor for MappedSection);
    if (v15 == 512)
    {
      sub_216C925DC(v1, v8);
      v16 = (*(v39 + 80) + 16) & ~*(v39 + 80);
      v17 = swift_allocObject();
      sub_216C92584(v8, v17 + v16);
      v58 = 0;
      v41 = sub_216C92AA4;
      v42 = v17;
      HIBYTE(v51) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7E08);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7E10);
      sub_2167D2D50(&unk_27CAC7E18);
      sub_2167D2D50(&unk_27CAC7E20);
      result = sub_217009554();
      goto LABEL_9;
    }
  }

  sub_216C8D950(v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v2) == 1)
  {
    result = sub_2167FDB84(v11, &qword_27CABBAE0);
LABEL_11:
    v34 = 0;
    v30 = 0uLL;
    v35 = -256;
    v31 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    goto LABEL_12;
  }

  sub_216C92584(v11, v5);
  v19 = sub_216C8FCF0();
  if (!v19)
  {
    result = sub_216C933CC(v5, type metadata accessor for MappedSection);
    goto LABEL_11;
  }

  v21 = v19;
  v22 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC18F8);
  v23 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v24 = swift_allocObject();
  v38 = v5;
  v25 = v24;
  *(v24 + 16) = xmmword_217013DA0;
  sub_216C925DC(v5, v24 + v23);
  v26 = *(v1 + *(v6 + 36));
  sub_216C925DC(v1, v8);
  v27 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v21;
  *(v28 + 24) = v22;
  sub_216C92584(v8, v28 + v27);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_216C929CC;
  *(v29 + 24) = v28;
  LOBYTE(v52) = 0;
  v58 = 1;
  v41 = v25;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = sub_216C92A6C;
  v46 = v29;
  v47 = nullsub_1;
  v48 = 0;
  v49 = sub_216C92A9C;
  v50 = v26;
  v51 = 256;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7E08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7E10);
  sub_2167D2D50(&unk_27CAC7E18);
  sub_2167D2D50(&unk_27CAC7E20);
  sub_217009554();
  result = sub_216C933CC(v38, type metadata accessor for MappedSection);
LABEL_9:
  v30 = v52;
  v31 = v53;
  v32 = v54;
  v33 = v55;
  v34 = v56;
  v35 = v57;
LABEL_12:
  v36 = v40;
  *v40 = v30;
  v36[1] = v31;
  v36[2] = v32;
  v36[3] = v33;
  *(v36 + 8) = v34;
  *(v36 + 36) = v35;
  return result;
}

uint64_t sub_216C8D950@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2170090F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for SearchResultsListSection();
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for SearchResultsPageView.ContentView(0);
  v14 = *(v2 + *(v25 + 40) + 8);

  if ((v14 & 1) == 0)
  {
    sub_21700ED94();
    v24 = v4;
    v15 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v24);
  }

  v16 = sub_216C03B7C();

  if (v16)
  {
    v17 = sub_216C03990();

    (*(*v17 + 112))(v26, v18);

    v19 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v10, v19 ^ 1u, 1, v11);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
    {
      v20 = sub_216C92584(v10, v13);
      MEMORY[0x28223BE20](v20);
      *(&v24 - 2) = v13;
      sub_216C2E93C(sub_216B3AC5C, v21, a1);
      return sub_216C933CC(v13, type metadata accessor for SearchResultsListSection);
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  }

  sub_2167FDB84(v10, &qword_27CABA5A0);
  v23 = type metadata accessor for MappedSection(0);
  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v23);
}

uint64_t sub_216C8DCF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a1;
  v89 = a3;
  v4 = sub_2170091F4();
  v87 = *(v4 - 8);
  v88 = v4;
  MEMORY[0x28223BE20](v4);
  v86 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2170086D4();
  v84 = *(v6 - 8);
  v85 = v6;
  MEMORY[0x28223BE20](v6);
  v83 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_217008A64();
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v78 = v8;
  v80 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SearchResultsPageView.ContentView(0);
  v10 = v9 - 8;
  v70 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v71 = v11;
  v64 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5D8);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v58 - v12;
  v62 = sub_2170090F4();
  v13 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7E28);
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v17 = &v58 - v16;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7E30);
  MEMORY[0x28223BE20](v69);
  v19 = &v58 - v18;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7E38);
  v72 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v68 = &v58 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7E40);
  v76 = *(v21 - 8);
  v77 = v21;
  MEMORY[0x28223BE20](v21);
  v74 = &v58 - v22;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7E48);
  MEMORY[0x28223BE20](v73);
  v24 = &v58 - v23;
  v90 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7E50);
  sub_2167D2D50(&unk_280E2A4A8);
  v65 = v17;
  sub_217009ED4();
  v25 = a2;
  v26 = *(a2 + *(v10 + 48) + 8);

  if ((v26 & 1) == 0)
  {
    sub_21700ED94();
    v27 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v13 + 8))(v15, v62);
  }

  v28 = sub_216C03B7C();

  if (v28)
  {
    v29 = *(v28 + OBJC_IVAR____TtCC7MusicUI13FacetBarState4Data_onSelectionOfExistingItem);

    v91 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA610);
    sub_2167D2D50(&unk_280E484F8);
    v30 = sub_217007E24();
  }

  else
  {
    v31 = v59;
    sub_217007D94();
    sub_2167D2D50(&qword_27CABA600);
    v32 = v61;
    v30 = sub_217007E24();
    (*(v60 + 8))(v31, v32);
  }

  v63 = v25;
  v33 = v64;
  sub_216C925DC(v25, v64);
  v34 = v79;
  v35 = v80;
  v36 = v81;
  (*(v79 + 16))(v80, v82, v81);
  v37 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v38 = (v71 + *(v34 + 80) + v37) & ~*(v34 + 80);
  v39 = swift_allocObject();
  sub_216C92584(v33, v39 + v37);
  (*(v34 + 32))(v39 + v38, v35, v36);
  (*(v66 + 32))(v19, v65, v67);
  v40 = v69;
  *&v19[*(v69 + 52)] = v30;
  v41 = &v19[*(v40 + 56)];
  *v41 = sub_216C92B24;
  v41[1] = v39;
  sub_217009CB4();
  v42 = sub_2167D2D50(&unk_280E2AD38);
  v43 = v68;
  sub_21700A404();
  sub_2167FDB84(v19, &qword_27CAC7E30);
  v44 = v83;
  sub_2170086C4();
  v91 = v40;
  v92 = v42;
  swift_getOpaqueTypeConformance2();
  v46 = v74;
  v45 = v75;
  v47 = v85;
  sub_21700ABC4();
  (*(v84 + 8))(v44, v47);
  (*(v72 + 8))(v43, v45);
  v48 = v86;
  sub_2170091E4();
  v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7E58) + 36);
  v51 = v87;
  v50 = v88;
  (*(v87 + 16))(&v24[v49], v48, v88);
  __swift_storeEnumTagSinglePayload(&v24[v49], 0, 1, v50);
  (*(v76 + 32))(v24, v46, v77);
  KeyPath = swift_getKeyPath();
  v53 = &v24[*(v73 + 36)];
  v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8538) + 28);
  (*(v51 + 32))(v53 + v54, v48, v50);
  __swift_storeEnumTagSinglePayload(v53 + v54, 0, 1, v50);
  *v53 = KeyPath;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7E60);
  v56 = v89;
  sub_216C8F788(v89 + *(v55 + 52));
  return sub_2167C5834(v24, v56, &qword_27CAC7E48);
}

uint64_t sub_216C8E85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_2170090F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7E70);
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v34 = &v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7E78);
  MEMORY[0x28223BE20](v10 - 8);
  v33 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  sub_216C8EC84(&v33 - v13);
  v39 = a1;
  v15 = sub_216C8F144();
  v16 = type metadata accessor for SearchResultsPageView.ContentView(0);
  v17 = *(a1 + *(v16 + 40) + 8);

  if ((v17 & 1) == 0)
  {
    sub_21700ED94();
    v18 = v3;
    v19 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v18);
  }

  v20 = sub_216C03B7C();

  v21 = *(v16 + 28);
  LOBYTE(v40) = v15 & 1;
  v41 = v20;
  v42 = *(a1 + v21);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7E80);
  sub_216C92C94();
  sub_216C92CE8();
  v22 = v34;
  sub_21700B194();
  v23 = v14;
  v24 = v33;
  sub_216683A80(v14, v33, &qword_27CAC7E78);
  v26 = v35;
  v25 = v36;
  v27 = *(v35 + 16);
  v28 = v37;
  v27(v36, v22, v37);
  v29 = v38;
  sub_216683A80(v24, v38, &qword_27CAC7E78);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7E88);
  v27((v29 + *(v30 + 48)), v25, v28);
  v31 = *(v26 + 8);
  v31(v22, v28);
  sub_2167FDB84(v23, &qword_27CAC7E78);
  v31(v25, v28);
  return sub_2167FDB84(v24, &qword_27CAC7E78);
}

uint64_t sub_216C8EC84@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  ContextView = type metadata accessor for SearchResultsQueryContextView(0);
  MEMORY[0x28223BE20](ContextView);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD58);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  Context = type metadata accessor for JSSearchResultsPage.QueryContext(0);
  MEMORY[0x28223BE20](Context);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SearchResultsPageView.ContentView(0);
  v12 = v1 + v11[5];
  v13 = type metadata accessor for MappedSearchResultsPage(0);
  sub_216683A80(v12 + *(v13 + 24), v7, &qword_27CABFD58);
  if (__swift_getEnumTagSinglePayload(v7, 1, Context) == 1)
  {
    sub_2167FDB84(v7, &qword_27CABFD58);
    return __swift_storeEnumTagSinglePayload(v26, 1, 1, ContextView);
  }

  else
  {
    sub_216C92584(v7, v10);
    sub_216C92584(v10, v4);
    v15 = (v1 + v11[8]);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(v1 + v11[6]);
    v19 = &v4[ContextView[5]];
    *v19 = v16;
    *(v19 + 1) = v17;
    *&v4[ContextView[6]] = v18;
    v20 = ContextView[7];
    *&v4[v20] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
    swift_storeEnumTagMultiPayload();
    v21 = &v4[ContextView[8]];
    *v21 = swift_getKeyPath();
    *(v21 + 1) = 0;
    *(v21 + 2) = 0;
    *(v21 + 3) = 0;
    v21[32] = 0;
    v22 = &v4[ContextView[9]];
    *v22 = swift_getKeyPath();
    v22[8] = 0;
    v23 = v4;
    v24 = v26;
    sub_216C92584(v23, v26);
    __swift_storeEnumTagSinglePayload(v24, 0, 1, ContextView);
    sub_21700DF14();
  }
}

uint64_t sub_216C8EF4C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SearchResultsPageView.PageListSectionView(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for MappedSection(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216C8D950(v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_2167FDB84(v7, &qword_27CABBAE0);
    v11 = 1;
  }

  else
  {
    sub_216C92584(v7, v10);
    sub_216C925DC(&v10[*(v8 + 28)], v4);
    sub_216C933CC(v10, type metadata accessor for MappedSection);
    sub_216C92584(v4, a1);
    v11 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v11, 1, v2);
}

uint64_t sub_216C8F144()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD58);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = v0 + *(type metadata accessor for SearchResultsPageView.ContentView(0) + 20);
  v5 = type metadata accessor for MappedSearchResultsPage(0);
  sub_216683A80(v4 + *(v5 + 24), v3, &qword_27CABFD58);
  Context = type metadata accessor for JSSearchResultsPage.QueryContext(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, Context);
  sub_2167FDB84(v3, &qword_27CABFD58);
  if (EnumTagSinglePayload == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v4 + *(v5 + 28)) ^ 1;
  }

  return v8 & 1;
}

uint64_t sub_216C8F248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v36 - v6;
  v8 = type metadata accessor for TopSearchLockup();
  MEMORY[0x28223BE20](v8);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2170090F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5A0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v36 - v15;
  v17 = type metadata accessor for SearchResultsListSection();
  MEMORY[0x28223BE20](v17);
  v39 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + *(type metadata accessor for SearchResultsPageView.ContentView(0) + 40) + 8);

  if ((v19 & 1) == 0)
  {
    sub_21700ED94();
    v20 = sub_217009C34();
    v37 = v10;
    v21 = v8;
    v22 = v7;
    v23 = a3;
    v24 = v20;
    sub_217007BC4();

    a3 = v23;
    v7 = v22;
    v8 = v21;
    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v11 + 8))(v13, v37);
  }

  v25 = sub_216C03B7C();

  if (!v25)
  {
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
    goto LABEL_8;
  }

  v26 = sub_216C03990();

  (*(*v26 + 112))(v40, v27);

  v28 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v16, v28 ^ 1u, 1, v17);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
LABEL_8:
    v31 = &qword_27CABA5A0;
    v32 = v16;
    return sub_2167FDB84(v32, v31);
  }

  v29 = v16;
  v30 = v39;
  sub_216C92584(v29, v39);
  sub_216CE0EA8(*(v30 + 32), v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
  {
    v34 = v38;
    sub_216C92584(v7, v38);
    v35 = sub_21700B404();
    MEMORY[0x28223BE20](v35);
    *(&v36 - 2) = a3;
    *(&v36 - 1) = v34;
    sub_217008564();

    sub_216C933CC(v30, type metadata accessor for SearchResultsListSection);
    return sub_216C933CC(v34, type metadata accessor for TopSearchLockup);
  }

  sub_216C933CC(v30, type metadata accessor for SearchResultsListSection);
  v31 = &qword_27CABED90;
  v32 = v7;
  return sub_2167FDB84(v32, v31);
}

uint64_t sub_216C8F71C()
{
  type metadata accessor for TopSearchLockup();
  sub_21700B544();
  return sub_217008A54();
}

uint64_t sub_216C8F788@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = type metadata accessor for TopSearchLockup();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2170090F4();
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5A0);
  MEMORY[0x28223BE20](v8 - 8);
  v45 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD58);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for SearchResultsPageView.ContentView(0);
  v14 = v1 + *(v13 + 20);
  v15 = type metadata accessor for MappedSearchResultsPage(0);
  sub_216683A80(v14 + *(v15 + 24), v12, &qword_27CABFD58);
  Context = type metadata accessor for JSSearchResultsPage.QueryContext(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, Context);
  result = sub_2167FDB84(v12, &qword_27CABFD58);
  if (EnumTagSinglePayload != 1 && *(v14 + *(v15 + 28)) != 1)
  {
    v40 = v46;
    *(v46 + 32) = 0;
    *v40 = 0u;
    v40[1] = 0u;
    return result;
  }

  v19 = *(v1 + *(v13 + 40) + 8);

  if ((v19 & 1) == 0)
  {
    sub_21700ED94();
    v20 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();

    (*(v43 + 8))(v7, v44);
  }

  v21 = sub_216C03B7C();

  if (!v21)
  {
    v38 = type metadata accessor for SearchResultsListSection();
    v25 = v45;
    __swift_storeEnumTagSinglePayload(v45, 1, 1, v38);
    goto LABEL_14;
  }

  v22 = sub_216C03990();

  (*(*v22 + 112))(v47, v23);

  v24 = type metadata accessor for SearchResultsListSection();
  v25 = v45;
  v26 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v25, v26 ^ 1u, 1, v24);
  if (__swift_getEnumTagSinglePayload(v25, 1, v24) == 1)
  {
LABEL_14:
    result = sub_2167FDB84(v25, &qword_27CABA5A0);
    v39 = v46;
    *v46 = 0u;
    *(v39 + 16) = 0u;
    *(v39 + 32) = 0;
    return result;
  }

  v27 = *(v25 + 32);
  sub_21700DF14();
  sub_216C933CC(v25, type metadata accessor for SearchResultsListSection);
  v28 = *(v27 + 16);
  if (v28)
  {
    v49 = MEMORY[0x277D84F90];
    sub_216AB9D5C(0, v28, 0);
    v29 = v49;
    v30 = v42;
    v31 = v27 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v32 = *(v41 + 72);
    do
    {
      sub_216C925DC(v31, v4);
      sub_216788294(&v4[*(v30 + 20)], v47);
      sub_216C933CC(v4, type metadata accessor for TopSearchLockup);
      v49 = v29;
      v34 = *(v29 + 16);
      v33 = *(v29 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_216AB9D5C(v33 > 1, v34 + 1, 1);
        v30 = v42;
        v29 = v49;
      }

      *(v29 + 16) = v34 + 1;
      v35 = v29 + 40 * v34;
      v36 = v47[0];
      v37 = v47[1];
      *(v35 + 64) = v48;
      *(v35 + 32) = v36;
      *(v35 + 48) = v37;
      v31 += v32;
      --v28;
    }

    while (v28);
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
  }

  *&v47[0] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7E68);
  sub_216C92BF4();
  return sub_21700F364();
}

uint64_t sub_216C8FCF0()
{
  v0 = type metadata accessor for MappedSearchResultsList(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MappedSection.Content(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for MappedSection(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216C8D950(v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2167FDB84(v8, &qword_27CABBAE0);
    return 0;
  }

  sub_216C92584(v8, v11);
  sub_216C925DC(&v11[*(v9 + 28)], v5);
  sub_216C933CC(v11, type metadata accessor for MappedSection);
  if (swift_getEnumCaseMultiPayload() != 30)
  {
    sub_216C933CC(v5, type metadata accessor for MappedSection.Content);
    return 0;
  }

  sub_216C92584(v5, v2);
  v12 = *(v2 + 5);
  sub_21700DF14();
  sub_216C933CC(v2, type metadata accessor for MappedSearchResultsList);
  return v12;
}

uint64_t sub_216C8FF78(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9380);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v16 - v12;
  *v13 = sub_2170093B4();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7ED0);
  sub_216C9008C(a5, a6, a7, a1, &v13[*(v14 + 44)]);
  sub_21682436C();
  return sub_2167FDB84(v13, &qword_27CAB9380);
}

uint64_t sub_216C9008C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7ED8);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = (&v35 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7EE0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v37 = &v35 - v15;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7EE8) - 8;
  MEMORY[0x28223BE20](v48);
  v49 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v45 = &v35 - v18;
  MEMORY[0x28223BE20](v19);
  v46 = &v35 - v20;
  v47 = sub_21700ACD4();
  sub_21700B3B4();
  sub_2170083C4();
  v44 = v50;
  v43 = v51;
  v42 = v52;
  v41 = v53;
  v40 = v54;
  v39 = v55;
  v36 = a3;
  type metadata accessor for PersistentPageSectionManager();
  sub_2166B4D38(&unk_280E32060);
  sub_2170081B4();

  LOWORD(a3) = *(a4 + *(type metadata accessor for MappedSection(0) + 32));
  sub_21700DF14();
  sub_216C72560(a3, v12 + 1);
  v22 = *a4;
  v21 = a4[1];
  *v12 = a1;
  v12[18] = swift_getKeyPath();
  *(v12 + 152) = 0;
  v23 = *(v10 + 100);
  *(v12 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
  swift_storeEnumTagMultiPayload();
  v12[7] = 0;
  v12[8] = 0;
  v12[6] = 3;
  *(v12 + 72) = 0;
  v12[15] = sub_216C92E34;
  v12[16] = 0;
  v12[10] = v22;
  v12[11] = v21;
  v12[12] = 0;
  v12[13] = 0;
  *(v12 + 112) = 0;
  v12[17] = v38;
  sub_21700DF14();
  sub_21700B3C4();
  sub_217008BB4();
  v24 = v37;
  sub_2167C5834(v12, v37, &qword_27CAC7ED8);
  memcpy((v24 + *(v14 + 44)), __src, 0x70uLL);
  v25 = *(v36 + *(type metadata accessor for SearchResultsPageView.ContentView(0) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7CB8);
  sub_2167D2D50(&unk_280E3C7E8);
  v26 = sub_217007D54();
  v27 = v45;
  sub_2167C5834(v24, v45, &qword_27CAC7EE0);
  v28 = (v27 + *(v48 + 44));
  *v28 = v26;
  v28[1] = v25;
  v29 = v46;
  sub_2167C5834(v27, v46, &qword_27CAC7EE8);
  v30 = v49;
  sub_216683A80(v29, v49, &qword_27CAC7EE8);
  v31 = v44;
  *a5 = v47;
  *(a5 + 8) = v31;
  *(a5 + 16) = v43;
  *(a5 + 24) = v42;
  *(a5 + 32) = v41;
  v32 = v39;
  *(a5 + 40) = v40;
  *(a5 + 48) = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7EF0);
  sub_216683A80(v30, a5 + *(v33 + 48), &qword_27CAC7EE8);

  sub_2167FDB84(v29, &qword_27CAC7EE8);
  sub_2167FDB84(v30, &qword_27CAC7EE8);
}

uint64_t sub_216C90610@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7F28);
  MEMORY[0x28223BE20](v46);
  v47 = &v42 - v3;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7F30);
  MEMORY[0x28223BE20](v54);
  v49 = &v42 - v4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9030);
  MEMORY[0x28223BE20](v43);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7F38);
  MEMORY[0x28223BE20](v45);
  v6 = &v42 - v5;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7F40);
  MEMORY[0x28223BE20](v51);
  v53 = &v42 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7F48);
  MEMORY[0x28223BE20](v48);
  v9 = &v42 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7F50);
  MEMORY[0x28223BE20](v52);
  v50 = &v42 - v10;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9058);
  MEMORY[0x28223BE20](v44);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9060);
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - v12;
  v14 = type metadata accessor for MappedSearchResultsList(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MappedSection.Content(0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_216C925DC(v2, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 56:
      v56 = *v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90A8);
      sub_2167D2D50(&qword_280E2A020);
      sub_2170075C4();
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90B0);
      sub_2167D2D50(&qword_280E48620);
      v35 = type metadata accessor for TopSearchLockupView(255);
      v36 = sub_2166B4D38(&qword_280E3CE50);
      v56 = v35;
      v57 = v36;
      swift_getOpaqueTypeConformance2();
      sub_21700B154();
      KeyPath = swift_getKeyPath();
      v38 = &v13[*(v11 + 36)];
      *v38 = 0;
      *(v38 + 1) = KeyPath;
      *(v38 + 2) = 0;
      *(v38 + 3) = 0;
      *(v38 + 4) = 0;
      v38[40] = 0;
      sub_216683A80(v13, v9, &qword_27CAB9060);
      swift_storeEnumTagMultiPayload();
      sub_216C93298(&qword_280E2B088);
      v39 = v50;
      sub_217009554();
      sub_216683A80(v39, v53, &qword_27CAC7F50);
      swift_storeEnumTagMultiPayload();
      sub_216C931E8();
      sub_216C93314();
      sub_217009554();
      sub_2167FDB84(v39, &qword_27CAC7F50);
      v33 = v13;
      v34 = &qword_27CAB9060;
      return sub_2167FDB84(v33, v34);
    case 54:
      v56 = *v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9090);
      sub_2167D2D50(&qword_27CAB9098);
      sub_2170075C4();
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90C8);
      sub_2167D2D50(&qword_27CAB90A0);
      v28 = type metadata accessor for SuggestionItemView(255);
      v29 = sub_2166B4D38(qword_280E3E620);
      v56 = v28;
      v57 = v29;
      swift_getOpaqueTypeConformance2();
      sub_21700B154();
      v30 = swift_getKeyPath();
      v31 = &v6[*(v45 + 36)];
      *v31 = 0;
      *(v31 + 1) = v30;
      *(v31 + 2) = 0;
      *(v31 + 3) = 0;
      *(v31 + 4) = 0;
      v31[40] = 0;
      sub_216683A80(v6, v47, &qword_27CAC7F38);
      swift_storeEnumTagMultiPayload();
      sub_216C93298(&unk_280E2B080);
      v32 = v49;
      sub_217009554();
      sub_216683A80(v32, v53, &qword_27CAC7F30);
      swift_storeEnumTagMultiPayload();
      sub_216C931E8();
      sub_216C93314();
      sub_217009554();
      sub_2167FDB84(v32, &qword_27CAC7F30);
      v33 = v6;
      v34 = &qword_27CAC7F38;
      return sub_2167FDB84(v33, v34);
    case 30:
      sub_216C92584(v19, v16);
      v56 = *(v16 + 5);
      sub_21700DF14();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90A8);
      sub_2167D2D50(&qword_280E2A020);
      sub_2170075C4();
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90B0);
      sub_2167D2D50(&qword_280E48620);
      v21 = type metadata accessor for TopSearchLockupView(255);
      v22 = sub_2166B4D38(&qword_280E3CE50);
      v56 = v21;
      v57 = v22;
      swift_getOpaqueTypeConformance2();
      sub_21700B154();
      v23 = swift_getKeyPath();
      v24 = &v13[*(v11 + 36)];
      *v24 = 0;
      *(v24 + 1) = v23;
      *(v24 + 2) = 0;
      *(v24 + 3) = 0;
      *(v24 + 4) = 0;
      v24[40] = 0;
      sub_216683A80(v13, v9, &qword_27CAB9060);
      swift_storeEnumTagMultiPayload();
      sub_216C93298(&qword_280E2B088);
      v25 = v50;
      sub_217009554();
      sub_216683A80(v25, v53, &qword_27CAC7F50);
      swift_storeEnumTagMultiPayload();
      sub_216C931E8();
      sub_216C93314();
      sub_217009554();
      sub_2167FDB84(v25, &qword_27CAC7F50);
      sub_2167FDB84(v13, &qword_27CAB9060);
      v26 = type metadata accessor for MappedSearchResultsList;
      v27 = v16;
      break;
    default:
      swift_storeEnumTagMultiPayload();
      sub_216C93298(&unk_280E2B080);
      v41 = v49;
      sub_217009554();
      sub_216683A80(v41, v53, &qword_27CAC7F30);
      swift_storeEnumTagMultiPayload();
      sub_216C931E8();
      sub_216C93314();
      sub_217009554();
      sub_2167FDB84(v41, &qword_27CAC7F30);
      v26 = type metadata accessor for MappedSection.Content;
      v27 = v19;
      break;
  }

  return sub_216C933CC(v27, v26);
}

void sub_216C91300()
{
  OUTLINED_FUNCTION_49();
  v33 = v0;
  v31[1] = v1;
  v32 = sub_21700DAF4();
  OUTLINED_FUNCTION_16();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  v8 = type metadata accessor for TopSearchLockup();
  v9 = OUTLINED_FUNCTION_36(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  v14 = OUTLINED_FUNCTION_36(v13);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v31 - v18;
  type metadata accessor for TopSearchLockupView(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7();
  v23 = (v22 - v21);

  sub_2168027B0(v24, v23);
  sub_216DE8ED8();
  sub_216683A80(v12, v17, &qword_27CAB6D58);
  sub_216C933CC(v12, type metadata accessor for TopSearchLockup);
  v25 = sub_21700D7A4();
  if (__swift_getEnumTagSinglePayload(v17, 1, v25) == 1)
  {
    sub_2167FDB84(v17, &qword_27CAB6D58);
    v26 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_16();
    v28 = v27;
    (*(v29 + 16))(v19, v17, v25);
    v30 = sub_21700D794();
    sub_21700D754();
    v30(&v34, 0);
    (*(v28 + 8))(v17, v25);
    v26 = 0;
  }

  __swift_storeEnumTagSinglePayload(v19, v26, 1, v25);
  sub_21700DAE4();
  sub_2166B4D38(&unk_280E3CE50);
  sub_21700A1C4();
  (*(v3 + 8))(v7, v32);
  sub_2167FDB84(v19, &qword_27CAB6D58);
  sub_216C933CC(v23, type metadata accessor for TopSearchLockupView);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216C91684(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for SuggestionItemView(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216C925DC(a2, v8);
  sub_216C925DC(a2, v5);
  v9 = type metadata accessor for SuggestionItem();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v9);
  sub_216EF143C();
  sub_2167FDB84(v5, &qword_27CAB90C0);
  return sub_216C933CC(v8, type metadata accessor for SuggestionItemView);
}

uint64_t sub_216C917F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB90B8) + 48);

  return sub_216C91684(v1, v2);
}

uint64_t sub_216C9185C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7F20);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  if ((a1 & 1) != 0 && a2)
  {
    swift_retain_n();
    swift_unknownObjectRetain();
    v30 = sub_217009CE4();
    sub_217007F24();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v33 = 0;
    v34 = 0;
    v21 = sub_21700B3B4();
    v28 = v22;
    v29 = v21;
    v23 = &v12[*(v10 + 36)];
    v31 = sub_21700ACD4();
    v32 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FC8);
    sub_216C1C7AC();
    sub_21700A494();

    v24 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FA0) + 36)];
    v25 = v28;
    *v24 = v29;
    v24[1] = v25;
    *v12 = a2;
    *(v12 + 1) = a3;
    *(v12 + 2) = a4;
    v12[24] = v30;
    *(v12 + 4) = v14;
    *(v12 + 5) = v16;
    *(v12 + 6) = v18;
    *(v12 + 7) = v20;
    v12[64] = 0;
    *(v12 + 88) = 0u;
    *(v12 + 72) = 0u;
    v12[104] = 0;
    sub_2167C5834(v12, a5, &qword_27CAC7F20);
    return __swift_storeEnumTagSinglePayload(a5, 0, 1, v10);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a5, 1, 1, v10);
  }
}

uint64_t sub_216C91AB4()
{
  v0 = type metadata accessor for SearchResultsPageView(0);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_11_2();
  return sub_216C8C510();
}

uint64_t sub_216C91B08()
{
  v0 = type metadata accessor for SearchResultsPageView(0);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_11_2();

  return sub_216C8CA94();
}

unint64_t sub_216C91B60()
{
  result = qword_27CAC7D68;
  if (!qword_27CAC7D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7D58);
    sub_2167D2D50(qword_280E48638);
    sub_216C91C18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7D68);
  }

  return result;
}

unint64_t sub_216C91C18()
{
  result = qword_27CAC7D70;
  if (!qword_27CAC7D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7D40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7D30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7D28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA550);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7CD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7CD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7D20);
    sub_216C91E38();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21687C5A0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2167D2D50(&unk_280E47E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7D70);
  }

  return result;
}

unint64_t sub_216C91E38()
{
  result = qword_27CAC7D78;
  if (!qword_27CAC7D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7D20);
    sub_216C91EF0();
    sub_2167D2D50(&qword_280E2A7F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7D78);
  }

  return result;
}

unint64_t sub_216C91EF0()
{
  result = qword_27CAC7D80;
  if (!qword_27CAC7D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7D18);
    sub_216C91FA8();
    sub_2167D2D50(&qword_280E2A788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7D80);
  }

  return result;
}

unint64_t sub_216C91FA8()
{
  result = qword_27CAC7D88;
  if (!qword_27CAC7D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7D10);
    sub_216C92060();
    sub_2167D2D50(&qword_280E2A770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7D88);
  }

  return result;
}

unint64_t sub_216C92060()
{
  result = qword_27CAC7D90;
  if (!qword_27CAC7D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7D08);
    sub_216C92118();
    sub_2167D2D50(&qword_280E2A7B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7D90);
  }

  return result;
}

unint64_t sub_216C92118()
{
  result = qword_27CAC7D98;
  if (!qword_27CAC7D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7D00);
    sub_216C921D0();
    sub_2167D2D50(&qword_280E2A778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7D98);
  }

  return result;
}

unint64_t sub_216C921D0()
{
  result = qword_27CAC7DA0;
  if (!qword_27CAC7DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7CF8);
    sub_216C92288();
    sub_2167D2D50(&qword_280E2A768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7DA0);
  }

  return result;
}

unint64_t sub_216C92288()
{
  result = qword_27CAC7DA8;
  if (!qword_27CAC7DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7DB0);
    sub_216C92340();
    sub_2167D2D50(&qword_280E2A768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7DA8);
  }

  return result;
}

unint64_t sub_216C92340()
{
  result = qword_27CAC7DB8;
  if (!qword_27CAC7DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7CF0);
    sub_216C923F8();
    sub_2167D2D50(&unk_280E2A7C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7DB8);
  }

  return result;
}

unint64_t sub_216C923F8()
{
  result = qword_27CAC7DC0;
  if (!qword_27CAC7DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7CE8);
    sub_216C924B0();
    sub_2167D2D50(&qword_280E2A738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7DC0);
  }

  return result;
}

unint64_t sub_216C924B0()
{
  result = qword_27CAC7DC8;
  if (!qword_27CAC7DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7CE0);
    sub_2166B4D38(&unk_280E39D08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7DC8);
  }

  return result;
}

uint64_t sub_216C92584(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_216C925DC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_216C92634()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7E90);
  swift_allocObject();

  return sub_216C8908C(v0);
}

void sub_216C926AC()
{
  sub_2167CBB2C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MappedSearchResultsPage(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ObjectGraph();
      if (v2 <= 0x3F)
      {
        sub_216820E14();
        if (v3 <= 0x3F)
        {
          sub_216C06B18();
          if (v4 <= 0x3F)
          {
            sub_2166DB82C(319, &qword_280E2B4B8, type metadata accessor for FacetBarState);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_216C927B4()
{
  result = qword_27CAC7DE0;
  if (!qword_27CAC7DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7CC8);
    sub_216C92840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7DE0);
  }

  return result;
}

unint64_t sub_216C92840()
{
  result = qword_27CAC7DE8;
  if (!qword_27CAC7DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7CC0);
    sub_216C928F8();
    sub_2167D2D50(&unk_280E33460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7DE8);
  }

  return result;
}

unint64_t sub_216C928F8()
{
  result = qword_27CAC7DF0;
  if (!qword_27CAC7DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7DF8);
    sub_216C91B60();
    sub_2167D2D50(&qword_280E48630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7DF0);
  }

  return result;
}

uint64_t sub_216C929CC(uint64_t *a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = type metadata accessor for SearchResultsPageView.ContentView(0);
  OUTLINED_FUNCTION_36(v9);
  v11 = *(v4 + 16);
  v12 = *(v4 + 24);
  v13 = v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80));

  return sub_216C8FF78(a1, a2, a3 & 1, a4, v11, v12, v13);
}

uint64_t sub_216C92AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for SearchResultsPageView.ContentView(0);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_11_2();

  return sub_216C8DCF4(a1, v2 + v6, a2);
}

uint64_t sub_216C92B24(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResultsPageView.ContentView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = sub_217008A64();
  OUTLINED_FUNCTION_36(v6);
  v8 = v1 + ((v4 + v5 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_216C8F248(a1, v1 + v4, v8);
}

unint64_t sub_216C92BF4()
{
  result = qword_280E29DF8;
  if (!qword_280E29DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E29DF8);
  }

  return result;
}

unint64_t sub_216C92C94()
{
  result = qword_280E39C58[0];
  if (!qword_280E39C58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E39C58);
  }

  return result;
}

unint64_t sub_216C92CE8()
{
  result = qword_280E39C10;
  if (!qword_280E39C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7E80);
    sub_2166B4D38(&unk_280E39C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E39C10);
  }

  return result;
}

uint64_t sub_216C92DC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7EA8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for SearchResultsPageView.ViewID(_BYTE *result, int a2, int a3)
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

uint64_t sub_216C92F14()
{
  result = type metadata accessor for MappedSection.Content(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_216C92F90()
{
  result = qword_27CAC7F08;
  if (!qword_27CAC7F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7F10);
    sub_2167D2D50(&unk_27CAC7E18);
    sub_2167D2D50(&unk_27CAC7E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7F08);
  }

  return result;
}

unint64_t sub_216C93078()
{
  result = qword_27CAC7F18;
  if (!qword_27CAC7F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7F18);
  }

  return result;
}

unint64_t sub_216C93104()
{
  result = qword_280E2A4E0;
  if (!qword_280E2A4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7F58);
    type metadata accessor for SuggestionItemView(255);
    sub_2166B4D38(qword_280E3E620);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A4E0);
  }

  return result;
}

unint64_t sub_216C931E8()
{
  result = qword_280E2AA68;
  if (!qword_280E2AA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7F50);
    sub_216C93298(&qword_280E2B088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AA68);
  }

  return result;
}

unint64_t sub_216C93298(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_100(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    sub_21681FA74();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_216C93314()
{
  result = qword_280E2AA60;
  if (!qword_280E2AA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7F30);
    sub_216C93298(&unk_280E2B080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AA60);
  }

  return result;
}

uint64_t sub_216C933CC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216C93420(uint64_t a1)
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

unint64_t sub_216C93494()
{
  result = qword_280E2AF40;
  if (!qword_280E2AF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7F20);
    sub_216C9354C();
    sub_2167D2D50(&qword_280E2ABE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AF40);
  }

  return result;
}

unint64_t sub_216C9354C()
{
  result = qword_280E2B058;
  if (!qword_280E2B058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7F68);
    sub_216C93604();
    sub_2167D2D50(&qword_280E2A8D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B058);
  }

  return result;
}

unint64_t sub_216C93604()
{
  result = qword_280E2B2F0;
  if (!qword_280E2B2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7F70);
    sub_216C06678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B2F0);
  }

  return result;
}

unint64_t sub_216C93690()
{
  result = qword_280E2A968;
  if (!qword_280E2A968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7F78);
    sub_216C931E8();
    sub_216C93314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A968);
  }

  return result;
}

uint64_t type metadata accessor for LibraryAlbumViewModel()
{
  result = qword_280E3A740;
  if (!qword_280E3A740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216C937B0()
{
  sub_21700C1E4();
  if (v0 <= 0x3F)
  {
    sub_216C9384C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ObjectGraph();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216C9384C()
{
  if (!qword_280E2A3B8)
  {
    sub_21700C2F4();
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2A3B8);
    }
  }
}

unint64_t sub_216C938A8()
{
  result = qword_27CAC7F80;
  if (!qword_27CAC7F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7F80);
  }

  return result;
}

uint64_t sub_216C9390C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_21700B804();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216C939CC, 0, 0);
}

uint64_t sub_216C939CC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0);
  v4 = swift_allocObject();
  v0[7] = v4;
  *(v4 + 16) = xmmword_21703DA30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB4D0);
  *(v4 + 32) = sub_21700B704();
  *(v4 + 40) = sub_21700B6F4();
  *(v4 + 48) = sub_21700B6E4();
  *(v4 + 56) = sub_21700B694();
  (*(v2 + 104))(v1, *MEMORY[0x277CD7D00], v3);
  v5 = swift_task_alloc();
  v0[8] = v5;
  v6 = sub_21700C1E4();
  v7 = sub_216C94184();
  *v5 = v0;
  v5[1] = sub_216C93B44;
  v8 = v0[6];
  v9 = v0[2];
  v10 = MEMORY[0x277CD82B8];
  v11 = MEMORY[0x277CD82A0];

  return MEMORY[0x282124810](v9, v4, v8, v6, v10, v11, v7);
}

uint64_t sub_216C93B44()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 72) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_216C93D1C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_216C93D1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_216C93D80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_21700C1E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = *(v2 + *(type metadata accessor for LibraryAlbumViewModel() + 24));

  sub_216BCA030(v13);
  (*(v6 + 16))(&v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  return sub_2168463B0(v8, v13, sub_216C940B4, v10, a2);
}

uint64_t sub_216C93EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21700C1E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4, v7);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  result = (*(v5 + 32))(v9 + v8, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *a2 = sub_216C94124;
  *(a2 + 8) = v9;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_216C94018(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2166DFAC0;

  return sub_216C9390C(a1);
}

uint64_t sub_216C940B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_21700C1E4() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_216C93EE8(v4, a1);
}

void *sub_216C94124()
{
  v1 = *(sub_21700C1E4() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_216A6C950(v2);
}

unint64_t sub_216C94184()
{
  result = qword_27CABB4C8;
  if (!qword_27CABB4C8)
  {
    sub_21700C1E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB4C8);
  }

  return result;
}

char *sub_216C9422C()
{
  OUTLINED_FUNCTION_2_1();
  swift_allocObject();
  return sub_216C94284();
}

char *sub_216C94284()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_1();
  *(v1 + *(v4 + 280)) = 0;
  _s18HighlightsProviderCMa();
  type metadata accessor for ObjectGraph();
  sub_21700E094();

  OUTLINED_FUNCTION_0_1();
  *(v1 + *(v5 + 272)) = v6;
  return sub_216B12724(v3, v2, v0 & 1);
}

uint64_t sub_216C9432C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v34 = a1;
  v39 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1F0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7F88);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7F90);
  OUTLINED_FUNCTION_1();
  v35 = v14;
  v36 = v15;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7F98);
  OUTLINED_FUNCTION_1();
  v37 = v19;
  v38 = v20;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  v23 = &v33 - v22;
  v24 = v3[2];
  v3[2] = v34;
  v3[3] = a2;

  sub_21667E91C(v24);
  sub_216BE5DB0();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5640);
  sub_217007DB4();
  swift_endAccess();
  sub_2166D9530(&qword_280E484A8, &qword_27CAC7F88);
  sub_217007E64();
  (*(v10 + 8))(v13, v8);
  sub_2166AF2EC();
  v25 = sub_21700EE84();
  v40 = v25;
  v26 = sub_21700EE64();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v26);
  sub_2166D9530(&qword_280E48578, &qword_27CAC7F90);
  sub_2166C0E74();
  v27 = v35;
  sub_217007E54();
  sub_2166C10E8(v7);

  (*(v36 + 8))(v18, v27);
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = *(v39 + 264);
  *(v29 + 24) = v28;
  sub_2166D9530(&qword_280E48530, &qword_27CAC7F98);
  v30 = v37;
  v31 = sub_217007E84();

  (*(v38 + 8))(v23, v30);
  *(v3 + *(*v3 + 280)) = v31;
}

uint64_t sub_216C947C0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_21700DA84();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  v14 = sub_21700CFB4();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  v20 = v19 - v18;
  sub_216F0DBDC(a1);
  v21 = MEMORY[0x277D837D0];
  v25 = MEMORY[0x277D837D0];
  *&v24 = 1701273968;
  *(&v24 + 1) = 0xE400000000000000;
  sub_2166EF9C4(&v24, v23);
  swift_isUniquelyReferenced_nonNull_native();
  sub_2166EF9D4();
  if (a4)
  {
    v25 = v21;
    *&v24 = a3;
    *(&v24 + 1) = a4;
    sub_2166EF9C4(&v24, v23);
    sub_21700DF14();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_144();
    sub_2166EF9D4();
  }

  sub_216F0E280();

  sub_21700DA74();
  sub_21700D564();

  (*(v9 + 8))(v13, v7);
  return (*(v16 + 8))(v20, v14);
}

uint64_t sub_216C949EC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v118 = a5;
  v125 = a4;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8148);
  OUTLINED_FUNCTION_1();
  v128 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_70(&v113 - v14);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB40);
  OUTLINED_FUNCTION_1();
  v116 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_70(&v113 - v17);
  v127 = sub_21700DA84();
  OUTLINED_FUNCTION_1();
  v124 = v18;
  v20 = MEMORY[0x28223BE20](v19);
  v120 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v119 = (&v113 - v23);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_70(&v113 - v24);
  v123 = sub_21700CFB4();
  OUTLINED_FUNCTION_1();
  v121 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v28 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = (&v113 - v30);
  v32 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_7();
  v38 = v37 - v36;
  v39 = MEMORY[0x277D837D0];
  v131 = a3;
  if (a7)
  {
    v145 = MEMORY[0x277D837D0];
    *&v144 = a6;
    *(&v144 + 1) = a7;
    v40 = OUTLINED_FUNCTION_4_126();
    sub_2166EF9C4(v40, v41);
    sub_21700DF14();
    sub_21700DF14();
    swift_isUniquelyReferenced_nonNull_native();
    v140 = a2;
    OUTLINED_FUNCTION_3_144();
    sub_2166EF9D4();
    v130 = v140;
  }

  else
  {
    v130 = a2;
    sub_21700DF14();
  }

  v42 = type metadata accessor for MusicMetrics.ClickFields(0);
  v133 = v42;
  if (*(a1 + *(v42 + 40)))
  {
    v43 = *(a1 + *(v42 + 40));
  }

  else
  {
    v43 = MEMORY[0x277D84F98];
  }

  LOBYTE(v146) = *(a1 + 17);
  MusicMetrics.ActionType.rawValue.getter();
  v145 = v39;
  *&v144 = v44;
  *(&v144 + 1) = v45;
  v46 = OUTLINED_FUNCTION_4_126();
  sub_2166EF9C4(v46, v47);
  sub_21700DF14();
  swift_isUniquelyReferenced_nonNull_native();
  v140 = v43;
  OUTLINED_FUNCTION_10();
  sub_2166EF9D4();
  v48 = v140;
  v49 = *(a1 + 32);
  if (v49 >> 60 != 15)
  {
    v50 = *(a1 + 24);
    v145 = MEMORY[0x277CC9318];
    *&v144 = v50;
    *(&v144 + 1) = v49;
    v51 = OUTLINED_FUNCTION_4_126();
    sub_2166EF9C4(v51, v52);
    sub_21677A3F0(v50, v49);
    swift_isUniquelyReferenced_nonNull_native();
    v140 = v48;
    sub_2166EF9D4();
    v48 = v140;
  }

  sub_216681B64(a1 + *(v133 + 36), v31, &qword_27CABA820);
  if (__swift_getEnumTagSinglePayload(v31, 1, v32) == 1)
  {
    sub_21669987C(v31, &qword_27CABA820);
  }

  else
  {
    (*(v34 + 32))(v38, v31, v32);
    v145 = v32;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v144);
    (*(v34 + 16))(boxed_opaque_existential_1, v38, v32);
    v54 = OUTLINED_FUNCTION_4_126();
    sub_2166EF9C4(v54, v55);
    swift_isUniquelyReferenced_nonNull_native();
    v140 = v48;
    OUTLINED_FUNCTION_10();
    sub_2166EF9D4();
    v48 = v140;
    (*(v34 + 8))(v38, v32);
  }

  v56 = *(a1 + 40);
  if (v56)
  {
    v114 = v48;
    v57 = sub_21700E384();
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    v60 = v56 + 64;
    v59 = *(v56 + 64);
    v147 = v58;
    v61 = 1 << *(v56 + 32);
    v62 = -1;
    if (v61 < 64)
    {
      v62 = ~(-1 << v61);
    }

    v63 = v62 & v59;
    v64 = (v61 + 63) >> 6;
    v113 = 0x8000000217080260;
    sub_21700DF14();
    v65 = 0;
    isUniquelyReferenced_nonNull_native = &unk_27CAC7FA0;
    v135 = v64;
    v134 = v56 + 64;
    v137 = a1;
    v136 = v56;
    if (v63)
    {
      while (1)
      {
LABEL_20:
        v68 = __clz(__rbit64(v63));
        v63 &= v63 - 1;
        v69 = v68 | (v65 << 6);
        v70 = *(v56 + 56);
        v56 = *(*(v56 + 48) + v69);
        sub_2166A6DF8(v70 + 32 * v69, &v144 + 8);
        LOBYTE(v144) = v56;
        v71 = OUTLINED_FUNCTION_4_126();
        sub_216681B64(v71, v72, isUniquelyReferenced_nonNull_native);
        a1 = 0xE600000000000000;
        v48 = 0x6E6F69746361;
        switch(v142)
        {
          case 1:
            v48 = 0x75536E6F69746361;
            a1 = 0xED00006570795462;
            break;
          case 2:
            a1 = 0xE500000000000000;
            v48 = 0x6F54646461;
            break;
          case 3:
            v48 = 0x614E747369747261;
            a1 = 0xEA0000000000656DLL;
            break;
          case 4:
            a1 = 0xE900000000000073;
            v48 = 0x6D61726150797562;
            break;
          case 5:
            v48 = 0xD000000000000013;
            a1 = v113;
            break;
          case 6:
            a1 = 0xEA00000000006D6FLL;
            v48 = 0x72466574656C6564;
            break;
          case 7:
            v48 = 0x657A696C61636F6CLL;
            a1 = 0xEE00656C74695464;
            break;
          case 8:
            v48 = 0x696E53636972796CLL;
            v73 = 1952804976;
            goto LABEL_36;
          case 9:
            a1 = 0xE400000000000000;
            v48 = 1684957547;
            break;
          case 10:
            v48 = 0x6D657449756E656DLL;
            v73 = 1701667150;
LABEL_36:
            a1 = v73 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 11:
            a1 = 0xEA00000000006F54;
            v48 = 0x657461676976616ELL;
            break;
          case 12:
            a1 = 0xE800000000000000;
            v48 = 0x6570795479616C70;
            break;
          case 13:
            v48 = 0x4E6E6F6974636573;
            a1 = 0xEB00000000656D61;
            break;
          case 14:
            a1 = 0xE700000000000000;
            v48 = 0x6E6F6974617473;
            break;
          case 15:
            a1 = 0xE500000000000000;
            v48 = 0x656C746974;
            break;
          default:
            break;
        }

        v31 = isUniquelyReferenced_nonNull_native;
        sub_216681B64(&v144, &v140, isUniquelyReferenced_nonNull_native);
        sub_2166EF9C4(&v141, v139);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v138 = v57;
        v74 = sub_2166AF66C(v48, a1);
        v76 = v57[2];
        v77 = (v75 & 1) == 0;
        v64 = v76 + v77;
        if (__OFADD__(v76, v77))
        {
          break;
        }

        v78 = v74;
        v56 = v75;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82A8);
        if (sub_21700F554())
        {
          v79 = sub_2166AF66C(v48, a1);
          if ((v56 & 1) != (v80 & 1))
          {
            result = sub_21700F824();
            __break(1u);
            return result;
          }

          v78 = v79;
        }

        if (v56)
        {

          v57 = v138;
          v81 = (v138[7] + 32 * v78);
          __swift_destroy_boxed_opaque_existential_1Tm(v81);
          sub_2166EF9C4(v139, v81);
          isUniquelyReferenced_nonNull_native = v31;
          sub_21669987C(&v144, v31);
        }

        else
        {
          v57 = v138;
          v138[(v78 >> 6) + 8] |= 1 << v78;
          v82 = (v57[6] + 16 * v78);
          *v82 = v48;
          v82[1] = a1;
          sub_2166EF9C4(v139, (v57[7] + 32 * v78));
          isUniquelyReferenced_nonNull_native = v31;
          sub_21669987C(&v144, v31);
          v83 = v57[2];
          v84 = __OFADD__(v83, 1);
          v85 = v83 + 1;
          if (v84)
          {
            goto LABEL_60;
          }

          v57[2] = v85;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v143);
        a1 = v137;
        v56 = v136;
        v64 = v135;
        v60 = v134;
        if (!v63)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:
      while (1)
      {
        v67 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          break;
        }

        if (v67 >= v64)
        {

          *&v146 = v57;
          sub_2166EF9C4(&v146, &v144);
          v86 = v114;
          swift_isUniquelyReferenced_nonNull_native();
          v142 = v86;
          OUTLINED_FUNCTION_10();
          sub_2166EF9D4();
          v48 = v142;
          goto LABEL_48;
        }

        v63 = *(v60 + 8 * v67);
        ++v65;
        if (v63)
        {
          v65 = v67;
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_60:
    __break(1u);
  }

  else
  {
LABEL_48:
    v87 = *(a1 + *(v133 + 44));
    v65 = v127;
    v63 = v124;
    v31 = v119;
    if (v87 != 8)
    {
      v145 = &type metadata for MusicMetrics.ActionContext;
      LOBYTE(v144) = v87;
      v88 = OUTLINED_FUNCTION_4_126();
      sub_2166EF9C4(v88, v89);
      swift_isUniquelyReferenced_nonNull_native();
      v140 = v48;
      OUTLINED_FUNCTION_10();
      sub_2166EF9D4();
      v48 = v140;
    }

    v56 = *a1;
    v64 = *(a1 + 8);
    LOBYTE(v144) = *(a1 + 16);
    isUniquelyReferenced_nonNull_native = MusicMetrics.TargetType.rawValue.getter();
    v57 = v90;
    if (qword_280E46040 == -1)
    {
      goto LABEL_51;
    }
  }

  swift_once();
LABEL_51:
  v91 = sub_21700CF84();
  v92 = __swift_project_value_buffer(v91, qword_280E73DB0);
  MEMORY[0x21CE9DD70](v56, v64, isUniquelyReferenced_nonNull_native, v57, v48, v92);

  v94 = *(a1 + 24);
  v93 = *(a1 + 32);
  sub_21700DA74();
  v95 = v125;
  if (v93 >> 60 != 15)
  {
    *&v144 = v94;
    *(&v144 + 1) = v93;
    sub_21677A404(v94, v93);
    if (qword_27CAB5E28 != -1)
    {
      swift_once();
    }

    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4150);
    __swift_project_value_buffer(v96, qword_27CB229F8);
    sub_21700DA24();
    v97 = OUTLINED_FUNCTION_6_103();
    v98(v97);
    sub_21677A510(v94, v93);
    v99 = OUTLINED_FUNCTION_5_117();
    v100(v99);
  }

  if (v95)
  {
    *&v144 = v95;
    *(&v144 + 1) = v118;
    swift_unknownObjectRetain();
    v101 = v115;
    sub_21700DA34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB60);
    sub_21700DA24();
    (*(v116 + 8))(v101, v117);
    v102 = OUTLINED_FUNCTION_6_103();
    v103(v102);
    swift_unknownObjectRelease();
    v104 = OUTLINED_FUNCTION_5_117();
    v105(v104);
  }

  *&v144 = v130;
  v106 = v126;
  sub_21700DA44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
  sub_21700DA24();
  (*(v128 + 8))(v106, v129);
  v107 = *(v63 + 8);
  v107(v31, v65);

  v108 = *(v63 + 32);
  v109 = OUTLINED_FUNCTION_5_117();
  v108(v109);
  v110 = v122;
  (v108)(v122, v31, v65);
  v111 = v132;
  sub_21700D564();

  v107(v110, v65);
  return (*(v121 + 8))(v111, v123);
}

uint64_t sub_216C95860@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC8028);
  OUTLINED_FUNCTION_36(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  v14 = type metadata accessor for MappedCatalogPage(0);
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
  v15 = sub_216C98294(&qword_280E3FFB0, type metadata accessor for MappedCatalogPage);
  sub_216C95998(a1, a2, v13, a3, v14, a4, v15, a5);
  return sub_216697664(v13, &qword_27CAC8028);
}

uint64_t sub_216C95998@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v245 = a7;
  v262 = a4;
  v254 = a3;
  v255 = a8;
  v257 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7088);
  OUTLINED_FUNCTION_36(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8_0(&v237 - v13);
  v238 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v247 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v256 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDC18);
  OUTLINED_FUNCTION_36(v18);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8_0(&v237 - v20);
  type metadata accessor for PlayActionItem();
  OUTLINED_FUNCTION_1();
  v267 = v22;
  v268 = v21;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_77();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v266 = &v237 - v27;
  v242 = type metadata accessor for PlayAction();
  OUTLINED_FUNCTION_1();
  v243 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7();
  v32 = v31 - v30;
  sub_21700F164();
  OUTLINED_FUNCTION_1();
  v252 = v34;
  v253 = v33;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v35);
  v251 = &v237 - v36;
  v258 = a5;
  v250 = *(a5 - 8);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_7();
  v249 = v39 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0);
  v41 = OUTLINED_FUNCTION_36(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_77();
  v241 = v42 - v43;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v44);
  v46 = &v237 - v45;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_6_4();
  v271 = v48;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_8_0(&v237 - v50);
  sub_217006924();
  OUTLINED_FUNCTION_1();
  v264 = v52;
  v265 = v51;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_77();
  v269 = v53 - v54;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_6_4();
  v261 = v56;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_6_4();
  v263 = v58;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v59);
  v244 = &v237 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  v62 = OUTLINED_FUNCTION_36(v61);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_77();
  v239 = v63 - v64;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v65);
  v67 = &v237 - v66;
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_6_4();
  v272 = v69;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v70);
  v72 = &v237 - v71;
  v73 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_7();
  v77 = (v76 - v75);
  v78 = *(a6 + 32);
  v259 = a1;
  v260 = a6;
  v78(v262, a6);
  v270 = v73;
  OUTLINED_FUNCTION_31_2(v72, 1, v73);
  if (v82)
  {
    v79 = &qword_27CAB6A00;
    v80 = v72;
  }

  else
  {
    sub_2168ED900(v72, v77);
    v81 = *v77;
    v82 = v81 == 14 || v81 == 4;
    if (!v82)
    {
      OUTLINED_FUNCTION_0_217();
      sub_216C9823C(v77, v146);
      goto LABEL_13;
    }

    v83 = v246;
    sub_216C6C5E8(v246);
    v84 = v265;
    OUTLINED_FUNCTION_31_2(v83, 1, v265);
    if (!v82)
    {
      v142 = v264;
      v143 = v244;
      (*(v264 + 32))(v244, v83, v84);
      sub_216C96BAC(v143, v259, v257, v262, v260, v255);
      (*(v142 + 8))(v143, v84);
      OUTLINED_FUNCTION_0_217();
      return sub_216C9823C(v77, v144);
    }

    OUTLINED_FUNCTION_0_217();
    sub_216C9823C(v77, v85);
    v79 = &unk_27CABF9C0;
    v80 = v83;
  }

  sub_216697664(v80, v79);
LABEL_13:
  v86 = v260;
  v87 = v262;
  v88 = (*(v260 + 3))(v262, v260);
  if (!v89)
  {
    v98 = (*(v86 + 2))(v87, v86);
    if (!v98)
    {
LABEL_85:
      type metadata accessor for PlaybackItemsPresenter.Error(0);
      OUTLINED_FUNCTION_2_153();
      sub_216C98294(v203, v204);
      OUTLINED_FUNCTION_3_0();
      goto LABEL_86;
    }

    v99 = *(v98 + 16);
    if (!v99)
    {

      v199 = MEMORY[0x277D84F90];
      v150 = v247;
      v148 = v255;
      v149 = v256;
      v151 = v269;
LABEL_81:
      if (*(v199 + 16))
      {
        MEMORY[0x28223BE20](v147);
        *(&v237 - 2) = v200;
        v201 = v248;
        v202 = sub_216A95A74(sub_216C9819C, (&v237 - 4), v199);
        if (v201)
        {
        }

        v153 = v202;
        v272 = v199;
        v205 = (*(v260 + 2))(v262);
        if (v205)
        {
          v206 = v240;
          sub_216CE0898(v205, v240);
          v207 = v206;

          v208 = OUTLINED_FUNCTION_16_1();
          v209 = v268;
          OUTLINED_FUNCTION_31_2(v208, v210, v268);
          if (v82)
          {

            v211 = &qword_27CABDC18;
            v212 = v207;
          }

          else
          {
            v213 = v239;
            sub_216919014(v207 + *(v209 + 24), v239);
            OUTLINED_FUNCTION_1_186();
            sub_216C9823C(v207, v214);
            OUTLINED_FUNCTION_31_2(v213, 1, v270);
            if (!v215)
            {
              v218 = v241;
              sub_216C6C5E8(v241);
              OUTLINED_FUNCTION_0_217();
              sub_216C9823C(v213, v219);
              v220 = OUTLINED_FUNCTION_16_1();
              v221 = v265;
              OUTLINED_FUNCTION_31_2(v220, v222, v265);
              if (!v223)
              {
                (*(v264 + 32))(v151, v218, v221);
                v224 = v237;
                sub_217006A84();
                v225 = v224;
                v226 = OUTLINED_FUNCTION_16_1();
                v227 = v151;
                v151 = v238;
                OUTLINED_FUNCTION_31_2(v226, v228, v238);
                if (v229)
                {

                  sub_216697664(v225, &qword_27CAB7088);
                  type metadata accessor for PlaybackItemsPresenter.Error(0);
                  OUTLINED_FUNCTION_2_153();
                  sub_216C98294(v230, v231);
                  OUTLINED_FUNCTION_3_0();
                  v232 = v264;
                  (*(v264 + 16))(v233, v227, v221);
                  swift_storeEnumTagMultiPayload();
                  swift_willThrow();
                  return (*(v232 + 8))(v227, v221);
                }

                (*(v264 + 8))(v227, v221);
                v234 = v225;
                v135 = *(v150 + 32);
                (v135)(v149, v234, v151);
                v235 = *(v272 + 16);

                if (v235 != 1)
                {
                  goto LABEL_112;
                }

                (v135)(v148, v149, v151);
                OUTLINED_FUNCTION_20_57();
                return swift_storeEnumTagMultiPayload();
              }

LABEL_98:
              sub_216697664(v218, &unk_27CABF9C0);
              *v148 = v153;
              OUTLINED_FUNCTION_20_57();
              return swift_storeEnumTagMultiPayload();
            }

            v211 = &qword_27CAB6A00;
            v212 = v213;
          }

          sub_216697664(v212, v211);
        }

        else
        {
        }

        v218 = v241;
        v216 = OUTLINED_FUNCTION_16_1();
        __swift_storeEnumTagSinglePayload(v216, v217, 1, v265);
        goto LABEL_98;
      }

      goto LABEL_85;
    }

    v100 = *(v268 + 24);
    OUTLINED_FUNCTION_21_1();
    v266 = v101;
    v103 = &v101[v102];
    v104 = v265;
    v271 = (v264 + 32);
    v272 = MEMORY[0x277D84F90];
    v106 = *(v105 + 72);
    v267 = v100;
    while (1)
    {
      OUTLINED_FUNCTION_5_118();
      sub_216C981DC(v103, v25, v107);
      sub_216919014(v25 + v100, v67);
      OUTLINED_FUNCTION_31_2(v67, 1, v270);
      if (v82)
      {
        OUTLINED_FUNCTION_1_186();
        sub_216C9823C(v25, v108);
        sub_216697664(v67, &qword_27CAB6A00);
        __swift_storeEnumTagSinglePayload(v46, 1, 1, v104);
      }

      else
      {
        sub_216C6C5E8(v46);
        OUTLINED_FUNCTION_1_186();
        sub_216C9823C(v25, v109);
        OUTLINED_FUNCTION_0_217();
        sub_216C9823C(v67, v110);
        OUTLINED_FUNCTION_31_2(v46, 1, v104);
        if (!v111)
        {
          v112 = v104;
          v113 = *v271;
          (*v271)(v261, v46, v112);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native)
          {
            v115 = v272;
          }

          else
          {
            v122 = OUTLINED_FUNCTION_29_0();
            sub_2169375D4(v122, v123, v124, v125);
            v115 = v126;
          }

          v117 = *(v115 + 16);
          v116 = *(v115 + 24);
          if (v117 >= v116 >> 1)
          {
            sub_2169375D4(v116 > 1, v117 + 1, 1, v115);
            v115 = v127;
          }

          *(v115 + 16) = v117 + 1;
          v118 = v265;
          OUTLINED_FUNCTION_21_1();
          v121 = OUTLINED_FUNCTION_16_60(v119, v120);
          v113(v121, v261, v118);
          v104 = v118;
          v100 = v267;
          goto LABEL_31;
        }
      }

      sub_216697664(v46, &unk_27CABF9C0);
LABEL_31:
      v103 += v106;
      if (!--v99)
      {

        v148 = v255;
        v149 = v256;
        v150 = v247;
        v151 = v269;
        goto LABEL_80;
      }
    }
  }

  v90 = v88;
  v91 = v89;
  v93 = v251;
  v92 = v252;
  v94 = v253;
  (*(v252 + 16))(v251, v254, v253);
  v95 = v258;
  OUTLINED_FUNCTION_31_2(v93, 1, v258);
  if (v82)
  {

    (*(v92 + 8))(v93, v94);
    type metadata accessor for PlaybackItemsPresenter.Error(0);
    OUTLINED_FUNCTION_2_153();
    sub_216C98294(v96, v97);
    OUTLINED_FUNCTION_3_0();
LABEL_86:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  (*(v250 + 32))(v249, v93, v95);
  v128 = sub_216EE9CCC(v90, v91, v95, v245);

  v129 = *(v128 + 16);
  if (v129)
  {
    v130 = *(v242 + 20);
    OUTLINED_FUNCTION_21_1();
    v261 = v128;
    v132 = v128 + v131;
    v134 = *(v133 + 72);
    v135 = MEMORY[0x277D84F90];
    v136 = v272;
    do
    {
      sub_216C981DC(v132, v32, type metadata accessor for PlayAction);
      v137 = *(v32 + v130);
      sub_21700DF14();
      sub_216C9823C(v32, type metadata accessor for PlayAction);
      if (v137)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_29_0();
          sub_216937748();
          v135 = v140;
        }

        v139 = *(v135 + 16);
        v138 = *(v135 + 24);
        if (v139 >= v138 >> 1)
        {
          OUTLINED_FUNCTION_17_62(v138);
          sub_216937748();
          v135 = v141;
        }

        *(v135 + 16) = v139 + 1;
        *(v135 + 8 * v139 + 32) = v137;
        v136 = v272;
      }

      v132 += v134;
      --v129;
    }

    while (v129);
  }

  else
  {

    v135 = MEMORY[0x277D84F90];
    v136 = v272;
  }

  v152 = 0;
  v153 = *(v135 + 16);
  v148 = MEMORY[0x277D84F90];
  v149 = v256;
  v151 = v269;
  while (1)
  {
    v154 = v271;
    if (v153 == v152)
    {

      v164 = *(v148 + 2);
      if (v164)
      {
        v165 = *(v268 + 24);
        OUTLINED_FUNCTION_21_1();
        v167 = &v148[v166];
        v168 = v265;
        v261 = (v264 + 32);
        v272 = MEMORY[0x277D84F90];
        v170 = *(v169 + 72);
        v171 = v266;
        while (1)
        {
          OUTLINED_FUNCTION_5_118();
          sub_216C981DC(v167, v171, v172);
          sub_216919014(v171 + v165, v136);
          OUTLINED_FUNCTION_31_2(v136, 1, v270);
          if (v82)
          {
            OUTLINED_FUNCTION_1_186();
            sub_216C9823C(v171, v173);
            sub_216697664(v136, &qword_27CAB6A00);
            v174 = OUTLINED_FUNCTION_16_1();
            __swift_storeEnumTagSinglePayload(v174, v175, 1, v168);
          }

          else
          {
            sub_216C6C5E8(v154);
            v171 = v266;
            OUTLINED_FUNCTION_1_186();
            sub_216C9823C(v171, v176);
            OUTLINED_FUNCTION_0_217();
            sub_216C9823C(v136, v177);
            v178 = OUTLINED_FUNCTION_16_1();
            OUTLINED_FUNCTION_31_2(v178, v179, v168);
            if (!v180)
            {
              v181 = *v261;
              (*v261)(v263, v154, v168);
              v182 = swift_isUniquelyReferenced_nonNull_native();
              if (v182)
              {
                v183 = v272;
              }

              else
              {
                v189 = OUTLINED_FUNCTION_29_0();
                sub_2169375D4(v189, v190, v191, v192);
                v183 = v193;
              }

              v185 = *(v183 + 16);
              v184 = *(v183 + 24);
              if (v185 >= v184 >> 1)
              {
                v194 = OUTLINED_FUNCTION_17_62(v184);
                sub_2169375D4(v194, v195, v196, v197);
                v183 = v198;
              }

              *(v183 + 16) = v185 + 1;
              OUTLINED_FUNCTION_21_1();
              v188 = OUTLINED_FUNCTION_16_60(v186, v187);
              v168 = v265;
              v181(v188);
              v171 = v266;
              v154 = v271;
              goto LABEL_75;
            }
          }

          sub_216697664(v154, &unk_27CABF9C0);
LABEL_75:
          v167 += v170;
          if (!--v164)
          {

            v149 = v256;
            v151 = v269;
            goto LABEL_79;
          }
        }
      }

      v272 = MEMORY[0x277D84F90];
LABEL_79:
      v147 = (*(v250 + 8))(v249, v258);
      v148 = v255;
      v150 = v247;
LABEL_80:
      v199 = v272;
      goto LABEL_81;
    }

    if (v152 >= *(v135 + 16))
    {
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      v236 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7FB0) + 48);
      (v135)(v148, v149, v151);
      *&v148[v236] = v153;
      OUTLINED_FUNCTION_20_57();
      return swift_storeEnumTagMultiPayload();
    }

    v151 = *(v135 + 8 * v152 + 32);
    v155 = *(v151 + 16);
    v156 = *(v148 + 2);
    v157 = v156 + v155;
    if (__OFADD__(v156, v155))
    {
      goto LABEL_109;
    }

    sub_21700DF14();
    v158 = swift_isUniquelyReferenced_nonNull_native();
    if (!v158 || v157 > *(v148 + 3) >> 1)
    {
      if (v156 <= v157)
      {
        v159 = v156 + v155;
      }

      else
      {
        v159 = v156;
      }

      sub_216937708(v158, v159, 1, v148);
      v148 = v160;
    }

    v136 = v272;
    if (*(v151 + 16))
    {
      break;
    }

    v151 = v269;
    if (v155)
    {
      goto LABEL_110;
    }

LABEL_61:
    ++v152;
  }

  if ((*(v148 + 3) >> 1) - *(v148 + 2) < v155)
  {
    goto LABEL_111;
  }

  swift_arrayInitWithCopy();

  v151 = v269;
  if (!v155)
  {
    goto LABEL_61;
  }

  v161 = *(v148 + 2);
  v162 = __OFADD__(v161, v155);
  v163 = v161 + v155;
  if (!v162)
  {
    *(v148 + 2) = v163;
    goto LABEL_61;
  }

  __break(1u);
  return result;
}

uint64_t sub_216C96BAC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X8>)
{
  v159 = a6;
  v163 = a5;
  v161 = a2;
  v162 = a4;
  v8 = sub_21700BA44();
  v146 = *(v8 - 8);
  v147 = v8;
  MEMORY[0x28223BE20](v8);
  v142 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_21700C924();
  v137 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v145 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21700C1E4();
  v143 = *(v11 - 8);
  v144 = v11;
  MEMORY[0x28223BE20](v11);
  v148 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_21700C084();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v136 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDFF8);
  MEMORY[0x28223BE20](v150);
  v155 = &v131 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDC18);
  MEMORY[0x28223BE20](v15 - 8);
  v158 = &v131 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v17 - 8);
  v157 = &v131 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0);
  MEMORY[0x28223BE20](v19 - 8);
  v160 = (&v131 - v20);
  v21 = sub_217006924();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v156 = &v131 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7088);
  MEMORY[0x28223BE20](v24 - 8);
  v152 = &v131 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v131 - v27;
  v29 = sub_2170067A4();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v149 = &v131 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v138 = &v131 - v33;
  MEMORY[0x28223BE20](v34);
  v153 = &v131 - v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v131 - v37;
  v154 = a3;
  sub_217006A84();
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    sub_216697664(v28, &qword_27CAB7088);
    type metadata accessor for PlaybackItemsPresenter.Error(0);
    sub_216C98294(&qword_27CAC7FA8, type metadata accessor for PlaybackItemsPresenter.Error);
    swift_allocError();
    (*(v22 + 16))(v39, a1, v21);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v134 = a1;
  v135 = v22;
  v151 = v21;
  v133 = v30;
  v41 = *(v30 + 32);
  v41(v38, v28, v29);
  v42 = (*(v163 + 2))(v162);
  v43 = v29;
  if (!v42)
  {
    goto LABEL_9;
  }

  v44 = v158;
  sub_216CE0898(v42, v158);

  v45 = type metadata accessor for PlayActionItem();
  if (__swift_getEnumTagSinglePayload(v44, 1, v45) == 1)
  {
    v46 = &qword_27CABDC18;
    v47 = v44;
LABEL_8:
    sub_216697664(v47, v46);
LABEL_9:
    v50 = v160;
    __swift_storeEnumTagSinglePayload(v160, 1, 1, v151);
LABEL_10:
    sub_216697664(v50, &unk_27CABF9C0);
LABEL_11:
    v41(v159, v38, v43);
    type metadata accessor for PlaybackItemsPresenter.PlaybackItems(0);
    return swift_storeEnumTagMultiPayload();
  }

  v48 = v157;
  sub_216919014(v44 + *(v45 + 24), v157);
  sub_216C9823C(v44, type metadata accessor for PlayActionItem);
  v49 = type metadata accessor for ContentDescriptor();
  if (__swift_getEnumTagSinglePayload(v48, 1, v49) == 1)
  {
    v46 = &qword_27CAB6A00;
    v47 = v48;
    goto LABEL_8;
  }

  v50 = v160;
  sub_216C6C5E8(v160);
  sub_216C9823C(v48, type metadata accessor for ContentDescriptor);
  v51 = v151;
  if (__swift_getEnumTagSinglePayload(v50, 1, v151) == 1)
  {
    goto LABEL_10;
  }

  v52 = v135;
  v53 = v156;
  (*(v135 + 32))(v156, v50, v51);
  sub_216C98294(&qword_27CAC7FB8, MEMORY[0x277D2A5E8]);
  if (sub_21700E494())
  {
    (*(v52 + 8))(v53, v51);
    goto LABEL_11;
  }

  v54 = v152;
  sub_217006A84();
  if (__swift_getEnumTagSinglePayload(v54, 1, v43) == 1)
  {
    sub_216697664(v54, &qword_27CAB7088);
    type metadata accessor for PlaybackItemsPresenter.Error(0);
    sub_216C98294(&qword_27CAC7FA8, type metadata accessor for PlaybackItemsPresenter.Error);
    swift_allocError();
    (*(v52 + 16))(v55, v53, v51);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v52 + 8))(v53, v51);
    return (*(v133 + 8))(v38, v43);
  }

  v56 = v153;
  v41(v153, v54, v43);
  v57 = *(v150 + 48);
  v58 = v43;
  v59 = v133;
  v60 = *(v133 + 16);
  v61 = v155;
  v60(v155, v56, v43);
  v163 = v38;
  v60(&v57[v61], v38, v43);
  v62 = v59[11];
  v63 = v62(v61, v43);
  if (v63 == *MEMORY[0x277D2A3B8])
  {
    v64 = v149;
    v60(v149, v61, v43);
    v65 = v64;
    v66 = v59[12];
    v66(v65, v43);
    v67 = v62(&v57[v61], v43);
    v68 = v159;
    if (v67 == *MEMORY[0x277D2A400])
    {
      v69 = v133 + 8;
      v70 = *(v133 + 8);
      v70(v153, v58);
      v162 = v70;
      v133 = v69;
      (*(v135 + 8))(v156, v151);
      v70(v163, v58);
      v71 = v155;
      v66(&v57[v155], v58);
      v72 = v147;
      v73 = *(v146 + 32);
      v74 = v142;
      v73(v142, v149, v147);
      v163 = *(v143 + 32);
      v75 = v71;
      v76 = &v57[v71];
      v77 = v144;
      (v163)(v148, v76, v144);
      v161 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7FD0) + 48);
      v78 = v159;
      v73(v159, v74, v72);
      v79 = *MEMORY[0x277CD8350];
      v80 = sub_21700C2F4();
      (*(*(v80 - 8) + 104))(v78, v79, v80);
      (v163)(&v161[v78], v148, v77);
      type metadata accessor for PlaybackItemsPresenter.ContainerItem(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for PlaybackItemsPresenter.PlaybackItems(0);
      swift_storeEnumTagMultiPayload();
      v81 = v75;
      v82 = v58;
      return (v162)(v81, v82);
    }

    v99 = v155;
    v132 = v43;
    if (v67 == *MEMORY[0x277D2A440])
    {
      v100 = v66;
      v101 = v133 + 8;
      v102 = *(v133 + 8);
      v103 = v132;
      v102(v153, v132);
      v162 = v102;
      v133 = v101;
      (*(v135 + 8))(v156, v151);
      v102(v163, v103);
      v100(&v57[v99], v103);
      v104 = v147;
      v105 = *(v146 + 32);
      v106 = v142;
      v105(v142, v149, v147);
      v107 = *(v137 + 32);
      v108 = &v57[v99];
      v109 = v141;
      v107(v145, v108, v141);
      v163 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7FC8) + 48);
      v105(v68, v106, v104);
      v110 = *MEMORY[0x277CD8540];
      v111 = sub_21700C894();
      (*(*(v111 - 8) + 104))(v68, v110, v111);
      v107(&v163[v68], v145, v109);
      type metadata accessor for PlaybackItemsPresenter.ContainerItem(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for PlaybackItemsPresenter.PlaybackItems(0);
      swift_storeEnumTagMultiPayload();
      v81 = v155;
      v82 = v132;
      return (v162)(v81, v82);
    }

    (*(v146 + 8))(v149, v147);
LABEL_30:
    v59 = v133;
    goto LABEL_31;
  }

  v132 = v43;
  if (v63 == *MEMORY[0x277D2A3F8])
  {
    v83 = v138;
    v84 = v132;
    v60(v138, v61, v132);
    v161 = v59[12];
    (v161)(v83, v84);
    v162 = v57;
    v85 = v62(&v57[v61], v84);
    if (v85 == *MEMORY[0x277D2A400])
    {
      v86 = v133 + 8;
      v87 = *(v133 + 8);
      v87(v153, v84);
      v160 = v87;
      v133 = v86;
      (*(v135 + 8))(v156, v151);
      v87(v163, v84);
      v88 = v162;
      v89 = v155;
      (v161)(&v162[v155], v84);
      v90 = *(v139 + 32);
      v91 = v136;
      v92 = v140;
      v90(v136, v83, v140);
      v93 = v144;
      v94 = *(v143 + 32);
      v94(v148, &v88[v89], v144);
      v95 = v94;
      v163 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7FD0) + 48);
      v96 = v159;
      v90(v159, v91, v92);
      v97 = *MEMORY[0x277CD8368];
      v98 = sub_21700C2F4();
      (*(*(v98 - 8) + 104))(v96, v97, v98);
      v95(&v163[v96], v148, v93);
      type metadata accessor for PlaybackItemsPresenter.ContainerItem(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for PlaybackItemsPresenter.PlaybackItems(0);
      swift_storeEnumTagMultiPayload();
      return (v160)(v155, v132);
    }

    v113 = v161;
    v112 = v162;
    v114 = v155;
    if (v85 == *MEMORY[0x277D2A440])
    {
      v115 = *(v133 + 8);
      v116 = v132;
      v115(v153, v132);
      v160 = v115;
      (*(v135 + 8))(v156, v151);
      v115(v163, v116);
      v113(&v112[v114], v116);
      v117 = *(v139 + 32);
      v118 = v136;
      v119 = v140;
      v117(v136, v83, v140);
      v120 = *(v137 + 32);
      v120(v145, &v112[v114], v141);
      v163 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7FC8) + 48);
      v121 = v159;
      v117(v159, v118, v119);
      v122 = *MEMORY[0x277CD8548];
      v123 = sub_21700C894();
      (*(*(v123 - 8) + 104))(v121, v122, v123);
      v120(&v163[v121], v145, v141);
      type metadata accessor for PlaybackItemsPresenter.ContainerItem(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for PlaybackItemsPresenter.PlaybackItems(0);
      swift_storeEnumTagMultiPayload();
      return (v160)(v155, v132);
    }

    (*(v139 + 8))(v83, v140);
    goto LABEL_30;
  }

LABEL_31:
  type metadata accessor for PlaybackItemsPresenter.Error(0);
  sub_216C98294(&qword_27CAC7FA8, type metadata accessor for PlaybackItemsPresenter.Error);
  swift_allocError();
  v125 = v124;
  v126 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7FC0) + 48);
  v127 = v153;
  v128 = v132;
  v60(v125, v153, v132);
  v129 = v163;
  v60(v125 + v126, v163, v128);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v130 = v59[1];
  v130(v127, v128);
  (*(v135 + 8))(v156, v151);
  v130(v129, v128);
  return sub_216697664(v155, &qword_27CABDFF8);
}

uint64_t sub_216C97FB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7088);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  sub_217006A84();
  v9 = sub_2170067A4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    return (*(*(v9 - 8) + 32))(a3, v8, v9);
  }

  sub_216697664(v8, &qword_27CAB7088);
  type metadata accessor for PlaybackItemsPresenter.Error(0);
  sub_216C98294(&qword_27CAC7FA8, type metadata accessor for PlaybackItemsPresenter.Error);
  v10 = swift_allocError();
  v12 = v11;
  v13 = sub_217006924();
  (*(*(v13 - 8) + 16))(v12, a1, v13);
  swift_storeEnumTagMultiPayload();
  result = swift_willThrow();
  *a2 = v10;
  return result;
}

uint64_t sub_216C981DC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216C9823C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216C98294(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216C982FC()
{
  v0 = sub_217006924();
  if (v1 <= 0x3F)
  {
    sub_216C98388();
    if (v3 > 0x3F)
    {
      return v2;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v0;
}

void sub_216C98388()
{
  if (!qword_27CAC7FE8)
  {
    sub_2170067A4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CAC7FE8);
    }
  }
}

void sub_216C98400()
{
  sub_216C984D4(319, &qword_27CAC8000, MEMORY[0x277CD83B8], MEMORY[0x277CD82C8]);
  if (v0 <= 0x3F)
  {
    sub_216C984D4(319, &qword_27CAC8008, MEMORY[0x277CD8560], MEMORY[0x277CD8608]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_216C984D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_216C98554()
{
  type metadata accessor for PlaybackItemsPresenter.ContainerItem(319);
  if (v0 <= 0x3F)
  {
    sub_216C985F0();
    if (v1 <= 0x3F)
    {
      sub_2170067A4();
      if (v2 <= 0x3F)
      {
        sub_2166E1BD4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_216C985F0()
{
  if (!qword_27CAC8020)
  {
    sub_2170067A4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A38);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CAC8020);
    }
  }
}

MusicUI::SearchScope_optional __swiftcall SearchScope.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21700F5E4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

void sub_216C986DC()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for MusicMetrics.ClickFields(0);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB50);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - v9;
  v11 = sub_21700D574();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v17 = v16 - v15;
  v18 = OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_objectGraph;
  if (!*(v0 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_objectGraph))
  {
    goto LABEL_6;
  }

  v43 = *v3;
  type metadata accessor for MusicPageMetricsProvider();

  sub_21700D4B4();

  v19 = v44;
  if (!v44)
  {
    goto LABEL_6;
  }

  v20 = OBJC_IVAR____TtC7MusicUI24MusicPageMetricsProvider_pageMetrics;
  swift_beginAccess();
  v21 = sub_21700D194();
  if (__swift_getEnumTagSinglePayload(v19 + v20, 1, v21))
  {
    swift_endAccess();
LABEL_5:

LABEL_6:
    if (qword_27CAB6018 != -1)
    {
      OUTLINED_FUNCTION_2_154();
    }

    v22 = sub_217007CA4();
    __swift_project_value_buffer(v22, qword_27CAC8030);
    v23 = sub_217007C84();
    v24 = sub_21700ED84();
    if (os_log_type_enabled(v23, v24))
    {
      *OUTLINED_FUNCTION_43() = 0;
      OUTLINED_FUNCTION_50_0(&dword_216679000, v25, v26, "Click event was not reported because no page fields were found");
      OUTLINED_FUNCTION_6();
    }

    goto LABEL_11;
  }

  v27 = sub_21700D0F4();
  swift_endAccess();
  if (!v27)
  {
    goto LABEL_5;
  }

  v42 = v27;
  if (*(v1 + v18))
  {

    sub_21700D4B4();

    if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
    {
      (*(v13 + 32))(v17, v10, v11);
      if (v43)
      {
        v35 = 0x7262694C72756F59;
      }

      else
      {
        v35 = 0x73754D656C707041;
      }

      if (v43)
      {
        v36 = 0xEB00000000797261;
      }

      else
      {
        v36 = 0xEA00000000006369;
      }

      sub_217005EF4();
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
      *v7 = v35;
      *(v7 + 8) = v36;
      *(v7 + 16) = 3842;
      *(v7 + 24) = xmmword_217029BA0;
      *(v7 + 40) = 0;
      *(v7 + *(v4 + 44)) = 8;
      *(v7 + *(v4 + 40)) = 0;
      sub_216C949EC(v7, v42, v17, *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_impressionTracker), *(v1 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_impressionTracker + 8), 0x686372616553, 0xE600000000000000);

      sub_216C9CFB4(v7);
      (*(v13 + 8))(v17, v11);
      goto LABEL_11;
    }
  }

  else
  {

    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v11);
  }

  sub_2166997CC(v10, &unk_27CABFB50);
  if (qword_27CAB6018 != -1)
  {
    OUTLINED_FUNCTION_2_154();
  }

  v31 = sub_217007CA4();
  __swift_project_value_buffer(v31, qword_27CAC8030);
  v32 = sub_217007C84();
  v33 = sub_21700ED84();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = OUTLINED_FUNCTION_43();
    *v34 = 0;
    _os_log_impl(&dword_216679000, v32, v33, "Click event was not reported because no metrics pipeline was provided", v34, 2u);
    OUTLINED_FUNCTION_6();
  }

LABEL_11:
  OUTLINED_FUNCTION_26();
}