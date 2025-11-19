uint64_t sub_2246062EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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
    v50 = &block_descriptor_218;
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
      v50 = &block_descriptor_228;
      v25 = _Block_copy(&aBlock);

      swift_unknownObjectRetain();

      v9 = v45;
      [v7 dumpTrackerStateWithPath:v45 completion:v25];
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

uint64_t sub_224606958(int a1, uint64_t a2, void *a3)
{
  v6 = sub_224627B78();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v40 = a1;
    v41 = v6;
    v17 = swift_allocObject();
    *(v17 + 2) = v16;
    *(v17 + 3) = sub_22460A94C;
    *(v17 + 4) = v10;
    v46 = sub_22460A984;
    v47 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v43 = 1107296256;
    v44 = sub_2245D42E8;
    v45 = &block_descriptor_183;
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
      a3[2] = sub_22460A94C;
      a3[3] = v10;
      a2 = swift_allocObject();
      *(a2 + 16) = sub_22460A924;
      *(a2 + 24) = a3;
      v46 = sub_22460A928;
      v47 = a2;
      aBlock = MEMORY[0x277D85DD0];
      v43 = 1107296256;
      v44 = sub_2245F3D90;
      v45 = &block_descriptor_193;
      v21 = _Block_copy(&aBlock);
      v9 = v47;

      swift_unknownObjectRetain();

      [v7 searchWithCalibrate:v40 & 1 completion:v21];
      swift_unknownObjectRelease_n();

      _Block_release(v21);
      LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

      if ((v21 & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }

    v6 = v41;
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
    v41 = a3;
    v31 = v6;
    v32 = v30;
    *v29 = 138412290;
    v33 = v23;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v34;
    *v32 = v34;
    _os_log_impl(&dword_224507000, v27, v28, "dockkit: failed getting tracker debug sync connection, can't send xpc %@", v29, 0xCu);
    sub_2245098A0(v32, &qword_27D0C9660);
    v35 = v32;
    v6 = v31;
    a3 = v41;
    MEMORY[0x22AA526D0](v35, -1, -1);
    MEMORY[0x22AA526D0](v29, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  v36 = v23;
  v37 = sub_224627EB8();
  v38 = sub_224626FA8();
  (a3[2])(a3, v37, v38);
}

uint64_t sub_224606F6C(int a1, uint64_t a2, void *a3)
{
  v6 = sub_224627B78();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v40 = a1;
    v41 = v6;
    v17 = swift_allocObject();
    *(v17 + 2) = v16;
    *(v17 + 3) = sub_224608368;
    *(v17 + 4) = v10;
    v46 = sub_22460A984;
    v47 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v43 = 1107296256;
    v44 = sub_2245D42E8;
    v45 = &block_descriptor_149;
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
      a3[2] = sub_224608368;
      a3[3] = v10;
      a2 = swift_allocObject();
      *(a2 + 16) = sub_22460A924;
      *(a2 + 24) = a3;
      v46 = sub_22460A928;
      v47 = a2;
      aBlock = MEMORY[0x277D85DD0];
      v43 = 1107296256;
      v44 = sub_2245F3D90;
      v45 = &block_descriptor_158;
      v21 = _Block_copy(&aBlock);
      v9 = v47;

      swift_unknownObjectRetain();

      [v7 stopSearchWithCalibrate:v40 & 1 completion:v21];
      swift_unknownObjectRelease_n();

      _Block_release(v21);
      LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

      if ((v21 & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }

    v6 = v41;
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
    v41 = a3;
    v31 = v6;
    v32 = v30;
    *v29 = 138412290;
    v33 = v23;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v34;
    *v32 = v34;
    _os_log_impl(&dword_224507000, v27, v28, "dockkit: failed getting tracker debug sync connection, can't send xpc %@", v29, 0xCu);
    sub_2245098A0(v32, &qword_27D0C9660);
    v35 = v32;
    v6 = v31;
    a3 = v41;
    MEMORY[0x22AA526D0](v35, -1, -1);
    MEMORY[0x22AA526D0](v29, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  sub_2245E8F60(&OBJC_IVAR____TtC11DockKitCore15DockCoreManager__xpcConnection);
  v36 = v23;
  v37 = sub_224627EB8();
  v38 = sub_224626FA8();
  (a3[2])(a3, v37, v38);
}

uint64_t sub_224607580(uint64_t a1, uint64_t a2, void *a3)
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
    v44 = &block_descriptor_108;
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
      v44 = &block_descriptor_118;
      v21 = _Block_copy(&aBlock);
      v9 = v46;

      [v7 setTrackingButtonStateWithState:v39 completion:v21];
      swift_unknownObjectRelease();

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

uint64_t sub_224607B64(int a1, uint64_t a2, void *a3)
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
    *(v17 + 3) = sub_224608150;
    *(v17 + 4) = v10;
    v45 = sub_22460A980;
    v46 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_2245D42E8;
    v44 = &block_descriptor_6;
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
      a3[2] = sub_224608150;
      a3[3] = v10;
      a2 = swift_allocObject();
      *(a2 + 16) = sub_2245803F4;
      *(a2 + 24) = a3;
      v45 = sub_224608160;
      v46 = a2;
      aBlock = MEMORY[0x277D85DD0];
      v42 = 1107296256;
      v43 = sub_2245D4378;
      v44 = &block_descriptor_78_0;
      v21 = _Block_copy(&aBlock);
      v9 = v46;

      [v7 setTrackingActivityWithEnabled:v39 & 1 completion:v21];
      swift_unknownObjectRelease();

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

uint64_t sub_224608198()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22450D030;

  return sub_2245F7B50(v2, v4, v3);
}

uint64_t sub_2246082B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22450D030;

  return sub_2245F6AB8(v2, v3, v4);
}

uint64_t sub_224608370()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22450D030;

  return sub_2245F5D94(v2, v4, v3);
}

uint64_t sub_224608424()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22450D030;

  return sub_2245F52DC(v2, v4, v3);
}

uint64_t sub_2246084D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22450D030;

  return sub_2245F474C(v2, v3, v4);
}

uint64_t sub_22460858C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22450D030;

  return sub_2245F39C8(v2, v3, v4);
}

uint64_t sub_2246086A8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22450D030;

  return sub_2245F2DA0(v2, v3, v4);
}

uint64_t sub_22460875C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22450D030;

  return sub_2245F2324(v2, v3, v4);
}

uint64_t sub_224608874()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22450D030;

  return sub_2245F13E8(v2, v3);
}

uint64_t sub_224608920()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22450D030;

  return sub_2245F07B4(v2, v4, v3);
}

uint64_t sub_224608A5C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22450D030;

  return sub_2245EFA08(v2, v3);
}

uint64_t sub_224608B08()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22450D030;

  return sub_2245EEE08(v2, v3);
}

uint64_t sub_224608BF8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22450D030;

  return sub_2245EDC5C(v2, v3, v5, v4);
}

uint64_t sub_224608D38()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22450D030;

  return sub_2245EC97C(v2, v3, v5, v4);
}

uint64_t sub_224608E44()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_22450D030;

  return sub_2245EBC00(v2, v3, v4, v5, v6);
}

uint64_t sub_224608F48()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22450D030;

  return sub_2245EAC00(v2, v3, v5, v4);
}

uint64_t sub_22460904C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_22450D030;

  return sub_2245E9DB4(v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_528Tm()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_224609170()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22450D030;

  return sub_2245E8454(v2, v3, v5, v4);
}

uint64_t sub_224609234()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22450D030;

  return sub_2245E7A0C(v2, v3);
}

uint64_t sub_2246092E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22450D030;

  return sub_2245E6EBC(v2, v3, v4);
}

uint64_t sub_224609394()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22450D030;

  return sub_2245E68F0(v2, v3, v5, v4);
}

uint64_t sub_224609474()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22450D030;

  return sub_2245E5CA4(v2, v3, v5, v4);
}

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224609574(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22450D034;

  return sub_2245E3400(a1, v4, v5, v6);
}

uint64_t sub_224609628(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22450D030;

  return sub_2245E2CB0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2246096F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22450D030;

  return sub_2245E18F4(v2, v3, v4);
}

uint64_t sub_2246097A4()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22450D030;

  return sub_2245E0F10(v2, v4, v3);
}

uint64_t objectdestroy_815Tm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2246098D0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22450D030;

  return sub_2245DEFBC(v2, v3, v5, v4);
}

uint64_t sub_224609A1C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22450D030;

  return sub_2245DE2CC(v2, v3);
}

uint64_t sub_224609B14()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22450D030;

  return sub_2245DD4D0(v2, v3);
}

uint64_t sub_224609BFC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22450D030;

  return sub_2245DC32C(v2, v3);
}

uint64_t sub_224609CA8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22450D030;

  return sub_2245DAF90(v2, v3, v5, v4);
}

uint64_t sub_224609D68()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = *(v0 + 6);
  v7 = *(v0 + 7);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_22450D030;

  return sub_2245DA5B8(v6, v7, v2, v3, v4, v5);
}

uint64_t sub_224609E3C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22450D030;

  return sub_2245D9B0C(v2, v3, v4);
}

uint64_t sub_224609F3C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22450D030;

  return sub_2245D8CE4(v4, v5, v2, v3);
}

uint64_t objectdestroy_230Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22460A044()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22450D030;

  return sub_2245D8490(v2, v3, v4);
}

uint64_t sub_22460A170()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22450D030;

  return sub_2245D79F4(v2, v3);
}

uint64_t sub_22460A314(int a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA0F8);

  return sub_2245DFF54(a1, a2);
}

uint64_t objectdestroy_1531Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_22460A45C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

uint64_t sub_22460A4FC(char a1)
{
  v3 = *(v1 + 24);
  if (a1)
  {
    swift_unknownObjectWeakAssign();
  }

  return v3(a1 & 1);
}

uint64_t sub_22460A55C(char a1)
{
  v3 = *(v1 + 32);
  if (a1)
  {
    swift_unknownObjectWeakAssign();
  }

  return v3(a1 & 1);
}

uint64_t objectdestroy_522Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_834Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_8Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t sub_22460AC58()
{
  type metadata accessor for TimeBuffer();
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x277D84F90];
  *(v1 + 24) = 0x3FA999999999999ALL;
  *(v0 + 16) = v1;
  *(v0 + 24) = [objc_allocWithZone(MEMORY[0x277CC1CD8]) init];
  v2 = OBJC_IVAR____TtC11DockKitCore23StandOrientationMonitor_portType;
  v3 = *MEMORY[0x277D213C0];
  v4 = sub_224627518();
  (*(*(v4 - 8) + 104))(v0 + v2, v3, v4);
  *(v0 + OBJC_IVAR____TtC11DockKitCore23StandOrientationMonitor_cameraOrientation) = 1;
  *(v0 + OBJC_IVAR____TtC11DockKitCore23StandOrientationMonitor_isFront) = 0;
  *(v0 + OBJC_IVAR____TtC11DockKitCore23StandOrientationMonitor_isPortrait) = 0;
  *(v0 + OBJC_IVAR____TtC11DockKitCore23StandOrientationMonitor_calibration) = 0;
  v5 = OBJC_IVAR____TtC11DockKitCore23StandOrientationMonitor_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9670);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v0 + v5) = v6;
  v7 = OBJC_IVAR____TtC11DockKitCore23StandOrientationMonitor_calibrationLock;
  v8 = swift_allocObject();
  *(v0 + v7) = v8;
  *(v0 + OBJC_IVAR____TtC11DockKitCore23StandOrientationMonitor_imuUpdateInterval) = 0x3F91111111111111;
  *(v8 + 16) = 0;
  *(v0 + OBJC_IVAR____TtC11DockKitCore23StandOrientationMonitor_isCalibrated) = 0;
  v9 = v0 + OBJC_IVAR____TtC11DockKitCore23StandOrientationMonitor_lastYaw;
  *v9 = 0;
  *(v9 + 8) = 1;
  sub_224627108();
  *(v0 + OBJC_IVAR____TtC11DockKitCore23StandOrientationMonitor_feedbackTimeout) = 0x3FF0000000000000;
  sub_224627B68();
  sub_22460B198(0x6570795474726F50, 0xED0000746E6F7246, 3);
  return v0;
}

uint64_t sub_22460AE60()
{
  [*(v0 + 24) stopDeviceMotionUpdates];

  v1 = OBJC_IVAR____TtC11DockKitCore23StandOrientationMonitor_portType;
  v2 = sub_224627518();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC11DockKitCore23StandOrientationMonitor_timeSinceStart;
  v4 = sub_224627118();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC11DockKitCore23StandOrientationMonitor_logger;
  v6 = sub_224627B78();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_22460AF90()
{
  sub_22460AE60();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for StandOrientationMonitor()
{
  result = qword_27D0CA108;
  if (!qword_27D0CA108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22460B03C()
{
  result = sub_224627518();
  if (v1 <= 0x3F)
  {
    result = sub_224627118();
    if (v2 <= 0x3F)
    {
      result = sub_224627B78();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_22460B198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8FA8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_224627518();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  v15 = OBJC_IVAR____TtC11DockKitCore23StandOrientationMonitor_lock;
  v16 = *(v4 + OBJC_IVAR____TtC11DockKitCore23StandOrientationMonitor_lock);

  os_unfair_lock_lock(v16 + 4);

  sub_224627508();
  v17 = *(v9 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    (*(v9 + 104))(v14, *MEMORY[0x277D213C0], v8);
    if (v17(v7, 1, v8) != 1)
    {
      sub_22460BE80(v7);
    }
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
  }

  v18 = OBJC_IVAR____TtC11DockKitCore23StandOrientationMonitor_portType;
  (*(v9 + 40))(v4 + OBJC_IVAR____TtC11DockKitCore23StandOrientationMonitor_portType, v14, v8);
  v19 = v23;
  *(v4 + OBJC_IVAR____TtC11DockKitCore23StandOrientationMonitor_cameraOrientation) = v23;
  (*(v9 + 16))(v12, v4 + v18, v8);
  LOBYTE(v18) = sub_2246274F8();
  (*(v9 + 8))(v12, v8);
  *(v4 + OBJC_IVAR____TtC11DockKitCore23StandOrientationMonitor_isFront) = v18 & 1;
  *(v4 + OBJC_IVAR____TtC11DockKitCore23StandOrientationMonitor_isPortrait) = (v19 - 1) < 2;
  v20 = *(v4 + v15);

  os_unfair_lock_unlock(v20 + 4);
}

void sub_22460B464(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, int a6)
{
  v7 = v6;
  v50 = a6;
  v13 = sub_224627B78();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22460B838(v52);
  if ((v53 & 1) == 0)
  {
    v48 = *&a5;
    v49 = v14;
    v18 = *v52;
    v17 = *&v52[1];
    v19 = *&v52[2];
    v20 = OBJC_IVAR____TtC11DockKitCore23StandOrientationMonitor_calibrationLock;
    v21 = *(v6 + OBJC_IVAR____TtC11DockKitCore23StandOrientationMonitor_calibrationLock);

    os_unfair_lock_lock(v21 + 4);

    v22 = OBJC_IVAR____TtC11DockKitCore23StandOrientationMonitor_calibration;
    if (*(v7 + OBJC_IVAR____TtC11DockKitCore23StandOrientationMonitor_calibration))
    {
LABEL_14:
      v45 = *(v7 + v20);

      os_unfair_lock_unlock(v45 + 4);

      return;
    }

    v47 = v20;
    v23 = [objc_allocWithZone(type metadata accessor for Orientation()) init];
    v24 = v23;
    if (a2)
    {
      v25 = v48;
      if (a4)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v37 = *&a1 - v18;
      v38 = OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock;
      v39 = *&v23[OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock];

      os_unfair_lock_lock(v39 + 4);

      *&v24[OBJC_IVAR____TtC11DockKitCore11Orientation__yaw] = v37;
      v40 = *&v24[v38];

      os_unfair_lock_unlock(v40 + 4);

      v25 = v48;
      if (a4)
      {
LABEL_5:
        if (v50)
        {
LABEL_7:
          v30 = *(v7 + v22);
          *(v7 + v22) = v24;
          v31 = v24;

          v32 = v49;
          (*(v49 + 16))(v16, v7 + OBJC_IVAR____TtC11DockKitCore23StandOrientationMonitor_logger, v13);
          v33 = sub_224627B58();
          v34 = sub_224628058();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            v51 = v36;
            *v35 = 136315138;
            *(v35 + 4) = sub_224509F28(0xD000000000000024, 0x800000022463B110, &v51);
            _os_log_impl(&dword_224507000, v33, v34, "%s Setting calibration", v35, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v36);
            MEMORY[0x22AA526D0](v36, -1, -1);
            MEMORY[0x22AA526D0](v35, -1, -1);
          }

          else
          {
          }

          (*(v32 + 8))(v16, v13);
          v20 = v47;
          goto LABEL_14;
        }

LABEL_6:
        v26 = v25 - v19;
        v27 = OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock;
        v28 = *&v24[OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock];

        os_unfair_lock_lock(v28 + 4);

        *&v24[OBJC_IVAR____TtC11DockKitCore11Orientation__roll] = v26;
        v29 = *&v24[v27];

        os_unfair_lock_unlock(v29 + 4);

        goto LABEL_7;
      }
    }

    v41 = *&a3 - v17;
    v42 = OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock;
    v43 = *&v24[OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock];

    os_unfair_lock_lock(v43 + 4);

    *&v24[OBJC_IVAR____TtC11DockKitCore11Orientation__pitch] = v41;
    v44 = *&v24[v42];

    os_unfair_lock_unlock(v44 + 4);

    if (v50)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }
}

void sub_22460B838(uint64_t a1@<X8>)
{
  v3 = sub_224627B78();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 24);
  if (([v7 isDeviceMotionActive] & 1) == 0 && objc_msgSend(v7, sel_isDeviceMotionAvailable))
  {
    [v7 setDeviceMotionUpdateInterval_];
    [v7 setShowsDeviceMovementDisplay_];
    [v7 startDeviceMotionUpdatesUsingReferenceFrame_];
  }

  v8 = [v7 deviceMotion];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 attitude];
    [v10 quaternion];
    v12.f64[0] = v11;
    v12.f64[1] = v13;
    v15.f64[0] = v14;
    v15.f64[1] = v16;
    v17 = vnegq_f64(v15);
    v18 = vmulq_f64(v12, xmmword_2246331B0);
    v19 = vextq_s8(v18, vnegq_f64(v18), 8uLL);
    v20 = vaddq_f64(vextq_s8(v15, v17, 8uLL), vmlaq_f64(vmulq_f64(v18, 0), 0, v19));
    v21 = vaddq_f64(v19, vmlaq_f64(vmulq_f64(v15, 0), 0, vextq_s8(v17, v15, 8uLL)));
    v22 = vnegq_f64(v20);
    v23 = vextq_s8(v21, vnegq_f64(v21), 8uLL);
    v53 = vmlaq_n_f64(vmulq_n_f64(v21, v13), v23, v11);
    v54 = vmlaq_n_f64(vmulq_n_f64(v22, v16), vextq_s8(v20, v22, 8uLL), v14);
    v24 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v20, v13), vextq_s8(v22, v20, 8uLL), v11), vmlaq_n_f64(vmulq_n_f64(v21, v16), v23, v14));
    v25 = vmuld_n_f64(v24.f64[0], v24.f64[0]) + vmuld_lane_f64(v24.f64[1], v24, 1);
      ;
    }

    *&v27 = *&vaddq_f64(v53, v54);
      ;
    }

    v53 = v26;
      ;
    }

      ;
    }

    v52 = v29;
    [v9 rotationRate];
    v54 = v30;
    [v9 rotationRate];
    v51 = v31;
    [v9 rotationRate];
    v32.f64[0] = v54.f64[0];
    *&v32.f64[1] = v51;
    v54 = v32;
    v51 = v33;
    [v9 gravity];
    v50 = v34;
    [v9 gravity];
    v49 = v35;
    [v9 gravity];
    *&v36.f64[0] = v50;
    *&v36.f64[1] = v49;
    v38.f64[0] = sub_22460BD20(v54, *&v51, v36, v37);
    v54 = v38;
    v39 = -v38.f64[0];
    v40 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
    [v40 timeIntervalSince1970];
    v42 = v41;

    v43 = 0;
    *&v44 = v53.f64[0];
    *(&v44 + 1) = v52;
    v45 = v54.f64[1];
  }

  else
  {
    (*(v4 + 16))(v6, v1 + OBJC_IVAR____TtC11DockKitCore23StandOrientationMonitor_logger, v3);
    v46 = sub_224627B58();
    v47 = sub_224628038();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_224507000, v46, v47, "CMDeviceMotion not available", v48, 2u);
      MEMORY[0x22AA526D0](v48, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    v45 = 0.0;
    v43 = 1;
    v44 = 0uLL;
    v39 = 0.0;
    v42 = 0;
  }

  *a1 = v44;
  *(a1 + 16) = 0;
  *(a1 + 24) = v45;
  *(a1 + 32) = v39;
  *(a1 + 40) = 0;
  *(a1 + 48) = v42;
  *(a1 + 56) = v43;
}

uint64_t sub_22460BCB4()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

double sub_22460BD20(float64x2_t a1, double a2, float64x2_t a3, long double a4)
{
  v4 = sqrt(vmulq_f64(a3, a3).f64[0] + vmuld_lane_f64(a3.f64[1], a3, 1));
  v5 = atan2(-a3.f64[0], -a3.f64[1]);
  v6 = atan2(a4, v4);
  v8 = __sincos_stret(v6 * 0.5);
  v7.f64[0] = v8.__sinval;
  *&__ya = *&vmulq_f64(v7, 0);
  v22 = vmulq_n_f64(xmmword_2246324D0, v8.__sinval);
  v9 = __sincos_stret(v5 * 0.5);
  v10 = vmulq_n_f64(0, v9.__sinval);
  v11 = vnegq_f64(v10);
  v12 = vextq_s8(v9, vnegq_f64(v9), 8uLL);
  v13 = vmlaq_n_f64(vmulq_laneq_f64(v9, v22, 1), v12, v22.f64[0]);
  v14 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v9, v8.__cosval), v12, __ya), vmlaq_n_f64(vmulq_laneq_f64(v11, v22, 1), vextq_s8(v10, v11, 8uLL), v22.f64[0]));
  v15 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v10, v8.__cosval), vextq_s8(v11, v10, 8uLL), __ya), v13);
  v16 = vnegq_f64(v15);
  v17 = vmulq_f64(v14, xmmword_2246331B0);
  v18 = vextq_s8(v17, vnegq_f64(v17), 8uLL);
  v19 = vmlaq_n_f64(vmlaq_n_f64(vmulq_laneq_f64(v15, a1, 1), vextq_s8(v16, v15, 8uLL), a1.f64[0]), v18, a2);
  v20 = vmlaq_n_f64(vmlaq_n_f64(vmulq_laneq_f64(v17, a1, 1), v18, a1.f64[0]), vextq_s8(v15, v16, 8uLL), a2);
  *&result = *&vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v20, v14, 1), vextq_s8(vnegq_f64(v20), v20, 8uLL), v14.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v19, v15, 1), vextq_s8(v19, vnegq_f64(v19), 8uLL), v15.f64[0]));
  return result;
}

uint64_t sub_22460BE80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8FA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Double __swiftcall clamp(value:minValue:maxValue:)(Swift::Double value, Swift::Double minValue, Swift::Double maxValue)
{
  if (minValue > value)
  {
    value = minValue;
  }

  if (value > maxValue)
  {
    return maxValue;
  }

  return value;
}

Swift::Double __swiftcall wrapAngle(_:minValue:maxValue:)(Swift::Double _, Swift::Double minValue, Swift::Double maxValue)
{
    ;
  }

    ;
  }

  return _;
}

Swift::Double __swiftcall wrapAngle(_:)(Swift::Double result)
{
    ;
  }

    ;
  }

  return result;
}

uint64_t sub_22460BFC4()
{
  v0 = sub_224627CB8();
  v1 = MGGetStringAnswer();

  if (v1)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_224627CC8();
    }
  }

  return 0;
}

double static DockKitCoreUtils.convert(rect:from:to:)(char *a1, char *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v10 = *a1;
  v11 = *a2;
  MaxX = CGRectGetMaxX(*&a3);
  v33.origin.x = a3;
  v33.origin.y = a4;
  v33.size.width = a5;
  v33.size.height = a6;
  MinY = CGRectGetMinY(v33);
  v34.origin.x = a3;
  v34.origin.y = a4;
  v34.size.width = a5;
  v34.size.height = a6;
  MinX = CGRectGetMinX(v34);
  v35.origin.x = a3;
  v35.origin.y = a4;
  v35.size.width = a5;
  v35.size.height = a6;
  MaxY = CGRectGetMaxY(v35);
  v36.origin.x = a3;
  v36.origin.y = a4;
  v36.size.width = a5;
  v36.size.height = a6;
  v15 = CGRectGetMaxX(v36);
  v37.origin.x = a3;
  v37.origin.y = a4;
  v37.size.width = a5;
  v37.size.height = a6;
  v16 = CGRectGetMaxY(v37);
  v32 = v10;
  v31 = v11;
  v17 = _s11DockKitCore0abC5UtilsC7convert5point4from2toSo7CGPointVAI_AA25CameraOrientationInternalOAKtFZ_0(&v32, &v31, a3, a4);
  v30 = v10;
  v29 = v11;
  v18 = _s11DockKitCore0abC5UtilsC7convert5point4from2toSo7CGPointVAI_AA25CameraOrientationInternalOAKtFZ_0(&v30, &v29, MaxX, MinY);
  v28 = v10;
  v27 = v11;
  v19 = _s11DockKitCore0abC5UtilsC7convert5point4from2toSo7CGPointVAI_AA25CameraOrientationInternalOAKtFZ_0(&v28, &v27, MinX, MaxY);
  v26 = v10;
  v25 = v11;
  v20 = _s11DockKitCore0abC5UtilsC7convert5point4from2toSo7CGPointVAI_AA25CameraOrientationInternalOAKtFZ_0(&v26, &v25, v15, v16);
  if (v18 >= v17)
  {
    v21 = v17;
  }

  else
  {
    v21 = v18;
  }

  if (v19 < v21)
  {
    v21 = v19;
  }

  if (v20 >= v21)
  {
    return v21;
  }

  else
  {
    return v20;
  }
}

id static DockKitCoreUtils.allowedForBackgroundSecureTracking()()
{
  v5 = &type metadata for DockKitFeatures;
  v6 = sub_22460D9E8();
  v4[0] = 5;
  v0 = sub_2246271D8();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  if ((v0 & 1) == 0)
  {
    sub_224628048();
    sub_22460DA3C();
    v2 = sub_224628218();
    sub_224627B48();
    exclaveCapability = 0;
    goto LABEL_5;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v2 = result;
    exclaveCapability = MobileGestalt_get_exclaveCapability();
LABEL_5:

    return exclaveCapability;
  }

  __break(1u);
  return result;
}

