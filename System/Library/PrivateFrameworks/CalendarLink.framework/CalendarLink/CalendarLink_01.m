uint64_t (*static TransferableSourceEntity.typeDisplayRepresentation.modify())()
{
  if (qword_27ECC16D8 != -1)
  {
    swift_once();
  }

  v0 = sub_2428B3338();
  __swift_project_value_buffer(v0, qword_27ECC2070);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2427DC968@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC16D8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC2070);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_2427DCA28(uint64_t a1)
{
  if (qword_27ECC16D8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC2070);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_2427DCB0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  sub_2428B2948();
  result = sub_2428B2918();
  qword_27ECC2088 = result;
  return result;
}

uint64_t static TransferableSourceEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECC16E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27ECC2088;
  return sub_2428B2F38();
}

uint64_t static TransferableSourceEntity.defaultQuery.setter(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27ECC16E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECC2088 = v1;
}

uint64_t (*static TransferableSourceEntity.defaultQuery.modify())()
{
  if (qword_27ECC16E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2427DCD04@<X0>(void *a1@<X8>)
{
  if (qword_27ECC16E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27ECC2088;
  return sub_2428B2F38();
}

uint64_t sub_2427DCD84(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27ECC16E0;
  sub_2428B2F38();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECC2088 = v1;
}

uint64_t static TransferableSourceEntity.transferRepresentation.getter()
{
  v0 = sub_2428B4418();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2428B4408();
  type metadata accessor for TransferableSourceEntity();
  sub_2427DD57C(&qword_27ECC2090, type metadata accessor for TransferableSourceEntity);
  return sub_2428B41A8();
}

uint64_t sub_2427DCF10()
{
  v1 = *(v0 + 16);
  v2 = sub_2428B3498();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_2428B3488();
  sub_2428B3E28();
  sub_2427DD57C(&qword_27ECC2128, MEMORY[0x277CF7BC0]);
  v5 = sub_2428B3478();
  v7 = v6;

  v8 = *(v0 + 8);

  return v8(v5, v7);
}

uint64_t type metadata accessor for TransferableSourceEntity()
{
  result = qword_27ECC20F8;
  if (!qword_27ECC20F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2427DD178()
{
  result = qword_27ECC20B0;
  if (!qword_27ECC20B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC20B0);
  }

  return result;
}

uint64_t sub_2427DD1E8()
{
  v0 = sub_2428B4418();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2428B4408();
  return sub_2428B41A8();
}

uint64_t sub_2427DD324@<X0>(uint64_t *a1@<X8>)
{
  result = _s12CalendarLink24TransferableSourceEntityV2idSSvg_0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2427DD390(uint64_t a1)
{
  v2 = sub_2427DD57C(&qword_27ECC2120, type metadata accessor for TransferableSourceEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_2427DD46C(uint64_t a1)
{
  v2 = sub_2427DD57C(&qword_27ECC20D0, type metadata accessor for TransferableSourceEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_2427DD510()
{
  result = sub_2428B3E28();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2427DD57C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2427DD628(uint64_t a1, uint64_t *a2)
{
  v4 = sub_2428B3688();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v12 = *(v5 + 16);
  v12(&v16 - v10, a1, v4);
  v13 = *a2;
  v14 = a2[1];
  v12(v9, v11, v4);
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B4388();
  (*(v5 + 8))(v11, v4);
}

uint64_t FetchTransferableEventsInRangeIntentRepresentation.rangeStart.setter(uint64_t a1)
{
  v3 = sub_2428B3688();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = *v1;
  (*(v4 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  sub_2428B4388();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*FetchTransferableEventsInRangeIntentRepresentation.rangeStart.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_2428B4368();
  return sub_2427CBEA8;
}

uint64_t sub_2427DD934(uint64_t a1, uint64_t *a2)
{
  v4 = sub_2428B3688();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v12 = *(v5 + 16);
  v12(&v16 - v10, a1, v4);
  v14 = *a2;
  v13 = a2[1];
  v12(v9, v11, v4);
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B4388();
  (*(v5 + 8))(v11, v4);
}

uint64_t FetchTransferableEventsInRangeIntentRepresentation.rangeEnd.setter(uint64_t a1)
{
  v3 = sub_2428B3688();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = *(v1 + 8);
  (*(v4 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  sub_2428B4388();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*FetchTransferableEventsInRangeIntentRepresentation.rangeEnd.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t FetchTransferableEventsInRangeIntentRepresentation.init(rangeStart:rangeEnd:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v26 = a1;
  v27 = a2;
  v25 = a3;
  v5 = sub_2428B3688();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = v6[2];
  v13(&v24 - v11, a1, v5);
  v13(v10, v12, v5);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2130, &qword_2428B7880);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_2428B4358();
  v18 = v6[1];
  v18(v12, v5);
  *a3 = v17;
  v19 = v27;
  v13(v12, v27, v5);
  v13(v10, v12, v5);
  v20 = *(v14 + 48);
  v21 = *(v14 + 52);
  swift_allocObject();
  v22 = sub_2428B4358();
  v18(v19, v5);
  v18(v26, v5);
  result = (v18)(v12, v5);
  v25[1] = v22;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2427DDE44(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2427DDE8C(uint64_t result, int a2, int a3)
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

uint64_t AppIntent.effectiveSpan(for:spanParameter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2427DDF78, 0, 0);
}

uint64_t sub_2427DDF78()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_2427DE3E4();
  v3 = sub_2428B46B8();
  v4 = [objc_opt_self() spanDecisionInfoForEvents_];
  *(v0 + 48) = v4;

  sub_2428B2DC8();
  if (*(v0 + 80) != 3)
  {
    if (*(v0 + 80))
    {
      v5 = [v4 proposeFuture];

      if (v5)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }

LABEL_14:
      v15 = *(v0 + 40);
      **(v0 + 16) = v6;

      v16 = *(v0 + 8);

      return v16();
    }

LABEL_13:

    v6 = 0;
    goto LABEL_14;
  }

  if (([v4 shouldRequestSpan] & 1) == 0)
  {
    goto LABEL_13;
  }

  v7 = *(v0 + 40);
  if ([v4 proposeFuture])
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2138, &qword_2428B7958);
  v9 = swift_allocObject();
  *(v0 + 56) = v9;
  *(v9 + 16) = xmmword_2428B7940;
  *(v9 + 32) = 0;
  *(v9 + 33) = v8;
  v10 = sub_2428B2AE8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = *(MEMORY[0x277CB9EE0] + 4);
  v12 = swift_task_alloc();
  *(v0 + 64) = v12;
  *v12 = v0;
  v12[1] = sub_2427DE1AC;
  v14 = *(v0 + 32);
  v13 = *(v0 + 40);

  return MEMORY[0x28210BA20](v0 + 81, v9, v13);
}

uint64_t sub_2427DE1AC()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 72) = v0;

  sub_2427D2948(v4);

  if (v0)
  {
    v5 = sub_2427DE378;
  }

  else
  {
    v5 = sub_2427DE300;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2427DE300()
{
  v1 = *(v0 + 40);
  **(v0 + 16) = *(v0 + 81);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2427DE378()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);
  v3 = *(v0 + 72);

  return v2();
}

unint64_t sub_2427DE3E4()
{
  result = qword_27ECC2700;
  if (!qword_27ECC2700)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECC2700);
  }

  return result;
}

uint64_t CreateEventIntentRepresentation.title.getter()
{
  v1 = *v0;
  sub_2428B4378();
  return v3;
}

uint64_t sub_2427DE49C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  v13 = a2[1];
  v4 = a2[5];
  v6 = a2[6];
  v5 = a2[7];
  v10 = a2[8];
  v11 = a2[9];
  v7 = a2[11];
  v12 = a2[10];
  v8 = a2[12];
  v14 = *a1;
  v15 = a1[1];
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B4388();
}

uint64_t (*CreateEventIntentRepresentation.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t sub_2427DE6F8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - v9;
  sub_2427E0918(a1, v21 - v9, &qword_27ECC26F0, &unk_2428B7960);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[3];
  v21[7] = a2[2];
  v21[8] = v12;
  v14 = a2[5];
  v21[9] = a2[4];
  v21[5] = v14;
  v21[6] = v13;
  v15 = a2[6];
  v17 = a2[8];
  v16 = a2[9];
  v21[0] = a2[7];
  v21[1] = v17;
  v21[2] = v16;
  v18 = a2[11];
  v21[3] = a2[10];
  v21[4] = v18;
  v19 = a2[12];
  sub_2427E0918(v10, v8, &qword_27ECC26F0, &unk_2428B7960);
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B4388();
  sub_2427E0980(v10, &qword_27ECC26F0, &unk_2428B7960);
}

uint64_t CreateEventIntentRepresentation.startDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 8);
  sub_2427E0918(a1, &v8 - v6, &qword_27ECC26F0, &unk_2428B7960);
  sub_2428B4388();
  return sub_2427E0980(a1, &qword_27ECC26F0, &unk_2428B7960);
}

uint64_t (*CreateEventIntentRepresentation.startDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t sub_2427DEA94(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - v9;
  sub_2427E0918(a1, v20 - v9, &qword_27ECC26F0, &unk_2428B7960);
  v11 = *a2;
  v20[7] = a2[1];
  v20[8] = v11;
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[5];
  v20[9] = a2[4];
  v20[5] = v14;
  v20[6] = v13;
  v15 = a2[7];
  v20[0] = a2[6];
  v20[1] = v15;
  v16 = a2[9];
  v20[2] = a2[8];
  v20[3] = v16;
  v17 = a2[10];
  v20[4] = a2[11];
  v18 = a2[12];
  sub_2427E0918(v10, v8, &qword_27ECC26F0, &unk_2428B7960);
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B4388();
  sub_2427E0980(v10, &qword_27ECC26F0, &unk_2428B7960);
}

uint64_t CreateEventIntentRepresentation.endDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 16);
  sub_2427E0918(a1, &v8 - v6, &qword_27ECC26F0, &unk_2428B7960);
  sub_2428B4388();
  return sub_2427E0980(a1, &qword_27ECC26F0, &unk_2428B7960);
}

uint64_t (*CreateEventIntentRepresentation.endDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t CreateEventIntentRepresentation.isAllDay.getter()
{
  v1 = *(v0 + 24);
  sub_2428B4378();
  return v3;
}

uint64_t sub_2427DEE40(char *a1, uint64_t *a2)
{
  v13 = a2[1];
  v14 = *a2;
  v2 = a2[3];
  v3 = a2[4];
  v12 = a2[2];
  v4 = a2[6];
  v5 = a2[7];
  v6 = a2[8];
  v7 = a2[11];
  v10 = a2[9];
  v11 = a2[10];
  v8 = a2[12];
  v15 = *a1;
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B4388();
}

uint64_t (*CreateEventIntentRepresentation.isAllDay.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 24);
  *(v3 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t CreateEventIntentRepresentation.floatingTimeZoneID.getter()
{
  v1 = *(v0 + 32);
  sub_2428B4378();
  return v3;
}

uint64_t sub_2427DF098(uint64_t *a1, uint64_t *a2)
{
  v14 = a2[1];
  v15 = *a2;
  v2 = a2[3];
  v3 = a2[4];
  v4 = a2[5];
  v6 = a2[6];
  v5 = a2[7];
  v10 = a2[8];
  v11 = a2[9];
  v7 = a2[11];
  v12 = a2[10];
  v13 = a2[2];
  v8 = a2[12];
  v16 = *a1;
  v17 = a1[1];
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B4388();
}

uint64_t (*CreateEventIntentRepresentation.floatingTimeZoneID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 32);
  *(v3 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t sub_2427DF2F4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC44A0, &qword_2428C16C0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - v9;
  sub_2427E0918(a1, v20 - v9, &qword_27ECC44A0, &qword_2428C16C0);
  v11 = *a2;
  v20[9] = a2[1];
  v20[10] = v11;
  v12 = a2[2];
  v20[11] = a2[3];
  v13 = a2[5];
  v20[7] = a2[4];
  v20[8] = v12;
  v14 = a2[6];
  v15 = a2[7];
  v20[1] = v13;
  v20[2] = v14;
  v16 = a2[9];
  v20[3] = a2[8];
  v20[4] = v16;
  v17 = a2[11];
  v20[5] = a2[10];
  v20[6] = v17;
  v18 = a2[12];
  sub_2427E0918(v10, v8, &qword_27ECC44A0, &qword_2428C16C0);
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B4388();
  sub_2427E0980(v10, &qword_27ECC44A0, &qword_2428C16C0);
}

uint64_t CreateEventIntentRepresentation.recurrence.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC44A0, &qword_2428C16C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 40);
  sub_2427E0918(a1, &v8 - v6, &qword_27ECC44A0, &qword_2428C16C0);
  sub_2428B4388();
  return sub_2427E0980(a1, &qword_27ECC44A0, &qword_2428C16C0);
}

uint64_t (*CreateEventIntentRepresentation.recurrence.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 40);
  *(v3 + 32) = sub_2428B4368();
  return sub_2427CBEA8;
}

uint64_t CreateEventIntentRepresentation.attendees.getter()
{
  v1 = *(v0 + 48);
  sub_2428B4378();
  return v3;
}

uint64_t sub_2427DF6A4(uint64_t *a1, uint64_t *a2)
{
  v14 = a2[1];
  v15 = *a2;
  v2 = a2[3];
  v4 = a2[4];
  v3 = a2[5];
  v6 = a2[6];
  v5 = a2[7];
  v10 = a2[8];
  v11 = a2[9];
  v7 = a2[11];
  v12 = a2[10];
  v13 = a2[2];
  v8 = a2[12];
  v16 = *a1;
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B4388();
}

uint64_t (*CreateEventIntentRepresentation.attendees.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 48);
  *(v3 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t CreateEventIntentRepresentation.calendar.getter()
{
  v1 = *(v0 + 56);
  sub_2428B4378();
  return v3;
}

uint64_t sub_2427DF90C(uint64_t *a1, uint64_t *a2)
{
  v14 = a2[1];
  v15 = *a2;
  v2 = a2[3];
  v4 = a2[4];
  v3 = a2[5];
  v5 = a2[6];
  v6 = a2[7];
  v10 = a2[8];
  v11 = a2[9];
  v7 = a2[11];
  v12 = a2[10];
  v13 = a2[2];
  v8 = a2[12];
  v16 = *a1;
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B4388();
}

uint64_t CreateEventIntentRepresentation.calendar.setter()
{
  v1 = *(v0 + 56);
  sub_2428B2F38();
  sub_2428B4388();
}

uint64_t (*CreateEventIntentRepresentation.calendar.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 56);
  *(v3 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t sub_2427DFB74(char *a1, uint64_t *a2)
{
  v14 = a2[1];
  v15 = *a2;
  v2 = a2[3];
  v3 = a2[4];
  v4 = a2[5];
  v6 = a2[6];
  v5 = a2[7];
  v7 = a2[8];
  v11 = a2[9];
  v8 = a2[11];
  v12 = a2[10];
  v13 = a2[2];
  v9 = a2[12];
  v16 = *a1;
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B4388();
}

uint64_t CreateEventIntentRepresentation.availability.setter(char *a1)
{
  v2 = *(v1 + 64);
  v4 = *a1;
  return sub_2428B4388();
}

uint64_t (*CreateEventIntentRepresentation.availability.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 64);
  *(v3 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t sub_2427DFDC8(char *a1, uint64_t *a2)
{
  v14 = a2[1];
  v15 = *a2;
  v2 = a2[3];
  v3 = a2[4];
  v4 = a2[5];
  v6 = a2[6];
  v5 = a2[7];
  v7 = a2[9];
  v11 = a2[8];
  v8 = a2[11];
  v12 = a2[10];
  v13 = a2[2];
  v9 = a2[12];
  v16 = *a1;
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B4388();
}

uint64_t CreateEventIntentRepresentation.privacyLevel.setter(char *a1)
{
  v2 = *(v1 + 72);
  v4 = *a1;
  return sub_2428B4388();
}

uint64_t (*CreateEventIntentRepresentation.privacyLevel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 72);
  *(v3 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t CreateEventIntentRepresentation.travelTime.getter()
{
  v1 = *(v0 + 80);
  sub_2428B4378();
  return v3;
}

uint64_t sub_2427E0030(uint64_t *a1, uint64_t *a2)
{
  v14 = a2[1];
  v15 = *a2;
  v2 = a2[3];
  v3 = a2[4];
  v4 = a2[5];
  v6 = a2[6];
  v5 = a2[7];
  v11 = a2[8];
  v12 = a2[9];
  v13 = a2[2];
  v7 = a2[10];
  v8 = a2[11];
  v9 = a2[12];
  v16 = *a1;
  v17 = *(a1 + 8);
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B4388();
}

uint64_t (*CreateEventIntentRepresentation.travelTime.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 80);
  *(v3 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t sub_2427E0290(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4430, &unk_2428B7970);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - v9;
  sub_2427E0918(a1, v20 - v9, &unk_27ECC4430, &unk_2428B7970);
  v11 = *a2;
  v20[8] = a2[1];
  v20[9] = v11;
  v12 = a2[2];
  v20[6] = a2[3];
  v20[7] = v12;
  v14 = a2[4];
  v13 = a2[5];
  v15 = a2[7];
  v20[0] = a2[6];
  v20[1] = v15;
  v16 = a2[9];
  v20[2] = a2[8];
  v20[3] = v16;
  v17 = a2[11];
  v20[4] = a2[10];
  v20[5] = v13;
  v18 = a2[12];
  sub_2427E0918(v10, v8, &unk_27ECC4430, &unk_2428B7970);
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B4388();
  sub_2427E0980(v10, &unk_27ECC4430, &unk_2428B7970);
}

uint64_t CreateEventIntentRepresentation.note.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4430, &unk_2428B7970);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 88);
  sub_2427E0918(a1, &v8 - v6, &unk_27ECC4430, &unk_2428B7970);
  sub_2428B4388();
  return sub_2427E0980(a1, &unk_27ECC4430, &unk_2428B7970);
}

uint64_t (*CreateEventIntentRepresentation.note.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 88);
  *(v3 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t sub_2427E0630(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - v9;
  sub_2427E0918(a1, v20 - v9, &qword_27ECC2CE0, &qword_2428B6560);
  v11 = *a2;
  v20[10] = a2[1];
  v20[11] = v11;
  v12 = a2[2];
  v20[8] = a2[3];
  v20[9] = v12;
  v14 = a2[4];
  v13 = a2[5];
  v15 = a2[7];
  v20[1] = a2[6];
  v20[2] = v15;
  v16 = a2[9];
  v20[3] = a2[8];
  v20[4] = v16;
  v17 = a2[11];
  v20[5] = a2[10];
  v20[6] = v17;
  v20[7] = v13;
  v18 = a2[12];
  sub_2427E0918(v10, v8, &qword_27ECC2CE0, &qword_2428B6560);
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B4388();
  sub_2427E0980(v10, &qword_27ECC2CE0, &qword_2428B6560);
}

uint64_t CreateEventIntentRepresentation.url.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 96);
  sub_2427E0918(a1, &v8 - v6, &qword_27ECC2CE0, &qword_2428B6560);
  sub_2428B4388();
  return sub_2427E0980(a1, &qword_27ECC2CE0, &qword_2428B6560);
}

uint64_t sub_2427E0918(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2427E0980(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t (*CreateEventIntentRepresentation.url.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 96);
  *(v3 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t CreateEventIntentRepresentation.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v81 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v80 = &v74 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4430, &unk_2428B7970);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v79 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v78 = &v74 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC44A0, &qword_2428C16C0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v77 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v76 = &v74 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v74 - v22;
  v82 = 0;
  v83 = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2140, &unk_2428B7980);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *a1 = sub_2428B4358();
  v27 = sub_2428B3688();
  v75 = *(*(v27 - 8) + 56);
  v75(v23, 1, 1, v27);
  sub_2427E0918(v23, v21, &qword_27ECC26F0, &unk_2428B7960);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2148, &unk_2428B8730);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_2428B4358();
  sub_2427E0980(v23, &qword_27ECC26F0, &unk_2428B7960);
  a1[1] = v31;
  v75(v23, 1, 1, v27);
  sub_2427E0918(v23, v21, &qword_27ECC26F0, &unk_2428B7960);
  v32 = *(v28 + 48);
  v33 = *(v28 + 52);
  swift_allocObject();
  v34 = sub_2428B4358();
  sub_2427E0980(v23, &qword_27ECC26F0, &unk_2428B7960);
  a1[2] = v34;
  LOBYTE(v82) = 2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2150, &unk_2428B7990);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  a1[3] = sub_2428B4358();
  v82 = 0;
  v83 = 0;
  v38 = *(v24 + 48);
  v39 = *(v24 + 52);
  swift_allocObject();
  a1[4] = sub_2428B4358();
  v40 = sub_2428B36D8();
  v41 = v76;
  (*(*(v40 - 8) + 56))(v76, 1, 1, v40);
  sub_2427E0918(v41, v77, &qword_27ECC44A0, &qword_2428C16C0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2158, &qword_2428B8740);
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  v45 = sub_2428B4358();
  sub_2427E0980(v41, &qword_27ECC44A0, &qword_2428C16C0);
  a1[5] = v45;
  v82 = 0;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2160, &unk_2428B79A0);
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  a1[6] = sub_2428B4358();
  v82 = 0;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2168, &unk_2428C50B0);
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  a1[7] = sub_2428B4358();
  LOBYTE(v82) = 5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2170, &unk_2428B79B0);
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();
  a1[8] = sub_2428B4358();
  LOBYTE(v82) = 4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2178, &unk_2428C50C0);
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  swift_allocObject();
  a1[9] = sub_2428B4358();
  v82 = 0;
  LOBYTE(v83) = 1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2180, &qword_2428B79C0);
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  swift_allocObject();
  a1[10] = sub_2428B4358();
  v61 = sub_2428B34F8();
  v62 = v78;
  (*(*(v61 - 8) + 56))(v78, 1, 1, v61);
  sub_2427E0918(v62, v79, &unk_27ECC4430, &unk_2428B7970);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2188, &qword_2428B79C8);
  v64 = *(v63 + 48);
  v65 = *(v63 + 52);
  swift_allocObject();
  v66 = sub_2428B4358();
  sub_2427E0980(v62, &unk_27ECC4430, &unk_2428B7970);
  a1[11] = v66;
  v67 = sub_2428B35D8();
  v68 = v80;
  (*(*(v67 - 8) + 56))(v80, 1, 1, v67);
  sub_2427E0918(v68, v81, &qword_27ECC2CE0, &qword_2428B6560);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2190, &qword_2428B79D0);
  v70 = *(v69 + 48);
  v71 = *(v69 + 52);
  swift_allocObject();
  v72 = sub_2428B4358();
  result = sub_2427E0980(v68, &qword_27ECC2CE0, &qword_2428B6560);
  a1[12] = v72;
  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_2427E11B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2427E11FC(uint64_t result, int a2, int a3)
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

