void sub_24A8002F0(void *a1@<X0>, char *a2@<X8>)
{
  v4 = *MEMORY[0x277D49828];
  v5 = sub_24A82CFC4();
  v7 = v6;
  if (v5 == sub_24A82CFC4() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_24A82DC04();

    if ((v10 & 1) == 0)
    {
      v12 = *MEMORY[0x277D49830];
      v13 = sub_24A82CFC4();
      v15 = v14;
      if (v13 == sub_24A82CFC4() && v15 == v16)
      {

        v11 = 1;
        goto LABEL_9;
      }

      v18 = sub_24A82DC04();

      if (v18)
      {

        v11 = 1;
        goto LABEL_9;
      }

      v19 = *MEMORY[0x277D49810];
      v20 = sub_24A82CFC4();
      v22 = v21;
      if (v20 == sub_24A82CFC4() && v22 == v23)
      {

        v11 = 2;
        goto LABEL_9;
      }

      v24 = sub_24A82DC04();

      if (v24)
      {

        v11 = 2;
        goto LABEL_9;
      }

      v25 = *MEMORY[0x277D49808];
      v26 = sub_24A82CFC4();
      v28 = v27;
      if (v26 == sub_24A82CFC4() && v28 == v29)
      {

        v11 = 3;
        goto LABEL_9;
      }

      v30 = sub_24A82DC04();

      if (v30)
      {

        v11 = 3;
        goto LABEL_9;
      }

      v31 = *MEMORY[0x277D49818];
      v32 = sub_24A82CFC4();
      v34 = v33;
      if (v32 == sub_24A82CFC4() && v34 == v35)
      {

        v11 = 4;
        goto LABEL_9;
      }

      v36 = sub_24A82DC04();

      if (v36)
      {

        v11 = 4;
        goto LABEL_9;
      }

      v37 = *MEMORY[0x277D49820];
      v38 = sub_24A82CFC4();
      v40 = v39;
      if (v38 == sub_24A82CFC4() && v40 == v41)
      {

        v11 = 5;
        goto LABEL_9;
      }

      v42 = sub_24A82DC04();

      if (v42)
      {

        v11 = 5;
        goto LABEL_9;
      }

      v43 = *MEMORY[0x277D49838];
      v44 = sub_24A82CFC4();
      v46 = v45;
      if (v44 == sub_24A82CFC4() && v46 == v47)
      {

        v11 = 6;
        goto LABEL_9;
      }

      v48 = sub_24A82DC04();

      if (v48)
      {

        v11 = 6;
        goto LABEL_9;
      }

      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v49 = sub_24A82CDC4();
      sub_24A6797D0(v49, qword_281518F88);
      v50 = sub_24A82CD94();
      v51 = sub_24A82D4F4();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_24A675000, v50, v51, "FMIPBeaconRefreshingController: unhandled beacon type!", v52, 2u);
        MEMORY[0x24C21E1D0](v52, -1, -1);
      }
    }
  }

  v11 = 0;
LABEL_9:
  *a2 = v11;
}

void sub_24A8007A4()
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v0 = sub_24A82CDC4();
  sub_24A6797D0(v0, qword_281518F88);
  v1 = sub_24A82CD94();
  v2 = sub_24A82D4C4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_24A68761C(0xD000000000000010, 0x800000024A84AAD0, &v5);
    _os_log_impl(&dword_24A675000, v1, v2, "FMIPBeaconRefreshingController: %s - Will update", v3, 0xCu);
    sub_24A6876E8(v4);
    MEMORY[0x24C21E1D0](v4, -1, -1);
    MEMORY[0x24C21E1D0](v3, -1, -1);
  }

  sub_24A80CB10();
}

uint64_t sub_24A8008F0()
{
  v1 = v0;
  v2 = sub_24A82CDF4();
  v18 = *(v2 - 8);
  v3 = *(v18 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24A82CE54();
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v17);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v10 = sub_24A82CDC4();
  sub_24A6797D0(v10, qword_281518F88);

  v11 = sub_24A82CD94();
  v12 = sub_24A82D504();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_isThrottled);

    _os_log_impl(&dword_24A675000, v11, v12, "FMIPBeaconRefreshingController: isThrottled?: %{BOOL}d)", v13, 8u);
    MEMORY[0x24C21E1D0](v13, -1, -1);
  }

  else
  {
  }

  sub_24A679170(0, &qword_2815146C0, 0x277D85C78);
  v14 = sub_24A82D564();
  aBlock[4] = sub_24A812640;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCD840;
  v15 = _Block_copy(aBlock);

  sub_24A82CE24();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24A697DF4(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v9, v5, v15);
  _Block_release(v15);

  (*(v18 + 8))(v5, v2);
  return (*(v6 + 8))(v9, v17);
}

void sub_24A800CBC(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_isThrottled) != 1 || (*(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_isThrottledOverride) & 1) != 0)
  {
    v2 = *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshQueue);
    v3 = swift_allocObject();
    *(v3 + 16) = sub_24A74EF84;
    *(v3 + 24) = a1;
    v5[4] = sub_24A680674;
    v5[5] = v3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_24A6805E4;
    v5[3] = &unk_285DCD890;
    v4 = _Block_copy(v5);

    dispatch_sync(v2, v4);
    _Block_release(v4);
    LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

    if ((v2 & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  sub_24A8013D8();
  sub_24A80B7BC();
}

void sub_24A800E28()
{
  v1 = v0;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);

  oslog = sub_24A82CD94();
  v3 = sub_24A82D504();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    if (*(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_isRefreshing))
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    if (*(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_isRefreshing))
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    v8 = sub_24A68761C(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_24A675000, oslog, v3, "FMIPBeaconRefreshingController: auto refreshing set to: %s", v4, 0xCu);
    sub_24A6876E8(v5);
    MEMORY[0x24C21E1D0](v5, -1, -1);
    MEMORY[0x24C21E1D0](v4, -1, -1);
  }
}

uint64_t sub_24A800FB8()
{
  v1 = v0;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);

  v3 = sub_24A82CD94();
  v4 = sub_24A82D504();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v32 = v6;
    *v5 = 136315138;
    v7 = sub_24A82CA54();
    v9 = sub_24A695068(0xCuLL, v7, v8);
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = MEMORY[0x24C21C960](v9, v11, v13, v15);
    v18 = v17;

    v19 = sub_24A68761C(v16, v18, &v32);

    *(v5 + 4) = v19;
    _os_log_impl(&dword_24A675000, v3, v4, "FMIPBeaconRefreshingController<%s>.deinit", v5, 0xCu);
    sub_24A6876E8(v6);
    MEMORY[0x24C21E1D0](v6, -1, -1);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  v20 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_identifier;
  v21 = sub_24A82CAA4();
  (*(*(v21 - 8) + 8))(v1 + v20, v21);

  v22 = *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_spBeacons);

  v23 = *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_appBeacons);

  v24 = *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_unknownBeacons);

  v25 = *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_itemGroups);

  v26 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_lastRefreshTime;
  v27 = sub_24A82CA34();
  v28 = *(*(v27 - 8) + 8);
  v28(v1 + v26, v27);
  sub_24A6BAF88(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_delegate);
  v28(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_lastActiveTimestamp, v27);

  v30 = *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy + 16);
  v29 = *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy + 24);

  return v1;
}

uint64_t sub_24A8012CC()
{
  sub_24A800FB8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24A801324(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24A80AFDC(a1);
  }

  return result;
}

uint64_t sub_24A801384(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_24A8013D8()
{
  v1 = sub_24A82CDF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24A82CE54();
  v6 = *(v13 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshQueue);
  aBlock[4] = sub_24A814950;
  v16 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCE1C8;
  v10 = _Block_copy(aBlock);

  sub_24A82CE24();
  v14 = MEMORY[0x277D84F90];
  sub_24A697DF4(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v9, v5, v10);
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);
}

void sub_24A801694(_BYTE *a1)
{
  v2 = sub_24A82CA34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v7 = sub_24A82CDC4();
  sub_24A6797D0(v7, qword_281518F88);
  v8 = sub_24A82CD94();
  v9 = sub_24A82D504();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_24A675000, v8, v9, "FMIPBeaconRefreshingController: Stop Refreshing", v10, 2u);
    MEMORY[0x24C21E1D0](v10, -1, -1);
  }

  a1[OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_isRefreshing] = 0;
  sub_24A800E28();
  a1[OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_currentlyRefreshing] = 0;
  a1[OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_nextRefreshQueued] = 0;
  sub_24A82C964();
  v11 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_lastRefreshTime;
  swift_beginAccess();
  (*(v3 + 40))(&a1[v11], v6, v2);
  swift_endAccess();
  v12 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v12, a1, *MEMORY[0x277D49840], 0);
  CFNotificationCenterRemoveObserver(v12, a1, *MEMORY[0x277D49888], 0);
  v13 = [objc_opt_self() defaultCenter];
  [v13 removeObserver_];

  v14 = sub_24A82C514();
  v29 = v14;
  v30 = sub_24A697DF4(&unk_281514680, MEMORY[0x277D08A28]);
  v15 = sub_24A697E3C(&aBlock);
  (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D08A00], v14);
  LOBYTE(v14) = sub_24A82C4D4();
  sub_24A6876E8(&aBlock);
  if ((v14 & 1) != 0 && a1[OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_shouldUseBeaconsOptimizationSPI] == 1)
  {
    v16 = sub_24A82CD94();
    v17 = sub_24A82D4D4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_24A675000, v16, v17, "FMIPBeaconRefreshingController: stopUpdatingApplicationBeacons - Will call", v18, 2u);
      MEMORY[0x24C21E1D0](v18, -1, -1);
    }

    v19 = *&a1[OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_ownerSession];
    v30 = sub_24A814958;
    v31 = a1;
    aBlock = MEMORY[0x277D85DD0];
    v27 = 1107296256;
    v28 = sub_24A7FD664;
    v29 = &unk_285DCE218;
    v20 = _Block_copy(&aBlock);
    v21 = v19;

    [v21 stopUpdatingApplicationBeaconsWithCompletion_];
    _Block_release(v20);
  }

  v22 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_ownerSession;
  [*&a1[OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_ownerSession] stopRefreshing];
  [*&a1[v22] stopRefreshingSeparationMonitoringState];
  v23 = *&a1[v22];
  v30 = sub_24A802028;
  v31 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_24A7386AC;
  v29 = &unk_285DCE1F0;
  v24 = _Block_copy(&aBlock);
  v25 = v23;
  [v25 unsubscribeLocationUpdatesWithCompletion_];
  _Block_release(v24);
}

uint64_t sub_24A801B74(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_24A82CDF4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24A82CE54();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(a3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshQueue);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a2;
  aBlock[4] = sub_24A8149B8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCE268;
  v15 = _Block_copy(aBlock);

  v16 = a2;
  sub_24A82CE24();
  v20 = MEMORY[0x277D84F90];
  sub_24A697DF4(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v19);
}

void sub_24A801E58(uint64_t a1, void *a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_appBeacons);
  *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_appBeacons) = MEMORY[0x277D84F90];

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A82CDC4();
  sub_24A6797D0(v4, qword_281518F88);
  v5 = a2;
  oslog = sub_24A82CD94();
  v6 = sub_24A82D504();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    if (a2)
    {
      swift_getErrorValue();
      v9 = sub_24A82DC74();
      v11 = v10;
    }

    else
    {
      v11 = 0xE400000000000000;
      v9 = 1701736302;
    }

    v12 = sub_24A68761C(v9, v11, &v14);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_24A675000, oslog, v6, "FMIPBeaconRefreshingController: stopUpdatingApplicationBeacons - Stopped updating application beacons, error: %s", v7, 0xCu);
    sub_24A6876E8(v8);
    MEMORY[0x24C21E1D0](v8, -1, -1);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }

  else
  {
  }
}

void sub_24A802028(void *a1)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);
  v3 = a1;
  oslog = sub_24A82CD94();
  v4 = sub_24A82D504();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    if (a1)
    {
      swift_getErrorValue();
      v7 = sub_24A82DC74();
      v9 = v8;
    }

    else
    {
      v9 = 0xE400000000000000;
      v7 = 1701736302;
    }

    v10 = sub_24A68761C(v7, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_24A675000, oslog, v4, "FMIPBeaconRefreshingController: Stopped Refreshing Locations, error: %s", v5, 0xCu);
    sub_24A6876E8(v6);
    MEMORY[0x24C21E1D0](v6, -1, -1);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_24A8021D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v58 = a5;
  v59 = a6;
  v67 = a2;
  v68 = a4;
  v60 = a3;
  v7 = sub_24A82CDF4();
  v65 = *(v7 - 8);
  v66 = v7;
  v8 = *(v65 + 64);
  MEMORY[0x28223BE20](v7);
  v63 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_24A82CE54();
  v62 = *(v64 - 8);
  v10 = *(v62 + 64);
  MEMORY[0x28223BE20](v64);
  v61 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_24A82CA34();
  v54 = *(v57 - 8);
  v12 = *(v54 + 64);
  MEMORY[0x28223BE20](v57);
  v55 = v13;
  v56 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A82CAA4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v53 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v49 - v19;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v21 = sub_24A82CDC4();
  sub_24A6797D0(v21, qword_281518F88);
  v50 = *(v15 + 16);
  v50(v20, a1, v14);
  v22 = sub_24A82CD94();
  v23 = sub_24A82D504();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v51 = a1;
    v25 = v24;
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136315138;
    v27 = sub_24A82CA54();
    v28 = v14;
    v30 = v29;
    (*(v15 + 8))(v20, v28);
    v31 = sub_24A68761C(v27, v30, aBlock);
    v14 = v28;

    *(v25 + 4) = v31;
    _os_log_impl(&dword_24A675000, v22, v23, "FMIPBeaconRefreshingController: Refreshing beacons %s", v25, 0xCu);
    sub_24A6876E8(v26);
    MEMORY[0x24C21E1D0](v26, -1, -1);
    v32 = v25;
    a1 = v51;
    MEMORY[0x24C21E1D0](v32, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v20, v14);
  }

  v49 = v14;
  v33 = v67;
  v51 = *(v67 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshQueue);
  v34 = v53;
  v50(v53, a1, v14);
  v35 = v54;
  v37 = v56;
  v36 = v57;
  (*(v54 + 16))(v56, v58, v57);
  v38 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v39 = (v52 + *(v35 + 80) + v38) & ~*(v35 + 80);
  v40 = (v55 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  *(v41 + 2) = v33;
  v42 = v60;
  v43 = v68;
  *(v41 + 3) = v60;
  *(v41 + 4) = v43;
  (*(v15 + 32))(&v41[v38], v34, v49);
  (*(v35 + 32))(&v41[v39], v37, v36);
  *&v41[v40] = v59;
  aBlock[4] = sub_24A814378;
  aBlock[5] = v41;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCDF70;
  v44 = _Block_copy(aBlock);

  sub_24A6A7314(v42);
  v45 = v61;
  sub_24A82CE24();
  v69 = MEMORY[0x277D84F90];
  sub_24A697DF4(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  v46 = v63;
  v47 = v66;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v45, v46, v44);
  _Block_release(v44);
  (*(v65 + 8))(v46, v47);
  (*(v62 + 8))(v45, v64);
}

void sub_24A802898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a5;
  v66 = a4;
  v70 = a3;
  v7 = sub_24A82CAA4();
  v67 = *(v7 - 8);
  v68 = v7;
  v8 = *(v67 + 64);
  MEMORY[0x28223BE20](v7);
  v65 = v9;
  v60 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A82CA34();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v55 - v16;
  sub_24A82CA24();
  v18 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_lastRefreshTime;
  swift_beginAccess();
  v19 = v11[2];
  v20 = a1;
  v62 = v11 + 2;
  v61 = v19;
  v19(v15, a1 + v18, v10);
  sub_24A82C974();
  v22 = v21;
  v71 = v11;
  v23 = v11[1];
  v23(v15, v10);
  v24 = v17;
  v72 = v10;
  v23(v17, v10);
  v25 = 0;
  v69 = a2;
  if (a2)
  {
    v26 = v20;
  }

  else
  {
    v26 = v20;
    if (v22 <= 30.0)
    {
      v25 = *(v20 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_currentlyRefreshing);
    }
  }

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v27 = sub_24A82CDC4();
  sub_24A6797D0(v27, qword_281518F88);

  v28 = sub_24A82CD94();
  v29 = sub_24A82D504();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 67109632;
    *(v30 + 4) = v25;
    *(v30 + 8) = 1024;
    *(v30 + 10) = v22 > 30.0;
    v26 = v20;
    *(v30 + 14) = 1024;
    *(v30 + 16) = *(v20 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_currentlyRefreshing);

    _os_log_impl(&dword_24A675000, v28, v29, "FMIPBeaconRefreshingController: Should rate limit? %{BOOL}d, possibly stuck? %{BOOL}d, currentlyRefreshing? %{BOOL}d", v30, 0x14u);
    MEMORY[0x24C21E1D0](v30, -1, -1);

    if (!v25)
    {
      goto LABEL_15;
    }
  }

  else
  {

    if (!v25)
    {
LABEL_15:
      *(v26 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_currentlyRefreshing) = 1;
      sub_24A82CA24();
      swift_beginAccess();
      (v71[5])(v26 + v18, v24, v72);
      swift_endAccess();
      v35 = sub_24A82CD94();
      v36 = sub_24A82D504();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_24A675000, v35, v36, "FMIPBeaconRefreshingController: Refresh Beacon Groups", v37, 2u);
        MEMORY[0x24C21E1D0](v37, -1, -1);
      }

      v59 = *(v26 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_ownerSession);
      v38 = v68;
      v58 = sub_24A82D224();
      v39 = v67;
      v40 = v60;
      (*(v67 + 16))(v60, v66, v38);
      v56 = v24;
      v41 = v72;
      v61(v24, v64, v72);
      v42 = *(v39 + 80);
      v57 = v26;
      v43 = (v42 + 24) & ~v42;
      v44 = v71;
      v45 = (v65 + *(v71 + 80) + v43) & ~*(v71 + 80);
      v46 = (v63 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
      v47 = swift_allocObject();
      *(v47 + 16) = v26;
      (*(v39 + 32))(v47 + v43, v40, v38);
      (v44[4])(v47 + v45, v56, v41);
      v48 = (v47 + v46);
      v50 = v69;
      v49 = v70;
      *v48 = v69;
      v48[1] = v49;
      aBlock[4] = sub_24A814478;
      aBlock[5] = v47;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A6AB7D0;
      aBlock[3] = &unk_285DCDFC0;
      v51 = _Block_copy(aBlock);

      sub_24A6A7314(v50);

      v52 = v59;
      v53 = v58;
      [v59 beaconGroupsForUUIDs:v58 completion:v51];
      _Block_release(v51);

      return;
    }
  }

  v31 = sub_24A82CD94();
  v32 = sub_24A82D504();
  v33 = os_log_type_enabled(v31, v32);
  if (v22 > 30.0)
  {
    if (v33)
    {
      v34 = swift_slowAlloc();
      *v34 = 134217984;
      *(v34 + 4) = v22;
      _os_log_impl(&dword_24A675000, v31, v32, "FMIPBeaconRefreshingController: Refresh queue seemed stuck (for %f sec), allowing refresh.", v34, 0xCu);
      MEMORY[0x24C21E1D0](v34, -1, -1);
    }

    goto LABEL_15;
  }

  if (v33)
  {
    v54 = swift_slowAlloc();
    *v54 = 134217984;
    *(v54 + 4) = v22;
    _os_log_impl(&dword_24A675000, v31, v32, "FMIPBeaconRefreshingController: Ignoring refresh, the previous one didn't finish, %fs ago", v54, 0xCu);
    MEMORY[0x24C21E1D0](v54, -1, -1);
  }

  *(v26 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_nextRefreshQueued) = 1;
}

void sub_24A802F9C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v51 = a4;
  v11 = sub_24A82CA34();
  v52 = *(v11 - 8);
  v53 = v11;
  v12 = *(v52 + 64);
  MEMORY[0x28223BE20](v11);
  v50 = v13;
  v58 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_24A82CAA4();
  v49 = *(v57 - 8);
  v14 = *(v49 + 64);
  MEMORY[0x28223BE20](v57);
  v48 = v15;
  v56 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FMIPItemGroup();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v20 = (&v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_24A6ABDFC(a1, sub_24A753FA0, sub_24A74E8A4);
  v22 = v21;
  if ((v21 & 0x8000000000000000) != 0 || (v21 & 0x4000000000000000) != 0)
  {
    v23 = sub_24A82D744();
    v54 = a5;
    v55 = a6;
    if (v23)
    {
      goto LABEL_4;
    }

LABEL_14:

    v25 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v23 = *(v21 + 16);
  v54 = a5;
  v55 = a6;
  if (!v23)
  {
    goto LABEL_14;
  }

LABEL_4:
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24A6FCB74(0, v23 & ~(v23 >> 63), 0);
  if (v23 < 0)
  {
    __break(1u);
    return;
  }

  v46 = a3;
  v47 = a2;
  v24 = 0;
  v25 = aBlock[0];
  do
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x24C21D180](v24, v22);
    }

    else
    {
      v26 = *(v22 + 8 * v24 + 32);
    }

    sub_24A707330(v26, v20);
    aBlock[0] = v25;
    v28 = *(v25 + 16);
    v27 = *(v25 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_24A6FCB74(v27 > 1, v28 + 1, 1);
      v25 = aBlock[0];
    }

    ++v24;
    *(v25 + 16) = v28 + 1;
    sub_24A8127B4(v20, v25 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v28, type metadata accessor for FMIPItemGroup);
  }

  while (v23 != v24);

  a3 = v46;
  a2 = v47;
LABEL_15:
  v29 = *&a2[OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_itemGroups];
  *&a2[OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_itemGroups] = v25;

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v30 = sub_24A82CDC4();
  sub_24A6797D0(v30, qword_281518F88);
  v31 = sub_24A82CD94();
  v32 = sub_24A82D504();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_24A675000, v31, v32, "FMIPBeaconRefreshingController: Calling SPOwnerSession - allBeacons", v33, 2u);
    MEMORY[0x24C21E1D0](v33, -1, -1);
  }

  v47 = *&a2[OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_ownerSession];
  v34 = v49;
  (*(v49 + 16))(v56, a3, v57);
  v35 = v52;
  v36 = v53;
  (*(v52 + 16))(v58, v51, v53);
  v37 = (*(v34 + 80) + 24) & ~*(v34 + 80);
  v38 = (v48 + *(v35 + 80) + v37) & ~*(v35 + 80);
  v39 = (v50 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  *(v40 + 16) = a2;
  (*(v34 + 32))(v40 + v37, v56, v57);
  (*(v35 + 32))(v40 + v38, v58, v36);
  *(v40 + v39) = v25;
  v41 = (v40 + ((v39 + 15) & 0xFFFFFFFFFFFFFFF8));
  v43 = v54;
  v42 = v55;
  *v41 = v54;
  v41[1] = v42;
  aBlock[4] = sub_24A814580;
  aBlock[5] = v40;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A8061C8;
  aBlock[3] = &unk_285DCE010;
  v44 = _Block_copy(aBlock);
  v45 = v47;

  sub_24A6A7314(v43);

  [v45 allBeaconsWithCompletion_];
  _Block_release(v44);
}

