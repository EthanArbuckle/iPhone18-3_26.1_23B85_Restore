void sub_1B206395C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_1B20A9A64();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setTitle_];
}

id sub_1B20639CC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 year];
  *a2 = result;
  return result;
}

id sub_1B2063A14@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 sleepSchedule];
  *a2 = result;
  return result;
}

id sub_1B2063A5C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sound];
  *a2 = result;
  return result;
}

uint64_t sub_1B2063AAC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for MTCDAlarm();
  result = sub_1B20A9E94();
  *a1 = result;
  return result;
}

uint64_t sub_1B2063BF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t (*MTCDDataStore.alarmObserver.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_alarmObserver;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1B2063D48;
}

uint64_t (*MTCDDataStore.timerObserver.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_timerObserver;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1B2098938;
}

id sub_1B2063E38(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_1B2063E9C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1B2063EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1B2063F50(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1B2063FB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a3 = result;
  return result;
}

uint64_t sub_1B206401C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t (*MTCDDataStore.alarmKitObserver.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_alarmKitObserver;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1B2098938;
}

void sub_1B206410C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1B206418C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F458, &qword_1B20B8EB0);
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1B20641E0()
{
  v1 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock_tasks;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1B2064228(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock_tasks;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1B20642E4()
{
  v10 = sub_1B20A9CE4();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B20A9CA4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1B20A9A04();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9[1] = sub_1B20982AC(0, &qword_1EB79CE08, 0x1E69E9610);
  sub_1B20A99F4();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1B20916FC(&qword_1EB79CE18, 255, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F470, &qword_1B20B8EB8);
  sub_1B209849C(&qword_1EB79CE40, &qword_1EB79F470, &qword_1B20B8EB8);
  sub_1B20A9DA4();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  return sub_1B20A9D14();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B206459C()
{
  v10 = sub_1B20A9CE4();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B20A9CA4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1B20A9A04();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9[1] = sub_1B20982AC(0, &qword_1EB79CE08, 0x1E69E9610);
  sub_1B20A99F4();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1B20916FC(&qword_1EB79CE18, 255, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F470, &qword_1B20B8EB8);
  sub_1B209849C(&qword_1EB79CE40, &qword_1EB79F470, &qword_1B20B8EB8);
  sub_1B20A9DA4();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  return sub_1B20A9D14();
}

uint64_t sub_1B2064890(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_1B20648E0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

id MTCDDataStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *MTCDDataStore.init()()
{
  v0 = objc_allocWithZone(swift_getObjectType());
  v1 = sub_1B2064D30(0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v1;
}

char *MTCDDataStore.__allocating_init(inMemoryStore:)(int a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = objc_allocWithZone(v1);
  v5 = sub_1B2064D30(a1);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

char *MTCDDataStore.init(inMemoryStore:)(int a1)
{
  v2 = objc_allocWithZone(swift_getObjectType());
  v3 = sub_1B2064D30(a1);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

char *MTCDDataStore.__allocating_init(inMemoryStore:storeFailure:)(uint64_t a1, int a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = objc_allocWithZone(v2);
  v6 = sub_1B20655C4(a2, 1);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

char *MTCDDataStore.init(inMemoryStore:storeFailure:)(uint64_t a1, int a2)
{
  v3 = objc_allocWithZone(swift_getObjectType());
  v4 = sub_1B20655C4(a2, 1);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

char *sub_1B2064D30(int a1)
{
  v2 = v1;
  v54 = a1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F488, &qword_1B20B8EC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v57 = v47 - v5;
  v6 = sub_1B20A98B4();
  v55 = *(v6 - 8);
  v56 = v6;
  v7 = *(v55 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v47[1] = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47[0] = v47 - v10;
  v11 = sub_1B20A9CE4();
  v12 = *(v11 - 8);
  v58 = v11;
  v59 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B20A9CA4();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = sub_1B20A9A04();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v20 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F458, &qword_1B20B8EB0);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *&v2[v20] = v21;
  v22 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock_tasks] = MEMORY[0x1E69E7CC0];
  v23 = v22;
  v52 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue;
  sub_1B20982AC(0, &qword_1EB79CE08, 0x1E69E9610);
  v51 = "T@MTCDSound,N,D,&";
  sub_1B20A99F4();
  v60 = v23;
  v50 = sub_1B20916FC(&qword_1EB79CE18, 255, MEMORY[0x1E69E8030]);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F470, &qword_1B20B8EB8);
  sub_1B209849C(&qword_1EB79CE40, &qword_1EB79F470, &qword_1B20B8EB8);
  sub_1B20A9DA4();
  v24 = *MEMORY[0x1E69E8090];
  v25 = *(v59 + 104);
  v59 += 104;
  v48 = v15;
  v25(v15, v24, v58);
  *&v2[v52] = sub_1B20A9D14();
  v52 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_calloutQueue;
  sub_1B20A99F4();
  v60 = MEMORY[0x1E69E7CC0];
  sub_1B20A9DA4();
  v25(v48, v24, v58);
  *&v2[v52] = sub_1B20A9D14();
  *&v2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor] = 0;
  v2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_storeLoaded] = 0;
  *&v2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_task] = 0;
  v26 = &v2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  *v26 = 0;
  v26[1] = 0;
  v61.receiver = v2;
  v61.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v61, sel_init);
  type metadata accessor for CoreDataStoreActor();
  v28 = swift_allocObject();
  v29 = v27;
  sub_1B2081604(v54);
  v30 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  v31 = *&v29[v30];
  *&v29[v30] = v28;

  v32 = sub_1B205E940();
  v34 = v55;
  v33 = v56;
  v35 = v47[0];
  (*(v55 + 16))(v47[0], v32, v56);
  v36 = sub_1B20A9894();
  v37 = sub_1B20A9C74();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1B1F9F000, v36, v37, "Initialized core data store actor", v38, 2u);
    MEMORY[0x1B2741310](v38, -1, -1);
  }

  (*(v34 + 8))(v35, v33);
  v39 = sub_1B20A9BC4();
  v40 = v57;
  (*(*(v39 - 8) + 56))(v57, 1, 1, v39);
  v41 = swift_allocObject();
  v41[2] = 0;
  v41[3] = 0;
  v41[4] = v29;
  v42 = v29;
  v43 = sub_1B2067140(0, 0, v40, &unk_1B20B8ED0, v41);
  v44 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_task;
  swift_beginAccess();
  v45 = *&v42[v44];
  *&v42[v44] = v43;

  return v42;
}

uint64_t sub_1B2065530(int a1)
{
  v2 = swift_allocObject();
  sub_1B2081604(a1);
  return v2;
}

char *sub_1B20655C4(int a1, int a2)
{
  v3 = v2;
  v60 = a2;
  v70 = a1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F488, &qword_1B20B8EC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v73 = &v59 - v6;
  v7 = sub_1B20A98B4();
  v71 = *(v7 - 8);
  v72 = v7;
  v8 = *(v71 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v61 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v59 - v11;
  v74 = sub_1B20A9CE4();
  v12 = *(v74 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v68 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B20A9CA4();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = sub_1B20A9A04();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v19 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F458, &qword_1B20B8EB0);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *&v3[v19] = v20;
  v21 = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock_tasks] = MEMORY[0x1E69E7CC0];
  v22 = v21;
  v67 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue;
  v62 = sub_1B20982AC(0, &qword_1EB79CE08, 0x1E69E9610);
  v66 = "T@MTCDSound,N,D,&";
  sub_1B20A99F4();
  v75 = v22;
  v65 = sub_1B20916FC(&qword_1EB79CE18, 255, MEMORY[0x1E69E8030]);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F470, &qword_1B20B8EB8);
  sub_1B209849C(&qword_1EB79CE40, &qword_1EB79F470, &qword_1B20B8EB8);
  sub_1B20A9DA4();
  v23 = *MEMORY[0x1E69E8090];
  v24 = v12 + 104;
  v25 = *(v12 + 104);
  v63 = v24;
  v26 = v68;
  v25(v68, v23, v74);
  *&v3[v67] = sub_1B20A9D14();
  v67 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_calloutQueue;
  sub_1B20A99F4();
  v75 = MEMORY[0x1E69E7CC0];
  sub_1B20A9DA4();
  v25(v26, v23, v74);
  *&v3[v67] = sub_1B20A9D14();
  *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor] = 0;
  v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_storeLoaded] = 0;
  *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_task] = 0;
  v27 = &v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  *v27 = 0;
  v27[1] = 0;
  v76.receiver = v3;
  v76.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v76, sel_init);
  if (v70)
  {
    sub_1B20915B0();
    v29 = swift_allocError();
    *v30 = 3;
    swift_willThrow();
    v31 = v28;
    v35 = v71;
    v34 = v72;
    v36 = sub_1B205E940();
    v37 = v61;
    (*(v35 + 16))(v61, v36, v34);
    v38 = v29;
    v39 = sub_1B20A9894();
    v40 = sub_1B20A9C84();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      v43 = v29;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v44;
      *v42 = v44;
      _os_log_impl(&dword_1B1F9F000, v39, v40, "Failed to initialize core data store actor: %@", v41, 0xCu);
      sub_1B20985B4(v42, &qword_1EB79F4B0, &qword_1B20B8ED8);
      MEMORY[0x1B2741310](v42, -1, -1);
      MEMORY[0x1B2741310](v41, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    type metadata accessor for CoreDataStoreActor();
    v32 = swift_allocObject();
    v33 = v28;
    sub_1B2081604(v60 & 1);
    v45 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
    swift_beginAccess();
    v46 = *&v33[v45];
    *&v33[v45] = v32;

    v47 = sub_1B205E940();
    v35 = v71;
    v34 = v72;
    v37 = v59;
    (*(v71 + 16))(v59, v47, v72);
    v48 = sub_1B20A9894();
    v49 = sub_1B20A9C74();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1B1F9F000, v48, v49, "Initialized core data store actor", v50, 2u);
      MEMORY[0x1B2741310](v50, -1, -1);
    }
  }

  (*(v35 + 8))(v37, v34);
  v51 = sub_1B20A9BC4();
  v52 = v73;
  (*(*(v51 - 8) + 56))(v73, 1, 1, v51);
  v53 = swift_allocObject();
  v53[2] = 0;
  v53[3] = 0;
  v53[4] = v28;
  v54 = v28;
  v55 = sub_1B2067140(0, 0, v52, &unk_1B20B8EE0, v53);
  v56 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_task;
  swift_beginAccess();
  v57 = *&v54[v56];
  *&v54[v56] = v55;

  return v54;
}

uint64_t sub_1B2065E58(char a1, char a2)
{
  if ((a1 & 1) == 0)
  {
    return (*(v2 + 96))(a2 & 1);
  }

  sub_1B20915B0();
  swift_allocError();
  *v3 = 3;
  return swift_willThrow();
}

Swift::Void __swiftcall MTCDDataStore.loadStore()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F488, &qword_1B20B8EC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  v6 = sub_1B20A98B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B205E940();
  (*(v7 + 16))(v10, v11, v6);
  v12 = sub_1B20A9894();
  v13 = sub_1B20A9C74();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1B1F9F000, v12, v13, "Calling loadStore", v14, 2u);
    MEMORY[0x1B2741310](v14, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v15 = sub_1B20A9BC4();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v1;
  v17 = v1;
  sub_1B2067140(0, 0, v5, &unk_1B20B8EF0, v16);
}

uint64_t sub_1B2066104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = sub_1B20A98B4();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B20661C4, 0, 0);
}

uint64_t sub_1B20661C4()
{
  v1 = v0[11];
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[15] = v3;
  if (v3)
  {
    v4 = *(*v3 + 104);

    v18 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[16] = v6;
    *v6 = v0;
    v6[1] = sub_1B2066490;

    return v18();
  }

  else
  {
    v8 = v0[11];
    v9 = *&v8[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1B209859C;
    *(v11 + 24) = v10;
    v0[6] = sub_1B20988D0;
    v0[7] = v11;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1B20668F0;
    v0[5] = &block_descriptor_1004;
    v12 = _Block_copy(v0 + 2);
    v13 = v0[7];
    v14 = v8;

    dispatch_sync(v9, v12);
    _Block_release(v12);
    LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

    if (v9)
    {
      __break(1u);
    }

    else
    {
      v15 = v0[11];
      sub_1B2066918();

      v16 = v0[14];

      v17 = v0[1];

      return v17();
    }
  }

  return result;
}

uint64_t sub_1B2066490()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_1B2066748;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_1B20665AC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B20665AC()
{
  v1 = v0[11];
  v2 = *&v1[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1B209859C;
  *(v4 + 24) = v3;
  v0[6] = sub_1B20988D0;
  v0[7] = v4;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B20668F0;
  v0[5] = &block_descriptor_1004;
  v5 = _Block_copy(v0 + 2);
  v6 = v0[7];
  v7 = v1;

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[11];
    sub_1B2066918();

    v10 = v0[14];

    v11 = v0[1];

    return v11();
  }

  return result;
}

uint64_t sub_1B2066748()
{
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v5 = v0[13];

  v6 = sub_1B205E940();
  (*(v5 + 16))(v3, v6, v4);
  v7 = v1;
  v8 = sub_1B20A9894();
  v9 = sub_1B20A9C84();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[17];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_1B1F9F000, v8, v9, "Error loading core datat store: %@", v12, 0xCu);
    sub_1B20985B4(v13, &qword_1EB79F4B0, &qword_1B20B8ED8);
    MEMORY[0x1B2741310](v13, -1, -1);
    MEMORY[0x1B2741310](v12, -1, -1);
  }

  else
  {
  }

  (*(v0[13] + 8))(v0[14], v0[12]);
  v16 = v0[14];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1B2066918()
{
  v42 = sub_1B20A99E4();
  v44 = *(v42 - 8);
  v1 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v41 = v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1B20A9A04();
  v43 = *(v47 - 8);
  v3 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v40 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B20A98B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B205E940();
  (*(v6 + 16))(v9, v10, v5);
  v11 = v0;
  v12 = sub_1B20A9894();
  v13 = sub_1B20A9C74();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock = v15;
    *v14 = 136315650;
    v46 = v5;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4C8, &qword_1B20B8F08);
    LODWORD(v45) = v13;
    v16 = sub_1B20A9A84();
    v18 = sub_1B2061574(v16, v17, &aBlock);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    swift_beginAccess();
    v48 = swift_unknownObjectWeakLoadStrong();
    v19 = sub_1B20A9A84();
    v21 = sub_1B2061574(v19, v20, &aBlock);

    *(v14 + 14) = v21;
    *(v14 + 22) = 2080;
    swift_beginAccess();
    v50 = swift_unknownObjectWeakLoadStrong();
    v22 = sub_1B20A9A84();
    v24 = sub_1B2061574(v22, v23, &aBlock);

    *(v14 + 24) = v24;
    _os_log_impl(&dword_1B1F9F000, v12, v45, "Informing observers of data store load, %s, %s, %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B2741310](v15, -1, -1);
    MEMORY[0x1B2741310](v14, -1, -1);

    (*(v6 + 8))(v9, v46);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  v45 = *&v11[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_calloutQueue];
  v25 = swift_allocObject();
  *(v25 + 16) = v11;
  v55 = sub_1B20916D8;
  v56 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v52 = 1107296256;
  v39[2] = &v53;
  v53 = sub_1B2067488;
  v54 = &block_descriptor_0;
  v26 = _Block_copy(&aBlock);
  v27 = v11;
  v28 = v40;
  sub_1B20A99F4();
  v50 = MEMORY[0x1E69E7CC0];
  v39[1] = sub_1B20916FC(&qword_1EB79CE68, 255, MEMORY[0x1E69E7F60]);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4C0, &unk_1B20B8EF8);
  v29 = sub_1B209849C(&qword_1EB79CE58, &qword_1EB79F4C0, &unk_1B20B8EF8);
  v30 = v41;
  v39[0] = v29;
  v31 = v42;
  sub_1B20A9DA4();
  MEMORY[0x1B2740220](0, v28, v30, v26);
  _Block_release(v26);
  v44 = *(v44 + 8);
  (v44)(v30, v31);
  v43 = *(v43 + 8);
  (v43)(v28, v47);

  v32 = swift_allocObject();
  *(v32 + 16) = v27;
  v55 = sub_1B2091744;
  v56 = v32;
  aBlock = MEMORY[0x1E69E9820];
  v52 = 1107296256;
  v53 = sub_1B2067488;
  v54 = &block_descriptor_21;
  v33 = _Block_copy(&aBlock);
  v34 = v27;
  sub_1B20A99F4();
  v50 = MEMORY[0x1E69E7CC0];
  sub_1B20A9DA4();
  MEMORY[0x1B2740220](0, v28, v30, v33);
  _Block_release(v33);
  (v44)(v30, v31);
  (v43)(v28, v47);

  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  v55 = sub_1B2091750;
  v56 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v52 = 1107296256;
  v53 = sub_1B2067488;
  v54 = &block_descriptor_27;
  v36 = _Block_copy(&aBlock);
  v37 = v34;
  sub_1B20A99F4();
  v50 = MEMORY[0x1E69E7CC0];
  sub_1B20A9DA4();
  MEMORY[0x1B2740220](0, v28, v30, v36);
  _Block_release(v36);
  (v44)(v30, v31);
  (v43)(v28, v47);
}

uint64_t sub_1B2067140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F488, &qword_1B20B8EC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1B2063BF8(a3, v27 - v11, &qword_1EB79F488, &qword_1B20B8EC0);
  v13 = sub_1B20A9BC4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1B20985B4(v12, &qword_1EB79F488, &qword_1B20B8EC0);
  }

  else
  {
    sub_1B20A9BB4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1B20A9B64();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1B20A9A94() + 32;
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

      sub_1B20985B4(a3, &qword_1EB79F488, &qword_1B20B8EC0);

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

  sub_1B20985B4(a3, &qword_1EB79F488, &qword_1B20B8EC0);
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

uint64_t sub_1B2067488(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1B20674CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F598, &qword_1B20B95C8);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F5A0, &qword_1B20B95D0);
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F5A8, &qword_1B20B95D8);
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2067668, 0, 0);
}

uint64_t sub_1B2067668()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[5];
  *(swift_task_alloc() + 16) = v8;
  (*(v7 + 104))(v5, *MEMORY[0x1E69E8650], v6);
  sub_1B20A9C14();

  sub_1B20A9BF4();
  (*(v3 + 8))(v2, v4);
  v9 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock_tasks;
  v0[15] = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock;
  v0[16] = v9;
  swift_beginAccess();
  v10 = *(MEMORY[0x1E69E8678] + 4);
  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_1B2067804;
  v12 = v0[14];
  v13 = v0[12];

  return MEMORY[0x1EEE6D9C8](v0 + 23, 0, 0, v13);
}

uint64_t sub_1B2067804()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B2067900, 0, 0);
}

uint64_t sub_1B2067900()
{
  if (*(v0 + 184) == 1)
  {
    v1 = *(v0 + 88);
    v2 = *(v0 + 64);
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 128);
    v6 = *(v0 + 40);
    v7 = *(v6 + *(v0 + 120));
    os_unfair_lock_lock(v7 + 4);
    v8 = *(v6 + v5);
    *(v0 + 144) = v8;
    *(v6 + v5) = MEMORY[0x1E69E7CC0];
    os_unfair_lock_unlock(v7 + 4);
    v9 = *(v8 + 16);
    *(v0 + 152) = v9;
    if (v9)
    {
      *(v0 + 160) = 0;
      v10 = *(v0 + 144);
      v11 = *(v10 + 32);
      *(v0 + 168) = *(v10 + 40);

      v19 = (v11 + *v11);
      v12 = v11[1];
      v13 = swift_task_alloc();
      *(v0 + 176) = v13;
      *v13 = v0;
      v13[1] = sub_1B2067B54;

      return v19();
    }

    else
    {
      v14 = *(v0 + 144);

      v15 = *(MEMORY[0x1E69E8678] + 4);
      v16 = swift_task_alloc();
      *(v0 + 136) = v16;
      *v16 = v0;
      v16[1] = sub_1B2067804;
      v17 = *(v0 + 112);
      v18 = *(v0 + 96);

      return MEMORY[0x1EEE6D9C8](v0 + 184, 0, 0, v18);
    }
  }
}

uint64_t sub_1B2067B54()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B2067C6C, 0, 0);
}

uint64_t sub_1B2067C6C()
{
  v1 = v0[20] + 1;
  if (v1 == v0[19])
  {
    v2 = v0[18];

    v3 = *(MEMORY[0x1E69E8678] + 4);
    v4 = swift_task_alloc();
    v0[17] = v4;
    *v4 = v0;
    v4[1] = sub_1B2067804;
    v5 = v0[14];
    v6 = v0[12];

    return MEMORY[0x1EEE6D9C8](v0 + 23, 0, 0, v6);
  }

  else
  {
    v0[20] = v1;
    v7 = v0[18] + 16 * v1;
    v8 = *(v7 + 32);
    v0[21] = *(v7 + 40);

    v12 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    v0[22] = v10;
    *v10 = v0;
    v10[1] = sub_1B2067B54;

    return v12();
  }
}

uint64_t MTCDDataStore.isReady.getter()
{
  v1 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (!*&v0[v1])
  {
    return 0;
  }

  v11 = 0;
  v2 = *&v0[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
  v3 = swift_allocObject();
  *(v3 + 16) = &v11;
  *(v3 + 24) = v0;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1B20917C0;
  *(v4 + 24) = v3;
  v10[4] = sub_1B20917D8;
  v10[5] = v4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1B20668F0;
  v10[3] = &block_descriptor_36;
  v5 = _Block_copy(v10);
  v6 = v0;

  dispatch_sync(v2, v5);
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v9 = v11;

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2067FD4(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F5B0, &qword_1B20B95E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  (*(v5 + 16))(&v14 - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  result = (*(v5 + 32))(v10 + v9, v8, v4);
  v12 = &a2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (*&a2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher])
  {
    __break(1u);
  }

  else
  {
    *v12 = sub_1B209878C;
    v12[1] = v10;
    *(swift_allocObject() + 16) = a2;
    v13 = a2;
    return sub_1B20A9BD4();
  }

  return result;
}

uint64_t sub_1B2068164()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F5B8, &unk_1B20B95E8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - v3;
  sub_1B20A9BE4();
  return (*(v1 + 8))(v4, v0);
}

void sub_1B2068230()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_1B2091830();
  os_unfair_lock_unlock(v1 + 4);
  v2 = *(v0 + OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8);

    v2(v4);
    sub_1B1FA6834(v2);
  }
}

uint64_t sub_1B20682DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock_tasks;
  swift_beginAccess();
  v8 = *(a1 + v7);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1B20911E4(0, v8[2] + 1, 1, v8);
    *(a1 + v7) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1B20911E4((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  v12 = &v8[2 * v11];
  v12[4] = &unk_1B20B9590;
  v12[5] = v6;
  *(a1 + v7) = v8;
  return swift_endAccess();
}

uint64_t sub_1B20683EC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B20684D4;

  return v6();
}

