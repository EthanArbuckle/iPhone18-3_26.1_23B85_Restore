void sub_2520FBFEC(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = *&v1[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6F0, &qword_2521467A0);
  sub_25214200C();
  v5 = *(&v49 + 1);
  v6 = v49;
  v46 = v50;
  v47 = v51;
  v48[0] = v52[0];
  *(v48 + 12) = *(v52 + 12);
  if (!*(&v49 + 1))
  {
LABEL_11:
    v49 = v6;
    v50 = v46;
    v51 = v47;
    v52[0] = v48[0];
    *(v52 + 12) = *(v48 + 12);
    sub_2520A2584(&v49, &qword_27F4CE6F0, &qword_2521467A0);
LABEL_13:
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v20 = sub_25214198C();
    __swift_project_value_buffer(v20, qword_27F4CDE68);
    v21 = sub_25214196C();
    v22 = sub_252141FAC();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_19;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v49 = v24;
    *v23 = 136446210;
    v25 = sub_2521425DC();
    v27 = sub_2520A5448(v25, v26, &v49);

    *(v23 + 4) = v27;
    v28 = "[%{public}s] updateDevice has no device identifer yet";
    goto LABEL_17;
  }

  v44[0] = v49;
  v44[1] = v46;
  v44[2] = v47;
  v45[0] = v48[0];
  *(v45 + 12) = *(v48 + 12);

  sub_2520A2584(v44, &qword_27F4CE6F0, &qword_2521467A0);
  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    goto LABEL_13;
  }

  v8 = [a1 identifier];
  if (!v8)
  {

    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v30 = sub_25214198C();
    __swift_project_value_buffer(v30, qword_27F4CDE68);
    v21 = sub_25214196C();
    v22 = sub_252141FAC();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_19;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v49 = v24;
    *v23 = 136446210;
    v31 = sub_2521425DC();
    v33 = sub_2520A5448(v31, v32, &v49);

    *(v23 + 4) = v33;
    v28 = "[%{public}s] updateDevice given device with no identifier";
LABEL_17:
    _os_log_impl(&dword_25207E000, v21, v22, v28, v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x253099FD0](v24, -1, -1);
    v29 = v23;
    goto LABEL_18;
  }

  v9 = v8;
  v10 = sub_252141B9C();
  v12 = v11;

  if (v10 == v6 && v12 == v5 || (sub_25214247C() & 1) != 0)
  {

    v13 = a1;
    sub_25212CC7C(v13, &v49);

    v14 = swift_allocObject();
    *(v14 + 16) = v2;
    v15 = v49;
    *(v14 + 40) = v50;
    v16 = v52[0];
    *(v14 + 56) = v51;
    *(v14 + 72) = v16;
    *(v14 + 84) = *(v52 + 12);
    *(v14 + 24) = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_2521104FC;
    *(v17 + 24) = v14;
    aBlock[4] = sub_2520ADA58;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_252083924;
    aBlock[3] = &block_descriptor_343;
    v6 = _Block_copy(aBlock);
    v18 = v2;

    dispatch_sync(v4, v6);
    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_11;
  }

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v34 = sub_25214198C();
  __swift_project_value_buffer(v34, qword_27F4CDE68);

  v21 = sub_25214196C();
  v35 = sub_252141FAC();

  if (!os_log_type_enabled(v21, v35))
  {

    goto LABEL_19;
  }

  v36 = swift_slowAlloc();
  v37 = swift_slowAlloc();
  *&v49 = v37;
  *v36 = 136446722;
  v38 = sub_2521425DC();
  v40 = sub_2520A5448(v38, v39, &v49);

  *(v36 + 4) = v40;
  *(v36 + 12) = 2080;
  v41 = sub_2520A5448(v10, v12, &v49);

  *(v36 + 14) = v41;
  *(v36 + 22) = 2080;
  v42 = sub_2520A5448(v6, v5, &v49);

  *(v36 + 24) = v42;
  _os_log_impl(&dword_25207E000, v21, v35, "[%{public}s] updateDevice ignoring unknown identifier %s, expected %s", v36, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x253099FD0](v37, -1, -1);
  v29 = v36;
LABEL_18:
  MEMORY[0x253099FD0](v29, -1, -1);
LABEL_19:
}

void sub_2520FC67C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_252141ACC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v62[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v10 = sub_25214198C();
  v11 = __swift_project_value_buffer(v10, qword_27F4CDE68);
  sub_25210AC9C(a1, v66);
  v12 = sub_25214196C();
  v13 = sub_252141FBC();
  sub_25210ACF8(a1);
  v14 = os_log_type_enabled(v12, v13);
  v65 = ObjectType;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v63 = v13;
    v16 = v15;
    v64 = swift_slowAlloc();
    *&v66[0] = v64;
    *v16 = 136446466;
    v17 = sub_2521425DC();
    v19 = v9;
    v20 = v2;
    v21 = v6;
    v22 = a1;
    v23 = v5;
    v24 = v11;
    v25 = sub_2520A5448(v17, v18, v66);

    *(v16 + 4) = v25;
    v11 = v24;
    v5 = v23;
    a1 = v22;
    v6 = v21;
    v2 = v20;
    v9 = v19;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_2520A5448(*(a1 + 16), *(a1 + 24), v66);
    _os_log_impl(&dword_25207E000, v12, v63, "[%{public}s] handleDeviceLost candidate: %s", v16, 0x16u);
    v26 = v64;
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v26, -1, -1);
    MEMORY[0x253099FD0](v16, -1, -1);
  }

  v27 = *(v2 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue);
  MEMORY[0x28223BE20](v28);
  *&v62[-16] = v2;
  v29 = sub_25214200C();
  if (LOBYTE(v66[0]) == 1)
  {
    MEMORY[0x28223BE20](v29);
    *&v62[-16] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE728, &unk_2521467D0);
    sub_25214200C();
    if (*&v66[0])
    {
      *v9 = *&v66[0];
      (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
      v30 = sub_252141AFC();
      v29 = (*(v6 + 8))(v9, v5);
      if (v30)
      {
        goto LABEL_12;
      }

      __break(1u);
    }

    v31 = sub_25214196C();
    v32 = sub_252141FAC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v66[0] = v34;
      *v33 = 136446210;
      v35 = sub_2521425DC();
      v64 = v11;
      v37 = sub_2520A5448(v35, v36, v66);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_25207E000, v31, v32, "[%{public}s] handleDeviceLost no AHPS queue", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x253099FD0](v34, -1, -1);
      MEMORY[0x253099FD0](v33, -1, -1);
    }
  }

LABEL_12:
  MEMORY[0x28223BE20](v29);
  *&v62[-16] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6F8, &qword_2521467A8);
  sub_25214200C();
  v38 = *&v66[0];
  if (*&v66[0])
  {
    if (sub_2520F8B10(a1))
    {
      v39 = sub_25214196C();
      v40 = sub_252141FBC();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *&v66[0] = v42;
        *v41 = 136446210;
        v43 = sub_2521425DC();
        v45 = sub_2520A5448(v43, v44, v66);

        *(v41 + 4) = v45;
        _os_log_impl(&dword_25207E000, v39, v40, "[%{public}s] handleDeviceLost notify lostHandler.", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v42);
        MEMORY[0x253099FD0](v42, -1, -1);
        MEMORY[0x253099FD0](v41, -1, -1);
      }

      v46 = *(a1 + 48);
      v66[2] = *(a1 + 32);
      v67[0] = v46;
      *(v67 + 12) = *(a1 + 60);
      v47 = *(a1 + 16);
      v66[0] = *a1;
      v66[1] = v47;
      v38(v66);
      sub_2520A1FE4(v38);
    }

    else
    {
      sub_2520A1FE4(v38);
      sub_25210AC9C(a1, v66);
      v55 = sub_25214196C();
      v56 = sub_252141FBC();
      sub_25210ACF8(a1);
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *&v66[0] = v58;
        *v57 = 136446466;
        v59 = sub_2521425DC();
        v61 = sub_2520A5448(v59, v60, v66);

        *(v57 + 4) = v61;
        *(v57 + 12) = 2080;
        *(v57 + 14) = sub_2520A5448(*(a1 + 16), *(a1 + 24), v66);
        _os_log_impl(&dword_25207E000, v55, v56, "[%{public}s] handleDeviceLost ignored: %s", v57, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v58, -1, -1);
        MEMORY[0x253099FD0](v57, -1, -1);
      }
    }
  }

  else
  {
    v48 = sub_25214196C();
    v49 = sub_252141FBC();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v66[0] = v51;
      *v50 = 136446210;
      v52 = sub_2521425DC();
      v54 = sub_2520A5448(v52, v53, v66);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_25207E000, v48, v49, "[%{public}s] handleDeviceLost no handler to notify!", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x253099FD0](v51, -1, -1);
      MEMORY[0x253099FD0](v50, -1, -1);
    }
  }
}

uint64_t sub_2520FCE54()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v2 = sub_25214198C();
  __swift_project_value_buffer(v2, qword_27F4CDE68);
  v3 = sub_25214196C();
  v4 = sub_252141FBC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v37 = v6;
    *v5 = 136446210;
    v7 = sub_2521425DC();
    v9 = sub_2520A5448(v7, v8, &v37);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25207E000, v3, v4, "[%{public}s] cleanup and preparing for next discovery.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  v10 = *&v1[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = 0u;
  *(v11 + 40) = 0u;
  *(v11 + 56) = 0u;
  *(v11 + 72) = 0u;
  *(v11 + 84) = 0u;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_25210B720;
  *(v12 + 24) = v11;
  v41 = sub_2520ADA58;
  v42 = v12;
  v37 = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_252083924;
  v40 = &block_descriptor_288;
  v13 = _Block_copy(&v37);
  v14 = v1;

  dispatch_sync(v10, v13);
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = 0;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_252110500;
  *(v18 + 24) = v17;
  v41 = sub_2520ADA58;
  v42 = v18;
  v37 = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_252083924;
  v40 = &block_descriptor_299;
  v19 = _Block_copy(&v37);
  v20 = v14;

  dispatch_sync(v10, v19);
  _Block_release(v19);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = 1;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_25210B72C;
  *(v22 + 24) = v21;
  v41 = sub_2520ADA58;
  v42 = v22;
  v37 = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_252083924;
  v40 = &block_descriptor_309;
  v23 = _Block_copy(&v37);
  v24 = v20;

  dispatch_sync(v10, v23);
  _Block_release(v23);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = 1;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_25210B744;
  *(v26 + 24) = v25;
  v41 = sub_2520ADA58;
  v42 = v26;
  v37 = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_252083924;
  v40 = &block_descriptor_319;
  v27 = _Block_copy(&v37);
  v28 = v24;

  dispatch_sync(v10, v27);
  _Block_release(v27);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = 0;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_25210B75C;
  *(v30 + 24) = v29;
  v41 = sub_2520ADA58;
  v42 = v30;
  v37 = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_252083924;
  v40 = &block_descriptor_329_0;
  v31 = _Block_copy(&v37);
  v32 = v28;

  dispatch_sync(v10, v31);
  _Block_release(v31);
  v33 = swift_isEscapingClosureAtFileLocation();

  if (v33)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v34 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_notifyLostWaitTask;
  if (*&v32[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_notifyLostWaitTask])
  {
    v35 = *&v32[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_notifyLostWaitTask];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE720, &unk_252143D40);
    sub_252141E4C();

    v36 = *&v32[v34];
    *&v32[v34] = 0;
  }

  return result;
}

id sub_2520FD5A0(void *a1)
{
  v2 = v1;
  v64 = a1;
  v3 = sub_252141FEC();
  v4 = *(v3 - 8);
  v67 = v3;
  v68 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_252141FCC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_252141A8C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_ineligableLock;
  *&v2[v12] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v13 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_loggedDeviceLock;
  *&v2[v13] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) _swift_FORCE_LOAD___swiftCoreImage___HearingTest];
  v14 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_audioRoutingControl;
  *&v2[v14] = [objc_allocWithZone(MEMORY[0x277CEF7E0]) _swift_FORCE_LOAD___swiftCoreImage___HearingTest];
  *&v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_notifyLostWaitTask] = 0;
  v15 = MEMORY[0x277D84FA0];
  *&v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_loggedDevices] = MEMORY[0x277D84FA0];
  *&v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_ineligibleAirPods] = v15;
  v63 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue;
  v16 = sub_2520A5A94(0, &qword_27F4CDC50, 0x277D85C78);
  v61 = "cessoryAHPSManager";
  v62 = v16;
  sub_252141A6C();
  v70 = MEMORY[0x277D84F90];
  v66 = sub_252110218(&qword_27F4CE0E0, MEMORY[0x277D85230]);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CD970, &qword_252143B50);
  v18 = sub_2520A2F1C(&qword_27F4CE0F0, &qword_27F4CD970, &qword_252143B50);
  v65 = v8;
  sub_25214218C();
  v19 = *MEMORY[0x277D85260];
  v60 = *(v68 + 104);
  v68 += 104;
  v60(v7, v19, v67);
  *&v2[v63] = sub_25214202C();
  v63 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__queue;
  *&v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__queue] = 0;
  v20 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__connectedDiscovery;
  *&v2[v20] = [objc_allocWithZone(MEMORY[0x277CBE030]) init];
  *&v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__connectedDiscoveryCount] = 0;
  v21 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_centralMgrQueue;
  sub_252141A6C();
  v70 = MEMORY[0x277D84F90];
  v61 = v17;
  v59 = v18;
  sub_25214218C();
  HIDWORD(v58) = v19;
  v22 = v19;
  v23 = v60;
  v60(v7, v22, v67);
  *&v2[v21] = sub_25214202C();
  *&v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__centralMgr] = 0;
  *&v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__peripheral] = 0;
  v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__deviceLost] = 1;
  v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__centralMgrPoweredOn] = 0;
  v24 = &v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__deviceLostHandler];
  *v24 = 0;
  v24[1] = 0;
  v25 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__lostPeripheralIdentifier;
  v26 = sub_2521418EC();
  (*(*(v26 - 8) + 56))(&v2[v25], 1, 1, v26);
  swift_weakInit();
  *&v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__HearingTestMode] = xmmword_252146680;
  v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__canSwitchAirpods] = 1;
  v27 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__enforceStrictQueues;
  v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__enforceStrictQueues] = 0;
  v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__placementDisabled] = 0;
  v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__discoveryActivated] = 0;
  v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__isNewObserverWaitingOnConnectedCBDevice] = 0;
  v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__hearingTestActive] = 0;
  v28 = &v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__connectedCBDevice];
  *v28 = 0u;
  v28[1] = 0u;
  v28[2] = 0u;
  v28[3] = 0u;
  *(v28 + 60) = 0u;
  v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__isHTModeDisabledByTonePlayer] = 0;
  v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__isAudioSessionActivatedByTonePlayer] = 0;
  v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__isLeftUseOccludedCalibrationTable] = 0;
  v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__isRightUseOccludedCalibrationTable] = 0;
  v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__forcedFitTestOnce] = 0;
  v29 = [objc_opt_self() processInfo];
  v30 = [v29 environment];

  v31 = sub_252141B1C();
  if (*(v31 + 16))
  {
    sub_25213E648(0x5F54494E555F5349, 0xEF474E4954534554);
    v33 = v32;

    v34 = v33 ^ 1;
  }

  else
  {

    v34 = 1;
  }

  v2[v27] = v34 & 1;
  v35 = v64;
  if (v64)
  {
    v36 = v64;
  }

  else
  {
    sub_252141A6C();
    v70 = MEMORY[0x277D84F90];
    sub_25214218C();
    v23(v7, HIDWORD(v58), v67);
    v36 = sub_25214202C();
  }

  v37 = *&v2[v63];
  *&v2[v63] = v36;
  v38 = v36;
  v39 = v35;

  v40 = type metadata accessor for HTAccessoryAHPSManager();
  v69.receiver = v2;
  v69.super_class = v40;
  v41 = objc_msgSendSuper2(&v69, sel_init);
  v42 = qword_27F4CD6F0;
  v43 = v41;
  if (v42 != -1)
  {
    swift_once();
  }

  v44 = qword_27F4D3420;
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = (v44 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationSetSmartRountingArbitrationBlockingMode);
  v47 = *(v44 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationSetSmartRountingArbitrationBlockingMode);
  v48 = *(v44 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationSetSmartRountingArbitrationBlockingMode + 8);
  *v46 = sub_252110260;
  v46[1] = v45;

  sub_2520A1FE4(v47);

  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v50 = (v44 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationDidEnterBackgroundForAHPS);
  v51 = *(v44 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationDidEnterBackgroundForAHPS);
  v52 = *(v44 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationDidEnterBackgroundForAHPS + 8);
  *v50 = sub_252110268;
  v50[1] = v49;

  sub_2520A1FE4(v51);

  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v54 = (v44 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationDidActivateForAHPS);
  v55 = *(v44 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationDidActivateForAHPS);
  v56 = *(v44 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationDidActivateForAHPS + 8);
  *v54 = sub_252110298;
  v54[1] = v53;

  sub_2520A1FE4(v55);

  sub_2520FE834(v38);

  sub_2520FDEF8(1);
  return v43;
}

void sub_2520FDE40(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_2520FDEF8(a1 & 1);
  }
}

void sub_2520FDE9C(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void sub_2520FDEF8(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *(v1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6F0, &qword_2521467A0);
  sub_25214200C();
  if (*(&v38[0] + 1))
  {
    v7 = *&v39[8];
    v6 = *&v39[16];
    v8 = HIBYTE(*&v39[16]) & 0xFLL;
    if ((*&v39[16] & 0x2000000000000000) == 0)
    {
      v8 = *&v39[8] & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v9 = sub_25214198C();
      __swift_project_value_buffer(v9, qword_27F4CDE68);
      v36[2] = v38[2];
      v37[0] = *v39;
      *(v37 + 12) = *&v39[12];
      v36[0] = v38[0];
      v36[1] = v38[1];
      sub_25210AC9C(v36, aBlock);
      v10 = sub_25214196C();
      v11 = sub_252141FBC();
      sub_2520A2584(v38, &qword_27F4CE6F0, &qword_2521467A0);
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        aBlock[0] = v34;
        *v12 = 136446466;
        v13 = sub_2521425DC();
        v15 = sub_2520A5448(v13, v14, aBlock);

        *(v12 + 4) = v15;
        *(v12 + 12) = 2080;

        v16 = sub_2520A5448(v7, v6, aBlock);

        *(v12 + 14) = v16;
        _os_log_impl(&dword_25207E000, v10, v11, "[%{public}s] Device address %s", v12, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v34, -1, -1);
        MEMORY[0x253099FD0](v12, -1, -1);
      }

      v18 = a1 & 1;
      v17 = (a1 & 1) == 0;
      if (a1)
      {
        v19 = 0x676E696C62616E65;
      }

      else
      {
        v19 = 0x6E696C6261736964;
      }

      if (v17)
      {
        v20 = 0xE900000000000067;
      }

      else
      {
        v20 = 0xE800000000000000;
      }

      v21 = *(v2 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_audioRoutingControl);
      v22 = sub_252141B6C();
      [v21 setAppBundleID_];

      v23 = sub_252141B6C();
      sub_2520A2584(v38, &qword_27F4CE6F0, &qword_2521467A0);
      [v21 setDeviceAddress_];

      v24 = swift_allocObject();
      v24[2] = v19;
      v24[3] = v20;
      v24[4] = ObjectType;
      aBlock[4] = sub_25210B710;
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2520FE7C8;
      aBlock[3] = &block_descriptor_278;
      v25 = _Block_copy(aBlock);

      [v21 setArbitrationBlockingModeWithCompletion:v18 completion:v25];
      _Block_release(v25);
      return;
    }

    sub_2520A2584(v38, &qword_27F4CE6F0, &qword_2521467A0);
  }

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v26 = sub_25214198C();
  __swift_project_value_buffer(v26, qword_27F4CDE68);
  v27 = sub_25214196C();
  v28 = sub_252141FAC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v36[0] = v30;
    *v29 = 136446210;
    v31 = sub_2521425DC();
    v33 = sub_2520A5448(v31, v32, v36);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_25207E000, v27, v28, "[%{public}s] Failed to get device address", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x253099FD0](v30, -1, -1);
    MEMORY[0x253099FD0](v29, -1, -1);
  }
}

void sub_2520FE3F0(NSObject *a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    v6 = a1;
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v7 = sub_25214198C();
    __swift_project_value_buffer(v7, qword_27F4CDE68);
    v8 = a1;

    v9 = sub_25214196C();
    v10 = sub_252141FAC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v28 = v13;
      *v11 = 136446722;
      v14 = sub_2521425DC();
      v16 = sub_2520A5448(v14, v15, &v28);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2112;
      v17 = a1;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v18;
      *v12 = v18;
      *(v11 + 22) = 2080;
      *(v11 + 24) = sub_2520A5448(a2, a3, &v28);
      _os_log_impl(&dword_25207E000, v9, v10, "[%{public}s] Error %@ in %s audio routing arbitration blocking mode", v11, 0x20u);
      sub_2520A2584(v12, &unk_27F4CE080, &qword_252144E30);
      MEMORY[0x253099FD0](v12, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v13, -1, -1);
      MEMORY[0x253099FD0](v11, -1, -1);

      return;
    }

    v26 = a1;
  }

  else
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v19 = sub_25214198C();
    __swift_project_value_buffer(v19, qword_27F4CDE68);

    oslog = sub_25214196C();
    v20 = sub_252141FBC();

    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v21 = 136446466;
      v23 = sub_2521425DC();
      v25 = sub_2520A5448(v23, v24, &v28);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_2520A5448(a2, a3, &v28);
      _os_log_impl(&dword_25207E000, oslog, v20, "[%{public}s] Done %s audio routing arbitration blocking mode", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v22, -1, -1);
      MEMORY[0x253099FD0](v21, -1, -1);

      return;
    }

    v26 = oslog;
  }
}

void sub_2520FE7C8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_2520FE834(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue);
  sub_2520A5A94(0, &qword_27F4CE6A8, 0x277CBE030);
  sub_25214200C();
  [aBlock setDispatchQueue_];

  sub_25214200C();
  [aBlock setDiscoveryFlags_];

  sub_25214200C();
  v4 = aBlock;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_25210B678;
  v15 = v5;
  aBlock = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_2520FEAF8;
  v13 = &block_descriptor_266;
  v6 = _Block_copy(&aBlock);

  [v4 setDeviceFoundHandler_];
  _Block_release(v6);

  sub_25214200C();
  v7 = aBlock;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_25210B6A8;
  v15 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_2520FEAF8;
  v13 = &block_descriptor_271;
  v9 = _Block_copy(&aBlock);

  [v7 setDeviceLostHandler_];
  _Block_release(v9);

  sub_2520FF978();
}

void sub_2520FEAF8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_2520FEB60(void *a1, uint64_t a2, void (*a3)(_BYTE *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a1;
    sub_25212CC7C(v7, v8);

    a3(v8);
    sub_25210ACF8(v8);
  }
}

void sub_2520FEBE8()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v2 = sub_25214198C();
  __swift_project_value_buffer(v2, qword_27F4CDE68);
  v3 = sub_25214196C();
  v4 = sub_252141FBC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    aBlock[0] = v6;
    *v5 = 136446210;
    v7 = sub_2521425DC();
    v9 = sub_2520A5448(v7, v8, aBlock);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25207E000, v3, v4, "[%{public}s] Deactivate discovery", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  v10 = *&v1[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
  MEMORY[0x28223BE20](v11);
  v12 = sub_25214200C();
  if (LOBYTE(aBlock[0]) == 1)
  {
    MEMORY[0x28223BE20](v12);
    sub_2520A5A94(0, &qword_27F4CE6A8, 0x277CBE030);
    sub_25214200C();
    v13 = aBlock[0];
    [aBlock[0] invalidate];

    v14 = swift_allocObject();
    *(v14 + 16) = v1;
    *(v14 + 24) = 0;
    v15 = swift_allocObject();
    v15[2] = sub_252110504;
    v15[3] = v14;
    aBlock[4] = sub_2520ADA58;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_252083924;
    aBlock[3] = &block_descriptor_568;
    v16 = _Block_copy(aBlock);
    v17 = v1;

    dispatch_sync(v10, v16);
    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v19 = sub_25214196C();
  v20 = sub_252141FAC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136446210;
    v23 = sub_2521425DC();
    v25 = sub_2520A5448(v23, v24, aBlock);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_25207E000, v19, v20, "[%{public}s] Discovery already deactivated", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x253099FD0](v22, -1, -1);
    MEMORY[0x253099FD0](v21, -1, -1);
  }
}

