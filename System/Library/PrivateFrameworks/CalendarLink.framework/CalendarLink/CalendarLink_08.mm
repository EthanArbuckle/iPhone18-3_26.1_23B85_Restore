unint64_t sub_2428903F8()
{
  result = qword_27ECC4A28;
  if (!qword_27ECC4A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4A28);
  }

  return result;
}

unint64_t sub_242890458()
{
  result = qword_27ECC4A30;
  if (!qword_27ECC4A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4A30);
  }

  return result;
}

unint64_t sub_2428904B0()
{
  result = qword_27ECC4A38;
  if (!qword_27ECC4A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4A38);
  }

  return result;
}

unint64_t sub_242890508()
{
  result = qword_27ECC4A40;
  if (!qword_27ECC4A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4A40);
  }

  return result;
}

unint64_t sub_242890560()
{
  result = qword_27ECC4A48;
  if (!qword_27ECC4A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4A48);
  }

  return result;
}

unint64_t sub_242890604()
{
  result = qword_27ECC4A60;
  if (!qword_27ECC4A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4A60);
  }

  return result;
}

unint64_t sub_24289065C()
{
  result = qword_27ECC4A68;
  if (!qword_27ECC4A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4A68);
  }

  return result;
}

uint64_t sub_2428906B0(uint64_t a1)
{
  v2 = sub_2428908F4();

  return MEMORY[0x28213DAB0](a1, v2);
}

unint64_t sub_2428906F0()
{
  result = qword_27ECC4A70;
  if (!qword_27ECC4A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4A70);
  }

  return result;
}

uint64_t sub_242890744(uint64_t a1)
{
  v2 = sub_2428908F4();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_242890780(uint64_t a1, uint64_t a2)
{
  v4 = sub_2428904B0();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_2428907CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2428908F4();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_242890830(uint64_t a1, uint64_t a2)
{
  v4 = sub_2428904B0();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

unint64_t sub_2428908F4()
{
  result = qword_27ECC4A88;
  if (!qword_27ECC4A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4A88);
  }

  return result;
}

unint64_t sub_242890948()
{
  result = qword_27ECC4A90;
  if (!qword_27ECC4A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4A90);
  }

  return result;
}

unint64_t sub_24289099C()
{
  result = qword_27ECC4A98;
  if (!qword_27ECC4A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4A98);
  }

  return result;
}

Swift::Void __swiftcall UIView.annotate(withEvent:)(EKEvent_optional withEvent)
{
  if (withEvent.value.super.super.super.isa)
  {
    v4 = withEvent.value.super.super.super.isa;
    if ([(objc_class *)v4 isIntegrationEvent])
    {
      if (([(objc_class *)v4 isReminderIntegrationEvent]& 1) == 0)
      {
        goto LABEL_5;
      }

      v1 = sub_242835730(v4);
      if (!v1)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = sub_2427C2238(v4);
      if (!v1)
      {
LABEL_5:
        v2 = v4;
LABEL_11:

        return;
      }
    }

    v3 = v1;
    sub_2428B48C8();

    v2 = v3;
    goto LABEL_11;
  }

  sub_2428B48B8();
}

Swift::Void __swiftcall UIView.annotate(withCalendar:)(EKCalendar_optional withCalendar)
{
  isa = withCalendar.value.super.super.isa;
  v3 = sub_2428B2978();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v5 = sub_2428B3DB8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (isa)
  {
    v10 = isa;
    v17[1] = v1;
    v11 = v10;
    sub_2428B3DC8();
    v12 = sub_2428B3D78();
    v14 = v13;
    v18 = MEMORY[0x277D84F90];
    sub_2427C2574();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3658, &qword_2428BD4D8);
    sub_2427C2710();
    sub_2428B4938();
    v18 = v12;
    v19 = v14;
    v15 = objc_allocWithZone(sub_2428B41D8());
    sub_2427FE688();
    v16 = sub_2428B41C8();
    sub_2428B48C8();

    (*(v6 + 8))(v9, v5);
  }
}

void sub_242890CB0(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.super.isa = a3;
  UIView.annotate(withCalendar:)(v9);
}

void UIView.annotate(withNotification:)(void *a1)
{
  v2 = sub_2428B2978();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  if (a1)
  {
    v4 = a1;
    v5 = [v4 objectID];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 stringRepresentation];

      if (v7)
      {
        sub_2428B4618();

        sub_2427C2574();
        sub_2428B3218();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3658, &qword_2428BD4D8);
        sub_2427C2710();
        sub_2428B4938();
        v8 = objc_allocWithZone(sub_2428B41D8());
        sub_2427CE75C();
        v9 = sub_2428B41C8();
        sub_2428B48C8();

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_242890EC4(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  UIView.annotate(withNotification:)(a3);
}

Swift::Void __swiftcall UIView.updateEntityAnnotationState(isSelected:isHighlighted:isFocused:isDisabled:isEditing:isPrimary:)(Swift::Bool isSelected, Swift::Bool isHighlighted, Swift::Bool isFocused, Swift::Bool isDisabled, Swift::Bool isEditing, Swift::Bool isPrimary)
{
  v6 = sub_2428B2978();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2428B2968();
  sub_2428B48A8();
  (*(v7 + 8))(v10, v6);
}

uint64_t JoinEventIntent.init()@<X0>(uint64_t *a1@<X8>)
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
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

uint64_t JoinEventIntent.target.setter(__int128 *a1)
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

uint64_t sub_24289168C()
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
  __swift_allocate_value_buffer(v9, qword_27ECC4AA0);
  __swift_project_value_buffer(v9, qword_27ECC4AA0);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_2428B3588();
}

uint64_t static JoinEventIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1958 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4AA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_242891914()
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
  __swift_allocate_value_buffer(v15, qword_27ECC4AB8);
  __swift_project_value_buffer(v15, qword_27ECC4AB8);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_2428B3588();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_2428B3088();
}

uint64_t static JoinEventIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1960 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4AB8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static JoinEventIntent.description.setter(uint64_t a1)
{
  if (qword_27ECC1960 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4AB8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static JoinEventIntent.description.modify())()
{
  if (qword_27ECC1960 != -1)
  {
    swift_once();
  }

  v0 = sub_2428B3078();
  __swift_project_value_buffer(v0, qword_27ECC4AB8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_242891E40@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1960 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4AB8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_242891F00(uint64_t a1)
{
  if (qword_27ECC1960 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4AB8);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t JoinEventIntent.eventStoreProvider.getter()
{
  v1 = *v0;
  sub_2428B28E8();
  return v3;
}

uint64_t sub_242891FFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = *a1;
  sub_2428B2F38();
  sub_2428B2F38();
  swift_unknownObjectRetain();
  sub_2428B28F8();
}

uint64_t JoinEventIntent.eventStoreProvider.setter()
{
  v1 = *v0;
  swift_unknownObjectRetain();
  sub_2428B28F8();
  return swift_unknownObjectRelease();
}

uint64_t (*JoinEventIntent.eventStoreProvider.modify(uint64_t *a1))()
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

uint64_t (*JoinEventIntent.target.modify(uint64_t *a1))()
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

uint64_t static JoinEventIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4AD8, &qword_2428C3F18);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4AE0, &qword_2428C3F20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_24285FC3C();
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4AF0, &qword_2428C3F50);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3238();
}

uint64_t JoinEventIntent.perform()(uint64_t a1)
{
  *(v2 + 520) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560) - 8) + 64) + 15;
  *(v2 + 528) = swift_task_alloc();
  *(v2 + 536) = swift_task_alloc();
  *(v2 + 544) = swift_task_alloc();
  *(v2 + 552) = swift_task_alloc();
  v4 = sub_2428B35D8();
  *(v2 + 560) = v4;
  v5 = *(v4 - 8);
  *(v2 + 568) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 576) = swift_task_alloc();
  *(v2 + 584) = *v1;
  sub_2428B4758();
  *(v2 + 600) = sub_2428B4748();
  v8 = sub_2428B4728();
  *(v2 + 608) = v8;
  *(v2 + 616) = v7;

  return MEMORY[0x2822009F8](sub_2428924D0, v8, v7);
}

uint64_t sub_2428924D0()
{
  v1 = sub_2428B43D8();
  *(v0 + 488) = v1;
  *(v0 + 496) = sub_2427CCD68(&qword_280CDDA40, MEMORY[0x277CF7740]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 464));
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CF7730], v1);
  LOBYTE(v1) = sub_2428B37D8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 464));
  if ((v1 & 1) == 0)
  {
    v20 = *(v0 + 600);

    sub_2428B2938();
    sub_2427CCD68(&qword_27ECC1A80, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_2428B2928();
LABEL_9:
    swift_willThrow();
LABEL_10:
    v23 = *(v0 + 576);
    v24 = *(v0 + 552);
    v25 = *(v0 + 544);
    v26 = *(v0 + 536);
    v27 = *(v0 + 528);

    v28 = *(v0 + 8);

    return v28();
  }

  v3 = *(v0 + 584);
  sub_2428B28E8();
  v4 = [*(v0 + 504) eventStore];
  *(v0 + 624) = v4;
  swift_unknownObjectRelease();
  if (!v4)
  {
    v21 = *(v0 + 600);

    sub_2427CCDB0();
    swift_allocError();
    *v22 = 24;
    goto LABEL_9;
  }

  v5 = *(v0 + 592);
  sub_2428B2DC8();
  v6 = *(v0 + 352);
  *(v0 + 176) = *(v0 + 336);
  *(v0 + 192) = v6;
  v7 = *(v0 + 384);
  *(v0 + 208) = *(v0 + 368);
  *(v0 + 224) = v7;
  v8 = *(v0 + 288);
  *(v0 + 112) = *(v0 + 272);
  *(v0 + 128) = v8;
  v9 = *(v0 + 320);
  *(v0 + 144) = *(v0 + 304);
  *(v0 + 160) = v9;
  v10 = *(v0 + 256);
  *(v0 + 80) = *(v0 + 240);
  *(v0 + 96) = v10;
  v11 = *(v0 + 80);
  v12 = *(v0 + 88);
  sub_2428B3218();
  sub_2427CCE04(v0 + 80);
  v13 = sub_2428B4608();

  v14 = [v4 eventWithAppEntityIdentifier_];
  *(v0 + 632) = v14;

  if (!v14)
  {
    v30 = *(v0 + 600);

    sub_2427CCDB0();
    swift_allocError();
    *v31 = 25;
    swift_willThrow();

    goto LABEL_10;
  }

  v15 = [v14 virtualConference];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 urlWithAllowedScheme];

    if (v17)
    {
      v18 = *(v0 + 536);
      sub_2428B35B8();

      v19 = 0;
    }

    else
    {
      v19 = 1;
    }

    v33 = *(v0 + 568);
    v34 = *(v0 + 560);
    v35 = *(v0 + 544);
    v36 = *(v0 + 536);
    v32 = *(v33 + 56);
    v32(v36, v19, 1, v34);
    sub_2427EC914(v36, v35);
    v37 = *(v33 + 48);
    if (v37(v35, 1, v34) != 1)
    {
      v42 = *(v0 + 560);
      v43 = *(v0 + 552);
      (*(*(v0 + 568) + 32))(v43, *(v0 + 544), v42);
      v32(v43, 0, 1, v42);
      goto LABEL_23;
    }
  }

  else
  {
    v32 = *(*(v0 + 568) + 56);
    v32(*(v0 + 544), 1, 1, *(v0 + 560));
  }

  v38 = [v14 conferenceURLForDisplay];
  if (v38)
  {
    v39 = *(v0 + 528);
    v40 = v38;
    sub_2428B35B8();

    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  v44 = *(v0 + 568);
  v45 = *(v0 + 560);
  v46 = *(v0 + 552);
  v47 = *(v0 + 544);
  v48 = *(v0 + 528);
  v32(v48, v41, 1, v45);
  sub_2427EC914(v48, v46);
  v37 = *(v44 + 48);
  if (v37(v47, 1, v45) != 1)
  {
    sub_2427D49D0(*(v0 + 544));
  }

LABEL_23:
  v49 = *(v0 + 560);
  v50 = *(v0 + 552);
  if (v37(v50, 1, v49) == 1)
  {
    v51 = *(v0 + 600);

    sub_2427D49D0(v50);
    sub_2427CCDB0();
    swift_allocError();
    *v52 = 81;
    swift_willThrow();

    goto LABEL_10;
  }

  (*(*(v0 + 568) + 32))(*(v0 + 576), v50, v49);
  v53 = [objc_opt_self() defaultWorkspace];
  *(v0 + 640) = v53;
  if (v53)
  {
    v54 = v53;
    v55 = *(v0 + 576);
    v56 = sub_2428B35A8();
    *(v0 + 648) = v56;
    v57 = [objc_allocWithZone(MEMORY[0x277CC1F00]) init];
    *(v0 + 656) = v57;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 512;
    *(v0 + 24) = sub_242892B98;
    v58 = swift_continuation_init();
    *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4AF8, &unk_2428C3F60);
    *(v0 + 400) = MEMORY[0x277D85DD0];
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = sub_242892F04;
    *(v0 + 424) = &block_descriptor;
    *(v0 + 432) = v58;
    [v54 openURL:v56 configuration:v57 completionHandler:v0 + 400];
    v53 = (v0 + 16);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v53);
}

uint64_t sub_242892B98()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 664) = v3;
  v4 = *(v1 + 616);
  v5 = *(v1 + 608);
  if (v3)
  {
    v6 = sub_242892DF4;
  }

  else
  {
    v6 = sub_242892CC8;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_242892CC8()
{
  v1 = v0[82];
  v2 = v0[81];
  v3 = v0[80];
  v4 = v0[79];
  v5 = v0[78];
  v6 = v0[75];
  v7 = v0[72];
  v8 = v0[71];
  v13 = v0[70];
  v14 = v0[69];
  v15 = v0[68];
  v16 = v0[67];
  v17 = v0[66];
  v9 = v0[65];

  v10 = v0[64];

  sub_2428B2C28();

  (*(v8 + 8))(v7, v13);

  v11 = v0[1];

  return v11();
}

uint64_t sub_242892DF4()
{
  v1 = v0[83];
  v2 = v0[82];
  v3 = v0[81];
  v4 = v0[80];
  v5 = v0[79];
  v6 = v0[78];
  v7 = v0[75];
  v8 = v0[72];
  v9 = v0[71];
  v10 = v0[70];

  swift_willThrow();

  (*(v9 + 8))(v8, v10);
  v11 = v0[83];
  v12 = v0[72];
  v13 = v0[69];
  v14 = v0[68];
  v15 = v0[67];
  v16 = v0[66];

  v17 = v0[1];

  return v17();
}

uint64_t sub_242892F04(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4B10, &qword_2428C53F0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = sub_2428B4528();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return MEMORY[0x282200950](v5);
  }
}

unint64_t sub_242893030()
{
  result = qword_280CDDE30;
  if (!qword_280CDDE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDE30);
  }

  return result;
}

unint64_t sub_242893088()
{
  result = qword_280CDDE38;
  if (!qword_280CDDE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDE38);
  }

  return result;
}

uint64_t sub_242893114@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1958 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4AA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2428931BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4AD8, &qword_2428C3F18);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4AE0, &qword_2428C3F20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4AF0, &qword_2428C3F50);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3238();
}

uint64_t sub_24289334C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return JoinEventIntent.perform()(a1);
}

void EventEntity.init(_:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3240, &qword_2428BBF00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v27 - v6;
  v8 = sub_2428B3BB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v27 - v14;
  v16 = a1;
  sub_2428B3BC8();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_2427E0980(v7, &qword_27ECC3240, &qword_2428BBF00);
    sub_2427CBC50(v28);
    v17 = v28[7];
    a2[6] = v28[6];
    a2[7] = v17;
    v18 = v28[9];
    a2[8] = v28[8];
    a2[9] = v18;
    v19 = v28[3];
    a2[2] = v28[2];
    a2[3] = v19;
    v20 = v28[5];
    a2[4] = v28[4];
    a2[5] = v20;
    v21 = v28[1];
    *a2 = v28[0];
    a2[1] = v21;
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    (*(v9 + 16))(v13, v15, v8);
    EventEntity.init(_:)(v13, v27);

    (*(v9 + 8))(v15, v8);
    v22 = v27[7];
    a2[6] = v27[6];
    a2[7] = v22;
    v23 = v27[9];
    a2[8] = v27[8];
    a2[9] = v23;
    v24 = v27[3];
    a2[2] = v27[2];
    a2[3] = v24;
    v25 = v27[5];
    a2[4] = v27[4];
    a2[5] = v25;
    v26 = v27[1];
    *a2 = v27[0];
    a2[1] = v26;
    nullsub_1(a2);
  }
}

Swift::Bool __swiftcall EventEntity.Availability.isSupported(by:)(EKEvent by)
{
  v2 = *v1;
  v3 = [(objc_class *)by.super.super.super.isa calendar];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 supportedEventAvailabilities];

    v6 = (v5 >> 1) & 1;
    v7 = (v5 >> 2) & 1;
    if (v2 != 3)
    {
      LOBYTE(v7) = (v5 & 8) != 0;
    }

    if (v2 != 2)
    {
      LOBYTE(v6) = v7;
    }

    v8 = v5 == 0;
    if (v2)
    {
      v8 = v5 & 1;
    }

    if (v2 <= 1)
    {
      LOBYTE(v3) = v8;
    }

    else
    {
      LOBYTE(v3) = v6;
    }
  }

  else
  {
    __break(1u);
  }

  return v3;
}

uint64_t sub_2428937B4()
{
  v0 = *MEMORY[0x277CF78A0];
  result = sub_2428B4618();
  qword_280CDDF30 = result;
  qword_280CDDF38 = v2;
  return result;
}

uint64_t static EventEntity.attributionBundleIdentifier.getter()
{
  if (qword_280CDDF28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_280CDDF30;
  sub_2428B3218();
  return v0;
}

uint64_t static EventEntity.attributionBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280CDDF28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280CDDF30 = a1;
  qword_280CDDF38 = a2;
}

uint64_t (*static EventEntity.attributionBundleIdentifier.modify())()
{
  if (qword_280CDDF28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_24289397C@<X0>(void *a1@<X8>)
{
  if (qword_280CDDF28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_280CDDF38;
  *a1 = qword_280CDDF30;
  a1[1] = v2;
  return sub_2428B3218();
}

uint64_t sub_2428939FC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = qword_280CDDF28;
  sub_2428B3218();
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280CDDF30 = v2;
  qword_280CDDF38 = v1;
}

uint64_t sub_242893AAC()
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
  __swift_allocate_value_buffer(v15, qword_27ECC4B20);
  __swift_project_value_buffer(v15, qword_27ECC4B20);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_2428B3578();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_2428B3328();
}

uint64_t EventEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v26 - v4;
  v5 = sub_2428B3688();
  v28 = *(v5 - 8);
  v29 = v5;
  v6 = *(v28 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v26 - v14;
  v27 = sub_2428B3568();
  v16 = *(v27 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v27);
  v18 = v1[4];
  v19 = v1[5];
  v20 = v1[6];
  v21 = v1[3];
  sub_2428B2C68();
  sub_2428B3548();
  type metadata accessor for LocalizedStringUtils();
  sub_2428B2C68();
  sub_2428B2C68();
  sub_2428B2C68();
  if (v32 == 1)
  {
    sub_2427F0234(v15);
  }

  else
  {
    sub_2427F0828();
  }

  v22 = v29;
  v23 = *(v28 + 8);
  v23(v9, v29);
  v23(v11, v22);
  (*(v16 + 56))(v15, 0, 1, v27);
  v24 = sub_2428B3148();
  (*(*(v24 - 8) + 56))(v30, 1, 1, v24);
  return sub_2428B3178();
}

uint64_t EventEntity.title.getter()
{
  v1 = *(v0 + 24);
  sub_2428B2C68();
  return v3;
}

uint64_t EventEntity.isAllDay.getter()
{
  v1 = *(v0 + 48);
  sub_2428B2C68();
  return v3;
}

uint64_t sub_242894194()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  sub_2428B2948();
  result = sub_2428B2918();
  qword_27ECC4B38 = result;
  return result;
}

uint64_t static EventEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27ECC1978 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27ECC4B38;
  return sub_2428B2F38();
}

uint64_t static EventEntity.defaultQuery.setter(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27ECC1978 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECC4B38 = v1;
}

uint64_t (*static EventEntity.defaultQuery.modify())()
{
  if (qword_27ECC1978 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_24289438C@<X0>(void *a1@<X8>)
{
  if (qword_27ECC1978 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27ECC4B38;
  return sub_2428B2F38();
}

uint64_t sub_24289440C(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27ECC1978;
  sub_2428B2F38();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECC4B38 = v1;
}

uint64_t EventEntity.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2428B3218();
  return v1;
}

uint64_t EventEntity.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_24289454C(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[7];
  v11[6] = a2[6];
  v11[7] = v4;
  v5 = a2[9];
  v11[8] = a2[8];
  v11[9] = v5;
  v6 = a2[3];
  v11[2] = a2[2];
  v11[3] = v6;
  v7 = a2[5];
  v11[4] = a2[4];
  v11[5] = v7;
  v8 = a2[1];
  v11[0] = *a2;
  v11[1] = v8;
  v10[20] = v3;
  v10[21] = v2;
  sub_2428B3218();
  sub_2427CD4FC(v11, v10);
  sub_2428B2C78();
  return sub_2427CCE04(v11);
}

uint64_t (*EventEntity.title.modify(uint64_t *a1))()
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

uint64_t sub_242894690(_BYTE *a1, _OWORD *a2)
{
  v4 = sub_2428B3688();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v19[-v10];
  v12 = *(v5 + 16);
  v12(&v19[-v10], a1, v4);
  v13 = a2[7];
  v20[6] = a2[6];
  v20[7] = v13;
  v14 = a2[9];
  v20[8] = a2[8];
  v20[9] = v14;
  v15 = a2[3];
  v20[2] = a2[2];
  v20[3] = v15;
  v16 = a2[5];
  v20[4] = a2[4];
  v20[5] = v16;
  v17 = a2[1];
  v20[0] = *a2;
  v20[1] = v17;
  v12(v9, v11, v4);
  sub_2427CD4FC(v20, v19);
  sub_2428B2C78();
  (*(v5 + 8))(v11, v4);
  return sub_2427CCE04(v20);
}

uint64_t EventEntity.startDate.setter(uint64_t a1)
{
  v3 = sub_2428B3688();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = *(v1 + 32);
  (*(v4 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  sub_2428B2C78();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*EventEntity.startDate.modify(uint64_t *a1))()
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
  return sub_2427CD67C;
}

uint64_t sub_242894974(_BYTE *a1, _OWORD *a2)
{
  v4 = sub_2428B3688();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v19[-v10];
  v12 = *(v5 + 16);
  v12(&v19[-v10], a1, v4);
  v13 = a2[7];
  v20[6] = a2[6];
  v20[7] = v13;
  v14 = a2[9];
  v20[8] = a2[8];
  v20[9] = v14;
  v15 = a2[3];
  v20[2] = a2[2];
  v20[3] = v15;
  v16 = a2[5];
  v20[4] = a2[4];
  v20[5] = v16;
  v17 = a2[1];
  v20[0] = *a2;
  v20[1] = v17;
  v12(v9, v11, v4);
  sub_2427CD4FC(v20, v19);
  sub_2428B2C78();
  (*(v5 + 8))(v11, v4);
  return sub_2427CCE04(v20);
}

uint64_t EventEntity.endDate.setter(uint64_t a1)
{
  v3 = sub_2428B3688();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = *(v1 + 40);
  (*(v4 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  sub_2428B2C78();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*EventEntity.endDate.modify(uint64_t *a1))()
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
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_242894C58(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[7];
  v10[6] = a2[6];
  v10[7] = v3;
  v4 = a2[9];
  v10[8] = a2[8];
  v10[9] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  v9[167] = v2;
  sub_2427CD4FC(v10, v9);
  sub_2428B2C78();
  return sub_2427CCE04(v10);
}

uint64_t (*EventEntity.isAllDay.modify(uint64_t *a1))()
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
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_242894D9C(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC44A0, &qword_2428C16C0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v17[-v9];
  sub_2427E0918(a1, &v17[-v9], &qword_27ECC44A0, &qword_2428C16C0);
  v11 = a2[7];
  v18[6] = a2[6];
  v18[7] = v11;
  v12 = a2[9];
  v18[8] = a2[8];
  v18[9] = v12;
  v13 = a2[3];
  v18[2] = a2[2];
  v18[3] = v13;
  v14 = a2[5];
  v18[4] = a2[4];
  v18[5] = v14;
  v15 = a2[1];
  v18[0] = *a2;
  v18[1] = v15;
  sub_2427E0918(v10, v8, &qword_27ECC44A0, &qword_2428C16C0);
  sub_2427CD4FC(v18, v17);
  sub_2428B2C78();
  sub_2427E0980(v10, &qword_27ECC44A0, &qword_2428C16C0);
  return sub_2427CCE04(v18);
}

uint64_t EventEntity.recurrence.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC44A0, &qword_2428C16C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 56);
  sub_2427E0918(a1, &v8 - v6, &qword_27ECC44A0, &qword_2428C16C0);
  sub_2428B2C78();
  return sub_2427E0980(a1, &qword_27ECC44A0, &qword_2428C16C0);
}

uint64_t (*EventEntity.recurrence.modify(uint64_t *a1))()
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
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t EventEntity.startTimeZoneID.getter()
{
  v1 = *(v0 + 64);
  sub_2428B2C68();
  return v3;
}

uint64_t sub_242895060(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[7];
  v11[6] = a2[6];
  v11[7] = v4;
  v5 = a2[9];
  v11[8] = a2[8];
  v11[9] = v5;
  v6 = a2[3];
  v11[2] = a2[2];
  v11[3] = v6;
  v7 = a2[5];
  v11[4] = a2[4];
  v11[5] = v7;
  v8 = a2[1];
  v11[0] = *a2;
  v11[1] = v8;
  v10[20] = v3;
  v10[21] = v2;
  sub_2428B3218();
  sub_2427CD4FC(v11, v10);
  sub_2428B2C78();
  return sub_2427CCE04(v11);
}

uint64_t (*EventEntity.startTimeZoneID.modify(uint64_t *a1))()
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
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t EventEntity.endTimeZoneID.getter()
{
  v1 = *(v0 + 72);
  sub_2428B2C68();
  return v3;
}

uint64_t sub_2428951D8(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[7];
  v11[6] = a2[6];
  v11[7] = v4;
  v5 = a2[9];
  v11[8] = a2[8];
  v11[9] = v5;
  v6 = a2[3];
  v11[2] = a2[2];
  v11[3] = v6;
  v7 = a2[5];
  v11[4] = a2[4];
  v11[5] = v7;
  v8 = a2[1];
  v11[0] = *a2;
  v11[1] = v8;
  v10[20] = v3;
  v10[21] = v2;
  sub_2428B3218();
  sub_2427CD4FC(v11, v10);
  sub_2428B2C78();
  return sub_2427CCE04(v11);
}

uint64_t (*EventEntity.endTimeZoneID.modify(uint64_t *a1))()
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
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_242895340(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v17[-v9];
  sub_2427E0918(a1, &v17[-v9], &qword_27ECC2CE0, &qword_2428B6560);
  v11 = a2[7];
  v18[6] = a2[6];
  v18[7] = v11;
  v12 = a2[9];
  v18[8] = a2[8];
  v18[9] = v12;
  v13 = a2[3];
  v18[2] = a2[2];
  v18[3] = v13;
  v14 = a2[5];
  v18[4] = a2[4];
  v18[5] = v14;
  v15 = a2[1];
  v18[0] = *a2;
  v18[1] = v15;
  sub_2427E0918(v10, v8, &qword_27ECC2CE0, &qword_2428B6560);
  sub_2427CD4FC(v18, v17);
  sub_2428B2C78();
  sub_2427E0980(v10, &qword_27ECC2CE0, &qword_2428B6560);
  return sub_2427CCE04(v18);
}

uint64_t EventEntity.virtualLocation.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 88);
  sub_2427E0918(a1, &v8 - v6, &qword_27ECC2CE0, &qword_2428B6560);
  sub_2428B2C78();
  return sub_2427E0980(a1, &qword_27ECC2CE0, &qword_2428B6560);
}

uint64_t (*EventEntity.virtualLocation.modify(uint64_t *a1))()
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
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_2428955F4(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4BA8, &unk_2428C4098);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v17[-v9];
  sub_2427E0918(a1, &v17[-v9], &unk_27ECC4BA8, &unk_2428C4098);
  v11 = a2[7];
  v18[6] = a2[6];
  v18[7] = v11;
  v12 = a2[9];
  v18[8] = a2[8];
  v18[9] = v12;
  v13 = a2[3];
  v18[2] = a2[2];
  v18[3] = v13;
  v14 = a2[5];
  v18[4] = a2[4];
  v18[5] = v14;
  v15 = a2[1];
  v18[0] = *a2;
  v18[1] = v15;
  sub_2427E0918(v10, v8, &unk_27ECC4BA8, &unk_2428C4098);
  sub_2427CD4FC(v18, v17);
  sub_2428B2C78();
  sub_2427E0980(v10, &unk_27ECC4BA8, &unk_2428C4098);
  return sub_2427CCE04(v18);
}

uint64_t EventEntity.travelTime.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4BA8, &unk_2428C4098);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 96);
  sub_2427E0918(a1, &v8 - v6, &unk_27ECC4BA8, &unk_2428C4098);
  sub_2428B2C78();
  return sub_2427E0980(a1, &unk_27ECC4BA8, &unk_2428C4098);
}