uint64_t sub_1B20684D4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id MTCDDataStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall MTCDDataStore.addAlarms(_:)(Swift::OpaquePointer a1)
{
  v3 = swift_allocObject();
  v3[2]._rawValue = v1;
  v3[3]._rawValue = a1._rawValue;
  v3[4]._rawValue = 0;
  v3[5]._rawValue = 0;
  v4 = *&v1[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v5 = v1;

  os_unfair_lock_lock(v4 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v4 + 4);
  v6 = *&v5[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v6)
  {
    v7 = *&v5[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v6(v8);
    sub_1B1FA6834(v6);
  }
}

uint64_t MTCDDataStore.addAlarms(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v9 = v3;

  sub_1B209192C(a2);
  os_unfair_lock_lock(v8 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v8 + 4);
  v10 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v10)
  {
    v11 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v10(v12);
    sub_1B1FA6834(v10);
  }
}

uint64_t sub_1B20689A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_1B20A9874();
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v7 = *(v6 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v8 = sub_1B20A98B4();
  v4[19] = v8;
  v9 = *(v8 - 8);
  v4[20] = v9;
  v10 = *(v9 + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2068ADC, 0, 0);
}

size_t sub_1B2068ADC()
{
  v94 = v0;
  v1 = *(v0 + 88);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    v3 = *(v0 + 88);
    *(v0 + 208) = 0;
    v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
    v5 = swift_allocObject();
    *(v5 + 16) = v0 + 208;
    *(v5 + 24) = v3;
    v6 = swift_allocObject();
    v6[2].isa = sub_1B2098884;
    v6[3].isa = v5;
    *(v0 + 48) = sub_1B20988D0;
    *(v0 + 56) = v6;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1B20668F0;
    *(v0 + 40) = &block_descriptor_987;
    v7 = _Block_copy((v0 + 16));
    v8 = *(v0 + 56);
    v9 = v3;

    dispatch_sync(v4, v7);
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_47;
    }

    v11 = *(v0 + 208);

    if (v11 == 1)
    {
      v12 = *(v1 + v2);
      *(v0 + 184) = v12;
      if (v12)
      {

        v13 = swift_task_alloc();
        *(v0 + 192) = v13;
        *v13 = v0;
        v13[1] = sub_1B20693E0;
        v14 = *(v0 + 96);

        return sub_1B2069C08(v14);
      }

      v54 = *(v0 + 176);
      v55 = *(v0 + 152);
      v6 = *(v0 + 160);
      v56 = *(v0 + 96);
      v57 = sub_1B205E940();
      (v6[2].isa)(v54, v57, v55);

      v58 = sub_1B20A9894();
      LOBYTE(v6) = sub_1B20A9C74();

      if (!os_log_type_enabled(v58, v6))
      {
        v71 = *(v0 + 176);
        v73 = *(v0 + 152);
        v72 = *(v0 + 160);

        (*(v72 + 8))(v71, v73);
LABEL_44:
        v81 = *(v0 + 104);
        if (v81)
        {
          v82 = *(v0 + 112);
          v81(0);
        }

        goto LABEL_24;
      }

      log = v58;
      isEscapingClosureAtFileLocation = *(v0 + 96);
      v7 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v92 = v88;
      *v7 = 136315138;
      if (!(isEscapingClosureAtFileLocation >> 62))
      {
        v59 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_32:
        v60 = MEMORY[0x1E69E7CC0];
        if (v59)
        {
          v87 = v6;
          v93 = MEMORY[0x1E69E7CC0];
          result = sub_1B2091C18(0, v59 & ~(v59 >> 63), 0);
          if (v59 < 0)
          {
            __break(1u);
            return result;
          }

          v61 = 0;
          v62 = *(v0 + 128);
          v60 = v93;
          v91 = *(v0 + 96) + 32;
          do
          {
            if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
            {
              v63 = MEMORY[0x1B27403C0](v61, *(v0 + 96));
            }

            else
            {
              v63 = *(v91 + 8 * v61);
            }

            v64 = v63;
            v65 = *(v0 + 144);
            v66 = [v63 alarmID];
            sub_1B20A9864();

            v93 = v60;
            v68 = *(v60 + 16);
            v67 = *(v60 + 24);
            if (v68 >= v67 >> 1)
            {
              sub_1B2091C18(v67 > 1, v68 + 1, 1);
              v60 = v93;
            }

            v69 = *(v0 + 144);
            v70 = *(v0 + 120);
            ++v61;
            *(v60 + 16) = v68 + 1;
            (*(v62 + 32))(v60 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v68, v69, v70);
          }

          while (v59 != v61);
          LOBYTE(v6) = v87;
        }

        v74 = *(v0 + 176);
        v76 = *(v0 + 152);
        v75 = *(v0 + 160);
        v77 = MEMORY[0x1B2740030](v60, *(v0 + 120));
        v79 = v78;

        v80 = sub_1B2061574(v77, v79, &v92);

        *(v7 + 1) = v80;
        _os_log_impl(&dword_1B1F9F000, log, v6, "Saved alarms into core data: %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v88);
        MEMORY[0x1B2741310](v88, -1, -1);
        MEMORY[0x1B2741310](v7, -1, -1);

        (*(v75 + 8))(v74, v76);
        goto LABEL_44;
      }

LABEL_51:
      if (*(v0 + 96) < 0)
      {
        v84 = *(v0 + 96);
      }

      v59 = sub_1B20A9DE4();
      goto LABEL_32;
    }
  }

  type metadata accessor for BugCapture();
  static BugCapture.reportBug(type:subType:name:value:)(0x536174614443544DLL, 0xEC00000065726F74, 0xD000000000000010, 0x80000001B20D3580, 0xD00000000000002ALL, 0x80000001B20D35A0, 0x6D72616C41646461, 0xE900000000000073);
  sub_1B20915B0();
  v16 = swift_allocError();
  *v17 = 3;
  swift_willThrow();
  v18 = *(v0 + 160);
  v19 = *(v0 + 168);
  v20 = *(v0 + 152);
  v21 = *(v0 + 96);
  v22 = sub_1B205E940();
  (*(v18 + 16))(v19, v22, v20);

  v6 = sub_1B20A9894();
  v23 = sub_1B20A9C84();

  if (!os_log_type_enabled(v6, v23))
  {
    v36 = *(v0 + 160);
    v37 = *(v0 + 168);
    v38 = *(v0 + 152);

    (*(v36 + 8))(v37, v38);
    v39 = *(v0 + 104);
    if (!v39)
    {
      goto LABEL_23;
    }

LABEL_22:
    v40 = *(v0 + 112);
    v41 = v16;
    v39(v16);

    goto LABEL_23;
  }

  log = v16;
  isEscapingClosureAtFileLocation = *(v0 + 96);
  v7 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v92 = v8;
  *v7 = 136315138;
  LODWORD(v88) = v23;
  if (!(isEscapingClosureAtFileLocation >> 62))
  {
    v24 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_11;
  }

LABEL_47:
  if (*(v0 + 96) < 0)
  {
    v83 = *(v0 + 96);
  }

  v24 = sub_1B20A9DE4();
LABEL_11:
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v85 = v8;
    v86 = v7;
    v93 = MEMORY[0x1E69E7CC0];
    sub_1B2091C18(0, v24 & ~(v24 >> 63), 0);
    if (v24 < 0)
    {
      __break(1u);
      goto LABEL_51;
    }

    v26 = 0;
    v27 = *(v0 + 128);
    v25 = v93;
    v90 = *(v0 + 96) + 32;
    do
    {
      if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x1B27403C0](v26, *(v0 + 96));
      }

      else
      {
        v28 = *(v90 + 8 * v26);
      }

      v29 = v28;
      v30 = *(v0 + 136);
      v31 = [v28 alarmID];
      sub_1B20A9864();

      v93 = v25;
      v33 = *(v25 + 16);
      v32 = *(v25 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1B2091C18(v32 > 1, v33 + 1, 1);
        v25 = v93;
      }

      v34 = *(v0 + 136);
      v35 = *(v0 + 120);
      ++v26;
      *(v25 + 16) = v33 + 1;
      (*(v27 + 32))(v25 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v33, v34, v35);
    }

    while (v24 != v26);
    v7 = v86;
    v8 = v85;
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 168);
  v49 = *(v0 + 152);
  v50 = MEMORY[0x1B2740030](v25, *(v0 + 120));
  v52 = v51;

  v53 = sub_1B2061574(v50, v52, &v92);

  *(v7 + 1) = v53;
  _os_log_impl(&dword_1B1F9F000, v6, v88, "Failed to save alarms into core data: %s", v7, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v8);
  MEMORY[0x1B2741310](v8, -1, -1);
  MEMORY[0x1B2741310](v7, -1, -1);

  (*(v47 + 8))(v48, v49);
  v16 = log;
  v39 = *(v0 + 104);
  if (v39)
  {
    goto LABEL_22;
  }

LABEL_23:

LABEL_24:
  v43 = *(v0 + 168);
  v42 = *(v0 + 176);
  v45 = *(v0 + 136);
  v44 = *(v0 + 144);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_1B20693E0()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_1B2069864;
  }

  else
  {
    v5 = *(v2 + 184);

    v4 = sub_1B20694FC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

size_t sub_1B20694FC()
{
  v49 = v0;
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[12];
  v5 = sub_1B205E940();
  (*(v3 + 16))(v1, v5, v2);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C74();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[12];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v47 = v10;
    *v9 = 136315138;
    if (v8 >> 62)
    {
      if (v0[12] < 0)
      {
        v41 = v0[12];
      }

      v11 = sub_1B20A9DE4();
    }

    else
    {
      v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = MEMORY[0x1E69E7CC0];
    v44 = v10;
    log = v6;
    if (v11)
    {
      v48 = MEMORY[0x1E69E7CC0];
      result = sub_1B2091C18(0, v11 & ~(v11 >> 63), 0);
      if (v11 < 0)
      {
        __break(1u);
        return result;
      }

      v42 = v9;
      v43 = v7;
      v14 = 0;
      v15 = v0[16];
      v12 = v48;
      v46 = v0[12] + 32;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1B27403C0](v14, v0[12]);
        }

        else
        {
          v16 = *(v46 + 8 * v14);
        }

        v17 = v16;
        v18 = v0[18];
        v19 = [v16 alarmID];
        sub_1B20A9864();

        v48 = v12;
        v21 = *(v12 + 16);
        v20 = *(v12 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1B2091C18(v20 > 1, v21 + 1, 1);
          v12 = v48;
        }

        v22 = v0[18];
        v23 = v0[15];
        ++v14;
        *(v12 + 16) = v21 + 1;
        (*(v15 + 32))(v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v21, v22, v23);
      }

      while (v11 != v14);
      v7 = v43;
      v9 = v42;
    }

    v27 = v0[22];
    v29 = v0[19];
    v28 = v0[20];
    v30 = MEMORY[0x1B2740030](v12, v0[15]);
    v32 = v31;

    v33 = sub_1B2061574(v30, v32, &v47);

    *(v9 + 4) = v33;
    _os_log_impl(&dword_1B1F9F000, log, v7, "Saved alarms into core data: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x1B2741310](v44, -1, -1);
    MEMORY[0x1B2741310](v9, -1, -1);

    (*(v28 + 8))(v27, v29);
  }

  else
  {
    v24 = v0[22];
    v26 = v0[19];
    v25 = v0[20];

    (*(v25 + 8))(v24, v26);
  }

  v34 = v0[13];
  if (v34)
  {
    v35 = v0[14];
    v34(0);
  }

  v37 = v0[21];
  v36 = v0[22];
  v39 = v0[17];
  v38 = v0[18];

  v40 = v0[1];

  return v40();
}

size_t sub_1B2069864()
{
  v53 = v0;
  v1 = v0[23];

  v2 = v0[25];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[19];
  v6 = v0[12];
  v7 = sub_1B205E940();
  (*(v3 + 16))(v4, v7, v5);

  v8 = sub_1B20A9894();
  v9 = sub_1B20A9C84();

  if (!os_log_type_enabled(v8, v9))
  {
    v27 = v0[20];
    v28 = v0[21];
    v29 = v0[19];

    (*(v27 + 8))(v28, v29);
    v30 = v0[13];
    if (!v30)
    {
      goto LABEL_16;
    }

LABEL_15:
    v31 = v0[14];
    v32 = v2;
    v30(v2);

    goto LABEL_16;
  }

  v10 = v0[12];
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v51 = v12;
  *v11 = 136315138;
  if (v10 >> 62)
  {
    if (v0[12] < 0)
    {
      v45 = v0[12];
    }

    v13 = sub_1B20A9DE4();
  }

  else
  {
    v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x1E69E7CC0];
  v49 = v2;
  v48 = v9;
  v47 = v12;
  if (v13)
  {
    v52 = MEMORY[0x1E69E7CC0];
    result = sub_1B2091C18(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
      __break(1u);
      return result;
    }

    v46 = v11;
    v16 = 0;
    v17 = v0[16];
    v14 = v52;
    v18 = v10 & 0xC000000000000001;
    v50 = v0[12] + 32;
    do
    {
      if (v18)
      {
        v19 = MEMORY[0x1B27403C0](v16, v0[12]);
      }

      else
      {
        v19 = *(v50 + 8 * v16);
      }

      v20 = v19;
      v21 = v0[17];
      v22 = [v19 alarmID];
      sub_1B20A9864();

      v52 = v14;
      v24 = *(v14 + 16);
      v23 = *(v14 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1B2091C18(v23 > 1, v24 + 1, 1);
        v14 = v52;
      }

      v25 = v0[17];
      v26 = v0[15];
      ++v16;
      *(v14 + 16) = v24 + 1;
      (*(v17 + 32))(v14 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v24, v25, v26);
    }

    while (v13 != v16);
    v11 = v46;
  }

  v38 = v0[20];
  v39 = v0[21];
  v40 = v0[19];
  v41 = MEMORY[0x1B2740030](v14, v0[15]);
  v43 = v42;

  v44 = sub_1B2061574(v41, v43, &v51);

  *(v11 + 4) = v44;
  _os_log_impl(&dword_1B1F9F000, v8, v48, "Failed to save alarms into core data: %s", v11, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v47);
  MEMORY[0x1B2741310](v47, -1, -1);
  MEMORY[0x1B2741310](v11, -1, -1);

  (*(v38 + 8))(v39, v40);
  v2 = v49;
  v30 = v0[13];
  if (v30)
  {
    goto LABEL_15;
  }

LABEL_16:

  v34 = v0[21];
  v33 = v0[22];
  v36 = v0[17];
  v35 = v0[18];

  v37 = v0[1];

  return v37();
}

uint64_t sub_1B2069C08(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B20A9D34();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2069CC8, v1, 0);
}

uint64_t sub_1B2069CC8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = [*(v0[3] + 112) newBackgroundContext];
  v0[7] = v5;
  v6 = swift_allocObject();
  v0[8] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v7 = *(MEMORY[0x1E695D2C0] + 4);

  v5;
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_1B2069E10;
  v9 = v0[6];
  v10 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEDB6538](v8, v9, sub_1B209193C, v6, v10);
}

uint64_t sub_1B2069E10()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *v1;
  *(*v1 + 80) = v0;

  (*(v6 + 8))(v5, v7);

  v9 = *(v2 + 24);
  if (v0)
  {
    v10 = sub_1B2098878;
  }

  else
  {
    v10 = sub_1B2098814;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

void sub_1B206A0D8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1B20A9744();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

Swift::Void __swiftcall MTCDDataStore.updateAlarms(_:)(Swift::OpaquePointer a1)
{
  v3 = swift_allocObject();
  v3[2]._rawValue = v1;
  v3[3]._rawValue = a1._rawValue;
  v3[4]._rawValue = 0;
  v3[5]._rawValue = 0;
  v4 = *&v1[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v5 = v1;

  os_unfair_lock_lock(v4 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v4 + 4);
  v6 = *&v5[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v6)
  {
    v7 = *&v5[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v6(v8);
    sub_1B1FA6834(v6);
  }
}

uint64_t MTCDDataStore.updateAlarms(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v9 = v3;

  sub_1B209192C(a2);
  os_unfair_lock_lock(v8 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v8 + 4);
  v10 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v10)
  {
    v11 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v10(v12);
    sub_1B1FA6834(v10);
  }
}

void sub_1B206A380(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5)
{
  sub_1B20982AC(0, a4, a5);
  v6 = sub_1B20A9B04();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = v6;
  v7[4] = 0;
  v7[5] = 0;
  v8 = a1;
  sub_1B2068230();
}

uint64_t sub_1B206A43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_1B20A9874();
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v7 = *(v6 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v8 = sub_1B20A98B4();
  v4[19] = v8;
  v9 = *(v8 - 8);
  v4[20] = v9;
  v10 = *(v9 + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B206A574, 0, 0);
}

size_t sub_1B206A574()
{
  v94 = v0;
  v1 = *(v0 + 88);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    v3 = *(v0 + 88);
    *(v0 + 208) = 0;
    v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
    v5 = swift_allocObject();
    *(v5 + 16) = v0 + 208;
    *(v5 + 24) = v3;
    v6 = swift_allocObject();
    v6[2].isa = sub_1B2098884;
    v6[3].isa = v5;
    *(v0 + 48) = sub_1B20988D0;
    *(v0 + 56) = v6;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1B20668F0;
    *(v0 + 40) = &block_descriptor_975;
    v7 = _Block_copy((v0 + 16));
    v8 = *(v0 + 56);
    v9 = v3;

    dispatch_sync(v4, v7);
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_47;
    }

    v11 = *(v0 + 208);

    if (v11 == 1)
    {
      v12 = *(v1 + v2);
      *(v0 + 184) = v12;
      if (v12)
      {

        v13 = swift_task_alloc();
        *(v0 + 192) = v13;
        *v13 = v0;
        v13[1] = sub_1B206AE7C;
        v14 = *(v0 + 96);

        return sub_1B206B6A4(v14);
      }

      v54 = *(v0 + 176);
      v55 = *(v0 + 152);
      v6 = *(v0 + 160);
      v56 = *(v0 + 96);
      v57 = sub_1B205E940();
      (v6[2].isa)(v54, v57, v55);

      v58 = sub_1B20A9894();
      LOBYTE(v6) = sub_1B20A9C74();

      if (!os_log_type_enabled(v58, v6))
      {
        v71 = *(v0 + 176);
        v73 = *(v0 + 152);
        v72 = *(v0 + 160);

        (*(v72 + 8))(v71, v73);
LABEL_44:
        v81 = *(v0 + 104);
        if (v81)
        {
          v82 = *(v0 + 112);
          v81(0);
        }

        goto LABEL_24;
      }

      log = v58;
      isEscapingClosureAtFileLocation = *(v0 + 96);
      v7 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v92 = v88;
      *v7 = 136315138;
      if (!(isEscapingClosureAtFileLocation >> 62))
      {
        v59 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_32:
        v60 = MEMORY[0x1E69E7CC0];
        if (v59)
        {
          v87 = v6;
          v93 = MEMORY[0x1E69E7CC0];
          result = sub_1B2091C18(0, v59 & ~(v59 >> 63), 0);
          if (v59 < 0)
          {
            __break(1u);
            return result;
          }

          v61 = 0;
          v62 = *(v0 + 128);
          v60 = v93;
          v91 = *(v0 + 96) + 32;
          do
          {
            if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
            {
              v63 = MEMORY[0x1B27403C0](v61, *(v0 + 96));
            }

            else
            {
              v63 = *(v91 + 8 * v61);
            }

            v64 = v63;
            v65 = *(v0 + 144);
            v66 = [v63 alarmID];
            sub_1B20A9864();

            v93 = v60;
            v68 = *(v60 + 16);
            v67 = *(v60 + 24);
            if (v68 >= v67 >> 1)
            {
              sub_1B2091C18(v67 > 1, v68 + 1, 1);
              v60 = v93;
            }

            v69 = *(v0 + 144);
            v70 = *(v0 + 120);
            ++v61;
            *(v60 + 16) = v68 + 1;
            (*(v62 + 32))(v60 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v68, v69, v70);
          }

          while (v59 != v61);
          LOBYTE(v6) = v87;
        }

        v74 = *(v0 + 176);
        v76 = *(v0 + 152);
        v75 = *(v0 + 160);
        v77 = MEMORY[0x1B2740030](v60, *(v0 + 120));
        v79 = v78;

        v80 = sub_1B2061574(v77, v79, &v92);

        *(v7 + 1) = v80;
        _os_log_impl(&dword_1B1F9F000, log, v6, "Updated alarms in core data: %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v88);
        MEMORY[0x1B2741310](v88, -1, -1);
        MEMORY[0x1B2741310](v7, -1, -1);

        (*(v75 + 8))(v74, v76);
        goto LABEL_44;
      }

LABEL_51:
      if (*(v0 + 96) < 0)
      {
        v84 = *(v0 + 96);
      }

      v59 = sub_1B20A9DE4();
      goto LABEL_32;
    }
  }

  type metadata accessor for BugCapture();
  static BugCapture.reportBug(type:subType:name:value:)(0x536174614443544DLL, 0xEC00000065726F74, 0xD000000000000010, 0x80000001B20D3580, 0xD00000000000002ALL, 0x80000001B20D35A0, 0x6C41657461647075, 0xEC000000736D7261);
  sub_1B20915B0();
  v16 = swift_allocError();
  *v17 = 3;
  swift_willThrow();
  v18 = *(v0 + 160);
  v19 = *(v0 + 168);
  v20 = *(v0 + 152);
  v21 = *(v0 + 96);
  v22 = sub_1B205E940();
  (*(v18 + 16))(v19, v22, v20);

  v6 = sub_1B20A9894();
  v23 = sub_1B20A9C84();

  if (!os_log_type_enabled(v6, v23))
  {
    v36 = *(v0 + 160);
    v37 = *(v0 + 168);
    v38 = *(v0 + 152);

    (*(v36 + 8))(v37, v38);
    v39 = *(v0 + 104);
    if (!v39)
    {
      goto LABEL_23;
    }

LABEL_22:
    v40 = *(v0 + 112);
    v41 = v16;
    v39(v16);

    goto LABEL_23;
  }

  log = v16;
  isEscapingClosureAtFileLocation = *(v0 + 96);
  v7 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v92 = v8;
  *v7 = 136315138;
  LODWORD(v88) = v23;
  if (!(isEscapingClosureAtFileLocation >> 62))
  {
    v24 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_11;
  }

LABEL_47:
  if (*(v0 + 96) < 0)
  {
    v83 = *(v0 + 96);
  }

  v24 = sub_1B20A9DE4();
LABEL_11:
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v85 = v8;
    v86 = v7;
    v93 = MEMORY[0x1E69E7CC0];
    sub_1B2091C18(0, v24 & ~(v24 >> 63), 0);
    if (v24 < 0)
    {
      __break(1u);
      goto LABEL_51;
    }

    v26 = 0;
    v27 = *(v0 + 128);
    v25 = v93;
    v90 = *(v0 + 96) + 32;
    do
    {
      if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x1B27403C0](v26, *(v0 + 96));
      }

      else
      {
        v28 = *(v90 + 8 * v26);
      }

      v29 = v28;
      v30 = *(v0 + 136);
      v31 = [v28 alarmID];
      sub_1B20A9864();

      v93 = v25;
      v33 = *(v25 + 16);
      v32 = *(v25 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1B2091C18(v32 > 1, v33 + 1, 1);
        v25 = v93;
      }

      v34 = *(v0 + 136);
      v35 = *(v0 + 120);
      ++v26;
      *(v25 + 16) = v33 + 1;
      (*(v27 + 32))(v25 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v33, v34, v35);
    }

    while (v24 != v26);
    v7 = v86;
    v8 = v85;
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 168);
  v49 = *(v0 + 152);
  v50 = MEMORY[0x1B2740030](v25, *(v0 + 120));
  v52 = v51;

  v53 = sub_1B2061574(v50, v52, &v92);

  *(v7 + 1) = v53;
  _os_log_impl(&dword_1B1F9F000, v6, v88, "Failed to update alarms in core data: %s", v7, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v8);
  MEMORY[0x1B2741310](v8, -1, -1);
  MEMORY[0x1B2741310](v7, -1, -1);

  (*(v47 + 8))(v48, v49);
  v16 = log;
  v39 = *(v0 + 104);
  if (v39)
  {
    goto LABEL_22;
  }

LABEL_23:

LABEL_24:
  v43 = *(v0 + 168);
  v42 = *(v0 + 176);
  v45 = *(v0 + 136);
  v44 = *(v0 + 144);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_1B206AE7C()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_1B206B300;
  }

  else
  {
    v5 = *(v2 + 184);

    v4 = sub_1B206AF98;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

size_t sub_1B206AF98()
{
  v49 = v0;
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[12];
  v5 = sub_1B205E940();
  (*(v3 + 16))(v1, v5, v2);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C74();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[12];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v47 = v10;
    *v9 = 136315138;
    if (v8 >> 62)
    {
      if (v0[12] < 0)
      {
        v41 = v0[12];
      }

      v11 = sub_1B20A9DE4();
    }

    else
    {
      v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = MEMORY[0x1E69E7CC0];
    v44 = v10;
    log = v6;
    if (v11)
    {
      v48 = MEMORY[0x1E69E7CC0];
      result = sub_1B2091C18(0, v11 & ~(v11 >> 63), 0);
      if (v11 < 0)
      {
        __break(1u);
        return result;
      }

      v42 = v9;
      v43 = v7;
      v14 = 0;
      v15 = v0[16];
      v12 = v48;
      v46 = v0[12] + 32;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1B27403C0](v14, v0[12]);
        }

        else
        {
          v16 = *(v46 + 8 * v14);
        }

        v17 = v16;
        v18 = v0[18];
        v19 = [v16 alarmID];
        sub_1B20A9864();

        v48 = v12;
        v21 = *(v12 + 16);
        v20 = *(v12 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1B2091C18(v20 > 1, v21 + 1, 1);
          v12 = v48;
        }

        v22 = v0[18];
        v23 = v0[15];
        ++v14;
        *(v12 + 16) = v21 + 1;
        (*(v15 + 32))(v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v21, v22, v23);
      }

      while (v11 != v14);
      v7 = v43;
      v9 = v42;
    }

    v27 = v0[22];
    v29 = v0[19];
    v28 = v0[20];
    v30 = MEMORY[0x1B2740030](v12, v0[15]);
    v32 = v31;

    v33 = sub_1B2061574(v30, v32, &v47);

    *(v9 + 4) = v33;
    _os_log_impl(&dword_1B1F9F000, log, v7, "Updated alarms in core data: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x1B2741310](v44, -1, -1);
    MEMORY[0x1B2741310](v9, -1, -1);

    (*(v28 + 8))(v27, v29);
  }

  else
  {
    v24 = v0[22];
    v26 = v0[19];
    v25 = v0[20];

    (*(v25 + 8))(v24, v26);
  }

  v34 = v0[13];
  if (v34)
  {
    v35 = v0[14];
    v34(0);
  }

  v37 = v0[21];
  v36 = v0[22];
  v39 = v0[17];
  v38 = v0[18];

  v40 = v0[1];

  return v40();
}

size_t sub_1B206B300()
{
  v53 = v0;
  v1 = v0[23];

  v2 = v0[25];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[19];
  v6 = v0[12];
  v7 = sub_1B205E940();
  (*(v3 + 16))(v4, v7, v5);

  v8 = sub_1B20A9894();
  v9 = sub_1B20A9C84();

  if (!os_log_type_enabled(v8, v9))
  {
    v27 = v0[20];
    v28 = v0[21];
    v29 = v0[19];

    (*(v27 + 8))(v28, v29);
    v30 = v0[13];
    if (!v30)
    {
      goto LABEL_16;
    }

LABEL_15:
    v31 = v0[14];
    v32 = v2;
    v30(v2);

    goto LABEL_16;
  }

  v10 = v0[12];
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v51 = v12;
  *v11 = 136315138;
  if (v10 >> 62)
  {
    if (v0[12] < 0)
    {
      v45 = v0[12];
    }

    v13 = sub_1B20A9DE4();
  }

  else
  {
    v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x1E69E7CC0];
  v49 = v2;
  v48 = v9;
  v47 = v12;
  if (v13)
  {
    v52 = MEMORY[0x1E69E7CC0];
    result = sub_1B2091C18(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
      __break(1u);
      return result;
    }

    v46 = v11;
    v16 = 0;
    v17 = v0[16];
    v14 = v52;
    v18 = v10 & 0xC000000000000001;
    v50 = v0[12] + 32;
    do
    {
      if (v18)
      {
        v19 = MEMORY[0x1B27403C0](v16, v0[12]);
      }

      else
      {
        v19 = *(v50 + 8 * v16);
      }

      v20 = v19;
      v21 = v0[17];
      v22 = [v19 alarmID];
      sub_1B20A9864();

      v52 = v14;
      v24 = *(v14 + 16);
      v23 = *(v14 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1B2091C18(v23 > 1, v24 + 1, 1);
        v14 = v52;
      }

      v25 = v0[17];
      v26 = v0[15];
      ++v16;
      *(v14 + 16) = v24 + 1;
      (*(v17 + 32))(v14 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v24, v25, v26);
    }

    while (v13 != v16);
    v11 = v46;
  }

  v38 = v0[20];
  v39 = v0[21];
  v40 = v0[19];
  v41 = MEMORY[0x1B2740030](v14, v0[15]);
  v43 = v42;

  v44 = sub_1B2061574(v41, v43, &v51);

  *(v11 + 4) = v44;
  _os_log_impl(&dword_1B1F9F000, v8, v48, "Failed to update alarms in core data: %s", v11, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v47);
  MEMORY[0x1B2741310](v47, -1, -1);
  MEMORY[0x1B2741310](v11, -1, -1);

  (*(v38 + 8))(v39, v40);
  v2 = v49;
  v30 = v0[13];
  if (v30)
  {
    goto LABEL_15;
  }

LABEL_16:

  v34 = v0[21];
  v33 = v0[22];
  v36 = v0[17];
  v35 = v0[18];

  v37 = v0[1];

  return v37();
}

uint64_t sub_1B206B6A4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B20A9D34();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B206B764, v1, 0);
}

uint64_t sub_1B206B764()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  type metadata accessor for MTCDAlarm();
  v6 = static MTCDAlarm.fetchRequest()();
  v0[7] = v6;
  v7 = sub_1B2094E9C(v5, &selRef_alarmIDString);
  [v6 setPredicate_];

  v8 = [*(v4 + 112) newBackgroundContext];
  v0[8] = v8;
  v9 = swift_allocObject();
  v0[9] = v9;
  v9[2] = v8;
  v9[3] = v6;
  v9[4] = v5;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v10 = *(MEMORY[0x1E695D2C0] + 4);
  v8;
  v11 = v6;

  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_1B206B900;
  v13 = v0[6];
  v14 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEDB6538](v12, v13, sub_1B2094568, v9, v14);
}

uint64_t sub_1B206B900()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *v1;
  *(*v1 + 88) = v0;

  (*(v6 + 8))(v5, v7);

  v9 = *(v2 + 24);
  if (v0)
  {
    v10 = sub_1B206BB20;
  }

  else
  {
    v10 = sub_1B206BAAC;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1B206BAAC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B206BB20()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);
  v4 = *(v0 + 88);

  return v3();
}

Swift::Void __swiftcall MTCDDataStore.setSleepAlarms(_:)(Swift::OpaquePointer a1)
{
  v3 = swift_allocObject();
  v3[2]._rawValue = v1;
  v3[3]._rawValue = a1._rawValue;
  v3[4]._rawValue = 0;
  v3[5]._rawValue = 0;
  v4 = *&v1[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v5 = v1;

  os_unfair_lock_lock(v4 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v4 + 4);
  v6 = *&v5[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v6)
  {
    v7 = *&v5[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v6(v8);
    sub_1B1FA6834(v6);
  }
}

uint64_t MTCDDataStore.setSleepAlarms(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v9 = v3;

  sub_1B209192C(a2);
  os_unfair_lock_lock(v8 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v8 + 4);
  v10 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v10)
  {
    v11 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v10(v12);
    sub_1B1FA6834(v10);
  }
}

uint64_t sub_1B206BEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_1B20A9874();
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v7 = *(v6 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v8 = sub_1B20A98B4();
  v4[19] = v8;
  v9 = *(v8 - 8);
  v4[20] = v9;
  v10 = *(v9 + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B206C02C, 0, 0);
}

size_t sub_1B206C02C()
{
  v94 = v0;
  v1 = *(v0 + 88);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    v3 = *(v0 + 88);
    *(v0 + 208) = 0;
    v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
    v5 = swift_allocObject();
    *(v5 + 16) = v0 + 208;
    *(v5 + 24) = v3;
    v6 = swift_allocObject();
    v6[2].isa = sub_1B2098884;
    v6[3].isa = v5;
    *(v0 + 48) = sub_1B20988D0;
    *(v0 + 56) = v6;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1B20668F0;
    *(v0 + 40) = &block_descriptor_963;
    v7 = _Block_copy((v0 + 16));
    v8 = *(v0 + 56);
    v9 = v3;

    dispatch_sync(v4, v7);
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_47;
    }

    v11 = *(v0 + 208);

    if (v11 == 1)
    {
      v12 = *(v1 + v2);
      *(v0 + 184) = v12;
      if (v12)
      {

        v13 = swift_task_alloc();
        *(v0 + 192) = v13;
        *v13 = v0;
        v13[1] = sub_1B206C938;
        v14 = *(v0 + 96);

        return sub_1B206D160(v14);
      }

      v54 = *(v0 + 176);
      v55 = *(v0 + 152);
      v6 = *(v0 + 160);
      v56 = *(v0 + 96);
      v57 = sub_1B205E940();
      (v6[2].isa)(v54, v57, v55);

      v58 = sub_1B20A9894();
      LOBYTE(v6) = sub_1B20A9C74();

      if (!os_log_type_enabled(v58, v6))
      {
        v71 = *(v0 + 176);
        v73 = *(v0 + 152);
        v72 = *(v0 + 160);

        (*(v72 + 8))(v71, v73);
LABEL_44:
        v81 = *(v0 + 104);
        if (v81)
        {
          v82 = *(v0 + 112);
          v81(0);
        }

        goto LABEL_24;
      }

      log = v58;
      isEscapingClosureAtFileLocation = *(v0 + 96);
      v7 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v92 = v88;
      *v7 = 136315138;
      if (!(isEscapingClosureAtFileLocation >> 62))
      {
        v59 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_32:
        v60 = MEMORY[0x1E69E7CC0];
        if (v59)
        {
          v87 = v6;
          v93 = MEMORY[0x1E69E7CC0];
          result = sub_1B2091C18(0, v59 & ~(v59 >> 63), 0);
          if (v59 < 0)
          {
            __break(1u);
            return result;
          }

          v61 = 0;
          v62 = *(v0 + 128);
          v60 = v93;
          v91 = *(v0 + 96) + 32;
          do
          {
            if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
            {
              v63 = MEMORY[0x1B27403C0](v61, *(v0 + 96));
            }

            else
            {
              v63 = *(v91 + 8 * v61);
            }

            v64 = v63;
            v65 = *(v0 + 144);
            v66 = [v63 alarmID];
            sub_1B20A9864();

            v93 = v60;
            v68 = *(v60 + 16);
            v67 = *(v60 + 24);
            if (v68 >= v67 >> 1)
            {
              sub_1B2091C18(v67 > 1, v68 + 1, 1);
              v60 = v93;
            }

            v69 = *(v0 + 144);
            v70 = *(v0 + 120);
            ++v61;
            *(v60 + 16) = v68 + 1;
            (*(v62 + 32))(v60 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v68, v69, v70);
          }

          while (v59 != v61);
          LOBYTE(v6) = v87;
        }

        v74 = *(v0 + 176);
        v76 = *(v0 + 152);
        v75 = *(v0 + 160);
        v77 = MEMORY[0x1B2740030](v60, *(v0 + 120));
        v79 = v78;

        v80 = sub_1B2061574(v77, v79, &v92);

        *(v7 + 1) = v80;
        _os_log_impl(&dword_1B1F9F000, log, v6, "Set sleep alarms in core data: %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v88);
        MEMORY[0x1B2741310](v88, -1, -1);
        MEMORY[0x1B2741310](v7, -1, -1);

        (*(v75 + 8))(v74, v76);
        goto LABEL_44;
      }

LABEL_51:
      if (*(v0 + 96) < 0)
      {
        v84 = *(v0 + 96);
      }

      v59 = sub_1B20A9DE4();
      goto LABEL_32;
    }
  }

  type metadata accessor for BugCapture();
  static BugCapture.reportBug(type:subType:name:value:)(0x536174614443544DLL, 0xEC00000065726F74, 0xD000000000000010, 0x80000001B20D3580, 0xD00000000000002ALL, 0x80000001B20D35A0, 0x7065656C53746573, 0xEE00736D72616C41);
  sub_1B20915B0();
  v16 = swift_allocError();
  *v17 = 3;
  swift_willThrow();
  v18 = *(v0 + 160);
  v19 = *(v0 + 168);
  v20 = *(v0 + 152);
  v21 = *(v0 + 96);
  v22 = sub_1B205E940();
  (*(v18 + 16))(v19, v22, v20);

  v6 = sub_1B20A9894();
  v23 = sub_1B20A9C84();

  if (!os_log_type_enabled(v6, v23))
  {
    v36 = *(v0 + 160);
    v37 = *(v0 + 168);
    v38 = *(v0 + 152);

    (*(v36 + 8))(v37, v38);
    v39 = *(v0 + 104);
    if (!v39)
    {
      goto LABEL_23;
    }

LABEL_22:
    v40 = *(v0 + 112);
    v41 = v16;
    v39(v16);

    goto LABEL_23;
  }

  log = v16;
  isEscapingClosureAtFileLocation = *(v0 + 96);
  v7 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v92 = v8;
  *v7 = 136315138;
  LODWORD(v88) = v23;
  if (!(isEscapingClosureAtFileLocation >> 62))
  {
    v24 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_11;
  }

LABEL_47:
  if (*(v0 + 96) < 0)
  {
    v83 = *(v0 + 96);
  }

  v24 = sub_1B20A9DE4();
LABEL_11:
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v85 = v8;
    v86 = v7;
    v93 = MEMORY[0x1E69E7CC0];
    sub_1B2091C18(0, v24 & ~(v24 >> 63), 0);
    if (v24 < 0)
    {
      __break(1u);
      goto LABEL_51;
    }

    v26 = 0;
    v27 = *(v0 + 128);
    v25 = v93;
    v90 = *(v0 + 96) + 32;
    do
    {
      if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x1B27403C0](v26, *(v0 + 96));
      }

      else
      {
        v28 = *(v90 + 8 * v26);
      }

      v29 = v28;
      v30 = *(v0 + 136);
      v31 = [v28 alarmID];
      sub_1B20A9864();

      v93 = v25;
      v33 = *(v25 + 16);
      v32 = *(v25 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1B2091C18(v32 > 1, v33 + 1, 1);
        v25 = v93;
      }

      v34 = *(v0 + 136);
      v35 = *(v0 + 120);
      ++v26;
      *(v25 + 16) = v33 + 1;
      (*(v27 + 32))(v25 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v33, v34, v35);
    }

    while (v24 != v26);
    v7 = v86;
    v8 = v85;
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 168);
  v49 = *(v0 + 152);
  v50 = MEMORY[0x1B2740030](v25, *(v0 + 120));
  v52 = v51;

  v53 = sub_1B2061574(v50, v52, &v92);

  *(v7 + 1) = v53;
  _os_log_impl(&dword_1B1F9F000, v6, v88, "Failed to set sleep alarms in core data: %s", v7, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v8);
  MEMORY[0x1B2741310](v8, -1, -1);
  MEMORY[0x1B2741310](v7, -1, -1);

  (*(v47 + 8))(v48, v49);
  v16 = log;
  v39 = *(v0 + 104);
  if (v39)
  {
    goto LABEL_22;
  }

LABEL_23:

LABEL_24:
  v43 = *(v0 + 168);
  v42 = *(v0 + 176);
  v45 = *(v0 + 136);
  v44 = *(v0 + 144);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_1B206C938()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_1B206CDBC;
  }

  else
  {
    v5 = *(v2 + 184);

    v4 = sub_1B206CA54;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

size_t sub_1B206CA54()
{
  v49 = v0;
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[12];
  v5 = sub_1B205E940();
  (*(v3 + 16))(v1, v5, v2);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C74();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[12];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v47 = v10;
    *v9 = 136315138;
    if (v8 >> 62)
    {
      if (v0[12] < 0)
      {
        v41 = v0[12];
      }

      v11 = sub_1B20A9DE4();
    }

    else
    {
      v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = MEMORY[0x1E69E7CC0];
    v44 = v10;
    log = v6;
    if (v11)
    {
      v48 = MEMORY[0x1E69E7CC0];
      result = sub_1B2091C18(0, v11 & ~(v11 >> 63), 0);
      if (v11 < 0)
      {
        __break(1u);
        return result;
      }

      v42 = v9;
      v43 = v7;
      v14 = 0;
      v15 = v0[16];
      v12 = v48;
      v46 = v0[12] + 32;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1B27403C0](v14, v0[12]);
        }

        else
        {
          v16 = *(v46 + 8 * v14);
        }

        v17 = v16;
        v18 = v0[18];
        v19 = [v16 alarmID];
        sub_1B20A9864();

        v48 = v12;
        v21 = *(v12 + 16);
        v20 = *(v12 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1B2091C18(v20 > 1, v21 + 1, 1);
          v12 = v48;
        }

        v22 = v0[18];
        v23 = v0[15];
        ++v14;
        *(v12 + 16) = v21 + 1;
        (*(v15 + 32))(v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v21, v22, v23);
      }

      while (v11 != v14);
      v7 = v43;
      v9 = v42;
    }

    v27 = v0[22];
    v29 = v0[19];
    v28 = v0[20];
    v30 = MEMORY[0x1B2740030](v12, v0[15]);
    v32 = v31;

    v33 = sub_1B2061574(v30, v32, &v47);

    *(v9 + 4) = v33;
    _os_log_impl(&dword_1B1F9F000, log, v7, "Set sleep alarms in core data: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x1B2741310](v44, -1, -1);
    MEMORY[0x1B2741310](v9, -1, -1);

    (*(v28 + 8))(v27, v29);
  }

  else
  {
    v24 = v0[22];
    v26 = v0[19];
    v25 = v0[20];

    (*(v25 + 8))(v24, v26);
  }

  v34 = v0[13];
  if (v34)
  {
    v35 = v0[14];
    v34(0);
  }

  v37 = v0[21];
  v36 = v0[22];
  v39 = v0[17];
  v38 = v0[18];

  v40 = v0[1];

  return v40();
}

size_t sub_1B206CDBC()
{
  v53 = v0;
  v1 = v0[23];

  v2 = v0[25];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[19];
  v6 = v0[12];
  v7 = sub_1B205E940();
  (*(v3 + 16))(v4, v7, v5);

  v8 = sub_1B20A9894();
  v9 = sub_1B20A9C84();

  if (!os_log_type_enabled(v8, v9))
  {
    v27 = v0[20];
    v28 = v0[21];
    v29 = v0[19];

    (*(v27 + 8))(v28, v29);
    v30 = v0[13];
    if (!v30)
    {
      goto LABEL_16;
    }

LABEL_15:
    v31 = v0[14];
    v32 = v2;
    v30(v2);

    goto LABEL_16;
  }

  v10 = v0[12];
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v51 = v12;
  *v11 = 136315138;
  if (v10 >> 62)
  {
    if (v0[12] < 0)
    {
      v45 = v0[12];
    }

    v13 = sub_1B20A9DE4();
  }

  else
  {
    v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x1E69E7CC0];
  v49 = v2;
  v48 = v9;
  v47 = v12;
  if (v13)
  {
    v52 = MEMORY[0x1E69E7CC0];
    result = sub_1B2091C18(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
      __break(1u);
      return result;
    }

    v46 = v11;
    v16 = 0;
    v17 = v0[16];
    v14 = v52;
    v18 = v10 & 0xC000000000000001;
    v50 = v0[12] + 32;
    do
    {
      if (v18)
      {
        v19 = MEMORY[0x1B27403C0](v16, v0[12]);
      }

      else
      {
        v19 = *(v50 + 8 * v16);
      }

      v20 = v19;
      v21 = v0[17];
      v22 = [v19 alarmID];
      sub_1B20A9864();

      v52 = v14;
      v24 = *(v14 + 16);
      v23 = *(v14 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1B2091C18(v23 > 1, v24 + 1, 1);
        v14 = v52;
      }

      v25 = v0[17];
      v26 = v0[15];
      ++v16;
      *(v14 + 16) = v24 + 1;
      (*(v17 + 32))(v14 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v24, v25, v26);
    }

    while (v13 != v16);
    v11 = v46;
  }

  v38 = v0[20];
  v39 = v0[21];
  v40 = v0[19];
  v41 = MEMORY[0x1B2740030](v14, v0[15]);
  v43 = v42;

  v44 = sub_1B2061574(v41, v43, &v51);

  *(v11 + 4) = v44;
  _os_log_impl(&dword_1B1F9F000, v8, v48, "Failed to set sleep alarms in core data: %s", v11, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v47);
  MEMORY[0x1B2741310](v47, -1, -1);
  MEMORY[0x1B2741310](v11, -1, -1);

  (*(v38 + 8))(v39, v40);
  v2 = v49;
  v30 = v0[13];
  if (v30)
  {
    goto LABEL_15;
  }

LABEL_16:

  v34 = v0[21];
  v33 = v0[22];
  v36 = v0[17];
  v35 = v0[18];

  v37 = v0[1];

  return v37();
}

uint64_t sub_1B206D160(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B20A9D34();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_1B20A98B4();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B206D27C, v1, 0);
}

uint64_t sub_1B206D27C()
{
  v61 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  v5 = sub_1B205E940();
  (*(v2 + 16))(v1, v5, v3);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C84();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v59 = v10;
    *v9 = 136315138;
    if (v8 >> 62)
    {
      if (v0[2] < 0)
      {
        v50 = v0[2];
      }

      v11 = sub_1B20A9DE4();
    }

    else
    {
      v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = MEMORY[0x1E69E7CC0];
    log = v6;
    v54 = v7;
    v53 = v10;
    if (v11)
    {
      v60 = MEMORY[0x1E69E7CC0];
      v13 = sub_1B2091C38(0, v11 & ~(v11 >> 63), 0);
      if (v11 < 0)
      {
        __break(1u);
        return MEMORY[0x1EEDB6538](v13, v14, v15, v16, v17);
      }

      v52 = v9;
      v18 = 0;
      v12 = v60;
      v57 = v0[2] + 32;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x1B27403C0](v18, v0[2]);
        }

        else
        {
          v19 = *(v57 + 8 * v18);
        }

        v20 = v19;
        v21 = [v19 alarmIDString];
        v22 = sub_1B20A9A74();
        v24 = v23;

        v60 = v12;
        v26 = *(v12 + 16);
        v25 = *(v12 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1B2091C38((v25 > 1), v26 + 1, 1);
          v12 = v60;
        }

        ++v18;
        *(v12 + 16) = v26 + 1;
        v27 = v12 + 16 * v26;
        *(v27 + 32) = v22;
        *(v27 + 40) = v24;
      }

      while (v11 != v18);
      v9 = v52;
    }

    v31 = v0[8];
    v32 = v0[9];
    v33 = v0[7];
    v34 = MEMORY[0x1B2740030](v12, MEMORY[0x1E69E6158]);
    v36 = v35;

    v37 = sub_1B2061574(v34, v36, &v59);

    *(v9 + 4) = v37;
    _os_log_impl(&dword_1B1F9F000, log, v54, "Setting sleep alarms: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x1B2741310](v53, -1, -1);
    MEMORY[0x1B2741310](v9, -1, -1);

    (*(v31 + 8))(v32, v33);
  }

  else
  {
    v28 = v0[8];
    v29 = v0[9];
    v30 = v0[7];

    (*(v28 + 8))(v29, v30);
  }

  v38 = v0[5];
  v39 = v0[3];
  loga = v0[4];
  v58 = v0[6];
  v40 = v0[2];
  type metadata accessor for MTCDAlarm();
  v41 = static MTCDAlarm.fetchRequest()();
  v0[10] = v41;
  sub_1B20982AC(0, &qword_1EB79CE38, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4D0, &qword_1B20B8F70);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1B20B8E70;
  v43 = sub_1B20982AC(0, &qword_1EB79CDE0, 0x1E696AD98);
  v44 = sub_1B20A9D64();
  *(v42 + 56) = v43;
  *(v42 + 64) = sub_1B2094634();
  *(v42 + 32) = v44;
  v45 = sub_1B20A9C64();
  [v41 setPredicate_];

  v46 = [*(v39 + 112) newBackgroundContext];
  v0[11] = v46;
  v47 = swift_allocObject();
  v0[12] = v47;
  v47[2] = v46;
  v47[3] = v41;
  v47[4] = v40;
  (*(v38 + 104))(v58, *MEMORY[0x1E695D2B8], loga);
  v48 = *(MEMORY[0x1E695D2C0] + 4);

  v46;
  v49 = v41;
  v13 = swift_task_alloc();
  v0[13] = v13;
  *v13 = v0;
  v13[1] = sub_1B206D744;
  v14 = v0[6];
  v15 = sub_1B209469C;
  v17 = MEMORY[0x1E69E7CA8] + 8;
  v16 = v47;

  return MEMORY[0x1EEDB6538](v13, v14, v15, v16, v17);
}