id sub_2427E1284()
{
  v3 = *v0;
  v4 = v0[1];
  v6 = v0[2];
  v5 = v0[3];
  v7 = sub_2427F3BBC();
  if (v1)
  {
    return v2;
  }

  v9 = v7;
  if (sub_2428B32E8())
  {
    swift_getKeyPath();
    sub_2427E351C();
LABEL_5:
    sub_2428B2F28();

    v11 = *(&v46 + 1);
    v10 = v46;
    v13 = *(&v47 + 1);
    v12 = v47;
    v14 = v48;
    v15 = BYTE8(v48);
    v16 = BYTE9(v48);
    v17 = BYTE10(v48);
    v18 = v49;
    v19 = v50;
    goto LABEL_8;
  }

  if (!sub_2428B32E8())
  {
    if (!sub_2428B32E8())
    {
      v23 = [v9 defaultCalendarForNewEvents];
      if (v23 && (v24 = v23, v2 = [v23 source], v24, v2))
      {
      }

      else
      {
        sub_2427CCDB0();
        swift_allocError();
        *v25 = 33;
        swift_willThrow();
      }

      return v2;
    }

    swift_getKeyPath();
    sub_2427E3430();
    goto LABEL_5;
  }

  swift_getKeyPath();
  sub_2427C28E0();
  sub_2428B2F28();

  v52 = v42;
  v53 = v43;
  v54 = v44;
  v55 = v45;
  v48 = v38;
  v49 = v39;
  v50 = v40;
  v51 = v41;
  v46 = v36;
  v47 = v37;
  sub_2428B2C68();

  sub_2427CCE04(&v46);
  v10 = v26;
  v11 = v27;
  v12 = v28;
  v13 = v29;
  v14 = v30;
  v15 = v31;
  v16 = v32;
  v17 = v33;
  v18 = v34;
  v19 = v35;
LABEL_8:
  *&v46 = v10;
  *(&v46 + 1) = v11;
  *&v47 = v12;
  *(&v47 + 1) = v13;
  *&v48 = v14;
  BYTE8(v48) = v15;
  BYTE9(v48) = v16;
  BYTE10(v48) = v17;
  v49 = v18;
  v50 = v19;
  sub_2428B2C68();
  if (*(&v36 + 1))
  {
    v20 = sub_2428B4608();
    v2 = [v9 sourceWithIdentifier_];

    if (!v2)
    {
      sub_2427CCDB0();
      v2 = swift_allocError();
      *v22 = 33;
      swift_willThrow();
    }

    sub_2427E34D8(v36, *(&v36 + 1));
    sub_2427E3484(&v46);
  }

  else
  {
    sub_2427CCDB0();
    swift_allocError();
    *v21 = 33;
    swift_willThrow();

    sub_2427E3484(&v46);
  }

  return v2;
}

uint64_t sub_2427E15D0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v13 = a1[2];
  v14 = v3;
  v4 = a1[3];
  v15 = a1[4];
  v5 = a1[1];
  v12[0] = *a1;
  v12[1] = v5;
  v6 = a2[5];
  v16[4] = a2[4];
  v16[5] = v6;
  v7 = a2[7];
  v16[6] = a2[6];
  v16[7] = v7;
  v8 = a2[1];
  v16[0] = *a2;
  v16[1] = v8;
  v9 = a2[3];
  v16[2] = a2[2];
  v16[3] = v9;
  v11[10] = v13;
  v11[11] = v4;
  v11[12] = a1[4];
  v11[8] = v12[0];
  v11[9] = v2;
  sub_2427E35A0(v12, v11);
  sub_2427E35FC(v16, v11);
  sub_2428B2DD8();
  return sub_2427E3658(v16);
}

uint64_t AttendeeDynamicOptionsProvider.results(for:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  v4 = sub_2428B44B8();
  *(v3 + 48) = v4;
  v5 = *(v4 - 8);
  *(v3 + 56) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 64) = swift_task_alloc();
  v7 = sub_2428B44E8();
  *(v3 + 72) = v7;
  v8 = *(v7 - 8);
  *(v3 + 80) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  v10 = v2[1];
  *(v3 + 96) = *v2;
  *(v3 + 112) = v10;

  return MEMORY[0x2822009F8](sub_2427E1794, 0, 0);
}

uint64_t sub_2427E1794()
{
  v15 = *(v0 + 96);
  v16 = *(v0 + 112);
  v1 = sub_2427E1284();
  *(v0 + 128) = v1;
  *(v0 + 136) = 0;
  v2 = v1;
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC21A0, &qword_2428B7AD0);
  v6 = *(v4 + 72);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2428B7940;
  sub_2428B44C8();
  sub_2428B44D8();
  *(v0 + 16) = v8;
  sub_2427E1E18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC21B0, &unk_2428B7AD8);
  sub_2427E1E70();
  sub_2428B4938();
  v9 = *(MEMORY[0x277CC5918] + 4);
  v10 = swift_task_alloc();
  *(v0 + 144) = v10;
  *v10 = v0;
  v10[1] = sub_2427E1964;
  v11 = *(v0 + 88);
  v13 = *(v0 + 32);
  v12 = *(v0 + 40);

  return MEMORY[0x2821166A0](v13, v12, v2, v11);
}

uint64_t sub_2427E1964(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 152) = a1;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_2427E1AC4, 0, 0);
}

uint64_t sub_2427E1AC4()
{
  v47 = v1;
  v5 = *(v1 + 152);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v1 + 56);
    v43 = MEMORY[0x277D84F90];
    sub_2427E297C(0, v6, 0);
    v10 = *(v5 + 16);
    if (!v10)
    {
      goto LABEL_20;
    }

    v11 = v43;
    v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v3 = (v7 + 8);
    v13 = *(v1 + 136);
    v14 = *(v7 + 16);
    v42 = *(v7 + 72);
    v14(*(v1 + 64), v5 + v12, *(v1 + 48));
    sub_2427E1ED4((v1 + 24), &v44);
    if (v13)
    {
      v15 = *(v1 + 152);
      v16 = *(v1 + 64);
      v17 = *(v1 + 48);

      (*v3)(v16, v17);

      v18 = *(v1 + 24);
      v19 = *(v1 + 88);
      v20 = *(v1 + 64);

      v21 = *(v1 + 8);

      return v21();
    }

    *&v38 = v12;
    v40 = v14;
    v41 = v6;
    v39 = *v3;
    (*v3)(*(v1 + 64), *(v1 + 48));
    v8 = v44;
    v9 = v45;
    v2 = v46;
    v4 = *(v43 + 16);
    v10 = *(v43 + 24);
    v0 = v4 + 1;
    if (v4 >= v10 >> 1)
    {
      goto LABEL_21;
    }

    while (1)
    {
      *(v11 + 16) = v0;
      v25 = v11 + 40 * v4;
      *(v25 + 32) = v8;
      *(v25 + 48) = v9;
      *(v25 + 64) = v2;
      if (v41 == 1)
      {
        break;
      }

      v2 = v5 + v42 + v38;
      v30 = 1;
      while (1)
      {
        v10 = *(v5 + 16);
        if (v30 >= v10)
        {
          break;
        }

        v40(*(v1 + 64), v2, *(v1 + 48));
        sub_2427E1ED4((v1 + 24), &v44);
        v31 = v3;
        v39(*(v1 + 64), *(v1 + 48));
        v8 = v44;
        v9 = v45;
        v4 = v46;
        v43 = v11;
        v33 = *(v11 + 16);
        v32 = *(v11 + 24);
        v0 = v33 + 1;
        if (v33 >= v32 >> 1)
        {
          v36 = v45;
          v38 = v44;
          sub_2427E297C((v32 > 1), v33 + 1, 1);
          v9 = v36;
          v8 = v38;
        }

        ++v30;
        *(v11 + 16) = v0;
        v34 = v11 + 40 * v33;
        *(v34 + 32) = v8;
        *(v34 + 48) = v9;
        *(v34 + 64) = v4;
        v2 += v42;
        v3 = v31;
        if (v41 == v30)
        {
          goto LABEL_10;
        }
      }

LABEL_20:
      __break(1u);
LABEL_21:
      v35 = v9;
      v37 = v8;
      sub_2427E297C((v10 > 1), v0, 1);
      v9 = v35;
      v8 = v37;
      v11 = v43;
    }

LABEL_10:
    v26 = *(v1 + 152);
  }

  else
  {
    v23 = *(v1 + 128);
    v24 = *(v1 + 152);

    v11 = MEMORY[0x277D84F90];
  }

  v27 = *(v1 + 88);
  v28 = *(v1 + 64);

  v29 = *(v1 + 8);

  return v29(v11);
}

unint64_t sub_2427E1E18()
{
  result = qword_27ECC21A8;
  if (!qword_27ECC21A8)
  {
    sub_2428B44E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC21A8);
  }

  return result;
}

unint64_t sub_2427E1E70()
{
  result = qword_27ECC21B8;
  if (!qword_27ECC21B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC21B0, &unk_2428B7AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC21B8);
  }

  return result;
}

uint64_t sub_2427E1ED4@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v63 = a1;
  v76 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v72 = &v63 - v4;
  v5 = sub_2428B2BD8();
  v74 = *(v5 - 8);
  v75 = v5;
  v6 = *(v74 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v71 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v73 = &v63 - v9;
  v66 = sub_2428B2B78();
  v64 = *(v66 - 8);
  v10 = *(v64 + 64);
  MEMORY[0x28223BE20](v66);
  v65 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2428B4498();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2230, &qword_2428B6EF0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v69 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v63 - v21;
  v81 = sub_2428B2B28();
  v23 = *(v81 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v81);
  v68 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v78 = (&v63 - v27);
  v28 = sub_2428B2AF8();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v67 = &v63 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = (&v63 - v33);
  v35 = sub_2428B4488();
  if (v36)
  {
    *v34 = v35;
    v34[1] = v36;
    v37 = MEMORY[0x277CB9CD0];
  }

  else
  {
    v37 = MEMORY[0x277CB9CD8];
  }

  v38 = *v37;
  v70 = v29;
  v39 = *(v29 + 104);
  v79 = v34;
  v80 = v28;
  v39(v34, v38, v28);
  v40 = sub_2428B4478();
  v41 = v78;
  *v78 = v40;
  v41[1] = v42;
  (*(v23 + 104))(v41, *MEMORY[0x277CB9CF8], v81);
  sub_2428B44A8();
  v43 = (*(v13 + 88))(v16, v12);
  v44 = v23;
  if (v43 == *MEMORY[0x277CC5900])
  {
    (*(v13 + 96))(v16, v12);
    v45 = *v16;
    v46 = v16[1];
    (*(v64 + 104))(v65, *MEMORY[0x277CB9D48], v66);
    sub_2428B2B58();
LABEL_8:
    v49 = sub_2428B2BA8();
    (*(*(v49 - 8) + 56))(v22, 0, 1, v49);
    goto LABEL_10;
  }

  if (v43 == *MEMORY[0x277CC5908])
  {
    (*(v13 + 96))(v16, v12);
    v47 = *v16;
    v48 = v16[1];
    (*(v64 + 104))(v65, *MEMORY[0x277CB9D48], v66);
    sub_2428B2B48();
    goto LABEL_8;
  }

  v50 = sub_2428B2BA8();
  (*(*(v50 - 8) + 56))(v22, 1, 1, v50);
  (*(v13 + 8))(v16, v12);
LABEL_10:
  v51 = v22;
  v52 = v81;
  v53 = v78;
  v54 = v70;
  (*(v70 + 16))(v67, v79, v80);
  (*(v44 + 16))(v68, v53, v52);
  sub_2427E3358(v51, v69);
  v55 = sub_2428B3148();
  v56 = v53;
  (*(*(v55 - 8) + 56))(v72, 1, 1, v55);
  v57 = v73;
  sub_2428B2B08();
  v59 = v74;
  v58 = v75;
  v60 = v71;
  (*(v74 + 16))(v71, v57, v75);
  v61 = v77;
  AttendeeEntity.init(person:optional:)(v60, 0, v76);
  (*(v59 + 8))(v57, v58);
  sub_2427E33C8(v51);
  (*(v44 + 8))(v56, v81);
  result = (*(v54 + 8))(v79, v80);
  if (v61)
  {
    *v63 = v61;
  }

  return result;
}

uint64_t sub_2427E2690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_2427E2738;

  return AttendeeDynamicOptionsProvider.results(for:)(a2, a3);
}

uint64_t sub_2427E2738(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_2427E2848()
{
  v1 = *v0;
  sub_2428B28E8();
  return v3;
}

uint64_t sub_2427E28C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CBA2A8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2427CD274;

  return MEMORY[0x28210C148](a1, a2, a3);
}

char *sub_2427E297C(char *a1, int64_t a2, char a3)
{
  result = sub_2427E2CF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_2427E29A0()
{
  result = qword_27ECC21C0;
  if (!qword_27ECC21C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC21C0);
  }

  return result;
}

unint64_t sub_2427E29F8()
{
  result = qword_27ECC21C8;
  if (!qword_27ECC21C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC21C8);
  }

  return result;
}

unint64_t sub_2427E2A4C()
{
  result = qword_280CDE350;
  if (!qword_280CDE350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE350);
  }

  return result;
}

