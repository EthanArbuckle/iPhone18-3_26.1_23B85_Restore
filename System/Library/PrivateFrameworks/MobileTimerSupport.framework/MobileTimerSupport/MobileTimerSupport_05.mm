unint64_t sub_22D7D1D78()
{
  result = qword_27DA034C0;
  if (!qword_27DA034C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA034C0);
  }

  return result;
}

unint64_t sub_22D7D1DCC()
{
  result = qword_27DA034D8;
  if (!qword_27DA034D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA034D8);
  }

  return result;
}

uint64_t Atomic.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  Atomic.init(wrappedValue:)(a1);
  return v5;
}

uint64_t sub_22D7D1E60(uint64_t (*a1)(void), uint64_t a2)
{
  if ([objc_opt_self() isMainThread])
  {
    return a1();
  }

  sub_22D7D281C();
  v5 = sub_22D81B678();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_22D7A8878;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_22D75BA3C;
  v8[3] = &block_descriptor_12;
  v7 = _Block_copy(v8);
  sub_22D81A198();

  dispatch_sync(v5, v7);

  _Block_release(v7);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22D7D1FB4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_22D7D2054(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

char *Atomic.init(wrappedValue:)(uint64_t a1)
{
  v3 = *v1;
  type metadata accessor for MTSUnfairLock();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v1 + 2) = v4;
  (*(*(*(v3 + 80) - 8) + 32))(&v1[*(v3 + 96)], a1);
  return v1;
}

uint64_t sub_22D7D21C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  os_unfair_lock_lock(v3 + 4);
  sub_22D7D1FB4(a1);
  os_unfair_lock_unlock(v3 + 4);
  return swift_endAccess();
}

uint64_t sub_22D7D2228(uint64_t a1)
{
  v3 = *v1;
  sub_22D7D257C(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*sub_22D7D22A4(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  sub_22D7D21C0(v9);
  return sub_22D7D23B8;
}

void sub_22D7D23B8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[3], v4, v5);
    sub_22D7D257C(v3);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_22D7D257C((*a1)[4]);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

char *Atomic.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 96)]);
  return v0;
}

uint64_t Atomic.__deallocating_deinit()
{
  Atomic.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22D7D257C(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v10 - v6;
  v8 = v1[2];
  swift_beginAccess();
  os_unfair_lock_lock(v8 + 4);
  swift_endAccess();
  (*(v4 + 16))(v7, a1, v3);
  sub_22D7D2054(v7);
  swift_beginAccess();
  os_unfair_lock_unlock(v8 + 4);
  return swift_endAccess();
}

uint64_t sub_22D7D26A0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_22D7D281C()
{
  result = qword_280CD2D60;
  if (!qword_280CD2D60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CD2D60);
  }

  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22D81A198();
}

id sub_22D7D2880()
{
  result = [objc_allocWithZone(type metadata accessor for MTWatchActivityManager()) init];
  qword_27DA035B8 = result;
  return result;
}

id MTWatchActivityManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static MTWatchActivityManager.shared.getter()
{
  if (qword_27DA01A20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27DA035B8;

  return v0;
}

void static MTWatchActivityManager.shared.setter(uint64_t a1)
{
  if (qword_27DA01A20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27DA035B8;
  qword_27DA035B8 = a1;
}

uint64_t (*static MTWatchActivityManager.shared.modify())()
{
  if (qword_27DA01A20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_22D7D2B6C@<X0>(void *a1@<X8>)
{
  if (qword_27DA01A20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27DA035B8;
  *a1 = qword_27DA035B8;

  return v2;
}

void sub_22D7D2BF8(id *a1)
{
  v1 = qword_27DA01A20;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_27DA035B8;
  qword_27DA035B8 = v2;
}

id MTWatchActivityManager.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC18MobileTimerSupport22MTWatchActivityManager_activityManager;
  if (qword_27DA019C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *&v0[v2] = qword_27DA02490;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  sub_22D81A198();
  return objc_msgSendSuper2(&v4, sel_init);
}

id MTWatchActivityManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22D7D3094()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035C8, &qword_22D825400);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v8 - v4;
  v6 = *(v0 + OBJC_IVAR____TtC18MobileTimerSupport23AlarmKitAdoptionManager_queue);
  v8[0] = &unk_22D825408;
  v8[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035D8, &qword_22D825410);
  sub_22D81B528();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_22D7D31CC()
{
  sub_22D81B0B8();
  sub_22D81B088();
  sub_22D81B098();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22D7D34F8(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = sub_22D81A918();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = sub_22D81AE08();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v9 = *(*(sub_22D81AC38() - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03648, &qword_22D825560) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03650, &qword_22D825568) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03658, &qword_22D825570) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03660, &qword_22D825578);
  v2[19] = v13;
  v14 = *(v13 - 8);
  v2[20] = v14;
  v15 = *(v14 + 64) + 15;
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7D3750, 0, 0);
}

uint64_t sub_22D7D3750()
{
  v1 = *(v0 + 56);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 176) = Strong;
  v3 = *(v0 + 88);
  if (Strong)
  {
    v29 = *(v0 + 168);
    v5 = *(v0 + 136);
    v4 = *(v0 + 144);
    v7 = *(v0 + 120);
    v6 = *(v0 + 128);
    v8 = *(v0 + 64);
    sub_22D7D5CD8();
    *(v0 + 48) = [v8 snoozeDuration];
    sub_22D7D9E00();
    sub_22D7D9E54();
    sub_22D7D9EA8();
    sub_22D81B148();
    v9 = *(v0 + 40) * 60.0;
    sub_22D81AD98();
    v10 = sub_22D81ADA8();
    (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
    sub_22D7D6998(v8);
    v11 = *MEMORY[0x277CB9960];
    v12 = sub_22D81ADF8();
    v13 = *(v12 - 8);
    (*(v13 + 104))(v5, v11, v12);
    (*(v13 + 56))(v5, 0, 1, v12);
    sub_22D7D6524(v8);
    sub_22D81AC28();
    v14 = sub_22D7D9CF4();
    sub_22D81B008();
    sub_22D81B0B8();
    *(v0 + 184) = sub_22D81B088();
    v15 = [v8 alarmID];
    sub_22D81A8F8();

    v16 = *(MEMORY[0x277CB9AE0] + 4);
    v30 = (*MEMORY[0x277CB9AE0] + MEMORY[0x277CB9AE0]);
    v17 = swift_task_alloc();
    *(v0 + 192) = v17;
    *v17 = v0;
    v17[1] = sub_22D7D3AE0;
    v18 = *(v0 + 168);
    v19 = *(v0 + 112);
    v20 = *(v0 + 88);

    return v30(v19, v20, v18, &type metadata for MTAlarmCustomContent, v14);
  }

  else
  {
    v22 = *(v0 + 168);
    v24 = *(v0 + 136);
    v23 = *(v0 + 144);
    v26 = *(v0 + 120);
    v25 = *(v0 + 128);
    v27 = *(v0 + 112);

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_22D7D3AE0()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  v2[25] = v0;

  v5 = v2[23];
  if (v0)
  {
    (*(v2[10] + 8))(v2[11], v2[9]);

    v6 = sub_22D7D3D54;
  }

  else
  {
    v8 = v2[13];
    v7 = v2[14];
    v10 = v2[11];
    v9 = v2[12];
    v13 = v2 + 9;
    v11 = v2[9];
    v12 = v13[1];

    (*(v12 + 8))(v10, v11);
    (*(v8 + 8))(v7, v9);
    v6 = sub_22D7D3C84;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22D7D3C84()
{
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  v1 = *(v0 + 168);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 112);
  v7 = *(v0 + 88);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22D7D3D54()
{
  if (qword_27DA01A28 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = sub_22D81ACA8();
  __swift_project_value_buffer(v2, qword_27DA0D3B8);
  v3 = v1;
  v4 = sub_22D81AC88();
  v5 = sub_22D81B608();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[25];
  v8 = v0[22];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_22D741000, v4, v5, "Error encountered while scheduling alarm: %@", v9, 0xCu);
    sub_22D764440(v10, &qword_27DA03628, &qword_22D825548);
    MEMORY[0x2318D2D80](v10, -1, -1);
    MEMORY[0x2318D2D80](v9, -1, -1);
  }

  else
  {
  }

  (*(v0[20] + 8))(v0[21], v0[19]);
  v13 = v0[21];
  v14 = v0[17];
  v15 = v0[18];
  v17 = v0[15];
  v16 = v0[16];
  v18 = v0[14];
  v19 = v0[11];

  v20 = v0[1];

  return v20();
}

uint64_t sub_22D7D4008(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v7 = v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035C8, &qword_22D825400);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  v14 = *(v7 + OBJC_IVAR____TtC18MobileTimerSupport23AlarmKitAdoptionManager_queue);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a1;
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = v16;
  v22 = v21;
  v23 = v17;
  sub_22D81A198();
  v18 = a1;
  sub_22D81A198();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035D8, &qword_22D825410);
  sub_22D81B528();

  (*(v10 + 8))(v13, v9);
}

uint64_t sub_22D7D41B4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_22D81A918();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = sub_22D81AE08();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = *(*(sub_22D81AC38() - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03648, &qword_22D825560) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03650, &qword_22D825568) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03658, &qword_22D825570) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03660, &qword_22D825578);
  v2[17] = v13;
  v14 = *(v13 - 8);
  v2[18] = v14;
  v15 = *(v14 + 64) + 15;
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7D440C, 0, 0);
}

uint64_t sub_22D7D440C()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[20] = Strong;
  v3 = v0[19];
  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[14];
  if (Strong)
  {
    v23 = v0[9];
    v8 = v0[6];
    sub_22D7D5CD8();
    [v8 duration];
    [v8 duration];
    sub_22D81AD98();
    v9 = sub_22D81ADA8();
    (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    v10 = sub_22D81ADF8();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    sub_22D7D6738(v8);
    sub_22D81AC28();
    v11 = sub_22D7D9CF4();
    sub_22D81B008();
    sub_22D81B0B8();
    v0[21] = sub_22D81B088();
    v12 = [v8 timerID];
    sub_22D81A8F8();

    v13 = *(MEMORY[0x277CB9AE0] + 4);
    v24 = (*MEMORY[0x277CB9AE0] + MEMORY[0x277CB9AE0]);
    v14 = swift_task_alloc();
    v0[22] = v14;
    *v14 = v0;
    v14[1] = sub_22D7D4704;
    v15 = v0[19];
    v16 = v0[12];
    v17 = v0[9];

    return v24(v16, v17, v15, &type metadata for MTAlarmCustomContent, v11);
  }

  else
  {
    v19 = v0[12];
    v20 = v0[9];
    v21 = v0[19];

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_22D7D4704()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  v2[23] = v0;

  v5 = v2[21];
  if (v0)
  {
    (*(v2[8] + 8))(v2[9], v2[7]);

    v6 = sub_22D7D4978;
  }

  else
  {
    v8 = v2[11];
    v7 = v2[12];
    v10 = v2[9];
    v9 = v2[10];
    v13 = v2 + 7;
    v11 = v2[7];
    v12 = v13[1];

    (*(v12 + 8))(v10, v11);
    (*(v8 + 8))(v7, v9);
    v6 = sub_22D7D48A8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22D7D48A8()
{
  (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
  v1 = *(v0 + 152);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 96);
  v7 = *(v0 + 72);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22D7D4978()
{
  if (qword_27DA01A28 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = sub_22D81ACA8();
  __swift_project_value_buffer(v2, qword_27DA0D3B8);
  v3 = v1;
  v4 = sub_22D81AC88();
  v5 = sub_22D81B608();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[23];
  v8 = v0[20];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_22D741000, v4, v5, "Error encountered while scheduling timer: %@", v9, 0xCu);
    sub_22D764440(v10, &qword_27DA03628, &qword_22D825548);
    MEMORY[0x2318D2D80](v10, -1, -1);
    MEMORY[0x2318D2D80](v9, -1, -1);
  }

  else
  {
  }

  (*(v0[18] + 8))(v0[19], v0[17]);
  v13 = v0[19];
  v14 = v0[15];
  v15 = v0[16];
  v17 = v0[13];
  v16 = v0[14];
  v18 = v0[12];
  v19 = v0[9];

  v20 = v0[1];

  return v20();
}

uint64_t sub_22D7D4C2C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_22D7D4C4C, 0, 0);
}

uint64_t sub_22D7D4C4C()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[6];
    sub_22D7D5CD8();
    sub_22D81B0B8();
    sub_22D81B088();
    v5 = *&v3[OBJC_IVAR____TtC18MobileTimerSupport23AlarmKitAdoptionManager_mobileTimerBundleID];
    v6 = *&v3[OBJC_IVAR____TtC18MobileTimerSupport23AlarmKitAdoptionManager_mobileTimerBundleID + 8];
    sub_22D81A398();
    sub_22D81B0A8();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_22D7D4EE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_22D7D4F04, 0, 0);
}

uint64_t sub_22D7D4F04()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[6];
    sub_22D7D5CD8();
    sub_22D81B0B8();
    sub_22D81B088();
    v5 = *&v3[OBJC_IVAR____TtC18MobileTimerSupport23AlarmKitAdoptionManager_mobileTimerBundleID];
    v6 = *&v3[OBJC_IVAR____TtC18MobileTimerSupport23AlarmKitAdoptionManager_mobileTimerBundleID + 8];
    sub_22D81A398();
    sub_22D81B058();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_22D7D5160(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_22D81A918();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D81A8F8();
  v11 = a1;
  a4(v10);

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_22D7D528C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_22D7D52AC, 0, 0);
}

uint64_t sub_22D7D52AC()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[6];
    sub_22D7D5CD8();
    sub_22D81B0B8();
    sub_22D81B088();
    v5 = *&v3[OBJC_IVAR____TtC18MobileTimerSupport23AlarmKitAdoptionManager_mobileTimerBundleID];
    v6 = *&v3[OBJC_IVAR____TtC18MobileTimerSupport23AlarmKitAdoptionManager_mobileTimerBundleID + 8];
    sub_22D81A398();
    sub_22D81B078();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_22D7D5544(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_22D7D5564, 0, 0);
}

uint64_t sub_22D7D5564()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[6];
    sub_22D7D5CD8();
    sub_22D81B0B8();
    sub_22D81B088();
    v5 = *&v3[OBJC_IVAR____TtC18MobileTimerSupport23AlarmKitAdoptionManager_mobileTimerBundleID];
    v6 = *&v3[OBJC_IVAR____TtC18MobileTimerSupport23AlarmKitAdoptionManager_mobileTimerBundleID + 8];
    sub_22D81A398();
    sub_22D81B048();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_22D7D57FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v25 = a5;
  v23[1] = a2;
  v23[2] = a3;
  v6 = v5;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035C8, &qword_22D825400);
  v8 = *(v26 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v26);
  v11 = v23 - v10;
  v12 = sub_22D81A918();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v6 + OBJC_IVAR____TtC18MobileTimerSupport23AlarmKitAdoptionManager_queue);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v13 + 16))(v15, a1, v12);
  v18 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  (*(v13 + 32))(v19 + v18, v15, v12);
  v20 = swift_allocObject();
  v21 = v25;
  *(v20 + 16) = v24;
  *(v20 + 24) = v19;
  v27 = v21;
  v28 = v20;
  sub_22D81A198();
  sub_22D81A198();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035D8, &qword_22D825410);
  sub_22D81B528();

  (*(v8 + 8))(v11, v26);
}

uint64_t sub_22D7D5A5C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_22D7D5A7C, 0, 0);
}