uint64_t sub_1B206D744()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *v1;
  *(*v1 + 112) = v0;

  (*(v6 + 8))(v5, v7);

  v9 = *(v2 + 24);
  if (v0)
  {
    v10 = sub_1B206D978;
  }

  else
  {
    v10 = sub_1B206D8F0;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1B206D8F0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B206D978()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);

  v4 = *(v0 + 8);
  v5 = *(v0 + 112);

  return v4();
}

Swift::Void __swiftcall MTCDDataStore.deleteAlarms(_:)(Swift::OpaquePointer a1)
{
  v3 = swift_allocObject();
  v3[2]._rawValue = v1;
  v3[3]._rawValue = a1._rawValue;
  v3[4]._rawValue = 0;
  v3[5]._rawValue = 0;
  v4 = *&v1[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v5 = v1;

  os_unfair_lock_lock(v4 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v4 + 4);
  v6 = *&v5[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v6)
  {
    v7 = *&v5[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v6(v8);
    sub_1B1FA6834(v6);
  }
}

uint64_t MTCDDataStore.deleteAlarms(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v9 = v3;

  sub_1B209192C(a2);
  os_unfair_lock_lock(v8 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v8 + 4);
  v10 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v10)
  {
    v11 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v10(v12);
    sub_1B1FA6834(v10);
  }
}

uint64_t sub_1B206DD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_1B20A9874();
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v7 = *(v6 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v8 = sub_1B20A98B4();
  v4[19] = v8;
  v9 = *(v8 - 8);
  v4[20] = v9;
  v10 = *(v9 + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B206DE98, 0, 0);
}

size_t sub_1B206DE98()
{
  v94 = v0;
  v1 = *(v0 + 88);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    v3 = *(v0 + 88);
    *(v0 + 208) = 0;
    v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
    v5 = swift_allocObject();
    *(v5 + 16) = v0 + 208;
    *(v5 + 24) = v3;
    v6 = swift_allocObject();
    v6[2].isa = sub_1B2098884;
    v6[3].isa = v5;
    *(v0 + 48) = sub_1B20988D0;
    *(v0 + 56) = v6;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1B20668F0;
    *(v0 + 40) = &block_descriptor_951;
    v7 = _Block_copy((v0 + 16));
    v8 = *(v0 + 56);
    v9 = v3;

    dispatch_sync(v4, v7);
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_47;
    }

    v11 = *(v0 + 208);

    if (v11 == 1)
    {
      v12 = *(v1 + v2);
      *(v0 + 184) = v12;
      if (v12)
      {

        v13 = swift_task_alloc();
        *(v0 + 192) = v13;
        *v13 = v0;
        v13[1] = sub_1B206E7A0;
        v14 = *(v0 + 96);

        return sub_1B206EFC8(v14);
      }

      v54 = *(v0 + 176);
      v55 = *(v0 + 152);
      v6 = *(v0 + 160);
      v56 = *(v0 + 96);
      v57 = sub_1B205E940();
      (v6[2].isa)(v54, v57, v55);

      v58 = sub_1B20A9894();
      LOBYTE(v6) = sub_1B20A9C74();

      if (!os_log_type_enabled(v58, v6))
      {
        v71 = *(v0 + 176);
        v73 = *(v0 + 152);
        v72 = *(v0 + 160);

        (*(v72 + 8))(v71, v73);
LABEL_44:
        v81 = *(v0 + 104);
        if (v81)
        {
          v82 = *(v0 + 112);
          v81(0);
        }

        goto LABEL_24;
      }

      log = v58;
      isEscapingClosureAtFileLocation = *(v0 + 96);
      v7 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v92 = v88;
      *v7 = 136315138;
      if (!(isEscapingClosureAtFileLocation >> 62))
      {
        v59 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_32:
        v60 = MEMORY[0x1E69E7CC0];
        if (v59)
        {
          v87 = v6;
          v93 = MEMORY[0x1E69E7CC0];
          result = sub_1B2091C18(0, v59 & ~(v59 >> 63), 0);
          if (v59 < 0)
          {
            __break(1u);
            return result;
          }

          v61 = 0;
          v62 = *(v0 + 128);
          v60 = v93;
          v91 = *(v0 + 96) + 32;
          do
          {
            if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
            {
              v63 = MEMORY[0x1B27403C0](v61, *(v0 + 96));
            }

            else
            {
              v63 = *(v91 + 8 * v61);
            }

            v64 = v63;
            v65 = *(v0 + 144);
            v66 = [v63 alarmID];
            sub_1B20A9864();

            v93 = v60;
            v68 = *(v60 + 16);
            v67 = *(v60 + 24);
            if (v68 >= v67 >> 1)
            {
              sub_1B2091C18(v67 > 1, v68 + 1, 1);
              v60 = v93;
            }

            v69 = *(v0 + 144);
            v70 = *(v0 + 120);
            ++v61;
            *(v60 + 16) = v68 + 1;
            (*(v62 + 32))(v60 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v68, v69, v70);
          }

          while (v59 != v61);
          LOBYTE(v6) = v87;
        }

        v74 = *(v0 + 176);
        v76 = *(v0 + 152);
        v75 = *(v0 + 160);
        v77 = MEMORY[0x1B2740030](v60, *(v0 + 120));
        v79 = v78;

        v80 = sub_1B2061574(v77, v79, &v92);

        *(v7 + 1) = v80;
        _os_log_impl(&dword_1B1F9F000, log, v6, "Deleted alarms from core data: %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v88);
        MEMORY[0x1B2741310](v88, -1, -1);
        MEMORY[0x1B2741310](v7, -1, -1);

        (*(v75 + 8))(v74, v76);
        goto LABEL_44;
      }

LABEL_51:
      if (*(v0 + 96) < 0)
      {
        v84 = *(v0 + 96);
      }

      v59 = sub_1B20A9DE4();
      goto LABEL_32;
    }
  }

  type metadata accessor for BugCapture();
  static BugCapture.reportBug(type:subType:name:value:)(0x536174614443544DLL, 0xEC00000065726F74, 0xD000000000000010, 0x80000001B20D3580, 0xD00000000000002ALL, 0x80000001B20D35A0, 0x6C416574656C6564, 0xEC000000736D7261);
  sub_1B20915B0();
  v16 = swift_allocError();
  *v17 = 3;
  swift_willThrow();
  v18 = *(v0 + 160);
  v19 = *(v0 + 168);
  v20 = *(v0 + 152);
  v21 = *(v0 + 96);
  v22 = sub_1B205E940();
  (*(v18 + 16))(v19, v22, v20);

  v6 = sub_1B20A9894();
  v23 = sub_1B20A9C84();

  if (!os_log_type_enabled(v6, v23))
  {
    v36 = *(v0 + 160);
    v37 = *(v0 + 168);
    v38 = *(v0 + 152);

    (*(v36 + 8))(v37, v38);
    v39 = *(v0 + 104);
    if (!v39)
    {
      goto LABEL_23;
    }

LABEL_22:
    v40 = *(v0 + 112);
    v41 = v16;
    v39(v16);

    goto LABEL_23;
  }

  log = v16;
  isEscapingClosureAtFileLocation = *(v0 + 96);
  v7 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v92 = v8;
  *v7 = 136315138;
  LODWORD(v88) = v23;
  if (!(isEscapingClosureAtFileLocation >> 62))
  {
    v24 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_11;
  }

LABEL_47:
  if (*(v0 + 96) < 0)
  {
    v83 = *(v0 + 96);
  }

  v24 = sub_1B20A9DE4();
LABEL_11:
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v85 = v8;
    v86 = v7;
    v93 = MEMORY[0x1E69E7CC0];
    sub_1B2091C18(0, v24 & ~(v24 >> 63), 0);
    if (v24 < 0)
    {
      __break(1u);
      goto LABEL_51;
    }

    v26 = 0;
    v27 = *(v0 + 128);
    v25 = v93;
    v90 = *(v0 + 96) + 32;
    do
    {
      if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x1B27403C0](v26, *(v0 + 96));
      }

      else
      {
        v28 = *(v90 + 8 * v26);
      }

      v29 = v28;
      v30 = *(v0 + 136);
      v31 = [v28 alarmID];
      sub_1B20A9864();

      v93 = v25;
      v33 = *(v25 + 16);
      v32 = *(v25 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1B2091C18(v32 > 1, v33 + 1, 1);
        v25 = v93;
      }

      v34 = *(v0 + 136);
      v35 = *(v0 + 120);
      ++v26;
      *(v25 + 16) = v33 + 1;
      (*(v27 + 32))(v25 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v33, v34, v35);
    }

    while (v24 != v26);
    v7 = v86;
    v8 = v85;
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 168);
  v49 = *(v0 + 152);
  v50 = MEMORY[0x1B2740030](v25, *(v0 + 120));
  v52 = v51;

  v53 = sub_1B2061574(v50, v52, &v92);

  *(v7 + 1) = v53;
  _os_log_impl(&dword_1B1F9F000, v6, v88, "Failed to delete alarms from core data: %s", v7, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v8);
  MEMORY[0x1B2741310](v8, -1, -1);
  MEMORY[0x1B2741310](v7, -1, -1);

  (*(v47 + 8))(v48, v49);
  v16 = log;
  v39 = *(v0 + 104);
  if (v39)
  {
    goto LABEL_22;
  }

LABEL_23:

LABEL_24:
  v43 = *(v0 + 168);
  v42 = *(v0 + 176);
  v45 = *(v0 + 136);
  v44 = *(v0 + 144);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_1B206E7A0()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_1B206EC24;
  }

  else
  {
    v5 = *(v2 + 184);

    v4 = sub_1B206E8BC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

size_t sub_1B206E8BC()
{
  v49 = v0;
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[12];
  v5 = sub_1B205E940();
  (*(v3 + 16))(v1, v5, v2);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C74();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[12];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v47 = v10;
    *v9 = 136315138;
    if (v8 >> 62)
    {
      if (v0[12] < 0)
      {
        v41 = v0[12];
      }

      v11 = sub_1B20A9DE4();
    }

    else
    {
      v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = MEMORY[0x1E69E7CC0];
    v44 = v10;
    log = v6;
    if (v11)
    {
      v48 = MEMORY[0x1E69E7CC0];
      result = sub_1B2091C18(0, v11 & ~(v11 >> 63), 0);
      if (v11 < 0)
      {
        __break(1u);
        return result;
      }

      v42 = v9;
      v43 = v7;
      v14 = 0;
      v15 = v0[16];
      v12 = v48;
      v46 = v0[12] + 32;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1B27403C0](v14, v0[12]);
        }

        else
        {
          v16 = *(v46 + 8 * v14);
        }

        v17 = v16;
        v18 = v0[18];
        v19 = [v16 alarmID];
        sub_1B20A9864();

        v48 = v12;
        v21 = *(v12 + 16);
        v20 = *(v12 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1B2091C18(v20 > 1, v21 + 1, 1);
          v12 = v48;
        }

        v22 = v0[18];
        v23 = v0[15];
        ++v14;
        *(v12 + 16) = v21 + 1;
        (*(v15 + 32))(v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v21, v22, v23);
      }

      while (v11 != v14);
      v7 = v43;
      v9 = v42;
    }

    v27 = v0[22];
    v29 = v0[19];
    v28 = v0[20];
    v30 = MEMORY[0x1B2740030](v12, v0[15]);
    v32 = v31;

    v33 = sub_1B2061574(v30, v32, &v47);

    *(v9 + 4) = v33;
    _os_log_impl(&dword_1B1F9F000, log, v7, "Deleted alarms from core data: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x1B2741310](v44, -1, -1);
    MEMORY[0x1B2741310](v9, -1, -1);

    (*(v28 + 8))(v27, v29);
  }

  else
  {
    v24 = v0[22];
    v26 = v0[19];
    v25 = v0[20];

    (*(v25 + 8))(v24, v26);
  }

  v34 = v0[13];
  if (v34)
  {
    v35 = v0[14];
    v34(0);
  }

  v37 = v0[21];
  v36 = v0[22];
  v39 = v0[17];
  v38 = v0[18];

  v40 = v0[1];

  return v40();
}

size_t sub_1B206EC24()
{
  v53 = v0;
  v1 = v0[23];

  v2 = v0[25];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[19];
  v6 = v0[12];
  v7 = sub_1B205E940();
  (*(v3 + 16))(v4, v7, v5);

  v8 = sub_1B20A9894();
  v9 = sub_1B20A9C84();

  if (!os_log_type_enabled(v8, v9))
  {
    v27 = v0[20];
    v28 = v0[21];
    v29 = v0[19];

    (*(v27 + 8))(v28, v29);
    v30 = v0[13];
    if (!v30)
    {
      goto LABEL_16;
    }

LABEL_15:
    v31 = v0[14];
    v32 = v2;
    v30(v2);

    goto LABEL_16;
  }

  v10 = v0[12];
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v51 = v12;
  *v11 = 136315138;
  if (v10 >> 62)
  {
    if (v0[12] < 0)
    {
      v45 = v0[12];
    }

    v13 = sub_1B20A9DE4();
  }

  else
  {
    v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x1E69E7CC0];
  v49 = v2;
  v48 = v9;
  v47 = v12;
  if (v13)
  {
    v52 = MEMORY[0x1E69E7CC0];
    result = sub_1B2091C18(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
      __break(1u);
      return result;
    }

    v46 = v11;
    v16 = 0;
    v17 = v0[16];
    v14 = v52;
    v18 = v10 & 0xC000000000000001;
    v50 = v0[12] + 32;
    do
    {
      if (v18)
      {
        v19 = MEMORY[0x1B27403C0](v16, v0[12]);
      }

      else
      {
        v19 = *(v50 + 8 * v16);
      }

      v20 = v19;
      v21 = v0[17];
      v22 = [v19 alarmID];
      sub_1B20A9864();

      v52 = v14;
      v24 = *(v14 + 16);
      v23 = *(v14 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1B2091C18(v23 > 1, v24 + 1, 1);
        v14 = v52;
      }

      v25 = v0[17];
      v26 = v0[15];
      ++v16;
      *(v14 + 16) = v24 + 1;
      (*(v17 + 32))(v14 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v24, v25, v26);
    }

    while (v13 != v16);
    v11 = v46;
  }

  v38 = v0[20];
  v39 = v0[21];
  v40 = v0[19];
  v41 = MEMORY[0x1B2740030](v14, v0[15]);
  v43 = v42;

  v44 = sub_1B2061574(v41, v43, &v51);

  *(v11 + 4) = v44;
  _os_log_impl(&dword_1B1F9F000, v8, v48, "Failed to delete alarms from core data: %s", v11, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v47);
  MEMORY[0x1B2741310](v47, -1, -1);
  MEMORY[0x1B2741310](v11, -1, -1);

  (*(v38 + 8))(v39, v40);
  v2 = v49;
  v30 = v0[13];
  if (v30)
  {
    goto LABEL_15;
  }

LABEL_16:

  v34 = v0[21];
  v33 = v0[22];
  v36 = v0[17];
  v35 = v0[18];

  v37 = v0[1];

  return v37();
}

uint64_t sub_1B206EFC8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B20A9D34();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B206F088, v1, 0);
}

uint64_t sub_1B206F088()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = type metadata accessor for MTCDAlarm();
  v7 = (*(v6 + 96))();
  v0[7] = v7;
  v8 = sub_1B2094E9C(v5, &selRef_alarmIDString);
  [v7 setPredicate_];

  v9 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];
  v0[8] = v9;
  v10 = [*(v4 + 112) newBackgroundContext];
  v0[9] = v10;
  v11 = swift_allocObject();
  v0[10] = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v12 = *(MEMORY[0x1E695D2C0] + 4);
  v10;
  v13 = v9;
  v14 = swift_task_alloc();
  v0[11] = v14;
  *v14 = v0;
  v14[1] = sub_1B206F244;
  v15 = v0[6];
  v16 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEDB6538](v14, v15, sub_1B209893C, v11, v16);
}

uint64_t sub_1B206F244()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *v1;
  *(*v1 + 96) = v0;

  (*(v6 + 8))(v5, v7);

  v9 = *(v2 + 24);
  if (v0)
  {
    v10 = sub_1B206F470;
  }

  else
  {
    v10 = sub_1B206F3F0;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1B206F3F0()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B206F470()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);

  v4 = *(v0 + 8);
  v5 = *(v0 + 96);

  return v4();
}

uint64_t MTCDDataStore.getAlarms(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = *&v2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v7 = v2;

  os_unfair_lock_lock(v6 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v6 + 4);
  v8 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v8)
  {
    v9 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v8(v10);
    sub_1B1FA6834(v8);
  }
}

uint64_t sub_1B206F70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = sub_1B20A98B4();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B206F7DC, 0, 0);
}

uint64_t sub_1B206F7DC()
{
  v52 = v0;
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (!*(v1 + v2))
  {
    goto LABEL_8;
  }

  v3 = *(v0 + 96);
  *(v0 + 184) = 0;
  v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
  v5 = swift_allocObject();
  *(v5 + 16) = v0 + 184;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B2098884;
  *(v6 + 24) = v5;
  *(v0 + 48) = sub_1B20988D0;
  *(v0 + 56) = v6;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B20668F0;
  *(v0 + 40) = &block_descriptor_939;
  v7 = _Block_copy((v0 + 16));
  v8 = *(v0 + 56);
  v9 = v3;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
    return result;
  }

  v11 = *(v0 + 184);

  if (v11 == 1)
  {
    v12 = *(v1 + v2);
    *(v0 + 152) = v12;
    if (v12)
    {

      v13 = swift_task_alloc();
      *(v0 + 160) = v13;
      *v13 = v0;
      v13[1] = sub_1B206FD78;

      return sub_1B207027C();
    }

    v35 = *(v0 + 144);
    v36 = *(v0 + 120);
    v37 = *(v0 + 128);
    v38 = sub_1B205E940();
    (*(v37 + 16))(v35, v38, v36);
    v39 = sub_1B20A9894();
    v40 = sub_1B20A9C74();

    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 144);
    v43 = *(v0 + 120);
    v44 = *(v0 + 128);
    if (v41)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v51 = v46;
      *v45 = 136315138;
      *(v0 + 88) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4E0, &qword_1B20B8FD0);
      v47 = sub_1B20A9A84();
      v49 = sub_1B2061574(v47, v48, &v51);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_1B1F9F000, v39, v40, "Fetched sample alarms: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x1B2741310](v46, -1, -1);
      MEMORY[0x1B2741310](v45, -1, -1);
    }

    (*(v44 + 8))(v42, v43);
    v50 = *(v0 + 112);
    (*(v0 + 104))(0);
  }

  else
  {
LABEL_8:
    type metadata accessor for BugCapture();
    static BugCapture.reportBug(type:subType:name:value:)(0x536174614443544DLL, 0xEC00000065726F74, 0xD000000000000010, 0x80000001B20D3580, 0xD00000000000002ALL, 0x80000001B20D35A0, 0x6D72616C41746567, 0xE900000000000073);
    sub_1B20915B0();
    v14 = swift_allocError();
    *v15 = 3;
    swift_willThrow();
    v17 = *(v0 + 128);
    v16 = *(v0 + 136);
    v18 = *(v0 + 120);
    v19 = sub_1B205E940();
    (*(v17 + 16))(v16, v19, v18);
    v20 = v14;
    v21 = sub_1B20A9894();
    v22 = sub_1B20A9C84();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = v14;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_1B1F9F000, v21, v22, "Failed to fetch sample alarms with error: %@", v23, 0xCu);
      sub_1B20985B4(v24, &qword_1EB79F4B0, &qword_1B20B8ED8);
      MEMORY[0x1B2741310](v24, -1, -1);
      MEMORY[0x1B2741310](v23, -1, -1);
    }

    v28 = *(v0 + 128);
    v27 = *(v0 + 136);
    v29 = *(v0 + 112);
    v30 = *(v0 + 120);
    v31 = *(v0 + 104);

    (*(v28 + 8))(v27, v30);
    v31(0);
  }

  v33 = *(v0 + 136);
  v32 = *(v0 + 144);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1B206FD78(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v7 = sub_1B20700BC;
  }

  else
  {
    v8 = *(v4 + 152);

    *(v4 + 176) = a1;
    v7 = sub_1B206FEA8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B206FEA8()
{
  v25 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = sub_1B205E940();
  (*(v4 + 16))(v2, v5, v3);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C74();

  if (os_log_type_enabled(v6, v7))
  {
    v23 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    *(v0 + 88) = v1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4E0, &qword_1B20B8FD0);
    v12 = sub_1B20A9A84();
    v14 = sub_1B2061574(v12, v13, &v24);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1B1F9F000, v6, v7, "Fetched sample alarms: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1B2741310](v11, -1, -1);
    MEMORY[0x1B2741310](v10, -1, -1);

    (*(v8 + 8))(v23, v9);
  }

  else
  {
    v15 = *(v0 + 144);
    v16 = *(v0 + 120);
    v17 = *(v0 + 128);

    (*(v17 + 8))(v15, v16);
  }

  v18 = *(v0 + 112);
  (*(v0 + 104))(v1);

  v20 = *(v0 + 136);
  v19 = *(v0 + 144);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1B20700BC()
{
  v1 = v0[19];

  v2 = v0[21];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  v6 = sub_1B205E940();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_1B20A9894();
  v9 = sub_1B20A9C84();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1B1F9F000, v8, v9, "Failed to fetch sample alarms with error: %@", v10, 0xCu);
    sub_1B20985B4(v11, &qword_1EB79F4B0, &qword_1B20B8ED8);
    MEMORY[0x1B2741310](v11, -1, -1);
    MEMORY[0x1B2741310](v10, -1, -1);
  }

  v15 = v0[16];
  v14 = v0[17];
  v16 = v0[14];
  v17 = v0[15];
  v18 = v0[13];

  (*(v15 + 8))(v14, v17);
  v18(0);

  v20 = v0[17];
  v19 = v0[18];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1B207027C()
{
  v1[3] = v0;
  v2 = sub_1B20A9D34();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  sub_1B20A9BA4();
  v1[7] = sub_1B20A9B94();
  v6 = sub_1B20A9B64();
  v1[8] = v6;
  v1[9] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1B2070370, v6, v5);
}

