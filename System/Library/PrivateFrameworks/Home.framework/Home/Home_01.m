uint64_t sub_20D9D6B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a6;
  v29 = a5;
  v30 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v28 - v13;
  if (*(a7 + 16))
  {
    v15 = *(a7 + 24);
    v16 = *(a7 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v17 = sub_20DD65094();
    v19 = v18;
    swift_unknownObjectRelease();
    isCurrentExecutorWithFlags = swift_task_isCurrentExecutorWithFlags();
  }

  else
  {
    v17 = 0;
    v19 = 0;
    isCurrentExecutorWithFlags = 1;
  }

  sub_20D9D7558(a3, v14, &qword_27C8443F0, &qword_20DD93820);
  v21 = sub_20DD65114();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v14, 1, v21) == 1)
  {
    sub_20D9D76EC(v14, &qword_27C8443F0, &qword_20DD93820);
  }

  else
  {
    sub_20DD65104();
    (*(v22 + 8))(v14, v21);
  }

  if (!a2)
  {
    swift_unknownObjectRetain();

    if (v19 | v17)
    {
      v37[0] = 0;
      v37[1] = 0;
      v27 = v37;
      v37[2] = v17;
      v37[3] = v19;
      if (a4 == 1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v27 = 0;
      if (a4 == 1)
      {
LABEL_17:
        v25 = swift_task_create();
        if ((isCurrentExecutorWithFlags & 1) == 0)
        {
          return v25;
        }

        goto LABEL_12;
      }
    }

    v36[4] = 6;
    v36[5] = v27;
    v36[6] = a4;
    v36[7] = v29;
    goto LABEL_17;
  }

  v23 = sub_20DD64EF4() + 32;
  swift_unknownObjectRetain();

  if (v19 | v17)
  {
    v36[0] = 0;
    v36[1] = 0;
    v24 = v36;
    v36[2] = v17;
    v36[3] = v19;
    if (a4 == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v24 = 0;
  if (a4 != 1)
  {
LABEL_10:
    v35[0] = 6;
    v35[1] = v24;
    v35[2] = a4;
    v35[3] = v29;
    v24 = v35;
  }

LABEL_11:
  v32 = 7;
  v33 = v24;
  v34 = v23;
  v25 = swift_task_create();

  if (isCurrentExecutorWithFlags)
  {
LABEL_12:
    swift_task_immediate();
  }

  return v25;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t dispatch thunk of SwiftItem.subclassUpdate(with:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20D9D7010;

  return v8(a1);
}

uint64_t sub_20D9D7010(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_20D9D7174(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_20D9D71D0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20D9D77C4;

  return sub_20D9D46BC(a1, v5);
}

uint64_t sub_20D9D72E4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20D9D77C4;

  return sub_20D9D46BC(a1, v5);
}

uint64_t sub_20D9D739C(uint64_t a1, uint64_t a2)
{
  v4 = _s21AccessoryCommandTupleVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D9D7400(uint64_t a1, uint64_t a2)
{
  v4 = _s21AccessoryCommandTupleVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D9D7464(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20D9D74AC(uint64_t a1, uint64_t a2)
{
  v4 = _s21AccessoryCommandTupleVMa();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D9D7510(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_20D9D7558(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_20D9D75C0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20D9D77C4;

  return sub_20D9D4460(a1, v5);
}

id sub_20D9D767C()
{
  v1 = *(v0 + 16);
  result = [v1 isFinished];
  if ((result & 1) == 0)
  {
    result = [v1 isCancelled];
    if ((result & 1) == 0)
    {

      return [v1 cancel];
    }
  }

  return result;
}

uint64_t sub_20D9D76EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_20D9D77D0()
{
  v0 = type metadata accessor for CharacteristicNotificationManager(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_20D9D7D78();
  qword_27C843640 = result;
  return result;
}

uint64_t sub_20D9D7834@<X0>(void *a1@<X8>)
{
  if (qword_27C842408 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27C843640;
}

uint64_t sub_20D9D78A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27C842408;

  if (v2 != -1)
  {
    swift_once();
  }

  qword_27C843640 = v1;
}

uint64_t CharacteristicNotificationManager.disableReasons.setter(uint64_t a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843668, &qword_20DD93CB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843670, &qword_20DD93CB8);
  v7 = *(v6 - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v15 - v9;
  v11 = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_disableReasons;
  swift_beginAccess();
  v12 = *(v1 + v11);
  *(v1 + v11) = a1;

  *(v1 + OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_isDisabled) = *(*(v1 + v11) + 16) != 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843688, &qword_20DD93CC0);
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843690, &qword_20DD93CC8);
  sub_20DD65134();
  return (*(v7 + 8))(v10, v6);
}

void (*CharacteristicNotificationManager.disableReasons.modify(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843668, &qword_20DD93CB0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[4] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843670, &qword_20DD93CB8);
  v5[5] = v8;
  v9 = *(v8 - 8);
  v5[6] = v9;
  if (v3)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v11 = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_disableReasons;
  v5[7] = v10;
  v5[8] = v11;
  swift_beginAccess();
  return sub_20D9D7C44;
}

void sub_20D9D7C44(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[7];
  if (a2)
  {
    v5 = v3[4];
  }

  else
  {
    v6 = v3[5];
    v7 = v3[6];
    v5 = v3[4];
    *(v3[3] + OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_isDisabled) = *(*(v3[3] + v3[8]) + 16) != 0;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843688, &qword_20DD93CC0);
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843690, &qword_20DD93CC8);
    sub_20DD65134();
    (*(v7 + 8))(v4, v6);
  }

  free(v4);
  free(v5);

  free(v3);
}

uint64_t sub_20D9D7D78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v35 = &v34 - v3;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8439B8, &qword_20DD94020);
  v4 = *(v34 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v34);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8439C0, &qword_20DD94028);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - v14;
  sub_20DD63744();
  type metadata accessor for CharacteristicNotificationManager.RegistrationRequest(0);
  sub_20D9EBA28(&qword_280E02290, 255, MEMORY[0x277CC95F0]);
  sub_20DD64114();
  v16 = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_subscribedCharacteristics;
  *(v0 + v16) = sub_20D9D4E78(MEMORY[0x277D84F90]);
  *(v0 + OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_previousNotificationState) = 0;
  sub_20D9D7510(0, &qword_280E01EF0, 0x277CD1A60);
  sub_20DD64114();
  *(v0 + OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_disableReasons) = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_isDisabled) = 0;
  v17 = *(v9 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843668, &qword_20DD93CB0);
  v18 = v34;
  (*(v4 + 104))(v7, *MEMORY[0x277D85778], v34);
  sub_20DD65124();
  (*(v4 + 8))(v7, v18);
  sub_20D9D7558(v15, v13, &qword_27C8439C0, &qword_20DD94028);
  v19 = *(v9 + 56);
  v20 = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_subscriptionStream;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8436F0, &unk_20DD93D00);
  v22 = *(v21 - 8);
  (*(v22 + 32))(v0 + v20, v13, v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843690, &qword_20DD93CC8);
  v24 = *(v23 - 8);
  (*(v24 + 8))(&v13[v19], v23);
  sub_20D9D7558(v15, v13, &qword_27C8439C0, &qword_20DD94028);
  v25 = *(v9 + 56);
  v26 = v35;
  (*(v24 + 32))(v0 + OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_subscriptionContinuation, &v13[v25], v23);
  (*(v22 + 8))(v13, v21);
  v27 = sub_20DD65114();
  (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
  v28 = qword_27C842410;

  if (v28 != -1)
  {
    swift_once();
  }

  v30 = qword_27C843648;
  v31 = sub_20D9EBA28(&unk_27C843700, v29, type metadata accessor for CharacteristicNotificationActor);
  v32 = swift_allocObject();
  v32[2] = v30;
  v32[3] = v31;
  v32[4] = v0;

  sub_20DA1C514(0, 0, v26, &unk_20DD94038, v32);

  sub_20D9D76EC(v15, &qword_27C8439C0, &qword_20DD94028);
  return v0;
}

uint64_t CharacteristicNotificationManager.endAllSubscriptions()()
{
  *(v1 + 40) = v0;
  if (qword_27C842410 != -1)
  {
    swift_once();
  }

  v2 = qword_27C843648;

  return MEMORY[0x2822009F8](sub_20D9D836C, v2, 0);
}

uint64_t sub_20D9D836C()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8436A0, &qword_20DD93CD8);
  sub_20DD640F4();
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_20D9D8410, 0, 0);
}

uint64_t sub_20D9D8410()
{
  v1 = *(MEMORY[0x277D859E0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_20D9D84E4;
  v3 = *(v0 + 40);

  return MEMORY[0x2822007B8]();
}

uint64_t sub_20D9D84E4()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20D9D85E0, 0, 0);
}

uint64_t CharacteristicNotificationManager.add(registrationRequest:)(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_20DD63744();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  if (qword_27C842410 != -1)
  {
    swift_once();
  }

  v6 = qword_27C843648;
  v2[11] = qword_27C843648;

  return MEMORY[0x2822009F8](sub_20D9D86EC, v6, 0);
}

uint64_t sub_20D9D86EC()
{
  v1 = objc_opt_self();
  v2 = [v1 sharedDispatcher];
  v3 = [v2 homeManager];

  if (v3)
  {

    v0[12] = [v1 sharedDispatcher];
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_20D9D8828;

    return HFHomeKitDispatcher.allHomes.getter();
  }

  else
  {
    v6 = v0[10];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_20D9D8828(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = v4[12];

    v8 = v4[10];

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {
    v11 = v4[11];
    v4[15] = a1;

    return MEMORY[0x2822009F8](sub_20D9D8990, v11, 0);
  }
}

uint64_t sub_20D9D8990()
{
  v20 = v0;
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 48);

  *(v0 + 40) = *(v3 + 16);
  v4 = swift_task_alloc();
  *(v4 + 16) = v0 + 40;
  LOBYTE(v2) = sub_20D9DFD10(sub_20D9EB9C0, v4, v1);

  if (v2)
  {
    if (qword_27C842428 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 48);
    v6 = sub_20DD64C44();
    __swift_project_value_buffer(v6, qword_27C843650);

    v7 = sub_20DD64C24();
    v8 = sub_20DD65384();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 48);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315138;
      v12 = CharacteristicNotificationManager.RegistrationRequest.description.getter();
      v14 = sub_20D9E0B38(v12, v13, &v19);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_20D9BF000, v7, v8, "Adding registration request: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x20F327D10](v11, -1, -1);
      MEMORY[0x20F327D10](v10, -1, -1);
    }

    v15 = *(v0 + 56);
    (*(*(v0 + 72) + 16))(*(v0 + 80), *(v0 + 48) + OBJC_IVAR____TtCC4Home33CharacteristicNotificationManager19RegistrationRequest_identifier, *(v0 + 64));
    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8436A0, &qword_20DD93CD8);
    sub_20DD64134();
    swift_endAccess();

    return MEMORY[0x2822009F8](sub_20D9D8C50, 0, 0);
  }

  else
  {
    v16 = *(v0 + 80);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_20D9D8C50()
{
  v1 = *(MEMORY[0x277D859E0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  v2[1] = sub_20D9D8D24;
  v3 = *(v0 + 56);

  return MEMORY[0x2822007B8]();
}

uint64_t sub_20D9D8D24()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20D9D8E20, 0, 0);
}

uint64_t sub_20D9D8E20()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t CharacteristicNotificationManager.remove(registrationRequest:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  if (qword_27C842410 != -1)
  {
    swift_once();
  }

  v3 = qword_27C843648;

  return MEMORY[0x2822009F8](sub_20D9D8F18, v3, 0);
}

uint64_t sub_20D9D8F18()
{
  v15 = v0;
  if (qword_27C842428 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_20DD64C44();
  __swift_project_value_buffer(v2, qword_27C843650);

  v3 = sub_20DD64C24();
  v4 = sub_20DD65384();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 40);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = CharacteristicNotificationManager.RegistrationRequest.description.getter();
    v10 = sub_20D9E0B38(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_20D9BF000, v3, v4, "Removing registration request: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x20F327D10](v7, -1, -1);
    MEMORY[0x20F327D10](v6, -1, -1);
  }

  v11 = *(v0 + 40);
  v12 = *(v0 + 48);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8436A0, &qword_20DD93CD8);
  sub_20DD640E4();
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_20D9D9104, 0, 0);
}

