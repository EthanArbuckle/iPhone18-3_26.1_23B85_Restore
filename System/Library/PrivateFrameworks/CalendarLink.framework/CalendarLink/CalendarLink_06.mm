uint64_t static ListEventsIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1868 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3B30);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ListEventsIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v43 = a1;
  v41 = sub_2428B3298();
  v2 = *(v41 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v42 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D00, &unk_2428BD500);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v33 - v13;
  v33[0] = v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v33 - v17;
  v35 = v33 - v17;
  v19 = sub_2428B3568();
  v38 = v19;
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2530, &qword_2428BD510);
  sub_2428B2958();
  v44 = 0u;
  v45 = 0u;
  v46 = 0;
  sub_2428B2948();
  *a1 = sub_2428B2918();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D10, &qword_2428BB320);
  sub_2428B3548();
  v22 = *(v20 + 56);
  v37 = v20 + 56;
  v39 = v22;
  v22(v18, 1, 1, v19);
  v23 = sub_2428B4568();
  v44 = 0uLL;
  (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
  v24 = sub_2428B2AE8();
  v25 = *(*(v24 - 8) + 56);
  v26 = v10;
  v25(v10, 1, 1, v24);
  v27 = *MEMORY[0x277CBA308];
  v28 = *(v2 + 104);
  v33[1] = v2 + 104;
  v34 = v28;
  v30 = v40;
  v29 = v41;
  v28(v40, v27, v41);
  v31 = v35;
  v43[1] = sub_2428B2EB8();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3AD8, &qword_2428BEB50);
  sub_2428B3548();
  v39(v31, 1, 1, v38);
  *&v44 = 0;
  v25(v26, 1, 1, v24);
  v25(v42, 1, 1, v24);
  v34(v30, v27, v29);
  sub_2427C2774();
  result = sub_2428B2E68();
  v43[2] = result;
  return result;
}

uint64_t ListEventsIntent.viewOpener.setter(uint64_t *a1)
{
  v3 = *v1;
  sub_2427CBD84(a1, v5);
  sub_2428B28F8();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*ListEventsIntent.viewOpener.modify(uint64_t *a1))()
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
  return sub_2427CD67C;
}

uint64_t ListEventsIntent.description.getter()
{
  v1 = *(v0 + 8);
  sub_2428B2DC8();
  return v3;
}

uint64_t sub_242856528(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v6 = *a1;
  v7 = a1[1];
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2DD8();
}

uint64_t (*ListEventsIntent.description.modify(uint64_t *a1))()
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

uint64_t ListEventsIntent.target.getter()
{
  v1 = *(v0 + 16);
  sub_2428B2DC8();
  return v3;
}

uint64_t sub_2428566A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v6 = *a1;
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2DD8();
}

uint64_t (*ListEventsIntent.target.modify(uint64_t *a1))()
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

uint64_t ListEventsIntent.perform()(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = *v1;
  *(v2 + 104) = *(v1 + 16);
  sub_2428B4758();
  *(v2 + 112) = sub_2428B4748();
  v4 = sub_2428B4728();
  *(v2 + 120) = v4;
  *(v2 + 128) = v3;

  return MEMORY[0x2822009F8](sub_24285688C, v4, v3);
}

uint64_t sub_24285688C()
{
  v1 = v0[12];
  sub_2428B2DC8();
  v2 = v0[7];
  v3 = v0[8];
  v0[17] = v3;
  if (v3)
  {
    v4 = v0[13];
    v5 = v0[11];
    sub_2428B28E8();
    v6 = v0[5];
    v7 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
    sub_2428B2DC8();
    v8 = v0[9];
    v0[18] = v8;
    v9 = *(v7 + 32);
    v16 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    v0[19] = v11;
    *v11 = v0;
    v11[1] = sub_242856A5C;

    return v16(v2, v3, v8, v6, v7);
  }

  else
  {
    v13 = v0[14];

    v14 = v0[10];
    sub_2428B2C28();
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_242856A5C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = v2[18];
  v6 = v2[17];

  v7 = v2[16];
  v8 = v2[15];
  if (v0)
  {
    v9 = sub_242856C40;
  }

  else
  {
    v9 = sub_242856BCC;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_242856BCC()
{
  v1 = v0[14];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[10];
  sub_2428B2C28();
  v3 = v0[1];

  return v3();
}

uint64_t sub_242856C40()
{
  v1 = v0[14];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[1];
  v3 = v0[20];

  return v2();
}

unint64_t sub_242856CB0()
{
  result = qword_27ECC3B48;
  if (!qword_27ECC3B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3B48);
  }

  return result;
}

unint64_t sub_242856D08()
{
  result = qword_27ECC3B50;
  if (!qword_27ECC3B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC2640, &qword_2428BEB60);
    sub_2427C27CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3B50);
  }

  return result;
}

uint64_t sub_242856D8C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_2428B2DC8();
  *a1 = v5;
  return result;
}

uint64_t sub_242856DC8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return sub_2428B2DD8();
}

uint64_t (*sub_242856E00(uint64_t *a1))()
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
  return sub_2427CBEA8;
}

unint64_t sub_242856E78()
{
  result = qword_27ECC3B58;
  if (!qword_27ECC3B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3B58);
  }

  return result;
}

unint64_t sub_242856ED0()
{
  result = qword_280CDDE00;
  if (!qword_280CDDE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDE00);
  }

  return result;
}

unint64_t sub_242856F28()
{
  result = qword_280CDDE08;
  if (!qword_280CDDE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDE08);
  }

  return result;
}

uint64_t sub_242856FE8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1868 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3B30);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_242857090(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return ListEventsIntent.perform()(a1);
}

unint64_t sub_242857158()
{
  result = qword_280CDE650;
  if (!qword_280CDE650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC1AB0, &unk_2428B6210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE650);
  }

  return result;
}

id CalendarLinkSpotlightEntityAnnotator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CalendarLinkSpotlightEntityAnnotator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CalendarLinkSpotlightEntityAnnotator();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CalendarLinkSpotlightEntityAnnotator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CalendarLinkSpotlightEntityAnnotator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_242857420(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  sub_2427F95E0(a3, &v20 - v8);
  v10 = sub_2428B4608();
  v11 = sub_2428B3688();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    v13 = sub_2428B3658();
    (*(v12 + 8))(v9, v11);
  }

  v14 = [objc_opt_self() recurrenceIdentifierWithLocalUID:v10 recurrenceDate:v13];

  if (v14)
  {
    v15 = [v14 identifierString];
    if (v15)
    {
      v16 = v15;
      sub_2428B4618();

      v17 = [a4 attributeSet];
      v18 = [a4 attributeSet];
      v19 = [v18 title];

      if (v19)
      {
        sub_2428B4618();
      }

      sub_242801D34(MEMORY[0x277D84F90]);
      sub_2428B4878();
    }

    else
    {
    }
  }
}

uint64_t sub_2428576D0()
{
  v0 = sub_2428B3568();
  __swift_allocate_value_buffer(v0, qword_27ECC3B60);
  __swift_project_value_buffer(v0, qword_27ECC3B60);
  return sub_2428B3548();
}

uint64_t static FetchTransferableEventByURLIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1870 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3B60);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t FetchTransferableEventByURLIntent.eventStoreProvider.getter()
{
  v1 = *v0;
  sub_2428B28E8();
  return v3;
}

uint64_t sub_242857818(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v7 = *a1;
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  swift_unknownObjectRetain();
  sub_2428B28F8();
}

uint64_t FetchTransferableEventByURLIntent.eventStoreProvider.setter()
{
  v1 = *v0;
  swift_unknownObjectRetain();
  sub_2428B28F8();
  return swift_unknownObjectRelease();
}

uint64_t (*FetchTransferableEventByURLIntent.eventStoreProvider.modify(uint64_t *a1))()
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
  return sub_2427CD67C;
}

uint64_t FetchTransferableEventByURLIntent.reminderStoreWrapper.getter()
{
  v1 = *(v0 + 8);
  sub_2428B28E8();
  return v3;
}

uint64_t sub_2428579BC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  v7 = v2;
  sub_2428B28F8();
}

void FetchTransferableEventByURLIntent.reminderStoreWrapper.setter(void *a1)
{
  v2 = *(v1 + 8);
  v3 = a1;
  sub_2428B28F8();
}

uint64_t (*FetchTransferableEventByURLIntent.reminderStoreWrapper.modify(uint64_t *a1))()
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

uint64_t FetchTransferableEventByURLIntent.contactStore.getter()
{
  v1 = *(v0 + 16);
  sub_2428B28E8();
  return v3;
}

uint64_t sub_242857B58(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  v7 = v2;
  sub_2428B28F8();
}

void FetchTransferableEventByURLIntent.contactStore.setter(void *a1)
{
  v2 = *(v1 + 16);
  v3 = a1;
  sub_2428B28F8();
}

uint64_t (*FetchTransferableEventByURLIntent.contactStore.modify(uint64_t *a1))()
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
  *(v3 + 32) = sub_2428B28D8();
  return sub_2427CBEA8;
}

uint64_t FetchTransferableEventByURLIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2428B3298();
  v25 = *(v2 - 8);
  v26 = v2;
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v23 - v15;
  v17 = sub_2428B3568();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  sub_2428B2948();
  *a1 = sub_2428B2918();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3608, &qword_2428BD350);
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  sub_2428B2948();
  a1[1] = sub_2428B2918();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3610, &qword_2428BD358);
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  sub_2428B2948();
  a1[2] = sub_2428B2918();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3B78, &qword_2428BED70);
  sub_2428B3548();
  (*(v18 + 56))(v16, 1, 1, v17);
  v20 = sub_2428B35D8();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  v21 = sub_2428B2AE8();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  (*(v25 + 104))(v24, *MEMORY[0x277CBA308], v26);
  result = sub_2428B2E88();
  a1[3] = result;
  return result;
}

uint64_t FetchTransferableEventByURLIntent.perform()(uint64_t a1)
{
  *(v2 + 72) = a1;
  v3 = type metadata accessor for TransferableEventEntity();
  *(v2 + 80) = v3;
  v4 = *(v3 - 8);
  *(v2 + 88) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = swift_task_alloc();
  v6 = sub_2428B35D8();
  *(v2 + 112) = v6;
  v7 = *(v6 - 8);
  *(v2 + 120) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 128) = swift_task_alloc();
  v9 = v1[1];
  *(v2 + 136) = *v1;
  *(v2 + 152) = v9;

  return MEMORY[0x2822009F8](sub_2428581EC, 0, 0);
}

uint64_t sub_2428581EC()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = sub_2427F48F0();
  v6 = v0[20];
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[14];
  sub_2428B2DC8();
  v10 = sub_2428B35A8();
  (*(v8 + 8))(v7, v9);
  v11 = [v5 eventWithExternalURI_];

  if (v11)
  {
    v12 = v0[18];
    v13 = v0[19];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2428B5A90;
    *(inited + 32) = v11;
    v15 = v11;
    sub_2428B28E8();
    v16 = v0[7];
    sub_2428B28E8();
    v17 = v0[8];
    v18 = sub_242827F98(inited, v16, v17);

    if (v18[2])
    {
      v19 = v0[16];
      v21 = v0[12];
      v20 = v0[13];
      v22 = v0[10];
      v23 = v0[9];
      v24 = *(v0[11] + 80);
      sub_2428585E0(v18 + ((v24 + 32) & ~v24), v21);

      sub_242828204(v21, v20);
      sub_2428352D0();
      sub_2428B2C08();

      sub_242858644(v20);

      v25 = v0[1];
      goto LABEL_7;
    }

    sub_2427CCDB0();
    swift_allocError();
    *v27 = 25;
    swift_willThrow();
  }

  else
  {
    sub_2427CCDB0();
    swift_allocError();
    *v26 = 25;
    swift_willThrow();
  }

  v28 = v0[16];
  v30 = v0[12];
  v29 = v0[13];

  v25 = v0[1];
LABEL_7:

  return v25();
}

uint64_t sub_242858480@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1870 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3B60);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_242858528(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return FetchTransferableEventByURLIntent.perform()(a1);
}

uint64_t sub_2428585E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransferableEventEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242858644(uint64_t a1)
{
  v2 = type metadata accessor for TransferableEventEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2428586A4()
{
  result = qword_27ECC3B88;
  if (!qword_27ECC3B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3B88);
  }

  return result;
}

unint64_t sub_2428586FC()
{
  result = qword_27ECC3B90;
  if (!qword_27ECC3B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3B90);
  }

  return result;
}

unint64_t sub_2428587D4()
{
  result = qword_27ECC3B98;
  if (!qword_27ECC3B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3B98);
  }

  return result;
}

unint64_t sub_242858838()
{
  result = qword_27ECC3BA0;
  if (!qword_27ECC3BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC3BA8, &qword_2428BEEC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3BA0);
  }

  return result;
}

uint64_t sub_2428588B8()
{
  v0 = sub_2428B3568();
  __swift_allocate_value_buffer(v0, qword_27ECC3BB0);
  __swift_project_value_buffer(v0, qword_27ECC3BB0);
  return sub_2428B3548();
}

uint64_t static LocationSearchIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1878 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3BB0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t LocationSearchIntent.eventStoreProvider.getter()
{
  v1 = *v0;
  sub_2428B28E8();
  return v3;
}

uint64_t sub_242858A00(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  v11 = *a1;
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  swift_unknownObjectRetain();
  sub_2428B28F8();
}

uint64_t LocationSearchIntent.eventStoreProvider.setter()
{
  v1 = *v0;
  swift_unknownObjectRetain();
  sub_2428B28F8();
  return swift_unknownObjectRelease();
}

void (*LocationSearchIntent.eventStoreProvider.modify(uint64_t *a1))(void *a1)
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
  return sub_2427CC2B0;
}

uint64_t LocationSearchIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v84 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2CF0, &unk_2428C15D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v65 = &v59 - v4;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3BD0, &unk_2428BE2F0);
  v76 = *(v71 - 8);
  v5 = *(v76 + 64);
  MEMORY[0x28223BE20](v71);
  v70 = &v59 - v6;
  v86 = sub_2428B3298();
  v7 = *(v86 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v86);
  v68 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v59 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D00, &unk_2428BD500);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v59 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v59 - v20;
  v22 = sub_2428B3568();
  v83 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  v87 = 0u;
  v88 = 0u;
  v89 = 0;
  sub_2428B2948();
  *a1 = sub_2428B2918();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3840, &unk_2428BDEC0);
  sub_2428B3548();
  v82 = *(v23 + 56);
  v85 = v23 + 56;
  v82(v21, 1, 1, v22);
  v75 = sub_2428B4568();
  v87 = 0uLL;
  v27 = *(v75 - 8);
  v28 = *(v27 + 56);
  v73 = v27 + 56;
  v74 = v28;
  v28(v17, 1, 1, v75);
  v81 = sub_2428B2AE8();
  v29 = *(v81 - 8);
  v67 = *(v29 + 56);
  v77 = v29 + 56;
  v67(v13, 1, 1, v81);
  v79 = *MEMORY[0x277CBA308];
  v30 = *(v7 + 104);
  v78 = v7 + 104;
  v80 = v30;
  v31 = v68;
  v32 = v86;
  (v30)(v68);
  v72 = v26;
  v61 = v21;
  v33 = v13;
  v84[1] = sub_2428B2EB8();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D10, &qword_2428BB320);
  sub_2428B3548();
  v35 = v82;
  v34 = v83;
  v82(v21, 1, 1, v83);
  v87 = 0uLL;
  v64 = v17;
  v74(v17, 1, 1, v75);
  v60 = v33;
  v36 = v33;
  v37 = v81;
  v38 = v67;
  v67(v36, 1, 1, v81);
  v80(v31, v79, v32);
  v39 = v61;
  v84[2] = sub_2428B2EB8();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4440, &unk_2428BE300);
  sub_2428B3548();
  v35(v39, 1, 1, v34);
  v40 = v60;
  v38(v60, 1, 1, v37);
  v63 = *MEMORY[0x277CB9EF0];
  v41 = *(v76 + 104);
  v76 += 104;
  v62 = v41;
  v41(v70);
  v42 = v31;
  v43 = v79;
  v44 = v80;
  v80(v42, v79, v86);
  v84[3] = sub_2428B2E98();
  sub_2428B3548();
  v82(v39, 1, 1, v83);
  v45 = v67;
  v67(v40, 1, 1, v81);
  v62(v70, v63, v71);
  v46 = v68;
  v44(v68, v43, v86);
  v47 = v46;
  v48 = sub_2428B2E98();
  v49 = v84;
  v84[4] = v48;
  sub_2428B3548();
  v50 = v39;
  v82(v39, 1, 1, v83);
  v87 = 0uLL;
  v51 = v64;
  v74(v64, 1, 1, v75);
  v45(v40, 1, 1, v81);
  v52 = v79;
  v53 = v80;
  v80(v47, v79, v86);
  v49[5] = sub_2428B2EB8();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3BE0, &unk_2428BEEE8);
  sub_2428B3548();
  v82(v50, 1, 1, v83);
  *&v87 = 0;
  v74(v51, 1, 1, v75);
  v54 = v81;
  v45(v40, 1, 1, v81);
  v53(v47, v52, v86);
  v55 = sub_2428B2EB8();
  v56 = v84;
  v84[6] = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3850, &unk_2428BDED0);
  sub_2428B3548();
  v82(v50, 1, 1, v83);
  LOBYTE(v87) = 2;
  v57 = sub_2428B4718();
  (*(*(v57 - 8) + 56))(v65, 1, 1, v57);
  v45(v40, 1, 1, v54);
  v80(v47, v79, v86);
  result = sub_2428B2EC8();
  v56[7] = result;
  return result;
}