uint64_t (*EventEntity.travelTime.modify(uint64_t *a1))()
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
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_242895884(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v14 = a1[2];
  v15 = v3;
  v4 = a1[3];
  v16 = a1[4];
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a2[7];
  v17[6] = a2[6];
  v17[7] = v6;
  v7 = a2[9];
  v17[8] = a2[8];
  v17[9] = v7;
  v8 = a2[3];
  v17[2] = a2[2];
  v17[3] = v8;
  v9 = a2[5];
  v17[4] = a2[4];
  v17[5] = v9;
  v10 = a2[1];
  v17[0] = *a2;
  v17[1] = v10;
  v12[12] = v14;
  v12[13] = v4;
  v12[14] = a1[4];
  v12[10] = v13[0];
  v12[11] = v2;
  sub_2427E35A0(v13, v12);
  sub_2427CD4FC(v17, v12);
  sub_2428B2C78();
  return sub_2427CCE04(v17);
}

uint64_t EventEntity.calendar.setter(__int128 *a1)
{
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v4 = *a1;
  v5 = a1[1];
  v2 = *(v1 + 104);
  return sub_2428B2C78();
}

uint64_t (*EventEntity.calendar.modify(uint64_t *a1))()
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
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_242895A30(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[7];
  v10[6] = a2[6];
  v10[7] = v3;
  v4 = a2[9];
  v10[8] = a2[8];
  v10[9] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  v9[167] = v2;
  sub_2427CD4FC(v10, v9);
  sub_2428B2C78();
  return sub_2427CCE04(v10);
}

uint64_t EventEntity.status.setter(char *a1)
{
  v2 = *(v1 + 112);
  v4 = *a1;
  return sub_2428B2C78();
}

uint64_t (*EventEntity.status.modify(uint64_t *a1))()
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
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_242895B9C(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4430, &unk_2428B7970);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v17[-v9];
  sub_2427E0918(a1, &v17[-v9], &unk_27ECC4430, &unk_2428B7970);
  v11 = a2[7];
  v18[6] = a2[6];
  v18[7] = v11;
  v12 = a2[9];
  v18[8] = a2[8];
  v18[9] = v12;
  v13 = a2[3];
  v18[2] = a2[2];
  v18[3] = v13;
  v14 = a2[5];
  v18[4] = a2[4];
  v18[5] = v14;
  v15 = a2[1];
  v18[0] = *a2;
  v18[1] = v15;
  sub_2427E0918(v10, v8, &unk_27ECC4430, &unk_2428B7970);
  sub_2427CD4FC(v18, v17);
  sub_2428B2C78();
  sub_2427E0980(v10, &unk_27ECC4430, &unk_2428B7970);
  return sub_2427CCE04(v18);
}

uint64_t EventEntity.note.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4430, &unk_2428B7970);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 128);
  sub_2427E0918(a1, &v8 - v6, &unk_27ECC4430, &unk_2428B7970);
  sub_2428B2C78();
  return sub_2427E0980(a1, &unk_27ECC4430, &unk_2428B7970);
}

uint64_t (*EventEntity.note.modify(uint64_t *a1))()
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
  v4 = *(v1 + 128);
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t EventEntity.organizers.getter()
{
  v1 = *(v0 + 136);
  sub_2428B2C68();
  return v3;
}

uint64_t sub_242895E60(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[7];
  v11[6] = a2[6];
  v11[7] = v3;
  v4 = a2[9];
  v11[8] = a2[8];
  v11[9] = v4;
  v5 = a2[3];
  v11[2] = a2[2];
  v11[3] = v5;
  v6 = a2[5];
  v11[4] = a2[4];
  v11[5] = v6;
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v10 = v2;
  sub_2428B3218();
  sub_2427CD4FC(v11, v9);
  sub_2428B2C78();
  return sub_2427CCE04(v11);
}

uint64_t (*EventEntity.organizers.modify(uint64_t *a1))()
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
  v4 = *(v1 + 136);
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CBEA8;
}

uint64_t EventEntity.attendees.getter()
{
  v1 = *(v0 + 144);
  sub_2428B2C68();
  return v3;
}

uint64_t sub_242895FDC(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[7];
  v11[6] = a2[6];
  v11[7] = v3;
  v4 = a2[9];
  v11[8] = a2[8];
  v11[9] = v4;
  v5 = a2[3];
  v11[2] = a2[2];
  v11[3] = v5;
  v6 = a2[5];
  v11[4] = a2[4];
  v11[5] = v6;
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v10 = v2;
  sub_2428B3218();
  sub_2427CD4FC(v11, v9);
  sub_2428B2C78();
  return sub_2427CCE04(v11);
}

uint64_t (*EventEntity.attendees.modify(uint64_t *a1))()
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
  v4 = *(v1 + 144);
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_242896148(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v17[-v9];
  sub_2427E0918(a1, &v17[-v9], &qword_27ECC2CE0, &qword_2428B6560);
  v11 = a2[7];
  v18[6] = a2[6];
  v18[7] = v11;
  v12 = a2[9];
  v18[8] = a2[8];
  v18[9] = v12;
  v13 = a2[3];
  v18[2] = a2[2];
  v18[3] = v13;
  v14 = a2[5];
  v18[4] = a2[4];
  v18[5] = v14;
  v15 = a2[1];
  v18[0] = *a2;
  v18[1] = v15;
  sub_2427E0918(v10, v8, &qword_27ECC2CE0, &qword_2428B6560);
  sub_2427CD4FC(v18, v17);
  sub_2428B2C78();
  sub_2427E0980(v10, &qword_27ECC2CE0, &qword_2428B6560);
  return sub_2427CCE04(v18);
}

uint64_t EventEntity.url.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 152);
  sub_2427E0918(a1, &v8 - v6, &qword_27ECC2CE0, &qword_2428B6560);
  sub_2428B2C78();
  return sub_2427E0980(a1, &qword_27ECC2CE0, &qword_2428B6560);
}

uint64_t (*EventEntity.url.modify(uint64_t *a1))()
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
  v4 = *(v1 + 152);
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t EventEntity.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v298 = a1;
  v277 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4BB8, &qword_2428C40A8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v271 = &v244 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v276 = &v244 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v279 = &v244 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v272 = &v244 - v12;
  MEMORY[0x28223BE20](v11);
  v273 = &v244 - v13;
  v275 = sub_2428B35D8();
  v274 = *(v275 - 8);
  v14 = *(v274 + 64);
  MEMORY[0x28223BE20](v275);
  v251 = &v244 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = sub_2428B3EA8();
  v294 = *(v270 - 8);
  v16 = *(v294 + 64);
  MEMORY[0x28223BE20](v270);
  v250 = &v244 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4BC0, &unk_2428C40B0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v269 = &v244 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v282 = &v244 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4430, &unk_2428B7970);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v256 = &v244 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v255 = &v244 - v27;
  v314 = sub_2428B39A8();
  v254 = *(v314 - 8);
  v28 = *(v254 + 64);
  MEMORY[0x28223BE20](v314);
  v313 = &v244 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = sub_2428B3A78();
  v315 = *(v301 - 8);
  v30 = *(v315 + 64);
  v31 = MEMORY[0x28223BE20](v301);
  v316 = &v244 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v300 = &v244 - v33;
  v34 = type metadata accessor for AlarmTrigger();
  v311 = *(v34 - 8);
  v312 = v34;
  v35 = *(v311 + 64);
  v36 = MEMORY[0x28223BE20](v34);
  v310 = &v244 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v309 = &v244 - v38;
  v39 = sub_2428B3DB8();
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v305 = &v244 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4BA8, &unk_2428C4098);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v302 = (&v244 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v44);
  v299 = &v244 - v46;
  v306 = sub_2428B3778();
  v260 = *(v306 - 1);
  v47 = *(v260 + 64);
  MEMORY[0x28223BE20](v306);
  v253 = &v244 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2DF8, &unk_2428C1770);
  v50 = *(*(v49 - 8) + 64);
  v51 = MEMORY[0x28223BE20](v49 - 8);
  v257 = &v244 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v258 = (&v244 - v53);
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4BD0, &qword_2428C40C0);
  v244 = *(v246 - 8);
  v54 = *(v244 + 64);
  v55 = MEMORY[0x28223BE20](v246);
  v245 = &v244 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v252 = &v244 - v57;
  v249 = sub_2428B37C8();
  v248 = *(v249 - 8);
  v58 = *(v248 + 64);
  MEMORY[0x28223BE20](v249);
  v247 = &v244 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4BD8, &qword_2428C40C8);
  v61 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60 - 8);
  v304 = &v244 - v62;
  v308 = sub_2428B3E08();
  v307 = *(v308 - 1);
  v63 = *(v307 + 64);
  MEMORY[0x28223BE20](v308);
  v259 = &v244 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC38E0, &unk_2428C40D0);
  v66 = *(*(v65 - 8) + 64);
  v67 = MEMORY[0x28223BE20](v65 - 8);
  v303 = &v244 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v296 = &v244 - v69;
  v297 = sub_2428B3688();
  v295 = *(v297 - 8);
  v70 = *(v295 + 64);
  v71 = MEMORY[0x28223BE20](v297);
  v262 = &v244 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71);
  v261 = &v244 - v73;
  v74 = sub_2428B3558();
  v75 = *(v74 - 8);
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v74);
  v78 = &v244 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_2428B36C8();
  v80 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79 - 8);
  v81 = sub_2428B45F8();
  v82 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81 - 8);
  v83 = sub_2428B3568();
  v84 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83 - 8);
  v86 = &v244 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4270, &qword_2428B6EC8);
  sub_2428B4578();
  sub_2428B36B8();
  v87 = *MEMORY[0x277CC9110];
  v88 = *(v75 + 104);
  v88(v78, v87, v74);
  sub_2428B3578();
  v293 = sub_2428B2D68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2760, &qword_2428B9340);
  sub_2428B4578();
  sub_2428B36B8();
  v88(v78, v87, v74);
  sub_2428B3578();
  v292 = sub_2428B2D48();
  sub_2428B4578();
  sub_2428B36B8();
  v88(v78, v87, v74);
  sub_2428B3578();
  v291 = sub_2428B2D48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1FC8, &qword_2428B6EE0);
  sub_2428B4578();
  sub_2428B36B8();
  v88(v78, v87, v74);
  sub_2428B3578();
  v290 = sub_2428B2D78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4BE0, &unk_2428C40E0);
  v268 = sub_2428B2D58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3760, &qword_2428B6ED0);
  sub_2428B4578();
  sub_2428B36B8();
  v88(v78, v87, v74);
  sub_2428B3578();
  v289 = sub_2428B2D68();
  sub_2428B4578();
  sub_2428B36B8();
  v88(v78, v87, v74);
  sub_2428B3578();
  v288 = sub_2428B2D68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4BF0, &unk_2428C40F0);
  sub_2428B4578();
  sub_2428B36B8();
  v88(v78, v87, v74);
  sub_2428B3578();
  sub_24289C7B0(&unk_27ECC2D50, type metadata accessor for Location);
  v281 = sub_2428B2CF8();
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4C00, &qword_2428B6ED8);
  v278 = sub_2428B2D38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4C08, &qword_2428C4100);
  sub_2428B4578();
  sub_2428B36B8();
  v88(v78, v87, v74);
  sub_2428B3578();
  v287 = MEMORY[0x245D19860](v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4C10, &qword_2428C4108);
  sub_2428B4578();
  sub_2428B36B8();
  v88(v78, v87, v74);
  sub_2428B3578();
  sub_2427FE688();
  v286 = sub_2428B2CB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4C20, &qword_2428C4110);
  sub_2428B4578();
  sub_2428B36B8();
  v88(v78, v87, v74);
  sub_2428B3578();
  sub_24281E490();
  v285 = sub_2428B2C98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4C30, &qword_2428C4118);
  sub_2428B4578();
  sub_2428B36B8();
  v88(v78, v87, v74);
  sub_2428B3578();
  sub_24289C7B0(&unk_27ECC2D70, type metadata accessor for AlarmTrigger);
  v284 = sub_2428B2CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4C40, &qword_2428C4120);
  v280 = sub_2428B2D18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4C48, &qword_2428C4128);
  sub_2428B4578();
  sub_2428B36B8();
  v88(v78, v87, v74);
  sub_2428B3578();
  v283 = sub_2428B2CD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4C50, &unk_2428C4130);
  sub_2427EB740();
  v267 = sub_2428B2CC8();
  sub_2428B4578();
  sub_2428B36B8();
  v88(v78, v87, v74);
  sub_2428B3578();
  v89 = sub_2428B2D28();
  v265 = sub_2428B3B08();
  v264 = v90;
  v263 = sub_2428B3AB8();
  v317 = sub_2428B3B38();
  v318 = v91;
  sub_2428B2C78();
  v92 = v261;
  sub_2428B3BA8();
  v93 = v295;
  v94 = *(v295 + 16);
  v95 = v262;
  v96 = v297;
  v94(v262, v92, v297);
  sub_2428B2C78();
  v97 = *(v93 + 8);
  v97(v92, v96);
  sub_2428B3B68();
  v94(v95, v92, v96);
  sub_2428B2C78();
  v98 = v96;
  v99 = v296;
  v97(v92, v98);
  LOBYTE(v317) = sub_2428B3B78() & 1;
  sub_2428B2C78();
  sub_2428B3AA8();
  v100 = sub_2428B3768();
  v101 = *(v100 - 8);
  v102 = *(v101 + 48);
  if (v102(v99, 1, v100) == 1)
  {
    sub_2427E0980(v99, &qword_27ECC38E0, &unk_2428C40D0);
    v103 = 0;
    v104 = 0;
  }

  else
  {
    v103 = sub_2428B3728();
    v104 = v105;
    (*(v101 + 8))(v99, v100);
  }

  v317 = v103;
  v318 = v104;
  sub_2428B2C78();
  v106 = v303;
  sub_2428B3A98();
  v107 = v102(v106, 1, v100);
  v108 = v282;
  v109 = v306;
  if (v107 == 1)
  {
    sub_2427E0980(v106, &qword_27ECC38E0, &unk_2428C40D0);
    v110 = 0;
    v111 = 0;
  }

  else
  {
    v110 = sub_2428B3728();
    v112 = v106;
    v111 = v113;
    (*(v101 + 8))(v112, v100);
  }

  v114 = v294;
  v115 = v308;
  v116 = v307;
  v317 = v110;
  v318 = v111;
  sub_2428B2C78();
  v117 = v304;
  sub_2428B3AE8();
  v118 = (*(v116 + 48))(v117, 1, v115);
  v266 = v89;
  if (v118 == 1)
  {
    sub_2427E0980(v117, &qword_27ECC4BD8, &qword_2428C40C8);
    goto LABEL_15;
  }

  v119 = v259;
  (*(v116 + 32))(v259, v117, v115);
  v120 = sub_2428B3DD8();
  if (!v120)
  {
    (*(v116 + 8))(v119, v115);
LABEL_15:
    v140 = sub_2428B3B88();
    if (v141)
    {
      v142 = v258;
      *v258 = v140;
      *(v142 + 8) = v141;
      v143 = type metadata accessor for Location();
      swift_storeEnumTagMultiPayload();
      (*(*(v143 - 8) + 56))(v142, 0, 1, v143);
      sub_2427E0918(v142, v257, &qword_27ECC2DF8, &unk_2428C1770);
      sub_2428B2C78();
      sub_2427E0980(v142, &qword_27ECC2DF8, &unk_2428C1770);
    }

    goto LABEL_30;
  }

  v121 = v120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4C80, &qword_2428C4148);
  v122 = *(v244 + 72);
  v123 = (*(v244 + 80) + 32) & ~*(v244 + 80);
  v303 = swift_allocObject();
  v124 = &v303[v123];
  [v121 coordinate];
  v126 = v125;
  v304 = v121;
  [v121 coordinate];
  *v124 = v126;
  *(v124 + 1) = v127;
  v128 = v260;
  v129 = *(v260 + 104);
  v129(v124, *MEMORY[0x277CCB100], v109);
  v130 = *(v128 + 56);
  v131 = 1;
  v130(v124, 0, 1, v109);
  v132 = &v124[v122];
  v133 = sub_2428B3DF8();
  if (v134)
  {
    *v132 = v133;
    v132[1] = v134;
    v129(&v124[v122], *MEMORY[0x277CCB110], v109);
    v131 = 0;
  }

  v135 = v245;
  v130(v132, v131, 1, v109);
  v136 = v252;
  sub_2427E0918(v124, v252, &qword_27ECC4BD0, &qword_2428C40C0);
  sub_24289C7F8(v136, v135);
  v137 = *(v260 + 48);
  v138 = (v260 + 32);
  if (v137(v135, 1, v109) == 1)
  {
    sub_2427E0980(v135, &qword_27ECC4BD0, &qword_2428C40C0);
    v139 = MEMORY[0x277D84F90];
  }

  else
  {
    v144 = *v138;
    (*v138)(v253, v135, v109);
    v139 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v139 = sub_2427F7388(0, *(v139 + 2) + 1, 1, v139);
    }

    v146 = *(v139 + 2);
    v145 = *(v139 + 3);
    if (v146 >= v145 >> 1)
    {
      v139 = sub_2427F7388(v145 > 1, v146 + 1, 1, v139);
    }

    *(v139 + 2) = v146 + 1;
    v147 = &v139[((*(v260 + 80) + 32) & ~*(v260 + 80)) + *(v260 + 72) * v146];
    v109 = v306;
    v144(v147, v253, v306);
  }

  v108 = v282;
  v148 = v132;
  v149 = v252;
  sub_2427E0918(v148, v252, &qword_27ECC4BD0, &qword_2428C40C0);
  sub_24289C7F8(v149, v135);
  if (v137(v135, 1, v109) == 1)
  {
    sub_2427E0980(v135, &qword_27ECC4BD0, &qword_2428C40C0);
  }

  else
  {
    v150 = *v138;
    (*v138)(v253, v135, v109);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v139 = sub_2427F7388(0, *(v139 + 2) + 1, 1, v139);
    }

    v152 = *(v139 + 2);
    v151 = *(v139 + 3);
    if (v152 >= v151 >> 1)
    {
      v139 = sub_2427F7388(v151 > 1, v152 + 1, 1, v139);
    }

    *(v139 + 2) = v152 + 1;
    v150(&v139[((*(v260 + 80) + 32) & ~*(v260 + 80)) + *(v260 + 72) * v152], v253, v109);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v153 = v259;
  sub_2428B3DE8();
  v154 = v247;
  sub_2428B37A8();
  v155 = v248;
  v156 = v258;
  v157 = v249;
  (*(v248 + 16))(v258, v154, v249);
  v158 = type metadata accessor for Location();
  swift_storeEnumTagMultiPayload();
  (*(*(v158 - 8) + 56))(v156, 0, 1, v158);
  sub_2427E0918(v156, v257, &qword_27ECC2DF8, &unk_2428C1770);
  sub_2428B2C78();

  sub_2427E0980(v156, &qword_27ECC2DF8, &unk_2428C1770);
  (*(v155 + 8))(v154, v157);
  (*(v307 + 8))(v153, v308);
  v114 = v294;
LABEL_30:
  sub_2428B3A88();
  v304 = objc_opt_self();
  v159 = [v304 seconds];
  v160 = sub_2428283F0();
  v161 = v299;
  v303 = v160;
  sub_2428B34A8();
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC44E0, &unk_2428BBFC0);
  (*(*(v162 - 8) + 56))(v161, 0, 1, v162);
  sub_2427E0918(v161, v302, &unk_27ECC4BA8, &unk_2428C4098);
  sub_2428B2C78();
  sub_2427E0980(v161, &unk_27ECC4BA8, &unk_2428C4098);
  v163 = v305;
  sub_2428B3AC8();
  CalendarEntity.init(_:)(v163, &v317);
  sub_2428B2C78();
  v164 = sub_2428B3B58();
  v165 = 0x2010003u >> (8 * v164);
  if (v164 >= 4)
  {
    LOBYTE(v165) = 3;
  }

  LOBYTE(v317) = v165;
  sub_2428B2C78();
  v166 = sub_2428B3B48();
  if (v166)
  {
    v167 = v166;
  }

  else
  {
    v167 = MEMORY[0x277D84F90];
  }

  v168 = *(v167 + 2);
  if (v168)
  {
    v317 = MEMORY[0x277D84F90];
    sub_2427E2BCC(0, v168, 0);
    v169 = v317;
    v308 = *(v315 + 16);
    v170 = (*(v315 + 80) + 32) & ~*(v315 + 80);
    v262 = v167;
    v171 = &v167[v170];
    v307 = *(v315 + 72);
    v306 = (v254 + 88);
    LODWORD(v305) = *MEMORY[0x277CF7B78];
    LODWORD(v299) = *MEMORY[0x277CF7B70];
    v315 += 16;
    v172 = (v315 - 8);
    v296 = (v254 + 8);
    v302 = (v254 + 96);
    v295 += 32;
    v173 = v301;
    v174 = v300;
    do
    {
      v175 = v308;
      (v308)(v174, v171, v173);
      v176 = v316;
      v175(v316, v174, v173);
      v177 = v313;
      sub_2428B3A68();
      v178 = v174;
      v179 = v314;
      v180 = (*v306)(v177, v314);
      if (v180 == v305)
      {
        (*v302)(v177, v179);
        v181 = *v177;
        v182 = [v304 seconds];
        v183 = v310;
        sub_2428B34A8();
        v184 = *v172;
        (*v172)(v176, v173);
        v184(v178, v173);
        swift_storeEnumTagMultiPayload();
        v174 = v178;
      }

      else if (v180 == v299)
      {
        v185 = *v172;
        v173 = v301;
        (*v172)(v316, v301);
        v186 = v300;
        v185(v300, v173);
        v187 = v179;
        v174 = v186;
        (*v302)(v177, v187);
        v183 = v310;
        (*v295)();
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v188 = [v304 seconds];
        v189 = v310;
        sub_2428B34A8();
        v190 = *v172;
        v173 = v301;
        (*v172)(v316, v301);
        v191 = v300;
        v190(v300, v173);
        swift_storeEnumTagMultiPayload();
        v192 = v177;
        v183 = v189;
        v193 = v179;
        v174 = v191;
        (*v296)(v192, v193);
      }

      v194 = v309;
      sub_24289C74C(v183, v309);
      v317 = v169;
      v196 = *(v169 + 16);
      v195 = *(v169 + 24);
      if (v196 >= v195 >> 1)
      {
        sub_2427E2BCC(v195 > 1, v196 + 1, 1);
        v173 = v301;
        v169 = v317;
      }

      *(v169 + 16) = v196 + 1;
      sub_24289C74C(v194, v169 + ((*(v311 + 80) + 32) & ~*(v311 + 80)) + *(v311 + 72) * v196);
      v171 += v307;
      --v168;
    }

    while (v168);

    v114 = v294;
    v108 = v282;
  }

  else
  {

    v169 = MEMORY[0x277D84F90];
  }

  v317 = v169;
  sub_2428B2C78();
  sub_2428B3B28();
  v197 = v279;
  v198 = v276;
  v199 = v275;
  v200 = v274;
  v201 = v269;
  if (v202)
  {
    v203 = v255;
    sub_2428B34E8();
    v204 = sub_2428B34F8();
    (*(*(v204 - 8) + 56))(v203, 0, 1, v204);
    sub_2427E0918(v203, v256, &unk_27ECC4430, &unk_2428B7970);
    sub_2428B2C78();
    v114 = v294;
    sub_2427E0980(v203, &unk_27ECC4430, &unk_2428B7970);
  }

  sub_2428B3B98();
  sub_2427E0918(v108, v201, &unk_27ECC4BC0, &unk_2428C40B0);
  v205 = v270;
  v206 = (*(v114 + 48))(v201, 1, v270);
  v207 = v272;
  if (v206 == 1)
  {
    v208 = MEMORY[0x277D84F90];
  }

  else
  {
    v209 = v198;
    v210 = v108;
    v211 = v250;
    (*(v114 + 32))(v250, v201, v205);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4C70, &qword_2428C4140);
    v212 = *(sub_2428B2BD8() - 8);
    v213 = *(v212 + 72);
    v214 = v114;
    v215 = v205;
    v216 = (*(v212 + 80) + 32) & ~*(v212 + 80);
    v208 = swift_allocObject();
    *(v208 + 16) = xmmword_2428B5D50;
    v319 = v215;
    v320 = sub_24289C7B0(&qword_27ECC4C78, MEMORY[0x277CF7BE0]);
    v217 = __swift_allocate_boxed_opaque_existential_1(&v317);
    (*(v214 + 16))(v217, v211, v215);
    sub_2428A8840(&v317, v208 + v216);
    v218 = v211;
    v108 = v210;
    v198 = v209;
    v197 = v279;
    (*(v214 + 8))(v218, v215);
  }

  sub_2427E0980(v108, &unk_27ECC4BC0, &unk_2428C40B0);
  v317 = v208;
  sub_2428B2C78();
  v219 = v271;
  sub_2428B3AD8();
  v220 = v219;
  v221 = sub_2428B4148();
  v222 = *(v221 - 8);
  if ((*(v222 + 48))(v220, 1, v221) == 1)
  {
    sub_2427E0980(v220, &qword_27ECC4BB8, &qword_2428C40A8);
    (*(v200 + 56))(v207, 1, 1, v199);
    v223 = v277;
  }

  else
  {
    sub_2428B4138();
    (*(v222 + 8))(v220, v221);
    v224 = *(v200 + 48);
    v225 = v224(v207, 1, v199);
    v223 = v277;
    if (v225 != 1)
    {
      v226 = v273;
      (*(v200 + 32))(v273, v207, v199);
      (*(v200 + 56))(v226, 0, 1, v199);
      goto LABEL_58;
    }
  }

  v226 = v273;
  sub_2428B3AF8();
  v224 = *(v200 + 48);
  if (v224(v207, 1, v199) != 1)
  {
    sub_2427E0980(v207, &qword_27ECC2CE0, &qword_2428B6560);
  }

LABEL_58:
  if (v224(v226, 1, v199) == 1)
  {
    sub_2427E0980(v226, &qword_27ECC2CE0, &qword_2428B6560);
  }

  else
  {
    v227 = v251;
    (*(v200 + 32))(v251, v226, v199);
    (*(v200 + 16))(v197, v227, v199);
    (*(v200 + 56))(v197, 0, 1, v199);
    sub_2427E0918(v197, v198, &qword_27ECC2CE0, &qword_2428B6560);
    sub_2428B2C78();
    sub_2427E0980(v197, &qword_27ECC2CE0, &qword_2428B6560);
    (*(v200 + 8))(v227, v199);
  }

  v228 = v292;
  v229 = v268;
  v230 = v263 & 1;
  v231 = v197;
  v232 = v298;
  sub_2428B3B18();
  sub_2427E0918(v231, v198, &qword_27ECC2CE0, &qword_2428B6560);
  v233 = v266;
  sub_2428B2C78();
  v234 = sub_2428B3BB8();
  (*(*(v234 - 8) + 8))(v232, v234);
  result = sub_2427E0980(v231, &qword_27ECC2CE0, &qword_2428B6560);
  v236 = v264;
  *v223 = v265;
  *(v223 + 8) = v236;
  *(v223 + 16) = v230;
  *(v223 + 24) = v293;
  *(v223 + 32) = v228;
  v237 = v290;
  *(v223 + 40) = v291;
  *(v223 + 48) = v237;
  v238 = v289;
  *(v223 + 56) = v229;
  *(v223 + 64) = v238;
  v239 = v281;
  *(v223 + 72) = v288;
  *(v223 + 80) = v239;
  v240 = v287;
  *(v223 + 88) = v278;
  *(v223 + 96) = v240;
  v241 = v285;
  *(v223 + 104) = v286;
  *(v223 + 112) = v241;
  v242 = v280;
  *(v223 + 120) = v284;
  *(v223 + 128) = v242;
  v243 = v267;
  *(v223 + 136) = v283;
  *(v223 + 144) = v243;
  *(v223 + 152) = v233;
  return result;
}