uint64_t sub_1B2070370()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v0[10] = [*(v0[3] + 112) viewContext];
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v4 = *(MEMORY[0x1E695D2C0] + 4);

  v5 = swift_task_alloc();
  v0[11] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4D8, &qword_1B20B8FB0);
  *v5 = v0;
  v5[1] = sub_1B20704A4;
  v7 = v0[6];
  v8 = v0[3];

  return MEMORY[0x1EEDB6538](v0 + 2, v7, sub_1B2094810, v8, v6);
}

uint64_t sub_1B20704A4()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 24);
  v9 = *v1;
  *(*v1 + 96) = v0;

  (*(v6 + 8))(v5, v7);

  v10 = *(v2 + 72);
  v11 = *(v2 + 64);
  if (v0)
  {
    v12 = sub_1B20706EC;
  }

  else
  {
    v12 = sub_1B2070678;
  }

  return MEMORY[0x1EEE6DFA0](v12, v11, v10);
}

uint64_t sub_1B2070678()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[2];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1B20706EC()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t MTCDDataStore.getNonSleepAlarms(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = *&v2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v7 = v2;

  os_unfair_lock_lock(v6 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v6 + 4);
  v8 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v8)
  {
    v9 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v8(v10);
    sub_1B1FA6834(v8);
  }
}

uint64_t sub_1B2070894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = sub_1B20A98B4();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2070964, 0, 0);
}

uint64_t sub_1B2070964()
{
  v52 = v0;
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (!*(v1 + v2))
  {
    goto LABEL_8;
  }

  v3 = *(v0 + 96);
  *(v0 + 184) = 0;
  v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
  v5 = swift_allocObject();
  *(v5 + 16) = v0 + 184;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B2098884;
  *(v6 + 24) = v5;
  *(v0 + 48) = sub_1B20988D0;
  *(v0 + 56) = v6;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B20668F0;
  *(v0 + 40) = &block_descriptor_927;
  v7 = _Block_copy((v0 + 16));
  v8 = *(v0 + 56);
  v9 = v3;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
    return result;
  }

  v11 = *(v0 + 184);

  if (v11 == 1)
  {
    v12 = *(v1 + v2);
    *(v0 + 152) = v12;
    if (v12)
    {

      v13 = swift_task_alloc();
      *(v0 + 160) = v13;
      *v13 = v0;
      v13[1] = sub_1B2070F00;

      return sub_1B2071404(0);
    }

    v35 = *(v0 + 144);
    v36 = *(v0 + 120);
    v37 = *(v0 + 128);
    v38 = sub_1B205E940();
    (*(v37 + 16))(v35, v38, v36);
    v39 = sub_1B20A9894();
    v40 = sub_1B20A9C74();

    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 144);
    v43 = *(v0 + 120);
    v44 = *(v0 + 128);
    if (v41)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v51 = v46;
      *v45 = 136315138;
      *(v0 + 88) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4E0, &qword_1B20B8FD0);
      v47 = sub_1B20A9A84();
      v49 = sub_1B2061574(v47, v48, &v51);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_1B1F9F000, v39, v40, "Fetched non sleep alarms: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x1B2741310](v46, -1, -1);
      MEMORY[0x1B2741310](v45, -1, -1);
    }

    (*(v44 + 8))(v42, v43);
    v50 = *(v0 + 112);
    (*(v0 + 104))(0);
  }

  else
  {
LABEL_8:
    type metadata accessor for BugCapture();
    static BugCapture.reportBug(type:subType:name:value:)(0x536174614443544DLL, 0xEC00000065726F74, 0xD000000000000010, 0x80000001B20D3580, 0xD00000000000002ALL, 0x80000001B20D35A0, 0xD000000000000011, 0x80000001B20D3A50);
    sub_1B20915B0();
    v14 = swift_allocError();
    *v15 = 3;
    swift_willThrow();
    v17 = *(v0 + 128);
    v16 = *(v0 + 136);
    v18 = *(v0 + 120);
    v19 = sub_1B205E940();
    (*(v17 + 16))(v16, v19, v18);
    v20 = v14;
    v21 = sub_1B20A9894();
    v22 = sub_1B20A9C84();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = v14;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_1B1F9F000, v21, v22, "Failed to fetch non sleep alarms with error: %@", v23, 0xCu);
      sub_1B20985B4(v24, &qword_1EB79F4B0, &qword_1B20B8ED8);
      MEMORY[0x1B2741310](v24, -1, -1);
      MEMORY[0x1B2741310](v23, -1, -1);
    }

    v28 = *(v0 + 128);
    v27 = *(v0 + 136);
    v29 = *(v0 + 112);
    v30 = *(v0 + 120);
    v31 = *(v0 + 104);

    (*(v28 + 8))(v27, v30);
    v31(0);
  }

  v33 = *(v0 + 136);
  v32 = *(v0 + 144);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1B2070F00(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v7 = sub_1B2071244;
  }

  else
  {
    v8 = *(v4 + 152);

    *(v4 + 176) = a1;
    v7 = sub_1B2071030;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B2071030()
{
  v25 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = sub_1B205E940();
  (*(v4 + 16))(v2, v5, v3);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C74();

  if (os_log_type_enabled(v6, v7))
  {
    v23 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    *(v0 + 88) = v1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4E0, &qword_1B20B8FD0);
    v12 = sub_1B20A9A84();
    v14 = sub_1B2061574(v12, v13, &v24);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1B1F9F000, v6, v7, "Fetched non sleep alarms: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1B2741310](v11, -1, -1);
    MEMORY[0x1B2741310](v10, -1, -1);

    (*(v8 + 8))(v23, v9);
  }

  else
  {
    v15 = *(v0 + 144);
    v16 = *(v0 + 120);
    v17 = *(v0 + 128);

    (*(v17 + 8))(v15, v16);
  }

  v18 = *(v0 + 112);
  (*(v0 + 104))(v1);

  v20 = *(v0 + 136);
  v19 = *(v0 + 144);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1B2071244()
{
  v1 = v0[19];

  v2 = v0[21];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  v6 = sub_1B205E940();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_1B20A9894();
  v9 = sub_1B20A9C84();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1B1F9F000, v8, v9, "Failed to fetch non sleep alarms with error: %@", v10, 0xCu);
    sub_1B20985B4(v11, &qword_1EB79F4B0, &qword_1B20B8ED8);
    MEMORY[0x1B2741310](v11, -1, -1);
    MEMORY[0x1B2741310](v10, -1, -1);
  }

  v15 = v0[16];
  v14 = v0[17];
  v16 = v0[14];
  v17 = v0[15];
  v18 = v0[13];

  (*(v15 + 8))(v14, v17);
  v18(0);

  v20 = v0[17];
  v19 = v0[18];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1B2071404(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 112) = a1;
  v3 = sub_1B20A9D34();
  *(v2 + 32) = v3;
  v4 = *(v3 - 8);
  *(v2 + 40) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  sub_1B20A9BA4();
  *(v2 + 56) = sub_1B20A9B94();
  v7 = sub_1B20A9B64();
  *(v2 + 64) = v7;
  *(v2 + 72) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B20714FC, v7, v6);
}

uint64_t sub_1B20714FC()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 112);
  *(v0 + 80) = [*(v4 + 112) viewContext];
  v6 = swift_allocObject();
  *(v0 + 88) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v7 = *(MEMORY[0x1E695D2C0] + 4);

  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4E0, &qword_1B20B8FD0);
  *v8 = v0;
  v8[1] = sub_1B2071660;
  v10 = *(v0 + 48);

  return MEMORY[0x1EEDB6538](v0 + 16, v10, sub_1B20948F8, v6, v9);
}

uint64_t sub_1B2071660()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 32);
  v9 = *v1;
  *(*v1 + 104) = v0;

  (*(v7 + 8))(v6, v8);

  v10 = *(v2 + 72);
  v11 = *(v2 + 64);
  if (v0)
  {
    v12 = sub_1B209888C;
  }

  else
  {
    v12 = sub_1B20988A4;
  }

  return MEMORY[0x1EEE6DFA0](v12, v11, v10);
}

uint64_t MTCDDataStore.getSleepAlarms(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = *&v2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v7 = v2;

  os_unfair_lock_lock(v6 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v6 + 4);
  v8 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v8)
  {
    v9 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v8(v10);
    sub_1B1FA6834(v8);
  }
}

uint64_t sub_1B2071970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = sub_1B20A98B4();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2071A40, 0, 0);
}

uint64_t sub_1B2071A40()
{
  v52 = v0;
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (!*(v1 + v2))
  {
    goto LABEL_8;
  }

  v3 = *(v0 + 96);
  *(v0 + 184) = 0;
  v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
  v5 = swift_allocObject();
  *(v5 + 16) = v0 + 184;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B2098884;
  *(v6 + 24) = v5;
  *(v0 + 48) = sub_1B20988D0;
  *(v0 + 56) = v6;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B20668F0;
  *(v0 + 40) = &block_descriptor_915;
  v7 = _Block_copy((v0 + 16));
  v8 = *(v0 + 56);
  v9 = v3;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
    return result;
  }

  v11 = *(v0 + 184);

  if (v11 == 1)
  {
    v12 = *(v1 + v2);
    *(v0 + 152) = v12;
    if (v12)
    {

      v13 = swift_task_alloc();
      *(v0 + 160) = v13;
      *v13 = v0;
      v13[1] = sub_1B2071FE8;

      return sub_1B2071404(1);
    }

    v35 = *(v0 + 144);
    v36 = *(v0 + 120);
    v37 = *(v0 + 128);
    v38 = sub_1B205E940();
    (*(v37 + 16))(v35, v38, v36);
    v39 = sub_1B20A9894();
    v40 = sub_1B20A9C74();

    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 144);
    v43 = *(v0 + 120);
    v44 = *(v0 + 128);
    if (v41)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v51 = v46;
      *v45 = 136315138;
      *(v0 + 88) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4E0, &qword_1B20B8FD0);
      v47 = sub_1B20A9A84();
      v49 = sub_1B2061574(v47, v48, &v51);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_1B1F9F000, v39, v40, "Fetched sleep alarms: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x1B2741310](v46, -1, -1);
      MEMORY[0x1B2741310](v45, -1, -1);
    }

    (*(v44 + 8))(v42, v43);
    v50 = *(v0 + 112);
    (*(v0 + 104))(0);
  }

  else
  {
LABEL_8:
    type metadata accessor for BugCapture();
    static BugCapture.reportBug(type:subType:name:value:)(0x536174614443544DLL, 0xEC00000065726F74, 0xD000000000000010, 0x80000001B20D3580, 0xD00000000000002ALL, 0x80000001B20D35A0, 0x7065656C53746567, 0xEE00736D72616C41);
    sub_1B20915B0();
    v14 = swift_allocError();
    *v15 = 3;
    swift_willThrow();
    v17 = *(v0 + 128);
    v16 = *(v0 + 136);
    v18 = *(v0 + 120);
    v19 = sub_1B205E940();
    (*(v17 + 16))(v16, v19, v18);
    v20 = v14;
    v21 = sub_1B20A9894();
    v22 = sub_1B20A9C84();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = v14;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_1B1F9F000, v21, v22, "Failed to fetch sleep alarms with error: %@", v23, 0xCu);
      sub_1B20985B4(v24, &qword_1EB79F4B0, &qword_1B20B8ED8);
      MEMORY[0x1B2741310](v24, -1, -1);
      MEMORY[0x1B2741310](v23, -1, -1);
    }

    v28 = *(v0 + 128);
    v27 = *(v0 + 136);
    v29 = *(v0 + 112);
    v30 = *(v0 + 120);
    v31 = *(v0 + 104);

    (*(v28 + 8))(v27, v30);
    v31(0);
  }

  v33 = *(v0 + 136);
  v32 = *(v0 + 144);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1B2071FE8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v7 = sub_1B207232C;
  }

  else
  {
    v8 = *(v4 + 152);

    *(v4 + 176) = a1;
    v7 = sub_1B2072118;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B2072118()
{
  v25 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = sub_1B205E940();
  (*(v4 + 16))(v2, v5, v3);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C74();

  if (os_log_type_enabled(v6, v7))
  {
    v23 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    *(v0 + 88) = v1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4E0, &qword_1B20B8FD0);
    v12 = sub_1B20A9A84();
    v14 = sub_1B2061574(v12, v13, &v24);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1B1F9F000, v6, v7, "Fetched sleep alarms: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1B2741310](v11, -1, -1);
    MEMORY[0x1B2741310](v10, -1, -1);

    (*(v8 + 8))(v23, v9);
  }

  else
  {
    v15 = *(v0 + 144);
    v16 = *(v0 + 120);
    v17 = *(v0 + 128);

    (*(v17 + 8))(v15, v16);
  }

  v18 = *(v0 + 112);
  (*(v0 + 104))(v1);

  v20 = *(v0 + 136);
  v19 = *(v0 + 144);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1B207232C()
{
  v1 = v0[19];

  v2 = v0[21];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  v6 = sub_1B205E940();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_1B20A9894();
  v9 = sub_1B20A9C84();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1B1F9F000, v8, v9, "Failed to fetch sleep alarms with error: %@", v10, 0xCu);
    sub_1B20985B4(v11, &qword_1EB79F4B0, &qword_1B20B8ED8);
    MEMORY[0x1B2741310](v11, -1, -1);
    MEMORY[0x1B2741310](v10, -1, -1);
  }

  v15 = v0[16];
  v14 = v0[17];
  v16 = v0[14];
  v17 = v0[15];
  v18 = v0[13];

  (*(v15 + 8))(v14, v17);
  v18(0);

  v20 = v0[17];
  v19 = v0[18];

  v21 = v0[1];

  return v21();
}

Swift::Void __swiftcall MTCDDataStore.addTimers(_:)(Swift::OpaquePointer a1)
{
  v3 = swift_allocObject();
  v3[2]._rawValue = v1;
  v3[3]._rawValue = a1._rawValue;
  v3[4]._rawValue = 0;
  v3[5]._rawValue = 0;
  v4 = *&v1[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v5 = v1;

  os_unfair_lock_lock(v4 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v4 + 4);
  v6 = *&v5[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v6)
  {
    v7 = *&v5[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v6(v8);
    sub_1B1FA6834(v6);
  }
}

uint64_t MTCDDataStore.addTimers(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v9 = v3;

  sub_1B209192C(a2);
  os_unfair_lock_lock(v8 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v8 + 4);
  v10 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v10)
  {
    v11 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v10(v12);
    sub_1B1FA6834(v10);
  }
}

uint64_t sub_1B207276C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_1B20A9874();
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v7 = *(v6 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v8 = sub_1B20A98B4();
  v4[19] = v8;
  v9 = *(v8 - 8);
  v4[20] = v9;
  v10 = *(v9 + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B20728A4, 0, 0);
}

size_t sub_1B20728A4()
{
  v94 = v0;
  v1 = *(v0 + 88);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    v3 = *(v0 + 88);
    *(v0 + 208) = 0;
    v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
    v5 = swift_allocObject();
    *(v5 + 16) = v0 + 208;
    *(v5 + 24) = v3;
    v6 = swift_allocObject();
    v6[2].isa = sub_1B2098884;
    v6[3].isa = v5;
    *(v0 + 48) = sub_1B20988D0;
    *(v0 + 56) = v6;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1B20668F0;
    *(v0 + 40) = &block_descriptor_903;
    v7 = _Block_copy((v0 + 16));
    v8 = *(v0 + 56);
    v9 = v3;

    dispatch_sync(v4, v7);
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_47;
    }

    v11 = *(v0 + 208);

    if (v11 == 1)
    {
      v12 = *(v1 + v2);
      *(v0 + 184) = v12;
      if (v12)
      {

        v13 = swift_task_alloc();
        *(v0 + 192) = v13;
        *v13 = v0;
        v13[1] = sub_1B20731A8;
        v14 = *(v0 + 96);

        return sub_1B20739D0(v14);
      }

      v54 = *(v0 + 176);
      v55 = *(v0 + 152);
      v6 = *(v0 + 160);
      v56 = *(v0 + 96);
      v57 = sub_1B205E940();
      (v6[2].isa)(v54, v57, v55);

      v58 = sub_1B20A9894();
      LOBYTE(v6) = sub_1B20A9C74();

      if (!os_log_type_enabled(v58, v6))
      {
        v71 = *(v0 + 176);
        v73 = *(v0 + 152);
        v72 = *(v0 + 160);

        (*(v72 + 8))(v71, v73);
LABEL_44:
        v81 = *(v0 + 104);
        if (v81)
        {
          v82 = *(v0 + 112);
          v81(0);
        }

        goto LABEL_24;
      }

      log = v58;
      isEscapingClosureAtFileLocation = *(v0 + 96);
      v7 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v92 = v88;
      *v7 = 136315138;
      if (!(isEscapingClosureAtFileLocation >> 62))
      {
        v59 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_32:
        v60 = MEMORY[0x1E69E7CC0];
        if (v59)
        {
          v87 = v6;
          v93 = MEMORY[0x1E69E7CC0];
          result = sub_1B2091C18(0, v59 & ~(v59 >> 63), 0);
          if (v59 < 0)
          {
            __break(1u);
            return result;
          }

          v61 = 0;
          v62 = *(v0 + 128);
          v60 = v93;
          v91 = *(v0 + 96) + 32;
          do
          {
            if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
            {
              v63 = MEMORY[0x1B27403C0](v61, *(v0 + 96));
            }

            else
            {
              v63 = *(v91 + 8 * v61);
            }

            v64 = v63;
            v65 = *(v0 + 144);
            v66 = [v63 timerID];
            sub_1B20A9864();

            v93 = v60;
            v68 = *(v60 + 16);
            v67 = *(v60 + 24);
            if (v68 >= v67 >> 1)
            {
              sub_1B2091C18(v67 > 1, v68 + 1, 1);
              v60 = v93;
            }

            v69 = *(v0 + 144);
            v70 = *(v0 + 120);
            ++v61;
            *(v60 + 16) = v68 + 1;
            (*(v62 + 32))(v60 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v68, v69, v70);
          }

          while (v59 != v61);
          LOBYTE(v6) = v87;
        }

        v74 = *(v0 + 176);
        v76 = *(v0 + 152);
        v75 = *(v0 + 160);
        v77 = MEMORY[0x1B2740030](v60, *(v0 + 120));
        v79 = v78;

        v80 = sub_1B2061574(v77, v79, &v92);

        *(v7 + 1) = v80;
        _os_log_impl(&dword_1B1F9F000, log, v6, "Saved timers into core data: %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v88);
        MEMORY[0x1B2741310](v88, -1, -1);
        MEMORY[0x1B2741310](v7, -1, -1);

        (*(v75 + 8))(v74, v76);
        goto LABEL_44;
      }

LABEL_51:
      if (*(v0 + 96) < 0)
      {
        v84 = *(v0 + 96);
      }

      v59 = sub_1B20A9DE4();
      goto LABEL_32;
    }
  }

  type metadata accessor for BugCapture();
  static BugCapture.reportBug(type:subType:name:value:)(0x536174614443544DLL, 0xEC00000065726F74, 0xD000000000000010, 0x80000001B20D3580, 0xD00000000000002ALL, 0x80000001B20D35A0, 0x72656D6954646461, 0xE900000000000073);
  sub_1B20915B0();
  v16 = swift_allocError();
  *v17 = 3;
  swift_willThrow();
  v18 = *(v0 + 160);
  v19 = *(v0 + 168);
  v20 = *(v0 + 152);
  v21 = *(v0 + 96);
  v22 = sub_1B205E940();
  (*(v18 + 16))(v19, v22, v20);

  v6 = sub_1B20A9894();
  v23 = sub_1B20A9C84();

  if (!os_log_type_enabled(v6, v23))
  {
    v36 = *(v0 + 160);
    v37 = *(v0 + 168);
    v38 = *(v0 + 152);

    (*(v36 + 8))(v37, v38);
    v39 = *(v0 + 104);
    if (!v39)
    {
      goto LABEL_23;
    }

LABEL_22:
    v40 = *(v0 + 112);
    v41 = v16;
    v39(v16);

    goto LABEL_23;
  }

  log = v16;
  isEscapingClosureAtFileLocation = *(v0 + 96);
  v7 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v92 = v8;
  *v7 = 136315138;
  LODWORD(v88) = v23;
  if (!(isEscapingClosureAtFileLocation >> 62))
  {
    v24 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_11;
  }

LABEL_47:
  if (*(v0 + 96) < 0)
  {
    v83 = *(v0 + 96);
  }

  v24 = sub_1B20A9DE4();
LABEL_11:
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v85 = v8;
    v86 = v7;
    v93 = MEMORY[0x1E69E7CC0];
    sub_1B2091C18(0, v24 & ~(v24 >> 63), 0);
    if (v24 < 0)
    {
      __break(1u);
      goto LABEL_51;
    }

    v26 = 0;
    v27 = *(v0 + 128);
    v25 = v93;
    v90 = *(v0 + 96) + 32;
    do
    {
      if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x1B27403C0](v26, *(v0 + 96));
      }

      else
      {
        v28 = *(v90 + 8 * v26);
      }

      v29 = v28;
      v30 = *(v0 + 136);
      v31 = [v28 timerID];
      sub_1B20A9864();

      v93 = v25;
      v33 = *(v25 + 16);
      v32 = *(v25 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1B2091C18(v32 > 1, v33 + 1, 1);
        v25 = v93;
      }

      v34 = *(v0 + 136);
      v35 = *(v0 + 120);
      ++v26;
      *(v25 + 16) = v33 + 1;
      (*(v27 + 32))(v25 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v33, v34, v35);
    }

    while (v24 != v26);
    v7 = v86;
    v8 = v85;
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 168);
  v49 = *(v0 + 152);
  v50 = MEMORY[0x1B2740030](v25, *(v0 + 120));
  v52 = v51;

  v53 = sub_1B2061574(v50, v52, &v92);

  *(v7 + 1) = v53;
  _os_log_impl(&dword_1B1F9F000, v6, v88, "Failed to save timers into core data: %s", v7, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v8);
  MEMORY[0x1B2741310](v8, -1, -1);
  MEMORY[0x1B2741310](v7, -1, -1);

  (*(v47 + 8))(v48, v49);
  v16 = log;
  v39 = *(v0 + 104);
  if (v39)
  {
    goto LABEL_22;
  }

LABEL_23:

LABEL_24:
  v43 = *(v0 + 168);
  v42 = *(v0 + 176);
  v45 = *(v0 + 136);
  v44 = *(v0 + 144);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_1B20731A8()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_1B207362C;
  }

  else
  {
    v5 = *(v2 + 184);

    v4 = sub_1B20732C4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

size_t sub_1B20732C4()
{
  v49 = v0;
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[12];
  v5 = sub_1B205E940();
  (*(v3 + 16))(v1, v5, v2);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C74();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[12];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v47 = v10;
    *v9 = 136315138;
    if (v8 >> 62)
    {
      if (v0[12] < 0)
      {
        v41 = v0[12];
      }

      v11 = sub_1B20A9DE4();
    }

    else
    {
      v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = MEMORY[0x1E69E7CC0];
    v44 = v10;
    log = v6;
    if (v11)
    {
      v48 = MEMORY[0x1E69E7CC0];
      result = sub_1B2091C18(0, v11 & ~(v11 >> 63), 0);
      if (v11 < 0)
      {
        __break(1u);
        return result;
      }

      v42 = v9;
      v43 = v7;
      v14 = 0;
      v15 = v0[16];
      v12 = v48;
      v46 = v0[12] + 32;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1B27403C0](v14, v0[12]);
        }

        else
        {
          v16 = *(v46 + 8 * v14);
        }

        v17 = v16;
        v18 = v0[18];
        v19 = [v16 timerID];
        sub_1B20A9864();

        v48 = v12;
        v21 = *(v12 + 16);
        v20 = *(v12 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1B2091C18(v20 > 1, v21 + 1, 1);
          v12 = v48;
        }

        v22 = v0[18];
        v23 = v0[15];
        ++v14;
        *(v12 + 16) = v21 + 1;
        (*(v15 + 32))(v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v21, v22, v23);
      }

      while (v11 != v14);
      v7 = v43;
      v9 = v42;
    }

    v27 = v0[22];
    v29 = v0[19];
    v28 = v0[20];
    v30 = MEMORY[0x1B2740030](v12, v0[15]);
    v32 = v31;

    v33 = sub_1B2061574(v30, v32, &v47);

    *(v9 + 4) = v33;
    _os_log_impl(&dword_1B1F9F000, log, v7, "Saved timers into core data: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x1B2741310](v44, -1, -1);
    MEMORY[0x1B2741310](v9, -1, -1);

    (*(v28 + 8))(v27, v29);
  }

  else
  {
    v24 = v0[22];
    v26 = v0[19];
    v25 = v0[20];

    (*(v25 + 8))(v24, v26);
  }

  v34 = v0[13];
  if (v34)
  {
    v35 = v0[14];
    v34(0);
  }

  v37 = v0[21];
  v36 = v0[22];
  v39 = v0[17];
  v38 = v0[18];

  v40 = v0[1];

  return v40();
}

size_t sub_1B207362C()
{
  v53 = v0;
  v1 = v0[23];

  v2 = v0[25];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[19];
  v6 = v0[12];
  v7 = sub_1B205E940();
  (*(v3 + 16))(v4, v7, v5);

  v8 = sub_1B20A9894();
  v9 = sub_1B20A9C84();

  if (!os_log_type_enabled(v8, v9))
  {
    v27 = v0[20];
    v28 = v0[21];
    v29 = v0[19];

    (*(v27 + 8))(v28, v29);
    v30 = v0[13];
    if (!v30)
    {
      goto LABEL_16;
    }

LABEL_15:
    v31 = v0[14];
    v32 = v2;
    v30(v2);

    goto LABEL_16;
  }

  v10 = v0[12];
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v51 = v12;
  *v11 = 136315138;
  if (v10 >> 62)
  {
    if (v0[12] < 0)
    {
      v45 = v0[12];
    }

    v13 = sub_1B20A9DE4();
  }

  else
  {
    v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x1E69E7CC0];
  v49 = v2;
  v48 = v9;
  v47 = v12;
  if (v13)
  {
    v52 = MEMORY[0x1E69E7CC0];
    result = sub_1B2091C18(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
      __break(1u);
      return result;
    }

    v46 = v11;
    v16 = 0;
    v17 = v0[16];
    v14 = v52;
    v18 = v10 & 0xC000000000000001;
    v50 = v0[12] + 32;
    do
    {
      if (v18)
      {
        v19 = MEMORY[0x1B27403C0](v16, v0[12]);
      }

      else
      {
        v19 = *(v50 + 8 * v16);
      }

      v20 = v19;
      v21 = v0[17];
      v22 = [v19 timerID];
      sub_1B20A9864();

      v52 = v14;
      v24 = *(v14 + 16);
      v23 = *(v14 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1B2091C18(v23 > 1, v24 + 1, 1);
        v14 = v52;
      }

      v25 = v0[17];
      v26 = v0[15];
      ++v16;
      *(v14 + 16) = v24 + 1;
      (*(v17 + 32))(v14 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v24, v25, v26);
    }

    while (v13 != v16);
    v11 = v46;
  }

  v38 = v0[20];
  v39 = v0[21];
  v40 = v0[19];
  v41 = MEMORY[0x1B2740030](v14, v0[15]);
  v43 = v42;

  v44 = sub_1B2061574(v41, v43, &v51);

  *(v11 + 4) = v44;
  _os_log_impl(&dword_1B1F9F000, v8, v48, "Failed to save timers into core data: %s", v11, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v47);
  MEMORY[0x1B2741310](v47, -1, -1);
  MEMORY[0x1B2741310](v11, -1, -1);

  (*(v38 + 8))(v39, v40);
  v2 = v49;
  v30 = v0[13];
  if (v30)
  {
    goto LABEL_15;
  }

LABEL_16:

  v34 = v0[21];
  v33 = v0[22];
  v36 = v0[17];
  v35 = v0[18];

  v37 = v0[1];

  return v37();
}

uint64_t sub_1B20739D0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B20A9D34();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2073A90, v1, 0);
}

uint64_t sub_1B2073A90()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = [*(v0[3] + 112) newBackgroundContext];
  v0[7] = v5;
  v6 = swift_allocObject();
  v0[8] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v7 = *(MEMORY[0x1E695D2C0] + 4);

  v5;
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_1B2069E10;
  v9 = v0[6];
  v10 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEDB6538](v8, v9, sub_1B2094BC0, v6, v10);
}

Swift::Void __swiftcall MTCDDataStore.updateTimers(_:)(Swift::OpaquePointer a1)
{
  v3 = swift_allocObject();
  v3[2]._rawValue = v1;
  v3[3]._rawValue = a1._rawValue;
  v3[4]._rawValue = 0;
  v3[5]._rawValue = 0;
  v4 = *&v1[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v5 = v1;

  os_unfair_lock_lock(v4 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v4 + 4);
  v6 = *&v5[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v6)
  {
    v7 = *&v5[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v6(v8);
    sub_1B1FA6834(v6);
  }
}

uint64_t MTCDDataStore.updateTimers(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v9 = v3;

  sub_1B209192C(a2);
  os_unfair_lock_lock(v8 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v8 + 4);
  v10 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v10)
  {
    v11 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v10(v12);
    sub_1B1FA6834(v10);
  }
}

uint64_t sub_1B2073F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_1B20A9874();
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v7 = *(v6 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v8 = sub_1B20A98B4();
  v4[19] = v8;
  v9 = *(v8 - 8);
  v4[20] = v9;
  v10 = *(v9 + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2074070, 0, 0);
}

size_t sub_1B2074070()
{
  v94 = v0;
  v1 = *(v0 + 88);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    v3 = *(v0 + 88);
    *(v0 + 208) = 0;
    v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
    v5 = swift_allocObject();
    *(v5 + 16) = v0 + 208;
    *(v5 + 24) = v3;
    v6 = swift_allocObject();
    v6[2].isa = sub_1B2098884;
    v6[3].isa = v5;
    *(v0 + 48) = sub_1B20988D0;
    *(v0 + 56) = v6;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1B20668F0;
    *(v0 + 40) = &block_descriptor_891;
    v7 = _Block_copy((v0 + 16));
    v8 = *(v0 + 56);
    v9 = v3;

    dispatch_sync(v4, v7);
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_47;
    }

    v11 = *(v0 + 208);

    if (v11 == 1)
    {
      v12 = *(v1 + v2);
      *(v0 + 184) = v12;
      if (v12)
      {

        v13 = swift_task_alloc();
        *(v0 + 192) = v13;
        *v13 = v0;
        v13[1] = sub_1B2074978;
        v14 = *(v0 + 96);

        return sub_1B20751A0(v14);
      }

      v54 = *(v0 + 176);
      v55 = *(v0 + 152);
      v6 = *(v0 + 160);
      v56 = *(v0 + 96);
      v57 = sub_1B205E940();
      (v6[2].isa)(v54, v57, v55);

      v58 = sub_1B20A9894();
      LOBYTE(v6) = sub_1B20A9C74();

      if (!os_log_type_enabled(v58, v6))
      {
        v71 = *(v0 + 176);
        v73 = *(v0 + 152);
        v72 = *(v0 + 160);

        (*(v72 + 8))(v71, v73);
LABEL_44:
        v81 = *(v0 + 104);
        if (v81)
        {
          v82 = *(v0 + 112);
          v81(0);
        }

        goto LABEL_24;
      }

      log = v58;
      isEscapingClosureAtFileLocation = *(v0 + 96);
      v7 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v92 = v88;
      *v7 = 136315138;
      if (!(isEscapingClosureAtFileLocation >> 62))
      {
        v59 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_32:
        v60 = MEMORY[0x1E69E7CC0];
        if (v59)
        {
          v87 = v6;
          v93 = MEMORY[0x1E69E7CC0];
          result = sub_1B2091C18(0, v59 & ~(v59 >> 63), 0);
          if (v59 < 0)
          {
            __break(1u);
            return result;
          }

          v61 = 0;
          v62 = *(v0 + 128);
          v60 = v93;
          v91 = *(v0 + 96) + 32;
          do
          {
            if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
            {
              v63 = MEMORY[0x1B27403C0](v61, *(v0 + 96));
            }

            else
            {
              v63 = *(v91 + 8 * v61);
            }

            v64 = v63;
            v65 = *(v0 + 144);
            v66 = [v63 timerID];
            sub_1B20A9864();

            v93 = v60;
            v68 = *(v60 + 16);
            v67 = *(v60 + 24);
            if (v68 >= v67 >> 1)
            {
              sub_1B2091C18(v67 > 1, v68 + 1, 1);
              v60 = v93;
            }

            v69 = *(v0 + 144);
            v70 = *(v0 + 120);
            ++v61;
            *(v60 + 16) = v68 + 1;
            (*(v62 + 32))(v60 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v68, v69, v70);
          }

          while (v59 != v61);
          LOBYTE(v6) = v87;
        }

        v74 = *(v0 + 176);
        v76 = *(v0 + 152);
        v75 = *(v0 + 160);
        v77 = MEMORY[0x1B2740030](v60, *(v0 + 120));
        v79 = v78;

        v80 = sub_1B2061574(v77, v79, &v92);

        *(v7 + 1) = v80;
        _os_log_impl(&dword_1B1F9F000, log, v6, "Updated timers in core data: %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v88);
        MEMORY[0x1B2741310](v88, -1, -1);
        MEMORY[0x1B2741310](v7, -1, -1);

        (*(v75 + 8))(v74, v76);
        goto LABEL_44;
      }

LABEL_51:
      if (*(v0 + 96) < 0)
      {
        v84 = *(v0 + 96);
      }

      v59 = sub_1B20A9DE4();
      goto LABEL_32;
    }
  }

  type metadata accessor for BugCapture();
  static BugCapture.reportBug(type:subType:name:value:)(0x536174614443544DLL, 0xEC00000065726F74, 0xD000000000000010, 0x80000001B20D3580, 0xD00000000000002ALL, 0x80000001B20D35A0, 0x6954657461647075, 0xEC0000007372656DLL);
  sub_1B20915B0();
  v16 = swift_allocError();
  *v17 = 3;
  swift_willThrow();
  v18 = *(v0 + 160);
  v19 = *(v0 + 168);
  v20 = *(v0 + 152);
  v21 = *(v0 + 96);
  v22 = sub_1B205E940();
  (*(v18 + 16))(v19, v22, v20);

  v6 = sub_1B20A9894();
  v23 = sub_1B20A9C84();

  if (!os_log_type_enabled(v6, v23))
  {
    v36 = *(v0 + 160);
    v37 = *(v0 + 168);
    v38 = *(v0 + 152);

    (*(v36 + 8))(v37, v38);
    v39 = *(v0 + 104);
    if (!v39)
    {
      goto LABEL_23;
    }

LABEL_22:
    v40 = *(v0 + 112);
    v41 = v16;
    v39(v16);

    goto LABEL_23;
  }

  log = v16;
  isEscapingClosureAtFileLocation = *(v0 + 96);
  v7 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v92 = v8;
  *v7 = 136315138;
  LODWORD(v88) = v23;
  if (!(isEscapingClosureAtFileLocation >> 62))
  {
    v24 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_11;
  }

LABEL_47:
  if (*(v0 + 96) < 0)
  {
    v83 = *(v0 + 96);
  }

  v24 = sub_1B20A9DE4();
LABEL_11:
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v85 = v8;
    v86 = v7;
    v93 = MEMORY[0x1E69E7CC0];
    sub_1B2091C18(0, v24 & ~(v24 >> 63), 0);
    if (v24 < 0)
    {
      __break(1u);
      goto LABEL_51;
    }

    v26 = 0;
    v27 = *(v0 + 128);
    v25 = v93;
    v90 = *(v0 + 96) + 32;
    do
    {
      if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x1B27403C0](v26, *(v0 + 96));
      }

      else
      {
        v28 = *(v90 + 8 * v26);
      }

      v29 = v28;
      v30 = *(v0 + 136);
      v31 = [v28 timerID];
      sub_1B20A9864();

      v93 = v25;
      v33 = *(v25 + 16);
      v32 = *(v25 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1B2091C18(v32 > 1, v33 + 1, 1);
        v25 = v93;
      }

      v34 = *(v0 + 136);
      v35 = *(v0 + 120);
      ++v26;
      *(v25 + 16) = v33 + 1;
      (*(v27 + 32))(v25 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v33, v34, v35);
    }

    while (v24 != v26);
    v7 = v86;
    v8 = v85;
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 168);
  v49 = *(v0 + 152);
  v50 = MEMORY[0x1B2740030](v25, *(v0 + 120));
  v52 = v51;

  v53 = sub_1B2061574(v50, v52, &v92);

  *(v7 + 1) = v53;
  _os_log_impl(&dword_1B1F9F000, v6, v88, "Failed to update timers in core data: %s", v7, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v8);
  MEMORY[0x1B2741310](v8, -1, -1);
  MEMORY[0x1B2741310](v7, -1, -1);

  (*(v47 + 8))(v48, v49);
  v16 = log;
  v39 = *(v0 + 104);
  if (v39)
  {
    goto LABEL_22;
  }

LABEL_23:

LABEL_24:
  v43 = *(v0 + 168);
  v42 = *(v0 + 176);
  v45 = *(v0 + 136);
  v44 = *(v0 + 144);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_1B2074978()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_1B2074DFC;
  }

  else
  {
    v5 = *(v2 + 184);

    v4 = sub_1B2074A94;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

size_t sub_1B2074A94()
{
  v49 = v0;
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[12];
  v5 = sub_1B205E940();
  (*(v3 + 16))(v1, v5, v2);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C74();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[12];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v47 = v10;
    *v9 = 136315138;
    if (v8 >> 62)
    {
      if (v0[12] < 0)
      {
        v41 = v0[12];
      }

      v11 = sub_1B20A9DE4();
    }

    else
    {
      v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = MEMORY[0x1E69E7CC0];
    v44 = v10;
    log = v6;
    if (v11)
    {
      v48 = MEMORY[0x1E69E7CC0];
      result = sub_1B2091C18(0, v11 & ~(v11 >> 63), 0);
      if (v11 < 0)
      {
        __break(1u);
        return result;
      }

      v42 = v9;
      v43 = v7;
      v14 = 0;
      v15 = v0[16];
      v12 = v48;
      v46 = v0[12] + 32;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1B27403C0](v14, v0[12]);
        }

        else
        {
          v16 = *(v46 + 8 * v14);
        }

        v17 = v16;
        v18 = v0[18];
        v19 = [v16 timerID];
        sub_1B20A9864();

        v48 = v12;
        v21 = *(v12 + 16);
        v20 = *(v12 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1B2091C18(v20 > 1, v21 + 1, 1);
          v12 = v48;
        }

        v22 = v0[18];
        v23 = v0[15];
        ++v14;
        *(v12 + 16) = v21 + 1;
        (*(v15 + 32))(v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v21, v22, v23);
      }

      while (v11 != v14);
      v7 = v43;
      v9 = v42;
    }

    v27 = v0[22];
    v29 = v0[19];
    v28 = v0[20];
    v30 = MEMORY[0x1B2740030](v12, v0[15]);
    v32 = v31;

    v33 = sub_1B2061574(v30, v32, &v47);

    *(v9 + 4) = v33;
    _os_log_impl(&dword_1B1F9F000, log, v7, "Updated timers in core data: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x1B2741310](v44, -1, -1);
    MEMORY[0x1B2741310](v9, -1, -1);

    (*(v28 + 8))(v27, v29);
  }

  else
  {
    v24 = v0[22];
    v26 = v0[19];
    v25 = v0[20];

    (*(v25 + 8))(v24, v26);
  }

  v34 = v0[13];
  if (v34)
  {
    v35 = v0[14];
    v34(0);
  }

  v37 = v0[21];
  v36 = v0[22];
  v39 = v0[17];
  v38 = v0[18];

  v40 = v0[1];

  return v40();
}

size_t sub_1B2074DFC()
{
  v53 = v0;
  v1 = v0[23];

  v2 = v0[25];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[19];
  v6 = v0[12];
  v7 = sub_1B205E940();
  (*(v3 + 16))(v4, v7, v5);

  v8 = sub_1B20A9894();
  v9 = sub_1B20A9C84();

  if (!os_log_type_enabled(v8, v9))
  {
    v27 = v0[20];
    v28 = v0[21];
    v29 = v0[19];

    (*(v27 + 8))(v28, v29);
    v30 = v0[13];
    if (!v30)
    {
      goto LABEL_16;
    }

LABEL_15:
    v31 = v0[14];
    v32 = v2;
    v30(v2);

    goto LABEL_16;
  }

  v10 = v0[12];
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v51 = v12;
  *v11 = 136315138;
  if (v10 >> 62)
  {
    if (v0[12] < 0)
    {
      v45 = v0[12];
    }

    v13 = sub_1B20A9DE4();
  }

  else
  {
    v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x1E69E7CC0];
  v49 = v2;
  v48 = v9;
  v47 = v12;
  if (v13)
  {
    v52 = MEMORY[0x1E69E7CC0];
    result = sub_1B2091C18(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
      __break(1u);
      return result;
    }

    v46 = v11;
    v16 = 0;
    v17 = v0[16];
    v14 = v52;
    v18 = v10 & 0xC000000000000001;
    v50 = v0[12] + 32;
    do
    {
      if (v18)
      {
        v19 = MEMORY[0x1B27403C0](v16, v0[12]);
      }

      else
      {
        v19 = *(v50 + 8 * v16);
      }

      v20 = v19;
      v21 = v0[17];
      v22 = [v19 timerID];
      sub_1B20A9864();

      v52 = v14;
      v24 = *(v14 + 16);
      v23 = *(v14 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1B2091C18(v23 > 1, v24 + 1, 1);
        v14 = v52;
      }

      v25 = v0[17];
      v26 = v0[15];
      ++v16;
      *(v14 + 16) = v24 + 1;
      (*(v17 + 32))(v14 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v24, v25, v26);
    }

    while (v13 != v16);
    v11 = v46;
  }

  v38 = v0[20];
  v39 = v0[21];
  v40 = v0[19];
  v41 = MEMORY[0x1B2740030](v14, v0[15]);
  v43 = v42;

  v44 = sub_1B2061574(v41, v43, &v51);

  *(v11 + 4) = v44;
  _os_log_impl(&dword_1B1F9F000, v8, v48, "Failed to update timers in core data: %s", v11, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v47);
  MEMORY[0x1B2741310](v47, -1, -1);
  MEMORY[0x1B2741310](v11, -1, -1);

  (*(v38 + 8))(v39, v40);
  v2 = v49;
  v30 = v0[13];
  if (v30)
  {
    goto LABEL_15;
  }

LABEL_16:

  v34 = v0[21];
  v33 = v0[22];
  v36 = v0[17];
  v35 = v0[18];

  v37 = v0[1];

  return v37();
}

uint64_t sub_1B20751A0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B20A9D34();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2075260, v1, 0);
}

uint64_t sub_1B2075260()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  type metadata accessor for MTCDTimer();
  v6 = static MTCDTimer.fetchRequest()();
  v0[7] = v6;
  v7 = sub_1B2094E9C(v5, &selRef_timerIDString);
  [v6 setPredicate_];

  v8 = [*(v4 + 112) newBackgroundContext];
  v0[8] = v8;
  v9 = swift_allocObject();
  v0[9] = v9;
  v9[2] = v8;
  v9[3] = v6;
  v9[4] = v5;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v10 = *(MEMORY[0x1E695D2C0] + 4);
  v8;
  v11 = v6;

  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_1B20753FC;
  v13 = v0[6];
  v14 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEDB6538](v12, v13, sub_1B20950AC, v9, v14);
}