void sub_2520FF020()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v2 = sub_25214198C();
  __swift_project_value_buffer(v2, qword_27F4CDE68);
  v3 = sub_25214196C();
  v4 = sub_252141FBC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    aBlock[0] = v6;
    *v5 = 136446210;
    v7 = sub_2521425DC();
    v9 = sub_2520A5448(v7, v8, aBlock);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25207E000, v3, v4, "[%{public}s] Activate discovery", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  v10 = *&v1[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
  MEMORY[0x28223BE20](v11);
  v12 = sub_25214200C();
  if (aBlock[0])
  {
    v13 = sub_25214196C();
    v14 = sub_252141FAC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock[0] = v16;
      *v15 = 136446210;
      v17 = sub_2521425DC();
      v19 = sub_2520A5448(v17, v18, aBlock);

      *(v15 + 4) = v19;
      v20 = "[%{public}s] Discovery already activated";
LABEL_13:
      _os_log_impl(&dword_25207E000, v13, v14, v20, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x253099FD0](v16, -1, -1);
      MEMORY[0x253099FD0](v15, -1, -1);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  MEMORY[0x28223BE20](v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE728, &unk_2521467D0);
  sub_25214200C();
  v21 = aBlock[0];
  if (!aBlock[0])
  {
    v13 = sub_25214196C();
    v14 = sub_252141FAC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock[0] = v16;
      *v15 = 136446210;
      v28 = sub_2521425DC();
      v30 = sub_2520A5448(v28, v29, aBlock);

      *(v15 + 4) = v30;
      v20 = "[%{public}s] Invalid queue";
      goto LABEL_13;
    }

LABEL_14:

    return;
  }

  v22 = [objc_allocWithZone(MEMORY[0x277CBE030]) init];
  v23 = swift_allocObject();
  *(v23 + 16) = v1;
  *(v23 + 24) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_2521101CC;
  *(v24 + 24) = v23;
  aBlock[4] = sub_2520ADA58;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252083924;
  aBlock[3] = &block_descriptor_555_0;
  v25 = _Block_copy(aBlock);
  v1;
  v26 = v22;

  dispatch_sync(v10, v25);

  _Block_release(v25);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    sub_2520FE834(v21);
  }
}

id sub_2520FF50C()
{
  v1 = v0;
  swift_getObjectType();
  v0[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__centralMgrPoweredOn] = 0;
  sub_2520FDEF8(0);
  v2 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue;
  v3 = *&v0[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
  sub_2520A5A94(0, &qword_27F4CE6A8, 0x277CBE030);
  sub_25214200C();
  [v18 invalidate];

  v4 = *&v1[v2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE708, &qword_2521467B8);
  sub_25214200C();
  v5 = v18;
  if (v18)
  {
    v6 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__peripheral;
    if (*&v1[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__peripheral])
    {
      [v18 cancelPeripheralConnection_];

      v5 = *&v1[v6];
      *&v1[v6] = 0;
    }

    v7 = *&v1[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__centralMgr];
    *&v1[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__centralMgr] = 0;
  }

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v8 = sub_25214198C();
  __swift_project_value_buffer(v8, qword_27F4CDE68);
  v9 = sub_25214196C();
  v10 = sub_252141FBC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    v13 = sub_2521425DC();
    v15 = sub_2520A5448(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_25207E000, v9, v10, "[%{public}s] Deinitializing AHPS mgr", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x253099FD0](v12, -1, -1);
    MEMORY[0x253099FD0](v11, -1, -1);
  }

  v17.receiver = v1;
  v17.super_class = type metadata accessor for HTAccessoryAHPSManager();
  return objc_msgSendSuper2(&v17, sel_dealloc);
}

uint64_t type metadata accessor for HTAccessoryAHPSManager()
{
  result = qword_27F4CE680;
  if (!qword_27F4CE680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2520FF978()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
  sub_2520A5A94(0, &qword_27F4CE6A8, 0x277CBE030);
  sub_25214200C();
  v4 = aBlock[0];
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = ObjectType;
  aBlock[4] = sub_25210B5F8;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2520FE7C8;
  aBlock[3] = &block_descriptor_216;
  v6 = _Block_copy(aBlock);
  v1;

  [v4 activateWithCompletion_];
  _Block_release(v6);

  sub_2520FCE54();
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v7 = sub_25214198C();
  __swift_project_value_buffer(v7, qword_27F4CDE68);
  v8 = sub_25214196C();
  v9 = sub_252141FBC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v10 = 136446210;
    v12 = sub_2521425DC();
    v14 = sub_2520A5448(v12, v13, aBlock);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_25207E000, v8, v9, "[%{public}s] discovery started", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x253099FD0](v11, -1, -1);
    MEMORY[0x253099FD0](v10, -1, -1);
  }
}

uint64_t sub_2520FFBD8(void *a1, char *a2)
{
  v3 = qword_27F4CD708;
  if (!a1)
  {
    goto LABEL_8;
  }

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v5 = sub_25214198C();
  __swift_project_value_buffer(v5, qword_27F4CDE68);
  v6 = a1;
  v7 = sub_25214196C();
  v8 = sub_252141FAC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock = v11;
    *v9 = 136446466;
    v12 = sub_2521425DC();
    v14 = sub_2520A5448(v12, v13, &aBlock);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = a1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_25207E000, v7, v8, "[%{public}s] Discovery cannot activate. Error %@", v9, 0x16u);
    sub_2520A2584(v10, &unk_27F4CE080, &qword_252144E30);
    MEMORY[0x253099FD0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x253099FD0](v11, -1, -1);
    MEMORY[0x253099FD0](v9, -1, -1);
  }

  v17 = *&a2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_252110504;
  *(v19 + 24) = v18;
  v64 = sub_2520ADA58;
  v65 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v61 = 1107296256;
  v62 = sub_252083924;
  v63 = &block_descriptor_259;
  v20 = _Block_copy(&aBlock);
  v21 = a2;

  dispatch_sync(v17, v20);
  _Block_release(v20);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
LABEL_8:
    if (v3 != -1)
    {
      swift_once();
    }

    v23 = sub_25214198C();
    __swift_project_value_buffer(v23, qword_27F4CDE68);
    isEscapingClosureAtFileLocation = a2;
    v25 = sub_25214196C();
    LOBYTE(v26) = sub_252141FBC();
    v27 = &selRef_categoryOptions;
    if (!os_log_type_enabled(v25, v26))
    {

      goto LABEL_15;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock = v29;
    *v28 = 136446466;
    v30 = sub_2521425DC();
    v32 = sub_2520A5448(v30, v31, &aBlock);

    *(v28 + 4) = v32;
    *(v28 + 6) = 2048;
    v34 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue);
    MEMORY[0x28223BE20](v33);
    sub_2520A5A94(0, &qword_27F4CE6A8, 0x277CBE030);
    sub_25214200C();
    v35 = &selRef_categoryOptions;
    v36 = [v59 discoveredDevices];

    sub_2520A5A94(0, &qword_27F4CE6B0, 0x277CBE020);
    v37 = sub_252141CDC();

    if (v37 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_25214232C())
    {

      *(v28 + 14) = i;

      _os_log_impl(&dword_25207E000, v25, v26, "[%{public}s] Discovery started. Device count is  %ld", v28, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x253099FD0](v29, -1, -1);
      MEMORY[0x253099FD0](v28, -1, -1);

      v27 = v35;
LABEL_15:
      v25 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue);
      MEMORY[0x28223BE20](v39);
      sub_2520A5A94(0, &qword_27F4CE6A8, 0x277CBE030);
      sub_25214200C();
      v40 = aBlock;
      v41 = [aBlock v27[46]];

      sub_2520A5A94(0, &qword_27F4CE6B0, 0x277CBE020);
      v42 = sub_252141CDC();

      v43 = v42 >> 62 ? sub_25214232C() : *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);

      v44 = swift_allocObject();
      *(v44 + 16) = isEscapingClosureAtFileLocation;
      *(v44 + 24) = v43;
      v45 = swift_allocObject();
      LOBYTE(v26) = v45;
      *(v45 + 16) = sub_25210B600;
      *(v45 + 24) = v44;
      v64 = sub_2520ADA58;
      v65 = v45;
      aBlock = MEMORY[0x277D85DD0];
      v61 = 1107296256;
      v35 = &v62;
      v62 = sub_252083924;
      v63 = &block_descriptor_227_0;
      v28 = _Block_copy(&aBlock);
      v29 = v65;
      v46 = isEscapingClosureAtFileLocation;

      dispatch_sync(v25, v28);
      _Block_release(v28);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        break;
      }

      v28 = [objc_allocWithZone(MEMORY[0x277CBDFF8]) initWithDelegate:v46 queue:*&v46[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_centralMgrQueue]];
      isEscapingClosureAtFileLocation = swift_allocObject();
      *(isEscapingClosureAtFileLocation + 16) = v46;
      *(isEscapingClosureAtFileLocation + 24) = v28;
      v47 = swift_allocObject();
      LOBYTE(v26) = v47;
      *(v47 + 16) = sub_25210B614;
      *(v47 + 24) = isEscapingClosureAtFileLocation;
      v64 = sub_2520ADA58;
      v65 = v47;
      aBlock = MEMORY[0x277D85DD0];
      v61 = 1107296256;
      v62 = sub_252083924;
      v63 = &block_descriptor_237_0;
      v29 = _Block_copy(&aBlock);
      v48 = v46;
      v49 = v28;

      dispatch_sync(v25, v29);

      _Block_release(v29);
      LOBYTE(v49) = swift_isEscapingClosureAtFileLocation();

      if (v49)
      {
        goto LABEL_25;
      }

      v50 = sub_25214196C();
      v51 = sub_252141FBC();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        aBlock = v26;
        *v52 = 136446210;
        v53 = sub_2521425DC();
        v28 = sub_2520A5448(v53, v54, &aBlock);

        *(v52 + 4) = v28;
        _os_log_impl(&dword_25207E000, v50, v51, "[%{public}s] central manger created", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x253099FD0](v26, -1, -1);
        MEMORY[0x253099FD0](v52, -1, -1);
      }

      v55 = swift_allocObject();
      *(v55 + 16) = v48;
      *(v55 + 24) = 1;
      v56 = swift_allocObject();
      *(v56 + 16) = sub_25210B660;
      *(v56 + 24) = v55;
      v64 = sub_2520ADA58;
      v65 = v56;
      aBlock = MEMORY[0x277D85DD0];
      v61 = 1107296256;
      v62 = sub_252083924;
      v63 = &block_descriptor_247_1;
      v35 = _Block_copy(&aBlock);
      isEscapingClosureAtFileLocation = v65;
      v57 = v48;

      dispatch_sync(v25, v35);
      _Block_release(v35);
      v58 = swift_isEscapingClosureAtFileLocation();

      if ((v58 & 1) == 0)
      {
        return result;
      }

LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  return result;
}

void sub_25210064C(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE700, &qword_2521467B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v108 - v9;
  v11 = sub_2521418EC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v120 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v114 = &v108 - v16;
  if (qword_27F4CD708 != -1)
  {
LABEL_37:
    swift_once();
  }

  v17 = sub_25214198C();
  v18 = __swift_project_value_buffer(v17, qword_27F4CDE68);

  v117 = v18;
  v19 = sub_25214196C();
  v20 = sub_252141FBC();

  v21 = os_log_type_enabled(v19, v20);
  v115 = ObjectType;
  v116 = v12;
  v122 = v11;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = v3;
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v22 = 136446466;
    v25 = sub_2521425DC();
    v27 = a1;
    v28 = sub_2520A5448(v25, v26, aBlock);

    *(v22 + 4) = v28;
    a1 = v27;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_2520A5448(v27, a2, aBlock);
    _os_log_impl(&dword_25207E000, v19, v20, "[%{public}s] %s connectPeripheral", v22, 0x16u);
    swift_arrayDestroy();
    v29 = v24;
    v3 = v23;
    MEMORY[0x253099FD0](v29, -1, -1);
    MEMORY[0x253099FD0](v22, -1, -1);
  }

  v30 = *&v3[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
  MEMORY[0x28223BE20](v31);
  *(&v108 - 2) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE708, &qword_2521467B8);
  sub_25214200C();
  v32 = aBlock[0];
  if (aBlock[0])
  {
    v33 = sub_2520F8C70();
    v35 = HIBYTE(v34) & 0xF;
    v123 = v33;
    if ((v34 & 0x2000000000000000) == 0)
    {
      v35 = v33 & 0xFFFFFFFFFFFFLL;
    }

    if (v35)
    {
      v121 = v34;
      v112 = a1;

      v36 = sub_25214196C();
      v37 = sub_252141FBC();

      v38 = os_log_type_enabled(v36, v37);
      v113 = a2;
      v110 = v3;
      v109 = v30;
      if (v38)
      {
        v39 = swift_slowAlloc();
        v40 = a2;
        v41 = swift_slowAlloc();
        aBlock[0] = v41;
        *v39 = 136446466;
        v42 = sub_2521425DC();
        v44 = sub_2520A5448(v42, v43, aBlock);

        *(v39 + 4) = v44;
        *(v39 + 12) = 2080;
        *(v39 + 14) = sub_2520A5448(v112, v40, aBlock);
        _os_log_impl(&dword_25207E000, v36, v37, "[%{public}s] %s deviceIdentifier exists", v39, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v41, -1, -1);
        MEMORY[0x253099FD0](v39, -1, -1);
      }

      v45 = v116;
      v46 = v121;
      sub_25214189C();
      v47 = v122;
      if ((*(v45 + 48))(v10, 1, v122) == 1)
      {
LABEL_44:
        __break(1u);
        return;
      }

      v48 = v114;
      (*(v45 + 32))(v114, v10, v47);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE710, &unk_2521467C0);
      v49 = *(v45 + 72);
      v50 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_252143AC0;
      (*(v45 + 16))(v51 + v50, v48, v47);
      v52 = sub_252141CCC();

      v111 = v32;
      v12 = [v32 retrievePeripheralsWithIdentifiers_];

      v10 = sub_2520A5A94(0, &qword_27F4CE718, 0x277CBE060);
      v53 = sub_252141CDC();

      v54 = v113;

      v55 = sub_25214196C();
      v3 = sub_252141FBC();

      v56 = os_log_type_enabled(v55, v3);
      v108 = v10;
      if (v56)
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        aBlock[0] = v58;
        *v57 = 136446978;
        v59 = sub_2521425DC();
        v61 = sub_2520A5448(v59, v60, aBlock);

        *(v57 + 4) = v61;
        *(v57 + 12) = 2080;
        *(v57 + 14) = sub_2520A5448(v112, v54, aBlock);
        *(v57 + 22) = 2080;
        *(v57 + 24) = sub_2520A5448(v123, v46, aBlock);
        *(v57 + 32) = 2080;
        v62 = MEMORY[0x253098E80](v53, v10);
        v12 = v63;
        v64 = sub_2520A5448(v62, v63, aBlock);

        *(v57 + 34) = v64;
        _os_log_impl(&dword_25207E000, v55, v3, "[%{public}s] %s retrievePeripherals with identifier %s, peripherals %s", v57, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v58, -1, -1);
        MEMORY[0x253099FD0](v57, -1, -1);
      }

      v11 = v53;
      if (v53 >> 62)
      {
        a2 = sub_25214232C();
        if (a2)
        {
LABEL_15:
          a1 = 0;
          ObjectType = v53 & 0xFFFFFFFFFFFFFF8;
          v118 = v11 & 0xC000000000000001;
          v119 = (v116 + 8);
          while (1)
          {
            if (v118)
            {
              v65 = MEMORY[0x2530993D0](a1, v11);
            }

            else
            {
              if (a1 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_36;
              }

              v65 = *(v11 + 8 * a1 + 32);
            }

            v3 = v65;
            v10 = (a1 + 1);
            if (__OFADD__(a1, 1))
            {
              __break(1u);
LABEL_36:
              __break(1u);
              goto LABEL_37;
            }

            v66 = [v65 identifier];
            v67 = v120;
            sub_2521418CC();

            v68 = sub_2521418AC();
            v70 = v69;
            v71 = *v119;
            (*v119)(v67, v122);
            if (v68 == v123 && v70 == v121)
            {
              break;
            }

            v12 = sub_25214247C();

            if (v12)
            {
              goto LABEL_33;
            }

            ++a1;
            if (v10 == a2)
            {
              goto LABEL_39;
            }
          }

LABEL_33:

          v86 = swift_allocObject();
          v87 = v110;
          *(v86 + 16) = v110;
          *(v86 + 24) = v3;
          v88 = swift_allocObject();
          *(v88 + 16) = sub_25210B574;
          *(v88 + 24) = v86;
          aBlock[4] = sub_2520ADA58;
          aBlock[5] = v88;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_252083924;
          aBlock[3] = &block_descriptor_209;
          v89 = _Block_copy(aBlock);
          v90 = v3;
          v91 = v87;

          dispatch_sync(v109, v89);

          _Block_release(v89);
          LOBYTE(v89) = swift_isEscapingClosureAtFileLocation();

          v92 = v122;
          v93 = v111;
          if ((v89 & 1) == 0)
          {
            [v111 connectPeripheral:v90 options:0];

            v71(v114, v92);
            return;
          }

          __break(1u);
          goto LABEL_44;
        }
      }

      else
      {
        a2 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (a2)
        {
          goto LABEL_15;
        }
      }

LABEL_39:
      v94 = v113;

      v95 = v121;

      v96 = sub_25214196C();
      v97 = sub_252141FAC();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        aBlock[0] = v99;
        *v98 = 136446978;
        v100 = sub_2521425DC();
        v102 = sub_2520A5448(v100, v101, aBlock);

        *(v98 + 4) = v102;
        *(v98 + 12) = 2080;
        *(v98 + 14) = sub_2520A5448(v112, v94, aBlock);
        *(v98 + 22) = 2080;
        v103 = sub_2520A5448(v123, v95, aBlock);

        *(v98 + 24) = v103;
        *(v98 + 32) = 2080;
        v104 = MEMORY[0x253098E80](v11, v108);
        v106 = v105;

        v107 = sub_2520A5448(v104, v106, aBlock);

        *(v98 + 34) = v107;
        _os_log_impl(&dword_25207E000, v96, v97, "[%{public}s] %s no peripherals with identifier %s, peripherals %s", v98, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v99, -1, -1);
        MEMORY[0x253099FD0](v98, -1, -1);
      }

      else
      {
      }

      (*(v116 + 8))(v114, v122);
    }

    else
    {

      v79 = sub_25214196C();
      v80 = sub_252141FBC();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        aBlock[0] = v82;
        *v81 = 136446466;
        v83 = sub_2521425DC();
        v85 = sub_2520A5448(v83, v84, aBlock);

        *(v81 + 4) = v85;
        *(v81 + 12) = 2080;
        *(v81 + 14) = sub_2520A5448(a1, a2, aBlock);
        _os_log_impl(&dword_25207E000, v79, v80, "[%{public}s] %s deviceIdentifier missing", v81, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v82, -1, -1);
        MEMORY[0x253099FD0](v81, -1, -1);
      }
    }
  }

  else
  {

    v72 = sub_25214196C();
    v73 = sub_252141FBC();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      aBlock[0] = v75;
      *v74 = 136446466;
      v76 = sub_2521425DC();
      v78 = sub_2520A5448(v76, v77, aBlock);

      *(v74 + 4) = v78;
      *(v74 + 12) = 2080;
      *(v74 + 14) = sub_2520A5448(a1, a2, aBlock);
      _os_log_impl(&dword_25207E000, v72, v73, "[%{public}s] %s centralMgr nil", v74, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v75, -1, -1);
      MEMORY[0x253099FD0](v74, -1, -1);
    }
  }
}

void sub_252101440(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v4 = sub_25214198C();
  __swift_project_value_buffer(v4, qword_27F4CDE68);
  v5 = sub_25214196C();
  v6 = sub_252141FBC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    aBlock[0] = v8;
    *v7 = 136446210;
    v9 = sub_2521425DC();
    v11 = sub_2520A5448(v9, v10, aBlock);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_25207E000, v5, v6, "[%{public}s] centralManagerDidUpdateState.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x253099FD0](v8, -1, -1);
    MEMORY[0x253099FD0](v7, -1, -1);
  }

  v12 = [a1 state];
  oslog = sub_25214196C();
  v13 = sub_252141FBC();
  v14 = os_log_type_enabled(oslog, v13);
  if (v12 <= 2)
  {
    if (!v12)
    {
      if (v14)
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        aBlock[0] = v16;
        *v15 = 136446210;
        v30 = sub_2521425DC();
        v32 = sub_2520A5448(v30, v31, aBlock);

        *(v15 + 4) = v32;
        v20 = "[%{public}s] Central state unknown.";
        goto LABEL_28;
      }

      goto LABEL_29;
    }

    if (v12 != 1)
    {
      if (v12 == 2)
      {
        if (v14)
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          aBlock[0] = v16;
          *v15 = 136446210;
          v17 = sub_2521425DC();
          v19 = sub_2520A5448(v17, v18, aBlock);

          *(v15 + 4) = v19;
          v20 = "[%{public}s] Central state unsupported.";
LABEL_28:
          _os_log_impl(&dword_25207E000, oslog, v13, v20, v15, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v16);
          MEMORY[0x253099FD0](v16, -1, -1);
          MEMORY[0x253099FD0](v15, -1, -1);

          return;
        }

        goto LABEL_29;
      }

      goto LABEL_22;
    }

    if (v14)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock[0] = v16;
      *v15 = 136446210;
      v39 = sub_2521425DC();
      v41 = sub_2520A5448(v39, v40, aBlock);

      *(v15 + 4) = v41;
      v20 = "[%{public}s] Central state resetting.";
      goto LABEL_28;
    }

LABEL_29:

    return;
  }

  if (v12 == 3)
  {
    if (v14)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock[0] = v16;
      *v15 = 136446210;
      v33 = sub_2521425DC();
      v35 = sub_2520A5448(v33, v34, aBlock);

      *(v15 + 4) = v35;
      v20 = "[%{public}s] Central state unauthorized.";
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (v12 == 4)
  {
    if (v14)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock[0] = v16;
      *v15 = 136446210;
      v42 = sub_2521425DC();
      v44 = sub_2520A5448(v42, v43, aBlock);

      *(v15 + 4) = v44;
      v20 = "[%{public}s] Central state poweredOff.";
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (v12 != 5)
  {
LABEL_22:
    if (v14)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock[0] = v16;
      *v15 = 136446210;
      v36 = sub_2521425DC();
      v38 = sub_2520A5448(v36, v37, aBlock);

      *(v15 + 4) = v38;
      v20 = "[%{public}s] Central state unhandled.";
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (v14)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136446210;
    v23 = sub_2521425DC();
    v25 = sub_2520A5448(v23, v24, aBlock);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_25207E000, oslog, v13, "[%{public}s] Central state poweredOn.", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x253099FD0](v22, -1, -1);
    MEMORY[0x253099FD0](v21, -1, -1);
  }

  v26 = *&v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
  v27 = swift_allocObject();
  *(v27 + 16) = v2;
  *(v27 + 24) = 1;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_25210B4E0;
  *(v28 + 24) = v27;
  aBlock[4] = sub_2520ADA58;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252083924;
  aBlock[3] = &block_descriptor_199;
  v29 = _Block_copy(aBlock);
  v2;

  dispatch_sync(v26, v29);
  _Block_release(v29);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
    __break(1u);
  }

  else
  {
    sub_25210064C(0xD00000000000001CLL, 0x800000025214B290);
  }
}

uint64_t sub_252101C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[32] = a6;
  v7[33] = a7;
  v7[30] = a4;
  v7[31] = a5;
  return MEMORY[0x2822009F8](sub_252101C24, 0, 0);
}

uint64_t sub_252101C24()
{
  v14 = v0;
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v1 = sub_25214198C();
  v0[34] = __swift_project_value_buffer(v1, qword_27F4CDE68);
  v2 = sub_25214196C();
  v3 = sub_252141FBC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[33];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    v7 = sub_2521425DC();
    v9 = sub_2520A5448(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25207E000, v2, v3, "[%{public}s] centralManager notifyLostWaitTask waiting 3 seconds", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  v10 = *(MEMORY[0x277D857E8] + 4);
  v11 = swift_task_alloc();
  v0[35] = v11;
  *v11 = v0;
  v11[1] = sub_252101DEC;

  return MEMORY[0x282200480](3000000000);
}

uint64_t sub_252101DEC()
{
  v2 = *(*v1 + 280);
  v3 = *v1;
  *(v3 + 288) = v0;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_252101F20, 0, 0);
  }
}