uint64_t sub_24A803530(int64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int64_t a6, __objc2_class **a7)
{
  v256 = a5;
  v276 = a4;
  v287 = a3;
  v313 = *MEMORY[0x277D85DE8];
  v11 = sub_24A82CDF4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v266 = &v252 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = sub_24A82CE54();
  v265 = *(v267 - 8);
  v15 = *(v265 + 64);
  MEMORY[0x28223BE20](v267);
  v264 = &v252 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FMIPDeviceLostModeMetadata();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v281 = &v252 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v286 = sub_24A82CA34();
  v278 = *(v286 - 1);
  v20 = *(v278 + 64);
  v21 = MEMORY[0x28223BE20](v286);
  v279 = (&v252 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v273 = &v252 - v23;
  v24 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v277 = &v252 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v275 = &v252 - v28;
  updated = type metadata accessor for FMIPItemUpdateType(0);
  v29 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  v274 = &v252 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = 0;
  v292 = sub_24A82CAA4();
  v282 = *(v292 - 8);
  v31 = v282[8];
  v32 = MEMORY[0x28223BE20](v292);
  v261 = &v252 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v260 = &v252 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v294 = &v252 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v280 = &v252 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v271 = &v252 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v270 = &v252 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v269 = &v252 - v45;
  MEMORY[0x28223BE20](v44);
  v288 = &v252 - v46;
  v47 = *&a2[OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshQueue];
  v48 = swift_allocObject();
  *(v48 + 16) = a2;
  *(v48 + 24) = a1;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_24A814694;
  *(v49 + 24) = v48;
  v263 = v48;
  v301 = sub_24A680674;
  v302 = v49;
  aBlock = MEMORY[0x277D85DD0];
  v298 = 1107296256;
  v299 = sub_24A6805E4;
  v300 = &unk_285DCE088;
  v50 = _Block_copy(&aBlock);
  v285 = a2;

  v262 = v47;
  dispatch_sync(v47, v50);
  _Block_release(v50);
  LOBYTE(v50) = swift_isEscapingClosureAtFileLocation();

  if (v50)
  {
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (qword_281515DC8 != -1)
  {
LABEL_146:
    swift_once();
  }

  v257 = v12;
  v258 = v11;
  v255 = a7;
  v51 = sub_24A82CDC4();
  v52 = sub_24A6797D0(v51, qword_281518F88);

  v284 = v52;
  v53 = sub_24A82CD94();
  v54 = sub_24A82D504();

  v55 = os_log_type_enabled(v53, v54);
  v291 = a1;
  if (v55)
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v56 = 138412290;
    sub_24A679170(0, &qword_281512B60, 0x277D49610);
    a1 = v291;
    sub_24A6AB7EC(&qword_281512B58, &qword_281512B60, 0x277D49610);
    v58 = sub_24A82D394();
    *(v56 + 4) = v58;
    *v57 = v58;
    _os_log_impl(&dword_24A675000, v53, v54, "FMIPBeaconRefreshingController: beacons received %@", v56, 0xCu);
    sub_24A67F378(v57, &qword_27EF5D010, &qword_24A830E30);
    MEMORY[0x24C21E1D0](v57, -1, -1);
    MEMORY[0x24C21E1D0](v56, -1, -1);
  }

  v290 = a1 & 0xC000000000000001;
  v259 = a6;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24A82D704();
    sub_24A679170(0, &qword_281512B60, 0x277D49610);
    sub_24A6AB7EC(&qword_281512B58, &qword_281512B60, 0x277D49610);
    sub_24A82D414();
    v59 = v303;
    a7 = v304;
    v60 = v305;
    v12 = v306;
    v11 = v307;
  }

  else
  {
    v61 = -1 << *(a1 + 32);
    a7 = (a1 + 56);
    v60 = ~v61;
    v62 = -v61;
    if (v62 < 64)
    {
      v63 = ~(-1 << v62);
    }

    else
    {
      v63 = -1;
    }

    v11 = v63 & *(a1 + 56);

    v12 = 0;
    v59 = a1;
  }

  v293 = v60;
  a6 = (v60 + 64) >> 6;
  v283 = *MEMORY[0x277D497C8];
  v289 = (v282 + 2);
  v64 = MEMORY[0x277D84F98];
  v295 = (v282 + 1);
  while (1)
  {
    a1 = v11;
    if ((v59 & 0x8000000000000000) == 0)
    {
      v65 = v12;
      v66 = v11;
      if (!v11)
      {
        while (1)
        {
          v12 = v65 + 1;
          if (__OFADD__(v65, 1))
          {
            break;
          }

          if (v12 >= a6)
          {
            goto LABEL_38;
          }

          v66 = a7[v12];
          ++v65;
          if (v66)
          {
            goto LABEL_17;
          }
        }

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
        goto LABEL_145;
      }

LABEL_17:
      v11 = (v66 - 1) & v66;
      v67 = *(*(v59 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v66)))));
      if (!v67)
      {
        break;
      }

      goto LABEL_21;
    }

    v68 = sub_24A82D784();
    if (!v68)
    {
      break;
    }

    v308 = v68;
    sub_24A679170(0, &qword_281512B60, 0x277D49610);
    swift_dynamicCast();
    v67 = aBlock;
    if (!aBlock)
    {
      break;
    }

LABEL_21:
    v69 = [v67 role];
    if (v69)
    {
      v70 = v69;
    }

    else
    {
      v71 = [v67 identifier];
      sub_24A82CA84();

      v72 = [v67 taskInformation];
      type metadata accessor for SPBeaconTaskName(0);
      sub_24A679170(0, &qword_27EF5DD20, 0x277D49648);
      sub_24A697DF4(&qword_27EF5CEF8, type metadata accessor for SPBeaconTaskName);
      v73 = sub_24A82CEF4();

      if (!*(v73 + 16))
      {
        v74 = v64;
LABEL_27:

        v79 = 0;
        goto LABEL_28;
      }

      v74 = v64;
      v75 = sub_24A77EE90(v283);
      if ((v76 & 1) == 0)
      {
        goto LABEL_27;
      }

      v77 = *(*(v73 + 56) + 8 * v75);

      v78 = [v77 state];

      v79 = v78 == 0;
LABEL_28:
      v80 = v74;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v80;
      v82 = sub_24A77EDF8(v288);
      v84 = *(v80 + 16);
      v85 = (v83 & 1) == 0;
      v86 = __OFADD__(v84, v85);
      v87 = v84 + v85;
      if (v86)
      {
        __break(1u);
LABEL_150:
        __break(1u);
      }

      v88 = v83;
      v89 = *(v80 + 24);
      v254 = v79;
      if (v89 >= v87)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_33;
        }

        v91 = v82;
        sub_24A787ABC();
        v82 = v91;
        v64 = aBlock;
        if ((v88 & 1) == 0)
        {
          goto LABEL_36;
        }

LABEL_34:
        *(v64[7] + v82) = v254;

        (*v295)(v288, v292);
      }

      else
      {
        sub_24A783E7C(v87, isUniquelyReferenced_nonNull_native);
        v82 = sub_24A77EDF8(v288);
        if ((v88 & 1) != (v90 & 1))
        {
LABEL_151:
          result = sub_24A82DC44();
          __break(1u);
          return result;
        }

LABEL_33:
        v64 = aBlock;
        if (v88)
        {
          goto LABEL_34;
        }

LABEL_36:
        v64[(v82 >> 6) + 8] |= 1 << v82;
        v92 = v282;
        v93 = v64[6] + v282[9] * v82;
        v94 = v282[2];
        v253 = v82;
        v95 = v288;
        v96 = v292;
        v94(v93, v288, v292);
        *(v64[7] + v253) = v254;

        (v92[1])(v95, v96);
        v97 = v64[2];
        v86 = __OFADD__(v97, 1);
        v98 = v97 + 1;
        if (v86)
        {
          goto LABEL_150;
        }

        v64[2] = v98;
      }
    }
  }

