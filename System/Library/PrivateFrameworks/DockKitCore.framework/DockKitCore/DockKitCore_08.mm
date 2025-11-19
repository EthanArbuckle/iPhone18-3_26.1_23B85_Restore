uint64_t sub_2245E5CA4(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[11] = a2;
  v4[12] = a4;
  v4[10] = a1;
  v4[13] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a4;

  return MEMORY[0x2822009F8](sub_2245E5D34, 0, 0);
}

uint64_t sub_2245E5D34()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[3] = sub_2245E5DE4;
  v4 = swift_continuation_init();
  sub_2245E554C(v3, v2, v1, v4);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245E5DE4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 112) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_2245E5F84;
  }

  else
  {
    v2 = sub_2245E5F00;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245E5F00()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  (*(v2 + 16))(v2, 0);
  _Block_release(*(v0 + 104));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2245E5F84()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);

  v4 = sub_224626FA8();
  (*(v1 + 16))(v1, v4);

  _Block_release(*(v0 + 104));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t DockCoreManager.triggerSystemEvent(info:event:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2245E60E4, 0, 0);
}

uint64_t sub_2245E60E4()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[3] = sub_2245804E0;
  v4 = swift_continuation_init();
  sub_2245E6194(v3, v2, v1, v4);

  return MEMORY[0x282200938](v0 + 2);
}

void sub_2245E6194(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_224627B78();
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  v13 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v14 = *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v14 + 4);

  v15 = *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v16 = *(a3 + v13);

  os_unfair_lock_unlock(v16 + 4);

  v17 = sub_2245E4F94();
  if (v17)
  {
    v18 = v17;
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = sub_2245803FC;
    v20[4] = v12;
    v41 = sub_22460A980;
    v42 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_2245D42E8;
    v40 = &block_descriptor_1651;
    v21 = _Block_copy(&aBlock);

    v22 = [v18 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v21);
    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0D0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v8 = v36[2];
    v9 = swift_allocObject();
    *(v9 + 16) = sub_2245803FC;
    *(v9 + 24) = v12;
    a3 = swift_allocObject();
    *(a3 + 16) = sub_2245803F4;
    *(a3 + 24) = v9;
    v41 = sub_22460A920;
    v42 = a3;
    aBlock = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_2245D4378;
    v40 = &block_descriptor_1662;
    v11 = _Block_copy(&aBlock);
    a4 = v42;

    swift_unknownObjectRetain();

    [v8 triggerSystemEventWithInfo:a1 event:a2 completion:v11];

    swift_unknownObjectRelease_n();
    _Block_release(v11);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  sub_22452ECAC();
  v24 = swift_allocError();
  *v25 = xmmword_22462FFB0;
  *(v25 + 16) = 4;
  swift_willThrow();
  (*(v9 + 16))(v11, a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v8);
  v26 = v24;
  v27 = v24;
  v28 = sub_224627B58();
  v29 = sub_224628048();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v36[1] = a4;
    v32 = v31;
    *v30 = 138412290;
    v33 = v24;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 4) = v34;
    *v32 = v34;
    _os_log_impl(&dword_224507000, v28, v29, "dockkit: failed getting sync debug connection, can't send xpc %@", v30, 0xCu);
    sub_2245098A0(v32, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v32, -1, -1);
    MEMORY[0x22AA526D0](v30, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v35 = v24;
  swift_continuation_throwingResumeWithError();
}

uint64_t sub_2245E68F0(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[11] = a2;
  v4[12] = a4;
  v4[10] = a1;
  v4[13] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  v10 = a4;

  return MEMORY[0x2822009F8](sub_2245E6988, 0, 0);
}

uint64_t sub_2245E6988()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[3] = sub_2245E6A38;
  v4 = swift_continuation_init();
  sub_2245E6194(v3, v2, v1, v4);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245E6A38()
{
  v1 = *(*v0 + 48);
  *(*v0 + 112) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_2245E6BE4;
  }

  else
  {
    v2 = sub_2245E6B54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245E6B54()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);

  (*(v2 + 16))(v2, 0);
  _Block_release(*(v0 + 104));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2245E6BE4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);

  v5 = sub_224626FA8();
  (*(v1 + 16))(v1, v5);

  _Block_release(*(v0 + 104));
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2245E6EBC(uint64_t a1, void *aBlock, void *a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v3[12] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v5 = a3;

  return MEMORY[0x2822009F8](sub_2245E6F4C, 0, 0);
}

uint64_t sub_2245E6F4C()
{
  v1 = v0 + 2;
  v3 = v0[10];
  v2 = v0[11];
  v0[2] = v0;
  v0[3] = sub_2245E703C;
  v4 = swift_continuation_init();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  swift_getObjectType();
  sub_2245F9CA8(v3, sub_2245803FC, v5, v2);

  return MEMORY[0x282200938](v1);
}

uint64_t sub_2245E703C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 104) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_2245E7158;
  }

  else
  {
    v2 = sub_22460A904;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245E7158()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  swift_unknownObjectRelease();

  v4 = sub_224626FA8();
  (*(v1 + 16))(v1, v4);

  _Block_release(*(v0 + 96));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2245E72B4(char *a1, uint64_t a2)
{
  v4 = sub_224627B78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v10 = *&a1[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock];

  os_unfair_lock_lock(v10 + 4);

  v11 = *&a1[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError];
  *&a1[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError] = 0;

  v12 = *&a1[v9];

  os_unfair_lock_unlock(v12 + 4);

  v13 = sub_2245E4F94();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v13)
  {
    v35 = a2;
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = sub_2245803FC;
    v15[4] = v8;
    v40 = sub_22460A980;
    v41 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v37 = 1107296256;
    v38 = sub_2245D42E8;
    v39 = &block_descriptor_1965;
    v16 = _Block_copy(&aBlock);
    v17 = v13;

    v18 = [v17 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v16);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0D0);
    if (swift_dynamicCast())
    {
      v7 = aBlock;
      v5 = swift_allocObject();
      *(v5 + 16) = a1;
      *(v5 + 24) = sub_2245803FC;
      *(v5 + 32) = v8;
      v4 = swift_allocObject();
      *(v4 + 16) = sub_22460AC20;
      *(v4 + 24) = v5;
      v40 = sub_22460A920;
      v41 = v4;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_2245D4378;
      v39 = &block_descriptor_1976;
      v19 = _Block_copy(&aBlock);
      v13 = v41;

      swift_unknownObjectRetain();
      v20 = a1;

      [v7 stopTrackerDebugNotificationsWithCompletion_];
      swift_unknownObjectRelease_n();

      _Block_release(v19);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }
  }

  sub_22452ECAC();
  v23 = swift_allocError();
  *v24 = xmmword_22462FFB0;
  *(v24 + 16) = 4;
  swift_willThrow();

  (*(v5 + 16))(v7, &a1[OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger], v4);
  v25 = v23;
  v26 = v23;
  v27 = sub_224627B58();
  v28 = sub_224628048();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v35 = v5;
    v31 = v30;
    *v29 = 138412290;
    v32 = v23;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v33;
    *v31 = v33;
    _os_log_impl(&dword_224507000, v27, v28, "dockkit: failed getting sync debug connection, can't send xpc %@", v29, 0xCu);
    sub_2245098A0(v31, &qword_27D0C9660);
    v5 = v35;
    MEMORY[0x22AA526D0](v31, -1, -1);
    MEMORY[0x22AA526D0](v29, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v34 = v23;
  swift_continuation_throwingResumeWithError();
}

uint64_t sub_2245E7A0C(const void *a1, void *a2)
{
  *(v2 + 80) = a2;
  *(v2 + 88) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_2245E7A84, 0, 0);
}

uint64_t sub_2245E7A84()
{
  v1 = v0[10];
  v0[2] = v0;
  v0[3] = sub_2245E103C;
  v2 = swift_continuation_init();
  sub_2245E72B4(v1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t DockCoreManager.getAccessoryDescription(info:delegate:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2245E7B5C, 0, 0);
}

uint64_t sub_2245E7B5C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v0 + 13;
  v0[3] = sub_2245E7C14;
  v4 = swift_continuation_init();
  sub_2245E7D30(v3, v2, v1, v4);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245E7C14()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
    v2 = *(v1 + 8);
    v3 = 0;
  }

  else
  {
    v3 = *(*v0 + 104);
    v2 = *(v1 + 8);
  }

  return v2(v3);
}

uint64_t sub_2245E7D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a2;
  v7 = sub_224627B78();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  v12 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v13 = *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v13 + 4);

  v14 = *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v15 = *(a3 + v12);

  os_unfair_lock_unlock(v15 + 4);

  v16 = sub_2245E8814();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v16 && (v39[0] = a1, v39[1] = a4, v18 = swift_allocObject(), v18[2] = v17, v18[3] = sub_22460A958, v18[4] = v11, v45 = sub_22460A980, v46 = v18, aBlock = MEMORY[0x277D85DD0], v42 = 1107296256, v43 = sub_2245D42E8, v44 = &block_descriptor_1633, v19 = _Block_copy(&aBlock), v20 = v16, , , , v21 = [v20 synchronousRemoteObjectProxyWithErrorHandler_], _Block_release(v19), v20, sub_224628278(), swift_unknownObjectRelease(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0D8), swift_dynamicCast()))
  {
    v22 = aBlock;
    v23 = swift_allocObject();
    v24 = v40;
    v23[2] = v17;
    v23[3] = v24;
    v23[4] = sub_22460A958;
    v23[5] = v11;
    v45 = sub_22460A96C;
    v46 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_2245E8ED8;
    v44 = &block_descriptor_1640;
    v25 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    [v22 getAccessoryDescriptionWithInfo:v39[0] completion:v25];
    _Block_release(v25);

    return swift_unknownObjectRelease_n();
  }

  else
  {
    sub_22452ECAC();
    v27 = swift_allocError();
    *v28 = xmmword_22462FFB0;
    *(v28 + 16) = 4;
    swift_willThrow();

    (*(v8 + 16))(v10, a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v7);
    v29 = v27;
    v30 = v27;
    v31 = sub_224627B58();
    v32 = sub_224628048();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v40 = v11;
      v35 = v34;
      *v33 = 138412290;
      v36 = v27;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_224507000, v31, v32, "dockkit: failed getting sync debug connection, can't send xpc %@", v33, 0xCu);
      sub_2245098A0(v35, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v35, -1, -1);
      MEMORY[0x22AA526D0](v33, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_Certification);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
    swift_allocError();
    *v38 = v27;
    swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_2245E8454(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[11] = a2;
  v4[12] = a4;
  v4[10] = a1;
  v4[13] = _Block_copy(aBlock);
  v7 = a1;
  swift_unknownObjectRetain();
  v8 = a4;

  return MEMORY[0x2822009F8](sub_2245E84F0, 0, 0);
}

uint64_t sub_2245E84F0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v0 + 15;
  v0[3] = sub_2245E85A8;
  v4 = swift_continuation_init();
  sub_2245E7D30(v3, v2, v1, v4);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245E85A8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 112) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_2245E8764;
  }

  else
  {
    *(v1 + 121) = *(v1 + 120);
    v3 = sub_2245E86CC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2245E86CC()
{
  v1 = *(v0 + 121);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 16))(v2, v1, 0);
  _Block_release(*(v0 + 104));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2245E8764()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  swift_unknownObjectRelease();

  v5 = sub_224626FA8();
  (*(v1 + 16))(v1, 0, v5);

  _Block_release(*(v0 + 104));
  v6 = *(v0 + 8);

  return v6();
}

void *sub_2245E8814()
{
  v1 = v0;
  v2 = sub_224627B78();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v7 = *(v1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v7 + 4);

  v8 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_Certification;
  v9 = *(v1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_Certification);
  if (v9)
  {
    goto LABEL_5;
  }

  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v2);
  v10 = sub_224627B58();
  v11 = sub_224628058();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_224507000, v10, v11, "dockkit: creating cert XPC connection", v12, 2u);
    MEMORY[0x22AA526D0](v12, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v13 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v14 = sub_224627CB8();
  v15 = [v13 initWithMachServiceName:v14 options:4096];

  v16 = objc_opt_self();
  v17 = [v16 interfaceWithProtocol_];
  [v15 setRemoteObjectInterface_];

  v18 = [v16 interfaceWithProtocol_];
  [v15 setExportedInterface_];

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  Strong = swift_unknownObjectWeakLoadStrong();
  [v15 setExportedObject_];

  v33 = sub_224608640;
  v34 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_224580D44;
  v32 = &block_descriptor_302;
  v21 = _Block_copy(&aBlock);

  [v15 setInterruptionHandler_];
  _Block_release(v21);
  v33 = sub_224608674;
  v34 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_224580D44;
  v32 = &block_descriptor_305;
  v22 = _Block_copy(&aBlock);

  [v15 setInvalidationHandler_];
  _Block_release(v22);
  v23 = *(v1 + v8);
  *(v1 + v8) = v15;
  v24 = v15;

  v25 = *(v1 + v8);
  [v25 resume];

  v9 = *(v1 + v8);
  if (v9)
  {
LABEL_5:
    v26 = *(v1 + v6);
    v27 = v9;
  }

  else
  {
    v26 = *(v1 + v6);
  }

  os_unfair_lock_unlock(v26 + 4);

  return v9;
}

uint64_t sub_2245E8C60(unsigned int a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void), uint64_t a7)
{
  v13 = sub_224627B78();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v34 = a1;
    v33 = a5;
    v35 = a7;
    v18 = *(Strong + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_accessoryDescriptionFeedbackLock);
    v19 = Strong;

    os_unfair_lock_lock(v18 + 5);
    if ((a2 & 1) != 0 && !a3)
    {
      v20 = swift_unknownObjectWeakLoadStrong();
      if (v20)
      {
        v32 = a6;
        v21 = v20;
        (*(v14 + 16))(v16, v20 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v13);

        v22 = sub_224627B58();
        v23 = sub_224628028();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 67109120;
          *(v24 + 4) = v34;
          _os_log_impl(&dword_224507000, v22, v23, "adding Accessory Description feedback for pid %d", v24, 8u);
          MEMORY[0x22AA526D0](v24, -1, -1);
        }

        (*(v14 + 8))(v16, v13);
        a6 = v32;
      }

      v25 = swift_unknownObjectWeakLoadStrong();
      if (v25)
      {
        v26 = v25;
        v27 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager_accessoryDescriptionFeedbackDelegates;
        v28 = v33;
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = *&v26[v27];
        *&v26[v27] = 0x8000000000000000;
        sub_22458EBA8(v28, v34, isUniquelyReferenced_nonNull_native);
        *&v26[v27] = v36;
      }
    }

    os_unfair_lock_unlock(v18 + 5);
  }

  return a6(a2 & 1, a3);
}

void sub_2245E8ED8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a4;
  v7(a2, a3, a4);
}

void sub_2245E8F60(uint64_t *a1)
{
  v3 = v1;
  v4 = sub_224627B78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20]();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v4);
  v8 = sub_224627B58();
  v9 = sub_224628048();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_224507000, v8, v9, "No reply or XPC failed to open in time, closing XPC", v10, 2u);
    MEMORY[0x22AA526D0](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v11 = *a1;
  [*(v3 + *a1) invalidate];
  v12 = *(v3 + v11);
  *(v3 + v11) = 0;
}

void sub_2245E91E8(uint64_t a1, uint64_t *a2, const char *a3)
{
  v5 = sub_224627B78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
    v11 = Strong;

    os_unfair_lock_lock(v10 + 4);
  }

  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {

    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      v15 = *(v13 + *a2);

      [v15 invalidate];
    }

    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = *a2;
      v18 = *&v16[*a2];
      *&v16[v17] = 0;
    }
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    (*(v6 + 16))(v8, v19 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v5);

    v21 = sub_224627B58();
    v22 = sub_224628058();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_224507000, v21, v22, a3, v23, 2u);
      MEMORY[0x22AA526D0](v23, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }

  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    sub_22452ECAC();
    v26 = swift_allocError();
    *v27 = xmmword_22462FF90;
    *(v27 + 16) = 2;
    v28 = *&v25[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError];
    *&v25[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError] = v26;
  }

  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    v30 = *(v29 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
    v31 = v29;

    os_unfair_lock_unlock(v30 + 4);
  }

  v32 = swift_unknownObjectWeakLoadStrong();
  if (v32)
  {
    v33 = v32;
    swift_unknownObjectWeakAssign();
  }
}

uint64_t DockCoreManager.getAccessoryDiagnostics(info:delegate:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  return MEMORY[0x2822009F8](sub_2245E957C, 0, 0);
}

uint64_t sub_2245E957C()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v0[2] = v0;
  v0[3] = sub_2245804E0;
  v5 = swift_continuation_init();
  sub_2245E9638(v4, v3, v2, v1, v5);

  return MEMORY[0x282200938](v0 + 2);
}

void sub_2245E9638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a3;
  v44 = a2;
  v8 = sub_224627B78();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  v13 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v14 = *(a4 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v14 + 4);

  v15 = *(a4 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a4 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v16 = *(a4 + v13);

  os_unfair_lock_unlock(v16 + 4);

  v17 = sub_2245E8814();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v17 && (v41 = a1, v42 = a5, v19 = swift_allocObject(), v19[2] = v18, v19[3] = sub_2245804EC, v19[4] = v12, v49 = sub_22460A98C, v50 = v19, aBlock = MEMORY[0x277D85DD0], v46 = 1107296256, v47 = sub_2245D42E8, v48 = &block_descriptor_1615, v20 = _Block_copy(&aBlock), v21 = v17, , , , v22 = [v21 synchronousRemoteObjectProxyWithErrorHandler_], _Block_release(v20), v21, sub_224628278(), swift_unknownObjectRelease(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0D8), swift_dynamicCast()))
  {
    v23 = aBlock;
    sub_22450950C(0, &unk_27D0C89A0);
    swift_unknownObjectRetain();
    v24 = sub_224627C48();
    v25 = swift_allocObject();
    v26 = v44;
    v25[2] = v18;
    v25[3] = v26;
    v25[4] = sub_2245804EC;
    v25[5] = v12;
    v49 = sub_22460A910;
    v50 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v46 = 1107296256;
    v47 = sub_2245EA1AC;
    v48 = &block_descriptor_1622;
    v27 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();

    [v23 getAccessoryDiagnosticsWithInfo:v41 options:v24 completion:v27];
    _Block_release(v27);

    swift_unknownObjectRelease_n();
  }

  else
  {
    sub_22452ECAC();
    v28 = swift_allocError();
    *v29 = xmmword_22462FFB0;
    *(v29 + 16) = 4;
    swift_willThrow();

    (*(v9 + 16))(v11, a4 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v8);
    v30 = v28;
    v31 = v28;
    v32 = sub_224627B58();
    v33 = sub_224628048();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v44 = v12;
      v36 = v35;
      *v34 = 138412290;
      v37 = v28;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v38;
      *v36 = v38;
      _os_log_impl(&dword_224507000, v32, v33, "dockkit: failed getting sync cert connection, can't send xpc %@", v34, 0xCu);
      sub_2245098A0(v36, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v36, -1, -1);
      MEMORY[0x22AA526D0](v34, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
    swift_allocError();
    *v39 = v28;
    swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_2245E9DB4(void *a1, uint64_t a2, int a3, void *aBlock, void *a5)
{
  v5[11] = a2;
  v5[12] = a5;
  v5[10] = a1;
  v5[13] = _Block_copy(aBlock);
  sub_22450950C(0, &unk_27D0C89A0);
  v5[14] = sub_224627C58();
  v8 = a1;
  swift_unknownObjectRetain();
  v9 = a5;

  return MEMORY[0x2822009F8](sub_2245E9E8C, 0, 0);
}

uint64_t sub_2245E9E8C()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v0[2] = v0;
  v0[3] = sub_2245E9F54;
  v5 = swift_continuation_init();
  sub_2245E9638(v4, v3, v1, v2, v5);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245E9F54()
{
  v1 = *(*v0 + 48);
  *(*v0 + 120) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_2245EA100;
  }

  else
  {
    v2 = sub_2245EA070;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245EA070()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 16))(v2, 0);
  _Block_release(*(v0 + 104));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2245EA100()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 80);
  swift_unknownObjectRelease();

  v5 = sub_224626FA8();
  (*(v2 + 16))(v2, v5);

  _Block_release(*(v0 + 104));
  v6 = *(v0 + 8);

  return v6();
}

void sub_2245EA1AC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t DockCoreManager.getAccessoryDiagnostics(info:options:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return MEMORY[0x2822009F8](sub_2245EA334, 0, 0);
}

uint64_t sub_2245EA334()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_224576404;
  v4 = swift_continuation_init();
  sub_2245EA4B4(v3, v2, v1, v4);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245EA3EC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
    swift_allocError();
    *v5 = a3;
    v6 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    v8 = *(*(a4 + 64) + 40);
    *v8 = a1;
    v8[1] = a2;

    return swift_continuation_throwingResume();
  }
}