uint64_t LocationSearchIntent.perform()(uint64_t a1)
{
  *(v2 + 216) = a1;
  v3 = type metadata accessor for LocationSearchResultsEntity();
  *(v2 + 224) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 232) = swift_task_alloc();
  v5 = sub_2428B4188();
  *(v2 + 240) = v5;
  v6 = *(v5 - 8);
  *(v2 + 248) = v6;
  v7 = *(v6 + 64) + 15;
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 264) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960) - 8) + 64) + 15;
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = swift_task_alloc();
  v9 = sub_2428B4518();
  *(v2 + 288) = v9;
  v10 = *(v9 - 8);
  *(v2 + 296) = v10;
  v11 = *(v10 + 64) + 15;
  *(v2 + 304) = swift_task_alloc();
  *(v2 + 312) = swift_task_alloc();
  v12 = sub_2428B4468();
  *(v2 + 320) = v12;
  v13 = *(v12 - 8);
  *(v2 + 328) = v13;
  v14 = *(v13 + 64) + 15;
  *(v2 + 336) = swift_task_alloc();
  v15 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v15;
  v16 = v1[3];
  *(v2 + 48) = v1[2];
  *(v2 + 64) = v16;

  return MEMORY[0x2822009F8](sub_2428598A8, 0, 0);
}

uint64_t sub_2428598A8()
{
  v35 = v0;
  if (qword_280CDE4E0 != -1)
  {
    swift_once();
  }

  v1 = sub_2428B4448();
  *(v0 + 344) = __swift_project_value_buffer(v1, qword_280CDE4E8);
  sub_24285A418(v0 + 16, v0 + 80);
  v2 = sub_2428B4428();
  v3 = sub_2428B4828();
  sub_24285A450(v0 + 16);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v34 = v5;
    *v4 = 136315138;
    v6 = *(v0 + 24);
    sub_2428B2DC8();
    v7 = sub_24285A480(*(v0 + 192), *(v0 + 200), &v34);

    *(v4 + 4) = v7;
    _os_log_impl(&dword_2427C0000, v2, v3, "perform fetch location search intent, searchTerm: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x245D1C000](v5, -1, -1);
    MEMORY[0x245D1C000](v4, -1, -1);
  }

  v8 = *(v0 + 72);
  sub_2428B2DC8();
  v9 = *(v0 + 400);
  sub_2427F4A64();
  v10 = *(v0 + 336);
  v12 = *(v0 + 272);
  v11 = *(v0 + 280);
  if (v9)
  {
    v13 = 504;
  }

  else
  {
    v13 = 128;
  }

  sub_2428B4458();
  v14 = *(v0 + 24);
  sub_2428B2DC8();
  v15 = *(v0 + 144);
  v16 = *(v0 + 152);
  *(v0 + 352) = v16;
  v17 = *(v0 + 32);
  sub_2428B2DC8();
  v18 = *(v0 + 160);
  v19 = *(v0 + 168);
  *(v0 + 360) = v19;
  v20 = *(v0 + 40);
  sub_2428B2DC8();
  v21 = *(v0 + 48);
  sub_2428B2DC8();
  v22 = *(v0 + 56);
  sub_2428B2DC8();
  v23 = *(v0 + 176);
  v24 = *(v0 + 184);
  *(v0 + 368) = v24;
  v25 = *(v0 + 64);
  sub_2428B2DC8();
  v26 = *(v0 + 208);
  *(v0 + 376) = v26;
  v27 = *(MEMORY[0x277CC5920] + 4);
  v28 = swift_task_alloc();
  *(v0 + 384) = v28;
  *v28 = v0;
  v28[1] = sub_242859CE4;
  v29 = *(v0 + 336);
  v30 = *(v0 + 312);
  v32 = *(v0 + 272);
  v31 = *(v0 + 280);
  v41 = v26;
  v40 = 0;
  v38 = v23;
  v39 = v24;
  v37 = v32;

  return MEMORY[0x2821166A8](v30, v15, v16, v29, v13, v18, v19, v31);
}

uint64_t sub_242859CE4()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *v1;
  *(*v1 + 392) = v0;

  v5 = v2[47];
  v6 = v2[46];
  v7 = v2[45];
  v8 = v2[44];
  v9 = v2[35];
  v10 = v2[34];

  sub_2427E0980(v10, &qword_27ECC26F0, &unk_2428B7960);
  sub_2427E0980(v9, &qword_27ECC26F0, &unk_2428B7960);
  if (v0)
  {
    v11 = sub_24285A0E4;
  }

  else
  {
    v11 = sub_242859ED4;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_242859ED4()
{
  v1 = v0[41];
  v2 = v0[39];
  v16 = v0[40];
  v17 = v0[42];
  v3 = v0[37];
  v14 = v2;
  v15 = v0[36];
  v4 = v0[33];
  v18 = v0[35];
  v19 = v0[34];
  v5 = v0[31];
  v6 = v0[32];
  v7 = v0[29];
  v8 = v0[30];
  v12 = v0[27];
  v13 = v0[28];
  (*(v3 + 16))(v0[38]);
  sub_2428B4198();
  (*(v5 + 16))(v6, v4, v8);
  v9 = *(v5 + 56);
  v9(v7, 1, 1, v8);
  sub_2427E0980(v7, &qword_27ECC3BF0, &unk_2428BEF00);
  (*(v5 + 32))(v7, v6, v8);
  v9(v7, 0, 1, v8);
  sub_24285AA28();
  sub_2428B2C08();
  (*(v5 + 8))(v4, v8);
  (*(v3 + 8))(v14, v15);
  (*(v1 + 8))(v17, v16);
  sub_24285AA80(v7);

  v10 = v0[1];

  return v10();
}

uint64_t sub_24285A0E4()
{
  (*(v0[41] + 8))(v0[42], v0[40]);
  v1 = v0[49];
  v2 = v0[43];
  v3 = v1;
  v4 = sub_2428B4428();
  v5 = sub_2428B4838();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2427C0000, v4, v5, "error searching for locations: %@", v6, 0xCu);
    sub_2427E0980(v7, &qword_27ECC31E8, &qword_2428BBED8);
    MEMORY[0x245D1C000](v7, -1, -1);
    MEMORY[0x245D1C000](v6, -1, -1);
  }

  v10 = v0[42];
  v12 = v0[38];
  v11 = v0[39];
  v14 = v0[34];
  v13 = v0[35];
  v15 = v4;
  v16 = v0[32];
  v17 = v0[33];
  v20 = v0[29];

  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_24285A2B8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1878 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3BB0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24285A360(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return LocationSearchIntent.perform()(a1);
}

uint64_t sub_24285A480(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_2428B3218();
  v6 = sub_24285A54C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_242822794(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_24285A54C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_24285A658(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_2428B4A98();
    a6 = v11;
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

uint64_t sub_24285A658(uint64_t a1, unint64_t a2)
{
  v4 = sub_24285A6A4(a1, a2);
  sub_24285A7D4(&unk_285515650);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24285A6A4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24285A8C0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2428B4A98();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2428B4698();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24285A8C0(v10, 0);
        result = sub_2428B4A58();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24285A7D4(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_24285A934(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24285A8C0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C18, &unk_2428BF070);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24285A934(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C18, &unk_2428BF070);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

unint64_t sub_24285AA28()
{
  result = qword_27ECC3BF8;
  if (!qword_27ECC3BF8)
  {
    type metadata accessor for LocationSearchResultsEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3BF8);
  }

  return result;
}

uint64_t sub_24285AA80(uint64_t a1)
{
  v2 = type metadata accessor for LocationSearchResultsEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24285AAE0()
{
  result = qword_280CDDCC0;
  if (!qword_280CDDCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDCC0);
  }

  return result;
}

unint64_t sub_24285AB38()
{
  result = qword_280CDDCC8;
  if (!qword_280CDDCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDCC8);
  }

  return result;
}

unint64_t sub_24285AC10()
{
  result = qword_27ECC3C00;
  if (!qword_27ECC3C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3C00);
  }

  return result;
}

unint64_t sub_24285AC74()
{
  result = qword_27ECC3C08;
  if (!qword_27ECC3C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC3C10, &qword_2428BF068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3C08);
  }

  return result;
}

uint64_t sub_24285ACD8(uint64_t a1)
{
  v33 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D80, &qword_2428BF480);
  v2 = *(v1 - 8);
  v34 = v1;
  v35 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v23[-v4];
  v27 = sub_2428B2F48();
  v6 = *(v27 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v27);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D88, &qword_2428BF488);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  sub_2427F2520();
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  v32 = sub_2427C28E0();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  v12 = *MEMORY[0x277CB9F50];
  v31 = v6[13];
  v24 = v12;
  v13 = v27;
  v31(v9, v12, v27);
  sub_2428B2FD8();
  v14 = v6[1];
  v29 = v6 + 1;
  v30 = v14;
  v14(v9, v13);
  sub_2428B2FF8();
  sub_2428B3018();
  v26 = sub_2428B2F68();
  v15 = *(v35 + 8);
  v35 += 8;
  v28 = v15;
  v15(v5, v34);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  v16 = v12;
  v17 = v27;
  v31(v9, v16, v27);
  sub_2428B2FD8();
  v30(v9, v17);
  sub_2428B2FF8();
  sub_2428B3018();
  v25 = sub_2428B2F68();
  v28(v5, v34);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  v31(v9, v24, v17);
  sub_2428B2FD8();
  v30(v9, v17);
  sub_2428B2FF8();
  sub_2428B3018();
  v18 = sub_2428B2F68();
  v28(v5, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D90, &unk_2428BF490);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2428B9770;
  v20 = v25;
  *(v19 + 32) = v26;
  *(v19 + 40) = v20;
  *(v19 + 48) = v18;
  v21 = sub_2428B2F58();

  return v21;
}

uint64_t sub_24285B2B4(uint64_t a1)
{
  v33 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D68, &qword_2428BF440);
  v2 = *(v1 - 8);
  v34 = v1;
  v35 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v23[-v4];
  v27 = sub_2428B2F48();
  v6 = *(v27 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v27);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D70, &qword_2428BF448);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  sub_24285FBE8();
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  v32 = sub_2427FCF34();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  v12 = *MEMORY[0x277CB9F50];
  v31 = v6[13];
  v24 = v12;
  v13 = v27;
  v31(v9, v12, v27);
  sub_2428B2FD8();
  v14 = v6[1];
  v29 = v6 + 1;
  v30 = v14;
  v14(v9, v13);
  sub_2428B2FF8();
  sub_2428B3018();
  v26 = sub_2428B2F68();
  v15 = *(v35 + 8);
  v35 += 8;
  v28 = v15;
  v15(v5, v34);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  v16 = v12;
  v17 = v27;
  v31(v9, v16, v27);
  sub_2428B2FD8();
  v30(v9, v17);
  sub_2428B2FF8();
  sub_2428B3018();
  v25 = sub_2428B2F68();
  v28(v5, v34);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  v31(v9, v24, v17);
  sub_2428B2FD8();
  v30(v9, v17);
  sub_2428B2FF8();
  sub_2428B3018();
  v18 = sub_2428B2F68();
  v28(v5, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D78, &qword_2428BF450);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2428B9770;
  v20 = v25;
  *(v19 + 32) = v26;
  *(v19 + 40) = v20;
  *(v19 + 48) = v18;
  v21 = sub_2428B2F58();

  return v21;
}

uint64_t sub_24285B884(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(uint64_t))
{
  v6 = sub_2428B2FC8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  a3();
  sub_2428B2F38();

  a4(v11);
  sub_2428B2FB8();
  v12 = sub_2428B2FA8();
  (*(v7 + 8))(v10, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C48, &qword_2428BF178);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2428B5D50;
  *(v13 + 32) = v12;
  v14 = sub_2428B2F98();

  return v14;
}

uint64_t sub_24285BA04()
{
  v0 = sub_2428B2F88();
  v1 = sub_2428B2F88();
  v2 = sub_2428B2F88();
  v3 = sub_2428B2F88();
  v4 = sub_2428B2F88();
  v5 = sub_2428B2F88();
  v6 = sub_2428B2F88();
  v7 = sub_2428B2F88();
  v8 = sub_2428B2F88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C50, &qword_2428BF180);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2428B5D40;
  *(v9 + 32) = v0;
  *(v9 + 40) = v1;
  *(v9 + 48) = v2;
  *(v9 + 56) = v3;
  *(v9 + 64) = v4;
  *(v9 + 72) = v5;
  *(v9 + 80) = v6;
  *(v9 + 88) = v7;
  *(v9 + 96) = v8;
  v10 = sub_2428B2F78();

  return v10;
}

uint64_t sub_24285BBC0(uint64_t a1)
{
  v31 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D50, &qword_2428BF400);
  v33 = *(v30 - 8);
  v1 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  v3 = v23 - v2;
  v28 = sub_2428B2F48();
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v28);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D58, &qword_2428BF408);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_24283252C();
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  v32 = sub_24285FEC4();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  LODWORD(v26) = *MEMORY[0x277CB9F50];
  v10 = v4;
  v25 = *(v4 + 104);
  v11 = v28;
  v25(v7);
  sub_2428B2FD8();
  v12 = *(v10 + 8);
  v23[1] = v10 + 8;
  v24 = v12;
  v12(v7, v11);
  sub_2428B2FF8();
  sub_2428B3018();
  v27 = sub_2428B2F68();
  v29 = *(v33 + 8);
  v33 += 8;
  v13 = v30;
  v29(v3, v30);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  v14 = v28;
  (v25)(v7, v26, v28);
  sub_2428B2FD8();
  v24(v7, v14);
  sub_2428B2FF8();
  sub_2428B3018();
  v28 = sub_2428B2F68();
  v29(v3, v13);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v26 = sub_2428B2F68();
  v15 = v29;
  v29(v3, v13);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v25 = sub_2428B2F68();
  v16 = v30;
  v15(v3, v30);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v17 = sub_2428B2F68();
  v15(v3, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D60, &qword_2428BF410);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2428BC390;
  v19 = v28;
  *(v18 + 32) = v27;
  *(v18 + 40) = v19;
  v20 = v25;
  *(v18 + 48) = v26;
  *(v18 + 56) = v20;
  *(v18 + 64) = v17;
  v21 = sub_2428B2F58();

  return v21;
}

uint64_t sub_24285C310()
{
  v12 = sub_2428B2F88();
  v0 = sub_2428B2F88();
  v1 = sub_2428B2F88();
  v2 = sub_2428B2F88();
  v3 = sub_2428B2F88();
  v4 = sub_2428B2F88();
  v5 = sub_2428B2F88();
  v6 = sub_2428B2F88();
  v7 = sub_2428B2F88();
  v8 = sub_2428B2F88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C50, &qword_2428BF180);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2428BF080;
  *(v9 + 32) = v12;
  *(v9 + 40) = v0;
  *(v9 + 48) = v1;
  *(v9 + 56) = v2;
  *(v9 + 64) = v3;
  *(v9 + 72) = v4;
  *(v9 + 80) = v5;
  *(v9 + 88) = v6;
  *(v9 + 96) = v7;
  *(v9 + 104) = v8;
  v10 = sub_2428B2F78();

  return v10;
}

uint64_t sub_24285C508(uint64_t a1)
{
  v25 = sub_2428B2F48();
  v23 = *(v25 - 8);
  v2 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  v22 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D38, &qword_2428BF3C0);
  v28 = *(v20 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v20);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D40, &qword_2428BF3C8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  sub_242822644();
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  v26 = sub_2427C28E0();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v24 = sub_2428B2F68();
  v27 = *(v28 + 8);
  v28 += 8;
  v9 = v20;
  v27(v6, v20);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v21 = sub_2428B2F68();
  v27(v6, v9);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  v19 = a1;
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  v11 = v22;
  v10 = v23;
  v12 = v25;
  (*(v23 + 104))(v22, *MEMORY[0x277CB9F50], v25);
  sub_2428B2FD8();
  (*(v10 + 8))(v11, v12);
  sub_2428B2FF8();
  sub_2428B3018();
  v25 = sub_2428B2F68();
  v13 = v27;
  v27(v6, v9);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v14 = sub_2428B2F68();
  v13(v6, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D48, &qword_2428BF3D0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2428B7E80;
  v16 = v21;
  *(v15 + 32) = v24;
  *(v15 + 40) = v16;
  *(v15 + 48) = v25;
  *(v15 + 56) = v14;
  v17 = sub_2428B2F58();

  return v17;
}

uint64_t sub_24285CB0C(uint64_t a1)
{
  v25 = sub_2428B2F48();
  v23 = *(v25 - 8);
  v2 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  v22 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D20, &qword_2428BF380);
  v28 = *(v20 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v20);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D28, &qword_2428BF388);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  sub_2427E4AF0();
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  v26 = sub_2427C28E0();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v24 = sub_2428B2F68();
  v27 = *(v28 + 8);
  v28 += 8;
  v9 = v20;
  v27(v6, v20);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v21 = sub_2428B2F68();
  v27(v6, v9);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  v19 = a1;
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  v11 = v22;
  v10 = v23;
  v12 = v25;
  (*(v23 + 104))(v22, *MEMORY[0x277CB9F50], v25);
  sub_2428B2FD8();
  (*(v10 + 8))(v11, v12);
  sub_2428B2FF8();
  sub_2428B3018();
  v25 = sub_2428B2F68();
  v13 = v27;
  v27(v6, v9);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v14 = sub_2428B2F68();
  v13(v6, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D30, &qword_2428BF390);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2428B7E80;
  v16 = v21;
  *(v15 + 32) = v24;
  *(v15 + 40) = v16;
  *(v15 + 48) = v25;
  *(v15 + 56) = v14;
  v17 = sub_2428B2F58();

  return v17;
}

uint64_t sub_24285D110()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D08, &qword_2428BF340);
  v1 = *(v0 - 8);
  v18 = v0;
  v19 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D10, &qword_2428BF348);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  sub_24282259C();
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2427E3430();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v17 = sub_2428B2F68();
  v7 = v18;
  v15 = *(v19 + 8);
  v19 += 8;
  v15(v4, v18);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v16 = sub_2428B2F68();
  v8 = v15;
  v15(v4, v7);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v9 = sub_2428B2F68();
  v8(v4, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D18, &qword_2428BF350);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2428B9770;
  v11 = v16;
  *(v10 + 32) = v17;
  *(v10 + 40) = v11;
  *(v10 + 48) = v9;
  v12 = sub_2428B2F58();

  return v12;
}