CalendarLink::EventEntity::EventEntityStatus_optional __swiftcall EventEntity.EventEntityStatus.init(_:)(EKEventStatus a1)
{
  v2 = 0x2010003u >> (8 * a1);
  if (a1 >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return a1;
}

uint64_t sub_242898F78()
{
  if (qword_280CDDF28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_280CDDF30;
  sub_2428B3218();
  return v0;
}

uint64_t sub_242899020(uint64_t a1)
{
  v2 = sub_2427C2774();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_242899070(uint64_t a1)
{
  v2 = sub_2427C2990();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_2428990BC()
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
  __swift_allocate_value_buffer(v15, qword_27ECC4B40);
  __swift_project_value_buffer(v15, qword_27ECC4B40);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_2428B3578();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_2428B3328();
}

uint64_t sub_2428993E4()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v55 = &v35 - v1;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v48 = &v35 - v3;
  v45 = sub_2428B3558();
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v50 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_2428B36C8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(sub_2428B45F8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_2428B3568();
  v56 = *(v49 - 8);
  v13 = *(v56 + 64);
  MEMORY[0x28223BE20]();
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4D88, &qword_2428C4D48);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4D90, &unk_2428C4D50);
  v17 = *(v16 - 8);
  v54 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2428B7E80;
  v20 = (v19 + v18);
  v39 = *(v16 + 48);
  v40 = v19;
  *v20 = 0;
  v41 = v12;
  sub_2428B4578();
  v42 = v9;
  sub_2428B36B8();
  v53 = *MEMORY[0x277CC9110];
  v51 = *(v4 + 104);
  v51(v50);
  sub_2428B3578();
  v21 = *(v56 + 56);
  v56 += 56;
  v52 = v21;
  v22 = v48;
  v23 = v49;
  v21(v48, 1, 1, v49);
  v43 = sub_2428B3148();
  v24 = *(v43 - 8);
  v46 = *(v24 + 56);
  v44 = v24 + 56;
  v46(v55, 1, 1, v43);
  sub_2428B3178();
  v36 = &v20[v54];
  v37 = v20;
  v47 = v16;
  v39 = *(v16 + 48);
  *v36 = 1;
  sub_2428B4578();
  sub_2428B36B8();
  v25 = v45;
  v38 = v4 + 104;
  (v51)(v50, v53, v45);
  v35 = v15;
  sub_2428B3578();
  v52(v22, 1, 1, v23);
  v26 = v43;
  v46(v55, 1, 1, v43);
  sub_2428B3178();
  v39 = 2 * v54;
  v36 = *(v16 + 48);
  v20[v39] = 2;
  sub_2428B4578();
  sub_2428B36B8();
  v27 = v50;
  (v51)(v50, v53, v25);
  sub_2428B3578();
  v28 = v48;
  v52(v48, 1, 1, v49);
  v29 = v55;
  v30 = v26;
  v31 = v46;
  v46(v55, 1, 1, v30);
  sub_2428B3178();
  v32 = &v37[v39 + v54];
  v54 = *(v47 + 48);
  *v32 = 3;
  sub_2428B4578();
  sub_2428B36B8();
  (v51)(v27, v53, v45);
  sub_2428B3578();
  v52(v28, 1, 1, v49);
  v31(v29, 1, 1, v43);
  sub_2428B3178();
  v33 = sub_242822144(v40);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27ECC4B58 = v33;
  return result;
}

uint64_t (*static EventEntity.PrivacyLevel.caseDisplayRepresentations.modify())()
{
  if (qword_27ECC1988 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

unint64_t EventEntity.PrivacyLevel.init(_:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

CalendarLink::EventEntity::PrivacyLevel_optional __swiftcall EventEntity.PrivacyLevel.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_242899D2C(uint64_t a1)
{
  v2 = sub_24281E43C();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_242899D9C(uint64_t a1)
{
  v2 = sub_24289CB68();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_242899DF8()
{
  v0 = sub_2428B3338();
  __swift_allocate_value_buffer(v0, qword_27ECC4B60);
  __swift_project_value_buffer(v0, qword_27ECC4B60);
  return sub_2428B3318();
}

uint64_t static EventEntity.EventEntityStatus.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1990 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4B60);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static EventEntity.EventEntityStatus.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27ECC1990 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4B60);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static EventEntity.EventEntityStatus.typeDisplayRepresentation.modify())()
{
  if (qword_27ECC1990 != -1)
  {
    swift_once();
  }

  v0 = sub_2428B3338();
  __swift_project_value_buffer(v0, qword_27ECC4B60);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_24289A0A4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1990 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4B60);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_24289A164(uint64_t a1)
{
  if (qword_27ECC1990 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4B60);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_24289A22C()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v45 = v29 - v1;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v46 = v29 - v3;
  v31 = sub_2428B3558();
  v47 = *(v31 - 8);
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20]();
  v33 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_2428B36C8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_2428B45F8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v37 = sub_2428B3568();
  v10 = *(v37 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4D78, &qword_2428C4D38);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4D80, &qword_2428C4D40);
  v36 = v12;
  v13 = *(*(v12 - 8) + 72);
  v14 = (*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80);
  v34 = 2 * v13;
  v15 = swift_allocObject();
  v35 = v15;
  *(v15 + 16) = xmmword_2428B9770;
  v16 = v15 + v14;
  v30 = *(v12 + 48);
  *(v15 + v14) = 0;
  sub_2428B4578();
  v29[1] = v8;
  sub_2428B36B8();
  v44 = *MEMORY[0x277CC9110];
  v32 = *(v47 + 104);
  v47 += 104;
  v17 = v33;
  v32(v33);
  sub_2428B3578();
  v18 = *(v10 + 56);
  v41 = v10 + 56;
  v42 = v18;
  v19 = v37;
  v18(v46, 1, 1, v37);
  v39 = sub_2428B3148();
  v20 = *(v39 - 8);
  v38 = *(v20 + 56);
  v40 = v20 + 56;
  v38(v45, 1, 1, v39);
  v43 = v16;
  sub_2428B3178();
  v21 = v36;
  v30 = *(v36 + 48);
  *(v16 + v13) = 1;
  sub_2428B4578();
  sub_2428B36B8();
  v22 = v31;
  v23 = v32;
  (v32)(v17, v44, v31);
  sub_2428B3578();
  v42(v46, 1, 1, v19);
  v24 = v45;
  v38(v45, 1, 1, v39);
  v25 = v24;
  sub_2428B3178();
  v26 = (v43 + v34);
  v34 = *(v21 + 48);
  *v26 = 2;
  sub_2428B4578();
  sub_2428B36B8();
  (v23)(v17, v44, v22);
  sub_2428B3578();
  v42(v46, 1, 1, v37);
  v38(v25, 1, 1, v39);
  sub_2428B3178();
  v27 = sub_242822168(v35);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27ECC4B78 = v27;
  return result;
}

uint64_t (*static EventEntity.EventEntityStatus.caseDisplayRepresentations.modify())()
{
  if (qword_27ECC1998 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

CalendarLink::EventEntity::EventEntityStatus_optional __swiftcall EventEntity.EventEntityStatus.init(rawValue:)(Swift::String rawValue)
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

uint64_t EventEntity.EventEntityStatus.rawValue.getter()
{
  v1 = 0x76697461746E6574;
  if (*v0 != 1)
  {
    v1 = 0x656C6C65636E6163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D7269666E6F63;
  }
}

uint64_t sub_24289AA94(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x76697461746E6574;
  if (v2 == 1)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v3 = 0x656C6C65636E6163;
    v4 = 0xE900000000000064;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656D7269666E6F63;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  v7 = 0x76697461746E6574;
  if (*a2 == 1)
  {
    v8 = 0xE900000000000065;
  }

  else
  {
    v7 = 0x656C6C65636E6163;
    v8 = 0xE900000000000064;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656D7269666E6F63;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000064;
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

uint64_t sub_24289AB88()
{
  v1 = *v0;
  sub_2428B4C88();
  sub_2428B4678();

  return sub_2428B4CB8();
}

uint64_t sub_24289AC28()
{
  *v0;
  *v0;
  sub_2428B4678();
}

uint64_t sub_24289ACB4()
{
  v1 = *v0;
  sub_2428B4C88();
  sub_2428B4678();

  return sub_2428B4CB8();
}

void sub_24289AD5C(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = *v1;
  v4 = 0x76697461746E6574;
  if (v3 == 1)
  {
    v5 = 0xE900000000000065;
  }

  else
  {
    v4 = 0x656C6C65636E6163;
    v5 = 0xE900000000000064;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x656D7269666E6F63;
  }

  if (!v6)
  {
    v2 = v5;
  }

  *a1 = v7;
  a1[1] = v2;
}

uint64_t sub_24289ADB8(uint64_t a1)
{
  v2 = sub_24281E490();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_24289AE28(uint64_t a1)
{
  v2 = sub_24289CF84();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_24289AE84()
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
  __swift_allocate_value_buffer(v15, qword_27ECC4B80);
  __swift_project_value_buffer(v15, qword_27ECC4B80);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_2428B3578();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_2428B3328();
}

uint64_t sub_24289B1A8()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v59 = v45 - v1;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v67 = v45 - v3;
  v4 = sub_2428B3558();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_2428B36C8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v10 = *(*(sub_2428B45F8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v60 = sub_2428B3568();
  v11 = *(v60 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v58 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4D60, &qword_2428C4D30);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2ED8, &qword_2428BB640);
  v69 = v14;
  v15 = *(v14 - 8);
  v61 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v53 = 4 * v61;
  v17 = swift_allocObject();
  v54 = v17;
  *(v17 + 16) = xmmword_2428BC390;
  v70 = v17 + v16;
  v52 = *(v14 + 48);
  *(v17 + v16) = 0;
  sub_2428B4578();
  sub_2428B36B8();
  v62 = *MEMORY[0x277CC9110];
  v18 = *(v5 + 104);
  v63 = v5 + 104;
  v64 = v18;
  v55 = v8;
  v18(v8);
  sub_2428B3578();
  v68 = *(v11 + 56);
  v71 = v11 + 56;
  v19 = v67;
  v20 = v60;
  v68(v67, 1, 1, v60);
  v21 = sub_2428B3148();
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v65 = v22 + 56;
  v66 = v23;
  v24 = v59;
  v57 = v21;
  v23(v59, 1, 1, v21);
  v25 = v70;
  sub_2428B3178();
  v51 = (v25 + v61);
  v52 = *(v69 + 48);
  *v51 = 1;
  sub_2428B4578();
  sub_2428B36B8();
  v26 = v55;
  v27 = v62;
  v56 = v4;
  v64(v55, v62, v4);
  sub_2428B3578();
  v28 = v19;
  v29 = v71;
  v68(v28, 1, 1, v20);
  v66(v24, 1, 1, v21);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4D70, &unk_2428B6230);
  v50 = *(v29 + 16);
  v47 = *(v29 + 24);
  v45[1] = (v47 + 32) & ~v47;
  v30 = swift_allocObject();
  v48 = xmmword_2428B5D50;
  *(v30 + 16) = xmmword_2428B5D50;
  sub_2428B4578();
  sub_2428B36B8();
  v31 = v64;
  v64(v26, v27, v4);
  sub_2428B3578();
  v32 = v59;
  v33 = v67;
  sub_2428B3168();
  v52 = 2 * v61;
  v46 = (v70 + 2 * v61);
  v51 = *(v69 + 48);
  *v46 = 2;
  sub_2428B4578();
  sub_2428B36B8();
  v34 = v56;
  v31(v26, v62, v56);
  sub_2428B3578();
  v68(v33, 1, 1, v60);
  v66(v32, 1, 1, v57);
  *(swift_allocObject() + 16) = v48;
  sub_2428B4578();
  sub_2428B36B8();
  v35 = v26;
  v36 = v62;
  v37 = v64;
  v64(v35, v62, v34);
  sub_2428B3578();
  v38 = v59;
  sub_2428B3168();
  v39 = v69;
  v52 += v70 + v61;
  v61 = *(v69 + 48);
  *v52 = 3;
  sub_2428B4578();
  sub_2428B36B8();
  v40 = v55;
  v37(v55, v36, v34);
  sub_2428B3578();
  v41 = v60;
  v68(v67, 1, 1, v60);
  v42 = v57;
  v66(v38, 1, 1, v57);
  sub_2428B3178();
  v61 = *(v39 + 48);
  *(v70 + v53) = 4;
  sub_2428B4578();
  sub_2428B36B8();
  v64(v40, v62, v56);
  sub_2428B3578();
  v68(v67, 1, 1, v41);
  v66(v38, 1, 1, v42);
  sub_2428B3178();
  v43 = sub_242822350(v54);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27ECC4B98 = v43;
  return result;
}

uint64_t (*static EventEntity.Availability.caseDisplayRepresentations.modify())()
{
  if (qword_27ECC19A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

CalendarLink::EventEntity::Availability __swiftcall EventEntity.Availability.init(_:)(EKEventAvailability a1)
{
  if (a1 < 4)
  {
    v2 = a1 + 1;
  }

  else
  {
    v2 = 0;
  }

  *v1 = v2;
  return a1;
}

CalendarLink::EventEntity::Availability_optional __swiftcall EventEntity.Availability.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_24289BE20(uint64_t a1)
{
  v2 = sub_24281E4E4();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_24289BE90(uint64_t a1)
{
  v2 = sub_24289D3A0();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t static EventEntity.transferRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4C88, &qword_2428C4150);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v19 - v3;
  v5 = sub_2428B4418();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4C90, &qword_2428C4158);
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v19 - v13;
  sub_2428B43F8();
  sub_24289C868();
  sub_2428B41A8();
  sub_2428B43E8();
  sub_2428B41A8();
  v15 = *(v1 + 48);
  v16 = v8[2];
  v16(v4, v14, v7);
  v16(&v4[v15], v12, v7);
  sub_2428B41B8();
  v17 = v8[1];
  v17(v12, v7);
  return (v17)(v14, v7);
}

uint64_t sub_24289C170(uint64_t *a1)
{
  v3 = sub_2428B4648();
  v1[15] = v3;
  v4 = *(v3 - 8);
  v1[16] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *a1;
  v8 = a1[1];
  v1[17] = v6;
  v1[18] = v7;
  v1[19] = v8;

  return MEMORY[0x2822009F8](sub_24289C238, 0, 0);
}

void sub_24289C238()
{
  if (qword_27ECC1978 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_2428B2F38();
  v3 = sub_2427F3D30();
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);

  v6 = sub_2428B4608();
  v7 = [v3 eventWithAppEntityIdentifier_];

  if (v7)
  {
    v8 = [objc_allocWithZone(MEMORY[0x277CF7C88]) init];
    v9 = [v8 textRepresentationForEvent:v7 withTextFormat:0 showURI:0];

    if (v9)
    {
      v11 = *(v0 + 128);
      v10 = *(v0 + 136);
      v12 = *(v0 + 120);
      sub_2428B4918();
      swift_unknownObjectRelease();
      sub_2428024B8((v0 + 48), (v0 + 16));
      swift_dynamicCast();
      v13 = *(v0 + 104);
      v14 = *(v0 + 112);
      sub_2428B4638();
      v15 = sub_2428B4628();
      v17 = v16;
      (*(v11 + 8))(v10, v12);
      if (v17 >> 60 != 15)
      {
        v18 = *(v0 + 136);

        v19 = *(v0 + 8);

        v19(v15, v17);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  sub_2427CCDB0();
  swift_allocError();
  *v20 = 25;
  swift_willThrow();

  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  v2();
}

uint64_t sub_24289C4FC(void *a1)
{
  v2 = a1[1];
  *(v1 + 40) = *a1;
  *(v1 + 48) = v2;
  return MEMORY[0x2822009F8](sub_24289C520, 0, 0);
}

uint64_t sub_24289C520()
{
  if (qword_27ECC1978 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_2428B2F38();
  v3 = sub_2427F3D30();
  v5 = v0[5];
  v4 = v0[6];

  v6 = sub_2428B4608();
  v7 = [v3 eventWithAppEntityIdentifier_];

  if (v7)
  {
    v8 = [v7 exportToICSWithOptions_];
    if (v8)
    {
      v9 = v8;
      v10 = sub_2428B3618();
      v12 = v11;

      v13 = v0[1];

      return v13(v10, v12);
    }

    sub_2427CCDB0();
    swift_allocError();
    *v15 = -127;
    swift_willThrow();
  }

  else
  {
    sub_2427CCDB0();
    swift_allocError();
    *v14 = 25;
    swift_willThrow();
  }

  v1 = v0[1];

  return v1();
}

uint64_t sub_24289C74C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmTrigger();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24289C7B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24289C7F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4BD0, &qword_2428C40C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24289C868()
{
  result = qword_27ECC4C98;
  if (!qword_27ECC4C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4C98);
  }

  return result;
}

unint64_t sub_24289C908()
{
  result = qword_280CDE3E0;
  if (!qword_280CDE3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE3E0);
  }

  return result;
}

unint64_t sub_24289C960()
{
  result = qword_280CDE428;
  if (!qword_280CDE428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE428);
  }

  return result;
}

unint64_t sub_24289C9B8()
{
  result = qword_280CDE400;
  if (!qword_280CDE400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE400);
  }

  return result;
}

unint64_t sub_24289CA10()
{
  result = qword_280CDE3D8;
  if (!qword_280CDE3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE3D8);
  }

  return result;
}

unint64_t sub_24289CA68()
{
  result = qword_280CDE410;
  if (!qword_280CDE410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE410);
  }

  return result;
}

unint64_t sub_24289CABC()
{
  result = qword_280CDE408;
  if (!qword_280CDE408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE408);
  }

  return result;
}

unint64_t sub_24289CB10()
{
  result = qword_280CDE420;
  if (!qword_280CDE420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE420);
  }

  return result;
}

unint64_t sub_24289CB68()
{
  result = qword_280CDE418;
  if (!qword_280CDE418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE418);
  }

  return result;
}

unint64_t sub_24289CBD8()
{
  result = qword_280CDE3F8;
  if (!qword_280CDE3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE3F8);
  }

  return result;
}

unint64_t sub_24289CC30()
{
  result = qword_280CDE3D0;
  if (!qword_280CDE3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE3D0);
  }

  return result;
}

unint64_t sub_24289CC88()
{
  result = qword_280CDE3E8;
  if (!qword_280CDE3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE3E8);
  }

  return result;
}

unint64_t sub_24289CD24()
{
  result = qword_27ECC4CD0;
  if (!qword_27ECC4CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4CD0);
  }

  return result;
}

unint64_t sub_24289CD7C()
{
  result = qword_27ECC4CD8;
  if (!qword_27ECC4CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4CD8);
  }

  return result;
}

unint64_t sub_24289CDD4()
{
  result = qword_27ECC4CE0;
  if (!qword_27ECC4CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4CE0);
  }

  return result;
}

unint64_t sub_24289CE2C()
{
  result = qword_27ECC4CE8;
  if (!qword_27ECC4CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4CE8);
  }

  return result;
}

unint64_t sub_24289CE84()
{
  result = qword_27ECC4CF0;
  if (!qword_27ECC4CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4CF0);
  }

  return result;
}

unint64_t sub_24289CED8()
{
  result = qword_27ECC4CF8;
  if (!qword_27ECC4CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4CF8);
  }

  return result;
}

unint64_t sub_24289CF2C()
{
  result = qword_27ECC4D00;
  if (!qword_27ECC4D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4D00);
  }

  return result;
}

unint64_t sub_24289CF84()
{
  result = qword_27ECC4D08;
  if (!qword_27ECC4D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4D08);
  }

  return result;
}

unint64_t sub_24289CFF4()
{
  result = qword_27ECC4D10;
  if (!qword_27ECC4D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4D10);
  }

  return result;
}

unint64_t sub_24289D04C()
{
  result = qword_27ECC4D18;
  if (!qword_27ECC4D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4D18);
  }

  return result;
}

unint64_t sub_24289D0A4()
{
  result = qword_27ECC4D20;
  if (!qword_27ECC4D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4D20);
  }

  return result;
}

unint64_t sub_24289D140()
{
  result = qword_280CDE448;
  if (!qword_280CDE448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE448);
  }

  return result;
}

unint64_t sub_24289D198()
{
  result = qword_280CDE490;
  if (!qword_280CDE490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE490);
  }

  return result;
}

unint64_t sub_24289D1F0()
{
  result = qword_280CDE468;
  if (!qword_280CDE468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE468);
  }

  return result;
}

unint64_t sub_24289D248()
{
  result = qword_280CDE440;
  if (!qword_280CDE440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE440);
  }

  return result;
}

unint64_t sub_24289D2A0()
{
  result = qword_280CDE478;
  if (!qword_280CDE478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE478);
  }

  return result;
}

unint64_t sub_24289D2F4()
{
  result = qword_280CDE470;
  if (!qword_280CDE470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE470);
  }

  return result;
}

unint64_t sub_24289D348()
{
  result = qword_280CDE488;
  if (!qword_280CDE488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE488);
  }

  return result;
}

unint64_t sub_24289D3A0()
{
  result = qword_280CDE480;
  if (!qword_280CDE480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE480);
  }

  return result;
}

unint64_t sub_24289D464()
{
  result = qword_280CDE460;
  if (!qword_280CDE460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE460);
  }

  return result;
}

unint64_t sub_24289D4BC()
{
  result = qword_280CDE438;
  if (!qword_280CDE438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE438);
  }

  return result;
}

unint64_t sub_24289D514()
{
  result = qword_280CDE450;
  if (!qword_280CDE450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE450);
  }

  return result;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_24289D5F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_24289D63C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24289D720()
{
  v0 = sub_2428B3558();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_2428B36C8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = *(*(sub_2428B45F8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v7 = sub_2428B3568();
  __swift_allocate_value_buffer(v7, qword_27ECC4DA0);
  __swift_project_value_buffer(v7, qword_27ECC4DA0);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_2428B3578();
}

uint64_t (*static DeleteEventIntent.title.modify())()
{
  if (qword_27ECC19B0 != -1)
  {
    swift_once();
  }

  v0 = sub_2428B3568();
  __swift_project_value_buffer(v0, qword_27ECC4DA0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_24289DA2C()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = v14 - v1;
  v14[0] = sub_2428B3558();
  v3 = *(v14[0] - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_2428B36C8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v8 = *(*(sub_2428B45F8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = sub_2428B3568();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v12 = sub_2428B3078();
  __swift_allocate_value_buffer(v12, qword_27ECC4DB8);
  __swift_project_value_buffer(v12, qword_27ECC4DB8);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v6, *MEMORY[0x277CC9110], v14[0]);
  sub_2428B3588();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_2428B3088();
}

uint64_t (*static DeleteEventIntent.description.modify())()
{
  if (qword_27ECC19B8 != -1)
  {
    swift_once();
  }

  v0 = sub_2428B3078();
  __swift_project_value_buffer(v0, qword_27ECC4DB8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t DeleteEventIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v30 = a1;
  v29 = sub_2428B3298();
  v2 = *(v29 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v29);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v22 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  v41 = 0u;
  v42 = 0u;
  *&v43 = 0;
  sub_2428B2948();
  *a1 = sub_2428B2918();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2540, &qword_2428B5AE0);
  v27 = sub_2428B3568();
  v17 = *(v27 - 8);
  v26 = *(v17 + 56);
  v28 = v17 + 56;
  v26(v16, 1, 1, v27);
  sub_2427CBC50(&v41);
  v37 = v47;
  v38 = v48;
  v39 = v49;
  v40 = v50;
  v33 = v43;
  v34 = v44;
  v35 = v45;
  v36 = v46;
  v31 = v41;
  v32 = v42;
  v18 = sub_2428B2AE8();
  v19 = *(*(v18 - 8) + 56);
  v19(v12, 1, 1, v18);
  v19(v10, 1, 1, v18);
  v24 = *MEMORY[0x277CBA308];
  v20 = *(v2 + 104);
  v22[1] = v2 + 104;
  v23 = v20;
  v20(v5);
  sub_2427C2774();
  v30[1] = sub_2428B2E48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2DA0, &qword_2428BE810);
  v26(v16, 1, 1, v27);
  LOBYTE(v31) = 3;
  v19(v12, 1, 1, v18);
  v19(v10, 1, 1, v18);
  v23(v5, v24, v29);
  sub_24281E538();
  result = sub_2428B2E28();
  v30[2] = result;
  return result;
}

uint64_t DeleteEventIntent.eventStoreProvider.getter()
{
  v1 = *v0;
  sub_2428B28E8();
  return v3;
}

uint64_t DeleteEventIntent.eventStoreProvider.setter()
{
  v1 = *v0;
  swift_unknownObjectRetain();
  sub_2428B28F8();
  return swift_unknownObjectRelease();
}

uint64_t (*DeleteEventIntent.eventStoreProvider.modify(uint64_t *a1))()
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

uint64_t sub_24289E328(_OWORD *a1, uint64_t *a2)
{
  v2 = a1[7];
  v3 = a1[5];
  v22 = a1[6];
  v23 = v2;
  v4 = a1[7];
  v5 = a1[9];
  v24 = a1[8];
  v25 = v5;
  v6 = a1[3];
  v7 = a1[1];
  v18 = a1[2];
  v19 = v6;
  v8 = a1[3];
  v9 = a1[5];
  v20 = a1[4];
  v21 = v9;
  v10 = a1[1];
  v17[0] = *a1;
  v17[1] = v10;
  v16[16] = v22;
  v16[17] = v4;
  v11 = a1[9];
  v16[18] = v24;
  v16[19] = v11;
  v16[12] = v18;
  v16[13] = v8;
  v16[14] = v20;
  v16[15] = v3;
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  v16[10] = v17[0];
  v16[11] = v7;
  sub_2427CD4FC(v17, v16);
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2DD8();
}

uint64_t DeleteEventIntent.entity.setter(__int128 *a1)
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

uint64_t (*DeleteEventIntent.entity.modify(uint64_t *a1))()
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

uint64_t DeleteEventIntent.span.setter(char *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return sub_2428B2DD8();
}

uint64_t (*DeleteEventIntent.span.modify(uint64_t *a1))()
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

uint64_t static DeleteEventIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4DD8, &qword_2428C4D78);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4DE0, &qword_2428C4D80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_24289E78C();
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4DF0, &qword_2428C4DB0);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3248();
}

unint64_t sub_24289E78C()
{
  result = qword_27ECC4DE8;
  if (!qword_27ECC4DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4DE8);
  }

  return result;
}

uint64_t sub_24289E7E0()
{
  swift_getKeyPath();
  sub_24289E78C();
  v0 = sub_2428B2F38();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2428B5A90;
  *(v1 + 32) = v0;
  sub_2428B2F38();
  v2 = sub_2428B3218();

  return v2;
}

uint64_t DeleteEventIntent.perform()(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  *(v2 + 384) = a1;
  *(v2 + 392) = *v1;
  *(v2 + 408) = *(v1 + 16);
  sub_2428B4758();
  *(v2 + 416) = sub_2428B4748();
  v3 = sub_2428B4728();
  *(v2 + 424) = v3;
  *(v2 + 432) = v4;
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_24289E97C, v3, v4);
}

uint64_t sub_24289E97C()
{
  v40 = *MEMORY[0x277D85DE8];
  v1 = sub_2428B43D8();
  *(v0 + 360) = v1;
  *(v0 + 368) = sub_2427CCD68(&qword_280CDDA40, MEMORY[0x277CF7740]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 336));
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CF7730], v1);
  LOBYTE(v1) = sub_2428B37D8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 336));
  if (v1)
  {
    v3 = *(v0 + 400);
    v4 = *(v0 + 408);
    v5 = *(v0 + 392);
    v6 = sub_2427F5334();
    *(v0 + 440) = v6;
    v8 = v6;
    v9 = *(v0 + 400);
    v10 = *(v0 + 408);
    v11 = *(v0 + 392);
    sub_24281B654();
    *(v0 + 448) = v12;
    v16 = v12;
    v17 = *(v0 + 400);
    sub_2428B2DC8();
    v18 = *(v0 + 288);
    v19 = *(v0 + 304);
    v20 = *(v0 + 256);
    *(v0 + 112) = *(v0 + 272);
    *(v0 + 128) = v18;
    v21 = *(v0 + 320);
    *(v0 + 144) = v19;
    *(v0 + 160) = v21;
    v22 = *(v0 + 224);
    v23 = *(v0 + 240);
    v24 = *(v0 + 192);
    *(v0 + 48) = *(v0 + 208);
    *(v0 + 64) = v22;
    v25 = *(v0 + 176);
    v26 = *(v0 + 184);
    *(v0 + 80) = v23;
    *(v0 + 96) = v20;
    *(v0 + 16) = *(v0 + 176);
    *(v0 + 32) = v24;
    sub_2428B3218();
    sub_2427CCE04(v0 + 16);
    v27 = sub_2428B4608();

    v28 = [v8 eventWithIdentifier_];
    *(v0 + 456) = v28;

    if (!v28)
    {
      v35 = *(v0 + 416);
      v36 = *(v0 + 384);

      sub_2428B2C28();

      v13 = *(v0 + 8);
      v37 = *MEMORY[0x277D85DE8];
      goto LABEL_5;
    }

    if ([v28 isDeletable])
    {
      v29 = *(v0 + 408);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
      v30 = swift_allocObject();
      *(v0 + 464) = v30;
      *(v30 + 16) = xmmword_2428B5A90;
      *(v30 + 32) = v28;
      v31 = v28;
      v32 = sub_2428B2DE8();
      *(v0 + 472) = v32;
      v33 = swift_task_alloc();
      *(v0 + 480) = v33;
      *v33 = v0;
      v33[1] = sub_24289ED98;
      v34 = *MEMORY[0x277D85DE8];

      return sub_24280CA3C(v0 + 496, v30, v32);
    }

    v38 = *(v0 + 416);

    sub_2427CCDB0();
    swift_allocError();
    *v39 = 40;
    swift_willThrow();
  }

  else
  {
    v7 = *(v0 + 416);

    sub_2428B2938();
    sub_2427CCD68(&qword_27ECC1A80, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_2428B2928();
    swift_willThrow();
  }

  v13 = *(v0 + 8);
  v14 = *MEMORY[0x277D85DE8];
LABEL_5:

  return v13();
}

uint64_t sub_24289ED98()
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 480);
  v4 = *v1;
  v2[61] = v0;

  v5 = v2[59];
  v6 = v2[58];
  if (v0)
  {

    v7 = v2[53];
    v8 = v2[54];
    v9 = sub_24289F07C;
  }

  else
  {

    v7 = v2[53];
    v8 = v2[54];
    v9 = sub_24289EF30;
  }

  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_24289EF30()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 416);

  v2 = qword_2428C4F98[*(v0 + 496)];
  v3 = *(v0 + 448);
  v4 = *(v0 + 456);
  *(v0 + 376) = 0;
  v5 = [v3 deleteEvent:v4 span:v2 error:v0 + 376];
  v6 = *(v0 + 376);
  v7 = *(v0 + 448);
  v8 = *(v0 + 456);
  v9 = *(v0 + 440);
  if (v5)
  {
    v10 = *(v0 + 384);
    v11 = v6;
    sub_2428B2C28();
  }

  else
  {
    v14 = v6;
    sub_2428B3538();

    swift_willThrow();
  }

  v12 = *(v0 + 8);
  v13 = *MEMORY[0x277D85DE8];

  return v12();
}