void sub_2245EA4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a2;
  v7 = sub_224627B78();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  v12 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v13 = *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v13 + 4);

  v14 = *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v15 = *(a3 + v12);

  os_unfair_lock_unlock(v15 + 4);

  v16 = sub_2245D53F8();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v16 && (v38[0] = a1, v38[1] = a4, v18 = swift_allocObject(), v18[2] = v17, v18[3] = sub_22460A238, v18[4] = v11, v44 = sub_22460A99C, v45 = v18, aBlock = MEMORY[0x277D85DD0], v41 = 1107296256, v42 = sub_2245D42E8, v43 = &block_descriptor_1597, v19 = _Block_copy(&aBlock), v20 = v16, , , , v21 = [v20 synchronousRemoteObjectProxyWithErrorHandler_], _Block_release(v19), v20, sub_224628278(), swift_unknownObjectRelease(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9798), swift_dynamicCast()))
  {
    v22 = aBlock;
    sub_22450950C(0, &unk_27D0C89A0);
    v23 = sub_224627C48();
    v24 = swift_allocObject();
    *(v24 + 16) = sub_22460A238;
    *(v24 + 24) = v11;
    v44 = sub_22460AC34;
    v45 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v41 = 1107296256;
    v42 = sub_2245EB204;
    v43 = &block_descriptor_1604;
    v25 = _Block_copy(&aBlock);

    [v22 getAccessoryDiagnosticsWithInfo:v38[0] options:v23 completionHandler:v25];
    _Block_release(v25);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_22452ECAC();
    v26 = swift_allocError();
    *v27 = 0xD000000000000027;
    *(v27 + 8) = 0x800000022463AED0;
    *(v27 + 16) = 4;
    swift_willThrow();

    (*(v8 + 16))(v10, a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v7);
    v28 = v26;
    v29 = v26;
    v30 = sub_224627B58();
    v31 = sub_224628048();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v39 = v11;
      v34 = v33;
      *v32 = 138412290;
      v35 = v26;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v36;
      *v34 = v36;
      _os_log_impl(&dword_224507000, v30, v31, "dockkit: failed getting sync debug connection, can't send xpc %@", v32, 0xCu);
      sub_2245098A0(v34, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v34, -1, -1);
      MEMORY[0x22AA526D0](v32, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
    swift_allocError();
    *v37 = v26;
    swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_2245EAC00(void *a1, int a2, void *aBlock, void *a4)
{
  v4[12] = a1;
  v4[13] = a4;
  v4[14] = _Block_copy(aBlock);
  sub_22450950C(0, &unk_27D0C89A0);
  v4[15] = sub_224627C58();
  v7 = a1;
  v8 = a4;

  return MEMORY[0x2822009F8](sub_2245EACC8, 0, 0);
}

uint64_t sub_2245EACC8()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_2245EAD88;
  v4 = swift_continuation_init();
  sub_2245EA4B4(v3, v1, v2, v4);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245EAD88()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 128) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_2245EAF58;
  }

  else
  {
    *(v1 + 136) = *(v1 + 80);
    v3 = sub_2245EAEAC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2245EAEAC()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 96);

  if (v1)
  {
    v1 = sub_224627CB8();
  }

  v3 = *(v0 + 112);
  (v3)[2](v3, v1, 0);

  _Block_release(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2245EAF58()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 96);

  v3 = sub_224626FA8();
  v4 = *(v0 + 112);
  (v4)[2](v4, 0, v3);

  _Block_release(v4);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2245EAFFC(void *a1, uint64_t a2, uint64_t (*a3)(void, void, void *))
{
  v5 = sub_224627B78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    (*(v6 + 16))(v8, Strong + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v5);

    v11 = a1;
    v12 = sub_224627B58();
    v13 = sub_224628048();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = a1;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_224507000, v12, v13, "getAccessoryDiagnostics: error from remote proxy: %@", v14, 0xCu);
      sub_2245098A0(v15, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v15, -1, -1);
      MEMORY[0x22AA526D0](v14, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }

  return a3(0, 0, a1);
}

uint64_t sub_2245EB204(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_224627CD8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

void sub_2245EB370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_224627CB8();
    if (a3)
    {
LABEL_3:
      v7 = sub_224626FA8();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t DockCoreManager.manualFirmwareUpdate(filePath:sandboxExt:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[14] = a5;
  v6[15] = v5;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  return MEMORY[0x2822009F8](sub_2245EB428, 0, 0);
}

uint64_t sub_2245EB428()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v0[2] = v0;
  v0[3] = sub_2245804E0;
  v7 = swift_continuation_init();
  sub_2245EB4F8(v6, v5, v4, v3, v2, v1, v7);

  return MEMORY[0x282200938](v0 + 2);
}

void sub_2245EB4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a2;
  v45 = a3;
  v43 = a1;
  v11 = sub_224627B78();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a7;
  v16 = sub_2245E8814();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v16 && (v40 = a4, v41 = a5, v42 = a7, v18 = swift_allocObject(), v18[2] = v17, v18[3] = sub_2245804EC, v18[4] = v15, v50 = sub_22460A98C, v51 = v18, aBlock = MEMORY[0x277D85DD0], v47 = 1107296256, v48 = sub_2245D42E8, v49 = &block_descriptor_1579, v19 = _Block_copy(&aBlock), v20 = v16, , , , v21 = [v20 synchronousRemoteObjectProxyWithErrorHandler_], _Block_release(v19), v20, sub_224628278(), swift_unknownObjectRelease(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0D8), swift_dynamicCast()))
  {
    v22 = aBlock;
    swift_unknownObjectRetain();
    v23 = sub_224627CB8();
    v24 = sub_224627CB8();
    v25 = swift_allocObject();
    v26 = v41;
    v25[2] = v17;
    v25[3] = v26;
    v25[4] = sub_2245804EC;
    v25[5] = v15;
    v50 = sub_22460A90C;
    v51 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v47 = 1107296256;
    v48 = sub_2245EA1AC;
    v49 = &block_descriptor_1586;
    v27 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();

    [v22 manualFirmwareUpdateWithFilePath:v23 sandboxExt:v24 completion:v27];
    _Block_release(v27);

    swift_unknownObjectRelease_n();
  }

  else
  {
    sub_22452ECAC();
    v28 = swift_allocError();
    *v29 = xmmword_22462FFB0;
    *(v29 + 16) = 4;
    swift_willThrow();

    (*(v12 + 16))(v14, a6 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v11);
    v30 = v28;
    v31 = v28;
    v32 = sub_224627B58();
    v33 = sub_224628048();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v45 = v11;
      v36 = v35;
      *v34 = 138412290;
      v37 = v28;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v38;
      *v36 = v38;
      _os_log_impl(&dword_224507000, v32, v33, "dockkit: failed getting sync cert connection, can't send xpc %@", v34, 0xCu);
      sub_2245098A0(v36, &qword_27D0C9660);
      v11 = v45;
      MEMORY[0x22AA526D0](v36, -1, -1);
      MEMORY[0x22AA526D0](v34, -1, -1);
    }

    (*(v12 + 8))(v14, v11);
    sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
    swift_allocError();
    *v39 = v28;
    swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_2245EBC00(int a1, int a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[10] = a3;
  v5[11] = a5;
  v5[12] = _Block_copy(aBlock);
  v5[13] = sub_224627CD8();
  v5[14] = v7;
  v5[15] = sub_224627CD8();
  v5[16] = v8;
  swift_unknownObjectRetain();
  v9 = a5;

  return MEMORY[0x2822009F8](sub_2245EBCB0, 0, 0);
}

uint64_t sub_2245EBCB0()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[10];
  v5 = v0[11];
  v0[2] = v0;
  v0[3] = sub_2245EBD90;
  v7 = swift_continuation_init();
  sub_2245EB4F8(v4, v3, v2, v1, v6, v5, v7);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245EBD90()
{
  v1 = *(*v0 + 48);
  *(*v0 + 136) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_2245EBF30;
  }

  else
  {
    v2 = sub_2245EBEAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245EBEAC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  swift_unknownObjectRelease();

  (*(v2 + 16))(v2, 0);
  _Block_release(*(v0 + 96));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2245EBF30()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  swift_unknownObjectRelease();

  v4 = sub_224626FA8();
  (*(v2 + 16))(v2, v4);

  _Block_release(*(v0 + 96));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2245EBFD8(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, void *a7, const char *a8, void *a9)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = *(Strong + *a7);
    v18 = Strong;

    os_unfair_lock_lock(v17 + 5);
    sub_2245EDFB8(&v17[4], a3, a1, a4, a8, a9);
    os_unfair_lock_unlock(v17 + 5);
  }

  return a5(a2);
}

uint64_t DockCoreManager.halt(info:delegate:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2245EC1A0, 0, 0);
}

uint64_t sub_2245EC1A0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v0 + 13;
  v0[3] = sub_22460AC44;
  v4 = swift_continuation_init();
  sub_2245EC258(v3, v2, v1, v4);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245EC258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a2;
  v7 = sub_224627B78();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  v12 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v13 = *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v13 + 4);

  v14 = *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v15 = *(a3 + v12);

  os_unfair_lock_unlock(v15 + 4);

  v16 = sub_2245E8814();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v16 && (v39[0] = a1, v39[1] = a4, v18 = swift_allocObject(), v18[2] = v17, v18[3] = sub_22460A958, v18[4] = v11, v45 = sub_22460A980, v46 = v18, aBlock = MEMORY[0x277D85DD0], v42 = 1107296256, v43 = sub_2245D42E8, v44 = &block_descriptor_1561, v19 = _Block_copy(&aBlock), v20 = v16, , , , v21 = [v20 synchronousRemoteObjectProxyWithErrorHandler_], _Block_release(v19), v20, sub_224628278(), swift_unknownObjectRelease(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0D8), swift_dynamicCast()))
  {
    v22 = aBlock;
    v23 = swift_allocObject();
    v24 = v40;
    v23[2] = v17;
    v23[3] = v24;
    v23[4] = sub_22460A958;
    v23[5] = v11;
    v45 = sub_22460A968;
    v46 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_2245E8ED8;
    v44 = &block_descriptor_1568;
    v25 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    [v22 haltWithInfo:v39[0] completion:v25];
    _Block_release(v25);

    return swift_unknownObjectRelease_n();
  }

  else
  {
    sub_22452ECAC();
    v27 = swift_allocError();
    *v28 = xmmword_22462FFB0;
    *(v28 + 16) = 4;
    swift_willThrow();

    (*(v8 + 16))(v10, a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v7);
    v29 = v27;
    v30 = v27;
    v31 = sub_224627B58();
    v32 = sub_224628048();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v40 = v11;
      v35 = v34;
      *v33 = 138412290;
      v36 = v27;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_224507000, v31, v32, "dockkit: failed getting sync cert connection, can't send xpc %@", v33, 0xCu);
      sub_2245098A0(v35, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v35, -1, -1);
      MEMORY[0x22AA526D0](v33, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
    swift_allocError();
    *v38 = v27;
    swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_2245EC97C(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[11] = a2;
  v4[12] = a4;
  v4[10] = a1;
  v4[13] = _Block_copy(aBlock);
  v7 = a1;
  swift_unknownObjectRetain();
  v8 = a4;

  return MEMORY[0x2822009F8](sub_2245ECA18, 0, 0);
}

uint64_t sub_2245ECA18()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v0 + 15;
  v0[3] = sub_2245ECAD0;
  v4 = swift_continuation_init();
  sub_2245EC258(v3, v2, v1, v4);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245ECAD0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 112) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_2245ECC90;
  }

  else
  {
    *(v1 + 121) = *(v1 + 120);
    v3 = sub_2245ECBF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2245ECBF4()
{
  v1 = *(v0 + 121);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);

  swift_unknownObjectRelease();
  (*(v2 + 16))(v2, v1, 0);
  _Block_release(*(v0 + 104));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2245ECC90()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);

  swift_unknownObjectRelease();
  v4 = sub_224626FA8();

  (*(v1 + 16))(v1, 0, v4);
  _Block_release(*(v0 + 104));
  v5 = *(v0 + 8);

  return v5();
}

void sub_2245ECDB4(uint64_t a1, uint64_t *a2, const char *a3)
{
  v5 = sub_224627B78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      v12 = *(v10 + *a2);

      [v12 invalidate];
    }

    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      v15 = *(v13 + *a2);
      if (v15)
      {
        v16 = v15;

        [v16 setExportedObject_];
        v14 = v16;
      }
    }

    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = *a2;
      v19 = *&v17[*a2];
      *&v17[v18] = 0;
    }
  }

  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    sub_22452ECAC();
    v22 = swift_allocError();
    *v23 = xmmword_22462FF80;
    *(v23 + 16) = 1;
    v24 = *&v21[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError];
    *&v21[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError] = v22;
  }

  v25 = swift_unknownObjectWeakLoadStrong();
  if (v25)
  {
    v26 = v25;
    (*(v6 + 16))(v8, v25 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v5);

    v27 = sub_224627B58();
    v28 = sub_224628058();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_224507000, v27, v28, a3, v29, 2u);
      MEMORY[0x22AA526D0](v29, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }

  v30 = swift_unknownObjectWeakLoadStrong();
  if (v30)
  {
    v31 = v30;
    swift_unknownObjectWeakAssign();
  }
}

void sub_2245ED064()
{
  v0 = sub_224627B78();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
    v6 = Strong;

    os_unfair_lock_lock(v5 + 4);
  }

  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {

    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v10 = *(v8 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_CameraCapture);

      [v10 invalidate];
    }

    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = *&v11[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_CameraCapture];
      *&v11[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_CameraCapture] = 0;
    }
  }

  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    (*(v1 + 16))(v3, v13 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v0);

    v15 = sub_224627B58();
    v16 = sub_224628058();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_224507000, v15, v16, "dockkit: Manager Camera Connection invalidated", v17, 2u);
      MEMORY[0x22AA526D0](v17, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
  }

  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    v19 = v18;
    sub_22452ECAC();
    v20 = swift_allocError();
    *v21 = xmmword_22462FF90;
    *(v21 + 16) = 2;
    v22 = *&v19[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError];
    *&v19[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError] = v20;
  }

  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = *(v23 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
    v25 = v23;

    os_unfair_lock_unlock(v24 + 4);
  }

  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = v26;
    swift_unknownObjectWeakAssign();
  }

  v28 = swift_unknownObjectWeakLoadStrong();
  if (v28)
  {
    v29 = v28;
    sub_2245D62DC();
  }

  v30 = swift_unknownObjectWeakLoadStrong();
  if (v30)
  {
    v31 = v30;
    v32 = swift_unknownObjectWeakLoadStrong();

    if (v32)
    {
      swift_unknownObjectRelease();
      v33 = swift_unknownObjectWeakLoadStrong();
      if (v33)
      {
        v34 = v33;
        v35 = swift_unknownObjectWeakLoadStrong();

        if (v35)
        {
          [v35 xpcDisconnected];
          swift_unknownObjectRelease();
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

uint64_t DockCoreManager.reboot(info:delegate:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_2245ED480, 0, 0);
}

uint64_t sub_2245ED480()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v0 + 13;
  v0[3] = sub_22460AC44;
  v4 = swift_continuation_init();
  sub_2245ED538(v3, v2, v1, v4);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245ED538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a2;
  v7 = sub_224627B78();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  v12 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v13 = *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v13 + 4);

  v14 = *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v15 = *(a3 + v12);

  os_unfair_lock_unlock(v15 + 4);

  v16 = sub_2245E8814();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v16 && (v39[0] = a1, v39[1] = a4, v18 = swift_allocObject(), v18[2] = v17, v18[3] = sub_22460A958, v18[4] = v11, v45 = sub_22460A980, v46 = v18, aBlock = MEMORY[0x277D85DD0], v42 = 1107296256, v43 = sub_2245D42E8, v44 = &block_descriptor_1543, v19 = _Block_copy(&aBlock), v20 = v16, , , , v21 = [v20 synchronousRemoteObjectProxyWithErrorHandler_], _Block_release(v19), v20, sub_224628278(), swift_unknownObjectRelease(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0D8), swift_dynamicCast()))
  {
    v22 = aBlock;
    v23 = swift_allocObject();
    v24 = v40;
    v23[2] = v17;
    v23[3] = v24;
    v23[4] = sub_22460A958;
    v23[5] = v11;
    v45 = sub_22460A964;
    v46 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_2245E8ED8;
    v44 = &block_descriptor_1550;
    v25 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    [v22 rebootWithInfo:v39[0] completion:v25];
    _Block_release(v25);

    return swift_unknownObjectRelease_n();
  }

  else
  {
    sub_22452ECAC();
    v27 = swift_allocError();
    *v28 = xmmword_22462FFB0;
    *(v28 + 16) = 4;
    swift_willThrow();

    (*(v8 + 16))(v10, a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v7);
    v29 = v27;
    v30 = v27;
    v31 = sub_224627B58();
    v32 = sub_224628048();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v40 = v11;
      v35 = v34;
      *v33 = 138412290;
      v36 = v27;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_224507000, v31, v32, "dockkit: failed getting sync cert connection, can't send xpc %@", v33, 0xCu);
      sub_2245098A0(v35, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v35, -1, -1);
      MEMORY[0x22AA526D0](v33, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
    swift_allocError();
    *v38 = v27;
    swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_2245EDC5C(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[11] = a2;
  v4[12] = a4;
  v4[10] = a1;
  v4[13] = _Block_copy(aBlock);
  v7 = a1;
  swift_unknownObjectRetain();
  v8 = a4;

  return MEMORY[0x2822009F8](sub_2245EDCF8, 0, 0);
}

uint64_t sub_2245EDCF8()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v0 + 15;
  v0[3] = sub_2245EDDB0;
  v4 = swift_continuation_init();
  sub_2245ED538(v3, v2, v1, v4);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245EDDB0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 112) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_22460AC10;
  }

  else
  {
    *(v1 + 121) = *(v1 + 120);
    v3 = sub_22460A918;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2245EDED4(unsigned int a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void), uint64_t a7, void *a8, const char *a9, void *a10)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = *(Strong + *a8);
    v19 = a6;
    v20 = Strong;

    a6 = v19;
    os_unfair_lock_lock(v18 + 5);
    sub_2245EDFB8(&v18[4], a4, a1, a5, a9, a10);
    os_unfair_lock_unlock(v18 + 5);
  }

  return a6(a2 & 1, a3);
}

void sub_2245EDFB8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, const char *a5, void *a6)
{
  v10 = sub_224627B78();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    (*(v11 + 16))(v13, Strong + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v10);

    v16 = sub_224627B58();
    v17 = sub_224628028();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = a5;
      v20 = a6;
      v21 = v18;
      *v18 = 67109120;
      *(v18 + 4) = a3;
      _os_log_impl(&dword_224507000, v16, v17, v19, v18, 8u);
      v22 = v21;
      a6 = v20;
      MEMORY[0x22AA526D0](v22, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
  }

  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    v25 = *a6;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *&v24[v25];
    *&v24[v25] = 0x8000000000000000;
    sub_22458EBBC(a4, a3, isUniquelyReferenced_nonNull_native);
    *&v24[v25] = v28;
  }
}

void sub_2245EE1C4(void *a1, int a2, void *a3, uint64_t a4, void *aBlock, void (*a6)(id, uint64_t, id, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  swift_unknownObjectRetain();
  v12 = a1;
  a6(v11, a4, v12, v10);
  _Block_release(v10);
  _Block_release(v10);

  swift_unknownObjectRelease();
}

uint64_t sub_2245EE298()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0B8);
  *v3 = v0;
  v3[1] = sub_2245EE3A0;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000012, 0x800000022463A110, sub_2245FC240, v2, v4);
}

uint64_t sub_2245EE3A0()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_2245EE4D8;
  }

  else
  {

    v2 = sub_2245EE4BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245EE4D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2245EE53C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_2245EE708(sub_22460A240, v7);
}

uint64_t sub_2245EE684(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0E8);
    return sub_224627F38();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0E8);
    return sub_224627F48();
  }
}

void sub_2245EE708(void (*a1)(void, void), uint64_t a2)
{
  v3 = v2;
  v6 = sub_224627B78();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v11 = *(v2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v11 + 4);

  v12 = *(v3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(v3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v13 = *(v3 + v10);

  os_unfair_lock_unlock(v13 + 4);

  v14 = sub_2245E4F94();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v14)
  {
    v36 = v6;
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = a1;
    v16[4] = a2;
    v41 = sub_22460A988;
    v42 = v16;
    aBlock = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_2245D42E8;
    v40 = &block_descriptor_482;
    v17 = _Block_copy(&aBlock);
    v18 = a1;
    v19 = v14;

    v20 = [v19 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v17);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0D0);
    if (swift_dynamicCast())
    {
      v7 = aBlock;
      v3 = swift_allocObject();
      *(v3 + 16) = a1;
      *(v3 + 24) = a2;
      v18 = swift_allocObject();
      *(v18 + 16) = sub_2245803F8;
      *(v18 + 24) = v3;
      v41 = sub_22460A92C;
      v42 = v18;
      aBlock = MEMORY[0x277D85DD0];
      v38 = 1107296256;
      v39 = sub_22460AC1C;
      v40 = &block_descriptor_493;
      v9 = _Block_copy(&aBlock);
      v14 = v42;

      swift_unknownObjectRetain();

      [v7 connectedClientsWithCompletion_];
      swift_unknownObjectRelease_n();

      _Block_release(v9);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
    }

    a1 = v18;
    v6 = v36;
  }

  sub_22452ECAC();
  v22 = swift_allocError();
  *v23 = xmmword_22462FFB0;
  *(v23 + 16) = 4;
  swift_willThrow();

  (*(v7 + 16))(v9, v3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v6);
  v24 = v22;
  v25 = v22;
  v26 = sub_224627B58();
  v27 = sub_224628048();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v36 = v7;
    v30 = a1;
    v31 = v29;
    *v28 = 138412290;
    v32 = v22;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 4) = v33;
    *v31 = v33;
    _os_log_impl(&dword_224507000, v26, v27, "dockkit: failed getting sync debug connection, can't send xpc %@", v28, 0xCu);
    sub_2245098A0(v31, &qword_27D0C9660);
    v34 = v31;
    a1 = v30;
    v7 = v36;
    MEMORY[0x22AA526D0](v34, -1, -1);
    MEMORY[0x22AA526D0](v28, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  v35 = v22;
  a1(0, v22);
}

uint64_t sub_2245EEE08(const void *a1, void *a2)
{
  *(v2 + 24) = a2;
  *(v2 + 32) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_2245EEE80, 0, 0);
}

uint64_t sub_2245EEE80()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0B8);
  *v3 = v0;
  v3[1] = sub_2245EEF88;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000012, 0x800000022463A110, sub_22460AC4C, v2, v4);
}

uint64_t sub_2245EEF88()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_2245EF12C;
  }

  else
  {

    v2 = sub_2245EF0A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245EF0A4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 16);
  (v1)[2](v1, v2, 0);
  _Block_release(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2245EF12C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);

  v3 = sub_224626FA8();

  (v2)[2](v2, 0, v3);
  _Block_release(v2);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2245EF214()
{
  v1 = v0[11];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_2245804E4;
  v2 = swift_continuation_init();
  sub_2245EF2B8(v1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245EF2B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_224627B78();
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v10 = *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v10 + 4);

  v11 = *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v12 = *(a1 + v9);

  os_unfair_lock_unlock(v12 + 4);

  v13 = sub_2245E4F94();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v13)
  {
    v33 = a2;
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = sub_22458013C;
    v15[4] = v8;
    v38 = sub_22460A998;
    v39 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = sub_2245D42E8;
    v37 = &block_descriptor_1518;
    v16 = _Block_copy(&aBlock);
    v17 = v13;

    v18 = [v17 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v16);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0D0);
    if (swift_dynamicCast())
    {
      v4 = aBlock;
      v5 = swift_allocObject();
      *(v5 + 16) = sub_22458013C;
      *(v5 + 24) = v8;
      a1 = swift_allocObject();
      *(a1 + 16) = sub_22460A934;
      *(a1 + 24) = v5;
      v38 = sub_22460A938;
      v39 = a1;
      aBlock = MEMORY[0x277D85DD0];
      v35 = 1107296256;
      v36 = sub_2245EFD04;
      v37 = &block_descriptor_1529;
      v7 = _Block_copy(&aBlock);

      swift_unknownObjectRetain();

      [v4 versionsWithCompletion_];
      swift_unknownObjectRelease_n();

      _Block_release(v7);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }
  }

  sub_22452ECAC();
  v21 = swift_allocError();
  *v22 = xmmword_22462FFB0;
  *(v22 + 16) = 4;
  swift_willThrow();

  (*(v5 + 16))(v7, a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v4);
  v23 = v21;
  v24 = v21;
  v25 = sub_224627B58();
  v26 = sub_224628048();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v33 = v5;
    v29 = v28;
    *v27 = 138412290;
    v30 = v21;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v31;
    *v29 = v31;
    _os_log_impl(&dword_224507000, v25, v26, "dockkit: failed getting sync debug connection, can't send xpc %@", v27, 0xCu);
    sub_2245098A0(v29, &qword_27D0C9660);
    v5 = v33;
    MEMORY[0x22AA526D0](v29, -1, -1);
    MEMORY[0x22AA526D0](v27, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v32 = v21;
  swift_continuation_throwingResumeWithError();
}