uint64_t sub_20D9D9104()
{
  v1 = *(MEMORY[0x277D859E0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_20D9D91D8;
  v3 = *(v0 + 48);

  return MEMORY[0x2822007B8]();
}

uint64_t sub_20D9D91D8()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20D9EF648, 0, 0);
}

uint64_t sub_20D9D92D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843668, &qword_20DD93CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843670, &qword_20DD93CB8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843688, &qword_20DD93CC0);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v5, a1, v11);
  (*(v12 + 56))(v5, 0, 1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843690, &qword_20DD93CC8);
  sub_20DD65134();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_20D9D94B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843668, &qword_20DD93CB0);
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8439C8, &qword_20DD94040) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8439D0, &qword_20DD94048);
  v4[8] = v9;
  v10 = *(v9 - 8);
  v4[9] = v10;
  v11 = *(v10 + 64) + 15;
  v4[10] = swift_task_alloc();
  if (qword_27C842410 != -1)
  {
    swift_once();
  }

  v12 = qword_27C843648;
  v4[11] = qword_27C843648;

  return MEMORY[0x2822009F8](sub_20D9D9660, v12, 0);
}

uint64_t sub_20D9D9660()
{
  v1 = v0[10];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8436F0, &unk_20DD93D00);
  sub_20DD65144();
  v4 = sub_20D9EBA28(&unk_27C843700, v3, type metadata accessor for CharacteristicNotificationActor);
  v0[12] = v4;
  v5 = v0[11];
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_20D9D977C;
  v8 = v0[10];
  v9 = v0[7];
  v10 = v0[8];

  return MEMORY[0x2822003E8](v9, v5, v4, v10);
}

uint64_t sub_20D9D977C()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20D9D988C, v2, 0);
}

uint64_t sub_20D9D988C()
{
  v1 = v0[7];
  if ((*(v0[4] + 48))(v1, 1, v0[3]) == 1)
  {
    v3 = v0[5];
    v2 = v0[6];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    sub_20D9EF52C(v1, v0[6]);
    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = sub_20D9D99CC;
    v7 = v0[2];

    return sub_20D9D9C80();
  }
}

uint64_t sub_20D9D99CC()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20D9D9ADC, v2, 0);
}

uint64_t sub_20D9D9ADC()
{
  v1 = v0[5];
  sub_20D9D7558(v0[6], v1, &qword_27C843668, &qword_20DD93CB0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843688, &qword_20DD93CC0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[5];
  v6 = v0[6];
  if (v4 == 1)
  {
    sub_20D9D76EC(v0[6], &qword_27C843668, &qword_20DD93CB0);
    sub_20D9D76EC(v5, &qword_27C843668, &qword_20DD93CB0);
  }

  else
  {
    sub_20DD650B4();
    sub_20D9D76EC(v6, &qword_27C843668, &qword_20DD93CB0);
    (*(v3 + 8))(v5, v2);
  }

  v7 = v0[11];
  v8 = v0[12];
  v9 = *(MEMORY[0x277D85798] + 4);
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_20D9D977C;
  v11 = v0[10];
  v12 = v0[7];
  v13 = v0[8];

  return MEMORY[0x2822003E8](v12, v7, v8, v13);
}

uint64_t sub_20D9D9C80()
{
  v1[29] = v0;
  v1[30] = *v0;
  v2 = *(*(sub_20DD63744() - 8) + 64) + 15;
  v1[31] = swift_task_alloc();
  if (qword_27C842410 != -1)
  {
    swift_once();
  }

  v3 = qword_27C843648;
  v1[32] = qword_27C843648;

  return MEMORY[0x2822009F8](sub_20D9D9D70, v3, 0);
}

uint64_t sub_20D9D9D70()
{
  v88 = v0;
  v1 = *(v0 + 232);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8436A0, &qword_20DD93CD8);
  v2 = sub_20DD640D4();
  v86 = v0;
  swift_endAccess();
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = sub_20D9E0AB0(*(v2 + 16), 0);
  v5 = sub_20D9EAF28(&v87, (v4 + 32), v3, v2);
  sub_20D9C51CC();
  if (v5 != v3)
  {
    __break(1u);
LABEL_4:

    v4 = MEMORY[0x277D84F90];
  }

  v87 = MEMORY[0x277D84F90];
  LODWORD(v6) = v4 < 0 || (v4 & 0x4000000000000000) != 0;
  if (v6 == 1)
  {
    goto LABEL_92;
  }

  v7 = *(v4 + 16);
LABEL_10:
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v9 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x20F326680](v9, v4);
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_23:
          __break(1u);
LABEL_24:
          v16 = v87;
          v8 = MEMORY[0x277D84F90];
          goto LABEL_26;
        }
      }

      else
      {
        if (v9 >= *(v4 + 16))
        {
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          v7 = sub_20DD655B4();
          goto LABEL_10;
        }

        v11 = *(v4 + 8 * v9 + 32);

        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_23;
        }
      }

      v13 = OBJC_IVAR____TtCC4Home33CharacteristicNotificationManager19RegistrationRequest_subscribedCharacteristics;
      swift_beginAccess();
      v14 = *(v11 + v13);
      if ((v14 & 0xC000000000000001) != 0)
      {

        v15 = sub_20DD655B4();

        if (!v15)
        {
LABEL_20:

          goto LABEL_14;
        }
      }

      else if (!*(v14 + 16))
      {
        goto LABEL_20;
      }

      sub_20DD65754();
      v10 = v87[2];
      sub_20DD65784();
      sub_20DD65794();
      sub_20DD65764();
LABEL_14:
      ++v9;
      if (v12 == v7)
      {
        goto LABEL_24;
      }
    }
  }

  v16 = MEMORY[0x277D84F90];
LABEL_26:
  v17 = v16 < 0 || (v16 & 0x4000000000000000) != 0;
  if (v17)
  {
    v85 = sub_20DD655B4();
    if (v85)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v85 = *(v16 + 16);
    if (v85)
    {
      goto LABEL_32;
    }
  }

  v18 = *(v86 + 232);
  v19 = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_subscribedCharacteristics;
  swift_beginAccess();
  if (!*(*(v18 + v19) + 16))
  {

    if (qword_27C842428 != -1)
    {
      swift_once();
    }

    v72 = sub_20DD64C44();
    __swift_project_value_buffer(v72, qword_27C843650);
    v73 = sub_20DD64C24();
    v74 = sub_20DD65384();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_20D9BF000, v73, v74, "No registrations to enable or disable", v75, 2u);
      MEMORY[0x20F327D10](v75, -1, -1);
    }

    v76 = v86;
    goto LABEL_86;
  }

LABEL_32:
  if (v6)
  {
    v20 = sub_20DD655B4();
  }

  else
  {
    v20 = *(v4 + 16);
  }

  if (v17)
  {
    v21 = sub_20DD655B4();
  }

  else
  {
    v21 = *(v16 + 16);
  }

  v4 = v85;
  v22 = v20 - v21;
  if (__OFSUB__(v20, v21))
  {
    __break(1u);
  }

  else if (qword_27C842428 == -1)
  {
    goto LABEL_40;
  }

  swift_once();
LABEL_40:
  v23 = sub_20DD64C44();
  *(v86 + 264) = __swift_project_value_buffer(v23, qword_27C843650);

  v24 = sub_20DD64C24();
  v25 = sub_20DD65384();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134218240;
    if (v17)
    {
      v27 = sub_20DD655B4();
    }

    else
    {
      v27 = *(v16 + 16);
    }

    *(v26 + 4) = v27;

    *(v26 + 12) = 2048;
    *(v26 + 14) = v22;
    _os_log_impl(&dword_20D9BF000, v24, v25, "Updating subscriptions for registrations (c:%ld, empty:%ld)", v26, 0x16u);
    MEMORY[0x20F327D10](v26, -1, -1);
  }

  else
  {
  }

  if (v85 && (*(*(v86 + 232) + OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_isDisabled) & 1) != 0)
  {

    *(v86 + 304) = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_homesToClear;
    swift_beginAccess();
    *(v86 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8436E0, &qword_20DD93CF8);
    v28 = sub_20DD640D4();
    *(v86 + 320) = v28;
    swift_endAccess();
    v29 = *(v28 + 32);
    *(v86 + 377) = v29;
    v30 = -1;
    v31 = -1 << v29;
    v32 = *(v28 + 64);
    if (-v31 < 64)
    {
      v30 = ~(-1 << -v31);
    }

    v33 = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_subscribedCharacteristics;
    *(v86 + 328) = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_subscribedCharacteristics;
    v34 = v30 & v32;
    if (v34)
    {
      v35 = 0;
      v36 = *(v86 + 320);
LABEL_72:
      *(v86 + 336) = v34;
      *(v86 + 344) = v35;
      v61 = *(v86 + 232);
      v62 = *(*(v36 + 56) + ((v35 << 9) | (8 * __clz(__rbit64(v34)))));
      *(v86 + 352) = v62;
      swift_beginAccess();
      v63 = *(v61 + v33);
      v64 = *(v63 + 16);
      v65 = v62;
      v66 = v65;
      if (v64 && (v67 = sub_20D9CB2EC(v65), (v68 & 1) != 0))
      {
        v69 = *(*(v63 + 56) + 8 * v67);
        swift_endAccess();
      }

      else
      {
        swift_endAccess();
        if (v8 >> 62 && sub_20DD655B4())
        {
          sub_20D9EE5C0(MEMORY[0x277D84F90], &qword_27C843978, &qword_20DD93FE0, &qword_280E02100, 0x277CD1970);
          v69 = v83;
        }

        else
        {
          v69 = MEMORY[0x277D84FA0];
        }
      }

      *(v86 + 360) = v69;
      v70 = *(v86 + 240);
      v71 = swift_task_alloc();
      *(v86 + 368) = v71;
      *v71 = v86;
      v71[1] = sub_20D9DAD78;

      return sub_20D9DB11C(v66, v69);
    }

    v59 = 0;
    v60 = ((63 - v31) >> 6) - 1;
    v36 = *(v86 + 320);
    while (v60 != v59)
    {
      v35 = v59 + 1;
      v34 = *(v36 + 8 * v59++ + 72);
      if (v34)
      {
        goto LABEL_72;
      }
    }

    v77 = *(v86 + 312);
    v78 = *(v86 + 304);
    v79 = *(v86 + 232);

    swift_beginAccess();
    v76 = v86;
    sub_20DD640F4();
    swift_endAccess();
    swift_beginAccess();
    v80 = *(v79 + v33);
    *(v79 + v33) = MEMORY[0x277D84F98];

LABEL_86:
    v81 = *(v76 + 248);

    v82 = *(v76 + 8);

    return v82();
  }

  v37 = sub_20DD64C24();
  v38 = sub_20DD65354();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_20D9BF000, v37, v38, "Current registrations:", v39, 2u);
    MEMORY[0x20F327D10](v39, -1, -1);
  }

  if (v85)
  {
    v40 = 0;
    v41 = v16 & 0xC000000000000001;
    v84 = v16 & 0xC000000000000001;
    do
    {
      if (v41)
      {
        LODWORD(v6) = MEMORY[0x20F326680](v40, v16);
        v50 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_90;
        }
      }

      else
      {
        if (v40 >= *(v16 + 16))
        {
          goto LABEL_91;
        }

        v6 = *(v16 + 8 * v40 + 32);

        v50 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_90;
        }
      }

      v51 = sub_20DD64C24();
      v52 = sub_20DD65354();

      if (os_log_type_enabled(v51, v52))
      {
        v42 = v16;
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v87 = v44;
        *v43 = 136315138;

        v45 = CharacteristicNotificationManager.RegistrationRequest.description.getter();
        v47 = v46;

        v48 = sub_20D9E0B38(v45, v47, &v87);
        v4 = v85;

        *(v43 + 4) = v48;
        _os_log_impl(&dword_20D9BF000, v51, v52, "%s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x20F327D10](v44, -1, -1);
        v49 = v43;
        v16 = v42;
        v41 = v84;
        MEMORY[0x20F327D10](v49, -1, -1);
      }

      else
      {
      }

      ++v40;
    }

    while (v50 != v4);
  }

  v53 = *(v86 + 232);
  v54 = sub_20D9EC1DC(v16);
  *(v86 + 272) = v54;

  v55 = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_subscribedCharacteristics;
  *(v86 + 280) = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_subscribedCharacteristics;
  swift_beginAccess();
  v56 = *(v53 + v55);
  *(v86 + 288) = v56;

  v57 = swift_task_alloc();
  *(v86 + 296) = v57;
  *v57 = v86;
  v57[1] = sub_20D9DA7FC;

  return sub_20D9ECA60(v54, v56);
}