uint64_t sub_24285D5AC(uint64_t a1)
{
  v23 = a1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3CF0, &qword_2428BF300);
  v24 = *(v22 - 8);
  v1 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  v3 = v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3CF8, &qword_2428BF308);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  sub_242822548();
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  v16[1] = sub_24280A89C();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v6 = sub_2428B2F68();
  v7 = *(v24 + 8);
  v20 = v6;
  v21 = v7;
  v24 += 8;
  v8 = v22;
  v7(v3, v22);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  swift_getKeyPath();
  v18 = sub_24285FE40();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v19 = sub_2428B2F68();
  v9 = v21;
  v21(v3, v8);
  sub_2428B3008();
  v16[0] = "Create a calendar named ";
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v17 = sub_2428B2F68();
  v10 = v22;
  v9(v3, v22);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v11 = sub_2428B2F68();
  v21(v3, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3D00, &qword_2428BF310);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2428B7E80;
  v13 = v19;
  *(v12 + 32) = v20;
  *(v12 + 40) = v13;
  *(v12 + 48) = v17;
  *(v12 + 56) = v11;
  v14 = sub_2428B2F58();

  return v14;
}

uint64_t sub_24285DB7C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v6 = a1[2];
  v7 = a1[3];
  sub_24283C3FC(*a1, a1[1]);
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2DD8();
}

uint64_t sub_24285DC04()
{
  v0 = sub_2428B2FC8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_24280A89C();
  sub_2428B2F38();

  sub_242822548();
  sub_2428B2FB8();
  v5 = sub_2428B2FA8();
  v6 = *(v1 + 8);
  v6(v4, v0);
  swift_getKeyPath();
  sub_24285FE40();
  sub_2428B2F38();

  sub_2428B2FB8();
  v7 = sub_2428B2FA8();
  v6(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C48, &qword_2428BF178);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2428B7940;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  v9 = sub_2428B2F98();

  return v9;
}

uint64_t sub_24285DDF4()
{
  v0 = sub_2428B2F88();
  v1 = sub_2428B2F88();
  v2 = sub_2428B2F88();
  v3 = sub_2428B2F88();
  v4 = sub_2428B2F88();
  v5 = sub_2428B2F88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C50, &qword_2428BF180);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2428BF090;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = sub_2428B2F78();

  return v7;
}

uint64_t sub_24285DF18(uint64_t a1)
{
  v13[1] = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3CC8, &qword_2428BF290);
  v1 = *(v15 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v15);
  v4 = v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3CD0, &qword_2428BF298);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  sub_242801870();
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_24285FDBC();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v14 = sub_2428B2F68();
  v7 = *(v1 + 8);
  v8 = v15;
  v7(v4, v15);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v9 = sub_2428B2F68();
  v7(v4, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3CD8, &qword_2428BF2A0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2428B7940;
  *(v10 + 32) = v14;
  *(v10 + 40) = v9;
  v11 = sub_2428B2F58();

  return v11;
}

uint64_t sub_24285E2B8()
{
  v0 = sub_2428B2F88();
  v1 = sub_2428B2F88();
  v2 = sub_2428B2F88();
  v3 = sub_2428B2F88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C50, &qword_2428BF180);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2428B7E80;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_2428B2F78();

  return v5;
}

uint64_t sub_24285E384()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3CA0, &qword_2428BF248);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3CA8, &qword_2428BF250);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  sub_24285FC3C();
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2427C28E0();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v7 = sub_2428B2F68();
  (*(v1 + 8))(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3CB0, &qword_2428BF258);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2428B5D50;
  *(v8 + 32) = v7;
  v9 = sub_2428B2F58();

  return v9;
}

uint64_t sub_24285E618()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C88, &qword_2428BF208);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C90, &qword_2428BF210);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  sub_2427CC4C0();
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2427C28E0();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v7 = sub_2428B2F68();
  (*(v1 + 8))(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C98, &qword_2428BF218);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2428B5D50;
  *(v8 + 32) = v7;
  v9 = sub_2428B2F58();

  return v9;
}

uint64_t sub_24285E8B4(uint64_t a1)
{
  v13[1] = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C70, &qword_2428BF1C8);
  v1 = *(v15 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v15);
  v4 = v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C78, &qword_2428BF1D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  sub_24285FC90();
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2427C28E0();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v14 = sub_2428B2F68();
  v7 = *(v1 + 8);
  v8 = v15;
  v7(v4, v15);
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v9 = sub_2428B2F68();
  v7(v4, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C80, &qword_2428BF1D8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2428B7940;
  *(v10 + 32) = v14;
  *(v10 + 40) = v9;
  v11 = sub_2428B2F58();

  return v11;
}

uint64_t sub_24285ECBC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C58, &qword_2428BF188);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C60, &qword_2428BF190);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  sub_2427D28F4();
  sub_2428B3008();
  sub_2428B2FF8();
  swift_getKeyPath();
  sub_24285FCE4();
  sub_2428B2F38();

  sub_2428B2FE8();

  sub_2428B2FF8();
  sub_2428B3018();
  v7 = sub_2428B2F68();
  (*(v1 + 8))(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C68, &qword_2428BF198);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2428B5D50;
  *(v8 + 32) = v7;
  v9 = sub_2428B2F58();

  return v9;
}

uint64_t sub_24285EF38()
{
  v0 = sub_2428B2FC8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_24285FCE4();
  sub_2428B2F38();

  sub_2427D28F4();
  sub_2428B2FB8();
  v5 = sub_2428B2FA8();
  v6 = *(v1 + 8);
  v6(v4, v0);
  swift_getKeyPath();
  sub_24285FD38();
  sub_2428B2F38();

  sub_2428B2FB8();
  v7 = sub_2428B2FA8();
  v6(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C48, &qword_2428BF178);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2428B7940;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  v9 = sub_2428B2F98();

  return v9;
}

uint64_t sub_24285F180()
{
  v0 = sub_2428B2F88();
  v1 = sub_2428B2F88();
  v2 = sub_2428B2F88();
  v3 = sub_2428B2F88();
  v4 = sub_2428B2F88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C50, &qword_2428BF180);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2428BC390;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = sub_2428B2F78();

  return v6;
}

uint64_t sub_24285F2C0()
{
  v0 = sub_2428B2F88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C50, &qword_2428BF180);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2428B5D50;
  *(v1 + 32) = v0;
  v2 = sub_2428B2F78();

  return v2;
}

uint64_t sub_24285F348()
{
  if (qword_27ECC1880 != -1)
  {
    swift_once();
  }

  return sub_2428B3218();
}

uint64_t sub_24285F3B4()
{
  v0 = sub_2428B3048();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  HighlightEventIntent.init()(&v30);
  v28 = v30;
  *&v29 = v31;
  sub_2427F2520();
  sub_2428B3058();
  v27 = sub_2428B3038();
  v5 = *(v1 + 8);
  v5(v4, v0);
  OpenCalendarViewIntent.init()(&v30);
  v28 = v30;
  sub_24285FBE8();
  sub_2428B3058();
  v26 = sub_2428B3038();
  v5(v4, v0);
  OpenDateIntent.init()(&v30);
  v28 = v30;
  sub_24283252C();
  sub_2428B3058();
  v25 = sub_2428B3038();
  v5(v4, v0);
  OpenEventDetailsIntent.init()(&v30);
  v28 = v30;
  v29 = v31;
  sub_242822644();
  sub_2428B3058();
  v24 = sub_2428B3038();
  v5(v4, v0);
  OpenEventEditorIntent.init()(&v30);
  v28 = v30;
  sub_2427E4AF0();
  sub_2428B3058();
  v23 = sub_2428B3038();
  v5(v4, v0);
  OpenCalendarEditorIntent.init()(&v30);
  v28 = v30;
  v29 = v31;
  sub_24282259C();
  sub_2428B3058();
  v22 = sub_2428B3038();
  v5(v4, v0);
  CreateCalendarIntent.init()(&v30);
  v28 = v30;
  *&v29 = v31;
  sub_242822548();
  sub_2428B3058();
  v21 = sub_2428B3038();
  v5(v4, v0);
  DeleteCalendarsIntent.init()(&v30);
  v28 = v30;
  *&v29 = v31;
  sub_242801870();
  sub_2428B3058();
  v20 = sub_2428B3038();
  v5(v4, v0);
  JoinEventIntent.init()(&v30);
  v28 = v30;
  sub_24285FC3C();
  sub_2428B3058();
  v19 = sub_2428B3038();
  v5(v4, v0);
  EmailOrganizerIntent.init()(&v30);
  v28 = v30;
  *&v29 = v31;
  sub_2427CC4C0();
  sub_2428B3058();
  v6 = sub_2428B3038();
  v5(v4, v0);
  EmailAttendeesIntent.init()(&v30);
  v28 = v30;
  *&v29 = v31;
  sub_24285FC90();
  sub_2428B3058();
  v7 = sub_2428B3038();
  v5(v4, v0);
  RespondToInboxItemIntent.init()(&v30);
  v28 = v30;
  *&v29 = v31;
  sub_2427D28F4();
  sub_2428B3058();
  v8 = sub_2428B3038();
  v5(v4, v0);
  RespondToInboxItemIntent.init()(&v30);
  v28 = v30;
  *&v29 = v31;
  sub_2428B3058();
  v9 = sub_2428B3038();
  v5(v4, v0);
  RespondToInboxItemIntent.init()(&v30);
  v28 = v30;
  *&v29 = v31;
  sub_2428B3058();
  v10 = sub_2428B3038();
  v5(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3C30, &qword_2428BF118);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2428BF0A0;
  v12 = v26;
  *(v11 + 32) = v27;
  *(v11 + 40) = v12;
  v13 = v24;
  *(v11 + 48) = v25;
  *(v11 + 56) = v13;
  v14 = v22;
  *(v11 + 64) = v23;
  *(v11 + 72) = v14;
  v15 = v20;
  *(v11 + 80) = v21;
  *(v11 + 88) = v15;
  *(v11 + 96) = v19;
  *(v11 + 104) = v6;
  *(v11 + 112) = v7;
  *(v11 + 120) = v8;
  *(v11 + 128) = v9;
  *(v11 + 136) = v10;
  v16 = sub_2428B3028();

  return v16;
}

unint64_t sub_24285FBE8()
{
  result = qword_27ECC3C20;
  if (!qword_27ECC3C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3C20);
  }

  return result;
}

unint64_t sub_24285FC3C()
{
  result = qword_27ECC3C28;
  if (!qword_27ECC3C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3C28);
  }

  return result;
}

unint64_t sub_24285FC90()
{
  result = qword_27ECC43A0;
  if (!qword_27ECC43A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC43A0);
  }

  return result;
}

unint64_t sub_24285FCE4()
{
  result = qword_280CDDE80;
  if (!qword_280CDDE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDE80);
  }

  return result;
}

unint64_t sub_24285FD38()
{
  result = qword_27ECC3C38;
  if (!qword_27ECC3C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC3C40, &qword_2428BF170);
    sub_2427D2CB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3C38);
  }

  return result;
}

unint64_t sub_24285FDBC()
{
  result = qword_27ECC3CB8;
  if (!qword_27ECC3CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC3CC0, &qword_2428BF288);
    sub_2427E3430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3CB8);
  }

  return result;
}

unint64_t sub_24285FE40()
{
  result = qword_27ECC3CE0;
  if (!qword_27ECC3CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC3CE8, &qword_2428BF2F8);
    sub_2428340A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3CE0);
  }

  return result;
}

unint64_t sub_24285FEC4()
{
  result = qword_27ECC2768;
  if (!qword_27ECC2768)
  {
    sub_2428B3688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2768);
  }

  return result;
}

uint64_t sub_24285FF24()
{
  v0 = sub_2428B3338();
  __swift_allocate_value_buffer(v0, qword_27ECC3D98);
  __swift_project_value_buffer(v0, qword_27ECC3D98);
  return sub_2428B3318();
}

uint64_t static LocationSearchResultsEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1888 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3D98);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static LocationSearchResultsEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27ECC1888 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3D98);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static LocationSearchResultsEntity.typeDisplayRepresentation.modify())()
{
  if (qword_27ECC1888 != -1)
  {
    swift_once();
  }

  v0 = sub_2428B3338();
  __swift_project_value_buffer(v0, qword_27ECC3D98);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2428601D0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1888 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3D98);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_242860290(uint64_t a1)
{
  if (qword_27ECC1888 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3D98);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t LocationSearchResultsEntity.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2428B4188();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t static LocationSearchResultsEntity.transferRepresentation.getter()
{
  v0 = sub_2428B4418();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2428B4408();
  type metadata accessor for LocationSearchResultsEntity();
  sub_242860DD4(&qword_27ECC3DB0, type metadata accessor for LocationSearchResultsEntity);
  return sub_2428B41A8();
}

uint64_t sub_2428604E0()
{
  v1 = *(v0 + 16);
  v2 = sub_2428B3498();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_2428B3488();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3BF0, &unk_2428BEF00);
  sub_242860D20();
  v5 = sub_2428B3478();
  v7 = v6;

  v8 = *(v0 + 8);

  return v8(v5, v7);
}

uint64_t type metadata accessor for LocationSearchResultsEntity()
{
  result = qword_27ECC3E18;
  if (!qword_27ECC3E18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242860690@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2428B4188();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_242860718()
{
  v0 = sub_2428B4418();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2428B4408();
  return sub_2428B41A8();
}

uint64_t sub_2428608E0(uint64_t a1)
{
  v2 = sub_242860DD4(&qword_27ECC3E38, type metadata accessor for LocationSearchResultsEntity);

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_242860A34()
{
  sub_242860DD4(&qword_27ECC3E38, type metadata accessor for LocationSearchResultsEntity);

  return sub_2428B28C8();
}

uint64_t sub_242860AF4(uint64_t a1)
{
  v2 = sub_242860DD4(&qword_27ECC3DB8, type metadata accessor for LocationSearchResultsEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_242860BB8(uint64_t a1)
{
  v2 = sub_242860DD4(&qword_27ECC3DF8, type metadata accessor for LocationSearchResultsEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

void sub_242860C5C()
{
  sub_242860CC8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_242860CC8()
{
  if (!qword_280CDDA48)
  {
    sub_2428B4188();
    v0 = sub_2428B48F8();
    if (!v1)
    {
      atomic_store(v0, &qword_280CDDA48);
    }
  }
}

unint64_t sub_242860D20()
{
  result = qword_27ECC3E40;
  if (!qword_27ECC3E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC3BF0, &unk_2428BEF00);
    sub_242860DD4(&qword_27ECC3E48, MEMORY[0x277CF7C30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3E40);
  }

  return result;
}

uint64_t sub_242860DD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CalendarLinkError.localizedStringResource.getter@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = sub_2428B3568();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v29 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v13 = sub_2428B36C8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v31 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2428B3558();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2428B45F8();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = *v1;
  switch(v23 >> 3)
  {
    case 1u:
      sub_2428B4578();
      if (qword_27ECC1780 != -1)
      {
        swift_once();
      }

      v27 = __swift_project_value_buffer(v16, qword_27ECD4500);
      (*(v17 + 16))(v20, v27, v16);
      sub_2428B36B8();
      sub_2428B3588();
      return (*(v3 + 32))(v30, v10, v2);
    case 2u:
      if (v23)
      {
        sub_2428B4578();
        if (qword_27ECC1780 == -1)
        {
          goto LABEL_60;
        }
      }

      else
      {
        sub_2428B4578();
        if (qword_27ECC1780 == -1)
        {
          goto LABEL_60;
        }
      }

      swift_once();
LABEL_60:
      v24 = __swift_project_value_buffer(v16, qword_27ECD4500);
      (*(v17 + 16))(v20, v24, v16);
      sub_2428B36B8();
      sub_2428B3588();
      return (*(v3 + 32))(v30, v7, v2);
    case 3u:
      if (v23 == 24)
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      else
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      goto LABEL_82;
    case 4u:
      if (v23 == 32)
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      else
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      goto LABEL_82;
    case 5u:
      if (v23 == 40)
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      else
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      goto LABEL_82;
    case 6u:
      if (v23 == 48)
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      else
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      goto LABEL_82;
    case 7u:
      if (v23 == 56)
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      else
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      goto LABEL_82;
    case 8u:
      if (v23 == 64)
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      else
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      goto LABEL_82;
    case 9u:
      if (v23 == 72)
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      else
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      goto LABEL_82;
    case 0xAu:
      if (v23 == 80)
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      else
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      goto LABEL_82;
    case 0xBu:
      if (v23 == 88)
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      else
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      goto LABEL_82;
    case 0xCu:
      if (v23 == 96)
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      else
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      goto LABEL_82;
    case 0xDu:
      if (v23 == 104)
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      else
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      goto LABEL_82;
    case 0xEu:
      if (v23 == 112)
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      else
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      goto LABEL_82;
    case 0xFu:
      if (v23 == 120)
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      else
      {
        sub_2428B4578();
        if (qword_27ECC1780 != -1)
        {
          goto LABEL_93;
        }
      }

      goto LABEL_82;
    case 0x10u:
      if (v23 == 128)
      {
        sub_2428B4578();
        if (qword_27ECC1780 == -1)
        {
          goto LABEL_82;
        }
      }

      else
      {
        sub_2428B4578();
        if (qword_27ECC1780 == -1)
        {
          goto LABEL_82;
        }
      }

LABEL_93:
      swift_once();
LABEL_82:
      v28 = __swift_project_value_buffer(v16, qword_27ECD4500);
      (*(v17 + 16))(v20, v28, v16);
      sub_2428B36B8();
      return sub_2428B3588();
    default:
      sub_2428B4578();
      if (qword_27ECC1780 != -1)
      {
        swift_once();
      }

      v26 = __swift_project_value_buffer(v16, qword_27ECD4500);
      (*(v17 + 16))(v20, v26, v16);
      sub_2428B36B8();
      sub_2428B3588();
      return (*(v3 + 32))(v30, v12, v2);
  }
}

uint64_t getEnumTagSinglePayload for CalendarLinkError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x70)
  {
    goto LABEL_17;
  }

  if (a2 + 144 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 144) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 144;
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

      return (*a1 | (v4 << 8)) - 144;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 144;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 3) & 0xFFFFFF9F | (32 * ((*a1 >> 1) & 3))) ^ 0x7F;
  if (v6 >= 0x6F)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for CalendarLinkError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 144 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 144) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x70)
  {
    v4 = 0;
  }

  if (a2 > 0x6F)
  {
    v5 = ((a2 - 112) >> 8) + 1;
    *result = a2 - 112;
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
    *result = 2 * (((-a2 >> 5) & 3) - 4 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24286287C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x17)
  {
    return v1 >> 3;
  }

  else
  {
    return (v1 & 1 | (2 * (v1 >> 3))) - 3;
  }
}

_BYTE *sub_2428628AC(_BYTE *result, unsigned int a2)
{
  if (a2 < 3)
  {
    *result = *result & 1 | (8 * a2);
  }

  else
  {
    *result = ((a2 - 3) & 1 | (8 * ((a2 - 3) >> 1))) + 24;
  }

  return result;
}

uint64_t sub_2428628F0()
{
  v0 = sub_2428B3338();
  __swift_allocate_value_buffer(v0, qword_27ECC3E50);
  __swift_project_value_buffer(v0, qword_27ECC3E50);
  return sub_2428B3318();
}

uint64_t static Span.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1890 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3E50);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static Span.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27ECC1890 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3E50);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static Span.typeDisplayRepresentation.modify())()
{
  if (qword_27ECC1890 != -1)
  {
    swift_once();
  }

  v0 = sub_2428B3338();
  __swift_project_value_buffer(v0, qword_27ECC3E50);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_242862B90@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1890 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3E50);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_242862C50(uint64_t a1)
{
  if (qword_27ECC1890 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC3E50);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_242862D18()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v31 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v31 - v6;
  v8 = sub_2428B36C8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2428B3558();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2428B45F8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v44 = sub_2428B3568();
  v38 = *(v44 - 8);
  v17 = *(v38 + 64);
  MEMORY[0x28223BE20](v44);
  v34 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3E80, &unk_2428BFB18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2F68, &qword_2428BB688);
  v20 = (*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80);
  v42 = *(*(v19 - 8) + 72);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2428B9770;
  v33 = v21;
  v22 = (v21 + v20);
  v41 = v19;
  v23 = *(v19 + 48);
  v43 = v22;
  *v22 = 0;
  sub_2428B4578();
  if (qword_27ECC1780 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v10, qword_27ECD4500);
  v39 = *(v11 + 16);
  v40 = v24;
  v39(v14, v24, v10);
  sub_2428B36B8();
  sub_2428B3588();
  v38 = *(v38 + 56);
  (v38)(v7, 1, 1, v44);
  v36 = sub_2428B3148();
  v25 = *(v36 - 8);
  v35 = *(v25 + 56);
  v32 = v10;
  v37 = v25 + 56;
  v35(v3, 1, 1, v36);
  v26 = v43;
  sub_2428B3178();
  v31[0] = v3;
  v31[1] = *(v41 + 48);
  v26[v42] = 1;
  sub_2428B4578();
  v39(v14, v40, v10);
  sub_2428B36B8();
  sub_2428B3588();
  (v38)(v7, 1, 1, v44);
  v27 = v31[0];
  v35(v31[0], 1, 1, v36);
  sub_2428B3178();
  v28 = &v43[2 * v42];
  v42 = *(v41 + 48);
  *v28 = 2;
  sub_2428B4578();
  v39(v14, v40, v32);
  sub_2428B36B8();
  sub_2428B3588();
  (v38)(v7, 1, 1, v44);
  v35(v27, 1, 1, v36);
  sub_2428B3178();
  v29 = sub_242821F14(v33);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27ECC3E68 = v29;
  return result;
}