LABEL_38:
  sub_24A6BAFBC();
  v283 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_24A6BBA94(&qword_27EF5F8C0, &qword_24A8415E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24A8327A0;
    *(inited + 32) = 0;
    v100 = inited + 32;
    *(inited + 40) = v64;
    v101 = sub_24A78B0B0(inited);
    swift_setDeallocating();

    sub_24A67F378(v100, &qword_27EF5F8C8, &unk_24A8415F0);
    sub_24A6AD900(v101);

    swift_unknownObjectRelease();
  }

  v293 = v64;
  v102 = *(sub_24A6BBA94(&qword_27EF5ECD8, &qword_24A83B8C0) + 48);
  v103 = v274;
  v288 = *v289;
  (v288)(v274, v287, v292);
  v104 = v278;
  v105 = v286;
  (*(v278 + 16))(v103 + v102, v276, v286);
  swift_storeEnumTagMultiPayload();
  a6 = v275;
  (*(v104 + 56))(v275, 1, 1, v105);
  v106 = type metadata accessor for FMIPItemUpdateContext(0);
  v107 = *(v106 + 48);
  v108 = *(v106 + 52);
  a7 = swift_allocObject();
  sub_24A8126CC(v103, a7 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_type, type metadata accessor for FMIPItemUpdateType);
  v109 = v273;
  sub_24A82CA24();
  v110 = *(v104 + 32);
  v110(a7 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp, v109, v105);
  v111 = v277;
  sub_24A67E964(a6, v277, &qword_27EF5E0E0, &qword_24A836D90);
  v112 = *(v104 + 48);
  v113 = v112(v111, 1, v105);
  v12 = v279;
  if (v113 == 1)
  {
    sub_24A82CA24();
    sub_24A67F378(a6, &qword_27EF5E0E0, &qword_24A836D90);
    sub_24A812734(v103, type metadata accessor for FMIPItemUpdateType);
    if (v112(v111, 1, v105) != 1)
    {
      sub_24A67F378(v111, &qword_27EF5E0E0, &qword_24A836D90);
    }
  }

  else
  {
    sub_24A67F378(a6, &qword_27EF5E0E0, &qword_24A836D90);
    sub_24A812734(v103, type metadata accessor for FMIPItemUpdateType);
    v110(v12, v111, v105);
  }

  v110(a7 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_creationTimestamp, v12, v105);
  v279 = a7;
  if (v290)
  {
    v114 = MEMORY[0x277D84FA0];
    aBlock = MEMORY[0x277D84FA0];
    a1 = v291;

    sub_24A82D704();
    v115 = sub_24A82D784();
    if (v115)
    {
      v116 = v115;
      a7 = sub_24A679170(0, &qword_281512B60, 0x277D49610);
      v117 = v116;
      v114 = MEMORY[0x277D84FA0];
      a6 = -1;
      v11 = 63;
LABEL_49:
      v296 = v117;
      swift_dynamicCast();
      v118 = [v308 role];
      if (!v118)
      {

        goto LABEL_48;
      }

      v12 = v308;
      v119 = *(v114 + 16);
      if (*(v114 + 24) <= v119)
      {
        sub_24A70E8A4(v119 + 1);
      }

      v114 = aBlock;
      v120 = aBlock[5];
      v121 = sub_24A82D5D4();
      v122 = v114 + 56;
      v123 = -1 << *(v114 + 32);
      v124 = v121 & ~v123;
      v125 = v124 >> 6;
      if (((-1 << v124) & ~*(v114 + 56 + 8 * (v124 >> 6))) != 0)
      {
        v126 = __clz(__rbit64((-1 << v124) & ~*(v114 + 56 + 8 * (v124 >> 6)))) | v124 & 0x7FFFFFFFFFFFFFC0;
        goto LABEL_62;
      }

      v127 = 0;
      v128 = (63 - v123) >> 6;
      while (++v125 != v128 || (v127 & 1) == 0)
      {
        v129 = v125 == v128;
        if (v125 == v128)
        {
          v125 = 0;
        }

        v127 |= v129;
        v130 = *(v122 + 8 * v125);
        if (v130 != -1)
        {
          v126 = __clz(__rbit64(~v130)) + (v125 << 6);
LABEL_62:
          *(v122 + ((v126 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v126;
          *(*(v114 + 48) + 8 * v126) = v12;
          ++*(v114 + 16);
LABEL_48:
          v117 = sub_24A82D784();
          if (!v117)
          {
            goto LABEL_63;
          }

          goto LABEL_49;
        }
      }

      __break(1u);
      goto LABEL_140;
    }

LABEL_63:

LABEL_80:
    v145 = v292;
    a7 = v279;
  }

  else
  {
    a1 = v291;
    v131 = *(v291 + 32);
    v132 = v131 & 0x3F;
    v133 = ((1 << v131) + 63) >> 6;
    v134 = 8 * v133;

    if (v132 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
    {
      v286 = &v252;
      MEMORY[0x28223BE20](isStackAllocationSafe);
      v136 = &v252 - ((v134 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v136, v134);
      v137 = 0;
      v138 = 0;
      v11 = a1 + 56;
      v139 = 1 << *(a1 + 32);
      v140 = -1;
      if (v139 < 64)
      {
        v140 = ~(-1 << v139);
      }

      v141 = v140 & *(a1 + 56);
      a1 = (v139 + 63) >> 6;
      while (1)
      {
        if (v141)
        {
          v142 = __clz(__rbit64(v141));
          v141 &= v141 - 1;
        }

        else
        {
          v143 = v138;
          do
          {
            v138 = v143 + 1;
            if (__OFADD__(v143, 1))
            {
              goto LABEL_142;
            }

            if (v138 >= a1)
            {
              goto LABEL_79;
            }

            v144 = *(v11 + 8 * v138);
            ++v143;
          }

          while (!v144);
          v142 = __clz(__rbit64(v144));
          v141 = (v144 - 1) & v144;
        }

        a6 = v142 | (v138 << 6);
        v12 = *(*(v291 + 48) + 8 * a6);
        a7 = [v12 role];

        if (a7)
        {

          *&v136[(a6 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << a6;
          v86 = __OFADD__(v137++, 1);
          if (v86)
          {
            break;
          }
        }
      }

      __break(1u);
LABEL_79:
      a1 = v291;
      v114 = sub_24A7F06EC(v136, v133, v137, v291);
      goto LABEL_80;
    }

    v251 = swift_slowAlloc();
    v114 = sub_24A810B24(v251, v133, a1, sub_24A805968);
    MEMORY[0x24C21E1D0](v251, -1, -1);
    v145 = v292;
  }

  v146 = v285;

  v147 = sub_24A812EC4(v114, v146);

  v148 = sub_24A8134C0(v147, v146);

  v149 = sub_24A812064(v148, a7);

  v150 = sub_24A6ABDFC(a1, sub_24A753FA0, sub_24A74E8C0);
  v151 = sub_24A8059B8(v150, &qword_281512B60, 0x277D49610, &protocol witness table for SPBeacon);

  sub_24A8136F8(v151);

  v152 = v269;
  (v288)(v269, v287, v145);
  v153 = sub_24A82CD94();
  v154 = sub_24A82D504();
  v155 = os_log_type_enabled(v153, v154);
  v156 = &off_24A82F000;
  v157 = v271;
  v158 = v145;
  if (v155)
  {
    v159 = swift_slowAlloc();
    v160 = v152;
    v161 = swift_slowAlloc();
    aBlock = v161;
    *v159 = 136315138;
    v162 = v157;
    v163 = sub_24A82CA54();
    v165 = v164;
    v293 = *v295;
    v293(v160, v158);
    v166 = v163;
    v157 = v162;
    v156 = &off_24A82F000;
    v167 = sub_24A68761C(v166, v165, &aBlock);
    a1 = v291;

    *(v159 + 4) = v167;
    _os_log_impl(&dword_24A675000, v153, v154, "FMIPBeaconRefreshingController: separation state %s", v159, 0xCu);
    sub_24A6876E8(v161);
    MEMORY[0x24C21E1D0](v161, -1, -1);
    MEMORY[0x24C21E1D0](v159, -1, -1);
  }

  else
  {

    v293 = *v295;
    v293(v152, v145);
  }

  v168 = v270;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_24A751A04(v149);
    swift_unknownObjectRelease();
  }

  (v288)(v168, v287, v158);
  v169 = sub_24A82CD94();
  v170 = sub_24A82D504();
  if (os_log_type_enabled(v169, v170))
  {
    v171 = swift_slowAlloc();
    v172 = swift_slowAlloc();
    aBlock = v172;
    *v171 = *(v156 + 434);
    v173 = sub_24A82CA54();
    v174 = v168;
    v176 = v175;
    v293(v174, v158);
    v177 = sub_24A68761C(v173, v176, &aBlock);

    *(v171 + 4) = v177;
    _os_log_impl(&dword_24A675000, v169, v170, "FMIPBeaconRefreshingController: items updated %s", v171, 0xCu);
    sub_24A6876E8(v172);
    MEMORY[0x24C21E1D0](v172, -1, -1);
    MEMORY[0x24C21E1D0](v171, -1, -1);
  }

  else
  {

    v293(v168, v158);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_24A6ABEBC(v256);
    swift_unknownObjectRelease();
  }

  (v288)(v157, v287, v158);
  v178 = sub_24A82CD94();
  a7 = sub_24A82D504();
  if (os_log_type_enabled(v178, a7))
  {
    v179 = swift_slowAlloc();
    v180 = swift_slowAlloc();
    aBlock = v180;
    *v179 = *(v156 + 434);
    v181 = sub_24A82CA54();
    v183 = v182;
    v293(v157, v158);
    v184 = sub_24A68761C(v181, v183, &aBlock);

    *(v179 + 4) = v184;
    _os_log_impl(&dword_24A675000, v178, a7, "FMIPBeaconRefreshingController: groups updated %s", v179, 0xCu);
    sub_24A6876E8(v180);
    MEMORY[0x24C21E1D0](v180, -1, -1);
    MEMORY[0x24C21E1D0](v179, -1, -1);
  }

  else
  {

    v293(v157, v158);
  }

  v185 = MEMORY[0x277D84F90];
  v11 = sub_24A78B1C0(MEMORY[0x277D84F90]);
  v12 = sub_24A78B3DC(v185);
  if (v290)
  {
    swift_unknownObjectRetain();
    sub_24A82D704();
    a7 = 0x277D49610;
    sub_24A679170(0, &qword_281512B60, 0x277D49610);
    sub_24A6AB7EC(&qword_281512B58, &qword_281512B60, 0x277D49610);
    sub_24A82D414();
    a1 = v308;
    v186 = v309;
    v187 = v310;
    v188 = v311;
    v189 = v312;
  }

  else
  {
    v190 = -1 << *(a1 + 32);
    v186 = (a1 + 56);
    v187 = ~v190;
    v191 = -v190;
    if (v191 < 64)
    {
      v192 = ~(-1 << v191);
    }

    else
    {
      v192 = -1;
    }

    v189 = v192 & *(a1 + 56);

    v188 = 0;
  }

  v278 = v187;
  a6 = (v187 + 64) >> 6;
  v291 = a1;
  v286 = v186;
  while (2)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      v193 = v188;
      v194 = v189;
      for (i = v188; !v194; ++v193)
      {
        i = v193 + 1;
        if (__OFADD__(v193, 1))
        {
          goto LABEL_141;
        }

        if (i >= a6)
        {
          goto LABEL_125;
        }

        v194 = v186[i];
      }

      v196 = (v194 - 1) & v194;
      a1 = *(*(a1 + 48) + ((i << 9) | (8 * __clz(__rbit64(v194)))));
      if (!a1)
      {
        goto LABEL_125;
      }

LABEL_112:
      v290 = v196;
      v198 = [a1 lostModeInfo];
      if (v198)
      {
        v199 = v198;
        a7 = &off_278FE8000;
        v200 = [a1 identifier];
        v201 = v280;
        sub_24A82CA84();

        v202 = v199;
        v203 = v281;
        FMIPDeviceLostModeMetadata.init(lostModeInfo:)(v202, v281);
        v204 = swift_isUniquelyReferenced_nonNull_native();
        aBlock = v11;
        sub_24A7856DC(v203, v201, v204);

        v293(v201, v292);
        v11 = aBlock;
      }

      else
      {
        a7 = &off_278FE8000;
      }

      v205 = [a1 identifier];
      v206 = v294;
      sub_24A82CA84();

      sub_24A8002F0([a1 type], &v296);
      v207 = v296;
      v208 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v12;
      v209 = sub_24A77EDF8(v206);
      v211 = *(v12 + 16);
      v212 = (v210 & 1) == 0;
      v86 = __OFADD__(v211, v212);
      v213 = v211 + v212;
      if (v86)
      {
        goto LABEL_143;
      }

      v214 = v210;
      if (*(v12 + 24) >= v213)
      {
        a7 = v290;
        if (v208)
        {
          goto LABEL_120;
        }

        v221 = v209;
        sub_24A787D2C();
        v209 = v221;
        v12 = aBlock;
        if (v214)
        {
          goto LABEL_101;
        }

LABEL_121:
        *(v12 + 8 * (v209 >> 6) + 64) |= 1 << v209;
        v216 = v209;
        v217 = v294;
        v218 = v292;
        (v288)(*(v12 + 48) + v282[9] * v209, v294, v292);
        *(*(v12 + 56) + v216) = v207;

        v293(v217, v218);
        v219 = *(v12 + 16);
        v86 = __OFADD__(v219, 1);
        v220 = v219 + 1;
        if (v86)
        {
          goto LABEL_144;
        }

        *(v12 + 16) = v220;
      }

      else
      {
        sub_24A78423C(v213, v208);
        v209 = sub_24A77EDF8(v294);
        a7 = v290;
        if ((v214 & 1) != (v215 & 1))
        {
          goto LABEL_151;
        }

LABEL_120:
        v12 = aBlock;
        if ((v214 & 1) == 0)
        {
          goto LABEL_121;
        }

LABEL_101:
        *(*(v12 + 56) + v209) = v207;

        v293(v294, v292);
      }

      v188 = i;
      v189 = a7;
      a1 = v291;
      v186 = v286;
      continue;
    }

    break;
  }

  v197 = sub_24A82D784();
  if (v197)
  {
    v296 = v197;
    sub_24A679170(0, &qword_281512B60, 0x277D49610);
    swift_dynamicCast();
    a1 = aBlock;
    i = v188;
    v196 = v189;
    if (aBlock)
    {
      goto LABEL_112;
    }
  }

LABEL_125:
  sub_24A6BAFBC();
  v222 = v285;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_24A7517CC(v11);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v223 = v292;
  v224 = v260;
  (v288)(v260, v287, v292);
  v225 = sub_24A82CD94();
  v226 = sub_24A82D504();
  if (os_log_type_enabled(v225, v226))
  {
    v227 = swift_slowAlloc();
    v228 = swift_slowAlloc();
    aBlock = v228;
    *v227 = 136315138;
    v229 = sub_24A82CA54();
    v231 = v230;
    v293(v224, v223);
    v232 = sub_24A68761C(v229, v231, &aBlock);

    *(v227 + 4) = v232;
    _os_log_impl(&dword_24A675000, v225, v226, "FMIPBeaconRefreshingController: lost mode info %s", v227, 0xCu);
    sub_24A6876E8(v228);
    MEMORY[0x24C21E1D0](v228, -1, -1);
    MEMORY[0x24C21E1D0](v227, -1, -1);
  }

  else
  {

    v293(v224, v223);
  }

  v233 = v261;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_24A7513DC(v12);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  (v288)(v233, v287, v223);
  v234 = sub_24A82CD94();
  v235 = sub_24A82D504();
  if (os_log_type_enabled(v234, v235))
  {
    v236 = swift_slowAlloc();
    v237 = swift_slowAlloc();
    aBlock = v237;
    *v236 = 136315138;
    v238 = sub_24A82CA54();
    v240 = v239;
    v293(v233, v223);
    v241 = sub_24A68761C(v238, v240, &aBlock);

    *(v236 + 4) = v241;
    _os_log_impl(&dword_24A675000, v234, v235, "FMIPBeaconRefreshingController: beacon types %s", v236, 0xCu);
    sub_24A6876E8(v237);
    MEMORY[0x24C21E1D0](v237, -1, -1);
    MEMORY[0x24C21E1D0](v236, -1, -1);
  }

  else
  {

    v293(v233, v223);
  }

  v242 = v258;
  v243 = v257;
  v244 = MEMORY[0x277D84F90];
  v301 = sub_24A81469C;
  v302 = v222;
  aBlock = MEMORY[0x277D85DD0];
  v298 = 1107296256;
  v299 = sub_24A699BA0;
  v300 = &unk_285DCE0B0;
  v245 = _Block_copy(&aBlock);

  v246 = v264;
  sub_24A82CE24();
  v296 = v244;
  sub_24A697DF4(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  v247 = v266;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v246, v247, v245);
  _Block_release(v245);
  (*(v243 + 8))(v247, v242);
  (*(v265 + 8))(v246, v267);

  if (v259)
  {
    v259(v248);
  }

  v250 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24A805898(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v4 = sub_24A82D744();
  if (v4)
  {
    while (1)
    {
      v5 = sub_24A753FA0(v4, 0);

      v2 = sub_24A74E8C0(&v8, (v5 + 32), v4, v2);
      sub_24A6BAFBC();
      if (v2 == v4)
      {
        break;
      }

      __break(1u);
LABEL_5:
      v4 = v2[2];
      if (!v4)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v5 = MEMORY[0x277D84F90];
  }

  v6 = *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_spBeacons);
  *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_spBeacons) = v5;
}

BOOL sub_24A805968(id *a1)
{
  v1 = [*a1 role];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

void *sub_24A8059B8(unint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 >> 62)
  {
    v8 = sub_24A82D744();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return v9;
  }

  v23 = MEMORY[0x277D84F90];
  result = sub_24A6FCC7C(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = v23;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = 0;
      do
      {
        v12 = MEMORY[0x24C21D180](v11, a1);
        v23 = v9;
        v14 = *(v9 + 16);
        v13 = *(v9 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_24A6FCC7C((v13 > 1), v14 + 1, 1);
          v9 = v23;
        }

        ++v11;
        v21 = sub_24A679170(0, a2, a3);
        v22 = a4;
        *&v20 = v12;
        *(v9 + 16) = v14 + 1;
        sub_24A696E80(&v20, v9 + 40 * v14 + 32);
      }

      while (v8 != v11);
    }

    else
    {
      v15 = (a1 + 32);
      do
      {
        v16 = *v15;
        v23 = v9;
        v18 = *(v9 + 16);
        v17 = *(v9 + 24);
        v19 = v16;
        if (v18 >= v17 >> 1)
        {
          sub_24A6FCC7C((v17 > 1), v18 + 1, 1);
          v9 = v23;
        }

        v21 = sub_24A679170(0, a2, a3);
        v22 = a4;
        *&v20 = v19;
        *(v9 + 16) = v18 + 1;
        sub_24A696E80(&v20, v9 + 40 * v18 + 32);
        ++v15;
        --v8;
      }

      while (v8);
    }

    return v9;
  }

  __break(1u);
  return result;
}

void sub_24A805B7C(void *a1)
{
  v2 = *a1;
  v3 = sub_24A82CAA4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - v7;
  v9 = sub_24A82CA34();
  v51 = *(v9 - 8);
  v10 = *(v51 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - v13;
  *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_currentlyRefreshing) = 0;
  if (*(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_nextRefreshQueued) == 1)
  {
    v50 = v12;
    v47 = a1;
    v48 = v2;
    *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_nextRefreshQueued) = 0;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v15 = sub_24A82CDC4();
    sub_24A6797D0(v15, qword_281518F88);
    v16 = sub_24A82CD94();
    v17 = sub_24A82D504();
    v18 = os_log_type_enabled(v16, v17);
    v49 = v14;
    if (v18)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_24A675000, v16, v17, "FMIPBeaconRefreshingController: Another refresh was queued, running.", v19, 2u);
      v20 = v19;
      v14 = v49;
      MEMORY[0x24C21E1D0](v20, -1, -1);
    }

    sub_24A82CA24();
    sub_24A82CA94();
    v21 = *(v4 + 16);
    v44 = v8;
    v21(&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v3);
    v46 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = v51;
    (*(v51 + 16))(v50, v14, v9);
    v23 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v24 = (v5 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = v9;
    v26 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
    v27 = (*(v22 + 80) + v26 + 16) & ~*(v22 + 80);
    v28 = swift_allocObject();
    v45 = v4;
    v29 = *(v4 + 32);
    v30 = v46;
    v46 = v3;
    v29(v28 + v23, v30, v3);
    *(v28 + v24) = v47;
    v31 = (v28 + v26);
    *v31 = 0;
    v31[1] = 0;
    v32 = v25;
    (*(v22 + 32))(v28 + v27, v50, v25);
    *(v28 + ((v10 + v27 + 7) & 0xFFFFFFFFFFFFFFF8)) = v48;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_24A814B38;
    *(v33 + 24) = v28;
    aBlock[4] = sub_24A680674;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A6805E4;
    aBlock[3] = &unk_285DCE128;
    v34 = _Block_copy(aBlock);
    v35 = _Block_copy(v34);
    v36 = qword_281513E40;

    if (v36 != -1)
    {
      swift_once();
    }

    v37 = _os_activity_create(&dword_24A675000, "FMIPBeaconRefreshingController.refreshBeacons", qword_281513E48[0], OS_ACTIVITY_FLAG_DEFAULT);
    v38 = _Block_copy(v35);
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_24A6A9A80;
    *(v40 + 24) = v39;
    v52[4] = sub_24A680674;
    v52[5] = v40;
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 1107296256;
    v52[2] = sub_24A6805E4;
    v52[3] = &unk_285DCE1A0;
    v41 = _Block_copy(v52);

    os_activity_apply(v37, v41);
    _Block_release(v41);
    LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

    _Block_release(v35);
    _Block_release(v34);
    if (v41)
    {
      __break(1u);
    }

    else
    {
      (*(v45 + 8))(v44, v46);
      (*(v51 + 8))(v49, v32);
      swift_unknownObjectRelease();

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_24A8061E4(unint64_t a1)
{
  v317 = a1;
  v2 = type metadata accessor for FMIPItem();
  v307 = *(v2 - 8);
  v3 = *(v307 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v308 = v285 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v311 = v285 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v315 = v285 - v9;
  updated = type metadata accessor for FMIPItemUpdateType(0);
  v10 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  v292 = v285 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMIPDeviceLostModeMetadata();
  v299 = *(v12 - 8);
  v13 = *(v299 + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v302 = v285 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v300 = v285 - v16;
  v17 = sub_24A6BBA94(&qword_27EF5F8B0, &qword_24A8415E0);
  v313 = *(v17 - 8);
  v18 = v313[8];
  v19 = MEMORY[0x28223BE20](v17);
  v312 = v285 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v285 - v20;
  v22 = sub_24A82CAA4();
  v316 = *(v22 - 8);
  v23 = *(v316 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v288 = v285 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v293 = v285 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v309 = v285 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v318 = (v285 - v31);
  v32 = MEMORY[0x28223BE20](v30);
  v319 = v285 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v310 = (v285 - v35);
  v36 = MEMORY[0x28223BE20](v34);
  v314 = v285 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = v285 - v39;
  MEMORY[0x28223BE20](v38);
  v298 = v285 - v41;
  v42 = sub_24A82CA34();
  v294 = *(v42 - 8);
  v43 = *(v294 + 64);
  v44 = MEMORY[0x28223BE20](v42);
  v289 = v285 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v291 = v285 - v47;
  MEMORY[0x28223BE20](v46);
  v295 = v285 - v48;
  v49 = sub_24A82C514();
  v323 = v49;
  v324 = sub_24A697DF4(&unk_281514680, MEMORY[0x277D08A28]);
  v50 = sub_24A697E3C(aBlock);
  (*(*(v49 - 8) + 104))(v50, *MEMORY[0x277D08A00], v49);
  v51 = sub_24A82C4D4();
  sub_24A6876E8(aBlock);
  if ((v51 & 1) == 0 || *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_shouldUseBeaconsOptimizationSPI) != 1)
  {
    if (qword_281515DC8 == -1)
    {
LABEL_8:
      v62 = sub_24A82CDC4();
      sub_24A6797D0(v62, qword_281518F88);
      v63 = sub_24A82CD94();
      v64 = sub_24A82D504();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_24A675000, v63, v64, "FMIPBeaconRefreshingController: app beacons FF disabled", v65, 2u);
        MEMORY[0x24C21E1D0](v65, -1, -1);
      }

      return;
    }

LABEL_60:
    swift_once();
    goto LABEL_8;
  }

  v286 = v42;
  v296 = v1;
  v320 = v22;
  sub_24A82CA24();
  sub_24A82CA94();
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v52 = sub_24A82CDC4();
  v53 = sub_24A6797D0(v52, qword_281518F88);
  v54 = v313;
  v306 = v313[2];
  (v306)(v21, v317, v17);
  v287 = v53;
  v55 = sub_24A82CD94();
  v56 = sub_24A82D4D4();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v305 = v17;
    v58 = v57;
    v304 = swift_slowAlloc();
    *v58 = 138412290;
    v59 = sub_24A82D994();
    (v54[1])(v21, v305);
    *(v58 + 4) = v59;
    v60 = v304;
    *v304 = v59;
    _os_log_impl(&dword_24A675000, v55, v56, "FMIPBeaconRefreshingController: beacons diff received %@", v58, 0xCu);
    sub_24A67F378(v60, &qword_27EF5D010, &qword_24A830E30);
    MEMORY[0x24C21E1D0](v60, -1, -1);
    v61 = v58;
    v17 = v305;
    MEMORY[0x24C21E1D0](v61, -1, -1);
  }

  else
  {

    (v54[1])(v21, v17);
  }

  v66 = v54;
  v326 = MEMORY[0x277D84F90];
  v67 = v296;
  v68 = *(v296 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshQueue);
  v69 = v312;
  (v306)(v312, v317, v17);
  v70 = (*(v66 + 80) + 32) & ~*(v66 + 80);
  v71 = swift_allocObject();
  *(v71 + 16) = &v326;
  *(v71 + 24) = v67;
  (v66[4])(v71 + v70, v69, v17);
  v72 = swift_allocObject();
  *(v72 + 16) = sub_24A81265C;
  *(v72 + 24) = v71;
  v285[1] = v71;
  v324 = sub_24A680674;
  v325 = v72;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A6805E4;
  v323 = &unk_285DCDB60;
  v73 = _Block_copy(aBlock);
  v74 = v325;

  dispatch_sync(v68, v73);
  _Block_release(v73);
  LOBYTE(v68) = swift_isEscapingClosureAtFileLocation();

  v75 = v320;
  if (v68)
  {
    __break(1u);
    goto LABEL_62;
  }

  v76 = sub_24A82CD94();
  LODWORD(v77) = sub_24A82D504();
  if (!os_log_type_enabled(v76, v77))
  {

    v67 = v311;
    goto LABEL_28;
  }

  v78 = swift_slowAlloc();
  v313 = swift_slowAlloc();
  aBlock[0] = v313;
  v317 = v78;
  *v78 = 136315138;
  swift_beginAccess();
  v79 = v326;
  v67 = v311;
  if (v326 >> 62)
  {
    goto LABEL_234;
  }

  for (i = *((v326 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A82D744())
  {
    v81 = MEMORY[0x277D84F90];
    if (i)
    {
      LODWORD(v306) = v77;
      v312 = v76;
      *&v327[0] = MEMORY[0x277D84F90];

      sub_24A6FCAAC(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
LABEL_236:
        sub_24A82DC44();
        __break(1u);
LABEL_237:
        sub_24A82DC44();
        __break(1u);
        return;
      }

      v82 = 0;
      v81 = *&v327[0];
      do
      {
        if ((v79 & 0xC000000000000001) != 0)
        {
          v83 = MEMORY[0x24C21D180](v82, v79);
        }

        else
        {
          v83 = *(v79 + 8 * v82 + 32);
        }

        v84 = v83;
        v85 = [v83 identifier];
        sub_24A82CA84();

        *&v327[0] = v81;
        v87 = *(v81 + 16);
        v86 = *(v81 + 24);
        if (v87 >= v86 >> 1)
        {
          sub_24A6FCAAC(v86 > 1, v87 + 1, 1);
          v81 = *&v327[0];
        }

        ++v82;
        *(v81 + 16) = v87 + 1;
        v88 = v81 + ((*(v316 + 80) + 32) & ~*(v316 + 80)) + *(v316 + 72) * v87;
        v75 = v320;
        (*(v316 + 32))(v88, v40, v320);
      }

      while (i != v82);

      v67 = v311;
      v76 = v312;
      LOBYTE(v77) = v306;
    }

    v89 = MEMORY[0x24C21CB60](v81, v75);
    v91 = v90;

    v92 = sub_24A68761C(v89, v91, aBlock);

    v93 = v317;
    *(v317 + 4) = v92;
    _os_log_impl(&dword_24A675000, v76, v77, "FMIPBeaconRefreshingController: beacons received %s", v93, 0xCu);
    v94 = v313;
    sub_24A6876E8(v313);
    MEMORY[0x24C21E1D0](v94, -1, -1);
    MEMORY[0x24C21E1D0](v93, -1, -1);

LABEL_28:
    v73 = v314;
    v74 = v315;
    swift_beginAccess();
    v72 = v326;
    if (!(v326 >> 62))
    {
      v95 = *((v326 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v95)
      {
        goto LABEL_30;
      }

      goto LABEL_63;
    }

LABEL_62:
    v95 = sub_24A82D744();
    if (v95)
    {
LABEL_30:
      v317 = v72 & 0xC000000000000001;
      v312 = v72 & 0xFFFFFFFFFFFFFF8;
      v96 = *MEMORY[0x277D497C8];
      v303 = v316 + 16;
      v304 = v96;
      v306 = v316 + 8;

      v97 = 0;
      v301 = MEMORY[0x277D84F98];
      while (1)
      {
        if (v317)
        {
          v99 = MEMORY[0x24C21D180](v97, v72);
        }

        else
        {
          if (v97 >= *(v312 + 16))
          {
            goto LABEL_57;
          }

          v99 = *(v72 + 8 * v97 + 32);
        }

        v100 = v99;
        v101 = v97 + 1;
        if (__OFADD__(v97, 1))
        {
          break;
        }

        v102 = [v99 role];
        if (v102)
        {
          v98 = v102;
        }

        else
        {
          v103 = [v100 identifier];
          sub_24A82CA84();

          v104 = [v100 taskInformation];
          type metadata accessor for SPBeaconTaskName(0);
          sub_24A679170(0, &qword_27EF5DD20, 0x277D49648);
          sub_24A697DF4(&qword_27EF5CEF8, type metadata accessor for SPBeaconTaskName);
          v105 = sub_24A82CEF4();

          if (*(v105 + 16))
          {
            v106 = sub_24A77EE90(v304);
            v107 = v301;
            if (v108)
            {
              v109 = *(*(v105 + 56) + 8 * v106);

              v110 = [v109 state];

              LODWORD(v313) = v110 == 0;
            }

            else
            {

              LODWORD(v313) = 0;
            }
          }

          else
          {

            LODWORD(v313) = 0;
            v107 = v301;
          }

          v111 = v107;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock[0] = v111;
          v113 = sub_24A77EDF8(v73);
          v115 = *(v111 + 16);
          v116 = (v114 & 1) == 0;
          v117 = __OFADD__(v115, v116);
          v118 = v115 + v116;
          if (v117)
          {
            goto LABEL_58;
          }

          v119 = v114;
          if (*(v111 + 24) >= v118)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v130 = v113;
              sub_24A787ABC();
              v113 = v130;
            }
          }

          else
          {
            sub_24A783E7C(v118, isUniquelyReferenced_nonNull_native);
            v113 = sub_24A77EDF8(v73);
            if ((v119 & 1) != (v120 & 1))
            {
              goto LABEL_236;
            }
          }

          v75 = v320;
          v121 = aBlock[0];
          v301 = aBlock[0];
          if (v119)
          {
            *(*(aBlock[0] + 56) + v113) = v313;

            v73 = v314;
            (*v306)(v314, v75);
          }

          else
          {
            v122 = v95;
            v123 = v72;
            *(aBlock[0] + 8 * (v113 >> 6) + 64) |= 1 << v113;
            v124 = v316;
            v125 = v121[6] + *(v316 + 72) * v113;
            v126 = *(v316 + 16);
            v305 = v113;
            v127 = v314;
            v126(v125, v314, v75);
            *(v121[7] + v305) = v313;

            (*(v124 + 8))(v127, v75);
            v128 = v121[2];
            v117 = __OFADD__(v128, 1);
            v129 = v128 + 1;
            if (v117)
            {
              goto LABEL_59;
            }

            v121[2] = v129;
            v73 = v314;
            v72 = v123;
            v95 = v122;
          }

          v67 = v311;
        }

        ++v97;
        if (v101 == v95)
        {

          v74 = v315;
          goto LABEL_64;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

LABEL_63:
    v301 = MEMORY[0x277D84F98];
LABEL_64:
    v131 = v326;
    if (v326 >> 62)
    {
      goto LABEL_108;
    }

    v132 = *((v326 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v132)
    {
LABEL_66:
      v297 = v131 & 0xFFFFFFFFFFFFFF8;
      v317 = v316 + 8;
      v305 = v316 + 16;
      v306 = v131 & 0xC000000000000001;
      v133 = v131;

      v134 = v133;
      v135 = 0;
      v136 = MEMORY[0x277D84F98];
      v312 = MEMORY[0x277D84F98];
      v313 = MEMORY[0x277D84F98];
      v303 = v132;
      v304 = v133;
      while (1)
      {
        if (v306)
        {
          v138 = MEMORY[0x24C21D180](v135, v134);
          v67 = v310;
          v74 = v135 + 1;
          if (__OFADD__(v135, 1))
          {
            goto LABEL_102;
          }
        }

        else
        {
          v67 = v310;
          if (v135 >= *(v297 + 16))
          {
            goto LABEL_107;
          }

          v138 = v134[v135 + 4];
          v74 = v135 + 1;
          if (__OFADD__(v135, 1))
          {
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
            v180 = v131;
            v181 = sub_24A82D744();
            v131 = v180;
            v132 = v181;
            if (!v181)
            {
              break;
            }

            goto LABEL_66;
          }
        }

        v139 = [v138 identifier];
        sub_24A82CA84();

        v140 = [v138 accessoryProductInfo];
        if (v140)
        {
          v141 = v140;
          v142 = [v140 capabilities];

          v143 = swift_isUniquelyReferenced_nonNull_native();
          aBlock[0] = v136;
          sub_24A785380((v142 & 0x400) != 0, v67, v143);
          v144 = *v317;
          (*v317)(v67, v75);
          v314 = aBlock[0];
        }

        else
        {
          v145 = sub_24A77EDF8(v67);
          if (v146)
          {
            v147 = v145;
            v148 = swift_isUniquelyReferenced_nonNull_native();
            aBlock[0] = v136;
            if ((v148 & 1) == 0)
            {
              sub_24A787ABC();
              v136 = aBlock[0];
            }

            v149 = *(v136 + 6) + *(v316 + 72) * v147;
            v150 = v136;
            v144 = *(v316 + 8);
            v144(v149, v75);
            v314 = v150;
            sub_24A7C5384(v147, v150);
            v144(v67, v75);
          }

          else
          {
            v314 = v136;
            v144 = *v317;
            (*v317)(v67, v75);
          }
        }

        v151 = [v138 identifier];
        v152 = v319;
        sub_24A82CA84();

        v153 = [v138 connected];
        v154 = v313;
        v155 = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v154;
        v67 = sub_24A77EDF8(v152);
        v157 = v154[2];
        v131 = (v156 & 1) == 0;
        v158 = v157 + v131;
        if (__OFADD__(v157, v131))
        {
          goto LABEL_103;
        }

        v159 = v156;
        if (v154[3] >= v158)
        {
          if ((v155 & 1) == 0)
          {
            sub_24A787ABC();
          }
        }

        else
        {
          sub_24A783E7C(v158, v155);
          v160 = sub_24A77EDF8(v319);
          if ((v159 & 1) != (v161 & 1))
          {
            goto LABEL_236;
          }

          v67 = v160;
        }

        v162 = aBlock[0];
        v313 = aBlock[0];
        if (v159)
        {
          *(*(aBlock[0] + 56) + v67) = v153;
          v75 = v320;
        }

        else
        {
          *(aBlock[0] + 8 * (v67 >> 6) + 64) |= 1 << v67;
          v75 = v320;
          (*(v316 + 16))(v162[6] + *(v316 + 72) * v67, v319, v320);
          *(v162[7] + v67) = v153;
          v163 = v162[2];
          v117 = __OFADD__(v163, 1);
          v164 = v163 + 1;
          if (v117)
          {
            goto LABEL_105;
          }

          v162[2] = v164;
        }

        v144(v319, v75);
        v165 = [v138 identifier];
        v166 = v318;
        sub_24A82CA84();

        sub_24A8002F0([v138 type], v327);
        v67 = LOBYTE(v327[0]);
        v167 = v312;
        v168 = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v167;
        v169 = sub_24A77EDF8(v166);
        v171 = *(v167 + 16);
        v131 = (v170 & 1) == 0;
        v117 = __OFADD__(v171, v131);
        v172 = v171 + v131;
        if (v117)
        {
          goto LABEL_104;
        }

        v173 = v170;
        if (*(v167 + 24) >= v172)
        {
          if ((v168 & 1) == 0)
          {
            v179 = v169;
            sub_24A787D2C();
            v169 = v179;
          }
        }

        else
        {
          sub_24A78423C(v172, v168);
          v169 = sub_24A77EDF8(v318);
          if ((v173 & 1) != (v174 & 1))
          {
            goto LABEL_237;
          }
        }

        v175 = aBlock[0];
        v312 = aBlock[0];
        if (v173)
        {
          *(*(aBlock[0] + 56) + v169) = v67;
        }

        else
        {
          *(aBlock[0] + 8 * (v169 >> 6) + 64) |= 1 << v169;
          v176 = v169;
          (*(v316 + 16))(v175[6] + *(v316 + 72) * v169, v318, v75);
          *(v175[7] + v176) = v67;
          v177 = v175[2];
          v117 = __OFADD__(v177, 1);
          v178 = v177 + 1;
          if (v117)
          {
            goto LABEL_106;
          }

          v175[2] = v178;
        }

        v144(v318, v75);
        ++v135;
        v134 = v304;
        v137 = v74 == v303;
        v67 = v311;
        v136 = v314;
        v74 = v315;
        if (v137)
        {

          goto LABEL_110;
        }
      }
    }

    v136 = MEMORY[0x277D84F98];
    v312 = MEMORY[0x277D84F98];
    v313 = MEMORY[0x277D84F98];
LABEL_110:
    v182 = v326;
    if (v326 >> 62)
    {
      goto LABEL_140;
    }

    v183 = *((v326 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v183)
    {
LABEL_112:
      v305 = v316 + 16;
      v306 = v182 & 0xFFFFFFFFFFFFFF8;
      v318 = (v316 + 8);
      v319 = v182 & 0xC000000000000001;

      v184 = 0;
      v185 = MEMORY[0x277D84F98];
      v186 = &off_278FE8000;
      v314 = v136;
      v317 = v182;
      v310 = v183;
      while (1)
      {
        if (v319)
        {
          v187 = MEMORY[0x24C21D180](v184, v182);
        }

        else
        {
          if (v184 >= *(v306 + 16))
          {
            goto LABEL_138;
          }

          v187 = *(v182 + 8 * v184 + 32);
        }

        v75 = v187;
        v74 = v184 + 1;
        if (__OFADD__(v184, 1))
        {
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          v183 = sub_24A82D744();
          if (!v183)
          {
            break;
          }

          goto LABEL_112;
        }

        v188 = [v187 v186[230]];
        if (!v188)
        {

          v75 = v320;
          goto LABEL_114;
        }

        v189 = [v75 v186[230]];
        if (!v189)
        {

          v75 = v320;
          v186 = &off_278FE8000;
          goto LABEL_114;
        }

        v190 = v189;
        v182 = [v75 identifier];
        v191 = v309;
        sub_24A82CA84();

        v67 = v190;
        v192 = v300;
        FMIPDeviceLostModeMetadata.init(lostModeInfo:)(v67, v300);
        sub_24A8127B4(v192, v302, type metadata accessor for FMIPDeviceLostModeMetadata);
        v193 = v185;
        v194 = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v193;
        v196 = sub_24A77EDF8(v191);
        v197 = *(v193 + 16);
        v198 = (v195 & 1) == 0;
        v199 = v197 + v198;
        if (__OFADD__(v197, v198))
        {
          goto LABEL_137;
        }

        v200 = v195;
        if (*(v193 + 24) >= v199)
        {
          v186 = &off_278FE8000;
          if (v194)
          {
            goto LABEL_129;
          }

          sub_24A787FB0();
        }

        else
        {
          sub_24A784610(v199, v194);
          v201 = sub_24A77EDF8(v309);
          if ((v200 & 1) != (v202 & 1))
          {
            goto LABEL_236;
          }

          v196 = v201;
        }

        v186 = &off_278FE8000;
LABEL_129:
        v185 = aBlock[0];
        if (v200)
        {
          sub_24A8142DC(v302, *(aBlock[0] + 56) + *(v299 + 72) * v196, type metadata accessor for FMIPDeviceLostModeMetadata);

          v75 = v320;
          (*v318)(v309, v320);
        }

        else
        {
          *(aBlock[0] + 8 * (v196 >> 6) + 64) |= 1 << v196;
          v182 = v316;
          v203 = *(v185 + 48) + *(v316 + 72) * v196;
          v136 = v185;
          v204 = v309;
          v205 = v320;
          (*(v316 + 16))(v203, v309, v320);
          sub_24A8127B4(v302, *(v136 + 7) + *(v299 + 72) * v196, type metadata accessor for FMIPDeviceLostModeMetadata);

          v75 = v205;
          v206 = v204;
          v185 = v136;
          (*(v182 + 8))(v206, v205);
          v207 = *(v136 + 2);
          v117 = __OFADD__(v207, 1);
          v208 = v207 + 1;
          if (v117)
          {
            goto LABEL_139;
          }

          *(v136 + 2) = v208;
          v136 = v314;
          v186 = &off_278FE8000;
        }

        v183 = v310;
        v67 = v311;
        v182 = v317;
LABEL_114:
        ++v184;
        v137 = v74 == v183;
        v74 = v315;
        if (v137)
        {

          goto LABEL_142;
        }
      }
    }

    v185 = MEMORY[0x277D84F98];
LABEL_142:
    v209 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_delegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    v309 = v185;
    v306 = v209;
    if (Strong)
    {
      sub_24A6BBA94(&qword_27EF5F8C0, &qword_24A8415E8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24A838490;
      *(inited + 32) = 0;
      *(inited + 40) = v301;
      *(inited + 48) = 2;
      *(inited + 56) = v136;
      *(inited + 64) = 1;
      *(inited + 72) = v313;
      v212 = sub_24A78B0B0(inited);
      swift_setDeallocating();

      sub_24A6BBA94(&qword_27EF5F8C8, &unk_24A8415F0);
      swift_arrayDestroy();
      sub_24A6AD900(v212);
      v185 = v309;

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v213 = v298;
    v214 = v291;
    v79 = v292;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_24A7513DC(v312);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_24A7517CC(v185);
      swift_unknownObjectRelease();
    }

    v215 = *(sub_24A6BBA94(&qword_27EF5ECD8, &qword_24A83B8C0) + 48);
    v310 = *(v316 + 16);
    v311 = (v316 + 16);
    v310(v79, v213, v75);
    v216 = v294;
    v217 = v286;
    (*(v294 + 16))(v79 + v215, v295, v286);
    swift_storeEnumTagMultiPayload();
    (*(v216 + 56))(v74, 1, 1, v217);
    v218 = type metadata accessor for FMIPItemUpdateContext(0);
    v219 = *(v218 + 48);
    v220 = *(v218 + 52);
    v221 = swift_allocObject();
    sub_24A8126CC(v79, v221 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_type, type metadata accessor for FMIPItemUpdateType);
    sub_24A82CA24();
    v222 = *(v216 + 32);
    v318 = v221;
    v223 = v221 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_timestamp;
    v224 = v222;
    v222(v223, v214, v217);
    sub_24A67E964(v74, v67, &qword_27EF5E0E0, &qword_24A836D90);
    v225 = *(v216 + 48);
    if (v225(v67, 1, v217) == 1)
    {
      v319 = v224;
      v226 = v289;
      sub_24A82CA24();
      sub_24A67F378(v74, &qword_27EF5E0E0, &qword_24A836D90);
      sub_24A812734(v79, type metadata accessor for FMIPItemUpdateType);
      v227 = v225(v67, 1, v217);
      v228 = v226;
      v224 = v319;
      if (v227 != 1)
      {
        sub_24A67F378(v67, &qword_27EF5E0E0, &qword_24A836D90);
      }
    }

    else
    {
      sub_24A67F378(v74, &qword_27EF5E0E0, &qword_24A836D90);
      sub_24A812734(v79, type metadata accessor for FMIPItemUpdateType);
      v228 = v289;
      v224(v289, v67, v217);
    }

    v224(v318 + OBJC_IVAR____TtC8FMIPCore21FMIPItemUpdateContext_creationTimestamp, v228, v217);
    v76 = v326;
    aBlock[0] = MEMORY[0x277D84F90];
    if (!(v326 >> 62))
    {
      v229 = *((v326 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_155;
    }

    while (1)
    {
      v229 = sub_24A82D744();
LABEL_155:

      v230 = MEMORY[0x277D84F90];
      if (v229)
      {
        v231 = 0;
        v75 = (v76 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if ((v76 & 0xC000000000000001) != 0)
          {
            v232 = MEMORY[0x24C21D180](v231, v76);
          }

          else
          {
            if (v231 >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_214;
            }

            v232 = *(v76 + 8 * v231 + 32);
          }

          v79 = v232;
          v233 = v231 + 1;
          if (__OFADD__(v231, 1))
          {
            break;
          }

          v234 = [v232 role];
          if (v234)
          {

            sub_24A82D8D4();
            v67 = *(aBlock[0] + 16);
            sub_24A82D8F4();
            sub_24A82D904();
            sub_24A82D8E4();
          }

          else
          {
          }

          ++v231;
          if (v233 == v229)
          {
            v235 = aBlock[0];
            v75 = v320;
            v230 = MEMORY[0x277D84F90];
            goto LABEL_168;
          }
        }

        __break(1u);
LABEL_214:
        __break(1u);
        goto LABEL_215;
      }

      v235 = MEMORY[0x277D84F90];
LABEL_168:

      aBlock[0] = v230;
      if (v235 < 0 || (v235 & 0x4000000000000000) != 0)
      {
        v236 = sub_24A82D744();
      }

      else
      {
        v236 = *(v235 + 16);
      }

      v319 = v296 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy;
      v237 = MEMORY[0x277D84F90];
      if (!v236)
      {
        break;
      }

      v79 = 0;
      v76 = 0;
      v317 = v235 & 0xC000000000000001;
      v314 = v235;
      v315 = v236;
      while (1)
      {
        if (v317)
        {
          v238 = MEMORY[0x24C21D180](v79, v235);
        }

        else
        {
          if (v79 >= *(v235 + 16))
          {
            goto LABEL_216;
          }

          v238 = *(v235 + 8 * v79 + 32);
        }

        v67 = v238;
        v239 = (v79 + 1);
        if (__OFADD__(v79, 1))
        {
          break;
        }

        v240 = *(v319 + 16);
        v327[0] = *v319;
        v327[1] = v240;
        v328 = *(v319 + 32);
        v329 = *(&v240 + 1);
        v330[0] = v240;
        sub_24A67E964(v330, v321, &qword_27EF5DA28, &qword_24A8415A0);
        sub_24A67E964(&v329, v321, &qword_27EF5F878, &qword_24A8415A8);
        v241 = sub_24A7B56DC();
        sub_24A67F378(v330, &qword_27EF5DA28, &qword_24A8415A0);
        sub_24A67F378(&v329, &qword_27EF5F878, &qword_24A8415A8);
        v242 = [v241 searchTypes];

        type metadata accessor for SPBeaconType(0);
        v243 = sub_24A82D244();

        v244 = [v67 type];
        v321[0] = v244;
        MEMORY[0x28223BE20](v244);
        v285[-2] = v321;
        v245 = sub_24A7FD954(sub_24A812794, &v285[-4], v243);

        if (v245)
        {
          sub_24A82D8D4();
          v246 = *(aBlock[0] + 16);
          sub_24A82D8F4();
          sub_24A82D904();
          sub_24A82D8E4();
        }

        else
        {
        }

        v235 = v314;
        ++v79;
        v75 = v320;
        if (v239 == v315)
        {
          v76 = aBlock[0];
          v237 = MEMORY[0x277D84F90];
          goto LABEL_184;
        }
      }

LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
    }

    v76 = MEMORY[0x277D84F90];
LABEL_184:

    aBlock[0] = v237;
    if (v76 < 0 || (v76 & 0x4000000000000000) != 0)
    {
      v247 = sub_24A82D744();
    }

    else
    {
      v247 = *(v76 + 16);
    }

    v248 = MEMORY[0x277D84F90];
    if (v247)
    {
      v249 = 0;
      v75 = (v76 & 0xC000000000000001);
      while (1)
      {
        if (v75)
        {
          v250 = MEMORY[0x24C21D180](v249, v76);
        }

        else
        {
          if (v249 >= *(v76 + 16))
          {
            goto LABEL_218;
          }

          v250 = *(v76 + 8 * v249 + 32);
        }

        v79 = v250;
        v251 = v249 + 1;
        if (__OFADD__(v249, 1))
        {
          goto LABEL_217;
        }

        if (*(v319 + 32) == 1 && ([v250 isAppleAudioAccessory] & 1) != 0)
        {
        }

        else
        {
          sub_24A82D8D4();
          v67 = *(aBlock[0] + 16);
          sub_24A82D8F4();
          sub_24A82D904();
          sub_24A82D8E4();
        }

        ++v249;
        if (v251 == v247)
        {
          v252 = v248;
          v253 = aBlock[0];
          v75 = v320;
          goto LABEL_201;
        }
      }
    }

    v252 = MEMORY[0x277D84F90];
    v253 = MEMORY[0x277D84F90];
LABEL_201:

    v77 = v293;

    v40 = sub_24A82D744();
    if (!v40)
    {
      goto LABEL_223;
    }

LABEL_204:
    v321[0] = v252;
    sub_24A6FCB30(0, v40 & ~(v40 >> 63), 0);
    if ((v40 & 0x8000000000000000) == 0)
    {
      v254 = 0;
      v255 = v321[0];
      do
      {
        if ((v253 & 0xC000000000000001) != 0)
        {
          v256 = MEMORY[0x24C21D180](v254, v253);
        }

        else
        {
          v256 = *(v253 + 8 * v254 + 32);
        }

        v257 = v256;
        v323 = sub_24A679170(0, &qword_27EF5F8B8, 0x277D49608);
        v324 = &protocol witness table for SPApplicationBeacon;
        aBlock[0] = v257;
        v258 = v318;

        v259 = v308;
        FMIPItem.init(with:from:)(aBlock, v258, v308);
        v321[0] = v255;
        v261 = *(v255 + 16);
        v260 = *(v255 + 24);
        if (v261 >= v260 >> 1)
        {
          sub_24A6FCB30(v260 > 1, v261 + 1, 1);
          v259 = v308;
          v255 = v321[0];
        }

        ++v254;
        *(v255 + 16) = v261 + 1;
        sub_24A8127B4(v259, v255 + ((*(v307 + 80) + 32) & ~*(v307 + 80)) + *(v307 + 72) * v261, type metadata accessor for FMIPItem);
      }

      while (v40 != v254);

      v75 = v320;
      v77 = v293;
      goto LABEL_224;
    }

    __break(1u);
LABEL_234:
    ;
  }

  v40 = *(v253 + 16);
  if (v40)
  {
    goto LABEL_204;
  }

LABEL_223:

  v255 = MEMORY[0x277D84F90];
LABEL_224:

  v263 = sub_24A8059B8(v262, &qword_27EF5F8B8, 0x277D49608, &protocol witness table for SPApplicationBeacon);

  sub_24A8136F8(v263);

  v310(v77, v298, v75);
  v264 = sub_24A82CD94();
  v265 = sub_24A82D504();
  if (os_log_type_enabled(v264, v265))
  {
    v266 = v77;
    v267 = swift_slowAlloc();
    v268 = swift_slowAlloc();
    aBlock[0] = v268;
    *v267 = 136315138;
    v320 = sub_24A82CA54();
    v270 = v269;
    v271 = *(v316 + 8);
    v271(v266, v75);
    v272 = sub_24A68761C(v320, v270, aBlock);

    *(v267 + 4) = v272;
    _os_log_impl(&dword_24A675000, v264, v265, "FMIPBeaconRefreshingController: separation state %s", v267, 0xCu);
    sub_24A6876E8(v268);
    MEMORY[0x24C21E1D0](v268, -1, -1);
    MEMORY[0x24C21E1D0](v267, -1, -1);
  }

  else
  {

    v271 = *(v316 + 8);
    v271(v77, v75);
  }

  v273 = v288;
  v274 = swift_unknownObjectWeakLoadStrong();
  v275 = v298;
  if (v274)
  {
    sub_24A751A04(v255);
    swift_unknownObjectRelease();
  }

  v310(v273, v275, v75);
  v276 = sub_24A82CD94();
  v277 = sub_24A82D504();
  if (os_log_type_enabled(v276, v277))
  {
    v278 = swift_slowAlloc();
    v279 = swift_slowAlloc();
    aBlock[0] = v279;
    *v278 = 136315138;
    v280 = sub_24A82CA54();
    v281 = v273;
    v283 = v282;
    v271(v281, v75);
    v284 = sub_24A68761C(v280, v283, aBlock);

    *(v278 + 4) = v284;
    _os_log_impl(&dword_24A675000, v276, v277, "FMIPBeaconRefreshingController: items updated %s", v278, 0xCu);
    sub_24A6876E8(v279);
    MEMORY[0x24C21E1D0](v279, -1, -1);
    MEMORY[0x24C21E1D0](v278, -1, -1);

    v271(v298, v75);
  }

  else
  {

    v271(v273, v75);
    v271(v275, v75);
  }

  (*(v294 + 8))(v295, v286);
}

uint64_t sub_24A808760(uint64_t *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_appBeacons;
  v9 = *(a2 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_appBeacons);
  sub_24A6BBA94(&qword_27EF5F8D0, &unk_24A841608);
  sub_24A68795C(&qword_27EF5F8D8, &qword_27EF5F8D0, &unk_24A841608);
  sub_24A82D444();
  v5 = v10;
  if (!v10)
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = *a1;
  *a1 = v5;

  v7 = *(a2 + v4);
  *(a2 + v4) = *a1;
}

uint64_t sub_24A808850(uint64_t a1)
{
  v3 = sub_24A82CDF4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24A82CE54();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v18);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshQueue);
  v12 = *(a1 + 16);
  v21 = *(a1 + 24);
  v22 = v12;
  v13 = swift_allocObject();
  v14 = *(a1 + 16);
  *(v13 + 16) = *a1;
  *(v13 + 32) = v14;
  *(v13 + 48) = *(a1 + 32);
  *(v13 + 56) = v1;
  aBlock[4] = sub_24A812648;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCD8E0;
  v15 = _Block_copy(aBlock);
  sub_24A67E964(&v22, &v19, &qword_27EF5DA28, &qword_24A8415A0);
  sub_24A67E964(&v21, &v19, &qword_27EF5F878, &qword_24A8415A8);

  sub_24A82CE24();
  v19 = MEMORY[0x277D84F90];
  sub_24A697DF4(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v11, v7, v15);
  _Block_release(v15);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v18);
}

void sub_24A808B78(uint64_t a1, uint64_t a2)
{
  v3 = sub_24A7B56DC();
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A82CDC4();
  sub_24A6797D0(v4, qword_281518F88);
  v5 = v3;

  v6 = sub_24A82CD94();
  v7 = sub_24A82D504();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock[0] = v29;
    *v8 = 136315394;
    v9 = sub_24A82CA54();
    v11 = sub_24A695068(0xCuLL, v9, v10);
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = MEMORY[0x24C21C960](v11, v13, v15, v17);
    v20 = v19;

    v21 = sub_24A68761C(v18, v20, aBlock);

    *(v8 + 4) = v21;
    *(v8 + 12) = 2048;
    v22 = [v5 searchIdentifiers];
    sub_24A82CAA4();
    v23 = sub_24A82D244();

    v24 = *(v23 + 16);

    *(v8 + 14) = v24;

    _os_log_impl(&dword_24A675000, v6, v7, "🥑 FMIPBeaconRefreshingController<%s> asking %ld snapshot locations…", v8, 0x16u);
    sub_24A6876E8(v29);
    MEMORY[0x24C21E1D0](v29, -1, -1);
    MEMORY[0x24C21E1D0](v8, -1, -1);
  }

  else
  {
  }

  v25 = *(a2 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_ownerSession);
  v26 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_24A812654;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A79A890;
  aBlock[3] = &unk_285DCD908;
  v27 = _Block_copy(aBlock);
  v28 = v25;

  [v28 locationForContext:v5 completion:v27];
  _Block_release(v27);
}

uint64_t sub_24A808E8C(void *a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    if (a2)
    {
      v6 = a2;
      if (qword_281515DC8 != -1)
      {
        swift_once();
      }

      v7 = sub_24A82CDC4();
      sub_24A6797D0(v7, qword_281518F88);
      v8 = a2;

      v9 = sub_24A82CD94();
      v10 = sub_24A82D504();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        aBlock = v72;
        *v11 = 136315394;
        v12 = sub_24A82CA54();
        v14 = sub_24A695068(0xCuLL, v12, v13);
        v16 = v15;
        v17 = v5;
        v19 = v18;
        v21 = v20;

        v22 = v19;
        v5 = v17;
        v23 = MEMORY[0x24C21C960](v14, v16, v22, v21);
        v25 = v24;

        v26 = sub_24A68761C(v23, v25, &aBlock);

        *(v11 + 4) = v26;
        *(v11 + 12) = 2080;
        swift_getErrorValue();
        v27 = sub_24A82DC74();
        v29 = sub_24A68761C(v27, v28, &aBlock);

        *(v11 + 14) = v29;
        _os_log_impl(&dword_24A675000, v9, v10, "🥑 FMIPBeaconRefreshingController<%s> failed obtaining snapshot locations %s", v11, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C21E1D0](v72, -1, -1);
        MEMORY[0x24C21E1D0](v11, -1, -1);
      }

      v30 = sub_24A78B5E0(MEMORY[0x277D84F90]);
      v31 = swift_allocObject();
      *(v31 + 16) = v30;
      *(v31 + 24) = v5;
      a1 = swift_allocObject();
      a1[2] = sub_24A814B68;
      a1[3] = v31;
      v84 = sub_24A680674;
      v85 = a1;
      aBlock = MEMORY[0x277D85DD0];
      v81 = 1107296256;
      v82 = sub_24A6805E4;
      v83 = &unk_285DCDA70;
      v32 = _Block_copy(&aBlock);
      v33 = _Block_copy(v32);
      v34 = qword_281513E40;

      if (v34 != -1)
      {
        swift_once();
      }

      v35 = _os_activity_create(&dword_24A675000, "FMIPBeaconRefreshingController.refreshLocations", qword_281513E48[0], OS_ACTIVITY_FLAG_DEFAULT);
      v36 = _Block_copy(v33);
      v37 = swift_allocObject();
      *(v37 + 16) = v36;
      v38 = swift_allocObject();
      *(v38 + 16) = sub_24A6A9A80;
      *(v38 + 24) = v37;
      v78 = sub_24A680674;
      v79 = v38;
      v74 = MEMORY[0x277D85DD0];
      v75 = 1107296256;
      v76 = sub_24A6805E4;
      v77 = &unk_285DCDAE8;
      v5 = _Block_copy(&v74);

      os_activity_apply(v35, v5);
      _Block_release(v5);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      _Block_release(v32);
      _Block_release(v33);
      swift_unknownObjectRelease();
      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
        goto LABEL_25;
      }

      v40 = swift_isEscapingClosureAtFileLocation();

      if ((v40 & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }

    if (a1)
    {
      v41 = [a1 locationsByBeaconIdentifier];
      sub_24A82CAA4();
      sub_24A679170(0, &qword_27EF5E568, 0x277D49620);
      sub_24A697DF4(&qword_281514670, MEMORY[0x277CC95F0]);
      a2 = sub_24A82CEF4();
    }

    else
    {
      a2 = sub_24A78B5E0(MEMORY[0x277D84F90]);
    }

    if (qword_281515DC8 == -1)
    {
LABEL_16:
      v42 = sub_24A82CDC4();
      sub_24A6797D0(v42, qword_281518F88);
      swift_bridgeObjectRetain_n();

      v43 = sub_24A82CD94();
      v44 = sub_24A82D504();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        aBlock = v73;
        *v45 = 136315394;
        v46 = sub_24A82CA54();
        v48 = sub_24A695068(0xCuLL, v46, v47);
        v50 = v49;
        v52 = v51;
        v53 = v5;
        v55 = v54;

        v56 = MEMORY[0x24C21C960](v48, v50, v52, v55);
        v58 = v57;
        v5 = v53;

        v59 = sub_24A68761C(v56, v58, &aBlock);

        *(v45 + 4) = v59;
        *(v45 + 12) = 2048;
        v60 = a2[2];

        *(v45 + 14) = v60;

        _os_log_impl(&dword_24A675000, v43, v44, "🥑 FMIPBeaconRefreshingController<%s> obtained %ld snapshot locations", v45, 0x16u);
        sub_24A6876E8(v73);
        MEMORY[0x24C21E1D0](v73, -1, -1);
        MEMORY[0x24C21E1D0](v45, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v61 = swift_allocObject();
      *(v61 + 16) = a2;
      *(v61 + 24) = v5;
      v62 = swift_allocObject();
      *(v62 + 16) = sub_24A814B68;
      *(v62 + 24) = v61;
      v84 = sub_24A680674;
      v85 = v62;
      aBlock = MEMORY[0x277D85DD0];
      v81 = 1107296256;
      v82 = sub_24A6805E4;
      v83 = &unk_285DCD980;
      v63 = _Block_copy(&aBlock);
      v64 = _Block_copy(v63);
      v65 = qword_281513E40;

      if (v65 != -1)
      {
        swift_once();
      }

      v66 = _os_activity_create(&dword_24A675000, "FMIPBeaconRefreshingController.refreshLocations", qword_281513E48[0], OS_ACTIVITY_FLAG_DEFAULT);
      v67 = _Block_copy(v64);
      v68 = swift_allocObject();
      *(v68 + 16) = v67;
      v69 = swift_allocObject();
      *(v69 + 16) = sub_24A6A9A80;
      *(v69 + 24) = v68;
      v78 = sub_24A680674;
      v79 = v69;
      v74 = MEMORY[0x277D85DD0];
      v75 = 1107296256;
      v76 = sub_24A6805E4;
      v77 = &unk_285DCD9F8;
      v70 = _Block_copy(&v74);

      os_activity_apply(v66, v70);
      _Block_release(v70);
      LOBYTE(v70) = swift_isEscapingClosureAtFileLocation();

      _Block_release(v63);
      _Block_release(v64);
      result = swift_unknownObjectRelease();
      if (v70)
      {
        __break(1u);
      }

      else
      {

        v71 = swift_isEscapingClosureAtFileLocation();

        if ((v71 & 1) == 0)
        {
          return result;
        }
      }

      __break(1u);
      return result;
    }

LABEL_25:
    swift_once();
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_24A8098B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A82CDF4();
  v24 = *(v6 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24A82CE54();
  v10 = *(v23 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v23);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v14 = sub_24A82CDC4();
  sub_24A6797D0(v14, qword_281518F88);
  sub_24A6A7314(a1);
  v15 = sub_24A82CD94();
  v16 = sub_24A82D504();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    *(v17 + 4) = a1 == 0;
    sub_24A753E6C(a1);
    _os_log_impl(&dword_24A675000, v15, v16, "FMIPBeaconRefreshingController: Refreshing unknown beacons isCompletionNil? %{BOOL}d", v17, 8u);
    MEMORY[0x24C21E1D0](v17, -1, -1);
  }

  else
  {
    sub_24A753E6C(a1);
  }

  v18 = *(a3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshQueue);
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a1;
  v19[4] = a2;
  aBlock[4] = sub_24A81435C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCDDE0;
  v20 = _Block_copy(aBlock);
  sub_24A6A7314(a1);

  sub_24A82CE24();
  v25 = MEMORY[0x277D84F90];
  sub_24A697DF4(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v13, v9, v20);
  _Block_release(v20);
  (*(v24 + 8))(v9, v6);
  (*(v10 + 8))(v13, v23);
}

void sub_24A809C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A82CDC4();
  sub_24A6797D0(v6, qword_281518F88);
  v7 = sub_24A82CD94();
  v8 = sub_24A82D504();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24A675000, v7, v8, "FMIPBeaconRefreshingController: Calling SPOwnerSession - unknownBeacons", v9, 2u);
    MEMORY[0x24C21E1D0](v9, -1, -1);
  }

  v10 = *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_ownerSession);
  sub_24A82CAA4();
  v11 = v10;
  v12 = sub_24A82D224();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v15[4] = sub_24A814368;
  v15[5] = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_24A73E030;
  v15[3] = &unk_285DCDE30;
  v14 = _Block_copy(v15);

  sub_24A6A7314(a2);

  [v11 unknownBeaconsForUUIDs:v12 completion:v14];
  _Block_release(v14);
}

uint64_t sub_24A809E8C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a3;
  v49 = a4;
  v6 = type metadata accessor for FMIPUnknownItem();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v47 - v13;
  MEMORY[0x28223BE20](v12);
  v53 = &v47 - v15;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v16 = sub_24A82CDC4();
  v17 = sub_24A6797D0(v16, qword_281518F88);

  v57 = v17;
  v18 = sub_24A82CD94();
  v19 = sub_24A82D504();

  v20 = os_log_type_enabled(v18, v19);
  v50 = a2;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    sub_24A679170(0, &qword_27EF5DF78, 0x277D496E0);
    v23 = sub_24A82D224();
    *(v21 + 4) = v23;
    *v22 = v23;
    _os_log_impl(&dword_24A675000, v18, v19, "FMIPBeaconRefreshingController: unknown beacon received %@", v21, 0xCu);
    sub_24A67F378(v22, &qword_27EF5D010, &qword_24A830E30);
    v24 = v22;
    a2 = v50;
    MEMORY[0x24C21E1D0](v24, -1, -1);
    MEMORY[0x24C21E1D0](v21, -1, -1);
  }

  v25 = *(a2 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_unknownBeacons);
  *(a2 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_unknownBeacons) = a1;

  if (a1 >> 62)
  {
    result = sub_24A82D744();
    v28 = v53;
    if (result)
    {
      goto LABEL_7;
    }

LABEL_21:
    v30 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v28 = v53;
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_7:
  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v29 = 0;
  v54 = a1 & 0xC000000000000001;
  v30 = MEMORY[0x277D84F90];
  *&v26 = 136315138;
  v51 = v26;
  v52 = v7;
  v55 = result;
  v56 = v11;
  do
  {
    if (v54)
    {
      v32 = MEMORY[0x24C21D180](v29, a1);
    }

    else
    {
      v32 = *(a1 + 8 * v29 + 32);
    }

    v58 = v32;
    FMIPUnknownItem.init(with:)(v58, v28);
    sub_24A8126CC(v28, v14, type metadata accessor for FMIPUnknownItem);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_24A780670(0, v30[2] + 1, 1, v30);
    }

    v34 = v30[2];
    v33 = v30[3];
    if (v34 >= v33 >> 1)
    {
      v30 = sub_24A780670(v33 > 1, v34 + 1, 1, v30);
    }

    v30[2] = v34 + 1;
    v35 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v59 = v30;
    sub_24A8127B4(v14, v30 + v35 + *(v7 + 72) * v34, type metadata accessor for FMIPUnknownItem);
    sub_24A8126CC(v28, v11, type metadata accessor for FMIPUnknownItem);
    v36 = sub_24A82CD94();
    v37 = sub_24A82D504();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v60 = v39;
      *v38 = v51;
      v40 = FMIPUnknownItem.debugDescription.getter();
      v41 = v14;
      v42 = a1;
      v44 = v43;
      sub_24A812734(v56, type metadata accessor for FMIPUnknownItem);
      v45 = sub_24A68761C(v40, v44, &v60);
      a1 = v42;
      v14 = v41;
      v28 = v53;

      *(v38 + 4) = v45;
      _os_log_impl(&dword_24A675000, v36, v37, "FMIPBeaconRefreshingController: FMIPUnknown item created %s", v38, 0xCu);
      sub_24A6876E8(v39);
      v46 = v39;
      v7 = v52;
      MEMORY[0x24C21E1D0](v46, -1, -1);
      MEMORY[0x24C21E1D0](v38, -1, -1);

      v31 = v28;
      v11 = v56;
    }

    else
    {

      sub_24A812734(v11, type metadata accessor for FMIPUnknownItem);
      v31 = v28;
    }

    sub_24A812734(v31, type metadata accessor for FMIPUnknownItem);
    ++v29;
    v30 = v59;
  }

  while (v55 != v29);
LABEL_22:
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  sub_24A751D94(v30, v48, v49);

  return swift_unknownObjectRelease();
}

uint64_t sub_24A80A418(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A82CDF4();
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24A82CE54();
  v8 = *(v21 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v21);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v12 = sub_24A82CDC4();
  sub_24A6797D0(v12, qword_281518F88);

  v13 = sub_24A82CD94();
  v14 = sub_24A82D504();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = *(a1 + 16);

    _os_log_impl(&dword_24A675000, v13, v14, "FMIPBeaconRefreshingController: locations %ld refreshed", v15, 0xCu);
    MEMORY[0x24C21E1D0](v15, -1, -1);
  }

  else
  {
  }

  v16 = *(a2 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshQueue);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  aBlock[4] = sub_24A812620;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCD7A0;
  v18 = _Block_copy(aBlock);

  sub_24A82CE24();
  v23 = MEMORY[0x277D84F90];
  sub_24A697DF4(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v11, v7, v18);
  _Block_release(v18);
  (*(v22 + 8))(v7, v4);
  (*(v8 + 8))(v11, v21);
}

