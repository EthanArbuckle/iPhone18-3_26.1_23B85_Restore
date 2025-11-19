void sub_224572818(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_224572890(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2822009F8](sub_2245728B0, 0, 0);
}

uint64_t sub_2245728B0()
{
  v1 = v0 + 2;
  v3 = v0[10];
  v2 = v0[11];
  v0[2] = v0;
  v0[3] = sub_2245804E0;
  v4 = swift_continuation_init();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  sub_22457D90C(v3, sub_2245804EC, v5, v2);

  return MEMORY[0x282200938](v1);
}

uint64_t sub_2245729B4()
{
  v1 = v0[11];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_224572A58;
  v2 = swift_continuation_init();
  sub_224572C5C(v1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_224572A58()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    v4 = *(*v0 + 80);
    v5 = *(v1 + 8);

    return v5(v4);
  }
}

uint64_t sub_224572B98(void *a1, void *a2, uint64_t a3)
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
    **(*(a3 + 64) + 40) = a1;
    v7 = a1;

    return swift_continuation_throwingResume();
  }
}

void sub_224572C5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_224627B78();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v64 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v64 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v64 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  if (*(a1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcAllowed) == 1)
  {
    v18 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock;
    v19 = *(a1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock);

    os_unfair_lock_lock(v19 + 4);

    v20 = *(a1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError);
    *(a1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError) = 0;

    v21 = *(a1 + v18);

    os_unfair_lock_unlock(v21 + 4);

    v22 = sub_22456C5D8();
    v67 = a2;
    if (v22)
    {
      v23 = v22;
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v25 = swift_allocObject();
      v25[2] = v24;
      v25[3] = sub_224580400;
      v25[4] = v17;
      v73 = sub_224580260;
      v74 = v25;
      aBlock = MEMORY[0x277D85DD0];
      v70 = 1107296256;
      v71 = sub_2245D42E8;
      v72 = &block_descriptor_499;
      v26 = _Block_copy(&aBlock);

      v27 = [v23 synchronousRemoteObjectProxyWithErrorHandler_];
      _Block_release(v26);
      sub_224628278();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9798);
      if (swift_dynamicCast())
      {
        v28 = v68;
        v29 = *(a1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info);
        v30 = swift_allocObject();
        *(v30 + 16) = sub_224580400;
        *(v30 + 24) = v17;
        v73 = sub_224580280;
        v74 = v30;
        aBlock = MEMORY[0x277D85DD0];
        v70 = 1107296256;
        v71 = sub_22457371C;
        v72 = &block_descriptor_505;
        v31 = _Block_copy(&aBlock);

        swift_unknownObjectRetain();
        v32 = v29;

        [v28 getCurrentSystemEventDataWithInfo:v32 completion:v31];
        _Block_release(v31);

        swift_unknownObjectRelease_n();

        return;
      }

      v65 = v23;
      v66 = v17;
      v39 = *(v5 + 16);
      v39(v11, a1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v4);
      v49 = sub_224627B58();
      v50 = sub_224628048();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v64 = v39;
        v52 = v51;
        *v51 = 0;
        _os_log_impl(&dword_224507000, v49, v50, "failed asynchronous server XPC connection", v51, 2u);
        v53 = v52;
        v39 = v64;
        MEMORY[0x22AA526D0](v53, -1, -1);
      }

      v54 = *(v5 + 8);
      v54(v11, v4);
      sub_22452ECAC();
      v47 = swift_allocError();
      *v55 = xmmword_22462FFB0;
      *(v55 + 16) = 4;
      swift_willThrow();

      v46 = v54;
    }

    else
    {
      v66 = v17;
      v39 = *(v5 + 16);
      v39(v14, a1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v4);
      v40 = sub_224627B58();
      v41 = sub_224628048();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = v39;
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_224507000, v40, v41, "failed connecting to server xpc", v43, 2u);
        v44 = v43;
        v39 = v42;
        MEMORY[0x22AA526D0](v44, -1, -1);
      }

      v45 = v14;
      v46 = *(v5 + 8);
      v46(v45, v4);
      sub_22452ECAC();
      v47 = swift_allocError();
      *v48 = 0xD00000000000001FLL;
      *(v48 + 8) = 0x8000000224638700;
      *(v48 + 16) = 4;
      swift_willThrow();
    }

    v39(v8, a1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v4);
    v56 = v47;
    v57 = sub_224627B58();
    v58 = sub_224628048();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v59 = 138412290;
      v61 = v47;
      v62 = _swift_stdlib_bridgeErrorToNSError();
      *(v59 + 4) = v62;
      *v60 = v62;
      _os_log_impl(&dword_224507000, v57, v58, "dockkit: failed getting sync connection, can't send xpc %@", v59, 0xCu);
      sub_2245098A0(v60, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v60, -1, -1);
      MEMORY[0x22AA526D0](v59, -1, -1);
    }

    v46(v8, v4);
    sub_22456D918();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
    swift_allocError();
    *v63 = v47;
    swift_continuation_throwingResumeWithError();
  }

  else
  {
    (*(v5 + 16))(v16, a1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v4);
    v33 = sub_224627B58();
    v34 = sub_224628048();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_224507000, v33, v34, "xpc lock/queue not initialized, no XPC configured", v35, 2u);
      MEMORY[0x22AA526D0](v35, -1, -1);
    }

    (*(v5 + 8))(v16, v4);
    sub_22452ECAC();
    v36 = swift_allocError();
    *v37 = xmmword_22462FFA0;
    *(v37 + 16) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
    swift_allocError();
    *v38 = v36;
    swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_224573518(void *a1, uint64_t a2, uint64_t (*a3)(void, void *))
{
  v5 = sub_224627B78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    (*(v6 + 16))(v8, Strong + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v5);

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
      _os_log_impl(&dword_224507000, v12, v13, "failure from proxy: %@", v14, 0xCu);
      sub_2245098A0(v15, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v15, -1, -1);
      MEMORY[0x22AA526D0](v14, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }

  return a3(0, a1);
}

void sub_22457371C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_2245737C8()
{
  v1 = v0[10];
  v0[2] = v0;
  v0[3] = sub_2245804E0;
  v2 = swift_continuation_init();
  sub_224573864(v1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_224573864(_BYTE *a1, uint64_t a2)
{
  v4 = sub_224627B78();
  isEscapingClosureAtFileLocation = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v46 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = (v46 - v12);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  if (a1[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcAllowed] != 1)
  {
LABEL_6:
    (*(isEscapingClosureAtFileLocation + 16))(v13, &a1[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v4);
    v31 = sub_224627B58();
    v32 = sub_224628048();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_224507000, v31, v32, "xpc lock/queue not initialized, no XPC configured", v33, 2u);
      MEMORY[0x22AA526D0](v33, -1, -1);
    }

    (*(isEscapingClosureAtFileLocation + 8))(v13, v4);
    sub_22452ECAC();
    v34 = swift_allocError();
    *v35 = xmmword_22462FFA0;
    *(v35 + 16) = 3;
    goto LABEL_16;
  }

  v15 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock;
  v16 = *&a1[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock];

  os_unfair_lock_lock(v16 + 4);

  v17 = *&a1[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError];
  *&a1[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError] = 0;

  v18 = *&a1[v15];

  os_unfair_lock_unlock(v18 + 4);

  v19 = sub_22456C5D8();
  if (v19)
  {
    v20 = v19;
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = sub_2245804EC;
    v22[4] = v14;
    v51 = sub_22458041C;
    v52 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_2245D42E8;
    v50 = &block_descriptor_479;
    v23 = _Block_copy(&aBlock);

    v24 = [v20 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v23);
    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9798);
    if (swift_dynamicCast())
    {
      v25 = v46[2];
      v26 = *&a1[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info];
      v13 = swift_allocObject();
      v13[2] = a1;
      v13[3] = sub_2245804EC;
      v13[4] = v14;
      v4 = swift_allocObject();
      *(v4 + 16) = sub_224580208;
      *(v4 + 24) = v13;
      v51 = sub_2245804E8;
      v52 = v4;
      aBlock = MEMORY[0x277D85DD0];
      v48 = 1107296256;
      v49 = sub_224611654;
      v50 = &block_descriptor_489;
      v27 = _Block_copy(&aBlock);

      v28 = v26;
      v29 = a1;

      [v25 stopSystemEventsDataWithInfo:v28 completion:v27];
      swift_unknownObjectRelease();

      _Block_release(v27);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
      goto LABEL_6;
    }

    (*(isEscapingClosureAtFileLocation + 16))(v8, &a1[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v4);
    v40 = sub_224627B58();
    v41 = sub_224628048();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v46[1] = a2;
      v43 = v42;
      *v42 = 0;
      _os_log_impl(&dword_224507000, v40, v41, "failed asynchronous server XPC connection", v42, 2u);
      MEMORY[0x22AA526D0](v43, -1, -1);
    }

    (*(isEscapingClosureAtFileLocation + 8))(v8, v4);
    sub_22452ECAC();
    v34 = swift_allocError();
    *v44 = xmmword_22462FFB0;
    *(v44 + 16) = 4;
    swift_willThrow();
  }

  else
  {
    (*(isEscapingClosureAtFileLocation + 16))(v11, &a1[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v4);
    v36 = sub_224627B58();
    v37 = sub_224628048();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_224507000, v36, v37, "failed connecting to server xpc", v38, 2u);
      MEMORY[0x22AA526D0](v38, -1, -1);
    }

    (*(isEscapingClosureAtFileLocation + 8))(v11, v4);
    sub_22452ECAC();
    v34 = swift_allocError();
    *v39 = 0xD00000000000001FLL;
    *(v39 + 8) = 0x8000000224638700;
    *(v39 + 16) = 4;
    swift_willThrow();
  }

  sub_22456D918();
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v45 = v34;
  swift_continuation_throwingResumeWithError();
}

uint64_t sub_224573FE4(void *a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v5 = sub_224627B78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    (*(v6 + 16))(v8, Strong + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v5);

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
      _os_log_impl(&dword_224507000, v12, v13, "failure from proxy: %@", v14, 0xCu);
      sub_2245098A0(v15, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v15, -1, -1);
      MEMORY[0x22AA526D0](v14, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }

  return a3(a1);
}

uint64_t sub_2245741E4(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2822009F8](sub_224574204, 0, 0);
}

uint64_t sub_224574204()
{
  v2 = v0[10];
  v1 = v0[11];
  v0[2] = v0;
  v0[3] = sub_2245804E0;
  v3 = swift_continuation_init();
  sub_2245742AC(v2, v1, v3);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2245742AC(void *a1, char *a2, uint64_t a3)
{
  v6 = sub_224627B78();
  v7 = *(v6 - 1);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v59 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v59 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = (v59 - v17);
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  if (a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcAllowed] == 1)
  {
    v62 = a1;
    v63 = v19;
    v20 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock;
    v21 = *&a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock];

    os_unfair_lock_lock(v21 + 4);

    v22 = *&a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError];
    *&a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError] = 0;

    v23 = *&a2[v20];

    os_unfair_lock_unlock(v23 + 4);

    v24 = sub_22456C5D8();
    if (v24)
    {
      v25 = v24;
      v59[1] = a3;
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v27 = swift_allocObject();
      v27[2] = v26;
      v27[3] = sub_2245804EC;
      v28 = v63;
      v27[4] = v63;
      v69 = sub_22458041C;
      v70 = v27;
      aBlock = MEMORY[0x277D85DD0];
      v66 = 1107296256;
      v67 = sub_2245D42E8;
      v68 = &block_descriptor_459;
      v29 = _Block_copy(&aBlock);

      v30 = [v25 synchronousRemoteObjectProxyWithErrorHandler_];
      _Block_release(v29);
      sub_224628278();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9798);
      v31 = swift_dynamicCast();
      v60 = v25;
      if (v31)
      {
        v6 = v64;
        v32 = *&a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info];
        v18 = swift_allocObject();
        v7 = v62;
        v18[2] = a2;
        v18[3] = v7;
        v18[4] = sub_2245804EC;
        v18[5] = v28;
        v33 = swift_allocObject();
        *(v33 + 16) = sub_2245801A0;
        *(v33 + 24) = v18;
        v69 = sub_2245804E8;
        v70 = v33;
        aBlock = MEMORY[0x277D85DD0];
        v66 = 1107296256;
        v67 = sub_224611654;
        v68 = &block_descriptor_469;
        v34 = _Block_copy(&aBlock);

        v35 = v32;
        v36 = a2;
        swift_unknownObjectRetain();

        [v6 startBatteryStatesDataWithInfo:v35 completion:v34];
        swift_unknownObjectRelease();

        _Block_release(v34);
        LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

        if ((v35 & 1) == 0)
        {
          return result;
        }

        __break(1u);
        goto LABEL_6;
      }

      v62 = v7[2];
      (v62)(v13, &a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v6);
      v47 = sub_224627B58();
      v48 = sub_224628048();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_224507000, v47, v48, "failed asynchronous server XPC connection", v49, 2u);
        MEMORY[0x22AA526D0](v49, -1, -1);
      }

      v61 = v7[1];
      v61(v13, v6);
      sub_22452ECAC();
      v41 = swift_allocError();
      *v50 = xmmword_22462FFB0;
      *(v50 + 16) = 4;
      swift_willThrow();
    }

    else
    {
      v62 = v7[2];
      (v62)(v16, &a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v6);
      v43 = sub_224627B58();
      v44 = sub_224628048();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_224507000, v43, v44, "failed connecting to server xpc", v45, 2u);
        MEMORY[0x22AA526D0](v45, -1, -1);
      }

      v61 = v7[1];
      v61(v16, v6);
      sub_22452ECAC();
      v41 = swift_allocError();
      *v46 = 0xD00000000000001FLL;
      *(v46 + 8) = 0x8000000224638700;
      *(v46 + 16) = 4;
      swift_willThrow();
    }

    (v62)(v10, &a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v6);
    v51 = v41;
    v52 = sub_224627B58();
    v53 = sub_224628048();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      v56 = v41;
      v57 = _swift_stdlib_bridgeErrorToNSError();
      *(v54 + 4) = v57;
      *v55 = v57;
      _os_log_impl(&dword_224507000, v52, v53, "dockkit: failed getting sync connection, can't send xpc %@", v54, 0xCu);
      sub_2245098A0(v55, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v55, -1, -1);
      MEMORY[0x22AA526D0](v54, -1, -1);
    }

    v61(v10, v6);
    sub_22456D918();
    goto LABEL_18;
  }

LABEL_6:
  (v7[2])(v18, &a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v6);
  v38 = sub_224627B58();
  v39 = sub_224628048();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_224507000, v38, v39, "xpc lock/queue not initialized, no XPC configured", v40, 2u);
    MEMORY[0x22AA526D0](v40, -1, -1);
  }

  (v7[1])(v18, v6);
  sub_22452ECAC();
  v41 = swift_allocError();
  *v42 = xmmword_22462FFA0;
  *(v42 + 16) = 3;
LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v58 = v41;
  swift_continuation_throwingResumeWithError();
}

uint64_t sub_224574BC4(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x2822009F8](sub_224574BE4, 0, 0);
}

uint64_t sub_224574BE4()
{
  v2 = v0[10];
  v1 = v0[11];
  v0[2] = v0;
  v0[3] = sub_2245804E0;
  v3 = swift_continuation_init();
  sub_224574C8C(v2, v1, v3);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_224574C8C(void *a1, char *a2, uint64_t a3)
{
  v6 = sub_224627B78();
  v7 = *(v6 - 1);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v59 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v59 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = (v59 - v17);
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  if (a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcAllowed] == 1)
  {
    v62 = a1;
    v63 = v19;
    v20 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock;
    v21 = *&a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock];

    os_unfair_lock_lock(v21 + 4);

    v22 = *&a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError];
    *&a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError] = 0;

    v23 = *&a2[v20];

    os_unfair_lock_unlock(v23 + 4);

    v24 = sub_22456C5D8();
    if (v24)
    {
      v25 = v24;
      v59[1] = a3;
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v27 = swift_allocObject();
      v27[2] = v26;
      v27[3] = sub_2245804EC;
      v28 = v63;
      v27[4] = v63;
      v69 = sub_22458041C;
      v70 = v27;
      aBlock = MEMORY[0x277D85DD0];
      v66 = 1107296256;
      v67 = sub_2245D42E8;
      v68 = &block_descriptor_439;
      v29 = _Block_copy(&aBlock);

      v30 = [v25 synchronousRemoteObjectProxyWithErrorHandler_];
      _Block_release(v29);
      sub_224628278();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9798);
      v31 = swift_dynamicCast();
      v60 = v25;
      if (v31)
      {
        v6 = v64;
        v32 = *&a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info];
        v18 = swift_allocObject();
        v7 = v62;
        v18[2] = a2;
        v18[3] = v7;
        v18[4] = sub_2245804EC;
        v18[5] = v28;
        v33 = swift_allocObject();
        *(v33 + 16) = sub_224580178;
        *(v33 + 24) = v18;
        v69 = sub_2245804E8;
        v70 = v33;
        aBlock = MEMORY[0x277D85DD0];
        v66 = 1107296256;
        v67 = sub_224611654;
        v68 = &block_descriptor_449;
        v34 = _Block_copy(&aBlock);

        v35 = v32;
        v36 = a2;
        swift_unknownObjectRetain();

        [v6 startTrackingSummaryDataWithInfo:v35 completion:v34];
        swift_unknownObjectRelease();

        _Block_release(v34);
        LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

        if ((v35 & 1) == 0)
        {
          return result;
        }

        __break(1u);
        goto LABEL_6;
      }

      v62 = v7[2];
      (v62)(v13, &a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v6);
      v47 = sub_224627B58();
      v48 = sub_224628048();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_224507000, v47, v48, "failed asynchronous server XPC connection", v49, 2u);
        MEMORY[0x22AA526D0](v49, -1, -1);
      }

      v61 = v7[1];
      v61(v13, v6);
      sub_22452ECAC();
      v41 = swift_allocError();
      *v50 = xmmword_22462FFB0;
      *(v50 + 16) = 4;
      swift_willThrow();
    }

    else
    {
      v62 = v7[2];
      (v62)(v16, &a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v6);
      v43 = sub_224627B58();
      v44 = sub_224628048();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_224507000, v43, v44, "failed connecting to server xpc", v45, 2u);
        MEMORY[0x22AA526D0](v45, -1, -1);
      }

      v61 = v7[1];
      v61(v16, v6);
      sub_22452ECAC();
      v41 = swift_allocError();
      *v46 = 0xD00000000000001FLL;
      *(v46 + 8) = 0x8000000224638700;
      *(v46 + 16) = 4;
      swift_willThrow();
    }

    (v62)(v10, &a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v6);
    v51 = v41;
    v52 = sub_224627B58();
    v53 = sub_224628048();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      v56 = v41;
      v57 = _swift_stdlib_bridgeErrorToNSError();
      *(v54 + 4) = v57;
      *v55 = v57;
      _os_log_impl(&dword_224507000, v52, v53, "dockkit: failed getting sync connection, can't send xpc %@", v54, 0xCu);
      sub_2245098A0(v55, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v55, -1, -1);
      MEMORY[0x22AA526D0](v54, -1, -1);
    }

    v61(v10, v6);
    sub_22456D918();
    goto LABEL_18;
  }

LABEL_6:
  (v7[2])(v18, &a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v6);
  v38 = sub_224627B58();
  v39 = sub_224628048();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_224507000, v38, v39, "xpc lock/queue not initialized, no XPC configured", v40, 2u);
    MEMORY[0x22AA526D0](v40, -1, -1);
  }

  (v7[1])(v18, v6);
  sub_22452ECAC();
  v41 = swift_allocError();
  *v42 = xmmword_22462FFA0;
  *(v42 + 16) = 3;
LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v58 = v41;
  swift_continuation_throwingResumeWithError();
}

uint64_t sub_2245755A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t *a6)
{
  v9 = *a6;
  v10 = swift_unknownObjectRetain();
  MEMORY[0x22AA51310](v10);
  if (*(*(a2 + v9) + 16) >= *(*(a2 + v9) + 24) >> 1)
  {
    sub_224627EF8();
  }

  sub_224627F08();
  return a4(a1);
}

uint64_t sub_224575674()
{
  v1 = v0[11];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_2245804E4;
  v2 = swift_continuation_init();
  sub_2245757DC(v1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_224575718(uint64_t a1, void *a2, uint64_t a3)
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
    **(*(a3 + 64) + 40) = a1;

    return swift_continuation_throwingResume();
  }
}