unint64_t sub_2427E2AA4()
{
  result = qword_27ECC21D8;
  if (!qword_27ECC21D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27ECC21E0, qword_2428B7B28);
    sub_2427E2A4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC21D8);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2427E2B34(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2427E2B7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

size_t sub_2427E2BCC(size_t a1, int64_t a2, char a3)
{
  result = sub_2427E3178(a1, a2, a3, *v3, &qword_27ECC21F8, &qword_2428B7C38, type metadata accessor for AlarmTrigger);
  *v3 = result;
  return result;
}

size_t sub_2427E2C10(size_t a1, int64_t a2, char a3)
{
  result = sub_2427E3178(a1, a2, a3, *v3, &qword_27ECC2218, &qword_2428B7C58, type metadata accessor for EditEventIntent.AlarmInfo);
  *v3 = result;
  return result;
}

char *sub_2427E2C54(char *a1, int64_t a2, char a3)
{
  result = sub_2427E2E18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2427E2C74(char *a1, int64_t a2, char a3)
{
  result = sub_2427E2F24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2427E2C94(void *a1, int64_t a2, char a3)
{
  result = sub_2427E3030(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2427E2CB4(size_t a1, int64_t a2, char a3)
{
  result = sub_2427E3178(a1, a2, a3, *v3, &qword_27ECC4D70, &unk_2428B6230, MEMORY[0x277CC9130]);
  *v3 = result;
  return result;
}

char *sub_2427E2CF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2220, &qword_2428B7C60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2427E2E18(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC21F0, &qword_2428B7C30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2427E2F24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2210, &qword_2428B7C50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2427E3030(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2200, &qword_2428B7C40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2208, &qword_2428B7C48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2427E3178(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_2427E3358(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2230, &qword_2428B6EF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2427E33C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2230, &qword_2428B6EF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2427E3430()
{
  result = qword_280CDE5A0;
  if (!qword_280CDE5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE5A0);
  }

  return result;
}

uint64_t sub_2427E34D8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_2427E351C()
{
  result = qword_27ECC2240;
  if (!qword_27ECC2240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC2248, &unk_2428B7CE0);
    sub_2427E3430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2240);
  }

  return result;
}

uint64_t sub_2427E36C8()
{
  v0 = sub_2428B3558();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2428B36C8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_2428B45F8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2428B3568();
  __swift_allocate_value_buffer(v9, qword_27ECC2250);
  __swift_project_value_buffer(v9, qword_27ECC2250);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_2428B3588();
}

uint64_t static OpenEventEditorIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC16E8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC2250);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2427E3958()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_2428B3558();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2428B36C8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2428B45F8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_2428B3568();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_2428B3078();
  __swift_allocate_value_buffer(v15, qword_27ECC2268);
  __swift_project_value_buffer(v15, qword_27ECC2268);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_2428B3588();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_2428B3088();
}

uint64_t static OpenEventEditorIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC16F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC2268);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static OpenEventEditorIntent.description.setter(uint64_t a1)
{
  if (qword_27ECC16F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC2268);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static OpenEventEditorIntent.description.modify())()
{
  if (qword_27ECC16F0 != -1)
  {
    swift_once();
  }

  v0 = sub_2428B3078();
  __swift_project_value_buffer(v0, qword_27ECC2268);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2427E3E84@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC16F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC2268);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_2427E3F44(uint64_t a1)
{
  if (qword_27ECC16F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC2268);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t OpenEventEditorIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v35 = a1;
  v2 = sub_2428B3298();
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2);
  v39 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v38 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v36 = v31 - v12;
  v32 = sub_2428B3558();
  v13 = *(v32 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v32);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2428B36C8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = sub_2428B45F8();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v33 = sub_2428B3568();
  v21 = *(v33 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v33);
  v31[1] = v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2530, &qword_2428BD510);
  sub_2428B2958();
  v52 = 0u;
  v53 = 0u;
  *&v54 = 0;
  sub_2428B2948();
  *a1 = sub_2428B2918();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2540, &qword_2428B5AE0);
  sub_2428B4578();
  sub_2428B36B8();
  v24 = *MEMORY[0x277CC9110];
  v25 = *(v13 + 104);
  v26 = v32;
  v25(v16, v24, v32);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v25(v16, v24, v26);
  v27 = v36;
  sub_2428B3578();
  (*(v21 + 56))(v27, 0, 1, v33);
  sub_2427CBC50(&v52);
  v48 = v58;
  v49 = v59;
  v50 = v60;
  v51 = v61;
  v44 = v54;
  v45 = v55;
  v46 = v56;
  v47 = v57;
  v42 = v52;
  v43 = v53;
  v28 = sub_2428B2AE8();
  v29 = *(*(v28 - 8) + 56);
  v29(v37, 1, 1, v28);
  v29(v38, 1, 1, v28);
  (*(v40 + 104))(v39, *MEMORY[0x277CBA308], v41);
  sub_2427C2774();
  result = sub_2428B2E68();
  v35[1] = result;
  return result;
}

uint64_t sub_2427E45DC(uint64_t a1, uint64_t *a2)
{
  sub_2427CBD84(a1, v7);
  v4 = *a2;
  v3 = a2[1];
  sub_2427CBD84(v7, &v6);
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B28F8();
  __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t OpenEventEditorIntent.viewOpener.setter(uint64_t *a1)
{
  v3 = *v1;
  sub_2427CBD84(a1, v5);
  sub_2428B28F8();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*OpenEventEditorIntent.viewOpener.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_2428B28D8();
  return sub_2427CBEA8;
}

double sub_2427E474C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_2428B2DC8();
  a2[6] = v11;
  a2[7] = v12;
  a2[8] = v13;
  a2[9] = v14;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  a2[5] = v10;
  result = *&v5;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_2427E47A8(_OWORD *a1, uint64_t *a2)
{
  v2 = a1[7];
  v3 = a1[5];
  v21 = a1[6];
  v22 = v2;
  v4 = a1[7];
  v5 = a1[9];
  v23 = a1[8];
  v24 = v5;
  v6 = a1[3];
  v7 = a1[1];
  v17 = a1[2];
  v18 = v6;
  v8 = a1[3];
  v9 = a1[5];
  v19 = a1[4];
  v20 = v9;
  v10 = a1[1];
  v16[0] = *a1;
  v16[1] = v10;
  v15[16] = v21;
  v15[17] = v4;
  v11 = a1[9];
  v15[18] = v23;
  v15[19] = v11;
  v15[12] = v17;
  v15[13] = v8;
  v15[14] = v19;
  v15[15] = v3;
  v12 = *a2;
  v13 = a2[1];
  v15[10] = v16[0];
  v15[11] = v7;
  sub_2427CD4FC(v16, v15);
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2DD8();
}

uint64_t OpenEventEditorIntent.target.setter(__int128 *a1)
{
  v10 = a1[6];
  v11 = a1[7];
  v12 = a1[8];
  v13 = a1[9];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v4 = *a1;
  v5 = a1[1];
  v2 = *(v1 + 8);
  return sub_2428B2DD8();
}

uint64_t (*OpenEventEditorIntent.target.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t static OpenEventEditorIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2280, &qword_2428B7D08);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2288, &qword_2428B7D10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_2427E4AF0();
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2298, &qword_2428B7D40);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3238();
}

unint64_t sub_2427E4AF0()
{
  result = qword_27ECC2290;
  if (!qword_27ECC2290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2290);
  }

  return result;
}

uint64_t OpenEventEditorIntent.perform()(uint64_t a1)
{
  *(v2 + 736) = a1;
  *(v2 + 744) = *v1;
  sub_2428B4758();
  *(v2 + 760) = sub_2428B4748();
  v4 = sub_2428B4728();
  *(v2 + 768) = v4;
  *(v2 + 776) = v3;

  return MEMORY[0x2822009F8](sub_2427E4BEC, v4, v3);
}

uint64_t sub_2427E4BEC()
{
  v1 = sub_2428B43D8();
  *(v0 + 680) = v1;
  *(v0 + 688) = sub_2427CCD68(&qword_280CDDA40, MEMORY[0x277CF7740]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 656));
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CF7730], v1);
  LOBYTE(v1) = sub_2428B37D8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 656));
  if (v1)
  {
    v3 = *(v0 + 752);
    v4 = *(v0 + 744);
    sub_2428B28E8();
    v5 = *(v0 + 720);
    v6 = *(v0 + 728);
    __swift_project_boxed_opaque_existential_1((v0 + 696), v5);
    sub_2428B2DC8();
    v7 = *(v0 + 128);
    *(v0 + 272) = *(v0 + 112);
    *(v0 + 288) = v7;
    v8 = *(v0 + 160);
    *(v0 + 304) = *(v0 + 144);
    *(v0 + 320) = v8;
    v9 = *(v0 + 64);
    *(v0 + 208) = *(v0 + 48);
    *(v0 + 224) = v9;
    v10 = *(v0 + 96);
    *(v0 + 240) = *(v0 + 80);
    *(v0 + 256) = v10;
    v11 = *(v0 + 32);
    *(v0 + 176) = *(v0 + 16);
    *(v0 + 192) = v11;
    *(v0 + 800) = 1;
    v12 = *(v6 + 24);
    v18 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    *(v0 + 784) = v14;
    *v14 = v0;
    v14[1] = sub_2427E4EC0;

    return v18(v0 + 176, v0 + 800, v5, v6);
  }

  else
  {
    v16 = *(v0 + 760);

    sub_2428B2938();
    sub_2427CCD68(&qword_27ECC1A80, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_2428B2928();
    swift_willThrow();
    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_2427E4EC0()
{
  v2 = *v1;
  v3 = *(*v1 + 784);
  v21 = *v1;
  *(*v1 + 792) = v0;

  v4 = *(v2 + 192);
  if (v0)
  {
    *(v2 + 336) = *(v2 + 176);
    *(v2 + 352) = v4;
    v5 = *(v2 + 208);
    v6 = *(v2 + 224);
    v7 = *(v2 + 256);
    *(v2 + 400) = *(v2 + 240);
    *(v2 + 416) = v7;
    *(v2 + 368) = v5;
    *(v2 + 384) = v6;
    v8 = *(v2 + 272);
    v9 = *(v2 + 288);
    v10 = *(v2 + 320);
    *(v2 + 464) = *(v2 + 304);
    *(v2 + 480) = v10;
    *(v2 + 432) = v8;
    *(v2 + 448) = v9;
    sub_2427CCE04(v2 + 336);
    v11 = *(v2 + 776);
    v12 = *(v2 + 768);
    v13 = sub_2427E50B4;
  }

  else
  {
    *(v2 + 496) = *(v2 + 176);
    *(v2 + 512) = v4;
    v14 = *(v2 + 208);
    v15 = *(v2 + 224);
    v16 = *(v2 + 256);
    *(v2 + 560) = *(v2 + 240);
    *(v2 + 576) = v16;
    *(v2 + 528) = v14;
    *(v2 + 544) = v15;
    v17 = *(v2 + 272);
    v18 = *(v2 + 288);
    v19 = *(v2 + 320);
    *(v2 + 624) = *(v2 + 304);
    *(v2 + 640) = v19;
    *(v2 + 592) = v17;
    *(v2 + 608) = v18;
    sub_2427CCE04(v2 + 496);
    v11 = *(v2 + 776);
    v12 = *(v2 + 768);
    v13 = sub_2427E503C;
  }

  return MEMORY[0x2822009F8](v13, v12, v11);
}

uint64_t sub_2427E503C()
{
  v1 = v0[95];
  v2 = v0[92];

  __swift_destroy_boxed_opaque_existential_1(v0 + 87);
  sub_2428B2C28();
  v3 = v0[1];

  return v3();
}

uint64_t sub_2427E50B4()
{
  v1 = v0[95];

  __swift_destroy_boxed_opaque_existential_1(v0 + 87);
  v2 = v0[99];
  v3 = v0[1];

  return v3();
}

unint64_t sub_2427E5124()
{
  result = qword_280CDDBF0;
  if (!qword_280CDDBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDBF0);
  }

  return result;
}

unint64_t sub_2427E517C()
{
  result = qword_280CDDBF8;
  if (!qword_280CDDBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDBF8);
  }

  return result;
}

uint64_t sub_2427E5208@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC16E8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC2250);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2427E52B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2280, &qword_2428B7D08);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2288, &qword_2428B7D10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2298, &qword_2428B7D40);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3238();
}

uint64_t sub_2427E5448(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return OpenEventEditorIntent.perform()(a1);
}

uint64_t sub_2427E5510()
{
  sub_2428B4C88();
  sub_2428B4678();

  return sub_2428B4CB8();
}

uint64_t AttendeeEntity.init(person:optional:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v41 = a3;
  v53 = a2;
  v50 = a1;
  v3 = sub_2428B2BD8();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v40 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v45 = &v40 - v7;
  v8 = type metadata accessor for AttendeeEntity.AttendeeAddresses();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2428B3558();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2428B36C8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = sub_2428B45F8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = sub_2428B3568();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2308, &qword_2428B7E90);
  v48 = sub_2428B2CE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2310, &qword_2428B7E98);
  sub_2427E5D08();
  v49 = sub_2428B2CA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2320, &unk_2428B7EA0);
  sub_2428B4578();
  sub_2428B36B8();
  v22 = *MEMORY[0x277CC9110];
  v23 = *(v12 + 104);
  v23(v15, v22, v11);
  sub_2428B3578();
  sub_2427E5D5C();
  v43 = sub_2428B2C98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3760, &qword_2428B6ED0);
  sub_2428B4578();
  sub_2428B36B8();
  v23(v15, v22, v11);
  sub_2428B3578();
  v42 = sub_2428B2D68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1FC8, &qword_2428B6EE0);
  sub_2428B4578();
  sub_2428B36B8();
  v23(v15, v22, v11);
  v25 = v46;
  v24 = v47;
  sub_2428B3578();
  v26 = v45;
  v27 = sub_2428B2D78();
  v28 = *(v25 + 16);
  v28(v26, v50, v24);
  v29 = v44;
  sub_2427E72B8(v26, v44);
  v30 = *(v29 + 1);
  sub_2428B3218();
  sub_2427E823C(v29);
  if (v30)
  {

    LOBYTE(v51) = 0;
    sub_2428B2C78();
    LOBYTE(v51) = 0;
    v31 = v43;
    sub_2428B2C78();
    LOBYTE(v51) = v53 & 1;
    sub_2428B2C78();
    v51 = 0;
    v52 = 0;
    v44 = v27;
    v32 = v42;
    sub_2428B2C78();
    v33 = v50;
    v28(v26, v50, v24);
    v28(v40, v26, v24);
    v34 = v48;
    sub_2428B2C78();
    v35 = *(v25 + 8);
    v35(v33, v24);
    result = (v35)(v26, v24);
    v37 = v41;
    v38 = v49;
    *v41 = v34;
    v37[1] = v38;
    v37[2] = v31;
    v37[3] = v32;
    v37[4] = v44;
  }

  else
  {
    sub_2427CCDB0();
    swift_allocError();
    *v39 = 112;
    swift_willThrow();
    (*(v25 + 8))(v50, v24);
  }

  return result;
}

uint64_t type metadata accessor for AttendeeEntity.AttendeeAddresses()
{
  result = qword_27ECC2440;
  if (!qword_27ECC2440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2427E5D08()
{
  result = qword_27ECC2318;
  if (!qword_27ECC2318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2318);
  }

  return result;
}

unint64_t sub_2427E5D5C()
{
  result = qword_27ECC2328;
  if (!qword_27ECC2328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2328);
  }

  return result;
}