uint64_t sub_24289F07C()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 448);
  v2 = *(v0 + 440);
  v3 = *(v0 + 416);

  v4 = *(v0 + 488);
  v5 = *(v0 + 8);
  v6 = *MEMORY[0x277D85DE8];

  return v5();
}

unint64_t sub_24289F130()
{
  result = qword_280CDDDD8;
  if (!qword_280CDDDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDDD8);
  }

  return result;
}

unint64_t sub_24289F188()
{
  result = qword_280CDDDE0;
  if (!qword_280CDDDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDDE0);
  }

  return result;
}

uint64_t sub_24289F214@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC19B0 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4DA0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_24289F2D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4DD8, &qword_2428C4D78);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4DE0, &qword_2428C4D80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4DF0, &qword_2428C4DB0);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3248();
}

uint64_t sub_24289F480(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return DeleteEventIntent.perform()(a1);
}

unint64_t sub_24289F520()
{
  result = qword_27ECC4DF8;
  if (!qword_27ECC4DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4DF8);
  }

  return result;
}

uint64_t sub_24289F5BC@<X0>(void *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  LOBYTE(v4) = a3;
  v87 = *MEMORY[0x277D85DE8];
  v82 = a1;
  v7 = [a1 calendarsForEntityType_];
  v81 = 0;
  sub_242822BFC(0, &qword_27ECC28F0, 0x277CC59B0);
  sub_242828268();
  v8 = sub_2428B47B8();

  v83 = a4;
  if ((a2 & 1) == 0)
  {
LABEL_40:
    if (v4)
    {
      goto LABEL_41;
    }

    goto LABEL_79;
  }

  if ((v8 & 0xC000000000000001) == 0)
  {
    v26 = *(v8 + 32);
    v15 = ((1 << v26) + 63) >> 6;
    if ((v26 & 0x3Fu) <= 0xD)
    {
      goto LABEL_22;
    }

    goto LABEL_88;
  }

  v10 = MEMORY[0x277D84FA0];
  v86 = MEMORY[0x277D84FA0];
  sub_2428B4988();
  v11 = sub_2428B49F8();
  if (!v11)
  {
    v8 = v10;
LABEL_38:

LABEL_39:
    a4 = v83;
    goto LABEL_40;
  }

  v8 = MEMORY[0x277D84FA0];
  a4 = 1;
  while (1)
  {
    v84 = v11;
    swift_dynamicCast();
    v12 = v85;
    if ([v85 allowsContentModifications])
    {
      break;
    }

LABEL_6:
    v11 = sub_2428B49F8();
    if (!v11)
    {
      goto LABEL_38;
    }
  }

  v13 = *(v8 + 16);
  if (*(v8 + 24) <= v13)
  {
    sub_2428AEF30(v13 + 1);
  }

  v8 = v86;
  v14 = *(v86 + 40);
  v15 = v85;
  v16 = sub_2428B48D8();
  v17 = v86 + 56;
  v18 = -1 << *(v86 + 32);
  v19 = v16 & ~v18;
  v20 = v19 >> 6;
  if (((-1 << v19) & ~*(v86 + 56 + 8 * (v19 >> 6))) != 0)
  {
    v21 = __clz(__rbit64((-1 << v19) & ~*(v86 + 56 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_20:
    *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v8 + 48) + 8 * v21) = v12;
    ++*(v8 + 16);
    goto LABEL_6;
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v17 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_88:
    sub_2428B3218();
    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_22:
      v78[1] = v78;
      v79 = v15;
      MEMORY[0x28223BE20](v9);
      v28 = v78 - ((v27 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v28, v27);
      v80 = 0;
      v29 = 0;
      v30 = 1 << *(v8 + 32);
      v31 = -1;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      v15 = v31 & *(v8 + 56);
      v32 = (v30 + 63) >> 6;
      a4 = &property descriptor for AlarmEntityRepresentation.absoluteDate;
      while (v15)
      {
        v33 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_32:
        v36 = v33 | (v29 << 6);
        if ([*(*(v8 + 48) + 8 * v36) allowsContentModifications])
        {
          *&v28[(v36 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v36;
          v37 = __OFADD__(v80, 1);
          v80 = (v80 + 1);
          if (v37)
          {
            __break(1u);
LABEL_36:
            v9 = sub_2428AF8CC(v28, v79, v80, v8);
            v8 = v9;
            goto LABEL_39;
          }
        }
      }

      v34 = v29;
      while (1)
      {
        v29 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_86;
        }

        if (v29 >= v32)
        {
          goto LABEL_36;
        }

        v35 = *(v8 + 56 + 8 * v29);
        ++v34;
        if (v35)
        {
          v33 = __clz(__rbit64(v35));
          v15 = (v35 - 1) & v35;
          goto LABEL_32;
        }
      }
    }

    v71 = swift_slowAlloc();
    v72 = v81;
    v73 = sub_2428A14A4(v71, v15, v8, sub_24289FDF4);
    v81 = v72;

    v9 = MEMORY[0x245D1C000](v71, -1, -1);
    v8 = v73;
    if ((v4 & 1) == 0)
    {
      goto LABEL_79;
    }

LABEL_41:
    if ((v8 & 0xC000000000000001) != 0)
    {
      break;
    }

    v54 = *(v8 + 32);
    v15 = ((1 << v54) + 63) >> 6;
    if ((v54 & 0x3Fu) > 0xD)
    {
      sub_2428B3218();
      if (!swift_stdlib_isStackAllocationSafe())
      {
        v74 = swift_slowAlloc();
        v75 = v81;
        v76 = sub_2428A14A4(v74, v15, v8, sub_24289FE28);
        if (!v75)
        {
          v77 = v76;

          MEMORY[0x245D1C000](v74, -1, -1);
          v8 = v77;
          goto LABEL_79;
        }

        result = MEMORY[0x245D1C000](v74, -1, -1);
        __break(1u);
        return result;
      }
    }

    v80 = v78;
    MEMORY[0x28223BE20](v9);
    v56 = v78 - ((v55 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v56, v55);
    v4 = 0;
    v57 = 0;
    a4 = v8 + 56;
    v58 = 1 << *(v8 + 32);
    v59 = -1;
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    v60 = v59 & *(v8 + 56);
    v61 = (v58 + 63) >> 6;
    while (v60)
    {
      v62 = __clz(__rbit64(v60));
      v60 &= v60 - 1;
LABEL_71:
      v65 = v62 | (v57 << 6);
      if ([*(*(v8 + 48) + 8 * v65) isDeletable])
      {
        *&v56[(v65 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v65;
        v37 = __OFADD__(v4++, 1);
        if (v37)
        {
          __break(1u);
LABEL_75:
          v8 = sub_2428AF8CC(v56, v15, v4, v8);
          goto LABEL_78;
        }
      }
    }

    v63 = v57;
    while (1)
    {
      v57 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        break;
      }

      if (v57 >= v61)
      {
        goto LABEL_75;
      }

      v64 = *(a4 + 8 * v57);
      ++v63;
      if (v64)
      {
        v62 = __clz(__rbit64(v64));
        v60 = (v64 - 1) & v64;
        goto LABEL_71;
      }
    }
  }

  v38 = MEMORY[0x277D84FA0];
  v86 = MEMORY[0x277D84FA0];
  LOBYTE(v4) = sub_2428B4988();
  v39 = sub_2428B49F8();
  if (v39)
  {
    v8 = MEMORY[0x277D84FA0];
    a4 = 63;
    while (1)
    {
      v84 = v39;
      swift_dynamicCast();
      v40 = [v85 isDeletable];
      v41 = v85;
      if (v40)
      {
        v42 = *(v8 + 16);
        if (*(v8 + 24) <= v42)
        {
          sub_2428AEF30(v42 + 1);
        }

        v8 = v86;
        v43 = *(v86 + 40);
        v15 = v41;
        v44 = sub_2428B48D8();
        v45 = v8 + 56;
        v46 = -1 << *(v8 + 32);
        v47 = v44 & ~v46;
        v48 = v47 >> 6;
        if (((-1 << v47) & ~*(v8 + 56 + 8 * (v47 >> 6))) == 0)
        {
          v50 = 0;
          v51 = (63 - v46) >> 6;
          while (++v48 != v51 || (v50 & 1) == 0)
          {
            v52 = v48 == v51;
            if (v48 == v51)
            {
              v48 = 0;
            }

            v50 |= v52;
            v53 = *(v45 + 8 * v48);
            if (v53 != -1)
            {
              v49 = __clz(__rbit64(~v53)) + (v48 << 6);
              goto LABEL_59;
            }
          }

          goto LABEL_85;
        }

        v49 = __clz(__rbit64((-1 << v47) & ~*(v8 + 56 + 8 * (v47 >> 6)))) | v47 & 0x7FFFFFFFFFFFFFC0;
LABEL_59:
        *(v45 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
        *(*(v8 + 48) + 8 * v49) = v41;
        ++*(v8 + 16);
      }

      else
      {
      }

      v39 = sub_2428B49F8();
      if (!v39)
      {
        goto LABEL_77;
      }
    }
  }

  v8 = v38;
LABEL_77:

LABEL_78:
  a4 = v83;
LABEL_79:
  if ((v8 & 0xC000000000000001) != 0)
  {
    if (sub_2428B49C8())
    {
      goto LABEL_81;
    }

LABEL_83:

    v66 = 0;
    v67 = 0;
    v69 = -1;
  }

  else
  {
    if (!*(v8 + 16))
    {
      goto LABEL_83;
    }

LABEL_81:
    v66 = v82;
    v67 = sub_2428A0634(v8);

    v69 = 0;
  }

  *a4 = v66;
  *(a4 + 8) = v67;
  *(a4 + 16) = v69;
  v70 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24289FE5C(id *a1, char a2, char a3, id a4, char a5)
{
  v8 = *a1;
  if ((a2 & 1) == 0 || (result = [*a1 allowsContentModifications], result))
  {
    if ((a3 & 1) == 0 || (result = [v8 isDeletable], result))
    {
      if ([a4 sourceType] == 5 || !objc_msgSend(a4, sel_sourceType) && objc_msgSend(v8, sel_isSuggestedEventCalendar) && (SGAppCanShowSiriSuggestions(*MEMORY[0x277CF78A0]) & 1) != 0)
      {
        return 1;
      }

      else
      {
        v10 = [a4 sourceType] == 4;
        result = v10;
        if (!v10 && (a5 & 1) != 0)
        {
          return [a4 sourceType] == 6;
        }
      }
    }
  }

  return result;
}

uint64_t sub_24289FF58(uint64_t a1)
{
  v7 = v1;
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = sub_2428B49C8();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  v10 = *v1;
  if (!(*v1 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = __OFADD__(v11, v9);
    result = v11 + v9;
    if (!v12)
    {
      goto LABEL_6;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v10 < 0)
  {
    v18 = *v1;
  }

  v19 = sub_2428B49C8();
  v12 = __OFADD__(v19, v9);
  result = v19 + v9;
  if (v12)
  {
    goto LABEL_16;
  }

LABEL_6:
  sub_2428A03F4(result);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v14 = *(v3 + 0x10);
  v15 = (*(v3 + 0x18) >> 1) - v14;
  result = sub_24282537C(&v36, (v3 + 8 * v14 + 32), v15, v8);
  if (result < v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (result >= 1)
  {
    v16 = *(v3 + 16);
    v12 = __OFADD__(v16, result);
    v17 = v16 + result;
    if (v12)
    {
      __break(1u);
      goto LABEL_22;
    }

    *(v3 + 16) = v17;
  }

  if (result != v15)
  {
LABEL_11:
    result = sub_2427C9D4C();
    *v7 = v2;
    return result;
  }

LABEL_18:
  v4 = *(v3 + 16);
  v3 = v36;
  v5 = v37;
  v8 = v39;
  v33 = v38;
  v6 = v40;
  if (v36 < 0)
  {
LABEL_22:
    if (!sub_2428B49F8())
    {
      goto LABEL_11;
    }

    sub_242822BFC(0, &qword_27ECC28F0, 0x277CC59B0);
    result = swift_dynamicCast();
    v21 = v35;
    goto LABEL_33;
  }

  if (!v40)
  {
    v22 = (v38 + 64) >> 6;
    if (v22 <= v39 + 1)
    {
      v23 = v39 + 1;
    }

    else
    {
      v23 = (v38 + 64) >> 6;
    }

    v24 = v23 - 1;
    while (1)
    {
      v20 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_61;
      }

      if (v20 >= v22)
      {
        v21 = 0;
        v6 = 0;
        goto LABEL_32;
      }

      v6 = *(v37 + 8 * v20);
      ++v8;
      if (v6)
      {
        goto LABEL_31;
      }
    }
  }

  v20 = v39;
LABEL_31:
  v25 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v21 = *(*(v36 + 48) + ((v20 << 9) | (8 * v25)));
  result = v21;
  v24 = v20;
LABEL_32:
  v39 = v24;
  v40 = v6;
  v8 = v24;
LABEL_33:
  if (!v21)
  {
    goto LABEL_11;
  }

  v26 = (v33 + 64) >> 6;
LABEL_35:
  if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = sub_2428B46E8();
  }

  v2 = *v7;
  v27 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v32 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v4 > v27)
  {
    v27 = v4;
  }

  v34 = v27;
  while (1)
  {
    while (1)
    {
      if (v4 == v34)
      {
        v4 = v34;
        *(v32 + 16) = v34;
        goto LABEL_35;
      }

      *(v32 + 32 + 8 * v4++) = v21;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_2428B49F8())
      {
        sub_242822BFC(0, &qword_27ECC28F0, 0x277CC59B0);
        result = swift_dynamicCast();
        v21 = v35;
        if (v35)
        {
          continue;
        }
      }

      goto LABEL_58;
    }

    if (!v6)
    {
      break;
    }

    v28 = v8;
LABEL_56:
    v31 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v21 = *(*(v3 + 48) + ((v28 << 9) | (8 * v31)));
    result = v21;
    v30 = v28;
LABEL_41:
    v36 = v3;
    v37 = v5;
    v38 = v33;
    v39 = v30;
    v8 = v30;
    v40 = v6;
    if (!v21)
    {
LABEL_58:
      *(v32 + 16) = v4;
      goto LABEL_11;
    }
  }

  if (v26 <= v8 + 1)
  {
    v29 = v8 + 1;
  }

  else
  {
    v29 = (v33 + 64) >> 6;
  }

  v30 = v29 - 1;
  while (1)
  {
    v28 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v28 >= v26)
    {
      v21 = 0;
      v6 = 0;
      goto LABEL_41;
    }

    v6 = *(v5 + 8 * v28);
    ++v8;
    if (v6)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

void sub_2428A02E0(unint64_t *a1, SEL *a2)
{
  v4 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
  {
    v4 = sub_2428252F0(v4);
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6[0] = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
  v6[1] = v5;
  sub_2428A06E4(v6, a2);
  *a1 = v4;
}

id sub_2428A0360(id *a1, char a2, char a3)
{
  v4 = *a1;
  if ((a2 & 1) == 0 || (result = [*a1 allowsContentModifications], result))
  {
    if ((a3 & 1) == 0 || (result = [v4 isDeletable], result))
    {
      if ([v4 isSuggestedEventCalendar])
      {
        return 0;
      }

      else
      {
        return ([v4 isNaturalLanguageSuggestedEventCalendar] ^ 1);
      }
    }
  }

  return result;
}

uint64_t sub_2428A03F4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_2428B49C8();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_2428B4A88();
  *v1 = result;
  return result;
}

void sub_2428A0494(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2780, &qword_2428B9358);
      v7 = *(sub_2428B2BA8() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(sub_2428B2BA8() - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void *sub_2428A0634(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_2428B49C8();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_2428250E8(v2, 0);
    sub_2428B3218();
    v1 = sub_24282537C(&v5, v3 + 4, v2, v1);
    sub_2427C9D4C();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void sub_2428A06E4(uint64_t *a1, SEL *a2)
{
  v4 = a1[1];
  v5 = sub_2428B4BC8();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_242822BFC(0, &qword_27ECC28F0, 0x277CC59B0);
        v8 = sub_2428B46F8();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
      v10[1] = v7;
      sub_2428A0930(v10, v11, a1, v6, a2);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_2428A0804(0, v4, 1, a1, a2);
  }
}

void sub_2428A0804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, SEL *a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v8 = *a4;
    v9 = objc_opt_self();
    v10 = v8 + 8 * v6 - 8;
    v11 = a1 - v6;
LABEL_5:
    v24 = v6;
    v12 = *(v8 + 8 * v6);
    v22 = v11;
    v23 = v10;
    v13 = v10;
    while (1)
    {
      v14 = *v13;
      v15 = v12;
      v16 = v14;
      v17 = [v9 *a5];
      v18 = v17[2](v17, v15, v16);
      _Block_release(v17);

      if (v18 != -1)
      {
LABEL_4:
        v6 = v24 + 1;
        v10 = v23 + 8;
        v11 = v22 - 1;
        if (v24 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v8)
      {
        break;
      }

      v19 = *v13;
      v12 = *(v13 + 8);
      *v13 = v12;
      *(v13 + 8) = v19;
      v13 -= 8;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_2428A0930(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, SEL *a5)
{
  v7 = v5;
  v8 = a3;
  v9 = a3[1];
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      v12 = v10;
      v13 = v10 + 1;
      if (v10 + 1 < v9)
      {
        v113 = v9;
        v104 = v11;
        v106 = v7;
        v14 = *(*v8 + 8 * v13);
        v15 = 8 * v10;
        v16 = (*v8 + 8 * v10);
        v17 = *v16;
        v6 = (v16 + 2);
        v18 = objc_opt_self();
        v19 = v14;
        v20 = v17;
        v111 = v18;
        v21 = [v18 *a5];
        v22 = v12;
        v23 = v21[2](v21, v19, v20);
        _Block_release(v21);

        v102 = v22;
        v24 = v22 + 2;
        while (1)
        {
          v13 = v113;
          if (v113 == v24)
          {
            break;
          }

          v25 = *(v6 - 8);
          v26 = *v6;
          v27 = v25;
          v28 = [v111 *a5];
          v29 = v28[2](v28, v26, v27);
          _Block_release(v28);

          ++v24;
          v6 += 8;
          if ((v23 == -1) == (v29 != -1))
          {
            v13 = v24 - 1;
            break;
          }
        }

        v11 = v104;
        v7 = v106;
        v8 = a3;
        if (v23 == -1)
        {
          v12 = v102;
          if (v13 < v102)
          {
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
            return;
          }

          if (v102 < v13)
          {
            v30 = 8 * v13 - 8;
            v31 = v13;
            v32 = v102;
            do
            {
              if (v32 != --v31)
              {
                v34 = *a3;
                if (!*a3)
                {
                  goto LABEL_124;
                }

                v33 = *(v34 + v15);
                *(v34 + v15) = *(v34 + v30);
                *(v34 + v30) = v33;
              }

              ++v32;
              v30 -= 8;
              v15 += 8;
            }

            while (v32 < v31);
          }
        }

        else
        {
          v12 = v102;
        }
      }

      v35 = v8[1];
      if (v13 < v35)
      {
        if (__OFSUB__(v13, v12))
        {
          goto LABEL_116;
        }

        if (v13 - v12 < a4)
        {
          if (__OFADD__(v12, a4))
          {
            goto LABEL_117;
          }

          if (v12 + a4 >= v35)
          {
            v36 = v8[1];
          }

          else
          {
            v36 = v12 + a4;
          }

          if (v36 < v12)
          {
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (v13 != v36)
          {
            v105 = v11;
            v107 = v7;
            v37 = *v8;
            v6 = objc_opt_self();
            v38 = v37 + 8 * v13 - 8;
            v103 = v12;
            v39 = v12 - v13;
            v110 = v36;
            do
            {
              v112 = v38;
              v114 = v13;
              v40 = *(v37 + 8 * v13);
              v41 = v39;
              v42 = v38;
              do
              {
                v43 = *v42;
                v44 = v40;
                v45 = v43;
                v46 = [v6 *a5];
                v47 = v46[2](v46, v44, v45);
                _Block_release(v46);

                if (v47 != -1)
                {
                  break;
                }

                if (!v37)
                {
                  goto LABEL_121;
                }

                v48 = *v42;
                v40 = *(v42 + 8);
                *v42 = v40;
                *(v42 + 8) = v48;
                v42 -= 8;
              }

              while (!__CFADD__(v41++, 1));
              v13 = v114 + 1;
              v38 = v112 + 8;
              --v39;
            }

            while (v114 + 1 != v110);
            v13 = v110;
            v11 = v105;
            v7 = v107;
            v8 = a3;
            v12 = v103;
          }
        }
      }

      if (v13 < v12)
      {
        goto LABEL_115;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_2427F74F4(0, *(v11 + 2) + 1, 1, v11);
      }

      v51 = *(v11 + 2);
      v50 = *(v11 + 3);
      v52 = v51 + 1;
      if (v51 >= v50 >> 1)
      {
        v11 = sub_2427F74F4((v50 > 1), v51 + 1, 1, v11);
      }

      *(v11 + 2) = v52;
      v53 = &v11[16 * v51];
      *(v53 + 4) = v12;
      *(v53 + 5) = v13;
      v6 = *a1;
      if (!*a1)
      {
        goto LABEL_125;
      }

      v115 = v13;
      if (v51)
      {
        while (1)
        {
          v54 = v52 - 1;
          if (v52 >= 4)
          {
            break;
          }

          if (v52 == 3)
          {
            v55 = *(v11 + 4);
            v56 = *(v11 + 5);
            v65 = __OFSUB__(v56, v55);
            v57 = v56 - v55;
            v58 = v65;
LABEL_57:
            if (v58)
            {
              goto LABEL_104;
            }

            v71 = &v11[16 * v52];
            v73 = *v71;
            v72 = *(v71 + 1);
            v74 = __OFSUB__(v72, v73);
            v75 = v72 - v73;
            v76 = v74;
            if (v74)
            {
              goto LABEL_107;
            }

            v77 = &v11[16 * v54 + 32];
            v79 = *v77;
            v78 = *(v77 + 1);
            v65 = __OFSUB__(v78, v79);
            v80 = v78 - v79;
            if (v65)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v75, v80))
            {
              goto LABEL_111;
            }

            if (v75 + v80 >= v57)
            {
              if (v57 < v80)
              {
                v54 = v52 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v81 = &v11[16 * v52];
          v83 = *v81;
          v82 = *(v81 + 1);
          v65 = __OFSUB__(v82, v83);
          v75 = v82 - v83;
          v76 = v65;
LABEL_71:
          if (v76)
          {
            goto LABEL_106;
          }

          v84 = &v11[16 * v54];
          v86 = *(v84 + 4);
          v85 = *(v84 + 5);
          v65 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v65)
          {
            goto LABEL_109;
          }

          if (v87 < v75)
          {
            goto LABEL_3;
          }

LABEL_78:
          v92 = v54 - 1;
          if (v54 - 1 >= v52)
          {
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
            goto LABEL_118;
          }

          if (!*v8)
          {
            goto LABEL_122;
          }

          v93 = *&v11[16 * v92 + 32];
          v94 = *&v11[16 * v54 + 40];
          sub_2428A1014((*v8 + 8 * v93), (*v8 + 8 * *&v11[16 * v54 + 32]), (*v8 + 8 * v94), v6, a5);
          if (v7)
          {
            goto LABEL_98;
          }

          if (v94 < v93)
          {
            goto LABEL_100;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_2428AEF1C(v11);
          }

          if (v92 >= *(v11 + 2))
          {
            goto LABEL_101;
          }

          v95 = &v11[16 * v92];
          *(v95 + 4) = v93;
          *(v95 + 5) = v94;
          sub_2428AEE90(v54);
          v52 = *(v11 + 2);
          if (v52 <= 1)
          {
            goto LABEL_3;
          }
        }

        v59 = &v11[16 * v52 + 32];
        v60 = *(v59 - 64);
        v61 = *(v59 - 56);
        v65 = __OFSUB__(v61, v60);
        v62 = v61 - v60;
        if (v65)
        {
          goto LABEL_102;
        }

        v64 = *(v59 - 48);
        v63 = *(v59 - 40);
        v65 = __OFSUB__(v63, v64);
        v57 = v63 - v64;
        v58 = v65;
        if (v65)
        {
          goto LABEL_103;
        }

        v66 = &v11[16 * v52];
        v68 = *v66;
        v67 = *(v66 + 1);
        v65 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v65)
        {
          goto LABEL_105;
        }

        v65 = __OFADD__(v57, v69);
        v70 = v57 + v69;
        if (v65)
        {
          goto LABEL_108;
        }

        if (v70 >= v62)
        {
          v88 = &v11[16 * v54 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v65 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v65)
          {
            goto LABEL_112;
          }

          if (v57 < v91)
          {
            v54 = v52 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v9 = v8[1];
      v10 = v115;
      if (v115 >= v9)
      {
        goto LABEL_88;
      }
    }
  }

  v11 = MEMORY[0x277D84F90];
LABEL_88:
  v6 = v11;
  v11 = *a1;
  if (!*a1)
  {
    goto LABEL_126;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_119:
    v6 = sub_2428AEF1C(v6);
  }

  v96 = *(v6 + 16);
  if (v96 >= 2)
  {
    do
    {
      v97 = *v8;
      if (!*v8)
      {
        goto LABEL_123;
      }

      v8 = (v96 - 1);
      v98 = *(v6 + 16 * v96);
      v99 = *(v6 + 16 * (v96 - 1) + 40);
      sub_2428A1014((v97 + 8 * v98), (v97 + 8 * *(v6 + 16 * (v96 - 1) + 32)), (v97 + 8 * v99), v11, a5);
      if (v7)
      {
        break;
      }

      if (v99 < v98)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_2428AEF1C(v6);
      }

      if (v96 - 2 >= *(v6 + 16))
      {
        goto LABEL_114;
      }

      v100 = (v6 + 16 * v96);
      *v100 = v98;
      v100[1] = v99;
      sub_2428AEE90(v96 - 1);
      v96 = *(v6 + 16);
      v8 = a3;
    }

    while (v96 > 1);
  }

LABEL_98:
}

uint64_t sub_2428A1014(char *__src, void **a2, void **a3, char *a4, SEL *a5)
{
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v25 = a2;
      v26 = a4;
      memmove(a4, a2, 8 * v12);
      a2 = v25;
      a4 = v26;
    }

    v27 = a2;
    v28 = &a4[8 * v12];
    v14 = a4;
    if (v10 >= 8 && a2 > v6)
    {
      v42 = a4;
      v41 = v6;
LABEL_25:
      v44 = v27;
      v29 = v27 - 1;
      --v5;
      v30 = v28;
      do
      {
        v31 = (v5 + 1);
        v32 = *--v30;
        v33 = v29;
        v34 = *v29;
        v35 = objc_opt_self();
        v36 = v32;
        v37 = v34;
        v38 = [v35 *a5];
        v39 = v38[2](v38, v36, v37);
        _Block_release(v38);

        if (v39 == -1)
        {
          if (v31 != v44)
          {
            *v5 = *v33;
          }

          v14 = v42;
          if (v28 <= v42 || (v27 = v33, v33 <= v41))
          {
            v27 = v33;
            goto LABEL_37;
          }

          goto LABEL_25;
        }

        if (v31 != v28)
        {
          *v5 = *v30;
        }

        --v5;
        v28 = v30;
        v29 = v33;
      }

      while (v30 > v42);
      v28 = v30;
      v14 = v42;
      v27 = v44;
    }
  }

  else
  {
    v13 = a2;
    v14 = a4;
    if (a4 != __src || &__src[8 * v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v43 = &v14[v9];
    if (v7 >= 8)
    {
      v15 = v13;
      while (1)
      {
        if (v15 >= v5)
        {
          goto LABEL_35;
        }

        v18 = *v15;
        v19 = *v14;
        v20 = objc_opt_self();
        v21 = v18;
        v22 = v19;
        v23 = [v20 *a5];
        v24 = v23[2](v23, v21, v22);
        _Block_release(v23);

        if (v24 != -1)
        {
          break;
        }

        v16 = v15;
        v17 = v6 == v15++;
        if (!v17)
        {
          goto LABEL_12;
        }

LABEL_13:
        ++v6;
        if (v14 >= v43)
        {
          goto LABEL_35;
        }
      }

      v16 = v14;
      v17 = v6 == v14++;
      if (v17)
      {
        goto LABEL_13;
      }

LABEL_12:
      *v6 = *v16;
      goto LABEL_13;
    }

LABEL_35:
    v27 = v6;
    v28 = v43;
  }

LABEL_37:
  if (v27 != v14 || v27 >= (v14 + ((v28 - v14 + (v28 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v27, v14, 8 * ((v28 - v14) / 8));
  }

  return 1;
}

void sub_2428A1338(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:
        sub_2428B2F38();
        sub_2428AF8CC(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_2428A14A4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_2428A1338(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

unint64_t sub_2428A1534(unint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unsigned __int8 a6)
{
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = *v6;
  v14 = v13 + 32 + 24 * result;
  result = swift_arrayDestroy();
  v15 = __OFSUB__(a3, v7);
  v16 = a3 - v7;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v16)
  {
    v17 = *(v13 + 16);
    v15 = __OFSUB__(v17, a2);
    v18 = v17 - a2;
    if (!v15)
    {
      result = v14 + 24 * a3;
      v19 = (v13 + 32 + 24 * a2);
      v20 = 24 * v18;
      v21 = &v19[24 * v18];
      if (result != v19 || result >= v21)
      {
        result = memmove(result, v19, v20);
      }

      v23 = *(v13 + 16);
      v15 = __OFADD__(v23, v16);
      v24 = v23 + v16;
      if (!v15)
      {
        *(v13 + 16) = v24;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v14 = a4;
    *(v14 + 8) = a5;
    *(v14 + 16) = a6;
    result = sub_2427FAED4(a4, a5, a6);
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_2428A163C(unint64_t result, uint64_t a2, void *a3, uint64_t a4, unsigned __int8 a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = *v5;
  v8 = *(*v5 + 2);
  if (v8 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = result;
  v10 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = __OFSUB__(1, v10);
  v12 = 1 - v10;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8 + v12;
  if (__OFADD__(v8, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v17 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v7 + 3) >> 1)
  {
    if (v8 <= v13)
    {
      v19 = v13;
    }

    else
    {
      v19 = v8;
    }

    v7 = sub_2427F73D8(isUniquelyReferenced_nonNull_native, v19, 1, v7);
    *v5 = v7;
  }

  result = sub_2428A1534(v9, a2, 1, a3, a4, a5);
  *v5 = v7;
  return result;
}

char *_s12CalendarLink0A12ListGroupingV6groups14withEventStore16includeDelegates12writableOnly09deletableL00I18IntegrationSourcesSayAC5GroupOGSo07EKEventH0C_S4btFZ_0(void *a1, int a2, char a3, int a4, int a5)
{
  LODWORD(v148) = a5;
  LODWORD(v5) = a4;
  LOBYTE(v6) = a3;
  v144 = a2;
  v160 = *MEMORY[0x277D85DE8];
  v7 = [a1 sortedSourcesEnabledForEntityType_];
  sub_242822BFC(0, &qword_27ECC35C8, 0x277CC5AC8);
  v8 = sub_2428B46C8();

  v9 = MEMORY[0x277D84F90];
  v157 = MEMORY[0x277D84F90];
  if (v8 >> 62)
  {
    goto LABEL_212;
  }

  v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v11 = &property descriptor for AlarmEntityRepresentation.absoluteDate;
  v150 = v5;
  if (!v10)
  {
    v155 = v9;
    v156 = v9;
    v154 = v9;

    v69 = 0;
    v145 = v9;
    v63 = v9;
    goto LABEL_113;
  }

  if (v10 < 1)
  {
    __break(1u);
    goto LABEL_215;
  }

  v12 = 0;
  v149 = (v8 & 0xC000000000000001);
  v132 = v8 + 32;
  v145 = v9;
  v142 = v8;
  do
  {
    if (v149)
    {
      v13 = MEMORY[0x245D1B5D0](v12, v8);
    }

    else
    {
      v13 = *(v8 + 8 * v12 + 32);
    }

    v14 = v13;
    if (![v13 isEnabledForEvents] || !objc_msgSend(v14, sel_sourceType) || objc_msgSend(v14, sel_sourceType) == 5 || objc_msgSend(v14, sel_sourceType) == 4 || objc_msgSend(v14, sel_sourceType) == 6 || (objc_msgSend(v14, sel_isDelegate) & 1) != 0)
    {

      goto LABEL_16;
    }

    v15 = v10;
    v16 = [v14 calendarsForEntityType_];
    sub_242822BFC(0, &qword_27ECC28F0, 0x277CC59B0);
    sub_242828268();
    v17 = sub_2428B47B8();

    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = sub_2428B49C8();
    }

    else
    {
      v18 = *(v17 + 16);
    }

    if (!v18)
    {

LABEL_29:
      v11 = 0x278D6C000;
      v8 = v142;
      v10 = v15;
      goto LABEL_16;
    }

    sub_24289F5BC(v14, v6 & 1, v150 & 1, &v158);
    v19 = v159;
    if (v159 != 255)
    {
      v147 = v158;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_2427F73D8(0, *(v9 + 16) + 1, 1, v9);
      }

      v21 = *(v9 + 16);
      v20 = *(v9 + 24);
      if (v21 >= v20 >> 1)
      {
        v9 = sub_2427F73D8((v20 > 1), v21 + 1, 1, v9);
      }

      *(v9 + 16) = v21 + 1;
      v22 = v9 + 24 * v21;
      *(v22 + 32) = v147;
      *(v22 + 48) = v19;
      v157 = v9;
      goto LABEL_29;
    }

    v10 = v15;

    v11 = 0x278D6C000;
    v8 = v142;
LABEL_16:
    ++v12;
  }

  while (v10 != v12);
  v23 = 0;
  v131 = 0;
  v155 = MEMORY[0x277D84F90];
  v156 = MEMORY[0x277D84F90];
  v154 = MEMORY[0x277D84F90];
  LODWORD(v141) = v6 & 1;
  v24 = v150;
  LODWORD(v140) = v150 & 1;
  LODWORD(v139) = v148 & 1;
  v137 = *MEMORY[0x277CF78A0];
  v133 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84FA0];
  v25 = &property descriptor for AlarmEntityRepresentation.absoluteDate;
  v143 = v10;
  while (1)
  {
    if (v149)
    {
      v27 = MEMORY[0x245D1B5D0](v23, v8);
    }

    else
    {
      v27 = *(v132 + 8 * v23);
    }

    v28 = v27;
    if (![v27 v25[291]])
    {
      v29 = v28;
      MEMORY[0x245D1B200]();
      if (*((v155 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v155 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v64 = *((v155 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2428B46E8();
        v24 = v150;
      }

      sub_2428B4708();
      v133 = v155;
    }

    if ((v144 & 1) != 0 && [v28 isDelegate] && objc_msgSend(v28, sel_isEnabled))
    {
      v30 = v28;
      v5 = &v154;
      MEMORY[0x245D1B200]();
      if (*((v154 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v154 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v68 = *((v154 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2428B46E8();
        v24 = v150;
      }

      sub_2428B4708();

      v145 = v154;
      v26 = v143;
      goto LABEL_33;
    }

    *&v147 = v23;
    v31 = [v28 calendarsForEntityType_];
    sub_242822BFC(0, &qword_27ECC28F0, 0x277CC59B0);
    sub_242828268();
    v8 = sub_2428B47B8();

    v146 = &v131;
    v33 = MEMORY[0x28223BE20](v32);
    *(&v131 - 32) = v141;
    *(&v131 - 31) = v140;
    *(&v131 - 3) = v28;
    *(&v131 - 16) = v139;
    if ((v8 & 0xC000000000000001) != 0)
    {
      *&v158 = v9;
      v8 = sub_2428B4988();
      v34 = sub_2428B49F8();
      for (i = v9; v34; v34 = sub_2428B49F8())
      {
        v152 = v34;
        swift_dynamicCast();
        v36 = v153;
        if ((v6 & 1) != 0 && ![v153 *(v11 + 3608)] || (v24 & 1) != 0 && !objc_msgSend(v36, sel_isDeletable) || objc_msgSend(v28, v25[291]) != 5 && (objc_msgSend(v28, v25[291]) || !objc_msgSend(v36, sel_isSuggestedEventCalendar) || (SGAppCanShowSiriSuggestions(v137) & 1) == 0) && objc_msgSend(v28, v25[291]) != 4 && ((v148 & 1) == 0 || objc_msgSend(v28, v25[291]) != 6))
        {

          continue;
        }

        v37 = v153;
        v38 = *(i + 16);
        if (*(i + 24) <= v38)
        {
          sub_2428AEF30(v38 + 1);
        }

        i = v158;
        v39 = *(v158 + 40);
        LODWORD(v5) = v37;
        v40 = sub_2428B48D8();
        v41 = i + 56;
        v42 = -1 << *(i + 32);
        v43 = v40 & ~v42;
        v44 = v43 >> 6;
        if (((-1 << v43) & ~*(i + 56 + 8 * (v43 >> 6))) != 0)
        {
          v45 = __clz(__rbit64((-1 << v43) & ~*(i + 56 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
          goto LABEL_73;
        }

        v46 = 0;
        v47 = (63 - v42) >> 6;
        do
        {
          if (++v44 == v47 && (v46 & 1) != 0)
          {
            __break(1u);
LABEL_206:
            __break(1u);
LABEL_207:
            __break(1u);
            goto LABEL_208;
          }

          v48 = v44 == v47;
          if (v44 == v47)
          {
            v44 = 0;
          }

          v46 |= v48;
          v49 = *(v41 + 8 * v44);
        }

        while (v49 == -1);
        v45 = __clz(__rbit64(~v49)) + (v44 << 6);
LABEL_73:
        *(v41 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
        *(*(i + 48) + 8 * v45) = v37;
        ++*(i + 16);
        v25 = &property descriptor for AlarmEntityRepresentation.absoluteDate;
      }

      goto LABEL_32;
    }

    v50 = *(v8 + 32);
    v51 = ((1 << v50) + 63) >> 6;
    if ((v50 & 0x3Fu) <= 0xD)
    {
      goto LABEL_78;
    }

    sub_2428B3218();
    if (swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v65 = swift_slowAlloc();
    sub_2428B3218();
    v66 = v51;
    v67 = v131;
    i = sub_2428A14A4(v65, v66, v8, sub_2428A2D28);
    v131 = v67;
    v24 = v150;
    swift_bridgeObjectRelease_n();
    MEMORY[0x245D1C000](v65, -1, -1);
LABEL_32:
    v5 = &v156;
    sub_24289FF58(i);

    v8 = v142;
    v26 = v143;
    v23 = v147;
LABEL_33:
    if (++v23 == v26)
    {

      v63 = v133;
      v9 = MEMORY[0x277D84F90];
      v69 = v131;
LABEL_113:
      sub_2428A02E0(&v156, &selRef_ekOtherCalendarComparator);
      v136 = v69;
      *&v158 = v9;
      if (v63 >> 62)
      {
        goto LABEL_213;
      }

      v70 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_115;
    }
  }

LABEL_78:
  v135 = v51;
  v134 = &v131;
  MEMORY[0x28223BE20](v33);
  v136 = &v131 - ((v52 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v136, v52);
  v53 = 0;
  v54 = 0;
  v5 = (v8 + 56);
  v55 = 1 << *(v8 + 32);
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  else
  {
    v56 = -1;
  }

  v9 = v56 & *(v8 + 56);
  v57 = (v55 + 63) >> 6;
  while (2)
  {
    v138 = v53;
    while (1)
    {
      if (!v9)
      {
        v59 = v54;
        v11 = 0x278D6C000;
        v9 = MEMORY[0x277D84FA0];
        while (1)
        {
          v54 = v59 + 1;
          if (__OFADD__(v59, 1))
          {
            goto LABEL_207;
          }

          if (v54 >= v57)
          {
            break;
          }

          v60 = v5[v54];
          ++v59;
          if (v60)
          {
            v58 = __clz(__rbit64(v60));
            v9 = (v60 - 1) & v60;
            goto LABEL_91;
          }
        }

        i = sub_2428AF8CC(v136, v135, v138, v8);
        v24 = v150;
        goto LABEL_32;
      }

      v58 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_91:
      v11 = v58 | (v54 << 6);
      v61 = *(*(v8 + 48) + 8 * v11);
      v62 = v61;
      if ((v6 & 1) != 0 && ![v61 allowsContentModifications] || (v150 & 1) != 0 && !objc_msgSend(v62, sel_isDeletable))
      {
LABEL_83:

        v25 = &property descriptor for AlarmEntityRepresentation.absoluteDate;
        continue;
      }

      v63 = &property descriptor for AlarmEntityRepresentation.absoluteDate;
      if ([v28 sourceType] == 5 || !objc_msgSend(v28, sel_sourceType) && objc_msgSend(v62, sel_isSuggestedEventCalendar) && (SGAppCanShowSiriSuggestions(v137) & 1) != 0)
      {
        break;
      }

      if ([v28 sourceType] == 4)
      {
        break;
      }

      if ((v148 & 1) == 0)
      {
        goto LABEL_83;
      }

      v63 = [v28 sourceType];

      v25 = &property descriptor for AlarmEntityRepresentation.absoluteDate;
      if (v63 == 6)
      {
        goto LABEL_104;
      }
    }

    v25 = &property descriptor for AlarmEntityRepresentation.absoluteDate;
LABEL_104:
    *&v136[(v11 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v11;
    v53 = v138 + 1;
    if (!__OFADD__(v138, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_213:
  v70 = sub_2428B49C8();
LABEL_115:
  v71 = v150;
  v133 = v63;
  if (v70)
  {
    v9 = 0;
    *&v147 = v133 & 0xC000000000000001;
    v146 = (v133 & 0xFFFFFFFFFFFFFF8);
    v142 = v133 + 32;
    v144 = v6 & 1;
    LODWORD(v143) = v150 & 1;
    v141 = v70;
    while (1)
    {
      if (v147)
      {
        v72 = MEMORY[0x245D1B5D0](v9, v133);
      }

      else
      {
        if (v9 >= v146[2])
        {
          goto LABEL_210;
        }

        v72 = *(v142 + 8 * v9);
      }

      v5 = v72;
      v73 = __OFADD__(v9++, 1);
      if (v73)
      {
        goto LABEL_209;
      }

      v74 = [v72 calendarsForEntityType_];
      sub_242822BFC(0, &qword_27ECC28F0, 0x277CC59B0);
      sub_242828268();
      v8 = sub_2428B47B8();

      v149 = &v131;
      v76 = MEMORY[0x28223BE20](v75);
      *(&v131 - 16) = v144;
      *(&v131 - 15) = v143;
      v148 = v5;
      if ((v8 & 0xC000000000000001) != 0)
      {
        v77 = MEMORY[0x277D84FA0];
        v153 = MEMORY[0x277D84FA0];
        sub_2428B4988();
        v78 = sub_2428B49F8();
        if (v78)
        {
          v8 = &property descriptor for AlarmEntityRepresentation.absoluteDate;
          do
          {
            v151 = v78;
            swift_dynamicCast();
            v79 = v152;
            if (v6 & 1) != 0 && ![v152 *(v11 + 3608)] || (v71 & 1) != 0 && !objc_msgSend(v79, sel_isDeletable) || (objc_msgSend(v79, sel_isSuggestedEventCalendar) & 1) != 0 || (objc_msgSend(v79, sel_isNaturalLanguageSuggestedEventCalendar))
            {
            }

            else
            {
              v80 = v152;
              v81 = v77[2];
              if (v77[3] <= v81)
              {
                sub_2428AEF30(v81 + 1);
              }

              v77 = v153;
              v82 = *(v153 + 5);
              LODWORD(v5) = v80;
              v83 = sub_2428B48D8();
              v84 = (v77 + 7);
              v85 = -1 << *(v77 + 32);
              v86 = v83 & ~v85;
              v87 = v86 >> 6;
              if (((-1 << v86) & ~v77[(v86 >> 6) + 7]) == 0)
              {
                v89 = 0;
                v90 = (63 - v85) >> 6;
                while (++v87 != v90 || (v89 & 1) == 0)
                {
                  v91 = v87 == v90;
                  if (v87 == v90)
                  {
                    v87 = 0;
                  }

                  v89 |= v91;
                  v92 = *&v84[8 * v87];
                  if (v92 != -1)
                  {
                    v88 = __clz(__rbit64(~v92)) + (v87 << 6);
                    goto LABEL_146;
                  }
                }

LABEL_208:
                __break(1u);
LABEL_209:
                __break(1u);
LABEL_210:
                __break(1u);
LABEL_211:
                __break(1u);
LABEL_212:
                v10 = sub_2428B49C8();
                goto LABEL_3;
              }

              v88 = __clz(__rbit64((-1 << v86) & ~v77[(v86 >> 6) + 7])) | v86 & 0x7FFFFFFFFFFFFFC0;
LABEL_146:
              *&v84[(v88 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v88;
              *(v77[6] + 8 * v88) = v80;
              ++v77[2];
            }

            v78 = sub_2428B49F8();
          }

          while (v78);
        }

        goto LABEL_118;
      }

      v93 = *(v8 + 32);
      v94 = ((1 << v93) + 63) >> 6;
      if ((v93 & 0x3Fu) <= 0xD)
      {
        goto LABEL_148;
      }

      sub_2428B3218();
      if (swift_stdlib_isStackAllocationSafe())
      {
        break;
      }

      v108 = swift_slowAlloc();
      sub_2428B3218();
      v109 = v136;
      v77 = sub_2428A14A4(v108, v94, v8, sub_2428A2D54);
      v136 = v109;
      swift_bridgeObjectRelease_n();
      MEMORY[0x245D1C000](v108, -1, -1);

LABEL_170:
      v71 = v150;
LABEL_118:
      v5 = &v158;
      sub_24289FF58(v77);
      if (v9 == v141)
      {
        goto LABEL_175;
      }
    }

LABEL_148:
    v138 = v94;
    v137 = &v131;
    MEMORY[0x28223BE20](v76);
    v139 = &v131 - ((v95 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v139, v95);
    v140 = 0;
    v96 = 0;
    v5 = (v8 + 56);
    v97 = 1 << *(v8 + 32);
    if (v97 < 64)
    {
      v98 = ~(-1 << v97);
    }

    else
    {
      v98 = -1;
    }

    v99 = v98 & *(v8 + 56);
    v100 = (v97 + 63) >> 6;
    while (v99)
    {
      v101 = __clz(__rbit64(v99));
      v99 &= v99 - 1;
LABEL_160:
      v104 = v101 | (v96 << 6);
      v105 = *(*(v8 + 48) + 8 * v104);
      v106 = v105;
      if (v6 & 1) != 0 && ![v105 allowsContentModifications] || (v150 & 1) != 0 && !objc_msgSend(v106, sel_isDeletable) || (objc_msgSend(v106, sel_isSuggestedEventCalendar))
      {
      }

      else
      {
        v107 = [v106 isNaturalLanguageSuggestedEventCalendar];

        if ((v107 & 1) == 0)
        {
          *&v139[(v104 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v104;
          v73 = __OFADD__(v140++, 1);
          if (v73)
          {
            __break(1u);
          }
        }
      }
    }

    v102 = v96;
    v11 = 0x278D6C000;
    while (1)
    {
      v96 = v102 + 1;
      if (__OFADD__(v102, 1))
      {
        goto LABEL_206;
      }

      if (v96 >= v100)
      {
        break;
      }

      v103 = v5[v96];
      ++v102;
      if (v103)
      {
        v101 = __clz(__rbit64(v103));
        v99 = (v103 - 1) & v103;
        goto LABEL_160;
      }
    }

    v77 = sub_2428AF8CC(v139, v138, v140, v8);

    goto LABEL_170;
  }

LABEL_175:
  v153 = v158;
  if (!(v158 >> 62))
  {
    v110 = *((v158 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_177;
  }

LABEL_215:
  v110 = sub_2428B49C8();
LABEL_177:
  v111 = v145;
  v112 = v133;
  if (v110)
  {
    sub_2428A02E0(&v153, &selRef_ekCalendarComparator);

    v112 = &v157;
    sub_2428A163C(0, 0, v153, 0, 1u);
  }

  else
  {
  }

  if (v111 >> 62)
  {
    v113 = sub_2428B49C8();
    if (!v113)
    {
      goto LABEL_217;
    }

LABEL_182:
    if (v113 < 1)
    {
      __break(1u);
LABEL_227:
      v112 = sub_2427F73D8(0, *(v112 + 2) + 1, 1, v112);
LABEL_220:
      v127 = *(v112 + 2);
      v126 = *(v112 + 3);
      if (v127 >= v126 >> 1)
      {
        v112 = sub_2427F73D8((v126 > 1), v127 + 1, 1, v112);
      }

      *(v112 + 2) = v127 + 1;
      v128 = &v112[24 * v127];
      *(v128 + 4) = v113;
      *(v128 + 5) = 0;
      v128[48] = 2;
      goto LABEL_225;
    }

    v5 = 0;
    v6 = v145 & 0xC000000000000001;
    while (1)
    {
      if (v6)
      {
        v114 = MEMORY[0x245D1B5D0](v5, v145);
      }

      else
      {
        v114 = *(v145 + 8 * v5 + 32);
      }

      v115 = v114;
      v116 = [v114 calendarsForEntityType_];
      sub_242822BFC(0, &qword_27ECC28F0, 0x277CC59B0);
      sub_242828268();
      v117 = sub_2428B47B8();

      if ((v117 & 0xC000000000000001) != 0)
      {
        if (sub_2428B49C8())
        {
          v118 = sub_2428B49C8();
          if (v118)
          {
            v119 = v118;
            if (v118 >= 1)
            {
LABEL_195:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
              v120 = swift_allocObject();
              v121 = _swift_stdlib_malloc_size(v120);
              v122 = v121 - 32;
              if (v121 < 32)
              {
                v122 = v121 - 25;
              }

              v120[2] = v119;
              v120[3] = (2 * (v122 >> 3)) | 1;
            }

            else
            {
              v120 = MEMORY[0x277D84F90];
            }

            v8 = sub_24282537C(&v158, v120 + 4, v119, v117);
            sub_2427C9D4C();
            if (v8 != v119)
            {
              goto LABEL_211;
            }
          }

          else
          {

            v120 = MEMORY[0x277D84F90];
          }

          v123 = v157;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v123 = sub_2427F73D8(0, *(v123 + 2) + 1, 1, v123);
          }

          v9 = *(v123 + 2);
          v124 = *(v123 + 3);
          if (v9 >= v124 >> 1)
          {
            v123 = sub_2427F73D8((v124 > 1), v9 + 1, 1, v123);
          }

          *(v123 + 2) = v9 + 1;
          v125 = &v123[24 * v9];
          *(v125 + 4) = v115;
          *(v125 + 5) = v120;
          v125[48] = 0;
          v157 = v123;
          goto LABEL_185;
        }
      }

      else
      {
        v119 = *(v117 + 16);
        if (v119)
        {
          goto LABEL_195;
        }
      }

LABEL_185:
      v5 = (v5 + 1);
      if (v113 == v5)
      {
        goto LABEL_217;
      }
    }
  }

  v113 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v113)
  {
    goto LABEL_182;
  }

LABEL_217:

  v113 = v156;
  if (v156 >> 62)
  {
    if (!sub_2428B49C8())
    {
      goto LABEL_224;
    }

LABEL_219:
    v112 = v157;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_220;
    }

    goto LABEL_227;
  }

  if (*((v156 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_219;
  }

LABEL_224:

  v112 = v157;
LABEL_225:
  v129 = *MEMORY[0x277D85DE8];
  return v112;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2428A2C84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2428A2CCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t SGAppCanShowSiriSuggestions(void *a1)
{
  v1 = a1;
  v2 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v3 = [v2 containsObject:v1];

  return v3 ^ 1u;
}

uint64_t EditEventIntentRepresentation_v0.target.getter()
{
  v1 = *v0;
  sub_2428B4378();
  return v3;
}

uint64_t sub_2428A2E48(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[7];
  v11[6] = a2[6];
  v11[7] = v3;
  v4 = a2[9];
  v11[8] = a2[8];
  v11[9] = v4;
  v5 = a2[3];
  v11[2] = a2[2];
  v11[3] = v5;
  v6 = a2[5];
  v11[4] = a2[4];
  v11[5] = v6;
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v10 = v2;
  sub_2428A56C4(v11, v9);
  sub_2428B2F38();
  sub_2428B4388();
  return sub_2428A56FC(v11);
}

uint64_t EditEventIntentRepresentation_v0.target.setter()
{
  v1 = *v0;
  sub_2428B2F38();
  sub_2428B4388();
}

uint64_t (*EditEventIntentRepresentation_v0.target.modify(uint64_t *a1))()
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

uint64_t EditEventIntentRepresentation_v0.title.getter()
{
  v1 = *(v0 + 8);
  sub_2428B4378();
  return v3;
}

uint64_t sub_2428A2FE0(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[7];
  v11[6] = a2[6];
  v11[7] = v4;
  v5 = a2[9];
  v11[8] = a2[8];
  v11[9] = v5;
  v6 = a2[3];
  v11[2] = a2[2];
  v11[3] = v6;
  v7 = a2[5];
  v11[4] = a2[4];
  v11[5] = v7;
  v8 = a2[1];
  v11[0] = *a2;
  v11[1] = v8;
  v10[20] = v3;
  v10[21] = v2;
  sub_2428B3218();
  sub_2428A56C4(v11, v10);
  sub_2428B4388();
  return sub_2428A56FC(v11);
}

uint64_t (*EditEventIntentRepresentation_v0.title.modify(uint64_t *a1))()
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

uint64_t EditEventIntentRepresentation_v0.structuredLocation.getter()
{
  v1 = *(v0 + 16);
  sub_2428B4378();
  return v3;
}

uint64_t sub_2428A3158(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[7];
  v11[6] = a2[6];
  v11[7] = v3;
  v4 = a2[9];
  v11[8] = a2[8];
  v11[9] = v4;
  v5 = a2[3];
  v11[2] = a2[2];
  v11[3] = v5;
  v6 = a2[5];
  v11[4] = a2[4];
  v11[5] = v6;
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v10 = v2;
  sub_2428A56C4(v11, v9);
  sub_2428B2F38();
  sub_2428B4388();
  return sub_2428A56FC(v11);
}

uint64_t EditEventIntentRepresentation_v0.structuredLocation.setter()
{
  v1 = *(v0 + 16);
  sub_2428B2F38();
  sub_2428B4388();
}

uint64_t (*EditEventIntentRepresentation_v0.structuredLocation.modify(uint64_t *a1))()
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

uint64_t sub_2428A32E0(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v17[-v9];
  sub_2427E0918(a1, &v17[-v9], &qword_27ECC26F0, &unk_2428B7960);
  v11 = a2[7];
  v18[6] = a2[6];
  v18[7] = v11;
  v12 = a2[9];
  v18[8] = a2[8];
  v18[9] = v12;
  v13 = a2[3];
  v18[2] = a2[2];
  v18[3] = v13;
  v14 = a2[5];
  v18[4] = a2[4];
  v18[5] = v14;
  v15 = a2[1];
  v18[0] = *a2;
  v18[1] = v15;
  sub_2427E0918(v10, v8, &qword_27ECC26F0, &unk_2428B7960);
  sub_2428A56C4(v18, v17);
  sub_2428B4388();
  sub_2427E0980(v10, &qword_27ECC26F0, &unk_2428B7960);
  return sub_2428A56FC(v18);
}

uint64_t EditEventIntentRepresentation_v0.startDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 24);
  sub_2427E0918(a1, &v8 - v6, &qword_27ECC26F0, &unk_2428B7960);
  sub_2428B4388();
  return sub_2427E0980(a1, &qword_27ECC26F0, &unk_2428B7960);
}

uint64_t (*EditEventIntentRepresentation_v0.startDate.modify(uint64_t *a1))()
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

uint64_t sub_2428A3594(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v17[-v9];
  sub_2427E0918(a1, &v17[-v9], &qword_27ECC26F0, &unk_2428B7960);
  v11 = a2[7];
  v18[6] = a2[6];
  v18[7] = v11;
  v12 = a2[9];
  v18[8] = a2[8];
  v18[9] = v12;
  v13 = a2[3];
  v18[2] = a2[2];
  v18[3] = v13;
  v14 = a2[5];
  v18[4] = a2[4];
  v18[5] = v14;
  v15 = a2[1];
  v18[0] = *a2;
  v18[1] = v15;
  sub_2427E0918(v10, v8, &qword_27ECC26F0, &unk_2428B7960);
  sub_2428A56C4(v18, v17);
  sub_2428B4388();
  sub_2427E0980(v10, &qword_27ECC26F0, &unk_2428B7960);
  return sub_2428A56FC(v18);
}

uint64_t EditEventIntentRepresentation_v0.endDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 32);
  sub_2427E0918(a1, &v8 - v6, &qword_27ECC26F0, &unk_2428B7960);
  sub_2428B4388();
  return sub_2427E0980(a1, &qword_27ECC26F0, &unk_2428B7960);
}

uint64_t (*EditEventIntentRepresentation_v0.endDate.modify(uint64_t *a1))()
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

uint64_t EditEventIntentRepresentation_v0.isAllDay.getter()
{
  v1 = *(v0 + 40);
  sub_2428B4378();
  return v3;
}

uint64_t sub_2428A3858(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[7];
  v10[6] = a2[6];
  v10[7] = v3;
  v4 = a2[9];
  v10[8] = a2[8];
  v10[9] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  v9[167] = v2;
  sub_2428A56C4(v10, v9);
  sub_2428B4388();
  return sub_2428A56FC(v10);
}

uint64_t (*EditEventIntentRepresentation_v0.isAllDay.modify(uint64_t *a1))()
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

uint64_t EditEventIntentRepresentation_v0.floatingTimeZoneID.getter()
{
  v1 = *(v0 + 48);
  sub_2428B4378();
  return v3;
}

uint64_t sub_2428A39D0(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[7];
  v11[6] = a2[6];
  v11[7] = v4;
  v5 = a2[9];
  v11[8] = a2[8];
  v11[9] = v5;
  v6 = a2[3];
  v11[2] = a2[2];
  v11[3] = v6;
  v7 = a2[5];
  v11[4] = a2[4];
  v11[5] = v7;
  v8 = a2[1];
  v11[0] = *a2;
  v11[1] = v8;
  v10[20] = v3;
  v10[21] = v2;
  sub_2428B3218();
  sub_2428A56C4(v11, v10);
  sub_2428B4388();
  return sub_2428A56FC(v11);
}

uint64_t (*EditEventIntentRepresentation_v0.floatingTimeZoneID.modify(uint64_t *a1))()
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

uint64_t EditEventIntentRepresentation_v0.recurrenceRule.getter()
{
  v1 = *(v0 + 56);
  sub_2428B4378();
  return v3;
}

uint64_t sub_2428A3B48(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[7];
  v11[6] = a2[6];
  v11[7] = v3;
  v4 = a2[9];
  v11[8] = a2[8];
  v11[9] = v4;
  v5 = a2[3];
  v11[2] = a2[2];
  v11[3] = v5;
  v6 = a2[5];
  v11[4] = a2[4];
  v11[5] = v6;
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v10 = v2;
  sub_2428A56C4(v11, v9);
  sub_2428B2F38();
  sub_2428B4388();
  return sub_2428A56FC(v11);
}

uint64_t EditEventIntentRepresentation_v0.recurrenceRule.setter()
{
  v1 = *(v0 + 56);
  sub_2428B2F38();
  sub_2428B4388();
}

uint64_t (*EditEventIntentRepresentation_v0.recurrenceRule.modify(uint64_t *a1))()
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

uint64_t EditEventIntentRepresentation_v0.addAttendees.getter()
{
  v1 = *(v0 + 64);
  sub_2428B4378();
  return v3;
}

uint64_t sub_2428A3CE0(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[7];
  v11[6] = a2[6];
  v11[7] = v3;
  v4 = a2[9];
  v11[8] = a2[8];
  v11[9] = v4;
  v5 = a2[3];
  v11[2] = a2[2];
  v11[3] = v5;
  v6 = a2[5];
  v11[4] = a2[4];
  v11[5] = v6;
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v10 = v2;
  sub_2428B3218();
  sub_2428A56C4(v11, v9);
  sub_2428B4388();
  return sub_2428A56FC(v11);
}

uint64_t (*EditEventIntentRepresentation_v0.addAttendees.modify(uint64_t *a1))()
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

uint64_t EditEventIntentRepresentation_v0.removeAttendees.getter()
{
  v1 = *(v0 + 72);
  sub_2428B4378();
  return v3;
}

uint64_t sub_2428A3E5C(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[7];
  v11[6] = a2[6];
  v11[7] = v3;
  v4 = a2[9];
  v11[8] = a2[8];
  v11[9] = v4;
  v5 = a2[3];
  v11[2] = a2[2];
  v11[3] = v5;
  v6 = a2[5];
  v11[4] = a2[4];
  v11[5] = v6;
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v10 = v2;
  sub_2428B3218();
  sub_2428A56C4(v11, v9);
  sub_2428B4388();
  return sub_2428A56FC(v11);
}

uint64_t (*EditEventIntentRepresentation_v0.removeAttendees.modify(uint64_t *a1))()
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

uint64_t EditEventIntentRepresentation_v0.calendar.getter()
{
  v1 = *(v0 + 80);
  sub_2428B4378();
  return v3;
}

uint64_t sub_2428A3FD8(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[7];
  v11[6] = a2[6];
  v11[7] = v3;
  v4 = a2[9];
  v11[8] = a2[8];
  v11[9] = v4;
  v5 = a2[3];
  v11[2] = a2[2];
  v11[3] = v5;
  v6 = a2[5];
  v11[4] = a2[4];
  v11[5] = v6;
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v10 = v2;
  sub_2428A56C4(v11, v9);
  sub_2428B2F38();
  sub_2428B4388();
  return sub_2428A56FC(v11);
}

uint64_t EditEventIntentRepresentation_v0.calendar.setter()
{
  v1 = *(v0 + 80);
  sub_2428B2F38();
  sub_2428B4388();
}

uint64_t (*EditEventIntentRepresentation_v0.calendar.modify(uint64_t *a1))()
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

uint64_t sub_2428A4160(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[7];
  v10[6] = a2[6];
  v10[7] = v3;
  v4 = a2[9];
  v10[8] = a2[8];
  v10[9] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  v9[167] = v2;
  sub_2428A56C4(v10, v9);
  sub_2428B4388();
  return sub_2428A56FC(v10);
}

uint64_t EditEventIntentRepresentation_v0.availability.setter(char *a1)
{
  v2 = *(v1 + 88);
  v4 = *a1;
  return sub_2428B4388();
}

uint64_t (*EditEventIntentRepresentation_v0.availability.modify(uint64_t *a1))()
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

uint64_t sub_2428A42CC(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[7];
  v10[6] = a2[6];
  v10[7] = v3;
  v4 = a2[9];
  v10[8] = a2[8];
  v10[9] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  v9[167] = v2;
  sub_2428A56C4(v10, v9);
  sub_2428B4388();
  return sub_2428A56FC(v10);
}

uint64_t EditEventIntentRepresentation_v0.privacyLevel.setter(char *a1)
{
  v2 = *(v1 + 96);
  v4 = *a1;
  return sub_2428B4388();
}

uint64_t (*EditEventIntentRepresentation_v0.privacyLevel.modify(uint64_t *a1))()
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

uint64_t EditEventIntentRepresentation_v0.travelTime.getter()
{
  v1 = *(v0 + 104);
  sub_2428B4378();
  return v3;
}

uint64_t sub_2428A444C(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a2[7];
  v12[6] = a2[6];
  v12[7] = v4;
  v5 = a2[9];
  v12[8] = a2[8];
  v12[9] = v5;
  v6 = a2[3];
  v12[2] = a2[2];
  v12[3] = v6;
  v7 = a2[5];
  v12[4] = a2[4];
  v12[5] = v7;
  v8 = a2[1];
  v12[0] = *a2;
  v12[1] = v8;
  v10[20] = v2;
  v11 = v3;
  sub_2428A56C4(v12, v10);
  sub_2428B4388();
  return sub_2428A56FC(v12);
}

uint64_t (*EditEventIntentRepresentation_v0.travelTime.modify(uint64_t *a1))()
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
  return sub_2427CBEA8;
}

uint64_t EditEventIntentRepresentation_v0.alarms.getter()
{
  v1 = *(v0 + 112);
  sub_2428B4378();
  return v3;
}

uint64_t sub_2428A45D0(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[7];
  v11[6] = a2[6];
  v11[7] = v3;
  v4 = a2[9];
  v11[8] = a2[8];
  v11[9] = v4;
  v5 = a2[3];
  v11[2] = a2[2];
  v11[3] = v5;
  v6 = a2[5];
  v11[4] = a2[4];
  v11[5] = v6;
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v10 = v2;
  sub_2428B3218();
  sub_2428A56C4(v11, v9);
  sub_2428B4388();
  return sub_2428A56FC(v11);
}

uint64_t (*EditEventIntentRepresentation_v0.alarms.modify(uint64_t *a1))()
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

uint64_t EditEventIntentRepresentation_v0.notes.getter()
{
  v1 = *(v0 + 120);
  sub_2428B4378();
  return v3;
}

uint64_t sub_2428A474C(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[7];
  v11[6] = a2[6];
  v11[7] = v4;
  v5 = a2[9];
  v11[8] = a2[8];
  v11[9] = v5;
  v6 = a2[3];
  v11[2] = a2[2];
  v11[3] = v6;
  v7 = a2[5];
  v11[4] = a2[4];
  v11[5] = v7;
  v8 = a2[1];
  v11[0] = *a2;
  v11[1] = v8;
  v10[20] = v3;
  v10[21] = v2;
  sub_2428B3218();
  sub_2428A56C4(v11, v10);
  sub_2428B4388();
  return sub_2428A56FC(v11);
}

uint64_t (*EditEventIntentRepresentation_v0.notes.modify(uint64_t *a1))()
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

uint64_t sub_2428A48B4(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[7];
  v10[6] = a2[6];
  v10[7] = v3;
  v4 = a2[9];
  v10[8] = a2[8];
  v10[9] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  v9[167] = v2;
  sub_2428A56C4(v10, v9);
  sub_2428B4388();
  return sub_2428A56FC(v10);
}

uint64_t EditEventIntentRepresentation_v0.status.setter(char *a1)
{
  v2 = *(v1 + 128);
  v4 = *a1;
  return sub_2428B4388();
}

uint64_t (*EditEventIntentRepresentation_v0.status.modify(uint64_t *a1))()
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
  v4 = *(v1 + 128);
  *(v3 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t sub_2428A4A20(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v17[-v9];
  sub_2427E0918(a1, &v17[-v9], &qword_27ECC2CE0, &qword_2428B6560);
  v11 = a2[7];
  v18[6] = a2[6];
  v18[7] = v11;
  v12 = a2[9];
  v18[8] = a2[8];
  v18[9] = v12;
  v13 = a2[3];
  v18[2] = a2[2];
  v18[3] = v13;
  v14 = a2[5];
  v18[4] = a2[4];
  v18[5] = v14;
  v15 = a2[1];
  v18[0] = *a2;
  v18[1] = v15;
  sub_2427E0918(v10, v8, &qword_27ECC2CE0, &qword_2428B6560);
  sub_2428A56C4(v18, v17);
  sub_2428B4388();
  sub_2427E0980(v10, &qword_27ECC2CE0, &qword_2428B6560);
  return sub_2428A56FC(v18);
}

uint64_t EditEventIntentRepresentation_v0.url.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 136);
  sub_2427E0918(a1, &v8 - v6, &qword_27ECC2CE0, &qword_2428B6560);
  sub_2428B4388();
  return sub_2427E0980(a1, &qword_27ECC2CE0, &qword_2428B6560);
}

uint64_t (*EditEventIntentRepresentation_v0.url.modify(uint64_t *a1))()
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
  v4 = *(v1 + 136);
  *(v3 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t sub_2428A4CD4(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[7];
  v10[6] = a2[6];
  v10[7] = v3;
  v4 = a2[9];
  v10[8] = a2[8];
  v10[9] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  v9[167] = v2;
  sub_2428A56C4(v10, v9);
  sub_2428B4388();
  return sub_2428A56FC(v10);
}

uint64_t EditEventIntentRepresentation_v0.participationStatus.setter(char *a1)
{
  v2 = *(v1 + 144);
  v4 = *a1;
  return sub_2428B4388();
}

uint64_t (*EditEventIntentRepresentation_v0.participationStatus.modify(uint64_t *a1))()
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
  v4 = *(v1 + 144);
  *(v3 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t sub_2428A4E40(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[7];
  v10[6] = a2[6];
  v10[7] = v3;
  v4 = a2[9];
  v10[8] = a2[8];
  v10[9] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  v9[167] = v2;
  sub_2428A56C4(v10, v9);
  sub_2428B4388();
  return sub_2428A56FC(v10);
}

uint64_t EditEventIntentRepresentation_v0.span.setter(char *a1)
{
  v2 = *(v1 + 152);
  v4 = *a1;
  return sub_2428B4388();
}

uint64_t (*EditEventIntentRepresentation_v0.span.modify(uint64_t *a1))()
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
  v4 = *(v1 + 152);
  *(v3 + 32) = sub_2428B4368();
  return sub_2427CD67C;
}

uint64_t EditEventIntentRepresentation_v0.init(target:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v82 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v81 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v80 = &v79 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v79 - v13;
  v83 = 0;
  v84 = 0;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2140, &unk_2428B7980);
  v15 = *(v79 + 48);
  v16 = *(v79 + 52);
  swift_allocObject();
  a2[1] = sub_2428B4358();
  v83 = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4E10, &qword_2428C5098);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  a2[2] = sub_2428B4358();
  v20 = sub_2428B3688();
  v21 = *(*(v20 - 8) + 56);
  v21(v14, 1, 1, v20);
  sub_2427E0918(v14, v12, &qword_27ECC26F0, &unk_2428B7960);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2148, &unk_2428B8730);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_2428B4358();
  sub_2427E0980(v14, &qword_27ECC26F0, &unk_2428B7960);
  a2[3] = v25;
  v21(v14, 1, 1, v20);
  sub_2427E0918(v14, v12, &qword_27ECC26F0, &unk_2428B7960);
  v26 = *(v22 + 48);
  v27 = *(v22 + 52);
  swift_allocObject();
  v28 = sub_2428B4358();
  sub_2427E0980(v14, &qword_27ECC26F0, &unk_2428B7960);
  a2[4] = v28;
  LOBYTE(v83) = 2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2150, &unk_2428B7990);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  a2[5] = sub_2428B4358();
  v83 = 0;
  v84 = 0;
  v32 = v79;
  v33 = *(v79 + 48);
  v34 = *(v79 + 52);
  swift_allocObject();
  a2[6] = sub_2428B4358();
  v83 = 0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4E18, &qword_2428C50A0);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  a2[7] = sub_2428B4358();
  v83 = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4E20, &qword_2428C50A8);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  a2[8] = sub_2428B4358();
  v83 = 0;
  v41 = *(v38 + 48);
  v42 = *(v38 + 52);
  swift_allocObject();
  a2[9] = sub_2428B4358();
  v83 = 0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2168, &unk_2428C50B0);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  a2[10] = sub_2428B4358();
  LOBYTE(v83) = 5;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2170, &unk_2428B79B0);
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  a2[11] = sub_2428B4358();
  LOBYTE(v83) = 4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2178, &unk_2428C50C0);
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  a2[12] = sub_2428B4358();
  v83 = 0;
  LOBYTE(v84) = 1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2180, &qword_2428B79C0);
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();
  a2[13] = sub_2428B4358();
  v83 = 0;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4E28, &qword_2428C50D0);
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  swift_allocObject();
  a2[14] = sub_2428B4358();
  v83 = 0;
  v84 = 0;
  v58 = *(v32 + 48);
  v59 = *(v32 + 52);
  swift_allocObject();
  a2[15] = sub_2428B4358();
  LOBYTE(v83) = 4;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2488, &unk_2428B8748);
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  swift_allocObject();
  a2[16] = sub_2428B4358();
  v63 = sub_2428B35D8();
  v64 = v80;
  (*(*(v63 - 8) + 56))(v80, 1, 1, v63);
  sub_2427E0918(v64, v81, &qword_27ECC2CE0, &qword_2428B6560);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2190, &qword_2428B79D0);
  v66 = *(v65 + 48);
  v67 = *(v65 + 52);
  swift_allocObject();
  v68 = sub_2428B4358();
  sub_2427E0980(v64, &qword_27ECC2CE0, &qword_2428B6560);
  a2[17] = v68;
  LOBYTE(v83) = 8;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4E30, &qword_2428C50D8);
  v70 = *(v69 + 48);
  v71 = *(v69 + 52);
  swift_allocObject();
  a2[18] = sub_2428B4358();
  LOBYTE(v83) = 3;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2498, &unk_2428B8760);
  v73 = *(v72 + 48);
  v74 = *(v72 + 52);
  swift_allocObject();
  a2[19] = sub_2428B4358();
  v83 = v82;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1DA8, &qword_2428B64C0);
  v76 = *(v75 + 48);
  v77 = *(v75 + 52);
  swift_allocObject();
  result = sub_2428B4358();
  *a2 = result;
  return result;
}

uint64_t sub_2428A5604(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_2428A564C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t CreateEventIntentRepresentation_v0.title.getter()
{
  v1 = *v0;
  sub_2428B4378();
  return v3;
}

uint64_t sub_2428A5798(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  v13 = a2[1];
  v4 = a2[4];
  v5 = a2[7];
  v14 = a2[6];
  v15 = *a1;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  v11 = a2[11];
  v12 = a2[12];
  v6 = a2[14];
  v16 = a1[1];
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
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B4388();
}

uint64_t (*CreateEventIntentRepresentation_v0.title.modify(uint64_t *a1))()
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

uint64_t CreateEventIntentRepresentation_v0.structuredLocation.getter()
{
  v1 = *(v0 + 8);
  sub_2428B4378();
  return v3;
}

uint64_t sub_2428A5A38(uint64_t *a1, void *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v14 = a2[4];
  v15 = a2[5];
  v16 = *a1;
  v4 = a2[6];
  v5 = a2[7];
  v10 = a2[8];
  v11 = a2[9];
  v12 = a2[10];
  v13 = a2[11];
  v6 = a2[12];
  v7 = a2[13];
  v8 = a2[14];
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
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B4388();
}

uint64_t CreateEventIntentRepresentation_v0.structuredLocation.setter()
{
  v1 = *(v0 + 8);
  sub_2428B2F38();
  sub_2428B4388();
}

uint64_t (*CreateEventIntentRepresentation_v0.structuredLocation.modify(uint64_t *a1))()
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

uint64_t sub_2428A5CD4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - v9;
  sub_2427E0918(a1, v21 - v9, &qword_27ECC26F0, &unk_2428B7960);
  v11 = *a2;
  v21[10] = a2[1];
  v21[11] = v11;
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  v21[8] = a2[5];
  v21[9] = v13;
  v15 = a2[6];
  v21[12] = a2[7];
  v21[13] = v14;
  v16 = a2[9];
  v21[1] = a2[8];
  v21[2] = v16;
  v17 = a2[11];
  v21[3] = a2[10];
  v21[4] = v17;
  v18 = a2[13];
  v21[5] = a2[12];
  v21[6] = v18;
  v21[7] = v15;
  v19 = a2[14];
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
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B4388();
  sub_2427E0980(v10, &qword_27ECC26F0, &unk_2428B7960);
}

uint64_t CreateEventIntentRepresentation_v0.startDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 16);
  sub_2427E0918(a1, &v8 - v6, &qword_27ECC26F0, &unk_2428B7960);
  sub_2428B4388();
  return sub_2427E0980(a1, &qword_27ECC26F0, &unk_2428B7960);
}

uint64_t (*CreateEventIntentRepresentation_v0.startDate.modify(uint64_t *a1))()
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

uint64_t sub_2428A60A0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - v9;
  sub_2427E0918(a1, v21 - v9, &qword_27ECC26F0, &unk_2428B7960);
  v11 = *a2;
  v21[10] = a2[1];
  v21[11] = v11;
  v13 = a2[2];
  v12 = a2[3];
  v14 = a2[4];
  v21[8] = a2[5];
  v21[9] = v13;
  v15 = a2[6];
  v21[12] = a2[7];
  v21[13] = v14;
  v16 = a2[9];
  v21[1] = a2[8];
  v21[2] = v16;
  v17 = a2[11];
  v21[3] = a2[10];
  v21[4] = v17;
  v18 = a2[13];
  v21[5] = a2[12];
  v21[6] = v18;
  v21[7] = v15;
  v19 = a2[14];
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
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B4388();
  sub_2427E0980(v10, &qword_27ECC26F0, &unk_2428B7960);
}

uint64_t CreateEventIntentRepresentation_v0.endDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 24);
  sub_2427E0918(a1, &v8 - v6, &qword_27ECC26F0, &unk_2428B7960);
  sub_2428B4388();
  return sub_2427E0980(a1, &qword_27ECC26F0, &unk_2428B7960);
}

uint64_t (*CreateEventIntentRepresentation_v0.endDate.modify(uint64_t *a1))()
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

uint64_t CreateEventIntentRepresentation_v0.allDay.getter()
{
  v1 = *(v0 + 32);
  sub_2428B4378();
  return v3;
}

uint64_t sub_2428A647C(char *a1, uint64_t *a2)
{
  v16 = a2[1];
  v17 = *a2;
  v14 = a2[3];
  v15 = a2[2];
  v2 = a2[4];
  v3 = a2[5];
  v12 = a2[7];
  v13 = a2[6];
  v4 = a2[8];
  v8 = a2[9];
  v9 = a2[10];
  v10 = a2[11];
  v5 = a2[13];
  v11 = a2[12];
  v6 = a2[14];
  v18 = *a1;
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
  sub_2428B2F38();
  sub_2428B4388();
}

uint64_t (*CreateEventIntentRepresentation_v0.allDay.modify(uint64_t *a1))()
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

uint64_t CreateEventIntentRepresentation_v0.floatingTimeZoneID.getter()
{
  v1 = *(v0 + 40);
  sub_2428B4378();
  return v3;
}

uint64_t sub_2428A6708(uint64_t *a1, uint64_t *a2)
{
  v15 = a2[1];
  v16 = *a2;
  v13 = a2[3];
  v14 = a2[2];
  v2 = a2[5];
  v17 = a2[4];
  v18 = *a1;
  v3 = a2[7];
  v7 = a2[8];
  v8 = a2[9];
  v9 = a2[10];
  v10 = a2[11];
  v4 = a2[13];
  v11 = a2[12];
  v12 = a2[6];
  v5 = a2[14];
  v19 = a1[1];
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
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B4388();
}

uint64_t (*CreateEventIntentRepresentation_v0.floatingTimeZoneID.modify(uint64_t *a1))()
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

uint64_t CreateEventIntentRepresentation_v0.recurrenceRule.getter()
{
  v1 = *(v0 + 48);
  sub_2428B4378();
  return v3;
}

uint64_t sub_2428A699C(uint64_t *a1, uint64_t *a2)
{
  v16 = a2[1];
  v17 = *a2;
  v14 = a2[3];
  v15 = a2[2];
  v2 = a2[4];
  v3 = a2[6];
  v4 = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  v11 = a2[11];
  v5 = a2[13];
  v12 = a2[12];
  v13 = a2[5];
  v6 = a2[14];
  v18 = *a1;
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
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B4388();
}

uint64_t CreateEventIntentRepresentation_v0.recurrenceRule.setter()
{
  v1 = *(v0 + 48);
  sub_2428B2F38();
  sub_2428B4388();
}

uint64_t (*CreateEventIntentRepresentation_v0.recurrenceRule.modify(uint64_t *a1))()
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

uint64_t CreateEventIntentRepresentation_v0.attendees.getter()
{
  v1 = *(v0 + 56);
  sub_2428B4378();
  return v3;
}

uint64_t sub_2428A6C44(uint64_t *a1, uint64_t *a2)
{
  v16 = a2[1];
  v17 = *a2;
  v14 = a2[3];
  v15 = a2[2];
  v2 = a2[4];
  v4 = a2[6];
  v3 = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  v11 = a2[11];
  v5 = a2[13];
  v12 = a2[12];
  v13 = a2[5];
  v6 = a2[14];
  v18 = *a1;
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
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B4388();
}

uint64_t (*CreateEventIntentRepresentation_v0.attendees.modify(uint64_t *a1))()
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

uint64_t CreateEventIntentRepresentation_v0.calendar.getter()
{
  v1 = *(v0 + 64);
  sub_2428B4378();
  return v3;
}

uint64_t sub_2428A6ED8(uint64_t *a1, uint64_t *a2)
{
  v16 = a2[1];
  v17 = *a2;
  v14 = a2[3];
  v15 = a2[2];
  v2 = a2[4];
  v3 = a2[6];
  v4 = a2[7];
  v5 = a2[8];
  v8 = a2[9];
  v9 = a2[10];
  v10 = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  v13 = a2[5];
  v6 = a2[14];
  v18 = *a1;
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
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B4388();
}

uint64_t CreateEventIntentRepresentation_v0.calendar.setter()
{
  v1 = *(v0 + 64);
  sub_2428B2F38();
  sub_2428B4388();
}

uint64_t (*CreateEventIntentRepresentation_v0.calendar.modify(uint64_t *a1))()
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

uint64_t sub_2428A7170(char *a1, uint64_t *a2)
{
  v16 = a2[1];
  v17 = *a2;
  v14 = a2[3];
  v15 = a2[2];
  v2 = a2[5];
  v3 = a2[6];
  v4 = a2[7];
  v6 = a2[8];
  v5 = a2[9];
  v9 = a2[10];
  v10 = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  v13 = a2[4];
  v7 = a2[14];
  v18 = *a1;
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
  sub_2428B2F38();
  sub_2428B4388();
}

uint64_t CreateEventIntentRepresentation_v0.availability.setter(char *a1)
{
  v2 = *(v1 + 72);
  v4 = *a1;
  return sub_2428B4388();
}

uint64_t (*CreateEventIntentRepresentation_v0.availability.modify(uint64_t *a1))()
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

uint64_t sub_2428A73F0(char *a1, uint64_t *a2)
{
  v16 = a2[1];
  v17 = *a2;
  v14 = a2[3];
  v15 = a2[2];
  v2 = a2[5];
  v3 = a2[6];
  v4 = a2[7];
  v5 = a2[8];
  v6 = a2[10];
  v9 = a2[9];
  v10 = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  v13 = a2[4];
  v7 = a2[14];
  v18 = *a1;
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
  sub_2428B2F38();
  sub_2428B4388();
}

uint64_t CreateEventIntentRepresentation_v0.privacyLevel.setter(char *a1)
{
  v2 = *(v1 + 80);
  v4 = *a1;
  return sub_2428B4388();
}

uint64_t (*CreateEventIntentRepresentation_v0.privacyLevel.modify(uint64_t *a1))()
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

uint64_t CreateEventIntentRepresentation_v0.travelTime.getter()
{
  v1 = *(v0 + 88);
  sub_2428B4378();
  return v3;
}

uint64_t sub_2428A7684(uint64_t *a1, uint64_t *a2)
{
  v16 = a2[1];
  v17 = *a2;
  v14 = a2[3];
  v15 = a2[2];
  v2 = a2[5];
  v3 = a2[6];
  v4 = a2[7];
  v5 = a2[8];
  v6 = a2[11];
  v9 = a2[9];
  v10 = a2[10];
  v11 = a2[12];
  v12 = a2[13];
  v13 = a2[4];
  v7 = a2[14];
  v18 = *a1;
  v19 = *(a1 + 8);
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
  sub_2428B2F38();
  sub_2428B4388();
}

uint64_t (*CreateEventIntentRepresentation_v0.travelTime.modify(uint64_t *a1))()
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
  return sub_2427CBEA8;
}

uint64_t CreateEventIntentRepresentation_v0.alarms.getter()
{
  v1 = *(v0 + 96);
  sub_2428B4378();
  return v3;
}

uint64_t sub_2428A7924(uint64_t *a1, uint64_t *a2)
{
  v16 = a2[1];
  v17 = *a2;
  v14 = a2[3];
  v15 = a2[2];
  v2 = a2[4];
  v3 = a2[6];
  v4 = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  v11 = a2[11];
  v5 = a2[12];
  v12 = a2[13];
  v13 = a2[5];
  v6 = a2[14];
  v18 = *a1;
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
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B4388();
}

uint64_t (*CreateEventIntentRepresentation_v0.alarms.modify(uint64_t *a1))()
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

uint64_t CreateEventIntentRepresentation_v0.notes.getter()
{
  v1 = *(v0 + 104);
  sub_2428B4378();
  return v3;
}

uint64_t sub_2428A7BBC(uint64_t *a1, uint64_t *a2)
{
  v16 = a2[1];
  v17 = *a2;
  v14 = a2[3];
  v15 = a2[2];
  v2 = a2[4];
  v3 = a2[6];
  v4 = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  v11 = a2[11];
  v5 = a2[13];
  v12 = a2[12];
  v13 = a2[5];
  v6 = a2[14];
  v18 = *a1;
  v19 = a1[1];
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
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B4388();
}

uint64_t (*CreateEventIntentRepresentation_v0.notes.modify(uint64_t *a1))()
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

uint64_t sub_2428A7E44(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - v9;
  sub_2427E0918(a1, v20 - v9, &qword_27ECC2CE0, &qword_2428B6560);
  v11 = *a2;
  v20[11] = a2[1];
  v20[12] = v11;
  v12 = a2[2];
  v20[9] = a2[3];
  v20[10] = v12;
  v13 = a2[5];
  v20[13] = a2[4];
  v14 = a2[7];
  v20[7] = a2[6];
  v20[8] = v13;
  v15 = a2[9];
  v20[1] = a2[8];
  v20[2] = v15;
  v16 = a2[11];
  v20[3] = a2[10];
  v20[4] = v16;
  v17 = a2[13];
  v20[5] = a2[12];
  v20[6] = v17;
  v18 = a2[14];
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
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B4388();
  sub_2427E0980(v10, &qword_27ECC2CE0, &qword_2428B6560);
}

uint64_t CreateEventIntentRepresentation_v0.url.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 112);
  sub_2427E0918(a1, &v8 - v6, &qword_27ECC2CE0, &qword_2428B6560);
  sub_2428B4388();
  return sub_2427E0980(a1, &qword_27ECC2CE0, &qword_2428B6560);
}

uint64_t (*CreateEventIntentRepresentation_v0.url.modify(uint64_t *a1))()
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

uint64_t CreateEventIntentRepresentation_v0.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v67 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v66 = &v64 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v64 - v12;
  v68 = 0;
  v69 = 0;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2140, &unk_2428B7980);
  v14 = *(v65 + 48);
  v15 = *(v65 + 52);
  swift_allocObject();
  *a1 = sub_2428B4358();
  v68 = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4E10, &qword_2428C5098);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  a1[1] = sub_2428B4358();
  v19 = sub_2428B3688();
  v20 = *(*(v19 - 8) + 56);
  v20(v13, 1, 1, v19);
  sub_2427E0918(v13, v11, &qword_27ECC26F0, &unk_2428B7960);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2148, &unk_2428B8730);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = sub_2428B4358();
  sub_2427E0980(v13, &qword_27ECC26F0, &unk_2428B7960);
  a1[2] = v24;
  v20(v13, 1, 1, v19);
  sub_2427E0918(v13, v11, &qword_27ECC26F0, &unk_2428B7960);
  v25 = *(v21 + 48);
  v26 = *(v21 + 52);
  swift_allocObject();
  v27 = sub_2428B4358();
  sub_2427E0980(v13, &qword_27ECC26F0, &unk_2428B7960);
  a1[3] = v27;
  LOBYTE(v68) = 2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2150, &unk_2428B7990);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  a1[4] = sub_2428B4358();
  v68 = 0;
  v69 = 0;
  v31 = v65;
  v32 = *(v65 + 48);
  v33 = *(v65 + 52);
  swift_allocObject();
  a1[5] = sub_2428B4358();
  v68 = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4E18, &qword_2428C50A0);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  a1[6] = sub_2428B4358();
  v68 = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4E20, &qword_2428C50A8);
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  a1[7] = sub_2428B4358();
  v68 = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2168, &unk_2428C50B0);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  a1[8] = sub_2428B4358();
  LOBYTE(v68) = 5;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2170, &unk_2428B79B0);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  a1[9] = sub_2428B4358();
  LOBYTE(v68) = 4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2178, &unk_2428C50C0);
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  a1[10] = sub_2428B4358();
  v68 = 0;
  LOBYTE(v69) = 1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2180, &qword_2428B79C0);
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  a1[11] = sub_2428B4358();
  v68 = 0;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4E28, &qword_2428C50D0);
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();
  a1[12] = sub_2428B4358();
  v68 = 0;
  v69 = 0;
  v55 = *(v31 + 48);
  v56 = *(v31 + 52);
  swift_allocObject();
  a1[13] = sub_2428B4358();
  v57 = sub_2428B35D8();
  v58 = v66;
  (*(*(v57 - 8) + 56))(v66, 1, 1, v57);
  sub_2427E0918(v58, v67, &qword_27ECC2CE0, &qword_2428B6560);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2190, &qword_2428B79D0);
  v60 = *(v59 + 48);
  v61 = *(v59 + 52);
  swift_allocObject();
  v62 = sub_2428B4358();
  result = sub_2427E0980(v58, &qword_27ECC2CE0, &qword_2428B6560);
  a1[14] = v62;
  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_2428A878C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_2428A87D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2428A8840@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v100 = &v90 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2230, &qword_2428B6EF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v99 = &v90 - v8;
  v9 = sub_2428B2B78();
  v104 = *(v9 - 8);
  v105 = v9;
  v10 = *(v104 + 64);
  MEMORY[0x28223BE20](v9);
  v103 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2428B2BA8();
  v112 = *(v12 - 8);
  v113 = v12;
  v13 = *(v112 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v93 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v106 = &v90 - v17;
  MEMORY[0x28223BE20](v16);
  v102 = &v90 - v18;
  v19 = sub_2428B2B28();
  v97 = *(v19 - 8);
  v98 = v19;
  v20 = *(v97 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v109 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v114 = (&v90 - v23);
  v90 = sub_2428B36A8();
  v91 = *(v90 - 8);
  v24 = *(v91 + 64);
  MEMORY[0x28223BE20](v90);
  v92 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v95 = &v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v94 = &v90 - v30;
  v31 = sub_2428B35D8();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v96 = &v90 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v90 - v36;
  v38 = sub_2428B2AF8();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v108 = &v90 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v44 = (&v90 - v43);
  v45 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v46 = sub_2428B3C78();
  v110 = v39;
  v111 = v38;
  v107 = v32;
  if (v47)
  {
    *v44 = v46;
    v44[1] = v47;
    (*(v39 + 104))(v44, *MEMORY[0x277CB9CD0], v38);
    v48 = v98;
    v49 = v31;
  }

  else
  {
    v50 = v92;
    v51 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v52 = v94;
    sub_2428B3C58();
    v49 = v31;
    if ((*(v32 + 48))(v52, 1, v31) == 1)
    {
      sub_2427D49D0(v94);
      sub_2428B28C8();
      sub_2428A9418();
      v53 = v90;
      v54 = sub_2428B4BD8();
      v56 = v55;
      (*(v91 + 8))(v50, v53);
    }

    else
    {
      (*(v32 + 32))(v37, v94, v31);
      v54 = sub_2428B3598();
      v56 = v57;
      (*(v32 + 8))(v37, v31);
    }

    *v44 = v54;
    v44[1] = v56;
    (*(v110 + 104))(v44, *MEMORY[0x277CB9CC8], v111);
    v48 = v98;
  }

  v58 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v59 = sub_2428B3C68();
  v61 = v97;
  if (v60)
  {
    v62 = v114;
    *v114 = v59;
    v62[1] = v60;
    v63 = v62;
    v64 = MEMORY[0x277CB9CF8];
  }

  else
  {
    v64 = MEMORY[0x277CB9D18];
    v63 = v114;
  }

  (*(v61 + 104))(v63, *v64, v48);
  v65 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2428B3C38();
  v66 = MEMORY[0x277CB9D48];
  if (v67)
  {
    (*(v104 + 104))(v103, *MEMORY[0x277CB9D48], v105);
    sub_2428B2B58();
    v68 = sub_2427F7240(0, 1, 1, MEMORY[0x277D84F90]);
    v70 = *(v68 + 2);
    v69 = *(v68 + 3);
    if (v70 >= v69 >> 1)
    {
      v68 = sub_2427F7240(v69 > 1, v70 + 1, 1, v68);
    }

    *(v68 + 2) = v70 + 1;
    (*(v112 + 32))(&v68[((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v70], v102, v113);
  }

  else
  {
    v68 = MEMORY[0x277D84F90];
  }

  v71 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2428B3C28();
  if (v72)
  {
    (*(v104 + 104))(v103, *v66, v105);
    sub_2428B2B48();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v68 = sub_2427F7240(0, *(v68 + 2) + 1, 1, v68);
    }

    v74 = *(v68 + 2);
    v73 = *(v68 + 3);
    v75 = v99;
    if (v74 >= v73 >> 1)
    {
      v68 = sub_2427F7240(v73 > 1, v74 + 1, 1, v68);
    }

    *(v68 + 2) = v74 + 1;
    (*(v112 + 32))(&v68[((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v74], v106, v113);
  }

  else
  {
    v75 = v99;
  }

  v76 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v77 = v95;
  sub_2428B3C58();
  v78 = v107;
  if ((*(v107 + 48))(v77, 1, v49) == 1)
  {
    sub_2427D49D0(v77);
  }

  else
  {
    (*(v78 + 32))(v96, v77, v49);
    sub_2428B3598();
    v79 = v93;
    sub_2428B2B68();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v68 = sub_2427F7240(0, *(v68 + 2) + 1, 1, v68);
    }

    v81 = *(v68 + 2);
    v80 = *(v68 + 3);
    if (v81 >= v80 >> 1)
    {
      v68 = sub_2427F7240(v80 > 1, v81 + 1, 1, v68);
    }

    (*(v107 + 8))(v96, v49);
    *(v68 + 2) = v81 + 1;
    (*(v112 + 32))(&v68[((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v81], v79, v113);
  }

  (*(v110 + 16))(v108, v44, v111);
  v82 = v48;
  (*(v61 + 16))(v109, v114, v48);
  v83 = *(v68 + 2);
  if (v83)
  {
    v85 = v112;
    v84 = v113;
    v86 = (*(v85 + 80) + 32) & ~*(v85 + 80);
    (*(v112 + 16))(v75, &v68[v86], v113);
    (*(v85 + 56))(v75, 0, 1, v84);
    if (v83 != 1)
    {
      sub_2428A0494(v68, &v68[v86], 1, (2 * v83) | 1);
    }
  }

  else
  {
    (*(v112 + 56))(v75, 1, 1, v113);
  }

  v87 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2428B3C48();
  v88 = sub_2428B3148();
  (*(*(v88 - 8) + 56))(v100, 1, 1, v88);
  sub_2428B2B08();
  (*(v61 + 8))(v114, v82);
  (*(v110 + 8))(v44, v111);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2428A9418()
{
  result = qword_27ECC2340;
  if (!qword_27ECC2340)
  {
    sub_2428B36A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2340);
  }

  return result;
}

uint64_t DeleteEventIntentRepresentation_v0.init(entities:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4E38, &qword_2428C5320);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_2428B4358();
  *a1 = result;
  return result;
}

id sub_2428A9530()
{
  result = [objc_allocWithZone(type metadata accessor for CalendarLinkObservation()) init];
  qword_280CDDF78 = result;
  return result;
}

char *sub_2428A9560()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4E58, &qword_2428C53F8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v18[-1] - v3;
  v5 = OBJC_IVAR___CalendarLinkObservation_observationStatus;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4E60, &qword_2428C5400);
  v6 = swift_allocObject();
  *(v6 + 20) = 0;
  *(v6 + 16) = 1;
  *&v0[v5] = v6;
  *&v0[OBJC_IVAR___CalendarLinkObservation_observationTask] = 0;
  v7 = type metadata accessor for CalendarLinkObservation();
  v19.receiver = v0;
  v19.super_class = v7;
  v8 = objc_msgSendSuper2(&v19, sel_init);
  v9 = sub_2428B43D8();
  v18[3] = v9;
  v18[4] = sub_2428AAF18();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(v9 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CF7738], v9);
  LOBYTE(v9) = sub_2428B37D8();
  __swift_destroy_boxed_opaque_existential_1(v18);
  if (v9)
  {
    v11 = sub_2428B4778();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v12;
    v14 = sub_2428AA404(0, 0, v4, &unk_2428C5410, v13);
    sub_2428AB024(v4);
    v15 = *&v8[OBJC_IVAR___CalendarLinkObservation_observationTask];
    *&v8[OBJC_IVAR___CalendarLinkObservation_observationTask] = v14;
  }

  return v8;
}

uint64_t sub_2428A9770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 208) = a1;
  *(v4 + 216) = a4;
  return MEMORY[0x2822009F8](sub_2428A9790, 0, 0);
}

uint64_t sub_2428A9790()
{
  v1 = *(v0 + 216);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if (qword_280CDE4E0 != -1)
    {
      swift_once();
    }

    v3 = sub_2428B4448();
    __swift_project_value_buffer(v3, qword_280CDE4E8);
    v4 = sub_2428B4428();
    v5 = sub_2428B4848();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2427C0000, v4, v5, "Registering for EventEntity observability state changes", v6, 2u);
      MEMORY[0x245D1C000](v6, -1, -1);
    }
  }

  v7 = *(MEMORY[0x277CB9C10] + 4);
  v8 = swift_task_alloc();
  *(v0 + 224) = v8;
  sub_2427C2774();
  *v8 = v0;
  v8[1] = sub_2428A9920;

  return MEMORY[0x28210B478](v0 + 16);
}