void sub_2245757DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_224627B78();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v64 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v64 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v64 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  if (*(a1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcAllowed) == 1)
  {
    v18 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock;
    v19 = *(a1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock);

    os_unfair_lock_lock(v19 + 4);

    v20 = *(a1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError);
    *(a1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError) = 0;

    v21 = *(a1 + v18);

    os_unfair_lock_unlock(v21 + 4);

    v22 = sub_22456C5D8();
    v67 = a2;
    if (v22)
    {
      v23 = v22;
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v25 = swift_allocObject();
      v25[2] = v24;
      v25[3] = sub_22458013C;
      v25[4] = v17;
      v73 = sub_224580144;
      v74 = v25;
      aBlock = MEMORY[0x277D85DD0];
      v70 = 1107296256;
      v71 = sub_2245D42E8;
      v72 = &block_descriptor_423;
      v26 = _Block_copy(&aBlock);

      v27 = [v23 synchronousRemoteObjectProxyWithErrorHandler_];
      _Block_release(v26);
      sub_224628278();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9798);
      if (swift_dynamicCast())
      {
        v28 = v68;
        v29 = *(a1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info);
        v30 = swift_allocObject();
        *(v30 + 16) = sub_22458013C;
        *(v30 + 24) = v17;
        v73 = sub_224580150;
        v74 = v30;
        aBlock = MEMORY[0x277D85DD0];
        v70 = 1107296256;
        v71 = sub_2245762A0;
        v72 = &block_descriptor_429;
        v31 = _Block_copy(&aBlock);

        swift_unknownObjectRetain();
        v32 = v29;

        [v28 getCurrentBatteryDataWithInfo:v32 completion:v31];
        _Block_release(v31);

        swift_unknownObjectRelease_n();

        return;
      }

      v65 = v23;
      v66 = v17;
      v39 = *(v5 + 16);
      v39(v11, a1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v4);
      v49 = sub_224627B58();
      v50 = sub_224628048();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v64 = v39;
        v52 = v51;
        *v51 = 0;
        _os_log_impl(&dword_224507000, v49, v50, "failed asynchronous server XPC connection", v51, 2u);
        v53 = v52;
        v39 = v64;
        MEMORY[0x22AA526D0](v53, -1, -1);
      }

      v54 = *(v5 + 8);
      v54(v11, v4);
      sub_22452ECAC();
      v47 = swift_allocError();
      *v55 = xmmword_22462FFB0;
      *(v55 + 16) = 4;
      swift_willThrow();

      v46 = v54;
    }

    else
    {
      v66 = v17;
      v39 = *(v5 + 16);
      v39(v14, a1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v4);
      v40 = sub_224627B58();
      v41 = sub_224628048();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = v39;
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_224507000, v40, v41, "failed connecting to server xpc", v43, 2u);
        v44 = v43;
        v39 = v42;
        MEMORY[0x22AA526D0](v44, -1, -1);
      }

      v45 = v14;
      v46 = *(v5 + 8);
      v46(v45, v4);
      sub_22452ECAC();
      v47 = swift_allocError();
      *v48 = 0xD00000000000001FLL;
      *(v48 + 8) = 0x8000000224638700;
      *(v48 + 16) = 4;
      swift_willThrow();
    }

    v39(v8, a1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v4);
    v56 = v47;
    v57 = sub_224627B58();
    v58 = sub_224628048();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v59 = 138412290;
      v61 = v47;
      v62 = _swift_stdlib_bridgeErrorToNSError();
      *(v59 + 4) = v62;
      *v60 = v62;
      _os_log_impl(&dword_224507000, v57, v58, "dockkit: failed getting sync connection, can't send xpc %@", v59, 0xCu);
      sub_2245098A0(v60, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v60, -1, -1);
      MEMORY[0x22AA526D0](v59, -1, -1);
    }

    v46(v8, v4);
    sub_22456D918();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
    swift_allocError();
    *v63 = v47;
    swift_continuation_throwingResumeWithError();
  }

  else
  {
    (*(v5 + 16))(v16, a1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v4);
    v33 = sub_224627B58();
    v34 = sub_224628048();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_224507000, v33, v34, "xpc lock/queue not initialized, no XPC configured", v35, 2u);
      MEMORY[0x22AA526D0](v35, -1, -1);
    }

    (*(v5 + 8))(v16, v4);
    sub_22452ECAC();
    v36 = swift_allocError();
    *v37 = xmmword_22462FFA0;
    *(v37 + 16) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
    swift_allocError();
    *v38 = v36;
    swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_224576098(void *a1, uint64_t a2, uint64_t (*a3)(void, void *))
{
  v5 = sub_224627B78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    (*(v6 + 16))(v8, Strong + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v5);

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
      _os_log_impl(&dword_224507000, v12, v13, "failure from proxy: %@", v14, 0xCu);
      sub_2245098A0(v15, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v15, -1, -1);
      MEMORY[0x22AA526D0](v14, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }

  return a3(MEMORY[0x277D84F90], a1);
}

void sub_2245762A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  type metadata accessor for AccessoryBatteryState();
  v5 = sub_224627ED8();

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_224576360()
{
  v1 = v0[12];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_224576404;
  v2 = swift_continuation_init();
  sub_224576610(v1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_224576404()
{
  v1 = *v0;
  v2 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {
    v5 = *(v1 + 80);
    v6 = *(v1 + 88);
    v7 = *(v2 + 8);

    return v7(v5, v6);
  }
}

uint64_t sub_224576544(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    sub_224580128(a1, a2);
    v11 = *(*(a4 + 64) + 40);
    *v11 = a1;
    v11[1] = a2;

    return swift_continuation_throwingResume();
  }
}

void sub_224576610(uint64_t a1, uint64_t a2)
{
  v4 = sub_224627B78();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v64 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v64 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v64 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  if (*(a1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcAllowed) == 1)
  {
    v18 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock;
    v19 = *(a1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock);

    os_unfair_lock_lock(v19 + 4);

    v20 = *(a1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError);
    *(a1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError) = 0;

    v21 = *(a1 + v18);

    os_unfair_lock_unlock(v21 + 4);

    v22 = sub_22456C5D8();
    v67 = a2;
    if (v22)
    {
      v23 = v22;
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v25 = swift_allocObject();
      v25[2] = v24;
      v25[3] = sub_2245800EC;
      v25[4] = v17;
      v73 = sub_2245800F4;
      v74 = v25;
      aBlock = MEMORY[0x277D85DD0];
      v70 = 1107296256;
      v71 = sub_2245D42E8;
      v72 = &block_descriptor_407;
      v26 = _Block_copy(&aBlock);

      v27 = [v23 synchronousRemoteObjectProxyWithErrorHandler_];
      _Block_release(v26);
      sub_224628278();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9798);
      if (swift_dynamicCast())
      {
        v28 = v68;
        v29 = *(a1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info);
        v30 = swift_allocObject();
        *(v30 + 16) = sub_2245800EC;
        *(v30 + 24) = v17;
        v73 = sub_224580100;
        v74 = v30;
        aBlock = MEMORY[0x277D85DD0];
        v70 = 1107296256;
        v71 = sub_2245770D4;
        v72 = &block_descriptor_413;
        v31 = _Block_copy(&aBlock);

        swift_unknownObjectRetain();
        v32 = v29;

        [v28 getCurrentTrackingSummaryDataWithInfo:v32 completion:v31];
        _Block_release(v31);

        swift_unknownObjectRelease_n();

        return;
      }

      v65 = v23;
      v66 = v17;
      v39 = *(v5 + 16);
      v39(v11, a1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v4);
      v49 = sub_224627B58();
      v50 = sub_224628048();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v64 = v39;
        v52 = v51;
        *v51 = 0;
        _os_log_impl(&dword_224507000, v49, v50, "failed asynchronous server XPC connection", v51, 2u);
        v53 = v52;
        v39 = v64;
        MEMORY[0x22AA526D0](v53, -1, -1);
      }

      v54 = *(v5 + 8);
      v54(v11, v4);
      sub_22452ECAC();
      v47 = swift_allocError();
      *v55 = xmmword_22462FFB0;
      *(v55 + 16) = 4;
      swift_willThrow();

      v46 = v54;
    }

    else
    {
      v66 = v17;
      v39 = *(v5 + 16);
      v39(v14, a1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v4);
      v40 = sub_224627B58();
      v41 = sub_224628048();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = v39;
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_224507000, v40, v41, "failed connecting to server xpc", v43, 2u);
        v44 = v43;
        v39 = v42;
        MEMORY[0x22AA526D0](v44, -1, -1);
      }

      v45 = v14;
      v46 = *(v5 + 8);
      v46(v45, v4);
      sub_22452ECAC();
      v47 = swift_allocError();
      *v48 = 0xD00000000000001FLL;
      *(v48 + 8) = 0x8000000224638700;
      *(v48 + 16) = 4;
      swift_willThrow();
    }

    v39(v8, a1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v4);
    v56 = v47;
    v57 = sub_224627B58();
    v58 = sub_224628048();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v59 = 138412290;
      v61 = v47;
      v62 = _swift_stdlib_bridgeErrorToNSError();
      *(v59 + 4) = v62;
      *v60 = v62;
      _os_log_impl(&dword_224507000, v57, v58, "dockkit: failed getting sync connection, can't send xpc %@", v59, 0xCu);
      sub_2245098A0(v60, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v60, -1, -1);
      MEMORY[0x22AA526D0](v59, -1, -1);
    }

    v46(v8, v4);
    sub_22456D918();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
    swift_allocError();
    *v63 = v47;
    swift_continuation_throwingResumeWithError();
  }

  else
  {
    (*(v5 + 16))(v16, a1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v4);
    v33 = sub_224627B58();
    v34 = sub_224628048();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_224507000, v33, v34, "xpc lock/queue not initialized, no XPC configured", v35, 2u);
      MEMORY[0x22AA526D0](v35, -1, -1);
    }

    (*(v5 + 8))(v16, v4);
    sub_22452ECAC();
    v36 = swift_allocError();
    *v37 = xmmword_22462FFA0;
    *(v37 + 16) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
    swift_allocError();
    *v38 = v36;
    swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_224576ECC(void *a1, uint64_t a2, uint64_t (*a3)(void, unint64_t, void *))
{
  v5 = sub_224627B78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    (*(v6 + 16))(v8, Strong + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v5);

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
      _os_log_impl(&dword_224507000, v12, v13, "failure from proxy: %@", v14, 0xCu);
      sub_2245098A0(v15, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v15, -1, -1);
      MEMORY[0x22AA526D0](v14, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }

  return a3(0, 0xF000000000000000, a1);
}

uint64_t sub_2245770D4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_224627038();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_2245687AC(v4, v8);
}

uint64_t sub_2245771A0()
{
  v1 = v0[10];
  v0[2] = v0;
  v0[3] = sub_22457723C;
  v2 = swift_continuation_init();
  sub_224577344(v1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22457723C()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
  }

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_224577344(_BYTE *a1, uint64_t a2)
{
  v4 = sub_224627B78();
  isEscapingClosureAtFileLocation = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v46 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = (v46 - v12);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  if (a1[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcAllowed] != 1)
  {
LABEL_6:
    (*(isEscapingClosureAtFileLocation + 16))(v13, &a1[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v4);
    v31 = sub_224627B58();
    v32 = sub_224628048();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_224507000, v31, v32, "xpc lock/queue not initialized, no XPC configured", v33, 2u);
      MEMORY[0x22AA526D0](v33, -1, -1);
    }

    (*(isEscapingClosureAtFileLocation + 8))(v13, v4);
    sub_22452ECAC();
    v34 = swift_allocError();
    *v35 = xmmword_22462FFA0;
    *(v35 + 16) = 3;
    goto LABEL_16;
  }

  v15 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock;
  v16 = *&a1[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock];

  os_unfair_lock_lock(v16 + 4);

  v17 = *&a1[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError];
  *&a1[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError] = 0;

  v18 = *&a1[v15];

  os_unfair_lock_unlock(v18 + 4);

  v19 = sub_22456C5D8();
  if (v19)
  {
    v20 = v19;
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = sub_224580004;
    v22[4] = v14;
    v51 = sub_224580020;
    v52 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_2245D42E8;
    v50 = &block_descriptor_387;
    v23 = _Block_copy(&aBlock);

    v24 = [v20 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v23);
    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9798);
    if (swift_dynamicCast())
    {
      v25 = v46[2];
      v26 = *&a1[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info];
      v13 = swift_allocObject();
      v13[2] = sub_224580004;
      v13[3] = v14;
      v13[4] = a1;
      v4 = swift_allocObject();
      *(v4 + 16) = sub_224580080;
      *(v4 + 24) = v13;
      v51 = sub_2245804E8;
      v52 = v4;
      aBlock = MEMORY[0x277D85DD0];
      v48 = 1107296256;
      v49 = sub_224611654;
      v50 = &block_descriptor_397;
      v27 = _Block_copy(&aBlock);

      v28 = v26;
      v29 = a1;

      [v25 stopBatteryStatesDataWithInfo:v28 completion:v27];
      swift_unknownObjectRelease();

      _Block_release(v27);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
      goto LABEL_6;
    }

    (*(isEscapingClosureAtFileLocation + 16))(v8, &a1[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v4);
    v40 = sub_224627B58();
    v41 = sub_224628048();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v46[1] = a2;
      v43 = v42;
      *v42 = 0;
      _os_log_impl(&dword_224507000, v40, v41, "failed asynchronous server XPC connection", v42, 2u);
      MEMORY[0x22AA526D0](v43, -1, -1);
    }

    (*(isEscapingClosureAtFileLocation + 8))(v8, v4);
    sub_22452ECAC();
    v34 = swift_allocError();
    *v44 = xmmword_22462FFB0;
    *(v44 + 16) = 4;
    swift_willThrow();
  }

  else
  {
    (*(isEscapingClosureAtFileLocation + 16))(v11, &a1[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v4);
    v36 = sub_224627B58();
    v37 = sub_224628048();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_224507000, v36, v37, "failed connecting to server xpc", v38, 2u);
      MEMORY[0x22AA526D0](v38, -1, -1);
    }

    (*(isEscapingClosureAtFileLocation + 8))(v11, v4);
    sub_22452ECAC();
    v34 = swift_allocError();
    *v39 = 0xD00000000000001FLL;
    *(v39 + 8) = 0x8000000224638700;
    *(v39 + 16) = 4;
    swift_willThrow();
  }

  sub_22456D918();
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v45 = v34;
  swift_continuation_throwingResumeWithError();
}

uint64_t sub_224577AE4()
{
  v1 = v0[10];
  v0[2] = v0;
  v0[3] = sub_2245804E0;
  v2 = swift_continuation_init();
  sub_224577C24(v1, v2);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_224577B80(void *a1)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
    swift_allocError();
    *v2 = a1;
    v3 = a1;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_224577C24(_BYTE *a1, uint64_t a2)
{
  v4 = sub_224627B78();
  isEscapingClosureAtFileLocation = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v46 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = (v46 - v12);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  if (a1[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcAllowed] != 1)
  {
LABEL_6:
    (*(isEscapingClosureAtFileLocation + 16))(v13, &a1[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v4);
    v31 = sub_224627B58();
    v32 = sub_224628048();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_224507000, v31, v32, "xpc lock/queue not initialized, no XPC configured", v33, 2u);
      MEMORY[0x22AA526D0](v33, -1, -1);
    }

    (*(isEscapingClosureAtFileLocation + 8))(v13, v4);
    sub_22452ECAC();
    v34 = swift_allocError();
    *v35 = xmmword_22462FFA0;
    *(v35 + 16) = 3;
    goto LABEL_16;
  }

  v15 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock;
  v16 = *&a1[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock];

  os_unfair_lock_lock(v16 + 4);

  v17 = *&a1[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError];
  *&a1[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError] = 0;

  v18 = *&a1[v15];

  os_unfair_lock_unlock(v18 + 4);

  v19 = sub_22456C5D8();
  if (v19)
  {
    v20 = v19;
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = sub_2245804EC;
    v22[4] = v14;
    v51 = sub_22458041C;
    v52 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_2245D42E8;
    v50 = &block_descriptor_367;
    v23 = _Block_copy(&aBlock);

    v24 = [v20 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v23);
    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9798);
    if (swift_dynamicCast())
    {
      v25 = v46[2];
      v26 = *&a1[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info];
      v13 = swift_allocObject();
      v13[2] = sub_2245804EC;
      v13[3] = v14;
      v13[4] = a1;
      v4 = swift_allocObject();
      *(v4 + 16) = sub_22457FFF8;
      *(v4 + 24) = v13;
      v51 = sub_2245804E8;
      v52 = v4;
      aBlock = MEMORY[0x277D85DD0];
      v48 = 1107296256;
      v49 = sub_224611654;
      v50 = &block_descriptor_377;
      v27 = _Block_copy(&aBlock);

      v28 = v26;
      v29 = a1;

      [v25 stopTrackingSummaryDataWithInfo:v28 completion:v27];
      swift_unknownObjectRelease();

      _Block_release(v27);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
      goto LABEL_6;
    }

    (*(isEscapingClosureAtFileLocation + 16))(v8, &a1[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v4);
    v40 = sub_224627B58();
    v41 = sub_224628048();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v46[1] = a2;
      v43 = v42;
      *v42 = 0;
      _os_log_impl(&dword_224507000, v40, v41, "failed asynchronous server XPC connection", v42, 2u);
      MEMORY[0x22AA526D0](v43, -1, -1);
    }

    (*(isEscapingClosureAtFileLocation + 8))(v8, v4);
    sub_22452ECAC();
    v34 = swift_allocError();
    *v44 = xmmword_22462FFB0;
    *(v44 + 16) = 4;
    swift_willThrow();
  }

  else
  {
    (*(isEscapingClosureAtFileLocation + 16))(v11, &a1[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v4);
    v36 = sub_224627B58();
    v37 = sub_224628048();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_224507000, v36, v37, "failed connecting to server xpc", v38, 2u);
      MEMORY[0x22AA526D0](v38, -1, -1);
    }

    (*(isEscapingClosureAtFileLocation + 8))(v11, v4);
    sub_22452ECAC();
    v34 = swift_allocError();
    *v39 = 0xD00000000000001FLL;
    *(v39 + 8) = 0x8000000224638700;
    *(v39 + 16) = 4;
    swift_willThrow();
  }

  sub_22456D918();
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v45 = v34;
  swift_continuation_throwingResumeWithError();
}

uint64_t sub_2245783A4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v93 = a1;
  v11 = sub_224627B78();
  v12 = *(v11 - 1);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v94 = &v87 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v95 = &v87 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v87 - v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a6;
  if (a5[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcAllowed] == 1)
  {
    v91 = a6;
    v92 = v11;
    v96 = v12;
    v97 = a5;
    v89 = a4;
    v90 = v15;
    if (!a2)
    {
      v24 = 0;
      goto LABEL_23;
    }

    v88 = a3;
    if (a2 >> 62)
    {
      goto LABEL_41;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_224628478())
    {
      v24 = MEMORY[0x277D84F90];
      if (i)
      {
        aBlock = MEMORY[0x277D84F90];
        result = sub_22455C764(0, i & ~(i >> 63), 0);
        if (i < 0)
        {
          __break(1u);
          return result;
        }

        v87 = v22;
        v24 = aBlock;
        if ((a2 & 0xC000000000000001) != 0)
        {
          v26 = 0;
          do
          {
            v27 = MEMORY[0x22AA517F0](v26, a2);
            v29 = *(v27 + OBJC_IVAR____TtC11DockKitCore9Component_name);
            v28 = *(v27 + OBJC_IVAR____TtC11DockKitCore9Component_name + 8);

            swift_unknownObjectRelease();
            aBlock = v24;
            v31 = *(v24 + 16);
            v30 = *(v24 + 24);
            if (v31 >= v30 >> 1)
            {
              sub_22455C764((v30 > 1), v31 + 1, 1);
              v24 = aBlock;
            }

            ++v26;
            *(v24 + 16) = v31 + 1;
            v32 = v24 + 16 * v31;
            *(v32 + 32) = v29;
            *(v32 + 40) = v28;
          }

          while (i != v26);
        }

        else
        {
          v39 = (a2 + 32);
          do
          {
            v40 = (*v39 + OBJC_IVAR____TtC11DockKitCore9Component_name);
            v42 = *v40;
            v41 = v40[1];
            aBlock = v24;
            v44 = *(v24 + 16);
            v43 = *(v24 + 24);

            if (v44 >= v43 >> 1)
            {
              sub_22455C764((v43 > 1), v44 + 1, 1);
              v24 = aBlock;
            }

            *(v24 + 16) = v44 + 1;
            v45 = v24 + 16 * v44;
            *(v45 + 32) = v42;
            *(v45 + 40) = v41;
            ++v39;
            --i;
          }

          while (i);
        }

        v22 = v87;
        v11 = v92;
        v12 = v96;
        a5 = v97;
      }

      a3 = v88;
LABEL_23:
      v46 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock;
      v47 = *&a5[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock];

      os_unfair_lock_lock(v47 + 4);

      v48 = *&a5[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError];
      *&a5[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError] = 0;

      v49 = *&a5[v46];

      os_unfair_lock_unlock(v49 + 4);

      v50 = sub_22456C5D8();
      if (!v50)
      {
        break;
      }

      v51 = v50;
      v52 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v53 = swift_allocObject();
      v53[2] = v52;
      v53[3] = sub_2245803FC;
      v53[4] = v22;
      v103 = sub_224580418;
      v104 = v53;
      aBlock = MEMORY[0x277D85DD0];
      v100 = 1107296256;
      v101 = sub_2245D42E8;
      v102 = &block_descriptor_311;
      v54 = _Block_copy(&aBlock);
      v88 = v52;

      v95 = v51;
      v55 = [v51 synchronousRemoteObjectProxyWithErrorHandler_];
      _Block_release(v54);
      sub_224628278();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9798);
      if ((swift_dynamicCast() & 1) == 0)
      {

        v58 = *(v12 + 16);
        v66 = v94;
        v58(v94, &a5[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v92);
        v67 = sub_224627B58();
        v68 = sub_224628048();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          *v69 = 0;
          _os_log_impl(&dword_224507000, v67, v68, "failed asynchronous server XPC connection", v69, 2u);
          MEMORY[0x22AA526D0](v69, -1, -1);
        }

        v63 = *(v96 + 8);
        v11 = v92;
        v63(v66, v92);
        sub_22452ECAC();
        v64 = swift_allocError();
        *v70 = xmmword_22462FFB0;
        *(v70 + 16) = 4;
        swift_willThrow();

        goto LABEL_33;
      }

      v12 = a3;
      v56 = v98;
      v57 = *&a5[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info];
      swift_unknownObjectRetain();
      v11 = v57;
      v96 = sub_224627CB8();
      if (v24)
      {
        v94 = sub_224627EB8();
      }

      else
      {
        v94 = 0;
      }

      v82 = swift_allocObject();
      v82[2] = a2;
      v82[3] = a5;
      v82[4] = v12;
      v82[5] = sub_2245803FC;
      v82[6] = v22;
      v83 = swift_allocObject();
      *(v83 + 16) = sub_22457FF3C;
      *(v83 + 24) = v82;
      v103 = sub_2245803F0;
      v104 = v83;
      aBlock = MEMORY[0x277D85DD0];
      v100 = 1107296256;
      v101 = sub_2245D4378;
      v102 = &block_descriptor_321;
      v84 = _Block_copy(&aBlock);

      v85 = a5;
      swift_unknownObjectRetain();

      v86 = v96;
      a5 = v94;
      [v56 getActuatorFeedbackWithInfo:v11 system:v96 actuators:v94 occurrence:v89 completion:v84];

      swift_unknownObjectRelease_n();
      _Block_release(v84);
      LOBYTE(v84) = swift_isEscapingClosureAtFileLocation();

      if ((v84 & 1) == 0)
      {
        return result;
      }

      __break(1u);
LABEL_41:
      ;
    }

    v58 = *(v12 + 16);
    v59 = v95;
    v58(v95, &a5[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v11);
    v60 = sub_224627B58();
    v61 = sub_224628048();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_224507000, v60, v61, "failed connecting to server xpc", v62, 2u);
      MEMORY[0x22AA526D0](v62, -1, -1);
    }

    v63 = *(v96 + 8);
    v63(v59, v11);
    sub_22452ECAC();
    v64 = swift_allocError();
    *v65 = 0xD00000000000001FLL;
    *(v65 + 8) = 0x8000000224638700;
    *(v65 + 16) = 4;
    swift_willThrow();