uint64_t sub_1B20753FC()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *v1;
  *(*v1 + 88) = v0;

  (*(v6 + 8))(v5, v7);

  v9 = *(v2 + 24);
  if (v0)
  {
    v10 = sub_1B2098974;
  }

  else
  {
    v10 = sub_1B20988CC;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

Swift::Void __swiftcall MTCDDataStore.deleteTimers(_:)(Swift::OpaquePointer a1)
{
  v3 = swift_allocObject();
  v3[2]._rawValue = v1;
  v3[3]._rawValue = a1._rawValue;
  v3[4]._rawValue = 0;
  v3[5]._rawValue = 0;
  v4 = *&v1[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v5 = v1;

  os_unfair_lock_lock(v4 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v4 + 4);
  v6 = *&v5[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v6)
  {
    v7 = *&v5[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v6(v8);
    sub_1B1FA6834(v6);
  }
}

uint64_t MTCDDataStore.deleteTimers(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v9 = v3;

  sub_1B209192C(a2);
  os_unfair_lock_lock(v8 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v8 + 4);
  v10 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v10)
  {
    v11 = *&v9[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v10(v12);
    sub_1B1FA6834(v10);
  }
}

uint64_t sub_1B2075908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_1B20A9874();
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v7 = *(v6 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v8 = sub_1B20A98B4();
  v4[19] = v8;
  v9 = *(v8 - 8);
  v4[20] = v9;
  v10 = *(v9 + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2075A40, 0, 0);
}

size_t sub_1B2075A40()
{
  v94 = v0;
  v1 = *(v0 + 88);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    v3 = *(v0 + 88);
    *(v0 + 208) = 0;
    v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
    v5 = swift_allocObject();
    *(v5 + 16) = v0 + 208;
    *(v5 + 24) = v3;
    v6 = swift_allocObject();
    v6[2].isa = sub_1B2098884;
    v6[3].isa = v5;
    *(v0 + 48) = sub_1B20988D0;
    *(v0 + 56) = v6;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1B20668F0;
    *(v0 + 40) = &block_descriptor_879;
    v7 = _Block_copy((v0 + 16));
    v8 = *(v0 + 56);
    v9 = v3;

    dispatch_sync(v4, v7);
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_47;
    }

    v11 = *(v0 + 208);

    if (v11 == 1)
    {
      v12 = *(v1 + v2);
      *(v0 + 184) = v12;
      if (v12)
      {

        v13 = swift_task_alloc();
        *(v0 + 192) = v13;
        *v13 = v0;
        v13[1] = sub_1B2076348;
        v14 = *(v0 + 96);

        return sub_1B2076B70(v14);
      }

      v54 = *(v0 + 176);
      v55 = *(v0 + 152);
      v6 = *(v0 + 160);
      v56 = *(v0 + 96);
      v57 = sub_1B205E940();
      (v6[2].isa)(v54, v57, v55);

      v58 = sub_1B20A9894();
      LOBYTE(v6) = sub_1B20A9C74();

      if (!os_log_type_enabled(v58, v6))
      {
        v71 = *(v0 + 176);
        v73 = *(v0 + 152);
        v72 = *(v0 + 160);

        (*(v72 + 8))(v71, v73);
LABEL_44:
        v81 = *(v0 + 104);
        if (v81)
        {
          v82 = *(v0 + 112);
          v81(0);
        }

        goto LABEL_24;
      }

      log = v58;
      isEscapingClosureAtFileLocation = *(v0 + 96);
      v7 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v92 = v88;
      *v7 = 136315138;
      if (!(isEscapingClosureAtFileLocation >> 62))
      {
        v59 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_32:
        v60 = MEMORY[0x1E69E7CC0];
        if (v59)
        {
          v87 = v6;
          v93 = MEMORY[0x1E69E7CC0];
          result = sub_1B2091C18(0, v59 & ~(v59 >> 63), 0);
          if (v59 < 0)
          {
            __break(1u);
            return result;
          }

          v61 = 0;
          v62 = *(v0 + 128);
          v60 = v93;
          v91 = *(v0 + 96) + 32;
          do
          {
            if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
            {
              v63 = MEMORY[0x1B27403C0](v61, *(v0 + 96));
            }

            else
            {
              v63 = *(v91 + 8 * v61);
            }

            v64 = v63;
            v65 = *(v0 + 144);
            v66 = [v63 timerID];
            sub_1B20A9864();

            v93 = v60;
            v68 = *(v60 + 16);
            v67 = *(v60 + 24);
            if (v68 >= v67 >> 1)
            {
              sub_1B2091C18(v67 > 1, v68 + 1, 1);
              v60 = v93;
            }

            v69 = *(v0 + 144);
            v70 = *(v0 + 120);
            ++v61;
            *(v60 + 16) = v68 + 1;
            (*(v62 + 32))(v60 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v68, v69, v70);
          }

          while (v59 != v61);
          LOBYTE(v6) = v87;
        }

        v74 = *(v0 + 176);
        v76 = *(v0 + 152);
        v75 = *(v0 + 160);
        v77 = MEMORY[0x1B2740030](v60, *(v0 + 120));
        v79 = v78;

        v80 = sub_1B2061574(v77, v79, &v92);

        *(v7 + 1) = v80;
        _os_log_impl(&dword_1B1F9F000, log, v6, "Deleted timers from core data: %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v88);
        MEMORY[0x1B2741310](v88, -1, -1);
        MEMORY[0x1B2741310](v7, -1, -1);

        (*(v75 + 8))(v74, v76);
        goto LABEL_44;
      }

LABEL_51:
      if (*(v0 + 96) < 0)
      {
        v84 = *(v0 + 96);
      }

      v59 = sub_1B20A9DE4();
      goto LABEL_32;
    }
  }

  type metadata accessor for BugCapture();
  static BugCapture.reportBug(type:subType:name:value:)(0x536174614443544DLL, 0xEC00000065726F74, 0xD000000000000010, 0x80000001B20D3580, 0xD00000000000002ALL, 0x80000001B20D35A0, 0x69546574656C6564, 0xEC0000007372656DLL);
  sub_1B20915B0();
  v16 = swift_allocError();
  *v17 = 3;
  swift_willThrow();
  v18 = *(v0 + 160);
  v19 = *(v0 + 168);
  v20 = *(v0 + 152);
  v21 = *(v0 + 96);
  v22 = sub_1B205E940();
  (*(v18 + 16))(v19, v22, v20);

  v6 = sub_1B20A9894();
  v23 = sub_1B20A9C84();

  if (!os_log_type_enabled(v6, v23))
  {
    v36 = *(v0 + 160);
    v37 = *(v0 + 168);
    v38 = *(v0 + 152);

    (*(v36 + 8))(v37, v38);
    v39 = *(v0 + 104);
    if (!v39)
    {
      goto LABEL_23;
    }

LABEL_22:
    v40 = *(v0 + 112);
    v41 = v16;
    v39(v16);

    goto LABEL_23;
  }

  log = v16;
  isEscapingClosureAtFileLocation = *(v0 + 96);
  v7 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v92 = v8;
  *v7 = 136315138;
  LODWORD(v88) = v23;
  if (!(isEscapingClosureAtFileLocation >> 62))
  {
    v24 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_11;
  }

LABEL_47:
  if (*(v0 + 96) < 0)
  {
    v83 = *(v0 + 96);
  }

  v24 = sub_1B20A9DE4();
LABEL_11:
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v85 = v8;
    v86 = v7;
    v93 = MEMORY[0x1E69E7CC0];
    sub_1B2091C18(0, v24 & ~(v24 >> 63), 0);
    if (v24 < 0)
    {
      __break(1u);
      goto LABEL_51;
    }

    v26 = 0;
    v27 = *(v0 + 128);
    v25 = v93;
    v90 = *(v0 + 96) + 32;
    do
    {
      if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x1B27403C0](v26, *(v0 + 96));
      }

      else
      {
        v28 = *(v90 + 8 * v26);
      }

      v29 = v28;
      v30 = *(v0 + 136);
      v31 = [v28 timerID];
      sub_1B20A9864();

      v93 = v25;
      v33 = *(v25 + 16);
      v32 = *(v25 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1B2091C18(v32 > 1, v33 + 1, 1);
        v25 = v93;
      }

      v34 = *(v0 + 136);
      v35 = *(v0 + 120);
      ++v26;
      *(v25 + 16) = v33 + 1;
      (*(v27 + 32))(v25 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v33, v34, v35);
    }

    while (v24 != v26);
    v7 = v86;
    v8 = v85;
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 168);
  v49 = *(v0 + 152);
  v50 = MEMORY[0x1B2740030](v25, *(v0 + 120));
  v52 = v51;

  v53 = sub_1B2061574(v50, v52, &v92);

  *(v7 + 1) = v53;
  _os_log_impl(&dword_1B1F9F000, v6, v88, "Failed to delete timers from core data: %s", v7, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v8);
  MEMORY[0x1B2741310](v8, -1, -1);
  MEMORY[0x1B2741310](v7, -1, -1);

  (*(v47 + 8))(v48, v49);
  v16 = log;
  v39 = *(v0 + 104);
  if (v39)
  {
    goto LABEL_22;
  }

LABEL_23:

LABEL_24:
  v43 = *(v0 + 168);
  v42 = *(v0 + 176);
  v45 = *(v0 + 136);
  v44 = *(v0 + 144);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_1B2076348()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_1B20767CC;
  }

  else
  {
    v5 = *(v2 + 184);

    v4 = sub_1B2076464;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

size_t sub_1B2076464()
{
  v49 = v0;
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[12];
  v5 = sub_1B205E940();
  (*(v3 + 16))(v1, v5, v2);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C74();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[12];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v47 = v10;
    *v9 = 136315138;
    if (v8 >> 62)
    {
      if (v0[12] < 0)
      {
        v41 = v0[12];
      }

      v11 = sub_1B20A9DE4();
    }

    else
    {
      v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = MEMORY[0x1E69E7CC0];
    v44 = v10;
    log = v6;
    if (v11)
    {
      v48 = MEMORY[0x1E69E7CC0];
      result = sub_1B2091C18(0, v11 & ~(v11 >> 63), 0);
      if (v11 < 0)
      {
        __break(1u);
        return result;
      }

      v42 = v9;
      v43 = v7;
      v14 = 0;
      v15 = v0[16];
      v12 = v48;
      v46 = v0[12] + 32;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1B27403C0](v14, v0[12]);
        }

        else
        {
          v16 = *(v46 + 8 * v14);
        }

        v17 = v16;
        v18 = v0[18];
        v19 = [v16 timerID];
        sub_1B20A9864();

        v48 = v12;
        v21 = *(v12 + 16);
        v20 = *(v12 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1B2091C18(v20 > 1, v21 + 1, 1);
          v12 = v48;
        }

        v22 = v0[18];
        v23 = v0[15];
        ++v14;
        *(v12 + 16) = v21 + 1;
        (*(v15 + 32))(v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v21, v22, v23);
      }

      while (v11 != v14);
      v7 = v43;
      v9 = v42;
    }

    v27 = v0[22];
    v29 = v0[19];
    v28 = v0[20];
    v30 = MEMORY[0x1B2740030](v12, v0[15]);
    v32 = v31;

    v33 = sub_1B2061574(v30, v32, &v47);

    *(v9 + 4) = v33;
    _os_log_impl(&dword_1B1F9F000, log, v7, "Deleted timers from core data: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x1B2741310](v44, -1, -1);
    MEMORY[0x1B2741310](v9, -1, -1);

    (*(v28 + 8))(v27, v29);
  }

  else
  {
    v24 = v0[22];
    v26 = v0[19];
    v25 = v0[20];

    (*(v25 + 8))(v24, v26);
  }

  v34 = v0[13];
  if (v34)
  {
    v35 = v0[14];
    v34(0);
  }

  v37 = v0[21];
  v36 = v0[22];
  v39 = v0[17];
  v38 = v0[18];

  v40 = v0[1];

  return v40();
}

size_t sub_1B20767CC()
{
  v53 = v0;
  v1 = v0[23];

  v2 = v0[25];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[19];
  v6 = v0[12];
  v7 = sub_1B205E940();
  (*(v3 + 16))(v4, v7, v5);

  v8 = sub_1B20A9894();
  v9 = sub_1B20A9C84();

  if (!os_log_type_enabled(v8, v9))
  {
    v27 = v0[20];
    v28 = v0[21];
    v29 = v0[19];

    (*(v27 + 8))(v28, v29);
    v30 = v0[13];
    if (!v30)
    {
      goto LABEL_16;
    }

LABEL_15:
    v31 = v0[14];
    v32 = v2;
    v30(v2);

    goto LABEL_16;
  }

  v10 = v0[12];
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v51 = v12;
  *v11 = 136315138;
  if (v10 >> 62)
  {
    if (v0[12] < 0)
    {
      v45 = v0[12];
    }

    v13 = sub_1B20A9DE4();
  }

  else
  {
    v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x1E69E7CC0];
  v49 = v2;
  v48 = v9;
  v47 = v12;
  if (v13)
  {
    v52 = MEMORY[0x1E69E7CC0];
    result = sub_1B2091C18(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
      __break(1u);
      return result;
    }

    v46 = v11;
    v16 = 0;
    v17 = v0[16];
    v14 = v52;
    v18 = v10 & 0xC000000000000001;
    v50 = v0[12] + 32;
    do
    {
      if (v18)
      {
        v19 = MEMORY[0x1B27403C0](v16, v0[12]);
      }

      else
      {
        v19 = *(v50 + 8 * v16);
      }

      v20 = v19;
      v21 = v0[17];
      v22 = [v19 timerID];
      sub_1B20A9864();

      v52 = v14;
      v24 = *(v14 + 16);
      v23 = *(v14 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1B2091C18(v23 > 1, v24 + 1, 1);
        v14 = v52;
      }

      v25 = v0[17];
      v26 = v0[15];
      ++v16;
      *(v14 + 16) = v24 + 1;
      (*(v17 + 32))(v14 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v24, v25, v26);
    }

    while (v13 != v16);
    v11 = v46;
  }

  v38 = v0[20];
  v39 = v0[21];
  v40 = v0[19];
  v41 = MEMORY[0x1B2740030](v14, v0[15]);
  v43 = v42;

  v44 = sub_1B2061574(v41, v43, &v51);

  *(v11 + 4) = v44;
  _os_log_impl(&dword_1B1F9F000, v8, v48, "Failed to delete timers from core data: %s", v11, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v47);
  MEMORY[0x1B2741310](v47, -1, -1);
  MEMORY[0x1B2741310](v11, -1, -1);

  (*(v38 + 8))(v39, v40);
  v2 = v49;
  v30 = v0[13];
  if (v30)
  {
    goto LABEL_15;
  }

LABEL_16:

  v34 = v0[21];
  v33 = v0[22];
  v36 = v0[17];
  v35 = v0[18];

  v37 = v0[1];

  return v37();
}

uint64_t sub_1B2076B70(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B20A9D34();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2076C30, v1, 0);
}

uint64_t sub_1B2076C30()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = type metadata accessor for MTCDTimer();
  v7 = (*(v6 + 88))();
  v0[7] = v7;
  v8 = sub_1B2094E9C(v5, &selRef_timerIDString);
  [v7 setPredicate_];

  v9 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];
  v0[8] = v9;
  v10 = [*(v4 + 112) newBackgroundContext];
  v0[9] = v10;
  v11 = swift_allocObject();
  v0[10] = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v12 = *(MEMORY[0x1E695D2C0] + 4);
  v10;
  v13 = v9;
  v14 = swift_task_alloc();
  v0[11] = v14;
  *v14 = v0;
  v14[1] = sub_1B2076DEC;
  v15 = v0[6];
  v16 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEDB6538](v14, v15, sub_1B209893C, v11, v16);
}

uint64_t sub_1B2076DEC()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *v1;
  *(*v1 + 96) = v0;

  (*(v6 + 8))(v5, v7);

  v9 = *(v2 + 24);
  if (v0)
  {
    v10 = sub_1B20988C4;
  }

  else
  {
    v10 = sub_1B209887C;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

Swift::Void __swiftcall MTCDDataStore.deleteAllTimers()()
{
  v1 = swift_allocObject();
  v1[3] = 0;
  v1[4] = 0;
  v1[2] = v0;
  v2 = *&v0[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v3 = v0;
  os_unfair_lock_lock(v2 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v2 + 4);
  v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v4)
  {
    v5 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v4(v6);
    sub_1B1FA6834(v4);
  }
}

uint64_t MTCDDataStore.deleteAllTimers(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = *&v2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v7 = v2;
  sub_1B209192C(a1);
  os_unfair_lock_lock(v6 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v6 + 4);
  v8 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v8)
  {
    v9 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v8(v10);
    sub_1B1FA6834(v8);
  }
}

uint64_t sub_1B20772C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  v4 = sub_1B20A98B4();
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v6 = *(v5 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2077398, 0, 0);
}

uint64_t sub_1B2077398()
{
  v1 = *(v0 + 88);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (!*(v1 + v2))
  {
    goto LABEL_8;
  }

  v3 = *(v0 + 88);
  *(v0 + 168) = 0;
  v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
  v5 = swift_allocObject();
  *(v5 + 16) = v0 + 168;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B2098884;
  *(v6 + 24) = v5;
  *(v0 + 48) = sub_1B20988D0;
  *(v0 + 56) = v6;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B20668F0;
  *(v0 + 40) = &block_descriptor_867;
  v7 = _Block_copy((v0 + 16));
  v8 = *(v0 + 56);
  v9 = v3;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
    return result;
  }

  v11 = *(v0 + 168);

  if (v11 == 1)
  {
    v12 = *(v1 + v2);
    *(v0 + 144) = v12;
    if (v12)
    {

      v13 = swift_task_alloc();
      *(v0 + 152) = v13;
      *v13 = v0;
      v13[1] = sub_1B2077870;

      return sub_1B2077C38();
    }

    v33 = *(v0 + 136);
    v34 = *(v0 + 112);
    v35 = *(v0 + 120);
    v36 = sub_1B205E940();
    (*(v35 + 16))(v33, v36, v34);
    v37 = sub_1B20A9894();
    v38 = sub_1B20A9C74();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1B1F9F000, v37, v38, "Deleted all timers from core data", v39, 2u);
      MEMORY[0x1B2741310](v39, -1, -1);
    }

    v40 = *(v0 + 136);
    v41 = *(v0 + 112);
    v42 = *(v0 + 120);
    v43 = *(v0 + 96);

    (*(v42 + 8))(v40, v41);
    if (v43)
    {
      v44 = *(v0 + 104);
      (*(v0 + 96))(0);
    }
  }

  else
  {
LABEL_8:
    type metadata accessor for BugCapture();
    static BugCapture.reportBug(type:subType:name:value:)(0x536174614443544DLL, 0xEC00000065726F74, 0xD000000000000010, 0x80000001B20D3580, 0xD00000000000002ALL, 0x80000001B20D35A0, 0x6C416574656C6564, 0xEF7372656D69546CLL);
    sub_1B20915B0();
    v14 = swift_allocError();
    *v15 = 3;
    swift_willThrow();
    v17 = *(v0 + 120);
    v16 = *(v0 + 128);
    v18 = *(v0 + 112);
    v19 = sub_1B205E940();
    (*(v17 + 16))(v16, v19, v18);
    v20 = sub_1B20A9894();
    v21 = sub_1B20A9C84();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1B1F9F000, v20, v21, "Failed to delete all timers from core data", v22, 2u);
      MEMORY[0x1B2741310](v22, -1, -1);
    }

    v24 = *(v0 + 120);
    v23 = *(v0 + 128);
    v25 = *(v0 + 112);
    v26 = *(v0 + 96);

    (*(v24 + 8))(v23, v25);
    if (v26)
    {
      v28 = *(v0 + 96);
      v27 = *(v0 + 104);
      v29 = v14;
      v28(v14);
    }
  }

  v31 = *(v0 + 128);
  v30 = *(v0 + 136);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1B2077870()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_1B2077AD0;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_1B207798C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B207798C()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = sub_1B205E940();
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_1B20A9894();
  v6 = sub_1B20A9C74();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1B1F9F000, v5, v6, "Deleted all timers from core data", v7, 2u);
    MEMORY[0x1B2741310](v7, -1, -1);
  }

  v8 = v0[17];
  v9 = v0[14];
  v10 = v0[15];
  v11 = v0[12];

  (*(v10 + 8))(v8, v9);
  if (v11)
  {
    v12 = v0[13];
    (v0[12])(0);
  }

  v14 = v0[16];
  v13 = v0[17];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1B2077AD0()
{
  v1 = v0[18];

  v2 = v0[20];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v6 = sub_1B205E940();
  (*(v4 + 16))(v3, v6, v5);
  v7 = sub_1B20A9894();
  v8 = sub_1B20A9C84();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1B1F9F000, v7, v8, "Failed to delete all timers from core data", v9, 2u);
    MEMORY[0x1B2741310](v9, -1, -1);
  }

  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[14];
  v13 = v0[12];

  (*(v11 + 8))(v10, v12);
  if (v13)
  {
    v15 = v0[12];
    v14 = v0[13];
    v16 = v2;
    v15(v2);
  }

  v18 = v0[16];
  v17 = v0[17];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1B2077C38()
{
  v1[2] = v0;
  v2 = sub_1B20A9D34();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2077CF8, v0, 0);
}

uint64_t sub_1B2077CF8()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for MTCDTimer();
  v6 = (*(v5 + 88))();
  v0[6] = v6;
  v7 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];
  v0[7] = v7;
  v8 = [*(v4 + 112) newBackgroundContext];
  v0[8] = v8;
  v9 = swift_allocObject();
  v0[9] = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v10 = *(MEMORY[0x1E695D2C0] + 4);
  v8;
  v11 = v7;
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_1B2077E84;
  v13 = v0[5];
  v14 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEDB6538](v12, v13, sub_1B209893C, v9, v14);
}

uint64_t sub_1B2077E84()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 88) = v0;

  (*(v6 + 8))(v5, v7);

  v9 = *(v2 + 16);
  if (v0)
  {
    v10 = sub_1B20988C8;
  }

  else
  {
    v10 = sub_1B2098880;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t MTCDDataStore.getTimers(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = *&v2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v7 = v2;

  os_unfair_lock_lock(v6 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v6 + 4);
  v8 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v8)
  {
    v9 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v8(v10);
    sub_1B1FA6834(v8);
  }
}

uint64_t sub_1B2078218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = sub_1B20A98B4();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B20782E8, 0, 0);
}

uint64_t sub_1B20782E8()
{
  v52 = v0;
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (!*(v1 + v2))
  {
    goto LABEL_8;
  }

  v3 = *(v0 + 96);
  *(v0 + 184) = 0;
  v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
  v5 = swift_allocObject();
  *(v5 + 16) = v0 + 184;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B2098884;
  *(v6 + 24) = v5;
  *(v0 + 48) = sub_1B20988D0;
  *(v0 + 56) = v6;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B20668F0;
  *(v0 + 40) = &block_descriptor_855;
  v7 = _Block_copy((v0 + 16));
  v8 = *(v0 + 56);
  v9 = v3;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
    return result;
  }

  v11 = *(v0 + 184);

  if (v11 == 1)
  {
    v12 = *(v1 + v2);
    *(v0 + 152) = v12;
    if (v12)
    {

      v13 = swift_task_alloc();
      *(v0 + 160) = v13;
      *v13 = v0;
      v13[1] = sub_1B2078884;

      return sub_1B2078D88();
    }

    v35 = *(v0 + 144);
    v36 = *(v0 + 120);
    v37 = *(v0 + 128);
    v38 = sub_1B205E940();
    (*(v37 + 16))(v35, v38, v36);
    v39 = sub_1B20A9894();
    v40 = sub_1B20A9C74();

    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 144);
    v43 = *(v0 + 120);
    v44 = *(v0 + 128);
    if (v41)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v51 = v46;
      *v45 = 136315138;
      *(v0 + 88) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F558, &qword_1B20B9550);
      v47 = sub_1B20A9A84();
      v49 = sub_1B2061574(v47, v48, &v51);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_1B1F9F000, v39, v40, "Fetched sample timers: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x1B2741310](v46, -1, -1);
      MEMORY[0x1B2741310](v45, -1, -1);
    }

    (*(v44 + 8))(v42, v43);
    v50 = *(v0 + 112);
    (*(v0 + 104))(0);
  }

  else
  {
LABEL_8:
    type metadata accessor for BugCapture();
    static BugCapture.reportBug(type:subType:name:value:)(0x536174614443544DLL, 0xEC00000065726F74, 0xD000000000000010, 0x80000001B20D3580, 0xD00000000000002ALL, 0x80000001B20D35A0, 0x72656D6954746567, 0xE900000000000073);
    sub_1B20915B0();
    v14 = swift_allocError();
    *v15 = 3;
    swift_willThrow();
    v17 = *(v0 + 128);
    v16 = *(v0 + 136);
    v18 = *(v0 + 120);
    v19 = sub_1B205E940();
    (*(v17 + 16))(v16, v19, v18);
    v20 = v14;
    v21 = sub_1B20A9894();
    v22 = sub_1B20A9C84();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = v14;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_1B1F9F000, v21, v22, "Failed to fetch sample timers with error: %@", v23, 0xCu);
      sub_1B20985B4(v24, &qword_1EB79F4B0, &qword_1B20B8ED8);
      MEMORY[0x1B2741310](v24, -1, -1);
      MEMORY[0x1B2741310](v23, -1, -1);
    }

    v28 = *(v0 + 128);
    v27 = *(v0 + 136);
    v29 = *(v0 + 112);
    v30 = *(v0 + 120);
    v31 = *(v0 + 104);

    (*(v28 + 8))(v27, v30);
    v31(0);
  }

  v33 = *(v0 + 136);
  v32 = *(v0 + 144);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1B2078884(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v7 = sub_1B2078BC8;
  }

  else
  {
    v8 = *(v4 + 152);

    *(v4 + 176) = a1;
    v7 = sub_1B20789B4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B20789B4()
{
  v25 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = sub_1B205E940();
  (*(v4 + 16))(v2, v5, v3);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C74();

  if (os_log_type_enabled(v6, v7))
  {
    v23 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    *(v0 + 88) = v1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F558, &qword_1B20B9550);
    v12 = sub_1B20A9A84();
    v14 = sub_1B2061574(v12, v13, &v24);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1B1F9F000, v6, v7, "Fetched sample timers: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1B2741310](v11, -1, -1);
    MEMORY[0x1B2741310](v10, -1, -1);

    (*(v8 + 8))(v23, v9);
  }

  else
  {
    v15 = *(v0 + 144);
    v16 = *(v0 + 120);
    v17 = *(v0 + 128);

    (*(v17 + 8))(v15, v16);
  }

  v18 = *(v0 + 112);
  (*(v0 + 104))(v1);

  v20 = *(v0 + 136);
  v19 = *(v0 + 144);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1B2078BC8()
{
  v1 = v0[19];

  v2 = v0[21];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  v6 = sub_1B205E940();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_1B20A9894();
  v9 = sub_1B20A9C84();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1B1F9F000, v8, v9, "Failed to fetch sample timers with error: %@", v10, 0xCu);
    sub_1B20985B4(v11, &qword_1EB79F4B0, &qword_1B20B8ED8);
    MEMORY[0x1B2741310](v11, -1, -1);
    MEMORY[0x1B2741310](v10, -1, -1);
  }

  v15 = v0[16];
  v14 = v0[17];
  v16 = v0[14];
  v17 = v0[15];
  v18 = v0[13];

  (*(v15 + 8))(v14, v17);
  v18(0);

  v20 = v0[17];
  v19 = v0[18];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1B2078D88()
{
  v1[3] = v0;
  v2 = sub_1B20A9D34();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  sub_1B20A9BA4();
  v1[7] = sub_1B20A9B94();
  v6 = sub_1B20A9B64();
  v1[8] = v6;
  v1[9] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1B2078E7C, v6, v5);
}