uint64_t sub_22D7D5A7C()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[6];
    sub_22D7D5CD8();
    sub_22D81B0B8();
    sub_22D81B088();
    v5 = *&v3[OBJC_IVAR____TtC18MobileTimerSupport23AlarmKitAdoptionManager_mobileTimerBundleID];
    v6 = *&v3[OBJC_IVAR____TtC18MobileTimerSupport23AlarmKitAdoptionManager_mobileTimerBundleID + 8];
    sub_22D81A398();
    sub_22D81B068();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_22D7D5CD8()
{
  v1 = sub_22D81B018();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v62 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v72 = &v62 - v7;
  MEMORY[0x28223BE20](v6);
  v63 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03618, &qword_22D825538);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v62 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03620, &qword_22D825540);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v62 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v62 - v21;
  v71 = sub_22D81B0B8();
  sub_22D81B088();
  v64 = v0;
  v23 = *&v0[OBJC_IVAR____TtC18MobileTimerSupport23AlarmKitAdoptionManager_daemonBundleID];
  v24 = *&v0[OBJC_IVAR____TtC18MobileTimerSupport23AlarmKitAdoptionManager_daemonBundleID + 8];
  v73 = v22;
  v25 = v24;
  v70 = v23;
  sub_22D81B028();
  v69 = v25;
  v68 = 0;

  v26 = v2;
  v27 = *(v2 + 56);
  v28 = v73;
  v27(v73, 0, 1, v1);
  v29 = *(v26 + 104);
  v66 = *MEMORY[0x277CB9AB0];
  v67 = v26 + 104;
  v65 = v29;
  (v29)(v20);
  v27(v20, 0, 1, v1);
  v30 = v26;
  v31 = *(v9 + 48);
  sub_22D7D9D48(v28, v12);
  sub_22D7D9D48(v20, &v12[v31]);
  v32 = *(v26 + 48);
  if (v32(v12, 1, v1) == 1)
  {
    sub_22D764440(v20, &qword_27DA03620, &qword_22D825540);
    if (v32(&v12[v31], 1, v1) == 1)
    {
      sub_22D764440(v12, &qword_27DA03620, &qword_22D825540);
      return sub_22D764440(v73, &qword_27DA03620, &qword_22D825540);
    }
  }

  else
  {
    sub_22D7D9D48(v12, v17);
    if (v32(&v12[v31], 1, v1) != 1)
    {
      v46 = v63;
      (*(v26 + 32))(v63, &v12[v31], v1);
      sub_22D7D9DB8(&qword_27DA03630, MEMORY[0x277CB9AC8]);
      v47 = sub_22D81B1F8();
      v48 = *(v26 + 8);
      v48(v46, v1);
      sub_22D764440(v20, &qword_27DA03620, &qword_22D825540);
      v48(v17, v1);
      v30 = v26;
      sub_22D764440(v12, &qword_27DA03620, &qword_22D825540);
      if (v47)
      {
        return sub_22D764440(v73, &qword_27DA03620, &qword_22D825540);
      }

      goto LABEL_7;
    }

    sub_22D764440(v20, &qword_27DA03620, &qword_22D825540);
    (*(v26 + 8))(v17, v1);
  }

  sub_22D764440(v12, &qword_27DA03618, &qword_22D825538);
LABEL_7:
  if (qword_27DA01A28 != -1)
  {
    swift_once();
  }

  v33 = sub_22D81ACA8();
  v34 = __swift_project_value_buffer(v33, qword_27DA0D3B8);
  v35 = v64;
  v64 = v34;
  v36 = sub_22D81AC88();
  v37 = sub_22D81B5F8();

  v38 = os_log_type_enabled(v36, v37);
  v39 = v72;
  v40 = v70;
  v63 = v35;
  if (v38)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v74[0] = v42;
    *v41 = 136315394;
    *(v41 + 4) = sub_22D7D7C10(v40, v69, v74);
    *(v41 + 12) = 2080;
    *(v41 + 14) = sub_22D7D7C10(*&v35[OBJC_IVAR____TtC18MobileTimerSupport23AlarmKitAdoptionManager_mobileTimerBundleID], *&v35[OBJC_IVAR____TtC18MobileTimerSupport23AlarmKitAdoptionManager_mobileTimerBundleID + 8], v74);
    _os_log_impl(&dword_22D741000, v36, v37, "Requesting authorization for %s and %s", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318D2D80](v42, -1, -1);
    MEMORY[0x2318D2D80](v41, -1, -1);
  }

  v43 = v66;
  sub_22D81B088();
  v44 = v65;
  v65(v39, v43, v1);
  v45 = v68;
  sub_22D81B038();
  if (v45)
  {
    (*(v30 + 8))(v39, v1);

    v54 = v45;
    v55 = sub_22D81AC88();
    v56 = sub_22D81B608();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v57 = 138412290;
      v59 = v45;
      v60 = _swift_stdlib_bridgeErrorToNSError();
      *(v57 + 4) = v60;
      *v58 = v60;
      _os_log_impl(&dword_22D741000, v55, v56, "Error encountered while requesting authorization: %@", v57, 0xCu);
      sub_22D764440(v58, &qword_27DA03628, &qword_22D825548);
      MEMORY[0x2318D2D80](v58, -1, -1);
      MEMORY[0x2318D2D80](v57, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v49 = v43;
    v50 = *(v30 + 8);
    v50(v39, v1);

    sub_22D81B088();
    v51 = v62;
    v44(v62, v49, v1);
    v52 = *&v63[OBJC_IVAR____TtC18MobileTimerSupport23AlarmKitAdoptionManager_mobileTimerBundleID];
    v53 = *&v63[OBJC_IVAR____TtC18MobileTimerSupport23AlarmKitAdoptionManager_mobileTimerBundleID + 8];
    sub_22D81B038();

    v50(v51, v1);
  }

  return sub_22D764440(v73, &qword_27DA03620, &qword_22D825540);
}

uint64_t sub_22D7D6524(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03608, &qword_22D825528);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03610, &qword_22D825530);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - v8;
  v10 = sub_22D81AE58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22D81AEB8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = a1;
  sub_22D7F5208(v16, v13);
  v17 = v16;
  sub_22D7F58B0(v17, v9);
  v18 = sub_22D81AE88();
  (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
  sub_22D81AE68();
  v19 = [v17 isSleepAlarm];
  v21 = 0;
  v22 = v19;
  sub_22D81AD68();
  sub_22D7D9CF4();
  return sub_22D81AE18();
}

uint64_t sub_22D7D6738(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03608, &qword_22D825528);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03610, &qword_22D825530);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - v8;
  v10 = sub_22D81AE58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22D81AEB8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = a1;
  sub_22D7F5CE0(v16, v13);
  v17 = v16;
  sub_22D7F62F8(v17, v9);
  v18 = sub_22D81AEA8();
  (*(*(v18 - 8) + 56))(v9, 0, 1, v18);
  sub_22D7F66D4(v17, v5);
  v19 = sub_22D81AE88();
  (*(*(v19 - 8) + 56))(v5, 0, 1, v19);
  sub_22D81AE68();
  v21 = 1;
  v22 = 2;
  sub_22D81AD68();
  sub_22D7D9CF4();
  return sub_22D81AE18();
}

uint64_t sub_22D7D6998(void *a1)
{
  v2 = sub_22D81ADB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_22D81ADD8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  result = [a1 hour];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  result = [a1 minute];
  if (result < 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_22D81ADC8();
  if ([a1 repeats])
  {
    *v6 = sub_22D7D6B44([a1 repeatSchedule]);
    v10 = MEMORY[0x277CB9958];
  }

  else
  {
    v10 = MEMORY[0x277CB9950];
  }

  (*(v3 + 104))(v6, *v10, v2);
  return sub_22D81ADE8();
}

size_t sub_22D7D6B44(char a1)
{
  LOBYTE(v1) = a1;
  v2 = ~a1;
  v3 = sub_22D81A938();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  if ((v2 & 0x7F) != 0)
  {
    v19 = MEMORY[0x277D84FA0];
    if (v1)
    {
      goto LABEL_14;
    }

    if ((v1 & 2) != 0)
    {
      goto LABEL_15;
    }

LABEL_5:
    if ((v1 & 4) == 0)
    {
LABEL_6:
      if ((v1 & 8) != 0)
      {
        goto LABEL_17;
      }

LABEL_7:
      if ((v1 & 0x10) != 0)
      {
        goto LABEL_18;
      }

LABEL_8:
      if ((v1 & 0x20) != 0)
      {
        goto LABEL_19;
      }

LABEL_9:
      if ((v1 & 0x40) == 0)
      {
        goto LABEL_11;
      }

LABEL_10:
      (*(v4 + 104))(v8, *MEMORY[0x277CC96E0], v3);
      sub_22D7D8474(v10, v8);
      (*(v4 + 8))(v10, v3);
      goto LABEL_11;
    }

    while (1)
    {
      (*(v4 + 104))(v8, *MEMORY[0x277CC9700], v3);
      sub_22D7D8474(v10, v8);
      (*(v4 + 8))(v10, v3);
      if ((v1 & 8) == 0)
      {
        goto LABEL_7;
      }

LABEL_17:
      (*(v4 + 104))(v8, *MEMORY[0x277CC96F8], v3);
      sub_22D7D8474(v10, v8);
      (*(v4 + 8))(v10, v3);
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_8;
      }

LABEL_18:
      (*(v4 + 104))(v8, *MEMORY[0x277CC96D0], v3);
      sub_22D7D8474(v10, v8);
      (*(v4 + 8))(v10, v3);
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_9;
      }

LABEL_19:
      (*(v4 + 104))(v8, *MEMORY[0x277CC96F0], v3);
      sub_22D7D8474(v10, v8);
      (*(v4 + 8))(v10, v3);
      if ((v1 & 0x40) != 0)
      {
        goto LABEL_10;
      }

LABEL_11:
      v16 = v19;
      v3 = *(v19 + 16);
      if (!v3)
      {
        break;
      }

      v13 = sub_22D7E8800(*(v19 + 16), 0);
      v1 = sub_22D7E9878(&v18, (v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80))), v3, v16);
      sub_22D792FD0();
      if (v1 == v3)
      {
        return v13;
      }

      __break(1u);
LABEL_14:
      (*(v4 + 104))(v8, *MEMORY[0x277CC96D8], v3);
      sub_22D7D8474(v10, v8);
      (*(v4 + 8))(v10, v3);
      if ((v1 & 2) == 0)
      {
        goto LABEL_5;
      }

LABEL_15:
      (*(v4 + 104))(v8, *MEMORY[0x277CC96E8], v3);
      sub_22D7D8474(v10, v8);
      (*(v4 + 8))(v10, v3);
      if ((v1 & 4) == 0)
      {
        goto LABEL_6;
      }
    }

    return MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA03870, &unk_22D825C90);
    v11 = *(v4 + 72);
    v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_22D821050;
    v14 = v13 + v12;
    v15 = *(v4 + 104);
    v15(v14, *MEMORY[0x277CC96D8], v3);
    v15(v14 + v11, *MEMORY[0x277CC96E8], v3);
    v15(v14 + 2 * v11, *MEMORY[0x277CC9700], v3);
    v15(v14 + 3 * v11, *MEMORY[0x277CC96F8], v3);
    v15(v14 + 4 * v11, *MEMORY[0x277CC96D0], v3);
    v15(v14 + 5 * v11, *MEMORY[0x277CC96F0], v3);
    v15(v14 + 6 * v11, *MEMORY[0x277CC96E0], v3);
  }

  return v13;
}

id AlarmKitAdoptionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AlarmKitAdoptionManager.init()()
{
  v1 = &v0[OBJC_IVAR____TtC18MobileTimerSupport23AlarmKitAdoptionManager_mobileTimerBundleID];
  *v1 = 0xD000000000000015;
  *(v1 + 1) = 0x800000022D828220;
  v2 = &v0[OBJC_IVAR____TtC18MobileTimerSupport23AlarmKitAdoptionManager_daemonBundleID];
  *v2 = 0xD000000000000016;
  *(v2 + 1) = 0x800000022D82B260;
  v3 = OBJC_IVAR____TtC18MobileTimerSupport23AlarmKitAdoptionManager_queue;
  v4 = type metadata accessor for SerialTaskQueue();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *&v0[v3] = SerialTaskQueue.init()();
  v8.receiver = v0;
  v8.super_class = type metadata accessor for AlarmKitAdoptionManager();
  return objc_msgSendSuper2(&v8, sel_init);
}

id AlarmKitAdoptionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlarmKitAdoptionManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22D7D72B0()
{
  v0 = sub_22D81ACA8();
  __swift_allocate_value_buffer(v0, qword_27DA0D3B8);
  __swift_project_value_buffer(v0, qword_27DA0D3B8);
  return sub_22D81AC98();
}

uint64_t sub_22D7D7330()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22D744B0C;

  return sub_22D7D31B0();
}

uint64_t sub_22D7D73BC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22D744B08;

  return sub_22D7D34F8(v2, v3);
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22D7D7494()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22D744B08;

  return sub_22D7D41B4(v2, v3);
}