double CGRect.area.getter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  Width = CGRectGetWidth(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  return Width * CGRectGetHeight(v10);
}

Swift::Double __swiftcall wrapAngle(_:around:)(Swift::Double _, Swift::Double around)
{
    ;
  }

    ;
  }

  return _;
}

Swift::Double __swiftcall calcIOU(rect1:rect2:)(__C::CGRect rect1, __C::CGRect rect2)
{
  height = rect1.size.height;
  width = rect1.size.width;
  y = rect1.origin.y;
  x = rect1.origin.x;
  v19 = CGRectIntersection(rect1, rect2);
  v5 = v19.origin.x;
  v6 = v19.origin.y;
  v7 = v19.size.width;
  v8 = v19.size.height;
  v9 = CGRectGetWidth(v19);
  v20.origin.x = v5;
  v20.origin.y = v6;
  v20.size.width = v7;
  v20.size.height = v8;
  v18 = v9 * CGRectGetHeight(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v22 = CGRectUnion(v21, rect2);
  v10 = v22.origin.x;
  v11 = v22.origin.y;
  v12 = v22.size.width;
  v13 = v22.size.height;
  v14 = CGRectGetWidth(v22);
  v23.origin.x = v10;
  v23.origin.y = v11;
  v23.size.width = v12;
  v23.size.height = v13;
  return v18 / (v14 * CGRectGetHeight(v23));
}

Swift::Double __swiftcall handleZero(_:eps:)(Swift::Double _, Swift::Double eps)
{
  if (fabs(_) < eps)
  {
    if (_ <= 0.0)
    {
      return -eps;
    }

    else
    {
      return eps;
    }
  }

  return _;
}

void simd_quatf.ypr.getter(float32x4_t a1)
{
  v1 = a1;
  v2 = vmulq_f32(a1, a1).f32[0];
  v3 = a1.f32[1];
  v4 = vmuls_lane_f32(a1.f32[1], *a1.f32, 1);
  v5 = vmuls_lane_f32(a1.f32[2], a1, 2);
  v6 = a1.f32[3];
  v7 = vmuls_lane_f32(a1.f32[3], a1, 3);
  a1.f32[0] = ((vmuls_lane_f32(a1.f32[2], *a1.f32, 1) - vmuls_lane_f32(v1.f32[0], v1, 3)) * -2.0) / (v7 + (v5 + (v2 + v4)));
  if (a1.f32[0] <= -0.99999)
  {
    atan2f(v1.f32[0], a1.f32[2]);
  }

  else if (a1.f32[0] >= 0.99999)
  {
    atan2f(v1.f32[0], a1.f32[2]);
  }

  else
  {
    v8 = a1.f32[2];
    v9 = v1.f32[0];
    v10 = v2;
    asinf(a1.f32[0]);
    atan2f(((v9 * v3) + (v6 * v8)) + ((v9 * v3) + (v6 * v8)), v4 + ((v7 - v5) - v10));
    atan2f(((v8 * v9) + (v6 * v3)) + ((v8 * v9) + (v6 * v3)), ((v7 + v5) - v10) - v4);
  }
}

void simd_quatd.ypr.getter(float64x2_t a1, float64x2_t a2)
{
  v3 = vmulq_f64(a1, a1).f64[0];
  v4 = a1.f64[1];
  v5 = vmuld_lane_f64(a1.f64[1], a1, 1);
  v6 = vmulq_f64(a2, a2).f64[0];
  v7 = a2.f64[1];
  v8 = vmuld_lane_f64(a2.f64[1], a2, 1);
  v9 = (vmuld_lane_f64(a2.f64[0], a1, 1) - vmuld_lane_f64(a1.f64[0], a2, 1)) * -2.0 / (v8 + v3 + v5 + v6);
  if (v9 <= -0.99999)
  {
    atan2(a1.f64[0], a2.f64[0]);
  }

  else if (v9 >= 0.99999)
  {
    atan2(a1.f64[0], a2.f64[0]);
  }

  else
  {
    v11 = a1;
    v13 = v6;
    v14 = v3;
    asin(v9);
    atan2(v11.f64[0] * v4 + v7 * a2.f64[0] + v11.f64[0] * v4 + v7 * a2.f64[0], v5 + v8 - v13 - v14);
    v10 = vmulq_f64(v11, a2).f64[0];
    atan2(v10 + v4 * v7 + v10 + v4 * v7, v8 + v13 - v14 - v5);
  }
}

Swift::Bool __swiftcall allowedForDockKit()()
{
  v0 = MobileGestalt_get_current_device();
  if (!v0)
  {
    goto LABEL_92;
  }

  v1 = v0;
  v2 = MobileGestalt_copy_productType_obj();

  if (!v2)
  {
LABEL_83:
    v58 = 0;
    goto LABEL_84;
  }

  sub_224627CD8();

  v3 = sub_224627D38();
  v5 = sub_22460DA88(6uLL, v3, v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = MEMORY[0x22AA511C0](v5, v7, v9, v11);
  v14 = v13;

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = 4 * v15;
  while (sub_224627E08() != 44 || v17 != 0xE100000000000000)
  {
    v18 = sub_224628688();

    if (v18)
    {
      goto LABEL_13;
    }

    if (v16 == sub_224627D88() >> 14)
    {
      goto LABEL_11;
    }
  }

LABEL_13:
  v19 = sub_224627E28();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = MEMORY[0x22AA511C0](v19, v21, v23, v25);
  v28 = v27;

  v29 = HIBYTE(v28) & 0xF;
  v30 = v26 & 0xFFFFFFFFFFFFLL;
  if (!((v28 & 0x2000000000000000) != 0 ? HIBYTE(v28) & 0xF : v26 & 0xFFFFFFFFFFFFLL))
  {
LABEL_11:

LABEL_82:

    goto LABEL_83;
  }

  if ((v28 & 0x1000000000000000) != 0)
  {
    v62 = 0;
    v33 = sub_22460CF68(v26, v28, 10);
    v51 = v59;
    goto LABEL_75;
  }

  if ((v28 & 0x2000000000000000) != 0)
  {
    v61[0] = v26;
    v61[1] = v28 & 0xFFFFFFFFFFFFFFLL;
    if (v26 == 43)
    {
      if (v29)
      {
        if (--v29)
        {
          v33 = 0;
          v43 = v61 + 1;
          while (1)
          {
            v44 = *v43 - 48;
            if (v44 > 9)
            {
              break;
            }

            v45 = 10 * v33;
            if ((v33 * 10) >> 64 != (10 * v33) >> 63)
            {
              break;
            }

            v33 = v45 + v44;
            if (__OFADD__(v45, v44))
            {
              break;
            }

            ++v43;
            if (!--v29)
            {
              goto LABEL_74;
            }
          }
        }

        goto LABEL_73;
      }

      goto LABEL_91;
    }

    if (v26 != 45)
    {
      if (v29)
      {
        v33 = 0;
        v48 = v61;
        while (1)
        {
          v49 = *v48 - 48;
          if (v49 > 9)
          {
            break;
          }

          v50 = 10 * v33;
          if ((v33 * 10) >> 64 != (10 * v33) >> 63)
          {
            break;
          }

          v33 = v50 + v49;
          if (__OFADD__(v50, v49))
          {
            break;
          }

          ++v48;
          if (!--v29)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

    if (v29)
    {
      if (--v29)
      {
        v33 = 0;
        v37 = v61 + 1;
        while (1)
        {
          v38 = *v37 - 48;
          if (v38 > 9)
          {
            break;
          }

          v39 = 10 * v33;
          if ((v33 * 10) >> 64 != (10 * v33) >> 63)
          {
            break;
          }

          v33 = v39 - v38;
          if (__OFSUB__(v39, v38))
          {
            break;
          }

          ++v37;
          if (!--v29)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

    goto LABEL_89;
  }

  if ((v26 & 0x1000000000000000) != 0)
  {
    v0 = ((v28 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v0 = sub_2246283B8();
  }

  v32 = *v0;
  if (v32 == 43)
  {
    if (v30 < 1)
    {
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
      return v0;
    }

    v29 = v30 - 1;
    if (v30 != 1)
    {
      v33 = 0;
      if (v0)
      {
        v40 = v0 + 1;
        while (1)
        {
          v41 = *v40 - 48;
          if (v41 > 9)
          {
            goto LABEL_73;
          }

          v42 = 10 * v33;
          if ((v33 * 10) >> 64 != (10 * v33) >> 63)
          {
            goto LABEL_73;
          }

          v33 = v42 + v41;
          if (__OFADD__(v42, v41))
          {
            goto LABEL_73;
          }

          ++v40;
          if (!--v29)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_65;
    }

LABEL_73:
    v33 = 0;
    LOBYTE(v29) = 1;
    goto LABEL_74;
  }

  if (v32 != 45)
  {
    if (v30)
    {
      v33 = 0;
      if (v0)
      {
        while (1)
        {
          v46 = *v0 - 48;
          if (v46 > 9)
          {
            goto LABEL_73;
          }

          v47 = 10 * v33;
          if ((v33 * 10) >> 64 != (10 * v33) >> 63)
          {
            goto LABEL_73;
          }

          v33 = v47 + v46;
          if (__OFADD__(v47, v46))
          {
            goto LABEL_73;
          }

          ++v0;
          if (!--v30)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_65;
    }

    goto LABEL_73;
  }

  if (v30 < 1)
  {
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v29 = v30 - 1;
  if (v30 == 1)
  {
    goto LABEL_73;
  }

  v33 = 0;
  if (v0)
  {
    v34 = v0 + 1;
    while (1)
    {
      v35 = *v34 - 48;
      if (v35 > 9)
      {
        goto LABEL_73;
      }

      v36 = 10 * v33;
      if ((v33 * 10) >> 64 != (10 * v33) >> 63)
      {
        goto LABEL_73;
      }

      v33 = v36 - v35;
      if (__OFSUB__(v36, v35))
      {
        goto LABEL_73;
      }

      ++v34;
      if (!--v29)
      {
        goto LABEL_74;
      }
    }
  }

LABEL_65:
  LOBYTE(v29) = 0;
LABEL_74:
  v62 = v29;
  v51 = v29;
LABEL_75:

  if ((v51 & 1) != 0 || v33 < 13)
  {
    goto LABEL_82;
  }

  v52 = sub_224627D38();
  v54 = v53;
  if (v52 == sub_224627D38() && v54 == v55)
  {

    goto LABEL_82;
  }

  v57 = sub_224628688();

  v58 = v57 ^ 1;
LABEL_84:
  LOBYTE(v0) = v58 & 1;
  return v0;
}

void *sub_22460CEF4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9370);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_22460CF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_224627E18();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_22460D4F4();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2246283B8();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_22460D4F4()
{
  v0 = sub_224627E28();
  v4 = sub_22460D574(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_22460D574(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_224628238();
    if (!v9 || (v10 = v9, v11 = sub_22460CEF4(v9, 0), v12 = sub_22460D6CC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_224627D68();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_224627D68();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_2246283B8();
LABEL_4:

  return sub_224627D68();
}

unint64_t sub_22460D6CC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_22460D8EC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_224627DE8();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2246283B8();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_22460D8EC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_224627DC8();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_22460D8EC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_224627DF8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x22AA51240](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

CGFloat _s11DockKitCore0abC5UtilsC7convert5point4from2toSo7CGPointVAI_AA25CameraOrientationInternalOAKtFZ_0(char *a1, char *a2, double a3, double a4)
{
  CGAffineTransformMakeRotation(&v7, dbl_2246332E8[*a2] - dbl_2246332E8[*a1]);
  v8.x = a3 + -0.5;
  v8.y = a4 + -0.5;
  return CGPointApplyAffineTransform(v8, &v7).x + 0.5;
}

unint64_t sub_22460D9E8()
{
  result = qword_27D0CA118;
  if (!qword_27D0CA118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA118);
  }

  return result;
}

unint64_t sub_22460DA3C()
{
  result = qword_27D0C9358;
  if (!qword_27D0C9358)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D0C9358);
  }

  return result;
}

unint64_t sub_22460DA88(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_224627D98();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_224627E28();
}

id Sensor.init(id:type:name:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  *&v4[OBJC_IVAR____TtC11DockKitCore9Component_id] = a1;
  v4[OBJC_IVAR____TtC11DockKitCore9Component_type] = v5;
  v6 = &v4[OBJC_IVAR____TtC11DockKitCore9Component_name];
  *v6 = a3;
  v6[1] = a4;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for Component();
  return objc_msgSendSuper2(&v8, sel_init);
}

id Sensor.init(coder:)(void *a1)
{
  v2 = sub_2245B47B4();

  return v2;
}

id SensorData.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SensorData();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

uint64_t SensorOccurrence.description.getter(uint64_t a1)
{
  if (!a1)
  {
    return 1701015119;
  }

  if (a1 == 1)
  {
    return 0x6F756E69746E6F43;
  }

  result = sub_2246286B8();
  __break(1u);
  return result;
}

unint64_t SensorOccurrence.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_22460DCE8()
{
  if (!*v0)
  {
    return 1701015119;
  }

  if (*v0 == 1)
  {
    return 0x6F756E69746E6F43;
  }

  result = sub_2246286B8();
  __break(1u);
  return result;
}

id Sensor.__allocating_init(id:type:name:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC11DockKitCore9Component_id] = a1;
  v9[OBJC_IVAR____TtC11DockKitCore9Component_type] = *a2;
  v10 = &v9[OBJC_IVAR____TtC11DockKitCore9Component_name];
  *v10 = a3;
  v10[1] = a4;
  v12.receiver = v9;
  v12.super_class = type metadata accessor for Component();
  return objc_msgSendSuper2(&v12, sel_init);
}

id Sensor.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_2245B47B4();

  return v4;
}

id SensorData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SensorData.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SensorData();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SensorData.__allocating_init(coder:)(void *a1)
{
  v5.receiver = objc_allocWithZone(v1);
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

uint64_t SensorController.__allocating_init(accessory:id:name:sensors:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_22460F760(a1, a2, a3, a4, a5);

  return v12;
}

uint64_t SensorController.init(accessory:id:name:sensors:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = sub_22460F760(a1, a2, a3, a4, a5);

  return v6;
}

id SensorController.init(coder:)(void *a1)
{
  sub_224627B68();
  swift_unknownObjectWeakInit();
  v2 = sub_2245B4A54();

  return v2;
}

uint64_t sub_22460E2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  return MEMORY[0x2822009F8](sub_22460E2CC, 0, 0);
}

uint64_t sub_22460E2CC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = v0[10], Strong, v2))
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    v0[14] = v3;
    if (v3)
    {
      v3 = sub_22460E3F0;
      v4 = 0;
      v5 = 0;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  else
  {
    sub_22452ECAC();
    swift_allocError();
    *v6 = 0xD000000000000026;
    *(v6 + 8) = 0x800000022463B1D0;
    *(v6 + 16) = 7;
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_22460E3F0()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v0[2] = v0;
  v0[3] = sub_22460E4B4;
  v6 = swift_continuation_init();
  sub_22457A0A4(v2, v5, v4, v3, v1, v6);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22460E4B4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 120) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_22460E5D0;
  }

  else
  {
    v2 = sub_22455ED28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22460E5D0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22460E7D8(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a2;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  if (a1)
  {
    type metadata accessor for Sensor();
    v10 = sub_224627ED8();
  }

  else
  {
    v10 = 0;
  }

  v5[5] = v10;
  swift_unknownObjectRetain();
  a5;
  v11 = swift_task_alloc();
  v5[6] = v11;
  *v11 = v5;
  v11[1] = sub_2245C6D14;

  return sub_22460E2A8(v10, a2, a3);
}

uint64_t sub_22460E8DC(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2822009F8](sub_22460E8FC, 0, 0);
}

uint64_t sub_22460E8FC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = v0[10], Strong, v2))
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    v0[12] = v3;
    if (v3)
    {
      v3 = sub_22460EA20;
      v4 = 0;
      v5 = 0;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  else
  {
    sub_22452ECAC();
    swift_allocError();
    *v6 = 0xD000000000000022;
    *(v6 + 8) = 0x800000022463B200;
    *(v6 + 16) = 7;
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_22460EA20()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[3] = sub_22460EAD0;
  v4 = swift_continuation_init();
  sub_22457AD18(v2, v3, v1, v4);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22460EAD0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 104) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_22460EC50;
  }

  else
  {
    v2 = sub_22460EBEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22460EBEC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22460EC50()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22460EE3C(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    type metadata accessor for Sensor();
    v6 = sub_224627ED8();
  }

  else
  {
    v6 = 0;
  }

  v3[4] = v6;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_224541668;

  return sub_22460E8DC(v6);
}

uint64_t sub_22460EF1C(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_22460EF40, 0, 0);
}

uint64_t sub_22460EF40()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = v0[10], Strong, v2))
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    v0[13] = v3;
    if (v3)
    {
      v3 = sub_22460F064;
      v4 = 0;
      v5 = 0;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  else
  {
    sub_22452ECAC();
    swift_allocError();
    *v6 = 0xD000000000000022;
    *(v6 + 8) = 0x800000022463B230;
    *(v6 + 16) = 7;
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_22460F064()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v0[2] = v0;
  v0[3] = sub_22460F120;
  v5 = swift_continuation_init();
  sub_22457B83C(v2, v4, v3, v1, v5);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22460F120()
{
  v1 = *(*v0 + 48);
  *(*v0 + 112) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_22460F2A0;
  }

  else
  {
    v2 = sub_22460F23C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22460F23C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22460F2A0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22460F494(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  if (a1)
  {
    type metadata accessor for Sensor();
    a1 = sub_224627ED8();
  }

  v4[4] = a1;
  if (a2)
  {
    type metadata accessor for SensorData();
    a2 = sub_224627ED8();
  }

  v4[5] = a2;
  a4;
  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_2245C6628;

  return sub_22460EF1C(a1, a2);
}

uint64_t sub_22460F5F0()
{
  v1 = OBJC_IVAR____TtC11DockKitCore16SensorController_logger;
  v2 = sub_224627B78();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_22460F674(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_22460F760(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_224627B68();
  swift_unknownObjectWeakInit();
  v11 = &OBJC_IVAR____TtC11DockKitCore6System_components;
  *&v5[OBJC_IVAR____TtC11DockKitCore6System_components] = MEMORY[0x277D84F98];
  *&v5[OBJC_IVAR____TtC11DockKitCore6System_id] = a2;
  *&v5[OBJC_IVAR____TtC11DockKitCore6System_type] = 1;
  v12 = &v5[OBJC_IVAR____TtC11DockKitCore6System_name];
  *v12 = a3;
  *(v12 + 1) = a4;
  v43.receiver = v5;
  v43.super_class = type metadata accessor for System();
  v13 = a1;
  v14 = objc_msgSendSuper2(&v43, sel_init);
  swift_unknownObjectWeakAssign();

  if (a5 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224628478())
  {
    v16 = 0;
    v42 = *v11;
    v39 = a5;
    v40 = a5 & 0xC000000000000001;
    v38 = a5 & 0xFFFFFFFFFFFFFF8;
    while (v40)
    {
      v20 = MEMORY[0x22AA517F0](v16, a5);
      v21 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_22;
      }

LABEL_12:
      v41 = v21;
      a5 = *&v20[OBJC_IVAR____TtC11DockKitCore9Component_name];
      v22 = *&v20[OBJC_IVAR____TtC11DockKitCore9Component_name + 8];
      v23 = v20;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = *(v14 + v42);
      v11 = v14;
      *(v14 + v42) = 0x8000000000000000;
      v26 = sub_2245096C8(a5, v22);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v30 = __OFADD__(v28, v29);
      v31 = v28 + v29;
      if (v30)
      {
        goto LABEL_23;
      }

      v14 = v27;
      if (v25[3] < v31)
      {
        sub_22458DA04(v31, isUniquelyReferenced_nonNull_native);
        v26 = sub_2245096C8(a5, v22);
        if ((v14 & 1) != (v32 & 1))
        {
          result = sub_2246286D8();
          __break(1u);
          return result;
        }

LABEL_17:
        if (v14)
        {
          goto LABEL_4;
        }

        goto LABEL_18;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_17;
      }

      v36 = v26;
      sub_22458F8A8();
      v26 = v36;
      if (v14)
      {
LABEL_4:
        v17 = v26;

        v18 = v25[7];
        v19 = *(v18 + 8 * v17);
        *(v18 + 8 * v17) = v23;

        goto LABEL_5;
      }

LABEL_18:
      v25[(v26 >> 6) + 8] |= 1 << v26;
      v33 = (v25[6] + 16 * v26);
      *v33 = a5;
      v33[1] = v22;
      *(v25[7] + 8 * v26) = v23;

      v34 = v25[2];
      v30 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v30)
      {
        goto LABEL_24;
      }

      v25[2] = v35;
LABEL_5:
      v14 = v11;
      *(v11 + v42) = v25;

      ++v16;
      a5 = v39;
      if (v41 == i)
      {
        return v14;
      }
    }

    if (v16 >= *(v38 + 16))
    {
      goto LABEL_25;
    }

    v20 = *(a5 + 8 * v16 + 32);
    v21 = v16 + 1;
    if (!__OFADD__(v16, 1))
    {
      goto LABEL_12;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  return v14;
}

uint64_t type metadata accessor for SensorController()
{
  result = qword_27D0CA138;
  if (!qword_27D0CA138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22460FB14()
{
  result = qword_27D0CA128;
  if (!qword_27D0CA128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA128);
  }

  return result;
}

uint64_t sub_22460FC20()
{
  result = sub_224627B78();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of SensorController.getSensorData(sensors:delegate:occurrence:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x108);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22450D034;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of SensorController.stopSensorData(sensors:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x110);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22450D030;

  return v7(a1);
}

uint64_t dispatch thunk of SensorController.setSensorState(sensors:states:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x118);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22450D030;

  return v9(a1, a2);
}

uint64_t sub_2246100A4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22450D030;

  return sub_22460F494(v2, v3, v5, v4);
}

uint64_t sub_224610164()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22450D030;

  return sub_22460EE3C(v2, v3, v4);
}

uint64_t sub_224610218()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_22450D034;

  return sub_22460E7D8(v2, v3, v4, v5, v6);
}

uint64_t sub_224610308(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_224627B78();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = (v3 + OBJC_IVAR___NotificationAgent_callback);
  v12 = *(v3 + OBJC_IVAR___NotificationAgent_callback);
  *v11 = a1;
  v11[1] = a2;

  sub_224512308(v12);
  v13 = OBJC_IVAR___NotificationAgent_manager;
  v14 = *(v3 + OBJC_IVAR___NotificationAgent_manager);
  if (v14 || (v15 = [objc_allocWithZone(type metadata accessor for DockCoreManager()) init], v16 = *(v3 + v13), *(v3 + v13) = v15, v16, (v14 = *(v3 + v13)) != 0))
  {
    v17 = v14;
    DockCoreManager.getStateEvents(delegate:syncWithDaemon:)(v3, &protocol witness table for NotificationAgent, 1);
  }

  (*(v7 + 16))(v10, v3 + OBJC_IVAR___NotificationAgent_logger, v6);
  v18 = sub_224627B58();
  v19 = sub_224628058();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_224507000, v18, v19, "registered for state events", v20, 2u);
    MEMORY[0x22AA526D0](v20, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  return sub_2246106D4() & 1;
}

uint64_t sub_2246106D4()
{
  v1 = v0;
  v2 = OBJC_IVAR___NotificationAgent_stateLock;
  v3 = *(v0 + OBJC_IVAR___NotificationAgent_stateLock);

  os_unfair_lock_lock(v3 + 4);

  v4 = type metadata accessor for DeviceNotification();
  v5 = objc_allocWithZone(v4);
  v6 = DeviceNotification.init(name:)(0xD000000000000022, 0x8000000224637730);
  v7 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification_allocatedLock;
  v8 = *&v6[OBJC_IVAR____TtC11DockKitCore18DeviceNotification_allocatedLock];

  os_unfair_lock_lock(v8 + 4);

  v9 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification__state;
  notify_get_state(*&v6[OBJC_IVAR____TtC11DockKitCore18DeviceNotification_token], &v6[OBJC_IVAR____TtC11DockKitCore18DeviceNotification__state]);
  v10 = *&v6[v9];
  v11 = *&v6[v7];

  os_unfair_lock_unlock(v11 + 4);

  v12 = objc_allocWithZone(v4);
  v13 = DeviceNotification.init(name:)(0xD000000000000027, 0x8000000224639700);
  v14 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification_allocatedLock;
  v15 = *&v13[OBJC_IVAR____TtC11DockKitCore18DeviceNotification_allocatedLock];

  os_unfair_lock_lock(v15 + 4);

  v16 = OBJC_IVAR____TtC11DockKitCore18DeviceNotification__state;
  notify_get_state(*&v13[OBJC_IVAR____TtC11DockKitCore18DeviceNotification_token], &v13[OBJC_IVAR____TtC11DockKitCore18DeviceNotification__state]);
  v17 = *&v13[v16];
  v18 = *&v13[v14];

  os_unfair_lock_unlock(v18 + 4);

  if (v10)
  {
    v19 = v17 == 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = !v19;
  *(v1 + OBJC_IVAR___NotificationAgent_tracking) = v20;
  v21 = *(v1 + v2);

  os_unfair_lock_unlock(v21 + 4);

  return v20;
}

uint64_t sub_2246108CC()
{
  v1 = *(v0 + OBJC_IVAR___NotificationAgent_manager);
  if (v1)
  {
    v2 = *&v1[OBJC_IVAR____TtC11DockKitCore15DockCoreManager_connectedNotification];
    if (v2)
    {
      *&v1[OBJC_IVAR____TtC11DockKitCore15DockCoreManager_connectedNotification] = 0;
      v3 = v1;
    }

    else
    {
      v4 = v1;
    }

    v5 = *&v1[OBJC_IVAR____TtC11DockKitCore15DockCoreManager_trackingButtonNotification];
    if (v5)
    {
      *&v1[OBJC_IVAR____TtC11DockKitCore15DockCoreManager_trackingButtonNotification] = 0;

      v1 = v5;
    }
  }

  v6 = (v0 + OBJC_IVAR___NotificationAgent_callback);
  v7 = *(v0 + OBJC_IVAR___NotificationAgent_callback);
  *v6 = 0;
  v6[1] = 0;

  return sub_224512308(v7);
}

id NotificationAgent.__deallocating_deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR___NotificationAgent_manager;
  v3 = *&v0[OBJC_IVAR___NotificationAgent_manager];
  if (v3)
  {
    v4 = v3;
    DockCoreManager.disconnect()();

    v3 = *&v1[v2];
  }

  *&v1[v2] = 0;

  v5 = &v1[OBJC_IVAR___NotificationAgent_callback];
  v6 = *&v1[OBJC_IVAR___NotificationAgent_callback];
  *v5 = 0;
  *(v5 + 1) = 0;
  sub_224512308(v6);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for NotificationAgent();
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

uint64_t sub_224610B88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v74 = a4;
  v66 = a3;
  v8 = sub_224627B78();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v73 = &v63[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v13 = &v63[-v12];
  v72 = OBJC_IVAR___NotificationAgent_stateLock;
  v14 = *&v5[OBJC_IVAR___NotificationAgent_stateLock];

  os_unfair_lock_lock(v14 + 4);
  v15 = v8;

  v16 = *(v9 + 16);
  v68 = OBJC_IVAR___NotificationAgent_logger;
  v69 = v16;
  v16(v13, &v5[OBJC_IVAR___NotificationAgent_logger], v8);
  v17 = a1;
  v18 = v5;
  v19 = sub_224627B58();
  v20 = sub_224628058();

  v21 = os_log_type_enabled(v19, v20);
  v71 = v9;
  if (v21)
  {
    v64 = v20;
    v70 = v18;
    v65 = v5;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v76 = v23;
    *v22 = 136316162;
    *(v22 + 4) = sub_224509F28(*&v17[OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_name], *&v17[OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_name + 8], &v76);
    *(v22 + 12) = 2080;
    v67 = v15;
    if (a2)
    {
      if (a2 == 2)
      {
        v24 = 0xE700000000000000;
        v25 = 0x6E776F6E6B6E55;
      }

      else
      {
        if (a2 != 1)
        {

          v75 = a2;
          goto LABEL_39;
        }

        v24 = 0xEC00000064657463;
        v25 = 0x656E6E6F43746F4ELL;
      }
    }

    else
    {
      v24 = 0xE900000000000064;
      v25 = 0x657463656E6E6F43;
    }

    v29 = sub_224509F28(v25, v24, &v76);

    *(v22 + 14) = v29;
    *(v22 + 22) = 2080;
    v30 = v66;
    if (v66)
    {
      v27 = v70;
      v31 = &unk_280C51000;
      if (v66 == 2)
      {
        v32 = v23;
        v33 = 0xE700000000000000;
        v34 = 0x6E776F6E6B6E55;
      }

      else
      {
        if (v66 != 1)
        {

          v75 = v30;
          goto LABEL_39;
        }

        v32 = v23;
        v33 = 0xE800000000000000;
        v34 = 0x64656B636F646E55;
      }
    }

    else
    {
      v32 = v23;
      v33 = 0xE600000000000000;
      v34 = 0x64656B636F44;
      v27 = v70;
      v31 = &unk_280C51000;
    }

    v35 = sub_224509F28(v34, v33, &v76);

    *(v22 + 24) = v35;
    *(v22 + 32) = 2080;

    switch(v74)
    {
      case 2:
        v36 = 0xE700000000000000;
        v37 = 0x6E776F6E6B6E55;
        goto LABEL_21;
      case 1:
        v36 = 0xE200000000000000;
        v37 = 28239;
LABEL_21:
        v38 = sub_224509F28(v37, v36, &v76);

        *(v22 + 34) = v38;
        *(v22 + 42) = 2080;
        LOBYTE(v75) = v27[v31[217]];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA150);
        v39 = sub_224627D28();
        v41 = sub_224509F28(v39, v40, &v76);

        *(v22 + 44) = v41;
        _os_log_impl(&dword_224507000, v19, v64, "state event: %s c=%s d=%s t=%s, tracking=%s", v22, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x22AA526D0](v32, -1, -1);
        MEMORY[0x22AA526D0](v22, -1, -1);

        v28 = v31;
        v26 = *(v71 + 8);
        v15 = v67;
        v26(v13, v67);
        v5 = v65;
        goto LABEL_22;
      case 0:
        v36 = 0xE300000000000000;
        v37 = 6710863;
        goto LABEL_21;
    }

    v75 = v74;
LABEL_39:
    result = sub_2246286B8();
    __break(1u);
    return result;
  }

  v26 = *(v9 + 8);
  v26(v13, v15);
  v27 = v18;
  v28 = 0x280C51000;
LABEL_22:
  v43 = a2 == 0;
  v42 = v73;
  v43 = v43 && v74 == 1;
  v44 = v43;
  v45 = *(v28 + 1736);
  v46 = v27[v45];
  if (v46 == 2 || ((v44 ^ v46) & 1) != 0)
  {
    v69(v73, &v5[v68], v15);
    v47 = v27;
    v48 = sub_224627B58();
    v49 = sub_224628058();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v70 = v27;
      v51 = v50;
      v74 = swift_slowAlloc();
      v76 = v74;
      *v51 = 67109378;
      *(v51 + 4) = v44;
      *(v51 + 8) = 2080;
      LOBYTE(v75) = v70[v45];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA150);
      v52 = sub_224627D28();
      v67 = v15;
      v54 = v47;
      v55 = sub_224509F28(v52, v53, &v76);

      *(v51 + 10) = v55;
      v47 = v54;
      _os_log_impl(&dword_224507000, v48, v49, "newTracking %{BOOL}d, tracking %s: different! notifying", v51, 0x12u);
      v56 = v74;
      __swift_destroy_boxed_opaque_existential_1Tm(v74);
      MEMORY[0x22AA526D0](v56, -1, -1);
      v57 = v51;
      v27 = v70;
      MEMORY[0x22AA526D0](v57, -1, -1);

      v58 = v73;
      v59 = v67;
    }

    else
    {

      v58 = v42;
      v59 = v15;
    }

    v26(v58, v59);
    v27[v45] = v44;
    v60 = *&v47[OBJC_IVAR___NotificationAgent_callback];
    if (v60)
    {

      v60(v44);
      sub_224512308(v60);
    }
  }

  v61 = *&v5[v72];

  os_unfair_lock_unlock(v61 + 4);
}

id NotificationAgent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NotificationAgent.init()()
{
  *&v0[OBJC_IVAR___NotificationAgent_manager] = 0;
  sub_224627B68();
  v1 = &v0[OBJC_IVAR___NotificationAgent_callback];
  *v1 = 0;
  v1[1] = 0;
  v0[OBJC_IVAR___NotificationAgent_tracking] = 2;
  v2 = OBJC_IVAR___NotificationAgent_stateLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9670);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *&v0[v2] = v3;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for NotificationAgent();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t type metadata accessor for NotificationAgent()
{
  result = qword_280C516B0;
  if (!qword_280C516B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224611460()
{
  result = sub_224627B78();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_224611654(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v3(a2);
}

id DockKitCorePairingService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DockKitCorePairingService.init()()
{
  v1 = sub_2246280A8();
  v10 = *(v1 - 8);
  v11 = v1;
  MEMORY[0x28223BE20](v1);
  v9 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_224628078();
  MEMORY[0x28223BE20](v3);
  v4 = sub_224627BC8();
  MEMORY[0x28223BE20](v4 - 8);
  sub_224627B68();
  *&v0[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnection] = 0;
  v5 = OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnectionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9670);
  v6 = swift_allocObject();
  *&v0[v5] = v6;
  *(v6 + 16) = 0;
  *&v0[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnectionError] = 0;
  *&v0[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService_XPCTIMEOUT] = 0x4008000000000000;
  swift_unknownObjectWeakInit();
  sub_22450950C(0, &unk_280C518F0);
  sub_224627BA8();
  v13 = MEMORY[0x277D84F90];
  sub_22450962C(&unk_280C51900, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C99E0);
  sub_224509674(&qword_280C51920, &unk_27D0C99E0);
  sub_224628298();
  (*(v10 + 104))(v9, *MEMORY[0x277D85260], v11);
  *&v0[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__checkQueue] = sub_2246280D8();
  v7 = type metadata accessor for DockKitCorePairingService();
  v12.receiver = v0;
  v12.super_class = v7;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t type metadata accessor for DockKitCorePairingService()
{
  result = qword_27D0CA158;
  if (!qword_27D0CA158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id DockKitCorePairingService.__deallocating_deinit()
{
  swift_unknownObjectWeakAssign();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DockKitCorePairingService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_224611BFC()
{
  v1 = sub_224627B78();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService_logger, v1);
  v5 = v0;
  v6 = sub_224627B58();
  v7 = sub_224628058();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = *&v5[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnection];
    *(v8 + 4) = v10;
    *v9 = v10;
    v11 = v10;
    _os_log_impl(&dword_224507000, v6, v7, "Asked to disconnect, invalidating any XPC connections %@", v8, 0xCu);
    sub_2245098A0(v9, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v9, -1, -1);
    MEMORY[0x22AA526D0](v8, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  v12 = OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnectionLock;
  v13 = *&v5[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnectionLock];

  os_unfair_lock_lock(v13 + 4);

  v14 = OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnection;
  [*&v5[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnection] invalidate];
  v15 = *&v5[v14];
  if (v15)
  {
    [v15 setExportedObject_];
    v16 = *&v5[v14];
  }

  else
  {
    v16 = 0;
  }

  *&v5[v14] = 0;

  v17 = *&v5[v12];

  os_unfair_lock_unlock(v17 + 4);
}

uint64_t sub_224611E48()
{
  v1 = sub_224627B78();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnectionLock;
  v6 = *(v0 + OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnectionLock);

  os_unfair_lock_lock(v6 + 4);

  v7 = OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnection;
  v8 = *(v0 + OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnection);
  if (v8)
  {
    goto LABEL_9;
  }

  v9 = v0;
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService_logger, v1);
  v10 = sub_224627B58();
  v11 = sub_224628058();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_224507000, v10, v11, "dockkit: creating XPC connection", v12, 2u);
    MEMORY[0x22AA526D0](v12, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  v13 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v14 = sub_224627CB8();
  v15 = [v13 initWithMachServiceName:v14 options:4096];

  v16 = objc_opt_self();
  v17 = [v16 interfaceWithProtocol_];
  [v15 setRemoteObjectInterface_];

  v18 = [v16 interfaceWithProtocol_];
  [v15 setExportedInterface_];

  sub_22450950C(0, &qword_27D0C96D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C96E0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2246335A0;
  v20 = sub_22450950C(0, &qword_27D0C9FB0);
  *(v19 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9720);
  *(v19 + 32) = v20;
  v21 = sub_22450950C(0, &unk_27D0C89A0);
  *(v19 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9730);
  *(v19 + 64) = v21;
  v22 = sub_22450950C(0, &unk_27D0C8D40);
  *(v19 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9738);
  *(v19 + 96) = v22;
  v23 = sub_22450950C(0, &qword_27D0C9740);
  *(v19 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9748);
  *(v19 + 128) = v23;
  v24 = sub_22450950C(0, &qword_27D0C9698);
  *(v19 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9750);
  *(v19 + 160) = v24;
  v25 = sub_22450950C(0, &qword_27D0C9E90);
  *(v19 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9760);
  *(v19 + 192) = v25;
  v26 = sub_22450950C(0, &qword_27D0C9768);
  *(v19 + 248) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9770);
  *(v19 + 224) = v26;
  v27 = sub_22450950C(0, &qword_27D0C9778);
  *(v19 + 280) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9780);
  *(v19 + 256) = v27;
  v28 = MEMORY[0x22AA515F0](v19);
  aBlock = 0;
  result = sub_224627FE8();
  if (aBlock)
  {

    v30 = [v15 remoteObjectInterface];
    v0 = v9;
    if (v30)
    {
      v31 = v30;
      v32 = sub_224627FD8();

      [v31 setClasses:v32 forSelector:sel_pairAccessoryWithInfo_completion_ argumentIndex:0 ofReply:1];
    }

    else
    {
    }

    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    Strong = swift_unknownObjectWeakLoadStrong();
    [v15 setExportedObject_];

    v45 = sub_2246177CC;
    v46 = v33;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_224580D44;
    v44 = &block_descriptor_7;
    v35 = _Block_copy(&aBlock);

    [v15 setInterruptionHandler_];
    _Block_release(v35);
    v45 = sub_2246177DC;
    v46 = v33;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_224580D44;
    v44 = &block_descriptor_39;
    v36 = _Block_copy(&aBlock);

    [v15 setInvalidationHandler_];
    _Block_release(v36);
    v37 = *(v9 + v7);
    *(v9 + v7) = v15;
    v38 = v15;

    [v38 resume];

    v8 = *(v9 + v7);
    if (!v8)
    {
      v39 = *(v9 + v5);
      goto LABEL_10;
    }

LABEL_9:
    v39 = *(v0 + v5);
    v40 = v8;
LABEL_10:

    os_unfair_lock_unlock(v39 + 4);

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_224612558()
{
  v0 = sub_224627B78();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = *(v5 + OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnection);

      [v7 invalidate];
    }

    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = *(v8 + OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnection);
      v10 = v8;
      v11 = v9;

      if (v9)
      {
        [v11 setExportedObject_];
      }
    }

    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = *&v12[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnection];
      *&v12[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnection] = 0;
    }

    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v15 = *(v14 + OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnectionLock);
      v16 = v14;

      os_unfair_lock_lock(v15 + 4);
    }

    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      sub_22452ECAC();
      v19 = swift_allocError();
      *v20 = xmmword_22462FF80;
      *(v20 + 16) = 1;
      v21 = *&v18[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnectionError];
      *&v18[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnectionError] = v19;
    }

    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = *(v22 + OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnectionLock);
      v24 = v22;

      os_unfair_lock_unlock(v23 + 4);
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v26 = result;
    (*(v1 + 16))(v3, result + OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService_logger, v0);

    v27 = sub_224627B58();
    v28 = sub_224628058();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_224507000, v27, v28, "dockkit: Pairing Connection interrupted", v29, 2u);
      MEMORY[0x22AA526D0](v29, -1, -1);
    }

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_224612840()
{
  v0 = sub_224627B78();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnectionLock);
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
      v10 = *(v8 + OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnection);

      [v10 invalidate];
    }

    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = *&v11[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnection];
      *&v11[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnection] = 0;
    }

    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      sub_22452ECAC();
      v15 = swift_allocError();
      *v16 = xmmword_22462FF90;
      *(v16 + 16) = 2;
      v17 = *&v14[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnectionError];
      *&v14[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnectionError] = v15;
    }
  }

  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    v19 = v18;
    (*(v1 + 16))(v3, v18 + OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService_logger, v0);

    v20 = sub_224627B58();
    v21 = sub_224628058();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_224507000, v20, v21, "dockkit: Pairing Connection invalidated", v22, 2u);
      MEMORY[0x22AA526D0](v22, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v24 = *(result + OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnectionLock);
    v25 = result;

    os_unfair_lock_unlock(v24 + 4);
  }

  return result;
}