uint64_t sub_2245EFA08(const void *a1, void *a2)
{
  *(v2 + 88) = a2;
  *(v2 + 96) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_2245EFA80, 0, 0);
}

uint64_t sub_2245EFA80()
{
  v1 = v0[11];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_2245EFB24;
  v2 = swift_continuation_init();
  sub_2245EF2B8(v1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245EFB24()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 104) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_22460A978;
  }

  else
  {
    *(v1 + 112) = *(v1 + 80);
    v3 = sub_2245EFC48;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2245EFC48()
{
  v1 = *(v0 + 112);

  if (v1)
  {
    v1 = sub_224627C48();
  }

  v2 = *(v0 + 96);
  (v2)[2](v2, v1, 0);

  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2245EFD04(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_224627C58();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

void sub_2245EFDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_224627C48();
    if (a2)
    {
LABEL_3:
      v6 = sub_224626FA8();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t DockCoreManager.migrateData(update:)(char a1)
{
  *(v2 + 80) = v1;
  *(v2 + 89) = a1;
  return MEMORY[0x2822009F8](sub_2245EFE74, 0, 0);
}

uint64_t sub_2245EFE74()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 89);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 88;
  *(v0 + 24) = sub_2245EFF28;
  v3 = swift_continuation_init();
  sub_2245F0044(v2, v1, v3);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_2245EFF28()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
    v2 = *(v1 + 8);
    v3 = 0;
  }

  else
  {
    v3 = *(*v0 + 88);
    v2 = *(v1 + 8);
  }

  return v2(v3);
}

uint64_t sub_2245F0044(int a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_224627B78();
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v12 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v12 + 4);

  v13 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v14 = *(a2 + v11);

  os_unfair_lock_unlock(v14 + 4);

  v15 = sub_2245E4F94();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v15)
  {
    v36 = a1;
    v37 = a3;
    v17 = swift_allocObject();
    *(v17 + 2) = v16;
    *(v17 + 3) = sub_22460A958;
    *(v17 + 4) = v10;
    v42 = sub_22460A980;
    v43 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_2245D42E8;
    v41 = &block_descriptor_1496;
    v18 = _Block_copy(&aBlock);
    v19 = v15;

    v20 = [v19 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v18);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0D0);
    if (swift_dynamicCast())
    {
      v6 = aBlock;
      v7 = swift_allocObject();
      *(v7 + 16) = sub_22460A958;
      *(v7 + 24) = v10;
      a2 = swift_allocObject();
      *(a2 + 16) = sub_2245803F4;
      *(a2 + 24) = v7;
      v42 = sub_22460A920;
      v43 = a2;
      aBlock = MEMORY[0x277D85DD0];
      v39 = 1107296256;
      v40 = sub_2245D4378;
      v41 = &block_descriptor_1507;
      v21 = _Block_copy(&aBlock);
      v9 = v43;

      swift_unknownObjectRetain();

      [v6 migrateDataWithUpdate:v36 & 1 completion:v21];
      swift_unknownObjectRelease_n();

      _Block_release(v21);
      LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

      if ((v21 & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }
  }

  sub_22452ECAC();
  v23 = swift_allocError();
  *v24 = xmmword_22462FFB0;
  *(v24 + 16) = 4;
  swift_willThrow();

  (*(v7 + 16))(v9, a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v6);
  v25 = v23;
  v26 = v23;
  v27 = sub_224627B58();
  v28 = sub_224628048();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v37 = v7;
    v31 = v30;
    *v29 = 138412290;
    v32 = v23;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v33;
    *v31 = v33;
    _os_log_impl(&dword_224507000, v27, v28, "dockkit: failed getting sync debug connection, can't send xpc %@", v29, 0xCu);
    sub_2245098A0(v31, &qword_27D0C9660);
    v7 = v37;
    MEMORY[0x22AA526D0](v31, -1, -1);
    MEMORY[0x22AA526D0](v29, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v34 = v23;
  swift_continuation_throwingResumeWithError();
}

uint64_t sub_2245F07B4(char a1, void *aBlock, void *a3)
{
  *(v3 + 80) = a3;
  *(v3 + 105) = a1;
  *(v3 + 88) = _Block_copy(aBlock);
  v5 = a3;

  return MEMORY[0x2822009F8](sub_2245F0834, 0, 0);
}

uint64_t sub_2245F0834()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 105);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 104;
  *(v0 + 24) = sub_2245F08E8;
  v3 = swift_continuation_init();
  sub_2245F0044(v2, v1, v3);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_2245F08E8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 96) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_2245F0A90;
  }

  else
  {
    *(v1 + 106) = *(v1 + 104);
    v3 = sub_2245F0A0C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2245F0A0C()
{
  v1 = *(v0 + 106);
  v2 = *(v0 + 88);

  (*(v2 + 16))(v2, v1, 0);
  _Block_release(*(v0 + 88));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2245F0A90()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  v3 = sub_224626FA8();
  (*(v1 + 16))(v1, 0, v3);

  _Block_release(*(v0 + 88));
  v4 = *(v0 + 8);

  return v4();
}

void sub_2245F0B4C(void *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a1;
  a5(a3, v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t sub_2245F0BF4()
{
  v1 = v0[12];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_22460A95C;
  v2 = swift_continuation_init();
  sub_2245F0C98(v1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245F0C98(uint64_t a1, uint64_t a2)
{
  v4 = sub_224627B78();
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v10 = *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v10 + 4);

  v11 = *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v12 = *(a1 + v9);

  os_unfair_lock_unlock(v12 + 4);

  v13 = sub_2245E8814();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v13)
  {
    v33 = a2;
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = sub_22460A238;
    v15[4] = v8;
    v38 = sub_22460A994;
    v39 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = sub_2245D42E8;
    v37 = &block_descriptor_1474;
    v16 = _Block_copy(&aBlock);
    v17 = v13;

    v18 = [v17 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v16);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0D8);
    if (swift_dynamicCast())
    {
      v4 = aBlock;
      v5 = swift_allocObject();
      *(v5 + 16) = sub_22460A238;
      *(v5 + 24) = v8;
      a1 = swift_allocObject();
      *(a1 + 16) = sub_22460AC2C;
      *(a1 + 24) = v5;
      v38 = sub_22460AC30;
      v39 = a1;
      aBlock = MEMORY[0x277D85DD0];
      v35 = 1107296256;
      v36 = sub_2245F1974;
      v37 = &block_descriptor_1485;
      v7 = _Block_copy(&aBlock);

      swift_unknownObjectRetain();

      [v4 dumpStateWithCompletion_];
      swift_unknownObjectRelease_n();

      _Block_release(v7);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }
  }

  sub_22452ECAC();
  v21 = swift_allocError();
  *v22 = xmmword_22462FFB0;
  *(v22 + 16) = 4;
  swift_willThrow();

  (*(v5 + 16))(v7, a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v4);
  v23 = v21;
  v24 = v21;
  v25 = sub_224627B58();
  v26 = sub_224628048();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v33 = v5;
    v29 = v28;
    *v27 = 138412290;
    v30 = v21;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v31;
    *v29 = v31;
    _os_log_impl(&dword_224507000, v25, v26, "dockkit: failed getting sync cert connection, can't send xpc %@", v27, 0xCu);
    sub_2245098A0(v29, &qword_27D0C9660);
    v5 = v33;
    MEMORY[0x22AA526D0](v29, -1, -1);
    MEMORY[0x22AA526D0](v27, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v32 = v21;
  swift_continuation_throwingResumeWithError();
}

uint64_t sub_2245F13E8(const void *a1, void *a2)
{
  *(v2 + 96) = a2;
  *(v2 + 104) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_2245F1460, 0, 0);
}

uint64_t sub_2245F1460()
{
  v1 = v0[12];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_2245F1504;
  v2 = swift_continuation_init();
  sub_2245F0C98(v1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245F1504()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 112) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_2245F16CC;
  }

  else
  {
    v4 = v1[11];
    v1[15] = v1[10];
    v1[16] = v4;
    v3 = sub_2245F1628;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2245F1628()
{
  v1 = sub_224627CB8();

  v2 = *(v0 + 104);
  (v2)[2](v2, v1, 0);

  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2245F16CC()
{
  v1 = *(v0 + 112);

  v2 = sub_224626FA8();
  v3 = *(v0 + 104);
  (v3)[2](v3, 0, v2);

  _Block_release(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2245F176C(void *a1, uint64_t a2, uint64_t (*a3)(void, unint64_t, void *))
{
  v5 = sub_224627B78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    (*(v6 + 16))(v8, Strong + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v5);

    v11 = a1;
    v12 = sub_224627B58();
    v13 = sub_224628048();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = a1;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_224507000, v12, v13, "error from remote proxy: %@", v14, 0xCu);
      sub_2245098A0(v15, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v15, -1, -1);
      MEMORY[0x22AA526D0](v14, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }

  return a3(0, 0xE000000000000000, a1);
}

void sub_2245F1974(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_224627CD8();
  v7 = v6;
  v8 = a3;
  v4(v5, v7, a3);
}

void sub_2245F1A10(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

void sub_2245F1A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_224627CB8();
  if (a3)
  {
    v7 = sub_224626FA8();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t DockCoreManager.unpairAccessory(info:)(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2822009F8](sub_2245F1B30, 0, 0);
}

uint64_t sub_2245F1B30()
{
  v2 = v0[10];
  v1 = v0[11];
  v0[2] = v0;
  v0[3] = sub_2245804E0;
  v3 = swift_continuation_init();
  sub_2245F1BD8(v2, v1, v3);

  return MEMORY[0x282200938](v0 + 2);
}

void sub_2245F1BD8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_224627B78();
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v12 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v12 + 4);

  v13 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v14 = *(a2 + v11);

  os_unfair_lock_unlock(v14 + 4);

  v15 = sub_2245E8814();
  if (v15)
  {
    v16 = v15;
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = sub_2245803FC;
    v18[4] = v10;
    v39 = sub_22460A980;
    v40 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_2245D42E8;
    v38 = &block_descriptor_1452;
    v19 = _Block_copy(&aBlock);

    v20 = [v16 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v19);
    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0D8);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v6 = v34[2];
    v7 = swift_allocObject();
    *(v7 + 16) = sub_2245803FC;
    *(v7 + 24) = v10;
    a2 = swift_allocObject();
    *(a2 + 16) = sub_2245803F4;
    *(a2 + 24) = v7;
    v39 = sub_22460A920;
    v40 = a2;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_2245D4378;
    v38 = &block_descriptor_1463;
    v9 = _Block_copy(&aBlock);
    a3 = v40;

    swift_unknownObjectRetain();

    [v6 unpairAccessoryWithInfo:a1 completion:v9];

    swift_unknownObjectRelease_n();
    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  sub_22452ECAC();
  v22 = swift_allocError();
  *v23 = xmmword_22462FFB0;
  *(v23 + 16) = 4;
  swift_willThrow();
  (*(v7 + 16))(v9, a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v6);
  v24 = v22;
  v25 = v22;
  v26 = sub_224627B58();
  v27 = sub_224628048();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v34[1] = a3;
    v29 = v28;
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    v31 = v22;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v32;
    *v30 = v32;
    _os_log_impl(&dword_224507000, v26, v27, "dockkit: failed getting sync cert connection, can't send xpc %@", v29, 0xCu);
    sub_2245098A0(v30, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v30, -1, -1);
    MEMORY[0x22AA526D0](v29, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v33 = v22;
  swift_continuation_throwingResumeWithError();
}

uint64_t sub_2245F2324(void *a1, void *aBlock, void *a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v3[12] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_2245F23B0, 0, 0);
}

uint64_t sub_2245F23B0()
{
  v2 = v0[10];
  v1 = v0[11];
  v0[2] = v0;
  v0[3] = sub_2245F2458;
  v3 = swift_continuation_init();
  sub_2245F1BD8(v2, v1, v3);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245F2458()
{
  v1 = *(*v0 + 48);
  *(*v0 + 104) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_22460AC28;
  }

  else
  {
    v2 = sub_22460A908;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t DockCoreManager.returnToBase(info:)(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2822009F8](sub_2245F25AC, 0, 0);
}

uint64_t sub_2245F25AC()
{
  v2 = v0[10];
  v1 = v0[11];
  v0[2] = v0;
  v0[3] = sub_2245804E0;
  v3 = swift_continuation_init();
  sub_2245F2654(v2, v1, v3);

  return MEMORY[0x282200938](v0 + 2);
}

void sub_2245F2654(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_224627B78();
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v12 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v12 + 4);

  v13 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v14 = *(a2 + v11);

  os_unfair_lock_unlock(v14 + 4);

  v15 = sub_2245E8814();
  if (v15)
  {
    v16 = v15;
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = sub_2245803FC;
    v18[4] = v10;
    v39 = sub_22460A980;
    v40 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_2245D42E8;
    v38 = &block_descriptor_1430;
    v19 = _Block_copy(&aBlock);

    v20 = [v16 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v19);
    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0D8);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v6 = v34[2];
    v7 = swift_allocObject();
    *(v7 + 16) = sub_2245803FC;
    *(v7 + 24) = v10;
    a2 = swift_allocObject();
    *(a2 + 16) = sub_2245803F4;
    *(a2 + 24) = v7;
    v39 = sub_22460A920;
    v40 = a2;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_2245D4378;
    v38 = &block_descriptor_1441;
    v9 = _Block_copy(&aBlock);
    a3 = v40;

    swift_unknownObjectRetain();

    [v6 returnToBaseWithInfo:a1 completion:v9];

    swift_unknownObjectRelease_n();
    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  sub_22452ECAC();
  v22 = swift_allocError();
  *v23 = xmmword_22462FFB0;
  *(v23 + 16) = 4;
  swift_willThrow();
  (*(v7 + 16))(v9, a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v6);
  v24 = v22;
  v25 = v22;
  v26 = sub_224627B58();
  v27 = sub_224628048();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v34[1] = a3;
    v29 = v28;
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    v31 = v22;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v32;
    *v30 = v32;
    _os_log_impl(&dword_224507000, v26, v27, "dockkit: failed getting sync debug connection, can't send xpc %@", v29, 0xCu);
    sub_2245098A0(v30, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v30, -1, -1);
    MEMORY[0x22AA526D0](v29, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v33 = v22;
  swift_continuation_throwingResumeWithError();
}

uint64_t sub_2245F2DA0(void *a1, void *aBlock, void *a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v3[12] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_2245F2E2C, 0, 0);
}

uint64_t sub_2245F2E2C()
{
  v2 = v0[10];
  v1 = v0[11];
  v0[2] = v0;
  v0[3] = sub_2245F2ED4;
  v3 = swift_continuation_init();
  sub_2245F2654(v2, v1, v3);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245F2ED4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 104) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_2245F3074;
  }

  else
  {
    v2 = sub_2245F2FF0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245F2FF0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  (*(v2 + 16))(v2, 0);
  _Block_release(*(v0 + 96));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2245F3074()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);

  v4 = sub_224626FA8();
  (*(v1 + 16))(v1, v4);

  _Block_release(*(v0 + 96));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t DockCoreManager.dumpTrackerDiags(path:)(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return MEMORY[0x2822009F8](sub_2245F3154, 0, 0);
}

uint64_t sub_2245F3154()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_2245804E4;
  v4 = swift_continuation_init();
  sub_2245F320C(v3, v2, v1, v4);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245F320C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v42 = sub_224627B78();
  v7 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  sub_22450950C(0, &unk_27D0C8D40);
  v11 = sub_224628208();
  v12 = a2;
  v13 = v11;
  if (v12)
  {
    v14 = sub_224627CB8();

    v13 = v14;
  }

  v15 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v16 = *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v16 + 4);

  v17 = *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v18 = *(a3 + v15);

  os_unfair_lock_unlock(v18 + 4);

  v19 = sub_2245E4F94();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v19)
  {
    v41 = a4;
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = sub_22460A954;
    v21[4] = v10;
    v47 = sub_22460A984;
    v48 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_2245D42E8;
    v46 = &block_descriptor_1408;
    v22 = _Block_copy(&aBlock);
    v23 = v19;

    v24 = [v23 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v22);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0D0);
    if (swift_dynamicCast())
    {
      v7 = aBlock;
      v25 = swift_allocObject();
      *(v25 + 16) = sub_22460A954;
      *(v25 + 24) = v10;
      a3 = swift_allocObject();
      *(a3 + 16) = sub_22460A924;
      *(a3 + 24) = v25;
      v47 = sub_22460A928;
      v48 = a3;
      aBlock = MEMORY[0x277D85DD0];
      v44 = 1107296256;
      v45 = sub_2245F3D90;
      v46 = &block_descriptor_1419;
      v9 = _Block_copy(&aBlock);

      swift_unknownObjectRetain();

      [v7 dumpTrackerDiagnosticsWithPath:v13 completion:v9];
      swift_unknownObjectRelease();

      _Block_release(v9);
      swift_unknownObjectRelease();
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }
  }

  sub_22452ECAC();
  v28 = swift_allocError();
  *v29 = xmmword_22462FFB0;
  *(v29 + 16) = 4;
  swift_willThrow();

  (*(v7 + 16))(v9, a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v42);
  v30 = v28;
  v31 = v28;
  v32 = sub_224627B58();
  v33 = sub_224628048();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v41 = v13;
    v35 = v34;
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    v37 = v28;
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 4) = v38;
    *v36 = v38;
    _os_log_impl(&dword_224507000, v32, v33, "dockkit: failed getting tracker debug sync connection, can't send xpc %@", v35, 0xCu);
    sub_2245098A0(v36, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v36, -1, -1);
    v13 = v41;
    MEMORY[0x22AA526D0](v35, -1, -1);
  }

  (*(v7 + 8))(v9, v42);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v39 = v28;
  swift_continuation_throwingResumeWithError();
}

uint64_t sub_2245F39C8(uint64_t a1, void *aBlock, void *a3)
{
  v3[11] = a3;
  v3[12] = _Block_copy(aBlock);
  if (a1)
  {
    v6 = sub_224627CD8();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v3[13] = v6;
  v3[14] = v7;
  v8 = a3;

  return MEMORY[0x2822009F8](sub_2245F3A64, 0, 0);
}

uint64_t sub_2245F3A64()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_2245F3B24;
  v4 = swift_continuation_init();
  sub_2245F320C(v2, v1, v3, v4);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245F3B24()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 120) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_2245F3CF0;
  }

  else
  {
    *(v1 + 128) = *(v1 + 80);
    v3 = sub_2245F3C48;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2245F3C48()
{
  v1 = sub_224627EB8();

  v2 = *(v0 + 96);
  (v2)[2](v2, v1, 0);

  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2245F3CF0()
{
  v1 = *(v0 + 120);

  v2 = sub_224626FA8();
  v3 = *(v0 + 96);
  (v3)[2](v3, 0, v2);

  _Block_release(v3);
  v4 = *(v0 + 8);

  return v4();
}

void sub_2245F3D90(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_224627ED8();
  v6 = a3;
  v4(v5, a3);
}

void sub_2245F3E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_224627EB8();
  if (a2)
  {
    v6 = sub_224626FA8();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t DockCoreManager.dumpTrackerStates(path:)(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return MEMORY[0x2822009F8](sub_2245F3ED8, 0, 0);
}

uint64_t sub_2245F3ED8()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_2245804E4;
  v4 = swift_continuation_init();
  sub_2245F3F90(v3, v2, v1, v4);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245F3F90(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v42 = sub_224627B78();
  v7 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  sub_22450950C(0, &unk_27D0C8D40);
  v11 = sub_224628208();
  v12 = a2;
  v13 = v11;
  if (v12)
  {
    v14 = sub_224627CB8();

    v13 = v14;
  }

  v15 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v16 = *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v16 + 4);

  v17 = *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v18 = *(a3 + v15);

  os_unfair_lock_unlock(v18 + 4);

  v19 = sub_2245E4F94();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v19)
  {
    v41 = a4;
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = sub_22460A954;
    v21[4] = v10;
    v47 = sub_22460A984;
    v48 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_2245D42E8;
    v46 = &block_descriptor_1386;
    v22 = _Block_copy(&aBlock);
    v23 = v19;

    v24 = [v23 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v22);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0D0);
    if (swift_dynamicCast())
    {
      v7 = aBlock;
      v25 = swift_allocObject();
      *(v25 + 16) = sub_22460A954;
      *(v25 + 24) = v10;
      a3 = swift_allocObject();
      *(a3 + 16) = sub_22460A924;
      *(a3 + 24) = v25;
      v47 = sub_22460A928;
      v48 = a3;
      aBlock = MEMORY[0x277D85DD0];
      v44 = 1107296256;
      v45 = sub_2245F3D90;
      v46 = &block_descriptor_1397;
      v9 = _Block_copy(&aBlock);

      swift_unknownObjectRetain();

      [v7 dumpTrackerStateWithPath:v13 completion:v9];
      swift_unknownObjectRelease();

      _Block_release(v9);
      swift_unknownObjectRelease();
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }
  }

  sub_22452ECAC();
  v28 = swift_allocError();
  *v29 = xmmword_22462FFB0;
  *(v29 + 16) = 4;
  swift_willThrow();

  (*(v7 + 16))(v9, a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v42);
  v30 = v28;
  v31 = v28;
  v32 = sub_224627B58();
  v33 = sub_224628048();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v41 = v13;
    v35 = v34;
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    v37 = v28;
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 4) = v38;
    *v36 = v38;
    _os_log_impl(&dword_224507000, v32, v33, "dockkit: failed getting tracker debug sync connection, can't send xpc %@", v35, 0xCu);
    sub_2245098A0(v36, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v36, -1, -1);
    v13 = v41;
    MEMORY[0x22AA526D0](v35, -1, -1);
  }

  (*(v7 + 8))(v9, v42);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v39 = v28;
  swift_continuation_throwingResumeWithError();
}