LABEL_33:
    v71 = v90;
    v58(v90, &v97[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v11);
    v72 = v64;
    v73 = sub_224627B58();
    v74 = sub_224628048();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = v71;
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v76 = 138412290;
      v78 = v64;
      v79 = _swift_stdlib_bridgeErrorToNSError();
      *(v76 + 4) = v79;
      *v77 = v79;
      _os_log_impl(&dword_224507000, v73, v74, "dockkit: failed getting sync connection, can't send xpc %@", v76, 0xCu);
      sub_2245098A0(v77, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v77, -1, -1);
      v80 = v76;
      v71 = v75;
      MEMORY[0x22AA526D0](v80, -1, -1);
    }

    v63(v71, v11);
    sub_22456D918();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
    swift_allocError();
    *v81 = v64;
  }

  else
  {
    (*(v12 + 16))(v21, &a5[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v11);
    v33 = sub_224627B58();
    v34 = sub_224628048();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_224507000, v33, v34, "xpc lock/queue not initialized, no XPC configured", v35, 2u);
      MEMORY[0x22AA526D0](v35, -1, -1);
    }

    (*(v12 + 8))(v21, v11);
    sub_22452ECAC();
    v36 = swift_allocError();
    *v37 = xmmword_22462FFA0;
    *(v37 + 16) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
    swift_allocError();
    *v38 = v36;
  }

  swift_continuation_throwingResumeWithError();
}

uint64_t sub_224578F04(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = sub_224627B78();
  v6 = *(v5 - 1);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v48 - v11;
  MEMORY[0x28223BE20](v10);
  isEscapingClosureAtFileLocation = &v48 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  if (a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcAllowed] != 1)
  {
LABEL_6:
    (*(v6 + 16))(isEscapingClosureAtFileLocation, &a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v5);
    v33 = sub_224627B58();
    v34 = sub_224628048();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_224507000, v33, v34, "xpc lock/queue not initialized, no XPC configured", v35, 2u);
      MEMORY[0x22AA526D0](v35, -1, -1);
    }

    (*(v6 + 8))(isEscapingClosureAtFileLocation, v5);
    sub_22452ECAC();
    v36 = swift_allocError();
    *v37 = xmmword_22462FFA0;
    *(v37 + 16) = 3;
    goto LABEL_16;
  }

  v16 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock;
  v17 = *&a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock];

  os_unfair_lock_lock(v17 + 4);

  v18 = *&a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError];
  *&a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError] = 0;

  v19 = *&a2[v16];

  os_unfair_lock_unlock(v19 + 4);

  v20 = sub_22456C5D8();
  if (v20)
  {
    v48 = a3;
    v21 = v20;
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = sub_2245803FC;
    v23[4] = v15;
    v55 = sub_224580418;
    v56 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v52 = 1107296256;
    v53 = sub_2245D42E8;
    v54 = &block_descriptor_291;
    v24 = _Block_copy(&aBlock);

    v49 = v21;
    v25 = [v21 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v24);
    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9798);
    if (swift_dynamicCast())
    {
      v26 = v50;
      v27 = *&a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info];
      swift_unknownObjectRetain();
      v28 = v27;
      v29 = sub_224627CB8();
      v5 = swift_allocObject();
      v5[2] = a2;
      v5[3] = sub_2245803FC;
      v5[4] = v15;
      v6 = swift_allocObject();
      *(v6 + 16) = sub_22457FE84;
      *(v6 + 24) = v5;
      v55 = sub_2245803F0;
      v56 = v6;
      aBlock = MEMORY[0x277D85DD0];
      v52 = 1107296256;
      v53 = sub_2245D4378;
      v54 = &block_descriptor_301;
      v30 = _Block_copy(&aBlock);

      v31 = a2;

      [v26 stopActuatorFeedbackWithInfo:v28 system:v29 completion:v30];

      swift_unknownObjectRelease_n();
      _Block_release(v30);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
      goto LABEL_6;
    }

    v42 = v49;
    (*(v6 + 16))(v9, &a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v5);
    v43 = sub_224627B58();
    v44 = sub_224628048();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_224507000, v43, v44, "failed asynchronous server XPC connection", v45, 2u);
      MEMORY[0x22AA526D0](v45, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    sub_22452ECAC();
    v36 = swift_allocError();
    *v46 = xmmword_22462FFB0;
    *(v46 + 16) = 4;
    swift_willThrow();
  }

  else
  {
    (*(v6 + 16))(v12, &a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v5);
    v38 = sub_224627B58();
    v39 = sub_224628048();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_224507000, v38, v39, "failed connecting to server xpc", v40, 2u);
      MEMORY[0x22AA526D0](v40, -1, -1);
    }

    (*(v6 + 8))(v12, v5);
    sub_22452ECAC();
    v36 = swift_allocError();
    *v41 = 0xD00000000000001FLL;
    *(v41 + 8) = 0x8000000224638700;
    *(v41 + 16) = 4;
    swift_willThrow();
  }

  sub_22456D918();
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v47 = v36;
  swift_continuation_throwingResumeWithError();
}

uint64_t sub_2245796CC(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = sub_224627B78();
  v6 = *(v5 - 1);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v48 - v11;
  MEMORY[0x28223BE20](v10);
  isEscapingClosureAtFileLocation = &v48 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  if (a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcAllowed] != 1)
  {
LABEL_6:
    (*(v6 + 16))(isEscapingClosureAtFileLocation, &a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v5);
    v33 = sub_224627B58();
    v34 = sub_224628048();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_224507000, v33, v34, "xpc lock/queue not initialized, no XPC configured", v35, 2u);
      MEMORY[0x22AA526D0](v35, -1, -1);
    }

    (*(v6 + 8))(isEscapingClosureAtFileLocation, v5);
    sub_22452ECAC();
    v36 = swift_allocError();
    *v37 = xmmword_22462FFA0;
    *(v37 + 16) = 3;
    goto LABEL_16;
  }

  v16 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock;
  v17 = *&a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock];

  os_unfair_lock_lock(v17 + 4);

  v18 = *&a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError];
  *&a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError] = 0;

  v19 = *&a2[v16];

  os_unfair_lock_unlock(v19 + 4);

  v20 = sub_22456C5D8();
  if (v20)
  {
    v48 = a3;
    v21 = v20;
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = sub_2245803FC;
    v23[4] = v15;
    v55 = sub_224580418;
    v56 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v52 = 1107296256;
    v53 = sub_2245D42E8;
    v54 = &block_descriptor_331;
    v24 = _Block_copy(&aBlock);

    v49 = v21;
    v25 = [v21 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v24);
    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9798);
    if (swift_dynamicCast())
    {
      v26 = v50;
      v27 = *&a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info];
      swift_unknownObjectRetain();
      v28 = v27;
      v29 = sub_224627CB8();
      v5 = swift_allocObject();
      v5[2] = a2;
      v5[3] = sub_2245803FC;
      v5[4] = v15;
      v6 = swift_allocObject();
      *(v6 + 16) = sub_22457FF70;
      *(v6 + 24) = v5;
      v55 = sub_2245803F0;
      v56 = v6;
      aBlock = MEMORY[0x277D85DD0];
      v52 = 1107296256;
      v53 = sub_2245D4378;
      v54 = &block_descriptor_341;
      v30 = _Block_copy(&aBlock);

      v31 = a2;

      [v26 stopTrajectoryProgressFeedbackWithInfo:v28 system:v29 completion:v30];

      swift_unknownObjectRelease_n();
      _Block_release(v30);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
      goto LABEL_6;
    }

    v42 = v49;
    (*(v6 + 16))(v9, &a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v5);
    v43 = sub_224627B58();
    v44 = sub_224628048();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_224507000, v43, v44, "failed asynchronous server XPC connection", v45, 2u);
      MEMORY[0x22AA526D0](v45, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    sub_22452ECAC();
    v36 = swift_allocError();
    *v46 = xmmword_22462FFB0;
    *(v46 + 16) = 4;
    swift_willThrow();
  }

  else
  {
    (*(v6 + 16))(v12, &a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v5);
    v38 = sub_224627B58();
    v39 = sub_224628048();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_224507000, v38, v39, "failed connecting to server xpc", v40, 2u);
      MEMORY[0x22AA526D0](v40, -1, -1);
    }

    (*(v6 + 8))(v12, v5);
    sub_22452ECAC();
    v36 = swift_allocError();
    *v41 = 0xD00000000000001FLL;
    *(v41 + 8) = 0x8000000224638700;
    *(v41 + 16) = 4;
    swift_willThrow();
  }

  sub_22456D918();
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v47 = v36;
  swift_continuation_throwingResumeWithError();
}

uint64_t sub_224579E94(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_sensorDelegates);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = result;

    v5 = 32;
    do
    {
      v6 = *(v2 + v5);
      if (v6)
      {
        swift_unknownObjectRetain();
        v7 = sub_224627CB8();
        v8 = sub_224627EB8();
        type metadata accessor for SensorData();
        v9 = sub_224627EB8();
        [v6 sensorDataWithInfo:v4 system:v7 sensors:v8 data:v9];

        swift_unknownObjectRelease();
      }

      v5 += 8;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_22457A0A4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v93 = a1;
  v11 = sub_224627B78();
  v12 = *(v11 - 1);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v94 = &v87 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v95 = &v87 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v87 - v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a6;
  if (a5[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcAllowed] == 1)
  {
    v91 = a6;
    v92 = v11;
    v96 = v12;
    v97 = a5;
    v89 = a4;
    v90 = v15;
    if (!a2)
    {
      v24 = 0;
      goto LABEL_23;
    }

    v88 = a3;
    if (a2 >> 62)
    {
      goto LABEL_41;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_224628478())
    {
      v24 = MEMORY[0x277D84F90];
      if (i)
      {
        aBlock = MEMORY[0x277D84F90];
        result = sub_22455C764(0, i & ~(i >> 63), 0);
        if (i < 0)
        {
          __break(1u);
          return result;
        }

        v87 = v22;
        v24 = aBlock;
        if ((a2 & 0xC000000000000001) != 0)
        {
          v26 = 0;
          do
          {
            v27 = MEMORY[0x22AA517F0](v26, a2);
            v29 = *(v27 + OBJC_IVAR____TtC11DockKitCore9Component_name);
            v28 = *(v27 + OBJC_IVAR____TtC11DockKitCore9Component_name + 8);

            swift_unknownObjectRelease();
            aBlock = v24;
            v31 = *(v24 + 16);
            v30 = *(v24 + 24);
            if (v31 >= v30 >> 1)
            {
              sub_22455C764((v30 > 1), v31 + 1, 1);
              v24 = aBlock;
            }

            ++v26;
            *(v24 + 16) = v31 + 1;
            v32 = v24 + 16 * v31;
            *(v32 + 32) = v29;
            *(v32 + 40) = v28;
          }

          while (i != v26);
        }

        else
        {
          v39 = (a2 + 32);
          do
          {
            v40 = (*v39 + OBJC_IVAR____TtC11DockKitCore9Component_name);
            v42 = *v40;
            v41 = v40[1];
            aBlock = v24;
            v44 = *(v24 + 16);
            v43 = *(v24 + 24);

            if (v44 >= v43 >> 1)
            {
              sub_22455C764((v43 > 1), v44 + 1, 1);
              v24 = aBlock;
            }

            *(v24 + 16) = v44 + 1;
            v45 = v24 + 16 * v44;
            *(v45 + 32) = v42;
            *(v45 + 40) = v41;
            ++v39;
            --i;
          }

          while (i);
        }

        v22 = v87;
        v11 = v92;
        v12 = v96;
        a5 = v97;
      }

      a3 = v88;
LABEL_23:
      v46 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock;
      v47 = *&a5[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock];

      os_unfair_lock_lock(v47 + 4);

      v48 = *&a5[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError];
      *&a5[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError] = 0;

      v49 = *&a5[v46];

      os_unfair_lock_unlock(v49 + 4);

      v50 = sub_22456C5D8();
      if (!v50)
      {
        break;
      }

      v51 = v50;
      v52 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v53 = swift_allocObject();
      v53[2] = v52;
      v53[3] = sub_22457FDC0;
      v53[4] = v22;
      v103 = sub_22457FDDC;
      v104 = v53;
      aBlock = MEMORY[0x277D85DD0];
      v100 = 1107296256;
      v101 = sub_2245D42E8;
      v102 = &block_descriptor_192;
      v54 = _Block_copy(&aBlock);
      v88 = v52;

      v95 = v51;
      v55 = [v51 synchronousRemoteObjectProxyWithErrorHandler_];
      _Block_release(v54);
      sub_224628278();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9798);
      if ((swift_dynamicCast() & 1) == 0)
      {

        v58 = *(v12 + 16);
        v66 = v94;
        v58(v94, &a5[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v92);
        v67 = sub_224627B58();
        v68 = sub_224628048();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          *v69 = 0;
          _os_log_impl(&dword_224507000, v67, v68, "failed asynchronous server XPC connection", v69, 2u);
          MEMORY[0x22AA526D0](v69, -1, -1);
        }

        v63 = *(v96 + 8);
        v11 = v92;
        v63(v66, v92);
        sub_22452ECAC();
        v64 = swift_allocError();
        *v70 = xmmword_22462FFB0;
        *(v70 + 16) = 4;
        swift_willThrow();

        goto LABEL_33;
      }

      v12 = a3;
      v56 = v98;
      v57 = *&a5[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info];
      swift_unknownObjectRetain();
      v11 = v57;
      v96 = sub_224627CB8();
      if (v24)
      {
        v94 = sub_224627EB8();
      }

      else
      {
        v94 = 0;
      }

      v82 = swift_allocObject();
      v82[2] = a2;
      v82[3] = a5;
      v82[4] = v12;
      v82[5] = sub_22457FDC0;
      v82[6] = v22;
      v83 = swift_allocObject();
      *(v83 + 16) = sub_22457FE04;
      *(v83 + 24) = v82;
      v103 = sub_2245803F0;
      v104 = v83;
      aBlock = MEMORY[0x277D85DD0];
      v100 = 1107296256;
      v101 = sub_2245D4378;
      v102 = &block_descriptor_202;
      v84 = _Block_copy(&aBlock);

      v85 = a5;
      swift_unknownObjectRetain();

      v86 = v96;
      a5 = v94;
      [v56 getSensorDataWithInfo:v11 system:v96 sensors:v94 occurrence:v89 completion:v84];

      swift_unknownObjectRelease_n();
      _Block_release(v84);
      LOBYTE(v84) = swift_isEscapingClosureAtFileLocation();

      if ((v84 & 1) == 0)
      {
        return result;
      }

      __break(1u);
LABEL_41:
      ;
    }

    v58 = *(v12 + 16);
    v59 = v95;
    v58(v95, &a5[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v11);
    v60 = sub_224627B58();
    v61 = sub_224628048();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_224507000, v60, v61, "failed connecting to server xpc", v62, 2u);
      MEMORY[0x22AA526D0](v62, -1, -1);
    }

    v63 = *(v96 + 8);
    v63(v59, v11);
    sub_22452ECAC();
    v64 = swift_allocError();
    *v65 = 0xD00000000000001FLL;
    *(v65 + 8) = 0x8000000224638700;
    *(v65 + 16) = 4;
    swift_willThrow();
LABEL_33:
    v71 = v90;
    v58(v90, &v97[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v11);
    v72 = v64;
    v73 = sub_224627B58();
    v74 = sub_224628048();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = v71;
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v76 = 138412290;
      v78 = v64;
      v79 = _swift_stdlib_bridgeErrorToNSError();
      *(v76 + 4) = v79;
      *v77 = v79;
      _os_log_impl(&dword_224507000, v73, v74, "dockkit: failed getting sync connection, can't send xpc %@", v76, 0xCu);
      sub_2245098A0(v77, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v77, -1, -1);
      v80 = v76;
      v71 = v75;
      MEMORY[0x22AA526D0](v80, -1, -1);
    }

    v63(v71, v11);
    sub_22456D918();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
    swift_allocError();
    *v81 = v64;
  }

  else
  {
    (*(v12 + 16))(v21, &a5[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v11);
    v33 = sub_224627B58();
    v34 = sub_224628048();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_224507000, v33, v34, "xpc lock/queue not initialized, no XPC configured", v35, 2u);
      MEMORY[0x22AA526D0](v35, -1, -1);
    }

    (*(v12 + 8))(v21, v11);
    sub_22452ECAC();
    v36 = swift_allocError();
    *v37 = xmmword_22462FFA0;
    *(v37 + 16) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
    swift_allocError();
    *v38 = v36;
  }

  swift_continuation_throwingResumeWithError();
}

uint64_t sub_22457AC04(char a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t), uint64_t a7, void *a8)
{
  if (!a3)
  {
    goto LABEL_8;
  }

  if (a3 >> 62)
  {
    v14 = a8;
    v15 = sub_224628478();
    a8 = v14;
    if (v15 >= 1)
    {
      goto LABEL_4;
    }

LABEL_8:
    *(a4 + *a8) = MEMORY[0x277D84F90];

    return a6(a1 & 1, a2);
  }

  if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_8;
  }

LABEL_4:
  v12 = *a8;
  v13 = swift_unknownObjectRetain();
  MEMORY[0x22AA51310](v13);
  if (*(*(a4 + v12) + 16) >= *(*(a4 + v12) + 24) >> 1)
  {
    sub_224627EF8();
  }

  sub_224627F08();
  return a6(a1 & 1, a2);
}

uint64_t sub_22457AD18(uint64_t a1, unint64_t a2, char *a3, void *a4)
{
  v8 = sub_224627B78();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v86 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v94 = &v86 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v86 - v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  if (a3[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcAllowed] == 1)
  {
    v92 = v9;
    v93 = a3;
    v90 = v12;
    v91 = v8;
    v88 = a1;
    v89 = v15;
    if (!a2)
    {
      v22 = 0;
      goto LABEL_22;
    }

    if (a2 >> 62)
    {
      goto LABEL_40;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_224628478())
    {
      v22 = MEMORY[0x277D84F90];
      if (i)
      {
        aBlock = MEMORY[0x277D84F90];
        result = sub_22455C764(0, i & ~(i >> 63), 0);
        if (i < 0)
        {
          __break(1u);
          return result;
        }

        v86 = a4;
        v87 = v20;
        v22 = aBlock;
        if ((a2 & 0xC000000000000001) != 0)
        {
          v24 = 0;
          do
          {
            v25 = MEMORY[0x22AA517F0](v24, a2);
            v27 = *(v25 + OBJC_IVAR____TtC11DockKitCore9Component_name);
            v26 = *(v25 + OBJC_IVAR____TtC11DockKitCore9Component_name + 8);

            swift_unknownObjectRelease();
            aBlock = v22;
            v29 = *(v22 + 16);
            v28 = *(v22 + 24);
            if (v29 >= v28 >> 1)
            {
              sub_22455C764((v28 > 1), v29 + 1, 1);
              v22 = aBlock;
            }

            ++v24;
            *(v22 + 16) = v29 + 1;
            v30 = v22 + 16 * v29;
            *(v30 + 32) = v27;
            *(v30 + 40) = v26;
          }

          while (i != v24);
        }

        else
        {
          v37 = (a2 + 32);
          do
          {
            v38 = (*v37 + OBJC_IVAR____TtC11DockKitCore9Component_name);
            v40 = *v38;
            v39 = v38[1];
            aBlock = v22;
            v42 = *(v22 + 16);
            v41 = *(v22 + 24);

            if (v42 >= v41 >> 1)
            {
              sub_22455C764((v41 > 1), v42 + 1, 1);
              v22 = aBlock;
            }

            *(v22 + 16) = v42 + 1;
            v43 = v22 + 16 * v42;
            *(v43 + 32) = v40;
            *(v43 + 40) = v39;
            ++v37;
            --i;
          }

          while (i);
        }

        v20 = v87;
        a3 = v93;
        v8 = v91;
      }

LABEL_22:
      v44 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock;
      v45 = *&a3[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock];

      os_unfair_lock_lock(v45 + 4);

      v46 = *&a3[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError];
      *&a3[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError] = 0;

      v47 = *&a3[v44];

      os_unfair_lock_unlock(v47 + 4);

      v48 = sub_22456C5D8();
      if (!v48)
      {
        break;
      }

      v49 = v48;
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v50 = swift_allocObject();
      v50[2] = v8;
      v50[3] = sub_2245803FC;
      v50[4] = v20;
      v100 = sub_224580418;
      v101 = v50;
      aBlock = MEMORY[0x277D85DD0];
      v97 = 1107296256;
      v98 = sub_2245D42E8;
      v99 = &block_descriptor_172;
      v51 = _Block_copy(&aBlock);

      v94 = v49;
      v52 = [v49 synchronousRemoteObjectProxyWithErrorHandler_];
      _Block_release(v51);
      sub_224628278();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9798);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v88 = v8;

        v64 = v92;
        v57 = v92[2];
        v65 = v89;
        v57(v89, &a3[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v91);
        v66 = v65;
        v67 = sub_224627B58();
        v68 = sub_224628048();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          *v69 = 0;
          _os_log_impl(&dword_224507000, v67, v68, "failed asynchronous server XPC connection", v69, 2u);
          MEMORY[0x22AA526D0](v69, -1, -1);
        }

        v61 = v64[1];
        v70 = v66;
        v8 = v91;
        v61(v70, v91);
        sub_22452ECAC();
        v62 = swift_allocError();
        *v71 = xmmword_22462FFB0;
        *(v71 + 16) = 4;
        swift_willThrow();

        goto LABEL_32;
      }

      v53 = v95;
      v54 = *&a3[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info];
      swift_unknownObjectRetain();
      v92 = v54;
      v55 = sub_224627CB8();
      if (v22)
      {
        a3 = sub_224627EB8();
      }

      else
      {
        a3 = 0;
      }

      a4 = swift_allocObject();
      a2 = v93;
      a4[2] = v93;
      a4[3] = sub_2245803FC;
      a4[4] = v20;
      v82 = swift_allocObject();
      *(v82 + 16) = sub_22457FD60;
      *(v82 + 24) = a4;
      v100 = sub_2245803F0;
      v101 = v82;
      aBlock = MEMORY[0x277D85DD0];
      v97 = 1107296256;
      v98 = sub_2245D4378;
      v99 = &block_descriptor_182;
      v83 = _Block_copy(&aBlock);

      v84 = a2;

      v85 = v92;
      [v53 stopSensorDataWithInfo:v92 system:v55 sensors:a3 completion:v83];

      swift_unknownObjectRelease_n();
      _Block_release(v83);
      LOBYTE(v83) = swift_isEscapingClosureAtFileLocation();

      if ((v83 & 1) == 0)
      {
        return result;
      }

      __break(1u);
LABEL_40:
      ;
    }

    v56 = v92;
    v57 = v92[2];
    v57(v94, &a3[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v8);
    v58 = sub_224627B58();
    v59 = sub_224628048();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_224507000, v58, v59, "failed connecting to server xpc", v60, 2u);
      MEMORY[0x22AA526D0](v60, -1, -1);
    }

    v61 = v56[1];
    v61(v94, v8);
    sub_22452ECAC();
    v62 = swift_allocError();
    *v63 = 0xD00000000000001FLL;
    *(v63 + 8) = 0x8000000224638700;
    *(v63 + 16) = 4;
    swift_willThrow();