void sub_224612AE8()
{
  v1 = v0;
  v2 = sub_224627B78();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService_logger, v2);
  v6 = sub_224627B58();
  v7 = sub_224628048();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_224507000, v6, v7, "No reply or XPC failed to open in time, closing XPC", v8, 2u);
    MEMORY[0x22AA526D0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnection;
  [*(v1 + OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnection) invalidate];
  v10 = *(v1 + v9);
  *(v1 + v9) = 0;
}

uint64_t sub_224612C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  return MEMORY[0x2822009F8](sub_224612C90, 0, 0);
}

uint64_t sub_224612C90()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v0[2] = v0;
  v0[3] = sub_22457723C;
  v5 = swift_continuation_init();
  sub_224612D4C(v4, v3, v2, v1, v5);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_224612D4C(uint64_t a1, uint64_t a2, void *a3, char *a4, uint64_t a5)
{
  v72 = a3;
  v71[2] = a2;
  v71[1] = a1;
  v80 = sub_224627B78();
  v83 = *(v80 - 8);
  v7 = MEMORY[0x28223BE20](v80);
  v82 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v75 = v71 - v10;
  MEMORY[0x28223BE20](v9);
  v73 = v71 - v11;
  v12 = sub_224627BE8();
  v78 = *(v12 - 8);
  v79 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v71 - v16;
  v18 = sub_224627B98();
  MEMORY[0x28223BE20](v18);
  v19 = swift_allocObject();
  v77 = a5;
  *(v19 + 16) = a5;
  v20 = OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnectionLock;
  v21 = *&a4[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnectionLock];

  os_unfair_lock_lock(v21 + 4);

  v22 = *&a4[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnectionError];
  *&a4[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnectionError] = 0;

  v23 = *&a4[v20];

  os_unfair_lock_unlock(v23 + 4);

  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = sub_224580004;
  v24[4] = v19;
  v89 = sub_224617934;
  v90 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v86 = 1107296256;
  v74 = &v87;
  v87 = sub_224580D44;
  v88 = &block_descriptor_158_0;
  _Block_copy(&aBlock);
  v84 = MEMORY[0x277D84F90];
  sub_22450962C(&qword_27D0C9EF0, MEMORY[0x277D85198]);
  v25 = a4;
  v81 = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9A40);
  v26 = v83;
  sub_224509674(&qword_27D0C9F00, &unk_27D0C9A40);
  sub_224628298();
  sub_224627C18();
  swift_allocObject();
  v27 = sub_224627BF8();

  v28 = *&v25[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__checkQueue];
  sub_224627BD8();
  sub_224627C38();
  v29 = v79;
  v30 = *(v78 + 8);
  v30(v15, v79);
  sub_224628098();

  v30(v17, v29);
  v31 = v25;
  v32 = sub_224611E48();
  v33 = &unk_27D0D6000;
  v76 = v25;
  if (v32)
  {
    v34 = v32;
    v35 = v80;
    v36 = swift_allocObject();
    v36[2] = v25;
    v36[3] = sub_224580004;
    v37 = v81;
    v36[4] = v81;
    v89 = sub_224617954;
    v90 = v36;
    aBlock = MEMORY[0x277D85DD0];
    v86 = 1107296256;
    v87 = sub_2245D42E8;
    v88 = &block_descriptor_164;
    v38 = _Block_copy(&aBlock);
    v39 = v31;

    v40 = [v34 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v38);
    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA168);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v79 = v27;
      v46 = &unk_27D0D6000;
      v57 = v83;
      v48 = *(v83 + 16);
      v48(v75, &v39[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService_logger], v35);
      v58 = sub_224627B58();
      v59 = sub_224628048();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_224507000, v58, v59, "failed asynchronous server XPC connection", v60, 2u);
        MEMORY[0x22AA526D0](v60, -1, -1);
      }

      v54 = *(v57 + 8);
      v61 = v35;
      v54(v75, v35);
      sub_22452ECAC();
      v55 = swift_allocError();
      *v62 = xmmword_22462FFB0;
      *(v62 + 16) = 4;
      swift_willThrow();

      v50 = v61;
      goto LABEL_11;
    }

    v41 = v84;
    swift_unknownObjectRetain();
    v83 = sub_224627CB8();
    v26 = swift_allocObject();
    v33 = v72;
    v26[2] = v39;
    v26[3] = v33;
    v26[4] = v27;
    v26[5] = sub_224580004;
    v26[6] = v37;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_2246179C4;
    *(v42 + 24) = v26;
    v89 = sub_224617AA8;
    v90 = v42;
    aBlock = MEMORY[0x277D85DD0];
    v86 = 1107296256;
    v87 = sub_224611654;
    v88 = &block_descriptor_174;
    v43 = _Block_copy(&aBlock);
    v44 = v39;

    swift_unknownObjectRetain();

    v31 = v83;
    [v41 registerCardWithInfo:v83 completion:v43];

    swift_unknownObjectRelease_n();
    _Block_release(v43);
    LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

    if ((v43 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v79 = v27;
  v46 = v33;
  v47 = v33[96];
  v48 = v26[2];
  v49 = v73;
  v50 = v80;
  v48(v73, &v31[v47], v80);
  v51 = sub_224627B58();
  v52 = sub_224628048();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_224507000, v51, v52, "failed connecting to server xpc", v53, 2u);
    MEMORY[0x22AA526D0](v53, -1, -1);
  }

  v54 = v26[1];
  v54(v49, v50);
  sub_22452ECAC();
  v55 = swift_allocError();
  *v56 = 0xD00000000000001FLL;
  *(v56 + 8) = 0x8000000224638700;
  *(v56 + 16) = 4;
  swift_willThrow();
LABEL_11:
  v48(v82, &v76[v46[96]], v50);
  v63 = v55;
  v64 = sub_224627B58();
  v65 = sub_224628048();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v66 = 138412290;
    v68 = v55;
    v69 = _swift_stdlib_bridgeErrorToNSError();
    *(v66 + 4) = v69;
    *v67 = v69;
    _os_log_impl(&dword_224507000, v64, v65, "dockkit: failed getting sync connection, can't send xpc %@", v66, 0xCu);
    sub_2245098A0(v67, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v67, -1, -1);
    MEMORY[0x22AA526D0](v66, -1, -1);
  }

  v54(v82, v50);
  sub_224612AE8();
  sub_224627C08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v70 = v55;
  swift_continuation_throwingResumeWithError();
}

uint64_t sub_22461381C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  return MEMORY[0x2822009F8](sub_224613840, 0, 0);
}

uint64_t sub_224613840()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v0[2] = v0;
  v0[3] = sub_2245804E0;
  v5 = swift_continuation_init();
  sub_2246138FC(v4, v3, v2, v1, v5);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2246138FC(uint64_t a1, uint64_t a2, void *a3, char *a4, uint64_t a5)
{
  v72 = a3;
  v71[2] = a2;
  v71[1] = a1;
  v80 = sub_224627B78();
  v83 = *(v80 - 8);
  v7 = MEMORY[0x28223BE20](v80);
  v82 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v75 = v71 - v10;
  MEMORY[0x28223BE20](v9);
  v73 = v71 - v11;
  v12 = sub_224627BE8();
  v78 = *(v12 - 8);
  v79 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v71 - v16;
  v18 = sub_224627B98();
  MEMORY[0x28223BE20](v18);
  v19 = swift_allocObject();
  v77 = a5;
  *(v19 + 16) = a5;
  v20 = OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnectionLock;
  v21 = *&a4[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnectionLock];

  os_unfair_lock_lock(v21 + 4);

  v22 = *&a4[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnectionError];
  *&a4[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnectionError] = 0;

  v23 = *&a4[v20];

  os_unfair_lock_unlock(v23 + 4);

  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = sub_2245804EC;
  v24[4] = v19;
  v89 = sub_224617AAC;
  v90 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v86 = 1107296256;
  v74 = &v87;
  v87 = sub_224580D44;
  v88 = &block_descriptor_133;
  _Block_copy(&aBlock);
  v84 = MEMORY[0x277D84F90];
  sub_22450962C(&qword_27D0C9EF0, MEMORY[0x277D85198]);
  v25 = a4;
  v81 = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9A40);
  v26 = v83;
  sub_224509674(&qword_27D0C9F00, &unk_27D0C9A40);
  sub_224628298();
  sub_224627C18();
  swift_allocObject();
  v27 = sub_224627BF8();

  v28 = *&v25[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__checkQueue];
  sub_224627BD8();
  sub_224627C38();
  v29 = v79;
  v30 = *(v78 + 8);
  v30(v15, v79);
  sub_224628098();

  v30(v17, v29);
  v31 = v25;
  v32 = sub_224611E48();
  v33 = &unk_27D0D6000;
  v76 = v25;
  if (v32)
  {
    v34 = v32;
    v35 = v80;
    v36 = swift_allocObject();
    v36[2] = v25;
    v36[3] = sub_2245804EC;
    v37 = v81;
    v36[4] = v81;
    v89 = sub_224617A64;
    v90 = v36;
    aBlock = MEMORY[0x277D85DD0];
    v86 = 1107296256;
    v87 = sub_2245D42E8;
    v88 = &block_descriptor_139;
    v38 = _Block_copy(&aBlock);
    v39 = v31;

    v40 = [v34 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v38);
    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA168);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v79 = v27;
      v46 = &unk_27D0D6000;
      v57 = v83;
      v48 = *(v83 + 16);
      v48(v75, &v39[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService_logger], v35);
      v58 = sub_224627B58();
      v59 = sub_224628048();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_224507000, v58, v59, "failed asynchronous server XPC connection", v60, 2u);
        MEMORY[0x22AA526D0](v60, -1, -1);
      }

      v54 = *(v57 + 8);
      v61 = v35;
      v54(v75, v35);
      sub_22452ECAC();
      v55 = swift_allocError();
      *v62 = xmmword_22462FFB0;
      *(v62 + 16) = 4;
      swift_willThrow();

      v50 = v61;
      goto LABEL_11;
    }

    v41 = v84;
    swift_unknownObjectRetain();
    v83 = sub_224627CB8();
    v26 = swift_allocObject();
    v33 = v72;
    v26[2] = v39;
    v26[3] = v33;
    v26[4] = v27;
    v26[5] = sub_2245804EC;
    v26[6] = v37;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_224617AA4;
    *(v42 + 24) = v26;
    v89 = sub_224617AA8;
    v90 = v42;
    aBlock = MEMORY[0x277D85DD0];
    v86 = 1107296256;
    v87 = sub_224611654;
    v88 = &block_descriptor_149_0;
    v43 = _Block_copy(&aBlock);
    v44 = v39;

    swift_unknownObjectRetain();

    v31 = v83;
    [v41 pairAccessoryWithInfo:v83 completion:v43];

    swift_unknownObjectRelease_n();
    _Block_release(v43);
    LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

    if ((v43 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v79 = v27;
  v46 = v33;
  v47 = v33[96];
  v48 = v26[2];
  v49 = v73;
  v50 = v80;
  v48(v73, &v31[v47], v80);
  v51 = sub_224627B58();
  v52 = sub_224628048();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_224507000, v51, v52, "failed connecting to server xpc", v53, 2u);
    MEMORY[0x22AA526D0](v53, -1, -1);
  }

  v54 = v26[1];
  v54(v49, v50);
  sub_22452ECAC();
  v55 = swift_allocError();
  *v56 = 0xD00000000000001FLL;
  *(v56 + 8) = 0x8000000224638700;
  *(v56 + 16) = 4;
  swift_willThrow();