uint64_t static Span.caseDisplayRepresentations.getter()
{
  if (qword_27ECC1898 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_2428B3218();
}

uint64_t static Span.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_27ECC1898 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECC3E68 = a1;
}

uint64_t (*static Span.caseDisplayRepresentations.modify())()
{
  if (qword_27ECC1898 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242863508@<X0>(void *a1@<X8>)
{
  if (qword_27ECC1898 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27ECC3E68;
  return sub_2428B3218();
}

uint64_t sub_242863588(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27ECC1898;
  sub_2428B3218();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECC3E68 = v1;
}

CalendarLink::Span_optional __swiftcall Span.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2428B4BB8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Span.rawValue.getter()
{
  v1 = 0x657275747566;
  if (*v0 != 1)
  {
    v1 = 7105633;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1936287860;
  }
}

uint64_t sub_2428636C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x657275747566;
  if (v2 != 1)
  {
    v4 = 7105633;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1936287860;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x657275747566;
  if (*a2 != 1)
  {
    v8 = 7105633;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1936287860;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2428B4BF8();
  }

  return v11 & 1;
}

unint64_t sub_2428637A8()
{
  result = qword_280CDDA68;
  if (!qword_280CDDA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDA68);
  }

  return result;
}

uint64_t sub_2428637FC()
{
  v1 = *v0;
  sub_2428B4C88();
  sub_2428B4678();

  return sub_2428B4CB8();
}

uint64_t sub_24286388C()
{
  *v0;
  *v0;
  sub_2428B4678();
}

uint64_t sub_242863908()
{
  v1 = *v0;
  sub_2428B4C88();
  sub_2428B4678();

  return sub_2428B4CB8();
}

void sub_2428639A0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x657275747566;
  if (v2 != 1)
  {
    v5 = 7105633;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1936287860;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_2428639F0()
{
  result = qword_280CDDAA8;
  if (!qword_280CDDAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDAA8);
  }

  return result;
}

unint64_t sub_242863A48()
{
  result = qword_280CDDA80;
  if (!qword_280CDDA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDA80);
  }

  return result;
}

unint64_t sub_242863AA0()
{
  result = qword_280CDDA60;
  if (!qword_280CDDA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDA60);
  }

  return result;
}

unint64_t sub_242863AF8()
{
  result = qword_280CDDA90;
  if (!qword_280CDDA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDA90);
  }

  return result;
}

unint64_t sub_242863B4C()
{
  result = qword_280CDDA88;
  if (!qword_280CDDA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDA88);
  }

  return result;
}

unint64_t sub_242863BA0()
{
  result = qword_280CDDAA0;
  if (!qword_280CDDAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDAA0);
  }

  return result;
}

unint64_t sub_242863BF8()
{
  result = qword_280CDDA98;
  if (!qword_280CDDA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDA98);
  }

  return result;
}

uint64_t sub_242863C9C(uint64_t a1)
{
  v2 = sub_24281E538();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_242863CEC()
{
  result = qword_280CDDA78;
  if (!qword_280CDDA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDA78);
  }

  return result;
}

unint64_t sub_242863D44()
{
  result = qword_280CDDA58;
  if (!qword_280CDDA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDA58);
  }

  return result;
}

unint64_t sub_242863D9C()
{
  result = qword_280CDDA70;
  if (!qword_280CDDA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDA70);
  }

  return result;
}

uint64_t sub_242863DF0()
{
  if (qword_27ECC1898 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_2428B3218();
}

uint64_t sub_242863E68(uint64_t a1)
{
  v2 = sub_242863BF8();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_242863EB8()
{
  result = qword_27ECC3E70;
  if (!qword_27ECC3E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC3E78, &qword_2428BFAB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3E70);
  }

  return result;
}

uint64_t sub_242863F60(uint64_t *a1, void *a2)
{
  v2 = *(*a2 + qword_27ECC3EA8);
  v4 = *a1;
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B4338();
}

uint64_t sub_242863FC4()
{
  v1 = *(v0 + qword_27ECC3EA8);
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B4338();
}

uint64_t (*sub_242864020(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC3EA8);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t (*sub_2428640D0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC3EB0);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t (*sub_242864180(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC3EB8);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t (*sub_242864230(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC3EC0);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t (*sub_2428642E0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC3EC8);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t (*sub_242864390(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC3ED0);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t (*sub_242864440(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC3ED8);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t (*sub_2428644F0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC3EE0);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t (*sub_2428645A0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC3EE8);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t sub_242864638@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = *(*a1 + *a2);
  sub_2428B2F38();
  sub_2428B4328();

  *a3 = v6;
  return result;
}

uint64_t sub_24286468C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(*a2 + *a5);
  v7 = *a1;
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B4338();
}

uint64_t sub_2428646EC(void *a1)
{
  v2 = *(v1 + *a1);
  sub_2428B2F38();
  sub_2428B4328();

  return v4;
}

uint64_t sub_242864740(uint64_t a1, void *a2)
{
  v3 = *(v2 + *a2);
  sub_2428B2F38();
  sub_2428B4338();
}

uint64_t (*sub_242864788(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC3EF0);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t static RecurrenceRuleEntityRepresentation.instance(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v68 - v7;
  type metadata accessor for RecurrenceRuleEntityRepresentation(0);
  sub_242866284(&qword_27ECC3EF8, type metadata accessor for RecurrenceRuleEntityRepresentation);
  v68 = sub_2428B41E8();
  v69 = a1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_2428B48F8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v68 - v14;
  sub_2428B3F18();
  v16 = *(AssociatedTypeWitness - 8);
  if ((*(v16 + 48))(v15, 1, AssociatedTypeWitness) == 1)
  {
    (*(v12 + 8))(v15, v11);
    AssociatedConformanceWitness = 0;
    v76 = 0u;
    v77 = 0u;
  }

  else
  {
    *(&v77 + 1) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v76);
    (*(v16 + 32))(boxed_opaque_existential_1, v15, AssociatedTypeWitness);
  }

  sub_2427E0918(&v76, &v74, &qword_27ECC3F00, &qword_2428BFB28);
  v18 = v69;
  if (v75)
  {
    sub_2427D3564(&v74, v72);
    type metadata accessor for RecurrenceEndEntityRepresentation(0);
    sub_242866284(&qword_27ECC3F28, type metadata accessor for RecurrenceEndEntityRepresentation);
    v19 = sub_2428B41E8();
    __swift_project_boxed_opaque_existential_1(v72, v73);
    sub_2428B3EC8();
    v20 = *(v19 + qword_27ECC3F30);
    sub_2427E0918(v8, v6, &qword_27ECC26F0, &unk_2428B7960);
    sub_2428B2F38();
    sub_2428B4338();

    sub_2427E0980(v8, &qword_27ECC26F0, &unk_2428B7960);
    __swift_project_boxed_opaque_existential_1(v72, v73);
    v21 = sub_2428B3EB8();
    v22 = *(v19 + qword_27ECC3F38);
    v70 = v21;
    v71 = 0;
    sub_2428B2F38();
    sub_2428B4338();

    __swift_destroy_boxed_opaque_existential_1(v72);
  }

  else
  {
    v19 = 0;
  }

  sub_2427E0980(&v76, &qword_27ECC3F00, &qword_2428BFB28);
  v23 = v68;
  v24 = *(v68 + qword_27ECC3EA8);
  *&v76 = v19;
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B4338();

  v25 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  v26 = sub_2428B3F78();
  if (v26 >= 4)
  {
    v27 = 0;
  }

  else
  {
    v27 = v26;
  }

  v28 = *(v23 + qword_27ECC3EB0);
  LOBYTE(v76) = v27;
  sub_2428B2F38();
  sub_2428B4338();

  v29 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  v30 = sub_2428B3F68();
  v31 = *(v23 + qword_27ECC3EB8);
  *&v76 = v30;
  BYTE8(v76) = 0;
  sub_2428B2F38();
  sub_2428B4338();

  v32 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  v33 = sub_2428B3F58();
  if (v34)
  {
    v35 = 7;
  }

  else
  {
    v35 = v33 - 1;
    if ((v33 - 1) >= 7)
    {
      goto LABEL_26;
    }
  }

  v36 = *(v23 + qword_27ECC3EC0);
  LOBYTE(v76) = v35;
  sub_2428B2F38();
  sub_2428B4338();

  v37 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  if (sub_2428B3EF8())
  {
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3F08, &qword_2428BFB30);
    v38 = sub_2428B4AF8();

    v39 = *(v38 + 16);
    if (v39)
    {
      v72[0] = MEMORY[0x277D84F90];
      sub_2428B4AC8();
      v40 = type metadata accessor for RecurrenceDayOfWeekEntityRepresentation(0);
      v41 = 0;
      v42 = v38 + 32;
      do
      {
        if (v41 >= *(v38 + 16))
        {
          __break(1u);
LABEL_24:
          v66 = v40;
          type metadata accessor for EKWeekday(0);
          *&v74 = v66;
          while (1)
          {
            v33 = sub_2428B4C08();
            __break(1u);
LABEL_26:
            v67 = v33;
            type metadata accessor for EKWeekday(0);
            *&v76 = v67;
          }
        }

        sub_2427CBD84(v42, &v76);
        sub_242866284(&qword_27ECC3F10, type metadata accessor for RecurrenceDayOfWeekEntityRepresentation);
        v43 = sub_2428B41E8();
        __swift_project_boxed_opaque_existential_1(&v76, *(&v77 + 1));
        v40 = sub_2428B4118();
        if ((v40 - 1) >= 7)
        {
          goto LABEL_24;
        }

        ++v41;
        v44 = *(v43 + qword_27ECC3F18);
        LOBYTE(v74) = v40 - 1;
        sub_2428B2F38();
        sub_2428B4338();

        __swift_project_boxed_opaque_existential_1(&v76, *(&v77 + 1));
        v45 = sub_2428B4128();
        v46 = *(v43 + qword_27ECC3F20);
        *&v74 = v45;
        BYTE8(v74) = 0;
        sub_2428B2F38();
        sub_2428B4338();

        __swift_destroy_boxed_opaque_existential_1(&v76);
        sub_2428B4AA8();
        v47 = *(v72[0] + 16);
        sub_2428B4AD8();
        sub_2428B4AE8();
        v40 = sub_2428B4AB8();
        v42 += 40;
      }

      while (v39 != v41);

      v48 = v72[0];
      v23 = v68;
      v18 = v69;
    }

    else
    {

      v48 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v48 = 0;
  }

  v49 = *(v23 + qword_27ECC3EC8);
  *&v76 = v48;
  sub_2428B2F38();
  sub_2428B4338();

  v50 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  v51 = sub_2428B3F28();
  v52 = *(v23 + qword_27ECC3ED0);
  *&v76 = v51;
  sub_2428B2F38();
  sub_2428B4338();

  v53 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  v54 = sub_2428B3F08();
  v55 = *(v23 + qword_27ECC3ED8);
  *&v76 = v54;
  sub_2428B2F38();
  sub_2428B4338();

  v56 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  v57 = sub_2428B3F38();
  v58 = *(v23 + qword_27ECC3EE0);
  *&v76 = v57;
  sub_2428B2F38();
  sub_2428B4338();

  v59 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  v60 = sub_2428B3F48();
  v61 = *(v23 + qword_27ECC3EE8);
  *&v76 = v60;
  sub_2428B2F38();
  sub_2428B4338();

  v62 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  v63 = sub_2428B3EE8();
  v64 = *(v23 + qword_27ECC3EF0);
  *&v76 = v63;
  sub_2428B2F38();
  sub_2428B4338();

  return v23;
}

uint64_t static RecurrenceEndEntityRepresentation.instance(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  type metadata accessor for RecurrenceEndEntityRepresentation(0);
  sub_242866284(&qword_27ECC3F28, type metadata accessor for RecurrenceEndEntityRepresentation);
  v9 = sub_2428B41E8();
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2428B3EC8();
  v11 = *(v9 + qword_27ECC3F30);
  sub_2427E0918(v8, v6, &qword_27ECC26F0, &unk_2428B7960);
  sub_2428B2F38();
  sub_2428B4338();

  sub_2427E0980(v8, &qword_27ECC26F0, &unk_2428B7960);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_2428B3EB8();
  v14 = *(v9 + qword_27ECC3F38);
  v16 = v13;
  v17 = 0;
  sub_2428B2F38();
  sub_2428B4338();

  return v9;
}

CalendarLink::RecurrenceRuleEntityRepresentation::FrequencyRepresentation __swiftcall RecurrenceRuleEntityRepresentation.FrequencyRepresentation.init(_:)(EKRecurrenceFrequency a1)
{
  if (a1 >= 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  *v1 = v2;
  return a1;
}

uint64_t RecurrenceRuleEntityRepresentation.WeekdayRepresentation.init(_:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if ((result - 1) >= 7)
  {
    type metadata accessor for EKWeekday(0);
    result = sub_2428B4C08();
    __break(1u);
  }

  else
  {
    *a2 = result - 1;
  }

  return result;
}

uint64_t static RecurrenceDayOfWeekEntityRepresentation.instance(from:)(void *a1)
{
  type metadata accessor for RecurrenceDayOfWeekEntityRepresentation(0);
  sub_242866284(&qword_27ECC3F10, type metadata accessor for RecurrenceDayOfWeekEntityRepresentation);
  v2 = sub_2428B41E8();
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if ((sub_2428B4118() - 1) >= 7)
  {
    type metadata accessor for EKWeekday(0);
    result = sub_2428B4C08();
    __break(1u);
  }

  else
  {
    v4 = *(v2 + qword_27ECC3F18);
    sub_2428B2F38();
    sub_2428B4338();

    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2428B4128();
    v6 = *(v2 + qword_27ECC3F20);
    sub_2428B2F38();
    sub_2428B4338();

    return v2;
  }

  return result;
}

uint64_t RecurrenceRuleEntityRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return RecurrenceRuleEntityRepresentation.init(_:)(a1);
}

uint64_t RecurrenceRuleEntityRepresentation.init(_:)(uint64_t a1)
{
  v3 = sub_2428B4238();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_27ECC3EA8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3F40, &qword_2428BFB38);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v1 + v8) = sub_2428B4308();
  v12 = qword_27ECC3EB0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3F48, &qword_2428BFB40);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v1 + v12) = sub_2428B4308();
  v16 = qword_27ECC3EB8;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3F50, &qword_2428BFB48);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *(v1 + v16) = sub_2428B4308();
  v20 = qword_27ECC3EC0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3F58, &qword_2428BFB50);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  *(v1 + v20) = sub_2428B4308();
  v24 = qword_27ECC3EC8;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3F60, &qword_2428BFB58);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  *(v1 + v24) = sub_2428B4308();
  v28 = qword_27ECC3ED0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3F68, &unk_2428BFB60);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  *(v1 + v28) = sub_2428B4308();
  v32 = qword_27ECC3ED8;
  v33 = *(v29 + 48);
  v34 = *(v29 + 52);
  swift_allocObject();
  *(v1 + v32) = sub_2428B4308();
  v35 = qword_27ECC3EE0;
  v36 = *(v29 + 48);
  v37 = *(v29 + 52);
  swift_allocObject();
  *(v1 + v35) = sub_2428B4308();
  v38 = qword_27ECC3EE8;
  v39 = *(v29 + 48);
  v40 = *(v29 + 52);
  swift_allocObject();
  *(v1 + v38) = sub_2428B4308();
  v41 = qword_27ECC3EF0;
  v42 = *(v29 + 48);
  v43 = *(v29 + 52);
  swift_allocObject();
  *(v1 + v41) = sub_2428B4308();
  (*(v4 + 16))(v7, a1, v3);
  v44 = sub_2428B4298();
  (*(v4 + 8))(a1, v3);
  return v44;
}