LABEL_32:
    v72 = v90;
    v57(v90, &v93[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v8);
    v73 = v62;
    v74 = v72;
    v75 = sub_224627B58();
    v76 = sub_224628048();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v77 = 138412290;
      v79 = v62;
      v80 = _swift_stdlib_bridgeErrorToNSError();
      *(v77 + 4) = v80;
      *v78 = v80;
      _os_log_impl(&dword_224507000, v75, v76, "dockkit: failed getting sync connection, can't send xpc %@", v77, 0xCu);
      sub_2245098A0(v78, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v78, -1, -1);
      MEMORY[0x22AA526D0](v77, -1, -1);
    }

    v61(v74, v8);
    sub_22456D918();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
    swift_allocError();
    *v81 = v62;
  }

  else
  {
    (*(v9 + 16))(v19, &a3[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v8);
    v31 = sub_224627B58();
    v32 = sub_224628048();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_224507000, v31, v32, "xpc lock/queue not initialized, no XPC configured", v33, 2u);
      MEMORY[0x22AA526D0](v33, -1, -1);
    }

    (*(v9 + 8))(v19, v8);
    sub_22452ECAC();
    v34 = swift_allocError();
    *v35 = xmmword_22462FFA0;
    *(v35 + 16) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
    swift_allocError();
    *v36 = v34;
  }

  swift_continuation_throwingResumeWithError();
}

uint64_t sub_22457B83C(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, void *a5)
{
  v94 = a1;
  v9 = sub_224627B78();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v87 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v95 = &v87 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v87 - v19;
  v21 = swift_allocObject();
  v21[2] = a5;
  if (a4[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcAllowed] != 1)
  {
    (*(v10 + 16))(v20, &a4[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v9);
    v32 = sub_224627B58();
    v33 = sub_224628048();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_224507000, v32, v33, "xpc lock/queue not initialized, no XPC configured", v34, 2u);
      MEMORY[0x22AA526D0](v34, -1, -1);
    }

    (*(v10 + 8))(v20, v9);
    sub_22452ECAC();
    v35 = swift_allocError();
    *v36 = xmmword_22462FFA0;
    *(v36 + 16) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
    swift_allocError();
    *v37 = v35;
    goto LABEL_37;
  }

  v92 = v16;
  v93 = v13;
  v96 = v10;
  v97 = a4;
  v91 = a3;
  if (!a2)
  {
    v23 = 0;
    goto LABEL_23;
  }

  if (a2 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_224628478())
  {
    v23 = MEMORY[0x277D84F90];
    if (i)
    {
      aBlock = MEMORY[0x277D84F90];
      result = sub_22455C764(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v88 = v9;
      v89 = a5;
      v90 = v21;
      v23 = aBlock;
      if ((a2 & 0xC000000000000001) != 0)
      {
        v25 = 0;
        do
        {
          v26 = MEMORY[0x22AA517F0](v25, a2);
          v28 = *(v26 + OBJC_IVAR____TtC11DockKitCore9Component_name);
          v27 = *(v26 + OBJC_IVAR____TtC11DockKitCore9Component_name + 8);

          swift_unknownObjectRelease();
          aBlock = v23;
          v30 = *(v23 + 16);
          v29 = *(v23 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_22455C764((v29 > 1), v30 + 1, 1);
            v23 = aBlock;
          }

          ++v25;
          *(v23 + 16) = v30 + 1;
          v31 = v23 + 16 * v30;
          *(v31 + 32) = v28;
          *(v31 + 40) = v27;
        }

        while (i != v25);
      }

      else
      {
        v38 = (a2 + 32);
        do
        {
          v39 = (*v38 + OBJC_IVAR____TtC11DockKitCore9Component_name);
          v41 = *v39;
          v40 = v39[1];
          aBlock = v23;
          v43 = *(v23 + 16);
          v42 = *(v23 + 24);

          if (v43 >= v42 >> 1)
          {
            sub_22455C764((v42 > 1), v43 + 1, 1);
            v23 = aBlock;
          }

          *(v23 + 16) = v43 + 1;
          v44 = v23 + 16 * v43;
          *(v44 + 32) = v41;
          *(v44 + 40) = v40;
          ++v38;
          --i;
        }

        while (i);
      }

      v21 = v90;
      v9 = v88;
      v10 = v96;
    }

    a4 = v97;
LABEL_23:
    v45 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock;
    v46 = *&a4[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock];

    os_unfair_lock_lock(v46 + 4);

    v47 = *&a4[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError];
    *&a4[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError] = 0;

    v48 = *&a4[v45];

    os_unfair_lock_unlock(v48 + 4);

    v49 = sub_22456C5D8();
    if (!v49)
    {
      break;
    }

    v50 = v49;
    v51 = v9;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v52 = swift_allocObject();
    v52[2] = v9;
    v52[3] = sub_2245803FC;
    v52[4] = v21;
    v103 = sub_224580418;
    v104 = v52;
    aBlock = MEMORY[0x277D85DD0];
    v100 = 1107296256;
    v101 = sub_2245D42E8;
    v102 = &block_descriptor_153;
    v53 = _Block_copy(&aBlock);

    v54 = [v50 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v53);
    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9798);
    v55 = swift_dynamicCast();
    v90 = v50;
    if ((v55 & 1) == 0)
    {

      v67 = a4;
      v60 = *(v10 + 16);
      v60(v92, &v67[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v51);
      v68 = sub_224627B58();
      v69 = sub_224628048();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_224507000, v68, v69, "failed asynchronous server XPC connection", v70, 2u);
        MEMORY[0x22AA526D0](v70, -1, -1);
      }

      v64 = *(v96 + 8);
      v71 = v51;
      v64(v92, v51);
      sub_22452ECAC();
      v65 = swift_allocError();
      *v72 = xmmword_22462FFB0;
      *(v72 + 16) = 4;
      swift_willThrow();

      v9 = v71;

      goto LABEL_34;
    }

    a2 = v21;
    v56 = v98;
    v57 = *&a4[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info];
    swift_unknownObjectRetain();
    v97 = v57;
    v21 = sub_224627CB8();
    if (v23)
    {
      a5 = sub_224627EB8();

      if (v91)
      {
        goto LABEL_27;
      }
    }

    else
    {
      a5 = 0;
      if (v91)
      {
LABEL_27:
        type metadata accessor for SensorData();
        v58 = sub_224627EB8();
        goto LABEL_41;
      }
    }

    v58 = 0;
LABEL_41:
    v84 = swift_allocObject();
    *(v84 + 16) = sub_2245803FC;
    *(v84 + 24) = a2;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_22457FD30;
    *(v10 + 24) = v84;
    v103 = sub_22457FD58;
    v104 = v10;
    aBlock = MEMORY[0x277D85DD0];
    v100 = 1107296256;
    v101 = sub_2245D4378;
    v102 = &block_descriptor_162;
    v85 = _Block_copy(&aBlock);

    v86 = v97;
    [v56 setSensorStatesWithInfo:v97 system:v21 sensors:a5 states:v58 completion:v85];

    swift_unknownObjectRelease_n();
    _Block_release(v85);
    LOBYTE(v85) = swift_isEscapingClosureAtFileLocation();

    if ((v85 & 1) == 0)
    {
      return result;
    }

    __break(1u);
LABEL_43:
    ;
  }

  v59 = a4;
  v60 = *(v10 + 16);
  v60(v95, &v59[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v9);
  v61 = sub_224627B58();
  v62 = sub_224628048();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_224507000, v61, v62, "failed connecting to server xpc", v63, 2u);
    MEMORY[0x22AA526D0](v63, -1, -1);
  }

  v64 = *(v96 + 8);
  v64(v95, v9);
  sub_22452ECAC();
  v65 = swift_allocError();
  *v66 = 0xD00000000000001FLL;
  *(v66 + 8) = 0x8000000224638700;
  *(v66 + 16) = 4;
  swift_willThrow();
LABEL_34:
  v73 = v93;
  v60(v93, &v97[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v9);
  v74 = v65;
  v75 = sub_224627B58();
  v76 = sub_224628048();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = v73;
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    *v78 = 138412290;
    v80 = v65;
    v81 = _swift_stdlib_bridgeErrorToNSError();
    *(v78 + 4) = v81;
    *v79 = v81;
    _os_log_impl(&dword_224507000, v75, v76, "dockkit: failed getting sync connection, can't send xpc %@", v78, 0xCu);
    sub_2245098A0(v79, &qword_27D0C9660);
    MEMORY[0x22AA526D0](v79, -1, -1);
    v82 = v78;
    v73 = v77;
    MEMORY[0x22AA526D0](v82, -1, -1);
  }

  v64(v73, v9);
  sub_22456D918();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v83 = v65;
LABEL_37:
  swift_continuation_throwingResumeWithError();
}

uint64_t sub_22457C39C(uint64_t a1, void *a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
    swift_allocError();
    *v3 = a2;
    v4 = a2;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

id DockCoreAccessory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SystemController.__allocating_init(accessory:id:type:name:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  swift_unknownObjectWeakInit();
  *&v11[OBJC_IVAR____TtC11DockKitCore6System_components] = MEMORY[0x277D84F98];
  *&v11[OBJC_IVAR____TtC11DockKitCore6System_id] = a2;
  *&v11[OBJC_IVAR____TtC11DockKitCore6System_type] = a3;
  v12 = &v11[OBJC_IVAR____TtC11DockKitCore6System_name];
  *v12 = a4;
  *(v12 + 1) = a5;
  v15.receiver = v11;
  v15.super_class = type metadata accessor for System();
  v13 = objc_msgSendSuper2(&v15, sel_init);
  swift_unknownObjectWeakAssign();

  return v13;
}

id SystemController.init(accessory:id:type:name:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC11DockKitCore6System_components] = MEMORY[0x277D84F98];
  *&v5[OBJC_IVAR____TtC11DockKitCore6System_id] = a2;
  *&v5[OBJC_IVAR____TtC11DockKitCore6System_type] = a3;
  v11 = &v5[OBJC_IVAR____TtC11DockKitCore6System_name];
  *v11 = a4;
  *(v11 + 1) = a5;
  v14.receiver = v5;
  v14.super_class = type metadata accessor for System();
  v12 = objc_msgSendSuper2(&v14, sel_init);
  swift_unknownObjectWeakAssign();

  return v12;
}

id SystemController.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  v4 = sub_2245B4A54();

  return v4;
}

id SystemController.init(coder:)(void *a1)
{
  swift_unknownObjectWeakInit();
  v2 = sub_2245B4A54();

  return v2;
}

id SystemController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SystemController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22457C960(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0CA3B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for DockCoreAccessory()
{
  result = qword_27D0C96C8;
  if (!qword_27D0C96C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22457CA1C(uint64_t a1, void *a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a2;
  v49 = a3;
  v47[1] = a1;
  v11 = sub_224627B78();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a7;
  v16 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock;
  v17 = *(a6 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock);

  os_unfair_lock_lock(v17 + 4);

  v18 = *(a6 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError);
  *(a6 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError) = 0;

  v19 = *(a6 + v16);

  os_unfair_lock_unlock(v19 + 4);

  v20 = sub_22456C5D8();
  if (v20)
  {
    v21 = v20;
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = sub_2245803FC;
    v23[4] = v15;
    v55 = sub_22457FFD0;
    v56 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v52 = 1107296256;
    v53 = sub_2245D42E8;
    v54 = &block_descriptor_351;
    v24 = _Block_copy(&aBlock);

    v25 = [v21 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v24);
    sub_224628278();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9798);
    if (swift_dynamicCast())
    {
      v26 = v50;
    }

    else
    {
      v26 = 0;
    }

    LOWORD(aBlock) = a4;
    v52 = a5;
    v27 = TrajectoryCommand.encode()();
    if (v27)
    {
      v28 = v27;
      if (v26)
      {
        v29 = *(a6 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info);
        v30 = v48;
        if (v48)
        {
          swift_unknownObjectRetain();
          v31 = v29;
          v30 = sub_224627CB8();
        }

        else
        {
          swift_unknownObjectRetain();
          v43 = v29;
        }

        v44 = swift_allocObject();
        *(v44 + 16) = sub_2245803FC;
        *(v44 + 24) = v15;
        v55 = sub_2245803F4;
        v56 = v44;
        aBlock = MEMORY[0x277D85DD0];
        v52 = 1107296256;
        v53 = sub_2245D43DC;
        v54 = &block_descriptor_357;
        v45 = _Block_copy(&aBlock);

        [v26 sendTrajectoryWithInfo:v29 system:v30 data:v28 completion:v45];

        swift_unknownObjectRelease_n();
        _Block_release(v45);
      }

      else
      {
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }

    swift_unknownObjectWeakAssign();
  }

  else
  {
    v49 = a7;
    sub_22452ECAC();
    v32 = swift_allocError();
    *v33 = xmmword_22462FFB0;
    *(v33 + 16) = 4;
    swift_willThrow();
    (*(v12 + 16))(v14, a6 + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger, v11);
    v34 = v32;
    v35 = v32;
    v36 = sub_224627B58();
    v37 = sub_224628048();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      v40 = v32;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v41;
      *v39 = v41;
      _os_log_impl(&dword_224507000, v36, v37, "dockkit: failed getting sync debug connection, can't send xpc %@", v38, 0xCu);
      sub_2245098A0(v39, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v39, -1, -1);
      MEMORY[0x22AA526D0](v38, -1, -1);
    }

    (*(v12 + 8))(v14, v11);
    sub_22456D918();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
    swift_allocError();
    *v42 = v32;
    swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_22457CFF8(void *a1, char *a2, uint64_t a3)
{
  v6 = sub_224627B78();
  v7 = *(v6 - 1);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v60 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v60 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = (v60 - v17);
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  if (a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcAllowed] == 1)
  {
    v63 = a1;
    v64 = v19;
    v20 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock;
    v21 = *&a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock];

    os_unfair_lock_lock(v21 + 4);

    v22 = *&a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError];
    *&a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError] = 0;

    v23 = *&a2[v20];

    os_unfair_lock_unlock(v23 + 4);

    v24 = sub_22456C5D8();
    if (v24)
    {
      v25 = v24;
      v60[1] = a3;
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v27 = swift_allocObject();
      v27[2] = v26;
      v27[3] = sub_2245804EC;
      v28 = v64;
      v27[4] = v64;
      v70 = sub_22458041C;
      v71 = v27;
      aBlock = MEMORY[0x277D85DD0];
      v67 = 1107296256;
      v68 = sub_2245D42E8;
      v69 = &block_descriptor_213;
      v29 = _Block_copy(&aBlock);

      v30 = [v25 synchronousRemoteObjectProxyWithErrorHandler_];
      _Block_release(v29);
      sub_224628278();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9798);
      v31 = swift_dynamicCast();
      v61 = v25;
      if (v31)
      {
        v6 = v65;
        v32 = *&a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info];
        v18 = swift_allocObject();
        v7 = v63;
        v18[2] = a2;
        v18[3] = v7;
        v18[4] = sub_2245804EC;
        v18[5] = v28;
        v33 = swift_allocObject();
        *(v33 + 16) = sub_22457FE10;
        *(v33 + 24) = v18;
        v70 = sub_22457FE38;
        v71 = v33;
        aBlock = MEMORY[0x277D85DD0];
        v67 = 1107296256;
        v68 = sub_224611654;
        v69 = &block_descriptor_222;
        v34 = _Block_copy(&aBlock);

        v35 = v32;
        v36 = a2;
        v37 = v7;

        [v6 startSystemEventsDataWithInfo:v35 completion:v34];
        swift_unknownObjectRelease();

        _Block_release(v34);
        LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

        if ((v35 & 1) == 0)
        {
          return result;
        }

        __break(1u);
        goto LABEL_6;
      }

      v63 = v7[2];
      (v63)(v13, &a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v6);
      v48 = sub_224627B58();
      v49 = sub_224628048();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_224507000, v48, v49, "failed asynchronous server XPC connection", v50, 2u);
        MEMORY[0x22AA526D0](v50, -1, -1);
      }

      v62 = v7[1];
      v62(v13, v6);
      sub_22452ECAC();
      v42 = swift_allocError();
      *v51 = xmmword_22462FFB0;
      *(v51 + 16) = 4;
      swift_willThrow();
    }

    else
    {
      v63 = v7[2];
      (v63)(v16, &a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v6);
      v44 = sub_224627B58();
      v45 = sub_224628048();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_224507000, v44, v45, "failed connecting to server xpc", v46, 2u);
        MEMORY[0x22AA526D0](v46, -1, -1);
      }

      v62 = v7[1];
      v62(v16, v6);
      sub_22452ECAC();
      v42 = swift_allocError();
      *v47 = 0xD00000000000001FLL;
      *(v47 + 8) = 0x8000000224638700;
      *(v47 + 16) = 4;
      swift_willThrow();
    }

    (v63)(v10, &a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v6);
    v52 = v42;
    v53 = sub_224627B58();
    v54 = sub_224628048();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412290;
      v57 = v42;
      v58 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 4) = v58;
      *v56 = v58;
      _os_log_impl(&dword_224507000, v53, v54, "dockkit: failed getting sync connection, can't send xpc %@", v55, 0xCu);
      sub_2245098A0(v56, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v56, -1, -1);
      MEMORY[0x22AA526D0](v55, -1, -1);
    }

    v62(v10, v6);
    sub_22456D918();
    goto LABEL_18;
  }

LABEL_6:
  (v7[2])(v18, &a2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v6);
  v39 = sub_224627B58();
  v40 = sub_224628048();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_224507000, v39, v40, "xpc lock/queue not initialized, no XPC configured", v41, 2u);
    MEMORY[0x22AA526D0](v41, -1, -1);
  }

  (v7[1])(v18, v6);
  sub_22452ECAC();
  v42 = swift_allocError();
  *v43 = xmmword_22462FFA0;
  *(v43 + 16) = 3;
LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
  swift_allocError();
  *v59 = v42;
  swift_continuation_throwingResumeWithError();
}

void sub_22457D90C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = sub_224627B78();
  isEscapingClosureAtFileLocation = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v63 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v63 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = (&v63 - v19);
  if (a4[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcAllowed] == 1)
  {
    v68 = a2;
    v21 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock;
    v22 = *&a4[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock];

    os_unfair_lock_lock(v22 + 4);

    v23 = *&a4[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError];
    *&a4[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError] = 0;

    v24 = *&a4[v21];

    os_unfair_lock_unlock(v24 + 4);

    v25 = sub_22456C5D8();
    if (v25)
    {
      v63 = v12;
      v67 = a1;
      v26 = v25;
      v27 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v28 = swift_allocObject();
      v29 = v68;
      v28[2] = v27;
      v28[3] = v29;
      v28[4] = a3;
      v74 = sub_22458041C;
      v75 = v28;
      aBlock = MEMORY[0x277D85DD0];
      v71 = 1107296256;
      v72 = sub_2245D42E8;
      v73 = &block_descriptor_513;
      v30 = _Block_copy(&aBlock);

      v64 = v26;
      v31 = [v26 synchronousRemoteObjectProxyWithErrorHandler_];
      _Block_release(v30);
      sub_224628278();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9798);
      if (swift_dynamicCast())
      {
        v32 = v69;
        v33 = *&a4[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info];
        v20 = swift_allocObject();
        v8 = v67;
        v20[2] = a4;
        v20[3] = v8;
        v20[4] = v29;
        v20[5] = a3;
        a2 = swift_allocObject();
        *(a2 + 16) = sub_2245803EC;
        *(a2 + 24) = v20;
        v74 = sub_2245804E8;
        v75 = a2;
        aBlock = MEMORY[0x277D85DD0];
        v71 = 1107296256;
        v72 = sub_224611654;
        v73 = &block_descriptor_524;
        v34 = _Block_copy(&aBlock);

        v35 = v33;
        v36 = a4;
        swift_unknownObjectRetain();

        [v32 startSystemEventsDataWithInfo:v35 completion:v34];
        swift_unknownObjectRelease();

        _Block_release(v34);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return;
        }

        __break(1u);
        goto LABEL_6;
      }

      v67 = a3;
      v66 = *(isEscapingClosureAtFileLocation + 16);
      v66(v15, &a4[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v8);
      v48 = sub_224627B58();
      v49 = sub_224628048();
      v50 = os_log_type_enabled(v48, v49);
      v12 = v63;
      if (v50)
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_224507000, v48, v49, "failed asynchronous server XPC connection", v51, 2u);
        MEMORY[0x22AA526D0](v51, -1, -1);
      }

      v65 = *(isEscapingClosureAtFileLocation + 8);
      v65(v15, v8);
      sub_22452ECAC();
      v42 = swift_allocError();
      *v52 = xmmword_22462FFB0;
      *(v52 + 16) = 4;
      swift_willThrow();
    }

    else
    {
      v67 = a3;
      v66 = *(isEscapingClosureAtFileLocation + 16);
      v66(v18, &a4[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v8);
      v44 = sub_224627B58();
      v45 = sub_224628048();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_224507000, v44, v45, "failed connecting to server xpc", v46, 2u);
        MEMORY[0x22AA526D0](v46, -1, -1);
      }

      v65 = *(isEscapingClosureAtFileLocation + 8);
      v65(v18, v8);
      sub_22452ECAC();
      v42 = swift_allocError();
      *v47 = 0xD00000000000001FLL;
      *(v47 + 8) = 0x8000000224638700;
      *(v47 + 16) = 4;
      swift_willThrow();
    }

    v53 = v68;
    v66(v12, &a4[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v8);
    v54 = v42;
    v55 = sub_224627B58();
    v56 = sub_224628048();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v57 = 138412290;
      v59 = v42;
      v60 = _swift_stdlib_bridgeErrorToNSError();
      *(v57 + 4) = v60;
      *v58 = v60;
      _os_log_impl(&dword_224507000, v55, v56, "dockkit: failed getting sync connection, can't send xpc %@", v57, 0xCu);
      sub_2245098A0(v58, &qword_27D0C9660);
      MEMORY[0x22AA526D0](v58, -1, -1);
      v61 = v57;
      v53 = v68;
      MEMORY[0x22AA526D0](v61, -1, -1);
    }

    v65(v12, v8);
    sub_22456D918();
    v62 = v42;
    v53(v42);

    goto LABEL_18;
  }

LABEL_6:
  (*(isEscapingClosureAtFileLocation + 16))(v20, &a4[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_logger], v8);
  v37 = sub_224627B58();
  v38 = sub_224628048();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = a2;
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_224507000, v37, v38, "xpc lock/queue not initialized, no XPC configured", v40, 2u);
    v41 = v40;
    a2 = v39;
    MEMORY[0x22AA526D0](v41, -1, -1);
  }

  (*(isEscapingClosureAtFileLocation + 8))(v20, v8);
  sub_22452ECAC();
  v42 = swift_allocError();
  *v43 = xmmword_22462FFA0;
  *(v43 + 16) = 3;
  (a2)();