uint64_t (*static AttendeeEntity.typeDisplayRepresentation.modify())()
{
  if (qword_27ECC16F8 != -1)
  {
    swift_once();
  }

  v0 = sub_2428B3338();
  __swift_project_value_buffer(v0, qword_27ECC22B0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t AttendeeEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v59 = v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v58 = v50 - v7;
  v8 = sub_2428B36C8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v57 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2428B3558();
  v53 = *(v11 - 8);
  v54 = v11;
  v12 = *(v53 + 64);
  MEMORY[0x28223BE20](v11);
  v56 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2428B45F8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v50[1] = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2428B3568();
  v51 = *(v17 - 8);
  v52 = v17;
  v18 = *(v51 + 64);
  MEMORY[0x28223BE20](v17);
  v55 = v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2230, &qword_2428B6EF0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v61 = v50 - v22;
  v23 = sub_2428B2B28();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = v50 - v29;
  v31 = sub_2428B2BD8();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v60 = v50 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = v50 - v36;
  v62 = *v1;
  sub_2428B2C68();
  sub_2428B2B38();
  v38 = *(v32 + 8);
  v38(v37, v31);
  (*(v24 + 104))(v28, *MEMORY[0x277CB9D18], v23);
  sub_2427EBA38(&qword_27ECC2330, MEMORY[0x277CB9D20]);
  v39 = sub_2428B4558();
  v40 = *(v24 + 8);
  v40(v28, v23);
  v40(v30, v23);
  v41 = v38;
  if ((v39 & 1) == 0)
  {
    goto LABEL_6;
  }

  v42 = v60;
  sub_2428B2C68();
  v43 = v61;
  sub_2428B2BB8();
  v41(v42, v31);
  v44 = sub_2428B2BA8();
  v45 = (*(*(v44 - 8) + 48))(v43, 1, v44);
  sub_2427E0980(v43, &unk_27ECC2230, &qword_2428B6EF0);
  if (v45 == 1)
  {
    sub_2428B4578();
    if (qword_27ECC1780 != -1)
    {
      swift_once();
    }

    v46 = v54;
    v47 = __swift_project_value_buffer(v54, qword_27ECD4500);
    (*(v53 + 16))(v56, v47, v46);
    sub_2428B36B8();
    sub_2428B3578();
    (*(v51 + 56))(v58, 1, 1, v52);
    v48 = sub_2428B3148();
    (*(*(v48 - 8) + 56))(v59, 1, 1, v48);
    return sub_2428B3178();
  }

  else
  {
LABEL_6:
    sub_2428B2C68();
    sub_2428B2B18();
    return (v41)(v37, v31);
  }
}

uint64_t sub_2427E65C0(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v8 = *a1;
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t AttendeeEntity.status.setter(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_2428B2C78();
}

uint64_t (*AttendeeEntity.status.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_2427E6754(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v8 = *a1;
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t AttendeeEntity.type.setter(char *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return sub_2428B2C78();
}

uint64_t (*AttendeeEntity.type.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t AttendeeEntity.comment.getter()
{
  v1 = *(v0 + 24);
  sub_2428B2C68();
  return v3;
}

uint64_t sub_2427E68F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[4];
  v8 = *a1;
  v9 = a1[1];
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*AttendeeEntity.comment.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 24);
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t AttendeeEntity.isAttendanceOptional.getter()
{
  v1 = *(v0 + 32);
  sub_2428B2C68();
  return v3;
}

uint64_t sub_2427E6A9C(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v8 = *a1;
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*AttendeeEntity.isAttendanceOptional.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 32);
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CBEA8;
}

uint64_t AttendeeEntity.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v39 = a1;
  v3 = sub_2428B2BD8();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v41 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v40 = &v34 - v7;
  v35 = sub_2428B3558();
  v8 = *(v35 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v35);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2428B36C8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_2428B45F8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = sub_2428B3568();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2308, &qword_2428B7E90);
  v38 = sub_2428B2CE8();
  *a2 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2310, &qword_2428B7E98);
  sub_2427E5D08();
  v37 = sub_2428B2CA8();
  a2[1] = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2320, &unk_2428B7EA0);
  sub_2428B4578();
  sub_2428B36B8();
  v18 = *MEMORY[0x277CC9110];
  v19 = *(v8 + 104);
  v20 = v35;
  v19(v11, v18, v35);
  sub_2428B3578();
  sub_2427E5D5C();
  v36 = sub_2428B2C98();
  a2[2] = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3760, &qword_2428B6ED0);
  sub_2428B4578();
  sub_2428B36B8();
  v19(v11, v18, v20);
  sub_2428B3578();
  v34 = sub_2428B2D68();
  a2[3] = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1FC8, &qword_2428B6EE0);
  sub_2428B4578();
  sub_2428B36B8();
  v19(v11, v18, v20);
  sub_2428B3578();
  a2[4] = sub_2428B2D78();
  v21 = v39;
  v22 = sub_2428B3CE8();
  v23 = 0x605040302010007uLL >> (8 * v22);
  if (v22 >= 8)
  {
    LOBYTE(v23) = 7;
  }

  LOBYTE(v44[0]) = v23;
  sub_2428B2C78();
  v24 = sub_2428B3CD8();
  v25 = 0x302010004uLL >> (8 * v24);
  if (v24 >= 5)
  {
    LOBYTE(v25) = 4;
  }

  LOBYTE(v44[0]) = v25;
  sub_2428B2C78();
  LOBYTE(v44[0]) = sub_2428B3CC8() == 2;
  sub_2428B2C78();
  v44[0] = sub_2428B3CF8();
  v44[1] = v26;
  sub_2428B2C78();
  v27 = sub_2428B3D08();
  v44[3] = v27;
  v44[4] = sub_2427EBA38(&qword_27ECC2338, MEMORY[0x277CF7BA8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
  v29 = *(v27 - 8);
  (*(v29 + 16))(boxed_opaque_existential_1, v21, v27);
  v30 = v40;
  sub_2428A8840(v44, v40);
  v31 = v42;
  v32 = v43;
  (*(v42 + 16))(v41, v30, v43);
  sub_2428B2C78();
  (*(v29 + 8))(v21, v27);
  return (*(v31 + 8))(v30, v32);
}

CalendarLink::AttendeeEntity::AttendeeEntityParticipantStatus_optional __swiftcall AttendeeEntity.AttendeeEntityParticipantStatus.init(_:)(EKParticipantStatus a1)
{
  v2 = 0x605040302010007uLL >> (8 * a1);
  if (a1 >= 8)
  {
    LOBYTE(v2) = 7;
  }

  *v1 = v2;
  return a1;
}

CalendarLink::AttendeeEntity::AttendeeType_optional __swiftcall AttendeeEntity.AttendeeType.init(_:)(EKParticipantType a1)
{
  v2 = 0x302010004uLL >> (8 * a1);
  if (a1 >= (EKParticipantTypeGroup|EKParticipantTypePerson))
  {
    LOBYTE(v2) = 4;
  }

  *v1 = v2;
  return a1;
}

uint64_t sub_2427E72B8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v149 = a1;
  v128 = a2;
  v2 = sub_2428B35D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v123 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v136 = &v109 - v7;
  v8 = sub_2428B2B88();
  v144 = *(v8 - 8);
  v9 = *(v144 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v140 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v142 = &v109 - v12;
  v13 = sub_2428B2BA8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v139 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v109 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2230, &qword_2428B6EF0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v147 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v151 = &v109 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v148 = &v109 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v109 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v109 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v116 = &v109 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v122 = &v109 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v121 = &v109 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v135 = (&v109 - v42);
  v43 = MEMORY[0x28223BE20](v41);
  v141 = (&v109 - v44);
  v45 = MEMORY[0x28223BE20](v43);
  v137 = &v109 - v46;
  MEMORY[0x28223BE20](v45);
  v48 = &v109 - v47;
  v49 = *(type metadata accessor for AttendeeEntity.AttendeeAddresses() + 24);
  v143 = v3;
  v50 = *(v3 + 56);
  v119 = v49;
  v50(&v128[v49], 1, 1, v2);
  v124 = v48;
  v127 = v2;
  v115 = v3 + 56;
  v114 = v50;
  v50(v48, 1, 1, v2);
  sub_2428B2BB8();
  sub_2427E0918(v32, v30, &unk_27ECC2230, &qword_2428B6EF0);
  v145 = *(v14 + 48);
  v146 = v14 + 48;
  v51 = v145(v30, 1, v13);
  v52 = MEMORY[0x277CB9D88];
  v138 = v8;
  v150 = v13;
  if (v51 == 1)
  {
    sub_2427E0980(v30, &unk_27ECC2230, &qword_2428B6EF0);
    v53 = 0;
    v131 = 0;
    v54 = 0;
    v129 = 0;
    v56 = v143;
    v55 = v144;
    goto LABEL_12;
  }

  (*(v14 + 32))(v19, v30, v13);
  v57 = v142;
  sub_2428B2B98();
  v55 = v144;
  v58 = (*(v144 + 88))(v57, v8);
  if (v58 == *v52)
  {
    (*(v14 + 8))(v19, v13);
    (*(v55 + 96))(v57, v8);
    v54 = 0;
    v129 = 0;
    v59 = v57;
    v53 = *v57;
    v131 = v59[1];
LABEL_11:
    v56 = v143;
    goto LABEL_12;
  }

  if (v58 == *MEMORY[0x277CB9D90])
  {
    (*(v14 + 8))(v19, v150);
    (*(v55 + 96))(v57, v8);
    v60 = v57;
    v53 = 0;
    v131 = 0;
    v54 = *v60;
    v129 = v60[1];
    goto LABEL_11;
  }

  if (v58 != *MEMORY[0x277CB9D98])
  {
    (*(v14 + 8))(v19, v150);
    (*(v55 + 8))(v57, v8);
    v53 = 0;
    v131 = 0;
    v54 = 0;
    v129 = 0;
    goto LABEL_11;
  }

  v134 = v32;
  (*(v55 + 96))(v57, v8);
  v61 = *v57;
  v62 = v57[1];
  v63 = v137;
  sub_2428B35C8();

  (*(v14 + 8))(v19, v150);
  v64 = v141;
  sub_2427EC914(v63, v141);
  v56 = v143;
  v65 = *(v143 + 48);
  v66 = v127;
  if (v65(v64, 1, v127) != 1)
  {
    v105 = v136;
    v142 = *(v56 + 32);
    (v142)(v136, v64, v66);
    v106 = v124;
    v107 = v135;
    sub_2427E0918(v124, v135, &qword_27ECC2CE0, &qword_2428B6560);
    v108 = v65(v107, 1, v66);
    sub_2427E0980(v107, &qword_27ECC2CE0, &qword_2428B6560);
    if (v108 == 1)
    {
      sub_2427E0980(v106, &qword_27ECC2CE0, &qword_2428B6560);
      (v142)(v106, v105, v66);
      v114(v106, 0, 1, v66);
    }

    else
    {
      (*(v56 + 8))(v105, v66);
    }

    v53 = 0;
    v131 = 0;
    v54 = 0;
    v129 = 0;
    v67 = v128;
    v55 = v144;
    v32 = v134;
    v52 = MEMORY[0x277CB9D88];
    goto LABEL_13;
  }

  sub_2427E0980(v64, &qword_27ECC2CE0, &qword_2428B6560);
  v53 = 0;
  v131 = 0;
  v54 = 0;
  v129 = 0;
  v32 = v134;
LABEL_12:
  v67 = v128;
LABEL_13:
  sub_2427E0980(v32, &unk_27ECC2230, &qword_2428B6EF0);
  v68 = sub_2428B2BC8();
  v69 = *(v68 + 16);
  if (!v69)
  {

    (*(v14 + 56))(v148, 1, 1, v150);
    goto LABEL_36;
  }

  v120 = v54;
  v126 = v53;
  v71 = *(v14 + 16);
  v70 = (v14 + 16);
  v144 = v71;
  v72 = (v70[64] + 32) & ~v70[64];
  v113 = v68;
  v73 = v68 + v72;
  v135 = (v55 + 88);
  v136 = v70 + 16;
  v143 = *(v70 + 7);
  LODWORD(v134) = *v52;
  v130 = *MEMORY[0x277CB9D90];
  v133 = v70 - 8;
  v118 = (v55 + 8);
  v132 = (v55 + 96);
  v117 = (v56 + 48);
  v74 = (v56 + 32);
  v110 = (v56 + 8);
  v142 = v70 + 40;
  v125 = *MEMORY[0x277CB9D98];
  v112 = (v70 + 40) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v75 = &qword_27ECC2CE0;
  v137 = v70;
  do
  {
    v76 = v75;
    v77 = v148;
    v78 = v150;
    (v144)(v148, v73, v150);
    v141 = *v142;
    (v141)(v77, 0, 1, v78);
    sub_2427E0980(v77, &unk_27ECC2230, &qword_2428B6EF0);
    v79 = v151;
    sub_2428B2BB8();
    v80 = v147;
    sub_2427E0918(v79, v147, &unk_27ECC2230, &qword_2428B6EF0);
    if (v145(v80, 1, v78) == 1)
    {
      sub_2427E0980(v79, &unk_27ECC2230, &qword_2428B6EF0);
      sub_2427E0980(v80, &unk_27ECC2230, &qword_2428B6EF0);
LABEL_16:
      v75 = v76;
      goto LABEL_17;
    }

    v81 = v80;
    v82 = v139;
    (*v136)(v139, v81, v78);
    v83 = v140;
    sub_2428B2B98();
    v84 = v138;
    v85 = (*v135)(v83, v138);
    if (v85 == v134)
    {
      (*v133)(v82, v78);
      sub_2427E0980(v151, &unk_27ECC2230, &qword_2428B6EF0);
      (*v132)(v83, v84);
      v86 = v83[1];
      if (v131)
      {
      }

      else
      {
        v126 = *v83;
        v131 = v86;
      }

      goto LABEL_16;
    }

    if (v85 == v130)
    {
      (*v133)(v139, v150);
      sub_2427E0980(v151, &unk_27ECC2230, &qword_2428B6EF0);
      v87 = v140;
      (*v132)(v140, v84);
      v88 = v87[1];
      v75 = v76;
      if (v129)
      {
      }

      else
      {
        v120 = *v87;
        v129 = v88;
      }
    }

    else
    {
      v75 = v76;
      if (v85 == v125)
      {
        v89 = v140;
        (*v132)(v140, v84);
        v90 = *v89;
        v91 = v89[1];
        v92 = v121;
        sub_2428B35C8();

        (*v133)(v139, v150);
        sub_2427E0980(v151, &unk_27ECC2230, &qword_2428B6EF0);
        v93 = v92;
        v94 = v122;
        sub_2427EC914(v93, v122);
        v95 = *v117;
        if ((*v117)(v94, 1, v127) == 1)
        {
          sub_2427E0980(v94, v76, &qword_2428B6560);
        }

        else
        {
          v96 = *v74;
          v97 = v127;
          v111 = v74;
          v109 = v96;
          v96(v123, v94, v127);
          v98 = v116;
          sub_2427E0918(v124, v116, v75, &qword_2428B6560);
          if (v95(v98, 1, v97) == 1)
          {
            v99 = v124;
            sub_2427E0980(v124, v75, &qword_2428B6560);
            sub_2427E0980(v98, v75, &qword_2428B6560);
            v100 = v127;
            v74 = v111;
            v109(v99, v123, v127);
            v114(v99, 0, 1, v100);
          }

          else
          {
            (*v110)(v123, v127);
            sub_2427E0980(v98, v75, &qword_2428B6560);
            v74 = v111;
          }
        }
      }

      else
      {
        (*v133)(v139, v150);
        sub_2427E0980(v151, &unk_27ECC2230, &qword_2428B6EF0);
        (*v118)(v140, v84);
      }
    }

LABEL_17:
    v73 += v143;
    --v69;
  }

  while (v69);

  v67 = v128;
  v53 = v126;
  v54 = v120;
  (v141)(v148, 1, 1, v150);
LABEL_36:
  v101 = sub_2428B2BD8();
  (*(*(v101 - 8) + 8))(v149, v101);
  v102 = v129;
  *v67 = v54;
  v67[1] = v102;
  v103 = v131;
  v67[2] = v53;
  v67[3] = v103;
  return sub_2427EC8A4(v124, v67 + v119);
}

uint64_t sub_2427E823C(uint64_t a1)
{
  v2 = type metadata accessor for AttendeeEntity.AttendeeAddresses();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AttendeeEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v64 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2230, &qword_2428B6EF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v63 = &v48 - v7;
  v8 = sub_2428B2B28();
  v61 = *(v8 - 8);
  v62 = v8;
  v9 = *(v61 + 64);
  MEMORY[0x28223BE20](v8);
  v59 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2428B36A8();
  v12 = *(v11 - 8);
  v54 = v11;
  v55 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v50 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2428B2AF8();
  v52 = *(v15 - 8);
  v53 = v15;
  v16 = *(v52 + 64);
  MEMORY[0x28223BE20](v15);
  v51 = (&v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = sub_2428B2BD8();
  v58 = *(v60 - 8);
  v18 = *(v58 + 64);
  v19 = MEMORY[0x28223BE20](v60);
  v57 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v56 = &v48 - v21;
  v22 = sub_2428B3558();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2428B36C8();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = sub_2428B45F8();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = sub_2428B3568();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2308, &qword_2428B7E90);
  v49 = sub_2428B2CE8();
  *a1 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2310, &qword_2428B7E98);
  sub_2427E5D08();
  a1[1] = sub_2428B2CA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2320, &unk_2428B7EA0);
  sub_2428B4578();
  sub_2428B36B8();
  v33 = *MEMORY[0x277CC9110];
  v34 = *(v23 + 104);
  v34(v26, v33, v22);
  sub_2428B3578();
  sub_2427E5D5C();
  a1[2] = sub_2428B2C98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3760, &qword_2428B6ED0);
  sub_2428B4578();
  sub_2428B36B8();
  v34(v26, v33, v22);
  sub_2428B3578();
  a1[3] = sub_2428B2D68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1FC8, &qword_2428B6EE0);
  sub_2428B4578();
  sub_2428B36B8();
  v34(v26, v33, v22);
  sub_2428B3578();
  a1[4] = sub_2428B2D78();
  v35 = v50;
  sub_2428B28C8();
  sub_2427EBA38(&qword_27ECC2340, MEMORY[0x277CC95F0]);
  v36 = v54;
  v37 = sub_2428B4BD8();
  v39 = v38;
  (*(v55 + 8))(v35, v36);
  v41 = v51;
  v40 = v52;
  *v51 = v37;
  v41[1] = v39;
  (*(v40 + 104))(v41, *MEMORY[0x277CB9CC8], v53);
  (*(v61 + 104))(v59, *MEMORY[0x277CB9D18], v62);
  v42 = sub_2428B2BA8();
  (*(*(v42 - 8) + 56))(v63, 1, 1, v42);
  v43 = sub_2428B3148();
  (*(*(v43 - 8) + 56))(v64, 1, 1, v43);
  v44 = v56;
  sub_2428B2B08();
  v45 = v58;
  v46 = v60;
  (*(v58 + 16))(v57, v44, v60);
  sub_2428B2C78();
  return (*(v45 + 8))(v44, v46);
}