uint64_t sub_2428A9920()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_2428AA288;
  }

  else
  {
    v3 = sub_2428A9A34;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2428A9A34()
{
  v1 = v0[27];
  v2 = v0[5];
  v3 = v0[6];
  v4 = __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v5 = *(v2 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  (*(v5 + 16))(v7, v4, v2);
  v8 = *(v3 + 8);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  sub_2428B4798();

  swift_beginAccess();
  v9 = v0[10];
  v10 = v0[11];
  v0[30] = v9;
  v0[31] = v10;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v9);
  v0[32] = swift_getAssociatedTypeWitness();
  v11 = sub_2428B48F8();
  v0[33] = v11;
  v12 = *(v11 - 8);
  v0[34] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v0[35] = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[36] = AssociatedTypeWitness;
  v16 = *(AssociatedTypeWitness - 8);
  v0[37] = v16;
  v0[38] = *(v16 + 64);
  v17 = swift_task_alloc();
  v0[39] = v17;
  v18 = *(MEMORY[0x277D856D8] + 4);
  v19 = swift_task_alloc();
  v0[40] = v19;
  *v19 = v0;
  v19[1] = sub_2428A9D18;

  return MEMORY[0x282200310](v14, 0, 0, v17, v9, v10);
}

uint64_t sub_2428A9D18()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v7 = *v1;

  if (v0)
  {
    v4 = sub_2428AA2A0;
  }

  else
  {
    v5 = *(v2 + 312);

    v4 = sub_2428A9E30;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2428A9E30()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 256);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 208);
    (*(*(v0 + 272) + 8))(v1, *(v0 + 264));

    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    *(v4 + 24) = MEMORY[0x277D84F78] + 8;