uint64_t sub_22D7D752C()
{
  v2 = *(sub_22D81A918() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22D744B08;

  return sub_22D7D4C2C(v4, v0 + v3);
}

uint64_t sub_22D7D7604()
{
  v2 = *(sub_22D81A918() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22D744B08;

  return sub_22D7D4EE4(v4, v0 + v3);
}

uint64_t sub_22D7D76DC()
{
  v2 = *(sub_22D81A918() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22D744B08;

  return sub_22D7D528C(v4, v0 + v3);
}

uint64_t sub_22D7D77B4()
{
  v2 = *(sub_22D81A918() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22D744B08;

  return sub_22D7D5544(v4, v0 + v3);
}

uint64_t sub_22D7D788C()
{
  v2 = *(sub_22D81A918() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22D744B0C;

  return sub_22D7D5A5C(v4, v0 + v3);
}

uint64_t sub_22D7D7B40(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_22D7D7BB4(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_22D7D7C10(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_22D7D7C10(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_22D81A398();
  v6 = sub_22D7D7CDC(v11, 0, 0, 1, a1, a2);
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
    sub_22D7507C0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_22D7D7CDC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_22D7D7DE8(a5, a6);
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
    result = sub_22D81B878();
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

uint64_t sub_22D7D7DE8(uint64_t a1, unint64_t a2)
{
  v4 = sub_22D7D7E34(a1, a2);
  sub_22D7D7F64(&unk_2840D4EF0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_22D7D7E34(uint64_t a1, unint64_t a2)
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

  v6 = sub_22D7D8050(v5, 0);
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

  result = sub_22D81B878();
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
        v10 = sub_22D81B358();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22D7D8050(v10, 0);
        result = sub_22D81B828();
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

uint64_t sub_22D7D7F64(uint64_t result)
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

  result = sub_22D7D80C4(result, v12, 1, v3);
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

void *sub_22D7D8050(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03638, &qword_22D825550);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_22D7D80C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03638, &qword_22D825550);
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

_BYTE **sub_22D7D81B8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_22D7D81C8(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = sub_22D8038C4();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v28 = ~v7;
    while (1)
    {
      v9 = *(*(v4 + 48) + v8);
      if (v9 <= 2)
      {
        if (*(*(v4 + 48) + v8))
        {
          if (v9 == 1)
          {
            v10 = 0x7961646E6F6DLL;
          }

          else
          {
            v10 = 0x79616473657574;
          }

          if (v9 == 1)
          {
            v11 = 0xE600000000000000;
          }

          else
          {
            v11 = 0xE700000000000000;
          }
        }

        else
        {
          v10 = 0x7961646E7573;
          v11 = 0xE600000000000000;
        }
      }

      else if (*(*(v4 + 48) + v8) > 4u)
      {
        if (v9 == 5)
        {
          v11 = 0xE600000000000000;
          v10 = 0x796164697266;
        }

        else
        {
          v11 = 0xE800000000000000;
          v10 = 0x7961647275746173;
        }
      }

      else
      {
        if (v9 == 3)
        {
          v10 = 0x616473656E646577;
        }

        else
        {
          v10 = 0x7961647372756874;
        }

        if (v9 == 3)
        {
          v11 = 0xE900000000000079;
        }

        else
        {
          v11 = 0xE800000000000000;
        }
      }

      v12 = 0x7961646E7573;
      v13 = 0x7961647275746173;
      if (a2 == 5)
      {
        v13 = 0x796164697266;
        v14 = 0xE600000000000000;
      }

      else
      {
        v14 = 0xE800000000000000;
      }

      v15 = 0x7961647372756874;
      if (a2 == 3)
      {
        v15 = 0x616473656E646577;
      }

      v16 = 0xE900000000000079;
      if (a2 != 3)
      {
        v16 = 0xE800000000000000;
      }

      if (a2 <= 4u)
      {
        v13 = v15;
        v14 = v16;
      }

      v17 = 0x79616473657574;
      if (a2 == 1)
      {
        v17 = 0x7961646E6F6DLL;
      }

      v18 = 0xE700000000000000;
      if (a2 == 1)
      {
        v18 = 0xE600000000000000;
      }

      if (a2)
      {
        v12 = v17;
        v19 = v18;
      }

      else
      {
        v19 = 0xE600000000000000;
      }

      v20 = a2 <= 2u ? v12 : v13;
      v21 = a2 <= 2u ? v19 : v14;
      if (v10 == v20 && v11 == v21)
      {
        break;
      }

      v22 = sub_22D81BB08();

      if (v22)
      {
        goto LABEL_50;
      }

      v8 = (v8 + 1) & v28;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

LABEL_50:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v8);
  }

  else
  {
LABEL_48:
    v23 = *v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v26;
    sub_22D7D8DD4(a2, v8, isUniquelyReferenced_nonNull_native);
    *v26 = v29;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_22D7D8474(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22D81A938();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_22D7D9DB8(&qword_27DA035F0, MEMORY[0x277CC9708]);
  v36 = a2;
  v13 = sub_22D81B1C8();
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
      sub_22D7D9DB8(&qword_27DA035F8, MEMORY[0x277CC9708]);
      v23 = sub_22D81B1F8();
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
    sub_22D7D90C8(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_22D7D8754(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03640, &qword_22D825558);
  result = sub_22D81B808();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      sub_22D81BBC8();
      sub_22D81B328();

      result = sub_22D81BC18();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
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

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_22D7D8A78(uint64_t a1)
{
  v2 = v1;
  v41 = sub_22D81A938();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03600, &qword_22D825520);
  result = sub_22D81B808();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_22D7D9DB8(&qword_27DA035F0, MEMORY[0x277CC9708]);
      result = sub_22D81B1C8();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_22D7D8DD4(uint64_t result, unint64_t a2, char a3)
{
  v30 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_55;
  }

  if (a3)
  {
    sub_22D7D8754(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_22D7D936C();
      goto LABEL_55;
    }

    sub_22D7D96E4(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  result = sub_22D8038C4();
  v9 = -1 << *(v7 + 32);
  a2 = result & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = *(*(v7 + 48) + a2);
      if (v11 <= 2)
      {
        if (*(*(v7 + 48) + a2))
        {
          if (v11 == 1)
          {
            v12 = 0x7961646E6F6DLL;
          }

          else
          {
            v12 = 0x79616473657574;
          }

          if (v11 == 1)
          {
            v13 = 0xE600000000000000;
          }

          else
          {
            v13 = 0xE700000000000000;
          }
        }

        else
        {
          v12 = 0x7961646E7573;
          v13 = 0xE600000000000000;
        }
      }

      else if (*(*(v7 + 48) + a2) > 4u)
      {
        if (v11 == 5)
        {
          v13 = 0xE600000000000000;
          v12 = 0x796164697266;
        }

        else
        {
          v13 = 0xE800000000000000;
          v12 = 0x7961647275746173;
        }
      }

      else
      {
        if (v11 == 3)
        {
          v12 = 0x616473656E646577;
        }

        else
        {
          v12 = 0x7961647372756874;
        }

        if (v11 == 3)
        {
          v13 = 0xE900000000000079;
        }

        else
        {
          v13 = 0xE800000000000000;
        }
      }

      v14 = 0x7961646E7573;
      v15 = 0x7961647275746173;
      if (v30 == 5)
      {
        v15 = 0x796164697266;
        v16 = 0xE600000000000000;
      }

      else
      {
        v16 = 0xE800000000000000;
      }

      v17 = 0x7961647372756874;
      if (v30 == 3)
      {
        v17 = 0x616473656E646577;
      }

      v18 = 0xE900000000000079;
      if (v30 != 3)
      {
        v18 = 0xE800000000000000;
      }

      if (v30 <= 4u)
      {
        v15 = v17;
        v16 = v18;
      }

      v19 = 0x79616473657574;
      if (v30 == 1)
      {
        v19 = 0x7961646E6F6DLL;
      }

      v20 = 0xE700000000000000;
      if (v30 == 1)
      {
        v20 = 0xE600000000000000;
      }

      if (v30)
      {
        v14 = v19;
        v21 = v20;
      }

      else
      {
        v21 = 0xE600000000000000;
      }

      v22 = v30 <= 2u ? v14 : v15;
      v23 = v30 <= 2u ? v21 : v16;
      if (v12 == v22 && v13 == v23)
      {
        goto LABEL_58;
      }

      v24 = sub_22D81BB08();

      if (v24)
      {
        goto LABEL_59;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_55:
  v25 = *v29;
  *(*v29 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v25 + 48) + a2) = v30;
  v26 = *(v25 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v25 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_58:

LABEL_59:
  result = sub_22D81BB48();
  __break(1u);
  return result;
}

uint64_t sub_22D7D90C8(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_22D81A938();
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
    sub_22D7D8A78(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_22D7D94AC();
      goto LABEL_12;
    }

    sub_22D7D99D8(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_22D7D9DB8(&qword_27DA035F0, MEMORY[0x277CC9708]);
  v15 = sub_22D81B1C8();
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
      sub_22D7D9DB8(&qword_27DA035F8, MEMORY[0x277CC9708]);
      v23 = sub_22D81B1F8();
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
  result = sub_22D81BB48();
  __break(1u);
  return result;
}

void *sub_22D7D936C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03640, &qword_22D825558);
  v2 = *v0;
  v3 = sub_22D81B7F8();
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

void *sub_22D7D94AC()
{
  v1 = v0;
  v2 = sub_22D81A938();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03600, &qword_22D825520);
  v7 = *v0;
  v8 = sub_22D81B7F8();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
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
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_22D7D96E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03640, &qword_22D825558);
  result = sub_22D81B808();
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
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_19:
      v20 = *(*(v3 + 48) + (v17 | (v7 << 6)));
      v21 = *(v6 + 40);
      sub_22D81BBC8();
      sub_22D81B328();

      result = sub_22D81BC18();
      v13 = -1 << *(v6 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v13) >> 6;
        while (++v15 != v23 || (v22 & 1) == 0)
        {
          v24 = v15 == v23;
          if (v15 == v23)
          {
            v15 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v15);
          if (v25 != -1)
          {
            v16 = __clz(__rbit64(~v25)) + (v15 << 6);
            goto LABEL_11;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v6 + 48) + v16) = v20;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_29;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22D7D99D8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_22D81A938();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03600, &qword_22D825520);
  v10 = sub_22D81B808();
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
      sub_22D7D9DB8(&qword_27DA035F0, MEMORY[0x277CC9708]);
      result = sub_22D81B1C8();
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

unint64_t sub_22D7D9CF4()
{
  result = qword_280CD1F10;
  if (!qword_280CD1F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD1F10);
  }

  return result;
}

uint64_t sub_22D7D9D48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03620, &qword_22D825540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D7D9DB8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22D7D9E00()
{
  result = qword_27DA03668;
  if (!qword_27DA03668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03668);
  }

  return result;
}

unint64_t sub_22D7D9E54()
{
  result = qword_27DA03670;
  if (!qword_27DA03670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03670);
  }

  return result;
}

unint64_t sub_22D7D9EA8()
{
  result = qword_27DA03678;
  if (!qword_27DA03678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03678);
  }

  return result;
}

void sub_22D7D9EFC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03738, &qword_22D8257F8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_22D7E0CD0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D7DA300;
  aBlock[3] = &block_descriptor_63;
  v11 = _Block_copy(aBlock);

  v12 = [a2 addCompletionBlock_];
  _Block_release(v11);
}

void sub_22D7DA0BC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03728, &qword_22D8257E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_22D7E0C9C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D7DA300;
  aBlock[3] = &block_descriptor_13;
  v11 = _Block_copy(aBlock);

  v12 = [a2 addCompletionBlock_];
  _Block_release(v11);
}

uint64_t sub_22D7DA27C(void *a1, id a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2)
  {
    v7 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    return sub_22D81B4A8();
  }

  else
  {
    v9 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    return sub_22D81B4B8();
  }
}

uint64_t sub_22D7DA300(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_22D81A198();
  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_22D7DA4D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(*(v7 - 8) + 16);

  return v8(a4, v4 + v6, v7);
}

uint64_t TimerViewModel.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  TimerViewModel.init()();
  return v3;
}

uint64_t TimerViewModel.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA036C0, &qword_22D8255D0);
  v96 = *(v2 - 8);
  v97 = v2;
  v3 = *(v96 + 64);
  MEMORY[0x28223BE20](v2);
  v94 = &v67 - v4;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA036B8, &qword_22D8255C8);
  v93 = *(v95 - 8);
  v5 = *(v93 + 64);
  MEMORY[0x28223BE20](v95);
  v92 = &v67 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA036B0, &qword_22D8255C0);
  v90 = *(v7 - 8);
  v91 = v7;
  v8 = *(v90 + 64);
  MEMORY[0x28223BE20](v7);
  v89 = &v67 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA036C8, &qword_22D8255D8);
  v87 = *(v10 - 8);
  v88 = v10;
  v11 = *(v87 + 64);
  MEMORY[0x28223BE20](v10);
  v85 = &v67 - v12;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA036A8, &qword_22D8255B8);
  v84 = *(v86 - 8);
  v13 = *(v84 + 64);
  MEMORY[0x28223BE20](v86);
  v83 = &v67 - v14;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA036A0, &qword_22D8255B0);
  v81 = *(v82 - 8);
  v15 = *(v81 + 64);
  MEMORY[0x28223BE20](v82);
  v80 = &v67 - v16;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA036D0, &qword_22D8255E0);
  v78 = *(v79 - 8);
  v17 = *(v78 + 64);
  MEMORY[0x28223BE20](v79);
  v76 = &v67 - v18;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03698, &qword_22D8255A8);
  v75 = *(v77 - 8);
  v19 = *(v75 + 64);
  MEMORY[0x28223BE20](v77);
  v74 = &v67 - v20;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03690, &qword_22D8255A0);
  v72 = *(v73 - 8);
  v21 = *(v72 + 64);
  MEMORY[0x28223BE20](v73);
  v71 = &v67 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA036D8, &qword_22D8255E8);
  v24 = *(v23 - 8);
  v25 = v24[8];
  MEMORY[0x28223BE20](v23);
  v27 = &v67 - v26;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03688, &qword_22D825598);
  v100 = *(v105 - 8);
  v28 = *(v100 + 64);
  MEMORY[0x28223BE20](v105);
  v70 = &v67 - v29;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03680, &qword_22D825590);
  v101 = *(v104 - 8);
  v30 = *(v101 + 64);
  MEMORY[0x28223BE20](v104);
  v32 = &v67 - v31;
  *(v1 + 16) = 0;
  if (MEMORY[0x277D84F90] >> 62 && sub_22D81B938())
  {
    v33 = sub_22D7DFBC4(MEMORY[0x277D84F90]);
  }

  else
  {
    v33 = MEMORY[0x277D84FA0];
  }

  *(v1 + 24) = v33;
  v34 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_timersAddedStream;
  v35 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_timersAddedContinuation;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA036E0, &qword_22D8255F0);
  v99 = *MEMORY[0x277D85778];
  v103 = v24[13];
  v103(v27);
  v36 = v70;
  sub_22D81B508();
  v102 = v24[1];
  v102(v27, v23);
  v98 = v23;
  v101 = *(v101 + 32);
  v69 = v1;
  (v101)(v1 + v34, v32, v104);
  v100 = *(v100 + 32);
  (v100)(v1 + v35, v36, v105);
  v67 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_timersRemovedStream;
  v68 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_timersRemovedContinuation;
  v37 = v99;
  v38 = v98;
  (v103)(v27, v99, v98);
  sub_22D81B508();
  v102(v27, v38);
  v39 = v27;
  v40 = v69;
  (v101)(v69 + v67, v32, v104);
  (v100)(v40 + v68, v36, v105);
  v67 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_timersUpdatedStream;
  v68 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_timersUpdatedContinuation;
  v41 = v37;
  v42 = v98;
  (v103)(v39, v41, v98);
  sub_22D81B508();
  v102(v39, v42);
  (v101)(v40 + v67, v32, v104);
  v43 = v40;
  (v100)(v40 + v68, v36, v105);
  v44 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_timerFiredStream;
  v45 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_timerFiredContinuation;
  sub_22D759CA0(0, &qword_280CD1508, 0x277D29730);
  v46 = v78;
  v47 = v76;
  v48 = v99;
  v49 = v79;
  (*(v78 + 104))(v76, v99, v79);
  v50 = v71;
  v51 = v74;
  sub_22D81B508();
  (*(v46 + 8))(v47, v49);
  (*(v72 + 32))(v43 + v44, v50, v73);
  (*(v75 + 32))(v43 + v45, v51, v77);
  v52 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_recentsStream;
  v53 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_recentsContinuation;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA036E8, &qword_22D8255F8);
  v55 = v87;
  v54 = v88;
  v56 = v85;
  (*(v87 + 104))(v85, v48, v88);
  v57 = v80;
  v58 = v83;
  sub_22D81B508();
  (*(v55 + 8))(v56, v54);
  (*(v81 + 32))(v43 + v52, v57, v82);
  (*(v84 + 32))(v43 + v53, v58, v86);
  v59 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_latestStream;
  v60 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_latestContinuation;
  sub_22D759CA0(0, &qword_280CD1528, 0x277D29738);
  v62 = v96;
  v61 = v97;
  v63 = v94;
  (*(v96 + 104))(v94, v48, v97);
  v64 = v89;
  v65 = v92;
  sub_22D81B508();
  (*(v62 + 8))(v63, v61);
  (*(v90 + 32))(v43 + v59, v64, v91);
  (*(v93 + 32))(v43 + v60, v65, v95);
  return v43;
}

uint64_t sub_22D7DB170(void *a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  v3 = a1;

  sub_22D7DB870(MEMORY[0x277D296C0], &unk_2840D9628, sub_22D7E0F34, sub_22D7E1030);
  sub_22D7DB870(MEMORY[0x277D296A0], &unk_2840D9600, sub_22D7E0F10, sub_22D7E1030);
  sub_22D7DB870(MEMORY[0x277D296B8], &unk_2840D95D8, sub_22D7E0EEC, sub_22D7E1030);
  sub_22D7DBB90(MEMORY[0x277D29688], &unk_2840D95B0, sub_22D7E0EE4, sub_22D7E102C);
  sub_22D7DBB90(MEMORY[0x277D29678], &unk_2840D9588, sub_22D7E0EC4, sub_22D7E0ECC);
  return sub_22D7DB870(MEMORY[0x277D29698], &unk_2840D9538, sub_22D7E0EA4, sub_22D7E0EAC);
}