uint64_t sub_252101F20()
{
  v62 = v0;
  if (sub_252141E5C())
  {
    goto LABEL_14;
  }

  v1 = *(v0 + 272);
  v2 = *(v0 + 248);

  v3 = sub_25214196C();
  v4 = sub_252141FBC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 264);
    v7 = *(v0 + 240);
    v6 = *(v0 + 248);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v58[0] = v9;
    *v8 = 136446466;
    v10 = sub_2521425DC();
    v12 = sub_2520A5448(v10, v11, v58);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2520A5448(v7, v6, v58);
    _os_log_impl(&dword_25207E000, v3, v4, "[%{public}s] centralManager notifyLostWaitTask didDisconnectPeripheral %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v9, -1, -1);
    MEMORY[0x253099FD0](v8, -1, -1);
  }

  v13 = *(v0 + 288);
  v14 = *(v0 + 256);
  v15 = *(v14 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue);
  *(swift_task_alloc() + 16) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6F8, &qword_2521467A8);
  sub_25214200C();

  v16 = *(v0 + 224);
  if (!v16)
  {
    goto LABEL_10;
  }

  v17 = *(v0 + 232);
  v18 = *(v0 + 256);
  *(swift_task_alloc() + 16) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6F0, &qword_2521467A0);
  sub_25214200C();

  *(v0 + 76) = *(v0 + 156);
  v19 = *(v0 + 144);
  *(v0 + 48) = *(v0 + 128);
  *(v0 + 64) = v19;
  v20 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 32) = v20;
  v22 = *(v0 + 16);
  v21 = *(v0 + 24);
  *&v57[12] = *(v0 + 76);
  v56 = *(v0 + 48);
  *v57 = *(v0 + 64);
  v55 = *(v0 + 32);
  if (!v21)
  {
    sub_2520A1FE4(v16);
    goto LABEL_14;
  }

  v23 = (v0 + 176);
  v24 = *(v0 + 272);
  v25 = *(v0 + 248);

  v26 = sub_25214196C();
  v27 = sub_252141FBC();

  if (os_log_type_enabled(v26, v27))
  {
    v54 = v22;
    v28 = *(v0 + 264);
    v51 = *(v0 + 240);
    v52 = *(v0 + 248);
    v29 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v58[0] = v53;
    *v29 = 136446466;
    v30 = sub_2521425DC();
    v32 = sub_2520A5448(v30, v31, v58);
    v22 = v54;

    *(v29 + 4) = v32;
    v23 = (v0 + 176);
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_2520A5448(v51, v52, v58);
    _os_log_impl(&dword_25207E000, v26, v27, "[%{public}s] centralManager didDisconnectPeripheral notifyLostWaitTask notify lostHandler for %s.", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v53, -1, -1);
    MEMORY[0x253099FD0](v29, -1, -1);
  }

  v33 = *(v0 + 256);
  v58[0] = v22;
  v58[1] = v21;
  v59 = v55;
  v60 = v56;
  v61[0] = *v57;
  *(v61 + 12) = *&v57[12];
  v16(v58);
  sub_2520A1FE4(v16);
  sub_2520A2584(v0 + 16, &qword_27F4CE6F0, &qword_2521467A0);
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  *(v34 + 24) = 1;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_252110514;
  *(v35 + 24) = v34;
  *(v0 + 208) = sub_2520ADA58;
  *(v0 + 216) = v35;
  *(v0 + 176) = MEMORY[0x277D85DD0];
  *(v0 + 184) = 1107296256;
  *(v0 + 192) = sub_252083924;
  *(v0 + 200) = &block_descriptor_529;
  v36 = _Block_copy(v23);
  v37 = *(v0 + 216);
  v38 = v33;

  dispatch_sync(v15, v36);
  _Block_release(v36);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_10:
    v40 = *(v0 + 272);
    v41 = sub_25214196C();
    v42 = sub_252141FAC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = *(v0 + 264);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v58[0] = v45;
      *v44 = 136446210;
      v46 = sub_2521425DC();
      v48 = sub_2520A5448(v46, v47, v58);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_25207E000, v41, v42, "[%{public}s] centralManager didDisconnectPeripheral notifyLostWaitTask no deviceLostHandler!", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x253099FD0](v45, -1, -1);
      MEMORY[0x253099FD0](v44, -1, -1);
    }
  }

LABEL_14:
  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_252102548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE740, &qword_2521467E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_2520A2D9C(a3, v24 - v10, &qword_27F4CE740, &qword_2521467E0);
  v12 = sub_252141E3C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2520A2584(v11, &qword_27F4CE740, &qword_2521467E0);
  }

  else
  {
    sub_252141E2C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_252141DEC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_252141BDC() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_2520A2584(a3, &qword_27F4CE740, &qword_2521467E0);

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

  sub_2520A2584(a3, &qword_27F4CE740, &qword_2521467E0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void sub_25210287C()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6F0, &qword_2521467A0);
  v2 = sub_25214200C();
  v3 = v32;
  v4 = v33;
  v37 = v34;
  v38 = v35;
  v39[0] = v36[0];
  *(v39 + 12) = *(v36 + 12);
  if (!v33)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v14 = sub_25214198C();
    __swift_project_value_buffer(v14, qword_27F4CDE68);
    v15 = sub_25214196C();
    v16 = sub_252141FAC();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_17;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28[0] = v18;
    *v17 = 136446210;
    v19 = sub_2521425DC();
    v21 = sub_2520A5448(v19, v20, v28);

    *(v17 + 4) = v21;
    v22 = "[%{public}s] Failed to reset HT_MODE, but we don't have a device either";
    goto LABEL_16;
  }

  MEMORY[0x28223BE20](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6F8, &qword_2521467A8);
  sub_25214200C();
  v5 = v28[0];
  if (!v28[0])
  {
    sub_2520A2584(&v32, &qword_27F4CE6F0, &qword_2521467A0);
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v23 = sub_25214198C();
    __swift_project_value_buffer(v23, qword_27F4CDE68);
    v15 = sub_25214196C();
    v16 = sub_252141FAC();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_17;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28[0] = v18;
    *v17 = 136446210;
    v24 = sub_2521425DC();
    v26 = sub_2520A5448(v24, v25, v28);

    *(v17 + 4) = v26;
    v22 = "[%{public}s] No deviceLostHandler set";
LABEL_16:
    _os_log_impl(&dword_25207E000, v15, v16, v22, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x253099FD0](v18, -1, -1);
    MEMORY[0x253099FD0](v17, -1, -1);
LABEL_17:

    return;
  }

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v6 = sub_25214198C();
  __swift_project_value_buffer(v6, qword_27F4CDE68);
  v7 = sub_25214196C();
  v8 = sub_252141FAC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28[0] = v27;
    *v9 = 136446210;
    v10 = sub_2521425DC();
    v12 = v3;
    v13 = sub_2520A5448(v10, v11, v28);

    *(v9 + 4) = v13;
    v3 = v12;
    _os_log_impl(&dword_25207E000, v7, v8, "[%{public}s] Notifying lostHandler due to HT_Mode not set.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x253099FD0](v27, -1, -1);
    MEMORY[0x253099FD0](v9, -1, -1);
  }

  v28[0] = v3;
  v28[1] = v4;
  v29 = v37;
  v30 = v38;
  v31[0] = v39[0];
  *(v31 + 12) = *(v39 + 12);
  v5(v28);
  sub_2520A1FE4(v5);
  sub_2520A2584(&v32, &qword_27F4CE6F0, &qword_2521467A0);
}

uint64_t sub_252102D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  return MEMORY[0x2822009F8](sub_252102D50, 0, 0);
}

uint64_t sub_252102D50()
{
  v14 = v0;
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v1 = sub_25214198C();
  v0[10] = __swift_project_value_buffer(v1, qword_27F4CDE68);
  v2 = sub_25214196C();
  v3 = sub_252141FAC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[9];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    v7 = sub_2521425DC();
    v9 = sub_2520A5448(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25207E000, v2, v3, "[%{public}s] HT_MODE mode lost, resetting", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_252102F2C;
  v11 = v0[8];

  return sub_2521085B4(1, &unk_28644E570, &unk_28644E598, 4, 4);
}

uint64_t sub_252102F2C(char a1)
{
  v2 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 97) = a1;

  return MEMORY[0x2822009F8](sub_25210302C, 0, 0);
}

uint64_t sub_25210302C()
{
  v30 = v0;
  if (*(v0 + 97) == 1)
  {
    v1 = *(v0 + 80);
    v2 = *(v0 + 64);
    v3 = *(v2 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue);
    *(swift_task_alloc() + 16) = v2;
    sub_25214200C();

    v4 = *(v0 + 96);
    v5 = sub_25214196C();
    v6 = sub_252141FAC();
    v7 = os_log_type_enabled(v5, v6);
    if (v4)
    {
      if (v7)
      {
        v8 = *(v0 + 72);
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v29[0] = v10;
        *v9 = 136446210;
        v11 = sub_2521425DC();
        v13 = sub_2520A5448(v11, v12, v29);

        *(v9 + 4) = v13;
        _os_log_impl(&dword_25207E000, v5, v6, "[%{public}s] Already forced fit check", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v10);
        MEMORY[0x253099FD0](v10, -1, -1);
        MEMORY[0x253099FD0](v9, -1, -1);
      }
    }

    else
    {
      if (v7)
      {
        v15 = *(v0 + 72);
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v29[0] = v17;
        *v16 = 136446210;
        v18 = sub_2521425DC();
        v20 = sub_2520A5448(v18, v19, v29);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_25207E000, v5, v6, "[%{public}s] Forcing fit test 💔", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x253099FD0](v17, -1, -1);
        MEMORY[0x253099FD0](v16, -1, -1);
      }

      v21 = *(v0 + 64);
      sub_252103454();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      *(v22 + 24) = 1;
      v23 = swift_allocObject();
      *(v23 + 16) = sub_252110510;
      *(v23 + 24) = v22;
      *(v0 + 48) = sub_2520ADA58;
      *(v0 + 56) = v23;
      *(v0 + 16) = MEMORY[0x277D85DD0];
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = sub_252083924;
      *(v0 + 40) = &block_descriptor_508_0;
      v24 = _Block_copy((v0 + 16));
      v25 = *(v0 + 56);
      v26 = v21;

      dispatch_sync(v3, v24);
      _Block_release(v24);
      LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

      if (v21)
      {
        __break(1u);
        return result;
      }
    }
  }

  else
  {
    v14 = *(v0 + 64);
    sub_25210287C();
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_252103454()
{
  v1 = *(v0 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6E8, &qword_252146798);
  result = sub_25214200C();
  if (v7)
  {
    MEMORY[0x28223BE20](result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6F0, &qword_2521467A0);
    sub_25214200C();
    v3 = v7;
    v4 = v8;
    v5 = v9;
    v6[0] = v10[0];
    *(v6 + 12) = *(v10 + 12);
    if (*(&v7 + 1))
    {
      *&v7 = v3;
      v8 = v4;
      v9 = v5;
      v10[0] = v6[0];
      *(v10 + 12) = *(v6 + 12);
      sub_252117834(&v7);

      return sub_2520A2584(&v3, &qword_27F4CE6F0, &qword_2521467A0);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_2521036C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_252141A4C();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_252141A8C();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_centralMgrQueue);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_2521106E4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2520A3B78;
  aBlock[3] = &block_descriptor_185;
  v16 = _Block_copy(aBlock);

  sub_252141A6C();
  v21 = MEMORY[0x277D84F90];
  sub_252110218(&qword_27F4CE090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
  sub_2520A2F1C(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0);
  sub_25214218C();
  MEMORY[0x2530991B0](0, v13, v9, v16);
  _Block_release(v16);
  (*(v20 + 8))(v9, v6);
  (*(v10 + 8))(v13, v19);
}

void sub_2521039E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_252103A54(a2, a3);
  }
}

void sub_252103A54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v71 = a1;
  v72 = a2;
  ObjectType = swift_getObjectType();
  v4 = sub_252141ACC();
  v5 = *(v4 - 1);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v9 = (&v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27F4CD7A8 != -1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    if (byte_27F4D3491 == 1)
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v10 = sub_25214198C();
      __swift_project_value_buffer(v10, qword_27F4CDE68);
      v11 = sub_25214196C();
      v12 = sub_252141FBC();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = v4;
        v15 = swift_slowAlloc();
        v74[0] = v15;
        *v13 = 136446210;
        v16 = sub_2521425DC();
        v18 = sub_2520A5448(v16, v17, v74);

        *(v13 + 4) = v18;
        _os_log_impl(&dword_25207E000, v11, v12, "[%{public}s] readCharacteristic", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        v19 = v15;
        v4 = v14;
        MEMORY[0x253099FD0](v19, -1, -1);
        MEMORY[0x253099FD0](v13, -1, -1);
      }
    }

    v20 = *(v3 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue);
    MEMORY[0x28223BE20](v7);
    *(&v61 - 2) = v3;
    v21 = sub_25214200C();
    if (LOBYTE(v74[0]) == 1)
    {
      v22 = *(v3 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_centralMgrQueue);
      *v9 = v22;
      (v5[13])(v9, *MEMORY[0x277D85200], v4);
      v23 = v22;
      v24 = sub_252141AFC();
      v21 = (v5[1])(v9, v4);
      if ((v24 & 1) == 0)
      {
        __break(1u);
        goto LABEL_61;
      }
    }

    MEMORY[0x28223BE20](v21);
    *(&v61 - 2) = v3;
    v25 = sub_25214200C();
    if (LOBYTE(v74[0]) == 1)
    {
      if (qword_27F4CD708 == -1)
      {
LABEL_12:
        v26 = sub_25214198C();
        __swift_project_value_buffer(v26, qword_27F4CDE68);
        v27 = sub_25214196C();
        v28 = sub_252141FAC();
        if (!os_log_type_enabled(v27, v28))
        {
LABEL_53:

          return;
        }

        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v74[0] = v30;
        *v29 = 136446210;
        v31 = sub_2521425DC();
        v33 = sub_2520A5448(v31, v32, v74);

        *(v29 + 4) = v33;
        v34 = "[%{public}s] Device Lost, cannot read characteristic";
LABEL_52:
        _os_log_impl(&dword_25207E000, v27, v28, v34, v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x253099FD0](v30, -1, -1);
        MEMORY[0x253099FD0](v29, -1, -1);
        goto LABEL_53;
      }

LABEL_61:
      swift_once();
      goto LABEL_12;
    }

    v5 = &v61;
    MEMORY[0x28223BE20](v25);
    *(&v61 - 2) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6B8, &unk_252146B20);
    sub_25214200C();
    v35 = v74[0];
    if (!v74[0])
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v57 = sub_25214198C();
      __swift_project_value_buffer(v57, qword_27F4CDE68);
      v27 = sub_25214196C();
      v28 = sub_252141FAC();
      if (!os_log_type_enabled(v27, v28))
      {
        goto LABEL_53;
      }

      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v74[0] = v30;
      *v29 = 136446210;
      v58 = sub_2521425DC();
      v60 = sub_2520A5448(v58, v59, v74);

      *(v29 + 4) = v60;
      v34 = "[%{public}s] Failed to get peripheral for readCharacteristic";
      goto LABEL_52;
    }

    v36 = [v74[0] services];
    if (!v36)
    {

      return;
    }

    v3 = v36;
    v62 = v35;
    sub_2520A5A94(0, &qword_27F4CE6C0, 0x277CBE098);
    v37 = sub_252141CDC();

    if (!(v37 >> 62))
    {
      v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v39)
      {
        break;
      }

      goto LABEL_18;
    }

    v39 = sub_25214232C();
    if (!v39)
    {
      break;
    }

LABEL_18:
    v40 = 0;
    v68 = v37 & 0xC000000000000001;
    v63 = v37 + 32;
    v64 = v37 & 0xFFFFFFFFFFFFFF8;
    *&v38 = 136446466;
    v61 = v38;
    v66 = v39;
    v67 = v37;
    while (1)
    {
      if (v68)
      {
        v41 = MEMORY[0x2530993D0](v40, v37);
      }

      else
      {
        if (v40 >= *(v64 + 16))
        {
          goto LABEL_58;
        }

        v41 = *(v63 + 8 * v40);
      }

      v5 = v41;
      if (__OFADD__(v40++, 1))
      {
        break;
      }

      v43 = [v41 characteristics];
      if (v43)
      {
        v3 = v43;
        v69 = v5;
        v70 = v40;
        sub_2520A5A94(0, &qword_27F4CE6C8, 0x277CBE000);
        v44 = sub_252141CDC();

        if (v44 >> 62)
        {
          v9 = sub_25214232C();
          if (v9)
          {
LABEL_28:
            v3 = 0;
            v73 = v44 & 0xC000000000000001;
            while (1)
            {
              if (v73)
              {
                v45 = MEMORY[0x2530993D0](v3, v44);
              }

              else
              {
                if (v3 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_56;
                }

                v45 = *(v44 + 8 * v3 + 32);
              }

              v46 = v45;
              v47 = (v3 + 1);
              if (__OFADD__(v3, 1))
              {
                __break(1u);
LABEL_56:
                __break(1u);
                goto LABEL_57;
              }

              sub_2520A5A94(0, &unk_27F4CE6D0, 0x277D82BB8);
              v4 = [v46 UUID];
              v5 = sub_252141B6C();
              v48 = [objc_opt_self() UUIDWithString_];

              v49 = sub_25214210C();
              if (v49)
              {
                break;
              }

              ++v3;
              if (v47 == v9)
              {
                goto LABEL_45;
              }
            }

            v37 = v67;
            if (byte_27F4D3491 == 1)
            {
              if (qword_27F4CD708 != -1)
              {
                swift_once();
              }

              v50 = sub_25214198C();
              __swift_project_value_buffer(v50, qword_27F4CDE68);
              v51 = v46;
              v3 = sub_25214196C();
              v9 = sub_252141FBC();

              if (os_log_type_enabled(v3, v9))
              {
                v52 = swift_slowAlloc();
                v5 = swift_slowAlloc();
                v53 = swift_slowAlloc();
                v74[0] = v53;
                *v52 = v61;
                v54 = sub_2521425DC();
                v4 = sub_2520A5448(v54, v55, v74);

                *(v52 + 4) = v4;
                *(v52 + 12) = 2112;
                *(v52 + 14) = v51;
                *v5 = v51;
                v56 = v51;
                _os_log_impl(&dword_25207E000, v3, v9, "[%{public}s] peripheral readCharacteristic %@.", v52, 0x16u);
                sub_2520A2584(v5, &unk_27F4CE080, &qword_252144E30);
                MEMORY[0x253099FD0](v5, -1, -1);
                __swift_destroy_boxed_opaque_existential_0(v53);
                MEMORY[0x253099FD0](v53, -1, -1);
                MEMORY[0x253099FD0](v52, -1, -1);
              }
            }

            [v62 readValueForCharacteristic_];

            goto LABEL_46;
          }
        }

        else
        {
          v9 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v9)
          {
            goto LABEL_28;
          }
        }

LABEL_45:

        v37 = v67;
LABEL_46:
        v39 = v66;
        v40 = v70;
        if (v70 == v66)
        {
          goto LABEL_63;
        }
      }

      else
      {

        if (v40 == v39)
        {
          goto LABEL_63;
        }
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v7 = swift_once();
  }

LABEL_63:
}

uint64_t sub_252104450(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_252141A4C();
  v23 = *(v9 - 8);
  v10 = *(v23 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_252141A8C();
  v13 = *(v22 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v22);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v4 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_centralMgrQueue);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a3;
  v18[6] = a4;
  aBlock[4] = sub_252110358;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2520A3B78;
  aBlock[3] = &block_descriptor_588;
  v19 = _Block_copy(aBlock);

  sub_2520CBC7C(a1, a2);

  sub_252141A6C();
  v24 = MEMORY[0x277D84F90];
  sub_252110218(&qword_27F4CE090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
  sub_2520A2F1C(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0);
  sub_25214218C();
  MEMORY[0x2530991B0](0, v16, v12, v19);
  _Block_release(v19);
  (*(v23 + 8))(v12, v9);
  (*(v13 + 8))(v16, v22);
}

void sub_252104784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_25210480C(a2, a3, a4, a5);
  }
}

void sub_25210480C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v122 = a3;
  v123 = a4;
  v127[1] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v8 = sub_252141ACC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = (&v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27F4CD7A8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    v11 = swift_once();
LABEL_2:
    v121 = a1;
    if (byte_27F4D3491 == 1)
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v14 = sub_25214198C();
      __swift_project_value_buffer(v14, qword_27F4CDE68);
      v15 = sub_25214196C();
      v16 = sub_252141FBC();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v125 = v120;
        *v17 = 136446210;
        v18 = sub_2521425DC();
        v20 = a2;
        v21 = sub_2520A5448(v18, v19, &v125);

        *(v17 + 4) = v21;
        a2 = v20;
        _os_log_impl(&dword_25207E000, v15, v16, "[%{public}s] writeCharacteristic requested", v17, 0xCu);
        v22 = v120;
        __swift_destroy_boxed_opaque_existential_0(v120);
        MEMORY[0x253099FD0](v22, -1, -1);
        MEMORY[0x253099FD0](v17, -1, -1);
      }
    }

    v116 = a2;
    v23 = *(v5 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue);
    MEMORY[0x28223BE20](v11);
    *(&v94 - 2) = v5;
    v24 = sub_25214200C();
    if (v125 == 1)
    {
      v25 = *(v5 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_centralMgrQueue);
      *v13 = v25;
      (*(v9 + 104))(v13, *MEMORY[0x277D85200], v8);
      v26 = v25;
      v27 = sub_252141AFC();
      v24 = (*(v9 + 8))(v13, v8);
      if ((v27 & 1) == 0)
      {
        break;
      }
    }

    MEMORY[0x28223BE20](v24);
    *(&v94 - 2) = v5;
    v28 = sub_25214200C();
    if (v125 == 1)
    {
      if (qword_27F4CD708 != -1)
      {
        goto LABEL_111;
      }

      goto LABEL_12;
    }

    MEMORY[0x28223BE20](v28);
    *(&v94 - 2) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6B8, &unk_252146B20);
    sub_25214200C();
    if (!v125)
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v41 = sub_25214198C();
      __swift_project_value_buffer(v41, qword_27F4CDE68);
      v42 = sub_25214196C();
      v43 = sub_252141FAC();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v125 = v45;
        *v44 = 136446210;
        v46 = sub_2521425DC();
        v48 = sub_2520A5448(v46, v47, &v125);

        *(v44 + 4) = v48;
        _os_log_impl(&dword_25207E000, v42, v43, "[%{public}s] Failed to get peripheral for writeCharacteristic", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x253099FD0](v45, -1, -1);
        MEMORY[0x253099FD0](v44, -1, -1);
      }

LABEL_115:
      if (byte_27F4D3491 == 1)
      {
        if (qword_27F4CD708 != -1)
        {
          swift_once();
        }

        v89 = sub_25214198C();
        __swift_project_value_buffer(v89, qword_27F4CDE68);
        v30 = sub_25214196C();
        v31 = sub_252141FBC();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v125 = v33;
          *v32 = 136446210;
          v90 = sub_2521425DC();
          v92 = sub_2520A5448(v90, v91, &v125);

          *(v32 + 4) = v92;
          v37 = "[%{public}s] writeCharacteristic complete";
LABEL_120:
          _os_log_impl(&dword_25207E000, v30, v31, v37, v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v33);
          MEMORY[0x253099FD0](v33, -1, -1);
          MEMORY[0x253099FD0](v32, -1, -1);
        }

        goto LABEL_121;
      }

      goto LABEL_122;
    }

    v105 = v125;
    v38 = [v125 name];
    if (v38)
    {
      v39 = v38;
      v101 = sub_252141B9C();
      v108 = v40;
    }

    else
    {
      v108 = 0xEE0029656D616E20;
      v101 = 0x676E697373696D28;
    }

    v49 = v116;
    a2 = v121;
    a1 = v105;
    v50 = [v105 services];
    if (!v50)
    {

      goto LABEL_115;
    }

    v51 = v50;
    sub_2520A5A94(0, &qword_27F4CE6C0, 0x277CBE098);
    v9 = sub_252141CDC();

    if (!(v9 >> 62))
    {
      v5 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        goto LABEL_114;
      }

      goto LABEL_26;
    }

LABEL_113:
    v5 = sub_25214232C();
    if (!v5)
    {
LABEL_114:

      goto LABEL_115;
    }