LABEL_11:
  v48(v82, &v76[v46[96]], v50);
  v63 = v55;
  v64 = sub_224627B58();
  v65 = sub_224628048();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v66 = 138412290;
    v68 = v55;
    v69 = _swift_stdlib_bridgeErrorToNSError();
    *(v66 + 4) = v69;
    *v67 = v69;
    _os_log_impl(&dword_224507000, v64, v65, "dockkit: failed getting sync connection, can't send xpc %@", v66, 0xCu);
    sub_2245098A0(v67, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v67, -1, -1);
    MEMORY[0x22AA526D0](v66, -1, -1);
  }

  v54(v82, v50);
  sub_224612AE8();
  sub_224627C08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v70 = v55;
  swift_continuation_throwingResumeWithError();
}

uint64_t sub_2246143CC(void *a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v6 = sub_224627B78();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a2 + OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService_logger, v6);
  v10 = a1;
  v11 = sub_224627B58();
  v12 = sub_224628048();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = a1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_224507000, v11, v12, "failure from proxy: %@", v13, 0xCu);
    sub_2245098A0(v14, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v14, -1, -1);
    MEMORY[0x22AA526D0](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  return a3(a1);
}

uint64_t sub_2246145B8(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2822009F8](sub_2246145D8, 0, 0);
}

uint64_t sub_2246145D8()
{
  v2 = v0[10];
  v1 = v0[11];
  v0[2] = v0;
  v0[3] = sub_2245804E0;
  v3 = swift_continuation_init();
  sub_224614C40(v2, v1, v3);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_224614808(uint64_t a1, const void *a2, void *a3)
{
  v3[10] = a3;
  v6 = sub_224626FF8();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = _Block_copy(a2);
  sub_224626FE8();
  v7 = a3;

  return MEMORY[0x2822009F8](sub_224614900, 0, 0);
}

uint64_t sub_224614900()
{
  v1 = v0[13];
  v2 = v0[10];
  v0[2] = v0;
  v0[3] = sub_2246149AC;
  v3 = swift_continuation_init();
  sub_224614C40(v1, v2, v3);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2246149AC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 120) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_224614B74;
  }

  else
  {
    v2 = sub_224614AC8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_224614AC8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);

  (*(v4 + 8))(v1, v3);
  (*(v2 + 16))(v2, 0);
  _Block_release(*(v0 + 112));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_224614B74()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 88);

  (*(v4 + 8))(v3, v5);
  v6 = sub_224626FA8();

  (*(v1 + 16))(v1, v6);
  _Block_release(*(v0 + 112));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_224614C40(uint64_t a1, char *a2, uint64_t a3)
{
  v73[1] = a1;
  v5 = sub_224627B78();
  v81 = *(v5 - 8);
  v82 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v84 = v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v76 = v73 - v9;
  MEMORY[0x28223BE20](v8);
  v74 = v73 - v10;
  v11 = sub_224627BE8();
  v79 = *(v11 - 8);
  v80 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v73 - v15;
  v17 = sub_224627B98();
  MEMORY[0x28223BE20](v17);
  v18 = swift_allocObject();
  v78 = a3;
  *(v18 + 16) = a3;
  v19 = OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnectionLock;
  v20 = *&a2[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnectionLock];

  os_unfair_lock_lock(v20 + 4);

  v21 = *&a2[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnectionError];
  *&a2[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnectionError] = 0;

  v22 = *&a2[v19];

  os_unfair_lock_unlock(v22 + 4);

  v23 = swift_allocObject();
  v23[2] = a2;
  v23[3] = sub_2245804EC;
  v23[4] = v18;
  v90 = sub_224617AAC;
  v91 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v87 = 1107296256;
  v75 = &v88;
  v88 = sub_224580D44;
  v89 = &block_descriptor_108_0;
  _Block_copy(&aBlock);
  v85 = MEMORY[0x277D84F90];
  sub_22450962C(&qword_27D0C9EF0, MEMORY[0x277D85198]);
  v24 = a2;
  v83 = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9A40);
  sub_224509674(&qword_27D0C9F00, &unk_27D0C9A40);
  sub_224628298();
  sub_224627C18();
  swift_allocObject();
  v25 = sub_224627BF8();

  v26 = *&v24[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__checkQueue];
  sub_224627BD8();
  sub_224627C38();
  v27 = v80;
  v28 = *(v79 + 8);
  v28(v14, v80);
  sub_224628098();

  v28(v16, v27);
  v29 = v24;
  v30 = sub_224611E48();
  v31 = &unk_27D0D6000;
  v77 = v24;
  if (v30)
  {
    v32 = v30;
    v34 = v81;
    v33 = v82;
    v35 = swift_allocObject();
    v35[2] = v24;
    v35[3] = sub_2245804EC;
    v36 = v83;
    v35[4] = v83;
    v90 = sub_224617A64;
    v91 = v35;
    aBlock = MEMORY[0x277D85DD0];
    v87 = 1107296256;
    v88 = sub_2245D42E8;
    v89 = &block_descriptor_114;
    v37 = _Block_copy(&aBlock);
    v38 = v29;

    v39 = [v32 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v37);
    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA168);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v80 = v25;
      v45 = &unk_27D0D6000;
      v49 = *(v34 + 16);
      v47 = v33;
      v49(v76, &v38[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService_logger], v33);
      v57 = sub_224627B58();
      v58 = sub_224628048();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_224507000, v57, v58, "failed asynchronous server XPC connection", v59, 2u);
        MEMORY[0x22AA526D0](v59, -1, -1);
      }

      v54 = *(v34 + 8);
      v54(v76, v33);
      sub_22452ECAC();
      v55 = swift_allocError();
      *v60 = xmmword_22462FFB0;
      *(v60 + 16) = 4;
      swift_willThrow();

      goto LABEL_11;
    }

    v40 = v85;
    swift_unknownObjectRetain();
    v41 = sub_224626FD8();
    v29 = swift_allocObject();
    v29[2] = v25;
    v29[3] = sub_2245804EC;
    v29[4] = v36;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_2246178EC;
    *(v42 + 24) = v29;
    v90 = sub_224617AA8;
    v91 = v42;
    aBlock = MEMORY[0x277D85DD0];
    v87 = 1107296256;
    v88 = sub_224611654;
    v89 = &block_descriptor_124;
    v43 = _Block_copy(&aBlock);
    v31 = v91;

    [v40 setSetupPayloadWithUri:v41 completion:v43];

    swift_unknownObjectRelease_n();
    _Block_release(v43);
    LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

    if ((v43 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v80 = v25;
  v45 = v31;
  v46 = v31[96];
  v48 = v81;
  v47 = v82;
  v49 = *(v81 + 16);
  v50 = v74;
  v49(v74, v29 + v46, v82);
  v51 = sub_224627B58();
  v52 = sub_224628048();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_224507000, v51, v52, "failed connecting to server xpc", v53, 2u);
    MEMORY[0x22AA526D0](v53, -1, -1);
  }

  v54 = *(v48 + 8);
  v54(v50, v47);
  sub_22452ECAC();
  v55 = swift_allocError();
  *v56 = 0xD00000000000001FLL;
  *(v56 + 8) = 0x8000000224638700;
  *(v56 + 16) = 4;
  swift_willThrow();
LABEL_11:
  v49(v84, &v77[v45[96]], v47);
  v61 = v55;
  v62 = sub_224627B58();
  v63 = sub_224628048();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = v47;
    v66 = swift_slowAlloc();
    *v64 = 138412290;
    v67 = v55;
    v68 = _swift_stdlib_bridgeErrorToNSError();
    *(v64 + 4) = v68;
    *v66 = v68;
    _os_log_impl(&dword_224507000, v62, v63, "dockkit: failed getting sync connection, can't send xpc %@", v64, 0xCu);
    sub_2245098A0(v66, &qword_27D0C9660);
    v69 = v66;
    v47 = v65;
    MEMORY[0x22AA526D0](v69, -1, -1);
    MEMORY[0x22AA526D0](v64, -1, -1);
  }

  v54(v84, v47);
  sub_224612AE8();
  sub_224627C08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v70 = v55;
  v71 = v55;
  v72 = v55;
  swift_continuation_throwingResumeWithError();
}

uint64_t sub_2246156FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  return MEMORY[0x2822009F8](sub_224615720, 0, 0);
}

uint64_t sub_224615720()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v0[2] = v0;
  v0[3] = sub_2245804E0;
  v5 = swift_continuation_init();
  sub_2246157DC(v4, v3, v2, v1, v5);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2246157DC(uint64_t a1, uint64_t a2, void *a3, char *a4, uint64_t a5)
{
  v72 = a3;
  v71[2] = a2;
  v71[1] = a1;
  v80 = sub_224627B78();
  v83 = *(v80 - 8);
  v7 = MEMORY[0x28223BE20](v80);
  v82 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v75 = v71 - v10;
  MEMORY[0x28223BE20](v9);
  v73 = v71 - v11;
  v12 = sub_224627BE8();
  v78 = *(v12 - 8);
  v79 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v71 - v16;
  v18 = sub_224627B98();
  MEMORY[0x28223BE20](v18);
  v19 = swift_allocObject();
  v77 = a5;
  *(v19 + 16) = a5;
  v20 = OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnectionLock;
  v21 = *&a4[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnectionLock];

  os_unfair_lock_lock(v21 + 4);

  v22 = *&a4[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnectionError];
  *&a4[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnectionError] = 0;

  v23 = *&a4[v20];

  os_unfair_lock_unlock(v23 + 4);

  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = sub_2245804EC;
  v24[4] = v19;
  v89 = sub_224617AAC;
  v90 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v86 = 1107296256;
  v74 = &v87;
  v87 = sub_224580D44;
  v88 = &block_descriptor_84;
  _Block_copy(&aBlock);
  v84 = MEMORY[0x277D84F90];
  sub_22450962C(&qword_27D0C9EF0, MEMORY[0x277D85198]);
  v25 = a4;
  v81 = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9A40);
  v26 = v83;
  sub_224509674(&qword_27D0C9F00, &unk_27D0C9A40);
  sub_224628298();
  sub_224627C18();
  swift_allocObject();
  v27 = sub_224627BF8();

  v28 = *&v25[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__checkQueue];
  sub_224627BD8();
  sub_224627C38();
  v29 = v79;
  v30 = *(v78 + 8);
  v30(v15, v79);
  sub_224628098();

  v30(v17, v29);
  v31 = v25;
  v32 = sub_224611E48();
  v33 = &unk_27D0D6000;
  v76 = v25;
  if (v32)
  {
    v34 = v32;
    v35 = v80;
    v36 = swift_allocObject();
    v36[2] = v25;
    v36[3] = sub_2245804EC;
    v37 = v81;
    v36[4] = v81;
    v89 = sub_224617A64;
    v90 = v36;
    aBlock = MEMORY[0x277D85DD0];
    v86 = 1107296256;
    v87 = sub_2245D42E8;
    v88 = &block_descriptor_90;
    v38 = _Block_copy(&aBlock);
    v39 = v31;

    v40 = [v34 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v38);
    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA168);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v79 = v27;
      v46 = &unk_27D0D6000;
      v57 = v83;
      v48 = *(v83 + 16);
      v48(v75, &v39[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService_logger], v35);
      v58 = sub_224627B58();
      v59 = sub_224628048();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_224507000, v58, v59, "failed asynchronous server XPC connection", v60, 2u);
        MEMORY[0x22AA526D0](v60, -1, -1);
      }

      v54 = *(v57 + 8);
      v61 = v35;
      v54(v75, v35);
      sub_22452ECAC();
      v55 = swift_allocError();
      *v62 = xmmword_22462FFB0;
      *(v62 + 16) = 4;
      swift_willThrow();

      v50 = v61;
      goto LABEL_11;
    }

    v41 = v84;
    swift_unknownObjectRetain();
    v83 = sub_224627CB8();
    v26 = swift_allocObject();
    v33 = v72;
    v26[2] = v39;
    v26[3] = v33;
    v26[4] = v27;
    v26[5] = sub_2245804EC;
    v26[6] = v37;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_224617AA4;
    *(v42 + 24) = v26;
    v89 = sub_2246178C4;
    v90 = v42;
    aBlock = MEMORY[0x277D85DD0];
    v86 = 1107296256;
    v87 = sub_224611654;
    v88 = &block_descriptor_99;
    v43 = _Block_copy(&aBlock);
    v44 = v39;

    swift_unknownObjectRetain();

    v31 = v83;
    [v41 cancelPairAccessoryWithInfo:v83 completion:v43];

    swift_unknownObjectRelease_n();
    _Block_release(v43);
    LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

    if ((v43 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v79 = v27;
  v46 = v33;
  v47 = v33[96];
  v48 = v26[2];
  v49 = v73;
  v50 = v80;
  v48(v73, &v31[v47], v80);
  v51 = sub_224627B58();
  v52 = sub_224628048();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_224507000, v51, v52, "failed connecting to server xpc", v53, 2u);
    MEMORY[0x22AA526D0](v53, -1, -1);
  }

  v54 = v26[1];
  v54(v49, v50);
  sub_22452ECAC();
  v55 = swift_allocError();
  *v56 = 0xD00000000000001FLL;
  *(v56 + 8) = 0x8000000224638700;
  *(v56 + 16) = 4;
  swift_willThrow();
LABEL_11:
  v48(v82, &v76[v46[96]], v50);
  v63 = v55;
  v64 = sub_224627B58();
  v65 = sub_224628048();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v66 = 138412290;
    v68 = v55;
    v69 = _swift_stdlib_bridgeErrorToNSError();
    *(v66 + 4) = v69;
    *v67 = v69;
    _os_log_impl(&dword_224507000, v64, v65, "robokit: failed getting sync connection, can't send xpc %@", v66, 0xCu);
    sub_2245098A0(v67, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v67, -1, -1);
    MEMORY[0x22AA526D0](v66, -1, -1);
  }

  v54(v82, v50);
  sub_224612AE8();
  sub_224627C08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v70 = v55;
  swift_continuation_throwingResumeWithError();
}

void sub_2246162AC(uint64_t a1, void (*a2)(void))
{
  sub_224612AE8();
  sub_22452ECAC();
  v3 = swift_allocError();
  *v4 = xmmword_2246335B0;
  *(v4 + 16) = 5;
  a2();
}

uint64_t sub_224616334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8 = result;
      v9 = sub_224627CB8();
      v10 = sub_224627C48();
      [v8 pairingStatusWithInfo:v9 state:a3 metadata:v10 error:a5];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_224616584(int a1)
{
  v42 = a1;
  v2 = sub_224627B78();
  v48 = *(v2 - 8);
  v49 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v44 = &v41[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v43 = &v41[-v5];
  v6 = sub_224627BE8();
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v41[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v41[-v10];
  v12 = sub_224627B98();
  MEMORY[0x28223BE20](v12);
  v13 = OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnectionLock;
  v14 = *&v1[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnectionLock];

  os_unfair_lock_lock(v14 + 4);

  v15 = *&v1[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnectionError];
  *&v1[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__xpcConnectionError] = 0;

  v16 = *&v1[v13];

  os_unfair_lock_unlock(v16 + 4);

  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  v55 = sub_224617898;
  v56 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v52 = 1107296256;
  v45 = &v53;
  v53 = sub_224580D44;
  v54 = &block_descriptor_69;
  _Block_copy(&aBlock);
  v50 = MEMORY[0x277D84F90];
  sub_22450962C(&qword_27D0C9EF0, MEMORY[0x277D85198]);
  v18 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9A40);
  sub_224509674(&qword_27D0C9F00, &unk_27D0C9A40);
  sub_224628298();
  sub_224627C18();
  swift_allocObject();
  sub_224627BF8();

  v19 = *&v18[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService__checkQueue];
  sub_224627BD8();
  sub_224627C38();
  v20 = v47;
  v21 = *(v46 + 8);
  v21(v9, v47);
  sub_224628098();

  v21(v11, v20);
  v22 = sub_224611E48();
  if (v22)
  {
    v23 = v22;
    v25 = v48;
    v24 = v49;
    v26 = swift_allocObject();
    *(v26 + 16) = v18;
    v55 = sub_2246178BC;
    v56 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v52 = 1107296256;
    v53 = sub_2245D42E8;
    v54 = &block_descriptor_75;
    v27 = _Block_copy(&aBlock);
    v28 = v18;

    v29 = [v23 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v27);
    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA168);
    if (swift_dynamicCast())
    {
      if (v42 == 2)
      {
        [v50 clearSecureTrackingUserPreference];
      }

      else
      {
        [v50 saveSecureTrackingUserPreferenceWithEnabled_];
      }

      sub_224627C08();

      return swift_unknownObjectRelease();
    }

    else
    {
      v37 = v43;
      (*(v25 + 16))(v43, &v28[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService_logger], v24);
      v38 = sub_224627B58();
      v39 = sub_224628048();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_224507000, v38, v39, "failed asynchronous server XPC connection", v40, 2u);
        MEMORY[0x22AA526D0](v40, -1, -1);
      }

      return (*(v25 + 8))(v37, v24);
    }
  }

  else
  {
    v31 = v48;
    v30 = v49;
    v32 = v44;
    (*(v48 + 16))(v44, &v18[OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService_logger], v49);
    v33 = sub_224627B58();
    v34 = sub_224628048();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_224507000, v33, v34, "failed connecting to server xpc", v35, 2u);
      MEMORY[0x22AA526D0](v35, -1, -1);
    }

    return (*(v31 + 8))(v32, v30);
  }
}

uint64_t sub_224616C48(void *a1, uint64_t a2)
{
  v4 = sub_224627B78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a2 + OBJC_IVAR____TtC11DockKitCore25DockKitCorePairingService_logger, v4);
  v8 = a1;
  v9 = sub_224627B58();
  v10 = sub_224628048();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = a1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_224507000, v9, v10, "failure from proxy: %@", v11, 0xCu);
    sub_2245098A0(v12, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v12, -1, -1);
    MEMORY[0x22AA526D0](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_224616E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_224562284(a3, v23 - v10);
  v12 = sub_224627F78();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2245098A0(v11, &qword_27D0C9408);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_224627F68();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_224627F28();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_224627D48() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_2245098A0(a3, &qword_27D0C9408);

    return v21;
  }

LABEL_8:
  sub_2245098A0(a3, &qword_27D0C9408);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_224617108()
{
  result = sub_224627B78();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of DockKitCorePairingService.registerCard(info:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x150);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22450D034;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of DockKitCorePairingService.pairAccessory(info:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x160);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22450D030;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of DockKitCorePairingService.setSetupPayload(uri:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x170);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22450D030;

  return v7(a1);
}

uint64_t dispatch thunk of DockKitCorePairingService.cancelPairAccessory(info:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x180);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22450D030;

  return v11(a1, a2, a3);
}

uint64_t sub_2246177E4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22450D034;

  return sub_224614808(v2, v3, v4);
}

uint64_t sub_2246178EC(uint64_t a1)
{
  v3 = *(v1 + 24);
  sub_224627C08();
  return v3(a1);
}

uint64_t objectdestroy_92Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2246179C8(uint64_t a1)
{
  v3 = *(v1 + 40);
  if (!a1)
  {
    swift_unknownObjectWeakAssign();
  }

  sub_224627C08();
  return v3(a1);
}

uint64_t sub_224617AC4()
{
  sub_224628378();
  MEMORY[0x22AA51210](15732, 0xE200000000000000);
  v0 = sub_224628668();
  MEMORY[0x22AA51210](v0);

  MEMORY[0x22AA51210](4024608, 0xE300000000000000);
  type metadata accessor for TrackingMetrics.TrackedPersonInfo(0);
  sub_224627868();
  v1 = sub_224628668();
  MEMORY[0x22AA51210](v1);

  MEMORY[0x22AA51210](4026912, 0xE300000000000000);
  v2 = sub_224628668();
  MEMORY[0x22AA51210](v2);

  MEMORY[0x22AA51210](1029796640, 0xE400000000000000);
  sub_224627FB8();
  MEMORY[0x22AA51210](1030779680, 0xE400000000000000);
  sub_224627FB8();
  MEMORY[0x22AA51210](4025376, 0xE300000000000000);
  sub_224627FB8();
  return 0;
}

uint64_t sub_224617CA0()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_trackingMode;
  v2 = *MEMORY[0x277D213F0];
  v3 = sub_2246275B8();
  (*(*(v3 - 8) + 104))(v0 + v1, v2, v3);
  v4 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_facePositionHistory) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_facePositionHistorySynced) = v4;
  *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_timeSinceFaceSeen) = 0;
  v5 = OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_currentObjectData;
  *(v0 + v5) = [objc_allocWithZone(type metadata accessor for TrackerObjectData()) init];
  v6 = OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_standOrientation;
  *(v0 + v6) = [objc_allocWithZone(type metadata accessor for Orientation()) init];
  *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_cameraFPS) = 0;
  *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_trackingFPS) = 0;
  v7 = OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_pipelineMode;
  v8 = *MEMORY[0x277D21318];
  v9 = sub_224627318();
  (*(*(v9 - 8) + 104))(v0 + v7, v8, v9);
  *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_detectedFaces) = v4;
  *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_detectedBodies) = v4;
  *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_trackedPeople) = v4;
  sub_224627B68();
  *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_printPeriod) = 0x3FF0000000000000;
  sub_224627088();
  *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_activeTrackingCount) = &unk_2837F5AA0;
  *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_inactiveTrackingCount) = &unk_2837F5AD0;
  *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_faceInFrame) = 0;
  *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_bodyInFrame) = 0;
  *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_objectInFrame) = 0;
  *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_nothingInFrame) = 0;
  *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_rawVelocityHistory) = v4;
  *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_smoothedVelocityHistory) = v4;
  *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_startTime) = 0;
  *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_endTime) = 0;
  *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_horizontalDynamicReframeCount) = 0;
  *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_verticalDynamicReframeCount) = 0;
  v10 = (v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_activeCamera);
  *v10 = 0x6E776F6E6B6E7528;
  v10[1] = 0xE900000000000029;
  v11 = (v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_activeOrientation);
  *v11 = 0x6E776F6E6B6E7528;
  v11[1] = 0xE900000000000029;
  *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_primarySubjectLostCount) = 0;
  *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_secondarySubjectLostCount) = 0;
  v12 = (v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_activeFraming);
  *v12 = 0x6E776F6E6B6E7528;
  v12[1] = 0xE900000000000029;
  return v0;
}