uint64_t sub_242865830()
{
  v1 = *(v0 + qword_27ECC3EA8);

  v2 = *(v0 + qword_27ECC3EB0);

  v3 = *(v0 + qword_27ECC3EB8);

  v4 = *(v0 + qword_27ECC3EC0);

  v5 = *(v0 + qword_27ECC3EC8);

  v6 = *(v0 + qword_27ECC3ED0);

  v7 = *(v0 + qword_27ECC3ED8);

  v8 = *(v0 + qword_27ECC3EE0);

  v9 = *(v0 + qword_27ECC3EE8);

  v10 = *(v0 + qword_27ECC3EF0);
}

uint64_t RecurrenceRuleEntityRepresentation.deinit()
{
  v0 = _s12CalendarLink41LocationSearchResultsEntityRepresentationCfd_0();
  v1 = *(v0 + qword_27ECC3EA8);

  v2 = *(v0 + qword_27ECC3EB0);

  v3 = *(v0 + qword_27ECC3EB8);

  v4 = *(v0 + qword_27ECC3EC0);

  v5 = *(v0 + qword_27ECC3EC8);

  v6 = *(v0 + qword_27ECC3ED0);

  v7 = *(v0 + qword_27ECC3ED8);

  v8 = *(v0 + qword_27ECC3EE0);

  v9 = *(v0 + qword_27ECC3EE8);

  v10 = *(v0 + qword_27ECC3EF0);

  return v0;
}

uint64_t RecurrenceRuleEntityRepresentation.__deallocating_deinit()
{
  RecurrenceRuleEntityRepresentation.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_242865A04(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_242865A64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_242865AB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

CalendarLink::RecurrenceRuleEntityRepresentation::FrequencyRepresentation_optional __swiftcall RecurrenceRuleEntityRepresentation.FrequencyRepresentation.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_242865BD8(uint64_t a1)
{
  v2 = sub_242868BAC();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_242865C14(uint64_t a1)
{
  v2 = sub_242868BAC();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_242865C50(uint64_t a1, uint64_t a2)
{
  v4 = sub_24286708C();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_242865C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242868BAC();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_242865D00(uint64_t a1, uint64_t a2)
{
  v4 = sub_24286708C();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

CalendarLink::RecurrenceRuleEntityRepresentation::WeekdayRepresentation_optional __swiftcall RecurrenceRuleEntityRepresentation.WeekdayRepresentation.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_242865E14(uint64_t a1)
{
  v2 = sub_242868B58();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_242865E50(uint64_t a1)
{
  v2 = sub_242868B58();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_242865E8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_242867378();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_242865ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242868B58();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_242865F3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_242867378();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_242865FC0(void *a1)
{
  v1 = *(*a1 + qword_27ECC3F30);
  sub_2428B2F38();
  sub_2428B4328();
}

uint64_t sub_242866014(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_2427E0918(a1, &v13 - v9, &qword_27ECC26F0, &unk_2428B7960);
  v11 = *(*a2 + qword_27ECC3F30);
  sub_2427E0918(v10, v8, &qword_27ECC26F0, &unk_2428B7960);
  sub_2428B2F38();
  sub_2428B4338();

  return sub_2427E0980(v10, &qword_27ECC26F0, &unk_2428B7960);
}

uint64_t sub_242866124()
{
  v1 = *(v0 + qword_27ECC3F30);
  sub_2428B2F38();
  sub_2428B4328();
}

uint64_t sub_242866174(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + qword_27ECC3F30);
  sub_2427E0918(a1, &v8 - v6, &qword_27ECC26F0, &unk_2428B7960);
  sub_2428B2F38();
  sub_2428B4338();

  return sub_2427E0980(a1, &qword_27ECC26F0, &unk_2428B7960);
}

uint64_t sub_242866284(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t (*sub_2428662CC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC3F30);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t (*sub_24286637C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC3F38);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D4714;
}

uint64_t sub_2428664B4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_242866514(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_242866568(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t (*sub_2428665FC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC3F18);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t sub_242866694@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *(*a1 + *a2);
  sub_2428B2F38();
  sub_2428B4328();

  *a3 = v6;
  *(a3 + 8) = v7;
  return result;
}

uint64_t sub_2428666F0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(*a2 + *a5);
  v7 = *a1;
  v8 = *(a1 + 8);
  sub_2428B2F38();
  sub_2428B4338();
}

uint64_t sub_242866754(void *a1)
{
  v2 = *(v1 + *a1);
  sub_2428B2F38();
  sub_2428B4328();

  return v4;
}

uint64_t sub_2428667AC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(v3 + *a3);
  sub_2428B2F38();
  sub_2428B4338();
}

uint64_t sub_24286681C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*sub_242866854(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC3F20);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t sub_242866910(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v11 = sub_2428B4238();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v5 + 48);
  v17 = *(v5 + 52);
  v18 = swift_allocObject();
  v19 = *a2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *(v18 + v19) = sub_2428B4308();
  v23 = *a5;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3F50, &qword_2428BFB48);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *(v18 + v23) = sub_2428B4308();
  (*(v12 + 16))(v15, a1, v11);
  v27 = sub_2428B4298();
  (*(v12 + 8))(a1, v11);
  return v27;
}

uint64_t sub_242866AC8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v11 = sub_2428B4238();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *(v5 + v16) = sub_2428B4308();
  v20 = *a5;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3F50, &qword_2428BFB48);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  *(v5 + v20) = sub_2428B4308();
  (*(v12 + 16))(v15, a1, v11);
  v24 = sub_2428B4298();
  (*(v12 + 8))(a1, v11);
  return v24;
}

uint64_t sub_242866C60(void *a1, void *a2)
{
  v4 = *(v2 + *a1);

  v5 = *(v2 + *a2);
}

uint64_t sub_242866CB8(void *a1, void *a2)
{
  v4 = _s12CalendarLink41LocationSearchResultsEntityRepresentationCfd_0();
  v5 = *(v4 + *a1);

  v6 = *(v4 + *a2);

  return v4;
}

uint64_t sub_242866D1C(void *a1, void *a2)
{
  v4 = _s12CalendarLink41LocationSearchResultsEntityRepresentationCfd_0();
  v5 = *(v4 + *a1);
  sub_2428B2F38();

  v6 = *(v4 + *a2);

  return swift_deallocClassInstance();
}

unint64_t sub_242866FDC()
{
  result = qword_27ECC3FC0;
  if (!qword_27ECC3FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3FC0);
  }

  return result;
}

unint64_t sub_242867034()
{
  result = qword_27ECC3FC8;
  if (!qword_27ECC3FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3FC8);
  }

  return result;
}

unint64_t sub_24286708C()
{
  result = qword_27ECC3FD0;
  if (!qword_27ECC3FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3FD0);
  }

  return result;
}

unint64_t sub_2428670E4()
{
  result = qword_27ECC3FD8;
  if (!qword_27ECC3FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3FD8);
  }

  return result;
}

unint64_t sub_24286713C()
{
  result = qword_27ECC3FE0;
  if (!qword_27ECC3FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3FE0);
  }

  return result;
}

unint64_t sub_2428671C0()
{
  result = qword_27ECC3FF8;
  if (!qword_27ECC3FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC3FF8);
  }

  return result;
}

unint64_t sub_242867218()
{
  result = qword_27ECC4000;
  if (!qword_27ECC4000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4000);
  }

  return result;
}

unint64_t sub_242867270()
{
  result = qword_27ECC4008;
  if (!qword_27ECC4008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4008);
  }

  return result;
}

unint64_t sub_2428672C8()
{
  result = qword_27ECC4010;
  if (!qword_27ECC4010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4010);
  }

  return result;
}

unint64_t sub_242867320()
{
  result = qword_27ECC4018;
  if (!qword_27ECC4018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4018);
  }

  return result;
}

unint64_t sub_242867378()
{
  result = qword_27ECC4020;
  if (!qword_27ECC4020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4020);
  }

  return result;
}

unint64_t sub_2428673D0()
{
  result = qword_27ECC4028;
  if (!qword_27ECC4028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4028);
  }

  return result;
}

unint64_t sub_242867428()
{
  result = qword_27ECC4030;
  if (!qword_27ECC4030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4030);
  }

  return result;
}

unint64_t sub_2428674AC()
{
  result = qword_27ECC4048;
  if (!qword_27ECC4048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4048);
  }

  return result;
}

unint64_t sub_242867504()
{
  result = qword_27ECC4050;
  if (!qword_27ECC4050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4050);
  }

  return result;
}

unint64_t sub_24286755C()
{
  result = qword_27ECC4058;
  if (!qword_27ECC4058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4058);
  }

  return result;
}

uint64_t sub_2428679BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_242867A64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_242867B00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

unint64_t sub_242868B58()
{
  result = qword_27ECC4120;
  if (!qword_27ECC4120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4120);
  }

  return result;
}

unint64_t sub_242868BAC()
{
  result = qword_27ECC4128;
  if (!qword_27ECC4128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4128);
  }

  return result;
}

uint64_t static LocationEntityRepresentation.instance(from:)(void *a1)
{
  type metadata accessor for LocationEntityRepresentation(0);
  sub_24286915C(&qword_27ECC4130, type metadata accessor for LocationEntityRepresentation);
  v2 = sub_2428B41E8();
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2428B3A38();
  v4 = *(v2 + qword_27ECC4138);
  sub_2428B2F38();
  sub_2428B4338();

  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_2428B3A58();
  v7 = *(v2 + qword_27ECC4140);
  v30 = v6;
  v32 = v8;
  sub_2428B2F38();
  sub_2428B4338();

  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_2428B39F8();
  if (v10)
  {
    v11 = v10;
    type metadata accessor for LocationEntityRepresentation.GeoLocationEntityRepresentation(0);
    sub_24286915C(&qword_27ECC4170, type metadata accessor for LocationEntityRepresentation.GeoLocationEntityRepresentation);
    v12 = sub_2428B41E8();
    [v11 coordinate];
    v13 = *(v12 + qword_27ECC4178);
    v31 = v14;
    LOBYTE(v33) = 0;
    sub_2428B2F38();
    sub_2428B4338();

    [v11 coordinate];
    v15 = *(v12 + qword_27ECC4180);
    sub_2428B2F38();
    sub_2428B4338();
  }

  v16 = *(v2 + qword_27ECC4148);
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B4338();

  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2428B3A48();
  v18 = *(v2 + qword_27ECC4150);
  sub_2428B2F38();
  sub_2428B4338();

  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2428B3A08();
  v20 = *(v2 + qword_27ECC4158);
  sub_2428B2F38();
  sub_2428B4338();

  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2428B3A18();
  v22 = *(v2 + qword_27ECC4160);
  sub_2428B2F38();
  sub_2428B4338();

  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = sub_2428B3A28();
  if (v25 >> 60 != 15)
  {
    v26 = v24;
    v27 = v25;
    sub_2428B3608();
    sub_242805E64(v26, v27);
  }

  v28 = *(v2 + qword_27ECC4168);
  sub_2428B2F38();
  sub_2428B4338();

  return v2;
}

uint64_t static LocationEntityRepresentation.GeoLocationEntityRepresentation.instance(from:)(void *a1)
{
  type metadata accessor for LocationEntityRepresentation.GeoLocationEntityRepresentation(0);
  sub_24286915C(&qword_27ECC4170, type metadata accessor for LocationEntityRepresentation.GeoLocationEntityRepresentation);
  v2 = sub_2428B41E8();
  [a1 coordinate];
  v3 = *(v2 + qword_27ECC4178);
  v7 = v4;
  LOBYTE(v8) = 0;
  sub_2428B2F38();
  sub_2428B4338();

  [a1 coordinate];
  v5 = *(v2 + qword_27ECC4180);
  sub_2428B2F38();
  sub_2428B4338();

  return v2;
}

uint64_t sub_24286915C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LocationEntityRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return LocationEntityRepresentation.init(_:)(a1);
}

uint64_t LocationEntityRepresentation.init(_:)(uint64_t a1)
{
  v3 = sub_2428B4238();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_27ECC4138;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1E40, &qword_2428B6580);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v1 + v8) = sub_2428B4308();
  v12 = qword_27ECC4140;
  v13 = *(v9 + 48);
  v14 = *(v9 + 52);
  swift_allocObject();
  *(v1 + v12) = sub_2428B4308();
  v15 = qword_27ECC4148;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4188, &qword_2428C06B8);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v1 + v15) = sub_2428B4308();
  v19 = qword_27ECC4150;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4190, &unk_2428C06C0);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *(v1 + v19) = sub_2428B4308();
  v23 = qword_27ECC4158;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2A68, &qword_2428BA528);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *(v1 + v23) = sub_2428B4308();
  v27 = qword_27ECC4160;
  v28 = *(v9 + 48);
  v29 = *(v9 + 52);
  swift_allocObject();
  *(v1 + v27) = sub_2428B4308();
  v30 = qword_27ECC4168;
  v31 = *(v9 + 48);
  v32 = *(v9 + 52);
  swift_allocObject();
  *(v1 + v30) = sub_2428B4308();
  (*(v4 + 16))(v7, a1, v3);
  v33 = sub_2428B4298();
  (*(v4 + 8))(a1, v3);
  return v33;
}

uint64_t sub_24286945C()
{
  v1 = *(v0 + qword_27ECC4138);

  v2 = *(v0 + qword_27ECC4140);

  v3 = *(v0 + qword_27ECC4148);

  v4 = *(v0 + qword_27ECC4150);

  v5 = *(v0 + qword_27ECC4158);

  v6 = *(v0 + qword_27ECC4160);

  v7 = *(v0 + qword_27ECC4168);
}

uint64_t LocationEntityRepresentation.deinit()
{
  v0 = _s12CalendarLink41LocationSearchResultsEntityRepresentationCfd_0();
  v1 = *(v0 + qword_27ECC4138);

  v2 = *(v0 + qword_27ECC4140);

  v3 = *(v0 + qword_27ECC4148);

  v4 = *(v0 + qword_27ECC4150);

  v5 = *(v0 + qword_27ECC4158);

  v6 = *(v0 + qword_27ECC4160);

  v7 = *(v0 + qword_27ECC4168);

  return v0;
}

uint64_t LocationEntityRepresentation.__deallocating_deinit()
{
  LocationEntityRepresentation.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2428695D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_242869638(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_24286968C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t LocationEntityRepresentation.GeoLocationEntityRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v3 = sub_2428B4238();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  v10 = swift_allocObject();
  v11 = qword_27ECC4178;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4190, &unk_2428C06C0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v10 + v11) = sub_2428B4308();
  v15 = qword_27ECC4180;
  v16 = *(v12 + 48);
  v17 = *(v12 + 52);
  swift_allocObject();
  *(v10 + v15) = sub_2428B4308();
  (*(v4 + 16))(v7, a1, v3);
  v18 = sub_2428B4298();
  (*(v4 + 8))(a1, v3);
  return v18;
}

uint64_t LocationEntityRepresentation.GeoLocationEntityRepresentation.init(_:)(uint64_t a1)
{
  v3 = sub_2428B4238();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_27ECC4178;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4190, &unk_2428C06C0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v1 + v8) = sub_2428B4308();
  v12 = qword_27ECC4180;
  v13 = *(v9 + 48);
  v14 = *(v9 + 52);
  swift_allocObject();
  *(v1 + v12) = sub_2428B4308();
  (*(v4 + 16))(v7, a1, v3);
  v15 = sub_2428B4298();
  (*(v4 + 8))(a1, v3);
  return v15;
}

uint64_t sub_242869A14()
{
  v1 = *(v0 + qword_27ECC4178);

  v2 = *(v0 + qword_27ECC4180);
}

uint64_t LocationEntityRepresentation.GeoLocationEntityRepresentation.deinit()
{
  v0 = _s12CalendarLink41LocationSearchResultsEntityRepresentationCfd_0();
  v1 = *(v0 + qword_27ECC4178);

  v2 = *(v0 + qword_27ECC4180);

  return v0;
}

uint64_t LocationEntityRepresentation.GeoLocationEntityRepresentation.__deallocating_deinit()
{
  v0 = _s12CalendarLink41LocationSearchResultsEntityRepresentationCfd_0();
  v1 = *(v0 + qword_27ECC4178);
  sub_2428B2F38();

  v2 = *(v0 + qword_27ECC4180);

  return swift_deallocClassInstance();
}

uint64_t sub_242869F1C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_242869FC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_24286A060(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

void SourceEntity.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = a2;
  v27 = sub_2428B3558();
  v3 = *(v27 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2428B36C8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2428B45F8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_2428B3568();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_2428B3C08();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  sub_2428B3C18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4270, &qword_2428B6EC8);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v6, *MEMORY[0x277CC9110], v27);
  sub_2428B3578();
  v19 = sub_2428B2D68();
  v20 = sub_2428B3BE8();
  v22 = v21;
  v23 = sub_2428B3BD8();
  v29 = sub_2428B3BF8();
  v30 = v24;
  sub_2428B2C78();
  (*(v14 + 8))(v17, v13);

  v25 = v28;
  *v28 = v20;
  v25[1] = v22;
  v25[2] = v23;
  v25[3] = v19;
}