LABEL_26:
    v8 = 0;
    v115 = v9 & 0xC000000000000001;
    v104 = v9 & 0xFFFFFFFFFFFFFF8;
    v103 = v9 + 32;
    v120 = (v49 >> 62);
    v109 = HIDWORD(a2);
    v53 = __OFSUB__(HIDWORD(a2), a2);
    v96 = v53;
    v95 = HIDWORD(a2) - a2;
    v113 = a2;
    v114 = BYTE6(v49);
    v110 = a2 >> 32;
    *&v52 = 136446978;
    v99 = v52;
    v119 = xmmword_252143AC0;
    v107 = v9;
    v106 = v5;
    while (1)
    {
      while (1)
      {
        if (v115)
        {
          v54 = MEMORY[0x2530993D0](v8, v9);
        }

        else
        {
          if (v8 >= *(v104 + 16))
          {
            goto LABEL_108;
          }

          v54 = *(v103 + 8 * v8);
        }

        v55 = v54;
        if (__OFADD__(v8++, 1))
        {
          goto LABEL_101;
        }

        v57 = [v54 characteristics];
        if (v57)
        {
          break;
        }

        if (v8 == v5)
        {
          goto LABEL_114;
        }
      }

      a1 = v57;
      v117 = v55;
      v118 = v8;
      sub_2520A5A94(0, &qword_27F4CE6C8, 0x277CBE000);
      v58 = sub_252141CDC();

      if (byte_27F4D3491 == 1)
      {
        if (qword_27F4CD708 != -1)
        {
          swift_once();
        }

        v59 = sub_25214198C();
        a1 = __swift_project_value_buffer(v59, qword_27F4CDE68);
        sub_2520CBC7C(a2, v49);

        v9 = v108;

        v8 = sub_25214196C();
        v60 = sub_252141FBC();
        sub_2520CB598(a2, v49);

        if (!os_log_type_enabled(v8, v60))
        {
          goto LABEL_79;
        }

        v9 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v127[0] = v61;
        *v9 = v99;
        v62 = sub_2521425DC();
        a2 = sub_2520A5448(v62, v63, v127);

        *(v9 + 4) = a2;
        *(v9 + 12) = 2080;
        v64 = v120;
        v102 = v61;
        if (v120 <= 1)
        {
          v100 = v9;
          v9 = v114;
          if (v120)
          {
            v9 = v95;
            if (v96)
            {
              goto LABEL_124;
            }
          }

          if (v9)
          {
            goto LABEL_45;
          }

LABEL_51:
          a2 = MEMORY[0x277D84F90];
LABEL_77:
          v9 = v100;
LABEL_78:
          v125 = a2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6E0, &qword_252144530);
          sub_2520A2F1C(&qword_27F4CDE60, &qword_27F4CE6E0, &qword_252144530);
          v13 = sub_252141B3C();
          v84 = v83;

          v125 = 30768;
          v126 = 0xE200000000000000;
          MEMORY[0x253098DA0](v13, v84);

          a1 = v126;
          v85 = sub_2520A5448(v125, v126, v127);

          *(v9 + 14) = v85;
          *(v9 + 22) = 2080;
          *(v9 + 24) = sub_2520A5448(v122, v123, v127);
          *(v9 + 32) = 2080;
          *(v9 + 34) = sub_2520A5448(v101, v108, v127);
          _os_log_impl(&dword_25207E000, v8, v60, "[%{public}s] peripheral writeCharacteristic %s for %s to %s", v9, 0x2Au);
          v86 = v102;
          swift_arrayDestroy();
          MEMORY[0x253099FD0](v86, -1, -1);
          MEMORY[0x253099FD0](v9, -1, -1);
LABEL_79:

          goto LABEL_80;
        }

        if (v120 != 2)
        {
          a2 = MEMORY[0x277D84F90];
          goto LABEL_78;
        }

        v100 = v9;
        v66 = *(v121 + 16);
        v65 = *(v121 + 24);
        v9 = v65 - v66;
        if (__OFSUB__(v65, v66))
        {
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
        }

        v64 = v120;
        if (!v9)
        {
          goto LABEL_51;
        }

LABEL_45:
        v98 = v8;
        v124 = MEMORY[0x277D84F90];
        a1 = &v124;
        v5 = v64;
        sub_25209B354(0, v9 & ~(v9 >> 63), 0);
        if (v5)
        {
          v8 = v113;
          if (v5 == 2)
          {
            v8 = *(v121 + 16);
          }
        }

        else
        {
          v8 = 0;
        }

        v97 = v60;
        if ((v9 & 0x8000000000000000) == 0)
        {
          v67 = 0;
          a2 = v124;
          v112 = &v125 + v8;
          v68 = v120;
          while (1)
          {
            if (v67 >= v9)
            {
              goto LABEL_99;
            }

            v69 = v67 + 1;
            if (__OFADD__(v67, 1))
            {
              goto LABEL_100;
            }

            v5 = v8 + v67;
            if (v68 == 2)
            {
              if (v5 < *(v121 + 16))
              {
                goto LABEL_102;
              }

              if (v5 >= *(v121 + 24))
              {
                goto LABEL_105;
              }

              v73 = sub_25214173C();
              if (!v73)
              {
                goto LABEL_126;
              }

              v13 = v73;
              a1 = v49 & 0x3FFFFFFFFFFFFFFFLL;
              v74 = sub_25214175C();
              v72 = v5 - v74;
              if (__OFSUB__(v5, v74))
              {
                goto LABEL_107;
              }
            }

            else
            {
              if (v68 != 1)
              {
                if (v5 >= v114)
                {
                  goto LABEL_103;
                }

                LODWORD(v125) = v121;
                BYTE4(v125) = v109;
                *(&v125 + 5) = *(&v121 + 5);
                HIBYTE(v125) = HIBYTE(v121);
                LOWORD(v126) = v49;
                BYTE2(v126) = BYTE2(v49);
                BYTE3(v126) = BYTE3(v49);
                BYTE4(v126) = BYTE4(v49);
                BYTE5(v126) = BYTE5(v49);
                v75 = v112[v67];
                goto LABEL_73;
              }

              if (v5 < v113 || v5 >= v110)
              {
                goto LABEL_104;
              }

              v70 = sub_25214173C();
              if (!v70)
              {
                goto LABEL_125;
              }

              v13 = v70;
              a1 = v49 & 0x3FFFFFFFFFFFFFFFLL;
              v71 = sub_25214175C();
              v72 = v5 - v71;
              if (__OFSUB__(v5, v71))
              {
                goto LABEL_106;
              }
            }

            v75 = *(v13 + v72);
LABEL_73:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAB0, &unk_252143BA0);
            v76 = swift_allocObject();
            *(v76 + 16) = v119;
            *(v76 + 56) = MEMORY[0x277D84B78];
            *(v76 + 64) = MEMORY[0x277D84BC0];
            *(v76 + 32) = v75;
            v77 = sub_252141BAC();
            v124 = a2;
            v5 = *(a2 + 16);
            v79 = *(a2 + 24);
            v13 = (v5 + 1);
            if (v5 >= v79 >> 1)
            {
              a1 = &v124;
              v81 = v77;
              v82 = v78;
              sub_25209B354((v79 > 1), v5 + 1, 1);
              v78 = v82;
              v49 = v116;
              v77 = v81;
              a2 = v124;
            }

            *(a2 + 16) = v13;
            v80 = a2 + 16 * v5;
            *(v80 + 32) = v77;
            *(v80 + 40) = v78;
            ++v67;
            v68 = v120;
            if (v69 == v9)
            {
              v8 = v98;
              LOBYTE(v60) = v97;
              goto LABEL_77;
            }
          }
        }

        __break(1u);
        goto LABEL_113;
      }

LABEL_80:
      a2 = 0;
      v5 = v58 & 0xC000000000000001;
      if (!(v58 >> 62))
      {
LABEL_81:
        if (a2 == *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_92;
        }

        break;
      }

LABEL_83:
      if (a2 != sub_25214232C())
      {
        break;
      }

LABEL_92:

      v49 = v116;
      a2 = v121;
LABEL_94:
      v9 = v107;
      v5 = v106;
      v8 = v118;
      if (v118 == v106)
      {
        goto LABEL_114;
      }
    }

    if (v5)
    {
      v87 = MEMORY[0x2530993D0](a2, v58);
    }

    else
    {
      if (a2 >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_98;
      }

      v87 = *(v58 + 8 * a2 + 32);
    }

    v13 = v87;
    if (!__OFADD__(a2, 1))
    {
      sub_2520A5A94(0, &unk_27F4CE6D0, 0x277D82BB8);
      v88 = [v13 UUID];
      v8 = sub_252141B6C();
      v9 = [objc_opt_self() UUIDWithString_];

      a1 = sub_25214210C();
      if (a1)
      {

        a2 = v121;
        v49 = v116;
        a1 = sub_25214183C();
        [v105 writeValue:a1 forCharacteristic:v13 type:1];

        goto LABEL_94;
      }

      ++a2;
      if (!(v58 >> 62))
      {
        goto LABEL_81;
      }

      goto LABEL_83;
    }

    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
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
  }

  __break(1u);
LABEL_111:
  swift_once();
LABEL_12:
  v29 = sub_25214198C();
  __swift_project_value_buffer(v29, qword_27F4CDE68);
  v30 = sub_25214196C();
  v31 = sub_252141FAC();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v125 = v33;
    *v32 = 136446210;
    v34 = sub_2521425DC();
    v36 = sub_2520A5448(v34, v35, &v125);

    *(v32 + 4) = v36;
    v37 = "[%{public}s] Device Lost, cannot write characteristic.";
    goto LABEL_120;
  }

LABEL_121:

LABEL_122:
  v93 = *MEMORY[0x277D85DE8];
}

void sub_2521058D0(uint64_t *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_27F4CD7A0 != -1)
  {
    swift_once();
  }

  if (byte_27F4D3490 & 1) != 0 || (sub_2520F8B10(a1))
  {
    goto LABEL_9;
  }

  v4 = *a1;
  v5 = a1[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *(v2 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_loggedDeviceLock);
  [v7 lock];
  v8 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_loggedDevices;
  swift_beginAccess();
  v9 = *(v2 + v8);

  v10 = sub_252112E30(v4, v5, v9);

  [v7 unlock];
  if ((v10 & 1) == 0)
  {
LABEL_9:
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v11 = sub_25214198C();
    __swift_project_value_buffer(v11, qword_27F4CDE68);
    sub_25210AC9C(a1, v24);
    v12 = sub_25214196C();
    v13 = sub_252141FBC();
    sub_25210ACF8(a1);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24[0] = v15;
      *v14 = 136446466;
      v16 = sub_2521425DC();
      v18 = sub_2520A5448(v16, v17, v24);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_2520A5448(a1[2], a1[3], v24);
      _os_log_impl(&dword_25207E000, v12, v13, "[%{public}s] remembering as ineligible device: %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v15, -1, -1);
      MEMORY[0x253099FD0](v14, -1, -1);
    }
  }

  v20 = *a1;
  v19 = a1[1];
  v21 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v21 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    v22 = *(v2 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_ineligableLock);

    [v22 lock];
    swift_beginAccess();
    sub_25213ECFC(&v23, v20, v19);
    swift_endAccess();

    [v22 unlock];
  }
}

uint64_t sub_252105BD0(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_ineligableLock);
  [v5 lock];
  v6 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_ineligibleAirPods;
  swift_beginAccess();
  v7 = *(v2 + v6);

  LOBYTE(a2) = sub_252112E30(a1, a2, v7);

  [v5 unlock];
  if ((a2 & 1) == 0 || sub_252105DF4() < 2)
  {
    return 0;
  }

  if (qword_27F4CD7A0 != -1)
  {
    swift_once();
  }

  if (byte_27F4D3490 == 1)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v8 = sub_25214198C();
    __swift_project_value_buffer(v8, qword_27F4CDE68);
    v9 = sub_25214196C();
    v10 = sub_252141FBC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136446210;
      v13 = sub_2521425DC();
      v15 = sub_2520A5448(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_25207E000, v9, v10, "[%{public}s] ignore known bad AirPods, search for next candidate", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x253099FD0](v12, -1, -1);
      MEMORY[0x253099FD0](v11, -1, -1);
    }
  }

  return 1;
}

char *sub_252105DF4()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue);
  sub_2520A5A94(0, &qword_27F4CE6A8, 0x277CBE030);
  sub_25214200C();
  v2 = [v27[0] discoveredDevices];

  sub_2520A5A94(0, &qword_27F4CE6B0, 0x277CBE020);
  v3 = sub_252141CDC();

  if (v3 >> 62)
  {
LABEL_23:
    v4 = sub_25214232C();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v25 = objc_opt_self();
      if (v4 >= 1)
      {
        v2 = 0;
        v5 = 0;
        while (1)
        {
          v7 = (v3 & 0xC000000000000001) != 0 ? MEMORY[0x2530993D0](v5, v3) : *(v3 + 8 * v5 + 32);
          v8 = v7;
          sub_25212CC7C(v8, v27);

          v9 = [v25 mainBundle];
          v10 = [v9 bundleIdentifier];

          if (!v10)
          {
            break;
          }

          v11 = sub_252141B9C();
          v13 = v12;

          if (v11 == 0xD00000000000002ALL && 0x800000025214B260 == v13)
          {

            sub_25210ACF8(v27);
          }

          else
          {
            v15 = sub_25214247C();

            sub_25210ACF8(v27);
            if ((v15 & 1) == 0)
            {
              if ((v29 & 1) == 0)
              {
                goto LABEL_7;
              }

LABEL_20:
              if (v28 != 1)
              {
                goto LABEL_7;
              }
            }
          }

          if (__OFADD__(v2++, 1))
          {
            __break(1u);
            goto LABEL_23;
          }

LABEL_7:
          if (v4 == ++v5)
          {
            goto LABEL_25;
          }
        }

        sub_25210ACF8(v27);
        if ((v29 & 1) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }

      __break(1u);
      goto LABEL_34;
    }
  }

  v2 = 0;
LABEL_25:

  if (qword_27F4CD7A0 != -1)
  {
    swift_once();
  }

  if (byte_27F4D3490 == 1)
  {
    if (qword_27F4CD708 == -1)
    {
LABEL_29:
      v16 = sub_25214198C();
      __swift_project_value_buffer(v16, qword_27F4CDE68);
      v17 = sub_25214196C();
      v18 = sub_252141FBC();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v26 = v20;
        *v19 = 136446466;
        v21 = sub_2521425DC();
        v23 = sub_2520A5448(v21, v22, &v26);

        *(v19 + 4) = v23;
        *(v19 + 12) = 2048;
        *(v19 + 14) = v2;
        _os_log_impl(&dword_25207E000, v17, v18, "[%{public}s] available hearing test device count : %ld", v19, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x253099FD0](v20, -1, -1);
        MEMORY[0x253099FD0](v19, -1, -1);
      }

      return v2;
    }

LABEL_34:
    swift_once();
    goto LABEL_29;
  }

  return v2;
}

uint64_t sub_2521061E8(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v2[21] = swift_getObjectType();
  v3 = sub_252141A4C();
  v2[22] = v3;
  v4 = *(v3 - 8);
  v2[23] = v4;
  v5 = *(v4 + 64) + 15;
  v2[24] = swift_task_alloc();
  v6 = sub_252141A8C();
  v2[25] = v6;
  v7 = *(v6 - 8);
  v2[26] = v7;
  v8 = *(v7 + 64) + 15;
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252106310, 0, 0);
}

uint64_t sub_252106310()
{
  v91 = v0;
  v1 = v0[20];
  v2 = sub_2520F8D94();
  v4 = v3;
  v0[28] = v2;
  v0[29] = v3;
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v5 = sub_25214198C();
  v0[30] = __swift_project_value_buffer(v5, qword_27F4CDE68);

  v6 = sub_25214196C();
  v7 = sub_252141FBC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[21];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v90[0] = v10;
    *v9 = 136446466;
    v11 = sub_2521425DC();
    v13 = sub_2520A5448(v11, v12, v90);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_2520A5448(v2, v4, v90);
    _os_log_impl(&dword_25207E000, v6, v7, "[%{public}s] readHearingTestStatus requested from %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v10, -1, -1);
    MEMORY[0x253099FD0](v9, -1, -1);
  }

  v14 = v0[20];
  v15 = *&v14[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
  v0[31] = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = xmmword_252146680;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_25210B0A8;
  *(v17 + 24) = v16;
  v0[6] = sub_2520AD484;
  v0[7] = v17;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_252083924;
  v0[5] = &block_descriptor_8;
  v18 = _Block_copy(v0 + 2);
  v19 = v0[7];
  v20 = v14;

  dispatch_sync(v15, v18);
  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
    return MEMORY[0x282200480](v21);
  }

  v22 = v0[19];
  v23 = v0[20];
  if (v22 <= 1)
  {
    v22 = 1;
  }

  v0[32] = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_centralMgrQueue;
  v0[33] = v22;
  v0[34] = 0;
  v24 = v0[31];
  *(swift_task_alloc() + 16) = v23;
  v0[35] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4CE698, &unk_252146788);
  sub_25214200C();

  v25 = v0[15];
  if (v25 >> 60 == 15)
  {
    v26 = v0[29];
    v27 = v0[30];

    v28 = sub_25214196C();
    v29 = sub_252141FBC();

    if (os_log_type_enabled(v28, v29))
    {
      v31 = v0[28];
      v30 = v0[29];
      v32 = v0[21];
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v90[0] = v34;
      *v33 = 136446466;
      v35 = sub_2521425DC();
      v37 = sub_2520A5448(v35, v36, v90);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_2520A5448(v31, v30, v90);
      _os_log_impl(&dword_25207E000, v28, v29, "[%{public}s] readHearingTestStatus mode from %s is nil, wait for 1 second ", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v34, -1, -1);
      MEMORY[0x253099FD0](v33, -1, -1);
    }

    v38 = v0[27];
    v88 = v0[26];
    v89 = v0[25];
    v85 = v0[24];
    v39 = v0[22];
    v86 = *(v0[20] + v0[32]);
    v87 = v0[23];
    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = swift_allocObject();
    v41[2] = v40;
    v41[3] = 0xD000000000000024;
    v41[4] = 0x8000000252149ED0;
    v0[12] = sub_25210B128;
    v0[13] = v41;
    v0[8] = MEMORY[0x277D85DD0];
    v0[9] = 1107296256;
    v0[10] = sub_2520A3B78;
    v0[11] = &block_descriptor_172;
    v42 = _Block_copy(v0 + 8);

    sub_252141A6C();
    v0[18] = MEMORY[0x277D84F90];
    sub_252110218(&qword_27F4CE090, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
    sub_2520A2F1C(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0);
    sub_25214218C();
    MEMORY[0x2530991B0](0, v38, v85, v42);
    _Block_release(v42);
    (*(v87 + 8))(v85, v39);
    (*(v88 + 8))(v38, v89);
    v43 = v0[13];

    v44 = *(MEMORY[0x277D857E8] + 4);
    v45 = swift_task_alloc();
    v0[36] = v45;
    *v45 = v0;
    v45[1] = sub_252106D68;
    v21 = 1000000000;

    return MEMORY[0x282200480](v21);
  }

  sub_25210B134(v0[14], v25);
  v46 = v0[35];
  v47 = v0[31];
  v48 = v0[20];
  *(swift_task_alloc() + 16) = v48;
  sub_25214200C();

  v49 = v0[17];
  if (v49 >> 60 == 15 || (v50 = v0[16], v51 = sub_2520F7D5C(v50, v0[17]), sub_25210B134(v50, v49), (v51 & 0x100) != 0))
  {
    v67 = v0[29];
    v66 = v0[30];

    v68 = sub_25214196C();
    v69 = sub_252141FAC();

    v70 = os_log_type_enabled(v68, v69);
    v71 = v0[29];
    if (v70)
    {
      v72 = v0[28];
      v73 = v0[21];
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v90[0] = v75;
      *v74 = 136446466;
      v76 = sub_2521425DC();
      v78 = sub_2520A5448(v76, v77, v90);

      *(v74 + 4) = v78;
      *(v74 + 12) = 2080;
      v79 = sub_2520A5448(v72, v71, v90);

      *(v74 + 14) = v79;
      _os_log_impl(&dword_25207E000, v68, v69, "[%{public}s] readHearingTestStatus from %s failed", v74, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v75, -1, -1);
      MEMORY[0x253099FD0](v74, -1, -1);
    }

    else
    {
    }

    v80 = 5;
  }

  else
  {
    v53 = v0[29];
    v52 = v0[30];

    v54 = sub_25214196C();
    v55 = sub_252141FBC();

    v56 = os_log_type_enabled(v54, v55);
    v57 = v0[29];
    if (v56)
    {
      v58 = v0[28];
      v59 = v0[21];
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v90[0] = v61;
      *v60 = 136446722;
      v62 = sub_2521425DC();
      v64 = sub_2520A5448(v62, v63, v90);

      *(v60 + 4) = v64;
      *(v60 + 12) = 2080;
      v65 = sub_2520A5448(v58, v57, v90);

      *(v60 + 14) = v65;
      *(v60 + 22) = 256;
      *(v60 + 24) = v51;
      _os_log_impl(&dword_25207E000, v54, v55, "[%{public}s] readHearingTestStatus complete from %s,  mode is %hhu", v60, 0x19u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v61, -1, -1);
      MEMORY[0x253099FD0](v60, -1, -1);
    }

    else
    {
    }

    if (v51 >= 5u)
    {
      v80 = 5;
    }

    else
    {
      v80 = v51;
    }
  }

  v81 = v0[27];
  v82 = v0[24];

  v83 = v0[1];

  return v83(v80);
}

uint64_t sub_252106D68()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_252107878;
  }

  else
  {
    v3 = sub_252106E7C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252106E7C()
{
  v96 = v0;
  v1 = v0[37];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[34] + 1;

  v5 = sub_25214196C();
  v6 = sub_252141FBC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[28];
    v8 = v0[21];
    v91 = v0[29];
    v93 = v0[19];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v95[0] = v10;
    *v9 = 136446978;
    v11 = sub_2521425DC();
    v13 = sub_2520A5448(v11, v12, v95);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_2520A5448(v7, v91, v95);
    *(v9 + 22) = 2048;
    *(v9 + 24) = v4;
    *(v9 + 32) = 2048;
    *(v9 + 34) = v93;
    _os_log_impl(&dword_25207E000, v5, v6, "[%{public}s] readHearingTestStatus from %s retry count %ld, max %ld ", v9, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v10, -1, -1);
    MEMORY[0x253099FD0](v9, -1, -1);
  }

  if (v4 == v0[33])
  {
    v14 = v0[29];
    v15 = v0[30];

    v16 = sub_25214196C();
    v17 = sub_252141FAC();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = v0[28];
      v18 = v0[29];
      v20 = v0[21];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v95[0] = v22;
      *v21 = 136446466;
      v23 = sub_2521425DC();
      v25 = sub_2520A5448(v23, v24, v95);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_2520A5448(v19, v18, v95);
      _os_log_impl(&dword_25207E000, v16, v17, "[%{public}s] readHearingTestStatus  from %s reached time out period", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v22, -1, -1);
      MEMORY[0x253099FD0](v21, -1, -1);
    }

    goto LABEL_14;
  }

  v0[34] = v4;
  v26 = v0[31];
  v27 = v0[20];
  *(swift_task_alloc() + 16) = v27;
  v0[35] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4CE698, &unk_252146788);
  sub_25214200C();

  v28 = v0[15];
  if (v28 >> 60 != 15)
  {
    sub_25210B134(v0[14], v28);
LABEL_14:
    v49 = v0[35];
    v50 = v0[31];
    v51 = v0[20];
    *(swift_task_alloc() + 16) = v51;
    sub_25214200C();

    v52 = v0[17];
    if (v52 >> 60 == 15 || (v53 = v0[16], v54 = sub_2520F7D5C(v53, v0[17]), sub_25210B134(v53, v52), (v54 & 0x100) != 0))
    {
      v70 = v0[29];
      v69 = v0[30];

      v71 = sub_25214196C();
      v72 = sub_252141FAC();

      v73 = os_log_type_enabled(v71, v72);
      v74 = v0[29];
      if (v73)
      {
        v75 = v0[28];
        v76 = v0[21];
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v95[0] = v78;
        *v77 = 136446466;
        v79 = sub_2521425DC();
        v81 = sub_2520A5448(v79, v80, v95);

        *(v77 + 4) = v81;
        *(v77 + 12) = 2080;
        v82 = sub_2520A5448(v75, v74, v95);

        *(v77 + 14) = v82;
        _os_log_impl(&dword_25207E000, v71, v72, "[%{public}s] readHearingTestStatus from %s failed", v77, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v78, -1, -1);
        MEMORY[0x253099FD0](v77, -1, -1);
      }

      else
      {
      }

      v83 = 5;
    }

    else
    {
      v56 = v0[29];
      v55 = v0[30];

      v57 = sub_25214196C();
      v58 = sub_252141FBC();

      v59 = os_log_type_enabled(v57, v58);
      v60 = v0[29];
      if (v59)
      {
        v61 = v0[28];
        v62 = v0[21];
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v95[0] = v64;
        *v63 = 136446722;
        v65 = sub_2521425DC();
        v67 = sub_2520A5448(v65, v66, v95);

        *(v63 + 4) = v67;
        *(v63 + 12) = 2080;
        v68 = sub_2520A5448(v61, v60, v95);

        *(v63 + 14) = v68;
        *(v63 + 22) = 256;
        *(v63 + 24) = v54;
        _os_log_impl(&dword_25207E000, v57, v58, "[%{public}s] readHearingTestStatus complete from %s,  mode is %hhu", v63, 0x19u);
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v64, -1, -1);
        MEMORY[0x253099FD0](v63, -1, -1);
      }

      else
      {
      }

      if (v54 >= 5u)
      {
        v83 = 5;
      }

      else
      {
        v83 = v54;
      }
    }

    v84 = v0[27];
    v85 = v0[24];

    v86 = v0[1];

    return v86(v83);
  }

  v29 = v0[29];
  v30 = v0[30];

  v31 = sub_25214196C();
  v32 = sub_252141FBC();

  if (os_log_type_enabled(v31, v32))
  {
    v34 = v0[28];
    v33 = v0[29];
    v35 = v0[21];
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v95[0] = v37;
    *v36 = 136446466;
    v38 = sub_2521425DC();
    v40 = sub_2520A5448(v38, v39, v95);

    *(v36 + 4) = v40;
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_2520A5448(v34, v33, v95);
    _os_log_impl(&dword_25207E000, v31, v32, "[%{public}s] readHearingTestStatus mode from %s is nil, wait for 1 second ", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v37, -1, -1);
    MEMORY[0x253099FD0](v36, -1, -1);
  }

  v41 = v0[27];
  v92 = v0[26];
  v94 = v0[25];
  v88 = v0[24];
  v42 = v0[22];
  v89 = *(v0[20] + v0[32]);
  v90 = v0[23];
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = swift_allocObject();
  v44[2] = v43;
  v44[3] = 0xD000000000000024;
  v44[4] = 0x8000000252149ED0;
  v0[12] = sub_25210B128;
  v0[13] = v44;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_2520A3B78;
  v0[11] = &block_descriptor_172;
  v45 = _Block_copy(v0 + 8);

  sub_252141A6C();
  v0[18] = MEMORY[0x277D84F90];
  sub_252110218(&qword_27F4CE090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
  sub_2520A2F1C(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0);
  sub_25214218C();
  MEMORY[0x2530991B0](0, v41, v88, v45);
  _Block_release(v45);
  (*(v90 + 8))(v88, v42);
  (*(v92 + 8))(v41, v94);
  v46 = v0[13];

  v47 = *(MEMORY[0x277D857E8] + 4);
  v48 = swift_task_alloc();
  v0[36] = v48;
  *v48 = v0;
  v48[1] = sub_252106D68;

  return MEMORY[0x282200480](1000000000);
}