LABEL_18:
}

id sub_22457E1D8(void *a1, uint64_t a2)
{
  v5 = sub_224627118();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnection] = 0;
  v9 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9670);
  v10 = swift_allocObject();
  *&v2[v9] = v10;
  *&v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnectionError] = 0;
  v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcAllowed] = 0;
  *(v10 + 16) = 0;
  *&v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_XPCTIMEOUT] = 0x4008000000000000;
  v11 = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_feedbackDelegates] = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_sensorDelegates] = v11;
  *&v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_eventDelegates] = v11;
  *&v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_batteryDelegates] = v11;
  *&v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_trackingSummaryDelegates] = v11;
  swift_unknownObjectWeakInit();
  sub_224627B68();
  v12 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_systems;
  v13 = &v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_model];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_firmwareVersion];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_serialNumber];
  *v15 = 0;
  v15[1] = 0;
  v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_certified] = 0;
  v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_isMagSafe] = 0;
  v16 = OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_version;
  *&v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_version] = -1;
  v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_needsMigration] = 0;
  *&v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory__xpcConnection_CameraCapture] = 0;
  *&v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_info] = a1;
  *&v2[v12] = a2;
  v17 = a1;
  sub_2246270E8();
  (*(v6 + 32))(&v2[OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_created], v8, v5);
  *&v2[v16] = 2;
  v18 = type metadata accessor for DockCoreAccessory();
  v20.receiver = v2;
  v20.super_class = v18;
  return objc_msgSendSuper2(&v20, sel_init);
}

uint64_t keypath_get_16Tm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v3 = (*a1 + *a2);
  v4 = v3[1];
  *a3 = *v3;
  a3[1] = v4;
}

uint64_t keypath_set_17Tm(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_22457E500()
{
  result = sub_224627B78();
  if (v1 <= 0x3F)
  {
    result = sub_224627118();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of DockCoreAccessory.startSystemEventsData(delegate:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x450);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22450D030;

  return v7(a1);
}

uint64_t dispatch thunk of DockCoreAccessory.getCurrentSystemEvent()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x460);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22457F22C;

  return v5();
}

uint64_t sub_22457F22C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of DockCoreAccessory.stopSystemEventsData()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x470);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22450D030;

  return v5();
}

uint64_t dispatch thunk of DockCoreAccessory.startBatteryStatesData(delegate:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x480);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22450D030;

  return v7(a1);
}

uint64_t dispatch thunk of DockCoreAccessory.startTrackingSummaryData(delegate:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x490);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22450D030;

  return v7(a1);
}

uint64_t dispatch thunk of DockCoreAccessory.getCurrentBatteryStates()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x4A0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_224580414;

  return v5();
}

uint64_t dispatch thunk of DockCoreAccessory.getCurrentTrackingSummary()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x4B0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22457F910;

  return v5();
}

uint64_t sub_22457F910(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of DockCoreAccessory.stopBatteryData()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x4C0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22450D034;

  return v5();
}

uint64_t dispatch thunk of DockCoreAccessory.stopTrackingSummaryData()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x4D0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22450D030;

  return v5();
}

uint64_t sub_22457FD60(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  *(*(v2 + 16) + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_sensorDelegates) = MEMORY[0x277D84F90];

  return v5(a1, a2);
}

uint64_t sub_22457FE84(char a1)
{
  v3 = *(v1 + 24);
  if (a1)
  {
    *(*(v1 + 16) + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_feedbackDelegates) = MEMORY[0x277D84F90];
  }

  return v3(a1 & 1);
}

uint64_t objectdestroy_194Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22457FF70(char a1)
{
  v3 = *(v1 + 24);
  if (a1)
  {
    swift_unknownObjectWeakAssign();
  }

  return v3(a1 & 1);
}

uint64_t objectdestroy_369Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22458008C(uint64_t a1, void *a2)
{
  v4 = *(v2 + 32);
  (*(v2 + 16))();
  *(v4 + *a2) = MEMORY[0x277D84F90];
}

uint64_t sub_224580128(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22452F6D8(a1, a2);
  }

  return a1;
}

uint64_t objectdestroy_174Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224580208(uint64_t a1)
{
  v3 = *(v1 + 24);
  *(*(v1 + 16) + OBJC_IVAR____TtC11DockKitCore17DockCoreAccessory_eventDelegates) = MEMORY[0x277D84F90];

  return v3(a1);
}

uint64_t objectdestroy_215Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_149Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2245804F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701669236;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7461746E6569726FLL;
    }

    else
    {
      v4 = 0xD000000000000012;
    }

    if (v3 == 2)
    {
      v5 = 0xEB000000006E6F69;
    }

    else
    {
      v5 = 0x80000002246350B0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x737463656A627573;
    }

    else
    {
      v4 = 1701669236;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0x7461746E6569726FLL;
  v8 = 0x80000002246350B0;
  if (a2 == 2)
  {
    v8 = 0xEB000000006E6F69;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (a2)
  {
    v2 = 0x737463656A627573;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_224628688();
  }

  return v11 & 1;
}

uint64_t sub_22458063C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 1701869940;
    if (a1 != 2)
    {
      v13 = 1952671090;
    }

    v14 = 0xE600000000000000;
    v15 = 0x444974736E61;
    if (!a1)
    {
      v15 = 0x696669746E656469;
      v14 = 0xEA00000000007265;
    }

    if (a1 <= 1u)
    {
      v11 = v15;
    }

    else
    {
      v11 = v13;
    }

    if (v4 <= 1)
    {
      v12 = v14;
    }

    else
    {
      v12 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0x8000000224635050;
    v6 = 0xD000000000000019;
    v7 = 0x6F697463656C6573;
    v8 = 0xEF6E6F736165526ELL;
    if (a1 != 7)
    {
      v7 = 0x676E696B63617274;
      v8 = 0xEC0000006B636F4CLL;
    }

    if (a1 != 6)
    {
      v6 = v7;
      v5 = v8;
    }

    v9 = 0x79636E65696C6173;
    v10 = 0xEC0000006B6E6152;
    if (a1 != 4)
    {
      v9 = 0xD000000000000012;
      v10 = 0x8000000224635030;
    }

    if (a1 <= 5u)
    {
      v11 = v9;
    }

    else
    {
      v11 = v6;
    }

    if (v4 <= 5)
    {
      v12 = v10;
    }

    else
    {
      v12 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      v2 = 0xE400000000000000;
      if (a2 == 2)
      {
        if (v11 != 1701869940)
        {
          goto LABEL_49;
        }
      }

      else if (v11 != 1952671090)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2)
    {
      v2 = 0xE600000000000000;
      if (v11 != 0x444974736E61)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0xEC0000006B6E6152;
        if (v11 != 0x79636E65696C6173)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0x8000000224635030;
        if (v11 != 0xD000000000000012)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 == 6)
    {
      v2 = 0x8000000224635050;
      if (v11 != 0xD000000000000019)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 7)
    {
      v2 = 0xEF6E6F736165526ELL;
      if (v11 != 0x6F697463656C6573)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v3 = 0x676E696B63617274;
    v2 = 0xEC0000006B636F4CLL;
  }

  if (v11 != v3)
  {
LABEL_49:
    v16 = sub_224628688();
    goto LABEL_50;
  }

LABEL_46:
  if (v12 != v2)
  {
    goto LABEL_49;
  }

  v16 = 1;
LABEL_50:

  return v16 & 1;
}

uint64_t sub_224580910(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007365;
  v3 = 0x6361466E616D7548;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6569646F42676F44;
    }

    else
    {
      v5 = 0x6569646F42746143;
    }

    v6 = 0xE900000000000073;
  }

  else
  {
    if (a1)
    {
      v5 = 0x646F426E616D7548;
    }

    else
    {
      v5 = 0x6361466E616D7548;
    }

    if (v4)
    {
      v6 = 0xEB00000000736569;
    }

    else
    {
      v6 = 0xEA00000000007365;
    }
  }

  v7 = 0x6569646F42676F44;
  if (a2 != 2)
  {
    v7 = 0x6569646F42746143;
  }

  if (a2)
  {
    v3 = 0x646F426E616D7548;
    v2 = 0xEB00000000736569;
  }

  if (a2 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xE900000000000073;
  }

  if (v5 == v8 && v6 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_224628688();
  }

  return v10 & 1;
}

uint64_t sub_224580A74(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000032;
  v3 = 0x3120656E6F685069;
  v4 = a1;
  v5 = 0xEE00696E696D2033;
  if (a1 == 4)
  {
    v5 = 0xE900000000000033;
  }

  if (a1 == 3)
  {
    v6 = 0xEE00696E696D2032;
  }

  else
  {
    v6 = v5;
  }

  v7 = 0xED00006F72502032;
  v8 = 0xD000000000000011;
  if (a1 == 1)
  {
    v8 = 0x3120656E6F685069;
  }

  else
  {
    v7 = 0x8000000224634FA0;
  }

  if (!a1)
  {
    v8 = 0x3120656E6F685069;
    v7 = 0xE900000000000032;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x3120656E6F685069;
  }

  if (v4 <= 2)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEE00696E696D2032;
      if (v9 != 0x3120656E6F685069)
      {
        goto LABEL_33;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE900000000000033;
      if (v9 != 0x3120656E6F685069)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v2 = 0xEE00696E696D2033;
      if (v9 != 0x3120656E6F685069)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xED00006F72502032;
        if (v9 != 0x3120656E6F685069)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }

      v3 = 0xD000000000000011;
      v2 = 0x8000000224634FA0;
    }

    if (v9 != v3)
    {
LABEL_33:
      v11 = sub_224628688();
      goto LABEL_34;
    }
  }

LABEL_30:
  if (v10 != v2)
  {
    goto LABEL_33;
  }

  v11 = 1;
LABEL_34:

  return v11 & 1;
}

uint64_t sub_224580BEC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000064657265;
  v3 = 0x7473696765726E75;
  v4 = a1;
  v5 = 0x7265747369676572;
  v6 = 0xEA00000000006465;
  if (a1 != 2)
  {
    v5 = 0x7473696765726E75;
    v6 = 0xED0000676E697265;
  }

  v7 = 0x7265747369676572;
  v8 = 0xEB00000000676E69;
  if (!a1)
  {
    v7 = 0x7473696765726E75;
    v8 = 0xEC00000064657265;
  }

  if (a1 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (v4 <= 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  v11 = 0x7265747369676572;
  v12 = 0xEA00000000006465;
  if (a2 != 2)
  {
    v11 = 0x7473696765726E75;
    v12 = 0xED0000676E697265;
  }

  if (a2)
  {
    v3 = 0x7265747369676572;
    v2 = 0xEB00000000676E69;
  }

  if (a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v11;
  }

  if (a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_224628688();
  }

  return v15 & 1;
}

uint64_t sub_224580D44(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_224580D88(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_2246282C8();
    v5 = v4;
    v6 = sub_224628318();
    v8 = v7;
    v9 = MEMORY[0x22AA51740](v3, v5, v6, v7);
    sub_224593A50(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_224593A50(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_2246282A8();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_22458FB64(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_224593A50(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_224580EA4()
{
  v0 = sub_224627B78();
  __swift_allocate_value_buffer(v0, qword_27D0C97B0);
  __swift_project_value_buffer(v0, qword_27D0C97B0);
  return sub_224627B68();
}

DockKitCore::DockKitIDSMessageType_optional __swiftcall DockKitIDSMessageType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 17;
  if (rawValue < 0x11)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t DockKitIDSMessage.token.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DockKitIDSMessage(0) + 20);
  v4 = sub_224627188();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DockKitIDSMessage.token.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DockKitIDSMessage(0) + 20);
  v4 = sub_224627188();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DockKitIDSMessage.payload.getter()
{
  v1 = v0 + *(type metadata accessor for DockKitIDSMessage(0) + 24);
  v2 = *v1;
  sub_224580128(*v1, *(v1 + 8));
  return v2;
}

uint64_t DockKitIDSMessage.payload.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for DockKitIDSMessage(0) + 24);
  result = sub_2245687AC(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t DockKitIDSMessage.init(type:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  *&a2[*(type metadata accessor for DockKitIDSMessage(0) + 24)] = xmmword_224630220;
  *a2 = v3;
  return sub_224627178();
}

uint64_t DockKitIDSMessage.init(type:token:payload:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v9 = *a1;
  v10 = type metadata accessor for DockKitIDSMessage(0);
  v11 = &a5[*(v10 + 24)];
  *v11 = xmmword_224630220;
  *a5 = v9;
  v12 = *(v10 + 20);
  v13 = sub_224627188();
  (*(*(v13 - 8) + 32))(&a5[v12], a2, v13);
  result = sub_2245687AC(*v11, *(v11 + 1));
  *v11 = a3;
  *(v11 + 1) = a4;
  return result;
}

uint64_t DockKitIDSMessage.message.getter()
{
  sub_224626F98();
  swift_allocObject();
  sub_224626F88();
  type metadata accessor for DockKitIDSMessage(0);
  sub_2245817E0(&qword_27D0C97E0, type metadata accessor for DockKitIDSMessage);
  v0 = sub_224626F78();

  return v0;
}

uint64_t sub_224581420()
{
  v1 = 0x6E656B6F74;
  if (*v0 != 1)
  {
    v1 = 0x64616F6C796170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_224581470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_224590220(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_224581498(uint64_t a1)
{
  v2 = sub_224581738();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2245814D4(uint64_t a1)
{
  v2 = sub_224581738();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DockKitIDSMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C97E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_224581738();
  sub_224628808();
  LOBYTE(v14) = *v3;
  v16 = 0;
  sub_22458178C();
  sub_224628648();
  if (!v2)
  {
    v9 = type metadata accessor for DockKitIDSMessage(0);
    LOBYTE(v14) = 1;
    sub_224627188();
    sub_2245817E0(&qword_27D0C8C80, MEMORY[0x277CC95F0]);
    sub_224628648();
    v10 = &v3[*(v9 + 24)];
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v16 = 2;
    sub_224580128(v14, v11);
    sub_224581828();
    sub_2246285E8();
    sub_2245687AC(v14, v15);
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_224581738()
{
  result = qword_27D0C97F0;
  if (!qword_27D0C97F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C97F0);
  }

  return result;
}

unint64_t sub_22458178C()
{
  result = qword_27D0C97F8;
  if (!qword_27D0C97F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C97F8);
  }

  return result;
}

uint64_t sub_2245817E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_224581828()
{
  result = qword_27D0C9808;
  if (!qword_27D0C9808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9808);
  }

  return result;
}

uint64_t DockKitIDSMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_224627188();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9810);
  v26 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v24 - v6;
  v8 = type metadata accessor for DockKitIDSMessage(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = &v11[*(v9 + 24)];
  *v31 = xmmword_224630220;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_224581738();
  v12 = v30;
  sub_2246287F8();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_2245687AC(*v31, *(v31 + 1));
  }

  else
  {
    v30 = a1;
    v13 = v26;
    v14 = v27;
    v15 = v28;
    v34 = 0;
    sub_224581C5C();
    sub_224628578();
    v16 = v11;
    *v11 = v32;
    LOBYTE(v32) = 1;
    sub_2245817E0(&qword_27D0C9820, MEMORY[0x277CC95F0]);
    v17 = v5;
    sub_224628578();
    v18 = *(v8 + 20);
    v19 = v16;
    (*(v14 + 32))(&v16[v18], v17, v15);
    v34 = 2;
    sub_224581CB0();
    sub_224628518();
    (*(v13 + 8))(v7, v29);
    v20 = v32;
    v21 = v33;
    v22 = v31;
    sub_2245687AC(*v31, *(v31 + 1));
    *v22 = v20;
    v22[1] = v21;
    sub_22458FEB8(v19, v25, type metadata accessor for DockKitIDSMessage);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    return sub_22458FF20(v19, type metadata accessor for DockKitIDSMessage);
  }
}

unint64_t sub_224581C5C()
{
  result = qword_27D0C9818;
  if (!qword_27D0C9818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9818);
  }

  return result;
}

unint64_t sub_224581CB0()
{
  result = qword_27D0C9828;
  if (!qword_27D0C9828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9828);
  }

  return result;
}

DockKitCore::DockKitCameraCommand_optional __swiftcall DockKitCameraCommand.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t DockKitCameraCommandPayload.payload.getter()
{
  v1 = *(v0 + 8);
  sub_224580128(v1, *(v0 + 16));
  return v1;
}

uint64_t DockKitCameraCommandPayload.payload.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2245687AC(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t DockKitCameraCommandPayload.init(command:payload:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *a1;
  result = sub_2245687AC(0, 0xF000000000000000);
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_224581F14()
{
  if (*v0)
  {
    return 0x64616F6C796170;
  }

  else
  {
    return 0x646E616D6D6F63;
  }
}

uint64_t sub_224581F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_224628688() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_224628688();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_224582024(uint64_t a1)
{
  v2 = sub_22458224C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224582060(uint64_t a1)
{
  v2 = sub_22458224C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DockKitCameraCommandPayload.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9830);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = *v1;
  v8 = *(v1 + 2);
  v11[0] = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_22458224C();
  sub_224628808();
  LOBYTE(v12) = v7;
  v14 = 0;
  sub_2245822A0();
  v9 = v11[1];
  sub_224628648();
  if (!v9)
  {
    v12 = v11[0];
    v13 = v8;
    v14 = 1;
    sub_224580128(v11[0], v8);
    sub_224581828();
    sub_2246285E8();
    sub_2245687AC(v12, v13);
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_22458224C()
{
  result = qword_27D0C9838;
  if (!qword_27D0C9838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9838);
  }

  return result;
}

unint64_t sub_2245822A0()
{
  result = qword_27D0C9840;
  if (!qword_27D0C9840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9840);
  }

  return result;
}

uint64_t DockKitCameraCommandPayload.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9848);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_22458224C();
  sub_2246287F8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v13 = 0;
    v14 = 0xF000000000000000;
  }

  else
  {
    v16 = 0;
    sub_224582504();
    sub_224628578();
    v9 = v15[0];
    v16 = 1;
    sub_224581CB0();
    sub_224628518();
    (*(v6 + 8))(v8, v5);
    v11 = v15[0];
    v12 = v15[1];
    sub_2245687AC(0, 0xF000000000000000);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    sub_224580128(v11, v12);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v13 = v11;
    v14 = v12;
  }

  return sub_2245687AC(v13, v14);
}

unint64_t sub_224582504()
{
  result = qword_27D0C9850;
  if (!qword_27D0C9850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9850);
  }

  return result;
}

uint64_t DockKitIDSInfo.firmwareVersion.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t DockKitIDSInfo.firmwareVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t DockKitIDSInfo.serialNumber.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t DockKitIDSInfo.serialNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t DockKitIDSInfo.init(info:dockState:trackingState:firmwareVersion:serialNumber:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t sub_224582760()
{
  v1 = *v0;
  v2 = 1868983913;
  v3 = 0x676E696B63617274;
  v4 = 0x657261776D726966;
  if (v1 != 3)
  {
    v4 = 0x754E6C6169726573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746174536B636F64;
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

uint64_t sub_224582818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_224590334(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22458284C(uint64_t a1)
{
  v2 = sub_224582B60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224582888(uint64_t a1)
{
  v2 = sub_224582B60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DockKitIDSInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9858);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - v5;
  v8 = *v1;
  v7 = *(v1 + 8);
  v9 = *(v1 + 24);
  v17 = *(v1 + 16);
  v18 = v7;
  v10 = *(v1 + 40);
  v16[2] = *(v1 + 32);
  v16[3] = v9;
  v11 = *(v1 + 48);
  v16[0] = v10;
  v16[1] = v11;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_224582B60();
  v12 = v8;
  sub_224628808();
  v21 = v12;
  v20 = 0;
  type metadata accessor for DockCoreInfo(0);
  sub_2245817E0(&qword_27D0C9868, type metadata accessor for DockCoreInfo);
  v13 = v19;
  sub_224628648();
  if (v13)
  {
  }

  else
  {
    v14 = v17;

    v21 = v18;
    v20 = 1;
    sub_224582BB4();
    sub_224628648();
    v21 = v14;
    v20 = 2;
    sub_224582C08();
    sub_224628648();
    LOBYTE(v21) = 3;
    sub_2246285F8();
    LOBYTE(v21) = 4;
    sub_2246285F8();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_224582B60()
{
  result = qword_27D0C9860;
  if (!qword_27D0C9860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9860);
  }

  return result;
}

unint64_t sub_224582BB4()
{
  result = qword_27D0C9870;
  if (!qword_27D0C9870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9870);
  }

  return result;
}

unint64_t sub_224582C08()
{
  result = qword_27D0C9878;
  if (!qword_27D0C9878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9878);
  }

  return result;
}

void DockKitIDSInfo.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9880);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_224582B60();
  sub_2246287F8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    type metadata accessor for DockCoreInfo(0);
    v26 = 0;
    sub_2245817E0(&qword_27D0C9888, type metadata accessor for DockCoreInfo);
    sub_224628578();
    v9 = v27;
    v26 = 1;
    sub_224582FA4();
    sub_224628578();
    v10 = v27;
    v26 = 2;
    sub_224582FF8();
    sub_224628578();
    v25 = v10;
    v11 = v27;
    LOBYTE(v27) = 3;
    v12 = sub_224628528();
    v22 = v11;
    v23 = v12;
    v24 = v13;
    LOBYTE(v27) = 4;
    v14 = sub_224628528();
    v16 = v15;
    (*(v6 + 8))(v8, v5);
    v18 = v24;
    v17 = v25;
    *a2 = v9;
    a2[1] = v17;
    v19 = v23;
    a2[2] = v22;
    a2[3] = v19;
    a2[4] = v18;
    a2[5] = v14;
    a2[6] = v16;
    v20 = v9;

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

unint64_t sub_224582FA4()
{
  result = qword_27D0C9890;
  if (!qword_27D0C9890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9890);
  }

  return result;
}

unint64_t sub_224582FF8()
{
  result = qword_27D0C9898;
  if (!qword_27D0C9898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0C9898);
  }

  return result;
}

uint64_t DockKitBoundingBox.saliencyRank.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t DockKitBoundingBox.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DockKitBoundingBox(0) + 40);
  v4 = sub_224627188();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DockKitBoundingBox.id.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DockKitBoundingBox(0) + 40);
  v4 = sub_224627188();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DockKitBoundingBox.init(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v8 = a3;
  v9 = a4;
  *a2 = v8;
  *(a2 + 4) = v9;
  v10 = a5;
  v11 = a6;
  *(a2 + 8) = v10;
  *(a2 + 12) = v11;
  v12 = *(type metadata accessor for DockKitBoundingBox(0) + 40);
  v13 = sub_224627188();
  v14 = *(*(v13 - 8) + 32);

  return v14(a2 + v12, a1, v13);
}