Swift::Void __swiftcall TimerViewModel.registerPublishers()()
{
  sub_22D7DB870(MEMORY[0x277D296C0], &unk_2840D9628, sub_22D7E0F34, sub_22D7E1030);
  sub_22D7DB870(MEMORY[0x277D296A0], &unk_2840D9600, sub_22D7E0F10, sub_22D7E1030);
  sub_22D7DB870(MEMORY[0x277D296B8], &unk_2840D95D8, sub_22D7E0EEC, sub_22D7E1030);
  sub_22D7DBB90(MEMORY[0x277D29688], &unk_2840D95B0, sub_22D7E0EE4, sub_22D7E102C);
  sub_22D7DBB90(MEMORY[0x277D29678], &unk_2840D9588, sub_22D7E0EC4, sub_22D7E0ECC);
  sub_22D7DB870(MEMORY[0x277D29698], &unk_2840D9538, sub_22D7E0EA4, sub_22D7E0EAC);
}

uint64_t TimerViewModel.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_timersAddedStream;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03680, &qword_22D825590);
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  v5 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_timersAddedContinuation;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03688, &qword_22D825598);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v4(v0 + OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_timersRemovedStream, v3);
  v7(v0 + OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_timersRemovedContinuation, v6);
  v4(v0 + OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_timersUpdatedStream, v3);
  v7(v0 + OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_timersUpdatedContinuation, v6);
  v8 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_timerFiredStream;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03690, &qword_22D8255A0);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_timerFiredContinuation;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03698, &qword_22D8255A8);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_recentsStream;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA036A0, &qword_22D8255B0);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v14 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_recentsContinuation;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA036A8, &qword_22D8255B8);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v16 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_latestStream;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA036B0, &qword_22D8255C0);
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  v18 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_latestContinuation;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA036B8, &qword_22D8255C8);
  (*(*(v19 - 8) + 8))(v0 + v18, v19);
  return v0;
}

uint64_t TimerViewModel.__deallocating_deinit()
{
  TimerViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22D7DB870(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[0] = a3;
  v24[1] = a4;
  v5 = sub_22D81B6C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *MEMORY[0x277D296B0];
  v12 = sub_22D81B2C8();
  v14 = v13;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = objc_opt_self();
  v17 = v10;
  v18 = [v16 defaultCenter];
  sub_22D81B6D8();

  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = v12;
  v21 = v24[0];
  v20[4] = v14;
  v20[5] = v21;
  v20[6] = v15;
  sub_22D7E0FB8(&qword_280CD2980, MEMORY[0x277CC9DB0]);
  sub_22D81A198();
  v22 = sub_22D81AD58();

  (*(v6 + 8))(v9, v5);
  v24[5] = v22;
  swift_beginAccess();
  sub_22D81ACF8();
  sub_22D81ACC8();
  swift_endAccess();
}

uint64_t sub_22D7DBB90(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[0] = a3;
  v24[1] = a4;
  v5 = sub_22D81B6C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *MEMORY[0x277D29660];
  v12 = sub_22D81B2C8();
  v14 = v13;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = objc_opt_self();
  v17 = v10;
  v18 = [v16 defaultCenter];
  sub_22D81B6D8();

  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = v12;
  v21 = v24[0];
  v20[4] = v14;
  v20[5] = v21;
  v20[6] = v15;
  sub_22D7E0FB8(&qword_280CD2980, MEMORY[0x277CC9DB0]);
  sub_22D81A198();
  v22 = sub_22D81AD58();

  (*(v6 + 8))(v9, v5);
  v24[5] = v22;
  swift_beginAccess();
  sub_22D81ACF8();
  sub_22D81ACC8();
  swift_endAccess();
}

uint64_t sub_22D7DBE38(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03688, &qword_22D825598);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03778, &qword_22D825838);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  v14 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v6 + 16))(v9, Strong + *a3, v5);

    v19 = v14;
    sub_22D81A398();
    sub_22D81B528();
    (*(v6 + 8))(v9, v5);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03780, &qword_22D825840);
  (*(*(v17 - 8) + 56))(v13, v16, 1, v17);
  return sub_22D764440(v13, &qword_27DA03778, &qword_22D825838);
}

uint64_t sub_22D7DC044(unint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03698, &qword_22D8255A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03748, &qword_22D825808);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = *a1;
  if (v11 >> 62)
  {
    result = sub_22D81B938();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x2318D1F70](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v13 = *(v11 + 32);
  }

  v14 = v13;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v3 + 16))(v6, Strong + OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_timerFiredContinuation, v2);

    v18 = v14;
    sub_22D81B528();
    (*(v3 + 8))(v6, v2);
    v16 = 0;
  }

  else
  {

    v16 = 1;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03750, &qword_22D825810);
  (*(*(v17 - 8) + 56))(v10, v16, 1, v17);
  return sub_22D764440(v10, &qword_27DA03748, &qword_22D825808);
}

uint64_t sub_22D7DC2A4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA036A8, &qword_22D8255B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03768, &qword_22D825828);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  v11 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v3 + 16))(v6, Strong + OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_recentsContinuation, v2);

    v16 = v11;
    sub_22D81A398();
    sub_22D81B528();
    (*(v3 + 8))(v6, v2);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03770, &qword_22D825830);
  (*(*(v14 - 8) + 56))(v10, v13, 1, v14);
  return sub_22D764440(v10, &qword_27DA03768, &qword_22D825828);
}

uint64_t sub_22D7DC4A8(unint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA036B8, &qword_22D8255C8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03758, &qword_22D825818);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = *a1;
  if (v11 >> 62)
  {
    result = sub_22D81B938();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x2318D1F70](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v13 = *(v11 + 32);
  }

  v14 = v13;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v3 + 16))(v6, Strong + OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_latestContinuation, v2);

    v18 = v14;
    sub_22D81B528();
    (*(v3 + 8))(v6, v2);
    v16 = 0;
  }

  else
  {

    v16 = 1;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03760, &qword_22D825820);
  (*(*(v17 - 8) + 56))(v10, v16, 1, v17);
  return sub_22D764440(v10, &qword_27DA03758, &qword_22D825818);
}

uint64_t TimerViewModel.addTimer(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22D7DC728, 0, 0);
}

uint64_t sub_22D7DC728()
{
  v1 = *(v0[3] + 16);
  if (v1)
  {
    v2 = [v1 addTimer_];
  }

  else
  {
    v2 = 0;
  }

  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_22D7DC84C;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000019, 0x800000022D82BBC0, sub_22D7DFE58, v3, v6);
}

uint64_t sub_22D7DC84C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_22D7DC9CC;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_22D7DC968;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22D7DC968()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22D7DC9CC()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);
  v3 = *(v0 + 56);

  return v2();
}

uint64_t TimerViewModel.pauseResumeTimer(_:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_22D7DCAE0;

  return TimerViewModel.getTimer(_:)(a1, a2);
}

uint64_t sub_22D7DCAE0(uint64_t a1)
{
  v3 = *(*v2 + 24);
  v4 = *v2;
  *(v4 + 32) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22D7DCC14, 0, 0);
  }
}

uint64_t sub_22D7DCC14()
{
  v1 = v0[4];
  if (v1)
  {
    if ([objc_opt_self() isActiveTimer_])
    {
      if ([v1 state] == 3)
      {
        v2 = 2;
      }

      else
      {
        v2 = 3;
      }

      v3 = [v1 timerByUpdatingWithState_];
      v0[5] = v3;
      v4 = swift_task_alloc();
      v0[6] = v4;
      *v4 = v0;
      v4[1] = sub_22D7DCD8C;
      v5 = v0[2];

      return TimerViewModel.updateTimer(_:)(v3);
    }

    v8 = v0[1];
  }

  else
  {
    sub_22D7DFE60();
    swift_allocError();
    *v7 = 2;
    swift_willThrow();
    v8 = v0[1];
  }

  return v8();
}

uint64_t sub_22D7DCD8C()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_22D7DCF08;
  }

  else
  {
    v3 = sub_22D7DCEA0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22D7DCEA0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22D7DCF08()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t TimerViewModel.getTimer(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22D7DCF94, 0, 0);
}

uint64_t sub_22D7DCF94()
{
  v1 = [*(v0[4] + 16) timers];
  v0[5] = v1;
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_22D7DD05C;

  return sub_22D7DFEB4(v1);
}

uint64_t sub_22D7DD05C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v7 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v5 = sub_22D7DD424;
  }

  else
  {

    v5 = sub_22D7DD178;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22D7DD178()
{
  v2 = v0[7];
  if (v2)
  {
    v28 = MEMORY[0x277D84F90];
    if (v2 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22D81B938())
    {
      v4 = 0;
      v1 = v0;
      v5 = v0[7];
      v6 = v5 & 0xC000000000000001;
      v7 = v5 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v6)
        {
          v8 = MEMORY[0x2318D1F70](v4, v2);
        }

        else
        {
          if (v4 >= *(v7 + 16))
          {
            goto LABEL_15;
          }

          v8 = *(v2 + 8 * v4 + 32);
        }

        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        MEMORY[0x2318D1B10](v8);
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v0 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22D81B458();
        }

        sub_22D81B478();
        ++v4;
        if (v9 == i)
        {
          v10 = v28;
          v0 = v1;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

    v10 = MEMORY[0x277D84F90];
LABEL_18:

    if (v10 >> 62)
    {
      goto LABEL_37;
    }

    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_20:
      v12 = 0;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x2318D1F70](v12, v10);
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_33:
            __break(1u);
LABEL_34:

LABEL_35:

            v24 = v1;
            goto LABEL_40;
          }
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_37:
            v11 = sub_22D81B938();
            if (!v11)
            {
              break;
            }

            goto LABEL_20;
          }

          v13 = *(v10 + 8 * v12 + 32);
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_33;
          }
        }

        v15 = v0[2];
        v27 = v0[3];
        v1 = v13;
        v16 = [v13 timerIDString];
        v17 = sub_22D81B2C8();
        v19 = v18;

        if (v17 == v15 && v19 == v27)
        {
          goto LABEL_34;
        }

        v21 = v0[2];
        v22 = v0[3];
        v23 = sub_22D81BB08();

        if (v23)
        {
          goto LABEL_35;
        }

        ++v12;
      }

      while (v14 != v11);
    }
  }

  v24 = 0;
LABEL_40:
  v25 = v0[1];

  return v25(v24);
}

uint64_t sub_22D7DD424()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1();
}

uint64_t TimerViewModel.updateTimer(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22D7DD4A8, 0, 0);
}

uint64_t sub_22D7DD4A8()
{
  v1 = *(v0[3] + 16);
  if (v1)
  {
    v2 = [v1 updateTimer_];
  }

  else
  {
    v2 = 0;
  }

  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_22D7DD5CC;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000019, 0x800000022D82BBC0, sub_22D7E103C, v3, v6);
}

uint64_t sub_22D7DD5CC()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_22D7E100C;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_22D7E1014;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22D7DD708()
{
  v1 = [*(v0[2] + 16) timers];
  v0[3] = v1;
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_22D7DD7D0;

  return sub_22D7DFEB4(v1);
}

uint64_t sub_22D7DD7D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22D7E1038, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1);
  }
}

uint64_t TimerViewModel.repeatTimer(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22D7DD948, 0, 0);
}

uint64_t sub_22D7DD948()
{
  v1 = [*(v0 + 16) timerIDString];
  v2 = sub_22D81B2C8();
  v4 = v3;

  *(v0 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_22D7DDA18;
  v6 = *(v0 + 24);

  return TimerViewModel.repeatTimer(_:)(v2, v4);
}

uint64_t sub_22D7DDA18()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22D7DDB54, 0, 0);
  }

  else
  {
    v4 = v3[4];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_22D7DDB54()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t TimerViewModel.repeatTimer(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22D7DDBDC, 0, 0);
}

uint64_t sub_22D7DDBDC()
{
  v1 = *(v0[4] + 16);
  if (v1)
  {
    v2 = v0[2];
    v3 = v0[3];
    v4 = v1;
    v5 = sub_22D81B2B8();
    v6 = [v4 repeatTimerWithIdentifier_];
  }

  else
  {
    v6 = 0;
  }

  v0[5] = v6;
  v7 = swift_task_alloc();
  v0[6] = v7;
  *(v7 + 16) = v6;
  v8 = *(MEMORY[0x277D85A40] + 4);
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_22D7DDD28;
  v10 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v9, 0, 0, 0xD000000000000019, 0x800000022D82BBC0, sub_22D7E103C, v7, v10);
}

uint64_t sub_22D7DDD28()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_22D7DDEA8;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_22D7DDE44;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22D7DDE44()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22D7DDEA8()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);
  v3 = *(v0 + 64);

  return v2();
}

uint64_t TimerViewModel.dismissTimer(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22D7DDF34, 0, 0);
}

uint64_t sub_22D7DDF34()
{
  v1 = [*(v0 + 16) timerIDString];
  v2 = sub_22D81B2C8();
  v4 = v3;

  *(v0 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_22D7DE004;
  v6 = *(v0 + 24);

  return TimerViewModel.dismissTimer(_:)(v2, v4);
}

uint64_t sub_22D7DE004()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22D7E1034, 0, 0);
  }

  else
  {
    v4 = v3[4];

    v5 = v3[1];

    return v5();
  }
}

uint64_t TimerViewModel.dismissTimer(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22D7DE164, 0, 0);
}

uint64_t sub_22D7DE164()
{
  v1 = *(v0[4] + 16);
  if (v1)
  {
    v2 = v0[2];
    v3 = v0[3];
    v4 = v1;
    v5 = sub_22D81B2B8();
    v6 = [v4 dismissTimerWithIdentifier_];
  }

  else
  {
    v6 = 0;
  }

  v0[5] = v6;
  v7 = swift_task_alloc();
  v0[6] = v7;
  *(v7 + 16) = v6;
  v8 = *(MEMORY[0x277D85A40] + 4);
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_22D7DE2B0;
  v10 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v9, 0, 0, 0xD000000000000019, 0x800000022D82BBC0, sub_22D7E103C, v7, v10);
}

uint64_t sub_22D7DE2B0()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_22D7E1010;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_22D7E1018;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t TimerViewModel.stopTimer(_:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_22D7DE474;

  return TimerViewModel.getTimer(_:)(a1, a2);
}

uint64_t sub_22D7DE474(uint64_t a1)
{
  v3 = *(*v2 + 24);
  v4 = *v2;
  *(v4 + 32) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22D7DE5A8, 0, 0);
  }
}

uint64_t sub_22D7DE5A8()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = [v1 timerByUpdatingWithState_];
    v0[5] = v2;
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = sub_22D7DE6D0;
    v4 = v0[2];

    return TimerViewModel.updateTimer(_:)(v2);
  }

  else
  {
    sub_22D7DFE60();
    swift_allocError();
    *v6 = 2;
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_22D7DE6D0()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_22D7E1020;
  }

  else
  {
    v3 = sub_22D7E101C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t TimerViewModel.removeTimer(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22D7DE804, 0, 0);
}

uint64_t sub_22D7DE804()
{
  v1 = *(v0[3] + 16);
  if (v1)
  {
    v2 = [v1 removeTimer_];
  }

  else
  {
    v2 = 0;
  }

  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_22D7DD5CC;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000019, 0x800000022D82BBC0, sub_22D7E103C, v3, v6);
}

uint64_t sub_22D7DE948()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA036F8, &qword_22D825668);
  *v2 = v0;
  v2[1] = sub_22D7DEA30;
  v4 = *(v0 + 48);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000012, 0x800000022D82BBE0, sub_22D7E0310, v4, v3);
}