uint64_t sub_24A80A7E0(uint64_t a1, uint64_t a2)
{
  v71 = a2;
  v76 = a1;
  v93 = sub_24A82CAA4();
  v75 = *(v93 - 8);
  v2 = *(v75 + 64);
  v3 = MEMORY[0x28223BE20](v93);
  v92 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v86 = &v71 - v6;
  MEMORY[0x28223BE20](v5);
  v74 = &v71 - v7;
  v8 = sub_24A6BBA94(&qword_27EF5F898, &qword_24A8415C8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v71 - v13;
  if (qword_281515DC8 != -1)
  {
LABEL_34:
    swift_once();
  }

  v15 = sub_24A82CDC4();
  v80 = sub_24A6797D0(v15, qword_281518F88);
  v16 = sub_24A82CD94();
  v17 = sub_24A82D504();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_24A675000, v16, v17, "FMIPBeaconRefreshingController: refreshing location", v18, 2u);
    MEMORY[0x24C21E1D0](v18, -1, -1);
  }

  v19 = v76 + 64;
  v20 = 1 << *(v76 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v76 + 64);
  v72 = (v20 + 63) >> 6;
  v82 = (v75 + 32);
  v83 = (v75 + 16);
  v78 = (v75 + 8);

  v23 = 0;
  v87 = MEMORY[0x277D84F98];
  *&v24 = 136315395;
  v73 = v24;
  v81 = v12;
  v84 = v14;
  for (i = v19; ; v19 = i)
  {
    if (!v22)
    {
      if (v72 <= v23 + 1)
      {
        v36 = v23 + 1;
      }

      else
      {
        v36 = v72;
      }

      v37 = v36 - 1;
      while (1)
      {
        v35 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v35 >= v72)
        {
          v69 = sub_24A6BBA94(&qword_27EF5F8A0, &qword_24A8415D0);
          (*(*(v69 - 8) + 56))(v12, 1, 1, v69);
          v22 = 0;
          v23 = v37;
          goto LABEL_26;
        }

        v22 = *(v19 + 8 * v35);
        ++v23;
        if (v22)
        {
          v23 = v35;
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

    v35 = v23;
LABEL_25:
    v38 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v39 = v38 | (v35 << 6);
    v40 = v76;
    v41 = v75;
    v42 = v74;
    v43 = v93;
    (*(v75 + 16))(v74, *(v76 + 48) + *(v75 + 72) * v39, v93);
    v44 = *(*(v40 + 56) + 8 * v39);
    v45 = sub_24A6BBA94(&qword_27EF5F8A0, &qword_24A8415D0);
    v46 = *(v45 + 48);
    (*(v41 + 32))(v12, v42, v43);
    *&v12[v46] = v44;
    (*(*(v45 - 8) + 56))(v12, 0, 1, v45);
    v47 = v44;
    v14 = v84;
LABEL_26:
    sub_24A67E8FC(v12, v14, &qword_27EF5F898, &qword_24A8415C8);
    v48 = sub_24A6BBA94(&qword_27EF5F8A0, &qword_24A8415D0);
    if ((*(*(v48 - 8) + 48))(v14, 1, v48) == 1)
    {
      break;
    }

    v49 = *&v14[*(v48 + 48)];
    v50 = v86;
    v51 = v93;
    (*v82)(v86, v14, v93);
    v52 = v49;
    FMIPLocation.init(beaconLocation:)(v52, &v95);
    v88 = BYTE1(v95);
    v89 = BYTE2(v95);
    v90 = v95;
    v91 = BYTE3(v95);
    v53 = v96;
    v54 = v97;
    (*v83)(v92, v50, v51);
    v55 = v53;
    v56 = sub_24A82CD94();
    v57 = sub_24A82D504();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v77 = v52;
      v60 = v59;
      v94 = v59;
      *v58 = v73;
      v61 = sub_24A82CA54();
      v63 = v62;
      v85 = *v78;
      v85(v92, v93);
      v64 = sub_24A68761C(v61, v63, &v94);

      *(v58 + 4) = v64;
      *(v58 + 12) = 2081;
      LOBYTE(v95) = v90;
      BYTE1(v95) = v88;
      BYTE2(v95) = v89;
      BYTE3(v95) = v91;
      v96 = v55;
      v97 = v54;
      v65 = FMIPLocation.debugDescription.getter();
      v67 = sub_24A68761C(v65, v66, &v94);

      *(v58 + 14) = v67;
      _os_log_impl(&dword_24A675000, v56, v57, "FMIPBeaconRefreshingController: refreshLocations identifier: %s, location: %{private}s", v58, 0x16u);
      swift_arrayDestroy();
      v68 = v60;
      v52 = v77;
      MEMORY[0x24C21E1D0](v68, -1, -1);
      MEMORY[0x24C21E1D0](v58, -1, -1);
    }

    else
    {

      v85 = *v78;
      v85(v92, v93);
    }

    v25 = v86;
    v26 = sub_24A82CA54();
    v28 = v27;
    v29 = v55;
    v30 = v87;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v95 = v30;
    if (v88)
    {
      v32 = 256;
    }

    else
    {
      v32 = 0;
    }

    v33 = v32 | v90;
    if (v89)
    {
      v34 = 0x10000;
    }

    else
    {
      v34 = 0;
    }

    sub_24A784C04(v33 | v34 | (v91 << 24), v29, v26, v28, isUniquelyReferenced_nonNull_native, v54);

    v85(v25, v93);
    v87 = v95;
    v12 = v81;
    v14 = v84;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  sub_24A750CF8(v87);

  return swift_unknownObjectRelease();
}

uint64_t sub_24A80AFDC(uint64_t result)
{
  if (result <= 3)
  {
    if (result == 1)
    {
      v3 = (v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_separationMonitoringState);
      if (*(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_separationMonitoringState) == 6)
      {
        return result;
      }

      LOBYTE(v2) = 6;
      goto LABEL_24;
    }

    if (result != 2)
    {
      if (result == 3)
      {
        v2 = 5;
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    v2 = 4;
  }

  else
  {
    if (result <= 5)
    {
      if (result == 4)
      {
        v2 = 3;
      }

      else
      {
        v2 = 2;
      }

      goto LABEL_19;
    }

    if (result != 6)
    {
      if (result == 7)
      {
        v2 = 0;
        goto LABEL_19;
      }

LABEL_14:
      v3 = (v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_separationMonitoringState);
      if (*(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_separationMonitoringState) == 7)
      {
        return result;
      }

      LOBYTE(v2) = 7;
      goto LABEL_24;
    }

    v2 = 1;
  }

LABEL_19:
  v3 = (v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_separationMonitoringState);
  v4 = *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_separationMonitoringState);
  if (v2 != v4 || (v4 & 0xFE) == 6)
  {
LABEL_24:
    *v3 = v2;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6 = v2;
      sub_24A7521A8(&v6);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_24A80B104()
{
  v1 = v0;
  v2 = sub_24A82CDF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24A82CE54();
  v7 = *(v22 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v22);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v11 = sub_24A82CDC4();
  sub_24A6797D0(v11, qword_281518F88);
  v12 = sub_24A82CD94();
  v13 = sub_24A82D504();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_24A675000, v12, v13, "FMIPBeaconRefreshingController: refreshTimerFired", v14, 2u);
    MEMORY[0x24C21E1D0](v14, -1, -1);
  }

  v15 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_isThrottled;
  if (*(v0 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_isThrottled) == 1)
  {
    v21[1] = *(v0 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshQueue);
    aBlock[4] = sub_24A812638;
    aBlock[5] = v0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = &unk_285DCD818;
    v16 = _Block_copy(aBlock);

    sub_24A82CE24();
    v23 = MEMORY[0x277D84F90];
    sub_24A697DF4(&qword_281515DB0, MEMORY[0x277D85198]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v10, v6, v16);
    _Block_release(v16);
    (*(v3 + 8))(v6, v2);
    (*(v7 + 8))(v10, v22);
  }

  else
  {
    v18 = sub_24A82CD94();
    v19 = sub_24A82D504();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_24A675000, v18, v19, "FMIPBeaconRefreshingController: throttling", v20, 2u);
      MEMORY[0x24C21E1D0](v20, -1, -1);
    }

    *(v1 + v15) = 1;

    return sub_24A8008F0();
  }
}