uint64_t sub_2245F474C(uint64_t a1, void *aBlock, void *a3)
{
  v3[11] = a3;
  v3[12] = _Block_copy(aBlock);
  if (a1)
  {
    v6 = sub_224627CD8();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v3[13] = v6;
  v3[14] = v7;
  v8 = a3;

  return MEMORY[0x2822009F8](sub_2245F47E8, 0, 0);
}

uint64_t sub_2245F47E8()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_2245F48A8;
  v4 = swift_continuation_init();
  sub_2245F3F90(v2, v1, v3, v4);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245F48A8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 120) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_22460A974;
  }

  else
  {
    *(v1 + 128) = *(v1 + 80);
    v3 = sub_22460A970;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2245F49E4(void *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, uint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  if (a3)
  {
    v9 = sub_224627CD8();
    a3 = v10;
  }

  else
  {
    v9 = 0;
  }

  _Block_copy(v8);
  v11 = a1;
  a5(v9, a3, v11, v8);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t DockCoreManager.search(calibrate:)(char a1)
{
  *(v2 + 88) = v1;
  *(v2 + 96) = a1;
  return MEMORY[0x2822009F8](sub_2245F4AB8, 0, 0);
}

uint64_t sub_2245F4AB8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 80;
  *(v0 + 24) = sub_2245804E4;
  v3 = swift_continuation_init();
  sub_2245F4B6C(v2, v1, v3);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_2245F4B6C(int a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_224627B78();
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v12 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v12 + 4);

  v13 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v14 = *(a2 + v11);

  os_unfair_lock_unlock(v14 + 4);

  v15 = sub_2245E4F94();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v15)
  {
    v36 = a1;
    v37 = a3;
    v17 = swift_allocObject();
    *(v17 + 2) = v16;
    *(v17 + 3) = sub_22460A954;
    *(v17 + 4) = v10;
    v42 = sub_22460A984;
    v43 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_2245D42E8;
    v41 = &block_descriptor_1364;
    v18 = _Block_copy(&aBlock);
    v19 = v15;

    v20 = [v19 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v18);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0D0);
    if (swift_dynamicCast())
    {
      v6 = aBlock;
      v7 = swift_allocObject();
      *(v7 + 16) = sub_22460A954;
      *(v7 + 24) = v10;
      a2 = swift_allocObject();
      *(a2 + 16) = sub_22460A924;
      *(a2 + 24) = v7;
      v42 = sub_22460A928;
      v43 = a2;
      aBlock = MEMORY[0x277D85DD0];
      v39 = 1107296256;
      v40 = sub_2245F3D90;
      v41 = &block_descriptor_1375;
      v21 = _Block_copy(&aBlock);
      v9 = v43;

      swift_unknownObjectRetain();

      [v6 searchWithCalibrate:v36 & 1 completion:v21];
      swift_unknownObjectRelease_n();

      _Block_release(v21);
      LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

      if ((v21 & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }
  }

  sub_22452ECAC();
  v23 = swift_allocError();
  *v24 = xmmword_22462FFB0;
  *(v24 + 16) = 4;
  swift_willThrow();

  (*(v7 + 16))(v9, a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v6);
  v25 = v23;
  v26 = v23;
  v27 = sub_224627B58();
  v28 = sub_224628048();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v37 = v7;
    v31 = v30;
    *v29 = 138412290;
    v32 = v23;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v33;
    *v31 = v33;
    _os_log_impl(&dword_224507000, v27, v28, "dockkit: failed getting tracker debug sync connection, can't send xpc %@", v29, 0xCu);
    sub_2245098A0(v31, &qword_27D0C9660);
    v7 = v37;
    MEMORY[0x22AA526D0](v31, -1, -1);
    MEMORY[0x22AA526D0](v29, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v34 = v23;
  swift_continuation_throwingResumeWithError();
}

uint64_t sub_2245F52DC(char a1, void *aBlock, void *a3)
{
  *(v3 + 88) = a3;
  *(v3 + 120) = a1;
  *(v3 + 96) = _Block_copy(aBlock);
  v5 = a3;

  return MEMORY[0x2822009F8](sub_2245F535C, 0, 0);
}

uint64_t sub_2245F535C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 120);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 80;
  *(v0 + 24) = sub_2245F5410;
  v3 = swift_continuation_init();
  sub_2245F4B6C(v2, v1, v3);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_2245F5410()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 104) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_22460A978;
  }

  else
  {
    *(v1 + 112) = *(v1 + 80);
    v3 = sub_22460A97C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t DockCoreManager.stopSearch(calibrate:)(char a1)
{
  *(v2 + 88) = v1;
  *(v2 + 96) = a1;
  return MEMORY[0x2822009F8](sub_2245F5570, 0, 0);
}

uint64_t sub_2245F5570()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 80;
  *(v0 + 24) = sub_2245804E4;
  v3 = swift_continuation_init();
  sub_2245F5624(v2, v1, v3);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_2245F5624(int a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_224627B78();
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v12 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v12 + 4);

  v13 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v14 = *(a2 + v11);

  os_unfair_lock_unlock(v14 + 4);

  v15 = sub_2245E4F94();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v15)
  {
    v36 = a1;
    v37 = a3;
    v17 = swift_allocObject();
    *(v17 + 2) = v16;
    *(v17 + 3) = sub_22460A954;
    *(v17 + 4) = v10;
    v42 = sub_22460A984;
    v43 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_2245D42E8;
    v41 = &block_descriptor_1342;
    v18 = _Block_copy(&aBlock);
    v19 = v15;

    v20 = [v19 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v18);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0D0);
    if (swift_dynamicCast())
    {
      v6 = aBlock;
      v7 = swift_allocObject();
      *(v7 + 16) = sub_22460A954;
      *(v7 + 24) = v10;
      a2 = swift_allocObject();
      *(a2 + 16) = sub_22460A924;
      *(a2 + 24) = v7;
      v42 = sub_22460A928;
      v43 = a2;
      aBlock = MEMORY[0x277D85DD0];
      v39 = 1107296256;
      v40 = sub_2245F3D90;
      v41 = &block_descriptor_1353;
      v21 = _Block_copy(&aBlock);
      v9 = v43;

      swift_unknownObjectRetain();

      [v6 stopSearchWithCalibrate:v36 & 1 completion:v21];
      swift_unknownObjectRelease_n();

      _Block_release(v21);
      LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

      if ((v21 & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }
  }

  sub_22452ECAC();
  v23 = swift_allocError();
  *v24 = xmmword_22462FFB0;
  *(v24 + 16) = 4;
  swift_willThrow();

  (*(v7 + 16))(v9, a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v6);
  v25 = v23;
  v26 = v23;
  v27 = sub_224627B58();
  v28 = sub_224628048();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v37 = v7;
    v31 = v30;
    *v29 = 138412290;
    v32 = v23;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v33;
    *v31 = v33;
    _os_log_impl(&dword_224507000, v27, v28, "dockkit: failed getting tracker debug sync connection, can't send xpc %@", v29, 0xCu);
    sub_2245098A0(v31, &qword_27D0C9660);
    v7 = v37;
    MEMORY[0x22AA526D0](v31, -1, -1);
    MEMORY[0x22AA526D0](v29, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v34 = v23;
  swift_continuation_throwingResumeWithError();
}

uint64_t sub_2245F5D94(char a1, void *aBlock, void *a3)
{
  *(v3 + 88) = a3;
  *(v3 + 120) = a1;
  *(v3 + 96) = _Block_copy(aBlock);
  v5 = a3;

  return MEMORY[0x2822009F8](sub_2245F5E14, 0, 0);
}

uint64_t sub_2245F5E14()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 120);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 80;
  *(v0 + 24) = sub_2245F5EC8;
  v3 = swift_continuation_init();
  sub_2245F5624(v2, v1, v3);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_2245F5EC8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 104) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_2245D7CE0;
  }

  else
  {
    *(v1 + 112) = *(v1 + 80);
    v3 = sub_2245F5FEC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2245F5FEC()
{
  v1 = sub_224627EB8();

  v2 = *(v0 + 96);
  (v2)[2](v2, v1, 0);

  _Block_release(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t DockCoreManager.setDockTrackingButtonState(state:)(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2822009F8](sub_2245F60CC, 0, 0);
}

uint64_t sub_2245F60CC()
{
  v2 = v0[10];
  v1 = v0[11];
  v0[2] = v0;
  v0[7] = v0 + 12;
  v0[3] = sub_2245F617C;
  v3 = swift_continuation_init();
  sub_2245F635C(v2, v1, v3);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245F617C()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
    v2 = *(v1 + 8);
    v3 = 0;
  }

  else
  {
    v3 = *(*v0 + 96);
    v2 = *(v1 + 8);
  }

  return v2(v3);
}

uint64_t sub_2245F6298(char a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
    swift_allocError();
    *v4 = a2;
    v5 = a2;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(a3 + 64) + 40) = a1 & 1;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_2245F635C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_224627B78();
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v12 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v12 + 4);

  v13 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v14 = *(a2 + v11);

  os_unfair_lock_unlock(v14 + 4);

  v15 = sub_2245E4F94();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v15)
  {
    v36 = a1;
    v37 = a3;
    v17 = swift_allocObject();
    *(v17 + 2) = v16;
    *(v17 + 3) = sub_22460A21C;
    *(v17 + 4) = v10;
    v42 = sub_22460A980;
    v43 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_2245D42E8;
    v41 = &block_descriptor_1320;
    v18 = _Block_copy(&aBlock);
    v19 = v15;

    v20 = [v19 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v18);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0D0);
    if (swift_dynamicCast())
    {
      v6 = aBlock;
      v7 = swift_allocObject();
      *(v7 + 16) = sub_22460A21C;
      *(v7 + 24) = v10;
      a2 = swift_allocObject();
      *(a2 + 16) = sub_2245803F4;
      *(a2 + 24) = v7;
      v42 = sub_22460A920;
      v43 = a2;
      aBlock = MEMORY[0x277D85DD0];
      v39 = 1107296256;
      v40 = sub_2245D4378;
      v41 = &block_descriptor_1331;
      v21 = _Block_copy(&aBlock);
      v9 = v43;

      [v6 setTrackingButtonStateWithState:v36 completion:v21];
      swift_unknownObjectRelease();

      _Block_release(v21);
      LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

      if ((v21 & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }
  }

  sub_22452ECAC();
  v23 = swift_allocError();
  *v24 = xmmword_22462FFB0;
  *(v24 + 16) = 4;
  swift_willThrow();

  (*(v7 + 16))(v9, a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v6);
  v25 = v23;
  v26 = v23;
  v27 = sub_224627B58();
  v28 = sub_224628048();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v37 = v10;
    v31 = v30;
    *v29 = 138412290;
    v32 = v23;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v33;
    *v31 = v33;
    _os_log_impl(&dword_224507000, v27, v28, "dockkit: failed getting sync connection, can't send xpc %@", v29, 0xCu);
    sub_2245098A0(v31, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v31, -1, -1);
    MEMORY[0x22AA526D0](v29, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v34 = v23;
  swift_continuation_throwingResumeWithError();
}

uint64_t sub_2245F6AB8(uint64_t a1, void *aBlock, void *a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v3[12] = _Block_copy(aBlock);
  v5 = a3;

  return MEMORY[0x2822009F8](sub_2245F6B34, 0, 0);
}

uint64_t sub_2245F6B34()
{
  v2 = v0[10];
  v1 = v0[11];
  v0[2] = v0;
  v0[7] = v0 + 14;
  v0[3] = sub_2245F6BE4;
  v3 = swift_continuation_init();
  sub_2245F635C(v2, v1, v3);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245F6BE4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 104) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_2245F6D8C;
  }

  else
  {
    *(v1 + 113) = *(v1 + 112);
    v3 = sub_2245F6D08;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2245F6D08()
{
  v1 = *(v0 + 113);
  v2 = *(v0 + 96);

  (*(v2 + 16))(v2, v1, 0);
  _Block_release(*(v0 + 96));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2245F6D8C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  v3 = sub_224626FA8();
  (*(v1 + 16))(v1, 0, v3);

  _Block_release(*(v0 + 96));
  v4 = *(v0 + 8);

  return v4();
}

void sub_2245F6E48(void *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a1;
  a5(a3, v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void *sub_2245F6EF4(uint64_t a1, SEL *a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result *a2];

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_2245F6F88(void *a1, uint64_t a2, void *a3, SEL *a4)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = a3;
    v9 = a1;
    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong *a4];
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

void *sub_2245F7074(char a1, SEL *a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result *a2];

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_2245F7108(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = a1;
    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong *a4];
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

void *sub_2245F71E8(SEL *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result *a1];

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_2245F7274(void *a1, uint64_t a2, SEL *a3)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = a1;
    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong *a3];
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t DockCoreManager.setTrackingActivity(enabled:)(char a1)
{
  *(v2 + 80) = v1;
  *(v2 + 88) = a1;
  return MEMORY[0x2822009F8](sub_2245F7340, 0, 0);
}

uint64_t sub_2245F7340()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_2245804E0;
  v3 = swift_continuation_init();
  sub_2245F73EC(v2, v1, v3);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_2245F73EC(int a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_224627B78();
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v12 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v12 + 4);

  v13 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v14 = *(a2 + v11);

  os_unfair_lock_unlock(v14 + 4);

  v15 = sub_2245D53F8();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v15)
  {
    v36 = a1;
    v37 = a3;
    v17 = swift_allocObject();
    *(v17 + 2) = v16;
    *(v17 + 3) = sub_2245803FC;
    *(v17 + 4) = v10;
    v42 = sub_22460A980;
    v43 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_2245D42E8;
    v41 = &block_descriptor_1298;
    v18 = _Block_copy(&aBlock);
    v19 = v15;

    v20 = [v19 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v18);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9798);
    if (swift_dynamicCast())
    {
      v6 = aBlock;
      v7 = swift_allocObject();
      *(v7 + 16) = sub_2245803FC;
      *(v7 + 24) = v10;
      a2 = swift_allocObject();
      *(a2 + 16) = sub_2245803F4;
      *(a2 + 24) = v7;
      v42 = sub_22460A920;
      v43 = a2;
      aBlock = MEMORY[0x277D85DD0];
      v39 = 1107296256;
      v40 = sub_2245D4378;
      v41 = &block_descriptor_1309;
      v21 = _Block_copy(&aBlock);
      v9 = v43;

      [v6 setTrackingActivityWithEnabled:v36 & 1 completion:v21];
      swift_unknownObjectRelease();

      _Block_release(v21);
      LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

      if ((v21 & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }
  }

  sub_22452ECAC();
  v23 = swift_allocError();
  *v24 = xmmword_22462FFB0;
  *(v24 + 16) = 4;
  swift_willThrow();

  (*(v7 + 16))(v9, a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v6);
  v25 = v23;
  v26 = v23;
  v27 = sub_224627B58();
  v28 = sub_224628048();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v37 = v7;
    v31 = v30;
    *v29 = 138412290;
    v32 = v23;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v33;
    *v31 = v33;
    _os_log_impl(&dword_224507000, v27, v28, "dockkit: failed getting sync connection, can't send xpc %@", v29, 0xCu);
    sub_2245098A0(v31, &qword_27D0C9660);
    v7 = v37;
    MEMORY[0x22AA526D0](v31, -1, -1);
    MEMORY[0x22AA526D0](v29, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v34 = v23;
  swift_continuation_throwingResumeWithError();
}

uint64_t sub_2245F7B50(char a1, void *aBlock, void *a3)
{
  *(v3 + 80) = a3;
  *(v3 + 104) = a1;
  *(v3 + 88) = _Block_copy(aBlock);
  v5 = a3;

  return MEMORY[0x2822009F8](sub_2245F7BD0, 0, 0);
}

uint64_t sub_2245F7BD0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 104);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_2245F7C7C;
  v3 = swift_continuation_init();
  sub_2245F73EC(v2, v1, v3);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_2245F7C7C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 96) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_2245F7D98;
  }

  else
  {
    v2 = sub_22460AC18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2245F7D98()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  v3 = sub_224626FA8();
  (*(v1 + 16))(v1, v3);

  _Block_release(*(v0 + 88));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2245F7F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, SEL *a8, void (*a9)(uint64_t))
{
  v15 = *(v9 + *a6);

  os_unfair_lock_lock(v15 + 5);
  v16 = *(v9 + *a7);
  if (*(v16 + 16))
  {
    v17 = sub_22452B99C(a1);
    if (v18)
    {
      v19 = *(*(v16 + 56) + 8 * v17);
      if (a4)
      {
        swift_unknownObjectRetain();
        v20 = sub_224627CB8();
        if (!a5)
        {
LABEL_6:
          [v19 *a8];

          a9(a1);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_7;
        }
      }

      else
      {
        swift_unknownObjectRetain();
        v20 = 0;
        if (!a5)
        {
          goto LABEL_6;
        }
      }

      a5 = sub_224626FA8();
      goto LABEL_6;
    }
  }

LABEL_7:
  os_unfair_lock_unlock(v15 + 5);
}

void sub_2245F8084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, SEL *a9, void (*a10)(uint64_t))
{
  v10 = *(a2 + *a8);
  if (*(v10 + 16))
  {
    v15 = sub_22452B99C(a3);
    if (v16)
    {
      v18 = *(*(v10 + 56) + 8 * v15);
      if (a6)
      {
        swift_unknownObjectRetain();
        v17 = sub_224627CB8();
        if (!a7)
        {
LABEL_6:
          [v18 *a9];

          a10(a3);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return;
        }
      }

      else
      {
        swift_unknownObjectRetain();
        v17 = 0;
        if (!a7)
        {
          goto LABEL_6;
        }
      }

      a7 = sub_224626FA8();
      goto LABEL_6;
    }
  }
}

uint64_t sub_2245F81F8(char *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8, SEL *a9, void (*a10)(uint64_t))
{
  if (a5)
  {
    v15 = sub_224627CD8();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = *&a1[*a7];
  v19 = a4;
  v20 = a6;
  v21 = a1;

  os_unfair_lock_lock(v18 + 5);
  sub_2245F8084(&v18[4], v21, a3, v19, v15, v17, a6, a8, a9, a10);
  os_unfair_lock_unlock(v18 + 5);
}

uint64_t DockCoreManager.fwUpdateFeedback(processID:info:message:complete:err:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v11 = *(v6 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_fwUpdateFeedbackLock);

  os_unfair_lock_lock(v11 + 5);
  v12 = *(v6 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_fwUpdateFeedbackDelegates);
  if (*(v12 + 16))
  {
    v13 = sub_22452B99C(a1);
    if (v14)
    {
      v18 = a2;
      v15 = *(*(v12 + 56) + 8 * v13);
      swift_unknownObjectRetain();
      v16 = sub_224627CB8();
      if (a6)
      {
        a6 = sub_224626FA8();
      }

      [v15 fwUpdateFeedbackWithProcessID:a1 info:v18 message:v16 complete:a5 & 1 err:a6];

      if (a5)
      {
        sub_22458C7A0(a1);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }

  os_unfair_lock_unlock(v11 + 5);
}

void sub_2245F8444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v8 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_fwUpdateFeedbackDelegates);
  if (*(v8 + 16))
  {
    v12 = sub_22452B99C(a3);
    if (v13)
    {
      v14 = *(*(v8 + 56) + 8 * v12);
      swift_unknownObjectRetain();
      v15 = sub_224627CB8();
      if (a8)
      {
        v16 = sub_224626FA8();
      }

      else
      {
        v16 = 0;
      }

      [v14 fwUpdateFeedbackWithProcessID:a3 info:a4 message:v15 complete:a7 & 1 err:v16];

      if (a7)
      {
        sub_22458C7A0(a3);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_2245F86C4(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, void *a6, void *a7, SEL *a8)
{
  v15 = *(v8 + *a6);

  os_unfair_lock_lock(v15 + 5);
  v16 = *(v8 + *a7);
  if (*(v16 + 16))
  {
    v17 = sub_22452B99C(a1);
    if (v18)
    {
      v19 = *(*(v16 + 56) + 8 * v17);
      swift_unknownObjectRetain();
      if (a5)
      {
        v20 = sub_224626FA8();
      }

      else
      {
        v20 = 0;
      }

      [v19 *a8];

      if (a4)
      {
        sub_22458C7A0(a1);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }

  os_unfair_lock_unlock(v15 + 5);
}

void sub_2245F87F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7, void *a8, SEL *a9)
{
  v9 = *(a2 + *a8);
  if (*(v9 + 16))
  {
    v15 = sub_22452B99C(a3);
    if (v16)
    {
      v19 = a4;
      v17 = *(*(v9 + 56) + 8 * v15);
      swift_unknownObjectRetain();
      if (a7)
      {
        v18 = sub_224626FA8();
      }

      else
      {
        v18 = 0;
      }

      [v17 *a9];

      if (a6)
      {
        sub_22458C7A0(a3);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_2245F892C(char *a1, uint64_t a2, uint64_t a3, void *a4, char a5, char a6, void *a7, void *a8, void *a9, SEL *a10)
{
  v15 = *&a1[*a8];
  v16 = a4;
  v18 = a1;
  v17 = a7;

  os_unfair_lock_lock(v15 + 5);
  sub_2245F87F0(&v15[4], v18, a3, v16, a5, a6, a7, a9, a10);
  os_unfair_lock_unlock(v15 + 5);
}

uint64_t sub_2245F8A2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22450D034;

  return sub_2245E1D80(a1, v4, v5, v6);
}

uint64_t sub_2245F8AEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a2;
  v43 = a3;
  v8 = sub_224627B78();
  isEscapingClosureAtFileLocation = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  v13 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v14 = *(a4 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v14 + 4);

  v15 = *(a4 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a4 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v16 = *(a4 + v13);

  os_unfair_lock_unlock(v16 + 4);

  v17 = sub_2245D6734();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v17)
  {
    v40 = a1;
    v41 = a5;
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = sub_2245804EC;
    v19[4] = v12;
    v48 = sub_22460A98C;
    v49 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_2245D42E8;
    v47 = &block_descriptor_1875;
    v20 = _Block_copy(&aBlock);
    v21 = v17;

    v22 = [v21 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v20);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C97A0);
    if (swift_dynamicCast())
    {
      v23 = aBlock;
      swift_unknownObjectRetain();
      v8 = sub_224627CB8();
      v24 = swift_allocObject();
      v17 = v40;
      v24[2] = v18;
      v24[3] = v17;
      v24[4] = sub_2245804EC;
      v24[5] = v12;
      a4 = swift_allocObject();
      *(a4 + 16) = sub_22460A3A4;
      *(a4 + 24) = v24;
      v48 = sub_22460A920;
      v49 = a4;
      aBlock = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46 = sub_2245D4378;
      v47 = &block_descriptor_1885;
      v11 = _Block_copy(&aBlock);

      v25 = v17;

      [v23 getClientConfigurationUpdatesWithAppID:v8 completion:v11];

      swift_unknownObjectRelease_n();
      _Block_release(v11);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }
  }

  sub_22452ECAC();
  v27 = swift_allocError();
  *v28 = xmmword_22462FFB0;
  *(v28 + 16) = 4;
  swift_willThrow();

  (*(isEscapingClosureAtFileLocation + 16))(v11, a4 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v8);
  v29 = v27;
  v30 = v27;
  v31 = sub_224627B58();
  v32 = sub_224628048();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v43 = isEscapingClosureAtFileLocation;
    v35 = v34;
    *v33 = 138412290;
    v36 = v27;
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 4) = v37;
    *v35 = v37;
    _os_log_impl(&dword_224507000, v31, v32, "dockkit: failed getting sync connection, can't send xpc %@", v33, 0xCu);
    sub_2245098A0(v35, &qword_27D0C9660);
    isEscapingClosureAtFileLocation = v43;
    MEMORY[0x22AA526D0](v35, -1, -1);
    MEMORY[0x22AA526D0](v33, -1, -1);
  }

  (*(isEscapingClosureAtFileLocation + 8))(v11, v8);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_CameraCapture);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v38 = v27;
  swift_continuation_throwingResumeWithError();
}

void sub_2245F90F8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, char *a6)
{
  v45 = a2;
  v46 = a3;
  v10 = sub_224627B78();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v15 = *&a6[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock];

  os_unfair_lock_lock(v15 + 4);

  v16 = *&a6[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError];
  *&a6[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError] = 0;

  v17 = *&a6[v14];

  os_unfair_lock_unlock(v17 + 4);

  v18 = sub_2245D6734();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v18)
  {
    v43 = a1;
    v44 = v10;
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = a4;
    v20[4] = a5;
    v51 = sub_22460A98C;
    v52 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_2245D42E8;
    v50 = &block_descriptor_2003;
    v21 = _Block_copy(&aBlock);
    v22 = a4;
    v23 = v18;

    v24 = [v23 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v21);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C97A0);
    if (swift_dynamicCast())
    {
      a6 = aBlock;
      swift_unknownObjectRetain();
      v46 = sub_224627CB8();
      v25 = swift_allocObject();
      v26 = v43;
      v25[2] = v19;
      v25[3] = v26;
      v25[4] = v22;
      v25[5] = a5;
      v11 = swift_allocObject();
      *(v11 + 16) = sub_22460A914;
      *(v11 + 24) = v25;
      v51 = sub_22460A920;
      v52 = v11;
      aBlock = MEMORY[0x277D85DD0];
      v48 = 1107296256;
      v49 = sub_2245D4378;
      v50 = &block_descriptor_2014;
      v13 = _Block_copy(&aBlock);
      v18 = v52;

      swift_unknownObjectRetain();

      v27 = v46;
      [a6 getClientConfigurationUpdatesWithAppID:v46 completion:v13];

      swift_unknownObjectRelease_n();
      _Block_release(v13);
      LODWORD(v27) = swift_isEscapingClosureAtFileLocation();

      if (!v27)
      {
        return;
      }

      __break(1u);
    }

    a4 = v22;
    v10 = v44;
  }

  sub_22452ECAC();
  v28 = swift_allocError();
  *v29 = xmmword_22462FFB0;
  *(v29 + 16) = 4;
  swift_willThrow();

  (*(v11 + 16))(v13, &a6[OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger], v10);
  v30 = v28;
  v31 = v28;
  v32 = sub_224627B58();
  v33 = sub_224628048();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v46 = v11;
    v36 = a4;
    v37 = v35;
    *v34 = 138412290;
    v38 = v28;
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 4) = v39;
    *v37 = v39;
    _os_log_impl(&dword_224507000, v32, v33, "dockkit: failed getting sync connection, can't send xpc %@", v34, 0xCu);
    sub_2245098A0(v37, &qword_27D0C9660);
    v40 = v37;
    a4 = v36;
    v11 = v46;
    MEMORY[0x22AA526D0](v40, -1, -1);
    MEMORY[0x22AA526D0](v34, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_CameraCapture);
  v41 = v28;
  a4(v28);
}