uint64_t sub_2427E8AFC(uint64_t a1)
{
  v2 = sub_2427EC850();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_2427E8B48()
{
  sub_2427EC850();

  return sub_2428B28C8();
}

uint64_t sub_2427E8BBC(uint64_t a1)
{
  v2 = sub_2427EB99C();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_2427E8C08(uint64_t a1)
{
  v2 = sub_2427EB740();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_2427E8C54()
{
  v0 = sub_2428B3338();
  __swift_allocate_value_buffer(v0, qword_27ECC22C8);
  __swift_project_value_buffer(v0, qword_27ECC22C8);
  return sub_2428B3318();
}

uint64_t (*static AttendeeEntity.AttendeeEntityParticipantStatus.typeDisplayRepresentation.modify())()
{
  if (qword_27ECC1700 != -1)
  {
    swift_once();
  }

  v0 = sub_2428B3338();
  __swift_project_value_buffer(v0, qword_27ECC22C8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2427E8D94()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v77 = &v54 - v1;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v76 = &v54 - v3;
  v4 = sub_2428B3558();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_2428B36C8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(sub_2428B45F8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_2428B3568();
  v75 = *(v73 - 8);
  v15 = *(v75 + 64);
  MEMORY[0x28223BE20]();
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2478, &qword_2428B8718);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2480, &unk_2428B8720);
  v74 = v18;
  v19 = *(v18 - 8);
  v65 = *(v19 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v58 = v21;
  *(v21 + 16) = xmmword_2428B7E70;
  v57 = *(v18 + 48);
  *(v21 + v20) = 0;
  v22 = v21 + v20;
  sub_2428B4578();
  v72 = v11;
  sub_2428B36B8();
  v23 = *MEMORY[0x277CC9110];
  v24 = *(v5 + 104);
  v71 = v5 + 104;
  v63 = v8;
  v64 = v4;
  v60 = v23;
  v24(v8, v23, v4);
  v69 = v24;
  sub_2428B3578();
  v25 = *(v75 + 56);
  v75 += 56;
  v61 = v25;
  v26 = v73;
  v25(v76, 1, 1, v73);
  v70 = sub_2428B3148();
  v27 = *(v70 - 8);
  v66 = *(v27 + 56);
  v67 = v27 + 56;
  v66(v77, 1, 1, v70);
  v68 = v22;
  sub_2428B3178();
  v28 = v65;
  v56 = v22 + v65;
  v57 = *(v74 + 48);
  *v56 = 1;
  sub_2428B4578();
  sub_2428B36B8();
  v29 = v23;
  v30 = v64;
  v24(v63, v29, v64);
  v62 = v17;
  sub_2428B3578();
  v31 = v61;
  v61(v76, 1, 1, v26);
  v32 = v70;
  v66(v77, 1, 1, v70);
  sub_2428B3178();
  v57 = 2 * v28;
  v55 = (v68 + 2 * v28);
  v56 = *(v74 + 48);
  *v55 = 2;
  v59 = v14;
  sub_2428B4578();
  sub_2428B36B8();
  v33 = v60;
  v34 = v69;
  v69(v63, v60, v30);
  sub_2428B3578();
  v31(v76, 1, 1, v73);
  v35 = v66;
  v66(v77, 1, 1, v32);
  sub_2428B3178();
  v36 = v65;
  v37 = v68;
  v56 = v68 + v57 + v65;
  v57 = *(v74 + 48);
  *v56 = 3;
  sub_2428B4578();
  sub_2428B36B8();
  v38 = v63;
  v34(v63, v33, v64);
  v39 = v38;
  sub_2428B3578();
  v40 = v73;
  v41 = v61;
  v61(v76, 1, 1, v73);
  v35(v77, 1, 1, v70);
  sub_2428B3178();
  v57 = 4 * v36;
  v56 = *(v74 + 48);
  *(v37 + 4 * v36) = 4;
  sub_2428B4578();
  sub_2428B36B8();
  v42 = v60;
  v43 = v64;
  v69(v39, v60, v64);
  sub_2428B3578();
  v41(v76, 1, 1, v40);
  v44 = v70;
  v66(v77, 1, 1, v70);
  sub_2428B3178();
  v45 = v68;
  v56 = v68 + v57 + v65;
  v57 = *(v74 + 48);
  *v56 = 5;
  sub_2428B4578();
  sub_2428B36B8();
  v46 = v63;
  v69(v63, v42, v43);
  sub_2428B3578();
  v47 = v76;
  v41(v76, 1, 1, v73);
  v48 = v77;
  v49 = v44;
  v50 = v66;
  v66(v77, 1, 1, v49);
  sub_2428B3178();
  v51 = (v45 + 6 * v65);
  v65 = *(v74 + 48);
  *v51 = 6;
  sub_2428B4578();
  sub_2428B36B8();
  v69(v46, v60, v64);
  sub_2428B3578();
  v61(v47, 1, 1, v73);
  v50(v48, 1, 1, v70);
  sub_2428B3178();
  v52 = sub_242821334(v58);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27ECC22E0 = v52;
  return result;
}

uint64_t (*static AttendeeEntity.AttendeeEntityParticipantStatus.caseDisplayRepresentations.modify())()
{
  if (qword_27ECC1708 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

CalendarLink::AttendeeEntity::AttendeeEntityParticipantStatus_optional __swiftcall AttendeeEntity.AttendeeEntityParticipantStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2428B4BB8();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AttendeeEntity.AttendeeEntityParticipantStatus.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x676E69646E6570;
  v3 = 0x6574656C706D6F63;
  if (v1 != 5)
  {
    v3 = 0x7365636F72506E69;
  }

  v4 = 0x76697461746E6574;
  if (v1 != 3)
  {
    v4 = 0x65746167656C6564;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6465747065636361;
  if (v1 != 1)
  {
    v5 = 0x64656E696C636564;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2427E9BCC()
{
  *v0;
  *v0;
  *v0;
  *v0;
  sub_2428B4678();
}

void sub_2427E9CF8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x676E69646E6570;
  v5 = 0x6574656C706D6F63;
  v6 = 0xE900000000000073;
  if (v2 == 5)
  {
    v6 = 0xE900000000000064;
  }

  else
  {
    v5 = 0x7365636F72506E69;
  }

  v7 = 0xE900000000000065;
  v8 = 0x76697461746E6574;
  if (v2 != 3)
  {
    v8 = 0x65746167656C6564;
    v7 = 0xE900000000000064;
  }

  if (*v1 > 4u)
  {
    v7 = v6;
  }

  else
  {
    v5 = v8;
  }

  v9 = 0x6465747065636361;
  if (v2 != 1)
  {
    v9 = 0x64656E696C636564;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v7;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_2427E9E04(uint64_t a1)
{
  v2 = sub_2427E5D08();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2427E9E74(uint64_t a1)
{
  v2 = sub_2427EBD80();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_2427E9EE8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2428B3338();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2428B3318();
}

uint64_t sub_2427E9F78@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2428B3338();
  v6 = __swift_project_value_buffer(v5, a2);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a3, v6, v5);
}

uint64_t sub_2427EA044(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v5 = sub_2428B3338();
  v6 = __swift_project_value_buffer(v5, a3);
  swift_beginAccess();
  v7 = *(v5 - 8);
  (*(v7 + 24))(v6, a1, v5);
  swift_endAccess();
  return (*(v7 + 8))(a1, v5);
}

uint64_t (*static AttendeeEntity.AttendeeType.typeDisplayRepresentation.modify())()
{
  if (qword_27ECC1710 != -1)
  {
    swift_once();
  }

  v0 = sub_2428B3338();
  __swift_project_value_buffer(v0, qword_27ECC22E8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2427EA1B8@<X0>(void *a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2428B3338();
  v6 = __swift_project_value_buffer(v5, a2);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a3, v6, v5);
}

uint64_t sub_2427EA264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (*a5 != -1)
  {
    swift_once();
  }

  v8 = sub_2428B3338();
  v9 = __swift_project_value_buffer(v8, a6);
  swift_beginAccess();
  (*(*(v8 - 8) + 24))(v9, a1, v8);
  return swift_endAccess();
}

uint64_t sub_2427EA318()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v57 = v39 - v1;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v56 = v39 - v3;
  v54 = sub_2428B3558();
  v4 = *(v54 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_2428B36C8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(sub_2428B45F8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2428B3568();
  v45 = v14;
  v58 = *(v14 - 8);
  v15 = *(v58 + 64);
  MEMORY[0x28223BE20]();
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2468, &qword_2428B8708);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2470, &qword_2428B8710);
  v19 = *(v18 - 8);
  v50 = *(v19 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2428B7E80;
  v22 = (v21 + v20);
  v42 = *(v18 + 48);
  v43 = v21;
  *v22 = 0;
  sub_2428B4578();
  sub_2428B36B8();
  v53 = *MEMORY[0x277CC9110];
  v23 = *(v4 + 104);
  v48 = v4 + 104;
  v49 = v23;
  v23(v7);
  v24 = v13;
  v25 = v7;
  sub_2428B3578();
  v46 = *(v58 + 56);
  v58 += 56;
  v46(v56, 1, 1, v14);
  v55 = sub_2428B3148();
  v26 = *(v55 - 8);
  v51 = *(v26 + 56);
  v44 = v26 + 56;
  v51(v57, 1, 1, v55);
  sub_2428B3178();
  v27 = v50;
  v47 = v22;
  v52 = v18;
  v28 = *(v18 + 48);
  v41 = &v22[v50];
  v42 = v28;
  *v41 = 1;
  v39[0] = v24;
  sub_2428B4578();
  v39[1] = v10;
  sub_2428B36B8();
  v40 = v25;
  v29 = v49;
  v49(v25, v53, v54);
  v39[2] = v17;
  sub_2428B3578();
  v31 = v45;
  v30 = v46;
  v46(v56, 1, 1, v45);
  v51(v57, 1, 1, v55);
  sub_2428B3178();
  v42 = 2 * v27;
  v41 = *(v18 + 48);
  v22[2 * v27] = 2;
  sub_2428B4578();
  sub_2428B36B8();
  v32 = v40;
  v29(v40, v53, v54);
  sub_2428B3578();
  v33 = v56;
  v30(v56, 1, 1, v31);
  v34 = v57;
  v35 = v51;
  v51(v57, 1, 1, v55);
  sub_2428B3178();
  v36 = &v47[v42 + v50];
  v50 = *(v52 + 48);
  *v36 = 3;
  sub_2428B4578();
  sub_2428B36B8();
  v49(v32, v53, v54);
  sub_2428B3578();
  v46(v33, 1, 1, v45);
  v35(v34, 1, 1, v55);
  sub_2428B3178();
  v37 = sub_24282151C(v43);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27ECC2300 = v37;
  return result;
}

uint64_t sub_2427EAB34(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *a2;
  return sub_2428B3218();
}

uint64_t sub_2427EABB4(uint64_t a1, void *a2, uint64_t *a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a3;
  *a3 = a1;
}

uint64_t (*static AttendeeEntity.AttendeeType.caseDisplayRepresentations.modify())()
{
  if (qword_27ECC1718 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2427EACA4@<X0>(void *a1@<X3>, void *a2@<X4>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = *a2;
  return sub_2428B3218();
}

uint64_t sub_2427EAD0C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = *a1;
  v8 = *a5;
  sub_2428B3218();
  if (v8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = *a6;
  *a6 = v7;
}

CalendarLink::AttendeeEntity::AttendeeType_optional __swiftcall AttendeeEntity.AttendeeType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2427EADE8@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2428B3338();
  v6 = __swift_project_value_buffer(v5, a2);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a3, v6, v5);
}

uint64_t sub_2427EAE94(uint64_t a1)
{
  v2 = sub_2427E5D5C();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2427EAF04(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a4;
  return sub_2428B3218();
}

uint64_t sub_2427EAF64(uint64_t a1)
{
  v2 = sub_2427EC19C();

  return MEMORY[0x28210C300](a1, v2);
}

void sub_2427EAFC0()
{
  v1 = sub_2428B3518();
  v59 = *(v1 - 8);
  v60 = v1;
  v2 = *(v59 + 64);
  MEMORY[0x28223BE20](v1);
  v58 = &v55[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = sub_2428B2B28();
  v4 = *(v62 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v62);
  v7 = &v55[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v64 = &v55[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v57 = &v55[-v13];
  MEMORY[0x28223BE20](v12);
  v15 = &v55[-v14];
  v16 = sub_2428B2BD8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v55[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v23 = &v55[-v22];
  v63 = type metadata accessor for AttendeeEntity.AttendeeAddresses();
  v24 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v26 = &v55[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = *v0;
  sub_2428B2C68();
  sub_2427E72B8(v23, v26);
  v28 = *(v26 + 1);
  v61 = *v26;
  if (!v28 && !*(v26 + 3))
  {
    sub_2427E0918(&v26[*(v63 + 24)], v15, &qword_27ECC2CE0, &qword_2428B6560);
    v29 = sub_2428B35D8();
    v56 = (*(*(v29 - 8) + 48))(v15, 1, v29);
    sub_2427E0980(v15, &qword_27ECC2CE0, &qword_2428B6560);
    if (v56 == 1)
    {
      sub_2427CCDB0();
      swift_allocError();
      *v30 = 112;
      swift_willThrow();
      sub_2427E823C(v26);
      return;
    }
  }

  sub_2428B2C68();
  sub_2428B2B38();
  (*(v17 + 8))(v21, v16);
  v31 = v62;
  v32 = (*(v4 + 88))(v7, v62);
  if (v32 == *MEMORY[0x277CB9CF8])
  {
    (*(v4 + 96))(v7, v31);
    v33 = *v7;
    v34 = v7[1];
  }

  else if (v32 == *MEMORY[0x277CB9D08])
  {
    (*(v4 + 96))(v7, v31);
    v36 = v58;
    v35 = v59;
    v37 = v60;
    (*(v59 + 32))(v58, v7, v60);
    sub_2428B3508();
    (*(v35 + 8))(v36, v37);
  }

  else
  {
    if (!v28)
    {
      if (*(v26 + 3))
      {
        v38 = *(v26 + 2);
        v39 = *(v26 + 3);
      }

      else
      {
        v60 = 0;
        v40 = v57;
        sub_2427E0918(&v26[*(v63 + 24)], v57, &qword_27ECC2CE0, &qword_2428B6560);
        v41 = sub_2428B35D8();
        v42 = *(v41 - 8);
        if ((*(v42 + 48))(v40, 1, v41) == 1)
        {
          sub_2427E0980(v40, &qword_27ECC2CE0, &qword_2428B6560);
          sub_2427CCDB0();
          swift_allocError();
          *v43 = 112;
          swift_willThrow();
          sub_2427E823C(v26);
          (*(v4 + 8))(v7, v62);
          return;
        }

        sub_2428B3598();
        (*(v42 + 8))(v40, v41);
        v31 = v62;
      }

      sub_2428B3218();
    }

    v44 = *(v4 + 8);
    sub_2428B3218();
    v44(v7, v31);
  }

  v45 = *(v26 + 2);
  v46 = *(v26 + 3);
  sub_2427E0918(&v26[*(v63 + 24)], v64, &qword_27ECC2CE0, &qword_2428B6560);
  v47 = sub_2428B4608();

  if (!v28)
  {
    v48 = 0;
    if (v46)
    {
      goto LABEL_19;
    }

LABEL_21:
    v49 = 0;
    goto LABEL_22;
  }

  v48 = sub_2428B4608();
  if (!v46)
  {
    goto LABEL_21;
  }

LABEL_19:
  v49 = sub_2428B4608();
LABEL_22:
  v50 = sub_2428B35D8();
  v51 = *(v50 - 8);
  v52 = v64;
  v53 = 0;
  if ((*(v51 + 48))(v64, 1, v50) != 1)
  {
    v53 = sub_2428B35A8();
    (*(v51 + 8))(v52, v50);
  }

  v54 = [objc_allocWithZone(MEMORY[0x277CC59A0]) initWithName:v47 emailAddress:v48 phoneNumber:v49 url:v53];

  if (v54)
  {
    sub_2427E823C(v26);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_2427EB740()
{
  result = qword_280CDDF10;
  if (!qword_280CDDF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDF10);
  }

  return result;
}

unint64_t sub_2427EB798()
{
  result = qword_280CDE358;
  if (!qword_280CDE358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE358);
  }

  return result;
}

unint64_t sub_2427EB7F0()
{
  result = qword_280CDE340;
  if (!qword_280CDE340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE340);
  }

  return result;
}

unint64_t sub_2427EB848()
{
  result = qword_280CDE318;
  if (!qword_280CDE318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE318);
  }

  return result;
}

unint64_t sub_2427EB8F0()
{
  result = qword_280CDE338;
  if (!qword_280CDE338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE338);
  }

  return result;
}

unint64_t sub_2427EB944()
{
  result = qword_280CDE330;
  if (!qword_280CDE330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE330);
  }

  return result;
}

unint64_t sub_2427EB99C()
{
  result = qword_280CDE328;
  if (!qword_280CDE328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE328);
  }

  return result;
}

uint64_t sub_2427EBA38(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2427EBA84()
{
  result = qword_280CDE320;
  if (!qword_280CDE320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE320);
  }

  return result;
}

unint64_t sub_2427EBB20()
{
  result = qword_27ECC2370;
  if (!qword_27ECC2370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2370);
  }

  return result;
}

unint64_t sub_2427EBB78()
{
  result = qword_27ECC2378;
  if (!qword_27ECC2378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2378);
  }

  return result;
}

unint64_t sub_2427EBBD0()
{
  result = qword_27ECC2380;
  if (!qword_27ECC2380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2380);
  }

  return result;
}

unint64_t sub_2427EBC28()
{
  result = qword_27ECC2388;
  if (!qword_27ECC2388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2388);
  }

  return result;
}

unint64_t sub_2427EBC80()
{
  result = qword_27ECC2390;
  if (!qword_27ECC2390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2390);
  }

  return result;
}

unint64_t sub_2427EBCD4()
{
  result = qword_27ECC2398;
  if (!qword_27ECC2398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2398);
  }

  return result;
}

unint64_t sub_2427EBD28()
{
  result = qword_27ECC23A0;
  if (!qword_27ECC23A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC23A0);
  }

  return result;
}

unint64_t sub_2427EBD80()
{
  result = qword_27ECC23A8;
  if (!qword_27ECC23A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC23A8);
  }

  return result;
}

unint64_t sub_2427EBDF0()
{
  result = qword_27ECC23B0;
  if (!qword_27ECC23B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC23B0);
  }

  return result;
}

unint64_t sub_2427EBE48()
{
  result = qword_27ECC23B8;
  if (!qword_27ECC23B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC23B8);
  }

  return result;
}

unint64_t sub_2427EBEA0()
{
  result = qword_27ECC23C0;
  if (!qword_27ECC23C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC23C0);
  }

  return result;
}

unint64_t sub_2427EBF3C()
{
  result = qword_27ECC23D8;
  if (!qword_27ECC23D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC23D8);
  }

  return result;
}

unint64_t sub_2427EBF94()
{
  result = qword_27ECC23E0;
  if (!qword_27ECC23E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC23E0);
  }

  return result;
}

unint64_t sub_2427EBFEC()
{
  result = qword_27ECC23E8;
  if (!qword_27ECC23E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC23E8);
  }

  return result;
}

unint64_t sub_2427EC044()
{
  result = qword_27ECC23F0;
  if (!qword_27ECC23F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC23F0);
  }

  return result;
}

unint64_t sub_2427EC09C()
{
  result = qword_27ECC23F8;
  if (!qword_27ECC23F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC23F8);
  }

  return result;
}

unint64_t sub_2427EC0F0()
{
  result = qword_27ECC2400;
  if (!qword_27ECC2400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2400);
  }

  return result;
}

unint64_t sub_2427EC144()
{
  result = qword_27ECC2408;
  if (!qword_27ECC2408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2408);
  }

  return result;
}

unint64_t sub_2427EC19C()
{
  result = qword_27ECC2410;
  if (!qword_27ECC2410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2410);
  }

  return result;
}

unint64_t sub_2427EC260()
{
  result = qword_27ECC2418;
  if (!qword_27ECC2418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2418);
  }

  return result;
}

unint64_t sub_2427EC2B8()
{
  result = qword_27ECC2420;
  if (!qword_27ECC2420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2420);
  }

  return result;
}

unint64_t sub_2427EC310()
{
  result = qword_27ECC2428;
  if (!qword_27ECC2428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2428);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2427EC3BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2427EC404(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for AttendeeEntity.AttendeeEntityParticipantStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AttendeeEntity.AttendeeEntityParticipantStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AttendeeEntity.AttendeeType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AttendeeEntity.AttendeeType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_2427EC724()
{
  sub_2427EC7A8();
  if (v0 <= 0x3F)
  {
    sub_2427EC7F8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2427EC7A8()
{
  if (!qword_27ECC2450)
  {
    v0 = sub_2428B48F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECC2450);
    }
  }
}

void sub_2427EC7F8()
{
  if (!qword_27ECC2458)
  {
    sub_2428B35D8();
    v0 = sub_2428B48F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECC2458);
    }
  }
}

unint64_t sub_2427EC850()
{
  result = qword_27ECC2460;
  if (!qword_27ECC2460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2460);
  }

  return result;
}

uint64_t sub_2427EC8A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2427EC914(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t EditEventIntentRepresentation.event.getter()
{
  v1 = *v0;
  sub_2428B4378();
  return v3;
}

uint64_t sub_2427ECA14(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[5];
  v10[4] = a2[4];
  v10[5] = v3;
  v4 = a2[7];
  v10[6] = a2[6];
  v10[7] = v4;
  v5 = a2[1];
  v10[0] = *a2;
  v10[1] = v5;
  v6 = a2[3];
  v10[2] = a2[2];
  v10[3] = v6;
  v9 = v2;
  sub_2427EF3C0(v10, v8);
  sub_2428B2F38();
  sub_2428B4388();
  return sub_2427EF3F8(v10);
}

uint64_t EditEventIntentRepresentation.event.setter()
{
  v1 = *v0;
  sub_2428B2F38();
  sub_2428B4388();
}

uint64_t (*EditEventIntentRepresentation.event.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t EditEventIntentRepresentation.title.getter()
{
  v1 = *(v0 + 8);
  sub_2428B4378();
  return v3;
}

uint64_t sub_2427ECBA4(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[5];
  v10[4] = a2[4];
  v10[5] = v4;
  v5 = a2[7];
  v10[6] = a2[6];
  v10[7] = v5;
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  v9[16] = v3;
  v9[17] = v2;
  sub_2428B3218();
  sub_2427EF3C0(v10, v9);
  sub_2428B4388();
  return sub_2427EF3F8(v10);
}

uint64_t (*EditEventIntentRepresentation.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t sub_2427ECD04(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v16[-v9];
  sub_2427E0918(a1, &v16[-v9], &qword_27ECC26F0, &unk_2428B7960);
  v11 = a2[5];
  v17[4] = a2[4];
  v17[5] = v11;
  v12 = a2[7];
  v17[6] = a2[6];
  v17[7] = v12;
  v13 = a2[1];
  v17[0] = *a2;
  v17[1] = v13;
  v14 = a2[3];
  v17[2] = a2[2];
  v17[3] = v14;
  sub_2427E0918(v10, v8, &qword_27ECC26F0, &unk_2428B7960);
  sub_2427EF3C0(v17, v16);
  sub_2428B4388();
  sub_2427E0980(v10, &qword_27ECC26F0, &unk_2428B7960);
  return sub_2427EF3F8(v17);
}

uint64_t EditEventIntentRepresentation.startDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 16);
  sub_2427E0918(a1, &v8 - v6, &qword_27ECC26F0, &unk_2428B7960);
  sub_2428B4388();
  return sub_2427E0980(a1, &qword_27ECC26F0, &unk_2428B7960);
}

uint64_t (*EditEventIntentRepresentation.startDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t sub_2427ECFB0(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v16[-v9];
  sub_2427E0918(a1, &v16[-v9], &qword_27ECC26F0, &unk_2428B7960);
  v11 = a2[5];
  v17[4] = a2[4];
  v17[5] = v11;
  v12 = a2[7];
  v17[6] = a2[6];
  v17[7] = v12;
  v13 = a2[1];
  v17[0] = *a2;
  v17[1] = v13;
  v14 = a2[3];
  v17[2] = a2[2];
  v17[3] = v14;
  sub_2427E0918(v10, v8, &qword_27ECC26F0, &unk_2428B7960);
  sub_2427EF3C0(v17, v16);
  sub_2428B4388();
  sub_2427E0980(v10, &qword_27ECC26F0, &unk_2428B7960);
  return sub_2427EF3F8(v17);
}

uint64_t EditEventIntentRepresentation.endDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 24);
  sub_2427E0918(a1, &v8 - v6, &qword_27ECC26F0, &unk_2428B7960);
  sub_2428B4388();
  return sub_2427E0980(a1, &qword_27ECC26F0, &unk_2428B7960);
}