void sub_24A80B530(uint64_t a1)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);
  v3 = sub_24A82CD94();
  v4 = sub_24A82D504();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A675000, v3, v4, "FMIPBeaconRefreshingController: starting to refresh again", v5, 2u);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_isThrottled) = 0;
  sub_24A8008F0();
  sub_24A80B63C();
}

void sub_24A80B63C()
{
  v1 = v0;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);
  v3 = sub_24A82CD94();
  v4 = sub_24A82D504();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A675000, v3, v4, "FMIPBeaconRefreshingController: setupRefreshingTimer", v5, 2u);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  v6 = [objc_opt_self() timerWithTimeInterval:v1 target:sel_refreshTimerFired selector:0 userInfo:0 repeats:15.0];
  v7 = [objc_opt_self() mainRunLoop];
  [v7 addTimer:v6 forMode:*MEMORY[0x277CBE640]];

  v8 = *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshTimer);
  *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshTimer) = v6;
}

void sub_24A80B7BC()
{
  v1 = v0;
  v2 = sub_24A82CA34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_lastActiveTimestamp;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v7, v2);
  LOBYTE(v7) = sub_24A800194();
  (*(v3 + 8))(v6, v2);
  v8 = dbl_24A841620[v7];
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v9 = sub_24A82CDC4();
  sub_24A6797D0(v9, qword_281518F88);
  v10 = sub_24A82CD94();
  v11 = sub_24A82D504();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v8;
    _os_log_impl(&dword_24A675000, v10, v11, "FMIPBeaconRefreshingController: setupThrottlingTimer interval: %f", v12, 0xCu);
    MEMORY[0x24C21E1D0](v12, -1, -1);
  }

  v13 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshTimer;
  [*(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshTimer) invalidate];
  v14 = [objc_opt_self() timerWithTimeInterval:v1 target:sel_refreshTimerFired selector:0 userInfo:0 repeats:v8];
  v15 = [objc_opt_self() mainRunLoop];
  [v15 addTimer:v14 forMode:*MEMORY[0x277CBE640]];

  v16 = *(v1 + v13);
  *(v1 + v13) = v14;
}

void sub_24A80BA48()
{
  v1 = v0;
  v2 = sub_24A82CAA4();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A82C514();
  *(&v39 + 1) = v7;
  v40 = sub_24A697DF4(&unk_281514680, MEMORY[0x277D08A28]);
  v8 = sub_24A697E3C(&aBlock);
  (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D08A00], v7);
  LOBYTE(v7) = sub_24A82C4D4();
  sub_24A6876E8(&aBlock);
  if ((v7 & 1) != 0 && *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_shouldUseBeaconsOptimizationSPI) == 1)
  {
    v9 = *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_appBeacons);
    *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_appBeacons) = MEMORY[0x277D84F90];

    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v10 = sub_24A82CDC4();
    sub_24A6797D0(v10, qword_281518F88);
    v11 = sub_24A82CD94();
    v12 = sub_24A82D4D4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24A675000, v11, v12, "FMIPBeaconRefreshingController: startUpdatingApplicationBeacons - Will call", v13, 2u);
      MEMORY[0x24C21E1D0](v13, -1, -1);
    }

    v14 = *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_ownerSession);
    v15 = objc_opt_self();
    v16 = v14;
    v17 = [v15 fmipItemContext];
    v18 = swift_allocObject();
    swift_weakInit();
    v40 = sub_24A812628;
    v41 = v18;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v39 = sub_24A80C638;
    *(&v39 + 1) = &unk_285DCD7C8;
    v19 = _Block_copy(&aBlock);

    v40 = sub_24A812630;
    v41 = v1;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v39 = sub_24A7FD664;
    *(&v39 + 1) = &unk_285DCD7F0;
    v20 = _Block_copy(&aBlock);

    [v16 startUpdatingApplicationBeaconsWithContext:v17 collectionDifference:v19 completion:v20];
    _Block_release(v20);
    _Block_release(v19);
  }

  else
  {
    v21 = *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy + 16);
    aBlock = *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy);
    v39 = v21;
    LOBYTE(v40) = *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy + 32);
    v43 = *(&v21 + 1);
    v44 = v21;
    sub_24A67E964(&v44, &v42, &qword_27EF5DA28, &qword_24A8415A0);
    sub_24A67E964(&v43, &v42, &qword_27EF5F878, &qword_24A8415A8);
    v37 = sub_24A7B56DC();
    sub_24A67F378(&v44, &qword_27EF5DA28, &qword_24A8415A0);
    sub_24A67F378(&v43, &qword_27EF5F878, &qword_24A8415A8);
    v22 = *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_spBeacons);
    v42 = MEMORY[0x277D84F90];
    if (v22 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A82D744())
    {

      if (!i)
      {
        break;
      }

      v24 = 0;
      v36 = v22 & 0xC000000000000001;
      v34 = v1;
      v35 = v22 & 0xFFFFFFFFFFFFFF8;
      v25 = v3 + 1;
      while (1)
      {
        if (v36)
        {
          v26 = MEMORY[0x24C21D180](v24, v22);
        }

        else
        {
          if (v24 >= *(v35 + 16))
          {
            goto LABEL_25;
          }

          v26 = *(v22 + 8 * v24 + 32);
        }

        v3 = v26;
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        v1 = v22;
        v28 = i;
        v29 = [v37 searchIdentifiers];
        v30 = sub_24A82D244();

        v31 = [v3 identifier];
        sub_24A82CA84();

        LOBYTE(v31) = sub_24A705E3C(v6, v30);

        (*v25)(v6, v2);
        if (v31)
        {
          sub_24A82D8D4();
          v32 = *(v42 + 16);
          sub_24A82D8F4();
          sub_24A82D904();
          sub_24A82D8E4();
        }

        else
        {
        }

        i = v28;
        v22 = v1;
        ++v24;
        if (v27 == i)
        {
          v1 = v34;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

LABEL_22:

    v33 = *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_ownerSession);
    sub_24A679170(0, &qword_281512B60, 0x277D49610);
    v16 = v33;
    v17 = sub_24A82D224();

    [v16 startRefreshingBeacons_];
  }
}

void sub_24A80C0A4(uint64_t a1, void *a2)
{
  v51 = a1;
  v3 = sub_24A6BBA94(&qword_27EF5F8B0, &qword_24A8415E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v46 - v6;
  v8 = sub_24A6BBA94(&qword_27EF5F8A8, &qword_24A8415D8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v46 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - v16;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v49 = v7;
    v50 = v4;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v18 = sub_24A82CDC4();
    v19 = sub_24A6797D0(v18, qword_281518F88);
    sub_24A67E964(v51, v17, &qword_27EF5F8A8, &qword_24A8415D8);
    v48 = v19;
    v20 = sub_24A82CD94();
    v21 = sub_24A82D4D4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v46 = v3;
      v23 = v22;
      v24 = swift_slowAlloc();
      v47 = a2;
      v25 = v24;
      v52 = v24;
      *v23 = 136315138;
      sub_24A67E964(v17, v15, &qword_27EF5F8A8, &qword_24A8415D8);
      v26 = sub_24A82D024();
      v28 = v27;
      sub_24A67F378(v17, &qword_27EF5F8A8, &qword_24A8415D8);
      v29 = sub_24A68761C(v26, v28, &v52);

      *(v23 + 4) = v29;
      _os_log_impl(&dword_24A675000, v20, v21, "FMIPBeaconRefreshingController: startUpdatingApplicationBeacons - Did receive callback %s", v23, 0xCu);
      sub_24A6876E8(v25);
      v30 = v25;
      a2 = v47;
      MEMORY[0x24C21E1D0](v30, -1, -1);
      v31 = v23;
      v3 = v46;
      MEMORY[0x24C21E1D0](v31, -1, -1);
    }

    else
    {

      sub_24A67F378(v17, &qword_27EF5F8A8, &qword_24A8415D8);
    }

    v36 = v49;
    sub_24A67E964(v51, v12, &qword_27EF5F8A8, &qword_24A8415D8);
    v37 = v50;
    if ((*(v50 + 48))(v12, 1, v3) == 1)
    {
      sub_24A67F378(v12, &qword_27EF5F8A8, &qword_24A8415D8);
      v38 = a2;
      v39 = sub_24A82CD94();
      v40 = sub_24A82D504();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138412290;
        if (a2)
        {
          v43 = a2;
          v44 = _swift_stdlib_bridgeErrorToNSError();
          v45 = v44;
        }

        else
        {
          v44 = 0;
          v45 = 0;
        }

        *(v41 + 4) = v44;
        *v42 = v45;
        _os_log_impl(&dword_24A675000, v39, v40, "FMIPBeaconRefreshingController: startUpdatingApplicationBeacons - No collectionDifference - Error: %@", v41, 0xCu);
        sub_24A67F378(v42, &qword_27EF5D010, &qword_24A830E30);
        MEMORY[0x24C21E1D0](v42, -1, -1);
        MEMORY[0x24C21E1D0](v41, -1, -1);
      }
    }

    else
    {
      (*(v37 + 32))(v36, v12, v3);
      sub_24A8061E4(v36);

      (*(v37 + 8))(v36, v3);
    }
  }

  else
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v32 = sub_24A82CDC4();
    sub_24A6797D0(v32, qword_281518F88);
    v33 = sub_24A82CD94();
    v34 = sub_24A82D504();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_24A675000, v33, v34, "FMIPBeaconRefreshingController: startUpdatingApplicationBeacons - No self on startUpdatingApplicationBeacons callback", v35, 2u);
      MEMORY[0x24C21E1D0](v35, -1, -1);
    }
  }
}

uint64_t sub_24A80C638(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_24A6BBA94(&qword_27EF5F8A8, &qword_24A8415D8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {
    sub_24A679170(0, &qword_27EF5F8B8, 0x277D49608);
    sub_24A82D9A4();
    v12 = sub_24A6BBA94(&qword_27EF5F8B0, &qword_24A8415E0);
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  else
  {
    v13 = sub_24A6BBA94(&qword_27EF5F8B0, &qword_24A8415E0);
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = a3;
  v11(v9, a3);

  return sub_24A67F378(v9, &qword_27EF5F8A8, &qword_24A8415D8);
}

void sub_24A80C7C0(int a1, NSObject *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v5 = sub_24A82CDC4();
    sub_24A6797D0(v5, qword_281518F88);
    v6 = a2;
    v7 = sub_24A82CD94();
    v8 = sub_24A82D504();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v29[0] = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = sub_24A82DC74();
      v13 = sub_24A68761C(v11, v12, v29);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_24A675000, v7, v8, "FMIPBeaconRefreshingController: startUpdatingApplicationBeacons - Start failed due to error: %s", v9, 0xCu);
      sub_24A6876E8(v10);
      MEMORY[0x24C21E1D0](v10, -1, -1);
      MEMORY[0x24C21E1D0](v9, -1, -1);

      return;
    }

    v27 = a2;
  }

  else
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v15 = sub_24A82CDC4();
    sub_24A6797D0(v15, qword_281518F88);

    oslog = sub_24A82CD94();
    v16 = sub_24A82D504();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v31 = v18;
      *v17 = 136315138;
      v19 = a3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy;
      v20 = *(a3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy);
      v22 = *(a3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy + 8);
      v21 = *(a3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy + 16);
      v23 = *(a3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy + 24);
      LOBYTE(v19) = *(v19 + 32);
      LOBYTE(v29[0]) = v20;
      v29[1] = v22;
      v29[2] = v21;
      v29[3] = v23;
      v30 = v19;

      v24 = sub_24A82D024();
      v26 = sub_24A68761C(v24, v25, &v31);

      *(v17 + 4) = v26;
      _os_log_impl(&dword_24A675000, oslog, v16, "FMIPBeaconRefreshingController: startUpdatingApplicationBeacons - Successfully started updating application beacons: %s", v17, 0xCu);
      sub_24A6876E8(v18);
      MEMORY[0x24C21E1D0](v18, -1, -1);
      MEMORY[0x24C21E1D0](v17, -1, -1);

      return;
    }

    v27 = oslog;
  }
}