LABEL_3:
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v5 = *(v0 + 8);

    return v5();
  }

  *(v0 + 120) = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  (*(v3 + 32))(boxed_opaque_existential_1, v1, v2);

  sub_2428024B8((v0 + 96), (v0 + 128));
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 216);
    v9 = *(v0 + 328);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      *(*(v0 + 208) + 24) = MEMORY[0x277D84F78] + 8;
      __swift_destroy_boxed_opaque_existential_1((v0 + 56));
      goto LABEL_3;
    }

    v11 = Strong;
    if (qword_280CDE4E0 != -1)
    {
      swift_once();
    }

    v12 = sub_2428B4448();
    __swift_project_value_buffer(v12, qword_280CDE4E8);
    v13 = sub_2428B4428();
    v14 = sub_2428B4848();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109120;
      *(v15 + 4) = v9;
      _os_log_impl(&dword_2427C0000, v13, v14, "EventEntity observability state changed to %{BOOL}d", v15, 8u);
      MEMORY[0x245D1C000](v15, -1, -1);
    }

    v16 = *&v11[OBJC_IVAR___CalendarLinkObservation_observationStatus];
    sub_2428B2F38();
    os_unfair_lock_lock((v16 + 20));
    *(v16 + 16) = v9;
    os_unfair_lock_unlock((v16 + 20));
  }

  v17 = *(v0 + 80);
  v18 = *(v0 + 88);
  *(v0 + 240) = v17;
  *(v0 + 248) = v18;
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v17);
  *(v0 + 256) = swift_getAssociatedTypeWitness();
  v19 = sub_2428B48F8();
  *(v0 + 264) = v19;
  v20 = *(v19 - 8);
  *(v0 + 272) = v20;
  v21 = *(v20 + 64) + 15;
  v22 = swift_task_alloc();
  *(v0 + 280) = v22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v0 + 288) = AssociatedTypeWitness;
  v24 = *(AssociatedTypeWitness - 8);
  *(v0 + 296) = v24;
  *(v0 + 304) = *(v24 + 64);
  v25 = swift_task_alloc();
  *(v0 + 312) = v25;
  v26 = *(MEMORY[0x277D856D8] + 4);
  v27 = swift_task_alloc();
  *(v0 + 320) = v27;
  *v27 = v0;
  v27[1] = sub_2428A9D18;

  return MEMORY[0x282200310](v22, 0, 0, v25, v17, v18);
}