uint64_t sub_22D7DEA30()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_22D7DEB64;
  }

  else
  {
    v3 = sub_22D7DEB44;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_22D7DEB7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03740, &qword_22D825800);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = *(a2 + 16);
  if (v9)
  {
    (*(v5 + 16))(v8, a1, v4);
    v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v11 = swift_allocObject();
    (*(v5 + 32))(v11 + v10, v8, v4);
    aBlock[4] = sub_22D7E0DF8;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22D7DEDF8;
    aBlock[3] = &block_descriptor_69;
    v12 = _Block_copy(aBlock);
    v13 = v9;

    [v13 loadAllDurationsWithCompletion_];
    _Block_release(v12);
  }
}

uint64_t sub_22D7DED44(int a1, int a2, int a3, void *a4, id a5)
{
  if (a5)
  {
    v5 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03740, &qword_22D825800);
    return sub_22D81B4A8();
  }

  else
  {
    v7 = a4;
    sub_22D81A398();
    sub_22D81A398();
    sub_22D81A398();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03740, &qword_22D825800);
    return sub_22D81B4B8();
  }
}

uint64_t sub_22D7DEDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v10 = a2;
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  if (a2)
  {
    sub_22D759CA0(0, &qword_280CD1528, 0x277D29738);
    v10 = sub_22D81B438();
  }

  if (a3)
  {
    sub_22D759CA0(0, &qword_280CD1528, 0x277D29738);
    a3 = sub_22D81B438();
  }

  if (a4)
  {
    sub_22D759CA0(0, &qword_280CD1528, 0x277D29738);
    a4 = sub_22D81B438();
  }

  sub_22D81A198();
  v13 = a5;
  v14 = a6;
  v12(v10, a3, a4, a5, a6);
}

uint64_t TimerViewModel.removeRecentDuration(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22D7DEF58, 0, 0);
}

uint64_t sub_22D7DEF58()
{
  v1 = *(v0[3] + 16);
  if (v1)
  {
    v2 = [v1 removeRecentDuration_];
  }

  else
  {
    v2 = 0;
  }

  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_22D7DD5CC;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000019, 0x800000022D82BBC0, sub_22D7E103C, v3, v6);
}

uint64_t sub_22D7DF09C()
{
  v1 = [*(v0[2] + 16) recentDurations];
  v0[3] = v1;
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_22D7DF164;

  return sub_22D7E0318(v1);
}

uint64_t sub_22D7DF164(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22D7DF2BC, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1);
  }
}

uint64_t sub_22D7DF2BC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 40);

  return v1();
}

uint64_t sub_22D7DF340()
{
  v1 = [*(v0[2] + 16) favoriteDurations];
  v0[3] = v1;
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_22D7DD7D0;

  return sub_22D7E0318(v1);
}

uint64_t sub_22D7DF428()
{
  v1 = [*(v0[2] + 16) defaultDurations];
  v0[3] = v1;
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_22D7DD7D0;

  return sub_22D7E0318(v1);
}

uint64_t sub_22D7DF510()
{
  v1 = [*(*(v0 + 24) + 16) latestDuration];
  *(v0 + 32) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    *(v3 + 16) = v2;
    v4 = *(MEMORY[0x277D85A40] + 4);
    v5 = swift_task_alloc();
    *(v0 + 48) = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03700, qword_22D8256A0);
    *v5 = v0;
    v5[1] = sub_22D7DF6A8;

    return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000015, 0x800000022D82BC00, sub_22D7E070C, v3, v6);
  }

  else
  {
    sub_22D7DFE60();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_22D7DF6A8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_22D7DF834;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_22D7DF7C4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22D7DF7C4()
{
  v1 = v0[4];
  v2 = v0[2];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_22D7DF834()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);

  v3 = *(v0 + 56);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22D7DF8A4(uint64_t a1)
{
  v2 = sub_22D81AA38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03710, &qword_22D8257E0);
    v10 = sub_22D81B818();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_22D7E0FB8(&qword_27DA03718, MEMORY[0x277CC99D0]);
      v18 = sub_22D81B1C8();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_22D7E0FB8(&qword_27DA03720, MEMORY[0x277CC99D0]);
          v25 = sub_22D81B1F8();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_22D7DFBC4(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_22D81B938();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03788, &unk_22D825848);
      result = sub_22D81B818();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_22D81B938();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v22 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1;
  while (v22)
  {
    result = MEMORY[0x2318D1F70](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    v10 = *(v3 + 40);
    sub_22D81ACF8();
    sub_22D7E0FB8(&qword_27DA03790, MEMORY[0x277CBCDA8]);
    result = sub_22D81B1C8();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *(v7 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_22D7E0FB8(&qword_27DA03798, MEMORY[0x277CBCDA8]);
      do
      {
        v23 = *(*(v3 + 48) + 8 * v12);
        result = sub_22D81B1F8();
        if (result)
        {

          v1 = v21;
          goto LABEL_11;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v1 = v21;
    }

    *(v7 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 8 * v12) = v8;
    v17 = *(v3 + 16);
    v9 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v19 + 8 * v6);
  result = sub_22D81A198();
  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_22D7DFE60()
{
  result = qword_27DA036F0;
  if (!qword_27DA036F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA036F0);
  }

  return result;
}

uint64_t sub_22D7DFED4()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[4] = v3;
    *(v3 + 16) = v2;
    v4 = *(MEMORY[0x277D85A40] + 4);
    v5 = swift_task_alloc();
    v0[5] = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03730, &qword_22D8257F0);
    *v5 = v0;
    v5[1] = sub_22D7E0048;

    return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000015, 0x800000022D82BC00, sub_22D7E1040, v3, v6);
  }

  else
  {
    sub_22D7DFE60();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22D7E0048()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_22D7E02A8;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_22D7E0164;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22D7E0164()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    sub_22D759CA0(0, &qword_280CD1508, 0x277D29730);
    v2 = v1;
    sub_22D81B428();

    v5 = *(v0 + 24);
    sub_22D7DFE60();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {

    v3 = *(v0 + 8);

    return v3(0);
  }
}

uint64_t sub_22D7E02A8()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = v0[6];
  v4 = v0[1];

  return v4();
}

uint64_t sub_22D7E0338()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[4] = v3;
    *(v3 + 16) = v2;
    v4 = *(MEMORY[0x277D85A40] + 4);
    v5 = swift_task_alloc();
    v0[5] = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03730, &qword_22D8257F0);
    *v5 = v0;
    v5[1] = sub_22D7E04AC;

    return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000015, 0x800000022D82BC00, sub_22D7E0CC8, v3, v6);
  }

  else
  {
    sub_22D7DFE60();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22D7E04AC()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_22D7E1008;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_22D7E05C8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22D7E05C8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    sub_22D759CA0(0, &qword_280CD1528, 0x277D29738);
    v2 = v1;
    sub_22D81B428();

    v5 = *(v0 + 24);
    sub_22D7DFE60();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {

    v3 = *(v0 + 8);

    return v3(0);
  }
}

uint64_t type metadata accessor for TimerViewModel()
{
  result = qword_280CD2798;
  if (!qword_280CD2798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22D7E0768()
{
  sub_22D7E0BD0(319, &qword_280CD1540, &qword_27DA036E0, &qword_22D8255F0, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_22D7E0BD0(319, &qword_280CD1568, &qword_27DA036E0, &qword_22D8255F0, MEMORY[0x277D85788]);
    if (v4 <= 0x3F)
    {
      v17 = *(v3 - 8) + 64;
      sub_22D7E0B68(319, &qword_280CD1530, &qword_280CD1508, 0x277D29730, MEMORY[0x277D857B8]);
      if (v6 <= 0x3F)
      {
        v18 = *(v5 - 8) + 64;
        sub_22D7E0B68(319, &qword_280CD1558, &qword_280CD1508, 0x277D29730, MEMORY[0x277D85788]);
        if (v8 <= 0x3F)
        {
          v19 = *(v7 - 8) + 64;
          sub_22D7E0BD0(319, &qword_280CD1548, &qword_27DA036E8, &qword_22D8255F8, MEMORY[0x277D857B8]);
          if (v10 <= 0x3F)
          {
            v20 = *(v9 - 8) + 64;
            sub_22D7E0BD0(319, &unk_280CD1570, &qword_27DA036E8, &qword_22D8255F8, MEMORY[0x277D85788]);
            if (v12 <= 0x3F)
            {
              v21 = *(v11 - 8) + 64;
              sub_22D7E0B68(319, &qword_280CD1538, &qword_280CD1528, 0x277D29738, MEMORY[0x277D857B8]);
              if (v14 <= 0x3F)
              {
                v22 = *(v13 - 8) + 64;
                sub_22D7E0B68(319, &qword_280CD1560, &qword_280CD1528, 0x277D29738, MEMORY[0x277D85788]);
                if (v16 <= 0x3F)
                {
                  v23 = *(v15 - 8) + 64;
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_22D7E0B68(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_22D759CA0(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_22D7E0BD0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_22D7E0C48()
{
  result = qword_27DA03708;
  if (!qword_27DA03708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03708);
  }

  return result;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22D81A198();
}

uint64_t objectdestroyTm_4(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_22D7E0DF8(int a1, int a2, int a3, void *a4, void *a5)
{
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03740, &qword_22D825800) - 8) + 80);

  return sub_22D7DED44(a1, a2, a3, a4, a5);
}

uint64_t objectdestroy_80Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22D7E0FB8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22D7E1048()
{
  result = qword_27DA037A0;
  if (!qword_27DA037A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA037A0);
  }

  return result;
}

unint64_t sub_22D7E10A0()
{
  result = qword_27DA037A8;
  if (!qword_27DA037A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA037A8);
  }

  return result;
}

uint64_t sub_22D7E112C@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v22 = &v21 - v3;
  v4 = sub_22D81A748();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D81A958();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_22D81B2A8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v21 = sub_22D81A768();
  v13 = *(v21 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22D81B228();
  sub_22D81A948();
  v15 = *MEMORY[0x277CC9110];
  v16 = *(v5 + 104);
  v16(v8, v15, v4);
  sub_22D81A778();
  sub_22D81B228();
  sub_22D81A948();
  v16(v8, v15, v4);
  v17 = v22;
  sub_22D81A778();
  (*(v13 + 56))(v17, 0, 1, v21);
  v18 = v23;
  sub_22D81A2C8();
  v19 = sub_22D81A2B8();
  return (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
}

uint64_t sub_22D7E14B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22D7E14D0, 0, 0);
}

uint64_t sub_22D7E14D0()
{
  v1 = [*(v0 + 24) timersSync];
  if (!v1)
  {
    goto LABEL_19;
  }

  sub_22D7E1A14();
  v2 = sub_22D81B438();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_18:

    v1 = 0;
    goto LABEL_19;
  }

LABEL_17:
  v3 = sub_22D81B938();
  if (!v3)
  {
    goto LABEL_18;
  }

LABEL_4:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x2318D1F70](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v1 = v5;
    v6 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if ([v5 state] == 3)
    {
      break;
    }

    ++v4;
    if (v6 == v3)
    {
      goto LABEL_18;
    }
  }

  v7 = [v1 timerByUpdatingWithState_];
  if (v7)
  {
    v8 = v7;
  }

LABEL_19:
  v9 = *(v0 + 16);
  sub_22D819FD8();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22D7E1690()
{
  v0 = sub_22D81A748();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D81A958();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_22D81B2A8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22D81B228();
  sub_22D81A948();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_22D81A778();
}

uint64_t sub_22D7E1850()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA037C0, qword_22D8259B8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22D81A408();
  return sub_22D81A3B8();
}

uint64_t sub_22D7E1928(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22D744B0C;

  return sub_22D7E14B0(a1, v4);
}

uint64_t sub_22D7E19C8(uint64_t a1)
{
  v2 = sub_22D7D1D78();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_22D7E1A14()
{
  result = qword_280CD1508;
  if (!qword_280CD1508)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CD1508);
  }

  return result;
}

void sub_22D7E1A60(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_22D81A728();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_22D7E1AC4(uint64_t a1)
{
  v3 = *(v1 + 112);
  v4 = [v3 allObjects];
  v5 = sub_22D81B438();

  if (v5 >> 62)
  {
    v6 = sub_22D81B938();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_12:

    return;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (v6 >= 1)
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2318D1F70](v7, v5);
        if (v8 == a1)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v8 = *(v5 + 8 * v7 + 32);
        swift_unknownObjectRetain();
        if (v8 == a1)
        {
LABEL_10:
          [v3 removeObject_];
        }
      }

      ++v7;
      swift_unknownObjectRelease();
      if (v6 == v7)
      {
        goto LABEL_12;
      }
    }
  }

  __break(1u);
}

uint64_t sub_22D7E1BF0(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;
      sub_22D81A398();
      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_22D7E1CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 80) = a1;
  *(v4 + 88) = a4;
  return MEMORY[0x2822009F8](sub_22D7E1CC0, a4, 0);
}

uint64_t sub_22D7E1CC0()
{
  sub_22D75CCD8(*(v0 + 88) + 120, v0 + 16);

  return MEMORY[0x2822009F8](sub_22D7E1D30, 0, 0);
}

uint64_t sub_22D7E1D30()
{
  v1 = v0[11];
  v0[12] = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);

  return MEMORY[0x2822009F8](sub_22D7E1DA4, v1, 0);
}

uint64_t sub_22D7E1DA4()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  *(v0 + 104) = *(v1 + 112);
  sub_22D81A398();

  return MEMORY[0x2822009F8](sub_22D7E1E2C, 0, 0);
}

uint64_t sub_22D7E1E2C()
{
  v9 = v0;
  v1 = *(v0 + 104);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_22D7E88FC(*(v1 + 16), 0);
    v4 = sub_22D7E9B1C(&v8, v3 + 4, v2, v1);
    sub_22D792FD0();
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

LABEL_5:
  v5 = **(v0 + 96);
  sub_22D7E844C();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  **(v0 + 80) = 0;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_22D7E1F14(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_22D7E1F34, v1, 0);
}