void sub_24A80CB10()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy;
  v3 = *(v0 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy + 16);
  v39 = *(v0 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy);
  v40 = v3;
  v41 = *(v0 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy + 32);
  v42 = *(&v3 + 1);
  v43 = v3;
  sub_24A67E964(&v43, &v31, &qword_27EF5DA28, &qword_24A8415A0);
  sub_24A67E964(&v42, &v31, &qword_27EF5F878, &qword_24A8415A8);
  v4 = sub_24A7B56DC();
  sub_24A67F378(&v43, &qword_27EF5DA28, &qword_24A8415A0);
  sub_24A67F378(&v42, &qword_27EF5F878, &qword_24A8415A8);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v5 = sub_24A82CDC4();
  sub_24A6797D0(v5, qword_281518F88);

  v6 = sub_24A82CD94();
  v7 = sub_24A82D504();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v37[0] = v9;
    *v8 = 136315138;
    v11 = *(v2 + 8);
    v10 = *(v2 + 16);
    v12 = *(v2 + 24);
    v13 = *(v2 + 32);
    LOBYTE(v31) = *v2;
    v32 = v11;
    v33 = v10;
    v34 = v12;
    LOBYTE(v35) = v13;

    v14 = sub_24A82D024();
    v16 = sub_24A68761C(v14, v15, v37);

    *(v8 + 4) = v16;
    _os_log_impl(&dword_24A675000, v6, v7, "FMIPBeaconRefreshingController: Updating refresh policy to: %s", v8, 0xCu);
    sub_24A6876E8(v9);
    MEMORY[0x24C21E1D0](v9, -1, -1);
    MEMORY[0x24C21E1D0](v8, -1, -1);
  }

  v17 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_ownerSession;
  v18 = *(v1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_ownerSession);
  v19 = swift_allocObject();
  swift_weakInit();
  v35 = sub_24A812600;
  v36 = v19;
  v31 = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = sub_24A814C14;
  v34 = &unk_285DCD610;
  v20 = _Block_copy(&v31);
  v21 = v18;

  [v21 setLocationUpdateBlock_];
  _Block_release(v20);

  v22 = *(v1 + v17);
  v23 = swift_allocObject();
  swift_weakInit();
  v35 = sub_24A812608;
  v36 = v23;
  v31 = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = sub_24A814C14;
  v34 = &unk_285DCD638;
  v24 = _Block_copy(&v31);
  v25 = v22;

  [v25 setDeviceEventUpdateBlock_];
  _Block_release(v24);

  v26 = *(v1 + v17);
  v27 = *(v2 + 16);
  v37[0] = *v2;
  v37[1] = v27;
  v38 = *(v2 + 32);
  v44 = *(&v27 + 1);
  v45[0] = v27;
  v28 = v26;
  sub_24A67E964(v45, &v31, &qword_27EF5DA28, &qword_24A8415A0);
  sub_24A67E964(&v44, &v31, &qword_27EF5F878, &qword_24A8415A8);
  v29 = sub_24A7B56DC();
  sub_24A67F378(v45, &qword_27EF5DA28, &qword_24A8415A0);
  sub_24A67F378(&v44, &qword_27EF5F878, &qword_24A8415A8);
  v35 = sub_24A812610;
  v36 = v1;
  v31 = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = sub_24A7386AC;
  v34 = &unk_285DCD660;
  v30 = _Block_copy(&v31);

  [v28 subscribeAndFetchLocationForContext:v29 completion:v30];
  _Block_release(v30);
}

uint64_t sub_24A80CFF8(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v4 = sub_24A82CDC4();
    sub_24A6797D0(v4, qword_281518F88);

    v5 = sub_24A82CD94();
    v6 = sub_24A82D504();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock[0] = v36;
      *v7 = 136315138;
      v8 = sub_24A82CA54();
      v10 = sub_24A695068(0xCuLL, v8, v9);
      v12 = v11;
      v14 = v13;
      v15 = v3;
      v16 = a1;
      v18 = v17;

      v19 = MEMORY[0x24C21C960](v10, v12, v14, v18);
      v21 = v20;
      a1 = v16;
      v3 = v15;

      v22 = sub_24A68761C(v19, v21, aBlock);

      *(v7 + 4) = v22;
      _os_log_impl(&dword_24A675000, v5, v6, "FMIPBeaconRefreshingController<%s> latestLocationsUpdatedBlock fired", v7, 0xCu);
      sub_24A6876E8(v36);
      MEMORY[0x24C21E1D0](v36, -1, -1);
      MEMORY[0x24C21E1D0](v7, -1, -1);
    }

    if (*(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy))
    {
    }

    v23 = [a1 locationsByBeaconIdentifier];
    sub_24A82CAA4();
    sub_24A679170(0, &qword_27EF5E568, 0x277D49620);
    sub_24A697DF4(&qword_281514670, MEMORY[0x277CC95F0]);
    v24 = sub_24A82CEF4();

    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = v3;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_24A812618;
    *(v26 + 24) = v25;
    aBlock[4] = sub_24A680674;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A6805E4;
    aBlock[3] = &unk_285DCD6D8;
    v27 = _Block_copy(aBlock);
    v28 = _Block_copy(v27);
    v29 = qword_281513E40;

    if (v29 != -1)
    {
      swift_once();
    }

    v30 = _os_activity_create(&dword_24A675000, "FMIPBeaconRefreshingController.refreshLocations", qword_281513E48, OS_ACTIVITY_FLAG_DEFAULT);
    v31 = _Block_copy(v28);
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_24A6A9A80;
    *(v33 + 24) = v32;
    v37[4] = sub_24A680674;
    v37[5] = v33;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 1107296256;
    v37[2] = sub_24A6805E4;
    v37[3] = &unk_285DCD750;
    v34 = _Block_copy(v37);

    os_activity_apply(v30, v34);
    _Block_release(v34);
    LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

    _Block_release(v27);
    _Block_release(v28);
    result = swift_unknownObjectRelease();
    if (v34)
    {
      __break(1u);
    }

    else
    {

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24A80D544(void *a1)
{
  v260 = type metadata accessor for FMIPDeviceConnectedState(0);
  v259 = *(v260 - 8);
  v2 = *(v259 + 64);
  v3 = MEMORY[0x28223BE20](v260);
  v251 = &v229 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v238 = &v229 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v246 = &v229 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v237 = &v229 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v245 = &v229 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v236 = &v229 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v244 = &v229 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v235 = &v229 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v243 = &v229 - v20;
  MEMORY[0x28223BE20](v19);
  v234 = &v229 - v21;
  v258 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v22 = *(*(v258 - 8) + 64);
  MEMORY[0x28223BE20](v258);
  v257 = &v229 - v23;
  v24 = sub_24A82CAA4();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v253 = &v229 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v250 = &v229 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v233 = &v229 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v242 = &v229 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v249 = &v229 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v232 = &v229 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v241 = &v229 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v248 = &v229 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v231 = &v229 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v240 = &v229 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v247 = &v229 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v230 = &v229 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v239 = &v229 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v55 = (&v229 - v54);
  v56 = MEMORY[0x28223BE20](v53);
  v58 = &v229 - v57;
  MEMORY[0x28223BE20](v56);
  v261 = &v229 - v59;
  v60 = sub_24A6BBA94(&qword_27EF5F880, &qword_24A8415B0);
  v61 = *(*(v60 - 8) + 64);
  v62 = MEMORY[0x28223BE20](v60 - 8);
  v64 = &v229 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  isUniquelyReferenced_nonNull_native = &v229 - v65;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v68 = result;
    v278 = a1;
    if (qword_281515DC8 == -1)
    {
      goto LABEL_3;
    }

    while (1)
    {
      swift_once();
LABEL_3:
      v69 = sub_24A82CDC4();
      v70 = sub_24A6797D0(v69, qword_281518F88);

      v265 = v70;
      v71 = sub_24A82CD94();
      v72 = sub_24A82D504();

      v73 = os_log_type_enabled(v71, v72);
      v270 = v25;
      v256 = v58;
      v229 = v68;
      v267 = isUniquelyReferenced_nonNull_native;
      v268 = v64;
      if (v73)
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v280 = v75;
        *v74 = 136315138;
        LODWORD(v277) = v72;
        v76 = sub_24A82CA54();
        v78 = sub_24A695068(0xCuLL, v76, v77);
        v80 = v79;
        v81 = v55;
        v83 = v82;
        v85 = v84;

        v86 = v78;
        v87 = v270;
        v88 = v83;
        v55 = v81;
        v89 = MEMORY[0x24C21C960](v86, v80, v88, v85);
        isUniquelyReferenced_nonNull_native = v90;

        v91 = sub_24A68761C(v89, isUniquelyReferenced_nonNull_native, &v280);

        *(v74 + 4) = v91;
        _os_log_impl(&dword_24A675000, v71, v277, "FMIPBeaconRefreshingController: deviceEventUpdateBlock fired <%s>", v74, 0xCu);
        sub_24A6876E8(v75);
        MEMORY[0x24C21E1D0](v75, -1, -1);
        v92 = v74;
        v58 = v256;
        MEMORY[0x24C21E1D0](v92, -1, -1);
      }

      else
      {

        v87 = v25;
      }

      v93 = [v278 beaconEventByBeaconIdentifier];
      sub_24A679170(0, &qword_27EF5F888, 0x277D49660);
      sub_24A697DF4(&qword_281514670, MEMORY[0x277CC95F0]);
      v64 = sub_24A82CEF4();

      v68 = 0;
      v96 = v64 + 64;
      v95 = *(v64 + 8);
      v262 = v64;
      v97 = 1 << v64[32];
      v98 = -1;
      if (v97 < 64)
      {
        v98 = ~(-1 << v97);
      }

      v25 = v98 & v95;
      v252 = (v97 + 63) >> 6;
      v278 = (v87 + 16);
      v275 = (v87 + 8);
      v276 = (v87 + 32);
      v272 = MEMORY[0x277D84F98];
      v269 = (v87 + 56);
      *&v94 = 136315650;
      v255 = v94;
      v264 = v64 + 64;
      v266 = v55;
      v254 = v24;
      if ((v98 & v95) != 0)
      {
        break;
      }

LABEL_11:
      if (v252 <= v68 + 1)
      {
        v99 = v68 + 1;
      }

      else
      {
        v99 = v252;
      }

      v100 = v99 - 1;
      while (1)
      {
        v101 = v68 + 1;
        if (__OFADD__(v68, 1))
        {
          break;
        }

        if (v101 >= v252)
        {
          isUniquelyReferenced_nonNull_native = v24;
          v103 = v58;
          v104 = sub_24A6BBA94(&qword_27EF5F890, &unk_24A8415B8);
          v105 = v268;
          (*(*(v104 - 8) + 56))(v268, 1, 1, v104);
          v25 = 0;
          v68 = v100;
          goto LABEL_22;
        }

        v25 = *&v96[8 * v101];
        ++v68;
        if (v25)
        {
          v102 = v24;
          v103 = v58;
          v68 = v101;
          goto LABEL_21;
        }
      }

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
    }

    while (1)
    {
      v102 = v24;
      v103 = v58;
      v101 = v68;
LABEL_21:
      v106 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v107 = v106 | (v101 << 6);
      v108 = v262;
      v109 = v270;
      v110 = v261;
      (*(v270 + 16))(v261, *(v262 + 6) + *(v270 + 72) * v107, v102);
      v111 = *(*(v108 + 7) + 8 * v107);
      v112 = sub_24A6BBA94(&qword_27EF5F890, &unk_24A8415B8);
      v113 = *(v112 + 48);
      v114 = *(v109 + 32);
      v105 = v268;
      v115 = v110;
      isUniquelyReferenced_nonNull_native = v102;
      v114(v268, v115, v102);
      *(v105 + v113) = v111;
      (*(*(v112 - 8) + 56))(v105, 0, 1, v112);
      v116 = v111;
LABEL_22:
      v117 = v267;
      sub_24A67E8FC(v105, v267, &qword_27EF5F880, &qword_24A8415B0);
      v118 = sub_24A6BBA94(&qword_27EF5F890, &unk_24A8415B8);
      if ((*(*(v118 - 8) + 48))(v117, 1, v118) == 1)
      {

        if (*(v229 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy))
        {
        }

        else if (swift_unknownObjectWeakLoadStrong())
        {
          sub_24A750EB8(v272);

          return swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      v119 = *(v117 + *(v118 + 48));
      v271 = *v276;
      v271(v103, v117, isUniquelyReferenced_nonNull_native);
      v120 = v266;
      v274 = *v278;
      (v274)(v266, v103, isUniquelyReferenced_nonNull_native);
      v121 = v119;
      v55 = sub_24A82CD94();
      v122 = v120;
      v64 = sub_24A82D504();

      v123 = os_log_type_enabled(v55, v64);
      v277 = v121;
      if (v123)
      {
        v263 = v64;
        v124 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v280 = v125;
        *v124 = v255;
        sub_24A697DF4(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
        v126 = sub_24A82DB84();
        v128 = v127;
        v273 = *v275;
        v273(v122, isUniquelyReferenced_nonNull_native);
        v129 = sub_24A68761C(v126, v128, &v280);

        *(v124 + 4) = v129;
        *(v124 + 12) = 2080;
        v279 = [v121 source];
        type metadata accessor for SPDeviceEventSource(0);
        v130 = sub_24A82D024();
        v132 = sub_24A68761C(v130, v131, &v280);

        *(v124 + 14) = v132;
        *(v124 + 22) = 2080;
        v133 = [v121 attachmentInfo];
        if (v133)
        {
          v134 = v133;
          v135 = [v133 attachedToDevice];

          v136 = v257;
          sub_24A82CA84();

          v137 = 0;
        }

        else
        {
          v137 = 1;
          v136 = v257;
        }

        v24 = v254;
        (*v269)(v136, v137, 1, v254);
        v139 = sub_24A82D024();
        v64 = sub_24A68761C(v139, v140, &v280);

        *(v124 + 24) = v64;
        _os_log_impl(&dword_24A675000, v55, v263, "FMIPBeaconRefreshingController: deviceEventUpdate: beaconUUID: %s, deviceEvent: %s: %s)", v124, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C21E1D0](v125, -1, -1);
        MEMORY[0x24C21E1D0](v124, -1, -1);

        v58 = v256;
        v138 = v273;
      }

      else
      {

        v138 = *v275;
        (*v275)(v122, isUniquelyReferenced_nonNull_native);
        v58 = v103;
        v24 = isUniquelyReferenced_nonNull_native;
      }

      v141 = v277;
      v142 = [v277 source];
      if (v142 > 2)
      {
        break;
      }

      if (v142 == 1)
      {
        v195 = [v141 attachmentInfo];
        if (v195)
        {
          v273 = v138;
          v196 = v195;
          v197 = [v195 attachedToDevice];

          v198 = v232;
          sub_24A82CA84();

          v199 = v241;
          v271(v241, v198, v24);
          v64 = v249;
          v55 = v274;
          (v274)(v249, v58, v24);
          v200 = v236;
          (v55)(v236, v199, v24);
          (*v269)(v200, 0, 1, v24);
          *(v200 + *(v260 + 20)) = 1;
          sub_24A8127B4(v200, v245, type metadata accessor for FMIPDeviceConnectedState);
          v201 = v272;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v280 = v201;
          v202 = sub_24A77EDF8(v64);
          v204 = *(v201 + 16);
          v205 = (v203 & 1) == 0;
          v154 = __OFADD__(v204, v205);
          v206 = v204 + v205;
          if (v154)
          {
            goto LABEL_108;
          }

          v207 = v203;
          if (*(v201 + 24) >= v206)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v64 = v202;
              sub_24A786F2C();
              v202 = v64;
            }
          }

          else
          {
            sub_24A782AE0(v206, isUniquelyReferenced_nonNull_native);
            v202 = sub_24A77EDF8(v249);
            if ((v207 & 1) != (v208 & 1))
            {
LABEL_115:
              result = sub_24A82DC44();
              __break(1u);
              return result;
            }
          }

          isUniquelyReferenced_nonNull_native = v277;
          v223 = v280;
          v138 = v273;
          v272 = v280;
          if ((v207 & 1) == 0)
          {
            *(v280 + 8 * (v202 >> 6) + 64) |= 1 << v202;
            v225 = v202;
            v64 = v249;
            (v274)(*(v223 + 48) + *(v270 + 72) * v202, v249, v24);
            sub_24A8127B4(v245, *(v272 + 56) + *(v259 + 72) * v225, type metadata accessor for FMIPDeviceConnectedState);

            v138(v64, v24);
            v138(v241, v24);
            v138(v58, v24);
            v213 = v272;
            v226 = *(v272 + 16);
            v154 = __OFADD__(v226, 1);
            v215 = v226 + 1;
            if (v154)
            {
              goto LABEL_111;
            }

            goto LABEL_94;
          }

          sub_24A8142DC(v245, *(v280 + 56) + *(v259 + 72) * v202, type metadata accessor for FMIPDeviceConnectedState);

          v138(v249, v24);
          v217 = &v271;
          goto LABEL_88;
        }

LABEL_10:
        v138(v58, v24);

        v96 = v264;
        if (!v25)
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (v142 != 2)
        {
          goto LABEL_10;
        }

        v64 = v253;
        (v274)(v253, v58, v24);
        v158 = v238;
        (*v269)(v238, 1, 1, v24);
        *(v158 + *(v260 + 20)) = 0;
        sub_24A8127B4(v158, v251, type metadata accessor for FMIPDeviceConnectedState);
        v159 = v272;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v280 = v159;
        v160 = sub_24A77EDF8(v64);
        v162 = *(v159 + 16);
        v163 = (v161 & 1) == 0;
        v154 = __OFADD__(v162, v163);
        v164 = v162 + v163;
        if (v154)
        {
          goto LABEL_104;
        }

        v165 = v161;
        if (*(v159 + 24) >= v164)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v64 = v160;
            sub_24A786F2C();
            v160 = v64;
          }
        }

        else
        {
          sub_24A782AE0(v164, isUniquelyReferenced_nonNull_native);
          v160 = sub_24A77EDF8(v253);
          if ((v165 & 1) != (v166 & 1))
          {
            goto LABEL_115;
          }
        }

        isUniquelyReferenced_nonNull_native = v277;
        v209 = v280;
        v272 = v280;
        if ((v165 & 1) == 0)
        {
          *(v280 + 8 * (v160 >> 6) + 64) |= 1 << v160;
          v212 = v160;
          v64 = v253;
          (v274)(*(v209 + 48) + *(v270 + 72) * v160, v253, v24);
          sub_24A8127B4(v251, *(v272 + 56) + *(v259 + 72) * v212, type metadata accessor for FMIPDeviceConnectedState);

          v138(v64, v24);
          v138(v58, v24);
          v213 = v272;
          v214 = *(v272 + 16);
          v154 = __OFADD__(v214, 1);
          v215 = v214 + 1;
          if (v154)
          {
            goto LABEL_109;
          }

LABEL_94:
          *(v213 + 16) = v215;
          goto LABEL_95;
        }

        sub_24A8142DC(v251, *(v280 + 56) + *(v259 + 72) * v160, type metadata accessor for FMIPDeviceConnectedState);

        v210 = v253;
        v211 = v24;
LABEL_89:
        v138(v210, v211);
        v138(v58, v24);
LABEL_95:
        v96 = v264;
        if (!v25)
        {
          goto LABEL_11;
        }
      }
    }

    switch(v142)
    {
      case 6:
        v167 = [v141 attachmentInfo];
        if (v167)
        {
          v273 = v138;
          v168 = v167;
          v169 = [v167 attachedToDevice];

          v170 = v233;
          sub_24A82CA84();

          v171 = v242;
          v271(v242, v170, v24);
          v64 = v250;
          v55 = v274;
          (v274)(v250, v58, v24);
          v172 = v237;
          (v55)(v237, v171, v24);
          (*v269)(v172, 0, 1, v24);
          *(v172 + *(v260 + 20)) = 4;
          sub_24A8127B4(v172, v246, type metadata accessor for FMIPDeviceConnectedState);
          v173 = v272;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v280 = v173;
          v174 = sub_24A77EDF8(v64);
          v176 = *(v173 + 16);
          v177 = (v175 & 1) == 0;
          v154 = __OFADD__(v176, v177);
          v178 = v176 + v177;
          if (v154)
          {
            goto LABEL_107;
          }

          v179 = v175;
          if (*(v173 + 24) >= v178)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v64 = v174;
              sub_24A786F2C();
              v174 = v64;
            }
          }

          else
          {
            sub_24A782AE0(v178, isUniquelyReferenced_nonNull_native);
            v174 = sub_24A77EDF8(v250);
            if ((v179 & 1) != (v180 & 1))
            {
              goto LABEL_115;
            }
          }

          isUniquelyReferenced_nonNull_native = v277;
          v216 = v280;
          v138 = v273;
          v272 = v280;
          if ((v179 & 1) == 0)
          {
            *(v280 + 8 * (v174 >> 6) + 64) |= 1 << v174;
            v219 = v174;
            v64 = v250;
            (v274)(*(v216 + 48) + *(v270 + 72) * v174, v250, v24);
            sub_24A8127B4(v246, *(v272 + 56) + *(v259 + 72) * v219, type metadata accessor for FMIPDeviceConnectedState);

            v138(v64, v24);
            v138(v242, v24);
            v138(v58, v24);
            v213 = v272;
            v220 = *(v272 + 16);
            v154 = __OFADD__(v220, 1);
            v215 = v220 + 1;
            if (v154)
            {
              goto LABEL_112;
            }

            goto LABEL_94;
          }

          sub_24A8142DC(v246, *(v280 + 56) + *(v259 + 72) * v174, type metadata accessor for FMIPDeviceConnectedState);

          v138(v250, v24);
          v217 = &v272;
          goto LABEL_88;
        }

        break;
      case 4:
        v181 = [v141 attachmentInfo];
        if (v181)
        {
          v273 = v138;
          v182 = v181;
          v183 = [v181 attachedToDevice];

          v184 = v231;
          sub_24A82CA84();

          v185 = v240;
          v271(v240, v184, v24);
          v64 = v248;
          v55 = v274;
          (v274)(v248, v58, v24);
          v186 = v235;
          (v55)(v235, v185, v24);
          (*v269)(v186, 0, 1, v24);
          *(v186 + *(v260 + 20)) = 3;
          sub_24A8127B4(v186, v244, type metadata accessor for FMIPDeviceConnectedState);
          v187 = v272;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v280 = v187;
          v188 = sub_24A77EDF8(v64);
          v190 = *(v187 + 16);
          v191 = (v189 & 1) == 0;
          v154 = __OFADD__(v190, v191);
          v192 = v190 + v191;
          if (v154)
          {
            goto LABEL_106;
          }

          v193 = v189;
          if (*(v187 + 24) >= v192)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v64 = v188;
              sub_24A786F2C();
              v188 = v64;
            }
          }

          else
          {
            sub_24A782AE0(v192, isUniquelyReferenced_nonNull_native);
            v188 = sub_24A77EDF8(v248);
            if ((v193 & 1) != (v194 & 1))
            {
              goto LABEL_115;
            }
          }

          isUniquelyReferenced_nonNull_native = v277;
          v218 = v280;
          v138 = v273;
          v272 = v280;
          if ((v193 & 1) == 0)
          {
            *(v280 + 8 * (v188 >> 6) + 64) |= 1 << v188;
            v221 = v188;
            v64 = v248;
            (v274)(*(v218 + 48) + *(v270 + 72) * v188, v248, v24);
            sub_24A8127B4(v244, *(v272 + 56) + *(v259 + 72) * v221, type metadata accessor for FMIPDeviceConnectedState);

            v138(v64, v24);
            v138(v240, v24);
            v138(v58, v24);
            v213 = v272;
            v222 = *(v272 + 16);
            v154 = __OFADD__(v222, 1);
            v215 = v222 + 1;
            if (v154)
            {
              goto LABEL_113;
            }

            goto LABEL_94;
          }

          sub_24A8142DC(v244, *(v280 + 56) + *(v259 + 72) * v188, type metadata accessor for FMIPDeviceConnectedState);

          v138(v248, v24);
          v217 = &v270;
          goto LABEL_88;
        }

        break;
      case 3:
        v143 = [v141 attachmentInfo];
        if (v143)
        {
          v273 = v138;
          v144 = v143;
          v145 = [v143 attachedToDevice];

          v146 = v230;
          sub_24A82CA84();

          v147 = v239;
          v271(v239, v146, v24);
          v64 = v247;
          v55 = v274;
          (v274)(v247, v58, v24);
          v148 = v234;
          (v55)(v234, v147, v24);
          (*v269)(v148, 0, 1, v24);
          *(v148 + *(v260 + 20)) = 2;
          sub_24A8127B4(v148, v243, type metadata accessor for FMIPDeviceConnectedState);
          v149 = v272;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v280 = v149;
          v150 = sub_24A77EDF8(v64);
          v152 = *(v149 + 16);
          v153 = (v151 & 1) == 0;
          v154 = __OFADD__(v152, v153);
          v155 = v152 + v153;
          if (v154)
          {
            goto LABEL_105;
          }

          v156 = v151;
          if (*(v149 + 24) >= v155)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v64 = v150;
              sub_24A786F2C();
              v150 = v64;
            }
          }

          else
          {
            sub_24A782AE0(v155, isUniquelyReferenced_nonNull_native);
            v150 = sub_24A77EDF8(v247);
            if ((v156 & 1) != (v157 & 1))
            {
              goto LABEL_115;
            }
          }

          isUniquelyReferenced_nonNull_native = v277;
          v138 = v273;
          v224 = v280;
          v272 = v280;
          if ((v156 & 1) == 0)
          {
            *(v280 + 8 * (v150 >> 6) + 64) |= 1 << v150;
            v227 = v150;
            v64 = v247;
            (v274)(*(v224 + 48) + *(v270 + 72) * v150, v247, v24);
            sub_24A8127B4(v243, *(v272 + 56) + *(v259 + 72) * v227, type metadata accessor for FMIPDeviceConnectedState);

            v138(v64, v24);
            v138(v239, v24);
            v138(v58, v24);
            v213 = v272;
            v228 = *(v272 + 16);
            v154 = __OFADD__(v228, 1);
            v215 = v228 + 1;
            if (v154)
            {
              goto LABEL_110;
            }

            goto LABEL_94;
          }

          sub_24A8142DC(v243, *(v280 + 56) + *(v259 + 72) * v150, type metadata accessor for FMIPDeviceConnectedState);

          v138(v247, v24);
          v217 = &v269;