uint64_t sub_2428AA2A0()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[38] + 15;
  v7 = swift_task_alloc();
  v8 = *(v3 + 32);
  v8(v7, v1, v2);
  swift_getAssociatedConformanceWitness();
  if (sub_2428B4BE8())
  {
    (*(v0[37] + 8))(v7, v0[36]);
  }

  else
  {
    v9 = v0[36];
    swift_allocError();
    v8(v10, v7, v9);
  }

  v11 = v0[39];
  v12 = v0[35];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v13 = v0[1];

  return v13();
}

uint64_t sub_2428AA404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4E58, &qword_2428C53F8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_2428AB08C(a3, v24 - v10);
  v12 = sub_2428B4778();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_2428B2F38();
  if (v14 == 1)
  {
    sub_2428AB024(v11);
  }

  else
  {
    sub_2428B4768();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2428B4728();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2428B4668() + 32;
      sub_2428B2F38();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4E50, &qword_2428C53E8);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4E50, &qword_2428C53E8);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

id sub_2428AA684()
{
  if (*&v0[OBJC_IVAR___CalendarLinkObservation_observationTask])
  {
    v1 = *&v0[OBJC_IVAR___CalendarLinkObservation_observationTask];
    sub_2428B2F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4E50, &qword_2428C53E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4B10, &qword_2428C53F0);
    sub_2428B4788();
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for CalendarLinkObservation();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2428AA84C()
{
  v1 = sub_2428B2988();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = sub_2428B29A8();
  v0[5] = v4;
  v5 = *(v4 - 8);
  v0[6] = v5;
  v6 = *(v5 + 64) + 15;
  v0[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2428AA964, 0, 0);
}

uint64_t sub_2428AA964()
{
  if (sub_2428AB4A8())
  {
    if (qword_280CDE4E0 != -1)
    {
      swift_once();
    }

    v1 = sub_2428B4448();
    __swift_project_value_buffer(v1, qword_280CDE4E8);
    v2 = sub_2428B4428();
    v3 = sub_2428B4848();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2427C0000, v2, v3, "Sending EventEntity update notification", v4, 2u);
      MEMORY[0x245D1C000](v4, -1, -1);
    }

    v6 = v0[6];
    v5 = v0[7];
    v8 = v0[4];
    v7 = v0[5];
    v9 = v0[2];
    v10 = v0[3];

    (*(v10 + 104))(v8, *MEMORY[0x277CB9BE0], v9);
    sub_2427C2774();
    sub_2428B29C8();
    (*(v10 + 8))(v8, v9);
    sub_2428B2998();
    (*(v6 + 8))(v5, v7);
  }

  v11 = v0[7];
  v12 = v0[4];

  v13 = v0[1];

  return v13();
}

uint64_t sub_2428AAB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4E58, &qword_2428C53F8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2428AB08C(a3, v27 - v11);
  v13 = sub_2428B4778();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);
  sub_2428B2F38();
  if (v15 == 1)
  {
    sub_2428AB024(v12);
  }

  else
  {
    sub_2428B4768();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2428B4728();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2428B4668() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_2428B2F38();
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_2428AB024(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2428AB024(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

unint64_t sub_2428AAF18()
{
  result = qword_280CDDA40;
  if (!qword_280CDDA40)
  {
    sub_2428B43D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDA40);
  }

  return result;
}

uint64_t sub_2428AAF70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2427CD274;

  return sub_2428A9770(a1, v4, v5, v6);
}

uint64_t sub_2428AB024(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4E58, &qword_2428C53F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2428AB08C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4E58, &qword_2428C53F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2428AB0FC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2428AB1F4;

  return v7(a1);
}

uint64_t sub_2428AB1F4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_2428AB33C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2427CD274;

  return sub_2428AA84C();
}

uint64_t sub_2428AB3F0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2427DC6B4;

  return sub_2428AB0FC(a1, v5);
}

uint64_t sub_2428AB4A8()
{
  v0 = sub_2428B43D8();
  v9[3] = v0;
  v9[4] = sub_2428AAF18();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CF7738], v0);
  LOBYTE(v0) = sub_2428B37D8();
  __swift_destroy_boxed_opaque_existential_1(v9);
  if ((v0 & 1) == 0)
  {
    return 0;
  }

  if (qword_280CDDF70 != -1)
  {
    swift_once();
  }

  v2 = *(qword_280CDDF78 + OBJC_IVAR___CalendarLinkObservation_observationStatus);
  sub_2428B2F38();
  os_unfair_lock_lock((v2 + 20));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));

  if (qword_280CDE4E0 != -1)
  {
    swift_once();
  }

  v4 = sub_2428B4448();
  __swift_project_value_buffer(v4, qword_280CDE4E8);
  v5 = sub_2428B4428();
  v6 = sub_2428B4848();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v3;
    _os_log_impl(&dword_2427C0000, v5, v6, "Returning EventEntity observability state: %{BOOL}d", v7, 8u);
    MEMORY[0x245D1C000](v7, -1, -1);
  }

  return v3;
}

void sub_2428AB678(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_2428B49C8();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v42 = MEMORY[0x277D84F90];
    sub_2427E2C54(0, v2 & ~(v2 >> 63), 0);
    v37 = v42;
    if (v35)
    {
      v3 = sub_2428B4978();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_2428B4948();
      v4 = *(v1 + 36);
    }

    v39 = v3;
    v40 = v4;
    v41 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v33 = v1 + 56;
      v32 = v1 + 64;
      v34 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v39;
        v10 = v41;
        v36 = v40;
        v11 = v1;
        sub_2428B20B0(v39, v40, v41, v1);
        v13 = v12;
        v14 = [v12 calendarIdentifier];
        v15 = sub_2428B4618();
        v17 = v16;

        v18 = v37;
        v42 = v37;
        v20 = *(v37 + 16);
        v19 = *(v37 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_2427E2C54((v19 > 1), v20 + 1, 1);
          v18 = v42;
        }

        *(v18 + 16) = v20 + 1;
        v21 = v18 + 16 * v20;
        *(v21 + 32) = v15;
        *(v21 + 40) = v17;
        v37 = v18;
        if (v35)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (sub_2428B4998())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v34;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4EE0, &qword_2428C5680);
          v7 = sub_2428B47D8();
          sub_2428B4A08();
          v7(v38, 0);
          if (v6 == v34)
          {
LABEL_32:
            sub_2428B2590(v39, v40, v41);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v22 = 1 << *(v11 + 32);
          if (v9 >= v22)
          {
            goto LABEL_36;
          }

          v23 = v9 >> 6;
          v24 = *(v33 + 8 * (v9 >> 6));
          if (((v24 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v36)
          {
            goto LABEL_38;
          }

          v25 = v24 & (-2 << (v9 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v34;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v32 + 8 * v23);
            v2 = v34;
            while (v27 < (v22 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_2428B2590(v9, v36, 0);
                v22 = __clz(__rbit64(v29)) + v26;
                goto LABEL_31;
              }
            }

            sub_2428B2590(v9, v36, 0);
          }

LABEL_31:
          v31 = *(v11 + 36);
          v39 = v22;
          v40 = v31;
          v41 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_2428AB9E0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2428B22D4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2428AE4C4(v5);
  *a1 = v2;
  return result;
}

uint64_t SetCalendarFocusConfiguration.init()@<X0>(uint64_t *a1@<X8>)
{
  v34 = a1;
  v1 = sub_2428B3298();
  v32 = *(v1 - 8);
  v33 = v1;
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v1);
  v31 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v30 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v29 = v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v28 = v26 - v11;
  v27 = sub_2428B3558();
  v12 = *(v27 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v27);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2428B36C8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = sub_2428B45F8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = sub_2428B3568();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  v36 = 0u;
  v37 = 0u;
  v38 = 0;
  sub_2428B2948();
  *v34 = sub_2428B2918();
  v26[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4EA8, &qword_2428C5450);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v12 + 104))(v15, *MEMORY[0x277CC9110], v27);
  sub_2428B3588();
  (*(v21 + 56))(v28, 1, 1, v20);
  v35 = 0;
  v23 = sub_2428B2AE8();
  v24 = *(*(v23 - 8) + 56);
  v24(v29, 1, 1, v23);
  v24(v30, 1, 1, v23);
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_2428B2948();
  *&v36 = sub_2428B2918();
  *(&v36 + 1) = 3;
  (*(v32 + 104))(v31, *MEMORY[0x277CBA308], v33);
  sub_2427FE634();
  sub_2427FE688();
  result = sub_2428B2E58();
  v34[1] = result;
  return result;
}

uint64_t sub_2428ABF58()
{
  v0 = *(*(sub_2428B36C8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v1 = sub_2428B3558();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_2428B45F8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v7 = sub_2428B3568();
  __swift_allocate_value_buffer(v7, qword_27ECC4E70);
  __swift_project_value_buffer(v7, qword_27ECC4E70);
  sub_2428B4578();
  if (qword_27ECC1780 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v1, qword_27ECD4500);
  (*(v2 + 16))(v5, v8, v1);
  sub_2428B36B8();
  return sub_2428B3588();
}

uint64_t (*static SetCalendarFocusConfiguration.title.modify())()
{
  if (qword_27ECC19C8 != -1)
  {
    swift_once();
  }

  v0 = sub_2428B3568();
  __swift_project_value_buffer(v0, qword_27ECC4E70);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2428AC274()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = v14 - v1;
  v14[0] = sub_2428B3558();
  v3 = *(v14[0] - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_2428B36C8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v8 = *(*(sub_2428B45F8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = sub_2428B3568();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v12 = sub_2428B3078();
  __swift_allocate_value_buffer(v12, qword_27ECC4E88);
  __swift_project_value_buffer(v12, qword_27ECC4E88);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v6, *MEMORY[0x277CC9110], v14[0]);
  sub_2428B3588();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_2428B3088();
}

uint64_t (*static SetCalendarFocusConfiguration.description.modify())()
{
  if (qword_27ECC19D0 != -1)
  {
    swift_once();
  }

  v0 = sub_2428B3078();
  __swift_project_value_buffer(v0, qword_27ECC4E88);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t SetCalendarFocusConfiguration.appContext.getter()
{
  v5 = *v0;
  v1 = sub_2428AC850();
  if (v1)
  {
    v2 = v1;
    sub_242822BFC(0, &qword_27ECC4EB0, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4EB8, &qword_2428C5458);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_2428B5D50;
    *(v3 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4EC0, &qword_2428C5460);
    *(v3 + 64) = sub_2427CD47C(&qword_27ECC4EC8, &qword_27ECC4EC0, &qword_2428C5460);
    *(v3 + 32) = v2;
    v1 = sub_2428B4808();
  }

  return MEMORY[0x28210B290](v1);
}

id sub_2428AC850()
{
  v2 = *v0;
  v3 = v0[1];
  sub_2428B2DC8();
  v29 = v32;
  if (!v32)
  {
    return 0;
  }

  result = sub_2427F54A8();
  if (v1)
  {
  }

  v26 = result;
  v5 = 0;
  v27 = MEMORY[0x277D84F90];
  v33 = MEMORY[0x277D84F90];
  v28 = *(v29 + 16);
  v6 = v29 + 64;
LABEL_6:
  v7 = (v6 + 80 * v5);
  while (v28 != v5)
  {
    if (v5 >= *(v29 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

    v9 = *(v7 - 4);
    v8 = *(v7 - 3);
    v10 = *(v7 - 2);
    v11 = v7[2];
    v12 = v7[3];
    v13 = v7[4];
    v14 = v7[5];
    v30 = *v7;
    sub_2428B3218();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B3218();
    sub_2428B28E8();
    result = [v31 eventStore];
    if (!result)
    {
      goto LABEL_20;
    }

    v15 = result;
    ++v5;
    v7 += 10;
    swift_unknownObjectRelease();
    v16 = sub_2428B4608();
    v17 = [v15 calendarWithIdentifier_];

    if (v17)
    {
      MEMORY[0x245D1B200](result);
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v18 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2428B46E8();
      }

      result = sub_2428B4708();
      v27 = v33;
      v6 = v29 + 64;
      goto LABEL_6;
    }
  }

  v19 = [v26 calendarsForEntityType_];
  sub_242822BFC(0, &qword_27ECC28F0, 0x277CC59B0);
  v20 = sub_2428B46C8();

  v21 = sub_2428B2450(v20);

  if ((v21 & 0xC000000000000001) != 0)
  {
    if (v21 >= 0)
    {
      v21 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v22 = sub_2428B49C8();
    v21 = sub_2428B1020(v21, v22);
  }

  v23 = sub_2428B1998(v27, v21);

  sub_2428AB678(v23);
  v25 = v24;

  return v25;
}

uint64_t SetCalendarFocusConfiguration.perform()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  sub_2428B4758();
  *(v2 + 40) = sub_2428B4748();
  v4 = sub_2428B4728();

  return MEMORY[0x2822009F8](sub_2428ACC10, v4, v3);
}

uint64_t sub_2428ACC10()
{
  v24 = v0;
  v1 = *(v0 + 40);
  v21 = *(v0 + 24);

  v22 = v21;
  v2 = sub_2428AC850();
  if (v2)
  {
    if (qword_280CDE4E0 != -1)
    {
      swift_once();
    }

    v3 = sub_2428B4448();
    __swift_project_value_buffer(v3, qword_280CDE4E8);
    sub_2428B3218();
    v4 = sub_2428B4428();
    v5 = sub_2428B4848();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v23 = v7;
      *v6 = 136446210;
      *&v22 = v2;
      sub_2428B3218();
      sub_2428AB9E0(&v22);
      v12 = MEMORY[0x245D1B230](v22, MEMORY[0x277D837D0]);
      v14 = v13;

      v15 = sub_24285A480(v12, v14, &v23);

      *(v6 + 4) = v15;
      _os_log_impl(&dword_2427C0000, v4, v5, "Entering focus with unselected identifiers = %{public}s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x245D1C000](v7, -1, -1);
      MEMORY[0x245D1C000](v6, -1, -1);
    }

    v16 = objc_opt_self();
    v17 = sub_2428B46B8();

    [v16 setUnselectedCalendarIdentifiersForFocusMode_];
  }

  else
  {
    if (qword_280CDE4E0 != -1)
    {
      swift_once();
    }

    v8 = sub_2428B4448();
    __swift_project_value_buffer(v8, qword_280CDE4E8);
    v9 = sub_2428B4428();
    v10 = sub_2428B4848();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2427C0000, v9, v10, "Exiting focus", v11, 2u);
      MEMORY[0x245D1C000](v11, -1, -1);
    }

    [objc_opt_self() setUnselectedCalendarIdentifiersForFocusMode_];
  }

  v18 = *(v0 + 16);
  sub_2428B2C28();
  v19 = *(v0 + 8);

  return v19();
}

uint64_t SetCalendarFocusConfiguration.displayRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v17 - v7;
  v9 = sub_2428B3568();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = *v0;
  if (qword_27ECC19C8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v9, qword_27ECC4E70);
  swift_beginAccess();
  (*(v10 + 16))(v13, v14, v9);
  v17[1] = v17[0];
  sub_2428AD1A8(v8);
  v15 = sub_2428B3148();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  return sub_2428B3178();
}

char *sub_2428AD1A8@<X0>(unsigned __int8 *a1@<X8>)
{
  v4 = sub_2428B36C8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_2428B3558();
  v72 = *(v8 - 8);
  v73 = v8;
  v9 = *(v72 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2428B45F8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v74 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2428B45D8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v75 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2428B3568();
  v19 = *(v18 - 8);
  v20 = *(v19 + 8);
  v21 = MEMORY[0x28223BE20](v18);
  v76 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v71 = &v67 - v23;
  v24 = *(v1 + 8);
  sub_2428B2DC8();
  v25 = v86;
  if (!v86)
  {
    return (*(v19 + 7))(a1, 1, 1, v18);
  }

  v68 = v11;
  v69 = v7;
  v78 = v18;
  v79 = v19;
  v77 = a1;
  v26 = 0;
  v86 = MEMORY[0x277D84F90];
  v27 = v25 + 8;
  v28 = v25[2];
  v81 = v25;
  v82 = v28;
  v80 = MEMORY[0x277D84F90];
  v70 = v25 + 8;
LABEL_3:
  v29 = &v27[10 * v26];
  while (v82 != v26)
  {
    if (v26 >= v25[2])
    {
      __break(1u);
      goto LABEL_40;
    }

    v31 = *(v29 - 4);
    v30 = *(v29 - 3);
    v32 = *(v29 - 2);
    v33 = v29[2];
    v34 = v29[3];
    v36 = v29[4];
    v35 = v29[5];
    v83 = *v29;
    sub_2428B3218();
    v84 = v33;
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B3218();
    sub_2428B28E8();
    result = [v85 eventStore];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v2 = result;
    ++v26;
    v29 += 10;
    swift_unknownObjectRelease();
    v7 = sub_2428B4608();
    a1 = [v2 calendarWithIdentifier_];

    v25 = v81;
    if (a1)
    {
      MEMORY[0x245D1B200](v38);
      if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v7 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2428B46E8();
      }

      sub_2428B4708();
      v80 = v86;
      v27 = v70;
      goto LABEL_3;
    }
  }

  a1 = v79;
  if (!(v80 >> 62))
  {
    v39 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_13;
  }

LABEL_40:
  v39 = sub_2428B49C8();
LABEL_13:
  v40 = v77;
  if (v39)
  {
    v86 = MEMORY[0x277D84F90];
    sub_2427E2CB4(0, v39 & ~(v39 >> 63), 0);
    if (v39 < 0)
    {
      __break(1u);
      goto LABEL_42;
    }

    v7 = v86;
    type metadata accessor for LocalizedStringUtils();
    v41 = 0;
    v42 = v80 & 0xC000000000000001;
    v43 = v71;
    do
    {
      if (v42)
      {
        v44 = MEMORY[0x245D1B5D0](v41, v80);
      }

      else
      {
        v44 = v80[v41 + 4];
      }

      v45 = v44;
      static LocalizedStringUtils.localizedTitle(forCalendar:)(v44);

      v86 = v7;
      v47 = v7[2];
      v46 = v7[3];
      if (v47 >= v46 >> 1)
      {
        sub_2427E2CB4(v46 > 1, v47 + 1, 1);
        v7 = v86;
      }

      ++v41;
      v7[2] = v47 + 1;
      a1 = v79;
      (*(v79 + 4))(v7 + ((a1[80] + 32) & ~a1[80]) + *(v79 + 9) * v47, v43, v78);
    }

    while (v39 != v41);

    v40 = v77;
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v48 = v7[2];
  v2 = v76;
  if (!v48)
  {
    (*(a1 + 7))(v40, 1, 1, v78);
  }

  v49 = (v48 - 1);
  if (v48 != 1)
  {
    if (v48 != 2)
    {
      v39 = v78;
      (*(a1 + 2))(v76, v7 + ((a1[80] + 32) & ~a1[80]), v78);

      v7 = a1;
      LOWORD(a1) = 2;
      sub_2428B45C8();
      sub_2428B45B8();
      sub_2428B45A8();
      sub_2428B45B8();
      v86 = v49;
      sub_2428B4588();
      sub_2428B45B8();
      sub_2428B45E8();
      if (qword_27ECC1780 == -1)
      {
LABEL_38:
        v62 = v73;
        v63 = __swift_project_value_buffer(v73, qword_27ECD4500);
        (*(v72 + 16))(v68, v63, v62);
        sub_2428B36B8();
        v66 = a1;
        v64 = "Description for a calendar focus filter with 3 or more calendars. The first argument is the title of a calendar, and the other argument is how many other calendars there are (greater than or equal to two).";
        v65 = 205;
        sub_2428B3578();
        (v7[1])(v2, v39);
        return (v7[7])(v40, 0, 1, v39);
      }

LABEL_44:
      swift_once();
      goto LABEL_38;
    }

    sub_2428B45C8();
    sub_2428B45B8();
    if (v7[2])
    {
      v50 = a1;
      v51 = v7 + ((a1[80] + 32) & ~a1[80]);
      v52 = *(v50 + 2);
      v53 = v78;
      v52(v2, v51, v78);
      sub_2428B45A8();
      v54 = *(v50 + 1);
      v54(v2, v53);
      sub_2428B45B8();
      if (v7[2] < 2)
      {
        __break(1u);
      }

      else
      {
        v52(v2, &v51[*(v50 + 9)], v53);

        sub_2428B45A8();
        v54(v2, v53);
        sub_2428B45B8();
        sub_2428B45E8();
        if (qword_27ECC1780 == -1)
        {
LABEL_31:
          v55 = v73;
          v56 = __swift_project_value_buffer(v73, qword_27ECD4500);
          (*(v72 + 16))(v68, v56, v55);
          sub_2428B36B8();
          v66 = 2;
          v64 = "Description for a calendar focus filter with exactly two calendars. The arguments are the titles of the two calendars.";
          v65 = 118;
          v57 = v77;
          sub_2428B3578();
          return (*(v50 + 7))(v57, 0, 1, v53);
        }
      }

      swift_once();
      goto LABEL_31;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  sub_2428B45C8();
  sub_2428B45B8();
  if (!v7[2])
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v58 = v78;
  (*(a1 + 2))(v2, v7 + ((a1[80] + 32) & ~a1[80]), v78);

  sub_2428B45A8();
  (*(a1 + 1))(v2, v58);
  sub_2428B45B8();
  sub_2428B45E8();
  v59 = a1;
  if (qword_27ECC1780 != -1)
  {
    swift_once();
  }

  v60 = v73;
  v61 = __swift_project_value_buffer(v73, qword_27ECD4500);
  (*(v72 + 16))(v68, v61, v60);
  sub_2428B36B8();
  v66 = 2;
  v64 = "Description for a calendar focus filter with exactly one calendar. The argument is the title of the calendar.";
  v65 = 109;
  sub_2428B3578();
  return (*(v59 + 7))(v40, 0, 1, v58);
}

uint64_t sub_2428ADCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CBA218] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2428ADD80;

  return MEMORY[0x28210BFA8](a1, a2, a3);
}

uint64_t sub_2428ADD80(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_2428ADE7C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC19C8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4E70);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_2428ADF3C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return SetCalendarFocusConfiguration.perform()(a1);
}

uint64_t sub_2428ADFD8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v17 - v7;
  v9 = sub_2428B3568();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = *v0;
  if (qword_27ECC19C8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v9, qword_27ECC4E70);
  swift_beginAccess();
  (*(v10 + 16))(v13, v14, v9);
  v17[1] = v17[0];
  sub_2428AD1A8(v8);
  v15 = sub_2428B3148();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  return sub_2428B3178();
}

uint64_t sub_2428AE208(uint64_t a1)
{
  v2 = sub_2428AE294();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_2428AE244(uint64_t a1)
{
  v2 = sub_2428AE2EC();

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_2428AE294()
{
  result = qword_280CDE638;
  if (!qword_280CDE638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE638);
  }

  return result;
}

unint64_t sub_2428AE2EC()
{
  result = qword_280CDE620;
  if (!qword_280CDE620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE620);
  }

  return result;
}

unint64_t sub_2428AE344()
{
  result = qword_280CDE628;
  if (!qword_280CDE628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE628);
  }

  return result;
}

unint64_t sub_2428AE39C()
{
  result = qword_280CDE640;
  if (!qword_280CDE640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE640);
  }

  return result;
}