uint64_t DockKitBoundingBox.init(_:id:trackingLock:saliencyRank:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v14 = a6;
  v15 = a7;
  *a5 = v14;
  *(a5 + 4) = v15;
  v16 = a8;
  v17 = a9;
  *(a5 + 8) = v16;
  *(a5 + 12) = v17;
  v18 = *(type metadata accessor for DockKitBoundingBox(0) + 40);
  v19 = sub_224627188();
  result = (*(*(v19 - 8) + 32))(a5 + v18, a1, v19);
  *(a5 + 25) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;
  return result;
}

uint64_t sub_2245833BC()
{
  v1 = *v0;
  v2 = 120;
  v3 = 0x676E696B63617274;
  if (v1 != 5)
  {
    v3 = 25705;
  }

  v4 = 0x746867696568;
  if (v1 != 3)
  {
    v4 = 0x79636E65696C6173;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 121;
  if (v1 != 1)
  {
    v5 = 0x6874646977;
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

uint64_t sub_22458347C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_224590500(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2245834A4(uint64_t a1)
{
  v2 = sub_22458FE64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2245834E0(uint64_t a1)
{
  v2 = sub_22458FE64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DockKitBoundingBox.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C98A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_22458FE64();
  sub_224628808();
  v8[15] = 0;
  sub_224628628();
  if (!v1)
  {
    v8[14] = 1;
    sub_224628628();
    v8[13] = 2;
    sub_224628628();
    v8[12] = 3;
    sub_224628628();
    v8[11] = 4;
    sub_2246285D8();
    v8[10] = 5;
    sub_224628608();
    type metadata accessor for DockKitBoundingBox(0);
    v8[9] = 6;
    sub_224627188();
    sub_2245817E0(&qword_27D0C8C80, MEMORY[0x277CC95F0]);
    sub_224628648();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t DockKitBoundingBox.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_224627188();
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C98B0);
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v8 = &v27 - v7;
  v9 = type metadata accessor for DockKitBoundingBox(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v12);
  sub_22458FE64();
  v33 = v8;
  sub_2246287F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  v13 = v6;
  v14 = v30;
  v15 = v31;
  v41 = 0;
  sub_224628558();
  *v11 = v16;
  v40 = 1;
  sub_224628558();
  v17 = v14;
  *(v11 + 1) = v18;
  v39 = 2;
  sub_224628558();
  *(v11 + 2) = v19;
  v38 = 3;
  sub_224628558();
  *(v11 + 3) = v20;
  v37 = 4;
  *(v11 + 2) = sub_224628508();
  v11[24] = v21 & 1;
  v36 = 5;
  v22 = sub_224628538();
  v28 = v11;
  v11[25] = v22 & 1;
  v35 = 6;
  sub_2245817E0(&qword_27D0C9820, MEMORY[0x277CC95F0]);
  v24 = v32;
  v23 = v33;
  sub_224628578();
  (*(v17 + 8))(v23, v24);
  v25 = v28;
  (*(v15 + 32))(&v28[*(v9 + 40)], v13, v4);
  sub_22458FEB8(v25, v29, type metadata accessor for DockKitBoundingBox);
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  return sub_22458FF20(v25, type metadata accessor for DockKitBoundingBox);
}

uint64_t sub_224583BEC(uint64_t a1)
{
  v2 = sub_224590028();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224583C28(uint64_t a1)
{
  v2 = sub_224590028();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224583C64()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000016;
    if (v1 != 1)
    {
      v5 = 0xD000000000000012;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6465726961506F6ELL;
    }
  }

  else
  {
    v2 = 0xD000000000000015;
    if (v1 != 5)
    {
      v2 = 0x656C706D49746F6ELL;
    }

    v3 = 0xD00000000000001ALL;
    if (v1 == 3)
    {
      v3 = 0x7369676552746F6ELL;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_224583D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22459072C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_224583DA0(uint64_t a1)
{
  v2 = sub_22458FF80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224583DDC(uint64_t a1)
{
  v2 = sub_22458FF80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224583E18(uint64_t a1)
{
  v2 = sub_22459007C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224583E54(uint64_t a1)
{
  v2 = sub_22459007C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224583E90(uint64_t a1)
{
  v2 = sub_2245901CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224583ECC(uint64_t a1)
{
  v2 = sub_2245901CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224583F08(uint64_t a1)
{
  v2 = sub_22458FFD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224583F44(uint64_t a1)
{
  v2 = sub_22458FFD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224583F80(uint64_t a1)
{
  v2 = sub_2245900D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224583FBC(uint64_t a1)
{
  v2 = sub_2245900D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224583FF8(uint64_t a1)
{
  v2 = sub_224590124();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224584034(uint64_t a1)
{
  v2 = sub_224590124();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224584070(uint64_t a1)
{
  v2 = sub_224590178();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2245840AC(uint64_t a1)
{
  v2 = sub_224590178();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DockKitIDSMessagingError.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C98B8);
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x28223BE20](v4);
  v49 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C98C0);
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x28223BE20](v6);
  v46 = &v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C98C8);
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x28223BE20](v8);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C98D0);
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x28223BE20](v10);
  v40 = &v38 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C98D8);
  v55 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v54 = &v38 - v12;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C98E0);
  v53 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C98E8);
  v52 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C98F0);
  v18 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v20 = &v38 - v19;
  v21 = *v2;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_22458FF80();
  v56 = v20;
  sub_224628808();
  v22 = (v18 + 8);
  if (v21 <= 2)
  {
    v28 = v52;
    v29 = v53;
    v30 = v54;
    v31 = v55;
    if (v21)
    {
      if (v21 == 1)
      {
        v59 = 1;
        sub_224590178();
        v33 = v56;
        v32 = v57;
        sub_2246285A8();
        (*(v29 + 8))(v14, v38);
      }

      else
      {
        v60 = 2;
        sub_224590124();
        v37 = v30;
        v33 = v56;
        v32 = v57;
        sub_2246285A8();
        (*(v31 + 8))(v37, v39);
      }

      return (*v22)(v33, v32);
    }

    else
    {
      v58 = 0;
      sub_2245901CC();
      v34 = v56;
      v35 = v57;
      sub_2246285A8();
      (*(v28 + 8))(v17, v15);
      return (*v22)(v34, v35);
    }
  }

  else
  {
    if (v21 > 4)
    {
      if (v21 == 5)
      {
        v63 = 5;
        sub_224590028();
        v23 = v46;
        v24 = v56;
        v25 = v57;
        sub_2246285A8();
        v27 = v47;
        v26 = v48;
      }

      else
      {
        v64 = 6;
        sub_22458FFD4();
        v23 = v49;
        v24 = v56;
        v25 = v57;
        sub_2246285A8();
        v27 = v50;
        v26 = v51;
      }
    }

    else if (v21 == 3)
    {
      v61 = 3;
      sub_2245900D0();
      v23 = v40;
      v24 = v56;
      v25 = v57;
      sub_2246285A8();
      v27 = v41;
      v26 = v42;
    }

    else
    {
      v62 = 4;
      sub_22459007C();
      v23 = v43;
      v24 = v56;
      v25 = v57;
      sub_2246285A8();
      v27 = v44;
      v26 = v45;
    }

    (*(v27 + 8))(v23, v26);
    return (*v22)(v24, v25);
  }
}

uint64_t DockKitIDSMessagingError.hashValue.getter()
{
  v1 = *v0;
  sub_224628778();
  MEMORY[0x22AA51BF0](v1);
  return sub_2246287C8();
}

uint64_t DockKitIDSMessagingError.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9938);
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x28223BE20](v3);
  v68 = &v49[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9940);
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x28223BE20](v5);
  v71 = &v49[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9948);
  v8 = *(v7 - 8);
  v60 = v7;
  v61 = v8;
  MEMORY[0x28223BE20](v7);
  v67 = &v49[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9950);
  v11 = *(v10 - 8);
  v58 = v10;
  v59 = v11;
  MEMORY[0x28223BE20](v10);
  v66 = &v49[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9958);
  v56 = *(v13 - 8);
  v57 = v13;
  MEMORY[0x28223BE20](v13);
  v70 = &v49[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9960);
  v54 = *(v15 - 8);
  v55 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v49[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9968);
  v53 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v49[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9970);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v49[-v23];
  v25 = a1[3];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v25);
  sub_22458FF80();
  v26 = v73;
  sub_2246287F8();
  if (!v26)
  {
    v51 = v18;
    v27 = v70;
    v28 = v71;
    v52 = v22;
    v73 = v21;
    v29 = sub_224628598();
    if (*(v29 + 16) == 1)
    {
      v30 = *(v29 + 32);
      if (v30 != 7)
      {
        v50 = *(v29 + 32);
        if (v30 > 2)
        {
          if (v30 > 4)
          {
            v31 = v30 == 5;
            v32 = v69;
            v41 = v73;
            if (v31)
            {
              v79 = 5;
              sub_224590028();
              sub_2246284C8();
              v46 = v52;
              (*(v62 + 8))(v28, v63);
            }

            else
            {
              v80 = 6;
              sub_22458FFD4();
              v45 = v68;
              sub_2246284C8();
              v46 = v52;
              (*(v64 + 8))(v45, v65);
            }

            (*(v46 + 8))(v24, v41);
          }

          else
          {
            v31 = v30 == 3;
            v32 = v69;
            v33 = v73;
            if (v31)
            {
              v77 = 3;
              sub_2245900D0();
              v34 = v66;
              sub_2246284C8();
              v44 = v52;
              (*(v59 + 8))(v34, v58);
            }

            else
            {
              v78 = 4;
              sub_22459007C();
              v43 = v67;
              sub_2246284C8();
              v44 = v52;
              (*(v61 + 8))(v43, v60);
            }

            (*(v44 + 8))(v24, v33);
          }

          swift_unknownObjectRelease();
          v47 = v72;
          goto LABEL_25;
        }

        if (v30)
        {
          if (v30 == 1)
          {
            v75 = 1;
            sub_224590178();
            v39 = v24;
            v40 = v73;
            sub_2246284C8();
            (*(v54 + 8))(v17, v55);
            (*(v52 + 8))(v39, v40);
LABEL_21:
            swift_unknownObjectRelease();
            v47 = v72;
            v32 = v69;
LABEL_25:
            *v32 = v50;
            return __swift_destroy_boxed_opaque_existential_1Tm(v47);
          }

          v76 = 2;
          sub_224590124();
          v42 = v73;
          sub_2246284C8();
          (*(v56 + 8))(v27, v57);
        }

        else
        {
          v74 = 0;
          sub_2245901CC();
          v42 = v73;
          sub_2246284C8();
          (*(v53 + 8))(v20, v51);
        }

        (*(v52 + 8))(v24, v42);
        goto LABEL_21;
      }
    }

    v35 = sub_2246283A8();
    swift_allocError();
    v37 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9978);
    *v37 = &type metadata for DockKitIDSMessagingError;
    v38 = v73;
    sub_2246284D8();
    sub_224628398();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
    swift_willThrow();
    (*(v52 + 8))(v24, v38);
    swift_unknownObjectRelease();
  }

  v47 = v72;
  return __swift_destroy_boxed_opaque_existential_1Tm(v47);
}

unint64_t DockKitIDSMessagingError.errorDescription.getter()
{
  v1 = 0xD00000000000001ELL;
  v2 = *v0;
  v3 = 0xD000000000000020;
  v4 = 0xD00000000000001ALL;
  if (v2 != 3)
  {
    v4 = 0xD00000000000001ELL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD00000000000001DLL;
  if (v2 != 1)
  {
    v5 = 0xD000000000000018;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_22458551C(uint64_t result)
{
  if (result)
  {
    return (*((*MEMORY[0x277D85000] & *v1) + 0x70))();
  }

  __break(1u);
  return result;
}

void sub_224585558(void *a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = *((*MEMORY[0x277D85000] & *a1) + 0x70);
    v6 = a1;
    v5 = a3;
    v4();
  }

  else
  {
    __break(1u);
  }
}

id DKIDSHandler.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DKIDSHandler();
  return objc_msgSendSuper2(&v2, sel_init);
}

DockKitCore::DKIDSKeepAliveType_optional __swiftcall DKIDSKeepAliveType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t DKIDSKeepAlive.__allocating_init(_:)(char a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = sub_22452E338(MEMORY[0x277D84F90]);
  *(v2 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 48) = 0;
  *(v2 + 64) = xmmword_224630230;
  *(v2 + 80) = 5;
  *(v2 + 56) = a1;
  return v2;
}

uint64_t DKIDSKeepAlive.init(_:)(char a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = sub_22452E338(MEMORY[0x277D84F90]);
  *(v1 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 48) = 0;
  *(v1 + 64) = xmmword_224630230;
  *(v1 + 80) = 5;
  *(v1 + 56) = a1;
  return v1;
}

uint64_t DKIDSKeepAlive.deinit()
{
  [*(v0 + 16) invalidate];

  sub_2245122B4(v0 + 32);
  return v0;
}

uint64_t DKIDSKeepAlive.__deallocating_deinit()
{
  [*(v0 + 16) invalidate];

  sub_2245122B4(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t sub_2245858D0()
{
  v1 = v0;
  v2 = *(v0 + 24);
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v32 = v0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(v2 + 48) + 16 * v12);
    v14 = v13[1];
    v15 = *(v2 + 56) + 24 * v12;
    v16 = *(v15 + 8);
    if (*(v15 + 16))
    {
      if (v16 >= 0xF)
      {
LABEL_14:
        v35 = *v13;
        v17 = qword_27D0C8880;

        if (v17 != -1)
        {
          swift_once();
        }

        v18 = sub_224627B78();
        __swift_project_value_buffer(v18, qword_27D0C97B0);

        v19 = sub_224627B58();
        v20 = sub_224628048();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v36 = v34;
          *v21 = 136315394;

          v33 = v20;
          v22 = v2;
          v23 = sub_224509F28(v35, v14, &v36);

          *(v21 + 4) = v23;
          v2 = v22;
          *(v21 + 12) = 2048;
          *(v21 + 14) = v16;
          _os_log_impl(&dword_224507000, v19, v33, "Keep-alive expired for %s: missed= %lu", v21, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v34);
          MEMORY[0x22AA526D0](v34, -1, -1);
          v24 = v21;
          v1 = v32;
          MEMORY[0x22AA526D0](v24, -1, -1);
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v25 = *(v1 + 40);
          ObjectType = swift_getObjectType();
          (*(v25 + 8))(v35, v14, ObjectType, v25);
          swift_unknownObjectRelease();
        }

        v27 = sub_2245096C8(v35, v14);
        if (v28)
        {
          v29 = v27;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v31 = *(v1 + 24);
          v36 = v31;
          *(v1 + 24) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_22458EFD0();
            v31 = v36;
          }

          sub_22458DF20(v29, v31);

          *(v1 + 24) = v31;
        }
      }
    }

    else if (v16 >= 0xA)
    {
      goto LABEL_14;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }
}

void sub_224585C10(double a1)
{
  [*(v1 + 16) invalidate];
  v3 = swift_allocObject();
  swift_weakInit();
  v11[4] = sub_224593A5C;
  v11[5] = v3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_224586018;
  v11[3] = &block_descriptor_181;
  v4 = _Block_copy(v11);
  v5 = objc_opt_self();

  v6 = [v5 timerWithTimeInterval:1 repeats:v4 block:a1];
  _Block_release(v4);

  v7 = *(v1 + 16);
  *(v1 + 16) = v6;

  if ((*(v1 + 56) & 1) == 0)
  {
    v8 = [objc_opt_self() currentRunLoop];
    v9 = *(v1 + 16);
    if (v9)
    {
      v10 = v8;
      [v8 addTimer:v9 forMode:*MEMORY[0x277CBE640]];
    }

    else
    {
      __break(1u);
    }
  }
}

void *sub_224585D9C(void *a1)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9330);
    result = sub_224628488();
    v6 = result;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v4 + 64);
    v11 = (v8 + 63) >> 6;
    v12 = (result + 8);
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_11:
        v16 = v13 | (v7 << 6);
        v17 = 24 * v16;
        v18 = *(v4 + 56) + 24 * v16;
        v19 = *(v18 + 8);
        v20 = __CFADD__(v19, 1);
        v21 = v19 + 1;
        if (v20)
        {
          break;
        }

        v22 = (*(v4 + 48) + 16 * v16);
        v23 = *(v18 + 16);
        v24 = *v18;
        v25 = *v22;
        result = v22[1];
        *&v12[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        v26 = (v6[6] + 16 * v16);
        *v26 = v25;
        v26[1] = result;
        v27 = v6[7] + v17;
        *v27 = v24;
        *(v27 + 8) = v21;
        *(v27 + 16) = v23;
        v28 = v6[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_30;
        }

        v6[2] = v30;

        if (!v10)
        {
          goto LABEL_6;
        }
      }

LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }

    else
    {
LABEL_6:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
          goto LABEL_29;
        }

        if (v7 >= v11)
        {
          break;
        }

        v15 = *(v4 + 64 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_11;
        }
      }

      *(v3 + 24) = v6;

      result = sub_2245858D0();
      v31 = *(v3 + 48);
      v20 = __CFADD__(v31, 1);
      v32 = v31 + 1;
      if (v20)
      {
        goto LABEL_31;
      }

      *(v3 + 48) = v32;
      if (v32 < 5 || (*(v3 + 56) & 1) != 0 || (*(v3 + 48) = 0, !swift_unknownObjectWeakLoadStrong()))
      {
      }

      else
      {
        v33 = *(v3 + 40);
        ObjectType = swift_getObjectType();
        (*(v33 + 16))(ObjectType, v33);

        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {

    return [a1 invalidate];
  }

  return result;
}

void sub_224586018(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

unint64_t sub_224586080(unint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v5 = *(v3 + 24);
  if (*(v5 + 16))
  {
    v8 = result;

    v9 = sub_2245096C8(v8, a2);
    if (v10)
    {
      v11 = *(*(v5 + 56) + 24 * v9 + 8);

      if (qword_27D0C8880 != -1)
      {
        swift_once();
      }

      v12 = sub_224627B78();
      __swift_project_value_buffer(v12, qword_27D0C97B0);

      v13 = sub_224627B58();
      v14 = sub_224628048();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v19[0] = v16;
        *v15 = 136315394;
        *(v15 + 4) = sub_224509F28(v8, a2, v19);
        *(v15 + 12) = 2048;
        *(v15 + 14) = v11;
        _os_log_impl(&dword_224507000, v13, v14, "Expiring keep-alive for %s: missed= %lu", v15, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        MEMORY[0x22AA526D0](v16, -1, -1);
        MEMORY[0x22AA526D0](v15, -1, -1);
      }

      if (a3)
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          v17 = *(v4 + 40);
          ObjectType = swift_getObjectType();
          (*(v17 + 8))(v8, a2, ObjectType, v17);
          swift_unknownObjectRelease();
        }
      }

      return sub_22458C6D0(v8, a2, v19);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_2245862BC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_224627118();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*(v2 + 24) + 16) && (, sub_2245096C8(a1, a2), v11 = v10, , (v11 & 1) != 0))
  {
    if (qword_27D0C8880 != -1)
    {
      swift_once();
    }

    v12 = sub_224627B78();
    __swift_project_value_buffer(v12, qword_27D0C97B0);

    v13 = sub_224627B58();
    v14 = sub_224628058();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_224509F28(a1, a2, &v31);
      _os_log_impl(&dword_224507000, v13, v14, "Got Keep-alive monitor: Marking %s as seen.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x22AA526D0](v16, -1, -1);
      MEMORY[0x22AA526D0](v15, -1, -1);
    }

    sub_2246270E8();
    sub_224627078();
    v18 = v17;
    (*(v7 + 8))(v9, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v3 + 24);
    *(v3 + 24) = 0x8000000000000000;
    v20 = v18;
    v21 = 0;
  }

  else
  {
    if (qword_27D0C8880 != -1)
    {
      swift_once();
    }

    v22 = sub_224627B78();
    __swift_project_value_buffer(v22, qword_27D0C97B0);

    v23 = sub_224627B58();
    v24 = sub_224628058();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_224509F28(a1, a2, &v31);
      _os_log_impl(&dword_224507000, v23, v24, "Got Keep-alive monitor: Adding %s.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x22AA526D0](v26, -1, -1);
      MEMORY[0x22AA526D0](v25, -1, -1);
    }

    sub_2246270E8();
    sub_224627078();
    v28 = v27;
    (*(v7 + 8))(v9, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v3 + 24);
    *(v3 + 24) = 0x8000000000000000;
    v20 = v28;
    v21 = 1;
  }

  sub_22458E400(0, v21, a1, a2, isUniquelyReferenced_nonNull_native, v20);
  *(v3 + 24) = v31;
}

uint64_t sub_2245866A4()
{
  v1 = v0;
  if (qword_27D0C8880 != -1)
  {
    swift_once();
  }

  v2 = sub_224627B78();
  __swift_project_value_buffer(v2, qword_27D0C97B0);
  v3 = sub_224627B58();
  v4 = sub_224628058();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_224507000, v3, v4, "Starting keep-alive...", v5, 2u);
    MEMORY[0x22AA526D0](v5, -1, -1);
  }

  sub_224585C10(2.0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    v9 = *(v1 + 16);
    v10 = *(v7 + 24);
    v11 = v9;
    v10(v9, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_224586814()
{
  v1 = v0;
  if (qword_27D0C8880 != -1)
  {
    swift_once();
  }

  v2 = sub_224627B78();
  __swift_project_value_buffer(v2, qword_27D0C97B0);
  v3 = sub_224627B58();
  v4 = sub_224628058();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_224507000, v3, v4, "Stopping keep-alive...", v5, 2u);
    MEMORY[0x22AA526D0](v5, -1, -1);
  }

  [*(v1 + 16) invalidate];
  v6 = *(v1 + 16);
  *(v1 + 16) = 0;
}

uint64_t DKIDSMessagingCenter.serviceName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11DockKitCore20DKIDSMessagingCenter_serviceName);

  return v1;
}