LABEL_88:
          v210 = *(v217 - 32);
          v211 = v24;
          goto LABEL_89;
        }

        break;
    }

    goto LABEL_10;
  }

  return result;
}

void sub_24A80F310(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_24A80F378(NSObject *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v4 = sub_24A82CDC4();
    sub_24A6797D0(v4, qword_281518F88);
    v5 = a1;
    v6 = sub_24A82CD94();
    v7 = sub_24A82D504();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v28[0] = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = sub_24A82DC74();
      v12 = sub_24A68761C(v10, v11, v28);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_24A675000, v6, v7, "FMIPBeaconRefreshingController: Subscribe failed due to error: %s", v8, 0xCu);
      sub_24A6876E8(v9);
      MEMORY[0x24C21E1D0](v9, -1, -1);
      MEMORY[0x24C21E1D0](v8, -1, -1);

      return;
    }

    v26 = a1;
  }

  else
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v14 = sub_24A82CDC4();
    sub_24A6797D0(v14, qword_281518F88);

    oslog = sub_24A82CD94();
    v15 = sub_24A82D504();

    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v30 = v17;
      *v16 = 136315138;
      v18 = a2 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy;
      v19 = *(a2 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy);
      v21 = *(a2 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy + 8);
      v20 = *(a2 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy + 16);
      v22 = *(a2 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy + 24);
      LOBYTE(v18) = *(v18 + 32);
      LOBYTE(v28[0]) = v19;
      v28[1] = v21;
      v28[2] = v20;
      v28[3] = v22;
      v29 = v18;

      v23 = sub_24A82D024();
      v25 = sub_24A68761C(v23, v24, &v30);

      *(v16 + 4) = v25;
      _os_log_impl(&dword_24A675000, oslog, v15, "FMIPBeaconRefreshingController: Successfully updated refresh policy to: %s", v16, 0xCu);
      sub_24A6876E8(v17);
      MEMORY[0x24C21E1D0](v17, -1, -1);
      MEMORY[0x24C21E1D0](v16, -1, -1);

      return;
    }

    v26 = oslog;
  }
}

void sub_24A80F6C4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_24A82CDF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A82CE54();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v17 = sub_24A82CDC4();
    sub_24A6797D0(v17, qword_281518F88);
    v29 = sub_24A82CD94();
    v18 = sub_24A82D4E4();
    if (os_log_type_enabled(v29, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_24A675000, v29, v18, "FMIPBeaconRefreshingController: Received nil client configuration", v19, 2u);
      MEMORY[0x24C21E1D0](v19, -1, -1);
    }

    v20 = v29;
  }

  else
  {
    v28 = v7;
    v29 = v14;
    v21 = sub_24A82C574();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    sub_24A681458(a1, a2);
    sub_24A82C564();
    sub_24A814A18();
    sub_24A82C554();

    v24 = aBlock[0];
    v27[1] = *(a3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshQueue);
    v25 = swift_allocObject();
    *(v25 + 16) = a3;
    *(v25 + 24) = v24;
    aBlock[4] = sub_24A814A6C;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = &unk_285DCE3F8;
    v27[0] = _Block_copy(aBlock);

    sub_24A82CE24();
    v30 = MEMORY[0x277D84F90];
    sub_24A697DF4(&qword_281515DB0, MEMORY[0x277D85198]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    sub_24A82D6B4();
    v26 = v27[0];
    MEMORY[0x24C21CE90](0, v16, v10, v27[0]);
    _Block_release(v26);
    sub_24A67E8E8(a1, a2);
    (*(v28 + 8))(v10, v6);
    (*(v12 + 8))(v16, v29);
  }
}

uint64_t sub_24A80FC74(uint64_t a1, char a2)
{
  v4 = sub_24A82CDF4();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_24A82CE54();
  v36 = *(v38 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A82CE04();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2 & 1;
  *(a1 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_clientConfiguration) = a2;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v16 = sub_24A82CDC4();
  sub_24A6797D0(v16, qword_281518F88);
  v17 = sub_24A82CD94();
  v18 = sub_24A82D4E4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v35 = v10;
    v21 = v20;
    aBlock[0] = v20;
    *v19 = 136446210;
    LOBYTE(v41) = v15;
    v22 = sub_24A82D024();
    v34 = v11;
    v24 = v9;
    v25 = a1;
    v26 = sub_24A68761C(v22, v23, aBlock);
    v11 = v34;

    *(v19 + 4) = v26;
    a1 = v25;
    v9 = v24;
    _os_log_impl(&dword_24A675000, v17, v18, "FMIPBeaconRefreshingController: Received new client configuration: %{public}s", v19, 0xCu);
    sub_24A6876E8(v21);
    v27 = v21;
    v10 = v35;
    MEMORY[0x24C21E1D0](v27, -1, -1);
    MEMORY[0x24C21E1D0](v19, -1, -1);
  }

  sub_24A679170(0, &qword_2815146C0, 0x277D85C78);
  (*(v11 + 104))(v14, *MEMORY[0x277D851D0], v10);
  v28 = sub_24A82D5A4();
  (*(v11 + 8))(v14, v10);
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = v15;
  aBlock[4] = sub_24A814A78;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DCE448;
  v30 = _Block_copy(aBlock);

  sub_24A82CE24();
  v41 = MEMORY[0x277D84F90];
  sub_24A697DF4(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  v31 = v37;
  v32 = v40;
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v9, v31, v30);
  _Block_release(v30);

  (*(v39 + 8))(v31, v32);
  (*(v36 + 8))(v9, v38);
}

uint64_t sub_24A810188(uint64_t a1, char a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = a2 & 1;
    sub_24A7525E0(&v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A8101E0(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {

    v5 = v2;
    v2 = sub_24A82C904();
    v7 = v6;
  }

  else
  {

    v7 = 0xF000000000000000;
  }

  v4(v2, v7);
  sub_24A67E8E8(v2, v7);
}

void sub_24A810278()
{
  v1 = *MEMORY[0x277D49840];
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v2, v0, sub_24A6B0068, v1, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v3 = objc_opt_self();
  v4 = [v3 defaultCenter];
  [v4 addObserver:v0 selector:sel_handleBeaconsChanged name:v1 object:0];

  v5 = *MEMORY[0x277D49888];
  CFNotificationCenterAddObserver(v2, v0, sub_24A8103D8, v5, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v6 = [v3 defaultCenter];
  [v6 addObserver:v0 selector:sel_handleUnknownBeaconsChanged name:v5 object:0];
}

uint64_t sub_24A8103E4()
{
  v1 = v0;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);
  v3 = sub_24A82CD94();
  v4 = sub_24A82D504();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A675000, v3, v4, "FMIPBeaconRefreshingController: Unknown beacon changed notification received", v5, 2u);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_24A74F110;
  *(v7 + 24) = v6;
  aBlock[4] = sub_24A6806A0;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A6805E4;
  aBlock[3] = &unk_285DCD548;
  v8 = _Block_copy(aBlock);
  v9 = _Block_copy(v8);
  v10 = qword_281513E40;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = _os_activity_create(&dword_24A675000, "FMIPBeaconRefreshingController.refreshUnknownBeacons", qword_281513E48[0], OS_ACTIVITY_FLAG_DEFAULT);
  v12 = _Block_copy(v9);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_24A6A0BC0;
  *(v14 + 24) = v13;
  v18[4] = sub_24A680674;
  v18[5] = v14;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_24A6805E4;
  v18[3] = &unk_285DCD5C0;
  v15 = _Block_copy(v18);

  os_activity_apply(v11, v15);
  _Block_release(v15);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  _Block_release(v8);
  _Block_release(v9);
  result = swift_unknownObjectRelease();
  if (v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

void sub_24A810790(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
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

        sub_24A7F06EC(a1, a2, v20, a3);
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

uint64_t sub_24A8108FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v21 = v7;
    v8 = 1 << *(a3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a3 + 56);
    v11 = a4 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy;
    v12 = (v8 + 63) >> 6;

    v13 = 0;
    v14 = 0;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_14:
      v18 = v15 | (v14 << 6);
      if (*(v11 + 32) == 1)
      {
        result = [*(*(a3 + 48) + 8 * v18) isAppleAudioAccessory];
        if (result)
        {
          continue;
        }
      }

      *(v21 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v13++, 1))
      {
        __break(1u);
LABEL_19:
        v20 = sub_24A7F06EC(v21, a2, v13, a3);

        return v20;
      }
    }

    v16 = v14;
    while (1)
    {
      v14 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v14 >= v12)
      {
        goto LABEL_19;
      }

      v17 = *(a3 + 56 + 8 * v14);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t *sub_24A810A88(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_24A81281C(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_24A810B24(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
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

    sub_24A810790(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_24A810BC8(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x24C21D070](a1, a2, v11);
      sub_24A679170(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_24A679170(0, a5, a6);
    if (sub_24A82D724() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_24A82D734();
    swift_dynamicCast();
    v6 = v20;
    v12 = *(a4 + 40);
    v13 = sub_24A82D5D4();
    v14 = -1 << *(a4 + 32);
    v10 = v13 & ~v14;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v15 = ~v14;
      do
      {
        v16 = *(*(a4 + 48) + 8 * v10);
        v17 = sub_24A82D5E4();

        if (v17)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v15;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
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

  v18 = *(*(a4 + 48) + 8 * v10);

  v19 = v18;
}

uint64_t sub_24A810DE0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_24A82CFC4();
  v6 = v5;
  if (v4 == sub_24A82CFC4() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24A82DC04();
  }

  return v9 & 1;
}

BOOL _s8FMIPCore24FMIPDeviceConnectedStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A82CAA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = sub_24A6BBA94(&qword_27EF5ED48, &unk_24A83BA70);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_24A67E964(a1, &v24 - v16, &qword_27EF5D020, &qword_24A830E40);
  sub_24A67E964(a2, &v17[v18], &qword_27EF5D020, &qword_24A830E40);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_24A67E964(v17, v12, &qword_27EF5D020, &qword_24A830E40);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_24A697DF4(&qword_27EF5DC48, MEMORY[0x277CC95F0]);
      v21 = sub_24A82CF84();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_24A67F378(v17, &qword_27EF5D020, &qword_24A830E40);
      if (v21)
      {
        goto LABEL_9;
      }

      return 0;
    }

    (*(v5 + 8))(v12, v4);
LABEL_6:
    sub_24A67F378(v17, &qword_27EF5ED48, &unk_24A83BA70);
    return 0;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_24A67F378(v17, &qword_27EF5D020, &qword_24A830E40);
LABEL_9:
  v23 = type metadata accessor for FMIPDeviceConnectedState(0);
  return *(a1 + *(v23 + 20)) == *(a2 + *(v23 + 20));
}

unint64_t sub_24A8111A4()
{
  result = qword_27EF5F640;
  if (!qword_27EF5F640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F640);
  }

  return result;
}

unint64_t sub_24A8111F8()
{
  result = qword_27EF5F688;
  if (!qword_27EF5F688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F688);
  }

  return result;
}

unint64_t sub_24A81124C()
{
  result = qword_27EF5F690;
  if (!qword_27EF5F690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F690);
  }

  return result;
}

unint64_t sub_24A8112A0()
{
  result = qword_27EF5F698;
  if (!qword_27EF5F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F698);
  }

  return result;
}

unint64_t sub_24A8112F4()
{
  result = qword_27EF5F6A0;
  if (!qword_27EF5F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F6A0);
  }

  return result;
}

unint64_t sub_24A811348()
{
  result = qword_27EF5F708;
  if (!qword_27EF5F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F708);
  }

  return result;
}

unint64_t sub_24A81139C()
{
  result = qword_27EF5F710;
  if (!qword_27EF5F710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F710);
  }

  return result;
}

unint64_t sub_24A8113F0()
{
  result = qword_27EF5F718;
  if (!qword_27EF5F718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F718);
  }

  return result;
}

unint64_t sub_24A811444()
{
  result = qword_27EF5F720;
  if (!qword_27EF5F720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F720);
  }

  return result;
}

unint64_t sub_24A811498()
{
  result = qword_27EF5F728;
  if (!qword_27EF5F728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F728);
  }

  return result;
}

unint64_t sub_24A8114F0()
{
  result = qword_27EF5F758;
  if (!qword_27EF5F758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F758);
  }

  return result;
}

unint64_t sub_24A811548()
{
  result = qword_27EF5F760;
  if (!qword_27EF5F760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F760);
  }

  return result;
}

unint64_t sub_24A8115A0()
{
  result = qword_27EF5F768;
  if (!qword_27EF5F768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F768);
  }

  return result;
}

unint64_t sub_24A8115F8()
{
  result = qword_27EF5F770;
  if (!qword_27EF5F770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F770);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMIPBeaconRefreshingControllerClientConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t getEnumTagSinglePayload for FMIPSeparationMonitoringState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_20;
  }

  v2 = a2 + 7;
  if (a2 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 7;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 7;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 6)
  {
    v8 = v7 - 5;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FMIPSeparationMonitoringState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 7;
  if (a3 + 7 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF9)
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_24A811978(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 6)
  {
    return v1 - 5;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_24A81198C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 5;
  }

  return result;
}

unint64_t sub_24A811A38()
{
  result = qword_27EF5F788;
  if (!qword_27EF5F788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F788);
  }

  return result;
}

unint64_t sub_24A811A90()
{
  result = qword_27EF5F790;
  if (!qword_27EF5F790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F790);
  }

  return result;
}

unint64_t sub_24A811AE8()
{
  result = qword_27EF5F798;
  if (!qword_27EF5F798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F798);
  }

  return result;
}

unint64_t sub_24A811B40()
{
  result = qword_27EF5F7A0;
  if (!qword_27EF5F7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F7A0);
  }

  return result;
}

unint64_t sub_24A811B98()
{
  result = qword_27EF5F7A8;
  if (!qword_27EF5F7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F7A8);
  }

  return result;
}

unint64_t sub_24A811BF0()
{
  result = qword_27EF5F7B0;
  if (!qword_27EF5F7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F7B0);
  }

  return result;
}

unint64_t sub_24A811C48()
{
  result = qword_27EF5F7B8;
  if (!qword_27EF5F7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F7B8);
  }

  return result;
}

unint64_t sub_24A811CA0()
{
  result = qword_27EF5F7C0;
  if (!qword_27EF5F7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F7C0);
  }

  return result;
}

unint64_t sub_24A811CF8()
{
  result = qword_27EF5F7C8;
  if (!qword_27EF5F7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F7C8);
  }

  return result;
}

unint64_t sub_24A811D50()
{
  result = qword_27EF5F7D0;
  if (!qword_27EF5F7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F7D0);
  }

  return result;
}

unint64_t sub_24A811DA8()
{
  result = qword_27EF5F7D8;
  if (!qword_27EF5F7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F7D8);
  }

  return result;
}

unint64_t sub_24A811E00()
{
  result = qword_27EF5F7E0;
  if (!qword_27EF5F7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F7E0);
  }

  return result;
}

unint64_t sub_24A811E58()
{
  result = qword_27EF5F7E8;
  if (!qword_27EF5F7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F7E8);
  }

  return result;
}

unint64_t sub_24A811EB0()
{
  result = qword_27EF5F7F0;
  if (!qword_27EF5F7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F7F0);
  }

  return result;
}

unint64_t sub_24A811F08()
{
  result = qword_27EF5F858;
  if (!qword_27EF5F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F858);
  }

  return result;
}

unint64_t sub_24A811F60()
{
  result = qword_27EF5F860;
  if (!qword_27EF5F860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F860);
  }

  return result;
}

unint64_t sub_24A811FB8()
{
  result = qword_27EF5F868;
  if (!qword_27EF5F868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F868);
  }

  return result;
}

unint64_t sub_24A812010()
{
  result = qword_27EF5F870;
  if (!qword_27EF5F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F870);
  }

  return result;
}