uint64_t sub_1B2078E7C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v0[10] = [*(v0[3] + 112) viewContext];
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v4 = *(MEMORY[0x1E695D2C0] + 4);

  v5 = swift_task_alloc();
  v0[11] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F4E8, &qword_1B20B9080);
  *v5 = v0;
  v5[1] = sub_1B2078FB0;
  v7 = v0[6];
  v8 = v0[3];

  return MEMORY[0x1EEDB6538](v0 + 2, v7, sub_1B20952C8, v8, v6);
}

uint64_t sub_1B2078FB0()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 24);
  v9 = *v1;
  *(*v1 + 96) = v0;

  (*(v6 + 8))(v5, v7);

  v10 = *(v2 + 72);
  v11 = *(v2 + 64);
  if (v0)
  {
    v12 = sub_1B2098888;
  }

  else
  {
    v12 = sub_1B20988A4;
  }

  return MEMORY[0x1EEE6DFA0](v12, v11, v10);
}

void sub_1B20791C0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (a1)
  {
    a3(0);
    v4 = sub_1B20A9AF4();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  (*(a2 + 16))(a2);
}

Swift::Void __swiftcall MTCDDataStore.addDurations(_:isFavorite:)(Swift::OpaquePointer _, Swift::Bool isFavorite)
{
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = _;
  *(v5 + 32) = isFavorite;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  v6 = *&v2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v7 = v2;

  os_unfair_lock_lock(v6 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v6 + 4);
  v8 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v8)
  {
    v9 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v8(v10);
    sub_1B1FA6834(v8);
  }
}

uint64_t MTCDDataStore.addDurations(_:isFavorite:completion:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  v10 = *&v4[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v11 = v4;

  sub_1B209192C(a3);
  os_unfair_lock_lock(v10 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v10 + 4);
  v12 = *&v11[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v12)
  {
    v13 = *&v11[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v12(v14);
    sub_1B1FA6834(v12);
  }
}

uint64_t sub_1B2079530(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 104) = a4;
  *(v5 + 112) = a5;
  *(v5 + 177) = a3;
  *(v5 + 88) = a1;
  *(v5 + 96) = a2;
  v6 = sub_1B20A98B4();
  *(v5 + 120) = v6;
  v7 = *(v6 - 8);
  *(v5 + 128) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B2079604, 0, 0);
}

char *sub_1B2079604()
{
  v87 = v0;
  v1 = *(v0 + 88);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (*(&v1->isa + v2))
  {
    v3 = *(v0 + 88);
    *(v0 + 176) = 0;
    v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
    v5 = swift_allocObject();
    *(v5 + 16) = v0 + 176;
    *(v5 + 24) = v3;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B2098884;
    *(v6 + 24) = v5;
    *(v0 + 48) = sub_1B20988D0;
    *(v0 + 56) = v6;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1B20668F0;
    *(v0 + 40) = &block_descriptor_843;
    v7 = _Block_copy((v0 + 16));
    v8 = *(v0 + 56);
    v9 = v3;

    dispatch_sync(v4, v7);
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_47;
    }

    v11 = *(v0 + 176);

    if (v11 == 1)
    {
      v12 = *(&v1->isa + v2);
      *(v0 + 152) = v12;
      if (v12)
      {

        v13 = swift_task_alloc();
        *(v0 + 160) = v13;
        *v13 = v0;
        v13[1] = sub_1B2079E70;
        v14 = *(v0 + 177);
        v15 = *(v0 + 96);

        return sub_1B207A5F4(v15, v14);
      }

      v51 = *(v0 + 144);
      v52 = *(v0 + 120);
      v53 = *(v0 + 128);
      v54 = *(v0 + 96);
      v55 = sub_1B205E940();
      (*(v53 + 16))(v51, v55, v52);

      isEscapingClosureAtFileLocation = sub_1B20A9894();
      LOBYTE(v8) = sub_1B20A9C74();

      if (!os_log_type_enabled(isEscapingClosureAtFileLocation, v8))
      {
        v67 = *(v0 + 144);
        v68 = *(v0 + 120);
        v69 = *(v0 + 128);

        (*(v69 + 8))(v67, v68);
        v70 = *(v0 + 104);
        if (!v70)
        {
          goto LABEL_24;
        }

        goto LABEL_45;
      }

      v6 = *(v0 + 96);
      v56 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      log = v56;
      v85 = v83;
      LODWORD(v56->isa) = 136315138;
      if (!(v6 >> 62))
      {
        v57 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_32;
      }

LABEL_51:
      if (*(v0 + 96) < 0)
      {
        v80 = *(v0 + 96);
      }

      v57 = sub_1B20A9DE4();
LABEL_32:
      v58 = MEMORY[0x1E69E7CC0];
      if (v57)
      {
        v82 = v8;
        v86 = MEMORY[0x1E69E7CC0];
        result = sub_1B2091C58(0, v57 & ~(v57 >> 63), 0);
        if (v57 < 0)
        {
          __break(1u);
          return result;
        }

        v59 = 0;
        v58 = v86;
        v60 = *(v0 + 96) + 32;
        do
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v61 = MEMORY[0x1B27403C0](v59, *(v0 + 96));
          }

          else
          {
            v61 = *(v60 + 8 * v59);
          }

          v62 = v61;
          [v61 duration];
          v64 = v63;

          v86 = v58;
          v66 = *(v58 + 16);
          v65 = *(v58 + 24);
          if (v66 >= v65 >> 1)
          {
            sub_1B2091C58((v65 > 1), v66 + 1, 1);
            v58 = v86;
          }

          ++v59;
          *(v58 + 16) = v66 + 1;
          *(v58 + 8 * v66 + 32) = v64;
        }

        while (v57 != v59);
        LOBYTE(v8) = v82;
      }

      v71 = *(v0 + 144);
      v73 = *(v0 + 120);
      v72 = *(v0 + 128);
      v74 = MEMORY[0x1B2740030](v58, MEMORY[0x1E69E63B0]);
      v76 = v75;

      v77 = sub_1B2061574(v74, v76, &v85);

      *(&log->isa + 4) = v77;
      _os_log_impl(&dword_1B1F9F000, isEscapingClosureAtFileLocation, v8, "Saved timer durations into core data: %s", log, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v83);
      MEMORY[0x1B2741310](v83, -1, -1);
      MEMORY[0x1B2741310](log, -1, -1);

      (*(v72 + 8))(v71, v73);
      v70 = *(v0 + 104);
      if (!v70)
      {
        goto LABEL_24;
      }

LABEL_45:
      v78 = *(v0 + 112);
      v70(0);
      goto LABEL_24;
    }
  }

  type metadata accessor for BugCapture();
  static BugCapture.reportBug(type:subType:name:value:)(0x536174614443544DLL, 0xEC00000065726F74, 0xD000000000000010, 0x80000001B20D3580, 0xD00000000000002ALL, 0x80000001B20D35A0, 0x7461727544646461, 0xEC000000736E6F69);
  sub_1B20915B0();
  isEscapingClosureAtFileLocation = swift_allocError();
  *v17 = 3;
  swift_willThrow();
  v19 = *(v0 + 128);
  v18 = *(v0 + 136);
  v20 = *(v0 + 120);
  v21 = *(v0 + 96);
  v22 = sub_1B205E940();
  (*(v19 + 16))(v18, v22, v20);

  v1 = sub_1B20A9894();
  v23 = sub_1B20A9C84();

  if (!os_log_type_enabled(v1, v23))
  {
    v36 = *(v0 + 128);
    v35 = *(v0 + 136);
    v37 = *(v0 + 120);

    (*(v36 + 8))(v35, v37);
    v38 = *(v0 + 104);
    if (!v38)
    {
      goto LABEL_23;
    }

LABEL_22:
    v39 = *(v0 + 112);
    v40 = isEscapingClosureAtFileLocation;
    v38(isEscapingClosureAtFileLocation);

    goto LABEL_23;
  }

  v7 = *(v0 + 96);
  v6 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v85 = v8;
  *v6 = 136315138;
  LODWORD(v83) = v23;
  if (!(v7 >> 62))
  {
    v24 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_11;
  }

LABEL_47:
  if (*(v0 + 96) < 0)
  {
    v79 = *(v0 + 96);
  }

  v24 = sub_1B20A9DE4();
LABEL_11:
  v25 = MEMORY[0x1E69E7CC0];
  log = v1;
  if (v24)
  {
    v81 = v6;
    v86 = MEMORY[0x1E69E7CC0];
    sub_1B2091C58(0, v24 & ~(v24 >> 63), 0);
    if (v24 < 0)
    {
      __break(1u);
      goto LABEL_51;
    }

    v26 = 0;
    v25 = v86;
    v27 = v7 & 0xC000000000000001;
    v28 = *(v0 + 96) + 32;
    do
    {
      if (v27)
      {
        v29 = MEMORY[0x1B27403C0](v26, *(v0 + 96));
      }

      else
      {
        v29 = *(v28 + 8 * v26);
      }

      v30 = v29;
      [v29 duration];
      v32 = v31;

      v86 = v25;
      v34 = *(v25 + 16);
      v33 = *(v25 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1B2091C58((v33 > 1), v34 + 1, 1);
        v25 = v86;
      }

      ++v26;
      *(v25 + 16) = v34 + 1;
      *(v25 + 8 * v34 + 32) = v32;
    }

    while (v24 != v26);
    v6 = v81;
  }

  v44 = *(v0 + 128);
  v45 = *(v0 + 136);
  v46 = *(v0 + 120);
  v47 = MEMORY[0x1B2740030](v25, MEMORY[0x1E69E63B0]);
  v49 = v48;

  v50 = sub_1B2061574(v47, v49, &v85);

  *(v6 + 4) = v50;
  _os_log_impl(&dword_1B1F9F000, log, v83, "Failed to save timer durations into core data: %s", v6, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v8);
  MEMORY[0x1B2741310](v8, -1, -1);
  MEMORY[0x1B2741310](v6, -1, -1);

  (*(v44 + 8))(v45, v46);
  v38 = *(v0 + 104);
  if (v38)
  {
    goto LABEL_22;
  }

LABEL_23:

LABEL_24:
  v42 = *(v0 + 136);
  v41 = *(v0 + 144);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_1B2079E70()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_1B207A2A8;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_1B2079F8C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

char *sub_1B2079F8C()
{
  v43 = v0;
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[12];
  v5 = sub_1B205E940();
  (*(v3 + 16))(v1, v5, v2);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C74();

  if (!os_log_type_enabled(v6, v7))
  {
    v22 = v0[18];
    v23 = v0[15];
    v24 = v0[16];

    (*(v24 + 8))(v22, v23);
    v25 = v0[13];
    if (!v25)
    {
      goto LABEL_16;
    }

LABEL_15:
    v26 = v0[14];
    v25(0);
    goto LABEL_16;
  }

  v8 = v0[12];
  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v41 = v10;
  *v9 = 136315138;
  if (v8 >> 62)
  {
    if (v0[12] < 0)
    {
      v37 = v0[12];
    }

    v11 = sub_1B20A9DE4();
  }

  else
  {
    v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x1E69E7CC0];
  v39 = v10;
  buf = v9;
  if (v11)
  {
    v42 = MEMORY[0x1E69E7CC0];
    result = sub_1B2091C58(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
      return result;
    }

    v38 = v7;
    v14 = 0;
    v12 = v42;
    v15 = v0[12] + 32;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1B27403C0](v14, v0[12]);
      }

      else
      {
        v16 = *(v15 + 8 * v14);
      }

      v17 = v16;
      [v16 duration];
      v19 = v18;

      v42 = v12;
      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1B2091C58((v20 > 1), v21 + 1, 1);
        v12 = v42;
      }

      ++v14;
      *(v12 + 16) = v21 + 1;
      *(v12 + 8 * v21 + 32) = v19;
    }

    while (v11 != v14);
    v7 = v38;
  }

  v30 = v0[18];
  v32 = v0[15];
  v31 = v0[16];
  v33 = MEMORY[0x1B2740030](v12, MEMORY[0x1E69E63B0]);
  v35 = v34;

  v36 = sub_1B2061574(v33, v35, &v41);

  *(buf + 4) = v36;
  _os_log_impl(&dword_1B1F9F000, v6, v7, "Saved timer durations into core data: %s", buf, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v39);
  MEMORY[0x1B2741310](v39, -1, -1);
  MEMORY[0x1B2741310](buf, -1, -1);

  (*(v31 + 8))(v30, v32);
  v25 = v0[13];
  if (v25)
  {
    goto LABEL_15;
  }

LABEL_16:
  v28 = v0[17];
  v27 = v0[18];

  v29 = v0[1];

  return v29();
}

char *sub_1B207A2A8()
{
  v48 = v0;
  v1 = v0[19];

  v2 = v0[21];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
  v6 = v0[12];
  v7 = sub_1B205E940();
  (*(v3 + 16))(v4, v7, v5);

  v8 = sub_1B20A9894();
  v9 = sub_1B20A9C84();

  if (!os_log_type_enabled(v8, v9))
  {
    v25 = v0[16];
    v26 = v0[17];
    v27 = v0[15];

    (*(v25 + 8))(v26, v27);
    v28 = v0[13];
    if (!v28)
    {
      goto LABEL_16;
    }

LABEL_15:
    v29 = v0[14];
    v30 = v2;
    v28(v2);

    goto LABEL_16;
  }

  v10 = v0[12];
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v46 = v12;
  *v11 = 136315138;
  if (v10 >> 62)
  {
    if (v0[12] < 0)
    {
      v41 = v0[12];
    }

    v13 = sub_1B20A9DE4();
  }

  else
  {
    v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x1E69E7CC0];
  v45 = v2;
  v44 = v9;
  v43 = v12;
  if (v13)
  {
    v47 = MEMORY[0x1E69E7CC0];
    result = sub_1B2091C58(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
      __break(1u);
      return result;
    }

    v42 = v11;
    v16 = 0;
    v14 = v47;
    v17 = v10 & 0xC000000000000001;
    v18 = v0[12] + 32;
    do
    {
      if (v17)
      {
        v19 = MEMORY[0x1B27403C0](v16, v0[12]);
      }

      else
      {
        v19 = *(v18 + 8 * v16);
      }

      v20 = v19;
      [v19 duration];
      v22 = v21;

      v47 = v14;
      v24 = *(v14 + 16);
      v23 = *(v14 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1B2091C58((v23 > 1), v24 + 1, 1);
        v14 = v47;
      }

      ++v16;
      *(v14 + 16) = v24 + 1;
      *(v14 + 8 * v24 + 32) = v22;
    }

    while (v13 != v16);
    v11 = v42;
  }

  v34 = v0[16];
  v35 = v0[17];
  v36 = v0[15];
  v37 = MEMORY[0x1B2740030](v14, MEMORY[0x1E69E63B0]);
  v39 = v38;

  v40 = sub_1B2061574(v37, v39, &v46);

  *(v11 + 4) = v40;
  _os_log_impl(&dword_1B1F9F000, v8, v44, "Failed to save timer durations into core data: %s", v11, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v43);
  MEMORY[0x1B2741310](v43, -1, -1);
  MEMORY[0x1B2741310](v11, -1, -1);

  (*(v34 + 8))(v35, v36);
  v2 = v45;
  v28 = v0[13];
  if (v28)
  {
    goto LABEL_15;
  }

LABEL_16:

  v32 = v0[17];
  v31 = v0[18];

  v33 = v0[1];

  return v33();
}

uint64_t sub_1B207A5F4(uint64_t a1, char a2)
{
  *(v3 + 88) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_1B20A9D34();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B207A6B8, v2, 0);
}

uint64_t sub_1B207A6B8()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 88);
  v5 = *(v0 + 16);
  v6 = [*(*(v0 + 24) + 112) newBackgroundContext];
  *(v0 + 56) = v6;
  v7 = swift_allocObject();
  *(v0 + 64) = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v7 + 32) = v4;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v8 = *(MEMORY[0x1E695D2C0] + 4);
  v6;

  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_1B207A810;
  v10 = *(v0 + 48);
  v11 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEDB6538](v9, v10, sub_1B2095464, v7, v11);
}

uint64_t sub_1B207A810()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *v1;
  *(*v1 + 80) = v0;

  (*(v6 + 8))(v5, v7);

  v9 = *(v2 + 24);
  if (v0)
  {
    v10 = sub_1B207AA28;
  }

  else
  {
    v10 = sub_1B207A9BC;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1B207A9BC()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B207AA28()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);
  v3 = *(v0 + 80);

  return v2();
}

uint64_t MTCDDataStore.getAllDurations(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = *&v2[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_lock];
  v7 = v2;

  os_unfair_lock_lock(v6 + 4);
  sub_1B209895C();
  os_unfair_lock_unlock(v6 + 4);
  v8 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher];
  if (v8)
  {
    v9 = *&v7[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_eventPublisher + 8];

    v8(v10);
    sub_1B1FA6834(v8);
  }
}

uint64_t sub_1B207ACB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = sub_1B20A98B4();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B207AD88, 0, 0);
}

uint64_t sub_1B207AD88()
{
  v52 = v0;
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_actor;
  swift_beginAccess();
  if (!*(v1 + v2))
  {
    goto LABEL_8;
  }

  v3 = *(v0 + 96);
  *(v0 + 200) = 0;
  v4 = *&v3[OBJC_IVAR____TtC11MobileTimer13MTCDDataStore_queue];
  v5 = swift_allocObject();
  *(v5 + 16) = v0 + 200;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B2098884;
  *(v6 + 24) = v5;
  *(v0 + 48) = sub_1B20988D0;
  *(v0 + 56) = v6;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B20668F0;
  *(v0 + 40) = &block_descriptor_831;
  v7 = _Block_copy((v0 + 16));
  v8 = *(v0 + 56);
  v9 = v3;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
    return result;
  }

  v11 = *(v0 + 200);

  if (v11 == 1)
  {
    v12 = *(v1 + v2);
    *(v0 + 152) = v12;
    if (v12)
    {
      *(v0 + 160) = sub_1B20A9BA4();

      *(v0 + 168) = sub_1B20A9B94();
      v13 = swift_task_alloc();
      *(v0 + 176) = v13;
      *v13 = v0;
      v13[1] = sub_1B207B348;

      return sub_1B2086C78(2);
    }

    v35 = *(v0 + 144);
    v36 = *(v0 + 120);
    v37 = *(v0 + 128);
    v38 = sub_1B205E940();
    (*(v37 + 16))(v35, v38, v36);
    v39 = sub_1B20A9894();
    v40 = sub_1B20A9C74();

    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 144);
    v43 = *(v0 + 120);
    v44 = *(v0 + 128);
    if (v41)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v51 = v46;
      *v45 = 136315138;
      *(v0 + 88) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F508, &qword_1B20B9178);
      v47 = sub_1B20A9A84();
      v49 = sub_1B2061574(v47, v48, &v51);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_1B1F9F000, v39, v40, "Fetched all timer durations: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x1B2741310](v46, -1, -1);
      MEMORY[0x1B2741310](v45, -1, -1);
    }

    (*(v44 + 8))(v42, v43);
    v50 = *(v0 + 112);
    (*(v0 + 104))(0);
  }

  else
  {
LABEL_8:
    type metadata accessor for BugCapture();
    static BugCapture.reportBug(type:subType:name:value:)(0x536174614443544DLL, 0xEC00000065726F74, 0xD000000000000010, 0x80000001B20D3580, 0xD00000000000002ALL, 0x80000001B20D35A0, 0x75446C6C41746567, 0xEF736E6F69746172);
    sub_1B20915B0();
    v14 = swift_allocError();
    *v15 = 3;
    swift_willThrow();
    v17 = *(v0 + 128);
    v16 = *(v0 + 136);
    v18 = *(v0 + 120);
    v19 = sub_1B205E940();
    (*(v17 + 16))(v16, v19, v18);
    v20 = v14;
    v21 = sub_1B20A9894();
    v22 = sub_1B20A9C84();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = v14;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_1B1F9F000, v21, v22, "Failed to fetch all timer durations: %@", v23, 0xCu);
      sub_1B20985B4(v24, &qword_1EB79F4B0, &qword_1B20B8ED8);
      MEMORY[0x1B2741310](v24, -1, -1);
      MEMORY[0x1B2741310](v23, -1, -1);
    }

    v28 = *(v0 + 128);
    v27 = *(v0 + 136);
    v29 = *(v0 + 112);
    v30 = *(v0 + 120);
    v31 = *(v0 + 104);

    (*(v28 + 8))(v27, v30);
    v31(0);
  }

  v33 = *(v0 + 136);
  v32 = *(v0 + 144);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1B207B348(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 176);
  v7 = *v2;
  v5[23] = v1;

  v8 = v5[21];
  v9 = v5[20];
  if (v3)
  {
    v10 = sub_1B20A9B64();
    v12 = v11;
    v13 = sub_1B207B750;
  }

  else
  {
    v5[24] = a1;
    v10 = sub_1B20A9B64();
    v12 = v14;
    v13 = sub_1B207B4C8;
  }

  return MEMORY[0x1EEE6DFA0](v13, v10, v12);
}

uint64_t sub_1B207B4C8()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1B207B53C, 0, 0);
}

uint64_t sub_1B207B53C()
{
  v25 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = sub_1B205E940();
  (*(v4 + 16))(v2, v5, v3);

  v6 = sub_1B20A9894();
  v7 = sub_1B20A9C74();

  if (os_log_type_enabled(v6, v7))
  {
    v23 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    *(v0 + 88) = v1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB79F508, &qword_1B20B9178);
    v12 = sub_1B20A9A84();
    v14 = sub_1B2061574(v12, v13, &v24);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1B1F9F000, v6, v7, "Fetched all timer durations: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1B2741310](v11, -1, -1);
    MEMORY[0x1B2741310](v10, -1, -1);

    (*(v8 + 8))(v23, v9);
  }

  else
  {
    v15 = *(v0 + 144);
    v16 = *(v0 + 120);
    v17 = *(v0 + 128);

    (*(v17 + 8))(v15, v16);
  }

  v18 = *(v0 + 112);
  (*(v0 + 104))(v1);

  v20 = *(v0 + 136);
  v19 = *(v0 + 144);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1B207B750()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1B207B7C4, 0, 0);
}

uint64_t sub_1B207B7C4()
{
  v1 = v0[23];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v5 = sub_1B205E940();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1B20A9894();
  v8 = sub_1B20A9C84();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1B1F9F000, v7, v8, "Failed to fetch all timer durations: %@", v9, 0xCu);
    sub_1B20985B4(v10, &qword_1EB79F4B0, &qword_1B20B8ED8);
    MEMORY[0x1B2741310](v10, -1, -1);
    MEMORY[0x1B2741310](v9, -1, -1);
  }

  v14 = v0[16];
  v13 = v0[17];
  v15 = v0[14];
  v16 = v0[15];
  v17 = v0[13];

  (*(v14 + 8))(v13, v16);
  v17(0);

  v19 = v0[17];
  v18 = v0[18];

  v20 = v0[1];

  return v20();
}