uint64_t sub_20D9DA7FC(char a1)
{
  v2 = *(*v1 + 296);
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 256);
  v6 = *v1;
  *(*v1 + 376) = a1;

  return MEMORY[0x2822009F8](sub_20D9DA930, v4, 0);
}

void sub_20D9DA930()
{
  v55 = v0;
  v1 = *(v0 + 272);
  v49 = *(v0 + 232);
  sub_20D9DB5C8(v1);
  v2 = v1 + 64;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);
  v6 = (63 - v4) >> 6;
  v51 = v1;

  v7 = 0;
  if (v5)
  {
    while (1)
    {
      v8 = v7;
LABEL_9:
      v9 = *(v53 + 248);
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = *(*(v51 + 48) + ((v8 << 9) | (8 * v10)));
      v12 = [v11 uniqueIdentifier];
      sub_20DD63714();

      swift_beginAccess();
      v13 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8436E0, &qword_20DD93CF8);
      sub_20DD64134();
      swift_endAccess();

      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  v14 = *(v53 + 376);
  v16 = *(v53 + 272);
  v15 = *(v53 + 280);
  v17 = *(v53 + 232);

  v18 = *(v17 + v15);
  *(v17 + v15) = v16;

  if (sub_20DD64C14() & 1) != 0 && (v14)
  {
    v19 = *(*(v53 + 232) + *(v53 + 280));
    v20 = v19 + 64;
    v21 = -1;
    v22 = -1 << *(v19 + 32);
    if (-v22 < 64)
    {
      v21 = ~(-1 << -v22);
    }

    v23 = v21 & *(v19 + 64);
    v24 = (63 - v22) >> 6;
    v25 = *(*(v53 + 232) + *(v53 + 280));

    v26 = 0;
    v47 = v19;
    if (v23)
    {
      goto LABEL_18;
    }

LABEL_19:
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_30;
      }

      if (v27 >= v24)
      {

        break;
      }

      v23 = *(v20 + 8 * v27);
      ++v26;
      if (v23)
      {
        while (1)
        {
          v28 = *(v53 + 264);
          v29 = __clz(__rbit64(v23));
          v23 &= v23 - 1;
          v30 = (v27 << 9) | (8 * v29);
          v31 = *(*(v19 + 56) + v30);
          v32 = *(*(v19 + 48) + v30);

          v33 = sub_20DD64C24();
          v34 = sub_20DD65384();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            v54 = v50;
            *v35 = 136315394;
            v52 = v32;
            v36 = [v32 name];
            v48 = v34;
            v37 = sub_20DD64EB4();
            v39 = v38;

            v40 = sub_20D9E0B38(v37, v39, &v54);

            *(v35 + 4) = v40;
            *(v35 + 12) = 2080;
            v41 = Set<>.groupedDescription.getter(v31);
            v43 = v42;

            v44 = sub_20D9E0B38(v41, v43, &v54);

            *(v35 + 14) = v44;
            v19 = v47;
            _os_log_impl(&dword_20D9BF000, v33, v48, "%s: currently subscribed to %s", v35, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x20F327D10](v50, -1, -1);
            MEMORY[0x20F327D10](v35, -1, -1);

            v26 = v27;
            if (!v23)
            {
              goto LABEL_19;
            }
          }

          else
          {

            v26 = v27;
            if (!v23)
            {
              goto LABEL_19;
            }
          }

LABEL_18:
          v27 = v26;
        }
      }
    }
  }

  v45 = *(v53 + 248);

  v46 = *(v53 + 8);

  v46();
}

uint64_t sub_20D9DAD78()
{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 360);
  v3 = *(*v0 + 256);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_20D9DAEA4, v3, 0);
}

uint64_t sub_20D9DAEA4()
{
  v2 = *(v1 + 344);
  v3 = (*(v1 + 336) - 1) & *(v1 + 336);
  if (v3)
  {
    v4 = *(v1 + 320);
LABEL_7:
    *(v1 + 336) = v3;
    *(v1 + 344) = v2;
    v6 = *(v1 + 328);
    v7 = *(v1 + 232);
    v8 = *(*(v4 + 56) + ((v2 << 9) | (8 * __clz(__rbit64(v3)))));
    *(v1 + 352) = v8;
    swift_beginAccess();
    v9 = *(v7 + v6);
    v10 = *(v9 + 16);
    v11 = v8;
    v0 = v11;
    if (v10 && (v12 = sub_20D9CB2EC(v11), (v13 & 1) != 0))
    {
      v14 = *(*(v9 + 56) + 8 * v12);
      swift_endAccess();
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      swift_endAccess();
      if (v15 >> 62)
      {
LABEL_19:
        if (sub_20DD655B4())
        {
          sub_20D9EE5C0(MEMORY[0x277D84F90], &qword_27C843978, &qword_20DD93FE0, &qword_280E02100, 0x277CD1970);
          v14 = v27;
          goto LABEL_12;
        }
      }

      v14 = MEMORY[0x277D84FA0];
    }

LABEL_12:
    *(v1 + 360) = v14;
    v16 = *(v1 + 240);
    v17 = swift_task_alloc();
    *(v1 + 368) = v17;
    *v17 = v1;
    v17[1] = sub_20D9DAD78;

    return sub_20D9DB11C(v0, v14);
  }

  while (1)
  {
    v5 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v5 >= (((1 << *(v1 + 377)) + 63) >> 6))
    {
      break;
    }

    v4 = *(v1 + 320);
    v3 = *(v4 + 8 * v5 + 64);
    ++v2;
    if (v3)
    {
      v2 = v5;
      goto LABEL_7;
    }
  }

  v19 = *(v1 + 320);
  v20 = *(v1 + 328);
  v22 = *(v1 + 304);
  v21 = *(v1 + 312);
  v23 = *(v1 + 232);

  swift_beginAccess();
  sub_20DD640F4();
  swift_endAccess();
  swift_beginAccess();
  v24 = *(v23 + v20);
  *(v23 + v20) = MEMORY[0x277D84F98];

  v25 = *(v1 + 248);

  v26 = *(v1 + 8);

  return v26();
}

uint64_t sub_20D9DB11C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (qword_27C842410 != -1)
  {
    swift_once();
  }

  v4 = qword_27C843648;

  return MEMORY[0x2822009F8](sub_20D9DB1B8, v4, 0);
}

uint64_t sub_20D9DB1B8()
{
  v29 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = [v3 hf_allServices];
  sub_20D9D7510(0, &qword_27C8435F0, 0x277CD1D90);
  v5 = sub_20DD64FD4();

  v6 = v3;
  v7 = sub_20D9EDED8(v5, v2, v1, v6);

  v8 = sub_20DA0D258(v7, v2);
  v0[5] = v8;

  if (qword_27C842428 != -1)
  {
    swift_once();
  }

  v9 = v0[2];
  v10 = sub_20DD64C44();
  __swift_project_value_buffer(v10, qword_27C843650);
  v11 = v9;

  v12 = sub_20DD64C24();
  v13 = sub_20DD65384();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = v0[2];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28[0] = v16;
    *v15 = 136315394;
    v17 = [v14 name];
    v18 = sub_20DD64EB4();
    v20 = v19;

    v21 = sub_20D9E0B38(v18, v20, v28);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    v22 = Set<>.groupedDescription.getter(v8);
    v24 = sub_20D9E0B38(v22, v23, v28);

    *(v15 + 14) = v24;
    _os_log_impl(&dword_20D9BF000, v12, v13, "%s: Disabling whole home notifications using %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v16, -1, -1);
    MEMORY[0x20F327D10](v15, -1, -1);
  }

  v25 = swift_task_alloc();
  v0[6] = v25;
  *v25 = v0;
  v25[1] = sub_20D9DB4B8;
  v26 = v0[2];

  return sub_20D9EC494(0, v26, v8);
}

uint64_t sub_20D9DB4B8()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

void sub_20D9DB5C8(uint64_t a1)
{
  v3 = [objc_opt_self() sharedDispatcher];
  v4 = [v3 homeManager];

  if (v4)
  {

    v21 = MEMORY[0x277D84F98];
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;

    for (i = 0; v7; i = v10)
    {
      v10 = i;
LABEL_9:
      v11 = (v10 << 9) | (8 * __clz(__rbit64(v7)));
      v12 = *(*(a1 + 56) + v11);
      v20[0] = *(*(a1 + 48) + v11);
      v20[1] = v12;
      v3 = v20[0];

      sub_20D9DC0C4(&v21, v20, v1);
      v7 &= v7 - 1;
    }

    while (1)
    {
      v10 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v10 >= v8)
      {

        v13 = v21;
        v14 = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_previousNotificationState;
        swift_beginAccess();
        v15 = *(v1 + v14);
        *(v1 + v14) = v13;

        v16 = type metadata accessor for CharacteristicNotificationManager.StateContainer();
        v17 = objc_allocWithZone(v16);
        *&v17[OBJC_IVAR____TtCC4Home33CharacteristicNotificationManager14StateContainer_characteristicsEnabled] = v13;
        v19.receiver = v17;
        v19.super_class = v16;
        v18 = objc_msgSendSuper2(&v19, sel_init);
        [objc_opt_self() setOverrideNotificationsStateContainer_];

        return;
      }

      v7 = *(a1 + 64 + 8 * v10);
      ++i;
      if (v7)
      {
        goto LABEL_9;
      }
    }

    __break(1u);

    __break(1u);
  }
}

uint64_t Set<>.groupedDescription.getter(uint64_t a1)
{
  v78 = sub_20DD63744();
  v2 = *(v78 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v78);
  v77 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20DD641F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v72 - v11;
  v13 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (!sub_20DD655B4())
    {
      goto LABEL_8;
    }
  }

  else if (!*(a1 + 16))
  {
LABEL_8:
    sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
    sub_20D9EC18C(&unk_280E020F0, &qword_280E02100, 0x277CD1970);
    return sub_20DD651F4();
  }

  if ((sub_20DD64C14() & 1) == 0)
  {
    goto LABEL_8;
  }

  v75 = v5;
  v76 = sub_20D9D4EA0(MEMORY[0x277D84F90]);
  v79 = v2;
  v74 = v10;
  if (v13)
  {
    swift_unknownObjectRetain();
    sub_20DD65564();
    sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
    sub_20D9EC18C(&unk_280E020F0, &qword_280E02100, 0x277CD1970);
    sub_20DD65284();
    a1 = v84;
    v14 = v85;
    v15 = v86;
    v13 = v87;
    v16 = v88;
  }

  else
  {
    v18 = -1 << *(a1 + 32);
    v14 = a1 + 56;
    v15 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v16 = v20 & *(a1 + 56);
  }

  v80 = v15;
  v21 = (v15 + 64) >> 6;
  v73 = (v6 + 8);
LABEL_14:
  v22 = &selRef_posterFrameGenerationRequests;
  while (1)
  {
    v23 = v13;
    if (a1 < 0)
    {
      break;
    }

    v24 = v13;
    v25 = v16;
    if (!v16)
    {
      while (1)
      {
        v13 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v13 >= v21)
        {
          goto LABEL_31;
        }

        v25 = *(v14 + 8 * v13);
        ++v24;
        if (v25)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_54;
    }

LABEL_20:
    v16 = (v25 - 1) & v25;
    v26 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v25)))));
    if (!v26)
    {
      goto LABEL_31;
    }

LABEL_24:
    v28 = [v26 v22[500]];
    if (v28)
    {
      v72 = v28;
      v29 = v76;
      if (*(v76 + 16) && (v30 = sub_20D9CB33C(v72), (v31 & 1) != 0))
      {
        v82 = *(*(v29 + 56) + 8 * v30);
      }

      else
      {
        v82 = MEMORY[0x277D84FA0];
      }

      v33 = v74;
      v32 = v75;
      sub_20DD653B4();
      sub_20D9E1318(v12, v33);
      (*v73)(v12, v32);
      v34 = v82;
      v35 = v76;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v81 = v35;
      v37 = v72;
      sub_20D9D0374(v34, v72, isUniquelyReferenced_nonNull_native);

      v76 = v81;
      goto LABEL_14;
    }
  }

  v27 = sub_20DD655F4();
  if (v27)
  {
    v81 = v27;
    sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
    swift_dynamicCast();
    v26 = v82;
    v22 = &selRef_posterFrameGenerationRequests;
    if (v82)
    {
      goto LABEL_24;
    }
  }