id sub_22D7E1F34()
{
  v20 = v0;
  if (*(*(v0 + 64) + 160) == 1)
  {
    result = [*(v0 + 56) identifier];
    if (result)
    {
      v2 = result;
      v3 = *(v0 + 56);
      v4 = *(v0 + 64);
      v5 = sub_22D81B2C8();
      v7 = v6;

      swift_beginAccess();
      v8 = v3;
      v9 = *(v4 + 112);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *(v4 + 112);
      *(v4 + 112) = 0x8000000000000000;
      sub_22D80C83C(v8, v5, v7, isUniquelyReferenced_nonNull_native);

      v11 = v19;
      *(v4 + 112) = v19;
      swift_endAccess();
      sub_22D75CCD8(v4 + 120, v0 + 16);
      v12 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      v13 = *(v11 + 16);
      if (!v13)
      {
LABEL_7:
        v17 = *v12;
        sub_22D7E844C();

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        v16 = *(v0 + 8);
        goto LABEL_8;
      }

      v18 = v12;
      v14 = sub_22D7E88FC(v13, 0);
      v15 = sub_22D7E9B1C(&v19, v14 + 4, v13, v11);
      sub_22D81A198();
      result = sub_22D792FD0();
      if (v15 == v13)
      {
        v12 = v18;
        goto LABEL_7;
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  sub_22D7EB8E4();
  swift_allocError();
  swift_willThrow();
  v16 = *(v0 + 8);
LABEL_8:

  return v16();
}

id sub_22D7E2140(void *a1)
{
  if (*(v1 + 160) != 1)
  {
    goto LABEL_6;
  }

  v16[6] = v2;
  result = [a1 identifier];
  if (result)
  {
    v4 = result;
    v5 = sub_22D81B2C8();
    v7 = v6;

    swift_beginAccess();
    v8 = v1;
    sub_22D804758(0, v5, v7);
    swift_endAccess();
    sub_22D75CCD8(v1 + 120, v16);
    v9 = __swift_project_boxed_opaque_existential_0(v16, v16[3]);
    v10 = *(v8 + 112);
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = sub_22D7E88FC(*(v10 + 16), 0);
      v13 = sub_22D7E9B1C(&v15, v12 + 4, v11, v10);
      sub_22D81A398();
      sub_22D792FD0();
      if (v13 != v11)
      {
        __break(1u);
LABEL_6:
        sub_22D7EB8E4();
        swift_allocError();
        return swift_willThrow();
      }
    }

    v14 = *v9;
    sub_22D7E844C();

    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22D7E22DC()
{
  v2 = v0;
  v3 = objc_opt_self();
  v4 = sub_22D81B2B8();
  v5 = &off_278771000;
  [v3 logInfo_];

  if (*(v2 + 160) != 1)
  {
    sub_22D7EB8E4();
    swift_allocError();
    swift_willThrow();
    return v4;
  }

  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_22D81B838();

  v20[8] = 0xD00000000000001DLL;
  v20[9] = 0x800000022D82C070;
  swift_beginAccess();
  v6 = *(v2 + 112);
  v7 = *(v6 + 16);
  if (!v7)
  {
    v8 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

  v19 = v3;
  v20[11] = v1;
  v8 = sub_22D7E88FC(v7, 0);
  v9 = sub_22D7E9B1C(v20, v8 + 4, v7, v6);
  sub_22D81A398();
  result = sub_22D792FD0();
  if (v9 == v7)
  {
    v3 = v19;
    v5 = &off_278771000;
LABEL_7:
    v11 = sub_22D7EB4B8();
    v12 = MEMORY[0x2318D1B50](v8, v11);
    v14 = v13;

    MEMORY[0x2318D1A50](v12, v14);

    v15 = sub_22D81B2B8();

    [v3 v5[58]];

    v16 = *(v2 + 112);
    v17 = *(v16 + 16);
    if (!v17)
    {
      return MEMORY[0x277D84F90];
    }

    v4 = sub_22D7E88FC(*(v16 + 16), 0);
    v18 = sub_22D7E9B1C(v20, v4 + 4, v17, v16);
    sub_22D81A398();
    sub_22D792FD0();
    if (v18 != v17)
    {
      __break(1u);
      return MEMORY[0x277D84F90];
    }

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_22D7E2568()
{
  v1 = *(v0 + 112);

  __swift_destroy_boxed_opaque_existential_0((v0 + 120));
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

id MTStopwatchStorageProxy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MTStopwatchStorageProxy.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v26 - v3;
  v5 = OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_stopwatchActor;
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = type metadata accessor for DefaultsStopwatchDataStore();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v28[3] = v7;
  v28[4] = &off_2840D98C0;
  v28[0] = v8;
  type metadata accessor for StopwatchStorageActor();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v28, v7);
  v11 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = sub_22D7E9C70(*v13, v9);
  __swift_destroy_boxed_opaque_existential_0(v28);
  *&v0[v5] = v15;
  v16 = OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_observerStore;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA037D8, &qword_22D8259D0);
  v17 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v17 + 112) = [objc_opt_self() weakObjectsHashTable];
  *&v0[v16] = v17;
  v18 = OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_sessionsActor;
  type metadata accessor for StopwatchSessionsProvider();
  v19 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v19 + 112) = MEMORY[0x277D84F98];
  *&v0[v18] = v19;
  v20 = type metadata accessor for MTStopwatchStorageProxy();
  v27.receiver = v0;
  v27.super_class = v20;
  v21 = objc_msgSendSuper2(&v27, sel_init);
  v22 = sub_22D81B4F8();
  (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v21;
  v24 = v21;
  sub_22D7BD9C8(0, 0, v4, &unk_22D8259E0, v23);

  sub_22D764440(v4, &unk_27DA01FF0, &qword_22D81FC70);
  return v24;
}

uint64_t sub_22D7E294C()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_observerStore);
  v0[3] = v2;
  v0[4] = *(v1 + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_sessionsActor);
  return MEMORY[0x2822009F8](sub_22D7E2988, v2, 0);
}

uint64_t sub_22D7E2988()
{
  [*(v0[3] + 112) addObject_];
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_22D7E2A2C;
  v2 = v0[2];

  return sub_22D7E75C8();
}

uint64_t sub_22D7E2A2C()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22D7E2B44(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  v9 = sub_22D81B4F8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = v2;
  sub_22D748F50(a1);
  v11 = v2;
  sub_22D75D890(0, 0, v8, &unk_22D8259F0, v10);
}

uint64_t sub_22D7E2C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22D7E2C8C, 0, 0);
}

uint64_t sub_22D7E2C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (v3[2])
  {
    v4 = *(v3[4] + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_stopwatchActor);
    v3[5] = v4;
    return MEMORY[0x2822009F8](sub_22D7E2CC4, v4, 0);
  }

  else
  {
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }
}

uint64_t sub_22D7E2CC4()
{
  v1 = v0[5];
  v0[6] = sub_22D7E22DC();
  v0[7] = 0;

  return MEMORY[0x2822009F8](sub_22D7E2D50, 0, 0);
}

uint64_t sub_22D7E2D50()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 48), 0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22D7E2DC8()
{
  v1 = v0[7];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v1;
  v3(0, v1);

  v5 = v0[1];

  return v5();
}

void sub_22D7E2FB8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_22D7EB4B8();
    v5 = sub_22D81B418();
  }

  if (a2)
  {
    v6 = sub_22D81A728();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_22D7E3074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  return MEMORY[0x2822009F8](sub_22D7E309C, 0, 0);
}

uint64_t sub_22D7E309C()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_stopwatchActor);
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_22D7E3140;
  v3 = v0[5];

  return sub_22D7E1F14(v3);
}

uint64_t sub_22D7E3140()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_22D7E3490;
  }

  else
  {
    v3 = sub_22D7E3254;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22D7E3254()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_observerStore);
  *(v0 + 88) = v1;
  return MEMORY[0x2822009F8](sub_22D7E3280, v1, 0);
}

uint64_t sub_22D7E3280()
{
  v1 = [*(*(v0 + 88) + 112) allObjects];
  v2 = sub_22D81B438();

  if (v2 >> 62)
  {
    v3 = sub_22D81B938();
    v6 = v3;
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  v7 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2318D1F70](v7, v2);
    }

    else
    {
      v8 = *(v2 + 8 * v7 + 32);
      swift_unknownObjectRetain();
    }

    v10 = *(v0 + 40);
    v9 = *(v0 + 48);
    ++v7;
    *(v0 + 16) = v8;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA038C0, &unk_22D825CE0);
    swift_dynamicCast();
    [*(v0 + 24) didCreateStopWatch:v10 source:v9];
    swift_unknownObjectRelease();
    v11 = *(v0 + 24);
    swift_unknownObjectRelease();
  }

  while (v6 != v7);
LABEL_10:

  v3 = sub_22D7E3428;
  v4 = 0;
  v5 = 0;

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22D7E3428()
{
  v1 = *(v0 + 64);
  (*(v0 + 56))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22D7E3490()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v1;
  v3(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_22D7E3594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  return MEMORY[0x2822009F8](sub_22D7E35BC, 0, 0);
}

uint64_t sub_22D7E35BC()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_stopwatchActor);
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_22D7E3660;
  v3 = v0[5];

  return sub_22D7E1F14(v3);
}

uint64_t sub_22D7E3660()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_22D7EBBC8;
  }

  else
  {
    v3 = sub_22D7E3774;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22D7E3774()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_observerStore);
  *(v0 + 88) = v1;
  return MEMORY[0x2822009F8](sub_22D7E37A0, v1, 0);
}

uint64_t sub_22D7E37A0()
{
  v1 = [*(*(v0 + 88) + 112) allObjects];
  v2 = sub_22D81B438();

  if (v2 >> 62)
  {
    v3 = sub_22D81B938();
    v6 = v3;
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  v7 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2318D1F70](v7, v2);
    }

    else
    {
      v8 = *(v2 + 8 * v7 + 32);
      swift_unknownObjectRetain();
    }

    v10 = *(v0 + 40);
    v9 = *(v0 + 48);
    ++v7;
    *(v0 + 16) = v8;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA038C0, &unk_22D825CE0);
    swift_dynamicCast();
    [*(v0 + 24) didUpdateStopwatch:v10 source:v9];
    swift_unknownObjectRelease();
    v11 = *(v0 + 24);
    swift_unknownObjectRelease();
  }

  while (v6 != v7);
LABEL_10:

  v3 = sub_22D7EBBCC;
  v4 = 0;
  v5 = 0;

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22D7E39C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v21 - v14;
  v16 = sub_22D81B4F8();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v6;
  v17[5] = a1;
  v17[6] = a4;
  v17[7] = a2;
  v17[8] = a3;
  v18 = v6;
  v19 = a1;
  swift_unknownObjectRetain();
  sub_22D81A198();
  sub_22D75D890(0, 0, v15, a6, v17);
}

uint64_t sub_22D7E3AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  return MEMORY[0x2822009F8](sub_22D7E3B1C, 0, 0);
}

uint64_t sub_22D7E3B1C()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_stopwatchActor);
  *(v0 + 72) = v1;
  return MEMORY[0x2822009F8](sub_22D7E3B48, v1, 0);
}

uint64_t sub_22D7E3B48()
{
  v1 = *(v0 + 72);
  sub_22D7E2140(*(v0 + 40));
  *(v0 + 80) = 0;

  return MEMORY[0x2822009F8](sub_22D7E3BD8, 0, 0);
}

uint64_t sub_22D7E3BD8()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_observerStore);
  *(v0 + 88) = v1;
  return MEMORY[0x2822009F8](sub_22D7E3C04, v1, 0);
}

uint64_t sub_22D7E3C04()
{
  v1 = [*(*(v0 + 88) + 112) allObjects];
  v2 = sub_22D81B438();

  if (v2 >> 62)
  {
    v3 = sub_22D81B938();
    v6 = v3;
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  v7 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2318D1F70](v7, v2);
    }

    else
    {
      v8 = *(v2 + 8 * v7 + 32);
      swift_unknownObjectRetain();
    }

    v10 = *(v0 + 40);
    v9 = *(v0 + 48);
    ++v7;
    *(v0 + 16) = v8;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA038C0, &unk_22D825CE0);
    swift_dynamicCast();
    [*(v0 + 24) didDeleteStopwatch:v10 source:v9];
    swift_unknownObjectRelease();
    v11 = *(v0 + 24);
    swift_unknownObjectRelease();
  }

  while (v6 != v7);
LABEL_10:

  v3 = sub_22D7EBBCC;
  v4 = 0;
  v5 = 0;

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22D7E3E04(void *a1, uint64_t a2, void *a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v25 - v16;
  v18 = _Block_copy(a4);
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v20 = sub_22D81B4F8();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = a1;
  v21[5] = a3;
  v21[6] = a5;
  v21[7] = a8;
  v21[8] = v19;
  v22 = a3;
  swift_unknownObjectRetain();
  v23 = a1;
  sub_22D75D890(0, 0, v17, a9, v21);
}

uint64_t sub_22D7E3F64(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_22D81B4F8();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v5;
  v16[5] = a2;
  v16[6] = a1;
  v16[7] = a5;
  v16[8] = a3;
  v16[9] = a4;
  v17 = v5;
  v18 = a2;
  v19 = a1;
  swift_unknownObjectRetain();
  sub_22D81A198();
  sub_22D75D890(0, 0, v14, &unk_22D825A38, v16);
}

uint64_t sub_22D7E40AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v10;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  return MEMORY[0x2822009F8](sub_22D7E40DC, 0, 0);
}

uint64_t sub_22D7E40DC()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_stopwatchActor);
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_22D7E4180;
  v3 = v0[5];

  return sub_22D7E1F14(v3);
}

uint64_t sub_22D7E4180()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_22D7E44D8;
  }

  else
  {
    v3 = sub_22D7E4294;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22D7E4294()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_observerStore);
  *(v0 + 96) = v1;
  return MEMORY[0x2822009F8](sub_22D7E42C0, v1, 0);
}

uint64_t sub_22D7E42C0()
{
  v1 = [*(*(v0 + 96) + 112) allObjects];
  v2 = sub_22D81B438();

  if (v2 >> 62)
  {
    v3 = sub_22D81B938();
    v6 = v3;
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  v7 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2318D1F70](v7, v2);
    }

    else
    {
      v8 = *(v2 + 8 * v7 + 32);
      swift_unknownObjectRetain();
    }

    v10 = *(v0 + 48);
    v9 = *(v0 + 56);
    v11 = *(v0 + 40);
    ++v7;
    *(v0 + 16) = v8;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA038C0, &unk_22D825CE0);
    swift_dynamicCast();
    [*(v0 + 24) didAddLap:v10 forStopwatch:v11 source:v9];
    swift_unknownObjectRelease();
    v12 = *(v0 + 24);
    swift_unknownObjectRelease();
  }

  while (v6 != v7);