uint64_t sub_2245F96B8(void *a1, char *a2, uint64_t a3)
{
  v6 = sub_224627B78();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20]();
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v12 = *&a2[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock];

  os_unfair_lock_lock(v12 + 4);

  v13 = *&a2[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError];
  *&a2[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError] = 0;

  v14 = *&a2[v11];

  os_unfair_lock_unlock(v14 + 4);

  v15 = sub_2245E4F94();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v15)
  {
    v39 = a1;
    v40 = a3;
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = sub_2245803FC;
    v17[4] = v10;
    v45 = sub_22460A980;
    v46 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_2245D42E8;
    v44 = &block_descriptor_1854;
    v18 = _Block_copy(&aBlock);
    v19 = v15;

    v20 = [v19 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v18);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0D0);
    if (swift_dynamicCast())
    {
      v9 = aBlock;
      v7 = swift_allocObject();
      v21 = v39;
      *(v7 + 16) = a2;
      *(v7 + 24) = v21;
      *(v7 + 32) = sub_2245803FC;
      *(v7 + 40) = v10;
      v6 = swift_allocObject();
      *(v6 + 16) = sub_22460A3A0;
      *(v6 + 24) = v7;
      v45 = sub_22460A920;
      v46 = v6;
      aBlock = MEMORY[0x277D85DD0];
      v42 = 1107296256;
      v43 = sub_2245D4378;
      v44 = &block_descriptor_1864;
      v22 = _Block_copy(&aBlock);
      v15 = v46;

      swift_unknownObjectRetain();
      v23 = a2;
      v24 = v21;

      [v9 getTrackerDebugNotificationsWithCompletion_];
      swift_unknownObjectRelease_n();

      _Block_release(v22);
      LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

      if ((v22 & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }
  }

  sub_22452ECAC();
  v26 = swift_allocError();
  *v27 = xmmword_22462FFB0;
  *(v27 + 16) = 4;
  swift_willThrow();

  (*(v7 + 16))(v9, &a2[OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger], v6);
  v28 = v26;
  v29 = v26;
  v30 = sub_224627B58();
  v31 = sub_224628048();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v40 = v7;
    v34 = v33;
    *v32 = 138412290;
    v35 = v26;
    v36 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 4) = v36;
    *v34 = v36;
    _os_log_impl(&dword_224507000, v30, v31, "dockkit: failed getting sync debug connection, can't send xpc %@", v32, 0xCu);
    sub_2245098A0(v34, &qword_27D0C9660);
    v7 = v40;
    MEMORY[0x22AA526D0](v34, -1, -1);
    MEMORY[0x22AA526D0](v32, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v37 = v26;
  swift_continuation_throwingResumeWithError();
}

void sub_2245F9CA8(uint64_t a1, void (*a2)(void, void), uint64_t a3, char *a4)
{
  v8 = sub_224627B78();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v13 = *&a4[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock];

  os_unfair_lock_lock(v13 + 4);

  v14 = *&a4[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError];
  *&a4[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError] = 0;

  v15 = *&a4[v12];

  os_unfair_lock_unlock(v15 + 4);

  v16 = sub_2245E4F94();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v16)
  {
    v42 = a1;
    v43 = v8;
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = a2;
    v18[4] = a3;
    v48 = sub_22460A980;
    v49 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_2245D42E8;
    v47 = &block_descriptor_1984;
    v19 = a2;
    v20 = _Block_copy(&aBlock);
    v21 = v16;

    v22 = [v21 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v20);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0D0);
    if (swift_dynamicCast())
    {
      v11 = aBlock;
      v9 = swift_allocObject();
      v23 = v42;
      *(v9 + 16) = a4;
      *(v9 + 24) = v23;
      *(v9 + 32) = v19;
      *(v9 + 40) = a3;
      v19 = swift_allocObject();
      *(v19 + 16) = sub_22460AC24;
      *(v19 + 24) = v9;
      v48 = sub_22460A920;
      v49 = v19;
      aBlock = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46 = sub_2245D4378;
      v47 = &block_descriptor_1995;
      v24 = _Block_copy(&aBlock);
      v16 = v49;

      swift_unknownObjectRetain();
      v25 = a4;
      swift_unknownObjectRetain();

      [v11 getTrackerDebugNotificationsWithCompletion_];
      swift_unknownObjectRelease_n();

      _Block_release(v24);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (!isEscapingClosureAtFileLocation)
      {
        return;
      }

      __break(1u);
    }

    a2 = v19;
    v8 = v43;
  }

  sub_22452ECAC();
  v27 = swift_allocError();
  *v28 = xmmword_22462FFB0;
  *(v28 + 16) = 4;
  swift_willThrow();

  (*(v9 + 16))(v11, &a4[OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger], v8);
  v29 = v27;
  v30 = v27;
  v31 = sub_224627B58();
  v32 = sub_224628048();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v43 = v9;
    v35 = a2;
    v36 = v34;
    *v33 = 138412290;
    v37 = v27;
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 4) = v38;
    *v36 = v38;
    _os_log_impl(&dword_224507000, v31, v32, "dockkit: failed getting sync debug connection, can't send xpc %@", v33, 0xCu);
    sub_2245098A0(v36, &qword_27D0C9660);
    v39 = v36;
    a2 = v35;
    v9 = v43;
    MEMORY[0x22AA526D0](v39, -1, -1);
    MEMORY[0x22AA526D0](v33, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  v40 = v27;
  a2(0, v27);
}

uint64_t _s11DockKitCore0aC7ManagerC12debugAllowedSbvgZ_0()
{
  result = os_variant_allows_internal_security_policies();
  if (result)
  {
    v1 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
    v2 = [v1 processName];
    v3 = sub_224627CD8();
    v5 = v4;

    if (v3 != 0x61636172656D6163 || v5 != 0xEE00646572757470)
    {
      sub_224628688();
    }

    v7 = sub_224627CB8();

    v8 = sub_224627CB8();

    v9 = CFPreferencesCopyAppValue(v7, v8);

    if (v9)
    {
      v10 = CFGetTypeID(v9);
      if (v10 == CFBooleanGetTypeID())
      {

LABEL_12:
        swift_dynamicCast();
        return v13;
      }

      v11 = CFGetTypeID(v9);
      TypeID = CFNumberGetTypeID();

      if (v11 == TypeID)
      {
        goto LABEL_12;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t _s11DockKitCore0aC7ManagerC17localFirmwarePathSSSgvgZ_0()
{
  if (!os_variant_allows_internal_security_policies())
  {
    return 0;
  }

  v0 = sub_224627CB8();
  v1 = sub_224627CB8();
  v2 = CFPreferencesCopyAppValue(v0, v1);

  if (!v2)
  {
    return 0;
  }

  v3 = CFGetTypeID(v2);
  if (v3 != CFStringGetTypeID())
  {
    swift_unknownObjectRelease();
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t _s11DockKitCore0aC7ManagerC23ignoreStartupValidationSbvgZ_0()
{
  result = os_variant_allows_internal_security_policies();
  if (result)
  {
    v1 = sub_224627CB8();
    v2 = sub_224627CB8();
    v3 = CFPreferencesCopyAppValue(v1, v2);

    if (v3)
    {
      v4 = CFGetTypeID(v3);
      if (v4 == CFBooleanGetTypeID())
      {
        return swift_dynamicCast() & v6;
      }

      v5 = CFGetTypeID(v3);
      if (v5 == CFNumberGetTypeID())
      {
        return swift_dynamicCast() & v6;
      }

      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

uint64_t _s11DockKitCore0aC7ManagerC28diagnosticsCollectionEnabledSbvgZ_0()
{
  v0 = sub_224627CB8();
  v1 = sub_224627CB8();
  v2 = CFPreferencesCopyAppValue(v0, v1);

  if (v2)
  {
    v3 = CFGetTypeID(v2);
    if (v3 == CFBooleanGetTypeID())
    {
      return swift_dynamicCast() & v6;
    }

    v4 = CFGetTypeID(v2);
    if (v4 == CFNumberGetTypeID())
    {
      return swift_dynamicCast() & v6;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t _s11DockKitCore0aC7ManagerC21secureTrackingAllowedSbSgvgZ_0()
{
  v0 = sub_224627CB8();
  v1 = sub_224627CB8();
  v2 = CFPreferencesCopyAppValue(v1, v0);

  if (!v2)
  {

    return 2;
  }

  v3 = CFGetTypeID(v2);
  if (v3 == CFBooleanGetTypeID())
  {

    goto LABEL_6;
  }

  v4 = CFGetTypeID(v2);
  TypeID = CFNumberGetTypeID();

  if (v4 != TypeID)
  {
    swift_unknownObjectRelease();
    return 2;
  }

LABEL_6:
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 2;
  }
}

void _s11DockKitCore0aC7ManagerC21secureTrackingAllowedSbSgvsZ_0(unsigned __int8 a1)
{
  v1 = a1;
  applicationID = sub_224627CB8();
  if (v1 == 2)
  {
    v2 = sub_224627CB8();
    CFPreferencesSetAppValue(v2, 0, applicationID);
  }

  else
  {
    v3 = sub_224627CB8();
    v2 = sub_224627F18();
    CFPreferencesSetAppValue(v3, v2, applicationID);
  }

  CFPreferencesAppSynchronize(applicationID);
}

uint64_t sub_2245FA944(uint64_t a1, void *a2)
{
  v4 = sub_224627B78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v10 = *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
  _Block_copy(a2);

  os_unfair_lock_lock(v10 + 4);

  v11 = *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v12 = *(a1 + v9);

  os_unfair_lock_unlock(v12 + 4);

  v13 = *(a1 + v9);

  os_unfair_lock_lock(v13 + 4);

  v14 = *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_CameraCapture);
  v15 = *(a1 + v9);

  os_unfair_lock_unlock(v15 + 4);

  if (v14)
  {
    v16 = sub_2245D6734();
  }

  else
  {
    v16 = sub_2245D53F8();
  }

  v17 = v16;
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v17)
  {
    v41 = v4;
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = sub_22460A0F8;
    v19[4] = v8;
    v46 = sub_22460A128;
    v47 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v43 = 1107296256;
    v44 = sub_2245D42E8;
    v45 = &block_descriptor_1264;
    v20 = _Block_copy(&aBlock);
    v21 = v17;

    v22 = [v21 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v20);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0E0);
    if (swift_dynamicCast())
    {
      v5 = aBlock;
      a2 = swift_allocObject();
      a2[2] = sub_22460A0F8;
      a2[3] = v8;
      a1 = swift_allocObject();
      *(a1 + 16) = sub_224580150;
      *(a1 + 24) = a2;
      v46 = sub_22460A148;
      v47 = a1;
      aBlock = MEMORY[0x277D85DD0];
      v43 = 1107296256;
      v44 = sub_2245D7D80;
      v45 = &block_descriptor_1273;
      v7 = _Block_copy(&aBlock);

      swift_unknownObjectRetain();

      [v5 getPairedWithCompletion_];
      swift_unknownObjectRelease_n();

      _Block_release(v7);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }

    v4 = v41;
  }

  sub_22452ECAC();
  v25 = swift_allocError();
  *v26 = xmmword_22462FFB0;
  *(v26 + 16) = 4;
  swift_willThrow();

  (*(v5 + 16))(v7, a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v4);
  v27 = v25;
  v28 = v25;
  v29 = sub_224627B58();
  v30 = sub_224628048();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v41 = v7;
    v33 = v4;
    v34 = v32;
    *v31 = 138412290;
    v35 = v25;
    v36 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v36;
    *v34 = v36;
    _os_log_impl(&dword_224507000, v29, v30, "failed getting sync connection, can't send xpc %@", v31, 0xCu);
    sub_2245098A0(v34, &qword_27D0C9660);
    v37 = v34;
    v4 = v33;
    v7 = v41;
    MEMORY[0x22AA526D0](v37, -1, -1);
    MEMORY[0x22AA526D0](v31, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  v38 = v25;
  type metadata accessor for DockCoreAccessory();
  v39 = sub_224627EB8();
  v40 = sub_224626FA8();
  (a2[2])(a2, v39, v40);
}

void sub_2245FAFA4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_224627A48();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v46 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224627B78();
  v47 = *(v11 - 8);
  v48 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  v15 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v16 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
  v45 = a3;

  os_unfair_lock_lock(v16 + 4);

  v17 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v18 = *(a2 + v15);

  os_unfair_lock_unlock(v18 + 4);

  v19 = sub_2245D53F8();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v19 && (v43 = a1, v44 = a4, v21 = swift_allocObject(), v21[2] = v20, v21[3] = sub_22460A2D4, v21[4] = v14, v53 = sub_22460A98C, v54 = v21, aBlock = MEMORY[0x277D85DD0], v50 = 1107296256, v51 = sub_2245D42E8, v52 = &block_descriptor_1771, v22 = _Block_copy(&aBlock), v23 = v19, , , , v24 = [v23 synchronousRemoteObjectProxyWithErrorHandler_], _Block_release(v22), v23, sub_224628278(), swift_unknownObjectRelease(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9798), swift_dynamicCast()))
  {
    v25 = aBlock;
    swift_unknownObjectRetain();
    v26 = sub_224627EB8();
    v27 = swift_allocObject();
    *(v27 + 16) = sub_22460A2D4;
    *(v27 + 24) = v14;
    v53 = sub_22460A930;
    v54 = v27;
    aBlock = MEMORY[0x277D85DD0];
    v50 = 1107296256;
    v51 = sub_2245D43DC;
    v52 = &block_descriptor_1778;
    v28 = _Block_copy(&aBlock);

    [v25 selectSubjects:v26 completion:v28];
    _Block_release(v28);

    swift_unknownObjectRelease_n();
  }

  else
  {
    sub_22452ECAC();
    v29 = swift_allocError();
    *v30 = xmmword_22462FFB0;
    *(v30 + 16) = 4;
    swift_willThrow();

    (*(v47 + 16))(v13, a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v48);
    v31 = v29;
    v32 = v29;
    v33 = sub_224627B58();
    v34 = sub_224628048();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v44 = v9;
      v37 = v36;
      *v35 = 138412290;
      v38 = v29;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 4) = v39;
      *v37 = v39;
      _os_log_impl(&dword_224507000, v33, v34, "dockkit: failed getting sync connection, can't send xpc %@", v35, 0xCu);
      sub_2245098A0(v37, &qword_27D0C9660);
      v9 = v44;
      MEMORY[0x22AA526D0](v37, -1, -1);
      MEMORY[0x22AA526D0](v35, -1, -1);
    }

    (*(v47 + 8))(v13, v48);
    sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
    v40 = v46;
    (*(v9 + 104))(v46, *MEMORY[0x277D214D8], v8);
    v41 = v29;
    sub_2245D7EF8(v40, v29);
    (*(v9 + 8))(v40, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
    swift_allocError();
    *v42 = v29;
    swift_continuation_throwingResumeWithError();
  }
}

void sub_2245FB60C(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = sub_224627B78();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v12 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
  _Block_copy(a3);

  os_unfair_lock_lock(v12 + 4);

  v13 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v14 = *(a2 + v11);

  os_unfair_lock_unlock(v14 + 4);

  v15 = sub_2245D53F8();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v15)
  {
    v41[1] = a1;
    v42 = v6;
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = sub_22460AC50;
    v17[4] = v10;
    v47 = sub_22460A98C;
    v48 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_2245D42E8;
    v46 = &block_descriptor_1234;
    v18 = _Block_copy(&aBlock);
    v19 = v15;

    v20 = [v19 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v18);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9798);
    if (swift_dynamicCast())
    {
      v21 = aBlock;
      swift_unknownObjectRetain();
      v22 = sub_224627EB8();
      v23 = swift_allocObject();
      *(v23 + 16) = sub_22460AC50;
      *(v23 + 24) = v10;
      v47 = sub_22460A930;
      v48 = v23;
      aBlock = MEMORY[0x277D85DD0];
      v44 = 1107296256;
      v45 = sub_2245D43DC;
      v46 = &block_descriptor_1240;
      v24 = _Block_copy(&aBlock);

      [v21 selectSubjects:v22 completion:v24];
      _Block_release(v24);

      swift_unknownObjectRelease_n();

      return;
    }

    v6 = v42;
  }

  sub_22452ECAC();
  v25 = swift_allocError();
  *v26 = xmmword_22462FFB0;
  *(v26 + 16) = 4;
  swift_willThrow();

  (*(v7 + 16))(v9, a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v6);
  v27 = v25;
  v28 = v25;
  v29 = sub_224627B58();
  v30 = sub_224628048();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v42 = a3;
    v33 = v7;
    v34 = v6;
    v35 = v32;
    *v31 = 138412290;
    v36 = v25;
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v37;
    *v35 = v37;
    _os_log_impl(&dword_224507000, v29, v30, "dockkit: failed getting sync connection, can't send xpc %@", v31, 0xCu);
    sub_2245098A0(v35, &qword_27D0C9660);
    v38 = v35;
    v6 = v34;
    v7 = v33;
    a3 = v42;
    MEMORY[0x22AA526D0](v38, -1, -1);
    MEMORY[0x22AA526D0](v31, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  v39 = v25;
  v40 = sub_224626FA8();
  (a3)[2](a3, v40);
}

uint64_t sub_2245FBBA0(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_224627A48();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v50 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224627B78();
  v51 = *(v13 - 8);
  v52 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v18 = *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
  v49 = a2;

  os_unfair_lock_lock(v18 + 4);

  v19 = *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v20 = *(a1 + v17);

  os_unfair_lock_unlock(v20 + 4);

  v21 = sub_2245D53F8();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v21 && (v48 = a3, v23 = swift_allocObject(), v23[2] = v22, v23[3] = sub_22460A2B0, v23[4] = v16, v57 = sub_22460A98C, v58 = v23, aBlock = MEMORY[0x277D85DD0], v54 = 1107296256, v55 = sub_2245D42E8, v56 = &block_descriptor_1747, v24 = _Block_copy(&aBlock), v25 = v21, , , , v26 = [v25 synchronousRemoteObjectProxyWithErrorHandler_], _Block_release(v24), v25, sub_224628278(), swift_unknownObjectRelease(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9798), swift_dynamicCast()))
  {
    v27 = aBlock;
    v28 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v29 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v30 = swift_allocObject();
    *(v30 + 16) = sub_22460A2B0;
    *(v30 + 24) = v16;
    v57 = sub_22460A930;
    v58 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v54 = 1107296256;
    v55 = sub_2245D43DC;
    v56 = &block_descriptor_1754;
    v31 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();

    [v27 selectSubjectAtX:v28 y:v29 completion:v31];
    _Block_release(v31);

    return swift_unknownObjectRelease_n();
  }

  else
  {
    sub_22452ECAC();
    v33 = swift_allocError();
    *v34 = xmmword_22462FFB0;
    *(v34 + 16) = 4;
    swift_willThrow();

    (*(v51 + 16))(v15, a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v52);
    v35 = v33;
    v36 = v33;
    v37 = sub_224627B58();
    v38 = sub_224628048();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v48 = v11;
      v41 = v40;
      *v39 = 138412290;
      v42 = v33;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 4) = v43;
      *v41 = v43;
      _os_log_impl(&dword_224507000, v37, v38, "dockkit: failed getting sync connection, can't send xpc %@", v39, 0xCu);
      sub_2245098A0(v41, &qword_27D0C9660);
      v11 = v48;
      MEMORY[0x22AA526D0](v41, -1, -1);
      MEMORY[0x22AA526D0](v39, -1, -1);
    }

    (*(v51 + 8))(v15, v52);
    sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
    v44 = v50;
    (*(v11 + 104))(v50, *MEMORY[0x277D214E0], v10);
    v45 = v33;
    sub_2245D7EF8(v44, v33);
    (*(v11 + 8))(v44, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
    swift_allocError();
    *v46 = v33;
    swift_continuation_throwingResumeWithError();
  }
}

unint64_t sub_2245FC254()
{
  result = qword_27D0CA0C0;
  if (!qword_27D0CA0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA0C0);
  }

  return result;
}

uint64_t sub_2245FC2A8(uint64_t a1, void (**a2)(void, void), double a3, double a4)
{
  v8 = sub_224627B78();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  v13 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v14 = *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
  _Block_copy(a2);

  os_unfair_lock_lock(v14 + 4);

  v15 = *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v16 = *(a1 + v13);

  os_unfair_lock_unlock(v16 + 4);

  v17 = sub_2245D53F8();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v17)
  {
    v45 = v8;
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = sub_22460AC50;
    v19[4] = v12;
    v50 = sub_224609EF0;
    v51 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v47 = 1107296256;
    v48 = sub_2245D42E8;
    v49 = &block_descriptor_1203;
    v20 = _Block_copy(&aBlock);
    v21 = v17;

    v22 = [v21 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v20);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9798);
    if (swift_dynamicCast())
    {
      v23 = aBlock;
      v24 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v25 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v26 = swift_allocObject();
      *(v26 + 16) = sub_22460AC50;
      *(v26 + 24) = v12;
      v50 = sub_224609F10;
      v51 = v26;
      aBlock = MEMORY[0x277D85DD0];
      v47 = 1107296256;
      v48 = sub_2245D43DC;
      v49 = &block_descriptor_1209;
      v27 = _Block_copy(&aBlock);

      swift_unknownObjectRetain();

      [v23 selectSubjectAtX:v24 y:v25 completion:v27];
      _Block_release(v27);

      return swift_unknownObjectRelease_n();
    }

    v8 = v45;
  }

  sub_22452ECAC();
  v29 = swift_allocError();
  *v30 = xmmword_22462FFB0;
  *(v30 + 16) = 4;
  swift_willThrow();

  (*(v9 + 16))(v11, a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v8);
  v31 = v29;
  v32 = v29;
  v33 = sub_224627B58();
  v34 = sub_224628048();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v45 = a2;
    v37 = v9;
    v38 = v8;
    v39 = v36;
    *v35 = 138412290;
    v40 = v29;
    v41 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 4) = v41;
    *v39 = v41;
    _os_log_impl(&dword_224507000, v33, v34, "dockkit: failed getting sync connection, can't send xpc %@", v35, 0xCu);
    sub_2245098A0(v39, &qword_27D0C9660);
    v42 = v39;
    v8 = v38;
    v9 = v37;
    a2 = v45;
    MEMORY[0x22AA526D0](v42, -1, -1);
    MEMORY[0x22AA526D0](v35, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  v43 = v29;
  v44 = sub_224626FA8();
  (a2)[2](a2, v44);
}