LABEL_31:
  sub_20D9C51CC();
  v21 = v76;
  v38 = *(v76 + 16);
  if (!v38)
  {
    goto LABEL_34;
  }

  v39 = sub_20D9E0AB0(*(v76 + 16), 0);
  v40 = sub_20D9EB07C(&v82, v39 + 4, v38, v21);
  swift_bridgeObjectRetain_n();
  sub_20D9C51CC();
  if (v40 != v38)
  {
    __break(1u);
LABEL_34:

    v39 = MEMORY[0x277D84F90];
  }

  v82 = v39;
  a1 = 0;
  sub_20D9E8D00(&v82);

  v23 = v82;
  if ((v82 & 0x8000000000000000) == 0 && (v82 & 0x4000000000000000) == 0)
  {
    v41 = *(v82 + 16);
    if (v41)
    {
      goto LABEL_38;
    }

LABEL_55:
    v44 = MEMORY[0x277D84F90];
LABEL_56:

    v82 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8436B0, &qword_20DD93CF0);
    sub_20D9EF5F8(&qword_27C844020, &unk_27C8436B0, &qword_20DD93CF0);
    v69 = sub_20DD64E44();
    v71 = v70;

    v82 = 592475;
    v83 = 0xE300000000000000;
    MEMORY[0x20F325E90](v69, v71);

    MEMORY[0x20F325E90](23818, 0xE200000000000000);

    return v82;
  }

LABEL_54:
  v41 = sub_20DD655B4();
  if (!v41)
  {
    goto LABEL_55;
  }

LABEL_38:
  if (v41 >= 1)
  {
    v42 = 0;
    v43 = v23 & 0xC000000000000001;
    v74 = (v79 + 8);
    v44 = MEMORY[0x277D84F90];
    v75 = v23 & 0xC000000000000001;
    do
    {
      if (v43)
      {
        v45 = MEMORY[0x20F326680](v42, v23);
      }

      else
      {
        v45 = *(v23 + 8 * v42 + 32);
      }

      v46 = v45;
      if (*(v21 + 16) && (v47 = sub_20D9CB33C(v45), (v48 & 1) != 0) && *(*(*(v21 + 56) + 8 * v47) + 16))
      {
        v49 = *(*(v21 + 56) + 8 * v47);

        v51 = sub_20D9DF9A0(v50);
        v80 = a1;

        v82 = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8436B0, &qword_20DD93CF0);
        sub_20D9EF5F8(&qword_27C844020, &unk_27C8436B0, &qword_20DD93CF0);
        v79 = sub_20DD64E44();
        v53 = v52;

        v54 = [v46 name];
        v55 = sub_20DD64EB4();
        v56 = v44;
        v58 = v57;

        v82 = v55;
        v83 = v58;
        MEMORY[0x20F325E90](10272, 0xE200000000000000);
        v59 = [v46 uniqueIdentifier];
        v60 = v77;
        sub_20DD63714();

        sub_20D9EBA28(&qword_27C8436C0, 255, MEMORY[0x277CC95F0]);
        v61 = v78;
        v62 = sub_20DD65934();
        MEMORY[0x20F325E90](v62);

        v63 = v61;
        v44 = v56;
        (*v74)(v60, v63);
        MEMORY[0x20F325E90](1528838697, 0xE400000000000000);
        MEMORY[0x20F325E90](v79, v53);

        MEMORY[0x20F325E90](93, 0xE100000000000000);
        v64 = v82;
        v65 = v83;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_20D9E0040(0, *(v56 + 2) + 1, 1, v56);
        }

        v67 = *(v44 + 2);
        v66 = *(v44 + 3);
        a1 = v80;
        if (v67 >= v66 >> 1)
        {
          v44 = sub_20D9E0040((v66 > 1), v67 + 1, 1, v44);
        }

        *(v44 + 2) = v67 + 1;
        v68 = &v44[16 * v67];
        *(v68 + 4) = v64;
        *(v68 + 5) = v65;
        v43 = v75;
        v21 = v76;
      }

      else
      {
      }

      ++v42;
    }

    while (v41 != v42);
    goto LABEL_56;
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_20D9DC0C4(void *a1, uint64_t a2, uint64_t a3)
{
  v98 = a3;
  v87 = a1;
  v107 = sub_20DD636C4();
  v100 = *(v107 - 8);
  v4 = *(v100 + 64);
  v5 = MEMORY[0x28223BE20](v107);
  v105 = v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v97 = v85 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v85 - v13;
  v102 = sub_20DD63744();
  v93 = *(v102 - 8);
  v15 = *(v93 + 64);
  v16 = MEMORY[0x28223BE20](v102);
  v18 = v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v85 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v85 - v22;
  v24 = *(a2 + 8);
  v25 = *a2;

  v26 = [v25 hf_safeUniqueIdentifier];
  if (!v26)
  {

    return;
  }

  v88 = v21;
  v27 = v26;
  sub_20DD63714();

  v28 = sub_20D9D4FC0(MEMORY[0x277D84F90]);
  v106 = v14;
  v91 = v23;
  v86 = v25;
  if ((v24 & 0xC000000000000001) != 0)
  {
    sub_20DD65564();
    sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
    sub_20D9EC18C(&unk_280E020F0, &qword_280E02100, 0x277CD1970);
    sub_20DD65284();
    v24 = v110;
    v29 = v111;
    v30 = v112;
    v31 = v113;
    v32 = v114;
  }

  else
  {
    v31 = 0;
    v33 = -1 << *(v24 + 32);
    v29 = v24 + 56;
    v30 = ~v33;
    v34 = -v33;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    v32 = v35 & *(v24 + 56);
  }

  v85[2] = v30;
  v36 = (v30 + 64) >> 6;
  v96 = (v100 + 56);
  v85[1] = v100 + 16;
  v101 = (v93 + 8);
  v95 = (v100 + 48);
  v104 = (v100 + 32);
  v90 = v93 + 16;
  v89 = v100 + 40;
  v92 = v24;
  v99 = v29;
  v94 = v36;
  while (v24 < 0)
  {
    v43 = sub_20DD655F4();
    v40 = v106;
    if (!v43 || (v115 = v43, sub_20D9D7510(0, &qword_280E02100, 0x277CD1970), swift_dynamicCast(), v42 = v109, v39 = v31, v41 = v32, !v109))
    {
LABEL_43:
      sub_20D9C51CC();
      v81 = v87;
      v82 = *v87;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v109 = *v81;
      v84 = v91;
      sub_20D9D0788(v28, v91, isUniquelyReferenced_nonNull_native);

      *v81 = v109;
      (*v101)(v84, v102);
      return;
    }

LABEL_21:
    v108 = v42;
    v103 = v41;
    v44 = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_previousNotificationState;
    v45 = v98;
    swift_beginAccess();
    v46 = *(v45 + v44);
    if (v46 && *(v46 + 16) && (v47 = sub_20D9CB38C(v91), (v48 & 1) != 0))
    {
      v49 = *(*(v46 + 56) + 8 * v47);

      v50 = [v108 uniqueIdentifier];
      v51 = v88;
      sub_20DD63714();
      v52 = v107;
      if (*(v49 + 16) && (v53 = sub_20D9CB38C(v51), (v54 & 1) != 0))
      {
        (*(v100 + 16))(v40, *(v49 + 56) + *(v100 + 72) * v53, v52);
        v55 = 0;
      }

      else
      {
        v55 = 1;
      }

      v24 = v92;

      v56 = v107;
      (*v96)(v40, v55, 1, v107);
      swift_endAccess();

      (*v101)(v88, v102);
    }

    else
    {
      swift_endAccess();
      v56 = v107;
      (*v96)(v40, 1, 1, v107);
    }

    v57 = [v108 uniqueIdentifier];
    sub_20DD63714();

    sub_20D9D7558(v40, v12, &unk_27C843810, &qword_20DD93F00);
    v58 = *v95;
    v59 = (*v95)(v12, 1, v56);
    v60 = v97;
    if (v59 == 1)
    {
      sub_20DD63684();
      if (v58(v12, 1, v56) != 1)
      {
        sub_20D9D76EC(v12, &unk_27C843810, &qword_20DD93F00);
      }
    }

    else
    {
      (*v104)(v97, v12, v56);
    }

    v61 = v12;
    v62 = *v104;
    (*v104)(v105, v60, v56);
    v63 = swift_isUniquelyReferenced_nonNull_native();
    v109 = v28;
    v64 = sub_20D9CB38C(v18);
    v66 = v28[2];
    v67 = (v65 & 1) == 0;
    v68 = __OFADD__(v66, v67);
    v69 = v66 + v67;
    if (v68)
    {
      goto LABEL_45;
    }

    v70 = v65;
    if (v28[3] >= v69)
    {
      if ((v63 & 1) == 0)
      {
        v80 = v64;
        sub_20D9D25A8();
        v64 = v80;
      }
    }

    else
    {
      sub_20D9CC600(v69, v63);
      v64 = sub_20D9CB38C(v18);
      if ((v70 & 1) != (v71 & 1))
      {
        goto LABEL_47;
      }
    }

    v72 = v107;
    v28 = v109;
    if (v70)
    {
      (*(v100 + 40))(v109[7] + *(v100 + 72) * v64, v105, v107);

      (*v101)(v18, v102);
      sub_20D9D76EC(v106, &unk_27C843810, &qword_20DD93F00);
      v31 = v39;
      v32 = v103;
      v12 = v61;
    }

    else
    {
      v109[(v64 >> 6) + 8] |= 1 << v64;
      v73 = v18;
      v74 = v93;
      v75 = v64;
      v76 = v102;
      (*(v93 + 16))(v28[6] + *(v93 + 72) * v64, v73, v102);
      v62((v28[7] + *(v100 + 72) * v75), v105, v72);

      v77 = *(v74 + 8);
      v18 = v73;
      v77(v73, v76);
      sub_20D9D76EC(v106, &unk_27C843810, &qword_20DD93F00);
      v78 = v28[2];
      v68 = __OFADD__(v78, 1);
      v79 = v78 + 1;
      if (v68)
      {
        goto LABEL_46;
      }

      v28[2] = v79;
      v31 = v39;
      v32 = v103;
      v12 = v61;
      v24 = v92;
    }

    v29 = v99;
    v36 = v94;
  }

  v37 = v31;
  v38 = v32;
  v39 = v31;
  v40 = v106;
  if (v32)
  {
LABEL_17:
    v41 = (v38 - 1) & v38;
    v42 = *(*(v24 + 48) + ((v39 << 9) | (8 * __clz(__rbit64(v38)))));
    if (!v42)
    {
      goto LABEL_43;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v39 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v39 >= v36)
    {
      goto LABEL_43;
    }

    v38 = *(v29 + 8 * v39);
    ++v37;
    if (v38)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  sub_20DD659E4();
  __break(1u);
}

uint64_t CharacteristicNotificationManager.deinit()
{
  v1 = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_registrationRequests;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8436A0, &qword_20DD93CD8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_subscribedCharacteristics);

  v4 = *(v0 + OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_previousNotificationState);

  v5 = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_homesToClear;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8436E0, &qword_20DD93CF8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_disableReasons);

  v8 = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_subscriptionStream;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8436F0, &unk_20DD93D00);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_subscriptionContinuation;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843690, &qword_20DD93CC8);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  return v0;
}