uint64_t SourceEntity.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2428B3558();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2428B36C8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_2428B45F8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_2428B3568();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4270, &qword_2428B6EC8);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v5 + 104))(v8, *MEMORY[0x277CC9110], v4);
  sub_2428B3578();
  a2[3] = sub_2428B2D68();
  *a2 = sub_2428B3BE8();
  a2[1] = v15;
  a2[2] = sub_2428B3BD8();
  v19[1] = sub_2428B3BF8();
  v19[2] = v16;
  sub_2428B2C78();
  v17 = sub_2428B3C08();
  return (*(*(v17 - 8) + 8))(a1, v17);
}

uint64_t sub_24286A788()
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
  v15 = sub_2428B3338();
  __swift_allocate_value_buffer(v15, qword_27ECC4250);
  __swift_project_value_buffer(v15, qword_27ECC4250);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_2428B3578();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_2428B3328();
}

uint64_t static SourceEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC18A0 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4250);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t SourceEntity.displayRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = sub_2428B3568();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  if (*(v0 + 16))
  {
    v12 = *(v0 + 24);
    sub_2428B2C68();
    return sub_2428B3128();
  }

  else
  {
    type metadata accessor for LocalizedStringUtils();
    v14 = sub_2427F0F90();
    sub_2427EFCE4(v14);
    (*(v10 + 56))(v8, 1, 1, v9);
    v15 = sub_2428B3148();
    (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
    return sub_2428B3178();
  }
}

uint64_t SourceEntity.title.getter()
{
  v1 = *(v0 + 24);
  sub_2428B2C68();
  return v3;
}

uint64_t sub_24286AD5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  sub_2428B2948();
  result = sub_2428B2918();
  qword_27ECC4268 = result;
  return result;
}

uint64_t static SourceEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECC18A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27ECC4268;
  return sub_2428B2F38();
}

uint64_t static SourceEntity.defaultQuery.setter(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27ECC18A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECC4268 = v1;
}

uint64_t (*static SourceEntity.defaultQuery.modify())()
{
  if (qword_27ECC18A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_24286AF54@<X0>(void *a1@<X8>)
{
  if (qword_27ECC18A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27ECC4268;
  return sub_2428B2F38();
}

uint64_t sub_24286AFD4(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27ECC18A8;
  sub_2428B2F38();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECC4268 = v1;
}

uint64_t SourceEntity.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2428B3218();
  return v1;
}

uint64_t SourceEntity.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_24286B114(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  v5 = *a1;
  v6 = a1[1];
  sub_2428B3218();
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2C78();
}

void (*SourceEntity.title.modify(uint64_t *a1))(void *a1)
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
  return sub_2427CC2B0;
}

uint64_t sub_24286B240@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_2428B3218();
}

uint64_t sub_24286B24C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC18A0 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4250);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24286B2F4(uint64_t a1)
{
  v2 = sub_242833FF8();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_24286B344(uint64_t a1)
{
  v2 = sub_24286B54C();

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_24286B394()
{
  result = qword_280CDE3B8;
  if (!qword_280CDE3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE3B8);
  }

  return result;
}

unint64_t sub_24286B3EC()
{
  result = qword_280CDE3A0;
  if (!qword_280CDE3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE3A0);
  }

  return result;
}

unint64_t sub_24286B444()
{
  result = qword_280CDE368;
  if (!qword_280CDE368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE368);
  }

  return result;
}

unint64_t sub_24286B4A0()
{
  result = qword_280CDE398;
  if (!qword_280CDE398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE398);
  }

  return result;
}

unint64_t sub_24286B4F4()
{
  result = qword_280CDE390;
  if (!qword_280CDE390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE390);
  }

  return result;
}

unint64_t sub_24286B54C()
{
  result = qword_280CDE380;
  if (!qword_280CDE380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE380);
  }

  return result;
}

unint64_t sub_24286B5A4()
{
  result = qword_27ECC4288;
  if (!qword_27ECC4288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC4290, &qword_2428C0C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4288);
  }

  return result;
}

unint64_t sub_24286B60C()
{
  result = qword_280CDE378;
  if (!qword_280CDE378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE378);
  }

  return result;
}

uint64_t sub_24286B660(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24286B6A8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_24286B73C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + qword_27ECC4298);
  sub_2428B2F38();
  sub_2428B4328();

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_24286B79C(uint64_t *a1, void *a2)
{
  v2 = *(*a2 + qword_27ECC4298);
  v4 = *a1;
  v5 = *(a1 + 8);
  sub_2428B2F38();
  sub_2428B4338();
}

uint64_t sub_24286B7F8()
{
  v1 = *(v0 + qword_27ECC4298);
  sub_2428B2F38();
  sub_2428B4328();

  return v3;
}

uint64_t sub_24286B848()
{
  v1 = *(v0 + qword_27ECC4298);
  sub_2428B2F38();
  sub_2428B4338();
}

uint64_t (*sub_24286B89C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC4298);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t sub_24286B934(void *a1)
{
  v1 = *(*a1 + qword_27ECC42A0);
  sub_2428B2F38();
  sub_2428B4328();
}

uint64_t sub_24286B988(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_2427F95E0(a1, &v13 - v9);
  v11 = *(*a2 + qword_27ECC42A0);
  sub_2427F95E0(v10, v8);
  sub_2428B2F38();
  sub_2428B4338();

  return sub_242830FC0(v10);
}

uint64_t sub_24286BA70()
{
  v1 = *(v0 + qword_27ECC42A0);
  sub_2428B2F38();
  sub_2428B4328();
}

uint64_t sub_24286BAC0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + qword_27ECC42A0);
  sub_2427F95E0(a1, &v8 - v6);
  sub_2428B2F38();
  sub_2428B4338();

  return sub_242830FC0(a1);
}

uint64_t (*sub_24286BB70(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC42A0);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t sub_24286BC08@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + qword_27ECC42A8);
  sub_2428B2F38();
  sub_2428B4328();

  *a2 = v5;
  return result;
}

uint64_t sub_24286BC60(char *a1, void *a2)
{
  v2 = *(*a2 + qword_27ECC42A8);
  v4 = *a1;
  sub_2428B2F38();
  sub_2428B4338();
}

uint64_t sub_24286BCB4()
{
  v1 = *(v0 + qword_27ECC42A8);
  sub_2428B2F38();
  sub_2428B4328();

  return v3;
}

uint64_t sub_24286BD00()
{
  v1 = *(v0 + qword_27ECC42A8);
  sub_2428B2F38();
  sub_2428B4338();
}

uint64_t (*sub_24286BD4C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + qword_27ECC42A8);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D4714;
}

uint64_t static AlarmEntityRepresentation.instance(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v31 = &v28 - v6;
  v7 = sub_2428B3688();
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2428B39A8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for AlarmEntityRepresentation();
  sub_24286C960(&qword_27ECC42B0);
  v16 = sub_2428B41E8();
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2428B3888();
  v18 = (*(v12 + 88))(v15, v11);
  if (v18 == *MEMORY[0x277CF7B78])
  {
    (*(v12 + 96))(v15, v11);
    v19 = *(v16 + qword_27ECC4298);
    v32 = *v15;
    v33 = 0;
    sub_2428B2F38();
    sub_2428B4338();
  }

  else if (v18 == *MEMORY[0x277CF7B70])
  {
    (*(v12 + 96))(v15, v11);
    v20 = v29;
    (*(v29 + 32))(v10, v15, v7);
    v21 = v31;
    (*(v20 + 16))(v31, v10, v7);
    (*(v20 + 56))(v21, 0, 1, v7);
    v22 = *(v16 + qword_27ECC42A0);
    sub_2427F95E0(v21, v30);
    sub_2428B2F38();
    sub_2428B4338();

    sub_242830FC0(v21);
    (*(v20 + 8))(v10, v7);
  }

  else
  {
    v23 = *(v16 + qword_27ECC4298);
    v32 = 0;
    v33 = 0;
    sub_2428B2F38();
    sub_2428B4338();

    (*(v12 + 8))(v15, v11);
  }

  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v25 = sub_2428B3898();
  v26 = *(v16 + qword_27ECC42A8);
  LOBYTE(v32) = v25 & 1;
  sub_2428B2F38();
  sub_2428B4338();

  return v16;
}

uint64_t type metadata accessor for AlarmEntityRepresentation()
{
  result = qword_27ECC4300;
  if (!qword_27ECC4300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AlarmEntityRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v3 = sub_2428B4238();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  v10 = swift_allocObject();
  v11 = qword_27ECC4298;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4190, &unk_2428C06C0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v10 + v11) = sub_2428B4308();
  v15 = qword_27ECC42A0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3F70, &unk_2428C0D80);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v10 + v15) = sub_2428B4308();
  v19 = qword_27ECC42A8;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2A68, &qword_2428BA528);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *(v10 + v19) = sub_2428B4308();
  (*(v4 + 16))(v7, a1, v3);
  v23 = sub_2428B4298();
  (*(v4 + 8))(a1, v3);
  return v23;
}

uint64_t AlarmEntityRepresentation.init(_:)(uint64_t a1)
{
  v3 = sub_2428B4238();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_27ECC4298;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4190, &unk_2428C06C0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v1 + v8) = sub_2428B4308();
  v12 = qword_27ECC42A0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3F70, &unk_2428C0D80);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v1 + v12) = sub_2428B4308();
  v16 = qword_27ECC42A8;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2A68, &qword_2428BA528);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *(v1 + v16) = sub_2428B4308();
  (*(v4 + 16))(v7, a1, v3);
  v20 = sub_2428B4298();
  (*(v4 + 8))(a1, v3);
  return v20;
}

uint64_t sub_24286C5C0()
{
  v1 = *(v0 + qword_27ECC4298);

  v2 = *(v0 + qword_27ECC42A0);

  v3 = *(v0 + qword_27ECC42A8);
}

uint64_t AlarmEntityRepresentation.deinit()
{
  v0 = _s12CalendarLink41LocationSearchResultsEntityRepresentationCfd_0();
  v1 = *(v0 + qword_27ECC4298);

  v2 = *(v0 + qword_27ECC42A0);

  v3 = *(v0 + qword_27ECC42A8);

  return v0;
}

uint64_t AlarmEntityRepresentation.__deallocating_deinit()
{
  v0 = _s12CalendarLink41LocationSearchResultsEntityRepresentationCfd_0();
  v1 = *(v0 + qword_27ECC4298);
  sub_2428B2F38();

  v2 = *(v0 + qword_27ECC42A0);

  v3 = *(v0 + qword_27ECC42A8);

  return swift_deallocClassInstance();
}

uint64_t sub_24286C844(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_24286C8D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_24286C960(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AlarmEntityRepresentation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24286C9A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t sub_24286CDA0()
{
  v0 = sub_2428B4448();
  __swift_allocate_value_buffer(v0, qword_280CDE4E8);
  __swift_project_value_buffer(v0, qword_280CDE4E8);
  return sub_2428B4438();
}

id sub_24286CE20()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16 - v3;
  v5 = sub_2428B3688();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0[1];
  v11 = *v0;
  sub_2428B2C68();
  if ((v17 & 1) == 0)
  {
    return [objc_allocWithZone(MEMORY[0x277CC5988]) initWithRelativeOffset_];
  }

  sub_2428B2C68();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_242830FC0(v4);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    v13 = objc_allocWithZone(MEMORY[0x277CC5988]);
    v14 = sub_2428B3658();
    v15 = [v13 initWithAbsoluteDate_];

    (*(v6 + 8))(v9, v5);
    return v15;
  }
}

id AlarmEntity.ekAlarm.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17[-v3];
  v5 = sub_2428B3688();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *v0;
  v11 = v0[2];
  v12 = v0[1];
  sub_2428B2C68();
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    (*(v6 + 32))(v9, v4, v5);
    v14 = objc_allocWithZone(MEMORY[0x277CC5988]);
    v15 = sub_2428B3658();
    v13 = [v14 initWithAbsoluteDate_];

    (*(v6 + 8))(v9, v5);
    if (!v13)
    {
      return v13;
    }

LABEL_5:
    sub_2428B2C68();
    [v13 setDefaultAlarm_];
    return v13;
  }

  sub_242830FC0(v4);
  sub_2428B2C68();
  if ((v19 & 1) == 0)
  {
    v13 = [objc_allocWithZone(MEMORY[0x277CC5988]) initWithRelativeOffset_];
    if (!v13)
    {
      return v13;
    }

    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_24286D240()
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
  v15 = sub_2428B3338();
  __swift_allocate_value_buffer(v15, qword_27ECC4310);
  __swift_project_value_buffer(v15, qword_27ECC4310);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_2428B3578();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_2428B3328();
}

uint64_t static AlarmEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC18B8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4310);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t AlarmEntity.relativeOffset.getter()
{
  v1 = *v0;
  sub_2428B2C68();
  return v3;
}

uint64_t sub_24286D614(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v6 = *a1;
  v7 = *(a1 + 8);
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*AlarmEntity.relativeOffset.modify(uint64_t *a1))()
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
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_24286D788(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  sub_2427F95E0(a1, &v15 - v9);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  sub_2427F95E0(v10, v8);
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
  sub_242830FC0(v10);
}

uint64_t AlarmEntity.absoluteDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 8);
  sub_2427F95E0(a1, &v8 - v6);
  sub_2428B2C78();
  return sub_242830FC0(a1);
}

uint64_t (*AlarmEntity.absoluteDate.modify(uint64_t *a1))()
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

uint64_t AlarmEntity.isDefaultAlarm.getter()
{
  v1 = *(v0 + 16);
  sub_2428B2C68();
  return v3;
}

uint64_t sub_24286D9F4(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v6 = *a1;
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*AlarmEntity.isDefaultAlarm.modify(uint64_t *a1))()
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
  return sub_2427CBEA8;
}

uint64_t AlarmEntity.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v53 = a1;
  v54 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v48 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v47 = &v43 - v6;
  v7 = sub_2428B3688();
  v45 = *(v7 - 8);
  v46 = v7;
  v8 = *(v45 + 64);
  MEMORY[0x28223BE20](v7);
  v44 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2428B39A8();
  v51 = *(v10 - 8);
  v52 = v10;
  v11 = *(v51 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_2428B3558();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2428B36C8();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = sub_2428B45F8();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = sub_2428B3568();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4328, &qword_2428C0FD0);
  sub_2428B4578();
  sub_2428B36B8();
  v25 = *MEMORY[0x277CC9110];
  v26 = *(v15 + 104);
  v26(v18, v25, v14);
  sub_2428B3578();
  v49 = sub_2428B2D88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4330, &qword_2428C0FD8);
  sub_2428B4578();
  sub_2428B36B8();
  v26(v18, v25, v14);
  sub_2428B3578();
  v50 = sub_2428B2D48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1FC8, &qword_2428B6EE0);
  sub_2428B4578();
  sub_2428B36B8();
  v26(v18, v25, v14);
  v27 = v53;
  sub_2428B3578();
  v28 = sub_2428B2D78();
  v29 = v27[4];
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  v30 = v51;
  sub_2428B3888();
  v31 = v52;
  v32 = (*(v30 + 88))(v13, v52);
  if (v32 == *MEMORY[0x277CF7B78])
  {
    (*(v30 + 96))(v13, v31);
    v55 = *v13;
    v56 = 0;
    v33 = v49;
    sub_2428B2C78();
    v34 = v33;
LABEL_6:
    v39 = v50;
    goto LABEL_7;
  }

  v34 = v49;
  if (v32 != *MEMORY[0x277CF7B70])
  {
    (*(v30 + 8))(v13, v31);
    goto LABEL_6;
  }

  (*(v30 + 96))(v13, v31);
  v36 = v44;
  v35 = v45;
  v37 = v46;
  (*(v45 + 32))(v44, v13, v46);
  v38 = v47;
  (*(v35 + 16))(v47, v36, v37);
  (*(v35 + 56))(v38, 0, 1, v37);
  sub_2427F95E0(v38, v48);
  v39 = v50;
  sub_2428B2C78();
  sub_242830FC0(v38);
  (*(v35 + 8))(v36, v37);
LABEL_7:
  v40 = v27[4];
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  v57 = sub_2428B3898() & 1;
  sub_2428B2C78();
  v41 = v54;
  *v54 = v34;
  v41[1] = v39;
  v41[2] = v28;
  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t AlarmEntity.init(relativeOffset:isDefaultAlarm:)@<X0>(int a1@<W0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v20 = a1;
  v5 = sub_2428B3558();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2428B36C8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_2428B45F8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_2428B3568();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4328, &qword_2428C0FD0);
  sub_2428B4578();
  sub_2428B36B8();
  v16 = *MEMORY[0x277CC9110];
  v17 = *(v6 + 104);
  v17(v9, v16, v5);
  sub_2428B3578();
  v19 = sub_2428B2D88();
  *a2 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4330, &qword_2428C0FD8);
  sub_2428B4578();
  sub_2428B36B8();
  v17(v9, v16, v5);
  sub_2428B3578();
  a2[1] = sub_2428B2D48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1FC8, &qword_2428B6EE0);
  sub_2428B4578();
  sub_2428B36B8();
  v17(v9, v16, v5);
  sub_2428B3578();
  a2[2] = sub_2428B2D78();
  v22 = a3;
  v23 = 0;
  sub_2428B2C78();
  v21 = v20;
  return sub_2428B2C78();
}