uint64_t sub_2245FC874(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_224627B78();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v12 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
  _Block_copy(a3);

  os_unfair_lock_lock(v12 + 4);

  v13 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v14 = *(a2 + v11);

  os_unfair_lock_unlock(v14 + 4);

  v15 = sub_2245D53F8();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v15)
  {
    v39 = a1;
    v40 = v6;
    v17 = swift_allocObject();
    *(v17 + 2) = v16;
    *(v17 + 3) = sub_22460AC50;
    *(v17 + 4) = v10;
    v45 = sub_22460A98C;
    v46 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_2245D42E8;
    v44 = &block_descriptor_1168;
    v18 = _Block_copy(&aBlock);
    v19 = v15;

    v20 = [v19 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v18);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9798);
    if (swift_dynamicCast())
    {
      v7 = aBlock;
      a3 = swift_allocObject();
      a3[2] = sub_22460AC50;
      a3[3] = v10;
      a2 = swift_allocObject();
      *(a2 + 16) = sub_22460A930;
      *(a2 + 24) = a3;
      v45 = sub_22460A920;
      v46 = a2;
      aBlock = MEMORY[0x277D85DD0];
      v42 = 1107296256;
      v43 = sub_2245D4378;
      v44 = &block_descriptor_1178;
      v21 = _Block_copy(&aBlock);
      v9 = v46;

      swift_unknownObjectRetain();

      [v7 setFramingModeWithMode:v39 completion:v21];
      swift_unknownObjectRelease_n();

      _Block_release(v21);
      LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

      if ((v21 & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }

    v6 = v40;
  }

  sub_22452ECAC();
  v23 = swift_allocError();
  *v24 = xmmword_22462FFB0;
  *(v24 + 16) = 4;
  swift_willThrow();

  (*(v7 + 16))(v9, a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v6);
  v25 = v23;
  v26 = v23;
  v27 = sub_224627B58();
  v28 = sub_224628048();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v40 = a3;
    v31 = v6;
    v32 = v30;
    *v29 = 138412290;
    v33 = v23;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v34;
    *v32 = v34;
    _os_log_impl(&dword_224507000, v27, v28, "dockkit: failed getting sync connection, can't send xpc %@", v29, 0xCu);
    sub_2245098A0(v32, &qword_27D0C9660);
    v35 = v32;
    v6 = v31;
    a3 = v40;
    MEMORY[0x22AA526D0](v35, -1, -1);
    MEMORY[0x22AA526D0](v29, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  v36 = v23;
  v37 = sub_224626FA8();
  (a3[2])(a3, v37);
}

uint64_t sub_2245FCE60(uint64_t a1, void (**a2)(void, void), double a3, double a4, double a5, double a6)
{
  v12 = sub_224627B78();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  v17 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v18 = *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
  _Block_copy(a2);

  os_unfair_lock_lock(v18 + 4);

  v19 = *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v20 = *(a1 + v17);

  os_unfair_lock_unlock(v20 + 4);

  v21 = sub_2245D53F8();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v21)
  {
    v47 = v12;
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = sub_22460AC50;
    v23[4] = v16;
    v52 = sub_22460A98C;
    v53 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v49 = 1107296256;
    v50 = sub_2245D42E8;
    v51 = &block_descriptor_1137;
    v24 = _Block_copy(&aBlock);
    v25 = v21;

    v26 = [v25 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v24);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9798);
    if (swift_dynamicCast())
    {
      v27 = aBlock;
      v28 = swift_allocObject();
      *(v28 + 16) = sub_22460AC50;
      *(v28 + 24) = v16;
      v52 = sub_22460A930;
      v53 = v28;
      aBlock = MEMORY[0x277D85DD0];
      v49 = 1107296256;
      v50 = sub_2245D43DC;
      v51 = &block_descriptor_1143;
      v29 = _Block_copy(&aBlock);

      swift_unknownObjectRetain();

      [v27 setRectOfInterestWithRect:v29 completion:{a3, a4, a5, a6}];
      _Block_release(v29);

      return swift_unknownObjectRelease_n();
    }

    v12 = v47;
  }

  sub_22452ECAC();
  v31 = swift_allocError();
  *v32 = xmmword_22462FFB0;
  *(v32 + 16) = 4;
  swift_willThrow();

  (*(v13 + 16))(v15, a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v12);
  v33 = v31;
  v34 = v31;
  v35 = sub_224627B58();
  v36 = sub_224628048();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v47 = a2;
    v39 = v13;
    v40 = v12;
    v41 = v38;
    *v37 = 138412290;
    v42 = v31;
    v43 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 4) = v43;
    *v41 = v43;
    _os_log_impl(&dword_224507000, v35, v36, "dockkit: failed getting sync connection, can't send xpc %@", v37, 0xCu);
    sub_2245098A0(v41, &qword_27D0C9660);
    v44 = v41;
    v12 = v40;
    v13 = v39;
    a2 = v47;
    MEMORY[0x22AA526D0](v44, -1, -1);
    MEMORY[0x22AA526D0](v37, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  v45 = v31;
  v46 = sub_224626FA8();
  (a2)[2](a2, v46);
}

uint64_t sub_2245FD404(char *a1, void *a2)
{
  v4 = sub_224627B78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v10 = *&a1[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock];
  _Block_copy(a2);

  os_unfair_lock_lock(v10 + 4);

  v11 = *&a1[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError];
  *&a1[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError] = 0;

  v12 = *&a1[v9];

  os_unfair_lock_unlock(v12 + 4);

  v13 = *&a1[v9];

  os_unfair_lock_lock(v13 + 4);

  v14 = *&a1[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_CameraCapture];
  v15 = *&a1[v9];

  os_unfair_lock_unlock(v15 + 4);

  if (v14)
  {
    v16 = sub_2245D6734();
  }

  else
  {
    v16 = sub_2245D53F8();
  }

  v17 = v16;
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v17)
  {
    v42 = v4;
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = sub_22460A950;
    v19[4] = v8;
    v47 = sub_224609BC0;
    v48 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_2245D42E8;
    v46 = &block_descriptor_1080;
    v20 = _Block_copy(&aBlock);
    v21 = v17;

    v22 = [v21 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v20);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0E0);
    if (swift_dynamicCast())
    {
      v7 = aBlock;
      a2 = swift_allocObject();
      a2[2] = a1;
      a2[3] = sub_22460A950;
      a2[4] = v8;
      v5 = swift_allocObject();
      *(v5 + 16) = sub_224609BF0;
      *(v5 + 24) = a2;
      v47 = sub_22460A92C;
      v48 = v5;
      aBlock = MEMORY[0x277D85DD0];
      v44 = 1107296256;
      v45 = sub_22460AC1C;
      v46 = &block_descriptor_1090;
      v17 = _Block_copy(&aBlock);

      swift_unknownObjectRetain();
      v23 = a1;

      [v7 getConnectedWithCompletion_];
      swift_unknownObjectRelease_n();

      _Block_release(v17);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }

    v4 = v42;
  }

  sub_22452ECAC();
  v26 = swift_allocError();
  *v27 = 0xD000000000000026;
  *(v27 + 8) = 0x800000022463AF60;
  *(v27 + 16) = 4;
  swift_willThrow();

  (*(v5 + 16))(v7, &a1[OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger], v4);
  v28 = v26;
  v29 = v26;
  v30 = sub_224627B58();
  v31 = sub_224628048();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v42 = v7;
    v34 = v5;
    v35 = v4;
    v36 = v33;
    *v32 = 138412290;
    v37 = v26;
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 4) = v38;
    *v36 = v38;
    _os_log_impl(&dword_224507000, v30, v31, "dockkit: failed getting sync connection, can't send xpc %@", v32, 0xCu);
    sub_2245098A0(v36, &qword_27D0C9660);
    v39 = v36;
    v4 = v35;
    v5 = v34;
    v7 = v42;
    MEMORY[0x22AA526D0](v39, -1, -1);
    MEMORY[0x22AA526D0](v32, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  v40 = v26;
  v41 = sub_224626FA8();
  (a2[2])(a2, 0, v41);
}

uint64_t sub_2245FDA5C(uint64_t a1, void *a2)
{
  v4 = sub_224627B78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v10 = *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
  _Block_copy(a2);

  os_unfair_lock_lock(v10 + 4);

  v11 = *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v12 = *(a1 + v9);

  os_unfair_lock_unlock(v12 + 4);

  v13 = *(a1 + v9);

  os_unfair_lock_lock(v13 + 4);

  v14 = *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_CameraCapture);
  v15 = *(a1 + v9);

  os_unfair_lock_unlock(v15 + 4);

  if (v14)
  {
    v16 = sub_2245D6734();
  }

  else
  {
    v16 = sub_2245D53F8();
  }

  v17 = v16;
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v17)
  {
    v41 = v4;
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = sub_224609AC8;
    v19[4] = v8;
    v46 = sub_224609AE4;
    v47 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v43 = 1107296256;
    v44 = sub_2245D42E8;
    v45 = &block_descriptor_1046;
    v20 = _Block_copy(&aBlock);
    v21 = v17;

    v22 = [v21 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v20);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0E0);
    if (swift_dynamicCast())
    {
      v5 = aBlock;
      a2 = swift_allocObject();
      a2[2] = sub_224609AC8;
      a2[3] = v8;
      a1 = swift_allocObject();
      *(a1 + 16) = sub_224580280;
      *(a1 + 24) = a2;
      v46 = sub_22457FE5C;
      v47 = a1;
      aBlock = MEMORY[0x277D85DD0];
      v43 = 1107296256;
      v44 = sub_22460AC1C;
      v45 = &block_descriptor_1055;
      v7 = _Block_copy(&aBlock);
      v17 = v47;

      swift_unknownObjectRetain();

      [v5 getDockedWithCompletion_];
      swift_unknownObjectRelease_n();

      _Block_release(v7);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }

    v4 = v41;
  }

  sub_22452ECAC();
  v25 = swift_allocError();
  *v26 = xmmword_22462FFB0;
  *(v26 + 16) = 4;
  swift_willThrow();

  (*(v5 + 16))(v7, a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v4);
  v27 = v25;
  v28 = v25;
  v29 = sub_224627B58();
  v30 = sub_224628048();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v41 = v7;
    v33 = v5;
    v34 = v4;
    v35 = v32;
    *v31 = 138412290;
    v36 = v25;
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v37;
    *v35 = v37;
    _os_log_impl(&dword_224507000, v29, v30, "dockkit: failed getting sync connection, can't send xpc %@", v31, 0xCu);
    sub_2245098A0(v35, &qword_27D0C9660);
    v38 = v35;
    v4 = v34;
    v5 = v33;
    v7 = v41;
    MEMORY[0x22AA526D0](v38, -1, -1);
    MEMORY[0x22AA526D0](v31, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  v39 = v25;
  v40 = sub_224626FA8();
  (a2[2])(a2, 0, v40);
}

uint64_t sub_2245FE09C(uint64_t a1, void *a2)
{
  v4 = sub_224627B78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v10 = *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
  _Block_copy(a2);

  os_unfair_lock_lock(v10 + 4);

  v11 = *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v12 = *(a1 + v9);

  os_unfair_lock_unlock(v12 + 4);

  v13 = *(a1 + v9);

  os_unfair_lock_lock(v13 + 4);

  v14 = *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_CameraCapture);
  v15 = *(a1 + v9);

  os_unfair_lock_unlock(v15 + 4);

  if (v14)
  {
    v16 = sub_2245D6734();
  }

  else
  {
    v16 = sub_2245D53F8();
  }

  v17 = v16;
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v17)
  {
    v41 = v4;
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = sub_224609994;
    v19[4] = v8;
    v46 = sub_22460999C;
    v47 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v43 = 1107296256;
    v44 = sub_2245D42E8;
    v45 = &block_descriptor_1013;
    v20 = _Block_copy(&aBlock);
    v21 = v17;

    v22 = [v21 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v20);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0E0);
    if (swift_dynamicCast())
    {
      v5 = aBlock;
      a2 = swift_allocObject();
      a2[2] = sub_224609994;
      a2[3] = v8;
      a1 = swift_allocObject();
      *(a1 + 16) = sub_2246099CC;
      *(a1 + 24) = a2;
      v46 = sub_2246099F4;
      v47 = a1;
      aBlock = MEMORY[0x277D85DD0];
      v43 = 1107296256;
      v44 = sub_2245DE634;
      v45 = &block_descriptor_1022;
      v7 = _Block_copy(&aBlock);
      v17 = v47;

      [v5 getTrackingButtonStateWithCompletion_];
      swift_unknownObjectRelease();

      _Block_release(v7);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }

    v4 = v41;
  }

  sub_22452ECAC();
  v25 = swift_allocError();
  *v26 = xmmword_22462FFB0;
  *(v26 + 16) = 4;
  swift_willThrow();

  (*(v5 + 16))(v7, a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v4);
  v27 = v25;
  v28 = v25;
  v29 = sub_224627B58();
  v30 = sub_224628048();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v41 = v7;
    v33 = v5;
    v34 = v4;
    v35 = v32;
    *v31 = 138412290;
    v36 = v25;
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v37;
    *v35 = v37;
    _os_log_impl(&dword_224507000, v29, v30, "dockkit: failed getting sync connection, can't send xpc %@", v31, 0xCu);
    sub_2245098A0(v35, &qword_27D0C9660);
    v38 = v35;
    v4 = v34;
    v5 = v33;
    v7 = v41;
    MEMORY[0x22AA526D0](v38, -1, -1);
    MEMORY[0x22AA526D0](v31, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  v39 = v25;
  v40 = sub_224626FA8();
  (a2[2])(a2, 2, v40);
}

uint64_t sub_2245FE6D0(uint64_t a1, int a2, uint64_t a3, void (**a4)(void, void, void))
{
  LODWORD(v45) = a2;
  v7 = sub_224627B78();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  v12 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v13 = *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
  _Block_copy(a4);

  os_unfair_lock_lock(v13 + 4);

  v14 = *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v15 = *(a3 + v12);

  os_unfair_lock_unlock(v15 + 4);

  v16 = sub_2245D6734();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v16)
  {
    v43 = a1;
    v44 = v7;
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = sub_224609858;
    v18[4] = v11;
    v50 = sub_22460A984;
    v51 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v47 = 1107296256;
    v48 = sub_2245D42E8;
    v49 = &block_descriptor_966;
    v19 = _Block_copy(&aBlock);
    v20 = v16;

    v21 = [v20 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v19);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C97A0);
    if (swift_dynamicCast())
    {
      v22 = aBlock;
      v23 = swift_allocObject();
      *(v23 + 16) = sub_224609858;
      *(v23 + 24) = v11;
      v50 = sub_22460A924;
      v51 = v23;
      aBlock = MEMORY[0x277D85DD0];
      v47 = 1107296256;
      v48 = sub_2245DF5EC;
      v49 = &block_descriptor_972;
      v24 = _Block_copy(&aBlock);

      [v22 updateCameraSessionWithSession:v43 new:v45 & 1 completion:v24];
      _Block_release(v24);

      return swift_unknownObjectRelease();
    }

    v7 = v44;
  }

  sub_22452ECAC();
  v26 = swift_allocError();
  *v27 = xmmword_22462FFB0;
  *(v27 + 16) = 4;
  swift_willThrow();

  (*(v8 + 16))(v10, a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v7);
  v28 = v26;
  v29 = v26;
  v30 = sub_224627B58();
  v31 = sub_224628048();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v45 = a4;
    v34 = v8;
    v35 = v7;
    v36 = v33;
    *v32 = 138412290;
    v37 = v26;
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 4) = v38;
    *v36 = v38;
    _os_log_impl(&dword_224507000, v30, v31, "dockkit: failed getting sync connection, can't send xpc %@", v32, 0xCu);
    sub_2245098A0(v36, &qword_27D0C9660);
    v39 = v36;
    v7 = v35;
    v8 = v34;
    a4 = v45;
    MEMORY[0x22AA526D0](v39, -1, -1);
    MEMORY[0x22AA526D0](v32, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_CameraCapture);
  v40 = v26;
  type metadata accessor for CameraSessionInformation();
  v41 = sub_224627EB8();
  v42 = sub_224626FA8();
  (a4)[2](a4, v41, v42);
}

uint64_t sub_2245FEC70(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v6 = sub_224627B78();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v12 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
  _Block_copy(a3);

  os_unfair_lock_lock(v12 + 4);

  v13 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v14 = *(a2 + v11);

  os_unfair_lock_unlock(v14 + 4);

  v15 = sub_2245D6734();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v15)
  {
    v42 = a1;
    v43 = v6;
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = sub_22460A948;
    v17[4] = v10;
    v48 = sub_22460A980;
    v49 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_2245D42E8;
    v47 = &block_descriptor_950;
    v18 = _Block_copy(&aBlock);
    v19 = v15;

    v20 = [v19 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v18);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C97A0);
    if (swift_dynamicCast())
    {
      v21 = aBlock;
      v22 = swift_allocObject();
      *(v22 + 16) = sub_22460A948;
      *(v22 + 24) = v10;
      v48 = sub_2245803F4;
      v49 = v22;
      aBlock = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46 = sub_2245D43DC;
      v47 = &block_descriptor_956;
      v23 = _Block_copy(&aBlock);

      [v21 updateTrackingSummaryDebugWithData:v42 completion:v23];
      _Block_release(v23);

      return swift_unknownObjectRelease();
    }

    v6 = v43;
  }

  sub_22452ECAC();
  v25 = swift_allocError();
  *v26 = xmmword_22462FFB0;
  *(v26 + 16) = 4;
  swift_willThrow();

  (*(v7 + 16))(v9, a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v6);
  v27 = v25;
  v28 = v25;
  v29 = sub_224627B58();
  v30 = sub_224628048();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v43 = a3;
    v33 = v7;
    v34 = v6;
    v35 = v32;
    *v31 = 138412290;
    v36 = v25;
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v37;
    *v35 = v37;
    _os_log_impl(&dword_224507000, v29, v30, "dockkit: failed getting sync connection, can't send xpc %@", v31, 0xCu);
    sub_2245098A0(v35, &qword_27D0C9660);
    v38 = v35;
    v6 = v34;
    v7 = v33;
    a3 = v43;
    MEMORY[0x22AA526D0](v38, -1, -1);
    MEMORY[0x22AA526D0](v31, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_CameraCapture);
  v39 = v25;
  v40 = sub_224626FA8();
  (a3)[2](a3, 0, v40);
}

uint64_t sub_2245FF1E4(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v6 = sub_224627B78();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v12 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
  _Block_copy(a3);

  os_unfair_lock_lock(v12 + 4);

  v13 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v14 = *(a2 + v11);

  os_unfair_lock_unlock(v14 + 4);

  v15 = sub_2245D6734();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v15)
  {
    v42 = a1;
    v43 = v6;
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = sub_22460A948;
    v17[4] = v10;
    v48 = sub_22460A980;
    v49 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_2245D42E8;
    v47 = &block_descriptor_918;
    v18 = _Block_copy(&aBlock);
    v19 = v15;

    v20 = [v19 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v18);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C97A0);
    if (swift_dynamicCast())
    {
      v21 = aBlock;
      v22 = swift_allocObject();
      *(v22 + 16) = sub_22460A948;
      *(v22 + 24) = v10;
      v48 = sub_2245803F4;
      v49 = v22;
      aBlock = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46 = sub_2245D43DC;
      v47 = &block_descriptor_924;
      v23 = _Block_copy(&aBlock);

      [v21 updateTrackingSummaryWithData:v42 completion:v23];
      _Block_release(v23);

      return swift_unknownObjectRelease();
    }

    v6 = v43;
  }

  sub_22452ECAC();
  v25 = swift_allocError();
  *v26 = xmmword_22462FFB0;
  *(v26 + 16) = 4;
  swift_willThrow();

  (*(v7 + 16))(v9, a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v6);
  v27 = v25;
  v28 = v25;
  v29 = sub_224627B58();
  v30 = sub_224628048();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v43 = a3;
    v33 = v7;
    v34 = v6;
    v35 = v32;
    *v31 = 138412290;
    v36 = v25;
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v37;
    *v35 = v37;
    _os_log_impl(&dword_224507000, v29, v30, "dockkit: failed getting sync connection, can't send xpc %@", v31, 0xCu);
    sub_2245098A0(v35, &qword_27D0C9660);
    v38 = v35;
    v6 = v34;
    v7 = v33;
    a3 = v43;
    MEMORY[0x22AA526D0](v38, -1, -1);
    MEMORY[0x22AA526D0](v31, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_CameraCapture);
  v39 = v25;
  v40 = sub_224626FA8();
  (a3)[2](a3, 0, v40);
}