uint64_t CharacteristicNotificationManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_registrationRequests;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8436A0, &qword_20DD93CD8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_subscribedCharacteristics);

  v4 = *(v0 + OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_previousNotificationState);

  v5 = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_homesToClear;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8436E0, &qword_20DD93CF8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_disableReasons);

  v8 = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_subscriptionStream;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8436F0, &unk_20DD93D00);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC4Home33CharacteristicNotificationManager_subscriptionContinuation;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843690, &qword_20DD93CC8);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = *(*v0 + 48);
  v13 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_20D9DCD90@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, void *a4@<X8>)
{
  v7 = [*a1 characteristics];
  v8 = sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
  v9 = sub_20DD64FD4();

  v10 = v9;
  v59 = MEMORY[0x277D84F90];
  if (v9 >> 62)
  {
    goto LABEL_30;
  }

  v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v11)
  {
    v45 = a4;
    v12 = 0;
    v13 = v10 & 0xC000000000000001;
    v14 = v10 & 0xFFFFFFFFFFFFFF8;
    v46 = v10;
    v15 = v10 + 32;
    v52 = a2 & 0xC000000000000001;
    v57 = a2 + 56;
    v51 = v8;
    v55 = v10 & 0xC000000000000001;
    v56 = v11;
    v53 = v10 + 32;
    v54 = v10 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v13)
      {
        v10 = MEMORY[0x20F326680](v12, v46);
      }

      else
      {
        if (v12 >= *(v14 + 16))
        {
          goto LABEL_29;
        }

        v10 = *(v15 + 8 * v12);
      }

      a4 = v10;
      if (__OFADD__(v12++, 1))
      {
        break;
      }

      if ([v10 isNotificationEnabled])
      {
        if (!v52)
        {
          if (*(a2 + 16))
          {
            v19 = *(a2 + 40);
            v20 = sub_20DD65444();
            v21 = -1 << *(a2 + 32);
            v22 = v20 & ~v21;
            if ((*(v57 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
            {
              v23 = ~v21;
              do
              {
                v24 = *(*(a2 + 48) + 8 * v22);
                v25 = sub_20DD65454();

                if (v25)
                {
                  goto LABEL_24;
                }

                v22 = (v22 + 1) & v23;
              }

              while (((*(v57 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0);
            }
          }

LABEL_18:
          if (qword_27C842428 != -1)
          {
            swift_once();
          }

          v26 = sub_20DD64C44();
          __swift_project_value_buffer(v26, qword_27C843650);
          v27 = a4;
          v28 = a3;
          v29 = sub_20DD64C24();
          v30 = sub_20DD65364();

          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            v58 = v50;
            *v31 = 136315394;
            v32 = [v28 name];
            log = v29;
            v33 = a2;
            v34 = sub_20DD64EB4();
            v47 = v30;
            v35 = a3;
            v37 = v36;

            v38 = v34;
            a2 = v33;
            v39 = sub_20D9E0B38(v38, v37, &v58);
            a3 = v35;

            *(v31 + 4) = v39;
            *(v31 + 12) = 2112;
            *(v31 + 14) = v27;
            *v49 = v27;
            v40 = v27;
            _os_log_impl(&dword_20D9BF000, log, v47, "%s: Found notification enabled characteristic we weren't tracking: %@", v31, 0x16u);
            sub_20D9D76EC(v49, &unk_27C843630, &qword_20DD94080);
            MEMORY[0x20F327D10](v49, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v50);
            MEMORY[0x20F327D10](v50, -1, -1);
            MEMORY[0x20F327D10](v31, -1, -1);
          }

          else
          {
          }

          v8 = v51;
          goto LABEL_24;
        }

        v17 = a4;
        v18 = sub_20DD65604();

        if ((v18 & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_24:
        sub_20DD65754();
        v41 = *(v59 + 16);
        sub_20DD65784();
        sub_20DD65794();
        v10 = sub_20DD65764();
        v13 = v55;
        v11 = v56;
        v15 = v53;
        v14 = v54;
        if (v12 == v56)
        {
LABEL_27:
          v42 = v59;
          a4 = v45;
          goto LABEL_32;
        }
      }

      else
      {

        if (v12 == v11)
        {
          goto LABEL_27;
        }
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v43 = v10;
    v11 = sub_20DD655B4();
    v10 = v43;
  }

  v42 = MEMORY[0x277D84F90];
LABEL_32:

  *a4 = v42;
  return result;
}

uint64_t sub_20D9DD1F8(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

void sub_20D9DD28C(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_20D9E3254(&v10, *(*(a1 + 48) + ((v8 << 9) | (8 * v9))));

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
      return;
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

void sub_20D9DD3AC(unint64_t a1, unint64_t *a2, uint64_t *a3, unint64_t *a4, void (*a5)(id *))
{
  v6 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_20DD65564();
    sub_20D9D7510(0, a2, a3);
    sub_20D9EC18C(a4, a2, a3);
    sub_20DD65284();
    v6 = v24[1];
    v10 = v24[2];
    v11 = v24[3];
    v12 = v24[4];
    v13 = v24[5];
  }

  else
  {
    v12 = 0;
    v14 = -1 << *(a1 + 32);
    v10 = (a1 + 56);
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = (v16 & *(a1 + 56));
  }

  v17 = (v11 + 64) >> 6;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v18 = v12;
    v19 = v13;
    v20 = v12;
    if (!v13)
    {
      break;
    }

LABEL_12:
    v21 = (v19 - 1) & v19;
    if (!*(*(v6 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19))))))
    {
LABEL_18:
      sub_20D9C51CC();
      return;
    }

    while (1)
    {
      a5(v24);

      v12 = v20;
      v13 = v21;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_20DD655F4())
      {
        sub_20D9D7510(0, a2, a3);
        swift_dynamicCast();
        v20 = v12;
        v21 = v13;
        if (v24[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v20 = (v18 + 1);
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_18;
    }

    v19 = v10[v20];
    ++v18;
    if (v19)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_20D9DD5A0(uint64_t a1)
{
  v2 = sub_20DD63744();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v24 - v9;
  result = MEMORY[0x28223BE20](v8);
  v13 = v24 - v12;
  v14 = 0;
  v25 = a1;
  v17 = *(a1 + 56);
  v16 = a1 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v24[1] = v3 + 32;
  v24[2] = v3 + 16;
  v24[0] = v3 + 8;
  if ((v19 & v15) != 0)
  {
    do
    {
      v22 = v14;
LABEL_9:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      (*(v3 + 16))(v13, *(v25 + 48) + *(v3 + 72) * (v23 | (v22 << 6)), v2);
      (*(v3 + 32))(v7, v13, v2);
      sub_20D9E2834(v10, v7);
      result = (*(v3 + 8))(v10, v2);
    }

    while (v20);
  }

  while (1)
  {
    v22 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
    }

    v20 = *(v16 + 8 * v22);
    ++v14;
    if (v20)
    {
      v14 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t CharacteristicNotificationManager.RegistrationRequest.reason.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_20D9DD7F4(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t CharacteristicNotificationManager.RegistrationRequest.__allocating_init(home:characteristics:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  CharacteristicNotificationManager.RegistrationRequest.init(home:characteristics:reason:)(a1, a2, a3, a4);
  return v11;
}

void *CharacteristicNotificationManager.RegistrationRequest.init(home:characteristics:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_20DD63734();
  if (MEMORY[0x277D84F90] >> 62 && sub_20DD655B4())
  {
    sub_20D9EE5C0(MEMORY[0x277D84F90], &qword_27C843978, &qword_20DD93FE0, &qword_280E02100, 0x277CD1970);
    v9 = v12;
  }

  else
  {
    v9 = MEMORY[0x277D84FA0];
  }

  *(v4 + OBJC_IVAR____TtCC4Home33CharacteristicNotificationManager19RegistrationRequest_subscribedCharacteristics) = v9;
  v4[2] = a1;
  v4[3] = a3;
  v4[4] = a4;
  v10 = OBJC_IVAR____TtCC4Home33CharacteristicNotificationManager19RegistrationRequest_subscribedCharacteristics;
  swift_beginAccess();
  *(v4 + v10) = a2;

  return v4;
}

uint64_t CharacteristicNotificationManager.RegistrationRequest.deinit()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12 - v3;
  v5 = sub_20DD65114();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  sub_20D9DDEBC(0, 0, v4, &unk_20DD93D18, v6);

  sub_20D9D76EC(v4, &qword_27C8443F0, &qword_20DD93820);

  v7 = *(v0 + 32);

  v8 = OBJC_IVAR____TtCC4Home33CharacteristicNotificationManager19RegistrationRequest_identifier;
  v9 = sub_20DD63744();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(v0 + OBJC_IVAR____TtCC4Home33CharacteristicNotificationManager19RegistrationRequest_subscribedCharacteristics);

  return v0;
}

uint64_t sub_20D9DDB00()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843668, &qword_20DD93CB0) - 8) + 64) + 15;
  v0[2] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843670, &qword_20DD93CB8);
  v0[3] = v2;
  v3 = *(v2 - 8);
  v0[4] = v3;
  v4 = *(v3 + 64) + 15;
  v0[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D9DDC00, 0, 0);
}

uint64_t sub_20D9DDC00()
{
  if (qword_27C842410 != -1)
  {
    swift_once();
  }

  v1 = qword_27C843648;
  *(v0 + 48) = qword_27C843648;

  return MEMORY[0x2822009F8](sub_20D9DDC98, v1, 0);
}

uint64_t sub_20D9DDC98()
{
  if (qword_27C842408 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_20D9DDD28, v1, 0);
}

uint64_t sub_20D9DDD28()
{
  *(v0 + 56) = qword_27C843640;

  return MEMORY[0x2822009F8](sub_20D9DDD9C, 0, 0);
}

uint64_t sub_20D9DDD9C()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843688, &qword_20DD93CC0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843690, &qword_20DD93CC8);
  sub_20DD65134();

  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_20D9DDEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_20D9D7558(a3, v27 - v11, &qword_27C8443F0, &qword_20DD93820);
  v13 = sub_20DD65114();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_20D9D76EC(v12, &qword_27C8443F0, &qword_20DD93820);
  }

  else
  {
    sub_20DD65104();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_20DD65094();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_20DD64EF4() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

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

uint64_t CharacteristicNotificationManager.RegistrationRequest.__deallocating_deinit()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v14 - v3;
  v5 = sub_20DD65114();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  sub_20D9DDEBC(0, 0, v4, &unk_20DD93D20, v6);

  sub_20D9D76EC(v4, &qword_27C8443F0, &qword_20DD93820);

  v7 = *(v0 + 32);

  v8 = OBJC_IVAR____TtCC4Home33CharacteristicNotificationManager19RegistrationRequest_identifier;
  v9 = sub_20DD63744();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(v0 + OBJC_IVAR____TtCC4Home33CharacteristicNotificationManager19RegistrationRequest_subscribedCharacteristics);

  v11 = *(*v0 + 48);
  v12 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t CharacteristicNotificationManager.RegistrationRequest.add(characteristics:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843668, &qword_20DD93CB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843670, &qword_20DD93CB8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  swift_beginAccess();

  sub_20D9DD3AC(v9, &qword_280E02100, 0x277CD1970, &unk_280E020F0, sub_20D9E10E0);
  swift_endAccess();
  if (qword_27C842408 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8436A0, &qword_20DD93CD8);
  v10 = sub_20DD64124();
  swift_endAccess();
  if (!v10)
  {
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843688, &qword_20DD93CC0);
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843690, &qword_20DD93CC8);
  sub_20DD65134();

  return (*(v5 + 8))(v8, v4);
}

uint64_t CharacteristicNotificationManager.RegistrationRequest.remove(characteristics:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843668, &qword_20DD93CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843670, &qword_20DD93CB8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  swift_beginAccess();
  sub_20D9E9C28(a1, &qword_280E02100, 0x277CD1970, &unk_280E020F0, sub_20D9EA074);
  swift_endAccess();
  if (qword_27C842408 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8436A0, &qword_20DD93CD8);
  v11 = sub_20DD64124();
  swift_endAccess();
  if (!v11)
  {
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843688, &qword_20DD93CC0);
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843690, &qword_20DD93CC8);
  sub_20DD65134();

  return (*(v7 + 8))(v10, v6);
}

uint64_t CharacteristicNotificationManager.RegistrationRequest.replaceCharacteristics(with:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843668, &qword_20DD93CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843670, &qword_20DD93CB8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  v11 = OBJC_IVAR____TtCC4Home33CharacteristicNotificationManager19RegistrationRequest_subscribedCharacteristics;
  swift_beginAccess();
  v12 = *(v1 + v11);

  *(v1 + v11) = MEMORY[0x277D84FA0];

  sub_20D9DD3AC(v13, &qword_280E02100, 0x277CD1970, &unk_280E020F0, sub_20D9E10E0);
  swift_endAccess();
  if (qword_27C842408 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8436A0, &qword_20DD93CD8);
  v14 = sub_20DD64124();
  swift_endAccess();
  if (!v14)
  {
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843688, &qword_20DD93CC0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843690, &qword_20DD93CC8);
  sub_20DD65134();

  return (*(v7 + 8))(v10, v6);
}

unint64_t CharacteristicNotificationManager.RegistrationRequest.description.getter()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 24);
    sub_20DD65704();

    v9 = 0xD000000000000011;
    MEMORY[0x20F325E90](v2, v1);
  }

  else
  {
    sub_20DD65704();

    v9 = 0xD000000000000010;
    sub_20DD63744();
    sub_20D9EBA28(&qword_27C8436C0, 255, MEMORY[0x277CC95F0]);
    v3 = sub_20DD65934();
    MEMORY[0x20F325E90](v3);
  }

  MEMORY[0x20F325E90](0x3A6E69202CLL, 0xE500000000000000);
  v4 = [*(v0 + 16) name];
  v5 = sub_20DD64EB4();
  v7 = v6;

  MEMORY[0x20F325E90](v5, v7);

  MEMORY[0x20F325E90](125, 0xE100000000000000);
  return v9;
}