uint64_t sub_252107878()
{
  v109 = v0;
  v1 = v0[29];
  v2 = v0[30];

  v3 = sub_25214196C();
  v4 = sub_252141FAC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[37];
  if (v5)
  {
    v8 = v0[28];
    v7 = v0[29];
    v9 = v0[21];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v108[0] = v11;
    *v10 = 136446466;
    v12 = sub_2521425DC();
    v14 = sub_2520A5448(v12, v13, v108);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2520A5448(v8, v7, v108);
    _os_log_impl(&dword_25207E000, v3, v4, "[%{public}s] readHearingTestStatus unable to read from %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v11, -1, -1);
    MEMORY[0x253099FD0](v10, -1, -1);
  }

  v16 = v0[29];
  v15 = v0[30];
  v17 = v0[34] + 1;

  v18 = sub_25214196C();
  v19 = sub_252141FBC();

  if (os_log_type_enabled(v18, v19))
  {
    v21 = v0[28];
    v20 = v0[29];
    v22 = v0[21];
    v106 = v0[19];
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v108[0] = v24;
    *v23 = 136446978;
    v25 = sub_2521425DC();
    v27 = sub_2520A5448(v25, v26, v108);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_2520A5448(v21, v20, v108);
    *(v23 + 22) = 2048;
    *(v23 + 24) = v17;
    *(v23 + 32) = 2048;
    *(v23 + 34) = v106;
    _os_log_impl(&dword_25207E000, v18, v19, "[%{public}s] readHearingTestStatus from %s retry count %ld, max %ld ", v23, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v24, -1, -1);
    MEMORY[0x253099FD0](v23, -1, -1);
  }

  if (v17 == v0[33])
  {
    v28 = v0[29];
    v29 = v0[30];

    v30 = sub_25214196C();
    v31 = sub_252141FAC();

    if (os_log_type_enabled(v30, v31))
    {
      v33 = v0[28];
      v32 = v0[29];
      v34 = v0[21];
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v108[0] = v36;
      *v35 = 136446466;
      v37 = sub_2521425DC();
      v39 = sub_2520A5448(v37, v38, v108);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_2520A5448(v33, v32, v108);
      _os_log_impl(&dword_25207E000, v30, v31, "[%{public}s] readHearingTestStatus  from %s reached time out period", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v36, -1, -1);
      MEMORY[0x253099FD0](v35, -1, -1);
    }

    goto LABEL_16;
  }

  v0[34] = v17;
  v40 = v0[31];
  v41 = v0[20];
  *(swift_task_alloc() + 16) = v41;
  v0[35] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4CE698, &unk_252146788);
  sub_25214200C();

  v42 = v0[15];
  if (v42 >> 60 != 15)
  {
    sub_25210B134(v0[14], v42);
LABEL_16:
    v63 = v0[35];
    v64 = v0[31];
    v65 = v0[20];
    *(swift_task_alloc() + 16) = v65;
    sub_25214200C();

    v66 = v0[17];
    if (v66 >> 60 == 15 || (v67 = v0[16], v68 = sub_2520F7D5C(v67, v0[17]), sub_25210B134(v67, v66), (v68 & 0x100) != 0))
    {
      v84 = v0[29];
      v83 = v0[30];

      v85 = sub_25214196C();
      v86 = sub_252141FAC();

      v87 = os_log_type_enabled(v85, v86);
      v88 = v0[29];
      if (v87)
      {
        v89 = v0[28];
        v90 = v0[21];
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v108[0] = v92;
        *v91 = 136446466;
        v93 = sub_2521425DC();
        v95 = sub_2520A5448(v93, v94, v108);

        *(v91 + 4) = v95;
        *(v91 + 12) = 2080;
        v96 = sub_2520A5448(v89, v88, v108);

        *(v91 + 14) = v96;
        _os_log_impl(&dword_25207E000, v85, v86, "[%{public}s] readHearingTestStatus from %s failed", v91, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v92, -1, -1);
        MEMORY[0x253099FD0](v91, -1, -1);
      }

      else
      {
      }

      v97 = 5;
    }

    else
    {
      v70 = v0[29];
      v69 = v0[30];

      v71 = sub_25214196C();
      v72 = sub_252141FBC();

      v73 = os_log_type_enabled(v71, v72);
      v74 = v0[29];
      if (v73)
      {
        v75 = v0[28];
        v76 = v0[21];
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v108[0] = v78;
        *v77 = 136446722;
        v79 = sub_2521425DC();
        v81 = sub_2520A5448(v79, v80, v108);

        *(v77 + 4) = v81;
        *(v77 + 12) = 2080;
        v82 = sub_2520A5448(v75, v74, v108);

        *(v77 + 14) = v82;
        *(v77 + 22) = 256;
        *(v77 + 24) = v68;
        _os_log_impl(&dword_25207E000, v71, v72, "[%{public}s] readHearingTestStatus complete from %s,  mode is %hhu", v77, 0x19u);
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v78, -1, -1);
        MEMORY[0x253099FD0](v77, -1, -1);
      }

      else
      {
      }

      if (v68 >= 5u)
      {
        v97 = 5;
      }

      else
      {
        v97 = v68;
      }
    }

    v98 = v0[27];
    v99 = v0[24];

    v100 = v0[1];

    return v100(v97);
  }

  v43 = v0[29];
  v44 = v0[30];

  v45 = sub_25214196C();
  v46 = sub_252141FBC();

  if (os_log_type_enabled(v45, v46))
  {
    v48 = v0[28];
    v47 = v0[29];
    v49 = v0[21];
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v108[0] = v51;
    *v50 = 136446466;
    v52 = sub_2521425DC();
    v54 = sub_2520A5448(v52, v53, v108);

    *(v50 + 4) = v54;
    *(v50 + 12) = 2080;
    *(v50 + 14) = sub_2520A5448(v48, v47, v108);
    _os_log_impl(&dword_25207E000, v45, v46, "[%{public}s] readHearingTestStatus mode from %s is nil, wait for 1 second ", v50, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v51, -1, -1);
    MEMORY[0x253099FD0](v50, -1, -1);
  }

  v55 = v0[27];
  v105 = v0[26];
  v107 = v0[25];
  v102 = v0[24];
  v56 = v0[22];
  v103 = *(v0[20] + v0[32]);
  v104 = v0[23];
  v57 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v58 = swift_allocObject();
  v58[2] = v57;
  v58[3] = 0xD000000000000024;
  v58[4] = 0x8000000252149ED0;
  v0[12] = sub_25210B128;
  v0[13] = v58;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_2520A3B78;
  v0[11] = &block_descriptor_172;
  v59 = _Block_copy(v0 + 8);

  sub_252141A6C();
  v0[18] = MEMORY[0x277D84F90];
  sub_252110218(&qword_27F4CE090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
  sub_2520A2F1C(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0);
  sub_25214218C();
  MEMORY[0x2530991B0](0, v55, v102, v59);
  _Block_release(v59);
  (*(v104 + 8))(v102, v56);
  (*(v105 + 8))(v55, v107);
  v60 = v0[13];

  v61 = *(MEMORY[0x277D857E8] + 4);
  v62 = swift_task_alloc();
  v0[36] = v62;
  *v62 = v0;
  v62[1] = sub_252106D68;

  return MEMORY[0x282200480](1000000000);
}

uint64_t sub_252108394(int a1, float a2, float a3)
{
  *&v21[4] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v19 = __PAIR64__(LODWORD(a3), LODWORD(a2));
  v20 = a1;
  v6 = sub_2520F7DE4(&v19, v21);
  v8 = v7;
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v9 = sub_25214198C();
  __swift_project_value_buffer(v9, qword_27F4CDE68);
  v10 = sub_25214196C();
  v11 = sub_252141FBC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136446978;
    v14 = sub_2521425DC();
    v16 = sub_2520A5448(v14, v15, &v19);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2048;
    *(v12 + 14) = a2;
    *(v12 + 22) = 2048;
    *(v12 + 24) = a3;
    *(v12 + 32) = 1024;
    *(v12 + 34) = a1;
    _os_log_impl(&dword_25207E000, v10, v11, "[%{public}s] write test tone freq %f, level %f, side %u", v12, 0x26u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x253099FD0](v13, -1, -1);
    MEMORY[0x253099FD0](v12, -1, -1);
  }

  sub_252104450(v6, v8, 0xD000000000000024, 0x800000025214B230);
  result = sub_2520CB598(v6, v8);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2521085B4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *MEMORY[0x277D85DE8];
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a2;
  *(v6 + 136) = a1;
  *(v6 + 56) = swift_getObjectType();
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_25210865C, 0, 0);
}

uint64_t sub_25210865C()
{
  v40 = v0;
  v39 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);
  v2 = sub_2520F8D94();
  v4 = v3;
  *(v0 + 64) = v2;
  *(v0 + 72) = v3;
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v5 = sub_25214198C();
  *(v0 + 80) = __swift_project_value_buffer(v5, qword_27F4CDE68);

  v6 = sub_25214196C();
  v7 = sub_252141FBC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 56);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v35 = v10;
    *v9 = 136446466;
    v11 = sub_2521425DC();
    v13 = sub_2520A5448(v11, v12, &v35);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_2520A5448(v2, v4, &v35);
    _os_log_impl(&dword_25207E000, v6, v7, "[%{public}s] writeHearingTestMode requested from %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v10, -1, -1);
    MEMORY[0x253099FD0](v9, -1, -1);
  }

  if (*(v0 + 16))
  {

    v14 = sub_25214196C();
    v15 = sub_252141FBC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 56);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v35 = v18;
      *v17 = 136446466;
      v19 = sub_2521425DC();
      v21 = sub_2520A5448(v19, v20, &v35);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_2520A5448(v2, v4, &v35);
      _os_log_impl(&dword_25207E000, v14, v15, "[%{public}s] writeHearingTestMode check initial state before write to %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v18, -1, -1);
      MEMORY[0x253099FD0](v17, -1, -1);
    }

    if (*(v0 + 32) < 1)
    {
      __break(1u);
    }

    *(v0 + 88) = 1;
    v22 = swift_task_alloc();
    *(v0 + 96) = v22;
    *v22 = v0;
    v22[1] = sub_252108AD0;
    v23 = *(v0 + 40);
    v24 = *(v0 + 48);
    v25 = *MEMORY[0x277D85DE8];

    return sub_2521061E8(v23);
  }

  else
  {
    v27 = *(v0 + 48);
    v28 = *(v0 + 136);
    v35 = sub_2520D7D40(1uLL);
    v36 = v29;
    v38 = v30;
    v37 = v31;
    memset(&v35, v28, v30);
    sub_252104450(v35, v36 | ((v37 | (v38 << 16)) << 32), 0xD000000000000024, 0x8000000252149ED0);
    v32 = *(MEMORY[0x277D857E8] + 4);
    v33 = swift_task_alloc();
    *(v0 + 104) = v33;
    *v33 = v0;
    v33[1] = sub_2521090D8;
    v34 = *MEMORY[0x277D85DE8];

    return MEMORY[0x282200480](250000000);
  }
}

uint64_t sub_252108AD0(char a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 137) = a1;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_252108BFC, 0, 0);
}

uint64_t sub_252108BFC()
{
  v55 = v0;
  v54 = *MEMORY[0x277D85DE8];
  if (*(v0 + 137) != 5)
  {
    v17 = *(v0 + 72);
    v16 = *(v0 + 80);

    v18 = sub_25214196C();
    v19 = sub_252141FBC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v0 + 137);
      v22 = *(v0 + 64);
      v21 = *(v0 + 72);
      v23 = *(v0 + 56);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v50 = v25;
      *v24 = 136446722;
      v26 = sub_2521425DC();
      v28 = sub_2520A5448(v26, v27, &v50);

      *(v24 + 4) = v28;
      *(v24 + 12) = 256;
      *(v24 + 14) = v20;
      *(v24 + 15) = 2080;
      *(v24 + 17) = sub_2520A5448(v22, v21, &v50);
      _os_log_impl(&dword_25207E000, v18, v19, "[%{public}s] writeHearingTestMode HTMode initial status %hhu from %s", v24, 0x19u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v25, -1, -1);
      MEMORY[0x253099FD0](v24, -1, -1);
    }

    v29 = *(v0 + 16);
    v30 = *(v29 + 16);
    v31 = (v29 + 32);
    while (v30)
    {
      v32 = *v31++;
      --v30;
      if (v32 == *(v0 + 137))
      {
        v33 = *(v0 + 48);
        v34 = *(v0 + 136);
        v50 = sub_2520D7D40(1uLL);
        v51 = v35;
        v53 = v36;
        v52 = v37;
        memset(&v50, v34, v36);
        sub_252104450(v50, v51 | ((v52 | (v53 << 16)) << 32), 0xD000000000000024, 0x8000000252149ED0);
        v38 = *(MEMORY[0x277D857E8] + 4);
        v39 = swift_task_alloc();
        *(v0 + 104) = v39;
        *v39 = v0;
        v39[1] = sub_2521090D8;
        v40 = *MEMORY[0x277D85DE8];

        return MEMORY[0x282200480](250000000);
      }
    }
  }

  v1 = *(v0 + 88);
  if (v1 == *(v0 + 32))
  {
    v3 = *(v0 + 72);
    v2 = *(v0 + 80);

    v4 = sub_25214196C();
    v5 = sub_252141FAC();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 72);
    if (v6)
    {
      v9 = *(v0 + 56);
      v8 = *(v0 + 64);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v50 = v11;
      *v10 = 136446466;
      v12 = sub_2521425DC();
      v14 = sub_2520A5448(v12, v13, &v50);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      v15 = sub_2520A5448(v8, v7, &v50);

      *(v10 + 14) = v15;
      _os_log_impl(&dword_25207E000, v4, v5, "[%{public}s] writeHearingTestMode initial status is not expected from %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v11, -1, -1);
      MEMORY[0x253099FD0](v10, -1, -1);
    }

    else
    {
    }

    v47 = *(v0 + 8);
    v48 = *MEMORY[0x277D85DE8];

    return v47(0);
  }

  else
  {
    v41 = __OFADD__(v1, 1);
    v42 = v1 + 1;
    if (v41)
    {
      __break(1u);
    }

    *(v0 + 88) = v42;
    v43 = swift_task_alloc();
    *(v0 + 96) = v43;
    *v43 = v0;
    v43[1] = sub_252108AD0;
    v44 = *(v0 + 40);
    v45 = *(v0 + 48);
    v46 = *MEMORY[0x277D85DE8];

    return sub_2521061E8(v44);
  }
}

uint64_t sub_2521090D8()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_252109F08;
  }

  else
  {
    v3 = sub_252109218;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252109218()
{
  v44 = v0;
  v43[1] = *MEMORY[0x277D85DE8];
  v1 = v0[3];
  v3 = v0[9];
  v2 = v0[10];

  v4 = sub_25214196C();
  v5 = sub_252141FBC();

  v6 = os_log_type_enabled(v4, v5);
  if (v1)
  {
    if (v6)
    {
      v8 = v0[8];
      v7 = v0[9];
      v9 = v0[7];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v43[0] = v11;
      *v10 = 136446466;
      v12 = sub_2521425DC();
      v14 = sub_2520A5448(v12, v13, v43);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_2520A5448(v8, v7, v43);
      _os_log_impl(&dword_25207E000, v4, v5, "[%{public}s] writeHearingTestMode checking return status after write from %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v11, -1, -1);
      MEMORY[0x253099FD0](v10, -1, -1);
    }

    if (v0[4] < 1)
    {
      __break(1u);
    }

    v0[15] = 1;
    v15 = v0[9];
    v16 = v0[10];

    v17 = sub_25214196C();
    v18 = sub_252141FBC();

    if (os_log_type_enabled(v17, v18))
    {
      v20 = v0[8];
      v19 = v0[9];
      v21 = v0[7];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v43[0] = v23;
      *v22 = 136446722;
      v24 = sub_2521425DC();
      v26 = sub_2520A5448(v24, v25, v43);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_2520A5448(v20, v19, v43);
      *(v22 + 22) = 2048;
      *(v22 + 24) = 1;
      _os_log_impl(&dword_25207E000, v17, v18, "[%{public}s] writeHearingTestMode readHearingTestStatus from %s (%ld)", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v23, -1, -1);
      MEMORY[0x253099FD0](v22, -1, -1);
    }

    v27 = swift_task_alloc();
    v0[16] = v27;
    *v27 = v0;
    v27[1] = sub_2521096A0;
    v28 = v0[5];
    v29 = v0[6];
    v30 = *MEMORY[0x277D85DE8];

    return sub_2521061E8(v28);
  }

  else
  {
    v32 = v0[9];
    if (v6)
    {
      v34 = v0[7];
      v33 = v0[8];
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v43[0] = v36;
      *v35 = 136446466;
      v37 = sub_2521425DC();
      v39 = sub_2520A5448(v37, v38, v43);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      v40 = sub_2520A5448(v33, v32, v43);

      *(v35 + 14) = v40;
      _os_log_impl(&dword_25207E000, v4, v5, "[%{public}s] writeHearingTestMode complete for %s ✅", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v36, -1, -1);
      MEMORY[0x253099FD0](v35, -1, -1);
    }

    else
    {
    }

    v41 = v0[1];
    v42 = *MEMORY[0x277D85DE8];

    return v41(1);
  }
}

uint64_t sub_2521096A0(char a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 128);
  v6 = *v1;
  *(*v1 + 138) = a1;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2521097CC, 0, 0);
}

uint64_t sub_2521097CC()
{
  v81 = v0;
  v80[1] = *MEMORY[0x277D85DE8];
  if (*(v0 + 138) != 5)
  {
    v30 = *(v0 + 72);
    v29 = *(v0 + 80);

    v31 = sub_25214196C();
    v32 = sub_252141FBC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = *(v0 + 138);
      v35 = *(v0 + 64);
      v34 = *(v0 + 72);
      v36 = *(v0 + 56);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v80[0] = v38;
      *v37 = 136446722;
      v39 = sub_2521425DC();
      v41 = sub_2520A5448(v39, v40, v80);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_2520A5448(v35, v34, v80);
      *(v37 + 22) = 256;
      *(v37 + 24) = v33;
      _os_log_impl(&dword_25207E000, v31, v32, "[%{public}s] writeHearingTestMode HTMode return status from %s %hhu", v37, 0x19u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v38, -1, -1);
      MEMORY[0x253099FD0](v37, -1, -1);
    }

    v42 = *(v0 + 24);
    v43 = *(v42 + 16);
    v44 = (v42 + 32);
    while (v43)
    {
      v45 = *v44++;
      --v43;
      if (v45 == *(v0 + 138))
      {
        v47 = *(v0 + 72);
        v46 = *(v0 + 80);

        v48 = sub_25214196C();
        v49 = sub_252141FBC();

        v50 = os_log_type_enabled(v48, v49);
        v51 = *(v0 + 72);
        if (v50)
        {
          v53 = *(v0 + 56);
          v52 = *(v0 + 64);
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v80[0] = v55;
          *v54 = 136446466;
          v56 = sub_2521425DC();
          v58 = sub_2520A5448(v56, v57, v80);

          *(v54 + 4) = v58;
          *(v54 + 12) = 2080;
          v59 = sub_2520A5448(v52, v51, v80);

          *(v54 + 14) = v59;
          _os_log_impl(&dword_25207E000, v48, v49, "[%{public}s] writeHearingTestMode complete for %s ✅", v54, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x253099FD0](v55, -1, -1);
          MEMORY[0x253099FD0](v54, -1, -1);
        }

        else
        {
        }

        v28 = 1;
        goto LABEL_24;
      }
    }
  }

  v1 = *(v0 + 120);
  if (v1 == *(v0 + 32))
  {
    v2 = *(v0 + 72);
    v3 = *(v0 + 80);

    v4 = sub_25214196C();
    v5 = sub_252141FAC();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = *(v0 + 64);
      v6 = *(v0 + 72);
      v8 = *(v0 + 56);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v80[0] = v10;
      *v9 = 136446466;
      v11 = sub_2521425DC();
      v13 = sub_2520A5448(v11, v12, v80);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_2520A5448(v7, v6, v80);
      _os_log_impl(&dword_25207E000, v4, v5, "[%{public}s] writeHearingTestMode FAILED from %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v10, -1, -1);
      MEMORY[0x253099FD0](v9, -1, -1);
    }

    v15 = *(v0 + 72);
    v14 = *(v0 + 80);

    v16 = sub_25214196C();
    v17 = sub_252141FAC();

    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 72);
    if (v18)
    {
      v21 = *(v0 + 56);
      v20 = *(v0 + 64);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v80[0] = v23;
      *v22 = 136446466;
      v24 = sub_2521425DC();
      v26 = sub_2520A5448(v24, v25, v80);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      v27 = sub_2520A5448(v20, v19, v80);

      *(v22 + 14) = v27;
      _os_log_impl(&dword_25207E000, v16, v17, "[%{public}s] writeHearingTestMode return status is not expected from %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v23, -1, -1);
      MEMORY[0x253099FD0](v22, -1, -1);
    }

    else
    {
    }

    v28 = 0;
LABEL_24:
    v78 = *(v0 + 8);
    v79 = *MEMORY[0x277D85DE8];

    return v78(v28);
  }

  else
  {
    v60 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
    }

    *(v0 + 120) = v60;
    v61 = *(v0 + 72);
    v62 = *(v0 + 80);

    v63 = sub_25214196C();
    v64 = sub_252141FBC();

    if (os_log_type_enabled(v63, v64))
    {
      v66 = *(v0 + 64);
      v65 = *(v0 + 72);
      v67 = *(v0 + 56);
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v80[0] = v69;
      *v68 = 136446722;
      v70 = sub_2521425DC();
      v72 = sub_2520A5448(v70, v71, v80);

      *(v68 + 4) = v72;
      *(v68 + 12) = 2080;
      *(v68 + 14) = sub_2520A5448(v66, v65, v80);
      *(v68 + 22) = 2048;
      *(v68 + 24) = v60;
      _os_log_impl(&dword_25207E000, v63, v64, "[%{public}s] writeHearingTestMode readHearingTestStatus from %s (%ld)", v68, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v69, -1, -1);
      MEMORY[0x253099FD0](v68, -1, -1);
    }

    v73 = swift_task_alloc();
    *(v0 + 128) = v73;
    *v73 = v0;
    v73[1] = sub_2521096A0;
    v74 = *(v0 + 40);
    v75 = *(v0 + 48);
    v76 = *MEMORY[0x277D85DE8];

    return sub_2521061E8(v74);
  }
}