uint64_t sub_24A812064(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v4 = type metadata accessor for FMIPItem();
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = sub_24A82D744();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v51 = MEMORY[0x277D84F90];
    sub_24A6FCB30(0, v8 & ~(v8 >> 63), 0);
    v46 = v51;
    if (v45)
    {
      result = sub_24A82D6F4();
    }

    else
    {
      v11 = -1 << *(a1 + 32);
      result = sub_24A82D6C4();
      v10 = *(a1 + 36);
    }

    v48 = result;
    v49 = v10;
    v50 = v45 != 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v13 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v13 = a1;
      }

      v40 = a1 + 56;
      v41 = v13;
      v38[1] = v2;
      v39 = a1 + 64;
      v42 = v8;
      while (v12 < v8)
      {
        if (__OFADD__(v12++, 1))
        {
          goto LABEL_37;
        }

        v16 = v48;
        v17 = v49;
        v18 = v50;
        v19 = a1;
        sub_24A810BC8(v48, v49, v50, a1, &qword_281512B60, 0x277D49610);
        v21 = v20;
        v47[3] = sub_24A679170(0, &qword_281512B60, 0x277D49610);
        v47[4] = &protocol witness table for SPBeacon;
        v47[0] = v21;
        v22 = v44;

        FMIPItem.init(with:from:)(v47, v22, v7);
        v23 = v46;
        v51 = v46;
        v24 = v7;
        v26 = *(v46 + 16);
        v25 = *(v46 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_24A6FCB30(v25 > 1, v26 + 1, 1);
          v23 = v51;
        }

        *(v23 + 16) = v26 + 1;
        v27 = (*(v43 + 80) + 32) & ~*(v43 + 80);
        v46 = v23;
        result = sub_24A8127B4(v24, v23 + v27 + *(v43 + 72) * v26, type metadata accessor for FMIPItem);
        v7 = v24;
        if (v45)
        {
          if (!v18)
          {
            goto LABEL_42;
          }

          a1 = v19;
          if (sub_24A82D714())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v8 = v42;
          sub_24A6BBA94(&qword_27EF5F8E0, &qword_24A841618);
          v14 = sub_24A82D3E4();
          sub_24A82D7A4();
          result = v14(v47, 0);
          if (v12 == v8)
          {
LABEL_34:
            sub_24A6CA498(v48, v49, v50);
            return v46;
          }
        }

        else
        {
          if (v18)
          {
            goto LABEL_43;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v19;
          v28 = 1 << *(v19 + 32);
          if (v16 >= v28)
          {
            goto LABEL_38;
          }

          v29 = v16 >> 6;
          v30 = *(v40 + 8 * (v16 >> 6));
          if (((v30 >> v16) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v19 + 36) != v17)
          {
            goto LABEL_40;
          }

          v31 = v30 & (-2 << (v16 & 0x3F));
          if (v31)
          {
            v28 = __clz(__rbit64(v31)) | v16 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v32 = v29 << 6;
            v33 = v29 + 1;
            v34 = (v39 + 8 * v29);
            while (v33 < (v28 + 63) >> 6)
            {
              v36 = *v34++;
              v35 = v36;
              v32 += 64;
              ++v33;
              if (v36)
              {
                result = sub_24A6CA498(v16, v17, 0);
                v28 = __clz(__rbit64(v35)) + v32;
                goto LABEL_33;
              }
            }

            result = sub_24A6CA498(v16, v17, 0);
          }

LABEL_33:
          v37 = *(v19 + 36);
          v48 = v28;
          v49 = v37;
          v50 = 0;
          v8 = v42;
          if (v12 == v42)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_24A8124A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_24A82DC04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000 || (sub_24A82DC04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656C6261736964 && a2 == 0xE800000000000000 || (sub_24A82DC04() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646573756170 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24A82DC04();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_24A81265C()
{
  v1 = *(*(sub_24A6BBA94(&qword_27EF5F8B0, &qword_24A8415E0) - 8) + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_24A808760(v2, v3);
}

uint64_t sub_24A8126CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A812734(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A8127B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t *sub_24A81281C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v28 = result;
  v29 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v31 = (a4 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy);
  v32 = a3;
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v33 = (v8 - 1) & v8;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(v32 + 48);
    v30 = v13;
    v15 = *(v14 + 8 * v13);
    v16 = v31[1];
    v36 = *v31;
    v37 = v16;
    v38 = *(v31 + 32);
    v39 = *(&v16 + 1);
    v40 = v16;
    v17 = v15;
    sub_24A67E964(&v40, &v35, &qword_27EF5DA28, &qword_24A8415A0);
    sub_24A67E964(&v39, &v35, &qword_27EF5F878, &qword_24A8415A8);
    v18 = sub_24A7B56DC();
    sub_24A67F378(&v40, &qword_27EF5DA28, &qword_24A8415A0);
    sub_24A67F378(&v39, &qword_27EF5F878, &qword_24A8415A8);
    v19 = [v18 searchTypes];

    type metadata accessor for SPBeaconType(0);
    v20 = sub_24A82D244();

    v21 = [v17 type];
    v35 = v21;
    MEMORY[0x28223BE20](v21);
    v26[2] = &v35;
    v22 = v34;
    v23 = sub_24A7FD954(sub_24A814B3C, v26, v20);
    v34 = v22;

    v8 = v33;
    if (v23)
    {
      *(v28 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
LABEL_15:
        v25 = v32;

        return sub_24A7F06EC(v28, v27, v29, v25);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v33 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A812AD8(uint64_t a1, char *a2)
{
  v3 = v2;
  v5 = a1;
  v50 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v43 = v3;
    v34[1] = v34;
    v35 = v8;
    MEMORY[0x28223BE20](v10);
    v37 = v34 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v9);
    v38 = 0;
    v8 = 0;
    v41 = v5;
    v12 = *(v5 + 56);
    v5 += 56;
    v11 = v12;
    v13 = 1 << *(v5 - 24);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & v11;
    v36 = a2;
    v40 = &a2[OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy];
    v16 = (v13 + 63) >> 6;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v42 = (v15 - 1) & v15;
LABEL_12:
      v20 = v17 | (v8 << 6);
      v21 = *(v41 + 48);
      v39 = v20;
      v22 = *(v21 + 8 * v20);
      v23 = *(v40 + 1);
      v47 = *v40;
      v48 = v23;
      v49 = v40[32];
      v45 = *(&v23 + 1);
      v46 = v23;
      v24 = v22;
      sub_24A67E964(&v46, &v44, &qword_27EF5DA28, &qword_24A8415A0);
      v3 = &qword_24A8415A8;
      sub_24A67E964(&v45, &v44, &qword_27EF5F878, &qword_24A8415A8);
      v25 = sub_24A7B56DC();
      sub_24A67F378(&v46, &qword_27EF5DA28, &qword_24A8415A0);
      sub_24A67F378(&v45, &qword_27EF5F878, &qword_24A8415A8);
      v26 = [v25 searchTypes];

      type metadata accessor for SPBeaconType(0);
      v9 = sub_24A82D244();

      a2 = [v24 type];
      v44 = a2;
      MEMORY[0x28223BE20](a2);
      v34[-2] = &v44;
      v27 = v43;
      v28 = sub_24A7FD954(sub_24A814B3C, &v34[-4], v9);
      v43 = v27;

      v15 = v42;
      if (v28)
      {
        *&v37[(v39 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v39;
        if (__OFADD__(v38++, 1))
        {
          __break(1u);
LABEL_16:
          v30 = sub_24A7F06EC(v37, v35, v38, v41);

          goto LABEL_17;
        }
      }
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v8 >= v16)
      {
        goto LABEL_16;
      }

      v19 = *(v5 + 8 * v8);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v42 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v33 = swift_slowAlloc();

  v30 = sub_24A810A88(v33, v8, v5, a2);

  MEMORY[0x24C21E1D0](v33, -1, -1);

LABEL_17:
  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

uint64_t sub_24A812EC4(uint64_t a1, char *a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x277D84FA0];
    v38 = MEMORY[0x277D84FA0];

    v5 = sub_24A82D704();
    v6 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy;
    v35 = v5;
    v7 = sub_24A82D784();
    v33 = a2;
    if (v7)
    {
      v8 = &a2[v6];
      v9 = v7;
      v34 = sub_24A679170(0, &qword_281512B60, 0x277D49610);
      v10 = v9;
      do
      {
        v36 = v10;
        swift_dynamicCast();
        v11 = v37;
        v12 = *(v8 + 1);
        v39 = *v8;
        v40 = v12;
        v41 = v8[32];
        v42 = *(&v12 + 1);
        v43 = v12;
        sub_24A67E964(&v43, &v36, &qword_27EF5DA28, &qword_24A8415A0);
        sub_24A67E964(&v42, &v36, &qword_27EF5F878, &qword_24A8415A8);
        v13 = sub_24A7B56DC();
        sub_24A67F378(&v43, &qword_27EF5DA28, &qword_24A8415A0);
        sub_24A67F378(&v42, &qword_27EF5F878, &qword_24A8415A8);
        v14 = [v13 searchTypes];

        type metadata accessor for SPBeaconType(0);
        v15 = sub_24A82D244();

        v16 = [v11 type];
        v36 = v16;
        MEMORY[0x28223BE20](v16);
        v32[2] = &v36;
        v17 = sub_24A7FD954(sub_24A814B3C, v32, v15);

        v18 = v37;
        if (v17)
        {
          v19 = *(v3 + 16);
          if (*(v3 + 24) <= v19)
          {
            sub_24A70E8A4(v19 + 1);
          }

          v3 = v38;
          v20 = *(v38 + 40);
          result = sub_24A82D5D4();
          v22 = v3 + 56;
          v23 = -1 << *(v3 + 32);
          v24 = result & ~v23;
          v25 = v24 >> 6;
          if (((-1 << v24) & ~*(v3 + 56 + 8 * (v24 >> 6))) != 0)
          {
            v26 = __clz(__rbit64((-1 << v24) & ~*(v3 + 56 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v27 = 0;
            v28 = (63 - v23) >> 6;
            do
            {
              if (++v25 == v28 && (v27 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v29 = v25 == v28;
              if (v25 == v28)
              {
                v25 = 0;
              }

              v27 |= v29;
              v30 = *(v22 + 8 * v25);
            }

            while (v30 == -1);
            v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          }

          *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
          *(*(v3 + 48) + 8 * v26) = v18;
          ++*(v3 + 16);
        }

        else
        {
        }

        v10 = sub_24A82D784();
      }

      while (v10);
    }
  }

  else
  {
    v31 = sub_24A812AD8(a1, a2);
    if (!v2)
    {
      return v31;
    }
  }

  return v3;
}

uint64_t sub_24A813240(uint64_t a1, int64_t a2)
{
  v3 = v2;
  v28 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v27 = v3;
    v24[1] = v24;
    v25 = v8;
    MEMORY[0x28223BE20](v10);
    v11 = v24 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v11, v9);
    v9 = 0;
    v12 = 0;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v8 = v14 & *(a1 + 56);
    v26 = a2;
    v3 = a2 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy;
    a2 = (v13 + 63) >> 6;
    while (v8)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v18 = v15 | (v12 << 6);
      if (*(v3 + 32) != 1 || ([*(*(a1 + 48) + 8 * v18) isAppleAudioAccessory] & 1) == 0)
      {
        *&v11[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
        if (__OFADD__(v9++, 1))
        {
          __break(1u);
LABEL_17:
          v20 = sub_24A7F06EC(v11, v25, v9, a1);

          goto LABEL_18;
        }
      }
    }

    v16 = v12;
    while (1)
    {
      v12 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v12 >= a2)
      {
        goto LABEL_17;
      }

      v17 = *(a1 + 56 + 8 * v12);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v23 = swift_slowAlloc();

  v20 = sub_24A8108FC(v23, v8, a1, a2);

  MEMORY[0x24C21E1D0](v23, -1, -1);

LABEL_18:
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t sub_24A8134C0(uint64_t a1, int64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_24A813240(a1, a2);
  }

  v3 = MEMORY[0x277D84FA0];
  v18 = MEMORY[0x277D84FA0];

  sub_24A82D704();
  v4 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy;
  if (sub_24A82D784())
  {
    sub_24A679170(0, &qword_281512B60, 0x277D49610);
    do
    {
      swift_dynamicCast();
      if (*(a2 + v4 + 32) == 1 && ([v17 isAppleAudioAccessory] & 1) != 0)
      {
      }

      else
      {
        v12 = *(v3 + 16);
        if (*(v3 + 24) <= v12)
        {
          sub_24A70E8A4(v12 + 1);
        }

        v3 = v18;
        v5 = *(v18 + 40);
        result = sub_24A82D5D4();
        v7 = v18 + 56;
        v8 = -1 << *(v18 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v18 + 56 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v18 + 56 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v18 + 48) + 8 * v11) = v17;
        ++*(v18 + 16);
      }
    }

    while (sub_24A82D784());
  }

  return v3;
}

uint64_t sub_24A8136F8(uint64_t a1)
{
  v100 = sub_24A82CE54();
  v99 = *(v100 - 8);
  v2 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v97 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_24A82CDF4();
  v96 = *(v98 - 8);
  v4 = *(v96 + 64);
  MEMORY[0x28223BE20](v98);
  v95 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_24A82CAA4();
  v6 = *(v111 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v111);
  v9 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v10 = sub_24A82CDC4();
  v103 = sub_24A6797D0(v10, qword_281518F88);
  v11 = sub_24A82CD94();
  v12 = sub_24A82D504();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_24A675000, v11, v12, "FMIPBeaconRefreshingController: Refreshing Separation State", v13, 2u);
    MEMORY[0x24C21E1D0](v13, -1, -1);
  }

  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = a1 + 32;
    v105 = (v6 + 8);
    v104 = *MEMORY[0x277D49798];
    *&v14 = 136316162;
    v101 = v14;
    v18 = MEMORY[0x277D84F98];
    v19 = MEMORY[0x277D84F98];
    v112 = MEMORY[0x277D84F98];
    v113 = MEMORY[0x277D84F98];
    do
    {
      v109 = v15;
      v107 = v17;
      sub_24A698230(v17, aBlock);
      v59 = v118;
      v60 = v119;
      sub_24A67DF6C(aBlock, v118);
      v61 = (*(v60 + 10))(v59, v60);
      if (*(v61 + 16) && (v62 = sub_24A77EE90(v104), (v63 & 1) != 0))
      {
        v64 = *(*(v61 + 56) + 8 * v62);

        v65 = [v64 state];

        v66 = 0x3000002000100uLL >> (8 * (v65 + 1));
        if (v65 + 1 >= 7)
        {
          LODWORD(v66) = 0;
        }

        v115 = v66;
      }

      else
      {

        v115 = 0;
      }

      v67 = v118;
      v68 = v119;
      sub_24A67DF6C(aBlock, v118);
      v69 = *((*(v68 + 10))(v67, v68) + 16);
      v110 = v19;
      if (v69)
      {
        sub_24A77EE90(v104);
        v41 = v70;
      }

      else
      {
        v41 = 0;
      }

      v71 = v118;
      v72 = v119;
      sub_24A67DF6C(aBlock, v118);
      v106 = (*(v72 + 21))(v71, v72);
      v73 = v118;
      v74 = v119;
      sub_24A67DF6C(aBlock, v118);
      v75 = (*(v74 + 15))(v73, v74);
      v76 = sub_24A7FD248(v75);
      v108 = v16;

      sub_24A698230(aBlock, v121);

      v77 = sub_24A82CD94();
      v78 = sub_24A82D504();

      v79 = os_log_type_enabled(v77, v78);
      v114 = v76;
      if (v79)
      {
        v20 = v41;
        v102 = v18;
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v116 = v22;
        *v21 = v101;
        v24 = v122;
        v23 = v123;
        sub_24A67DF6C(v121, v122);
        v25 = v111;
        (*(v23 + 16))(v24, v23);
        sub_24A697DF4(&qword_27EF5CEF0, MEMORY[0x277CC95F0]);
        v26 = sub_24A82DB84();
        v28 = v27;
        (*v105)(v9, v25);
        sub_24A6876E8(v121);
        v29 = sub_24A68761C(v26, v28, &v116);

        *(v21 + 4) = v29;
        *(v21 + 12) = 2080;
        v30 = 0x64656C6261736964;
        if (v115 != 2)
        {
          v30 = 0x646573756170;
        }

        v31 = 0xE800000000000000;
        if (v115 != 2)
        {
          v31 = 0xE600000000000000;
        }

        v32 = 0x64656C62616E65;
        if (!v115)
        {
          v32 = 0x6E776F6E6B6E75;
        }

        if (v115 <= 1u)
        {
          v33 = v32;
        }

        else
        {
          v33 = v30;
        }

        if (v115 <= 1u)
        {
          v34 = 0xE700000000000000;
        }

        else
        {
          v34 = v31;
        }

        v35 = sub_24A68761C(v33, v34, &v116);

        *(v21 + 14) = v35;
        *(v21 + 22) = 1024;
        *(v21 + 24) = v20 & 1;
        *(v21 + 28) = 1024;
        v36 = v106;
        *(v21 + 30) = v106 & 1;
        *(v21 + 34) = 2080;
        v37 = MEMORY[0x24C21CB60](v114, v111);
        v39 = sub_24A68761C(v37, v38, &v116);

        *(v21 + 36) = v39;
        _os_log_impl(&dword_24A675000, v77, v78, "    FMIPBeaconRefreshingController: Separation Monitoring State for Beacon %s\n    separationMonitoringEnabled: %s,\n    canEnableSeparationMonitoring: %{BOOL}d,\n    canBeMonitoredForSeparationByHost: %{BOOL}d,\n    safeLocations: %s", v21, 0x2Cu);
        swift_arrayDestroy();
        MEMORY[0x24C21E1D0](v22, -1, -1);
        v40 = v21;
        v41 = v20;
        MEMORY[0x24C21E1D0](v40, -1, -1);

        v18 = v102;
      }

      else
      {

        sub_24A6876E8(v121);
        v36 = v106;
      }

      v42 = v118;
      v43 = v119;
      sub_24A67DF6C(aBlock, v118);
      (*(v43 + 2))(v42, v43);
      v44 = v113;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v121[0] = v44;
      sub_24A785520(v115, v9, isUniquelyReferenced_nonNull_native);
      v46 = *v105;
      v47 = v111;
      (*v105)(v9, v111);
      v113 = v121[0];
      v48 = v118;
      v49 = v119;
      sub_24A67DF6C(aBlock, v118);
      (*(v49 + 2))(v48, v49);
      v50 = v110;
      v51 = swift_isUniquelyReferenced_nonNull_native();
      v121[0] = v50;
      sub_24A785380(v41 & 1, v9, v51);
      v46(v9, v47);
      v19 = v121[0];
      v52 = v118;
      v53 = v119;
      sub_24A67DF6C(aBlock, v118);
      (*(v53 + 2))(v52, v53);
      v54 = swift_isUniquelyReferenced_nonNull_native();
      v121[0] = v18;
      sub_24A785380(v36 & 1, v9, v54);
      v46(v9, v47);
      v18 = v121[0];
      v55 = v118;
      v56 = v119;
      sub_24A67DF6C(aBlock, v118);
      (*(v56 + 2))(v55, v56);
      v57 = v112;
      v58 = swift_isUniquelyReferenced_nonNull_native();
      v121[0] = v57;
      sub_24A7851B4(v114, v9, v58);
      v46(v9, v47);
      v112 = v121[0];
      sub_24A6876E8(aBlock);
      v17 = v107 + 40;
      v16 = v108;
      v15 = v109 - 1;
    }

    while (v109 != 1);
  }

  else
  {
    v19 = MEMORY[0x277D84F98];
    v18 = MEMORY[0x277D84F98];
    v112 = MEMORY[0x277D84F98];
    v113 = MEMORY[0x277D84F98];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v81 = Strong;
    v82 = v113;

    v83 = sub_24A82CD94();
    v84 = sub_24A82D504();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *v85 = 138412290;
      sub_24A697DF4(&qword_281514670, MEMORY[0x277CC95F0]);
      v87 = sub_24A82CED4();
      *(v85 + 4) = v87;
      *v86 = v87;
      _os_log_impl(&dword_24A675000, v83, v84, "FMIPManager: didReceive separation states %@", v85, 0xCu);
      sub_24A67F378(v86, &qword_27EF5D010, &qword_24A830E30);
      MEMORY[0x24C21E1D0](v86, -1, -1);
      MEMORY[0x24C21E1D0](v85, -1, -1);
    }

    v88 = *(v81 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
    v89 = v95;
    sub_24A82CDE4();
    v90 = swift_allocObject();
    v90[2] = v81;
    v90[3] = v82;
    v90[4] = v19;
    v90[5] = v18;
    v90[6] = v112;
    v119 = sub_24A81434C;
    v120 = v90;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    v118 = &unk_285DCDBD8;
    v91 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v92 = v97;
    sub_24A82CE24();
    MEMORY[0x24C21CE90](0, v92, v89, v91);
    _Block_release(v91);
    (*(v99 + 8))(v92, v100);
    (*(v96 + 8))(v89, v98);
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_24A8142DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_24A814378()
{
  v1 = *(sub_24A82CAA4() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_24A82CA34() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_24A802898(v6, v7, v8, v0 + v2, v0 + v5);
}

void sub_24A814478(uint64_t a1)
{
  v3 = *(sub_24A82CAA4() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_24A82CA34() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = (v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  sub_24A802F9C(a1, v8, v1 + v4, v1 + v7, v10, v11);
}

uint64_t sub_24A814580(int64_t a1)
{
  v3 = *(sub_24A82CAA4() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_24A82CA34() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + v8);
  v11 = (v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return sub_24A803530(a1, v9, v1 + v4, v1 + v7, v10, v12, v13);
}

uint64_t sub_24A8146A4()
{
  v1 = sub_24A82CAA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = sub_24A82CA34();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v15 = *(v8 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = *(v0 + v5);

  if (*(v0 + v6))
  {
    v11 = *(v0 + v6 + 8);
  }

  v12 = (v6 + v9 + 16) & ~v9;
  v13 = (v15 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v8 + 8))(v0 + v12, v7);

  return MEMORY[0x2821FE8E8](v0, v13 + 8, v3 | v9 | 7);
}

uint64_t sub_24A814838()
{
  v1 = *(sub_24A82CAA4() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_24A82CA34() - 8);
  v6 = (v4 + *(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = *(v0 + v4 + 8);
  v10 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24A8021D8(v0 + v2, v7, v8, v9, v0 + v6, v10);
}

uint64_t sub_24A814960(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return MEMORY[0x2821FE8E8](v2, 32, 7);
}

uint64_t sub_24A8149C0()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_24A814A18()
{
  result = qword_27EF5F8E8;
  if (!qword_27EF5F8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F8E8);
  }

  return result;
}

uint64_t sub_24A814C20(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_24A6BBA94(&qword_27EF5D800, &unk_24A834860);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - v8;
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A6F4230();
  sub_24A82DD64();
  if (v2)
  {
    goto LABEL_65;
  }

  LOBYTE(v47[0]) = 1;
  v11 = sub_24A82D9F4();
  type metadata accessor for FMIPUserInfoResponseFragment();
  v48 = 2;
  sub_24A8158E8(&qword_2815131B8, type metadata accessor for FMIPUserInfoResponseFragment);
  sub_24A82DA84();
  v46 = v47[0];
  type metadata accessor for FMIPAlert();
  v48 = 0;
  sub_24A8158E8(&qword_281512CD8, type metadata accessor for FMIPAlert);
  sub_24A82DA84();
  v12 = v47[0];
  LOBYTE(v47[0]) = 3;
  result = sub_24A82DA44();
  v15 = HIBYTE(v14) & 0xF;
  v16 = result & 0xFFFFFFFFFFFFLL;
  if ((v14 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(v14) & 0xF;
  }

  else
  {
    v17 = result & 0xFFFFFFFFFFFFLL;
  }

  v45 = v12;
  if (!v17)
  {

    goto LABEL_64;
  }

  if ((v14 & 0x1000000000000000) != 0)
  {
    v48 = 0;
    v19 = sub_24A6D9830(result, v14, 10);
    v49 = v39;

    if (v49)
    {
      goto LABEL_64;
    }

    goto LABEL_69;
  }

  if ((v14 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v14 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_24A82D8B4();
      v16 = v44;
    }

    v18 = *result;
    if (v18 == 43)
    {
      if (v16 >= 1)
      {
        if (--v16)
        {
          v19 = 0;
          if (result)
          {
            v26 = (result + 1);
            while (1)
            {
              v27 = *v26 - 48;
              if (v27 > 9)
              {
                goto LABEL_62;
              }

              v28 = 10 * v19;
              if ((v19 * 10) >> 64 != (10 * v19) >> 63)
              {
                goto LABEL_62;
              }

              v19 = v28 + v27;
              if (__OFADD__(v28, v27))
              {
                goto LABEL_62;
              }

              ++v26;
              if (!--v16)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_61;
        }

        goto LABEL_62;
      }

      goto LABEL_81;
    }

    if (v18 != 45)
    {
      if (v16)
      {
        v19 = 0;
        if (result)
        {
          while (1)
          {
            v32 = *result - 48;
            if (v32 > 9)
            {
              goto LABEL_62;
            }

            v33 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              goto LABEL_62;
            }

            v19 = v33 + v32;
            if (__OFADD__(v33, v32))
            {
              goto LABEL_62;
            }

            ++result;
            if (!--v16)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_62:
      v19 = 0;
      LOBYTE(v16) = 1;
LABEL_63:
      v48 = v16;
      v37 = v16;

      if (v37)
      {
LABEL_64:

        sub_24A7C642C();
        swift_allocError();
        *v38 = 0;
        swift_willThrow();

        (*(v6 + 8))(v9, v5);
LABEL_65:
        type metadata accessor for FMIPBaseResponse();
        swift_deallocPartialClassInstance();
LABEL_66:
        sub_24A6876E8(a1);
        return v3;
      }

LABEL_69:
      if (v11 && *(v11 + 16))
      {

        v40 = sub_24A6A2D48(0x4E6C6C53776F6873, 0xEA0000000000776FLL);
        if (v41)
        {
          sub_24A67E168(*(v11 + 56) + 32 * v40, v47);
          (*(v6 + 8))(v9, v5);

          if (swift_dynamicCast())
          {
            v42 = v48;
LABEL_77:
            v43 = v46;
            *(v3 + 16) = v11;
            *(v3 + 24) = v43;
            *(v3 + 48) = v19;
            *(v3 + 40) = v42;
            *(v3 + 32) = v45;
            goto LABEL_66;
          }

LABEL_76:
          v42 = 0;
          goto LABEL_77;
        }
      }

      (*(v6 + 8))(v9, v5);
      goto LABEL_76;
    }

    if (v16 >= 1)
    {
      if (--v16)
      {
        v19 = 0;
        if (result)
        {
          v20 = (result + 1);
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              goto LABEL_62;
            }

            v22 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              goto LABEL_62;
            }

            v19 = v22 - v21;
            if (__OFSUB__(v22, v21))
            {
              goto LABEL_62;
            }

            ++v20;
            if (!--v16)
            {
              goto LABEL_63;
            }
          }
        }

LABEL_61:
        LOBYTE(v16) = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v47[0] = result;
  v47[1] = v14 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v15)
      {
        v19 = 0;
        v34 = v47;
        while (1)
        {
          v35 = *v34 - 48;
          if (v35 > 9)
          {
            break;
          }

          v36 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v36 + v35;
          if (__OFADD__(v36, v35))
          {
            break;
          }

          ++v34;
          if (!--v15)
          {
            goto LABEL_61;
          }
        }
      }

      goto LABEL_62;
    }

    if (v15)
    {
      v16 = v15 - 1;
      if (v15 != 1)
      {
        v19 = 0;
        v23 = v47 + 1;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v25 - v24;
          if (__OFSUB__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v16)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    goto LABEL_80;
  }

  if (v15)
  {
    v16 = v15 - 1;
    if (v15 != 1)
    {
      v19 = 0;
      v29 = v47 + 1;
      while (1)
      {
        v30 = *v29 - 48;
        if (v30 > 9)
        {
          break;
        }

        v31 = 10 * v19;
        if ((v19 * 10) >> 64 != (10 * v19) >> 63)
        {
          break;
        }

        v19 = v31 + v30;
        if (__OFADD__(v31, v30))
        {
          break;
        }

        ++v29;
        if (!--v16)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_62;
  }

LABEL_82:
  __break(1u);
  return result;
}

uint64_t sub_24A815314()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A815404()
{
  *v0;
  *v0;
  *v0;
  sub_24A82D094();
}

uint64_t sub_24A8154E0()
{
  v1 = *v0;
  sub_24A82DCC4();
  sub_24A82D094();

  return sub_24A82DD24();
}

uint64_t sub_24A8155CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A815AB0();
  *a2 = result;
  return result;
}

void sub_24A8155FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7472656C61;
  v5 = 0xE800000000000000;
  v6 = 0x6F666E4972657375;
  v7 = 0xEA00000000006564;
  v8 = 0x6F43737574617473;
  if (v2 != 3)
  {
    v8 = 0x746E65746E6F63;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6F43726576726573;
    v3 = 0xED0000747865746ELL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_24A8156A8()
{
  v1 = *v0;
  v2 = 0x7472656C61;
  v3 = 0x6F666E4972657375;
  v4 = 0x6F43737574617473;
  if (v1 != 3)
  {
    v4 = 0x746E65746E6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F43726576726573;
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

uint64_t sub_24A815750@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A815AB0();
  *a1 = result;
  return result;
}

uint64_t sub_24A815778(uint64_t a1)
{
  v2 = sub_24A6F4230();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A8157B4(uint64_t a1)
{
  v2 = sub_24A6F4230();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A8157F0(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_24A814C20(a1);
  return v2;
}

uint64_t sub_24A815840()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t sub_24A8158AC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 120))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_24A8158E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24A815954()
{
  result = qword_27EF5F8F0;
  if (!qword_27EF5F8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F8F0);
  }

  return result;
}

unint64_t sub_24A8159AC()
{
  result = qword_27EF5F8F8;
  if (!qword_27EF5F8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F8F8);
  }

  return result;
}

unint64_t sub_24A815A04()
{
  result = qword_281514248;
  if (!qword_281514248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514248);
  }

  return result;
}

unint64_t sub_24A815A5C()
{
  result = qword_281514250;
  if (!qword_281514250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514250);
  }

  return result;
}

uint64_t sub_24A815AB0()
{
  v0 = sub_24A82D9C4();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}