uint64_t (*EditEventIntentRepresentation.endDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 24);
  *(v3 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t EditEventIntentRepresentation.isAllDay.getter()
{
  v1 = *(v0 + 32);
  sub_2428B4378();
  return v3;
}

uint64_t sub_2427ED26C(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[5];
  v9[4] = a2[4];
  v9[5] = v3;
  v4 = a2[7];
  v9[6] = a2[6];
  v9[7] = v4;
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  v6 = a2[3];
  v9[2] = a2[2];
  v9[3] = v6;
  v8[135] = v2;
  sub_2427EF3C0(v9, v8);
  sub_2428B4388();
  return sub_2427EF3F8(v9);
}

uint64_t (*EditEventIntentRepresentation.isAllDay.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 32);
  *(v3 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t EditEventIntentRepresentation.floatingTimeZoneID.getter()
{
  v1 = *(v0 + 40);
  sub_2428B4378();
  return v3;
}

uint64_t sub_2427ED3DC(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[5];
  v10[4] = a2[4];
  v10[5] = v4;
  v5 = a2[7];
  v10[6] = a2[6];
  v10[7] = v5;
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  v9[16] = v3;
  v9[17] = v2;
  sub_2428B3218();
  sub_2427EF3C0(v10, v9);
  sub_2428B4388();
  return sub_2427EF3F8(v10);
}

uint64_t (*EditEventIntentRepresentation.floatingTimeZoneID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 40);
  *(v3 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t sub_2427ED53C(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC44A0, &qword_2428C16C0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v16[-v9];
  sub_2427E0918(a1, &v16[-v9], &qword_27ECC44A0, &qword_2428C16C0);
  v11 = a2[5];
  v17[4] = a2[4];
  v17[5] = v11;
  v12 = a2[7];
  v17[6] = a2[6];
  v17[7] = v12;
  v13 = a2[1];
  v17[0] = *a2;
  v17[1] = v13;
  v14 = a2[3];
  v17[2] = a2[2];
  v17[3] = v14;
  sub_2427E0918(v10, v8, &qword_27ECC44A0, &qword_2428C16C0);
  sub_2427EF3C0(v17, v16);
  sub_2428B4388();
  sub_2427E0980(v10, &qword_27ECC44A0, &qword_2428C16C0);
  return sub_2427EF3F8(v17);
}

uint64_t EditEventIntentRepresentation.recurrence.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC44A0, &qword_2428C16C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 48);
  sub_2427E0918(a1, &v8 - v6, &qword_27ECC44A0, &qword_2428C16C0);
  sub_2428B4388();
  return sub_2427E0980(a1, &qword_27ECC44A0, &qword_2428C16C0);
}

uint64_t (*EditEventIntentRepresentation.recurrence.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 48);
  *(v3 + 32) = sub_2428B4368();
  return sub_2427CBEA8;
}

uint64_t EditEventIntentRepresentation.calendar.getter()
{
  v1 = *(v0 + 56);
  sub_2428B4378();
  return v3;
}

uint64_t sub_2427ED7F8(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[5];
  v10[4] = a2[4];
  v10[5] = v3;
  v4 = a2[7];
  v10[6] = a2[6];
  v10[7] = v4;
  v5 = a2[1];
  v10[0] = *a2;
  v10[1] = v5;
  v6 = a2[3];
  v10[2] = a2[2];
  v10[3] = v6;
  v9 = v2;
  sub_2427EF3C0(v10, v8);
  sub_2428B2F38();
  sub_2428B4388();
  return sub_2427EF3F8(v10);
}

uint64_t EditEventIntentRepresentation.calendar.setter()
{
  v1 = *(v0 + 56);
  sub_2428B2F38();
  sub_2428B4388();
}

uint64_t (*EditEventIntentRepresentation.calendar.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 56);
  *(v3 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t sub_2427ED978(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[5];
  v9[4] = a2[4];
  v9[5] = v3;
  v4 = a2[7];
  v9[6] = a2[6];
  v9[7] = v4;
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  v6 = a2[3];
  v9[2] = a2[2];
  v9[3] = v6;
  v8[135] = v2;
  sub_2427EF3C0(v9, v8);
  sub_2428B4388();
  return sub_2427EF3F8(v9);
}

uint64_t EditEventIntentRepresentation.availability.setter(char *a1)
{
  v2 = *(v1 + 64);
  v4 = *a1;
  return sub_2428B4388();
}

uint64_t (*EditEventIntentRepresentation.availability.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 64);
  *(v3 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t sub_2427EDADC(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[5];
  v9[4] = a2[4];
  v9[5] = v3;
  v4 = a2[7];
  v9[6] = a2[6];
  v9[7] = v4;
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  v6 = a2[3];
  v9[2] = a2[2];
  v9[3] = v6;
  v8[135] = v2;
  sub_2427EF3C0(v9, v8);
  sub_2428B4388();
  return sub_2427EF3F8(v9);
}

uint64_t EditEventIntentRepresentation.privacyLevel.setter(char *a1)
{
  v2 = *(v1 + 72);
  v4 = *a1;
  return sub_2428B4388();
}

uint64_t (*EditEventIntentRepresentation.privacyLevel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 72);
  *(v3 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t EditEventIntentRepresentation.travelTime.getter()
{
  v1 = *(v0 + 80);
  sub_2428B4378();
  return v3;
}

uint64_t sub_2427EDC54(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a2[5];
  v11[4] = a2[4];
  v11[5] = v4;
  v5 = a2[7];
  v11[6] = a2[6];
  v11[7] = v5;
  v6 = a2[1];
  v11[0] = *a2;
  v11[1] = v6;
  v7 = a2[3];
  v11[2] = a2[2];
  v11[3] = v7;
  v9[16] = v2;
  v10 = v3;
  sub_2427EF3C0(v11, v9);
  sub_2428B4388();
  return sub_2427EF3F8(v11);
}

uint64_t (*EditEventIntentRepresentation.travelTime.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 80);
  *(v3 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t EditEventIntentRepresentation.note.getter()
{
  v1 = *(v0 + 88);
  sub_2428B4378();
  return v3;
}

uint64_t sub_2427EDDD0(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[5];
  v10[4] = a2[4];
  v10[5] = v4;
  v5 = a2[7];
  v10[6] = a2[6];
  v10[7] = v5;
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  v9[16] = v3;
  v9[17] = v2;
  sub_2428B3218();
  sub_2427EF3C0(v10, v9);
  sub_2428B4388();
  return sub_2427EF3F8(v10);
}

uint64_t (*EditEventIntentRepresentation.note.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 88);
  *(v3 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t sub_2427EDF30(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[5];
  v9[4] = a2[4];
  v9[5] = v3;
  v4 = a2[7];
  v9[6] = a2[6];
  v9[7] = v4;
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  v6 = a2[3];
  v9[2] = a2[2];
  v9[3] = v6;
  v8[135] = v2;
  sub_2427EF3C0(v9, v8);
  sub_2428B4388();
  return sub_2427EF3F8(v9);
}

uint64_t EditEventIntentRepresentation.status.setter(char *a1)
{
  v2 = *(v1 + 96);
  v4 = *a1;
  return sub_2428B4388();
}

uint64_t (*EditEventIntentRepresentation.status.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 96);
  *(v3 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t sub_2427EE094(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v16[-v9];
  sub_2427E0918(a1, &v16[-v9], &qword_27ECC2CE0, &qword_2428B6560);
  v11 = a2[5];
  v17[4] = a2[4];
  v17[5] = v11;
  v12 = a2[7];
  v17[6] = a2[6];
  v17[7] = v12;
  v13 = a2[1];
  v17[0] = *a2;
  v17[1] = v13;
  v14 = a2[3];
  v17[2] = a2[2];
  v17[3] = v14;
  sub_2427E0918(v10, v8, &qword_27ECC2CE0, &qword_2428B6560);
  sub_2427EF3C0(v17, v16);
  sub_2428B4388();
  sub_2427E0980(v10, &qword_27ECC2CE0, &qword_2428B6560);
  return sub_2427EF3F8(v17);
}

uint64_t EditEventIntentRepresentation.url.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 104);
  sub_2427E0918(a1, &v8 - v6, &qword_27ECC2CE0, &qword_2428B6560);
  sub_2428B4388();
  return sub_2427E0980(a1, &qword_27ECC2CE0, &qword_2428B6560);
}

uint64_t (*EditEventIntentRepresentation.url.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 104);
  *(v3 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t sub_2427EE340(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[5];
  v9[4] = a2[4];
  v9[5] = v3;
  v4 = a2[7];
  v9[6] = a2[6];
  v9[7] = v4;
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  v6 = a2[3];
  v9[2] = a2[2];
  v9[3] = v6;
  v8[135] = v2;
  sub_2427EF3C0(v9, v8);
  sub_2428B4388();
  return sub_2427EF3F8(v9);
}

uint64_t EditEventIntentRepresentation.participationStatus.setter(char *a1)
{
  v2 = *(v1 + 112);
  v4 = *a1;
  return sub_2428B4388();
}

uint64_t (*EditEventIntentRepresentation.participationStatus.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 112);
  *(v3 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t sub_2427EE4A4(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[5];
  v9[4] = a2[4];
  v9[5] = v3;
  v4 = a2[7];
  v9[6] = a2[6];
  v9[7] = v4;
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  v6 = a2[3];
  v9[2] = a2[2];
  v9[3] = v6;
  v8[135] = v2;
  sub_2427EF3C0(v9, v8);
  sub_2428B4388();
  return sub_2427EF3F8(v9);
}

uint64_t EditEventIntentRepresentation.span.setter(char *a1)
{
  v2 = *(v1 + 120);
  v4 = *a1;
  return sub_2428B4388();
}

uint64_t (*EditEventIntentRepresentation.span.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 120);
  *(v3 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t EditEventIntentRepresentation.init(target:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v81 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v80 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v79 = &v76 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC44A0, &qword_2428C16C0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v78 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v77 = &v76 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v76 - v18;
  v82 = 0;
  v83 = 0;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2140, &unk_2428B7980);
  v20 = *(v76 + 48);
  v21 = *(v76 + 52);
  swift_allocObject();
  a2[1] = sub_2428B4358();
  v22 = sub_2428B3688();
  v23 = *(*(v22 - 8) + 56);
  v23(v19, 1, 1, v22);
  sub_2427E0918(v19, v17, &qword_27ECC26F0, &unk_2428B7960);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2148, &unk_2428B8730);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = sub_2428B4358();
  sub_2427E0980(v19, &qword_27ECC26F0, &unk_2428B7960);
  a2[2] = v27;
  v23(v19, 1, 1, v22);
  sub_2427E0918(v19, v17, &qword_27ECC26F0, &unk_2428B7960);
  v28 = *(v24 + 48);
  v29 = *(v24 + 52);
  swift_allocObject();
  v30 = sub_2428B4358();
  sub_2427E0980(v19, &qword_27ECC26F0, &unk_2428B7960);
  a2[3] = v30;
  LOBYTE(v82) = 2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2150, &unk_2428B7990);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  a2[4] = sub_2428B4358();
  v82 = 0;
  v83 = 0;
  v34 = v76;
  v35 = *(v76 + 48);
  v36 = *(v76 + 52);
  swift_allocObject();
  a2[5] = sub_2428B4358();
  v37 = sub_2428B36D8();
  v38 = v77;
  (*(*(v37 - 8) + 56))(v77, 1, 1, v37);
  sub_2427E0918(v38, v78, &qword_27ECC44A0, &qword_2428C16C0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2158, &qword_2428B8740);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  v42 = sub_2428B4358();
  sub_2427E0980(v38, &qword_27ECC44A0, &qword_2428C16C0);
  a2[6] = v42;
  v82 = 0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2168, &unk_2428C50B0);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  a2[7] = sub_2428B4358();
  LOBYTE(v82) = 5;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2170, &unk_2428B79B0);
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  a2[8] = sub_2428B4358();
  LOBYTE(v82) = 4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2178, &unk_2428C50C0);
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  a2[9] = sub_2428B4358();
  v82 = 0;
  LOBYTE(v83) = 1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2180, &qword_2428B79C0);
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();
  a2[10] = sub_2428B4358();
  v82 = 0;
  v83 = 0;
  v55 = *(v34 + 48);
  v56 = *(v34 + 52);
  swift_allocObject();
  a2[11] = sub_2428B4358();
  LOBYTE(v82) = 4;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2488, &unk_2428B8748);
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  swift_allocObject();
  a2[12] = sub_2428B4358();
  v60 = sub_2428B35D8();
  v61 = v79;
  (*(*(v60 - 8) + 56))(v79, 1, 1, v60);
  sub_2427E0918(v61, v80, &qword_27ECC2CE0, &qword_2428B6560);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2190, &qword_2428B79D0);
  v63 = *(v62 + 48);
  v64 = *(v62 + 52);
  swift_allocObject();
  v65 = sub_2428B4358();
  sub_2427E0980(v61, &qword_27ECC2CE0, &qword_2428B6560);
  a2[13] = v65;
  LOBYTE(v82) = 7;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2490, &qword_2428B8758);
  v67 = *(v66 + 48);
  v68 = *(v66 + 52);
  swift_allocObject();
  a2[14] = sub_2428B4358();
  LOBYTE(v82) = 3;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2498, &unk_2428B8760);
  v70 = *(v69 + 48);
  v71 = *(v69 + 52);
  swift_allocObject();
  a2[15] = sub_2428B4358();
  v82 = v81;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1DA8, &qword_2428B64C0);
  v73 = *(v72 + 48);
  v74 = *(v72 + 52);
  swift_allocObject();
  result = sub_2428B4358();
  *a2 = result;
  return result;
}

CalendarLink::SpanRepresentation_optional __swiftcall SpanRepresentation.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_2427EECD8()
{
  result = qword_27ECC24A0;
  if (!qword_27ECC24A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC24A0);
  }

  return result;
}

unint64_t sub_2427EED38()
{
  result = qword_27ECC24A8;
  if (!qword_27ECC24A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC24A8);
  }

  return result;
}

unint64_t sub_2427EED90()
{
  result = qword_27ECC24B0;
  if (!qword_27ECC24B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC24B0);
  }

  return result;
}

unint64_t sub_2427EEDE8()
{
  result = qword_27ECC24B8;
  if (!qword_27ECC24B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC24B8);
  }

  return result;
}

unint64_t sub_2427EEE40()
{
  result = qword_27ECC24C0;
  if (!qword_27ECC24C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC24C0);
  }

  return result;
}

unint64_t sub_2427EEEA8()
{
  result = qword_27ECC24C8;
  if (!qword_27ECC24C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC24D0, &qword_2428B88A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC24C8);
  }

  return result;
}

unint64_t sub_2427EEF1C()
{
  result = qword_27ECC24D8;
  if (!qword_27ECC24D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC24D8);
  }

  return result;
}

unint64_t sub_2427EEF74()
{
  result = qword_27ECC24E0;
  if (!qword_27ECC24E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC24E0);
  }

  return result;
}

uint64_t sub_2427EEFC8(uint64_t a1)
{
  v2 = sub_2427EF428();

  return MEMORY[0x28213DAB0](a1, v2);
}

unint64_t sub_2427EF008()
{
  result = qword_27ECC24E8;
  if (!qword_27ECC24E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC24E8);
  }

  return result;
}