uint64_t sub_252109F08()
{
  v44 = v0;
  v43[1] = *MEMORY[0x277D85DE8];

  v1 = *(v0 + 24);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);

  v4 = sub_25214196C();
  v5 = sub_252141FBC();

  v6 = os_log_type_enabled(v4, v5);
  if (v1)
  {
    if (v6)
    {
      v8 = *(v0 + 64);
      v7 = *(v0 + 72);
      v9 = *(v0 + 56);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v43[0] = v11;
      *v10 = 136446466;
      v12 = sub_2521425DC();
      v14 = sub_2520A5448(v12, v13, v43);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_2520A5448(v8, v7, v43);
      _os_log_impl(&dword_25207E000, v4, v5, "[%{public}s] writeHearingTestMode checking return status after write from %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v11, -1, -1);
      MEMORY[0x253099FD0](v10, -1, -1);
    }

    if (*(v0 + 32) < 1)
    {
      __break(1u);
    }

    *(v0 + 120) = 1;
    v15 = *(v0 + 72);
    v16 = *(v0 + 80);

    v17 = sub_25214196C();
    v18 = sub_252141FBC();

    if (os_log_type_enabled(v17, v18))
    {
      v20 = *(v0 + 64);
      v19 = *(v0 + 72);
      v21 = *(v0 + 56);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v43[0] = v23;
      *v22 = 136446722;
      v24 = sub_2521425DC();
      v26 = sub_2520A5448(v24, v25, v43);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_2520A5448(v20, v19, v43);
      *(v22 + 22) = 2048;
      *(v22 + 24) = 1;
      _os_log_impl(&dword_25207E000, v17, v18, "[%{public}s] writeHearingTestMode readHearingTestStatus from %s (%ld)", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v23, -1, -1);
      MEMORY[0x253099FD0](v22, -1, -1);
    }

    v27 = swift_task_alloc();
    *(v0 + 128) = v27;
    *v27 = v0;
    v27[1] = sub_2521096A0;
    v28 = *(v0 + 40);
    v29 = *(v0 + 48);
    v30 = *MEMORY[0x277D85DE8];

    return sub_2521061E8(v28);
  }

  else
  {
    v32 = *(v0 + 72);
    if (v6)
    {
      v34 = *(v0 + 56);
      v33 = *(v0 + 64);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v43[0] = v36;
      *v35 = 136446466;
      v37 = sub_2521425DC();
      v39 = sub_2520A5448(v37, v38, v43);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      v40 = sub_2520A5448(v33, v32, v43);

      *(v35 + 14) = v40;
      _os_log_impl(&dword_25207E000, v4, v5, "[%{public}s] writeHearingTestMode complete for %s ✅", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v36, -1, -1);
      MEMORY[0x253099FD0](v35, -1, -1);
    }

    else
    {
    }

    v41 = *(v0 + 8);
    v42 = *MEMORY[0x277D85DE8];

    return v41(1);
  }
}

uint64_t sub_25210A398(uint64_t *a1)
{
  if (qword_27F4CD7A0 != -1)
  {
    swift_once();
  }

  if (byte_27F4D3490 & 1) != 0 || (sub_2520F8B10(a1))
  {
    goto LABEL_9;
  }

  v3 = *a1;
  v4 = a1[1];
  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
LABEL_9:
    v10 = 1;
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_loggedDeviceLock);
    [v6 lock];
    v7 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_loggedDevices;
    swift_beginAccess();
    v8 = *(v1 + v7);

    v9 = sub_252112E30(v3, v4, v8);

    [v6 unlock];
    v10 = v9 ^ 1;
  }

  return v10 & 1;
}

uint64_t sub_25210A4B0(uint64_t *a1)
{
  swift_getObjectType();
  result = sub_2520F8B10(a1);
  if ((result & 1) == 0)
  {
    v4 = a1[1];
    if ((v4 & 0x2000000000000000) != 0)
    {
      if ((v4 & 0xF00000000000000) == 0)
      {
        return result;
      }
    }

    else if ((*a1 & 0xFFFFFFFFFFFFLL) == 0)
    {
      return result;
    }

    v5 = *(v1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_loggedDeviceLock);
    [v5 lock];
    sub_25210A594(v1, a1);

    return [v5 unlock];
  }

  return result;
}

uint64_t sub_25210A594(uint64_t a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_loggedDevices;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v7 = *a2;
  v6 = a2[1];

  v8 = sub_252112E30(v7, v6, v5);

  if ((v8 & 1) == 0)
  {
    v20 = v7;
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v9 = sub_25214198C();
    __swift_project_value_buffer(v9, qword_27F4CDE68);
    sub_25210AC9C(a2, v19);
    v10 = sub_25214196C();
    v11 = sub_252141FBC();
    sub_25210ACF8(a2);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19[0] = v17;
      *v12 = 136446466;
      v13 = sub_2521425DC();
      v15 = sub_2520A5448(v13, v14, v19);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_2520A5448(a2[2], a2[3], v19);
      _os_log_impl(&dword_25207E000, v10, v11, "[%{public}s] discovery events for %s will no longer be logged 🙈", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v17, -1, -1);
      MEMORY[0x253099FD0](v12, -1, -1);
    }

    swift_beginAccess();
    sub_25213ECFC(&v18, v20, v6);
    swift_endAccess();
  }
}

id sub_25210A7E0(uint64_t *a1)
{
  result = swift_getObjectType();
  v4 = a1[1];
  if ((v4 & 0x2000000000000000) != 0)
  {
    if ((v4 & 0xF00000000000000) == 0)
    {
      return result;
    }
  }

  else if ((*a1 & 0xFFFFFFFFFFFFLL) == 0)
  {
    return result;
  }

  v5 = *(v1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_loggedDeviceLock);
  [v5 lock];
  sub_25210A8B8(v1, a1);

  return [v5 unlock];
}

uint64_t sub_25210A8B8(uint64_t a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_loggedDevices;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v7 = *a2;
  v6 = a2[1];

  v8 = sub_252112E30(v7, v6, v5);

  if (v8)
  {
    v19 = v7;
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v10 = sub_25214198C();
    __swift_project_value_buffer(v10, qword_27F4CDE68);
    sub_25210AC9C(a2, v18);
    v11 = sub_25214196C();
    v12 = sub_252141FBC();
    sub_25210ACF8(a2);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18[0] = v17;
      *v13 = 136446466;
      v14 = sub_2521425DC();
      v16 = sub_2520A5448(v14, v15, v18);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_2520A5448(a2[2], a2[3], v18);
      _os_log_impl(&dword_25207E000, v11, v12, "[%{public}s] discovery events for %s will resume logging 💡", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v17, -1, -1);
      MEMORY[0x253099FD0](v13, -1, -1);
    }

    swift_beginAccess();
    sub_25212B444(v19, v6);
    swift_endAccess();
  }

  return result;
}

void sub_25210AB20()
{
  sub_25210AC44();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_25210AC44()
{
  if (!qword_27F4CE690)
  {
    sub_2521418EC();
    v0 = sub_25214212C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4CE690);
    }
  }
}

uint64_t sub_25210AD4C(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_25210ADAC(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

void sub_25210ADDC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

_BYTE *sub_25210AE50@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_25210AEE4(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_25210AFA4(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_25210B020(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

unint64_t sub_25210AEE4(_BYTE *a1, _BYTE *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2 - a1;
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  result = sub_2520D7D40(v5);
  __dst = result;
  v12 = v7;
  v14 = v8;
  v13 = v9;
  if (a1 && a2 != a1)
  {
    memcpy(&__dst, a1, v4);
    result = __dst;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25210AFA4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_25214176C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_25214172C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_25214180C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_25210B020(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_25214176C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_25214172C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25210B0EC()
{
  MEMORY[0x25309A090](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25210B134(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2520CB598(a1, a2);
  }

  return a1;
}

uint64_t sub_25210B148(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE758, &qword_252146810);
  v10 = sub_2520A2F1C(qword_27F4CE760, &qword_27F4CE758, &qword_252146810);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_25210AE50(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

uint64_t sub_25210B224(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2520CBC7C(a1, a2);
  }

  return a1;
}

id sub_25210B238@<X0>(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__connectedDiscovery);
  *a1 = v2;
  return v2;
}

id sub_25210B2A4@<X0>(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__peripheral);
  *a1 = v2;
  return v2;
}

uint64_t objectdestroy_168Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25210B320@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = swift_weakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_25210B378@<X0>(_OWORD *a1@<X8>)
{
  v2 = (*(v1 + 16) + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__connectedCBDevice);
  v10[0] = *v2;
  v4 = v2[2];
  v3 = v2[3];
  v5 = v2[1];
  *&v11[12] = *(v2 + 60);
  v10[2] = v4;
  *v11 = v3;
  v10[1] = v5;
  v6 = v2[3];
  a1[2] = v2[2];
  a1[3] = v6;
  *(a1 + 60) = *(v2 + 60);
  v7 = v2[1];
  *a1 = *v2;
  a1[1] = v7;
  return sub_2520A2D9C(v10, &v9, &qword_27F4CE6F0, &qword_2521467A0);
}

uint64_t sub_25210B424()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25210B45C(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = a1[3];
  v7[2] = a1[2];
  v8[0] = v4;
  *(v8 + 12) = *(a1 + 60);
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  return v2(v7);
}

uint64_t sub_25210B4A8()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

id sub_25210B4F8@<X0>(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__centralMgr);
  *a1 = v2;
  return v2;
}

uint64_t sub_25210B534()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_25210B574()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__peripheral);
  *(v1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__peripheral) = v2;
  v3 = v2;
}

uint64_t sub_25210B5C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_25210B614()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__centralMgr);
  *(v1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__centralMgr) = v2;
  v3 = v2;
}

uint64_t sub_25210B6D8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25210B774(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

id sub_25210B7C4@<X0>(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__queue);
  *a1 = v2;
  return v2;
}

BOOL sub_25210B830(uint64_t a1)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = sub_252141B9C();
    v6 = v5;

    if (v4 == 0xD00000000000002ALL && 0x800000025214B260 == v6)
    {

      return 1;
    }

    v8 = sub_25214247C();

    if (v8)
    {
      return 1;
    }
  }

  return (*(a1 + 51) & 1) != 0 && *(a1 + 50) == 1;
}

uint64_t objectdestroy_280Tm()
{
  if (*(v0 + 32))
  {

    v1 = *(v0 + 48);

    v2 = *(v0 + 88);
  }

  return MEMORY[0x2821FE8E8](v0, 100, 7);
}

uint64_t sub_25210BA1C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE700, &qword_2521467B0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_2521418EC();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25210BB3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE700, &qword_2521467B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25210BBAC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE700, &qword_2521467B0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_2520F848C(v2, v3);
}

uint64_t sub_25210BC1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE700, &qword_2521467B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_25210BC8C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_2521418EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v129 = v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v131 = v121 - v9;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE750, &qword_252146808);
  v10 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128);
  v134 = v121 - v11;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE700, &qword_2521467B0);
  v12 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127);
  v125 = v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v121 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v121 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = v121 - v22;
  v137 = a1;
  v24 = [a1 name];
  if (v24)
  {
    v25 = v24;
    v135 = sub_252141B9C();
    v27 = v26;
  }

  else
  {
    v27 = 0xEE0029656D616E20;
    v135 = 0x676E697373696D28;
  }

  if (qword_27F4CD7A8 != -1)
  {
    v24 = swift_once();
  }

  if (byte_27F4D3491 == 1)
  {
    v126 = v23;
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v28 = sub_25214198C();
    __swift_project_value_buffer(v28, qword_27F4CDE68);

    v29 = sub_25214196C();
    v30 = sub_252141FBC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v124 = v19;
      v32 = v31;
      v33 = swift_slowAlloc();
      v133 = v27;
      v34 = v33;
      aBlock[0] = v33;
      *v32 = 136446466;
      v35 = sub_2521425DC();
      v37 = sub_2520A5448(v35, v36, aBlock);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_2520A5448(v135, v133, aBlock);
      _os_log_impl(&dword_25207E000, v29, v30, "[%{public}s] centralManager didConnect begin peripheral %s", v32, 0x16u);
      swift_arrayDestroy();
      v38 = v34;
      v27 = v133;
      MEMORY[0x253099FD0](v38, -1, -1);
      v19 = v124;
      MEMORY[0x253099FD0](v32, -1, -1);
    }

    v23 = v126;
  }

  v39 = *&v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_notifyLostWaitTask];
  v40 = &OBJC_IVAR____TtC11HearingTest12HTTonePlayer_playingTone;
  v132 = v4;
  v130 = v5;
  if (!v39)
  {
    v52 = &unk_27F4D3000;
    goto LABEL_28;
  }

  v122 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_notifyLostWaitTask;
  v123 = v16;
  v133 = v27;
  v41 = [v137 identifier];
  sub_2521418CC();

  v42 = *(v5 + 56);
  v121[1] = v5 + 56;
  v121[0] = v42;
  v43 = v42(v23, 0, 1, v4);
  v44 = *&v2[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
  MEMORY[0x28223BE20](v43);
  v126 = v2;
  v121[-2] = v2;
  sub_25214200C();
  v127 = 0;
  v45 = *(v128 + 48);
  v46 = v23;
  v47 = v23;
  v48 = v134;
  sub_2520A2D9C(v46, v134, &qword_27F4CE700, &qword_2521467B0);
  sub_2520A2D9C(v19, v48 + v45, &qword_27F4CE700, &qword_2521467B0);
  v49 = *(v5 + 48);
  if (v49(v48, 1, v4) != 1)
  {
    v124 = v19;
    v53 = v123;
    sub_2520A2D9C(v48, v123, &qword_27F4CE700, &qword_2521467B0);
    if (v49(v48 + v45, 1, v4) != 1)
    {
      v54 = v131;
      (*(v5 + 32))(v131, v48 + v45, v4);
      sub_252110218(&qword_27F4CE748, MEMORY[0x277CC95F0]);
      v55 = sub_252141B5C();
      v56 = *(v5 + 8);
      v56(v54, v4);
      sub_2520A2584(v124, &qword_27F4CE700, &qword_2521467B0);
      sub_2520A2584(v47, &qword_27F4CE700, &qword_2521467B0);
      v56(v53, v4);
      v40 = &OBJC_IVAR____TtC11HearingTest12HTTonePlayer_playingTone;
      v24 = sub_2520A2584(v48, &qword_27F4CE700, &qword_2521467B0);
      v27 = v133;
      v52 = &unk_27F4D3000;
      v2 = v126;
      if ((v55 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_21;
    }

    sub_2520A2584(v124, &qword_27F4CE700, &qword_2521467B0);
    v50 = v134;
    sub_2520A2584(v47, &qword_27F4CE700, &qword_2521467B0);
    (*(v5 + 8))(v53, v4);
    v27 = v133;
LABEL_19:
    v24 = sub_2520A2584(v50, &qword_27F4CE750, &qword_252146808);
    v52 = &unk_27F4D3000;
    v2 = v126;
    goto LABEL_28;
  }

  sub_2520A2584(v19, &qword_27F4CE700, &qword_2521467B0);
  v50 = v134;
  sub_2520A2584(v47, &qword_27F4CE700, &qword_2521467B0);
  v51 = v49(v50 + v45, 1, v4);
  v27 = v133;
  if (v51 != 1)
  {
    goto LABEL_19;
  }

  sub_2520A2584(v50, &qword_27F4CE700, &qword_2521467B0);
  v52 = &unk_27F4D3000;
  v2 = v126;
LABEL_21:
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v57 = sub_25214198C();
  __swift_project_value_buffer(v57, qword_27F4CDE68);

  v58 = sub_25214196C();
  v59 = sub_252141FBC();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    aBlock[0] = v61;
    *v60 = 136446466;
    v62 = sub_2521425DC();
    v64 = sub_2520A5448(v62, v63, aBlock);
    v2 = v126;

    *(v60 + 4) = v64;
    *(v60 + 12) = 2080;
    *(v60 + 14) = sub_2520A5448(v135, v27, aBlock);
    _os_log_impl(&dword_25207E000, v58, v59, "[%{public}s] centralManager cancelling lost peripheral notification for %s", v60, 0x16u);
    swift_arrayDestroy();
    v65 = v61;
    v40 = &OBJC_IVAR____TtC11HearingTest12HTTonePlayer_playingTone;
    MEMORY[0x253099FD0](v65, -1, -1);
    MEMORY[0x253099FD0](v60, -1, -1);
  }

  v66 = v122;
  if (*&v2[v122])
  {
    v67 = *&v2[v122];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE720, &unk_252143D40);
    sub_252141E4C();

    v68 = *&v2[v66];
  }

  *&v2[v66] = 0;

  v69 = v125;
  (v121[0])(v125, 1, 1, v132);
  v24 = sub_2520F8264(v69);
LABEL_28:
  v70 = *&v2[v40[158]];
  MEMORY[0x28223BE20](v24);
  v121[-2] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6B8, &unk_252146B20);
  sub_25214200C();
  v71 = aBlock[0];
  if (aBlock[0])
  {
    if (v52[1169] == 1)
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v72 = sub_25214198C();
      __swift_project_value_buffer(v72, qword_27F4CDE68);

      v73 = sub_25214196C();
      v74 = sub_252141FBC();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v134 = v71;
        v77 = v76;
        aBlock[0] = v76;
        *v75 = 136446466;
        v78 = sub_2521425DC();
        v80 = sub_2520A5448(v78, v79, aBlock);

        *(v75 + 4) = v80;
        v52 = &unk_27F4D3000;
        *(v75 + 12) = 2080;
        *(v75 + 14) = sub_2520A5448(v135, v27, aBlock);
        _os_log_impl(&dword_25207E000, v73, v74, "[%{public}s] peripheral %s exists", v75, 0x16u);
        swift_arrayDestroy();
        v81 = v77;
        v71 = v134;
        MEMORY[0x253099FD0](v81, -1, -1);
        MEMORY[0x253099FD0](v75, -1, -1);
      }
    }

    v82 = [v71 identifier];
    v83 = v131;
    sub_2521418CC();

    v84 = [v137 identifier];
    v85 = v129;
    sub_2521418CC();

    LOBYTE(v84) = sub_2521418BC();
    v86 = *(v130 + 8);
    v87 = v85;
    v88 = v132;
    v86(v87, v132);
    v86(v83, v88);
    if ((v84 & 1) == 0)
    {
      goto LABEL_41;
    }

    [v71 setDelegate_];
    v89 = swift_allocObject();
    *(v89 + 16) = v2;
    *(v89 + 24) = 0;
    v90 = swift_allocObject();
    *(v90 + 16) = sub_252110514;
    *(v90 + 24) = v89;
    aBlock[4] = sub_2520ADA58;
    aBlock[5] = v90;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_252083924;
    aBlock[3] = &block_descriptor_541;
    v91 = _Block_copy(aBlock);
    v92 = v2;

    dispatch_sync(v70, v91);
    _Block_release(v91);
    LOBYTE(v91) = swift_isEscapingClosureAtFileLocation();

    if (v91)
    {
      __break(1u);
    }

    else if (qword_27F4CD708 == -1)
    {
LABEL_38:
      v93 = sub_25214198C();
      __swift_project_value_buffer(v93, qword_27F4CDE68);

      v94 = sub_25214196C();
      v95 = sub_252141FBC();

      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        aBlock[0] = v97;
        *v96 = 136446466;
        v98 = sub_2521425DC();
        v100 = v71;
        v101 = sub_2520A5448(v98, v99, aBlock);

        *(v96 + 4) = v101;
        v71 = v100;
        *(v96 + 12) = 2080;
        *(v96 + 14) = sub_2520A5448(v135, v27, aBlock);
        _os_log_impl(&dword_25207E000, v94, v95, "[%{public}s] discovering Services from %s...", v96, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v97, -1, -1);
        MEMORY[0x253099FD0](v96, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE730, &qword_252144AE8);
      v102 = swift_allocObject();
      *(v102 + 16) = xmmword_2521446C0;
      *(v102 + 32) = [objc_opt_self() UUIDWithString_];
      sub_2520A5A94(0, &qword_27F4CE738, 0x277CBE0A0);
      v103 = sub_252141CCC();

      [v71 discoverServices_];

LABEL_41:
      goto LABEL_47;
    }

    swift_once();
    goto LABEL_38;
  }

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v104 = sub_25214198C();
  __swift_project_value_buffer(v104, qword_27F4CDE68);

  v105 = sub_25214196C();
  v106 = sub_252141FBC();

  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    aBlock[0] = v108;
    *v107 = 136446466;
    v109 = sub_2521425DC();
    v111 = sub_2520A5448(v109, v110, aBlock);

    *(v107 + 4) = v111;
    *(v107 + 12) = 2080;
    *(v107 + 14) = sub_2520A5448(v135, v27, aBlock);
    _os_log_impl(&dword_25207E000, v105, v106, "[%{public}s] peripheral %s doesn't exist", v107, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v108, -1, -1);
    MEMORY[0x253099FD0](v107, -1, -1);
  }

LABEL_47:
  if (v52[1169] == 1)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v112 = sub_25214198C();
    __swift_project_value_buffer(v112, qword_27F4CDE68);

    v113 = sub_25214196C();
    v114 = sub_252141FBC();

    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      aBlock[0] = v116;
      *v115 = 136446466;
      v117 = sub_2521425DC();
      v119 = sub_2520A5448(v117, v118, aBlock);

      *(v115 + 4) = v119;
      *(v115 + 12) = 2080;
      v120 = sub_2520A5448(v135, v27, aBlock);

      *(v115 + 14) = v120;
      _os_log_impl(&dword_25207E000, v113, v114, "[%{public}s] centralManager end didConnect peripheral %s", v115, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v116, -1, -1);
      MEMORY[0x253099FD0](v115, -1, -1);
    }

    else
    {
    }
  }

  else
  {
  }
}

void sub_25210CEC4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE740, &qword_2521467E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v77 = &v75 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE700, &qword_2521467B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v76 = &v75 - v10;
  v11 = sub_2521418EC();
  v81 = *(v11 - 8);
  v12 = *(v81 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v75 - v17;
  v82 = a1;
  v19 = [a1 name];
  if (v19)
  {
    v20 = v19;
    v80 = sub_252141B9C();
    v22 = v21;
  }

  else
  {
    v22 = 0xEE0029656D616E20;
    v80 = 0x676E697373696D28;
  }

  v23 = *(v2 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue);
  MEMORY[0x28223BE20](v19);
  *(&v75 - 2) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6B8, &unk_252146B20);
  sub_25214200C();
  v24 = v83;
  if (v83)
  {
    v78 = v22;
    v25 = ObjectType;
    v26 = [v82 identifier];
    sub_2521418CC();

    v79 = v24;
    v27 = [v24 identifier];
    sub_2521418CC();

    sub_252110218(&qword_27F4CE748, MEMORY[0x277CC95F0]);
    LOBYTE(v27) = sub_252141B5C();
    v28 = *(v81 + 8);
    v28(v14, v11);
    v29 = (v28)(v18, v11);
    if (v27)
    {
      MEMORY[0x28223BE20](v29);
      *(&v75 - 2) = v2;
      sub_25214200C();
      if (v83)
      {
        v30 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_notifyLostWaitTask;
        v31 = v78;
        if (*(v2 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_notifyLostWaitTask))
        {
          if (qword_27F4CD708 != -1)
          {
            swift_once();
          }

          v32 = sub_25214198C();
          __swift_project_value_buffer(v32, qword_27F4CDE68);
          v33 = sub_25214196C();
          v34 = sub_252141FBC();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            v83 = v75;
            *v35 = 136446210;
            v36 = sub_2521425DC();
            v38 = sub_2520A5448(v36, v37, &v83);

            *(v35 + 4) = v38;
            _os_log_impl(&dword_25207E000, v33, v34, "[%{public}s] centralManager cancelling previous didDisconnectPeripheral", v35, 0xCu);
            v39 = v75;
            __swift_destroy_boxed_opaque_existential_0(v75);
            MEMORY[0x253099FD0](v39, -1, -1);
            MEMORY[0x253099FD0](v35, -1, -1);
          }

          if (*(v2 + v30))
          {
            v40 = *(v2 + v30);

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE720, &unk_252143D40);
            sub_252141E4C();

            v41 = *(v2 + v30);
          }

          *(v2 + v30) = 0;
        }

        v67 = [v82 identifier];
        v68 = v76;
        sub_2521418CC();

        (*(v81 + 56))(v68, 0, 1, v11);
        sub_2520F8264(v68);
        v69 = sub_252141E3C();
        v70 = v77;
        (*(*(v69 - 8) + 56))(v77, 1, 1, v69);
        v71 = swift_allocObject();
        v71[2] = 0;
        v71[3] = 0;
        v71[4] = v80;
        v71[5] = v31;
        v71[6] = v2;
        v71[7] = v25;
        v72 = v2;
        v73 = sub_252102548(0, 0, v70, &unk_252146800, v71);

        v74 = *(v2 + v30);
        *(v2 + v30) = v73;

        return;
      }

      v61 = v78;
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v62 = sub_25214198C();
      __swift_project_value_buffer(v62, qword_27F4CDE68);

      v52 = sub_25214196C();
      v53 = sub_252141FBC();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v83 = v55;
        *v54 = 136446466;
        v63 = sub_2521425DC();
        v65 = sub_2520A5448(v63, v64, &v83);

        *(v54 + 4) = v65;
        *(v54 + 12) = 2080;
        v66 = sub_2520A5448(v80, v61, &v83);

        *(v54 + 14) = v66;
        v60 = "[%{public}s] centralManager didDisconnectPeripheral ignoring peripheral before hearing test start %s 👻";
        goto LABEL_27;
      }
    }

    else
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v50 = sub_25214198C();
      __swift_project_value_buffer(v50, qword_27F4CDE68);
      v51 = v78;

      v52 = sub_25214196C();
      v53 = sub_252141FBC();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v83 = v55;
        *v54 = 136446466;
        v56 = sub_2521425DC();
        v58 = sub_2520A5448(v56, v57, &v83);

        *(v54 + 4) = v58;
        *(v54 + 12) = 2080;
        v59 = sub_2520A5448(v80, v51, &v83);

        *(v54 + 14) = v59;
        v60 = "[%{public}s] centralManager didDisconnectPeripheral ignoring unknown peripheral %s";