uint64_t sub_224617F84()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA190);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v150 = &v137 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v149 = &v137 - v4;
  v155 = type metadata accessor for TrackingMetrics.DetectedSubjectInfo(0);
  v145 = *(v155 - 8);
  v5 = MEMORY[0x28223BE20](v155);
  v153 = (&v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v152 = &v137 - v7;
  v143 = sub_224627318();
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v141 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_2246275B8();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v138 = &v137 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for TrackingMetrics.TrackedPersonInfo(0);
  v151 = *(v148 - 8);
  v10 = MEMORY[0x28223BE20](v148);
  v154 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v137 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v137 - v15;
  v147 = v0;
  v144 = OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_trackedPeople;
  v17 = *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_trackedPeople);
  v18 = *(v17 + 16);

  if (v18)
  {
    v20 = 0;
    v21 = MEMORY[0x277D84F90];
    while (v20 < *(v17 + 16))
    {
      v22 = (*(v151 + 80) + 32) & ~*(v151 + 80);
      v23 = *(v151 + 72);
      sub_22461CEE8(v17 + v22 + v23 * v20, v16, type metadata accessor for TrackingMetrics.TrackedPersonInfo);
      if (*&v16[*(v148 + 24)])
      {
        sub_22461C9A8(v16, v14, type metadata accessor for TrackingMetrics.TrackedPersonInfo);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v160 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22455C7A4(0, *(v21 + 16) + 1, 1);
          v21 = v160;
        }

        v26 = *(v21 + 16);
        v25 = *(v21 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_22455C7A4(v25 > 1, v26 + 1, 1);
          v21 = v160;
        }

        *(v21 + 16) = v26 + 1;
        result = sub_22461C9A8(v14, v21 + v22 + v26 * v23, type metadata accessor for TrackingMetrics.TrackedPersonInfo);
      }

      else
      {
        result = sub_22461CFC0(v16, type metadata accessor for TrackingMetrics.TrackedPersonInfo);
      }

      if (v18 == ++v20)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
LABEL_13:
    v146 = v21;

    v160 = 0;
    v161 = 0xE000000000000000;
    sub_224628378();
    MEMORY[0x22AA51210](0xD00000000000001CLL, 0x800000022463B700);
    v27 = v147;
    v28 = *(v147 + 16);
    v29 = *(v147 + 24);

    MEMORY[0x22AA51210](v28, v29);

    MEMORY[0x22AA51210](0x64657370616C450ALL, 0xEA0000000000203ALL);
    v30 = *(v27 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_startTime);
    v31 = *(v27 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_endTime);
    if (v30 != v31 && v31 < v30)
    {
      v32 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
      [v32 timeIntervalSince1970];
    }

    sub_224627FB8();
    MEMORY[0x22AA51210](0x6E696B636172540ALL, 0xEF203A65646F4D67);
    v33 = v139;
    v34 = v138;
    v35 = v140;
    (*(v139 + 16))(v138, v27 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_trackingMode, v140);
    sub_224628448();
    (*(v33 + 8))(v34, v35);
    MEMORY[0x22AA51210](0x3A6172656D61430ALL, 0xE900000000000020);
    v36 = *(v27 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_activeCamera);
    v37 = *(v27 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_activeCamera + 8);

    MEMORY[0x22AA51210](v36, v37);

    MEMORY[0x22AA51210](0xD000000000000014, 0x800000022463B720);
    v38 = *(v27 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_activeOrientation);
    v39 = *(v27 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_activeOrientation + 8);

    MEMORY[0x22AA51210](v38, v39);

    MEMORY[0x22AA51210](0xD000000000000013, 0x800000022463B740);
    v40 = *(v27 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_standOrientation);
    v41 = [v40 description];
    v42 = sub_224627CD8();
    v44 = v43;

    MEMORY[0x22AA51210](v42, v44);

    MEMORY[0x22AA51210](0x676E696D6172460ALL, 0xEA0000000000203ALL);
    v45 = *(v27 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_activeFraming);
    v46 = *(v27 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_activeFraming + 8);

    MEMORY[0x22AA51210](v45, v46);

    MEMORY[0x22AA51210](0x466172656D61430ALL, 0xEC000000203A5350);
    sub_224627FB8();
    MEMORY[0x22AA51210](0x6E696B636172540ALL, 0xEE00203A53504667);
    sub_224627FB8();
    MEMORY[0x22AA51210](0x6C616D726568540ALL, 0xEA0000000000203ALL);
    v47 = [objc_opt_self() processInfo];
    v48 = [v47 thermalState];

    v157 = v48;
    v49 = sub_224628668();
    MEMORY[0x22AA51210](v49);

    MEMORY[0x22AA51210](0x6E696C657069500ALL, 0xEF203A65646F4D65);
    v50 = v142;
    v51 = v141;
    v52 = v143;
    (*(v142 + 16))(v141, v27 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_pipelineMode, v143);
    sub_224628448();
    (*(v50 + 8))(v51, v52);
    MEMORY[0x22AA51210](0xD000000000000010, 0x800000022463B760);
    v53 = OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_detectedFaces;
    v157 = *(*(v27 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_detectedFaces) + 16);
    v54 = sub_224628668();
    MEMORY[0x22AA51210](v54);

    MEMORY[0x22AA51210](32, 0xE100000000000000);
    v55 = *(v27 + v53);
    v56 = *(v55 + 16);
    v57 = MEMORY[0x277D84F90];
    if (v56)
    {
      v159 = MEMORY[0x277D84F90];

      sub_22455C764(0, v56, 0);
      v57 = v159;
      v58 = *(v145 + 80);
      v143 = v55;
      v59 = v55 + ((v58 + 32) & ~v58);
      v148 = *(v145 + 72);
      do
      {
        v60 = v152;
        sub_22461CEE8(v59, v152, type metadata accessor for TrackingMetrics.DetectedSubjectInfo);
        v157 = 15732;
        v158 = 0xE200000000000000;
        v156 = *v60;
        v61 = sub_224628668();
        MEMORY[0x22AA51210](v61);

        MEMORY[0x22AA51210](4024608, 0xE300000000000000);
        v62 = v60 + *(v155 + 20);
        v63 = v149;
        sub_22461CF50(v62, v149);
        v64 = sub_224627878();
        v65 = *(v64 - 8);
        if ((*(v65 + 48))(v63, 1, v64) == 1)
        {
          sub_2245098A0(v63, &qword_27D0CA190);
          v66 = -1;
        }

        else
        {
          v66 = sub_224627868();
          (*(v65 + 8))(v63, v64);
        }

        v156 = v66;
        v67 = sub_224628668();
        MEMORY[0x22AA51210](v67);

        MEMORY[0x22AA51210](4024096, 0xE300000000000000);
        v68 = v152;
        v156 = *(v152 + *(v155 + 24));
        v69 = sub_224628668();
        MEMORY[0x22AA51210](v69);

        v70 = v157;
        v71 = v158;
        sub_22461CFC0(v68, type metadata accessor for TrackingMetrics.DetectedSubjectInfo);
        v159 = v57;
        v73 = *(v57 + 16);
        v72 = *(v57 + 24);
        if (v73 >= v72 >> 1)
        {
          sub_22455C764((v72 > 1), v73 + 1, 1);
          v57 = v159;
        }

        *(v57 + 16) = v73 + 1;
        v74 = v57 + 16 * v73;
        *(v74 + 32) = v70;
        *(v74 + 40) = v71;
        v59 += v148;
        --v56;
      }

      while (v56);

      v27 = v147;
    }

    v75 = MEMORY[0x22AA51350](v57, MEMORY[0x277D837D0]);
    v77 = v76;

    MEMORY[0x22AA51210](v75, v77);

    MEMORY[0x22AA51210](0xD000000000000011, 0x800000022463B780);
    v78 = OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_detectedBodies;
    v157 = *(*(v27 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_detectedBodies) + 16);
    v79 = sub_224628668();
    MEMORY[0x22AA51210](v79);

    MEMORY[0x22AA51210](32, 0xE100000000000000);
    v80 = *(v27 + v78);
    v81 = *(v80 + 16);
    v82 = MEMORY[0x277D84F90];
    if (v81)
    {
      v159 = MEMORY[0x277D84F90];

      sub_22455C764(0, v81, 0);
      v82 = v159;
      v83 = *(v145 + 80);
      v149 = v80;
      v84 = v80 + ((v83 + 32) & ~v83);
      v152 = *(v145 + 72);
      do
      {
        v85 = v153;
        sub_22461CEE8(v84, v153, type metadata accessor for TrackingMetrics.DetectedSubjectInfo);
        v157 = 15732;
        v158 = 0xE200000000000000;
        v156 = *v85;
        v86 = sub_224628668();
        MEMORY[0x22AA51210](v86);

        MEMORY[0x22AA51210](4024608, 0xE300000000000000);
        v87 = v85 + *(v155 + 20);
        v88 = v150;
        sub_22461CF50(v87, v150);
        v89 = sub_224627878();
        v90 = *(v89 - 8);
        if ((*(v90 + 48))(v88, 1, v89) == 1)
        {
          sub_2245098A0(v88, &qword_27D0CA190);
          v91 = -1;
        }

        else
        {
          v91 = sub_224627868();
          (*(v90 + 8))(v88, v89);
        }

        v156 = v91;
        v92 = sub_224628668();
        MEMORY[0x22AA51210](v92);

        MEMORY[0x22AA51210](4024096, 0xE300000000000000);
        v93 = v153;
        v156 = *(v153 + *(v155 + 24));
        v94 = sub_224628668();
        MEMORY[0x22AA51210](v94);

        v96 = v157;
        v95 = v158;
        sub_22461CFC0(v93, type metadata accessor for TrackingMetrics.DetectedSubjectInfo);
        v159 = v82;
        v98 = *(v82 + 16);
        v97 = *(v82 + 24);
        if (v98 >= v97 >> 1)
        {
          sub_22455C764((v97 > 1), v98 + 1, 1);
          v82 = v159;
        }

        *(v82 + 16) = v98 + 1;
        v99 = v82 + 16 * v98;
        *(v99 + 32) = v96;
        *(v99 + 40) = v95;
        v84 += v152;
        --v81;
      }

      while (v81);

      v27 = v147;
    }

    v100 = MEMORY[0x22AA51350](v82, MEMORY[0x277D837D0]);
    v102 = v101;

    MEMORY[0x22AA51210](v100, v102);

    MEMORY[0x22AA51210](0xD000000000000010, 0x800000022463B7A0);
    v103 = v144;
    v157 = *(*(v27 + v144) + 16);
    v104 = sub_224628668();
    MEMORY[0x22AA51210](v104);

    MEMORY[0x22AA51210](32, 0xE100000000000000);
    v105 = *(v27 + v103);
    v106 = *(v105 + 16);
    v107 = MEMORY[0x277D84F90];
    if (v106)
    {
      v157 = MEMORY[0x277D84F90];

      sub_22455C764(0, v106, 0);
      v108 = v157;
      v109 = v105 + ((*(v151 + 80) + 32) & ~*(v151 + 80));
      v110 = *(v151 + 72);
      do
      {
        v111 = v154;
        sub_22461CEE8(v109, v154, type metadata accessor for TrackingMetrics.TrackedPersonInfo);
        v112 = sub_224617AC4();
        v114 = v113;
        sub_22461CFC0(v111, type metadata accessor for TrackingMetrics.TrackedPersonInfo);
        v157 = v108;
        v116 = *(v108 + 16);
        v115 = *(v108 + 24);
        if (v116 >= v115 >> 1)
        {
          sub_22455C764((v115 > 1), v116 + 1, 1);
          v108 = v157;
        }

        *(v108 + 16) = v116 + 1;
        v117 = v108 + 16 * v116;
        *(v117 + 32) = v112;
        *(v117 + 40) = v114;
        v109 += v110;
        --v106;
      }

      while (v106);

      v107 = MEMORY[0x277D84F90];
    }

    else
    {
      v108 = MEMORY[0x277D84F90];
    }

    v118 = MEMORY[0x22AA51350](v108, MEMORY[0x277D837D0]);
    v120 = v119;

    MEMORY[0x22AA51210](v118, v120);

    MEMORY[0x22AA51210](0xD000000000000011, 0x800000022463B7C0);
    v121 = v146;
    v157 = *(v146 + 16);
    v122 = v157;
    v123 = sub_224628668();
    MEMORY[0x22AA51210](v123);

    MEMORY[0x22AA51210](32, 0xE100000000000000);
    if (v122)
    {
      v157 = v107;
      sub_22455C764(0, v122, 0);
      v124 = v157;
      v125 = v121 + ((*(v151 + 80) + 32) & ~*(v151 + 80));
      v126 = *(v151 + 72);
      do
      {
        v127 = v154;
        sub_22461CEE8(v125, v154, type metadata accessor for TrackingMetrics.TrackedPersonInfo);
        v128 = sub_224617AC4();
        v130 = v129;
        sub_22461CFC0(v127, type metadata accessor for TrackingMetrics.TrackedPersonInfo);
        v157 = v124;
        v132 = *(v124 + 16);
        v131 = *(v124 + 24);
        if (v132 >= v131 >> 1)
        {
          sub_22455C764((v131 > 1), v132 + 1, 1);
          v124 = v157;
        }

        *(v124 + 16) = v132 + 1;
        v133 = v124 + 16 * v132;
        *(v133 + 32) = v128;
        *(v133 + 40) = v130;
        v125 += v126;
        --v122;
      }

      while (v122);
    }

    else
    {

      v124 = MEMORY[0x277D84F90];
    }

    v134 = MEMORY[0x22AA51350](v124, MEMORY[0x277D837D0]);
    v136 = v135;

    MEMORY[0x22AA51210](v134, v136);

    return v160;
  }

  return result;
}

uint64_t sub_2246191FC(char a1)
{
  v2 = v1;
  v4 = sub_224627B78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224627118();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) != 0 || ((*(v9 + 16))(v11, v1 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_lastPrintTime, v8), sub_2246270B8(), v13 = v12, result = (*(v9 + 8))(v11, v8), *(v1 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_printPeriod) < fabs(v13)))
  {
    v33 = v9;
    v32 = sub_224617F84();
    v16 = v15;
    (*(v5 + 16))(v7, v1 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_logger, v4);
    v17 = sub_224627B58();
    v18 = sub_224628058();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v31 = v2;
      v20 = v19;
      v21 = swift_slowAlloc();
      v30 = v8;
      v22 = v21;
      v34 = v21;
      *v20 = 136315138;
      v23 = sub_224509F28(v32, v16, &v34);
      v32 = v4;
      v24 = a1;
      v25 = v23;

      *(v20 + 4) = v25;
      a1 = v24;
      _os_log_impl(&dword_224507000, v17, v18, "%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      v26 = v22;
      v8 = v30;
      MEMORY[0x22AA526D0](v26, -1, -1);
      v27 = v20;
      v2 = v31;
      MEMORY[0x22AA526D0](v27, -1, -1);

      result = (*(v5 + 8))(v7, v32);
    }

    else
    {

      result = (*(v5 + 8))(v7, v4);
    }

    v28 = v33;
    if ((a1 & 1) == 0)
    {
      sub_224627108();
      return (*(v28 + 40))(v2 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_lastPrintTime, v11, v8);
    }
  }

  return result;
}

uint64_t sub_224619530(uint64_t a1, uint64_t a2)
{
  v5 = sub_224627628();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224627658();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a1, v9);
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 == *MEMORY[0x277D21428])
  {
    v14 = (v2 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_activeFraming);
    *v14 = 0x6974616D6F747541;
    v14[1] = 0xEA00000000002B63;
  }

  else
  {
    v15 = (v2 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_activeFraming);
    if (v13 == *MEMORY[0x277D21420])
    {
      *v15 = 0x2B6C61756E614DLL;
      v15[1] = 0xE700000000000000;
    }

    else
    {
      *v15 = 0x2B6E776F6E6B6E55;
      v15[1] = 0xE800000000000000;

      (*(v10 + 8))(v12, v9);
    }
  }

  (*(v6 + 16))(v8, a2, v5);
  v16 = (*(v6 + 88))(v8, v5);
  if (v16 == *MEMORY[0x277D21418])
  {
    return MEMORY[0x22AA51210](0x7265746E6543, 0xE600000000000000);
  }

  if (v16 == *MEMORY[0x277D21408])
  {
    return MEMORY[0x22AA51210](0x726968547466654CLL, 0xE900000000000064);
  }

  if (v16 == *MEMORY[0x277D21410])
  {
    return MEMORY[0x22AA51210](0x6968547468676952, 0xEA00000000006472);
  }

  if (v16 == *MEMORY[0x277D21400])
  {
    return MEMORY[0x22AA51210](0x69547265746E6543, 0xEB00000000746867);
  }

  MEMORY[0x22AA51210](0x6E776F6E6B6E55, 0xE700000000000000);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2246198C0(unint64_t a1)
{
  v2 = v1;
  v4 = sub_224627B78();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v9 = OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_activeTrackingCount;
  v10 = *(v2 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_activeTrackingCount);
  if (*(v10 + 16) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = *(v2 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_inactiveTrackingCount);
  if (*(v11 + 16) <= a1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v12 = *(v10 + 4 * a1 + 32);
  v13 = *(v11 + 4 * a1 + 32);
  if (__CFADD__(v12, v13))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23 = v12 + v13;
  v24 = OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_inactiveTrackingCount;
  (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_logger, v4);
  v14 = sub_224627B58();
  v15 = sub_224628058();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v22 = v9;
    v17 = v16;
    *v16 = 134219008;
    *(v16 + 4) = a1;
    *(v16 + 12) = 1024;
    *(v16 + 14) = v12;
    *(v16 + 18) = 2048;
    *(v16 + 20) = a1;
    *(v16 + 28) = 1024;
    *(v16 + 30) = v13;
    *(v16 + 34) = 1024;
    *(v16 + 36) = v23;
    _os_log_impl(&dword_224507000, v14, v15, "activeTrackingCount[%ld] = %u, inactiveTrackingCount[%ld] = %u, total=%u", v16, 0x28u);
    v18 = v17;
    v9 = v22;
    MEMORY[0x22AA526D0](v18, -1, -1);
  }

  result = (*(v5 + 8))(v8, v4);
  v19 = *(v2 + v9);
  if (*(v19 + 16) <= a1)
  {
    goto LABEL_15;
  }

  v20 = *(v2 + v24);
  if (*(v20 + 16) <= a1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (__CFADD__(*(v19 + 4 * a1 + 32), *(v20 + 4 * a1 + 32)))
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

void sub_224619B34()
{
  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_objectInFrame);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_faceInFrame);
    v3 = *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_bodyInFrame);
    v4 = __CFADD__(v2, v3);
    v5 = v2 + v3;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      v4 = __CFADD__(v5, v1);
      v6 = v5 + v1;
      if (!v4)
      {
        if (!__CFADD__(v6, *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_nothingInFrame)))
        {
          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_224619BB0()
{
  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_faceInFrame);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_bodyInFrame);
    v3 = __CFADD__(v1, v2);
    v4 = v1 + v2;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      v5 = *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_objectInFrame);
      v3 = __CFADD__(v4, v5);
      v6 = v4 + v5;
      if (!v3)
      {
        if (!__CFADD__(v6, *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_nothingInFrame)))
        {
          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_224619C2C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_bodyInFrame);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_faceInFrame);
    v3 = __CFADD__(v2, v1);
    v4 = v2 + v1;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      v5 = *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_objectInFrame);
      v3 = __CFADD__(v4, v5);
      v6 = v4 + v5;
      if (!v3)
      {
        if (!__CFADD__(v6, *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_nothingInFrame)))
        {
          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_224619CA8()
{
  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_nothingInFrame);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_faceInFrame);
    v3 = *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_bodyInFrame);
    v4 = __CFADD__(v2, v3);
    v5 = v2 + v3;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      v6 = *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_objectInFrame);
      v4 = __CFADD__(v5, v6);
      v7 = v5 + v6;
      if (!v4)
      {
        if (!__CFADD__(v7, v1))
        {
          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

char *sub_224619D24(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_smoothedVelocityHistory);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v20 = MEMORY[0x277D84F90];

    result = sub_22455C700(0, v4, 0);
    v7 = 32;
    v5 = v20;
    while (1)
    {
      v8 = *(v3 + v7);
      if (!*(v8 + 16))
      {
        break;
      }

      v9 = *(v8 + 32);
      v11 = *(v20 + 16);
      v10 = *(v20 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_22455C700((v10 > 1), v11 + 1, 1);
      }

      *(v20 + 16) = v11 + 1;
      *(v20 + 8 * v11 + 32) = v9;
      v7 += 8;
      if (!--v4)
      {

        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_8:
  if ((a1 & 1) == 0)
  {
LABEL_17:
    sub_22461CA24(v5);
  }

  v12 = *(v1 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_rawVelocityHistory);
  v13 = *(v12 + 16);
  v14 = MEMORY[0x277D84F90];
  if (!v13)
  {
LABEL_16:
    sub_22461CA24(v14);

    goto LABEL_17;
  }

  v21 = MEMORY[0x277D84F90];

  result = sub_22455C700(0, v13, 0);
  v15 = 32;
  v14 = v21;
  while (1)
  {
    v16 = *(v12 + v15);
    if (!*(v16 + 16))
    {
      break;
    }

    v17 = *(v16 + 32);
    v19 = *(v21 + 16);
    v18 = *(v21 + 24);
    if (v19 >= v18 >> 1)
    {
      result = sub_22455C700((v18 > 1), v19 + 1, 1);
    }

    *(v21 + 16) = v19 + 1;
    *(v21 + 8 * v19 + 32) = v17;
    v15 += 8;
    if (!--v13)
    {

      goto LABEL_16;
    }
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_224619F04()
{
  *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_activeTrackingCount) = &unk_2837F5820;

  *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_inactiveTrackingCount) = &unk_2837F5850;

  *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_faceInFrame) = 0;
  *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_bodyInFrame) = 0;
  *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_objectInFrame) = 0;
  *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_nothingInFrame) = 0;
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_facePositionHistory) = MEMORY[0x277D84F90];

  *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_rawVelocityHistory) = v1;

  *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_smoothedVelocityHistory) = v1;

  *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_startTime) = 0;
  *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_endTime) = 0;
  v2 = (v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_activeCamera);
  *v2 = 0x6E776F6E6B6E7528;
  v2[1] = 0xE900000000000029;

  v3 = (v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_activeOrientation);
  *v3 = 0x6E776F6E6B6E7528;
  v3[1] = 0xE900000000000029;

  *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_primarySubjectLostCount) = 0;
  *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_secondarySubjectLostCount) = 0;
  return result;
}

unint64_t sub_22461A04C(uint64_t a1)
{
  v2 = type metadata accessor for TrackingMetrics.TrackedPersonInfo(0);
  v199 = *(v2 - 8);
  v200 = v2;
  MEMORY[0x28223BE20](v2);
  v204 = (&v173 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA190);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v192 = &v173 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v203 = &v173 - v7;
  v8 = type metadata accessor for TrackingMetrics.DetectedSubjectInfo(0);
  v206 = *(v8 - 8);
  v207 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v201 = (&v173 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v205 = &v173 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v202 = (&v173 - v14);
  MEMORY[0x28223BE20](v13);
  v208 = &v173 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA1B0);
  MEMORY[0x28223BE20](v16 - 8);
  v193 = &v173 - v17;
  v191 = sub_224627318();
  v198 = *(v191 - 8);
  MEMORY[0x28223BE20](v191);
  v194 = &v173 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9DF8);
  MEMORY[0x28223BE20](v19 - 8);
  v189 = &v173 - v20;
  v184 = sub_224627628();
  v183 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v174 = &v173 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA1B8);
  MEMORY[0x28223BE20](v22 - 8);
  v197 = &v173 - v23;
  v190 = sub_224627658();
  v188 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v182 = &v173 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9DC8);
  MEMORY[0x28223BE20](v25 - 8);
  v186 = &v173 - v26;
  v187 = sub_224627B38();
  v185 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v181 = &v173 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_224627838();
  v179 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v178 = &v173 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_224627518();
  v29 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v176 = &v173 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9DC0);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v173 - v32;
  v34 = sub_224627AE8();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v175 = &v173 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0CA1C0);
  MEMORY[0x28223BE20](v37 - 8);
  v39 = &v173 - v38;
  v40 = sub_2246275B8();
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v43 = &v173 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = a1;
  sub_224627228();
  v44 = *(v41 + 48);
  if (v44(v39, 1, v40) == 1)
  {
    (*(v41 + 104))(v43, *MEMORY[0x277D213E8], v40);
    if (v44(v39, 1, v40) != 1)
    {
      sub_2245098A0(v39, &unk_27D0CA1C0);
    }
  }

  else
  {
    (*(v41 + 32))(v43, v39, v40);
  }

  v45 = v196;
  (*(v41 + 40))(v196 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_trackingMode, v43, v40);
  sub_2246272C8();
  v46 = v34;
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    sub_2245098A0(v33, &qword_27D0C9DC0);
  }

  else
  {
    v47 = v175;
    (*(v35 + 32))(v175, v33, v34);
    v48 = v176;
    sub_224627AC8();
    v49 = sub_2246274E8();
    v51 = v50;
    (*(v29 + 8))(v48, v177);
    v52 = (v45 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_activeCamera);
    *v52 = v49;
    v52[1] = v51;

    v53 = v178;
    sub_224627A88();
    v54 = sub_224627808();
    v56 = v55;
    (*(v179 + 8))(v53, v180);
    (*(v35 + 8))(v47, v46);
    v57 = (v45 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_activeOrientation);
    *v57 = v54;
    v57[1] = v56;
  }

  v58 = v45;
  v59 = v192;
  v60 = v193;
  v61 = v186;
  sub_224627248();
  v62 = v185;
  v63 = v187;
  if ((*(v185 + 48))(v61, 1, v187) == 1)
  {
    sub_2245098A0(v61, &qword_27D0C9DC8);
  }

  else
  {
    v64 = v181;
    (*(v62 + 32))(v181, v61, v63);
    v65 = v62;
    sub_224627B08();
    v67 = v66;
    sub_224627B18();
    v69 = v68;
    sub_224627B28();
    v71 = v70;
    v72 = type metadata accessor for Orientation();
    v73 = objc_allocWithZone(v72);
    v74 = OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9670);
    v75 = swift_allocObject();
    *(v75 + 16) = 0;
    *&v73[v74] = v75;
    v76 = OBJC_IVAR____TtC11DockKitCore11Orientation__pitch;
    v77 = OBJC_IVAR____TtC11DockKitCore11Orientation__roll;
    *&v73[OBJC_IVAR____TtC11DockKitCore11Orientation__yaw] = v67;
    *&v73[v76] = v69;
    *&v73[v77] = v71;
    v209.receiver = v73;
    v209.super_class = v72;
    v78 = objc_msgSendSuper2(&v209, sel_init);
    (*(v65 + 8))(v64, v63);
    v60 = v193;
    v79 = *(v58 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_standOrientation);
    *(v58 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_standOrientation) = v78;
  }

  v80 = v191;
  v81 = v189;
  sub_2246271F8();
  v82 = v197;
  v83 = v188;
  v84 = v190;
  if ((*(v188 + 48))(v197, 1, v190) == 1)
  {
    sub_2245098A0(v82, &qword_27D0CA1B8);
  }

  else
  {
    v85 = v182;
    (*(v83 + 32))(v182, v82, v84);
    sub_224627288();
    v86 = v183;
    v87 = v184;
    if ((*(v183 + 48))(v81, 1, v184) == 1)
    {
      (*(v83 + 8))(v85, v84);
      sub_2245098A0(v81, &unk_27D0C9DF8);
      v58 = v196;
    }

    else
    {
      v88 = v174;
      (*(v86 + 32))(v174, v81, v87);
      v89 = v87;
      v90 = v196;
      sub_224619530(v85, v88);
      v80 = v191;
      (*(v86 + 8))(v88, v89);
      v58 = v90;
      v60 = v193;
      (*(v83 + 8))(v85, v190);
    }
  }

  v91 = sub_224627238();
  if (v91)
  {
    if (v91 >> 62)
    {
      goto LABEL_68;
    }

    v92 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:

    if (v92 >= 1)
    {
      v93 = (v58 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_faceInFrame);
      v94 = *(v58 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_faceInFrame);
      v95 = __CFADD__(v94, 1);
      v96 = v94 + 1;
      if (!v95)
      {
        goto LABEL_31;
      }

      __break(1u);
    }
  }

  result = sub_224627268();
  if (result)
  {
    v98 = result >> 62 ? sub_224628478() : *((result & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v98 >= 1)
    {
      v93 = (v58 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_bodyInFrame);
      v99 = *(v58 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_bodyInFrame);
      v95 = __CFADD__(v99, 1);
      v96 = v99 + 1;
      if (!v95)
      {
        goto LABEL_31;
      }

      __break(1u);
    }
  }

  v93 = (v58 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_nothingInFrame);
  v100 = *(v58 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_nothingInFrame);
  v95 = __CFADD__(v100, 1);
  v96 = v100 + 1;
  if (v95)
  {
    __break(1u);
    return result;
  }

LABEL_31:
  *v93 = v96;
  v101 = COERCE_DOUBLE(sub_2246272E8());
  if (v102)
  {
    v101 = -1.0;
  }

  *(v58 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_cameraFPS) = v101;
  v103 = COERCE_DOUBLE(sub_224627208());
  if (v104)
  {
    v103 = -1.0;
  }

  *(v58 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_trackingFPS) = v103;
  sub_224627218();
  v105 = *(v198 + 48);
  if (v105(v60, 1, v80) == 1)
  {
    (*(v198 + 104))(v194, *MEMORY[0x277D21318], v80);
    if (v105(v60, 1, v80) != 1)
    {
      sub_2245098A0(v60, &qword_27D0CA1B0);
    }
  }

  else
  {
    (*(v198 + 32))(v194, v60, v80);
  }

  (*(v198 + 40))(v58 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_pipelineMode, v194, v80);
  v106 = sub_224627238();
  if (v106)
  {
    v107 = v106;
    v108 = v106 & 0xFFFFFFFFFFFFFF8;
    if (v106 >> 62)
    {
      v80 = sub_224628478();
      v58 = v203;
      if (v80)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v80 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v58 = v203;
      if (v80)
      {
LABEL_42:
        v59 = 0;
        v198 = v107 & 0xC000000000000001;
        v60 = MEMORY[0x277D84F90];
        v197 = v107;
        while (1)
        {
          if (v198)
          {
            MEMORY[0x22AA517F0](v59, v107);
            v109 = v59 + 1;
            if (__OFADD__(v59, 1))
            {
              goto LABEL_66;
            }
          }

          else
          {
            if (v59 >= *(v108 + 16))
            {
              goto LABEL_67;
            }

            v109 = v59 + 1;
            if (__OFADD__(v59, 1))
            {
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
LABEL_68:
              v92 = sub_224628478();
              goto LABEL_19;
            }
          }

          v110 = v80;
          v111 = sub_224627778();
          if (v112)
          {
            v113 = -1;
          }

          else
          {
            v113 = v111;
          }

          v114 = sub_224627748();
          if (*(v114 + 16))
          {
            v115 = sub_224627878();
            v116 = *(v115 - 8);
            (*(v116 + 16))(v203, v114 + ((*(v116 + 80) + 32) & ~*(v116 + 80)), v115);

            (*(v116 + 56))(v203, 0, 1, v115);
            v58 = v203;
          }

          else
          {

            v117 = sub_224627878();
            (*(*(v117 - 8) + 56))(v58, 1, 1, v117);
          }

          v118 = sub_224627768();
          v120 = v119;

          if (v120)
          {
            v121 = -1;
          }

          else
          {
            v121 = v118;
          }

          v122 = v202;
          *v202 = v113;
          v123 = v207;
          sub_22461C938(v58, v122 + *(v207 + 20));
          *(v122 + *(v123 + 24)) = v121;
          sub_22461C9A8(v122, v208, type metadata accessor for TrackingMetrics.DetectedSubjectInfo);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v60 = sub_22452B3DC(0, v60[2] + 1, 1, v60);
          }

          v125 = v60[2];
          v124 = v60[3];
          if (v125 >= v124 >> 1)
          {
            v60 = sub_22452B3DC(v124 > 1, v125 + 1, 1, v60);
          }

          v60[2] = v125 + 1;
          sub_22461C9A8(v208, v60 + ((*(v206 + 80) + 32) & ~*(v206 + 80)) + *(v206 + 72) * v125, type metadata accessor for TrackingMetrics.DetectedSubjectInfo);
          ++v59;
          v80 = v110;
          v126 = v109 == v110;
          v107 = v197;
          if (v126)
          {
            goto LABEL_71;
          }
        }
      }
    }

    v60 = MEMORY[0x277D84F90];
LABEL_71:

    v59 = v192;
  }

  else
  {
    v60 = MEMORY[0x277D84F90];
  }

  v127 = v196;
  *(v196 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_detectedFaces) = v60;

  v128 = sub_224627268();
  if (v128)
  {
    v129 = v128;
    v130 = v128 & 0xFFFFFFFFFFFFFF8;
    if (v128 >> 62)
    {
      goto LABEL_100;
    }

    for (i = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224628478())
    {
      v132 = 0;
      v208 = v129 & 0xC000000000000001;
      v133 = MEMORY[0x277D84F90];
      v202 = v130;
      v203 = v129;
      while (v208)
      {
        MEMORY[0x22AA517F0](v132, v129);
        v134 = v132 + 1;
        if (__OFADD__(v132, 1))
        {
          goto LABEL_98;
        }

LABEL_79:
        v135 = sub_224627728();
        if (v136)
        {
          v137 = -1;
        }

        else
        {
          v137 = v135;
        }

        v138 = sub_2246276F8();
        if (*(v138 + 16))
        {
          v139 = v138;
          v140 = v59;
          v141 = sub_224627878();
          v142 = i;
          v143 = *(v141 - 8);
          (*(v143 + 16))(v140, v139 + ((*(v143 + 80) + 32) & ~*(v143 + 80)), v141);

          (*(v143 + 56))(v140, 0, 1, v141);
          i = v142;
        }

        else
        {

          v144 = sub_224627878();
          (*(*(v144 - 8) + 56))(v59, 1, 1, v144);
          v140 = v59;
        }

        v145 = sub_224627718();
        v147 = v146;

        if (v147)
        {
          v148 = -1;
        }

        else
        {
          v148 = v145;
        }

        v149 = v201;
        *v201 = v137;
        v150 = v207;
        sub_22461C938(v140, v149 + *(v207 + 20));
        *(v149 + *(v150 + 24)) = v148;
        sub_22461C9A8(v149, v205, type metadata accessor for TrackingMetrics.DetectedSubjectInfo);
        v59 = v140;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v133 = sub_22452B3DC(0, v133[2] + 1, 1, v133);
        }

        v129 = v203;
        v152 = v133[2];
        v151 = v133[3];
        if (v152 >= v151 >> 1)
        {
          v133 = sub_22452B3DC(v151 > 1, v152 + 1, 1, v133);
        }

        v133[2] = v152 + 1;
        sub_22461C9A8(v205, v133 + ((*(v206 + 80) + 32) & ~*(v206 + 80)) + *(v206 + 72) * v152, type metadata accessor for TrackingMetrics.DetectedSubjectInfo);
        ++v132;
        v130 = v202;
        if (v134 == i)
        {
          goto LABEL_102;
        }
      }

      if (v132 >= *(v130 + 16))
      {
        goto LABEL_99;
      }

      v134 = v132 + 1;
      if (!__OFADD__(v132, 1))
      {
        goto LABEL_79;
      }

LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      ;
    }

    v133 = MEMORY[0x277D84F90];