uint64_t sub_2427EF05C(uint64_t a1)
{
  v2 = sub_2427EF428();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_2427EF098(uint64_t a1, uint64_t a2)
{
  v4 = sub_2427EED90();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_2427EF0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2427EF428();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_2427EF148(uint64_t a1, uint64_t a2)
{
  v4 = sub_2427EED90();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_2427EF1B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2427EF200(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpanRepresentation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SpanRepresentation(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2427EF428()
{
  result = qword_27ECC24F0;
  if (!qword_27ECC24F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC24F0);
  }

  return result;
}

uint64_t static LocalizedStringUtils.localizedTitle(forGroup:)(uint64_t a1)
{
  v2 = sub_2428B36C8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_2428B3558();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2428B45F8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      type metadata accessor for LocalizedStringUtils();
      v11 = sub_2427F0F90();
      return sub_2427EFCE4(v11);
    }

    else
    {
      sub_2428B4578();
      if (qword_27ECC1780 != -1)
      {
        swift_once();
      }

      v14 = __swift_project_value_buffer(v4, qword_27ECD4500);
      (*(v5 + 16))(v8, v14, v4);
      sub_2428B36B8();
      return sub_2428B3588();
    }
  }

  else
  {
    v13 = [*a1 title];
    sub_2428B4618();

    return sub_2428B3548();
  }
}

uint64_t static LocalizedStringUtils.localizedTitleForLocalSource()()
{
  v0 = sub_2427F0F90();

  return sub_2427EFCE4(v0);
}

id static LocalizedStringUtils.localizedTitle(forCalendar:)(void *a1)
{
  v2 = sub_2428B36C8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_2428B3558();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2428B45F8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  if ([a1 type] == 4)
  {
    sub_2428B4578();
    if (qword_27ECC1780 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  if ([a1 isSuggestedEventCalendar])
  {
    sub_2428B4578();
    if (qword_27ECC1780 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  v11 = [a1 unlocalizedTitle];
  if (v11)
  {
    v12 = v11;
    v13 = sub_2428B4618();
    v15 = v14;

    if (v13 == 0xD000000000000015 && 0x80000002428C6EB0 == v15)
    {

LABEL_12:
      sub_2428B4578();
      if (qword_27ECC1780 != -1)
      {
        swift_once();
      }

      v17 = __swift_project_value_buffer(v4, qword_27ECD4500);
      (*(v5 + 16))(v8, v17, v4);
      sub_2428B36B8();
      return sub_2428B3578();
    }

    v16 = sub_2428B4BF8();

    if (v16)
    {
      goto LABEL_12;
    }
  }

  result = [a1 source];
  if (result)
  {
    v19 = result;
    v20 = [result sourceType];

    if (v20 == sub_2428B4818())
    {
      sub_2428B4578();
      if (qword_27ECC1780 == -1)
      {
LABEL_18:
        v21 = __swift_project_value_buffer(v4, qword_27ECD4500);
        (*(v5 + 16))(v8, v21, v4);
        sub_2428B36B8();
        return sub_2428B3588();
      }

LABEL_22:
      swift_once();
      goto LABEL_18;
    }

    v22 = [a1 title];
    sub_2428B4618();

    return sub_2428B3548();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2427EFCE4(unsigned __int8 a1)
{
  v2 = sub_2428B36C8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_2428B3558();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2428B45F8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        sub_2428B4578();
        if (qword_27ECC1780 == -1)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_2428B4578();
        if (qword_27ECC1780 == -1)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      sub_2428B4578();
      if (qword_27ECC1780 == -1)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_18;
  }

  if (a1 == 3)
  {
    sub_2428B4578();
    if (qword_27ECC1780 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (a1 == 4)
  {
    sub_2428B4578();
    if (qword_27ECC1780 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  sub_2428B4578();
  if (qword_27ECC1780 != -1)
  {
LABEL_18:
    swift_once();
  }

LABEL_17:
  v11 = __swift_project_value_buffer(v4, qword_27ECD4500);
  (*(v5 + 16))(v8, v11, v4);
  sub_2428B36B8();
  return sub_2428B3588();
}

id sub_2427F0234@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = sub_2428B36C8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v43 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2428B3558();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4);
  v42 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2428B45F8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2428B45D8();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  MEMORY[0x28223BE20](v11);
  v12 = sub_2428B3708();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = CUIKCalendar();
  if (result)
  {
    v18 = result;
    sub_2428B36F8();

    v19 = sub_2428B36E8();
    (*(v13 + 8))(v16, v12);
    v20 = sub_2428B3658();
    v21 = sub_2428B3658();
    v22 = [v19 cal:v20 isMultidayEventForUIWithStartDate:v21 endDate:?];

    if (v22)
    {
      sub_2428B45C8();
      sub_2428B45B8();
      v23 = sub_2428B3658();
      v24 = CUIKLongDayStringForDate();

      if (v24)
      {
        v25 = sub_2428B4618();
        v27 = v26;
      }

      else
      {
        v25 = 0;
        v27 = 0;
      }

      v45 = v25;
      v46 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC24F8, &qword_2428B8AD8);
      sub_2428B4658();
      sub_2428B4598();

      sub_2428B45B8();
      v33 = sub_2428B3658();
      v34 = CUIKLongDayStringForDate();

      if (v34)
      {
        v35 = sub_2428B4618();
        v37 = v36;
      }

      else
      {
        v35 = 0;
        v37 = 0;
      }

      v45 = v35;
      v46 = v37;
      sub_2428B4658();
      sub_2428B4598();

      sub_2428B45B8();
      sub_2428B45E8();
      if (qword_27ECC1780 == -1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_2428B45C8();
      sub_2428B45B8();
      v28 = sub_2428B3658();
      v29 = CUIKLongDayStringForDate();

      if (v29)
      {
        v30 = sub_2428B4618();
        v32 = v31;
      }

      else
      {
        v30 = 0;
        v32 = 0;
      }

      v45 = v30;
      v46 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC24F8, &qword_2428B8AD8);
      sub_2428B4658();
      sub_2428B4598();

      sub_2428B45B8();
      sub_2428B45E8();
      if (qword_27ECC1780 == -1)
      {
        goto LABEL_15;
      }
    }

    swift_once();
LABEL_15:
    v38 = v41;
    v39 = __swift_project_value_buffer(v41, qword_27ECD4500);
    (*(v40 + 16))(v42, v39, v38);
    sub_2428B36B8();
    return sub_2428B3588();
  }

  __break(1u);
  return result;
}

void sub_2427F0828()
{
  v0 = sub_2428B36C8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2428B3558();
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v2);
  v40 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2428B45F8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2428B45D8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2428B3708();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2428B3658();
  v16 = CUIKStringForTime();

  if (!v16)
  {
    __break(1u);
    goto LABEL_18;
  }

  v36[5] = sub_2428B4618();
  v36[6] = v17;

  v18 = sub_2428B3658();
  v19 = CUIKStringForTime();

  if (!v19)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v36[1] = sub_2428B4618();
  v36[4] = v20;

  v21 = sub_2428B3658();
  v22 = CUIKLongDayStringForDate();

  if (!v22)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v36[2] = sub_2428B4618();
  v36[3] = v23;

  v24 = CUIKCalendar();
  if (!v24)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v25 = v24;
  sub_2428B36F8();

  v26 = sub_2428B36E8();
  (*(v11 + 8))(v14, v10);
  v27 = sub_2428B3658();
  v28 = sub_2428B3658();
  v29 = [v26 cal:v27 isMultidayEventForUIWithStartDate:v28 endDate:?];

  if ((v29 & 1) == 0)
  {
    if (sub_2428B3668())
    {

      sub_2428B45C8();
      sub_2428B45B8();
      sub_2428B4598();

      sub_2428B45B8();
      sub_2428B4598();

      sub_2428B45B8();
      sub_2428B45E8();
      if (qword_27ECC1780 == -1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_2428B45C8();
      sub_2428B45B8();
      sub_2428B4598();

      sub_2428B45B8();
      sub_2428B4598();

      sub_2428B45B8();
      sub_2428B4598();

      sub_2428B45B8();
      sub_2428B45E8();
      if (qword_27ECC1780 == -1)
      {
LABEL_14:
        v34 = v38;
        v35 = __swift_project_value_buffer(v38, qword_27ECD4500);
        (*(v37 + 16))(v40, v35, v34);
        sub_2428B36B8();
LABEL_15:
        sub_2428B3588();
        return;
      }
    }

    swift_once();
    goto LABEL_14;
  }

  v30 = sub_2428B3658();
  v31 = CUIKLongDayStringForDate();

  if (v31)
  {
    sub_2428B4618();

    sub_2428B45C8();
    sub_2428B45B8();
    sub_2428B4598();

    sub_2428B45B8();
    sub_2428B4598();

    sub_2428B45B8();
    sub_2428B4598();

    sub_2428B45B8();
    sub_2428B4598();

    sub_2428B45B8();
    sub_2428B45E8();
    if (qword_27ECC1780 != -1)
    {
      swift_once();
    }

    v32 = v38;
    v33 = __swift_project_value_buffer(v38, qword_27ECD4500);
    (*(v37 + 16))(v40, v33, v32);
    sub_2428B36B8();
    goto LABEL_15;
  }

LABEL_21:
  __break(1u);
}

uint64_t sub_2427F0F90()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 model];

  v2 = sub_2428B4618();
  v4 = v3;

  v5 = v2 == 0x656E6F685069 && v4 == 0xE600000000000000;
  if (v5 || (sub_2428B4BF8() & 1) != 0)
  {

    return 1;
  }

  else
  {
    v7 = v2 == 1684099177 && v4 == 0xE400000000000000;
    if (v7 || (sub_2428B4BF8() & 1) != 0)
    {

      return 2;
    }

    else if (v2 == 0x756F5420646F5069 && v4 == 0xEA00000000006863)
    {

      return 3;
    }

    else
    {
      v9 = sub_2428B4BF8();

      if (v9)
      {
        return 3;
      }

      else
      {
        return 5;
      }
    }
  }
}

uint64_t sub_2427F1134()
{
  v0 = sub_2428B3558();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2428B36C8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_2428B45F8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2428B3568();
  __swift_allocate_value_buffer(v9, qword_27ECC2500);
  __swift_project_value_buffer(v9, qword_27ECC2500);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_2428B3588();
}

uint64_t static HighlightEventIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1720 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC2500);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2427F13CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_2428B3558();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2428B36C8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2428B45F8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_2428B3568();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_2428B3078();
  __swift_allocate_value_buffer(v15, qword_27ECC2518);
  __swift_project_value_buffer(v15, qword_27ECC2518);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_2428B3588();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_2428B3088();
}

uint64_t static HighlightEventIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1728 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC2518);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static HighlightEventIntent.description.setter(uint64_t a1)
{
  if (qword_27ECC1728 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC2518);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static HighlightEventIntent.description.modify())()
{
  if (qword_27ECC1728 != -1)
  {
    swift_once();
  }

  v0 = sub_2428B3078();
  __swift_project_value_buffer(v0, qword_27ECC2518);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2427F18F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1728 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC2518);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_2427F19B8(uint64_t a1)
{
  if (qword_27ECC1728 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC2518);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t HighlightEventIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2428B3298();
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v2);
  v40 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v39 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v38 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v37 = &v31 - v12;
  v32 = sub_2428B3558();
  v13 = *(v32 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v32);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2428B36C8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = sub_2428B45F8();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = sub_2428B3568();
  v33 = *(v21 - 8);
  v34 = v21;
  v22 = *(v33 + 64);
  MEMORY[0x28223BE20](v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2530, &qword_2428BD510);
  sub_2428B2958();
  v53 = 0u;
  v54 = 0u;
  *&v55 = 0;
  sub_2428B2948();
  v23 = sub_2428B2918();
  v36 = a1;
  *a1 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  *&v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_2428B2948();
  a1[1] = sub_2428B2918();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2540, &qword_2428B5AE0);
  sub_2428B4578();
  sub_2428B36B8();
  v24 = *MEMORY[0x277CC9110];
  v25 = *(v13 + 104);
  v26 = v32;
  v25(v16, v24, v32);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v25(v16, v24, v26);
  v27 = v37;
  sub_2428B3578();
  (*(v33 + 56))(v27, 0, 1, v34);
  sub_2427CBC50(&v53);
  v49 = v59;
  v50 = v60;
  v51 = v61;
  v52 = v62;
  v45 = v55;
  v46 = v56;
  v47 = v57;
  v48 = v58;
  v43 = v53;
  v44 = v54;
  v28 = sub_2428B2AE8();
  v29 = *(*(v28 - 8) + 56);
  v29(v38, 1, 1, v28);
  v29(v39, 1, 1, v28);
  (*(v41 + 104))(v40, *MEMORY[0x277CBA308], v42);
  sub_2427C2774();
  result = sub_2428B2E68();
  v36[2] = result;
  return result;
}

uint64_t HighlightEventIntent.viewOpener.setter(uint64_t *a1)
{
  v3 = *v1;
  sub_2427CBD84(a1, v5);
  sub_2428B28F8();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*HighlightEventIntent.viewOpener.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_2428B28D8();
  return sub_2427CBEA8;
}

uint64_t HighlightEventIntent.eventStoreProvider.getter()
{
  v1 = *(v0 + 8);
  sub_2428B28E8();
  return v3;
}

uint64_t HighlightEventIntent.eventStoreProvider.setter()
{
  v1 = *(v0 + 8);
  swift_unknownObjectRetain();
  sub_2428B28F8();
  return swift_unknownObjectRelease();
}

uint64_t (*HighlightEventIntent.eventStoreProvider.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_2428B28D8();
  return sub_2427CD67C;
}

uint64_t HighlightEventIntent.target.setter(__int128 *a1)
{
  v10 = a1[6];
  v11 = a1[7];
  v12 = a1[8];
  v13 = a1[9];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v4 = *a1;
  v5 = a1[1];
  v2 = *(v1 + 16);
  return sub_2428B2DD8();
}

uint64_t (*HighlightEventIntent.target.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t static HighlightEventIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2550, &qword_2428B8AF8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2558, &qword_2428B8B00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_2427F2520();
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2568, &qword_2428B8B30);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3238();
}

unint64_t sub_2427F2520()
{
  result = qword_27ECC2560;
  if (!qword_27ECC2560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2560);
  }

  return result;
}

uint64_t HighlightEventIntent.perform()(uint64_t a1)
{
  *(v2 + 424) = a1;
  *(v2 + 432) = *v1;
  *(v2 + 448) = *(v1 + 16);
  sub_2428B4758();
  *(v2 + 456) = sub_2428B4748();
  v4 = sub_2428B4728();
  *(v2 + 464) = v4;
  *(v2 + 472) = v3;

  return MEMORY[0x2822009F8](sub_2427F261C, v4, v3);
}

uint64_t sub_2427F261C()
{
  v1 = sub_2428B43D8();
  *(v0 + 360) = v1;
  *(v0 + 368) = sub_2427CCD68(&qword_280CDDA40, MEMORY[0x277CF7740]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 336));
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CF7730], v1);
  LOBYTE(v1) = sub_2428B37D8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 336));
  if ((v1 & 1) == 0)
  {
    v22 = *(v0 + 456);

    sub_2428B2938();
    sub_2427CCD68(&qword_27ECC1A80, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_2428B2928();
LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  v3 = *(v0 + 440);
  sub_2428B28E8();
  v4 = [*(v0 + 416) eventStore];
  *(v0 + 480) = v4;
  swift_unknownObjectRelease();
  if (!v4)
  {
    v23 = *(v0 + 456);

    sub_2427CCDB0();
    swift_allocError();
    *v24 = 24;
    goto LABEL_9;
  }

  v5 = *(v0 + 448);
  sub_2428B2DC8();
  v6 = *(v0 + 288);
  *(v0 + 112) = *(v0 + 272);
  *(v0 + 128) = v6;
  v7 = *(v0 + 320);
  *(v0 + 144) = *(v0 + 304);
  *(v0 + 160) = v7;
  v8 = *(v0 + 224);
  *(v0 + 48) = *(v0 + 208);
  *(v0 + 64) = v8;
  v9 = *(v0 + 256);
  *(v0 + 80) = *(v0 + 240);
  *(v0 + 96) = v9;
  v10 = *(v0 + 192);
  *(v0 + 16) = *(v0 + 176);
  *(v0 + 32) = v10;
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);
  sub_2428B3218();
  sub_2427CCE04(v0 + 16);
  v13 = sub_2428B4608();

  v14 = [v4 eventWithAppEntityIdentifier_];
  *(v0 + 488) = v14;

  if (v14)
  {
    v15 = *(v0 + 432);
    sub_2428B28E8();
    v16 = *(v0 + 400);
    v17 = *(v0 + 408);
    __swift_project_boxed_opaque_existential_1((v0 + 376), v16);
    v18 = *(v17 + 48);
    v28 = (v18 + *v18);
    v19 = v18[1];
    v20 = swift_task_alloc();
    *(v0 + 496) = v20;
    *v20 = v0;
    v20[1] = sub_2427F29E0;

    return v28(v14, v16, v17);
  }

  v26 = *(v0 + 456);

  sub_2427CCDB0();
  swift_allocError();
  *v27 = 25;
  swift_willThrow();

LABEL_10:
  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_2427F29E0()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v4 = *v1;
  *(*v1 + 504) = v0;

  v5 = *(v2 + 472);
  v6 = *(v2 + 464);
  if (v0)
  {
    v7 = sub_2427F2BA8;
  }

  else
  {
    v7 = sub_2427F2B1C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2427F2B1C()
{
  v2 = v0[60];
  v1 = v0[61];
  v3 = v0[57];
  v4 = v0[53];

  __swift_destroy_boxed_opaque_existential_1(v0 + 47);
  sub_2428B2C28();

  v5 = v0[1];

  return v5();
}

uint64_t sub_2427F2BA8()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 456);

  __swift_destroy_boxed_opaque_existential_1((v0 + 376));
  v3 = *(v0 + 504);
  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_2427F2C28()
{
  result = qword_280CDDCF8;
  if (!qword_280CDDCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDCF8);
  }

  return result;
}

unint64_t sub_2427F2C80()
{
  result = qword_280CDDD00;
  if (!qword_280CDDD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDD00);
  }

  return result;
}

uint64_t sub_2427F2D0C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1720 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC2500);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2427F2DB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2550, &qword_2428B8AF8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2558, &qword_2428B8B00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2568, &qword_2428B8B30);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3238();
}

uint64_t sub_2427F2F4C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return HighlightEventIntent.perform()(a1);
}

uint64_t sub_2427F304C(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x2822009F8](sub_2427F306C, 0, 0);
}

uint64_t sub_2427F306C()
{
  v1 = *(v0 + 104);
  sub_2428B4248();
  if (*(v0 + 80))
  {
    sub_2427D3564((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    v4 = *(MEMORY[0x277CEB110] + 4);
    v5 = swift_task_alloc();
    *(v0 + 112) = v5;
    *v5 = v0;
    v5[1] = sub_2427F31A4;

    return MEMORY[0x28213DD78](v2, v3);
  }

  else
  {
    sub_2427D34A8(v0 + 56);
    sub_2427D3510();
    swift_allocError();
    swift_willThrow();
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_2427F31A4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 112);
  v8 = *v3;
  v4[15] = a1;
  v4[16] = a2;
  v4[17] = v2;

  if (v2)
  {
    v6 = sub_2427D3444;
  }

  else
  {
    v6 = sub_2427F32BC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2427F32BC()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[12];
  v5 = sub_2428B3458();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_2428B3448();
  sub_2428B3E28();
  sub_2427F3970(&qword_27ECC2588, MEMORY[0x277CF7BC0]);
  sub_2428B3438();
  v9 = v0[15];
  v8 = v0[16];

  sub_2427D357C(v9, v8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v10 = v0[1];

  return v10();
}

uint64_t TransferableSourceEntityRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v3 = sub_2428B4238();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  swift_allocObject();
  (*(v4 + 16))(v7, a1, v3);
  v10 = sub_2428B4298();
  (*(v4 + 8))(a1, v3);
  return v10;
}

uint64_t TransferableSourceEntityRepresentation.init(_:)(uint64_t a1)
{
  v2 = sub_2428B4238();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v6 = sub_2428B4298();
  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t TransferableSourceEntityRepresentation.__deallocating_deinit()
{
  _s12CalendarLink41LocationSearchResultsEntityRepresentationCfd_0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TransferableSourceEntityRepresentation()
{
  result = qword_27ECC25D8;
  if (!qword_27ECC25D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2427F382C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_2427F38D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_2427F3970(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2427F39B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t dispatch thunk of TransferableSourceEntityRepresentation.source.getter(uint64_t a1)
{
  v7 = (*v1 + class metadata base offset for TransferableSourceEntityRepresentation);
  v8 = (*v7 + **v7);
  v4 = (*v7)[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2427CD274;

  return v8(a1);
}

id sub_2427F3BBC()
{
  v0 = [off_285516480() eventStore];
  swift_unknownObjectRelease();
  if (!v0)
  {
    if (qword_280CDE4E0 != -1)
    {
      swift_once();
    }

    v1 = sub_2428B4448();
    __swift_project_value_buffer(v1, qword_280CDE4E8);
    v2 = sub_2428B4428();
    v3 = sub_2428B4838();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2427C0000, v2, v3, "Failed to get event store", v4, 2u);
      MEMORY[0x245D1C000](v4, -1, -1);
    }

    sub_2427CCDB0();
    swift_allocError();
    *v5 = 24;
    swift_willThrow();
  }

  return v0;
}

id sub_2427F3D30()
{
  sub_2428B28E8();
  v0 = [v7 eventStore];
  swift_unknownObjectRelease();
  if (!v0)
  {
    if (qword_280CDE4E0 != -1)
    {
      swift_once();
    }

    v1 = sub_2428B4448();
    __swift_project_value_buffer(v1, qword_280CDE4E8);
    v2 = sub_2428B4428();
    v3 = sub_2428B4838();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2427C0000, v2, v3, "Failed to get event store", v4, 2u);
      MEMORY[0x245D1C000](v4, -1, -1);
    }

    sub_2427CCDB0();
    swift_allocError();
    *v5 = 24;
    swift_willThrow();
  }

  return v0;
}

id sub_2427F3E84()
{
  v0 = [off_285516A58() eventStore];
  swift_unknownObjectRelease();
  if (!v0)
  {
    if (qword_280CDE4E0 != -1)
    {
      swift_once();
    }

    v1 = sub_2428B4448();
    __swift_project_value_buffer(v1, qword_280CDE4E8);
    v2 = sub_2428B4428();
    v3 = sub_2428B4838();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2427C0000, v2, v3, "Failed to get event store", v4, 2u);
      MEMORY[0x245D1C000](v4, -1, -1);
    }

    sub_2427CCDB0();
    swift_allocError();
    *v5 = 24;
    swift_willThrow();
  }

  return v0;
}

id sub_2427F3FF4()
{
  v14 = v0[6];
  v15 = v0[7];
  v16 = v0[8];
  v17 = *(v0 + 18);
  v10 = v0[2];
  v11 = v0[3];
  v12 = v0[4];
  v13 = v0[5];
  v8 = *v0;
  v9 = v0[1];
  v1 = [off_285517088() eventStore];
  swift_unknownObjectRelease();
  if (!v1)
  {
    if (qword_280CDE4E0 != -1)
    {
      swift_once();
    }

    v2 = sub_2428B4448();
    __swift_project_value_buffer(v2, qword_280CDE4E8);
    v3 = sub_2428B4428();
    v4 = sub_2428B4838();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2427C0000, v3, v4, "Failed to get event store", v5, 2u);
      MEMORY[0x245D1C000](v5, -1, -1);
    }

    sub_2427CCDB0();
    swift_allocError();
    *v6 = 24;
    swift_willThrow();
  }

  return v1;
}

id sub_2427F4190()
{
  v0 = [off_2855171B8() eventStore];
  swift_unknownObjectRelease();
  if (!v0)
  {
    if (qword_280CDE4E0 != -1)
    {
      swift_once();
    }

    v1 = sub_2428B4448();
    __swift_project_value_buffer(v1, qword_280CDE4E8);
    v2 = sub_2428B4428();
    v3 = sub_2428B4838();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2427C0000, v2, v3, "Failed to get event store", v4, 2u);
      MEMORY[0x245D1C000](v4, -1, -1);
    }

    sub_2427CCDB0();
    swift_allocError();
    *v5 = 24;
    swift_willThrow();
  }

  return v0;
}