LABEL_27:
        _os_log_impl(&dword_25207E000, v52, v53, v60, v54, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v55, -1, -1);
        MEMORY[0x253099FD0](v54, -1, -1);
LABEL_29:

        return;
      }
    }

    goto LABEL_29;
  }

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v42 = sub_25214198C();
  __swift_project_value_buffer(v42, qword_27F4CDE68);
  v43 = sub_25214196C();
  v44 = sub_252141FAC();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v83 = v46;
    *v45 = 136446210;
    v47 = sub_2521425DC();
    v49 = sub_2520A5448(v47, v48, &v83);

    *(v45 + 4) = v49;
    _os_log_impl(&dword_25207E000, v43, v44, "[%{public}s] centralManager didDisconnectPeripheral doesn't have a peripheral yet", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x253099FD0](v46, -1, -1);
    MEMORY[0x253099FD0](v45, -1, -1);
  }
}

void sub_25210D89C(void *a1, void *a2)
{
  v3 = v2;
  v176 = a2;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE740, &qword_2521467E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v164 - v8;
  v10 = sub_2521418EC();
  v174 = *(v10 - 8);
  isa = v174[8].isa;
  MEMORY[0x28223BE20](v10);
  v173 = &v164 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v171 = a1;
  v172 = &v164 - v15;
  v16 = [a1 name];
  if (v16)
  {
    v17 = v16;
    v170 = sub_252141B9C();
    v19 = v18;
  }

  else
  {
    v19 = 0xEE0029656D616E20;
    v170 = 0x676E697373696D28;
  }

  if (qword_27F4CD7A8 != -1)
  {
    v16 = swift_once();
  }

  v175 = v19;
  if (byte_27F4D3491 == 1)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v20 = sub_25214198C();
    __swift_project_value_buffer(v20, qword_27F4CDE68);

    v21 = v176;
    v22 = sub_25214196C();
    v23 = sub_252141FBC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      v168 = swift_slowAlloc();
      aBlock = v168;
      *v24 = 136446722;
      v25 = sub_2521425DC();
      v27 = sub_2520A5448(v25, v26, &aBlock);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_2520A5448(v170, v175, &aBlock);
      *(v24 + 22) = 2112;
      *(v24 + 24) = v21;
      v28 = v167;
      *v167 = v21;
      v29 = v21;
      _os_log_impl(&dword_25207E000, v22, v23, "[%{public}s] peripheral %s didUpdateValueFor %@.", v24, 0x20u);
      sub_2520A2584(v28, &unk_27F4CE080, &qword_252144E30);
      MEMORY[0x253099FD0](v28, -1, -1);
      v30 = v168;
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v30, -1, -1);
      MEMORY[0x253099FD0](v24, -1, -1);
    }
  }

  v31 = *&v3[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
  MEMORY[0x28223BE20](v16);
  *(&v164 - 2) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6B8, &unk_252146B20);
  sub_25214200C();
  v32 = aBlock;
  if (!aBlock)
  {

    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v46 = sub_25214198C();
    __swift_project_value_buffer(v46, qword_27F4CDE68);
    v47 = sub_25214196C();
    v48 = sub_252141FAC();
    if (!os_log_type_enabled(v47, v48))
    {
      goto LABEL_40;
    }

    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    aBlock = v50;
    *v49 = 136446210;
    v51 = sub_2521425DC();
    v53 = sub_2520A5448(v51, v52, &aBlock);

    *(v49 + 4) = v53;
    v54 = "[%{public}s] Ignoring characteristic, we don't have a peripheral yet";
LABEL_39:
    _os_log_impl(&dword_25207E000, v47, v48, v54, v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x253099FD0](v50, -1, -1);
    MEMORY[0x253099FD0](v49, -1, -1);
LABEL_40:

    return;
  }

  v168 = 0;
  v169 = v9;
  v33 = ObjectType;
  v34 = [v171 identifier];
  v35 = v172;
  sub_2521418CC();

  v36 = [v32 identifier];
  v37 = v173;
  sub_2521418CC();

  sub_252110218(&qword_27F4CE748, MEMORY[0x277CC95F0]);
  LOBYTE(v36) = sub_252141B5C();
  v38 = v174[1].isa;
  (v38)(v37, v10);
  (v38)(v35, v10);
  if ((v36 & 1) == 0)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v55 = sub_25214198C();
    __swift_project_value_buffer(v55, qword_27F4CDE68);
    v56 = v175;

    v57 = sub_25214196C();
    v58 = sub_252141FAC();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      aBlock = v60;
      *v59 = 136446466;
      v61 = sub_2521425DC();
      v63 = sub_2520A5448(v61, v62, &aBlock);

      *(v59 + 4) = v63;
      *(v59 + 12) = 2080;
      v64 = sub_2520A5448(v170, v56, &aBlock);

      *(v59 + 14) = v64;
      _os_log_impl(&dword_25207E000, v57, v58, "[%{public}s] Ignoring characteristic, uknown peripheral %s", v59, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v60, -1, -1);
      MEMORY[0x253099FD0](v59, -1, -1);
    }

    else
    {
    }

    return;
  }

  v173 = v3;

  v39 = [v176 UUID];
  v40 = [v39 UUIDString];

  v41 = sub_252141B9C();
  v43 = v42;

  v44 = v33;
  if (v41 == 0xD000000000000024 && 0x8000000252149ED0 == v43)
  {
    v45 = v169;
LABEL_17:

    goto LABEL_27;
  }

  v65 = sub_25214247C();

  v45 = v169;
  if ((v65 & 1) == 0)
  {
    v98 = [v176 UUID];
    v99 = [v98 UUIDString];

    v100 = sub_252141B9C();
    v102 = v101;

    if (v100 == 0xD000000000000024 && 0x800000025214B230 == v102)
    {
      goto LABEL_17;
    }

    v103 = sub_25214247C();

    if ((v103 & 1) == 0)
    {

      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v104 = sub_25214198C();
      __swift_project_value_buffer(v104, qword_27F4CDE68);
      v47 = sub_25214196C();
      v48 = sub_252141FAC();
      if (!os_log_type_enabled(v47, v48))
      {
        goto LABEL_40;
      }

      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      aBlock = v50;
      *v49 = 136446210;
      v105 = sub_2521425DC();
      v107 = sub_2520A5448(v105, v106, &aBlock);

      *(v49 + 4) = v107;
      v54 = "[%{public}s] Characteristic UUID doesn't match";
      goto LABEL_39;
    }
  }

LABEL_27:
  v66 = [v176 value];
  if (!v66)
  {

    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v94 = sub_25214198C();
    __swift_project_value_buffer(v94, qword_27F4CDE68);
    v47 = sub_25214196C();
    v48 = sub_252141FAC();
    if (!os_log_type_enabled(v47, v48))
    {
      goto LABEL_40;
    }

    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    aBlock = v50;
    *v49 = 136446210;
    v95 = sub_2521425DC();
    v97 = sub_2520A5448(v95, v96, &aBlock);

    *(v49 + 4) = v97;
    v54 = "[%{public}s] Data unknown";
    goto LABEL_39;
  }

  v174 = v31;
  v67 = v66;
  v68 = sub_25214184C();
  v70 = v69;

  if (byte_27F4D3491 == 1)
  {
    v71 = v44;
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v72 = sub_25214198C();
    __swift_project_value_buffer(v72, qword_27F4CDE68);
    v73 = v176;
    sub_2520CBC7C(v68, v70);
    v74 = sub_25214196C();
    v75 = sub_252141FBC();

    sub_2520CB598(v68, v70);
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      v177 = v171;
      *v76 = 136446722;
      v166 = v71;
      v77 = sub_2521425DC();
      v79 = sub_2520A5448(v77, v78, &v177);

      *(v76 + 4) = v79;
      v172 = v68;
      *(v76 + 12) = 2080;
      v80 = [v73 UUID];
      v81 = [v80 UUIDString];

      v82 = sub_252141B9C();
      v84 = v83;

      v85 = sub_2520A5448(v82, v84, &v177);

      *(v76 + 14) = v85;
      *(v76 + 22) = 2080;
      v86 = v168;
      v87 = sub_2520F79EC(v172, v70);
      v168 = v86;
      aBlock = v87;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6E0, &qword_252144530);
      sub_2520A2F1C(&qword_27F4CDE60, &qword_27F4CE6E0, &qword_252144530);
      v88 = sub_252141B3C();
      v90 = v89;

      aBlock = 30768;
      v179 = 0xE200000000000000;
      MEMORY[0x253098DA0](v88, v90);
      v68 = v172;

      v91 = sub_2520A5448(aBlock, v179, &v177);

      *(v76 + 24) = v91;
      _os_log_impl(&dword_25207E000, v74, v75, "[%{public}s] UUID %s data %s", v76, 0x20u);
      v92 = v171;
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v92, -1, -1);
      v93 = v76;
      v45 = v169;
      MEMORY[0x253099FD0](v93, -1, -1);

      v44 = v166;
    }

    else
    {

      v44 = v71;
    }
  }

  v108 = [v176 UUID];
  v109 = [v108 UUIDString];

  v110 = sub_252141B9C();
  v112 = v111;

  if ((v110 != 0xD000000000000024 || 0x8000000252149ED0 != v112) && (sub_25214247C() & 1) == 0)
  {

    if (v110 == 0xD000000000000024 && 0x800000025214B230 == v112)
    {
    }

    else
    {
      v140 = sub_25214247C();

      if ((v140 & 1) == 0)
      {
LABEL_83:
        if (qword_27F4CD708 != -1)
        {
          swift_once();
        }

        v160 = sub_25214198C();
        __swift_project_value_buffer(v160, qword_27F4CDE68);
        v47 = sub_25214196C();
        v142 = sub_252141FAC();
        if (!os_log_type_enabled(v47, v142))
        {
          goto LABEL_88;
        }

        v143 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        aBlock = v144;
        *v143 = 136446210;
        v161 = sub_2521425DC();
        v163 = sub_2520A5448(v161, v162, &aBlock);

        *(v143 + 4) = v163;
        v148 = "[%{public}s] Cannot find a matching UUID for data";
LABEL_87:
        _os_log_impl(&dword_25207E000, v47, v142, v148, v143, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v144);
        MEMORY[0x253099FD0](v144, -1, -1);
        MEMORY[0x253099FD0](v143, -1, -1);
LABEL_88:
        sub_2520CB598(v68, v70);
        goto LABEL_40;
      }
    }

    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v141 = sub_25214198C();
    __swift_project_value_buffer(v141, qword_27F4CDE68);
    v47 = sub_25214196C();
    v142 = sub_252141FBC();
    if (!os_log_type_enabled(v47, v142))
    {
      goto LABEL_88;
    }

    v143 = swift_slowAlloc();
    v144 = swift_slowAlloc();
    aBlock = v144;
    *v143 = 136446210;
    v145 = sub_2521425DC();
    v147 = sub_2520A5448(v145, v146, &aBlock);

    *(v143 + 4) = v147;
    v148 = "[%{public}s] Test tone info - not for read/ack";
    goto LABEL_87;
  }

  MEMORY[0x28223BE20](v113);
  v114 = v173;
  *(&v164 - 2) = v173;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4CE698, &unk_252146788);
  sub_25214200C();
  v115 = v179;
  v116 = &loc_252143000;
  if (v179 >> 60 == 15)
  {

    goto LABEL_81;
  }

  v117 = aBlock;
  v118 = sub_2520F7D5C(v68, v70);
  LODWORD(v172) = sub_2520F7D5C(v117, v115);
  if (byte_27F4D3491 == 1)
  {
    v176 = v117;
    v171 = v70;
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v119 = sub_25214198C();
    __swift_project_value_buffer(v119, qword_27F4CDE68);
    v120 = v114;
    v121 = v175;

    v45 = v120;
    v122 = sub_25214196C();
    v123 = sub_252141FBC();

    if (os_log_type_enabled(v122, v123))
    {
      LODWORD(v167) = v123;
      v168 = v122;
      v124 = v44;
      v125 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      aBlock = v165;
      *v125 = 136447234;
      v166 = v124;
      v126 = sub_2521425DC();
      v128 = sub_2520A5448(v126, v127, &aBlock);

      *(v125 + 4) = v128;
      *(v125 + 12) = 2080;
      v129 = sub_2520A5448(v170, v121, &aBlock);

      *(v125 + 14) = v129;
      *(v125 + 22) = 2080;
      if ((v172 & 0x100) != 0)
      {
LABEL_90:

        __break(1u);
        goto LABEL_91;
      }

      LOBYTE(v177) = v172;
      v130 = sub_25214244C();
      v132 = sub_2520A5448(v130, v131, &aBlock);

      *(v125 + 24) = v132;
      *(v125 + 32) = 2080;
      if ((v118 & 0x100) != 0)
      {
LABEL_91:

        __break(1u);
        return;
      }

      LOBYTE(v177) = v118;
      v133 = sub_25214244C();
      v135 = sub_2520A5448(v133, v134, &aBlock);

      *(v125 + 34) = v135;
      *(v125 + 42) = 1024;
      MEMORY[0x28223BE20](v136);
      *(&v164 - 2) = v45;
      sub_25214200C();

      *(v125 + 44) = v177;
      v137 = v168;
      _os_log_impl(&dword_25207E000, v168, v167, "[%{public}s] peripheral %s didUpdateValueFor Hearing Aid Mode: was %s now %s disabled %{BOOL}d", v125, 0x30u);
      v138 = v165;
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v138, -1, -1);
      MEMORY[0x253099FD0](v125, -1, -1);

      v44 = v166;
      v114 = v173;
      v45 = v169;
      v70 = v171;
      v116 = &loc_252143000;
      v117 = v176;
    }

    else
    {

      v45 = v169;
      v70 = v171;
      v116 = &loc_252143000;
      v117 = v176;
      if ((v118 & 0x100) != 0)
      {
LABEL_74:
        sub_25210B134(v117, v115);
        goto LABEL_81;
      }
    }
  }

  else
  {

    if ((v118 & 0x100) != 0)
    {
      goto LABEL_74;
    }
  }

  if (v118)
  {
    goto LABEL_74;
  }

  v176 = v117;
  MEMORY[0x28223BE20](v139);
  *(&v164 - 2) = v114;
  sub_25214200C();
  if ((aBlock & 1) == 0)
  {
    if ((v172 & 0x100) == 0 && !v172)
    {
      goto LABEL_79;
    }

    v149 = swift_allocObject();
    *(v149 + 16) = v114;
    *(v149 + 24) = 0;
    v150 = swift_allocObject();
    *(v150 + 16) = sub_25210FF0C;
    *(v150 + 24) = v149;
    v182 = sub_2520ADA58;
    v183 = v150;
    aBlock = MEMORY[0x277D85DD0];
    v179 = 1107296256;
    v180 = sub_252083924;
    v181 = &block_descriptor_490;
    v151 = _Block_copy(&aBlock);
    v152 = v114;

    dispatch_sync(v174, v151);
    _Block_release(v151);
    LOBYTE(v151) = swift_isEscapingClosureAtFileLocation();

    if ((v151 & 1) == 0)
    {
LABEL_79:
      v153 = sub_252141E3C();
      (*(*(v153 - 8) + 56))(v45, 1, 1, v153);
      v154 = swift_allocObject();
      v154[2] = 0;
      v154[3] = 0;
      v154[4] = v114;
      v154[5] = v44;
      v155 = v114;
      sub_252113050(0, 0, v45, &unk_2521467F0, v154);

      goto LABEL_80;
    }

    __break(1u);
    goto LABEL_90;
  }

LABEL_80:
  sub_25210B134(v176, v115);
  v116 = &loc_252143000;
LABEL_81:
  v156 = swift_allocObject();
  v156[2] = v114;
  v156[3] = v68;
  v156[4] = v70;
  v157 = swift_allocObject();
  *(v157 + 16) = sub_2521104C0;
  *(v157 + 24) = v156;
  v182 = sub_2520ADA58;
  v183 = v157;
  aBlock = MEMORY[0x277D85DD0];
  v179 = v116[326];
  v180 = sub_252083924;
  v181 = &block_descriptor_480;
  v158 = _Block_copy(&aBlock);
  sub_2520CBC7C(v68, v70);
  sub_2520CBC7C(v68, v70);
  v159 = v114;

  dispatch_sync(v174, v158);
  sub_2520CB598(v68, v70);
  _Block_release(v158);
  LOBYTE(v158) = swift_isEscapingClosureAtFileLocation();

  sub_2520CB598(v68, v70);
  if (v158)
  {
    __break(1u);
    goto LABEL_83;
  }
}

void sub_25210F044(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = [a1 name];
  if (v4)
  {
    v5 = v4;
    v6 = sub_252141B9C();
    v8 = v7;
  }

  else
  {
    v8 = 0xEE0029656D616E20;
    v6 = 0x676E697373696D28;
  }

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v9 = sub_25214198C();
  __swift_project_value_buffer(v9, qword_27F4CDE68);

  v10 = sub_25214196C();
  v11 = sub_252141FBC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v50 = v13;
    *v12 = 136446466;
    v14 = sub_2521425DC();
    v16 = sub_2520A5448(v14, v15, &v50);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = sub_2520A5448(v6, v8, &v50);

    *(v12 + 14) = v17;
    _os_log_impl(&dword_25207E000, v10, v11, "[%{public}s] peripheral didDiscoverServices for %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v13, -1, -1);
    MEMORY[0x253099FD0](v12, -1, -1);
  }

  else
  {
  }

  v18 = *(v2 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue);
  MEMORY[0x28223BE20](v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6B8, &unk_252146B20);
  sub_25214200C();
  v47 = v50;
  if (v50)
  {
    v20 = [v50 services];
    if (!v20)
    {
LABEL_25:

      return;
    }

    v21 = v20;
    sub_2520A5A94(0, &qword_27F4CE6C0, 0x277CBE098);
    v22 = sub_252141CDC();

    if (v22 >> 62)
    {
      v48 = sub_25214232C();
      if (v48)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v48 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v48)
      {
LABEL_13:
        sub_2520A5A94(0, &unk_27F4CE6D0, 0x277D82BB8);
        v49 = objc_opt_self();
        if (v48 < 1)
        {
          __break(1u);
          return;
        }

        v24 = 0;
        v25 = v22 & 0xC000000000000001;
        v26 = *MEMORY[0x277CBDF60];
        *&v23 = 136446722;
        v45 = v23;
        v46 = *MEMORY[0x277CBDF60];
        do
        {
          if (v25)
          {
            v34 = MEMORY[0x2530993D0](v24, v22);
          }

          else
          {
            v34 = *(v22 + 8 * v24 + 32);
          }

          v33 = v34;
          v35 = [v34 UUID];
          v36 = [v49 UUIDWithString_];
          v37 = sub_25214210C();

          if (v37)
          {
            v38 = sub_25214196C();
            v39 = sub_252141FBC();
            if (os_log_type_enabled(v38, v39))
            {
              v40 = swift_slowAlloc();
              v41 = swift_slowAlloc();
              v50 = v41;
              *v40 = v45;
              v42 = sub_2521425DC();
              v44 = sub_2520A5448(v42, v43, &v50);

              *(v40 + 4) = v44;
              *(v40 + 12) = 2080;
              *(v40 + 14) = sub_2520A5448(0xD000000000000024, 0x8000000252149ED0, &v50);
              *(v40 + 22) = 2080;
              *(v40 + 24) = sub_2520A5448(0xD000000000000024, 0x800000025214B230, &v50);
              _os_log_impl(&dword_25207E000, v38, v39, "[%{public}s] peripheral discoverCharacteristics for %s and %s.", v40, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x253099FD0](v41, -1, -1);
              MEMORY[0x253099FD0](v40, -1, -1);
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE730, &qword_252144AE8);
            v27 = swift_allocObject();
            *(v27 + 16) = xmmword_252146690;
            v28 = sub_252141B6C();
            v29 = [v49 UUIDWithString_];

            *(v27 + 32) = v29;
            v30 = sub_252141B6C();
            v31 = [v49 UUIDWithString_];

            *(v27 + 40) = v31;
            sub_2520A5A94(0, &qword_27F4CE738, 0x277CBE0A0);
            v32 = sub_252141CCC();

            [v47 discoverCharacteristics:v32 forService:v33];

            v33 = v32;
            v25 = v22 & 0xC000000000000001;
            v26 = v46;
          }

          ++v24;
        }

        while (v48 != v24);
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_25210F6BC(void *a1, void *a2)
{
  swift_getObjectType();
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v4 = sub_25214198C();
  __swift_project_value_buffer(v4, qword_27F4CDE68);
  v5 = a1;
  v6 = sub_25214196C();
  v7 = sub_252141FBC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v62 = v10;
    *v8 = 136446466;
    v11 = sub_2521425DC();
    v13 = sub_2520A5448(v11, v12, &v62);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v14 = v5;
    _os_log_impl(&dword_25207E000, v6, v7, "[%{public}s] didDiscoverCharacteristics For %@", v8, 0x16u);
    sub_2520A2584(v9, &unk_27F4CE080, &qword_252144E30);
    MEMORY[0x253099FD0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x253099FD0](v10, -1, -1);
    MEMORY[0x253099FD0](v8, -1, -1);
  }

  result = [a2 characteristics];
  if (!result)
  {
    return result;
  }

  v16 = result;
  sub_2520A5A94(0, &qword_27F4CE6C8, 0x277CBE000);
  v17 = sub_252141CDC();

  v18 = v17;
  if (v17 >> 62)
  {
    result = sub_25214232C();
    v18 = v17;
    if (result)
    {
      goto LABEL_8;
    }

LABEL_36:
  }

  result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_36;
  }

LABEL_8:
  if (result >= 1)
  {
    v19 = 0;
    v59 = v18 & 0xC000000000000001;
    v60 = result;
    v61 = v18;
    while (1)
    {
      if (v59)
      {
        v20 = MEMORY[0x2530993D0](v19);
      }

      else
      {
        v20 = *(v18 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = sub_25214196C();
      v23 = sub_252141FBC();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v62 = v26;
        *v24 = 136446466;
        v27 = sub_2521425DC();
        v29 = sub_2520A5448(v27, v28, &v62);

        *(v24 + 4) = v29;
        *(v24 + 12) = 2112;
        *(v24 + 14) = v21;
        *v25 = v21;
        v30 = v21;
        _os_log_impl(&dword_25207E000, v22, v23, "[%{public}s] Found characteristics - %@", v24, 0x16u);
        sub_2520A2584(v25, &unk_27F4CE080, &qword_252144E30);
        MEMORY[0x253099FD0](v25, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x253099FD0](v26, -1, -1);
        MEMORY[0x253099FD0](v24, -1, -1);
      }

      v31 = [v21 UUID];
      v32 = [v31 UUIDString];

      v33 = sub_252141B9C();
      v35 = v34;

      v36 = v33 == 0xD000000000000024 && 0x8000000252149ED0 == v35;
      if (v36 || (sub_25214247C() & 1) != 0)
      {

        v37 = sub_25214196C();
        v38 = sub_252141FBC();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v62 = v40;
          *v39 = 136446210;
          v41 = sub_2521425DC();
          v43 = sub_2520A5448(v41, v42, &v62);

          *(v39 + 4) = v43;
          _os_log_impl(&dword_25207E000, v37, v38, "[%{public}s] will read Hearing Test", v39, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v40);
          MEMORY[0x253099FD0](v40, -1, -1);
          MEMORY[0x253099FD0](v39, -1, -1);
        }

        sub_252103A54(0xD000000000000024, 0x8000000252149ED0);
        goto LABEL_11;
      }

      if (v33 == 0xD000000000000024 && 0x800000025214B230 == v35)
      {
        break;
      }

      v44 = sub_25214247C();

      if (v44)
      {
        goto LABEL_28;
      }

      v45 = sub_25214196C();
      v55 = sub_252141FAC();
      if (os_log_type_enabled(v45, v55))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v62 = v48;
        *v47 = 136446210;
        v56 = sub_2521425DC();
        v58 = sub_2520A5448(v56, v57, &v62);

        *(v47 + 4) = v58;
        v52 = v55;
        v53 = v45;
        v54 = "[%{public}s] Cannot find a matching UUID for data";
        goto LABEL_32;
      }

LABEL_33:

LABEL_11:
      ++v19;
      v18 = v61;
      if (v60 == v19)
      {
        goto LABEL_36;
      }
    }

LABEL_28:
    v45 = sub_25214196C();
    v46 = sub_252141FBC();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v62 = v48;
      *v47 = 136446210;
      v49 = sub_2521425DC();
      v51 = sub_2520A5448(v49, v50, &v62);

      *(v47 + 4) = v51;
      v52 = v46;
      v53 = v45;
      v54 = "[%{public}s] Test tone info - not for read/ack";
LABEL_32:
      _os_log_impl(&dword_25207E000, v53, v52, v54, v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x253099FD0](v48, -1, -1);
      MEMORY[0x253099FD0](v47, -1, -1);
      goto LABEL_33;
    }

    goto LABEL_33;
  }

  __break(1u);
  return result;
}