unint64_t sub_2428AE460()
{
  result = qword_280CDE618;
  if (!qword_280CDE618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE618);
  }

  return result;
}

uint64_t sub_2428AE4C4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2428B4BC8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_2428B46F8();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2428AE68C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2428AE5BC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2428AE5BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_2428B4BF8(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2428AE68C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_2428AEF1C(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_2428AEC68((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_2428B4BF8();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_2428B4BF8();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2427F74F4(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_2427F74F4((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_2428AEC68((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2428AEF1C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_2428AEE90(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_2428B4BF8(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_2428AEC68(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_2428B4BF8() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_2428B4BF8() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_2428AEE90(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2428AEF1C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_2428AEF30(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4EE8, &qword_2428C5688);
  result = sub_2428B4A28();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_2428B48D8();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2428AF158(uint64_t a1)
{
  v2 = v1;
  v51 = sub_2428B3688();
  v4 = *(v51 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v51);
  v50 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EditEventIntent.AlarmInfo();
  v53 = *(v7 - 8);
  v8 = *(v53 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v52 = (&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v55 = &v46 - v11;
  v12 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v13 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4F00, &qword_2428C5698);
  result = sub_2428B4A28();
  v15 = result;
  if (*(v12 + 16))
  {
    v16 = 0;
    v17 = (v12 + 56);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 56);
    v21 = (v18 + 63) >> 6;
    v48 = (v4 + 32);
    v49 = v7;
    v46 = v2;
    v47 = (v4 + 8);
    v22 = result + 56;
    v23 = v52;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v28 = *(v12 + 48);
      v54 = *(v53 + 72);
      v29 = v55;
      sub_24282283C(v28 + v54 * (v25 | (v16 << 6)), v55);
      v30 = *(v15 + 40);
      sub_2428B4C88();
      sub_2428B259C(v29, v23);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v31 = v50;
        v32 = v23;
        v33 = v12;
        v34 = v51;
        (*v48)(v50, v32, v51);
        MEMORY[0x245D1B7F0](1);
        sub_2428B2600(&qword_27ECC2FF8, MEMORY[0x277CC9578]);
        sub_2428B4548();
        v35 = v34;
        v12 = v33;
        v23 = v52;
        (*v47)(v31, v35);
      }

      else
      {
        v36 = *v23;
        MEMORY[0x245D1B7F0](0);
        if (v36 == 0.0)
        {
          v37 = 0.0;
        }

        else
        {
          v37 = v36;
        }

        MEMORY[0x245D1B800](*&v37);
      }

      result = sub_2428B4CB8();
      v38 = -1 << *(v15 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v22 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v22 + 8 * v40);
          if (v44 != -1)
          {
            v24 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v39) & ~*(v22 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      result = sub_24282283C(v55, *(v15 + 48) + v24 * v54);
      ++*(v15 + 16);
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    v45 = 1 << *(v12 + 32);
    if (v45 >= 64)
    {
      bzero(v17, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v45;
    }

    v2 = v46;
    *(v12 + 16) = 0;
  }

  *v2 = v15;
  return result;
}

uint64_t sub_2428AF5E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4EF8, &qword_2428C5690);
  result = sub_2428B4A28();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_2428B4C88();
      sub_2428B4678();
      result = sub_2428B4CB8();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_2428AF848(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_2428B48D8();
  v5 = -1 << *(a2 + 32);
  result = sub_2428B4968();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2428AF8CC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4EE8, &qword_2428C5688);
  result = sub_2428B4A48();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v9 + 40);
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_2428B48D8();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2428AFAC0(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v53 = sub_2428B3688();
  v51 = *(v53 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2FF0, &qword_2428C56A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - v8;
  v10 = type metadata accessor for EditEventIntent.AlarmInfo();
  v55 = *(v10 - 8);
  v11 = *(v55 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v42 - v16);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - v19;
  MEMORY[0x28223BE20](v18);
  v43 = &v42 - v21;
  v44 = v2;
  v22 = *v2;
  v23 = *(*v2 + 40);
  sub_2428B4C88();
  sub_24281E1C8();
  v24 = sub_2428B4CB8();
  v56 = v22 + 56;
  v57 = v22;
  v25 = -1 << *(v22 + 32);
  v26 = v24 & ~v25;
  if (((*(v22 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
  {
LABEL_13:
    v36 = v44;
    v37 = *v44;
    v38 = a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v43;
    sub_2428B259C(v38, v43);
    v58 = *v36;
    sub_2428B1210(v40, v26, isUniquelyReferenced_nonNull_native);
    *v36 = v58;
    sub_24282283C(v38, v45);
    return 1;
  }

  v54 = ~v25;
  v55 = *(v55 + 72);
  v52 = (v51 + 8);
  v46 = (v51 + 32);
  v47 = a2;
  v48 = v17;
  v49 = v6;
  while (1)
  {
    v27 = v55 * v26;
    sub_2428B259C(*(v57 + 48) + v55 * v26, v20);
    v28 = *(v6 + 48);
    sub_2428B259C(v20, v9);
    sub_2428B259C(a2, &v9[v28]);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_2428B259C(v9, v14);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v29 = &v9[v28];
      v30 = v10;
      v31 = v50;
      v32 = v53;
      (*v46)(v50, v29, v53);
      LODWORD(v51) = sub_2428B3668();
      v33 = *v52;
      v34 = v31;
      v10 = v30;
      (*v52)(v34, v32);
      sub_2428B2648(v20);
      v35 = v32;
      v17 = v48;
      v33(v14, v35);
      a2 = v47;
      v6 = v49;
      if (v51)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    sub_2428B2648(v20);
    (*v52)(v14, v53);
LABEL_4:
    sub_2428B26A4(v9);
LABEL_5:
    v26 = (v26 + 1) & v54;
    if (((*(v56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  sub_2428B2648(v20);
  sub_2428B259C(v9, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    goto LABEL_4;
  }

  if (*v17 != *&v9[v28])
  {
LABEL_12:
    sub_2428B2648(v9);
    goto LABEL_5;
  }

LABEL_14:
  sub_2428B2648(v9);
  sub_2428B2648(a2);
  sub_2428B259C(*(v57 + 48) + v27, v45);
  return 0;
}

uint64_t sub_2428AFF68(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2428B4C88();
  sub_2428B4678();
  v9 = sub_2428B4CB8();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_2428B4BF8() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;
    sub_2428B3218();
    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_2428B3218();
    sub_2428B16A8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2428B00B8(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;
    sub_2428B3218();
    v9 = sub_2428B49D8();

    if (v9)
    {

      sub_242822BFC(0, &qword_27ECC28F0, 0x277CC59B0);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_2428B49C8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_2428B1020(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_2428AEF30(v22 + 1);
    }

    v20 = v8;
    sub_2428AF848(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_242822BFC(0, &qword_27ECC28F0, 0x277CC59B0);
  v11 = *(v6 + 40);
  v12 = sub_2428B48D8();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_2428B1828(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_2428B48E8();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

void *sub_2428B02F0()
{
  v1 = v0;
  v2 = type metadata accessor for EditEventIntent.AlarmInfo();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4F00, &qword_2428C5698);
  v7 = *v0;
  v8 = sub_2428B4A18();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_2428B259C(*(v7 + 48) + v22, v6);
        result = sub_24282283C(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_2428B04D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4EF8, &qword_2428C5690);
  v2 = *v0;
  v3 = sub_2428B4A18();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
        result = sub_2428B3218();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_2428B0630()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4EE8, &qword_2428C5688);
  v2 = *v0;
  v3 = sub_2428B4A18();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2428B0780(uint64_t a1)
{
  v2 = v1;
  v50 = sub_2428B3688();
  v4 = *(v50 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EditEventIntent.AlarmInfo();
  v51 = *(v7 - 8);
  v8 = *(v51 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v53 = &v44 - v12;
  v13 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v14 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4F00, &qword_2428C5698);
  result = sub_2428B4A28();
  v16 = result;
  if (*(v13 + 16))
  {
    v44 = v2;
    v17 = 0;
    v18 = v13 + 56;
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 56);
    v22 = (v19 + 63) >> 6;
    v45 = (v4 + 8);
    v46 = (v4 + 32);
    v23 = result + 56;
    v47 = v13;
    v48 = v7;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = *(v13 + 48);
      v52 = *(v51 + 72);
      v29 = v53;
      sub_2428B259C(v28 + v52 * (v25 | (v17 << 6)), v53);
      v30 = *(v16 + 40);
      sub_2428B4C88();
      sub_2428B259C(v29, v11);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v31 = v11;
        v33 = v49;
        v32 = v50;
        (*v46)(v49, v31, v50);
        MEMORY[0x245D1B7F0](1);
        sub_2428B2600(&qword_27ECC2FF8, MEMORY[0x277CC9578]);
        sub_2428B4548();
        v34 = v33;
        v11 = v31;
        v13 = v47;
        (*v45)(v34, v32);
      }

      else
      {
        v35 = *v11;
        MEMORY[0x245D1B7F0](0);
        if (v35 == 0.0)
        {
          v36 = 0.0;
        }

        else
        {
          v36 = v35;
        }

        MEMORY[0x245D1B800](*&v36);
      }

      result = sub_2428B4CB8();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v23 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v23 + 8 * v39);
          if (v43 != -1)
          {
            v24 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_36;
      }

      v24 = __clz(__rbit64((-1 << v38) & ~*(v23 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      result = sub_24282283C(v53, *(v16 + 48) + v24 * v52);
      ++*(v16 + 16);
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v2 = v44;
        goto LABEL_34;
      }

      v27 = *(v18 + 8 * v17);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {

LABEL_34:
    *v2 = v16;
  }

  return result;
}

uint64_t sub_2428B0BD4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4EF8, &qword_2428C5690);
  result = sub_2428B4A28();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_2428B4C88();
      sub_2428B3218();
      sub_2428B4678();
      result = sub_2428B4CB8();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2428B0E0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4EE8, &qword_2428C5688);
  result = sub_2428B4A28();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_2428B48D8();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2428B1020(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4EE8, &qword_2428C5688);
    v2 = sub_2428B4A38();
    v16 = v2;
    sub_2428B4988();
    if (sub_2428B49F8())
    {
      sub_242822BFC(0, &qword_27ECC28F0, 0x277CC59B0);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_2428AEF30(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_2428B48D8();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_2428B49F8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2428B1210(uint64_t a1, unint64_t a2, char a3)
{
  v56 = sub_2428B3688();
  v54 = *(v56 - 8);
  v7 = *(v54 + 64);
  MEMORY[0x28223BE20](v56);
  v52 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2FF0, &qword_2428C56A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v46 - v11;
  v13 = type metadata accessor for EditEventIntent.AlarmInfo();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v53 = (&v46 - v20);
  MEMORY[0x28223BE20](v19);
  v22 = &v46 - v21;
  v23 = *(*v3 + 16);
  v24 = *(*v3 + 24);
  v48 = v3;
  v47 = v14;
  if (v24 <= v23 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2428AF158(v23 + 1);
    }

    else
    {
      if (v24 > v23)
      {
        sub_2428B02F0();
        goto LABEL_20;
      }

      sub_2428B0780(v23 + 1);
    }

    v25 = *v3;
    v26 = *(*v3 + 40);
    sub_2428B4C88();
    sub_24281E1C8();
    v27 = sub_2428B4CB8();
    v51 = v25;
    v28 = -1 << *(v25 + 32);
    a2 = v27 & ~v28;
    v59 = v25 + 56;
    if ((*(v25 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v58 = ~v28;
      v57 = *(v14 + 72);
      v29 = v53;
      v55 = (v54 + 8);
      v49 = (v54 + 32);
      v50 = v9;
      v30 = v51;
      do
      {
        sub_2428B259C(*(v30 + 48) + v57 * a2, v22);
        v31 = *(v9 + 48);
        sub_2428B259C(v22, v12);
        sub_2428B259C(a1, &v12[v31]);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_2428B259C(v12, v18);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v32 = &v12[v31];
            v33 = v13;
            v34 = v18;
            v35 = v52;
            v36 = v56;
            (*v49)(v52, v32, v56);
            LODWORD(v54) = sub_2428B3668();
            v37 = a1;
            v38 = *v55;
            v39 = v35;
            v18 = v34;
            v13 = v33;
            (*v55)(v39, v36);
            sub_2428B2648(v22);
            v38(v18, v36);
            a1 = v37;
            v9 = v50;
            v30 = v51;
            v29 = v53;
            if (v54)
            {
              goto LABEL_23;
            }

LABEL_19:
            sub_2428B2648(v12);
            goto LABEL_12;
          }

          sub_2428B2648(v22);
          (*v55)(v18, v56);
        }

        else
        {
          sub_2428B2648(v22);
          sub_2428B259C(v12, v29);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            if (*v29 == *&v12[v31])
            {
              goto LABEL_23;
            }

            goto LABEL_19;
          }
        }

        sub_2428B26A4(v12);
LABEL_12:
        a2 = (a2 + 1) & v58;
      }

      while (((*(v59 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_20:
  v40 = a1;
  v41 = *v48;
  *(*v48 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_24282283C(v40, *(v41 + 48) + *(v47 + 72) * a2);
  v43 = *(v41 + 16);
  v44 = __OFADD__(v43, 1);
  v45 = v43 + 1;
  if (v44)
  {
    __break(1u);
LABEL_23:
    sub_2428B2648(v12);
    result = sub_2428B4C28();
    __break(1u);
  }

  else
  {
    *(v41 + 16) = v45;
  }

  return result;
}

uint64_t sub_2428B16A8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2428AF5E8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2428B04D4();
      goto LABEL_16;
    }

    sub_2428B0BD4(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_2428B4C88();
  sub_2428B4678();
  result = sub_2428B4CB8();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2428B4BF8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2428B4C28();
  __break(1u);
  return result;
}

void sub_2428B1828(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2428AEF30(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_2428B0630();
      goto LABEL_12;
    }

    sub_2428B0E0C(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_2428B48D8();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_242822BFC(0, &qword_27ECC28F0, 0x277CC59B0);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_2428B48E8();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2428B4C28();
  __break(1u);
}

uint64_t sub_2428B1998(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  v55[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v55[0] = a1;
    v46 = a1 >> 62;
    if (a1 >> 62)
    {
LABEL_47:
      v37 = a1;
      v3 = sub_2428B49C8();
      a1 = v37;
    }

    else
    {
      v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v51 = a1;
    a1 = sub_2428B3218();
    if (v3)
    {
      v4 = 0;
      v52 = v51 & 0xC000000000000001;
      v50 = v51 & 0xFFFFFFFFFFFFFF8;
      v48 = v51 + 32;
      v54 = (v2 + 56);
      while (1)
      {
        if (v52)
        {
          a1 = MEMORY[0x245D1B5D0](v4, v51);
        }

        else
        {
          if (v4 >= *(v50 + 16))
          {
            goto LABEL_46;
          }

          a1 = *(v48 + 8 * v4);
        }

        v53 = a1;
        v5 = __OFADD__(v4++, 1);
        if (v5)
        {
          goto LABEL_45;
        }

        v6 = *(v2 + 40);
        v7 = sub_2428B48D8();
        v8 = -1 << *(v2 + 32);
        v9 = v7 & ~v8;
        v10 = v9 >> 6;
        v11 = 1 << v9;
        if (((1 << v9) & v54[v9 >> 6]) != 0)
        {
          break;
        }

LABEL_6:

        if (v4 == v3)
        {
          goto LABEL_40;
        }
      }

      v12 = ~v8;
      sub_242822BFC(0, &qword_27ECC28F0, 0x277CC59B0);
      while (1)
      {
        v13 = *(*(v2 + 48) + 8 * v9);
        v14 = sub_2428B48E8();

        if (v14)
        {
          break;
        }

        v9 = (v9 + 1) & v12;
        v10 = v9 >> 6;
        v11 = 1 << v9;
        if (((1 << v9) & v54[v9 >> 6]) == 0)
        {
          goto LABEL_6;
        }
      }

      v55[1] = v4;

      v16 = *(v2 + 32);
      v17 = v16 & 0x3F;
      v18 = ((1 << v16) + 63) >> 6;
      v44 = v18;
      if (v17 <= 0xD)
      {
LABEL_19:
        v45 = &v43;
        MEMORY[0x28223BE20](v15);
        v20 = &v43 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0);
        a1 = memcpy(v20, v54, v19);
        v21 = *(v2 + 16);
        v22 = *&v20[8 * v10] & ~v11;
        v49 = v20;
        *&v20[8 * v10] = v22;
        v47 = v21 - 1;
        if (v46)
        {
          a1 = sub_2428B49C8();
          v53 = a1;
        }

        else
        {
          v53 = *(v50 + 16);
        }

        while (1)
        {
          if (v4 == v53)
          {
            v2 = sub_2428AF8CC(v49, v44, v47, v2);
            goto LABEL_40;
          }

          if (v52)
          {
            a1 = MEMORY[0x245D1B5D0](v4, v51);
          }

          else
          {
            if ((v4 & 0x8000000000000000) != 0)
            {
              goto LABEL_43;
            }

            if (v4 >= *(v50 + 16))
            {
              goto LABEL_44;
            }

            a1 = *(v48 + 8 * v4);
          }

          v23 = a1;
          v5 = __OFADD__(v4++, 1);
          if (v5)
          {
            break;
          }

          v24 = *(v2 + 40);
          v25 = sub_2428B48D8();
          v26 = -1 << *(v2 + 32);
          v27 = v25 & ~v26;
          v28 = v27 >> 6;
          v29 = 1 << v27;
          if (((1 << v27) & v54[v27 >> 6]) != 0)
          {
            v30 = ~v26;
            while (1)
            {
              v31 = *(*(v2 + 48) + 8 * v27);
              v32 = sub_2428B48E8();

              if (v32)
              {
                break;
              }

              v27 = (v27 + 1) & v30;
              v28 = v27 >> 6;
              v29 = 1 << v27;
              if (((1 << v27) & v54[v27 >> 6]) == 0)
              {
                goto LABEL_22;
              }
            }

            v33 = v49[v28];
            v49[v28] = v33 & ~v29;
            if ((v33 & v29) != 0)
            {
              v34 = v47 - 1;
              if (__OFSUB__(v47, 1))
              {
                __break(1u);
              }

              --v47;
              if (!v34)
              {

                v2 = MEMORY[0x277D84FA0];
                goto LABEL_40;
              }
            }
          }

          else
          {
LABEL_22:
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v38 = 8 * v18;
      sub_2428B2F38();
      v39 = v38;
      if (swift_stdlib_isStackAllocationSafe())
      {

        goto LABEL_19;
      }

      v40 = swift_slowAlloc();
      memcpy(v40, v54, v39);
      sub_2428B1E70(v40, v44, v2, v9, v55);
      v42 = v41;

      MEMORY[0x245D1C000](v40, -1, -1);

      v2 = v42;
    }

    else
    {
LABEL_40:
    }
  }

  else
  {

    v2 = MEMORY[0x277D84FA0];
  }

  v35 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_2428B1E70(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v32 = a3 + 56;
  while (2)
  {
    v29 = v8;
    do
    {
      while (1)
      {
        v9 = *v5;
        if (*v5 >> 62)
        {
          if (v9 < 0)
          {
            v27 = *v5;
          }

          v10 = sub_2428B49C8();
        }

        else
        {
          v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v11 = v5[1];
        if (v11 == v10)
        {
          sub_2428B2F38();
          sub_2428AF8CC(a1, a2, v29, a3);
          return;
        }

        v12 = *v5;
        if ((*v5 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x245D1B5D0](v5[1]);
        }

        else
        {
          if ((v11 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
            return;
          }

          if (v11 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v13 = *(v12 + 8 * v11 + 32);
        }

        v14 = v13;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_28;
        }

        v5[1] = v11 + 1;
        v15 = *(a3 + 40);
        v16 = sub_2428B48D8();
        v17 = -1 << *(a3 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v32 + 8 * (v18 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        v5 = a5;
      }

      sub_242822BFC(0, &qword_27ECC28F0, 0x277CC59B0);
      v21 = *(*(a3 + 48) + 8 * v18);
      v22 = sub_2428B48E8();

      if ((v22 & 1) == 0)
      {
        v23 = ~v17;
        do
        {
          v18 = (v18 + 1) & v23;
          v19 = v18 >> 6;
          v20 = 1 << v18;
          if (((1 << v18) & *(v32 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_3;
          }

          v24 = *(*(a3 + 48) + 8 * v18);
          v25 = sub_2428B48E8();
        }

        while ((v25 & 1) == 0);
      }

      v5 = a5;

      v26 = a1[v19];
      a1[v19] = v26 & ~v20;
    }

    while ((v26 & v20) == 0);
    v8 = v29 - 1;
    if (__OFSUB__(v29, 1))
    {
      goto LABEL_30;
    }

    if (v29 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_2428B20B0(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x245D1B540](a1, a2, v7);
      sub_242822BFC(0, &qword_27ECC28F0, 0x277CC59B0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_242822BFC(0, &qword_27ECC28F0, 0x277CC59B0);
    if (sub_2428B49A8() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_2428B49B8();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_2428B48D8();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_2428B48E8();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

uint64_t sub_2428B22E8(uint64_t a1)
{
  v2 = type metadata accessor for EditEventIntent.AlarmInfo();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_2428B2600(&qword_27ECC4F08, type metadata accessor for EditEventIntent.AlarmInfo);
  result = MEMORY[0x245D1B320](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_2428B259C(v13, v7);
      sub_2428AFAC0(v9, v7);
      sub_2428B2648(v9);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t sub_2428B2450(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2428B49C8())
  {
    v4 = sub_242822BFC(0, &qword_27ECC28F0, 0x277CC59B0);
    v5 = sub_242828268();
    result = MEMORY[0x245D1B320](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x245D1B5D0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_2428B00B8(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_2428B49C8();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2428B2590(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2428B259C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditEventIntent.AlarmInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2428B2600(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2428B2648(uint64_t a1)
{
  v2 = type metadata accessor for EditEventIntent.AlarmInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2428B26A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2FF0, &qword_2428C56A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void __getREMStoreClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getREMStoreClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CalLinkREMStoreWrapper.m" lineNumber:17 description:{@"Unable to find class %s", "REMStore"}];

  __break(1u);
}

void ReminderKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ReminderKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CalLinkREMStoreWrapper.m" lineNumber:16 description:{@"%s", *a1}];

  __break(1u);
}

void __getREMObjectIDClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getREMObjectIDClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CalLinkREMStoreWrapper.m" lineNumber:19 description:{@"Unable to find class %s", "REMObjectID"}];

  __break(1u);
}