uint64_t sub_2245FF758(int a1, uint64_t a2, void *a3)
{
  v6 = sub_224627B78();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v12 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
  _Block_copy(a3);

  os_unfair_lock_lock(v12 + 4);

  v13 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v14 = *(a2 + v11);

  os_unfair_lock_unlock(v14 + 4);

  v15 = sub_2245D53F8();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v15)
  {
    v39 = a1;
    v40 = v6;
    v17 = swift_allocObject();
    *(v17 + 2) = v16;
    *(v17 + 3) = sub_22460A948;
    *(v17 + 4) = v10;
    v45 = sub_22460A980;
    v46 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_2245D42E8;
    v44 = &block_descriptor_883;
    v18 = _Block_copy(&aBlock);
    v19 = v15;

    v20 = [v19 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v18);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9798);
    if (swift_dynamicCast())
    {
      v7 = aBlock;
      a3 = swift_allocObject();
      a3[2] = sub_22460A948;
      a3[3] = v10;
      a2 = swift_allocObject();
      *(a2 + 16) = sub_2245803F4;
      *(a2 + 24) = a3;
      v45 = sub_22460A920;
      v46 = a2;
      aBlock = MEMORY[0x277D85DD0];
      v42 = 1107296256;
      v43 = sub_2245D4378;
      v44 = &block_descriptor_893;
      v21 = _Block_copy(&aBlock);
      v9 = v46;

      swift_unknownObjectRetain();

      [v7 setSystemTrackingEnabledWithEnabled:v39 & 1 completion:v21];
      swift_unknownObjectRelease_n();

      _Block_release(v21);
      LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

      if ((v21 & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }

    v6 = v40;
  }

  sub_22452ECAC();
  v23 = swift_allocError();
  *v24 = xmmword_22462FFB0;
  *(v24 + 16) = 4;
  swift_willThrow();

  (*(v7 + 16))(v9, a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v6);
  v25 = v23;
  v26 = v23;
  v27 = sub_224627B58();
  v28 = sub_224628048();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v40 = a3;
    v31 = v6;
    v32 = v30;
    *v29 = 138412290;
    v33 = v23;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v34;
    *v32 = v34;
    _os_log_impl(&dword_224507000, v27, v28, "dockkit: failed getting sync connection, can't send xpc %@", v29, 0xCu);
    sub_2245098A0(v32, &qword_27D0C9660);
    v35 = v32;
    v6 = v31;
    a3 = v40;
    MEMORY[0x22AA526D0](v35, -1, -1);
    MEMORY[0x22AA526D0](v29, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  v36 = v23;
  v37 = sub_224626FA8();
  (a3[2])(a3, 0, v37);
}

uint64_t sub_2245FFD50(void *a1, uint64_t a2, uint64_t isEscapingClosureAtFileLocation, void *a4)
{
  v42 = a1;
  v7 = sub_224627B78();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  v12 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v13 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
  _Block_copy(a4);

  os_unfair_lock_lock(v13 + 4);

  v14 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v15 = *(isEscapingClosureAtFileLocation + v12);

  os_unfair_lock_unlock(v15 + 4);

  v16 = sub_2245D6734();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v16)
  {
    v40 = a2;
    v41 = v7;
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = sub_22460A948;
    v18[4] = v11;
    v47 = sub_22460A980;
    v48 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_2245D42E8;
    v46 = &block_descriptor_848;
    v19 = _Block_copy(&aBlock);
    v20 = v16;

    v21 = [v20 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v19);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C97A0);
    if (swift_dynamicCast())
    {
      v22 = aBlock;
      swift_unknownObjectRetain();
      v8 = sub_224627CB8();
      v23 = swift_allocObject();
      *(v23 + 16) = sub_22460A948;
      *(v23 + 24) = v11;
      a4 = swift_allocObject();
      a4[2] = sub_2245803F4;
      a4[3] = v23;
      v47 = sub_22460A920;
      v48 = a4;
      aBlock = MEMORY[0x277D85DD0];
      v44 = 1107296256;
      v45 = sub_2245D4378;
      v46 = &block_descriptor_858;
      v10 = _Block_copy(&aBlock);

      [v22 getSystemTrackingEnabledWithAppID:v8 completion:v10];

      swift_unknownObjectRelease_n();
      _Block_release(v10);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }

    v7 = v41;
  }

  sub_22452ECAC();
  v25 = swift_allocError();
  *v26 = xmmword_22462FFB0;
  *(v26 + 16) = 4;
  swift_willThrow();

  (*(v8 + 16))(v10, isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v7);
  v27 = v25;
  v28 = v25;
  v29 = sub_224627B58();
  v30 = sub_224628048();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v42 = a4;
    v33 = v7;
    v34 = v32;
    *v31 = 138412290;
    v35 = v25;
    v36 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v36;
    *v34 = v36;
    _os_log_impl(&dword_224507000, v29, v30, "dockkit: failed getting sync connection, can't send xpc %@", v31, 0xCu);
    sub_2245098A0(v34, &qword_27D0C9660);
    v37 = v34;
    v7 = v33;
    a4 = v42;
    MEMORY[0x22AA526D0](v37, -1, -1);
    MEMORY[0x22AA526D0](v31, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_CameraCapture);
  v38 = v25;
  v39 = sub_224626FA8();
  (a4[2])(a4, 0, v39);
}

uint64_t sub_224600358()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_224627B78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v5);
  v9 = sub_224627B58();
  v10 = sub_224628058();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_224507000, v9, v10, "syncing state and generating state events", v11, 2u);
    MEMORY[0x22AA526D0](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v12 = sub_224627F78();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v1;
  v14 = v1;
  sub_224536440(0, 0, v4, &unk_224632FD0, v13);
}

void sub_224600594(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_224627B78();
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  v13 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v14 = *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
  _Block_copy(a4);

  os_unfair_lock_lock(v14 + 4);

  v15 = *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v16 = *(a3 + v13);

  os_unfair_lock_unlock(v16 + 4);

  v17 = sub_2245E4F94();
  if (v17)
  {
    v18 = v17;
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = sub_22460A948;
    v20[4] = v12;
    v42 = sub_224609454;
    v43 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_2245D42E8;
    v41 = &block_descriptor_803;
    v21 = _Block_copy(&aBlock);

    v22 = [v18 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v21);
    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0D0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v8 = v37[2];
    a4 = swift_allocObject();
    a4[2] = sub_22460A948;
    a4[3] = v12;
    a3 = swift_allocObject();
    *(a3 + 16) = sub_22457FD30;
    *(a3 + 24) = a4;
    v42 = sub_22460A920;
    v43 = a3;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_2245D4378;
    v41 = &block_descriptor_813;
    v11 = _Block_copy(&aBlock);
    v9 = v12;
    v12 = v43;

    swift_unknownObjectRetain();

    [v8 setDockAccessoryStateWithInfo:a1 docked:a2 completion:v11];

    swift_unknownObjectRelease_n();
    _Block_release(v11);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  sub_22452ECAC();
  v24 = swift_allocError();
  *v25 = xmmword_22462FFB0;
  *(v25 + 16) = 4;
  swift_willThrow();
  (*(v9 + 16))(v11, a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v8);
  v26 = v24;
  v27 = v24;
  v28 = sub_224627B58();
  v29 = sub_224628048();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v37[1] = v12;
    v32 = v31;
    *v30 = 138412290;
    v33 = v24;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 4) = v34;
    *v32 = v34;
    _os_log_impl(&dword_224507000, v28, v29, "dockkit: failed getting sync debug connection, can't send xpc %@", v30, 0xCu);
    sub_2245098A0(v32, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v32, -1, -1);
    MEMORY[0x22AA526D0](v30, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  v35 = v24;
  v36 = sub_224626FA8();
  (a4[2])(a4, 0, v36);
}

void sub_224600B70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_224627B78();
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  v13 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v14 = *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
  _Block_copy(a4);

  os_unfair_lock_lock(v14 + 4);

  v15 = *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v16 = *(a3 + v13);

  os_unfair_lock_unlock(v16 + 4);

  v17 = sub_2245E4F94();
  if (v17)
  {
    v18 = v17;
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = sub_22460A948;
    v20[4] = v12;
    v42 = sub_22460A980;
    v43 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_2245D42E8;
    v41 = &block_descriptor_768;
    v21 = _Block_copy(&aBlock);

    v22 = [v18 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v21);
    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0D0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v8 = v37[2];
    a4 = swift_allocObject();
    a4[2] = sub_22460A948;
    a4[3] = v12;
    a3 = swift_allocObject();
    *(a3 + 16) = sub_2245803F4;
    *(a3 + 24) = a4;
    v42 = sub_22460A920;
    v43 = a3;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_2245D4378;
    v41 = &block_descriptor_778;
    v11 = _Block_copy(&aBlock);
    v9 = v12;
    v12 = v43;

    swift_unknownObjectRetain();

    [v8 triggerSystemEventWithInfo:a1 event:a2 completion:v11];

    swift_unknownObjectRelease_n();
    _Block_release(v11);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  sub_22452ECAC();
  v24 = swift_allocError();
  *v25 = xmmword_22462FFB0;
  *(v25 + 16) = 4;
  swift_willThrow();
  (*(v9 + 16))(v11, a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v8);
  v26 = v24;
  v27 = v24;
  v28 = sub_224627B58();
  v29 = sub_224628048();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v37[1] = v12;
    v32 = v31;
    *v30 = 138412290;
    v33 = v24;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 4) = v34;
    *v32 = v34;
    _os_log_impl(&dword_224507000, v28, v29, "dockkit: failed getting sync debug connection, can't send xpc %@", v30, 0xCu);
    sub_2245098A0(v32, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v32, -1, -1);
    MEMORY[0x22AA526D0](v30, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  v35 = v24;
  v36 = sub_224626FA8();
  (a4[2])(a4, 0, v36);
}

uint64_t sub_22460114C(char *a1, void *a2)
{
  v4 = sub_224627B78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v10 = *&a1[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock];
  _Block_copy(a2);

  os_unfair_lock_lock(v10 + 4);

  v11 = *&a1[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError];
  *&a1[OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError] = 0;

  v12 = *&a1[v9];

  os_unfair_lock_unlock(v12 + 4);

  v13 = sub_2245E4F94();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v13)
  {
    v38 = v4;
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = sub_22460A948;
    v15[4] = v8;
    v43 = sub_22460A980;
    v44 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_2245D42E8;
    v42 = &block_descriptor_711;
    v16 = _Block_copy(&aBlock);
    v17 = v13;

    v18 = [v17 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v16);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0D0);
    if (swift_dynamicCast())
    {
      v7 = aBlock;
      a2 = swift_allocObject();
      a2[2] = a1;
      a2[3] = sub_22460A948;
      a2[4] = v8;
      v5 = swift_allocObject();
      *(v5 + 16) = sub_224609230;
      *(v5 + 24) = a2;
      v43 = sub_22460A920;
      v44 = v5;
      aBlock = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v41 = sub_2245D4378;
      v42 = &block_descriptor_721;
      v19 = _Block_copy(&aBlock);
      v13 = v44;

      swift_unknownObjectRetain();
      v20 = a1;

      [v7 stopTrackerDebugNotificationsWithCompletion_];
      swift_unknownObjectRelease_n();

      _Block_release(v19);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }

    v4 = v38;
  }

  sub_22452ECAC();
  v23 = swift_allocError();
  *v24 = xmmword_22462FFB0;
  *(v24 + 16) = 4;
  swift_willThrow();

  (*(v5 + 16))(v7, &a1[OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger], v4);
  v25 = v23;
  v26 = v23;
  v27 = sub_224627B58();
  v28 = sub_224628048();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v38 = a2;
    v31 = v4;
    v32 = v30;
    *v29 = 138412290;
    v33 = v23;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v34;
    *v32 = v34;
    _os_log_impl(&dword_224507000, v27, v28, "dockkit: failed getting sync debug connection, can't send xpc %@", v29, 0xCu);
    sub_2245098A0(v32, &qword_27D0C9660);
    v35 = v32;
    v4 = v31;
    a2 = v38;
    MEMORY[0x22AA526D0](v35, -1, -1);
    MEMORY[0x22AA526D0](v29, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  v36 = v23;
  v37 = sub_224626FA8();
  (a2[2])(a2, 0, v37);
}

uint64_t sub_22460173C(uint64_t a1, void (**a2)(void, void, void), uint64_t a3, void (**a4)(void, void, void))
{
  v45 = a2;
  v7 = sub_224627B78();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  v12 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v13 = *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
  _Block_copy(a4);

  os_unfair_lock_lock(v13 + 4);

  v14 = *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v15 = *(a3 + v12);

  os_unfair_lock_unlock(v15 + 4);

  v16 = sub_2245E8814();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v16)
  {
    v43 = a1;
    v44 = v7;
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = sub_22460A948;
    v18[4] = v11;
    v50 = sub_22460A980;
    v51 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v47 = 1107296256;
    v48 = sub_2245D42E8;
    v49 = &block_descriptor_680;
    v19 = _Block_copy(&aBlock);
    v20 = v16;

    v21 = [v20 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v19);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0D8);
    if (swift_dynamicCast())
    {
      v22 = aBlock;
      v23 = swift_allocObject();
      v24 = v45;
      v23[2] = v17;
      v23[3] = v24;
      v23[4] = sub_22460A948;
      v23[5] = v11;
      v50 = sub_224609114;
      v51 = v23;
      aBlock = MEMORY[0x277D85DD0];
      v47 = 1107296256;
      v48 = sub_2245E8ED8;
      v49 = &block_descriptor_686;
      v25 = _Block_copy(&aBlock);

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      [v22 getAccessoryDescriptionWithInfo:v43 completion:v25];
      _Block_release(v25);

      return swift_unknownObjectRelease_n();
    }

    v7 = v44;
  }

  sub_22452ECAC();
  v27 = swift_allocError();
  *v28 = xmmword_22462FFB0;
  *(v28 + 16) = 4;
  swift_willThrow();

  (*(v8 + 16))(v10, a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v7);
  v29 = v27;
  v30 = v27;
  v31 = sub_224627B58();
  v32 = sub_224628048();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v45 = a4;
    v35 = v8;
    v36 = v7;
    v37 = v34;
    *v33 = 138412290;
    v38 = v27;
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 4) = v39;
    *v37 = v39;
    _os_log_impl(&dword_224507000, v31, v32, "dockkit: failed getting sync debug connection, can't send xpc %@", v33, 0xCu);
    sub_2245098A0(v37, &qword_27D0C9660);
    v40 = v37;
    v7 = v36;
    v8 = v35;
    a4 = v45;
    MEMORY[0x22AA526D0](v40, -1, -1);
    MEMORY[0x22AA526D0](v33, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection_Certification);
  v41 = v27;
  v42 = sub_224626FA8();
  (a4)[2](a4, 0, v42);
}

void sub_224601CD8(uint64_t a1, void (**a2)(void, void), uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  v46 = a3;
  v47 = a2;
  v8 = sub_224627B78();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  v13 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v14 = *(a4 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
  _Block_copy(a5);

  os_unfair_lock_lock(v14 + 4);

  v15 = *(a4 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a4 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v16 = *(a4 + v13);

  os_unfair_lock_unlock(v16 + 4);

  v17 = sub_2245E8814();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v17)
  {
    v44 = a1;
    v45 = v8;
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = sub_22460AC50;
    v19[4] = v12;
    v52 = sub_22460A98C;
    v53 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v49 = 1107296256;
    v50 = sub_2245D42E8;
    v51 = &block_descriptor_649;
    v20 = _Block_copy(&aBlock);
    v21 = v17;

    v22 = [v21 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v20);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0D8);
    if (swift_dynamicCast())
    {
      v23 = aBlock;
      sub_22450950C(0, &unk_27D0C89A0);
      swift_unknownObjectRetain();
      v24 = sub_224627C48();
      v25 = swift_allocObject();
      v26 = v47;
      v25[2] = v18;
      v25[3] = v26;
      v25[4] = sub_22460AC50;
      v25[5] = v12;
      v52 = sub_224609008;
      v53 = v25;
      aBlock = MEMORY[0x277D85DD0];
      v49 = 1107296256;
      v50 = sub_2245EA1AC;
      v51 = &block_descriptor_655;
      v27 = _Block_copy(&aBlock);

      swift_unknownObjectRetain();

      [v23 getAccessoryDiagnosticsWithInfo:v44 options:v24 completion:v27];
      _Block_release(v27);

      swift_unknownObjectRelease_n();

      return;
    }

    v8 = v45;
  }

  sub_22452ECAC();
  v28 = swift_allocError();
  *v29 = xmmword_22462FFB0;
  *(v29 + 16) = 4;
  swift_willThrow();

  (*(v9 + 16))(v11, a4 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v8);
  v30 = v28;
  v31 = v28;
  v32 = sub_224627B58();
  v33 = sub_224628048();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v47 = a5;
    v36 = v8;
    v37 = v35;
    *v34 = 138412290;
    v38 = v28;
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 4) = v39;
    *v37 = v39;
    _os_log_impl(&dword_224507000, v32, v33, "dockkit: failed getting sync cert connection, can't send xpc %@", v34, 0xCu);
    sub_2245098A0(v37, &qword_27D0C9660);
    v40 = v37;
    v8 = v36;
    a5 = v47;
    MEMORY[0x22AA526D0](v40, -1, -1);
    MEMORY[0x22AA526D0](v34, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  v41 = v28;
  v42 = sub_224626FA8();
  (a5)[2](a5, v42);
}

void sub_2246022B4(uint64_t a1, void (**a2)(void, void, void), uint64_t a3, void (**a4)(void, void, void))
{
  v44 = a2;
  v7 = sub_224627B78();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  v12 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v13 = *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
  _Block_copy(a4);

  os_unfair_lock_lock(v13 + 4);

  v14 = *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v15 = *(a3 + v12);

  os_unfair_lock_unlock(v15 + 4);

  v16 = sub_2245D53F8();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v16)
  {
    v42 = a1;
    v43 = v7;
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = sub_224608F0C;
    v18[4] = v11;
    v49 = sub_224608F14;
    v50 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v46 = 1107296256;
    v47 = sub_2245D42E8;
    v48 = &block_descriptor_618_0;
    v19 = _Block_copy(&aBlock);
    v20 = v16;

    v21 = [v20 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v19);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9798);
    if (swift_dynamicCast())
    {
      v22 = aBlock;
      sub_22450950C(0, &unk_27D0C89A0);
      v23 = sub_224627C48();
      v24 = swift_allocObject();
      *(v24 + 16) = sub_224608F0C;
      *(v24 + 24) = v11;
      v49 = sub_224608F20;
      v50 = v24;
      aBlock = MEMORY[0x277D85DD0];
      v46 = 1107296256;
      v47 = sub_2245EB204;
      v48 = &block_descriptor_624;
      v25 = _Block_copy(&aBlock);

      [v22 getAccessoryDiagnosticsWithInfo:v42 options:v23 completionHandler:v25];
      _Block_release(v25);

      swift_unknownObjectRelease();

      return;
    }

    v7 = v43;
  }

  sub_22452ECAC();
  v26 = swift_allocError();
  *v27 = 0xD000000000000027;
  *(v27 + 8) = 0x800000022463AED0;
  *(v27 + 16) = 4;
  swift_willThrow();

  (*(v8 + 16))(v10, a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v7);
  v28 = v26;
  v29 = v26;
  v30 = sub_224627B58();
  v31 = sub_224628048();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v44 = a4;
    v34 = v8;
    v35 = v7;
    v36 = v33;
    *v32 = 138412290;
    v37 = v26;
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 4) = v38;
    *v36 = v38;
    _os_log_impl(&dword_224507000, v30, v31, "dockkit: failed getting sync debug connection, can't send xpc %@", v32, 0xCu);
    sub_2245098A0(v36, &qword_27D0C9660);
    v39 = v36;
    v7 = v35;
    v8 = v34;
    a4 = v44;
    MEMORY[0x22AA526D0](v39, -1, -1);
    MEMORY[0x22AA526D0](v32, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  v40 = v26;
  v41 = sub_224626FA8();
  (a4)[2](a4, 0, v41);
}

void sub_22460287C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (**a7)(void, void))
{
  v47 = a2;
  v48 = a3;
  v46 = a1;
  v11 = sub_224627B78();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a7;
  _Block_copy(a7);
  v16 = sub_2245E8814();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v16)
  {
    v43 = a4;
    v44 = a5;
    v45 = v11;
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = sub_224608DF8;
    v18[4] = v15;
    v53 = sub_22460A98C;
    v54 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v50 = 1107296256;
    v51 = sub_2245D42E8;
    v52 = &block_descriptor_588;
    v19 = _Block_copy(&aBlock);
    v20 = v16;

    v21 = [v20 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v19);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0D8);
    if (swift_dynamicCast())
    {
      v22 = aBlock;
      swift_unknownObjectRetain();
      v23 = sub_224627CB8();
      v24 = sub_224627CB8();
      v25 = swift_allocObject();
      v26 = v44;
      v25[2] = v17;
      v25[3] = v26;
      v25[4] = sub_224608DF8;
      v25[5] = v15;
      v53 = sub_224608E00;
      v54 = v25;
      aBlock = MEMORY[0x277D85DD0];
      v50 = 1107296256;
      v51 = sub_2245EA1AC;
      v52 = &block_descriptor_594;
      v27 = _Block_copy(&aBlock);

      swift_unknownObjectRetain();

      [v22 manualFirmwareUpdateWithFilePath:v23 sandboxExt:v24 completion:v27];
      _Block_release(v27);

      swift_unknownObjectRelease_n();

      return;
    }

    v11 = v45;
  }

  sub_22452ECAC();
  v28 = swift_allocError();
  *v29 = xmmword_22462FFB0;
  *(v29 + 16) = 4;
  swift_willThrow();

  (*(v12 + 16))(v14, a6 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v11);
  v30 = v28;
  v31 = v28;
  v32 = sub_224627B58();
  v33 = sub_224628048();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v48 = v15;
    v36 = v11;
    v37 = v35;
    *v34 = 138412290;
    v38 = v28;
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 4) = v39;
    *v37 = v39;
    _os_log_impl(&dword_224507000, v32, v33, "dockkit: failed getting sync cert connection, can't send xpc %@", v34, 0xCu);
    sub_2245098A0(v37, &qword_27D0C9660);
    v40 = v37;
    v11 = v36;
    MEMORY[0x22AA526D0](v40, -1, -1);
    MEMORY[0x22AA526D0](v34, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  v41 = v28;
  v42 = sub_224626FA8();
  (a7)[2](a7, v42);
}