uint64_t sub_25210FE10@<X0>(uint64_t *a1@<X8>)
{
  v2 = (*(v1 + 16) + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__HearingTestMode);
  v3 = *v2;
  v4 = v2[1];
  *a1 = *v2;
  a1[1] = v4;
  return sub_25210B224(v3, v4);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 32);
  if (v1 >> 60 != 15)
  {
    sub_2520CB598(*(v0 + 24), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25210FEA0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__HearingTestMode);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_25210B224(v1, v2);

  return sub_25210B134(v4, v5);
}

uint64_t sub_25210FF24()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25210FF64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2520DA018;

  return sub_252102D30(a1, v4, v5, v7, v6);
}

uint64_t sub_25211003C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_252110084(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2520DA018;

  return sub_252101C00(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_252110158@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__lostPeripheralIdentifier;
  swift_beginAccess();
  return sub_2520A2D9C(v3 + v4, a1, &qword_27F4CE700, &qword_2521467B0);
}

void sub_2521101CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__connectedDiscovery);
  *(v1 + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager__connectedDiscovery) = v2;
  v3 = v2;
}

uint64_t sub_252110218(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2521102C8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_252110310()
{
  v1 = v0[2];

  sub_2520CB598(v0[3], v0[4]);
  v2 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2521106E8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_252110744(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_25211078C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2521107E4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v18 = &v34 - v17;
  v19 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_252141F0C();
  if (!v26)
  {
    return sub_252141D2C();
  }

  v48 = v26;
  v52 = sub_25214229C();
  v39 = sub_2521422AC();
  sub_25214226C();
  result = sub_252141EFC();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_252141F6C();
      v30 = v18;
      v31 = v18;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_25214228C();
      result = sub_252141F1C();
      ++v28;
      v18 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252110C0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    v8 = swift_allocObject();
    v8[2] = a4;
    v8[3] = v7;
    v8[4] = a2;
    v8[5] = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE818, &qword_252146A08);
    sub_25214216C();
    sub_2520A2F1C(&qword_27F4CE820, &qword_27F4CE818, &qword_252146A08);
    sub_25214236C();

    return v9;
  }

  return result;
}

uint64_t sub_252110D1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {

    return MEMORY[0x277D84F90];
  }

  v2 = *(a1 + 32);
  v3 = 32;
  while (v1)
  {
    v4 = *(*(a1 + v3) + 16);
    v3 += 8;
    --v1;
    if (v4 != *(v2 + 16))
    {
      __break(1u);
      break;
    }
  }

  v6 = sub_2521122D0(a1);
  v7 = *(a1 + 16);

  v8 = *(v2 + 16);

  if ((v7 * v8) >> 64 == (v7 * v8) >> 63)
  {
    if (*(v6 + 16) == v7 * v8)
    {
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252110DEC()
{
  sub_252141D7C();
  sub_252141D7C();
  swift_getWitnessTable();
  v0 = sub_252141F3C();
  if (!v8)
  {

    v5 = sub_252141D2C();
    v6 = 0;
    v7 = 0;
    return sub_252111220(v5, v6, v7);
  }

  MEMORY[0x28223BE20](v0);
  swift_getWitnessTable();
  result = sub_252141C5C();
  if (result)
  {

    swift_getWitnessTable();
    sub_252141C8C();
    sub_2521422BC();
    swift_getWitnessTable();
    v2 = sub_252141DAC();
    v3 = sub_252141D5C();

    v4 = sub_252141D5C();

    v5 = v2;
    v6 = v3;
    v7 = v4;
    return sub_252111220(v5, v6, v7);
  }

  __break(1u);
  return result;
}

void sub_25211100C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    sub_252110D1C(MEMORY[0x277D84F90]);
    return;
  }

  v7 = *(a1 + 32);
  v28 = a1 + 32;
  v8 = v4 - 1;
  if (v4 != 1)
  {
    if (v4 >= 5)
    {
      v9 = v8 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v10 = vdupq_n_s64(v7);
      v11 = (a1 + 56);
      v12 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = v10;
      do
      {
        v10 = vbslq_s8(vcgtq_s64(v10, v11[-1]), v10, v11[-1]);
        v13 = vbslq_s8(vcgtq_s64(v13, *v11), v13, *v11);
        v11 += 2;
        v12 -= 4;
      }

      while (v12);
      v14 = vbslq_s8(vcgtq_s64(v10, v13), v10, v13);
      v15 = vextq_s8(v14, v14, 8uLL).u64[0];
      v7 = vbsl_s8(vcgtd_s64(v14.i64[0], v15), *v14.i8, v15);
      if (v8 == (v8 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_13;
      }
    }

    else
    {
      v9 = 1;
    }

    v16 = v4 - v9;
    v17 = (a1 + 8 * v9 + 32);
    do
    {
      v19 = *v17++;
      v18 = v19;
      if (v7 <= v19)
      {
        v7 = v18;
      }

      --v16;
    }

    while (v16);
  }

LABEL_13:
  if (v7 >= a4)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v20 = a3 * v4;
  if ((a3 * v4) >> 64 != (a3 * v4) >> 63)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v20)
  {
    v21 = sub_252141D3C();
    *(v21 + 16) = v20;
    bzero((v21 + 32), 8 * v4 * a3);
    goto LABEL_19;
  }

  v21 = MEMORY[0x277D84F90];
  if (!*(MEMORY[0x277D84F90] + 16))
  {
LABEL_19:
    v22 = 0;
    v23 = v21 + 32;
    v25 = a3 < 0xFFFFFFFF80000000 || a4 < 0xFFFFFFFF80000000;
    while (1)
    {
      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (a3 > 0x7FFFFFFF)
      {
        goto LABEL_33;
      }

      if (a4 > 0x7FFFFFFF)
      {
        goto LABEL_34;
      }

      if (v25)
      {
        goto LABEL_35;
      }

      if (v4 >> 31)
      {
        goto LABEL_36;
      }

      v27 = *(v28 + 8 * v22);
      cblas_dcopy_NEWLAPACK();
      v23 += 8;
      ++v22;
      if (v26 == v4)
      {
        return;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_40:
  __break(1u);
}

uint64_t sub_252111220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_252141D5C();
  if ((a2 * a3) >> 64 == (a2 * a3) >> 63)
  {
    if (result == a2 * a3)
    {
      return a1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252111284(uint64_t a1, uint64_t a2)
{
  result = a1 * a2;
  if ((a1 * a2) >> 64 != result >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2521112A0(uint64_t (*a1)(unint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  sub_252141D7C();
  sub_252141D1C();
  v7 = *v3;
  if (_swift_isClassOrObjCExistentialType())
  {
    v8 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v8 + 16);
  if (_swift_isClassOrObjCExistentialType())
  {
    v10 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v10 = v7;
  }

  v11 = v10 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80));
  v14 = v11;
  v15 = v9;
  result = a1(&v14);
  v13 = v14;
  if (v4)
  {
    if (!v14)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (v11 != v14)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v13 = v15;
    if (v15 == v9)
    {
      return result;
    }

    __break(1u);
  }

  if (!v13)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  if (v11 != v13)
  {
    goto LABEL_17;
  }

  if (v15 != v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_2521113E4()
{
  v0 = sub_25214244C();
  MEMORY[0x253098DA0](v0);

  MEMORY[0x253098DA0](41931, 0xA200000000000000);
  v1 = sub_25214244C();
  MEMORY[0x253098DA0](v1);

  MEMORY[0x253098DA0](41, 0xE100000000000000);
  return 40;
}

uint64_t sub_2521114E0(uint64_t a1, uint64_t a2)
{
  sub_25214255C();
  MEMORY[0x253099700](a1);
  MEMORY[0x253099700](a2);
  return sub_25214258C();
}

uint64_t sub_252111550()
{
  sub_25214255C();
  sub_2521114AC(v2, *v0, v0[1]);
  return sub_25214258C();
}

uint64_t sub_2521115A4()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_2521113E4();
}

uint64_t sub_2521115AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_252141D5C();
  if ((a2 * a3) >> 64 != (a2 * a3) >> 63)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result != a2 * a3)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_2521115F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  result = *a1 * a2;
  if ((v4 * a2) >> 64 != result >> 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (__OFADD__(result, a2))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (result + a2 >= result)
  {
    result = sub_252141DBC();
    *a3 = result;
    a3[1] = v6;
    a3[2] = v7;
    a3[3] = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

BOOL sub_252111660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_252141D9C();
  v12 = a2 == a5 && a3 == a6;
  return (v10 & 1) != 0 && v12;
}

BOOL sub_2521116B8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return sub_252111660(*a1, a1[1], a1[2], *a2, a2[1], a2[2]);
}

uint64_t sub_2521116E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_252141D8C();
  MEMORY[0x253099700](a3);
  return MEMORY[0x253099700](a4);
}

uint64_t sub_252111730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25214255C();
  sub_252141D8C();
  MEMORY[0x253099700](a2);
  MEMORY[0x253099700](a3);
  return sub_25214258C();
}

uint64_t sub_2521117B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(a1 + 16);
  return sub_252111730(*v2, v2[1], v2[2]);
}

uint64_t sub_2521117D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(a2 + 16);
  return sub_2521116E0(a1, *v3, v3[1], v3[2]);
}

uint64_t sub_2521117E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  sub_25214255C();
  v6 = *(a2 + 16);
  sub_2521116E0(v8, *v3, v3[1], v3[2]);
  return sub_25214258C();
}

uint64_t sub_252111844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_25211165C(a1, *(a2 + 16));
  *a3 = result;
  a3[1] = v5;
  a3[2] = v6;
  return result;
}

uint64_t sub_252111874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a1;
  v42 = a4;
  v8 = sub_252141D7C();

  WitnessTable = swift_getWitnessTable();
  v11 = sub_2521107E4(sub_25211215C, v41, v8, MEMORY[0x277D83B88], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v10);

  v12 = sub_252085BA8(v11);
  v14 = v13;

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  v35 = v15;
  v45 = 0;
  v46 = 0xE000000000000000;
  MEMORY[0x253098DA0](0x2878697274614DLL, 0xE700000000000000);
  *&v43 = a2;
  *(&v43 + 1) = a3;
  type metadata accessor for Matrix.Shape();
  swift_getWitnessTable();
  sub_25214246C();
  MEMORY[0x253098DA0](173744172, 0xE400000000000000);
  v47 = v45;
  v48 = v46;
  v36 = a1;
  v37 = a2;
  v38 = a3;
  *&v43 = sub_252110C0C(a1, a2, a3, a4);
  *(&v43 + 1) = v16;
  *&v44 = v17;
  *(&v44 + 1) = v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4CE7E8, &qword_2521469F8);
  v39 = a4;
  v19 = sub_25214216C();
  sub_252112194();
  sub_2521422FC();
  sub_2521422CC();
  v34[8] = sub_2521422EC();
  v20 = sub_2521422DC();
  v21 = v43;
  if (v43)
  {
    v22 = v44;
    while (1)
    {
      v40 = v21;
      v43 = v21;
      v44 = v22;
      MEMORY[0x28223BE20](v20);
      v34[2] = v39;
      v34[3] = v36;
      v34[4] = v37;
      v34[5] = v38;
      v34[6] = v35;
      v25 = swift_getWitnessTable();
      result = sub_2521107E4(sub_252112274, v34, v19, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v25, MEMORY[0x277D84AC0], v26);
      v28 = result;
      v29 = *(result + 16);
      if (v29)
      {
        break;
      }

      v23 = 0;
      v24 = 0xE000000000000000;
LABEL_7:

      *&v43 = v23;
      *(&v43 + 1) = v24;

      MEMORY[0x253098DA0](10, 0xE100000000000000);

      MEMORY[0x253098DA0](v43, *(&v43 + 1));
      swift_unknownObjectRelease();

      v20 = sub_2521422DC();
      v21 = v43;
      v22 = v44;
      if (!v43)
      {
        goto LABEL_13;
      }
    }

    v23 = 0;
    v30 = 0;
    v31 = (result + 40);
    v24 = 0xE000000000000000;
    while (v30 < *(v28 + 16))
    {
      ++v30;
      v33 = *(v31 - 1);
      v32 = *v31;
      *&v43 = v23;
      *(&v43 + 1) = v24;

      MEMORY[0x253098DA0](v33, v32);

      MEMORY[0x253098DA0](8236, 0xE200000000000000);

      v24 = *(&v43 + 1);
      v23 = v43;
      v31 += 2;
      if (v29 == v30)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    MEMORY[0x253098DA0](2653, 0xE200000000000000);
    return v47;
  }

  return result;
}

uint64_t sub_252111CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAB0, &unk_252143BA0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_252143AC0;
  (*(v6 + 16))(v9, a1, a2);
  v11 = MEMORY[0x277D839F8];
  v12 = swift_dynamicCast();
  v13 = *&v17[1];
  v14 = MEMORY[0x277D83A80];
  *(v10 + 56) = v11;
  *(v10 + 64) = v14;
  if (!v12)
  {
    v13 = 0.0;
  }

  *(v10 + 32) = v13;
  sub_252141BAC();
  v15 = sub_252141BFC();

  *a3 = v15;
  return result;
}

uint64_t sub_252111E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAB0, &unk_252143BA0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_252143AC0;
  (*(v6 + 16))(v9, a1, a2);
  v11 = MEMORY[0x277D839F8];
  v12 = swift_dynamicCast();
  v13 = *&v19[1];
  v14 = MEMORY[0x277D83A80];
  *(v10 + 56) = v11;
  *(v10 + 64) = v14;
  if (!v12)
  {
    v13 = 0.0;
  }

  *(v10 + 32) = v13;
  sub_252141BAC();
  v15 = sub_2521128B0();
  v17 = v16;

  *a3 = v15;
  a3[1] = v17;
  return result;
}

uint64_t sub_252111FD8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  return sub_252110C04();
}

uint64_t sub_252112084(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

BOOL sub_252112108(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  v5 = sub_252141D5C();
  return v5 == sub_252141D5C();
}

unint64_t sub_252112194()
{
  result = qword_27F4CE7F0;
  if (!qword_27F4CE7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4CE7E8, &qword_2521469F8);
    sub_252112220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE7F0);
  }

  return result;
}

unint64_t sub_252112220()
{
  result = qword_27F4CE7F8;
  if (!qword_27F4CE7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE7F8);
  }

  return result;
}

uint64_t sub_252112274@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  return sub_252111E18(a1, v2[2], a2);
}

void *sub_25211229C(void *result, uint64_t a2, uint64_t a3)
{
  if (*result)
  {
    if (*result == a2)
    {
      if (result[1] == a3)
      {
        return sub_252141D7C();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2521122D0(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = result + 32;
  v5 = MEMORY[0x277D84F90];
  v6 = (MEMORY[0x277D84F90] + 32);
LABEL_3:
  v8 = *(v1 + 16);
  if (v3 != v8)
  {
    if (v3 >= v8)
    {
LABEL_31:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v9 = *(v4 + 8 * v3);

        if (v9)
        {
          v7 = *(v9 + 16);
          if (v7)
          {
            break;
          }
        }

        ++v3;
        v10 = *(v1 + 16);
        if (v3 == v10)
        {
          goto LABEL_27;
        }

        if (v3 >= v10)
        {
          goto LABEL_31;
        }
      }

      v11 = 0;
      ++v3;
      while (v11 < v7)
      {
        v12 = *(v9 + 8 * v11 + 32);
        if (!v2)
        {
          v13 = v5[3];
          if (((v13 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_34;
          }

          v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
          if (v14 <= 1)
          {
            v15 = 1;
          }

          else
          {
            v15 = v14;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
          v16 = swift_allocObject();
          v17 = _swift_stdlib_malloc_size(v16);
          v18 = v17 - 32;
          if (v17 < 32)
          {
            v18 = v17 - 25;
          }

          v19 = v18 >> 3;
          v16[2] = v15;
          v16[3] = 2 * (v18 >> 3);
          v20 = (v16 + 4);
          v21 = v5[3] >> 1;
          if (v5[2])
          {
            v22 = v5 + 4;
            if (v16 != v5 || v20 >= v22 + 8 * v21)
            {
              v23 = v18 >> 3;
              memmove(v16 + 4, v22, 8 * v21);
              v19 = v23;
            }

            v5[2] = 0;
          }

          v6 = (v20 + 8 * v21);
          v2 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - v21;

          v5 = v16;
        }

        v24 = __OFSUB__(v2--, 1);
        if (v24)
        {
          goto LABEL_33;
        }

        ++v11;
        *v6++ = v12;
        v7 = *(v9 + 16);
        if (v11 == v7)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_27:

  v25 = v5[3];
  if (v25 < 2)
  {
    return v5;
  }

  v26 = v25 >> 1;
  v24 = __OFSUB__(v26, v2);
  v27 = v26 - v2;
  if (!v24)
  {
    v5[2] = v27;
    return v5;
  }

LABEL_35:
  __break(1u);
  return result;
}

char *sub_2521124C0(char *result, char *a2, void *(*a3)(__int128 *__return_ptr, char **))
{
  v3 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v6 = result;
  if (v3)
  {
    if (v3 <= 0)
    {
      v7 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F4CE828, &qword_252146A10);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 1;
      }

      v7[2] = v3;
      v7[3] = 2 * (v9 >> 5);
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v10 = v7[3];

  if (v3 < 0)
  {
    goto LABEL_49;
  }

  v11 = v7 + 4;
  v12 = v10 >> 1;
  if (v3)
  {
    if (a2 < v6)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v13 = v6;
    while (a2 != v13)
    {
      v40 = v13;
      result = a3(&v38, &v40);
      if (v12 == 0x8000000000000000)
      {
        goto LABEL_43;
      }

      v14 = v39;
      ++v13;
      --v12;
      *v11 = v38;
      v11[1] = v14;
      v11 += 2;
      if (a2 == v13)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v15 = v6;
  if (v6 != a2)
  {
    if (a2 < v6)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v16 = a2;
    v17 = v6;
    v35 = v6;
    while (v15 >= v6)
    {
      if (v16 == v17)
      {
        goto LABEL_45;
      }

      v40 = v17;
      result = a3(&v38, &v40);
      v18 = v38;
      v19 = v39;
      if (!v12)
      {
        v20 = v7[3];
        if (((v20 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_47;
        }

        v36 = v39;
        v37 = v38;
        v21 = a3;
        v22 = v20 & 0xFFFFFFFFFFFFFFFELL;
        if (v22 <= 1)
        {
          v23 = 1;
        }

        else
        {
          v23 = v22;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F4CE828, &qword_252146A10);
        v24 = swift_allocObject();
        v25 = _swift_stdlib_malloc_size(v24);
        v26 = v25 - 32;
        if (v25 < 32)
        {
          v26 = v25 - 1;
        }

        v27 = v26 >> 5;
        v24[2] = v23;
        v24[3] = 2 * (v26 >> 5);
        v28 = (v24 + 4);
        v29 = v7[3] >> 1;
        if (v7[2])
        {
          v30 = v7 + 4;
          if (v24 != v7 || v28 >= v30 + 32 * v29)
          {
            memmove(v24 + 4, v30, 32 * v29);
          }

          v7[2] = 0;
        }

        v11 = (v28 + 32 * v29);
        v12 = (v27 & 0x7FFFFFFFFFFFFFFFLL) - v29;

        v7 = v24;
        a3 = v21;
        v6 = v35;
        v16 = a2;
        v19 = v36;
        v18 = v37;
      }

      v31 = __OFSUB__(v12--, 1);
      if (v31)
      {
        goto LABEL_46;
      }

      ++v17;
      *v11 = v18;
      v11[1] = v19;
      v11 += 2;
      if (a2 == v17)
      {
        goto LABEL_38;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_38:
  v32 = v7[3];
  if (v32 < 2)
  {
    return v7;
  }

  v33 = v32 >> 1;
  v31 = __OFSUB__(v33, v12);
  v34 = v33 - v12;
  if (!v31)
  {
    v7[2] = v34;
    return v7;
  }

LABEL_52:
  __break(1u);
  return result;
}

void sub_252112780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2 * a5;
  if ((a2 * a5) >> 64 != (a2 * a5) >> 63)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v5 < 0)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v5)
  {
    v9 = sub_252141D3C();
    *(v9 + 16) = v5;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (a2 > 0x7FFFFFFF)
  {
    goto LABEL_15;
  }

  if (a5 > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a3 < 0xFFFFFFFF80000000 || a2 < 0xFFFFFFFF80000000 || a5 < 0xFFFFFFFF80000000)
  {
    goto LABEL_17;
  }

  if (a3 <= 0x7FFFFFFF)
  {
    v10 = v9;
    cblas_dgemm_NEWLAPACK();
    *(v10 + 16) = v5;
    return;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_2521128B0()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE800, &qword_252146A00);
  sub_2520A2F1C(&qword_27F4CE808, &qword_27F4CE800, &qword_252146A00);
  sub_252141C3C();
  sub_2521129B4();
  sub_25214214C();

  return sub_252141C3C();
}

unint64_t sub_2521129B4()
{
  result = qword_27F4CE810;
  if (!qword_27F4CE810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4CE810);
  }

  return result;
}

uint64_t sub_252112A08()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_252112A40@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[2];
  v3 = v2[3];
  v5 = v2[4];
  return sub_2521115F8(a1, v2[5], a2);
}

uint64_t sub_252112A7C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_252112AD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x277D84F90];
  sub_25209B354(0, v1, 0);
  v2 = v28;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_25214219C();
  v7 = result;
  v8 = 0;
  v22 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    sub_25212CB84(*(a1 + 48) + 48 * v7, v25);
    v11 = v27;
    v24 = v26;

    result = sub_25212CBF4(v25);
    v28 = v2;
    v13 = *(v2 + 16);
    v12 = *(v2 + 24);
    if (v13 >= v12 >> 1)
    {
      result = sub_25209B354((v12 > 1), v13 + 1, 1);
      v2 = v28;
    }

    *(v2 + 16) = v13 + 1;
    v14 = v2 + 16 * v13;
    *(v14 + 32) = v24;
    *(v14 + 40) = v11;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v15 = *(a1 + 56 + 8 * v10);
    if ((v15 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v7 & 0x3F));
    if (v16)
    {
      v9 = __clz(__rbit64(v16)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v10 << 6;
      v18 = v10 + 1;
      v19 = (a1 + 64 + 8 * v10);
      while (v18 < (v9 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_2520A1FF4(v7, v23, 0);
          v9 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_2520A1FF4(v7, v23, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v22)
    {
      return v2;
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