LABEL_102:

    v127 = v196;
  }

  else
  {
    v133 = MEMORY[0x277D84F90];
  }

  *(v127 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_detectedBodies) = v133;

  v153 = sub_224627258();
  if (v153)
  {
    v154 = v153;
    v155 = v153 & 0xFFFFFFFFFFFFFF8;
    if (v153 >> 62)
    {
      goto LABEL_122;
    }

    for (j = *((v153 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_224628478())
    {
      v157 = 0;
      v208 = v154 & 0xC000000000000001;
      v158 = MEMORY[0x277D84F90];
      v206 = j;
      v207 = v154;
      v159 = v200;
      while (v208)
      {
        MEMORY[0x22AA517F0](v157, v154);
        v160 = v157 + 1;
        if (__OFADD__(v157, 1))
        {
          goto LABEL_120;
        }

LABEL_110:
        v161 = sub_224627948();
        v162 = v204;
        sub_224627938();
        sub_2246278A8();
        sub_2246277F8();

        v163 = v210;
        sub_2246278E8();
        sub_2246277E8();
        v165 = v164;

        sub_2246278F8();
        sub_2246277E8();
        v167 = v166;

        sub_2246278D8();
        sub_2246277E8();
        v169 = v168;

        *v162 = v161;
        *(v162 + v159[6]) = v163;
        *(v162 + v159[7]) = v165;
        *(v162 + v159[8]) = v167;
        *(v162 + v159[9]) = v169;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v158 = sub_22452B3B4(0, v158[2] + 1, 1, v158);
        }

        v170 = v206;
        v172 = v158[2];
        v171 = v158[3];
        if (v172 >= v171 >> 1)
        {
          v158 = sub_22452B3B4(v171 > 1, v172 + 1, 1, v158);
        }

        v158[2] = v172 + 1;
        sub_22461C9A8(v204, v158 + ((*(v199 + 80) + 32) & ~*(v199 + 80)) + *(v199 + 72) * v172, type metadata accessor for TrackingMetrics.TrackedPersonInfo);
        ++v157;
        v154 = v207;
        if (v160 == v170)
        {
          goto LABEL_124;
        }
      }

      if (v157 >= *(v155 + 16))
      {
        goto LABEL_121;
      }

      v160 = v157 + 1;
      if (!__OFADD__(v157, 1))
      {
        goto LABEL_110;
      }

LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      ;
    }

    v158 = MEMORY[0x277D84F90];
LABEL_124:

    v127 = v196;
  }

  else
  {
    v158 = MEMORY[0x277D84F90];
  }

  *(v127 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_trackedPeople) = v158;
}

uint64_t sub_22461B810()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  v2 = sub_224627CB8();
  [v1 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_startTime;
  v4 = *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_startTime);
  v5 = *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_endTime);
  v6 = 0.0;
  if (v4 != v5)
  {
    if (v5 < v4)
    {
      v7 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
      [v7 timeIntervalSince1970];
      v5 = v8;

      v4 = *(v0 + v3);
    }

    v6 = v5 - v4;
  }

  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  [v1 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  [v1 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  [v1 __swift_setObject_forKeyedSubscript_];

  result = swift_unknownObjectRelease();
  v13 = OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_bodyInFrame;
  v14 = *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_bodyInFrame);
  v15 = OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_faceInFrame;
  v16 = *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_faceInFrame);
  v17 = __CFADD__(v14, v16);
  v18 = v14 + v16;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v19 = *(v0 + OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_nothingInFrame);
    if (!__CFADD__(v18, v19))
    {
      v51 = OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_nothingInFrame;
      v20 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
      [v1 __swift_setObject_forKeyedSubscript_];

      swift_unknownObjectRelease();
      v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
      [v1 &selRef:v21 setTimestamp:sub_2246286C8()];

      swift_unknownObjectRelease();
      v22 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
      [v1 &selRef:v22 setTimestamp:sub_2246286C8()];

      swift_unknownObjectRelease();
      v23 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
      [v1 &selRef:v23 setTimestamp:sub_2246286C8()];

      swift_unknownObjectRelease();
      sub_2246198C0(0);
      v25 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      [v1 &selRef:v25 setTimestamp:sub_2246286C8()];

      swift_unknownObjectRelease();
      sub_2246198C0(1uLL);
      v27 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      [v1 &selRef:v27 setTimestamp:sub_2246286C8()];

      swift_unknownObjectRelease();
      sub_224619B34();
      v29 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      [v1 &selRef:v29 setTimestamp:sub_2246286C8()];

      swift_unknownObjectRelease();
      sub_224619BB0();
      v31 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      [v1 &selRef:v31 setTimestamp:sub_2246286C8()];

      swift_unknownObjectRelease();
      sub_224619C2C();
      v33 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      [v1 &selRef:v33 setTimestamp:sub_2246286C8()];

      swift_unknownObjectRelease();
      sub_224619CA8();
      v35 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      [v1 &selRef:v35 setTimestamp:sub_2246286C8()];

      swift_unknownObjectRelease();
      sub_224619D24(0);
      v37 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      [v1 &selRef:v37 setTimestamp:sub_2246286C8()];

      swift_unknownObjectRelease();
      sub_224619D24(0);
      v39 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      [v1 &selRef:v39 setTimestamp:sub_2246286C8()];

      swift_unknownObjectRelease();
      v40 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
      [v40 timeIntervalSince1970];
      v42 = v41;

      v43 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      [v1 __swift_setObject_forKeyedSubscript_];

      swift_unknownObjectRelease();

      v44 = sub_224627CB8();

      [v1 __swift_setObject_forKeyedSubscript_];

      swift_unknownObjectRelease();

      v45 = sub_224627CB8();

      [v1 __swift_setObject_forKeyedSubscript_];

      swift_unknownObjectRelease();
      v46 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      [v1 __swift_setObject_forKeyedSubscript_];

      swift_unknownObjectRelease();
      v47 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      [v1 __swift_setObject_forKeyedSubscript_];

      swift_unknownObjectRelease();
      sub_224619F04();
      v48 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
      [v48 timeIntervalSince1970];
      v50 = v49;

      *(v0 + v3) = v50;
      return v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22461C2EC()
{

  v1 = OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_trackingMode;
  v2 = sub_2246275B8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_pipelineMode;
  v4 = sub_224627318();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_logger;
  v6 = sub_224627B78();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC11DockKitCore15TrackingMetrics_lastPrintTime;
  v8 = sub_224627118();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t sub_22461C500()
{
  sub_22461C2EC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22461C580()
{
  result = sub_2246275B8();
  if (v1 <= 0x3F)
  {
    result = sub_224627318();
    if (v2 <= 0x3F)
    {
      result = sub_224627B78();
      if (v3 <= 0x3F)
      {
        result = sub_224627118();
        if (v4 <= 0x3F)
        {
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_22461C78C()
{
  result = sub_224627878();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22461C864()
{
  sub_22461C8E0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_22461C8E0()
{
  if (!qword_27D0CA1A8)
  {
    sub_224627878();
    v0 = sub_224628228();
    if (!v1)
    {
      atomic_store(v0, &qword_27D0CA1A8);
    }
  }
}

uint64_t sub_22461C938(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA190);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22461C9A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_22461CA24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = v1 - 1;

    if (v1 == 1)
    {
      v4 = a1;
LABEL_24:

      v12 = v4;
    }

    else
    {
      v4 = a1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_55;
      }

      if (v1 >= 9)
      {
        goto LABEL_56;
      }

LABEL_5:
      v5 = 0;
LABEL_6:
      v6 = 8 * v5;
      v7 = (8 * v5 + a1 + 40);
      v8 = ~v5 + v1;
      v9 = &v4[v6 + 32];
      do
      {
        *v9++ = *v7 - *(v7 - 1);
        ++v7;
        --v8;
      }

      while (v8);
      while (1)
      {
        v3 = *(v4 + 2);
        if (v3 >= 2)
        {
          v10 = *&v4[8 * v3 + 16];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_22461CA10(v4);
          }

          if (v3 > *(v4 + 2))
          {
            __break(1u);
            return;
          }

          *&v4[8 * v3 + 24] = v10;
          v3 = *(v4 + 2);
        }

        if (v3)
        {
          break;
        }

        __break(1u);
LABEL_55:
        v4 = sub_22461CA10(a1);
        if (v1 < 9)
        {
          goto LABEL_5;
        }

LABEL_56:
        v5 = 0;
        if (&v4[-a1 - 8] >= 0x20 && &v4[-a1] >= 0x20)
        {
          v5 = v3 & 0xFFFFFFFFFFFFFFFCLL;
          v41 = (v4 + 48);
          v42 = (a1 + 56);
          v43 = v3 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v44 = vsubq_f64(*v42, *(v42 - 8));
            v41[-1] = vsubq_f64(v42[-1], *(v42 - 24));
            *v41 = v44;
            v41 += 2;
            v42 += 2;
            v43 -= 4;
          }

          while (v43);
          if (v3 == v5)
          {
            continue;
          }
        }

        goto LABEL_6;
      }

      v11 = v3 - 1;
      if (v3 == 1)
      {
        goto LABEL_24;
      }

      v12 = v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_63;
      }

      if (v3 > 8)
      {
        goto LABEL_64;
      }

LABEL_17:
      v13 = 0;
LABEL_18:
      v14 = 8 * v13;
      v15 = &v4[8 * v13 + 40];
      v16 = ~v13 + v3;
      v17 = &v12[v14 + 32];
      do
      {
        *v17++ = *v15 - *(v15 - 1);
        ++v15;
        --v16;
      }

      while (v16);
      while (1)
      {
        v3 = *(v12 + 2);
        if (v3 < 2)
        {
          break;
        }

        v18 = *&v12[8 * v3 + 16];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_22461CA10(v12);
        }

        if (v3 <= *(v12 + 2))
        {
          *&v12[8 * v3 + 24] = v18;
          break;
        }

        __break(1u);
LABEL_63:
        v12 = sub_22461CA10(v4);
        if (v3 <= 8)
        {
          goto LABEL_17;
        }

LABEL_64:
        v13 = 0;
        if ((v12 - v4 - 8) >= 0x20 && (v12 - v4) >= 0x20)
        {
          v13 = v11 & 0xFFFFFFFFFFFFFFFCLL;
          v45 = (v12 + 48);
          v46 = (v4 + 56);
          v47 = v11 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v48 = vsubq_f64(*v46, *(v46 - 8));
            v45[-1] = vsubq_f64(v46[-1], *(v46 - 24));
            *v45 = v48;
            v45 += 2;
            v46 += 2;
            v47 -= 4;
          }

          while (v47);
          if (v11 == v13)
          {
            continue;
          }
        }

        goto LABEL_18;
      }
    }

    v19 = MEMORY[0x277D84F90];
    v49 = MEMORY[0x277D84F90];
    sub_22455C700(0, v1, 0);
    v20 = 0;
    v21 = v49;
    v22 = *(v49 + 16);
    do
    {
      v23 = *(a1 + 32 + 8 * v20);
      v50 = v21;
      v24 = *(v21 + 24);
      if (v22 + v20 >= v24 >> 1)
      {
        sub_22455C700((v24 > 1), v22 + v20 + 1, 1);
        v21 = v50;
      }

      v25 = v20 + 1;
      *(v21 + 16) = v22 + v20 + 1;
      *(v21 + 8 * v22 + 32 + 8 * v20) = fabs(v23);
      v20 = v25;
    }

    while (v1 != v25);
    v26 = *(v21 + 32);
    v27 = v22 + v25 - 1;
    if (v27)
    {
      for (i = 0; i != v27; ++i)
      {
        if (v26 < *(v21 + 40 + 8 * i))
        {
          v26 = *(v21 + 40 + 8 * i);
        }
      }
    }

    v29 = *(v12 + 2);
    if (v29)
    {
      sub_22455C700(0, v29, 0);
      v30 = (v12 + 32);
      v31 = *(v19 + 16);
      do
      {
        v32 = *v30;
        v33 = *(v19 + 24);
        v34 = v31 + 1;
        if (v31 >= v33 >> 1)
        {
          sub_22455C700((v33 > 1), v31 + 1, 1);
        }

        *(v19 + 16) = v34;
        *(v19 + 8 * v31 + 32) = v32 * v32;
        ++v30;
        ++v31;
        --v29;
      }

      while (v29);
    }

    else
    {
      v34 = *(v19 + 16);
      if (!v34)
      {
        v36 = 0.0;
        goto LABEL_52;
      }
    }

    if (v34 > 3)
    {
      v35 = v34 & 0xFFFFFFFFFFFFFFFCLL;
      v37 = (v19 + 48);
      v36 = 0.0;
      v38 = v34 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v36 = v36 + *(v37 - 2) + *(v37 - 1) + *v37 + v37[1];
        v37 += 4;
        v38 -= 4;
      }

      while (v38);
      if (v34 == v35)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v35 = 0;
      v36 = 0.0;
    }

    v39 = v34 - v35;
    v40 = 8 * v35 + 32;
    do
    {
      v36 = v36 + *(v19 + v40);
      v40 += 8;
      --v39;
    }

    while (v39);
LABEL_52:

    log(1.0 / (v26 * v26) * v36);
  }
}

uint64_t sub_22461CEE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22461CF50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22461CFC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id DockCoreObservation.__allocating_init(identifier:type:X:Y:width:height:trackerID:groupId:yawAngle:pitchAngle:confidence:printConfidence:newTrack:modality:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, char a14, uint64_t a15, char a16, char a17, uint64_t a18, char a19)
{
  v31 = objc_allocWithZone(v19);
  *&v31[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_identifier] = a1;
  *&v31[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_type] = a2;
  *&v31[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_X] = a9;
  *&v31[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_Y] = a10;
  *&v31[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_width] = a11;
  *&v31[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_height] = a12;
  *&v31[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_trackerID] = a3;
  v32 = &v31[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_groupId];
  *v32 = a4;
  v32[8] = a5 & 1;
  v33 = &v31[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_yawAngle];
  *v33 = a6;
  v33[8] = a7 & 1;
  v34 = &v31[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_pitchAngle];
  *v34 = a8;
  v34[8] = a14 & 1;
  *&v31[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_confidence] = a13;
  v35 = &v31[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_printConfidence];
  *v35 = a15;
  v35[8] = a16 & 1;
  v31[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_newTrack] = a17;
  v36 = &v31[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_modality];
  *v36 = a18;
  v36[8] = a19 & 1;
  v40.receiver = v31;
  v40.super_class = v19;
  return objc_msgSendSuper2(&v40, sel_init);
}

DockKitCore::CameraOrientationInternal_optional __swiftcall CameraOrientationInternal.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

id DockCoreObservation.init(identifier:type:X:Y:width:height:trackerID:groupId:yawAngle:pitchAngle:confidence:printConfidence:newTrack:modality:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, char a14, uint64_t a15, char a16, char a17, uint64_t a18, char a19)
{
  *&v19[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_identifier] = a1;
  *&v19[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_type] = a2;
  *&v19[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_X] = a9;
  *&v19[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_Y] = a10;
  *&v19[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_width] = a11;
  *&v19[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_height] = a12;
  *&v19[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_trackerID] = a3;
  v20 = &v19[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_groupId];
  *v20 = a4;
  v20[8] = a5 & 1;
  v21 = &v19[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_yawAngle];
  *v21 = a6;
  v21[8] = a7 & 1;
  v22 = &v19[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_pitchAngle];
  *v22 = a8;
  v22[8] = a14 & 1;
  *&v19[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_confidence] = a13;
  v23 = &v19[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_printConfidence];
  *v23 = a15;
  v23[8] = a16 & 1;
  v19[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_newTrack] = a17;
  v24 = &v19[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_modality];
  *v24 = a18;
  v24[8] = a19 & 1;
  v26.receiver = v19;
  v26.super_class = type metadata accessor for DockCoreObservation();
  return objc_msgSendSuper2(&v26, sel_init);
}

void sub_22461D514(void *a1)
{
  v3 = sub_2246286C8();
  v4 = sub_224627CB8();
  [a1 encodeObject:v3 forKey:v4];
  swift_unknownObjectRelease();

  v5 = *(v1 + OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_identifier);
  v6 = sub_224627CB8();
  [a1 encodeInteger:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_X);
  v8 = sub_224627CB8();
  [a1 encodeDouble:v8 forKey:v7];

  v9 = *(v1 + OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_Y);
  v10 = sub_224627CB8();
  [a1 encodeDouble:v10 forKey:v9];

  v11 = *(v1 + OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_width);
  v12 = sub_224627CB8();
  [a1 encodeDouble:v12 forKey:v11];

  v13 = *(v1 + OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_height);
  v14 = sub_224627CB8();
  [a1 encodeDouble:v14 forKey:v13];

  v15 = *(v1 + OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_trackerID);
  v16 = sub_224627CB8();
  [a1 encodeInteger:v15 forKey:v16];

  if (*(v1 + OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_groupId + 8))
  {
    v17 = 0;
  }

  else
  {
    v17 = sub_224628008();
  }

  v18 = sub_224627CB8();
  [a1 encodeObject:v17 forKey:v18];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_yawAngle + 8))
  {
    v19 = 0;
  }

  else
  {
    v19 = sub_224627FA8();
  }

  v20 = sub_224627CB8();
  [a1 encodeObject:v19 forKey:v20];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_pitchAngle + 8))
  {
    v21 = 0;
  }

  else
  {
    v21 = sub_224627FA8();
  }

  v22 = sub_224627CB8();
  [a1 encodeObject:v21 forKey:v22];
  swift_unknownObjectRelease();

  v23 = *(v1 + OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_confidence);
  v24 = sub_224627CB8();
  [a1 encodeDouble:v24 forKey:v23];

  if (*(v1 + OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_printConfidence + 8))
  {
    v25 = 0;
  }

  else
  {
    v25 = sub_224627FA8();
  }

  v26 = sub_224627CB8();
  [a1 encodeObject:v25 forKey:v26];
  swift_unknownObjectRelease();

  v27 = *(v1 + OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_newTrack);
  v28 = sub_224627CB8();
  [a1 encodeBool:v27 forKey:v28];

  if (*(v1 + OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_modality + 8))
  {
    v29 = 0;
  }

  else
  {
    v29 = sub_224628008();
  }

  v30 = sub_224627CB8();
  [a1 encodeObject:v29 forKey:v30];
  swift_unknownObjectRelease();
}

id DockCoreObservation.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_22461F2C8(a1);

  return v4;
}

id DockCoreObservation.init(coder:)(void *a1)
{
  v2 = sub_22461F2C8(a1);

  return v2;
}

void sub_22461DCB8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_portType);
  *(v1 + OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_portType) = a1;
}

void *sub_22461DD6C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_intrinsics);
  v2 = v1;
  return v1;
}

void sub_22461DDE4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_intrinsics);
  *(v1 + OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_intrinsics) = a1;
}

id sub_22461DF10(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();

  v4 = sub_224627EB8();

  return v4;
}

uint64_t sub_22461DFA0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void *a5)
{
  a4();
  *(a1 + *a5) = sub_224627ED8();
}

id FollowerMetadata.init()()
{
  *&v0[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_timestamp] = 0;
  v1 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_observations] = MEMORY[0x277D84F90];
  v2 = OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_portType;
  sub_22450950C(0, &unk_27D0C8D40);
  *&v0[v2] = sub_224628208();
  *&v0[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_orientation] = 0;
  *&v0[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_intrinsics] = 0;
  *&v0[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_referenceWidth] = 0;
  *&v0[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_referenceHeight] = 0;
  *&v0[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_focusObservation] = v1;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for FollowerMetadata();
  return objc_msgSendSuper2(&v4, sel_init);
}

id FollowerMetadata.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_22461F700(a1);

  return v4;
}

id FollowerMetadata.init(coder:)(void *a1)
{
  v2 = sub_22461F700(a1);

  return v2;
}

void sub_22461E200(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_timestamp);
  v4 = sub_224627CB8();
  [a1 encodeDouble:v4 forKey:v3];

  type metadata accessor for DockCoreObservation();

  v5 = sub_224627EB8();

  v6 = sub_224627CB8();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_portType);
  v8 = sub_224627CB8();
  [a1 encodeObject:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_orientation);
  v10 = sub_224627CB8();
  [a1 encodeInt32:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_intrinsics);
  v12 = sub_224627CB8();
  [a1 encodeObject:v11 forKey:v12];

  LODWORD(v3) = *(v1 + OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_referenceWidth);
  v13 = sub_224627CB8();
  LODWORD(v14) = LODWORD(v3);
  [a1 encodeFloat:v13 forKey:v14];

  LODWORD(v3) = *(v1 + OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_referenceHeight);
  v15 = sub_224627CB8();
  LODWORD(v16) = LODWORD(v3);
  [a1 encodeFloat:v15 forKey:v16];

  type metadata accessor for DockKitFocusObservation();

  v17 = sub_224627EB8();

  v18 = sub_224627CB8();
  [a1 encodeObject:v17 forKey:v18];
}

unint64_t sub_22461E694@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22461F294(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_22461E84C()
{
  *&v0[OBJC_IVAR____TtC11DockKitCore17TrackerObjectData_tracks] = MEMORY[0x277D84F90];
  v1 = OBJC_IVAR____TtC11DockKitCore17TrackerObjectData_numFaces;
  __asm { FMOV            V0.2D, #-1.0 }

  *&v0[OBJC_IVAR____TtC11DockKitCore17TrackerObjectData_facePoint] = _Q0;
  *&v0[OBJC_IVAR____TtC11DockKitCore17TrackerObjectData_bodyPoint] = _Q0;
  v7 = OBJC_IVAR____TtC11DockKitCore17TrackerObjectData_numBodies;
  v8 = &v0[OBJC_IVAR____TtC11DockKitCore17TrackerObjectData_faceBox];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v9 = &v0[OBJC_IVAR____TtC11DockKitCore17TrackerObjectData_bodyBox];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *&v0[OBJC_IVAR____TtC11DockKitCore17TrackerObjectData_direction] = 0;
  *&v0[OBJC_IVAR____TtC11DockKitCore17TrackerObjectData_pitch] = 0;
  *&v0[v1] = 0;
  *&v0[v7] = 0;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for TrackerObjectData();
  return objc_msgSendSuper2(&v11, sel_init);
}

id DockKitFocusObservation.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_22461FC1C(a1);

  return v4;
}

id DockKitFocusObservation.init(coder:)(void *a1)
{
  v2 = sub_22461FC1C(a1);

  return v2;
}

void sub_22461ED64(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_identifier);
  v4 = sub_224627CB8();
  [a1 encodeInt32:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_x);
  v6 = sub_224627CB8();
  [a1 encodeDouble:v6 forKey:v5];

  v7 = *(v1 + OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_y);
  v8 = sub_224627CB8();
  [a1 encodeDouble:v8 forKey:v7];

  v9 = *(v1 + OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_width);
  v10 = sub_224627CB8();
  [a1 encodeDouble:v10 forKey:v9];

  v11 = *(v1 + OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_height);
  v12 = sub_224627CB8();
  [a1 encodeDouble:v12 forKey:v11];

  v13 = *(v1 + OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_focusStrong);
  v14 = sub_224627CB8();
  [a1 encodeBool:v13 forKey:v14];

  v15 = sub_2246286C8();
  v16 = sub_224627CB8();
  [a1 encodeObject:v15 forKey:v16];
  swift_unknownObjectRelease();
}