void DKIDSMessagingCenter.init(serviceName:delegate:queue:)(uint64_t a1, uint64_t a2, char *a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC11DockKitCore20DKIDSMessagingCenter_queue] = a4;
  v11 = &v5[OBJC_IVAR____TtC11DockKitCore20DKIDSMessagingCenter_serviceName];
  *v11 = a1;
  *(v11 + 1) = a2;
  v12 = objc_allocWithZone(MEMORY[0x277D18778]);
  v13 = a4;

  v14 = sub_224627CB8();
  v15 = [v12 initWithService_];

  if (v15)
  {

    *&v5[OBJC_IVAR____TtC11DockKitCore20DKIDSMessagingCenter_service] = v15;
    v23.receiver = v5;
    v23.super_class = ObjectType;
    v16 = objc_msgSendSuper2(&v23, sel_init);
    if (a3)
    {
      v17 = *&v16[OBJC_IVAR____TtC11DockKitCore20DKIDSMessagingCenter_service];
      [v17 addDelegate:a3 queue:v13];
    }

    else
    {
      v18 = qword_27D0C8880;
      v19 = v16;
      if (v18 != -1)
      {
        swift_once();
      }

      v20 = sub_224627B78();
      __swift_project_value_buffer(v20, qword_27D0C97B0);
      v17 = sub_224627B58();
      v21 = sub_224628048();
      if (os_log_type_enabled(v17, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_224507000, v17, v21, "Unable to add delegate to service!", v22, 2u);
        MEMORY[0x22AA526D0](v22, -1, -1);
      }

      a3 = v13;
      v13 = v19;
    }
  }

  else
  {
    __break(1u);
  }
}

void DKIDSMessagingCenter.send(data:doNotCompress:timeout:)(double a1, uint64_t a2, unint64_t a3, char a4)
{
  v64 = *MEMORY[0x277D85DE8];
  v8 = *(v4 + OBJC_IVAR____TtC11DockKitCore20DKIDSMessagingCenter_service);
  v9 = [v8 devices];
  if (!v9)
  {
    goto LABEL_34;
  }

  v10 = v9;
  sub_22450950C(0, &qword_27D0C99A0);
  v11 = sub_224627ED8();

  v58 = a3;
  v60 = v8;
  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_33;
  }

LABEL_32:
  v12 = sub_224628478();
  if (!v12)
  {
LABEL_33:

LABEL_34:
    if (qword_27D0C8880 != -1)
    {
      swift_once();
    }

    v53 = sub_224627B78();
    __swift_project_value_buffer(v53, qword_27D0C97B0);
    v54 = sub_224627B58();
    v55 = sub_224628048();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_224507000, v54, v55, "No paired devices!", v56, 2u);
      MEMORY[0x22AA526D0](v56, -1, -1);
    }

    sub_2245912EC();
    swift_allocError();
    *v57 = 0;
    swift_willThrow();
    return;
  }

LABEL_4:
  v13 = 0;
  while (1)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x22AA517F0](v13, v11);
    }

    else
    {
      if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v14 = *(v11 + 8 * v13 + 32);
    }

    v15 = v14;
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if ([v14 isDefaultPairedDevice] && (objc_msgSend(v15, sel_isActive) & 1) != 0 && (objc_msgSend(v15, sel_isNearby) & 1) != 0)
    {
      break;
    }

    ++v13;
    if (v16 == v12)
    {
      goto LABEL_33;
    }
  }

  v17 = sub_22452E45C(MEMORY[0x277D84F90]);
  v18 = MEMORY[0x277D839B0];
  if (a4)
  {
    v19 = sub_224627CD8();
    v21 = v20;
    v63 = v18;
    LOBYTE(v62) = 0;
    sub_224535258(&v62, v61);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22458E5A0(v61, v19, v21, isUniquelyReferenced_nonNull_native);
  }

  v23 = sub_224627CD8();
  v25 = v24;
  v63 = v18;
  LOBYTE(v62) = 1;
  sub_224535258(&v62, v61);
  v26 = swift_isUniquelyReferenced_nonNull_native();
  sub_22458E5A0(v61, v23, v25, v26);

  if (a1 > 0.0)
  {
    v27 = sub_224627CD8();
    v29 = v28;
    v63 = MEMORY[0x277D839F8];
    *&v62 = a1;
    sub_224535258(&v62, v61);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    sub_22458E5A0(v61, v27, v29, v30);

    v31 = v17;
    v32 = sub_224627CD8();
    v34 = v33;
    v63 = v18;
    LOBYTE(v62) = 1;
    sub_224535258(&v62, v61);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    sub_22458E5A0(v61, v32, v34, v35);

    v17 = v31;
  }

  if (v58 >> 60 == 15)
  {
    v59 = 0;
  }

  else
  {
    v59 = sub_224627028();
  }

  v36 = [v60 accounts];
  if (v36)
  {
    v37 = v36;
    sub_22450950C(0, &qword_27D0C99A8);
    sub_224591340();
    v38 = sub_224627FF8();

    v39 = sub_224580D88(v38);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C99B8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22462C8F0;
    v41 = IDSCopyIDForDevice();
    if (v41)
    {
      v42 = v41;
      v43 = sub_224627CD8();
      v45 = v44;
    }

    else
    {
      v43 = 0;
      v45 = 0;
    }

    *&v62 = v43;
    *(&v62 + 1) = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9610);
    sub_2245913A8();
    sub_224628348();
    sub_2245916F0(inited);
    swift_setDeallocating();
    sub_22453519C(inited + 32);
    v46 = sub_224627FD8();

    sub_224587254(v17);

    v47 = sub_224627C48();

    *&v62 = 0;
    *&v61[0] = 0;
    v48 = [v60 sendData:v59 fromAccount:v39 toDestinations:v46 priority:300 options:v47 identifier:&v62 error:v61];

    if (v48)
    {
      v49 = *&v61[0];
    }

    else
    {
      v50 = v62;
      v51 = *&v61[0];
      v52 = v50;
      sub_224626FB8();

      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_224587254(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9C90);
    v2 = sub_2246284A8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2245097F8(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_224535258(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_224535258(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_224535258(v31, v32);
    result = sub_224628328();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_224535258(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t DKIDSMessagingCenter.send(_:)()
{
  sub_224626F98();
  swift_allocObject();
  sub_224626F88();
  type metadata accessor for DockKitIDSMessage(0);
  sub_2245817E0(&qword_27D0C97E0, type metadata accessor for DockKitIDSMessage);
  v1 = sub_224626F78();
  if (v0)
  {

    v3 = 0;
    v4 = 0xC000000000000000;
  }

  else
  {
    v3 = v1;
    v4 = v2;
  }

  DKIDSMessagingCenter.send(data:doNotCompress:timeout:)(0.0, v3, v4, 0);
  return sub_22452F684(v3, v4);
}

id DKIDSMessagingCenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

DockKitCore::DockKitIDSClient::DKIDSClientState_optional __swiftcall DockKitIDSClient.DKIDSClientState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2246284B8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DockKitIDSClient.DKIDSClientState.rawValue.getter()
{
  v1 = 0x7473696765726E75;
  v2 = 0x7265747369676572;
  if (*v0 != 2)
  {
    v2 = 0x7473696765726E75;
  }

  if (*v0)
  {
    v1 = 0x7265747369676572;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22458781C()
{
  sub_224628778();
  sub_224627D78();

  return sub_2246287C8();
}

uint64_t sub_2245878F0()
{
  sub_224627D78();
}

uint64_t sub_2245879B0()
{
  sub_224628778();
  sub_224627D78();

  return sub_2246287C8();
}

void sub_224587A8C(uint64_t *a1@<X8>)
{
  v2 = 0xEC00000064657265;
  v3 = 0x7473696765726E75;
  v4 = 0xEA00000000006465;
  v5 = 0x7265747369676572;
  if (*v1 != 2)
  {
    v5 = 0x7473696765726E75;
    v4 = 0xED0000676E697265;
  }

  if (*v1)
  {
    v3 = 0x7265747369676572;
    v2 = 0xEB00000000676E69;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_224587BDC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8C38);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_224627188();
  __swift_allocate_value_buffer(v3, qword_27D0C97C8);
  v4 = __swift_project_value_buffer(v3, qword_27D0C97C8);
  sub_224627128();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t static DockKitIDSClient.DockKitBroadcastToken.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D0C8888 != -1)
  {
    swift_once();
  }

  v2 = sub_224627188();
  v3 = __swift_project_value_buffer(v2, qword_27D0C97C8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

char *DockKitIDSClient.init(_:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a4;
  v42 = a3;
  v43 = a1;
  v44 = a2;
  ObjectType = swift_getObjectType();
  v40 = sub_2246280A8();
  v5 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224628078();
  MEMORY[0x28223BE20](v8);
  v9 = sub_224627BC8();
  MEMORY[0x28223BE20](v9 - 8);
  sub_224627178();
  v39 = OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_queue;
  v10 = sub_22450950C(0, &unk_280C518F0);
  v38[0] = "SMessagingCenter";
  v38[1] = v10;
  sub_224627BA8();
  v47 = MEMORY[0x277D84F90];
  sub_2245817E0(&unk_280C51900, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C99E0);
  sub_224509674(&qword_280C51920, &unk_27D0C99E0);
  sub_224628298();
  (*(v5 + 104))(v7, *MEMORY[0x277D85260], v40);
  *&v4[v39] = sub_2246280D8();
  *&v4[OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_messagingCenter] = 0;
  v11 = OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_accessories;
  v12 = MEMORY[0x277D84F90];
  *&v4[v11] = sub_22452E58C(MEMORY[0x277D84F90]);
  v4[OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_state] = 0;
  *&v4[OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_boundingBoxes] = v12;
  v13 = OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_keepAlive;
  type metadata accessor for DKIDSKeepAlive();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = sub_22452E338(v12);
  *(v14 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v14 + 48) = 0;
  *(v14 + 64) = xmmword_224630230;
  *(v14 + 80) = 5;
  *(v14 + 56) = 1;
  *&v4[v13] = v14;
  v4[OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_initialRegister] = 1;
  *&v4[OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient__messageDispatch;
  *&v4[v15] = sub_22452E798(v12);
  v16 = type metadata accessor for DockKitIDSClient(0);
  v46.receiver = v4;
  v46.super_class = v16;
  v17 = objc_msgSendSuper2(&v46, sel_init);
  *(*&v17[OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_keepAlive] + 40) = &protocol witness table for DockKitIDSClient;
  swift_unknownObjectWeakAssign();
  *&v17[OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_delegate + 8] = v41;
  swift_unknownObjectWeakAssign();
  v18 = *&v17[OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_queue];
  v19 = objc_allocWithZone(type metadata accessor for DKIDSMessagingCenter());
  v20 = v17;
  v21 = v18;
  DKIDSMessagingCenter.init(serviceName:delegate:queue:)(v43, v44, v17, v21);
  v22 = *&v20[OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_messagingCenter];
  *&v20[OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_messagingCenter] = v23;

  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient__messageDispatch;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = *&v20[v25];
  *&v20[v25] = 0x8000000000000000;
  sub_22458E6F0(sub_2245918B8, v24, 3u, isUniquelyReferenced_nonNull_native);
  *&v20[v25] = v47;
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *&v20[v25];
  *&v20[v25] = 0x8000000000000000;
  sub_22458E6F0(sub_2245918D4, v27, 2u, v28);
  *&v20[v25] = v47;
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *&v20[v25];
  *&v20[v25] = 0x8000000000000000;
  sub_22458E6F0(sub_2245918F0, v29, 0xAu, v30);
  *&v20[v25] = v47;
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *&v20[v25];
  *&v20[v25] = 0x8000000000000000;
  sub_22458E6F0(sub_22459190C, v31, 9u, v32);
  *&v20[v25] = v47;
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v34 = swift_allocObject();
  v35 = ObjectType;
  *(v34 + 16) = v33;
  *(v34 + 24) = v35;

  v36 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *&v20[v25];
  *&v20[v25] = 0x8000000000000000;
  sub_22458E6F0(sub_224591928, v34, 0xFu, v36);
  *&v20[v25] = v47;

  swift_unknownObjectRelease();

  return v20;
}

void sub_224588458(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  v6 = Strong;
  if (sub_224627158())
  {

    goto LABEL_7;
  }

  if (qword_27D0C8888 != -1)
  {
    swift_once();
  }

  v7 = sub_224627188();
  __swift_project_value_buffer(v7, qword_27D0C97C8);
  v8 = sub_224627158();

  if ((v8 & 1) == 0)
  {
LABEL_12:
    sub_2245912EC();
    swift_allocError();
    *v12 = 2;
    swift_willThrow();
    return;
  }

LABEL_7:
  if (v3 >> 60 == 15)
  {
    return;
  }

  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9)
  {
    sub_22452F6D8(v4, v3);
LABEL_14:
    if (qword_27D0C8880 != -1)
    {
      swift_once();
    }

    v13 = sub_224627B78();
    __swift_project_value_buffer(v13, qword_27D0C97B0);
    v14 = sub_224627B58();
    v15 = sub_224628048();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_224507000, v14, v15, "Got accessory INFO broadcast while not registered, saving off anyways...", v16, 2u);
      MEMORY[0x22AA526D0](v16, -1, -1);
    }

    goto LABEL_19;
  }

  v10 = *(v9 + OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_state);
  v11 = v9;
  sub_224580128(v4, v3);

  if (v10 == 4 || (sub_224580BEC(v10, 2u) & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_19:
  sub_224626F68();
  swift_allocObject();
  sub_224626F58();
  sub_224593998();
  sub_224626F48();
  if (v2)
  {
    sub_2245687AC(v4, v3);
  }

  else
  {

    v21 = v20;
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = v21;
      *&v20 = v21;
      sub_224589E8C(&v20);

      sub_2245687AC(v4, v3);
    }

    else
    {

      sub_2245687AC(v4, v3);
    }
  }
}

void sub_224588788(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_20;
  }

  v5 = Strong;
  if (sub_224627158())
  {

    goto LABEL_7;
  }

  if (qword_27D0C8888 != -1)
  {
    swift_once();
  }

  v6 = sub_224627188();
  __swift_project_value_buffer(v6, qword_27D0C97C8);
  v7 = sub_224627158();

  if ((v7 & 1) == 0)
  {
LABEL_20:
    sub_2245912EC();
    swift_allocError();
    v30 = 2;
LABEL_33:
    *v29 = v30;
    goto LABEL_34;
  }

LABEL_7:
  if (v3 >> 60 != 15)
  {
    sub_224626F68();
    swift_allocObject();
    sub_224626F58();
    sub_224593944();
    sub_224626F48();

    if (v2)
    {
      return;
    }

    if (v41 == 3)
    {
      v31 = swift_unknownObjectWeakLoadStrong();
      if (v31)
      {
        v32 = v31;
        LOBYTE(v41) = 0;
        sub_2245898F4(&v41);
      }

      v33 = swift_unknownObjectWeakLoadStrong();
      if (v33)
      {
        v34 = v33;
        sub_22458A620();
      }

      return;
    }

    sub_2245912EC();
    swift_allocError();
    *v39 = v41;
LABEL_34:
    swift_willThrow();
    return;
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8 || (v9 = v8[OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_state], v8, v9 == 4) || (sub_224580BEC(v9, 1u) & 1) == 0)
  {
    v35 = swift_unknownObjectWeakLoadStrong();
    if (v35)
    {
      v36 = v35[OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_state];

      if (v36 != 4 && (sub_224580BEC(v36, 3u) & 1) != 0)
      {
        v37 = swift_unknownObjectWeakLoadStrong();
        if (v37)
        {
          v38 = v37;
          LOBYTE(v41) = 0;
          sub_2245898F4(&v41);
        }

        return;
      }
    }

    sub_2245912EC();
    swift_allocError();
    v30 = 1;
    goto LABEL_33;
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    LOBYTE(v41) = 2;
    sub_2245898F4(&v41);
  }

  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v14 = sub_22458A1E8();

    if (v14)
    {
      v15 = swift_unknownObjectWeakLoadStrong();
      if (v15)
      {
        v16 = *(v15 + OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_accessories);
        v17 = v15;

        if (*(v16 + 16))
        {
          v18 = sub_22452BABC(v14 + OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_identifier);
          if (v19)
          {
            v20 = *(v16 + 56) + 56 * v18;
            v21 = *v20;
            v47 = *(v20 + 8);
            v22 = *(v20 + 16);
            v40 = *(v20 + 24);
            v23 = *(v20 + 32);
            v24 = *(v20 + 40);
            v25 = *(v20 + 48);
            v26 = v21;

            v27 = swift_unknownObjectWeakLoadStrong();
            if (v27)
            {
              v28 = v27;
              *&v41 = v26;
              *(&v41 + 1) = v47;
              v42 = v22;
              v43 = v40;
              v44 = v23;
              v45 = v24;
              v46 = v25;
              sub_224589E8C(&v41);
            }

            else
            {
            }

            return;
          }
        }
      }
    }
  }
}

void sub_224588B6C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v5 = Strong;
  if ((sub_224627158() & 1) == 0)
  {
    if (qword_27D0C8888 != -1)
    {
      swift_once();
    }

    v6 = sub_224627188();
    __swift_project_value_buffer(v6, qword_27D0C97C8);
    v7 = sub_224627158();

    if (v7)
    {
      goto LABEL_7;
    }

LABEL_9:
    sub_2245912EC();
    swift_allocError();
    *v10 = 2;
    swift_willThrow();
    return;
  }

LABEL_7:
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    (*((*MEMORY[0x277D85000] & *v8) + 0x210))(v3, v2);
  }
}

void sub_224588CD4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_224627B98();
  v39 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224627BC8();
  v38 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v10 = a2[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = v10;
    v13 = v11;
    v14 = Strong[OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_state];

    if (v14 != 4 && (sub_224580BEC(v14, 2u) & 1) != 0)
    {
      v15 = swift_unknownObjectWeakLoadStrong();
      if (v15)
      {
        v16 = v15;
        if (sub_224627158())
        {

          goto LABEL_10;
        }

        if (qword_27D0C8888 != -1)
        {
          swift_once();
        }

        v17 = sub_224627188();
        __swift_project_value_buffer(v17, qword_27D0C97C8);
        v18 = sub_224627158();

        if (v18)
        {
LABEL_10:
          if (v37 >> 60 == 15)
          {
            return;
          }

          v19 = swift_unknownObjectWeakLoadStrong();
          if (v19)
          {
            *(v19 + OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_boundingBoxes) = MEMORY[0x277D84F90];
            v20 = v19;
            sub_22452F6D8(v13, v37);
          }

          else
          {
            sub_22452F6D8(v13, v37);
          }

          v22 = swift_unknownObjectWeakLoadStrong();
          if (v22)
          {
            v23 = v22;
            v24 = *((*MEMORY[0x277D85000] & *v22) + 0x218);
            v35 = ((*MEMORY[0x277D85000] & *v22) + 536);
            v36 = v24;
            v25 = v37;
            sub_22452F6D8(v13, v37);
            v36(v13, v25);
            if (!v2)
            {
              sub_2245687AC(v13, v25);
              sub_2245687AC(v13, v25);

              return;
            }

            sub_2245687AC(v13, v25);

            v43 = v2;
            v26 = v2;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C8EA0);
            if (swift_dynamicCast() && v42 == 6)
            {

              sub_224626F68();
              swift_allocObject();
              sub_224626F58();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9A50);
              sub_224593888();
              sub_224626F48();

              v27 = aBlock[0];
              v28 = swift_unknownObjectWeakLoadStrong();
              if (v28)
              {
                v36 = *(v28 + OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_queue);
                v34 = v13;
                v29 = v28;
                v30 = swift_allocObject();
                *(v30 + 16) = v29;
                *(v30 + 24) = v27;
                aBlock[4] = sub_22459393C;
                aBlock[5] = v30;
                aBlock[0] = MEMORY[0x277D85DD0];
                aBlock[1] = 1107296256;
                aBlock[2] = sub_224580D44;
                aBlock[3] = &block_descriptor_175;
                v31 = _Block_copy(aBlock);
                v35 = v29;
                sub_224627BA8();
                v40 = MEMORY[0x277D84F90];
                v33[1] = sub_2245817E0(&qword_27D0C9EF0, MEMORY[0x277D85198]);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9A40);
                sub_224509674(&qword_27D0C9F00, &unk_27D0C9A40);
                sub_224628298();
                MEMORY[0x22AA51530](0, v9, v6, v31);
                _Block_release(v31);
                sub_2245687AC(v34, v37);
                (*(v39 + 8))(v6, v4);
                (*(v38 + 8))(v9, v7);
              }

              else
              {

                sub_2245912EC();
                swift_allocError();
                *v32 = 4;
                swift_willThrow();
                sub_2245687AC(v13, v37);
              }

              return;
            }

            swift_willThrow();
          }

          sub_2245687AC(v13, v37);
          return;
        }
      }

      sub_2245912EC();
      swift_allocError();
      *v21 = 2;
      swift_willThrow();
    }
  }
}

uint64_t sub_224589328(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_boundingBoxes) = a2;

  v4 = a1 + OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 32))(a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2245893DC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong[OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_state];

  if (v1 == 4 || (sub_224580BEC(v1, 2u) & 1) == 0)
  {
    return;
  }

  v2 = swift_unknownObjectWeakLoadStrong();
  if (!v2)
  {
    goto LABEL_16;
  }

  v3 = v2;
  if ((sub_224627158() & 1) == 0)
  {
    if (qword_27D0C8888 != -1)
    {
      swift_once();
    }

    v4 = sub_224627188();
    __swift_project_value_buffer(v4, qword_27D0C97C8);
    v5 = sub_224627158();

    if (v5)
    {
      goto LABEL_10;
    }

LABEL_16:
    sub_2245912EC();
    swift_allocError();
    *v13 = 2;
    swift_willThrow();
    return;
  }

LABEL_10:
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;

    if (qword_27D0C8888 != -1)
    {
      swift_once();
    }

    v8 = sub_224627188();
    __swift_project_value_buffer(v8, qword_27D0C97C8);
    v9 = sub_224627138();
    sub_2245862BC(v9, v10);
  }

  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v14 = 16;
    sub_22458C204(&v14, 0, 0xF000000000000000);
  }
}

uint64_t sub_22458965C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_state) == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_224628688();
  }

  *a2 = v3 & 1;
  return result;
}