LABEL_10:

  v3 = sub_22D7E4470;
  v4 = 0;
  v5 = 0;

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22D7E4470()
{
  v1 = *(v0 + 72);
  (*(v0 + 64))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22D7E44D8()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v1;
  v3(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_22D7E46FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  return MEMORY[0x2822009F8](sub_22D7E4724, 0, 0);
}

void sub_22D7E4724()
{
  v1 = v0[11];
  if (v1)
  {
    v2 = *(v0[10] + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_stopwatchActor);
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_22D7E47D0;

    sub_22D7E1F14(v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22D7E47D0()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_22D7EBBD8;
  }

  else
  {
    v3 = sub_22D7E48E4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22D7E48E4()
{
  v1 = *(*(v0 + 80) + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_observerStore);
  *(v0 + 136) = v1;
  return MEMORY[0x2822009F8](sub_22D7E4910, v1, 0);
}

uint64_t sub_22D7E4910()
{
  v1 = [*(v0[17] + 112) allObjects];
  v2 = sub_22D81B438();

  if (v2 >> 62)
  {
    v3 = sub_22D81B938();
    v6 = v3;
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  v7 = 0;
  v8 = v0[13];
  v19 = v0[14];
  v18 = v2 & 0xC000000000000001;
  v9 = v0[12];
  v17 = v0 + 4;
  do
  {
    if (v18)
    {
      v14 = MEMORY[0x2318D1F70](v7, v2);
    }

    else
    {
      v14 = *(v2 + 8 * v7 + 32);
      swift_unknownObjectRetain();
    }

    v0[8] = v14;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA038C0, &unk_22D825CE0);
    swift_dynamicCast();
    v15 = v0[9];
    if (v9)
    {
      v0[6] = v9;
      v0[7] = v8;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_22D7E4B5C;
      v0[5] = &block_descriptor_228;
      v10 = _Block_copy(v0 + 2);
      v11 = v2;
      v12 = v0[7];
      sub_22D81A198();
      v2 = v11;
    }

    else
    {
      v10 = 0;
    }

    ++v7;
    [v15 didClearAllLapsForStopwatch:v0[11] withCompletion:v10 source:{v19, v17}];
    _Block_release(v10);
    swift_unknownObjectRelease();
    v13 = v0[9];
    swift_unknownObjectRelease();
  }

  while (v6 != v7);
LABEL_13:

  v3 = sub_22D7EBBD0;
  v4 = 0;
  v5 = 0;

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_22D7E4B5C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_22D81A198();
  v5 = a2;
  v4(a2);
}

uint64_t sub_22D7E4D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  return MEMORY[0x2822009F8](sub_22D7E4D90, 0, 0);
}

void sub_22D7E4D90()
{
  v1 = v0[11];
  if (v1)
  {
    v2 = *(v0[10] + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_stopwatchActor);
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_22D7E4E3C;

    sub_22D7E1F14(v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22D7E4E3C()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_22D7EBBD8;
  }

  else
  {
    v3 = sub_22D7E4F50;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22D7E4F50()
{
  v1 = *(*(v0 + 80) + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_observerStore);
  *(v0 + 136) = v1;
  return MEMORY[0x2822009F8](sub_22D7E4F7C, v1, 0);
}

uint64_t sub_22D7E4F7C()
{
  v1 = [*(v0[17] + 112) allObjects];
  v2 = sub_22D81B438();

  if (v2 >> 62)
  {
    v3 = sub_22D81B938();
    v6 = v3;
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  v7 = 0;
  v8 = v0[13];
  v19 = v0[14];
  v18 = v2 & 0xC000000000000001;
  v9 = v0[12];
  v17 = v0 + 4;
  do
  {
    if (v18)
    {
      v14 = MEMORY[0x2318D1F70](v7, v2);
    }

    else
    {
      v14 = *(v2 + 8 * v7 + 32);
      swift_unknownObjectRetain();
    }

    v0[8] = v14;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA038C0, &unk_22D825CE0);
    swift_dynamicCast();
    v15 = v0[9];
    if (v9)
    {
      v0[6] = v9;
      v0[7] = v8;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_22D7E4B5C;
      v0[5] = &block_descriptor_224;
      v10 = _Block_copy(v0 + 2);
      v11 = v2;
      v12 = v0[7];
      sub_22D81A198();
      v2 = v11;
    }

    else
    {
      v10 = 0;
    }

    ++v7;
    [v15 didStartLapTimerForStopwatch:v0[11] withCompletion:v10 source:{v19, v17}];
    _Block_release(v10);
    swift_unknownObjectRelease();
    v13 = v0[9];
    swift_unknownObjectRelease();
  }

  while (v6 != v7);
LABEL_13:

  v3 = sub_22D7EBBD0;
  v4 = 0;
  v5 = 0;

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22D7E5368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  return MEMORY[0x2822009F8](sub_22D7E5390, 0, 0);
}

void sub_22D7E5390()
{
  v1 = v0[11];
  if (v1)
  {
    v2 = *(v0[10] + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_stopwatchActor);
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_22D7E543C;

    sub_22D7E1F14(v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22D7E543C()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_22D7E583C;
  }

  else
  {
    v3 = sub_22D7E5550;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22D7E5550()
{
  v1 = *(*(v0 + 80) + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_observerStore);
  *(v0 + 136) = v1;
  return MEMORY[0x2822009F8](sub_22D7E557C, v1, 0);
}

uint64_t sub_22D7E557C()
{
  v1 = [*(v0[17] + 112) allObjects];
  v2 = sub_22D81B438();

  if (v2 >> 62)
  {
    v3 = sub_22D81B938();
    v6 = v3;
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  v7 = 0;
  v8 = v0[13];
  v19 = v0[14];
  v18 = v2 & 0xC000000000000001;
  v9 = v0[12];
  v17 = v0 + 4;
  do
  {
    if (v18)
    {
      v14 = MEMORY[0x2318D1F70](v7, v2);
    }

    else
    {
      v14 = *(v2 + 8 * v7 + 32);
      swift_unknownObjectRetain();
    }

    v0[8] = v14;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA038C0, &unk_22D825CE0);
    swift_dynamicCast();
    v15 = v0[9];
    if (v9)
    {
      v0[6] = v9;
      v0[7] = v8;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_22D7E4B5C;
      v0[5] = &block_descriptor_220;
      v10 = _Block_copy(v0 + 2);
      v11 = v2;
      v12 = v0[7];
      sub_22D81A198();
      v2 = v11;
    }

    else
    {
      v10 = 0;
    }

    ++v7;
    [v15 didPauseLapTimerForStopwatch:v0[11] withCompletion:v10 source:{v19, v17}];
    _Block_release(v10);
    swift_unknownObjectRelease();
    v13 = v0[9];
    swift_unknownObjectRelease();
  }

  while (v6 != v7);
LABEL_13:

  v3 = sub_22D7E57C8;
  v4 = 0;
  v5 = 0;

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22D7E57C8()
{
  v1 = v0[12];
  if (v1)
  {
    v2 = v0[13];
    v1(0);
    v3 = v0[1];

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22D7E583C()
{
  v1 = v0[12];
  if (v1)
  {
    v2 = v0[16];
    v3 = v0[13];
    v4 = v2;
    v1(v2);

    v5 = v0[1];

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22D7E5A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  return MEMORY[0x2822009F8](sub_22D7E5A9C, 0, 0);
}

void sub_22D7E5A9C()
{
  v1 = v0[11];
  if (v1)
  {
    v2 = *(v0[10] + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_stopwatchActor);
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_22D7E5B48;

    sub_22D7E1F14(v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22D7E5B48()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_22D7EBBD8;
  }

  else
  {
    v3 = sub_22D7E5C5C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22D7E5C5C()
{
  v1 = *(*(v0 + 80) + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_observerStore);
  *(v0 + 136) = v1;
  return MEMORY[0x2822009F8](sub_22D7E5C88, v1, 0);
}

uint64_t sub_22D7E5C88()
{
  v1 = [*(v0[17] + 112) allObjects];
  v2 = sub_22D81B438();

  if (v2 >> 62)
  {
    v3 = sub_22D81B938();
    v6 = v3;
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  v7 = 0;
  v8 = v0[13];
  v19 = v0[14];
  v18 = v2 & 0xC000000000000001;
  v9 = v0[12];
  v17 = v0 + 4;
  do
  {
    if (v18)
    {
      v14 = MEMORY[0x2318D1F70](v7, v2);
    }

    else
    {
      v14 = *(v2 + 8 * v7 + 32);
      swift_unknownObjectRetain();
    }

    v0[8] = v14;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA038C0, &unk_22D825CE0);
    swift_dynamicCast();
    v15 = v0[9];
    if (v9)
    {
      v0[6] = v9;
      v0[7] = v8;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_22D7E4B5C;
      v0[5] = &block_descriptor_216;
      v10 = _Block_copy(v0 + 2);
      v11 = v2;
      v12 = v0[7];
      sub_22D81A198();
      v2 = v11;
    }

    else
    {
      v10 = 0;
    }

    ++v7;
    [v15 didLapLapTimerForStopwatch:v0[11] withCompletion:v10 source:{v19, v17}];
    _Block_release(v10);
    swift_unknownObjectRelease();
    v13 = v0[9];
    swift_unknownObjectRelease();
  }

  while (v6 != v7);
LABEL_13:

  v3 = sub_22D7EBBD0;
  v4 = 0;
  v5 = 0;

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22D7E6074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  return MEMORY[0x2822009F8](sub_22D7E609C, 0, 0);
}

void sub_22D7E609C()
{
  v1 = v0[11];
  if (v1)
  {
    v2 = *(v0[10] + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_stopwatchActor);
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_22D7E6148;

    sub_22D7E1F14(v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22D7E6148()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_22D7EBBD8;
  }

  else
  {
    v3 = sub_22D7E625C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22D7E625C()
{
  v1 = *(*(v0 + 80) + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_observerStore);
  *(v0 + 136) = v1;
  return MEMORY[0x2822009F8](sub_22D7E6288, v1, 0);
}

uint64_t sub_22D7E6288()
{
  v1 = [*(v0[17] + 112) allObjects];
  v2 = sub_22D81B438();

  if (v2 >> 62)
  {
    v3 = sub_22D81B938();
    v6 = v3;
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  v7 = 0;
  v8 = v0[13];
  v19 = v0[14];
  v18 = v2 & 0xC000000000000001;
  v9 = v0[12];
  v17 = v0 + 4;
  do
  {
    if (v18)
    {
      v14 = MEMORY[0x2318D1F70](v7, v2);
    }

    else
    {
      v14 = *(v2 + 8 * v7 + 32);
      swift_unknownObjectRetain();
    }

    v0[8] = v14;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA038C0, &unk_22D825CE0);
    swift_dynamicCast();
    v15 = v0[9];
    if (v9)
    {
      v0[6] = v9;
      v0[7] = v8;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_22D7E4B5C;
      v0[5] = &block_descriptor_212;
      v10 = _Block_copy(v0 + 2);
      v11 = v2;
      v12 = v0[7];
      sub_22D81A198();
      v2 = v11;
    }

    else
    {
      v10 = 0;
    }

    ++v7;
    [v15 didResetLapTimerForStopwatch:v0[11] withCompletion:v10 source:{v19, v17}];
    _Block_release(v10);
    swift_unknownObjectRelease();
    v13 = v0[9];
    swift_unknownObjectRelease();
  }

  while (v6 != v7);
LABEL_13:

  v3 = sub_22D7EBBD0;
  v4 = 0;
  v5 = 0;

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22D7E6674(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v21 - v14;
  v16 = sub_22D81B4F8();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v6;
  v17[5] = a1;
  v17[6] = a2;
  v17[7] = a3;
  v17[8] = a4;
  v18 = a1;
  v19 = v6;
  sub_22D748F50(a2);
  swift_unknownObjectRetain();
  sub_22D75D890(0, 0, v15, a6, v17);
}

uint64_t sub_22D7E67AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  return MEMORY[0x2822009F8](sub_22D7E67D4, 0, 0);
}

void sub_22D7E67D4()
{
  v1 = v0[11];
  if (v1)
  {
    v2 = *(v0[10] + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_stopwatchActor);
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_22D7E6880;

    sub_22D7E1F14(v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22D7E6880()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_22D7EBBD8;
  }

  else
  {
    v3 = sub_22D7E6994;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22D7E6994()
{
  v1 = *(*(v0 + 80) + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_observerStore);
  *(v0 + 136) = v1;
  return MEMORY[0x2822009F8](sub_22D7E69C0, v1, 0);
}

uint64_t sub_22D7E69C0()
{
  v1 = [*(v0[17] + 112) allObjects];
  v2 = sub_22D81B438();

  if (v2 >> 62)
  {
    v3 = sub_22D81B938();
    v6 = v3;
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  v7 = 0;
  v8 = v0[13];
  v19 = v0[14];
  v18 = v2 & 0xC000000000000001;
  v9 = v0[12];
  v17 = v0 + 4;
  do
  {
    if (v18)
    {
      v14 = MEMORY[0x2318D1F70](v7, v2);
    }

    else
    {
      v14 = *(v2 + 8 * v7 + 32);
      swift_unknownObjectRetain();
    }

    v0[8] = v14;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA038C0, &unk_22D825CE0);
    swift_dynamicCast();
    v15 = v0[9];
    if (v9)
    {
      v0[6] = v9;
      v0[7] = v8;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_22D7E4B5C;
      v0[5] = &block_descriptor_14;
      v10 = _Block_copy(v0 + 2);
      v11 = v2;
      v12 = v0[7];
      sub_22D81A198();
      v2 = v11;
    }

    else
    {
      v10 = 0;
    }

    ++v7;
    [v15 didResumeLapTimerForStopwatch:v0[11] withCompletion:v10 source:{v19, v17}];
    _Block_release(v10);
    swift_unknownObjectRelease();
    v13 = v0[9];
    swift_unknownObjectRelease();
  }

  while (v6 != v7);
LABEL_13:

  v3 = sub_22D7EBBD0;
  v4 = 0;
  v5 = 0;

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22D7E6DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22D7E6DCC, 0, 0);
}

uint64_t sub_22D7E6DCC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_observerStore);
  *(v0 + 32) = v1;
  return MEMORY[0x2822009F8](sub_22D7E6DF8, v1, 0);
}

uint64_t sub_22D7E6DF8()
{
  [*(v0[4] + 112) addObject_];
  v1 = v0[1];

  return v1();
}

uint64_t sub_22D7E6EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = sub_22D81B4F8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v3;
  v11[5] = a1;
  v12 = v3;
  swift_unknownObjectRetain();
  sub_22D75D890(0, 0, v9, a3, v11);
}

uint64_t sub_22D7E6FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22D7E6FD0, 0, 0);
}

uint64_t sub_22D7E6FD0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_observerStore);
  *(v0 + 32) = v1;
  return MEMORY[0x2822009F8](sub_22D7E6FFC, v1, 0);
}

uint64_t sub_22D7E6FFC()
{
  v1 = v0[4];
  sub_22D7E1AC4(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_22D7E707C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  v12 = sub_22D81B4F8();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  v13[5] = a3;
  swift_unknownObjectRetain();
  v14 = a1;
  sub_22D75D890(0, 0, v11, a5, v13);
}

uint64_t sub_22D7E718C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = sub_22D81B4F8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v7 = v0;
  sub_22D7BD9C8(0, 0, v4, &unk_22D825AC8, v6);

  return sub_22D764440(v4, &unk_27DA01FF0, &qword_22D81FC70);
}

uint64_t sub_22D7E72D0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_stopwatchActor);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22D7E72FC, v1, 0);
}

uint64_t sub_22D7E72FC()
{
  *(v0[3] + 160) = 1;
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_22D7E7398;
  v2 = v0[2];

  return sub_22D7E75C8();
}

uint64_t sub_22D7E7398()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22D7E75C8()
{
  v1[8] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7E7670, 0, 0);
}

uint64_t sub_22D7E7670()
{
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_sessionsActor);
  *(v0 + 88) = v1;
  return MEMORY[0x2822009F8](sub_22D7E769C, v1, 0);
}

uint64_t sub_22D7E769C()
{
  v1 = *(v0 + 88);
  *(v0 + 96) = sub_22D76A30C();

  return MEMORY[0x2822009F8](sub_22D7E7708, 0, 0);
}

uint64_t sub_22D7E7708()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = objc_opt_self();
  v0[13] = v3;
  sub_22D81B838();
  v4 = [v2 description];
  sub_22D81B2C8();

  MEMORY[0x2318D1A50](0xD000000000000021, 0x800000022D82BFD0);
  v5 = MEMORY[0x2318D1B50](v1, MEMORY[0x277D837D0]);
  MEMORY[0x2318D1A50](v5);

  MEMORY[0x2318D1A50](41, 0xE100000000000000);
  v6 = sub_22D81B2B8();

  [v3 logInfo_];

  v7 = *&v2[OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_stopwatchActor];
  v0[14] = v7;

  return MEMORY[0x2822009F8](sub_22D7E787C, v7, 0);
}

uint64_t sub_22D7E787C()
{
  v1 = v0[14];
  v0[15] = sub_22D7E22DC();
  v0[16] = 0;

  return MEMORY[0x2822009F8](sub_22D7E7950, 0, 0);
}

void sub_22D7E7950()
{
  v77 = v0;
  v1 = v0;
  v2 = *(v0 + 120);
  v75 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
LABEL_34:
    v3 = sub_22D81B938();
    v4 = v1[15];
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v2;
  }

  v5 = MEMORY[0x277D84F90];
  v74 = v1;
  if (v3)
  {
    v6 = 0;
    v7 = v2 & 0xC000000000000001;
    v8 = v2 & 0xFFFFFFFFFFFFFF8;
    p_info = &v4->info;
    v1 = &off_278771000;
    do
    {
      if (v7)
      {
        v11 = MEMORY[0x2318D1F70](v6, v74[15]);
      }

      else
      {
        if (v6 >= *(v8 + 16))
        {
          goto LABEL_33;
        }

        v11 = p_info[v6];
      }

      v12 = v11;
      v13 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if ([(__objc2_class_ro *)v11 state]== 1 || [(__objc2_class_ro *)v12 state]== 2)
      {
        sub_22D81B888();
        v10 = *(v75 + 16);
        sub_22D81B8A8();
        sub_22D81B8B8();
        v2 = &v75;
        sub_22D81B898();
      }

      else
      {
      }

      ++v6;
    }

    while (v13 != v3);
    v1 = v74;
    v14 = v75;
    v15 = v74[15];
    v5 = MEMORY[0x277D84F90];

    if ((v14 & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

  v14 = MEMORY[0x277D84F90];

  if (v5 < 0)
  {
    goto LABEL_35;
  }

LABEL_18:
  if ((v14 & 0x4000000000000000) != 0)
  {
LABEL_35:
    v16 = sub_22D81B938();
    if (!v16)
    {
      goto LABEL_36;
    }

    goto LABEL_20;
  }

  v16 = *(v14 + 16);
  if (!v16)
  {
LABEL_36:

    v30 = MEMORY[0x277D84F90];
    goto LABEL_37;
  }

LABEL_20:
  v75 = v5;
  sub_22D7E8B4C(0, v16 & ~(v16 >> 63), 0);
  if (v16 < 0)
  {
LABEL_56:
    __break(1u);
    return;
  }

  v17 = 0;
  v18 = v75;
  do
  {
    v19 = v18;
    if ((v14 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x2318D1F70](v17, v14);
    }

    else
    {
      v20 = *(v14 + 8 * v17 + 32);
    }

    v21 = v20;
    v22 = [v20 identifier];
    if (v22)
    {
      v23 = v22;
      v24 = sub_22D81B2C8();
      v26 = v25;
    }

    else
    {

      v24 = 0;
      v26 = 0;
    }

    v18 = v19;
    v75 = v19;
    v27 = *(v19 + 16);
    v28 = *(v18 + 24);
    if (v27 >= v28 >> 1)
    {
      sub_22D7E8B4C((v28 > 1), v27 + 1, 1);
      v18 = v75;
    }

    ++v17;
    *(v18 + 16) = v27 + 1;
    v29 = v18 + 16 * v27;
    *(v29 + 32) = v24;
    *(v29 + 40) = v26;
  }

  while (v16 != v17);
  v30 = v18;

  v1 = v74;
LABEL_37:
  v32 = v1[12];
  v31 = v1[13];
  v33 = v1[8];
  v75 = 0;
  v76 = 0xE000000000000000;
  sub_22D81B838();
  v34 = [(__objc2_class *)v33 description];
  v35 = sub_22D81B2C8();
  v37 = v36;

  v75 = v35;
  v76 = v37;
  MEMORY[0x2318D1A50](0xD000000000000018, 0x800000022D82C000);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01FE0, &qword_22D81FC90);
  v73 = v30;
  v39 = MEMORY[0x2318D1B50](v30, v38);
  MEMORY[0x2318D1A50](v39);

  MEMORY[0x2318D1A50](41, 0xE100000000000000);
  v40 = sub_22D81B2B8();

  [(__objc2_class *)v31 logInfo:v40];

  cache = v32->cache;
  if (cache)
  {
    v42 = 0;
    v72 = v1 + 6;
    v67 = v1 + 2;
    v68 = v32->cache;
    v43 = v1[16];
    v44 = v1[12] + 1;
    v69 = v32;
    while (v42 < v32->cache)
    {
      info = v44[-1].info;
      isa = v44->isa;
      v1[6] = info;
      v1[7] = isa;
      v47 = swift_task_alloc();
      *(v47 + 16) = v72;
      swift_bridgeObjectRetain_n();
      v48 = sub_22D7E1BF0(sub_22D7EB5CC, v47, v73);

      if (v48)
      {
      }

      else
      {
        v50 = v1[9];
        v49 = v1[10];
        v51 = v1[8];
        v70 = v51;
        v71 = v43;
        v52 = sub_22D81B4F8();
        v53 = *(v52 - 8);
        (*(v53 + 56))(v49, 1, 1, v52);
        v54 = swift_allocObject();
        v54[2] = 0;
        v54[3] = 0;
        v54[4] = v51;
        v54[5] = info;
        v54[6] = isa;
        sub_22D7EB6B4(v49, v50);
        LODWORD(v51) = (*(v53 + 48))(v50, 1, v52);
        sub_22D81A398();
        v55 = v70;
        sub_22D81A198();
        v56 = v74[9];
        if (v51 == 1)
        {
          sub_22D764440(v74[9], &unk_27DA01FF0, &qword_22D81FC70);
        }

        else
        {
          sub_22D81B4E8();
          (*(v53 + 8))(v56, v52);
        }

        v57 = v54[2];
        v58 = v54[3];
        swift_unknownObjectRetain();

        v43 = v71;
        if (v57)
        {
          swift_getObjectType();
          v59 = sub_22D81B498();
          v61 = v60;
          swift_unknownObjectRelease();
        }

        else
        {
          v59 = 0;
          v61 = 0;
        }

        sub_22D764440(v74[10], &unk_27DA01FF0, &qword_22D81FC70);
        v62 = swift_allocObject();
        *(v62 + 16) = &unk_22D825BF8;
        *(v62 + 24) = v54;
        if (v61 | v59)
        {
          *v67 = 0;
          v67[1] = 0;
          v74[4] = v59;
          v74[5] = v61;
        }

        v1 = v74;
        cache = v68;
        v32 = v69;
        swift_task_create();
      }

      ++v42;
      v44 = (v44 + 16);
      if (cache == v42)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
    goto LABEL_56;
  }

LABEL_52:
  v63 = v1[12];

  v65 = v1[9];
  v64 = v1[10];

  v66 = v1[1];

  v66();
}

uint64_t sub_22D7E8024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22D7E8048, 0, 0);
}

uint64_t sub_22D7E8048()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = objc_opt_self();
  sub_22D81B838();
  v5 = [v3 description];
  sub_22D81B2C8();

  MEMORY[0x2318D1A50](0xD000000000000023, 0x800000022D82C020);
  MEMORY[0x2318D1A50](v2, v1);
  MEMORY[0x2318D1A50](41, 0xE100000000000000);
  v6 = sub_22D81B2B8();

  [v4 logInfo_];

  v7 = *&v3[OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_sessionsActor];
  v0[5] = v7;

  return MEMORY[0x2822009F8](sub_22D7E81AC, v7, 0);
}

uint64_t sub_22D7E81AC()
{
  v1 = v0[5];
  sub_22D76A00C(v0[3], v0[4]);
  v2 = v0[1];

  return v2();
}

id MTStopwatchStorageProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MTStopwatchStorageProxy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22D7E82B8()
{
  if ([*(v0 + 16) objectForKey_])
  {
    sub_22D81B758();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (!*(&v6 + 1))
  {
    sub_22D764440(v7, &unk_27DA02030, qword_22D81F298);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA03858, &unk_22D825BE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    sub_22D7EB504();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
    return;
  }

  v1 = objc_opt_self();
  v2 = sub_22D81B158();
  v3 = [v1 decodeStopwatchesFromDictionary_];

  if (v3)
  {

    sub_22D7EB4B8();
    sub_22D81B438();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22D7E844C()
{
  v1 = objc_opt_self();
  sub_22D7EB4B8();
  v2 = sub_22D81B418();
  v3 = [v1 encodedDictionaryForStopwatches_];

  if (v3)
  {
    sub_22D81B168();

    v4 = *(v0 + 16);
    v3 = sub_22D81B158();
  }

  else
  {
    v4 = *(v0 + 16);
  }

  [v4 setObject:v3 forKey:@"MTStopwatches"];
  return swift_unknownObjectRelease();
}

uint64_t sub_22D7E8564()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22D7E859C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22D7E8694;

  return v7(a1);
}

uint64_t sub_22D7E8694()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_22D7E878C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA02010, &unk_22D81F258);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

size_t sub_22D7E8800(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA03870, &unk_22D825C90);
  v4 = *(sub_22D81A938() - 8);
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

void *sub_22D7E88FC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01E88, &qword_22D81EAA0);
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

char *sub_22D7E8984(char *a1, int64_t a2, char a3)
{
  result = sub_22D7E8B6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22D7E89A4(void *a1, int64_t a2, char a3)
{
  result = sub_22D7E8C70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22D7E89C4(size_t a1, int64_t a2, char a3)
{
  result = sub_22D7E8FF0(a1, a2, a3, *v3, &qword_27DA038F8, &qword_22D826130, type metadata accessor for AlarmConcern);
  *v3 = result;
  return result;
}

char *sub_22D7E8A08(char *a1, int64_t a2, char a3)
{
  result = sub_22D7E8DB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22D7E8A28(char *a1, int64_t a2, char a3)
{
  result = sub_22D7E8EC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22D7E8A48(void *a1, int64_t a2, char a3)
{
  result = sub_22D7E9310(a1, a2, a3, *v3, &qword_27DA038E8, &qword_22D825D18, &qword_27DA038F0, &unk_22D825D20);
  *v3 = result;
  return result;
}

size_t sub_22D7E8A88(size_t a1, int64_t a2, char a3)
{
  result = sub_22D7E8FF0(a1, a2, a3, *v3, &qword_27DA02008, &qword_22D81F250, type metadata accessor for AlarmEntity);
  *v3 = result;
  return result;
}

char *sub_22D7E8ACC(char *a1, int64_t a2, char a3)
{
  result = sub_22D7E91CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22D7E8AEC(void *a1, int64_t a2, char a3)
{
  result = sub_22D7E9310(a1, a2, a3, *v3, &qword_27DA03898, &qword_22D825CB8, &qword_27DA038A0, &qword_22D825CC0);
  *v3 = result;
  return result;
}

size_t sub_22D7E8B2C(size_t a1, int64_t a2, char a3)
{
  result = sub_22D7E9458(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22D7E8B4C(void *a1, int64_t a2, char a3)
{
  result = sub_22D7E9648(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22D7E8B6C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA038B8, &qword_22D825CD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_22D7E8C70(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA038D0, &qword_22D825D00);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA038D8, &qword_22D825D08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22D7E8DB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03890, &qword_22D825CB0);
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

char *sub_22D7E8EC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA038E0, &qword_22D825D10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_22D7E8FF0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_22D7E91CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA03880, &unk_22D825CA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22D7E9310(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t sub_22D7E9458(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA038A8, &qword_22D825CC8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA038B0, &qword_22D825CD0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA038B0, &qword_22D825CD0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_22D7E9648(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03868, &qword_22D825C10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01FE0, &qword_22D81FC90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22D7E977C(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_22D7E9878(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_22D81A938();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_22D7E9B1C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22D7E9C70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v71 - v6;
  v86 = type metadata accessor for DefaultsStopwatchDataStore();
  v87 = &off_2840D98C0;
  v85[0] = a1;
  swift_defaultActor_initialize();
  *(a2 + 112) = MEMORY[0x277D84F98];
  *(a2 + 160) = 0;
  *(a2 + 164) = 1065353216;
  v8 = objc_opt_self();
  v9 = sub_22D81B2B8();
  [v8 logInfo_];

  v75 = (a2 + 112);
  sub_22D75CCD8(v85, a2 + 120);
  v10 = *__swift_project_boxed_opaque_existential_0(v85, v86);
  sub_22D7E82B8();
  v12 = v11;
  if (v11 >> 62)
  {
LABEL_35:
    v13 = sub_22D81B938();
  }

  else
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v72 = v8;
  v73 = v7;
  v74 = a2;
  if (v13)
  {
    v8 = 0;
    v77 = v12 & 0xFFFFFFFFFFFFFF8;
    v78 = v12 & 0xC000000000000001;
    v14 = MEMORY[0x277D84F98];
    v76 = v12;
    while (1)
    {
      if (v78)
      {
        v17 = MEMORY[0x2318D1F70](v8, v12);
      }

      else
      {
        if (v8 >= *(v77 + 16))
        {
          goto LABEL_32;
        }

        v17 = *(v12 + 8 * v8 + 32);
      }

      v18 = v17;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v79 = (v8 + 1);
      v7 = v13;
      sub_22D81A398();
      v19 = [v18 identifier];
      if (!v19)
      {
        __break(1u);
        goto LABEL_37;
      }

      v20 = v19;
      v21 = sub_22D81B2C8();
      v23 = v22;

      v24 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83 = v14;
      v12 = v14;
      v27 = sub_22D807780(v21, v23);
      v28 = v14[2];
      v29 = (v26 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        goto LABEL_33;
      }

      a2 = v26;
      if (v14[3] >= v30)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v26)
          {
            goto LABEL_5;
          }
        }

        else
        {
          sub_22D80DBC8();
          if (a2)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        sub_22D80AFC8(v30, isUniquelyReferenced_nonNull_native);
        v31 = sub_22D807780(v21, v23);
        if ((a2 & 1) != (v32 & 1))
        {
          goto LABEL_38;
        }

        v27 = v31;
        if (a2)
        {
LABEL_5:

          v12 = v83;
          v15 = *(v83 + 56);
          v16 = *(v15 + 8 * v27);
          *(v15 + 8 * v27) = v24;

          goto LABEL_6;
        }
      }

      v12 = v83;
      *(v83 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v33 = (*(v12 + 48) + 16 * v27);
      *v33 = v21;
      v33[1] = v23;
      *(*(v12 + 56) + 8 * v27) = v24;

      v34 = *(v12 + 16);
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_34;
      }

      *(v12 + 16) = v36;
LABEL_6:
      v14 = v12;
      ++v8;
      v13 = v7;
      v12 = v76;
      if (v79 == v7)
      {
        goto LABEL_25;
      }
    }
  }

  v14 = MEMORY[0x277D84F98];
LABEL_25:

  v37 = v75;
  swift_beginAccess();
  v38 = *v37;
  *v37 = v14;

  v39 = *(*__swift_project_boxed_opaque_existential_0(v85, v86) + 16);
  v40 = sub_22D81B2B8();
  [v39 floatForKey_];
  v42 = v41;

  v43 = v74;
  if (v42 < 1.0)
  {
    v44 = *(*__swift_project_boxed_opaque_existential_0(v37 + 1, *(v74 + 144)) + 16);
    v45 = sub_22D81B5D8();
    v46 = sub_22D81B2B8();
    [v44 setValue:v45 forKey:v46];
  }

  v83 = 0;
  v84 = 0xE000000000000000;
  sub_22D81B838();

  v83 = 0xD000000000000015;
  v84 = 0x800000022D82C120;
  v47 = *v37;
  sub_22D7EB4B8();
  sub_22D81A398();
  v48 = sub_22D81B178();
  v50 = v49;

  MEMORY[0x2318D1A50](v48, v50);

  v51 = sub_22D81B2B8();

  v52 = v72;
  [v72 logInfo_];

  v53 = v73;
  swift_beginAccess();
  if (*(*v37 + 16))
  {
    goto LABEL_30;
  }

  v54 = sub_22D7EB950();
  v55 = [v54 identifier];
  if (v55)
  {
    v56 = v55;
    v57 = sub_22D81B2C8();
    v59 = v58;

    swift_beginAccess();
    v60 = v54;
    v61 = *(v43 + 112);
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v80 = *(v43 + 112);
    *(v43 + 112) = 0x8000000000000000;
    sub_22D80C83C(v60, v57, v59, v62);

    *(v43 + 112) = v80;
    swift_endAccess();
    v81 = 0;
    v82 = 0xE000000000000000;
    sub_22D81B838();

    v81 = 0xD00000000000001DLL;
    v82 = 0x800000022D82C0E0;
    v63 = *(v43 + 112);
    sub_22D7EB4B8();
    sub_22D81A398();
    v64 = sub_22D81B178();
    v66 = v65;

    MEMORY[0x2318D1A50](v64, v66);

    v67 = sub_22D81B2B8();

    [v52 &selRef_minute + 6];

    v68 = sub_22D81B4F8();
    (*(*(v68 - 8) + 56))(v53, 1, 1, v68);
    v69 = swift_allocObject();
    v69[2] = 0;
    v69[3] = 0;
    v69[4] = v43;
    sub_22D81A198();
    sub_22D7BDC88(0, 0, v53, &unk_22D825CF8, v69);

    sub_22D764440(v53, &unk_27DA01FF0, &qword_22D81FC70);
LABEL_30:
    __swift_destroy_boxed_opaque_existential_0(v85);
    return v43;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_22D81BB58();
  __break(1u);
  return result;
}