id DockKitFocusObservation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_22461F084(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t CameraOrientationInternal.description.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x776F442065636146;
    if (v1 != 6)
    {
      v5 = 0x6574636572726F43;
    }

    v6 = 0xD000000000000011;
    if (v1 != 4)
    {
      v6 = 0x70552065636146;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x6E776F6E6B6E55;
    v3 = 0xD000000000000016;
    if (v1 != 2)
    {
      v3 = 0xD000000000000010;
    }

    if (*v0)
    {
      v2 = 0x7469617274726F50;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

unint64_t sub_22461F294(unint64_t result)
{
  if (result > 7)
  {
    return 0;
  }

  return result;
}

id sub_22461F2C8(void *a1)
{
  v3 = sub_224627CB8();
  v4 = [a1 decodeIntegerForKey_];

  v5 = 4;
  if (v4 < 4)
  {
    v5 = v4;
  }

  *&v1[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_type] = v5;
  v6 = sub_224627CB8();
  v7 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_identifier] = v7;
  v8 = sub_224627CB8();
  [a1 decodeDoubleForKey_];
  v10 = v9;

  *&v1[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_X] = v10;
  v11 = sub_224627CB8();
  [a1 decodeDoubleForKey_];
  v13 = v12;

  *&v1[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_Y] = v13;
  v14 = sub_224627CB8();
  [a1 decodeDoubleForKey_];
  v16 = v15;

  *&v1[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_width] = v16;
  v17 = sub_224627CB8();
  [a1 decodeDoubleForKey_];
  v19 = v18;

  *&v1[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_height] = v19;
  v20 = sub_224627CB8();
  v21 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_trackerID] = v21;
  v22 = sub_224627CB8();
  v23 = [a1 decodeIntegerForKey_];

  v24 = &v1[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_groupId];
  *v24 = v23;
  v24[8] = 0;
  v25 = sub_224627CB8();
  [a1 decodeDoubleForKey_];
  v27 = v26;

  v28 = &v1[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_yawAngle];
  *v28 = v27;
  v28[8] = 0;
  v29 = sub_224627CB8();
  [a1 decodeDoubleForKey_];
  v31 = v30;

  v32 = &v1[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_pitchAngle];
  *v32 = v31;
  v32[8] = 0;
  v33 = sub_224627CB8();
  [a1 decodeDoubleForKey_];
  v35 = v34;

  *&v1[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_confidence] = v35;
  v36 = sub_224627CB8();
  [a1 decodeDoubleForKey_];
  v38 = v37;

  v39 = &v1[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_printConfidence];
  *v39 = v38;
  v39[8] = 0;
  v40 = sub_224627CB8();
  LOBYTE(v23) = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_newTrack] = v23;
  v41 = sub_224627CB8();
  v42 = [a1 decodeIntegerForKey_];

  v43 = &v1[OBJC_IVAR____TtC11DockKitCore19DockCoreObservation_modality];
  *v43 = v42;
  v43[8] = 0;
  v45.receiver = v1;
  v45.super_class = type metadata accessor for DockCoreObservation();
  return objc_msgSendSuper2(&v45, sel_init);
}

id sub_22461F700(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_timestamp;
  *&v1[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_timestamp] = 0;
  v5 = OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_observations;
  v6 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_observations] = MEMORY[0x277D84F90];
  v7 = OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_portType;
  sub_22450950C(0, &unk_27D0C8D40);
  *&v1[v7] = sub_224628208();
  v8 = OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_orientation;
  *&v1[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_orientation] = 0;
  v9 = OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_intrinsics;
  *&v1[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_intrinsics] = 0;
  v33 = OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_referenceWidth;
  *&v1[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_referenceWidth] = 0;
  v34 = OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_referenceHeight;
  *&v1[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_referenceHeight] = 0;
  v35 = OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_focusObservation;
  *&v1[OBJC_IVAR____TtC11DockKitCore16FollowerMetadata_focusObservation] = v6;
  v10 = sub_224627CB8();
  [a1 decodeDoubleForKey_];
  v12 = v11;

  *&v2[v4] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9690);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22462F9E0;
  v14 = sub_22450950C(0, &qword_27D0C9FB0);
  *(v13 + 32) = v14;
  *(v13 + 40) = type metadata accessor for DockCoreObservation();
  sub_2246281B8();

  if (v39)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA368);
    if (swift_dynamicCast())
    {
      v15 = v36;
      goto LABEL_6;
    }
  }

  else
  {
    sub_2245B4E00(v38);
  }

  v15 = MEMORY[0x277D84F90];
LABEL_6:
  *&v2[v5] = v15;

  v16 = sub_2246281A8();
  if (!v16)
  {
    v16 = sub_224628208();
  }

  v17 = *&v2[v7];
  *&v2[v7] = v16;

  v18 = sub_224627CB8();
  v19 = [a1 decodeInt32ForKey_];

  *&v2[v8] = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_224631950;
  *(v20 + 32) = v14;
  *(v20 + 40) = sub_22450950C(0, &unk_27D0C89A0);
  *(v20 + 48) = sub_22450950C(0, &qword_27D0CA358);
  sub_2246281B8();

  if (v39)
  {
    v21 = swift_dynamicCast();
    v22 = v36;
    if (!v21)
    {
      v22 = 0;
    }
  }

  else
  {
    sub_2245B4E00(v38);
    v22 = 0;
  }

  v23 = *&v2[v9];
  *&v2[v9] = v22;

  v24 = sub_224627CB8();
  [a1 decodeFloatForKey_];
  v26 = v25;

  *&v2[v33] = v26;
  v27 = sub_224627CB8();
  [a1 decodeFloatForKey_];
  v29 = v28;

  *&v2[v34] = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_22462F9E0;
  *(v30 + 32) = v14;
  *(v30 + 40) = type metadata accessor for DockKitFocusObservation();
  sub_2246281B8();

  if (!v39)
  {
    sub_2245B4E00(v38);
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA360);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v31 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v31 = v36;
LABEL_18:
  *&v2[v35] = v31;

  v37.receiver = v2;
  v37.super_class = type metadata accessor for FollowerMetadata();
  return objc_msgSendSuper2(&v37, sel_init);
}

id sub_22461FC1C(void *a1)
{
  v3 = sub_224627CB8();
  v4 = [a1 decodeInt32ForKey_];

  *&v1[OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_identifier] = v4;
  v5 = sub_224627CB8();
  [a1 decodeDoubleForKey_];
  v7 = v6;

  *&v1[OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_x] = v7;
  v8 = sub_224627CB8();
  [a1 decodeDoubleForKey_];
  v10 = v9;

  *&v1[OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_y] = v10;
  v11 = sub_224627CB8();
  [a1 decodeDoubleForKey_];
  v13 = v12;

  *&v1[OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_width] = v13;
  v14 = sub_224627CB8();
  [a1 decodeDoubleForKey_];
  v16 = v15;

  *&v1[OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_height] = v16;
  v17 = sub_224627CB8();
  LOBYTE(v4) = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_focusStrong] = v4;
  v18 = sub_224627CB8();
  v19 = [a1 decodeIntegerForKey_];

  v20 = 4;
  if (v19 < 4)
  {
    v20 = v19;
  }

  *&v1[OBJC_IVAR____TtC11DockKitCore23DockKitFocusObservation_type] = v20;
  v22.receiver = v1;
  v22.super_class = type metadata accessor for DockKitFocusObservation();
  return objc_msgSendSuper2(&v22, sel_init);
}

unint64_t sub_22461FE30()
{
  result = qword_27D0CA2C0;
  if (!qword_27D0CA2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA2C0);
  }

  return result;
}

unint64_t sub_22461FE88()
{
  result = qword_27D0CA2C8;
  if (!qword_27D0CA2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA2C8);
  }

  return result;
}

unint64_t sub_22461FEE0()
{
  result = qword_27D0CA2D0;
  if (!qword_27D0CA2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA2D0);
  }

  return result;
}

unint64_t sub_22461FF38()
{
  result = qword_27D0CA2D8;
  if (!qword_27D0CA2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA2D8);
  }

  return result;
}

unint64_t sub_22461FF90()
{
  result = qword_27D0CA2E0;
  if (!qword_27D0CA2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA2E0);
  }

  return result;
}

unint64_t sub_22461FFE8()
{
  result = qword_27D0CA2E8;
  if (!qword_27D0CA2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA2E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CameraOrientationInternal(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CameraOrientationInternal(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_224620D2C()
{
  result = qword_27D0CA338;
  if (!qword_27D0CA338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA338);
  }

  return result;
}

unint64_t sub_224620D80()
{
  result = qword_27D0CA340;
  if (!qword_27D0CA340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA340);
  }

  return result;
}

unint64_t sub_224620DD4()
{
  result = qword_27D0CA348;
  if (!qword_27D0CA348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA348);
  }

  return result;
}

unint64_t sub_224620E28()
{
  result = qword_27D0CA350;
  if (!qword_27D0CA350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA350);
  }

  return result;
}

uint64_t DockCoreAccessoryType.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      return 0x676E696B63617254;
    case 3:
      return 1801678669;
    case 2:
      return 0x6D6F74737543;
  }

  result = sub_2246286B8();
  __break(1u);
  return result;
}

uint64_t DockCoreAccessoryType.init(rawValue:)(uint64_t result)
{
  if ((result - 4) < 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  return result;
}

id Orientation.__allocating_init(yaw:pitch:roll:)(double a1, double a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9670);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *&v7[v8] = v9;
  v10 = OBJC_IVAR____TtC11DockKitCore11Orientation__pitch;
  v11 = OBJC_IVAR____TtC11DockKitCore11Orientation__roll;
  *&v7[OBJC_IVAR____TtC11DockKitCore11Orientation__yaw] = a1;
  *&v7[v10] = a2;
  *&v7[v11] = a3;
  v13.receiver = v7;
  v13.super_class = v3;
  return objc_msgSendSuper2(&v13, sel_init);
}

unint64_t DockState.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

id Vector3.init()()
{
  *&v0[OBJC_IVAR____TtC11DockKitCore7Vector3_x] = 0;
  *&v0[OBJC_IVAR____TtC11DockKitCore7Vector3_y] = 0;
  *&v0[OBJC_IVAR____TtC11DockKitCore7Vector3_z] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Vector3();
  return objc_msgSendSuper2(&v2, sel_init);
}

id Vector3.__allocating_init(x:y:z:)(double a1, double a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC11DockKitCore7Vector3_y;
  v9 = OBJC_IVAR____TtC11DockKitCore7Vector3_z;
  *&v7[OBJC_IVAR____TtC11DockKitCore7Vector3_x] = a1;
  *&v7[v8] = a2;
  *&v7[v9] = a3;
  v11.receiver = v7;
  v11.super_class = v3;
  return objc_msgSendSuper2(&v11, sel_init);
}

id Vector3.init(x:y:z:)(double a1, double a2, double a3)
{
  v4 = OBJC_IVAR____TtC11DockKitCore7Vector3_y;
  v5 = OBJC_IVAR____TtC11DockKitCore7Vector3_z;
  *&v3[OBJC_IVAR____TtC11DockKitCore7Vector3_x] = a1;
  *&v3[v4] = a2;
  *&v3[v5] = a3;
  v7.receiver = v3;
  v7.super_class = type metadata accessor for Vector3();
  return objc_msgSendSuper2(&v7, sel_init);
}

BOOL sub_224621208(uint64_t a1)
{
  sub_22457C960(a1, v6);
  if (v7)
  {
    type metadata accessor for Vector3();
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR____TtC11DockKitCore7Vector3_x) == *&v5[OBJC_IVAR____TtC11DockKitCore7Vector3_x] && *(v1 + OBJC_IVAR____TtC11DockKitCore7Vector3_y) == *&v5[OBJC_IVAR____TtC11DockKitCore7Vector3_y])
      {
        v2 = *(v1 + OBJC_IVAR____TtC11DockKitCore7Vector3_z);
        v3 = *&v5[OBJC_IVAR____TtC11DockKitCore7Vector3_z];

        return v2 == v3;
      }
    }
  }

  else
  {
    sub_2245B4E00(v6);
  }

  return 0;
}

uint64_t sub_224621308()
{
  sub_2246287D8();
  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore7Vector3_x);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x22AA51C10](*&v1);
  v2 = *(v0 + OBJC_IVAR____TtC11DockKitCore7Vector3_y);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x22AA51C10](*&v2);
  v3 = *(v0 + OBJC_IVAR____TtC11DockKitCore7Vector3_z);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x22AA51C10](*&v3);
  return sub_2246287B8();
}

uint64_t (*sub_2246213EC(void *a1))()
{
  v3 = OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);

  v5 = OBJC_IVAR____TtC11DockKitCore11Orientation__yaw;
  a1[3] = OBJC_IVAR____TtC11DockKitCore11Orientation__yaw;
  v6 = *(v1 + v5);
  v7 = *(v1 + v3);

  os_unfair_lock_unlock(v7 + 4);

  *a1 = v6;
  return sub_224519244;
}

uint64_t (*sub_2246214B8(void *a1))()
{
  v3 = OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);

  v5 = OBJC_IVAR____TtC11DockKitCore11Orientation__pitch;
  a1[3] = OBJC_IVAR____TtC11DockKitCore11Orientation__pitch;
  v6 = *(v1 + v5);
  v7 = *(v1 + v3);

  os_unfair_lock_unlock(v7 + 4);

  *a1 = v6;
  return sub_2245354DC;
}

uint64_t (*sub_224621584(void *a1))()
{
  v3 = OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);

  v5 = OBJC_IVAR____TtC11DockKitCore11Orientation__roll;
  a1[3] = OBJC_IVAR____TtC11DockKitCore11Orientation__roll;
  v6 = *(v1 + v5);
  v7 = *(v1 + v3);

  os_unfair_lock_unlock(v7 + 4);

  *a1 = v6;
  return sub_2245354DC;
}

id Orientation.init()()
{
  v1 = OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9670);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *&v0[v1] = v2;
  *&v0[OBJC_IVAR____TtC11DockKitCore11Orientation__yaw] = 0;
  *&v0[OBJC_IVAR____TtC11DockKitCore11Orientation__pitch] = 0;
  *&v0[OBJC_IVAR____TtC11DockKitCore11Orientation__roll] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for Orientation();
  return objc_msgSendSuper2(&v4, sel_init);
}

id Orientation.init(yaw:pitch:roll:)(double a1, double a2, double a3)
{
  v7 = OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9670);
  v8 = swift_allocObject();
  *&v3[v7] = v8;
  v9 = OBJC_IVAR____TtC11DockKitCore11Orientation__pitch;
  v10 = OBJC_IVAR____TtC11DockKitCore11Orientation__roll;
  *&v3[OBJC_IVAR____TtC11DockKitCore11Orientation__yaw] = a1;
  *(v8 + 16) = 0;
  *&v3[v9] = a2;
  *&v3[v10] = a3;
  v12.receiver = v3;
  v12.super_class = type metadata accessor for Orientation();
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_224621840@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for Orientation();
  v4 = [objc_allocWithZone(v3) init];
  v5 = OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock;
  v6 = *(v1 + OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock);

  os_unfair_lock_lock(v6 + 4);

  v7 = *(v1 + OBJC_IVAR____TtC11DockKitCore11Orientation__yaw);
  v8 = *(v1 + v5);

  os_unfair_lock_unlock(v8 + 4);

  v9 = OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock;
  v10 = *&v4[OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock];

  os_unfair_lock_lock(v10 + 4);

  *&v4[OBJC_IVAR____TtC11DockKitCore11Orientation__yaw] = v7;
  v11 = *&v4[v9];

  os_unfair_lock_unlock(v11 + 4);

  v12 = *(v1 + v5);

  os_unfair_lock_lock(v12 + 4);

  v13 = *(v1 + OBJC_IVAR____TtC11DockKitCore11Orientation__pitch);
  v14 = *(v1 + v5);

  os_unfair_lock_unlock(v14 + 4);

  v15 = *&v4[v9];

  os_unfair_lock_lock(v15 + 4);

  *&v4[OBJC_IVAR____TtC11DockKitCore11Orientation__pitch] = v13;
  v16 = *&v4[v9];

  os_unfair_lock_unlock(v16 + 4);

  v17 = *(v1 + v5);

  os_unfair_lock_lock(v17 + 4);

  v18 = *(v1 + OBJC_IVAR____TtC11DockKitCore11Orientation__roll);
  v19 = *(v1 + v5);

  os_unfair_lock_unlock(v19 + 4);

  v20 = *&v4[v9];

  os_unfair_lock_lock(v20 + 4);

  *&v4[OBJC_IVAR____TtC11DockKitCore11Orientation__roll] = v18;
  v21 = *&v4[v9];

  os_unfair_lock_unlock(v21 + 4);

  a1[3] = v3;
  *a1 = v4;
  return result;
}

uint64_t sub_224621A54(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x68637469705FLL;
  if (v2 != 1)
  {
    v4 = 0x6C6C6F725FLL;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 2002876767;
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
  v8 = 0x68637469705FLL;
  if (*a2 != 1)
  {
    v8 = 0x6C6C6F725FLL;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 2002876767;
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
    v11 = sub_224628688();
  }

  return v11 & 1;
}

uint64_t sub_224621B40()
{
  sub_224628778();
  sub_224627D78();

  return sub_2246287C8();
}

uint64_t sub_224621BD4()
{
  sub_224627D78();
}

uint64_t sub_224621C54()
{
  sub_224628778();
  sub_224627D78();

  return sub_2246287C8();
}

uint64_t sub_224621CE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_224625934();
  *a1 = result;
  return result;
}

void sub_224621D14(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x68637469705FLL;
  if (v2 != 1)
  {
    v5 = 0x6C6C6F725FLL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 2002876767;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_224621D64()
{
  v1 = 0x68637469705FLL;
  if (*v0 != 1)
  {
    v1 = 0x6C6C6F725FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 2002876767;
  }
}

uint64_t sub_224621DB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_224625934();
  *a1 = result;
  return result;
}

uint64_t sub_224621DD8(uint64_t a1)
{
  v2 = sub_224622478();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224621E14(uint64_t a1)
{
  v2 = sub_224622478();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224621EB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA3B8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_224631950;
  v2 = *(v0 + OBJC_IVAR____TtC11DockKitCore11Orientation__yaw);
  v3 = MEMORY[0x277D839F8];
  v4 = MEMORY[0x277D83A80];
  *(v1 + 56) = MEMORY[0x277D839F8];
  *(v1 + 64) = v4;
  *(v1 + 32) = v2;
  v5 = *(v0 + OBJC_IVAR____TtC11DockKitCore11Orientation__pitch);
  *(v1 + 96) = v3;
  *(v1 + 104) = v4;
  *(v1 + 72) = v5;
  v6 = *(v0 + OBJC_IVAR____TtC11DockKitCore11Orientation__roll);
  *(v1 + 136) = v3;
  *(v1 + 144) = v4;
  *(v1 + 112) = v6;

  return MEMORY[0x28211E920](0xD00000000000001DLL, 0x800000022463BDB0, v1);
}

double sub_224621F78()
{
  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore11Orientation__yaw) * *(v0 + OBJC_IVAR____TtC11DockKitCore11Orientation__yaw) + *(v0 + OBJC_IVAR____TtC11DockKitCore11Orientation__pitch) * *(v0 + OBJC_IVAR____TtC11DockKitCore11Orientation__pitch);
  v2 = OBJC_IVAR____TtC11DockKitCore11Orientation__roll;
  v3 = *(v0 + OBJC_IVAR____TtC11DockKitCore11Orientation__roll);
  v4 = OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock;
  v5 = *(v0 + OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock);

  os_unfair_lock_lock(v5 + 4);

  v6 = *(v0 + v2);
  v7 = *(v0 + v4);

  os_unfair_lock_unlock(v7 + 4);

  return sqrt(v1 + v3 * v6);
}

id static Orientation.- infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock;
  v5 = *(a1 + OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock);

  os_unfair_lock_lock(v5 + 4);

  v6 = *(a1 + OBJC_IVAR____TtC11DockKitCore11Orientation__yaw);
  v7 = *(a1 + v4);

  os_unfair_lock_unlock(v7 + 4);

  v8 = OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock;
  v9 = *(a2 + OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock);

  os_unfair_lock_lock(v9 + 4);

  v10 = *(a2 + OBJC_IVAR____TtC11DockKitCore11Orientation__yaw);
  v11 = *(a2 + v8);

  os_unfair_lock_unlock(v11 + 4);

  v12 = v6 - v10;
  v13 = *(a1 + v4);

  os_unfair_lock_lock(v13 + 4);

  v14 = *(a1 + OBJC_IVAR____TtC11DockKitCore11Orientation__pitch);
  v15 = *(a1 + v4);

  os_unfair_lock_unlock(v15 + 4);

  v16 = *(a2 + v8);

  os_unfair_lock_lock(v16 + 4);

  v17 = *(a2 + OBJC_IVAR____TtC11DockKitCore11Orientation__pitch);
  v18 = *(a2 + v8);

  os_unfair_lock_unlock(v18 + 4);

  v19 = v14 - v17;
  v20 = *(a1 + v4);

  os_unfair_lock_lock(v20 + 4);

  v21 = *(a1 + OBJC_IVAR____TtC11DockKitCore11Orientation__roll);
  v22 = *(a1 + v4);

  os_unfair_lock_unlock(v22 + 4);

  v23 = *(a2 + v8);

  os_unfair_lock_lock(v23 + 4);

  v24 = *(a2 + OBJC_IVAR____TtC11DockKitCore11Orientation__roll);
  v25 = *(a2 + v8);

  os_unfair_lock_unlock(v25 + 4);

  v26 = type metadata accessor for Orientation();
  v27 = objc_allocWithZone(v26);
  v28 = OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9670);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *&v27[v28] = v29;
  v30 = OBJC_IVAR____TtC11DockKitCore11Orientation__pitch;
  v31 = OBJC_IVAR____TtC11DockKitCore11Orientation__roll;
  *&v27[OBJC_IVAR____TtC11DockKitCore11Orientation__yaw] = v12;
  *&v27[v30] = v19;
  *&v27[v31] = v21 - v24;
  v33.receiver = v27;
  v33.super_class = v26;
  return objc_msgSendSuper2(&v33, sel_init);
}

uint64_t sub_2246222C0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA3C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_224622478();
  sub_224628808();
  v8[15] = 0;
  sub_224628618();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_224628618();
  v8[13] = 2;
  sub_224628618();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_224622478()
{
  result = qword_27D0CA3C8;
  if (!qword_27D0CA3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA3C8);
  }

  return result;
}

char *Orientation.init(from:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA3D0);
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  v7 = OBJC_IVAR____TtC11DockKitCore11Orientation_allocatedLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9670);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v23 = v7;
  *&v2[v7] = v8;
  v9 = OBJC_IVAR____TtC11DockKitCore11Orientation__yaw;
  *&v2[OBJC_IVAR____TtC11DockKitCore11Orientation__yaw] = 0;
  v10 = OBJC_IVAR____TtC11DockKitCore11Orientation__pitch;
  *&v2[OBJC_IVAR____TtC11DockKitCore11Orientation__pitch] = 0;
  v11 = OBJC_IVAR____TtC11DockKitCore11Orientation__roll;
  *&v2[OBJC_IVAR____TtC11DockKitCore11Orientation__roll] = 0;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_224622478();
  v12 = v24;
  sub_2246287F8();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    type metadata accessor for Orientation();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v11;
    v15 = v21;
    v14 = v22;
    v26 = 0;
    sub_224628548();
    *&v2[v9] = v16;
    v26 = 1;
    sub_224628548();
    *&v2[v10] = v18;
    v26 = 2;
    sub_224628548();
    *&v2[v13] = v19;
    v20 = type metadata accessor for Orientation();
    v25.receiver = v2;
    v25.super_class = v20;
    v2 = objc_msgSendSuper2(&v25, sel_init);
    (*(v15 + 8))(v6, v14);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v2;
}

uint64_t (*sub_224622800(void *a1))()
{
  v3 = OBJC_IVAR____TtC11DockKitCore18RotationalVelocity_allocatedLock;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);

  v5 = OBJC_IVAR____TtC11DockKitCore18RotationalVelocity__yawVelocity;
  a1[3] = OBJC_IVAR____TtC11DockKitCore18RotationalVelocity__yawVelocity;
  v6 = *(v1 + v5);
  v7 = *(v1 + v3);

  os_unfair_lock_unlock(v7 + 4);

  *a1 = v6;
  return sub_2245354DC;
}

uint64_t (*sub_2246228CC(void *a1))()
{
  v3 = OBJC_IVAR____TtC11DockKitCore18RotationalVelocity_allocatedLock;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);

  v5 = OBJC_IVAR____TtC11DockKitCore18RotationalVelocity__pitchVelocity;
  a1[3] = OBJC_IVAR____TtC11DockKitCore18RotationalVelocity__pitchVelocity;
  v6 = *(v1 + v5);
  v7 = *(v1 + v3);

  os_unfair_lock_unlock(v7 + 4);

  *a1 = v6;
  return sub_2245354DC;
}

uint64_t sub_224622998(uint64_t *a1, void *a2, double a3)
{
  v6 = *a1;
  v7 = *(v3 + *a1);

  os_unfair_lock_lock(v7 + 4);

  *(v3 + *a2) = a3;
  v8 = *(v3 + v6);

  os_unfair_lock_unlock(v8 + 4);
}