uint64_t AlarmEntity.init(absoluteDate:isDefaultAlarm:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v32 = a2;
  v31 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v29 = &v27 - v8;
  v9 = sub_2428B3558();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2428B36C8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = sub_2428B45F8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = sub_2428B3568();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4328, &qword_2428C0FD0);
  sub_2428B4578();
  sub_2428B36B8();
  v20 = *MEMORY[0x277CC9110];
  v21 = *(v10 + 104);
  v28 = v9;
  v21(v13, v20, v9);
  sub_2428B3578();
  *a3 = sub_2428B2D88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4330, &qword_2428C0FD8);
  sub_2428B4578();
  sub_2428B36B8();
  v21(v13, v20, v9);
  sub_2428B3578();
  a3[1] = sub_2428B2D48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1FC8, &qword_2428B6EE0);
  sub_2428B4578();
  sub_2428B36B8();
  v21(v13, v20, v28);
  sub_2428B3578();
  a3[2] = sub_2428B2D78();
  v22 = sub_2428B3688();
  v23 = *(v22 - 8);
  v24 = v29;
  v25 = v31;
  (*(v23 + 16))(v29, v31, v22);
  (*(v23 + 56))(v24, 0, 1, v22);
  sub_2427F95E0(v24, v30);
  sub_2428B2C78();
  sub_242830FC0(v24);
  v33 = v32;
  sub_2428B2C78();
  return (*(v23 + 8))(v25, v22);
}

uint64_t AlarmEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2428B3558();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2428B36C8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2428B45F8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_2428B3568();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4328, &qword_2428C0FD0);
  sub_2428B4578();
  sub_2428B36B8();
  v13 = *MEMORY[0x277CC9110];
  v14 = *(v3 + 104);
  v14(v6, v13, v2);
  sub_2428B3578();
  *a1 = sub_2428B2D88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4330, &qword_2428C0FD8);
  sub_2428B4578();
  sub_2428B36B8();
  v14(v6, v13, v2);
  sub_2428B3578();
  a1[1] = sub_2428B2D48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1FC8, &qword_2428B6EE0);
  sub_2428B4578();
  sub_2428B36B8();
  v14(v6, v13, v2);
  sub_2428B3578();
  result = sub_2428B2D78();
  a1[2] = result;
  return result;
}

uint64_t sub_24286EF08(uint64_t a1)
{
  v2 = sub_242870A14();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_24286EF54()
{
  sub_242870A14();

  return sub_2428B28C8();
}

uint64_t sub_24286EFA0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC18B8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4310);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24286F048(uint64_t a1)
{
  v2 = sub_24283FACC();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t AlarmEntity.displayRepresentation.getter()
{
  v1 = sub_2428B45D8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v49 = v44 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v48 = v44 - v8;
  v9 = sub_2428B36C8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v44[1] = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2428B3558();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v44[0] = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2428B45F8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v50 = v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2428B3568();
  v20 = *(v19 - 8);
  v45 = v19;
  v46 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v47 = v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = v44 - v25;
  v27 = sub_2428B3688();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = v44 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v0;
  v32 = v0[1];
  sub_2428B2C68();
  if ((*(v28 + 48))(v26, 1, v27) != 1)
  {
    (*(v28 + 32))(v31, v26, v27);
    v34 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v34 setDateStyle_];
    [v34 setTimeStyle_];
    v35 = sub_2428B3658();
    v36 = [v34 stringFromDate_];

    sub_2428B4618();
    sub_2428B3128();

    return (*(v28 + 8))(v31, v27);
  }

  sub_242830FC0(v26);
  sub_2428B2C68();
  if (v52)
  {
    sub_2428B4578();
    if (qword_27ECC1780 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_63;
  }

  if (v51 == 0.0)
  {
    sub_2428B4578();
    if (qword_27ECC1780 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_63;
  }

  if (v51 == -3600.0)
  {
    sub_2428B4578();
    if (qword_27ECC1780 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_63;
  }

  if (v51 != -86400.0)
  {
    if (v51 == -172800.0)
    {
      sub_2428B4578();
      if (qword_27ECC1780 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_63;
    }

    if (v51 == -604800.0)
    {
      sub_2428B4578();
      if (qword_27ECC1780 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_63;
    }

    if (v51 == 32400.0)
    {
      sub_2428B4578();
      if (qword_27ECC1780 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_63;
    }

    if (v51 == -54000.0)
    {
      sub_2428B4578();
      if (qword_27ECC1780 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_63;
    }

    if (v51 == -140400.0)
    {
      sub_2428B4578();
      if (qword_27ECC1780 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_63;
    }

    if (v51 == -572400.0)
    {
      sub_2428B4578();
      if (qword_27ECC1780 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_63;
    }

    if ((*&v51 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v40 = fabs(v51);
      if (v40 < 9.22337204e18)
      {
        v41 = v40 / 3600;
        v42 = v40 / 60 % 60;
        v43 = v40 + 3599;
        if (v51 >= 0.0)
        {
          if (v43 >= 0x1C1F)
          {
            if (v42)
            {
              sub_2428B45C8();
              sub_2428B45B8();
              v51 = *&v41;
              sub_2428B4588();
              sub_2428B45B8();
              v51 = *&v42;
              sub_2428B4588();
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
              v51 = *&v41;
              sub_2428B4588();
              sub_2428B45B8();
              sub_2428B45E8();
              if (qword_27ECC1780 == -1)
              {
                goto LABEL_14;
              }
            }
          }

          else
          {
            sub_2428B45C8();
            sub_2428B45B8();
            v51 = *&v42;
            sub_2428B4588();
            sub_2428B45B8();
            sub_2428B45E8();
            if (qword_27ECC1780 == -1)
            {
              goto LABEL_14;
            }
          }
        }

        else if (v43 >= 0x1C1F)
        {
          if (v42)
          {
            sub_2428B45C8();
            sub_2428B45B8();
            v51 = *&v41;
            sub_2428B4588();
            sub_2428B45B8();
            v51 = *&v42;
            sub_2428B4588();
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
            v51 = *&v41;
            sub_2428B4588();
            sub_2428B45B8();
            sub_2428B45E8();
            if (qword_27ECC1780 == -1)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
          sub_2428B45C8();
          sub_2428B45B8();
          v51 = *&v42;
          sub_2428B4588();
          sub_2428B45B8();
          sub_2428B45E8();
          if (qword_27ECC1780 == -1)
          {
            goto LABEL_14;
          }
        }

        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_63:
    swift_once();
    goto LABEL_14;
  }

  sub_2428B4578();
  if (qword_27ECC1780 != -1)
  {
    goto LABEL_63;
  }

LABEL_14:
  v38 = __swift_project_value_buffer(v12, qword_27ECD4500);
  (*(v13 + 16))(v44[0], v38, v12);
  sub_2428B36B8();
  sub_2428B3578();
  (*(v46 + 56))(v48, 1, 1, v45);
  v39 = sub_2428B3148();
  (*(*(v39 - 8) + 56))(v49, 1, 1, v39);
  return sub_2428B3178();
}

unint64_t sub_242870678()
{
  result = qword_280CDE4D0;
  if (!qword_280CDE4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE4D0);
  }

  return result;
}

unint64_t sub_2428706D0()
{
  result = qword_280CDE4C0;
  if (!qword_280CDE4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE4C0);
  }

  return result;
}

unint64_t sub_242870728()
{
  result = qword_280CDE498;
  if (!qword_280CDE498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE498);
  }

  return result;
}

unint64_t sub_2428707C4()
{
  result = qword_280CDE4B8;
  if (!qword_280CDE4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE4B8);
  }

  return result;
}

unint64_t sub_242870818()
{
  result = qword_280CDE4B0;
  if (!qword_280CDE4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE4B0);
  }

  return result;
}

unint64_t sub_24287086C()
{
  result = qword_280CDE4C8;
  if (!qword_280CDE4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE4C8);
  }

  return result;
}

unint64_t sub_2428708C4()
{
  result = qword_280CDE4A8;
  if (!qword_280CDE4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE4A8);
  }

  return result;
}

unint64_t sub_242870960()
{
  result = qword_280CDE4A0;
  if (!qword_280CDE4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE4A0);
  }

  return result;
}

uint64_t sub_2428709B8(uint64_t a1)
{
  v2 = sub_2428708C4();

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_242870A14()
{
  result = qword_27ECC4358;
  if (!qword_27ECC4358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4358);
  }

  return result;
}

uint64_t EmailAttendeesIntent.init()@<X0>(uint64_t *a1@<X8>)
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

uint64_t EmailAttendeesIntent.target.setter(__int128 *a1)
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

uint64_t sub_2428710E4()
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
  __swift_allocate_value_buffer(v9, qword_27ECC4360);
  __swift_project_value_buffer(v9, qword_27ECC4360);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_2428B3588();
}

uint64_t static EmailAttendeesIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC18C0 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4360);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24287137C()
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
  __swift_allocate_value_buffer(v15, qword_27ECC4378);
  __swift_project_value_buffer(v15, qword_27ECC4378);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_2428B3588();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_2428B3088();
}

uint64_t static EmailAttendeesIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC18C8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4378);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static EmailAttendeesIntent.description.setter(uint64_t a1)
{
  if (qword_27ECC18C8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4378);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static EmailAttendeesIntent.description.modify())()
{
  if (qword_27ECC18C8 != -1)
  {
    swift_once();
  }

  v0 = sub_2428B3078();
  __swift_project_value_buffer(v0, qword_27ECC4378);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2428718A8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC18C8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4378);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_242871968(uint64_t a1)
{
  if (qword_27ECC18C8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4378);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t EmailAttendeesIntent.viewOpener.setter(uint64_t *a1)
{
  v3 = *v1;
  sub_2427CBD84(a1, v5);
  sub_2428B28F8();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*EmailAttendeesIntent.viewOpener.modify(uint64_t *a1))()
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

uint64_t EmailAttendeesIntent.eventStoreProvider.getter()
{
  v1 = *(v0 + 8);
  sub_2428B28E8();
  return v3;
}

uint64_t EmailAttendeesIntent.eventStoreProvider.setter()
{
  v1 = *(v0 + 8);
  swift_unknownObjectRetain();
  sub_2428B28F8();
  return swift_unknownObjectRelease();
}

uint64_t (*EmailAttendeesIntent.eventStoreProvider.modify(uint64_t *a1))()
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

uint64_t (*EmailAttendeesIntent.target.modify(uint64_t *a1))()
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

uint64_t static EmailAttendeesIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4390, &qword_2428C1298);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4398, &qword_2428C12A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_24285FC90();
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC43A8, &qword_2428C12D0);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3238();
}

uint64_t EmailAttendeesIntent.perform()(uint64_t a1)
{
  *(v2 + 432) = a1;
  *(v2 + 440) = *v1;
  *(v2 + 456) = *(v1 + 16);
  sub_2428B4758();
  *(v2 + 464) = sub_2428B4748();
  v4 = sub_2428B4728();
  *(v2 + 472) = v4;
  *(v2 + 480) = v3;

  return MEMORY[0x2822009F8](sub_242871F24, v4, v3);
}

uint64_t sub_242871F24()
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
    v28 = *(v0 + 464);

    sub_2428B2938();
    sub_2427CCD68(&qword_27ECC1A80, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_2428B2928();
LABEL_21:
    swift_willThrow();
    goto LABEL_22;
  }

  v3 = *(v0 + 448);
  sub_2428B28E8();
  v4 = [*(v0 + 416) eventStore];
  *(v0 + 488) = v4;
  swift_unknownObjectRelease();
  if (!v4)
  {
    v29 = *(v0 + 464);

    sub_2427CCDB0();
    swift_allocError();
    *v30 = 24;
    goto LABEL_21;
  }

  v5 = *(v0 + 456);
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
  *(v0 + 496) = v14;

  if (v14)
  {
    v15 = v14;
    if (![v15 hasAttendees])
    {
      v35 = *(v0 + 464);

      sub_2427CCDB0();
      swift_allocError();
      v37 = 96;
LABEL_45:
      *v36 = v37;
      swift_willThrow();

      goto LABEL_22;
    }

    v16 = [v15 attendees];

    v17 = MEMORY[0x277D84F90];
    v18 = &property descriptor for AlarmEntityRepresentation.absoluteDate;
    if (v16)
    {
      sub_242872838();
      v19 = sub_2428B46C8();

      v54 = v17;
      if (v19 >> 62)
      {
        v20 = sub_2428B49C8();
        if (v20)
        {
LABEL_8:
          v50 = v15;
          v51 = v4;
          v4 = 0;
          v21 = v19 & 0xC000000000000001;
          v15 = (v19 & 0xFFFFFFFFFFFFFF8);
          v52 = v19 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v21)
            {
              v22 = MEMORY[0x245D1B5D0](v4, v19);
            }

            else
            {
              if (v4 >= v15[2])
              {
                goto LABEL_42;
              }

              v22 = *(v19 + 8 * v4 + 32);
            }

            v23 = v22;
            v24 = (v4 + 1);
            if (__OFADD__(v4, 1))
            {
              break;
            }

            if (([v22 v18[418]] & 1) != 0 || (v25 = objc_msgSend(v23, sel_emailAddress)) == 0)
            {
            }

            else
            {

              sub_2428B4AA8();
              v17 = v19;
              v26 = v18;
              v27 = *(v54 + 16);
              sub_2428B4AD8();
              v18 = v26;
              v19 = v17;
              sub_2428B4AE8();
              sub_2428B4AB8();
              v15 = v52;
            }

            ++v4;
            if (v24 == v20)
            {
              v17 = v54;
              v15 = v50;
              v4 = v51;
              goto LABEL_28;
            }
          }

          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }
      }

      else
      {
        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v20)
        {
          goto LABEL_8;
        }
      }

LABEL_28:
    }

    *(v0 + 424) = v17;
    v38 = [v15 organizer];
    if (v38)
    {
      v39 = v38;
      if (([v38 v18[418]] & 1) != 0 || (v40 = objc_msgSend(v39, sel_emailAddress)) == 0)
      {
      }

      else
      {

        v41 = v39;
        MEMORY[0x245D1B200]();
        if (*((*(v0 + 424) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 424) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v49 = *((*(v0 + 424) & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2428B46E8();
        }

        sub_2428B4708();

        v17 = *(v0 + 424);
      }
    }

    *(v0 + 504) = v17;
    if (!(v17 >> 62))
    {
      if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_44:
        v48 = *(v0 + 464);

        sub_2427CCDB0();
        swift_allocError();
        v37 = 97;
        goto LABEL_45;
      }

LABEL_38:
      v42 = *(v0 + 440);
      sub_2428B28E8();
      v43 = *(v0 + 400);
      v44 = *(v0 + 408);
      __swift_project_boxed_opaque_existential_1((v0 + 376), v43);
      v45 = *(v44 + 56);
      v53 = (v45 + *v45);
      v46 = v45[1];
      v47 = swift_task_alloc();
      *(v0 + 512) = v47;
      *v47 = v0;
      v47[1] = sub_242872600;

      return (v53)(v15, v17, v43, v44);
    }

LABEL_43:
    if (!sub_2428B49C8())
    {
      goto LABEL_44;
    }

    goto LABEL_38;
  }

  v33 = *(v0 + 464);

  sub_2427CCDB0();
  swift_allocError();
  *v34 = 25;
  swift_willThrow();

LABEL_22:
  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_242872600()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v9 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v4 = v2[59];
    v5 = v2[60];
    v6 = sub_2428727A8;
  }

  else
  {
    v7 = v2[63];

    v4 = v2[59];
    v5 = v2[60];
    v6 = sub_24287271C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_24287271C()
{
  v2 = v0[61];
  v1 = v0[62];
  v3 = v0[58];
  v4 = v0[54];

  __swift_destroy_boxed_opaque_existential_1(v0 + 47);
  sub_2428B2C28();

  v5 = v0[1];

  return v5();
}

uint64_t sub_2428727A8()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 488);
  v3 = *(v0 + 464);

  __swift_destroy_boxed_opaque_existential_1((v0 + 376));
  v4 = *(v0 + 520);
  v5 = *(v0 + 8);

  return v5();
}

unint64_t sub_242872838()
{
  result = qword_27ECC3260;
  if (!qword_27ECC3260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECC3260);
  }

  return result;
}

unint64_t sub_242872888()
{
  result = qword_280CDDD20;
  if (!qword_280CDDD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDD20);
  }

  return result;
}

unint64_t sub_2428728E0()
{
  result = qword_280CDDD28;
  if (!qword_280CDDD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDD28);
  }

  return result;
}

uint64_t sub_24287296C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC18C0 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4360);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_242872A14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4390, &qword_2428C1298);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4398, &qword_2428C12A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC43A8, &qword_2428C12D0);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3238();
}

uint64_t sub_242872BAC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return EmailAttendeesIntent.perform()(a1);
}

uint64_t TransferableEventEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  sub_2428B2948();
  *a1 = sub_2428B2918();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3608, &qword_2428BD350);
  sub_2428B2948();
  a1[1] = sub_2428B2918();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3610, &qword_2428BD358);
  sub_2428B2948();
  result = sub_2428B2918();
  a1[2] = result;
  return result;
}

uint64_t TransferableEventEntityQuery.entities(for:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = *v1;
  *(v2 + 48) = *(v1 + 16);
  return MEMORY[0x2822009F8](sub_242872DA0, 0, 0);
}

uint64_t sub_242872DA0()
{
  v38 = v0;
  if (qword_280CDE4E0 != -1)
  {
LABEL_18:
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_2428B4448();
  __swift_project_value_buffer(v2, qword_280CDE4E8);
  sub_2428B3218();
  v3 = sub_2428B4428();
  v4 = sub_2428B4848();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v37 = v7;
    *v6 = 136315138;
    v8 = MEMORY[0x245D1B230](v5, MEMORY[0x277D837D0]);
    v10 = sub_24285A480(v8, v9, &v37);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2427C0000, v3, v4, "fetch events by id: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x245D1C000](v7, -1, -1);
    MEMORY[0x245D1C000](v6, -1, -1);
  }

  v11 = v0[5];
  v12 = v0[6];
  v13 = v0[4];
  v14 = sub_2427F4BE0();
  v15 = 0;
  v35 = v0;
  v16 = v0[3];
  v36 = MEMORY[0x277D84F90];
  v37 = MEMORY[0x277D84F90];
  v17 = *(v16 + 16);
  v18 = v16 + 40;
  v34 = v18;
LABEL_5:
  v0 = (v18 + 16 * v15);
  while (v17 != v15)
  {
    if (v15 >= v17)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v19 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_17;
    }

    v21 = *(v0 - 1);
    v20 = *v0;
    sub_2428B3218();
    v22 = sub_2428B4608();
    v23 = [objc_opt_self() recurrenceIdentifierWithString_];

    v24 = [v14 eventWithRecurrenceIdentifier_];

    v0 += 2;
    ++v15;
    if (v24)
    {
      MEMORY[0x245D1B200](v25);
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v26 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2428B46E8();
      }

      sub_2428B4708();
      v36 = v37;
      v15 = v19;
      v18 = v34;
      goto LABEL_5;
    }
  }

  v27 = v35[5];
  v28 = v35[6];
  sub_2428B28E8();
  v29 = v35[2];
  sub_2428B28E8();
  v30 = v35[2];
  v31 = sub_242827F98(v36, v29, v30);

  v32 = v35[1];

  return v32(v31);
}