uint64_t sub_20D9DED48@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_20DD63744();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v37 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  v18 = [a2 hf_safeUniqueIdentifier];
  if (v18)
  {
    v19 = v18;
    sub_20DD63714();

    (*(v8 + 32))(v17, v15, v7);
    v20 = *(v3 + OBJC_IVAR____TtCC4Home33CharacteristicNotificationManager14StateContainer_characteristicsEnabled);
    if (*(v20 + 16) && (v21 = sub_20D9CB38C(v17), (v22 & 1) != 0))
    {
      v23 = *(*(v20 + 56) + 8 * v21);

      v24 = [a1 uniqueIdentifier];
      sub_20DD63714();

      if (*(v23 + 16))
      {
        v25 = sub_20D9CB38C(v12);
        if (v26)
        {
          v27 = v25;
          v28 = *(v23 + 56);
          v29 = sub_20DD636C4();
          v30 = *(v29 - 8);
          (*(v30 + 16))(a3, v28 + *(v30 + 72) * v27, v29);
          v31 = *(v8 + 8);
          v31(v12, v7);
          v31(v17, v7);

          return (*(v30 + 56))(a3, 0, 1, v29);
        }
      }

      v35 = *(v8 + 8);
      v35(v12, v7);
      v35(v17, v7);
    }

    else
    {
      (*(v8 + 8))(v17, v7);
    }

    v36 = sub_20DD636C4();
    return (*(*(v36 - 8) + 56))(a3, 1, 1, v36);
  }

  else
  {
    v33 = sub_20DD636C4();
    v34 = *(*(v33 - 8) + 56);

    return v34(a3, 1, 1, v33);
  }
}

BOOL sub_20D9DF358(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  v8 = sub_20DD636C4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  sub_20D9DED48(a1, a2, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_20D9D76EC(v7, &unk_27C843810, &qword_20DD93F00);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    v17 = [a1 valueUpdatedTime];
    sub_20DD63674();

    sub_20DD635A4();
    v19 = v18;
    v20 = *(v9 + 8);
    v20(v13, v8);
    v20(v15, v8);
    return v19 > -1.0;
  }
}

id sub_20D9DF600()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20D9DF648()
{
  type metadata accessor for CharacteristicNotificationActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_27C843648 = v0;
  return result;
}