uint64_t (*sub_224622A1C(void *a1))()
{
  v3 = OBJC_IVAR____TtC11DockKitCore18RotationalVelocity_allocatedLock;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);

  v5 = OBJC_IVAR____TtC11DockKitCore18RotationalVelocity__rollVelocity;
  a1[3] = OBJC_IVAR____TtC11DockKitCore18RotationalVelocity__rollVelocity;
  v6 = *(v1 + v5);
  v7 = *(v1 + v3);

  os_unfair_lock_unlock(v7 + 4);

  *a1 = v6;
  return sub_2245354DC;
}

uint64_t sub_224622AC0@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for RotationalVelocity();
  v4 = [objc_allocWithZone(v3) init];
  v5 = OBJC_IVAR____TtC11DockKitCore18RotationalVelocity_allocatedLock;
  v6 = *(v1 + OBJC_IVAR____TtC11DockKitCore18RotationalVelocity_allocatedLock);

  os_unfair_lock_lock(v6 + 4);

  v7 = *(v1 + OBJC_IVAR____TtC11DockKitCore18RotationalVelocity__yawVelocity);
  v8 = *(v1 + v5);

  os_unfair_lock_unlock(v8 + 4);

  v9 = OBJC_IVAR____TtC11DockKitCore18RotationalVelocity_allocatedLock;
  v10 = *&v4[OBJC_IVAR____TtC11DockKitCore18RotationalVelocity_allocatedLock];

  os_unfair_lock_lock(v10 + 4);

  *&v4[OBJC_IVAR____TtC11DockKitCore18RotationalVelocity__yawVelocity] = v7;
  v11 = *&v4[v9];

  os_unfair_lock_unlock(v11 + 4);

  v12 = *(v1 + v5);

  os_unfair_lock_lock(v12 + 4);

  v13 = *(v1 + OBJC_IVAR____TtC11DockKitCore18RotationalVelocity__pitchVelocity);
  v14 = *(v1 + v5);

  os_unfair_lock_unlock(v14 + 4);

  v15 = *&v4[v9];

  os_unfair_lock_lock(v15 + 4);

  *&v4[OBJC_IVAR____TtC11DockKitCore18RotationalVelocity__pitchVelocity] = v13;
  v16 = *&v4[v9];

  os_unfair_lock_unlock(v16 + 4);

  v17 = *(v1 + v5);

  os_unfair_lock_lock(v17 + 4);

  v18 = *(v1 + OBJC_IVAR____TtC11DockKitCore18RotationalVelocity__rollVelocity);
  v19 = *(v1 + v5);

  os_unfair_lock_unlock(v19 + 4);

  v20 = *&v4[v9];

  os_unfair_lock_lock(v20 + 4);

  *&v4[OBJC_IVAR____TtC11DockKitCore18RotationalVelocity__rollVelocity] = v18;
  v21 = *&v4[v9];

  os_unfair_lock_unlock(v21 + 4);

  a1[3] = v3;
  *a1 = v4;
  return result;
}

uint64_t sub_224622CF8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr))
{
  v5 = a1;
  a4(v8);

  __swift_project_boxed_opaque_existential_1Tm(v8, v8[3]);
  v6 = sub_224628678();
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6;
}

uint64_t sub_224622D60(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x655668637469705FLL;
  v4 = 0xEE00797469636F6CLL;
  if (v2 != 1)
  {
    v3 = 0x6C65566C6C6F725FLL;
    v4 = 0xED0000797469636FLL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6F6C65567761795FLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC00000079746963;
  }

  v7 = 0x655668637469705FLL;
  v8 = 0xEE00797469636F6CLL;
  if (*a2 != 1)
  {
    v7 = 0x6C65566C6C6F725FLL;
    v8 = 0xED0000797469636FLL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6F6C65567761795FLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC00000079746963;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_224628688();
  }

  return v11 & 1;
}

uint64_t sub_224622E98()
{
  sub_224628778();
  sub_224627D78();

  return sub_2246287C8();
}

uint64_t sub_224622F5C()
{
  sub_224627D78();
}

uint64_t sub_22462300C()
{
  sub_224628778();
  sub_224627D78();

  return sub_2246287C8();
}

uint64_t sub_2246230CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_224625980();
  *a1 = result;
  return result;
}

void sub_2246230FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000079746963;
  v4 = 0xEE00797469636F6CLL;
  v5 = 0x655668637469705FLL;
  if (v2 != 1)
  {
    v5 = 0x6C65566C6C6F725FLL;
    v4 = 0xED0000797469636FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F6C65567761795FLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_22462317C()
{
  v1 = 0x655668637469705FLL;
  if (*v0 != 1)
  {
    v1 = 0x6C65566C6C6F725FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F6C65567761795FLL;
  }
}

uint64_t sub_2246231F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_224625980();
  *a1 = result;
  return result;
}

uint64_t sub_224623220(uint64_t a1)
{
  v2 = sub_22462359C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22462325C(uint64_t a1)
{
  v2 = sub_22462359C();

  return MEMORY[0x2821FE720](a1, v2);
}

id RotationalVelocity.init()()
{
  v1 = OBJC_IVAR____TtC11DockKitCore18RotationalVelocity_allocatedLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9670);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *&v0[v1] = v2;
  *&v0[OBJC_IVAR____TtC11DockKitCore18RotationalVelocity__yawVelocity] = 0;
  *&v0[OBJC_IVAR____TtC11DockKitCore18RotationalVelocity__pitchVelocity] = 0;
  *&v0[OBJC_IVAR____TtC11DockKitCore18RotationalVelocity__rollVelocity] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for RotationalVelocity();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_2246233E4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA3F8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_22462359C();
  sub_224628808();
  v8[15] = 0;
  sub_224628618();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_224628618();
  v8[13] = 2;
  sub_224628618();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_22462359C()
{
  result = qword_27D0CA400;
  if (!qword_27D0CA400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA400);
  }

  return result;
}

char *RotationalVelocity.init(from:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA408);
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  v7 = OBJC_IVAR____TtC11DockKitCore18RotationalVelocity_allocatedLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9670);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v23 = v7;
  *&v2[v7] = v8;
  v9 = OBJC_IVAR____TtC11DockKitCore18RotationalVelocity__yawVelocity;
  *&v2[OBJC_IVAR____TtC11DockKitCore18RotationalVelocity__yawVelocity] = 0;
  v10 = OBJC_IVAR____TtC11DockKitCore18RotationalVelocity__pitchVelocity;
  *&v2[OBJC_IVAR____TtC11DockKitCore18RotationalVelocity__pitchVelocity] = 0;
  v11 = OBJC_IVAR____TtC11DockKitCore18RotationalVelocity__rollVelocity;
  *&v2[OBJC_IVAR____TtC11DockKitCore18RotationalVelocity__rollVelocity] = 0;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_22462359C();
  v12 = v24;
  sub_2246287F8();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    type metadata accessor for RotationalVelocity();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v11;
    v15 = v21;
    v14 = v22;
    v26 = 0;
    sub_224628548();
    *&v2[v9] = v16;
    v26 = 1;
    sub_224628548();
    *&v2[v10] = v18;
    v26 = 2;
    sub_224628548();
    *&v2[v13] = v19;
    v20 = type metadata accessor for RotationalVelocity();
    v25.receiver = v2;
    v25.super_class = v20;
    v2 = objc_msgSendSuper2(&v25, sel_init);
    (*(v15 + 8))(v6, v14);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v2;
}

uint64_t sub_2246238D8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v8 = objc_allocWithZone(a2());
  result = a3(a1);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

id Quaternion.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Quaternion.init()()
{
  *&v0[OBJC_IVAR____TtC11DockKitCore10Quaternion_x] = 0;
  *&v0[OBJC_IVAR____TtC11DockKitCore10Quaternion_y] = 0;
  *&v0[OBJC_IVAR____TtC11DockKitCore10Quaternion_z] = 0;
  *&v0[OBJC_IVAR____TtC11DockKitCore10Quaternion_w] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Quaternion();
  return objc_msgSendSuper2(&v2, sel_init);
}

id Quaternion.__allocating_init(x:y:z:w:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = OBJC_IVAR____TtC11DockKitCore10Quaternion_y;
  v11 = OBJC_IVAR____TtC11DockKitCore10Quaternion_z;
  v12 = OBJC_IVAR____TtC11DockKitCore10Quaternion_w;
  *&v9[OBJC_IVAR____TtC11DockKitCore10Quaternion_x] = a1;
  *&v9[v10] = a2;
  *&v9[v11] = a3;
  *&v9[v12] = a4;
  v14.receiver = v9;
  v14.super_class = v4;
  return objc_msgSendSuper2(&v14, sel_init);
}

id Quaternion.init(x:y:z:w:)(double a1, double a2, double a3, double a4)
{
  v5 = OBJC_IVAR____TtC11DockKitCore10Quaternion_y;
  v6 = OBJC_IVAR____TtC11DockKitCore10Quaternion_z;
  v7 = OBJC_IVAR____TtC11DockKitCore10Quaternion_w;
  *&v4[OBJC_IVAR____TtC11DockKitCore10Quaternion_x] = a1;
  *&v4[v5] = a2;
  *&v4[v6] = a3;
  *&v4[v7] = a4;
  v9.receiver = v4;
  v9.super_class = type metadata accessor for Quaternion();
  return objc_msgSendSuper2(&v9, sel_init);
}

BOOL sub_224623BE4(uint64_t a1)
{
  sub_22457C960(a1, v6);
  if (v7)
  {
    type metadata accessor for Quaternion();
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR____TtC11DockKitCore10Quaternion_x) == *&v5[OBJC_IVAR____TtC11DockKitCore10Quaternion_x] && *(v1 + OBJC_IVAR____TtC11DockKitCore10Quaternion_y) == *&v5[OBJC_IVAR____TtC11DockKitCore10Quaternion_y] && *(v1 + OBJC_IVAR____TtC11DockKitCore10Quaternion_z) == *&v5[OBJC_IVAR____TtC11DockKitCore10Quaternion_z])
      {
        v2 = *(v1 + OBJC_IVAR____TtC11DockKitCore10Quaternion_w);
        v3 = *&v5[OBJC_IVAR____TtC11DockKitCore10Quaternion_w];

        return v2 == v3;
      }
    }
  }

  else
  {
    sub_2245B4E00(v6);
  }

  return 0;
}

uint64_t sub_224623CFC()
{
  sub_2246287D8();
  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore10Quaternion_x);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x22AA51C10](*&v1);
  v2 = *(v0 + OBJC_IVAR____TtC11DockKitCore10Quaternion_y);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x22AA51C10](*&v2);
  v3 = *(v0 + OBJC_IVAR____TtC11DockKitCore10Quaternion_z);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x22AA51C10](*&v3);
  v4 = *(v0 + OBJC_IVAR____TtC11DockKitCore10Quaternion_w);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x22AA51C10](*&v4);
  return sub_2246287B8();
}

uint64_t sub_224623DD8(uint64_t a1)
{
  sub_22457C960(a1, v12);
  if (!v13)
  {
    sub_2245B4E00(v12);
    goto LABEL_7;
  }

  type metadata accessor for Pose();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v9 = 0;
    return v9 & 1;
  }

  sub_22450950C(0, &qword_27D0CA430);
  v2 = *&v11[OBJC_IVAR____TtC11DockKitCore4Pose_position];
  v3 = *(v1 + OBJC_IVAR____TtC11DockKitCore4Pose_position);
  v4 = v2;
  v5 = sub_2246281E8();

  if ((v5 & 1) == 0)
  {

    goto LABEL_7;
  }

  v6 = *&v11[OBJC_IVAR____TtC11DockKitCore4Pose_rotation];
  v7 = *(v1 + OBJC_IVAR____TtC11DockKitCore4Pose_rotation);
  v8 = v6;
  v9 = sub_2246281E8();

  return v9 & 1;
}

uint64_t sub_224623F3C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_224628278();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_2245B4E00(v10);
  return v8 & 1;
}

id Pose.init()()
{
  v1 = OBJC_IVAR____TtC11DockKitCore4Pose_position;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for Vector3()) init];
  v2 = OBJC_IVAR____TtC11DockKitCore4Pose_rotation;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for Orientation()) init];
  v4.receiver = v0;
  v4.super_class = type metadata accessor for Pose();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_224624164(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t DockState.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x64656B636F44;
    case 2:
      return 0x6E776F6E6B6E55;
    case 1:
      return 0x64656B636F646E55;
  }

  result = sub_2246286B8();
  __break(1u);
  return result;
}

uint64_t sub_224624328()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0x64656B636F44;
  }

  if (v1 == 2)
  {
    return 0x6E776F6E6B6E55;
  }

  if (v1 == 1)
  {
    return 0x64656B636F646E55;
  }

  result = sub_2246286B8();
  __break(1u);
  return result;
}

uint64_t ConnectedState.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x657463656E6E6F43;
    case 2:
      return 0x6E776F6E6B6E55;
    case 1:
      return 0x656E6E6F43746F4ELL;
  }

  result = sub_2246286B8();
  __break(1u);
  return result;
}

uint64_t sub_224624504()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0x657463656E6E6F43;
  }

  if (v1 == 2)
  {
    return 0x6E776F6E6B6E55;
  }

  if (v1 == 1)
  {
    return 0x656E6E6F43746F4ELL;
  }

  result = sub_2246286B8();
  __break(1u);
  return result;
}

uint64_t TrackingButtonState.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      return 0x6E776F6E6B6E55;
    case 1:
      return 28239;
    case 0:
      return 6710863;
  }

  result = sub_2246286B8();
  __break(1u);
  return result;
}

uint64_t sub_2246246D0()
{
  v1 = *v0;
  if (*v0 == 2)
  {
    return 0x6E776F6E6B6E55;
  }

  if (v1 == 1)
  {
    return 28239;
  }

  if (!v1)
  {
    return 6710863;
  }

  result = sub_2246286B8();
  __break(1u);
  return result;
}

uint64_t *sub_224624750@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result - 4;
  v4 = __CFADD__(v3, 3);
  v5 = v3 < 0xFFFFFFFFFFFFFFFDLL;
  if (!v4)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_224624820()
{
  v1 = *v0;
  if (*v0 == 1)
  {
    return 0x676E696B63617254;
  }

  if (v1 == 3)
  {
    return 1801678669;
  }

  if (v1 == 2)
  {
    return 0x6D6F74737543;
  }

  result = sub_2246286B8();
  __break(1u);
  return result;
}

unint64_t Errors.init(code:details:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (result >= 0x1E)
  {
    v4 = 16;
  }

  else
  {
    v4 = result;
  }

  *a4 = a2;
  *(a4 + 8) = a3;
  *(a4 + 16) = v4;
  return result;
}

uint64_t DockFramingMode.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 1952867660;
    }

    if (a1 == 3)
    {
      return 0x7468676952;
    }
  }

  else
  {
    if (!a1)
    {
      return 0x6974616D6F747541;
    }

    if (a1 == 1)
    {
      return 0x7265746E6543;
    }
  }

  result = sub_2246286B8();
  __break(1u);
  return result;
}

uint64_t sub_224624A4C()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0x6974616D6F747541;
    }

    if (v1 == 1)
    {
      return 0x7265746E6543;
    }

    goto LABEL_11;
  }

  if (v1 == 2)
  {
    return 1952867660;
  }

  if (v1 != 3)
  {
LABEL_11:
    result = sub_2246286B8();
    __break(1u);
    return result;
  }

  return 0x7468676952;
}

uint64_t CameraSessionInformation.appId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_appId);

  return v1;
}

uint64_t CameraSessionInformation.appId.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_appId);
  *v3 = a1;
  v3[1] = a2;
}

double CameraSessionInformation.copy(with:)@<D0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = [objc_allocWithZone(ObjectType) init];
  v5 = *(v1 + OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_appId + 8);
  v6 = &v4[OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_appId];
  *v6 = *(v1 + OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_appId);
  *(v6 + 1) = v5;

  *&v4[OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_startTime] = *(v1 + OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_startTime);
  *&v4[OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_endTime] = *(v1 + OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_endTime);
  *&v4[OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_cameraType] = *(v1 + OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_cameraType);
  result = *(v1 + OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_azimuth);
  *&v4[OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_azimuth] = result;
  a1[3] = ObjectType;
  *a1 = v4;
  return result;
}

id CameraSessionInformation.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_appId];
  *v2 = 0;
  *(v2 + 1) = 0xE000000000000000;
  *&v0[OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_startTime] = 0;
  *&v0[OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_endTime] = 0;
  *&v0[OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_cameraType] = 0;
  *&v0[OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_azimuth] = 0x400921FB54442D18;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

unint64_t CameraSessionInformation.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_2246259CC(a1);

  return v4;
}

unint64_t CameraSessionInformation.init(coder:)(void *a1)
{
  v2 = sub_2246259CC(a1);

  return v2;
}

Swift::Void __swiftcall CameraSessionInformation.encode(with:)(NSCoder with)
{

  v3 = sub_224627CB8();

  v4 = sub_224627CB8();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_startTime);
  v6 = sub_224627CB8();
  [(objc_class *)with.super.isa encodeDouble:v6 forKey:v5];

  v7 = *(v1 + OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_endTime);
  v8 = sub_224627CB8();
  [(objc_class *)with.super.isa encodeDouble:v8 forKey:v7];

  v9 = *(v1 + OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_cameraType);
  v10 = sub_224627CB8();
  [(objc_class *)with.super.isa encodeInteger:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_azimuth);
  v12 = sub_224627CB8();
  [(objc_class *)with.super.isa encodeDouble:v12 forKey:v11];
}

uint64_t sub_22462517C()
{
  v1 = *v0;
  v2 = 0x6449707061;
  v3 = 0x656D6954646E65;
  v4 = 0x79546172656D6163;
  if (v1 != 3)
  {
    v4 = 0x6874756D697A61;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D69547472617473;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_22462521C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_224626B08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_224625244(uint64_t a1)
{
  v2 = sub_224625DA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224625280(uint64_t a1)
{
  v2 = sub_224625DA0();

  return MEMORY[0x2821FE720](a1, v2);
}

id CameraSessionInformation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CameraSessionInformation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA470);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_224625DA0();
  sub_224628808();
  v14 = 0;

  sub_2246285F8();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    v13 = 1;
    sub_224628618();
    v12 = 2;
    sub_224628618();
    v11 = *(v3 + OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_cameraType);
    v10[15] = 3;
    sub_224625DF4();
    sub_224628648();
    v10[14] = 4;
    sub_224628618();
    return (*(v6 + 8))(v8, v5);
  }
}

id CameraSessionInformation.init(from:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA488);
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v7 = &v2[OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_appId];
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v32 = v2;
  v33 = v7;
  v8 = OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_startTime;
  *&v2[OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_startTime] = 0;
  v9 = OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_endTime;
  *&v2[OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_endTime] = 0;
  v10 = OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_cameraType;
  *&v2[OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_cameraType] = 0;
  v11 = OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_azimuth;
  *&v2[OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_azimuth] = 0x400921FB54442D18;
  v12 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v12);
  sub_224625DA0();
  v13 = v6;
  v14 = v31;
  sub_2246287F8();
  if (v14)
  {
    v26 = v33;
    __swift_destroy_boxed_opaque_existential_1Tm(v34);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = v8;
    v31 = v9;
    v27 = v11;
    v28 = v10;
    v17 = v29;
    v16 = v30;
    LOBYTE(v38) = 0;
    v18 = sub_224628528();
    v20 = v33;
    *v33 = v18;
    v20[1] = v21;

    LOBYTE(v38) = 1;
    sub_224628548();
    v22 = v32;
    *&v32[v15] = v23;
    LOBYTE(v38) = 2;
    sub_224628548();
    *&v22[v31] = v24;
    v37 = 3;
    sub_224625E48();
    sub_224628578();
    *&v22[v28] = v38;
    LOBYTE(v38) = 4;
    sub_224628548();
    *&v22[v27] = v25;
    v36.receiver = v22;
    v36.super_class = ObjectType;
    v26 = objc_msgSendSuper2(&v36, sel_init);
    (*(v17 + 8))(v13, v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  return v26;
}

id sub_2246258C0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = CameraSessionInformation.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_224625934()
{
  v0 = sub_2246284B8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_224625980()
{
  v0 = sub_2246284B8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2246259CC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_appId];
  *v4 = 0;
  *(v4 + 1) = 0xE000000000000000;
  v5 = OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_startTime;
  *&v1[OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_startTime] = 0;
  v6 = OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_endTime;
  *&v1[OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_endTime] = 0;
  v7 = OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_cameraType;
  *&v1[OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_cameraType] = 0;
  v24 = OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_azimuth;
  *&v1[OBJC_IVAR____TtC11DockKitCore24CameraSessionInformation_azimuth] = 0x400921FB54442D18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9690);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22462C8F0;
  *(v8 + 32) = sub_22450950C(0, &unk_27D0C8D40);
  sub_2246281B8();

  if (v32)
  {
    if (swift_dynamicCast())
    {
      v9 = v28;
      v10 = v29;
      goto LABEL_6;
    }
  }

  else
  {
    sub_2245B4E00(v31);
  }

  v9 = 0;
  v10 = 0xE000000000000000;
LABEL_6:
  *v4 = v9;
  *(v4 + 1) = v10;

  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22462C8F0;
  v12 = sub_22450950C(0, &unk_27D0C89A0);
  *(v11 + 32) = v12;
  sub_2246281B8();

  if (v32)
  {
    if (swift_dynamicCast())
    {
      v13 = v28;
      goto LABEL_11;
    }
  }

  else
  {
    sub_2245B4E00(v31);
  }

  v13 = 0;
LABEL_11:
  *&v1[v5] = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22462C8F0;
  *(v14 + 32) = v12;
  sub_2246281B8();

  if (v32)
  {
    if (swift_dynamicCast())
    {
      v15 = v28;
      goto LABEL_16;
    }
  }

  else
  {
    sub_2245B4E00(v31);
  }

  v15 = 0;
LABEL_16:
  *&v1[v6] = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22462C8F0;
  *(v16 + 32) = v12;
  sub_2246281B8();

  if (v32)
  {
    if (swift_dynamicCast())
    {
      v17 = v28;
      goto LABEL_21;
    }
  }

  else
  {
    sub_2245B4E00(v31);
  }

  v17 = sub_2246281C8();
LABEL_21:
  result = sub_224620E7C([v17 integerValue]);
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *&v2[v7] = result;
    v20 = sub_224627CB8();
    [a1 decodeDoubleForKey_];
    v22 = v21;

    *&v2[v25] = v22;
    v30.receiver = v2;
    v30.super_class = v27;
    v23 = objc_msgSendSuper2(&v30, sel_init);

    return v23;
  }

  return result;
}

unint64_t sub_224625DA0()
{
  result = qword_27D0CA478;
  if (!qword_27D0CA478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA478);
  }

  return result;
}

unint64_t sub_224625DF4()
{
  result = qword_27D0CA480;
  if (!qword_27D0CA480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA480);
  }

  return result;
}

unint64_t sub_224625E48()
{
  result = qword_27D0CA490;
  if (!qword_27D0CA490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA490);
  }

  return result;
}

unint64_t sub_224625EA0()
{
  result = qword_27D0CA498;
  if (!qword_27D0CA498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA498);
  }

  return result;
}

unint64_t sub_224625EF8()
{
  result = qword_27D0CA4A0;
  if (!qword_27D0CA4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA4A0);
  }

  return result;
}

unint64_t sub_224625F50()
{
  result = qword_27D0CA4A8;
  if (!qword_27D0CA4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA4A8);
  }

  return result;
}

unint64_t sub_224625FA8()
{
  result = qword_27D0CA4B0;
  if (!qword_27D0CA4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA4B0);
  }

  return result;
}

unint64_t sub_224626000()
{
  result = qword_27D0CA4B8;
  if (!qword_27D0CA4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA4B8);
  }

  return result;
}

uint64_t sub_224626694(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE3 && *(a1 + 17))
  {
    return (*a1 + 227);
  }

  v3 = *(a1 + 16);
  if (v3 <= 0x1D)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2246266DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE2)
  {
    *(result + 16) = 0;
    *result = a2 - 227;
    *(result + 8) = 0;
    if (a3 >= 0xE3)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE3)
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

unint64_t sub_2246267F4()
{
  result = qword_27D0CA4C0;
  if (!qword_27D0CA4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA4C0);
  }

  return result;
}

unint64_t sub_22462684C()
{
  result = qword_27D0CA4C8;
  if (!qword_27D0CA4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA4C8);
  }

  return result;
}

unint64_t sub_2246268A4()
{
  result = qword_27D0CA4D0;
  if (!qword_27D0CA4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA4D0);
  }

  return result;
}

unint64_t sub_2246268FC()
{
  result = qword_27D0CA4D8;
  if (!qword_27D0CA4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA4D8);
  }

  return result;
}

unint64_t sub_224626954()
{
  result = qword_27D0CA4E0;
  if (!qword_27D0CA4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA4E0);
  }

  return result;
}

unint64_t sub_2246269AC()
{
  result = qword_27D0CA4E8;
  if (!qword_27D0CA4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA4E8);
  }

  return result;
}

unint64_t sub_224626A04()
{
  result = qword_27D0CA4F0;
  if (!qword_27D0CA4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA4F0);
  }

  return result;
}

unint64_t sub_224626A5C()
{
  result = qword_27D0CA4F8;
  if (!qword_27D0CA4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA4F8);
  }

  return result;
}

unint64_t sub_224626AB4()
{
  result = qword_27D0CA500;
  if (!qword_27D0CA500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA500);
  }

  return result;
}

uint64_t sub_224626B08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449707061 && a2 == 0xE500000000000000;
  if (v4 || (sub_224628688() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065 || (sub_224628688() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D6954646E65 && a2 == 0xE700000000000000 || (sub_224628688() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79546172656D6163 && a2 == 0xEA00000000006570 || (sub_224628688() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6874756D697A61 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_224628688();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_224626CC4()
{
  result = qword_27D0CA508;
  if (!qword_27D0CA508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA508);
  }

  return result;
}

unint64_t sub_224626D18()
{
  result = qword_27D0CA510;
  if (!qword_27D0CA510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA510);
  }

  return result;
}

unint64_t sub_224626D6C()
{
  result = qword_27D0CA518;
  if (!qword_27D0CA518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA518);
  }

  return result;
}

unint64_t sub_224626DC0()
{
  result = qword_27D0CA520;
  if (!qword_27D0CA520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA520);
  }

  return result;
}

unint64_t sub_224626E14()
{
  result = qword_27D0CA528;
  if (!qword_27D0CA528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0CA528);
  }

  return result;
}

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  MEMORY[0x282111538](t, point, *&point.y);
  result.y = v3;
  result.x = v2;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}