uint64_t sub_224602DE4(uint64_t a1, void (**a2)(void, void, void), uint64_t a3, void (**a4)(void, void, void))
{
  v45 = a2;
  v7 = sub_224627B78();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  v12 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v13 = *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
  _Block_copy(a4);

  os_unfair_lock_lock(v13 + 4);

  v14 = *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v15 = *(a3 + v12);

  os_unfair_lock_unlock(v15 + 4);

  v16 = sub_2245E8814();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v16)
  {
    v43 = a1;
    v44 = v7;
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = sub_22460A948;
    v18[4] = v11;
    v50 = sub_22460A980;
    v51 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v47 = 1107296256;
    v48 = sub_2245D42E8;
    v49 = &block_descriptor_558;
    v19 = _Block_copy(&aBlock);
    v20 = v16;

    v21 = [v20 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v19);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0D8);
    if (swift_dynamicCast())
    {
      v22 = aBlock;
      v23 = swift_allocObject();
      v24 = v45;
      v23[2] = v17;
      v23[3] = v24;
      v23[4] = sub_22460A948;
      v23[5] = v11;
      v50 = sub_224608CF4;
      v51 = v23;
      aBlock = MEMORY[0x277D85DD0];
      v47 = 1107296256;
      v48 = sub_2245E8ED8;
      v49 = &block_descriptor_564_0;
      v25 = _Block_copy(&aBlock);

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      [v22 haltWithInfo:v43 completion:v25];
      _Block_release(v25);

      return swift_unknownObjectRelease_n();
    }

    v7 = v44;
  }

  sub_22452ECAC();
  v27 = swift_allocError();
  *v28 = xmmword_22462FFB0;
  *(v28 + 16) = 4;
  swift_willThrow();

  (*(v8 + 16))(v10, a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v7);
  v29 = v27;
  v30 = v27;
  v31 = sub_224627B58();
  v32 = sub_224628048();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v45 = a4;
    v35 = v8;
    v36 = v7;
    v37 = v34;
    *v33 = 138412290;
    v38 = v27;
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 4) = v39;
    *v37 = v39;
    _os_log_impl(&dword_224507000, v31, v32, "dockkit: failed getting sync cert connection, can't send xpc %@", v33, 0xCu);
    sub_2245098A0(v37, &qword_27D0C9660);
    v40 = v37;
    v7 = v36;
    v8 = v35;
    a4 = v45;
    MEMORY[0x22AA526D0](v40, -1, -1);
    MEMORY[0x22AA526D0](v33, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  v41 = v27;
  v42 = sub_224626FA8();
  (a4)[2](a4, 0, v42);
}

uint64_t sub_224603380(uint64_t a1, void (**a2)(void, void, void), uint64_t a3, void (**a4)(void, void, void))
{
  v45 = a2;
  v7 = sub_224627B78();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  v12 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v13 = *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
  _Block_copy(a4);

  os_unfair_lock_lock(v13 + 4);

  v14 = *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v15 = *(a3 + v12);

  os_unfair_lock_unlock(v15 + 4);

  v16 = sub_2245E8814();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v16)
  {
    v43 = a1;
    v44 = v7;
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = sub_22460A948;
    v18[4] = v11;
    v50 = sub_22460A980;
    v51 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v47 = 1107296256;
    v48 = sub_2245D42E8;
    v49 = &block_descriptor_520;
    v19 = _Block_copy(&aBlock);
    v20 = v16;

    v21 = [v20 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v19);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0D8);
    if (swift_dynamicCast())
    {
      v22 = aBlock;
      v23 = swift_allocObject();
      v24 = v45;
      v23[2] = v17;
      v23[3] = v24;
      v23[4] = sub_22460A948;
      v23[5] = v11;
      v50 = sub_224608BB4;
      v51 = v23;
      aBlock = MEMORY[0x277D85DD0];
      v47 = 1107296256;
      v48 = sub_2245E8ED8;
      v49 = &block_descriptor_526;
      v25 = _Block_copy(&aBlock);

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      [v22 rebootWithInfo:v43 completion:v25];
      _Block_release(v25);

      return swift_unknownObjectRelease_n();
    }

    v7 = v44;
  }

  sub_22452ECAC();
  v27 = swift_allocError();
  *v28 = xmmword_22462FFB0;
  *(v28 + 16) = 4;
  swift_willThrow();

  (*(v8 + 16))(v10, a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v7);
  v29 = v27;
  v30 = v27;
  v31 = sub_224627B58();
  v32 = sub_224628048();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v45 = a4;
    v35 = v8;
    v36 = v7;
    v37 = v34;
    *v33 = 138412290;
    v38 = v27;
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 4) = v39;
    *v37 = v39;
    _os_log_impl(&dword_224507000, v31, v32, "dockkit: failed getting sync cert connection, can't send xpc %@", v33, 0xCu);
    sub_2245098A0(v37, &qword_27D0C9660);
    v40 = v37;
    v7 = v36;
    v8 = v35;
    a4 = v45;
    MEMORY[0x22AA526D0](v40, -1, -1);
    MEMORY[0x22AA526D0](v33, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  v41 = v27;
  v42 = sub_224626FA8();
  (a4)[2](a4, 0, v42);
}

uint64_t sub_22460391C(uint64_t a1, void *a2)
{
  v4 = sub_224627B78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v10 = *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
  _Block_copy(a2);

  os_unfair_lock_lock(v10 + 4);

  v11 = *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v12 = *(a1 + v9);

  os_unfair_lock_unlock(v12 + 4);

  v13 = sub_2245E4F94();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v13)
  {
    v36 = v4;
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = sub_22460A950;
    v15[4] = v8;
    v41 = sub_22460A988;
    v42 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_2245D42E8;
    v40 = &block_descriptor_465;
    v16 = _Block_copy(&aBlock);
    v17 = v13;

    v18 = [v17 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v16);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0D0);
    if (swift_dynamicCast())
    {
      v5 = aBlock;
      a2 = swift_allocObject();
      a2[2] = sub_22460A950;
      a2[3] = v8;
      a1 = swift_allocObject();
      *(a1 + 16) = sub_2245803F8;
      *(a1 + 24) = a2;
      v41 = sub_22460A92C;
      v42 = a1;
      aBlock = MEMORY[0x277D85DD0];
      v38 = 1107296256;
      v39 = sub_22460AC1C;
      v40 = &block_descriptor_474;
      v7 = _Block_copy(&aBlock);

      swift_unknownObjectRetain();

      [v5 connectedClientsWithCompletion_];
      swift_unknownObjectRelease_n();

      _Block_release(v7);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }

    v4 = v36;
  }

  sub_22452ECAC();
  v21 = swift_allocError();
  *v22 = xmmword_22462FFB0;
  *(v22 + 16) = 4;
  swift_willThrow();

  (*(v5 + 16))(v7, a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v4);
  v23 = v21;
  v24 = v21;
  v25 = sub_224627B58();
  v26 = sub_224628048();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v36 = a2;
    v29 = v4;
    v30 = v28;
    *v27 = 138412290;
    v31 = v21;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v32;
    *v30 = v32;
    _os_log_impl(&dword_224507000, v25, v26, "dockkit: failed getting sync debug connection, can't send xpc %@", v27, 0xCu);
    sub_2245098A0(v30, &qword_27D0C9660);
    v33 = v30;
    v4 = v29;
    a2 = v36;
    MEMORY[0x22AA526D0](v33, -1, -1);
    MEMORY[0x22AA526D0](v27, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  v34 = v21;
  v35 = sub_224626FA8();
  (a2[2])(a2, 0, v35);
}

uint64_t sub_224603F04(uint64_t a1, void *a2)
{
  v4 = sub_224627B78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v10 = *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
  _Block_copy(a2);

  os_unfair_lock_lock(v10 + 4);

  v11 = *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v12 = *(a1 + v9);

  os_unfair_lock_unlock(v12 + 4);

  v13 = sub_2245E4F94();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v13)
  {
    v36 = v4;
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = sub_2246089D4;
    v15[4] = v8;
    v41 = sub_2246089DC;
    v42 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_2245D42E8;
    v40 = &block_descriptor_432;
    v16 = _Block_copy(&aBlock);
    v17 = v13;

    v18 = [v17 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v16);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0D0);
    if (swift_dynamicCast())
    {
      v5 = aBlock;
      a2 = swift_allocObject();
      a2[2] = sub_2246089D4;
      a2[3] = v8;
      a1 = swift_allocObject();
      *(a1 + 16) = sub_224608A0C;
      *(a1 + 24) = a2;
      v41 = sub_224608A34;
      v42 = a1;
      aBlock = MEMORY[0x277D85DD0];
      v38 = 1107296256;
      v39 = sub_2245EFD04;
      v40 = &block_descriptor_441;
      v7 = _Block_copy(&aBlock);

      swift_unknownObjectRetain();

      [v5 versionsWithCompletion_];
      swift_unknownObjectRelease_n();

      _Block_release(v7);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }

    v4 = v36;
  }

  sub_22452ECAC();
  v21 = swift_allocError();
  *v22 = xmmword_22462FFB0;
  *(v22 + 16) = 4;
  swift_willThrow();

  (*(v5 + 16))(v7, a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v4);
  v23 = v21;
  v24 = v21;
  v25 = sub_224627B58();
  v26 = sub_224628048();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v36 = a2;
    v29 = v4;
    v30 = v28;
    *v27 = 138412290;
    v31 = v21;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v32;
    *v30 = v32;
    _os_log_impl(&dword_224507000, v25, v26, "dockkit: failed getting sync debug connection, can't send xpc %@", v27, 0xCu);
    sub_2245098A0(v30, &qword_27D0C9660);
    v33 = v30;
    v4 = v29;
    a2 = v36;
    MEMORY[0x22AA526D0](v33, -1, -1);
    MEMORY[0x22AA526D0](v27, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  v34 = v21;
  v35 = sub_224626FA8();
  (a2[2])(a2, 0, v35);
}

uint64_t sub_2246044EC(int a1, uint64_t a2, void *a3)
{
  v6 = sub_224627B78();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v12 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
  _Block_copy(a3);

  os_unfair_lock_lock(v12 + 4);

  v13 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v14 = *(a2 + v11);

  os_unfair_lock_unlock(v14 + 4);

  v15 = sub_2245E4F94();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v15)
  {
    v39 = a1;
    v40 = v6;
    v17 = swift_allocObject();
    *(v17 + 2) = v16;
    *(v17 + 3) = sub_22460A948;
    *(v17 + 4) = v10;
    v45 = sub_22460A980;
    v46 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_2245D42E8;
    v44 = &block_descriptor_398;
    v18 = _Block_copy(&aBlock);
    v19 = v15;

    v20 = [v19 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v18);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0D0);
    if (swift_dynamicCast())
    {
      v7 = aBlock;
      a3 = swift_allocObject();
      a3[2] = sub_22460A948;
      a3[3] = v10;
      a2 = swift_allocObject();
      *(a2 + 16) = sub_2245803F4;
      *(a2 + 24) = a3;
      v45 = sub_22460A920;
      v46 = a2;
      aBlock = MEMORY[0x277D85DD0];
      v42 = 1107296256;
      v43 = sub_2245D4378;
      v44 = &block_descriptor_408;
      v21 = _Block_copy(&aBlock);
      v9 = v46;

      swift_unknownObjectRetain();

      [v7 migrateDataWithUpdate:v39 & 1 completion:v21];
      swift_unknownObjectRelease_n();

      _Block_release(v21);
      LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

      if ((v21 & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }

    v6 = v40;
  }

  sub_22452ECAC();
  v23 = swift_allocError();
  *v24 = xmmword_22462FFB0;
  *(v24 + 16) = 4;
  swift_willThrow();

  (*(v7 + 16))(v9, a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v6);
  v25 = v23;
  v26 = v23;
  v27 = sub_224627B58();
  v28 = sub_224628048();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v40 = a3;
    v31 = v6;
    v32 = v30;
    *v29 = 138412290;
    v33 = v23;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v34;
    *v32 = v34;
    _os_log_impl(&dword_224507000, v27, v28, "dockkit: failed getting sync debug connection, can't send xpc %@", v29, 0xCu);
    sub_2245098A0(v32, &qword_27D0C9660);
    v35 = v32;
    v6 = v31;
    a3 = v40;
    MEMORY[0x22AA526D0](v35, -1, -1);
    MEMORY[0x22AA526D0](v29, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  v36 = v23;
  v37 = sub_224626FA8();
  (a3[2])(a3, 0, v37);
}

uint64_t sub_224604AE4(uint64_t a1, void *a2)
{
  v4 = sub_224627B78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v10 = *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
  _Block_copy(a2);

  os_unfair_lock_lock(v10 + 4);

  v11 = *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v12 = *(a1 + v9);

  os_unfair_lock_unlock(v12 + 4);

  v13 = sub_2245E8814();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v13)
  {
    v37 = v4;
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = sub_224608810;
    v15[4] = v8;
    v42 = sub_224608818;
    v43 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_2245D42E8;
    v41 = &block_descriptor_364;
    v16 = _Block_copy(&aBlock);
    v17 = v13;

    v18 = [v17 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v16);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0D8);
    if (swift_dynamicCast())
    {
      v5 = aBlock;
      a2 = swift_allocObject();
      a2[2] = sub_224608810;
      a2[3] = v8;
      a1 = swift_allocObject();
      *(a1 + 16) = sub_224608824;
      *(a1 + 24) = a2;
      v42 = sub_22460884C;
      v43 = a1;
      aBlock = MEMORY[0x277D85DD0];
      v39 = 1107296256;
      v40 = sub_2245F1974;
      v41 = &block_descriptor_373;
      v7 = _Block_copy(&aBlock);

      swift_unknownObjectRetain();

      [v5 dumpStateWithCompletion_];
      swift_unknownObjectRelease_n();

      _Block_release(v7);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }

    v4 = v37;
  }

  sub_22452ECAC();
  v21 = swift_allocError();
  *v22 = xmmword_22462FFB0;
  *(v22 + 16) = 4;
  swift_willThrow();

  (*(v5 + 16))(v7, a1 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v4);
  v23 = v21;
  v24 = v21;
  v25 = sub_224627B58();
  v26 = sub_224628048();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37 = a2;
    v29 = v4;
    v30 = v28;
    *v27 = 138412290;
    v31 = v21;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v32;
    *v30 = v32;
    _os_log_impl(&dword_224507000, v25, v26, "dockkit: failed getting sync cert connection, can't send xpc %@", v27, 0xCu);
    sub_2245098A0(v30, &qword_27D0C9660);
    v33 = v30;
    v4 = v29;
    a2 = v37;
    MEMORY[0x22AA526D0](v33, -1, -1);
    MEMORY[0x22AA526D0](v27, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  v34 = v21;
  v35 = sub_224627CB8();
  v36 = sub_224626FA8();
  (a2[2])(a2, v35, v36);
}

void sub_2246050E0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_224627B78();
  p_aBlock = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v12 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
  _Block_copy(a3);

  os_unfair_lock_lock(v12 + 4);

  v13 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v14 = *(a2 + v11);

  os_unfair_lock_unlock(v14 + 4);

  v15 = sub_2245E8814();
  if (v15)
  {
    v16 = v15;
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = sub_22460A948;
    v18[4] = v10;
    v40 = sub_22460A980;
    v41 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v37 = 1107296256;
    v38 = sub_2245D42E8;
    v39 = &block_descriptor_330;
    v19 = _Block_copy(&aBlock);

    v20 = [v16 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v19);
    p_aBlock = &aBlock;
    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0D8);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v6 = v35[2];
    a3 = swift_allocObject();
    a3[2] = sub_22460A948;
    a3[3] = v10;
    a2 = swift_allocObject();
    *(a2 + 16) = sub_2245803F4;
    *(a2 + 24) = a3;
    v40 = sub_22460A920;
    v41 = a2;
    aBlock = MEMORY[0x277D85DD0];
    v37 = 1107296256;
    v38 = sub_2245D4378;
    v39 = &block_descriptor_340;
    v9 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();

    [v6 unpairAccessoryWithInfo:a1 completion:v9];

    swift_unknownObjectRelease_n();
    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  sub_22452ECAC();
  v22 = swift_allocError();
  *v23 = xmmword_22462FFB0;
  *(v23 + 16) = 4;
  swift_willThrow();
  (p_aBlock[2])(v9, a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v6);
  v24 = v22;
  v25 = v22;
  v26 = sub_224627B58();
  v27 = sub_224628048();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v35[1] = v10;
    v30 = v29;
    *v28 = 138412290;
    v31 = v22;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 4) = v32;
    *v30 = v32;
    _os_log_impl(&dword_224507000, v26, v27, "dockkit: failed getting sync cert connection, can't send xpc %@", v28, 0xCu);
    sub_2245098A0(v30, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v30, -1, -1);
    MEMORY[0x22AA526D0](v28, -1, -1);
  }

  (p_aBlock[1])(v9, v6);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  v33 = v22;
  v34 = sub_224626FA8();
  (a3[2])(a3, 0, v34);
}

void sub_2246056B0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_224627B78();
  p_aBlock = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v12 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);
  _Block_copy(a3);

  os_unfair_lock_lock(v12 + 4);

  v13 = *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v14 = *(a2 + v11);

  os_unfair_lock_unlock(v14 + 4);

  v15 = sub_2245E8814();
  if (v15)
  {
    v16 = v15;
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = sub_22460A948;
    v18[4] = v10;
    v40 = sub_22460A980;
    v41 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v37 = 1107296256;
    v38 = sub_2245D42E8;
    v39 = &block_descriptor_288;
    v19 = _Block_copy(&aBlock);

    v20 = [v16 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v19);
    p_aBlock = &aBlock;
    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0D8);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v6 = v35[2];
    a3 = swift_allocObject();
    a3[2] = sub_22460A948;
    a3[3] = v10;
    a2 = swift_allocObject();
    *(a2 + 16) = sub_2245803F4;
    *(a2 + 24) = a3;
    v40 = sub_22460A920;
    v41 = a2;
    aBlock = MEMORY[0x277D85DD0];
    v37 = 1107296256;
    v38 = sub_2245D4378;
    v39 = &block_descriptor_298;
    v9 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();

    [v6 returnToBaseWithInfo:a1 completion:v9];

    swift_unknownObjectRelease_n();
    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  sub_22452ECAC();
  v22 = swift_allocError();
  *v23 = xmmword_22462FFB0;
  *(v23 + 16) = 4;
  swift_willThrow();
  (p_aBlock[2])(v9, a2 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v6);
  v24 = v22;
  v25 = v22;
  v26 = sub_224627B58();
  v27 = sub_224628048();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v35[1] = v10;
    v30 = v29;
    *v28 = 138412290;
    v31 = v22;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 4) = v32;
    *v30 = v32;
    _os_log_impl(&dword_224507000, v26, v27, "dockkit: failed getting sync debug connection, can't send xpc %@", v28, 0xCu);
    sub_2245098A0(v30, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v30, -1, -1);
    MEMORY[0x22AA526D0](v28, -1, -1);
  }

  (p_aBlock[1])(v9, v6);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  v33 = v22;
  v34 = sub_224626FA8();
  (a3[2])(a3, 0, v34);
}

uint64_t sub_224605C80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_224627B78();
  v46 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  sub_22450950C(0, &unk_27D0C8D40);
  _Block_copy(a4);
  v11 = sub_224628208();
  v12 = a2;
  v13 = v11;
  if (v12)
  {
    v14 = sub_224627CB8();

    v13 = v14;
  }

  v15 = OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock;
  v16 = *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionLock);

  os_unfair_lock_lock(v16 + 4);

  v17 = *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError);
  *(a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnectionError) = 0;

  v18 = *(a3 + v15);

  os_unfair_lock_unlock(v18 + 4);

  v19 = sub_2245E4F94();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v19)
  {
    v45 = v13;
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = sub_22460A94C;
    v21[4] = v10;
    v51 = sub_22460A984;
    v52 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_2245D42E8;
    v50 = &block_descriptor_253;
    v22 = _Block_copy(&aBlock);
    v23 = v19;

    v24 = [v23 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v22);

    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0D0);
    if (swift_dynamicCast())
    {
      v7 = aBlock;
      a4 = swift_allocObject();
      a4[2] = sub_22460A94C;
      a4[3] = v10;
      a3 = swift_allocObject();
      *(a3 + 16) = sub_22460A924;
      *(a3 + 24) = a4;
      v51 = sub_22460A928;
      v52 = a3;
      aBlock = MEMORY[0x277D85DD0];
      v48 = 1107296256;
      v49 = sub_2245F3D90;
      v50 = &block_descriptor_263;
      v25 = _Block_copy(&aBlock);

      swift_unknownObjectRetain();

      v9 = v45;
      [v7 dumpTrackerDiagnosticsWithPath:v45 completion:v25];
      swift_unknownObjectRelease();

      _Block_release(v25);
      swift_unknownObjectRelease();
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }

    v13 = v45;
  }

  sub_22452ECAC();
  v28 = swift_allocError();
  *v29 = xmmword_22462FFB0;
  *(v29 + 16) = 4;
  swift_willThrow();

  (*(v46 + 16))(v9, a3 + OBJC_IVAR____TtC11DockKitCore15DockCoreManager_logger, v7);
  v30 = v28;
  v31 = v28;
  v32 = sub_224627B58();
  v33 = sub_224628048();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v45 = v7;
    v35 = v13;
    v36 = v34;
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    v38 = v28;
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v36 + 4) = v39;
    *v37 = v39;
    _os_log_impl(&dword_224507000, v32, v33, "dockkit: failed getting tracker debug sync connection, can't send xpc %@", v36, 0xCu);
    sub_2245098A0(v37, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v37, -1, -1);
    v40 = v36;
    v13 = v35;
    v7 = v45;
    MEMORY[0x22AA526D0](v40, -1, -1);
  }

  (*(v46 + 8))(v9, v7);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  v41 = v28;
  v42 = sub_224627EB8();
  v43 = sub_224626FA8();
  (a4[2])(a4, v42, v43);
}