uint64_t sub_24287312C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427F96EC;

  return TransferableEventEntityQuery.entities(for:)(a1);
}

uint64_t sub_2428731C0(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_2428248E4();
  *v6 = v2;
  v6[1] = sub_2427DC6B4;

  return MEMORY[0x28210B618](a1, a2, v7);
}

unint64_t sub_242873278()
{
  result = qword_27ECC43C8;
  if (!qword_27ECC43C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC43C8);
  }

  return result;
}

unint64_t sub_2428732D0()
{
  result = qword_27ECC43D0;
  if (!qword_27ECC43D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC43D0);
  }

  return result;
}

unint64_t sub_24287335C()
{
  result = qword_27ECC43E0;
  if (!qword_27ECC43E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC43E0);
  }

  return result;
}

uint64_t sub_2428733E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TransferableEventEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24287342C()
{
  result = qword_27ECC43F0;
  if (!qword_27ECC43F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC3620, &unk_2428BD370);
    sub_2428733E4(&qword_280CDDBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC43F0);
  }

  return result;
}

uint64_t sub_242873500@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 48);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_242873548()
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
  __swift_allocate_value_buffer(v9, qword_27ECC4400);
  __swift_project_value_buffer(v9, qword_27ECC4400);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_2428B3588();
}

uint64_t static CreateEventIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC18D0 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4400);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2428737D4()
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
  __swift_allocate_value_buffer(v15, qword_27ECC4418);
  __swift_project_value_buffer(v15, qword_27ECC4418);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_2428B3588();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_2428B3088();
}

uint64_t static CreateEventIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC18D8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4418);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static CreateEventIntent.description.setter(uint64_t a1)
{
  if (qword_27ECC18D8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4418);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static CreateEventIntent.description.modify())()
{
  if (qword_27ECC18D8 != -1)
  {
    swift_once();
  }

  v0 = sub_2428B3078();
  __swift_project_value_buffer(v0, qword_27ECC4418);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_242873D00@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC18D8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4418);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_242873DC0(uint64_t a1)
{
  if (qword_27ECC18D8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4418);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t CreateEventIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v168 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v152 = v133 - v3;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE8, &unk_2428BDEA0);
  v150 = *(v151 - 8);
  v4 = *(v150 + 64);
  MEMORY[0x28223BE20](v151);
  v149 = v133 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4430, &unk_2428B7970);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v145 = v133 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2CF0, &unk_2428C15D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v141 = v133 - v11;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3BD0, &unk_2428BE2F0);
  v139 = *(v140 - 8);
  v12 = *(v139 + 64);
  MEMORY[0x28223BE20](v140);
  v138 = v133 - v13;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3580, &unk_2428BDEB0);
  v136 = *(v137 - 8);
  v14 = *(v136 + 64);
  MEMORY[0x28223BE20](v137);
  v135 = v133 - v15;
  v173 = sub_2428B3298();
  v167 = *(v173 - 8);
  v16 = *(v167 + 64);
  MEMORY[0x28223BE20](v173);
  v164 = v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v154 = v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v163 = v133 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D00, &unk_2428BD500);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v153 = v133 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v162 = v133 - v28;
  v29 = sub_2428B3558();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = v133 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2428B36C8();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = sub_2428B45F8();
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v39 = v133 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_2428B3568();
  v169 = v40;
  v172 = *(v40 - 8);
  v41 = *(v172 + 64);
  MEMORY[0x28223BE20](v40);
  v43 = v133 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  v143 = sub_2428B2958();
  v175 = 0u;
  v176 = 0u;
  *&v177 = 0;
  sub_2428B2948();
  *v168 = sub_2428B2918();
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3840, &unk_2428BDEC0);
  sub_2428B4578();
  sub_2428B36B8();
  v44 = *MEMORY[0x277CC9110];
  v45 = *(v30 + 104);
  v158 = v29;
  v45(v33, v44, v29);
  v160 = v30 + 104;
  sub_2428B3578();
  v142 = 0xD000000000000017;
  sub_2428B4578();
  sub_2428B36B8();
  v45(v33, v44, v29);
  v46 = v162;
  sub_2428B3578();
  v47 = *(v172 + 56);
  v172 += 56;
  v156 = v47;
  v47(v46, 0, 1, v40);
  v147 = sub_2428B4568();
  v175 = 0uLL;
  v48 = *(v147 - 8);
  v146 = *(v48 + 56);
  v148 = v48 + 56;
  v146(v153, 1, 1, v147);
  v171 = sub_2428B2AE8();
  v49 = *(v171 - 8);
  v170 = *(v49 + 56);
  v165 = v49 + 56;
  v170(v163, 1, 1, v171);
  v161 = *MEMORY[0x277CBA308];
  v50 = *(v167 + 104);
  v167 += 104;
  v166 = v50;
  (v50)(v164);
  v157 = v43;
  v168[1] = sub_2428B2EB8();
  v133[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3588, &qword_2428BD360);
  sub_2428B4578();
  sub_2428B36B8();
  v155 = v44;
  v51 = v158;
  v159 = v45;
  v45(v33, v44, v158);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v45(v33, v44, v51);
  v52 = v162;
  sub_2428B3578();
  v156(v52, 0, 1, v169);
  v170(v163, 1, 1, v171);
  LODWORD(v134) = *MEMORY[0x277CB9EF0];
  (*(v136 + 104))(v135);
  v166(v164, v161, v173);
  v168[2] = sub_2428B2E98();
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4440, &unk_2428BE300);
  sub_2428B4578();
  sub_2428B36B8();
  v53 = v155;
  v54 = v158;
  v55 = v159;
  v159(v33, v155, v158);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v55(v33, v53, v54);
  sub_2428B3578();
  v56 = v156;
  v156(v52, 0, 1, v169);
  v170(v163, 1, 1, v171);
  (*(v139 + 104))(v138, v134, v140);
  v166(v164, v161, v173);
  v168[3] = sub_2428B2E98();
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3850, &unk_2428BDED0);
  sub_2428B4578();
  sub_2428B36B8();
  v57 = v155;
  v58 = v158;
  v59 = v159;
  v159(v33, v155, v158);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v60 = v57;
  v61 = v57;
  v62 = v58;
  v59(v33, v60, v58);
  v63 = v162;
  sub_2428B3578();
  v56(v63, 0, 1, v169);
  LOBYTE(v175) = 2;
  v64 = sub_2428B4718();
  (*(*(v64 - 8) + 56))(v141, 1, 1, v64);
  v170(v163, 1, 1, v171);
  v166(v164, v161, v173);
  v65 = sub_2428B2EC8();
  v66 = v168;
  v168[4] = v65;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4450, &unk_2428C15E0);
  sub_2428B4578();
  sub_2428B36B8();
  v67 = v159;
  v159(v33, v61, v62);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v67(v33, v61, v62);
  v68 = v162;
  sub_2428B3578();
  v69 = v156;
  v156(v68, 0, 1, v169);
  v170(v163, 1, 1, v171);
  v166(v164, v161, v173);
  v66[5] = sub_2428B2EA8();
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4458, &unk_2428C1B50);
  sub_2428B4578();
  sub_2428B36B8();
  v70 = v155;
  v71 = v158;
  v72 = v159;
  v159(v33, v155, v158);
  sub_2428B3578();
  v133[1] = v39;
  sub_2428B4578();
  sub_2428B36B8();
  v72(v33, v70, v71);
  v73 = v162;
  sub_2428B3578();
  v69(v73, 0, 1, v169);
  v178 = 0u;
  v179 = 0u;
  v176 = 0u;
  v177 = 0u;
  v175 = 0u;
  v74 = v170;
  v75 = v171;
  v170(v163, 1, 1, v171);
  v74(v154, 1, 1, v75);
  v166(v164, v161, v173);
  sub_2427FE688();
  v168[6] = sub_2428B2E68();
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2D48, &qword_2428C15F0);
  sub_2428B4578();
  sub_2428B36B8();
  v76 = v155;
  v77 = v158;
  v78 = v159;
  v159(v33, v155, v158);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v78(v33, v76, v77);
  v79 = v162;
  sub_2428B3578();
  v80 = v156;
  v156(v79, 0, 1, v169);
  v170(v163, 1, 1, v171);
  v166(v164, v161, v173);
  sub_2428767C0(&unk_27ECC2D50, type metadata accessor for Location);
  v168[7] = sub_2428B2E18();
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4468, &qword_2428C15F8);
  sub_2428B4578();
  sub_2428B36B8();
  v81 = v155;
  v82 = v159;
  v159(v33, v155, v77);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v82(v33, v81, v77);
  v83 = v162;
  sub_2428B3578();
  v80(v83, 0, 1, v169);
  v84 = sub_2428B34F8();
  (*(*(v84 - 8) + 56))(v145, 1, 1, v84);
  v170(v163, 1, 1, v171);
  v85 = v161;
  v166(v164, v161, v173);
  v168[8] = sub_2428B2E78();
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4470, &qword_2428C1600);
  sub_2428B4578();
  sub_2428B36B8();
  v86 = v155;
  v87 = v158;
  v88 = v159;
  v159(v33, v155, v158);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v88(v33, v86, v87);
  v89 = v88;
  v90 = v162;
  sub_2428B3578();
  v91 = v156;
  v156(v90, 0, 1, v169);
  v92 = v163;
  v170(v163, 1, 1, v171);
  v166(v164, v85, v173);
  sub_2428767C0(&unk_27ECC2D70, type metadata accessor for AlarmTrigger);
  v93 = v92;
  v168[9] = sub_2428B2E18();
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4480, &qword_2428C1608);
  sub_2428B4578();
  sub_2428B36B8();
  v94 = v158;
  v89(v33, v86, v158);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v89(v33, v86, v94);
  v95 = v162;
  sub_2428B3578();
  v91(v95, 0, 1, v169);
  v174 = MEMORY[0x277D84F90];
  v96 = v93;
  v98 = v170;
  v97 = v171;
  v170(v96, 1, 1, v171);
  v98(v154, 1, 1, v97);
  *&v177 = 0;
  v175 = 0u;
  v176 = 0u;
  sub_2428B2948();
  v99 = sub_2428B2918();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4488, &qword_2428C1610);
  swift_getKeyPath();
  v100 = sub_2428B3308();
  swift_getKeyPath();
  swift_getKeyPath();
  v101 = sub_2428B32F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4490, &qword_2428C1668);
  swift_getKeyPath();
  v102 = sub_2428B3308();
  *&v175 = v99;
  *(&v175 + 1) = v100;
  *&v176 = v101;
  *(&v176 + 1) = v102;
  v166(v164, v161, v173);
  sub_2427E29A0();
  sub_2427EB740();
  v103 = v162;
  v168[10] = sub_2428B2E58();
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3890, &unk_2428BDF10);
  sub_2428B4578();
  sub_2428B36B8();
  v104 = v155;
  v105 = v158;
  v106 = v159;
  v159(v33, v155, v158);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v106(v33, v104, v105);
  sub_2428B3578();
  v156(v103, 0, 1, v169);
  LOBYTE(v175) = 4;
  v107 = v170;
  v108 = v171;
  v170(v163, 1, 1, v171);
  v107(v154, 1, 1, v108);
  v166(v164, v161, v173);
  sub_24281E43C();
  v168[11] = sub_2428B2E38();
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC38A0, &unk_2428C16A0);
  sub_2428B4578();
  sub_2428B36B8();
  v109 = v155;
  v110 = v158;
  v111 = v159;
  v159(v33, v155, v158);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v111(v33, v109, v110);
  v112 = v162;
  sub_2428B3578();
  v156(v112, 0, 1, v169);
  LOBYTE(v175) = 5;
  v114 = v170;
  v113 = v171;
  v170(v163, 1, 1, v171);
  v114(v154, 1, 1, v113);
  v115 = v164;
  v166(v164, v161, v173);
  sub_24281E4E4();
  v116 = v115;
  v168[12] = sub_2428B2E38();
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D60, &unk_2428BDF20);
  sub_2428B4578();
  sub_2428B36B8();
  v117 = v155;
  v118 = v158;
  v119 = v159;
  v159(v33, v155, v158);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v119(v33, v117, v118);
  v120 = v162;
  sub_2428B3578();
  v156(v120, 0, 1, v169);
  *&v175 = 0;
  BYTE8(v175) = 1;
  v170(v163, 1, 1, v171);
  (*(v150 + 104))(v149, *MEMORY[0x277CB9ED0], v151);
  v166(v116, v161, v173);
  v168[13] = sub_2428B2ED8();
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3980, &unk_2428C16B0);
  sub_2428B4578();
  sub_2428B36B8();
  v121 = v158;
  v122 = v159;
  v159(v33, v117, v158);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v122(v33, v117, v121);
  v123 = v162;
  sub_2428B3578();
  v156(v123, 0, 1, v169);
  v124 = sub_2428B35D8();
  (*(*(v124 - 8) + 56))(v152, 1, 1, v124);
  v125 = v163;
  v170(v163, 1, 1, v171);
  v126 = v164;
  v127 = v161;
  v128 = v173;
  v129 = v166;
  v166(v164, v161, v173);
  v130 = sub_2428B2E88();
  v131 = v168;
  v168[14] = v130;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D10, &qword_2428BB320);
  sub_2428B3548();
  v156(v123, 1, 1, v169);
  v175 = 0uLL;
  v146(v153, 1, 1, v147);
  v170(v125, 1, 1, v171);
  v129(v126, v127, v128);
  result = sub_2428B2EB8();
  v131[15] = result;
  return result;
}

uint64_t sub_2428767C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24287682C(uint64_t a1, _OWORD *a2)
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
  sub_2427E35FC(v17, v16);
  sub_2428B2DD8();
  sub_2427E0980(v10, &qword_27ECC44A0, &qword_2428C16C0);
  return sub_2427E3658(v17);
}

uint64_t CreateEventIntent.recurrence.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC44A0, &qword_2428C16C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 40);
  sub_2427E0918(a1, &v8 - v6, &qword_27ECC44A0, &qword_2428C16C0);
  sub_2428B2DD8();
  return sub_2427E0980(a1, &qword_27ECC44A0, &qword_2428C16C0);
}

uint64_t (*CreateEventIntent.recurrence.modify(uint64_t *a1))()
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
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CBEA8;
}

uint64_t sub_242876AFC(char *a1, _OWORD *a2)
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
  sub_2427E35FC(v9, v8);
  sub_2428B2DD8();
  return sub_2427E3658(v9);
}

uint64_t CreateEventIntent.privacyLevel.setter(char *a1)
{
  v2 = *(v1 + 88);
  v4 = *a1;
  return sub_2428B2DD8();
}

uint64_t (*CreateEventIntent.privacyLevel.modify(uint64_t *a1))()
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
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242876C60(char *a1, _OWORD *a2)
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
  sub_2427E35FC(v9, v8);
  sub_2428B2DD8();
  return sub_2427E3658(v9);
}

uint64_t CreateEventIntent.availability.setter(char *a1)
{
  v2 = *(v1 + 96);
  v4 = *a1;
  return sub_2428B2DD8();
}

uint64_t (*CreateEventIntent.availability.modify(uint64_t *a1))()
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
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t CreateEventIntent.travelTime.getter()
{
  v1 = *(v0 + 104);
  sub_2428B2DC8();
  return v3;
}

uint64_t sub_242876DD8(uint64_t *a1, _OWORD *a2)
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
  sub_2427E35FC(v11, v9);
  sub_2428B2DD8();
  return sub_2427E3658(v11);
}

uint64_t (*CreateEventIntent.travelTime.modify(uint64_t *a1))()
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
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242876F44(uint64_t a1, _OWORD *a2)
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
  sub_2427E35FC(v17, v16);
  sub_2428B2DD8();
  sub_2427E0980(v10, &qword_27ECC2CE0, &qword_2428B6560);
  return sub_2427E3658(v17);
}

uint64_t CreateEventIntent.url.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 112);
  sub_2427E0918(a1, &v8 - v6, &qword_27ECC2CE0, &qword_2428B6560);
  sub_2428B2DD8();
  return sub_2427E0980(a1, &qword_27ECC2CE0, &qword_2428B6560);
}

uint64_t (*CreateEventIntent.url.modify(uint64_t *a1))()
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
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t CreateEventIntent.floatingTimeZoneID.getter()
{
  v1 = *(v0 + 120);
  sub_2428B2DC8();
  return v3;
}

uint64_t sub_242877200(uint64_t *a1, _OWORD *a2)
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
  sub_2427E35FC(v10, v9);
  sub_2428B2DD8();
  return sub_2427E3658(v10);
}

uint64_t (*CreateEventIntent.floatingTimeZoneID.modify(uint64_t *a1))()
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
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t static CreateEventIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC44A8, &qword_2428C16C8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC44B0, &qword_2428C16D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_2428225F0();
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC44C0, &qword_2428C1700);
  sub_2428B3258();

  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC44C8, &qword_2428C1730);
  sub_2428B3258();

  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC44D0, &qword_2428C1760);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3248();
}

uint64_t sub_242877598()
{
  swift_getKeyPath();
  sub_2428225F0();
  v0 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v1 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v2 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v3 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v4 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v5 = sub_2428B2F38();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2428BDE70;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  sub_2428B2F38();
  v7 = sub_2428B3218();

  return v7;
}