void sub_22458977C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v8 = 0;
    sub_2245898F4(&v8);
  }

  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2 + OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_delegate;
    v4 = v2;
    v5 = swift_unknownObjectWeakLoadStrong();
    v6 = *(v3 + 8);

    if (v5)
    {
      ObjectType = swift_getObjectType();
      (*(v6 + 40))(ObjectType, v6);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_224589848(uint64_t result)
{
  if (result)
  {
    v2 = result;
    v3 = v1 + OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v4 = *(v3 + 8);
      swift_getObjectType();
      v5 = *(v4 + 48);
      v6 = v2;
      v5();

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_2245898F4(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(v1 + OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_state);
  *(v1 + OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_state) = v3;
  *(v1 + OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_boundingBoxes) = MEMORY[0x277D84F90];

  if (qword_27D0C8880 != -1)
  {
    swift_once();
  }

  v5 = sub_224627B78();
  __swift_project_value_buffer(v5, qword_27D0C97B0);
  v6 = sub_224627B58();
  v7 = sub_224628058();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = 0xEC00000064657265;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = v10;
    *v9 = 136315394;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v11 = 0x7265747369676572;
        v8 = 0xEA00000000006465;
      }

      else
      {
        v8 = 0xED0000676E697265;
        v11 = 0x7473696765726E75;
      }
    }

    else
    {
      v11 = 0x7473696765726E75;
      if (v4)
      {
        v11 = 0x7265747369676572;
        v8 = 0xEB00000000676E69;
      }
    }

    v12 = sub_224509F28(v11, v8, &v31);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = 0x7265747369676572;
    v14 = 0xEA00000000006465;
    if (v3 != 2)
    {
      v13 = 0x7473696765726E75;
      v14 = 0xED0000676E697265;
    }

    v15 = 0x7265747369676572;
    v16 = 0xEB00000000676E69;
    if (!v3)
    {
      v15 = 0x7473696765726E75;
      v16 = 0xEC00000064657265;
    }

    if (v3 <= 1)
    {
      v17 = v15;
    }

    else
    {
      v17 = v13;
    }

    if (v3 <= 1)
    {
      v18 = v16;
    }

    else
    {
      v18 = v14;
    }

    v19 = sub_224509F28(v17, v18, &v31);

    *(v9 + 14) = v19;
    _os_log_impl(&dword_224507000, v6, v7, "Updated state sync: %s -> %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA526D0](v10, -1, -1);
    MEMORY[0x22AA526D0](v9, -1, -1);
  }

  result = sub_224580BEC(v3, v4);
  if ((result & 1) == 0)
  {
    v21 = v2 + OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v22 = *(v21 + 8);
      ObjectType = swift_getObjectType();
      v33 = v4;
      v32 = v3;
      (*(v22 + 8))(&v33, &v32, ObjectType, v22);
      swift_unknownObjectRelease();
    }

    if (v3 == 2)
    {

LABEL_28:

      sub_2245866A4();

      v25 = qword_27D0C8888;

      if (v25 != -1)
      {
        swift_once();
      }

      v26 = sub_224627188();
      __swift_project_value_buffer(v26, qword_27D0C97C8);
      v27 = sub_224627138();
      sub_2245862BC(v27, v28);
    }

    v24 = sub_224628688();

    if (v24)
    {
      goto LABEL_28;
    }

    if (v3)
    {
      v29 = sub_224628688();

      if (v29)
      {
LABEL_38:

        sub_224586814();
      }

      if (v3 == 1)
      {
        v30 = sub_224628688();

        if ((v30 & 1) == 0)
        {
          return result;
        }

        goto LABEL_38;
      }
    }

    goto LABEL_38;
  }

  return result;
}

void *sub_224589E8C(__int128 *a1)
{
  v2 = v1;
  v4 = sub_224627188();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[1];
  v36 = *a1;
  v39 = *(a1 + 6);
  v9 = a1[2];
  v37 = v8;
  v38 = v9;
  v10 = v36;
  v11 = OBJC_IVAR____TtC11DockKitCore12DockCoreInfo_identifier;
  v12 = OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_accessories;
  v13 = *(v2 + OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_accessories);
  if (*(v13 + 16))
  {

    v14 = sub_22452BABC(v10 + v11);
    if (v15)
    {
      v16 = *(v13 + 56) + 56 * v14;
      v17 = *v16;
      v31 = *(v16 + 8);
      v30 = *(v16 + 16);
      v18 = *(v16 + 32);
      v29 = *(v16 + 24);
      v19 = *(v16 + 48);
      v28 = *(v16 + 40);
      v32 = v17;
      v20 = v17;
    }

    else
    {
      v32 = 0;
      v31 = 0;
      v30 = 0;
      v29 = 0;
      v18 = 0;
      v28 = 0;
      v19 = 0;
    }
  }

  else
  {
    v32 = 0;
    v31 = 0;
    v30 = 0;
    v29 = 0;
    v18 = 0;
    v28 = 0;
    v19 = 0;
  }

  (*(v5 + 16))(v7, v10 + v11, v4);
  sub_224593674(&v36, v34);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v34[0] = *(v2 + v12);
  *(v2 + v12) = 0x8000000000000000;
  sub_22458E850(&v36, v7, isUniquelyReferenced_nonNull_native);
  (*(v5 + 8))(v7, v4);
  *(v2 + v12) = *&v34[0];
  v22 = v2 + OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v23 = *(v22 + 8);
    ObjectType = swift_getObjectType();
    v34[0] = v36;
    v34[1] = v37;
    v34[2] = v38;
    v35 = v39;
    v25 = v32;
    v33[0] = v32;
    v33[1] = v31;
    v33[2] = v30;
    v33[3] = v29;
    v33[4] = v18;
    v33[5] = v28;
    v33[6] = v19;
    (*(v23 + 16))(v34, v33, ObjectType, v23);
    swift_unknownObjectRelease();
    v26 = v25;
  }

  else
  {
    v26 = v32;
  }

  return sub_2245936AC(v26);
}

uint64_t sub_22458A1E8()
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9C20);
  v1 = MEMORY[0x28223BE20](v58);
  v54 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v49 - v4;
  MEMORY[0x28223BE20](v3);
  v52 = &v49 - v6;
  v7 = *(v0 + OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_accessories);
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v53 = v7;

  v14 = 0;
  v50 = v12;
  v51 = v8;
  while (v11)
  {
LABEL_10:
    v16 = __clz(__rbit64(v11)) | (v14 << 6);
    v17 = v53;
    v18 = *(v53 + 48);
    v19 = sub_224627188();
    v20 = *(v19 - 8);
    v59 = v19;
    v60 = v20;
    v21 = v52;
    (*(v20 + 16))(v52, v18 + *(v20 + 72) * v16, v19);
    v22 = (*(v17 + 56) + 56 * v16);
    v23 = v22[1];
    v25 = v22[2];
    v24 = v22[3];
    v26 = v22[4];
    v27 = v22[5];
    v28 = v22[6];
    v55 = *v22;
    v56 = v28;
    v29 = v59;
    v30 = *(v58 + 48);
    v31 = &v21[v30];
    *v31 = v55;
    *(v31 + 1) = v23;
    *(v31 + 2) = v25;
    *(v31 + 3) = v24;
    *(v31 + 4) = v26;
    *(v31 + 5) = v27;
    *(v31 + 6) = v28;
    v32 = v5;
    v33 = &v5[v30];
    (*(v60 + 32))(v32, v21, v29);
    v34 = v55;
    *v33 = v55;
    *(v33 + 1) = v23;
    *(v33 + 2) = v25;
    *(v33 + 3) = v24;
    *(v33 + 4) = v26;
    *(v33 + 5) = v27;
    *(v33 + 6) = v56;
    v35 = v54;
    sub_22459352C(v32, v54);
    v36 = v35 + *(v58 + 48);
    v37 = *v36;
    v57 = *(v36 + 8);
    v38 = v34;

    v39 = v60;

    v40 = *(v39 + 8);
    v41 = v35;
    v5 = v32;
    v42 = v59;
    v40(v41, v59);
    if (!v57)
    {
      v43 = v54;
      sub_22459352C(v5, v54);
      v44 = v43 + *(v58 + 48);
      v45 = *v44;
      v46 = *(v44 + 16);

      v40(v43, v42);
      if (v46 == 1)
      {

        v47 = v54;
        sub_224593604(v5, v54);
        v48 = *(v47 + *(v58 + 48));

        v40(v47, v42);
        return v48;
      }
    }

    v11 &= v11 - 1;
    result = sub_22459359C(v5);
    v12 = v50;
    v8 = v51;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      return 0;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22458A5A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9A30);
  sub_2246280B8();
  return v1;
}

void sub_22458A640()
{
  v0 = type metadata accessor for DockKitIDSMessage(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *&Strong[OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_messagingCenter];
    if (v4)
    {
      v5 = OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_initialRegister;
      v26 = Strong;
      if (Strong[OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_initialRegister])
      {
        v6 = qword_27D0C8880;
        v7 = v4;
        if (v6 != -1)
        {
          swift_once();
        }

        v8 = sub_224627B78();
        __swift_project_value_buffer(v8, qword_27D0C97B0);
        v9 = sub_224627B58();
        v10 = sub_224628058();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&dword_224507000, v9, v10, "This is an initial register!", v11, 2u);
          MEMORY[0x22AA526D0](v11, -1, -1);
        }

        v26[v5] = 0;
        v12 = sub_22453000C(&unk_2837F5A78);
        v14 = v13;
      }

      else
      {
        v15 = v4;
        v12 = 0;
        v14 = 0xF000000000000000;
      }

      v16 = OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_token;
      v17 = *(v0 + 20);
      v18 = sub_224627188();
      (*(*(v18 - 8) + 16))(&v2[v17], &v26[v16], v18);
      v19 = &v2[*(v0 + 24)];
      *v19 = xmmword_224630220;
      *v2 = 0;
      v20 = *v19;
      v21 = *(v19 + 1);
      sub_224580128(v12, v14);
      sub_2245687AC(v20, v21);
      *v19 = v12;
      *(v19 + 1) = v14;
      sub_224626F98();
      swift_allocObject();
      sub_224626F88();
      sub_2245817E0(&qword_27D0C97E0, type metadata accessor for DockKitIDSMessage);
      v22 = sub_224626F78();
      v24 = v23;

      DKIDSMessagingCenter.send(data:doNotCompress:timeout:)(0.0, v22, v24, 0);
      sub_22452F684(v22, v24);
      sub_22458FF20(v2, type metadata accessor for DockKitIDSMessage);
      v27[0] = 1;
      sub_2245898F4(v27);
      sub_2245687AC(v12, v14);
    }

    else
    {
    }
  }
}

void sub_22458AB60()
{
  v0 = type metadata accessor for DockKitIDSMessage(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong[OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_state];
  v20 = Strong;
  if (v4 == 2)
  {

    goto LABEL_5;
  }

  v5 = sub_224628688();

  if (v5)
  {
LABEL_5:
    v6 = v20;
    v7 = *&v20[OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_messagingCenter];
    if (v7)
    {
      v8 = OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_token;
      v9 = *(v0 + 20);
      v10 = sub_224627188();
      (*(*(v10 - 8) + 16))(&v2[v9], &v20[v8], v10);
      v11 = &v2[*(v0 + 24)];
      v19 = xmmword_224630220;
      *v11 = xmmword_224630220;
      *v2 = 1;
      v12 = *v11;
      v13 = *(v11 + 1);
      v14 = v7;
      sub_2245687AC(v12, v13);
      *v11 = v19;
      sub_224626F98();
      swift_allocObject();
      sub_224626F88();
      sub_2245817E0(&qword_27D0C97E0, type metadata accessor for DockKitIDSMessage);
      v16 = sub_224626F78();
      v18 = v17;

      DKIDSMessagingCenter.send(data:doNotCompress:timeout:)(0.0, v16, v18, 0);
      sub_22452F684(v16, v18);
      sub_22458FF20(v2, type metadata accessor for DockKitIDSMessage);
      v21[0] = 3;
      sub_2245898F4(v21);
    }

    else
    {
    }

    return;
  }

  v15 = v20;
}

uint64_t sub_22458B034(char a1)
{
  v2 = v1;
  v4 = sub_224627B98();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_224627BC8();
  v7 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_queue);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  aBlock[4] = sub_2245919B4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224580D44;
  aBlock[3] = &block_descriptor_20;
  v12 = _Block_copy(aBlock);

  sub_224627BA8();
  v17 = MEMORY[0x277D84F90];
  sub_2245817E0(&qword_27D0C9EF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9A40);
  sub_224509674(&qword_27D0C9F00, &unk_27D0C9A40);
  sub_224628298();
  MEMORY[0x22AA51530](0, v9, v6, v12);
  _Block_release(v12);
  (*(v16 + 8))(v6, v4);
  (*(v7 + 8))(v9, v15);
}

void sub_22458B334(uint64_t a1, char a2)
{
  v3 = type metadata accessor for DockKitIDSMessage(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v7 = Strong[OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_state];
  v25 = Strong;
  if (v7 == 2)
  {

    goto LABEL_5;
  }

  v8 = sub_224628688();

  if (v8)
  {
LABEL_5:
    v9 = v25;
    v10 = *&v25[OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_messagingCenter];
    if (v10)
    {
      sub_224626F98();
      swift_allocObject();
      v11 = v10;
      sub_224626F88();
      v26 = a2 & 1;
      v12 = sub_224626F78();
      v14 = v13;

      v15 = OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_token;
      v16 = *(v3 + 20);
      v17 = sub_224627188();
      (*(*(v17 - 8) + 16))(&v5[v16], &v25[v15], v17);
      v18 = &v5[*(v3 + 24)];
      *v18 = xmmword_224630220;
      *v5 = 13;
      v19 = *v18;
      v20 = *(v18 + 1);
      sub_22452F6D8(v12, v14);
      sub_2245687AC(v19, v20);
      *v18 = v12;
      *(v18 + 1) = v14;
      swift_allocObject();
      sub_224626F88();
      sub_2245817E0(&qword_27D0C97E0, type metadata accessor for DockKitIDSMessage);
      v21 = sub_224626F78();
      v23 = v22;

      DKIDSMessagingCenter.send(data:doNotCompress:timeout:)(0.0, v21, v23, 0);
      sub_22452F684(v21, v23);
      sub_22458FF20(v5, type metadata accessor for DockKitIDSMessage);
      sub_22452F684(v12, v14);

      return;
    }

    goto LABEL_8;
  }

  v9 = v25;
LABEL_8:
}

uint64_t sub_22458B6D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9A50);
  sub_2246280B8();
  return v1;
}

uint64_t sub_22458B770()
{
  sub_2245912EC();
  swift_allocError();
  *v0 = 6;
  return swift_willThrow();
}

void sub_22458B7C0(void *a1)
{
  v3 = [a1 devices];
  if (v3)
  {
    v4 = v3;
    sub_22450950C(0, &qword_27D0C99A0);
    v5 = sub_224627ED8();

    v52 = v1;
    if (v5 >> 62)
    {
      goto LABEL_32;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224628478())
    {
      v7 = 0;
      v8 = v5 & 0xC000000000000001;
      v53 = v5 & 0xFFFFFFFFFFFFFF8;
      v51 = 1;
      v9 = qword_27D0C97B0;
      v10 = 0x27D0C8000uLL;
      v55 = v5;
      v56 = v5 & 0xC000000000000001;
      v54 = i;
      while (1)
      {
        if (v8)
        {
          v11 = MEMORY[0x22AA517F0](v7, v5);
        }

        else
        {
          if (v7 >= *(v53 + 16))
          {
            goto LABEL_31;
          }

          v11 = *(v5 + 8 * v7 + 32);
        }

        v12 = v11;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v58 = v7 + 1;
        if (*(v10 + 2176) != -1)
        {
          swift_once();
        }

        v13 = sub_224627B78();
        __swift_project_value_buffer(v13, v9);
        v14 = v12;
        v15 = sub_224627B58();
        v16 = sub_224628058();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v59 = v57;
          *v17 = 136315138;
          v18 = v14;
          v19 = v9;
          v20 = [v18 description];
          v21 = sub_224627CD8();
          v23 = v22;

          v5 = v55;
          v9 = v19;
          v24 = sub_224509F28(v21, v23, &v59);
          v10 = 0x27D0C8000;

          *(v17 + 4) = v24;
          v8 = v56;
          _os_log_impl(&dword_224507000, v15, v16, "%s", v17, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v57);
          MEMORY[0x22AA526D0](v57, -1, -1);
          v25 = v17;
          i = v54;
          MEMORY[0x22AA526D0](v25, -1, -1);
        }

        if ([v14 isDefaultPairedDevice])
        {
          v2 = v14;
          v26 = sub_224627B58();
          v27 = sub_224628058();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            v59 = v29;
            *v28 = 136315650;
            v30 = [v2 uniqueIDOverride];

            if (!v30)
            {
              goto LABEL_47;
            }

            v31 = sub_224627CD8();
            v33 = v32;

            v34 = sub_224509F28(v31, v33, &v59);

            *(v28 + 4) = v34;
            *(v28 + 12) = 2080;
            v35 = [v2 name];

            if (!v35)
            {
              goto LABEL_48;
            }

            v36 = sub_224627CD8();
            v38 = v37;

            v39 = sub_224509F28(v36, v38, &v59);

            *(v28 + 14) = v39;
            *(v28 + 22) = 2080;
            v40 = [v2 isConnected];
            v41 = v40 == 0;
            if (v40)
            {
              v42 = 0x657463656E6E6F63;
            }

            else
            {
              v42 = 0x656E6E6F63736964;
            }

            if (v41)
            {
              v43 = 0xEC00000064657463;
            }

            else
            {
              v43 = 0xE900000000000064;
            }

            v44 = sub_224509F28(v42, v43, &v59);

            *(v28 + 24) = v44;
            _os_log_impl(&dword_224507000, v26, v27, "Device %s (%s) %s", v28, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x22AA526D0](v29, -1, -1);
            MEMORY[0x22AA526D0](v28, -1, -1);

            v51 = 0;
            v45 = 0;
            v7 = v58;
            v8 = v56;
            v9 = qword_27D0C97B0;
            v10 = 0x27D0C8000;
            if (v58 == i)
            {
              goto LABEL_34;
            }
          }

          else
          {

            v51 = 0;
            v45 = 0;
            v7 = v58;
            if (v58 == i)
            {
              goto LABEL_34;
            }
          }
        }

        else
        {

          ++v7;
          if (v58 == i)
          {
            v45 = v51;
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      ;
    }

    v45 = 1;
LABEL_34:

    if (*(v52 + OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_state) == 2)
    {
    }

    else
    {
      v46 = sub_224628688();

      if (((v46 | v45) & 1) == 0)
      {
        if (qword_27D0C8880 != -1)
        {
          swift_once();
        }

        v47 = sub_224627B78();
        __swift_project_value_buffer(v47, qword_27D0C97B0);
        v48 = sub_224627B58();
        v49 = sub_224628058();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_224507000, v48, v49, "Forcing re-register on newly connected device!", v50, 2u);
          MEMORY[0x22AA526D0](v50, -1, -1);
        }

        sub_22458A620();
      }
    }
  }

  else
  {
    __break(1u);
LABEL_47:

    __break(1u);
LABEL_48:
    __break(1u);
  }
}

uint64_t sub_22458BED4(unsigned __int8 *a1)
{
  v3 = type metadata accessor for DockKitIDSMessage(0);
  v4 = *(v3 + 20);
  if (qword_27D0C8888 != -1)
  {
    swift_once();
  }

  v5 = sub_224627188();
  __swift_project_value_buffer(v5, qword_27D0C97C8);
  if ((sub_224627158() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (*(v1 + OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_state) <= 1u && !*(v1 + OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_state))
  {

    return sub_22458A620();
  }

  v7 = sub_224628688();

  if (v7)
  {
    return sub_22458A620();
  }

LABEL_9:
  v8 = *(v1 + OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient__messageDispatch);
  if (*(v8 + 16) && (v9 = sub_22452BA50(*a1), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 16 * v9);
    v13 = *&a1[*(v3 + 24)];

    v11(&a1[v4], &v13);
  }

  else
  {
    sub_2245912EC();
    swift_allocError();
    *v12 = 1;
    return swift_willThrow();
  }
}

void sub_22458C0D8()
{
  v2 = *(v0 + OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_messagingCenter);
  if (v2)
  {
    sub_224626F98();
    swift_allocObject();
    v3 = v2;
    sub_224626F88();
    type metadata accessor for DockKitIDSMessage(0);
    sub_2245817E0(&qword_27D0C97E0, type metadata accessor for DockKitIDSMessage);
    v4 = sub_224626F78();
    if (v1)
    {

      v6 = 0;
      v7 = 0xC000000000000000;
    }

    else
    {
      v6 = v4;
      v7 = v5;
    }

    DKIDSMessagingCenter.send(data:doNotCompress:timeout:)(0.0, v6, v7, 0);
    sub_22452F684(v6, v7);
  }
}

uint64_t sub_22458C204(char *a1, uint64_t a2, unint64_t a3)
{
  v8 = type metadata accessor for DockKitIDSMessage(0);
  result = MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_messagingCenter);
  if (v12)
  {
    v13 = *a1;
    v14 = OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_token;
    v29 = v4;
    v15 = a3;
    v16 = *(result + 20);
    v17 = result;
    v18 = sub_224627188();
    (*(*(v18 - 8) + 16))(&v11[v16], v3 + v14, v18);
    v19 = &v11[*(v17 + 24)];
    *v19 = xmmword_224630220;
    *v11 = v13;
    v20 = *v19;
    v21 = *(v19 + 1);
    v22 = v12;
    sub_224580128(a2, v15);
    sub_2245687AC(v20, v21);
    *v19 = a2;
    *(v19 + 1) = v15;
    sub_224626F98();
    swift_allocObject();
    sub_224626F88();
    sub_2245817E0(&qword_27D0C97E0, type metadata accessor for DockKitIDSMessage);
    v23 = v29;
    v24 = sub_224626F78();
    if (v23)
    {

      v26 = 0;
      v27 = 0xC000000000000000;
    }

    else
    {
      v26 = v24;
      v27 = v25;
    }

    sub_22458FF20(v11, type metadata accessor for DockKitIDSMessage);
    DKIDSMessagingCenter.send(data:doNotCompress:timeout:)(0.0, v26, v27, 0);

    return sub_22452F684(v26, v27);
  }

  return result;
}

id DockKitIDSClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_22458C4C8()
{
  v1 = OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_token;
  v2 = sub_224627188();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_2245122B4(v0 + OBJC_IVAR____TtC11DockKitCore16DockKitIDSClient_delegate);
}

id sub_22458C5BC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_22458C6D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  result = sub_2245096C8(a1, a2);
  if (v7)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22458EFD0();
      v10 = v14;
    }

    v11 = *(v10 + 56) + 24 * v8;
    v12 = *v11;
    v13 = *(v11 + 8);
    LOBYTE(v11) = *(v11 + 16);
    *a3 = v12;
    *(a3 + 8) = v13;
    *(a3 + 16) = v11;
    result = sub_22458DF20(v8, v10);
    *v4 = v10;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 2;
  }

  return result;
}

uint64_t sub_22458C7B4(unsigned int a1, uint64_t *a2)
{
  v4 = v2;
  v5 = sub_22452B99C(a1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v12 = *v4;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_22458FA18(a2);
    v9 = v12;
  }

  v10 = *(*(v9 + 56) + 8 * v7);
  sub_22458E0F0(v7, v9);
  *v4 = v9;
  return v10;
}

uint64_t sub_22458C854(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9300);
  result = sub_224628498();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v24 = *v22;
      v23 = v22[1];
      sub_224628778();
      MEMORY[0x22AA51BF0](v21);
      result = sub_2246287C8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v24;
      v16[1] = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}