uint64_t sub_20D9DF6B0(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t CharacteristicNotificationActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_20D9DF778()
{
  if (qword_27C842410 != -1)
  {
    swift_once();
  }
}

uint64_t sub_20D9DF7DC()
{
  v0 = sub_20DD64C44();
  __swift_allocate_value_buffer(v0, qword_27C84C588);
  __swift_project_value_buffer(v0, qword_27C84C588);
  return sub_20DD64C34();
}

uint64_t sub_20D9DF858()
{
  v0 = sub_20DD64C44();
  __swift_allocate_value_buffer(v0, qword_27C84C5A0);
  __swift_project_value_buffer(v0, qword_27C84C5A0);
  return sub_20DD64C34();
}

uint64_t sub_20D9DF8D8()
{
  v0 = sub_20DD64C44();
  __swift_allocate_value_buffer(v0, qword_27C843650);
  v1 = __swift_project_value_buffer(v0, qword_27C843650);
  if (qword_27C842420 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27C84C5A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_20D9DF9A0(uint64_t a1)
{
  v44 = sub_20DD641F4();
  v3 = *(v44 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v44);
  v43 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v42 = &v35 - v7;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return v9;
  }

  v35 = v1;
  v49 = MEMORY[0x277D84F90];
  sub_20DA4AF84(0, v8, 0);
  v9 = v49;
  v10 = a1 + 56;
  v11 = -1 << *(a1 + 32);
  result = sub_20DD65514();
  v13 = result;
  v14 = 0;
  v39 = v3 + 8;
  v40 = v3 + 16;
  v36 = a1 + 64;
  v37 = v8;
  v38 = v3;
  v41 = a1 + 56;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
  {
    if ((*(v10 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_21;
    }

    v45 = v14;
    v46 = *(a1 + 36);
    v47 = v13 >> 6;
    v16 = *(a1 + 48) + *(v3 + 72) * v13;
    v17 = *(v3 + 16);
    v48 = v9;
    v18 = v42;
    v19 = v44;
    v17(v42, v16, v44);
    v20 = a1;
    v17(v43, v18, v19);
    v21 = sub_20DD64ED4();
    v23 = v22;
    v24 = v18;
    v9 = v48;
    result = (*(v3 + 8))(v24, v19);
    v49 = v9;
    v26 = *(v9 + 16);
    v25 = *(v9 + 24);
    if (v26 >= v25 >> 1)
    {
      result = sub_20DA4AF84((v25 > 1), v26 + 1, 1);
      v9 = v49;
    }

    *(v9 + 16) = v26 + 1;
    v27 = v9 + 16 * v26;
    *(v27 + 32) = v21;
    *(v27 + 40) = v23;
    v15 = 1 << *(v20 + 32);
    a1 = v20;
    v10 = v41;
    if (v13 >= v15)
    {
      goto LABEL_22;
    }

    v28 = *(v41 + 8 * v47);
    if ((v28 & (1 << v13)) == 0)
    {
      goto LABEL_23;
    }

    if (v46 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v29 = v28 & (-2 << (v13 & 0x3F));
    if (v29)
    {
      v15 = __clz(__rbit64(v29)) | v13 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = v47 << 6;
      v31 = v47 + 1;
      v32 = (v36 + 8 * v47);
      while (v31 < (v15 + 63) >> 6)
      {
        v34 = *v32++;
        v33 = v34;
        v30 += 64;
        ++v31;
        if (v34)
        {
          result = sub_20D9EF46C(v13, v46, 0);
          v15 = __clz(__rbit64(v33)) + v30;
          goto LABEL_4;
        }
      }

      result = sub_20D9EF46C(v13, v46, 0);
    }

LABEL_4:
    v14 = v45 + 1;
    v13 = v15;
    v3 = v38;
    if (v45 + 1 == v37)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_20D9DFD10(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x20F326680](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_20DD655B4();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_20D9DFE38(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_20D9DFEE4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    v14 = *(*(v3 + 48) + 8 * v12);

    v15 = sub_20D9CB2EC(v14);
    v17 = v16;

    if ((v17 & 1) == 0)
    {

      return 0;
    }

    v18 = *(*(a2 + 56) + 8 * v15);

    v20 = sub_20DA2C03C(v19, v13);

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

char *sub_20D9E0040(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843870, &qword_20DD93F40);
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

char *sub_20D9E014C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8437F0, &unk_20DD93EE0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_20D9E0250(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843968, &unk_20DD93FD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843970, &qword_20DD95690);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20D9E0398(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843FB0, &unk_20DD95650);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8438F0, &qword_20DD93F90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20D9E04F4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8438C8, &qword_20DD93F78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8438D0, &unk_20DD93F80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_20D9E0650(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_20D9E082C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8437F8, &unk_20DD95610);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_20D9E0930(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843870, &qword_20DD93F40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

size_t sub_20D9E09B4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844690, &qword_20DD93F60);
  v4 = *(sub_20DD636C4() - 8);
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

void *sub_20D9E0AB0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_20D9E0B38(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_20D9E0C04(v11, 0, 0, 1, a1, a2);
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
    sub_20D9D7174(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_20D9E0C04(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_20D9E0D10(a5, a6);
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
    result = sub_20DD65744();
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

uint64_t sub_20D9E0D10(uint64_t a1, unint64_t a2)
{
  v4 = sub_20D9E0D5C(a1, a2);
  sub_20D9E0E8C(&unk_2824A30E8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_20D9E0D5C(uint64_t a1, unint64_t a2)
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

  v6 = sub_20D9E0F78(v5, 0);
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

  result = sub_20DD65744();
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
        v10 = sub_20DD64F44();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_20D9E0F78(v10, 0);
        result = sub_20DD656F4();
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

uint64_t sub_20D9E0E8C(uint64_t result)
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

  result = sub_20D9E0FEC(result, v12, 1, v3);
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

void *sub_20D9E0F78(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8439B0, &qword_20DD94018);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_20D9E0FEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8439B0, &qword_20DD94018);
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

uint64_t sub_20D9E10E0(void *a1, void *a2)
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

    v9 = sub_20DD655C4();

    if (v9)
    {

      sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_20DD655B4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_20D9E3788(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_20D9F6AEC(v22 + 1);
    }

    v20 = v8;
    sub_20D9F96FC();

    *v3 = v21;
    goto LABEL_16;
  }

  sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
  v11 = *(v6 + 40);
  v12 = sub_20DD65444();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_20D9E48E8(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_20DD65454();

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

uint64_t sub_20D9E1318(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20DD641F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_20D9EBA28(&qword_27C843998, 255, MEMORY[0x277D16340]);
  v36 = a2;
  v13 = sub_20DD64E24();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_20D9EBA28(&unk_27C8439A0, 255, MEMORY[0x277D16340]);
      v23 = sub_20DD64E64();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_20D9E4A78(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_20D9E1600(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_20DD65A64();
  sub_20DA02910(v28, a2);
  v8 = sub_20DD65AA4();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_31:
    v22 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28[0] = *v3;
    sub_20D9E4D48(a2, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v28[0];
    result = 1;
    goto LABEL_34;
  }

  v11 = ~v9;
  v12 = 0x800000020DD97E80;
  v13 = 0x6E696D7575636156;
  v14 = 0x676E6970706F4DLL;
  while (1)
  {
    v15 = *(*(v6 + 48) + v10);
    if (v15 == 5)
    {
      if (a2 == 5)
      {
        goto LABEL_33;
      }

      goto LABEL_4;
    }

    if (v15 == 4)
    {
      if (a2 == 4)
      {
        goto LABEL_33;
      }

      goto LABEL_4;
    }

    if ((a2 & 0xFE) == 4)
    {
      goto LABEL_4;
    }

    if (v15 == 3)
    {
      if (a2 == 3)
      {
        goto LABEL_33;
      }

      goto LABEL_4;
    }

    if (a2 == 3)
    {
      goto LABEL_4;
    }

    v16 = 0xE900000000000067;
    v27 = a1;
    if (*(*(v6 + 48) + v10))
    {
      if (v15 == 1)
      {
        v17 = 0xE700000000000000;
        v18 = v14;
        v19 = a2;
        if (!a2)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v18 = 0xD000000000000013;
        v17 = v12;
        v19 = a2;
        if (!a2)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      v18 = 0x6E696D7575636156;
      v17 = 0xE900000000000067;
      v19 = a2;
      if (!a2)
      {
        goto LABEL_25;
      }
    }

    v13 = v19 == 1 ? v14 : 0xD000000000000013;
    v16 = v19 == 1 ? 0xE700000000000000 : v12;
LABEL_25:
    if (v18 == v13 && v17 == v16)
    {
      break;
    }

    v25 = v12;
    v26 = v3;
    v20 = v14;
    v21 = sub_20DD65974();

    v14 = v20;
    v13 = 0x6E696D7575636156;
    v12 = v25;
    v3 = v26;
    a1 = v27;
    if (v21)
    {
      goto LABEL_33;
    }

LABEL_4:
    v10 = (v10 + 1) & v11;
    if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  a1 = v27;
LABEL_33:
  result = 0;
  LOBYTE(a2) = *(*(v6 + 48) + v10);
LABEL_34:
  *a1 = a2;
  return result;
}

uint64_t sub_20D9E188C(void *a1, void *a2)
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

    v9 = sub_20DD655C4();

    if (v9)
    {

      sub_20D9D7510(0, &qword_27C843958, off_277DEFC90);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_20DD655B4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_20D9E3978(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_20D9F7160(v22 + 1);
    }

    v20 = v8;
    sub_20D9F96FC();

    *v3 = v21;
    goto LABEL_16;
  }

  sub_20D9D7510(0, &qword_27C843958, off_277DEFC90);
  v11 = *(v6 + 40);
  v12 = sub_20DD65444();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_20D9E5014(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_20DD65454();

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

uint64_t sub_20D9E1AC4(void *a1, void *a2)
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

    v9 = sub_20DD655C4();

    if (v9)
    {

      sub_20D9D7510(0, &unk_27C843940, off_277DEF398);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_20DD655B4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_20D9E3B68(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_20D9F7174(v22 + 1);
    }

    v20 = v8;
    sub_20D9F96FC();

    *v3 = v21;
    goto LABEL_16;
  }

  sub_20D9D7510(0, &unk_27C843940, off_277DEF398);
  v11 = *(v6 + 40);
  v12 = sub_20DD65444();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_20D9E51A4(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_20DD65454();

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

uint64_t sub_20D9E1CFC(void *a1, void *a2)
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

    v9 = sub_20DD655C4();

    if (v9)
    {

      sub_20D9D7510(0, &qword_27C843BB0, 0x277CD1B68);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_20DD655B4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_20D9E3D58(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_20D9F7188(v22 + 1);
    }

    v20 = v8;
    sub_20D9F96FC();

    *v3 = v21;
    goto LABEL_16;
  }

  sub_20D9D7510(0, &qword_27C843BB0, 0x277CD1B68);
  v11 = *(v6 + 40);
  v12 = sub_20DD65444();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_20D9E5334(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_20DD65454();

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

uint64_t sub_20D9E1F34(void *a1, void *a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_20DD65A64();
  sub_20DD65A84();
  if (a2)
  {
    v6 = a2;
    sub_20DD65464();
  }

  v7 = sub_20DD65AA4();
  v8 = -1 << *(v4 + 32);
  v9 = v7 & ~v8;
  if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_11:
    v16 = *v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v18 = a2;
    sub_20D9E54C4(a2, v9, isUniquelyReferenced_nonNull_native);
    *v21 = v23;
    *a1 = a2;
    return 1;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = *(*(v4 + 48) + 8 * v9);
    if (!v11)
    {
      break;
    }

    if (a2)
    {
      sub_20D9D7510(0, &unk_280E020A0, off_277DEF390);
      v12 = a2;
      v13 = v11;
      v14 = sub_20DD65454();

      if (v14)
      {

        v15 = *(*(v4 + 48) + 8 * v9);
        goto LABEL_13;
      }
    }

LABEL_6:
    v9 = (v9 + 1) & v10;
    if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (a2)
  {
    goto LABEL_6;
  }

  v15 = 0;
LABEL_13:
  *a1 = v15;
  v20 = v15;
  return 0;
}

uint64_t sub_20D9E20DC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20DD64674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_20D9EBA28(&qword_27C8438A0, 255, MEMORY[0x277D17688]);
  v36 = a2;
  v13 = sub_20DD64E24();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_20D9EBA28(&qword_27C8438A8, 255, MEMORY[0x277D17688]);
      v23 = sub_20DD64E64();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_20D9E56A4(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_20D9E23C4(void *a1, void *a2)
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

    v9 = sub_20DD655C4();

    if (v9)
    {

      sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_20DD655B4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_20D9E3F48(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_20D9F776C(v22 + 1);
    }

    v20 = v8;
    sub_20D9F96FC();

    *v3 = v21;
    goto LABEL_16;
  }

  sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
  v11 = *(v6 + 40);
  v12 = sub_20DD65444();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_20D9E5974(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_20DD65454();

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

uint64_t sub_20D9E25FC(void *a1, void *a2)
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

    v9 = sub_20DD655C4();

    if (v9)
    {

      sub_20D9D7510(0, &unk_280E01EE0, 0x277CD1D88);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_20DD655B4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_20D9E4138(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_20D9F7780(v22 + 1);
    }

    v20 = v8;
    sub_20D9F96FC();

    *v3 = v21;
    goto LABEL_16;
  }

  sub_20D9D7510(0, &unk_280E01EE0, 0x277CD1D88);
  v11 = *(v6 + 40);
  v12 = sub_20DD65444();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_20D9E5B04(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_20DD65454();

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

uint64_t sub_20D9E2834(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20DD63744();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_20D9EBA28(&qword_280E02290, 255, MEMORY[0x277CC95F0]);
  v36 = a2;
  v13 = sub_20DD64E24();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_20D9EBA28(&qword_280E02288, 255, MEMORY[0x277CC95F0]);
      v23 = sub_20DD64E64();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_20D9E5C94(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_20D9E2B1C(void *a1, void *a2)
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

    v9 = sub_20DD655C4();

    if (v9)
    {

      type metadata accessor for MatterAccessoryLikeItem();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_20DD655B4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_20D9E4328(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_20D9F7AF0(v22 + 1);
    }

    v20 = v8;
    sub_20D9F96FC();

    *v3 = v21;
    goto LABEL_16;
  }

  type metadata accessor for MatterAccessoryLikeItem();
  v11 = *(v6 + 40);
  v12 = sub_20DD65444();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_20D9E5F64(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_20DD65454();

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

uint64_t sub_20D9E2D34(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20DD63FE4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_20D9EBA28(&qword_27C844380, 255, MEMORY[0x277D15B60]);
  v36 = a2;
  v13 = sub_20DD64E24();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_20D9EBA28(&qword_27C8434C0, 255, MEMORY[0x277D15B60]);
      v23 = sub_20DD64E64();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_20D9E60E4(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_20D9E301C(void *a1, void *a2)
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

    v9 = sub_20DD655C4();

    if (v9)
    {

      sub_20D9D7510(0, &unk_27C843860, off_277DEFE38);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_20DD655B4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_20D9E4508(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_20D9F7E60(v22 + 1);
    }

    v20 = v8;
    sub_20D9F96FC();

    *v3 = v21;
    goto LABEL_16;
  }

  sub_20D9D7510(0, &unk_27C843860, off_277DEFE38);
  v11 = *(v6 + 40);
  v12 = sub_20DD65444();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_20D9E63B4(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_20DD65454();

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

uint64_t sub_20D9E3254(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_20DD64EB4();
  sub_20DD65A64();
  sub_20DD64F24();
  v8 = sub_20DD65AA4();

  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = sub_20DD64EB4();
      v15 = v14;
      if (v13 == sub_20DD64EB4() && v15 == v16)
      {

        goto LABEL_12;
      }

      v18 = sub_20DD65974();

      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v23 = *(*(v6 + 48) + 8 * v10);
    *a1 = v23;
    v24 = v23;
    return 0;
  }

  else
  {
LABEL_9:
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v21 = a2;
    sub_20D9E6544(v21, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
    *a1 = v21;
    return 1;
  }
}

uint64_t sub_20D9E3400(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_20DD65A64();
  sub_20DD64F24();
  v9 = sub_20DD65AA4();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_20DD65974() & 1) != 0)
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

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_20D9E672C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_20D9E3550(void *a1, void *a2)
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

    v9 = sub_20DD655C4();

    if (v9)
    {

      sub_20D9D7510(0, &qword_27C844290, 0x277CD1650);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_20DD655B4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_20D9E46F8(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_20D9F8350(v22 + 1);
    }

    v20 = v8;
    sub_20D9F96FC();

    *v3 = v21;
    goto LABEL_16;
  }

  sub_20D9D7510(0, &qword_27C844290, 0x277CD1650);
  v11 = *(v6 + 40);
  v12 = sub_20DD65444();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_20D9E68AC(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_20DD65454();

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

uint64_t sub_20D9E3788(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843978, &qword_20DD93FE0);
    v2 = sub_20DD656C4();
    v16 = v2;
    sub_20DD65564();
    if (sub_20DD655F4())
    {
      sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_20D9F6AEC(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_20DD65444();
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

      while (sub_20DD655F4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_20D9E3978(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843950, &qword_20DD93FC0);
    v2 = sub_20DD656C4();
    v16 = v2;
    sub_20DD65564();
    if (sub_20DD655F4())
    {
      sub_20D9D7510(0, &qword_27C843958, off_277DEFC90);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_20D9F7160(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_20DD65444();
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

      while (sub_20DD655F4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_20D9E3B68(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843BC0, &qword_20DD93FB8);
    v2 = sub_20DD656C4();
    v16 = v2;
    sub_20DD65564();
    if (sub_20DD655F4())
    {
      sub_20D9D7510(0, &unk_27C843940, off_277DEF398);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_20D9F7174(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_20DD65444();
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

      while (sub_20DD655F4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_20D9E3D58(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843920, &qword_20DD93FA8);
    v2 = sub_20DD656C4();
    v16 = v2;
    sub_20DD65564();
    if (sub_20DD655F4())
    {
      sub_20D9D7510(0, &qword_27C843BB0, 0x277CD1B68);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_20D9F7188(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_20DD65444();
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

      while (sub_20DD655F4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_20D9E3F48(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843888, &qword_20DD93F50);
    v2 = sub_20DD656C4();
    v16 = v2;
    sub_20DD65564();
    if (sub_20DD655F4())
    {
      sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_20D9F776C(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_20DD65444();
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

      while (sub_20DD655F4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_20D9E4138(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843880, &qword_20DD93F48);
    v2 = sub_20DD656C4();
    v16 = v2;
    sub_20DD65564();
    if (sub_20DD655F4())
    {
      sub_20D9D7510(0, &unk_280E01EE0, 0x277CD1D88);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_20D9F7780(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_20DD65444();
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

      while (sub_20DD655F4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_20D9E4328(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843850, &qword_20DD93F28);
    v2 = sub_20DD656C4();
    v16 = v2;
    sub_20DD65564();
    if (sub_20DD655F4())
    {
      type metadata accessor for MatterAccessoryLikeItem();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_20D9F7AF0(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_20DD65444();
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

      while (sub_20DD655F4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_20D9E4508(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843B80, &qword_20DD93F38);
    v2 = sub_20DD656C4();
    v16 = v2;
    sub_20DD65564();
    if (sub_20DD655F4())
    {
      sub_20D9D7510(0, &unk_27C843860, off_277DEFE38);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_20D9F7E60(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_20DD65444();
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

      while (sub_20DD655F4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_20D9E46F8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843820, &qword_20DD93F08);
    v2 = sub_20DD656C4();
    v16 = v2;
    sub_20DD65564();
    if (sub_20DD655F4())
    {
      sub_20D9D7510(0, &qword_27C844290, 0x277CD1650);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_20D9F8350(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_20DD65444();
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

      while (sub_20DD655F4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

void sub_20D9E48E8(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D9F6AEC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_20D9E71B0(&qword_27C843978, &qword_20DD93FE0);
      goto LABEL_12;
    }

    sub_20D9E8918(v6 + 1, &qword_27C843978, &qword_20DD93FE0);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_20DD65444();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_20DD65454();

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
  sub_20DD659D4();
  __break(1u);
}

uint64_t sub_20D9E4A78(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_20DD641F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D9F6B00(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_20D9E6CCC(MEMORY[0x277D16340], qword_27C843BD0, &qword_20DD94010);
      goto LABEL_12;
    }

    sub_20D9E72F0(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_20D9EBA28(&qword_27C843998, 255, MEMORY[0x277D16340]);
  v15 = sub_20DD64E24();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_20D9EBA28(&unk_27C8439A0, 255, MEMORY[0x277D16340]);
      v23 = sub_20DD64E64();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20DD659D4();
  __break(1u);
  return result;
}

uint64_t sub_20D9E4D48(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_20D9F6E5C(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_20D9E6A3C();
        goto LABEL_39;
      }

      sub_20D9E7610(v7 + 1);
    }

    v9 = *v3;
    v10 = *(*v3 + 40);
    sub_20DD65A64();
    sub_20DA02910(v24, v6);
    result = sub_20DD65AA4();
    v11 = -1 << *(v9 + 32);
    a2 = result & ~v11;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      do
      {
        v13 = *(*(v9 + 48) + a2);
        if (v13 == 5)
        {
          if (v6 == 5)
          {
            goto LABEL_43;
          }

          goto LABEL_11;
        }

        if (v13 == 4)
        {
          if (v6 == 4)
          {
            goto LABEL_43;
          }

          goto LABEL_11;
        }

        if ((v6 & 0xFE) == 4)
        {
          goto LABEL_11;
        }

        if (v13 == 3)
        {
          if (v6 == 3)
          {
            goto LABEL_43;
          }

          goto LABEL_11;
        }

        if (v6 == 3)
        {
          goto LABEL_11;
        }

        if (*(*(v9 + 48) + a2))
        {
          if (v13 == 1)
          {
            v14 = 0xE700000000000000;
            v15 = 0x676E6970706F4DLL;
            v16 = v6;
            if (v6)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v15 = 0xD000000000000013;
            v14 = 0x800000020DD97E80;
            v16 = v6;
            if (v6)
            {
LABEL_26:
              if (v16 == 1)
              {
                v17 = 0x676E6970706F4DLL;
              }

              else
              {
                v17 = 0xD000000000000013;
              }

              if (v16 == 1)
              {
                v18 = 0xE700000000000000;
              }

              else
              {
                v18 = 0x800000020DD97E80;
              }

              if (v15 != v17)
              {
                goto LABEL_37;
              }

              goto LABEL_36;
            }
          }
        }

        else
        {
          v15 = 0x6E696D7575636156;
          v14 = 0xE900000000000067;
          v16 = v6;
          if (v6)
          {
            goto LABEL_26;
          }
        }

        v18 = 0xE900000000000067;
        if (v15 != 0x6E696D7575636156)
        {
          goto LABEL_37;
        }

LABEL_36:
        if (v14 == v18)
        {
          goto LABEL_42;
        }

LABEL_37:
        v19 = sub_20DD65974();

        if (v19)
        {
          goto LABEL_43;
        }

LABEL_11:
        a2 = (a2 + 1) & v12;
      }

      while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_39:
  v20 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + a2) = v6;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_42:

LABEL_43:
    result = sub_20DD659D4();
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v23;
  }

  return result;
}

void sub_20D9E5014(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D9F7160(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_20D9E71B0(&qword_27C843950, &qword_20DD93FC0);
      goto LABEL_12;
    }

    sub_20D9E8918(v6 + 1, &qword_27C843950, &qword_20DD93FC0);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_20DD65444();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_20D9D7510(0, &qword_27C843958, off_277DEFC90);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_20DD65454();

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
  sub_20DD659D4();
  __break(1u);
}

void sub_20D9E51A4(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D9F7174(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_20D9E71B0(&unk_27C843BC0, &qword_20DD93FB8);
      goto LABEL_12;
    }

    sub_20D9E8918(v6 + 1, &unk_27C843BC0, &qword_20DD93FB8);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_20DD65444();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_20D9D7510(0, &unk_27C843940, off_277DEF398);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_20DD65454();

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
  sub_20DD659D4();
  __break(1u);
}

void sub_20D9E5334(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D9F7188(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_20D9E71B0(&unk_27C843920, &qword_20DD93FA8);
      goto LABEL_12;
    }

    sub_20D9E8918(v6 + 1, &unk_27C843920, &qword_20DD93FA8);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_20DD65444();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_20D9D7510(0, &qword_27C843BB0, 0x277CD1B68);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_20DD65454();

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
  sub_20DD659D4();
  __break(1u);
}

void sub_20D9E54C4(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a3)
  {
    sub_20D9F719C(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_20D9E6B7C();
      goto LABEL_18;
    }

    sub_20D9E78E4(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_20DD65A64();
  sub_20DD65A84();
  if (a1)
  {
    v11 = a1;
    sub_20DD65464();
  }

  v12 = sub_20DD65AA4();
  v13 = -1 << *(v9 + 32);
  a2 = v12 & ~v13;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    do
    {
      v15 = *(*(v9 + 48) + 8 * a2);
      if (v15)
      {
        if (a1)
        {
          sub_20D9D7510(0, &unk_280E020A0, off_277DEF390);
          v16 = a1;
          v17 = v15;
          v18 = sub_20DD65454();

          if (v18)
          {
LABEL_17:
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843910, &qword_20DD93F98);
            sub_20DD659D4();
            __break(1u);
            break;
          }
        }
      }

      else if (!a1)
      {
        goto LABEL_17;
      }

      a2 = (a2 + 1) & v14;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_18:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v22;
  }
}

uint64_t sub_20D9E56A4(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_20DD64674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D9F7410(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_20D9E6CCC(MEMORY[0x277D17688], &qword_27C8438B0, &qword_20DD93F68);
      goto LABEL_12;
    }

    sub_20D9E7B2C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_20D9EBA28(&qword_27C8438A0, 255, MEMORY[0x277D17688]);
  v15 = sub_20DD64E24();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_20D9EBA28(&qword_27C8438A8, 255, MEMORY[0x277D17688]);
      v23 = sub_20DD64E64();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20DD659D4();
  __break(1u);
  return result;
}

void sub_20D9E5974(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D9F776C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_20D9E71B0(&qword_27C843888, &qword_20DD93F50);
      goto LABEL_12;
    }

    sub_20D9E8918(v6 + 1, &qword_27C843888, &qword_20DD93F50);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_20DD65444();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_20DD65454();

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
  sub_20DD659D4();
  __break(1u);
}

void sub_20D9E5B04(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D9F7780(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_20D9E71B0(&qword_27C843880, &qword_20DD93F48);
      goto LABEL_12;
    }

    sub_20D9E8918(v6 + 1, &qword_27C843880, &qword_20DD93F48);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_20DD65444();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_20D9D7510(0, &unk_280E01EE0, 0x277CD1D88);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_20DD65454();

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
  sub_20DD659D4();
  __break(1u);
}

uint64_t sub_20D9E5C94(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_20DD63744();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D9F7794(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_20D9E6CCC(MEMORY[0x277CC95F0], &unk_27C843830, &unk_20DD93F10);
      goto LABEL_12;
    }

    sub_20D9E7E4C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_20D9EBA28(&qword_280E02290, 255, MEMORY[0x277CC95F0]);
  v15 = sub_20DD64E24();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_20D9EBA28(&qword_280E02288, 255, MEMORY[0x277CC95F0]);
      v23 = sub_20DD64E64();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20DD659D4();
  __break(1u);
  return result;
}

void sub_20D9E5F64(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D9F7AF0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_20D9E71B0(&unk_27C843850, &qword_20DD93F28);
      goto LABEL_12;
    }

    sub_20D9E8918(v6 + 1, &unk_27C843850, &qword_20DD93F28);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_20DD65444();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for MatterAccessoryLikeItem();
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_20DD65454();

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
  sub_20DD659D4();
  __break(1u);
}

uint64_t sub_20D9E60E4(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_20DD63FE4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D9F7B04(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_20D9E6CCC(MEMORY[0x277D15B60], &qword_27C843B70, &qword_20DD93F30);
      goto LABEL_12;
    }

    sub_20D9E816C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_20D9EBA28(&qword_27C844380, 255, MEMORY[0x277D15B60]);
  v15 = sub_20DD64E24();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_20D9EBA28(&qword_27C8434C0, 255, MEMORY[0x277D15B60]);
      v23 = sub_20DD64E64();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20DD659D4();
  __break(1u);
  return result;
}

void sub_20D9E63B4(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D9F7E60(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_20D9E71B0(&unk_27C843B80, &qword_20DD93F38);
      goto LABEL_12;
    }

    sub_20D9E8918(v6 + 1, &unk_27C843B80, &qword_20DD93F38);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_20DD65444();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_20D9D7510(0, &unk_27C843860, off_277DEFE38);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_20DD65454();

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
  sub_20DD659D4();
  __break(1u);
}

uint64_t sub_20D9E6544(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_20D9F7E74(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_20D9E6F04();
      goto LABEL_16;
    }

    sub_20D9E848C(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_20DD64EB4();
  sub_20DD65A64();
  sub_20DD64F24();
  v11 = sub_20DD65AA4();

  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    type metadata accessor for HFItemProviderInvalidationReason(0);
    do
    {
      v14 = *(*(v9 + 48) + 8 * a2);
      v15 = sub_20DD64EB4();
      v17 = v16;
      if (v15 == sub_20DD64EB4() && v17 == v18)
      {
        goto LABEL_19;
      }

      v20 = sub_20DD65974();

      if (v20)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = v6;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_20DD659D4();
  __break(1u);
  return result;
}

uint64_t sub_20D9E672C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_20D9F80F0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_20D9E7054();
      goto LABEL_16;
    }

    sub_20D9E86E0(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_20DD65A64();
  sub_20DD64F24();
  result = sub_20DD65AA4();
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

      result = sub_20DD65974();
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
  result = sub_20DD659D4();
  __break(1u);
  return result;
}

void sub_20D9E68AC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20D9F8350(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_20D9E71B0(&unk_27C843820, &qword_20DD93F08);
      goto LABEL_12;
    }

    sub_20D9E8918(v6 + 1, &unk_27C843820, &qword_20DD93F08);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_20DD65444();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_20D9D7510(0, &qword_27C844290, 0x277CD1650);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_20DD65454();

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
  sub_20DD659D4();
  __break(1u);
}

void *sub_20D9E6A3C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843960, &qword_20DD93FC8);
  v2 = *v0;
  v3 = sub_20DD656A4();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

id sub_20D9E6B7C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843BA0, &qword_20DD93FA0);
  v2 = *v0;
  v3 = sub_20DD656A4();
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

void *sub_20D9E6CCC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v3;
  v13 = sub_20DD656A4();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

id sub_20D9E6F04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843B60, &qword_20DD93ED8);
  v2 = *v0;
  v3 = sub_20DD656A4();
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

void *sub_20D9E7054()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843848, &qword_20DD93F20);
  v2 = *v0;
  v3 = sub_20DD656A4();
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

id sub_20D9E71B0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_20DD656A4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_20D9E72F0(uint64_t a1)
{
  v2 = v1;
  v37 = sub_20DD641F4();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C843BD0, &qword_20DD94010);
  v10 = sub_20DD656B4();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_20D9EBA28(&qword_27C843998, 255, MEMORY[0x277D16340]);
      result = sub_20DD64E24();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_20D9E7610(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843960, &qword_20DD93FC8);
  result = sub_20DD656B4();
  v6 = result;
  if (!*(v3 + 16))
  {

LABEL_35:
    *v2 = v6;
    return result;
  }

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
  v27 = v2;
  v12 = result + 56;
  while (v10)
  {
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_20DD65A64();
    if (v17 == 5)
    {
      v19 = 1;
      goto LABEL_21;
    }

    if (v17 == 4)
    {
      v19 = 0;
LABEL_21:
      MEMORY[0x20F3269D0](v19);
      goto LABEL_22;
    }

    MEMORY[0x20F3269D0](2);
    sub_20DD65A84();
    if (v17 != 3)
    {
      sub_20DD64F24();
    }

LABEL_22:
    result = sub_20DD65AA4();
    v20 = -1 << *(v6 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
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
        v26 = *(v12 + 8 * v22);
        if (v26 != -1)
        {
          v13 = __clz(__rbit64(~v26)) + (v22 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_37;
    }

    v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    *(*(v6 + 48) + v13) = v17;
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

      v2 = v27;
      goto LABEL_35;
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
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_20D9E78E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843BA0, &qword_20DD93FA0);
  result = sub_20DD656B4();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_20DD65A64();
      sub_20DD65A84();
      if (v17)
      {
        v19 = v17;
        sub_20DD65464();
      }

      result = sub_20DD65AA4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_32;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
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

        v2 = v27;
        goto LABEL_30;
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
LABEL_32:
    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_20D9E7B2C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_20DD64674();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8438B0, &qword_20DD93F68);
  v10 = sub_20DD656B4();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_20D9EBA28(&qword_27C8438A0, 255, MEMORY[0x277D17688]);
      result = sub_20DD64E24();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_20D9E7E4C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_20DD63744();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843830, &unk_20DD93F10);
  v10 = sub_20DD656B4();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_20D9EBA28(&qword_280E02290, 255, MEMORY[0x277CC95F0]);
      result = sub_20DD64E24();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_20D9E816C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_20DD63FE4();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843B70, &qword_20DD93F30);
  v10 = sub_20DD656B4();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_20D9EBA28(&qword_27C844380, 255, MEMORY[0x277D15B60]);
      result = sub_20DD64E24();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_20D9E848C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843B60, &qword_20DD93ED8);
  result = sub_20DD656B4();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
      sub_20DD64EB4();
      sub_20DD65A64();
      v20 = v18;
      sub_20DD64F24();
      v21 = sub_20DD65AA4();

      v22 = -1 << *(v6 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v13 + 8 * v24);
          if (v28 != -1)
          {
            v14 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v20;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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