id sub_2427F4300()
{
  v0 = [off_2855175B8() eventStore];
  swift_unknownObjectRelease();
  if (!v0)
  {
    if (qword_280CDE4E0 != -1)
    {
      swift_once();
    }

    v1 = sub_2428B4448();
    __swift_project_value_buffer(v1, qword_280CDE4E8);
    v2 = sub_2428B4428();
    v3 = sub_2428B4838();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2427C0000, v2, v3, "Failed to get event store", v4, 2u);
      MEMORY[0x245D1C000](v4, -1, -1);
    }

    sub_2427CCDB0();
    swift_allocError();
    *v5 = 24;
    swift_willThrow();
  }

  return v0;
}

id sub_2427F4470()
{
  v8 = *v0;
  v9 = v0[1];
  v10 = *(v0 + 4);
  v1 = [off_285517658() eventStore];
  swift_unknownObjectRelease();
  if (!v1)
  {
    if (qword_280CDE4E0 != -1)
    {
      swift_once();
    }

    v2 = sub_2428B4448();
    __swift_project_value_buffer(v2, qword_280CDE4E8);
    v3 = sub_2428B4428();
    v4 = sub_2428B4838();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2427C0000, v3, v4, "Failed to get event store", v5, 2u);
      MEMORY[0x245D1C000](v5, -1, -1);
    }

    sub_2427CCDB0();
    swift_allocError();
    *v6 = 24;
    swift_willThrow();
  }

  return v1;
}

id sub_2427F45EC()
{
  v0 = [off_285517790() eventStore];
  swift_unknownObjectRelease();
  if (!v0)
  {
    if (qword_280CDE4E0 != -1)
    {
      swift_once();
    }

    v1 = sub_2428B4448();
    __swift_project_value_buffer(v1, qword_280CDE4E8);
    v2 = sub_2428B4428();
    v3 = sub_2428B4838();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2427C0000, v2, v3, "Failed to get event store", v4, 2u);
      MEMORY[0x245D1C000](v4, -1, -1);
    }

    sub_2427CCDB0();
    swift_allocError();
    *v5 = 24;
    swift_willThrow();
  }

  return v0;
}

id sub_2427F475C()
{
  v14 = v0[6];
  v15 = v0[7];
  v16 = v0[8];
  v10 = v0[2];
  v11 = v0[3];
  v12 = v0[4];
  v13 = v0[5];
  v8 = *v0;
  v9 = v0[1];
  v1 = [off_285517960() eventStore];
  swift_unknownObjectRelease();
  if (!v1)
  {
    if (qword_280CDE4E0 != -1)
    {
      swift_once();
    }

    v2 = sub_2428B4448();
    __swift_project_value_buffer(v2, qword_280CDE4E8);
    v3 = sub_2428B4428();
    v4 = sub_2428B4838();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2427C0000, v3, v4, "Failed to get event store", v5, 2u);
      MEMORY[0x245D1C000](v5, -1, -1);
    }

    sub_2427CCDB0();
    swift_allocError();
    *v6 = 24;
    swift_willThrow();
  }

  return v1;
}

id sub_2427F48F0()
{
  v0 = [off_285517CA8() eventStore];
  swift_unknownObjectRelease();
  if (!v0)
  {
    if (qword_280CDE4E0 != -1)
    {
      swift_once();
    }

    v1 = sub_2428B4448();
    __swift_project_value_buffer(v1, qword_280CDE4E8);
    v2 = sub_2428B4428();
    v3 = sub_2428B4838();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2427C0000, v2, v3, "Failed to get event store", v4, 2u);
      MEMORY[0x245D1C000](v4, -1, -1);
    }

    sub_2427CCDB0();
    swift_allocError();
    *v5 = 24;
    swift_willThrow();
  }

  return v0;
}

id sub_2427F4A64()
{
  v8 = *v0;
  v9 = v0[1];
  v10 = v0[2];
  v11 = v0[3];
  v1 = [off_285517D50() eventStore];
  swift_unknownObjectRelease();
  if (!v1)
  {
    if (qword_280CDE4E0 != -1)
    {
      swift_once();
    }

    v2 = sub_2428B4448();
    __swift_project_value_buffer(v2, qword_280CDE4E8);
    v3 = sub_2428B4428();
    v4 = sub_2428B4838();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2427C0000, v3, v4, "Failed to get event store", v5, 2u);
      MEMORY[0x245D1C000](v5, -1, -1);
    }

    sub_2427CCDB0();
    swift_allocError();
    *v6 = 24;
    swift_willThrow();
  }

  return v1;
}

id sub_2427F4BE0()
{
  v0 = [off_285518200() eventStore];
  swift_unknownObjectRelease();
  if (!v0)
  {
    if (qword_280CDE4E0 != -1)
    {
      swift_once();
    }

    v1 = sub_2428B4448();
    __swift_project_value_buffer(v1, qword_280CDE4E8);
    v2 = sub_2428B4428();
    v3 = sub_2428B4838();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2427C0000, v2, v3, "Failed to get event store", v4, 2u);
      MEMORY[0x245D1C000](v4, -1, -1);
    }

    sub_2427CCDB0();
    swift_allocError();
    *v5 = 24;
    swift_willThrow();
  }

  return v0;
}

id sub_2427F4D54()
{
  v12 = v0[4];
  v13 = v0[5];
  v14 = v0[6];
  v15 = v0[7];
  v8 = *v0;
  v9 = v0[1];
  v10 = v0[2];
  v11 = v0[3];
  v1 = [off_2855182A8() eventStore];
  swift_unknownObjectRelease();
  if (!v1)
  {
    if (qword_280CDE4E0 != -1)
    {
      swift_once();
    }

    v2 = sub_2428B4448();
    __swift_project_value_buffer(v2, qword_280CDE4E8);
    v3 = sub_2428B4428();
    v4 = sub_2428B4838();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2427C0000, v3, v4, "Failed to get event store", v5, 2u);
      MEMORY[0x245D1C000](v5, -1, -1);
    }

    sub_2427CCDB0();
    swift_allocError();
    *v6 = 24;
    swift_willThrow();
  }

  return v1;
}

id sub_2427F4EE0()
{
  v0 = [off_285518498() eventStore];
  swift_unknownObjectRelease();
  if (!v0)
  {
    if (qword_280CDE4E0 != -1)
    {
      swift_once();
    }

    v1 = sub_2428B4448();
    __swift_project_value_buffer(v1, qword_280CDE4E8);
    v2 = sub_2428B4428();
    v3 = sub_2428B4838();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2427C0000, v2, v3, "Failed to get event store", v4, 2u);
      MEMORY[0x245D1C000](v4, -1, -1);
    }

    sub_2427CCDB0();
    swift_allocError();
    *v5 = 24;
    swift_willThrow();
  }

  return v0;
}

id sub_2427F5054()
{
  v0 = [off_2855184B8() eventStore];
  swift_unknownObjectRelease();
  if (!v0)
  {
    if (qword_280CDE4E0 != -1)
    {
      swift_once();
    }

    v1 = sub_2428B4448();
    __swift_project_value_buffer(v1, qword_280CDE4E8);
    v2 = sub_2428B4428();
    v3 = sub_2428B4838();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2427C0000, v2, v3, "Failed to get event store", v4, 2u);
      MEMORY[0x245D1C000](v4, -1, -1);
    }

    sub_2427CCDB0();
    swift_allocError();
    *v5 = 24;
    swift_willThrow();
  }

  return v0;
}

id sub_2427F51C4()
{
  v0 = [off_2855188E8() eventStore];
  swift_unknownObjectRelease();
  if (!v0)
  {
    if (qword_280CDE4E0 != -1)
    {
      swift_once();
    }

    v1 = sub_2428B4448();
    __swift_project_value_buffer(v1, qword_280CDE4E8);
    v2 = sub_2428B4428();
    v3 = sub_2428B4838();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2427C0000, v2, v3, "Failed to get event store", v4, 2u);
      MEMORY[0x245D1C000](v4, -1, -1);
    }

    sub_2427CCDB0();
    swift_allocError();
    *v5 = 24;
    swift_willThrow();
  }

  return v0;
}

id sub_2427F5334()
{
  v0 = [off_285518ED8() eventStore];
  swift_unknownObjectRelease();
  if (!v0)
  {
    if (qword_280CDE4E0 != -1)
    {
      swift_once();
    }

    v1 = sub_2428B4448();
    __swift_project_value_buffer(v1, qword_280CDE4E8);
    v2 = sub_2428B4428();
    v3 = sub_2428B4838();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2427C0000, v2, v3, "Failed to get event store", v4, 2u);
      MEMORY[0x245D1C000](v4, -1, -1);
    }

    sub_2427CCDB0();
    swift_allocError();
    *v5 = 24;
    swift_willThrow();
  }

  return v0;
}

id sub_2427F54A8()
{
  v0 = [off_285519358() eventStore];
  swift_unknownObjectRelease();
  if (!v0)
  {
    if (qword_280CDE4E0 != -1)
    {
      swift_once();
    }

    v1 = sub_2428B4448();
    __swift_project_value_buffer(v1, qword_280CDE4E8);
    v2 = sub_2428B4428();
    v3 = sub_2428B4838();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2427C0000, v2, v3, "Failed to get event store", v4, 2u);
      MEMORY[0x245D1C000](v4, -1, -1);
    }

    sub_2427CCDB0();
    swift_allocError();
    *v5 = 24;
    swift_willThrow();
  }

  return v0;
}

uint64_t EventEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  sub_2428B2948();
  result = sub_2428B2918();
  *a1 = result;
  return result;
}

uint64_t EventEntityQuery.entities(for:)(uint64_t a1)
{
  v2[2] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3240, &qword_2428BBF00) - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v4 = sub_2428B3BB8();
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *v1;
  v2[7] = v7;
  v2[8] = v8;
  sub_2428B4758();
  v2[9] = sub_2428B4748();
  v10 = sub_2428B4728();

  return MEMORY[0x2822009F8](sub_2427F57CC, v10, v9);
}

uint64_t sub_2427F57CC()
{
  v57 = v0;
  v3 = v0[8];
  v2 = v0[9];

  v4 = sub_2427F3D30();
  v48 = 0;
  v5 = 0;
  v6 = v0[2];
  v55 = MEMORY[0x277D84F90];
  *&v56[0] = MEMORY[0x277D84F90];
  v7 = *(v6 + 16);
  v8 = v6 + 40;
  v53 = v8;
LABEL_2:
  v9 = (v8 + 16 * v5);
  while (v7 != v5)
  {
    if (v5 >= v7)
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      v54 = v1 & 0xFFFFFFFFFFFFFF8;
      v16 = sub_2428B49C8();
      if (!v16)
      {
        goto LABEL_34;
      }

      goto LABEL_12;
    }

    v1 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_30;
    }

    v10 = *(v9 - 1);
    v11 = *v9;
    sub_2428B3218();
    v12 = sub_2428B4608();
    v13 = [v4 eventWithAppEntityIdentifier_];

    v9 += 2;
    ++v5;
    if (v13)
    {
      MEMORY[0x245D1B200](v14);
      if (*((*&v56[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v56[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = *((*&v56[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2428B46E8();
      }

      sub_2428B4708();
      v55 = *&v56[0];
      v5 = v1;
      v8 = v53;
      goto LABEL_2;
    }
  }

  v1 = v55;
  if (v55 >> 62)
  {
    goto LABEL_33;
  }

  v54 = v55 & 0xFFFFFFFFFFFFFF8;
  v16 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_34:
    v21 = MEMORY[0x277D84F90];
    goto LABEL_35;
  }

LABEL_12:
  v17 = 0;
  v18 = v0[5];
  v19 = v1 & 0xC000000000000001;
  v20 = (v18 + 48);
  v50 = (v18 + 16);
  v51 = (v18 + 32);
  v21 = MEMORY[0x277D84F90];
  v49 = (v18 + 8);
  do
  {
    v52 = v21;
    v22 = v17;
    while (1)
    {
      if (v19)
      {
        v23 = MEMORY[0x245D1B5D0](v22, v1);
        v17 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v22 >= *(v54 + 16))
        {
          goto LABEL_32;
        }

        v23 = *(v1 + 8 * v22 + 32);
        v17 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_31;
        }
      }

      v24 = v0[3];
      v25 = v0[4];
      v26 = v23;
      sub_2428B3BC8();
      if ((*v20)(v24, 1, v25) != 1)
      {
        break;
      }

      v27 = v0[3];

      sub_2427E0980(v27, &qword_27ECC3240, &qword_2428BBF00);
      ++v22;
      v1 = v55;
      if (v17 == v16)
      {
        v21 = v52;
        goto LABEL_35;
      }
    }

    v29 = v0[6];
    v28 = v0[7];
    v30 = v0[4];
    (*v51)(v28, v0[3], v30);
    (*v50)(v29, v28, v30);
    EventEntity.init(_:)(v29, v56);

    (*v49)(v28, v30);
    v31 = v52;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_2427F7268(0, *(v52 + 2) + 1, 1, v52);
    }

    v1 = v55;
    v33 = *(v31 + 2);
    v32 = *(v31 + 3);
    v34 = v31;
    if (v33 >= v32 >> 1)
    {
      v34 = sub_2427F7268((v32 > 1), v33 + 1, 1, v31);
    }

    *(v34 + 2) = v33 + 1;
    v21 = v34;
    v35 = &v34[160 * v33];
    v36 = v56[1];
    *(v35 + 2) = v56[0];
    *(v35 + 3) = v36;
    v37 = v56[2];
    v38 = v56[3];
    v39 = v56[5];
    *(v35 + 6) = v56[4];
    *(v35 + 7) = v39;
    *(v35 + 4) = v37;
    *(v35 + 5) = v38;
    v40 = v56[6];
    v41 = v56[7];
    v42 = v56[9];
    *(v35 + 10) = v56[8];
    *(v35 + 11) = v42;
    *(v35 + 8) = v40;
    *(v35 + 9) = v41;
  }

  while (v17 != v16);
LABEL_35:
  v44 = v0[6];
  v43 = v0[7];
  v45 = v0[3];

  v46 = v0[1];

  return v46(v21);
}

uint64_t sub_2427F5C50@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  sub_2428B2948();
  result = sub_2428B2918();
  *a1 = result;
  return result;
}

uint64_t sub_2427F5CC8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427F96EC;

  return EventEntityQuery.entities(for:)(a1);
}

uint64_t sub_2427F5D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CB9C98] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2427CD274;

  return MEMORY[0x28210B608](a1, a2, a3);
}

uint64_t sub_2427F5E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CB9CA0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2427F5ED0;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t sub_2427F5ED0(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_2427F5FD0(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_2427F93AC();
  *v6 = v2;
  v6[1] = sub_2427DC6B4;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t EventEntityQuery.DateRangeQueryError.hashValue.getter()
{
  v1 = *v0;
  sub_2428B4C88();
  MEMORY[0x245D1B7F0](v1);
  return sub_2428B4CB8();
}

uint64_t sub_2427F611C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2620, &qword_2428B8ED0);
  __swift_allocate_value_buffer(v0, qword_27ECC25F0);
  __swift_project_value_buffer(v0, qword_27ECC25F0);
  sub_2427C2774();
  return sub_2428B32D8();
}

uint64_t sub_2427F61A0()
{
  v0 = sub_2427C2774();
  v1 = MEMORY[0x277D84F90];

  return MEMORY[0x28210C570](v1, &type metadata for EventEntity, v0);
}

uint64_t static EventEntityQuery.sortingOptions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1730 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2620, &qword_2428B8ED0);
  v3 = __swift_project_value_buffer(v2, qword_27ECC25F0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static EventEntityQuery.sortingOptions.setter(uint64_t a1)
{
  if (qword_27ECC1730 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2620, &qword_2428B8ED0);
  v3 = __swift_project_value_buffer(v2, qword_27ECC25F0);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static EventEntityQuery.sortingOptions.modify())()
{
  if (qword_27ECC1730 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2620, &qword_2428B8ED0);
  __swift_project_value_buffer(v0, qword_27ECC25F0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2427F6448()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2628, &qword_2428B8ED8);
  __swift_allocate_value_buffer(v0, qword_27ECC2608);
  __swift_project_value_buffer(v0, qword_27ECC2608);
  type metadata accessor for EventEntityQuery.EventPropertyComparator();
  sub_2427C2774();
  return sub_2428B3198();
}

uint64_t sub_2427F64DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2708, &qword_2428B9278);
  swift_getKeyPath();
  sub_2428B30B8();
  sub_2427C2774();
  v0 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  sub_2428B30B8();
  v1 = sub_2428B2F38();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2710, &qword_2428B92D0);
  swift_getKeyPath();
  sub_2428B2F38();
  sub_2428B30B8();
  v2 = sub_2428B2F38();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2428B8EB0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  type metadata accessor for EventEntityQuery.EventPropertyComparator();
  sub_2428B2F38();
  v4 = sub_2428B3348();

  return v4;
}

uint64_t sub_2427F6730(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t, void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2748, &qword_2428B9328);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  a4(a3, 0);
  sub_2427C2774();
  sub_2428B33C8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2758, &qword_2428B9338);
  v16 = *(v9 + 72);
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2428B5D50;
  (*(v9 + 16))(v18 + v17, v12, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2760, &qword_2428B9340);
  sub_2428B3688();
  type metadata accessor for EventEntityQuery.EventPropertyComparator();
  sub_2427F96A4(&qword_27ECC2768, MEMORY[0x277CC9578]);
  v19 = sub_2428B33B8();

  (*(v9 + 8))(v12, v8);
  return v19;
}

uint64_t sub_2427F6998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2428B3688();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  type metadata accessor for EventEntityQuery.EventPropertyComparator();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2427F6A28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2720, &qword_2428B9308);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2728, &qword_2428B9310);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_2428B3068();
  sub_2427C2774();
  sub_2428B33C8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2730, &unk_2428B9318);
  v8 = *(v1 + 72);
  v9 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2428B5D50;
  (*(v1 + 16))(v10 + v9, v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1FC8, &qword_2428B6EE0);
  type metadata accessor for EventEntityQuery.EventPropertyComparator();
  sub_2427F9650();
  v11 = sub_2428B33B8();

  (*(v1 + 8))(v4, v0);
  return v11;
}

uint64_t sub_2427F6C48@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = *a1;
  type metadata accessor for EventEntityQuery.EventPropertyComparator();

  return swift_storeEnumTagMultiPayload();
}