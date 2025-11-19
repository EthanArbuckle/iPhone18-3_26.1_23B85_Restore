uint64_t sub_24A3E22CC()
{
  v1 = *v0;
  v2 = sub_24A4AC420();
  MEMORY[0x24C217D50](v2);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v3 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v3);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  sub_24A4ABF50();
  MEMORY[0x24C217D50](0x6E6F697461636F6CLL, 0xEF203A7472656C41);
  type metadata accessor for FMFLocationAlert();
  sub_24A4AC030();

  MEMORY[0x24C217D50](0, 0xE000000000000000);

  return 60;
}

uint64_t FMFAddLocationAlertAction.__deallocating_deinit()
{
  sub_24A3E267C(v0 + OBJC_IVAR____TtC7FMFCore25FMFAddLocationAlertAction_locationAlert, type metadata accessor for FMFLocationAlert);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_24A3E2578()
{
  result = qword_27EF3F5B0;
  if (!qword_27EF3F5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F5B0);
  }

  return result;
}

uint64_t sub_24A3E25CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFLocationAlert();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for FMFAddLocationAlertAction()
{
  result = qword_27EF3F5B8;
  if (!qword_27EF3F5B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A3E267C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A3E2778()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = sub_24A4AB820();
  [v2 removeObserver:v0 name:v3 object:0];

  v4 = [v1 defaultCenter];
  [v4 removeObserver:v0 name:*MEMORY[0x277D25CA0] object:0];

  sub_24A3C8470(v0 + 16);
  return v0;
}

uint64_t sub_24A3E285C()
{
  sub_24A3E2778();

  return swift_deallocClassInstance();
}

void sub_24A3E2AAC()
{
  if ([v0 isCancelled])
  {
    if (qword_27EF3EC00 != -1)
    {
      swift_once();
    }

    v1 = sub_24A4AB630();
    sub_24A378E18(v1, qword_27EF4E278);
    oslog = sub_24A4AB600();
    v2 = sub_24A4ABCE0();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_24A376000, oslog, v2, "FMReverseGeocodingOperation: operation cancelled", v3, 2u);
      MEMORY[0x24C219130](v3, -1, -1);
    }
  }
}

void sub_24A3E2C00()
{
  v1 = v0;
  v2 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - v4;
  v6 = sub_24A4AAB80();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMReverseGeocodingOperation();
  v29.receiver = v0;
  v29.super_class = v11;
  objc_msgSendSuper2(&v29, sel_start);
  v27 = objc_opt_self();
  v12 = [v27 sharedService];
  v13 = [v12 defaultTraits];

  sub_24A3E3684();
  v14 = &v1[OBJC_IVAR____TtC7FMFCore27FMReverseGeocodingOperation_request];
  v15 = *&v1[OBJC_IVAR____TtC7FMFCore27FMReverseGeocodingOperation_request + 16];
  sub_24A462090(v15);
  v17 = v16;

  v18 = type metadata accessor for FMReverseGeocodingRequest();
  sub_24A38D9BC(&v14[*(v18 + 24)], v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_24A3E36D0(v5);
  }

  else
  {
    v26 = v1;
    (*(v7 + 32))(v10, v5, v6);
    sub_24A4AAB30();
    sub_24A4AAB60();

    [v13 clearDeviceDisplayLanguages];
    if (v13)
    {
      v19 = v13;
      v20 = sub_24A4AB820();

      [v19 addDeviceDisplayLanguage_];

      (*(v7 + 8))(v10, v6);
    }

    else
    {
      (*(v7 + 8))(v10, v6);
    }

    v1 = v26;
  }

  if (v14[*(v18 + 32)] == 1 && v17)
  {
    [v17 setHorizontalAccuracy_];
  }

  v21 = [v27 sharedService];
  v22 = [v21 ticketForReverseGeocodeLocation:v17 traits:v13];

  if (v22)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = v1;
    aBlock[4] = sub_24A3E3738;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A3E33E8;
    aBlock[3] = &unk_285D86050;
    v24 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v25 = v1;

    [v22 submitWithHandler:v24 timeout:25 networkActivity:0];
    swift_unknownObjectRelease_n();

    _Block_release(v24);
  }

  else
  {
  }
}

void sub_24A3E300C(unint64_t a1, id a2, char *a3)
{
  v6 = &OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_preferences;
  v7 = &off_278FE1000;
  if (a2)
  {
    v8 = a2;
    if (qword_27EF3EC00 != -1)
    {
      swift_once();
    }

    v9 = sub_24A4AB630();
    sub_24A378E18(v9, qword_27EF4E278);
    v10 = a2;
    v11 = sub_24A4AB600();
    v12 = sub_24A4ABCC0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v35 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = sub_24A4AC310();
      v17 = sub_24A37BD58(v15, v16, &v35);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_24A376000, v11, v12, "FMReverseGeocodingOperation: reverse geocoding completed with error: %s", v13, 0xCu);
      sub_24A37EEE0(v14);
      v6 = &OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_preferences;
      MEMORY[0x24C219130](v14, -1, -1);
      v18 = v13;
      v7 = &off_278FE1000;
      MEMORY[0x24C219130](v18, -1, -1);
    }

    v19 = &a3[v6[19]];
    v21 = *v19;
    v20 = *(v19 + 1);
    v22 = a2;
    v21(0, a2);

    [a3 v7[230]];
  }

  if (a1)
  {
    if (a1 >> 62)
    {
      if (!sub_24A4AC060())
      {
        return;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C218380](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v23 = *(a1 + 32);
      swift_unknownObjectRetain();
    }

    if (qword_27EF3EC00 != -1)
    {
      swift_once();
    }

    v24 = sub_24A4AB630();
    sub_24A378E18(v24, qword_27EF4E278);
    swift_unknownObjectRetain();
    v25 = sub_24A4AB600();
    v26 = sub_24A4ABCE0();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 136315138;
      v35 = 0;
      v36 = 0xE000000000000000;
      v37 = v28;
      sub_24A3C9CEC(&unk_27EF3F660, &qword_24A4B5A18);
      sub_24A4AC030();
      v29 = sub_24A37BD58(v35, v36, &v37);

      *(v27 + 4) = v29;
      _os_log_impl(&dword_24A376000, v25, v26, "FMReverseGeocodingOperation: reverse geocoding completed with item: %s", v27, 0xCu);
      sub_24A37EEE0(v28);
      v30 = v28;
      v7 = &off_278FE1000;
      MEMORY[0x24C219130](v30, -1, -1);
      MEMORY[0x24C219130](v27, -1, -1);
    }

    v31 = &a3[v6[19]];
    v33 = *v31;
    v32 = *(v31 + 1);
    v34 = swift_unknownObjectRetain();
    v33(v34, a2);
    swift_unknownObjectRelease();
    [a3 v7[230]];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_24A3E33E8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_24A3C9CEC(&unk_27EF3F660, &qword_24A4B5A18);
    v4 = sub_24A4ABA70();
  }

  v7 = a3;
  v6(v4, a3);
}

id sub_24A3E3500()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMReverseGeocodingOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for FMReverseGeocodingOperation()
{
  result = qword_27EF3F5E0;
  if (!qword_27EF3F5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A3E35DC()
{
  result = type metadata accessor for FMReverseGeocodingRequest();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_24A3E3684()
{
  result = qword_27EF3F658;
  if (!qword_27EF3F658)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF3F658);
  }

  return result;
}

uint64_t sub_24A3E36D0(uint64_t a1)
{
  v2 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24A3E3740(uint64_t a1)
{
  v2 = type metadata accessor for FMReverseGeocodingRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FMFShareLocationAction.__allocating_init(handles:friendId:duration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  *(v11 + 24) = a1;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  v12 = OBJC_IVAR____TtC7FMFCore22FMFShareLocationAction_duration;
  v13 = sub_24A4AAE20();
  (*(*(v13 - 8) + 32))(v11 + v12, a4, v13);
  *(v11 + 16) = 1;
  return v11;
}

uint64_t FMFShareLocationAction.init(handles:friendId:duration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  v6 = OBJC_IVAR____TtC7FMFCore22FMFShareLocationAction_duration;
  v7 = sub_24A4AAE20();
  (*(*(v7 - 8) + 32))(v4 + v6, a4, v7);
  *(v4 + 16) = 1;
  return v4;
}

uint64_t sub_24A3E38C4()
{
  sub_24A4ABF50();

  v1 = *v0;
  v2 = sub_24A4AC420();
  MEMORY[0x24C217D50](v2);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v3 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v3);

  MEMORY[0x24C217D50](0xD000000000000010, 0x800000024A4AFD40);
  v4 = MEMORY[0x24C217E90](v0[3], MEMORY[0x277D837D0]);
  MEMORY[0x24C217D50](v4);

  MEMORY[0x24C217D50](0x6F69746172756420, 0xEB00000000203A6ELL);
  sub_24A4AAE20();
  sub_24A3E3A54();
  v5 = sub_24A4AC240();
  MEMORY[0x24C217D50](v5);

  return 60;
}

unint64_t sub_24A3E3A54()
{
  result = qword_27EF3F670;
  if (!qword_27EF3F670)
  {
    sub_24A4AAE20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F670);
  }

  return result;
}

uint64_t sub_24A3E3ADC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = OBJC_IVAR____TtC7FMFCore22FMFShareLocationAction_duration;
  v4 = sub_24A4AAE20();
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t FMFShareLocationAction.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = OBJC_IVAR____TtC7FMFCore22FMFShareLocationAction_duration;
  v4 = sub_24A4AAE20();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t FMFShareLocationAction.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = OBJC_IVAR____TtC7FMFCore22FMFShareLocationAction_duration;
  v4 = sub_24A4AAE20();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMFShareLocationAction()
{
  result = qword_27EF3F678;
  if (!qword_27EF3F678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A3E3CD8()
{
  result = sub_24A4AAE20();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24A3E3DC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24A3E3E10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

BOOL sub_24A3E3E74(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  v7 = sub_24A4AC250();
  if (v7)
  {
    v8 = v7;
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v2 + 32))(v9, v5, a1);
  }

  v10 = sub_24A4AA940();

  v11 = sub_24A3E3FC8();
  return v11;
}

BOOL sub_24A3E3FC8()
{
  v1 = [v0 domain];
  v2 = sub_24A4AB850();
  v4 = v3;

  v5 = *MEMORY[0x277CCA738];
  if (v2 == sub_24A4AB850() && v4 == v6)
  {
  }

  else
  {
    v8 = sub_24A4AC270();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  if ([v0 code] < 500)
  {
    return 0;
  }

  return [v0 code] < 600;
}

uint64_t sub_24A3E40B0()
{
  v129 = sub_24A4AAAD0();
  v111 = *(v129 - 8);
  v1 = *(v111 + 64);
  (MEMORY[0x28223BE20])();
  v116 = &v111 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for FMFLocation();
  v114 = *(v3 - 8);
  v115 = v3;
  v4 = *(v114 + 64);
  (MEMORY[0x28223BE20])();
  v117 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMFIntermediateFriend();
  v125 = *(v6 - 8);
  v126 = v6;
  v7 = *(v125 + 64);
  v8 = (MEMORY[0x28223BE20])();
  v10 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v111 - v12;
  v112 = v0;
  v14 = v0[2];
  v15 = *(v14 + 16);
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v17 = 0;
    v127 = v15 - 1;
    v128 = v14 + 32;
LABEL_3:
    v122 = v16;
    v18 = (v128 + 408 * v17);
    v19 = v17;
    while (v19 < *(v14 + 16))
    {
      memcpy(v133, v18, 0x198uLL);
      v20 = LOBYTE(v133[2]);
      if (LOBYTE(v133[2]) && LOBYTE(v133[2]) != 1)
      {
        sub_24A3E5290(v133, v132);
LABEL_14:

LABEL_15:
        v16 = v122;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v130[0] = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24A3DBCA8(0, *(v16 + 16) + 1, 1);
          v16 = v130[0];
        }

        v25 = *(v16 + 16);
        v24 = *(v16 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_24A3DBCA8((v24 > 1), v25 + 1, 1);
          v16 = v130[0];
        }

        v17 = v19 + 1;
        *(v16 + 16) = v25 + 1;
        result = memcpy((v16 + 408 * v25 + 32), v133, 0x198uLL);
        if (v127 != v19)
        {
          goto LABEL_3;
        }

        goto LABEL_20;
      }

      v21 = sub_24A4AC270();
      sub_24A3E5290(v133, v132);

      if (v21)
      {
        goto LABEL_15;
      }

      if (!v20)
      {
        goto LABEL_14;
      }

      v22 = sub_24A4AC270();

      if (v22)
      {
        goto LABEL_15;
      }

      ++v19;
      result = sub_24A3E52EC(v133);
      v18 += 408;
      if (v15 == v19)
      {
        v16 = v122;
        goto LABEL_20;
      }
    }

    goto LABEL_92;
  }

LABEL_20:
  v26 = *(v16 + 16);
  v128 = v14;
  if (v26)
  {
    *&v113 = v10;
    v130[0] = MEMORY[0x277D84F90];

    v122 = v16;
    result = sub_24A3DBC64(0, v26, 0);
    v27 = v122;
    if (!*(v122 + 16))
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    v28 = 0;
    v127 = v130[0];
    v120 = v26 - 1;
    v121 = v111 + 56;
    v29 = 32;
    v119 = xmmword_24A4B4E10;
    v118 = xmmword_24A4B5B50;
    v30 = (v111 + 56);
    while (1)
    {
      v123 = v29;
      v124 = v28;
      memcpy(v133, (v27 + v29), 0x198uLL);
      v31 = v133[0];
      v32 = v133[1];
      sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
      v33 = swift_allocObject();
      *(v33 + 16) = v119;
      *(v33 + 32) = v31;
      *(v33 + 40) = v32;
      v34 = v126;
      v35 = v126[10];
      swift_bridgeObjectRetain_n();
      sub_24A3E5290(v133, v132);
      sub_24A4AAAC0();
      v36 = *v30;
      v37 = v129;
      (*v30)(&v13[v35], 0, 1, v129);
      v38 = v34[11];
      sub_24A4AAAC0();
      v36(&v13[v38], 0, 1, v37);
      v36(&v13[v34[12]], 1, 1, v37);
      v13[v34[16]] = 2;
      *v13 = v31;
      *(v13 + 1) = v32;
      swift_bridgeObjectRetain_n();
      sub_24A3E52EC(v133);
      *(v13 + 2) = v31;
      *(v13 + 3) = v32;
      *(v13 + 4) = v33;
      *(v13 + 5) = &unk_285D835C8;
      *(v13 + 3) = v118;
      *(v13 + 8) = v31;
      *(v13 + 9) = v32;
      v13[v34[13]] = 1;
      v13[v34[14]] = 0;
      v13[v34[15]] = 0;
      *&v13[v34[17]] = 0;
      v39 = v127;
      v130[0] = v127;
      v41 = *(v127 + 16);
      v40 = *(v127 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_24A3DBC64(v40 > 1, v41 + 1, 1);
        v39 = v130[0];
      }

      *(v39 + 16) = v41 + 1;
      v42 = (*(v125 + 80) + 32) & ~*(v125 + 80);
      v127 = v39;
      result = sub_24A3E539C(v13, v39 + v42 + *(v125 + 72) * v41, type metadata accessor for FMFIntermediateFriend);
      v14 = v128;
      if (v120 == v124)
      {
        break;
      }

      v28 = v124 + 1;
      v27 = v122;
      v29 = v123 + 408;
      if ((v124 + 1) >= *(v122 + 16))
      {
        goto LABEL_89;
      }
    }

    v10 = v113;
  }

  else
  {

    v127 = MEMORY[0x277D84F90];
  }

  v43 = *(v14 + 16);
  v44 = MEMORY[0x277D84F90];
  if (v43)
  {
    v45 = 0;
    v123 = v43 - 1;
    v124 = v14 + 32;
LABEL_32:
    v46 = (v124 + 408 * v45);
    v47 = v45;
    while (v47 < *(v14 + 16))
    {
      memcpy(v133, v46, 0x198uLL);
      v48 = LOBYTE(v133[2]);
      if (LOBYTE(v133[2]) && LOBYTE(v133[2]) != 1)
      {
        sub_24A3E5290(v133, v132);
LABEL_43:

LABEL_44:
        v51 = swift_isUniquelyReferenced_nonNull_native();
        v130[0] = v44;
        if ((v51 & 1) == 0)
        {
          sub_24A3DBCA8(0, *(v44 + 16) + 1, 1);
          v44 = v130[0];
        }

        v53 = *(v44 + 16);
        v52 = *(v44 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_24A3DBCA8((v52 > 1), v53 + 1, 1);
          v44 = v130[0];
        }

        v45 = v47 + 1;
        *(v44 + 16) = v53 + 1;
        result = memcpy((v44 + 408 * v53 + 32), v133, 0x198uLL);
        if (v123 != v47)
        {
          goto LABEL_32;
        }

        goto LABEL_49;
      }

      v49 = sub_24A4AC270();
      sub_24A3E5290(v133, v132);

      if (v49)
      {
        goto LABEL_44;
      }

      if (v48)
      {
        goto LABEL_43;
      }

      v50 = sub_24A4AC270();

      if (v50)
      {
        goto LABEL_44;
      }

      ++v47;
      result = sub_24A3E52EC(v133);
      v46 += 408;
      if (v43 == v47)
      {
        goto LABEL_49;
      }
    }

    goto LABEL_93;
  }

LABEL_49:
  v54 = *(v44 + 16);
  if (v54)
  {
    v130[0] = MEMORY[0x277D84F90];

    v121 = v44;
    result = sub_24A3DBC64(0, v54, 0);
    v55 = v121;
    if (*(v121 + 16))
    {
      v56 = 0;
      v57 = v130[0];
      v120 = v111 + 56;
      *&v119 = v54 - 1;
      v58 = 32;
      v118 = xmmword_24A4B4E10;
      v113 = xmmword_24A4B5B50;
      v59 = v126;
      v60 = (v111 + 56);
      while (1)
      {
        v123 = v56;
        v124 = v57;
        v122 = v58;
        memcpy(v133, (v55 + v58), 0x198uLL);
        v61 = v133[0];
        v62 = v133[1];
        sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
        v63 = swift_allocObject();
        *(v63 + 16) = v118;
        *(v63 + 32) = v61;
        *(v63 + 40) = v62;
        v64 = v59[10];
        swift_bridgeObjectRetain_n();
        sub_24A3E5290(v133, v132);
        sub_24A4AAAC0();
        v65 = *v60;
        v66 = v129;
        (*v60)(&v10[v64], 0, 1, v129);
        v67 = v59[11];
        sub_24A4AAAC0();
        v65(&v10[v67], 0, 1, v66);
        v65(&v10[v59[12]], 1, 1, v66);
        v57 = v124;
        v10[v59[16]] = 2;
        *v10 = v61;
        *(v10 + 1) = v62;
        swift_bridgeObjectRetain_n();
        sub_24A3E52EC(v133);
        *(v10 + 2) = v61;
        *(v10 + 3) = v62;
        *(v10 + 4) = &unk_285D835F8;
        *(v10 + 5) = v63;
        *(v10 + 6) = v61;
        *(v10 + 7) = v62;
        *(v10 + 4) = v113;
        v10[v59[13]] = 1;
        v10[v59[14]] = 0;
        v10[v59[15]] = 0;
        *&v10[v59[17]] = 0;
        v130[0] = v57;
        v69 = *(v57 + 16);
        v68 = *(v57 + 24);
        if (v69 >= v68 >> 1)
        {
          sub_24A3DBC64(v68 > 1, v69 + 1, 1);
          v57 = v130[0];
        }

        *(v57 + 16) = v69 + 1;
        result = sub_24A3E539C(v10, v57 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v69, type metadata accessor for FMFIntermediateFriend);
        v14 = v128;
        if (v119 == v123)
        {
          break;
        }

        v56 = v123 + 1;
        v55 = v121;
        v58 = v122 + 408;
        if ((v123 + 1) >= *(v121 + 16))
        {
          goto LABEL_90;
        }
      }

      goto LABEL_59;
    }

LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v57 = MEMORY[0x277D84F90];
LABEL_59:
  v70 = *(v14 + 16);
  v71 = MEMORY[0x277D84F90];
  if (!v70)
  {
    v99 = MEMORY[0x277D84F90];
LABEL_88:
    v106 = v112;
    v107 = v112[4];
    v108 = v112[5];
    v110 = v112[6];
    v109 = v112[7];
    v112[4] = v127;
    v106[5] = v57;
    v106[6] = v71;
    v106[7] = v99;
  }

  v124 = v57;
  v131 = MEMORY[0x277D84F90];

  result = sub_24A3B57CC(0, v70, 0);
  if (*(v14 + 16))
  {
    v72 = 0;
    v73 = (v14 + 32);
    v71 = v131;
    v125 = v70 - 1;
    v126 = (v111 + 8);
    while (1)
    {
      memcpy(v133, v73, 0x198uLL);
      v74 = *&v133[3];
      v75 = *&v133[4];
      v76 = v133[11];
      v77 = v133[12];
      if (LOBYTE(v133[6]))
      {
        v78 = 0.0;
      }

      else
      {
        v78 = *&v133[5];
      }

      if (LOBYTE(v133[8]))
      {
        v79 = 0.0;
      }

      else
      {
        v79 = *&v133[7];
      }

      if (LOBYTE(v133[10]))
      {
        v80 = 0.0;
      }

      else
      {
        v80 = *&v133[9];
      }

      v81 = objc_allocWithZone(MEMORY[0x277CE41F8]);
      sub_24A3E5290(v133, v132);
      sub_24A3E5340(&v133[13], v132);
      v82 = v116;
      sub_24A4AAAC0();
      v83 = sub_24A4AAA60();
      (*v126)(v82, v129);
      v84 = [v81 initWithCoordinate:v83 altitude:v74 horizontalAccuracy:v75 verticalAccuracy:v78 timestamp:{v79, v80}];

      if (v77)
      {
        swift_bridgeObjectRetain_n();
        v85 = sub_24A4AC0C0();

        if (v85 >= 5)
        {
          v86 = 259;
        }

        else
        {
          v86 = 3;
        }
      }

      else
      {
        v76 = 0;
        v86 = 0;
      }

      v87 = v133[0];
      v88 = v133[1];
      memcpy(v130, &v133[13], sizeof(v130));
      nullsub_1(v130);
      memcpy(v132, v130, 0x130uLL);
      v132[38] = v84;
      LOBYTE(v132[39]) = 0;
      v132[40] = v76;
      v132[41] = v77;
      LOWORD(v132[42]) = v86;
      v132[43] = 0;
      LOBYTE(v132[44]) = 0;
      nullsub_1(v132);
      v89 = v117;
      *(v117 + 3) = 0;
      v89[32] = 1;
      v90 = v115;
      v91 = v115[8];
      v92 = sub_24A4AAB20();
      v93 = &v89[v91];
      v94 = v89;
      (*(*(v92 - 8) + 56))(v93, 1, 1, v92);

      sub_24A3E52EC(v133);
      *v89 = v87;
      *(v89 + 1) = v88;
      v89[16] = 0;
      memcpy(&v89[v90[11]], v132, 0x161uLL);
      v89[33] = 0;
      v89[v90[9]] = 0;
      v89[v90[10]] = 0;
      v131 = v71;
      v96 = *(v71 + 16);
      v95 = *(v71 + 24);
      if (v96 >= v95 >> 1)
      {
        sub_24A3B57CC(v95 > 1, v96 + 1, 1);
        v94 = v117;
        v71 = v131;
      }

      *(v71 + 16) = v96 + 1;
      result = sub_24A3E539C(v94, v71 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v96, type metadata accessor for FMFLocation);
      v97 = v128;
      if (v125 == v72)
      {
        break;
      }

      ++v72;
      v73 += 408;
      if (v72 >= *(v128 + 16))
      {
        goto LABEL_91;
      }
    }

    v98 = *(v97 + 16);
    v99 = MEMORY[0x277D84F90];
    if (v98)
    {
      v133[0] = MEMORY[0x277D84F90];
      sub_24A3BCBC4(0, v98, 0);
      v99 = v133[0];
      v100 = (v97 + 40);
      do
      {
        v102 = *(v100 - 1);
        v101 = *v100;
        v133[0] = v99;
        v104 = *(v99 + 16);
        v103 = *(v99 + 24);

        if (v104 >= v103 >> 1)
        {
          sub_24A3BCBC4((v103 > 1), v104 + 1, 1);
          v99 = v133[0];
        }

        *(v99 + 16) = v104 + 1;
        v105 = v99 + 24 * v104;
        *(v105 + 32) = v102;
        *(v105 + 40) = v101;
        *(v105 + 48) = 0;
        v100 += 51;
        --v98;
      }

      while (v98);
    }

    v57 = v124;
    goto LABEL_88;
  }

LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
  return result;
}

uint64_t sub_24A3E4FC0(uint64_t a1)
{
  v2 = v1;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A4AB630();
  sub_24A378E18(v4, qword_27EF4E260);
  v5 = sub_24A4AB600();
  v6 = sub_24A4ABCE0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24A376000, v5, v6, "FMFDemoDataSource: Recalculating state for demo content.", v7, 2u);
    MEMORY[0x24C219130](v7, -1, -1);
  }

  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];

  v12 = sub_24A4104A4(v8, v9, v10, v11, a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v2[4];
  v20 = v2[5];
  v22 = v2[6];
  v21 = v2[7];
  v2[4] = v12;
  v2[5] = v14;
  v2[6] = v16;
  v2[7] = v18;
}

uint64_t sub_24A3E5160()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t sub_24A3E51F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24A3E5240(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_24A3E539C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

FMFCore::FMFAlertType_optional __swiftcall FMFAlertType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A4AC0C0();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t FMFAlertType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x454D45564153;
  v3 = 0xD000000000000015;
  v4 = 0x496B726F7774656ELL;
  if (v1 != 3)
  {
    v4 = 0x696C616974696E69;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x5441434552504544;
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

uint64_t sub_24A3E5520()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A3E561C()
{
  *v0;
  *v0;
  *v0;
  sub_24A4AB8F0();
}

uint64_t sub_24A3E5704()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

void sub_24A3E5808(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x454D45564153;
  v5 = 0x800000024A4AE230;
  v6 = 0xD000000000000015;
  v7 = 0xEC00000065757373;
  v8 = 0x496B726F7774656ELL;
  if (v2 != 3)
  {
    v8 = 0x696C616974696E69;
    v7 = 0xEE006E6F6974617ALL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x5441434552504544;
    v3 = 0xEA00000000004445;
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

uint64_t sub_24A3E58D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC7FMFCore8FMFAlert_alertType);
  if (v1 == 5 || !swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v0 + 48);
    v3 = *(v0 + 56);
  }

  else if (v1)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  else
  {
    v5 = [objc_opt_self() sharedInstance];
    v6 = [v5 deviceModelName];

    if (v6)
    {
      sub_24A4AB850();
    }

    v2 = sub_24A457618(0xD000000000000017, 0x800000024A4AFE20);
    swift_unknownObjectRelease();
  }

  return v2;
}

uint64_t sub_24A3E59F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC7FMFCore8FMFAlert_alertType);
  if (v1 == 5 || !swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v0 + 64);
    v3 = *(v0 + 72);
  }

  else
  {
    v5 = v1;
    v2 = sub_24A43B188(&v5);
    swift_unknownObjectRelease();
  }

  return v2;
}

uint64_t sub_24A3E5A80()
{
  v1 = *(v0 + OBJC_IVAR____TtC7FMFCore8FMFAlert_alertType);
  if (v1 == 5 || !swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v0 + 80);
    v3 = *(v0 + 88);
  }

  else if (v1)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  else
  {
    type metadata accessor for FMLocalize();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    v2 = sub_24A4AA800();

    swift_unknownObjectRelease();
  }

  return v2;
}

uint64_t sub_24A3E5B84()
{
  v1 = *(v0 + OBJC_IVAR____TtC7FMFCore8FMFAlert_alertType);
  if (v1 == 5 || !swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v0 + 96);
    v3 = *(v0 + 104);
  }

  else if (v1)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  else
  {
    type metadata accessor for FMLocalize();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    v2 = sub_24A4AA800();

    swift_unknownObjectRelease();
  }

  return v2;
}

uint64_t sub_24A3E5C88()
{
  v1 = OBJC_IVAR____TtC7FMFCore8FMFAlert_alertType;
  v2 = *(v0 + OBJC_IVAR____TtC7FMFCore8FMFAlert_alertType);
  if (v2 == 5)
  {
    goto LABEL_2;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v0 + v1);
    if (v6 != 5 && swift_unknownObjectWeakLoadStrong())
    {
      if (v6)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v10 = [objc_opt_self() sharedInstance];
        v11 = [v10 deviceModelName];

        if (v11)
        {
          sub_24A4AB850();
        }

        sub_24A457618(0xD000000000000017, 0x800000024A4AFE20);
        swift_unknownObjectRelease();
      }

      goto LABEL_3;
    }

LABEL_2:
    if (!v0[7])
    {
LABEL_11:
      v4 = 0;
      return v4 & 1;
    }

LABEL_3:
    v3 = *(v0 + v1);
    if (v3 != 5 && swift_unknownObjectWeakLoadStrong())
    {
      if (v3)
      {
        swift_unknownObjectRelease();
LABEL_18:
        v4 = 1;
        return v4 & 1;
      }

      type metadata accessor for FMLocalize();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v8 = [objc_opt_self() bundleForClass_];
      sub_24A4AA800();

      swift_unknownObjectRelease();
LABEL_17:

      goto LABEL_18;
    }

    if (v0[11])
    {
      goto LABEL_18;
    }

    sub_24A3E5B84();
    if (v5)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v12 = v2;
  v4 = sub_24A43E34C(&v12, v0[4], v0[5]);
  swift_unknownObjectRelease();
  return v4 & 1;
}

uint64_t sub_24A3E5EF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A3E78EC();
  *a2 = result;
  return result;
}

void sub_24A3E5F20(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x64497472656C61;
  v5 = 0xEF4C52556E6F7474;
  v6 = 0x75426C65636E6163;
  if (v2 != 6)
  {
    v6 = 0x7079547472656C61;
    v5 = 0xE900000000000065;
  }

  v7 = 0xEB000000004C5255;
  v8 = 0x6E6F747475426B6FLL;
  if (v2 != 4)
  {
    v8 = 0xD000000000000011;
    v7 = 0x800000024A4AE2A0;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x6567617373656DLL;
  if (v2 != 2)
  {
    v10 = 0x6E6F747475426B6FLL;
    v9 = 0xED0000656C746954;
  }

  if (*v1)
  {
    v4 = 0x656C746974;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_24A3E6044()
{
  v1 = *v0;
  v2 = 0x64497472656C61;
  v3 = 0x75426C65636E6163;
  if (v1 != 6)
  {
    v3 = 0x7079547472656C61;
  }

  v4 = 0x6E6F747475426B6FLL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6567617373656DLL;
  if (v1 != 2)
  {
    v5 = 0x6E6F747475426B6FLL;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24A3E6164@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A3E78EC();
  *a1 = result;
  return result;
}

uint64_t sub_24A3E6198(uint64_t a1)
{
  v2 = sub_24A3E73B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A3E61D4(uint64_t a1)
{
  v2 = sub_24A3E73B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMFAlert.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  FMFAlert.init(from:)(a1);
  return v5;
}

void *FMFAlert.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_24A3C9CEC(&qword_27EF3F440, &qword_24A4B5BF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - v7;
  v9 = sub_24A3C9CEC(&qword_27EF3F688, &qword_24A4B5BF8);
  v27 = *(v9 - 8);
  v10 = *(v27 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  v1[3] = 0;
  swift_unknownObjectWeakInit();
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v13 = sub_24A4AB630();
  sub_24A378E18(v13, qword_27EF4E260);
  v14 = sub_24A4AB600();
  v15 = sub_24A4ABCE0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_24A376000, v14, v15, "FMAlert: initialized with coder", v16, 2u);
    MEMORY[0x24C219130](v16, -1, -1);
  }

  v17 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A3E73B8();
  sub_24A4AC3C0();
  if (v2)
  {
    sub_24A3C8470((v3 + 2));
    type metadata accessor for FMFAlert();
    v18 = *(*v3 + 48);
    v19 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v36 = 0;
    v3[4] = sub_24A4AC120();
    v3[5] = v20;
    v35 = 1;
    v3[6] = sub_24A4AC120();
    v3[7] = v21;
    v34 = 2;
    v3[8] = sub_24A4AC120();
    v3[9] = v22;
    v33 = 3;
    v3[10] = sub_24A4AC120();
    v3[11] = v23;
    v32 = 5;
    v3[12] = sub_24A4AC120();
    v3[13] = v24;
    v31 = 4;
    sub_24A4AC120();
    sub_24A4AA9C0();

    sub_24A3996FC(v8, v3 + OBJC_IVAR____TtC7FMFCore8FMFAlert_okButtonURL);
    v30 = 6;
    sub_24A4AC120();
    sub_24A4AA9C0();

    sub_24A3996FC(v8, v3 + OBJC_IVAR____TtC7FMFCore8FMFAlert_cancelButtonURL);
    v29 = 7;
    v25._countAndFlagsBits = sub_24A4AC120();
    FMFAlertType.init(rawValue:)(v25);
    (*(v27 + 8))(v12, v9);
    *(v3 + OBJC_IVAR____TtC7FMFCore8FMFAlert_alertType) = v28;
  }

  sub_24A37EEE0(a1);
  return v3;
}

void *FMFAlert.__allocating_init(alertId:title:message:okButtonLabel:okButtonURL:cancelButtonLabel:cancelButtonURL:alertType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13)
{
  v20 = *(v13 + 48);
  v21 = *(v13 + 52);
  v22 = swift_allocObject();
  v23 = *a13;
  v22[3] = 0;
  swift_unknownObjectWeakInit();
  v22[4] = a1;
  v22[5] = a2;
  v22[6] = a3;
  v22[7] = a4;
  v22[8] = a5;
  v22[9] = a6;
  v22[10] = a7;
  v22[11] = a8;
  v22[12] = a10;
  v22[13] = a11;
  sub_24A3996FC(a9, v22 + OBJC_IVAR____TtC7FMFCore8FMFAlert_okButtonURL);
  sub_24A3996FC(a12, v22 + OBJC_IVAR____TtC7FMFCore8FMFAlert_cancelButtonURL);
  *(v22 + OBJC_IVAR____TtC7FMFCore8FMFAlert_alertType) = v23;
  return v22;
}

void *FMFAlert.init(alertId:title:message:okButtonLabel:okButtonURL:cancelButtonLabel:cancelButtonURL:alertType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13)
{
  v23 = *a13;
  v13[3] = 0;
  swift_unknownObjectWeakInit();
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = a5;
  v13[9] = a6;
  v13[10] = a7;
  v13[11] = a8;
  v13[12] = a10;
  v13[13] = a11;
  sub_24A3996FC(a9, v13 + OBJC_IVAR____TtC7FMFCore8FMFAlert_okButtonURL);
  sub_24A3996FC(a12, v13 + OBJC_IVAR____TtC7FMFCore8FMFAlert_cancelButtonURL);
  *(v13 + OBJC_IVAR____TtC7FMFCore8FMFAlert_alertType) = v23;
  return v13;
}

uint64_t sub_24A3E698C(void (*a1)(_BYTE *))
{
  v3 = sub_24A3C9CEC(&qword_27EF3F440, &qword_24A4B5BF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15[-v5];
  v7 = sub_24A4AA9D0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v1 + OBJC_IVAR____TtC7FMFCore8FMFAlert_alertType);
  if (v12 == 5 || !swift_unknownObjectWeakLoadStrong() || (v16 = v12, v13 = sub_24A43B354(&v16), result = swift_unknownObjectRelease(), (v13 & 1) == 0))
  {
    sub_24A39990C(v1 + OBJC_IVAR____TtC7FMFCore8FMFAlert_okButtonURL, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      return sub_24A3D9248(v6);
    }

    else
    {
      (*(v8 + 32))(v11, v6, v7);
      a1(v11);
      return (*(v8 + 8))(v11, v7);
    }
  }

  return result;
}

uint64_t sub_24A3E6B78(void (*a1)(char *))
{
  v3 = sub_24A3C9CEC(&qword_27EF3F440, &qword_24A4B5BF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = sub_24A4AA9D0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC7FMFCore8FMFAlert_alertType) == 5 || !swift_unknownObjectWeakLoadStrong())
  {
    sub_24A39990C(v1 + OBJC_IVAR____TtC7FMFCore8FMFAlert_cancelButtonURL, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      return sub_24A3D9248(v6);
    }

    else
    {
      (*(v8 + 32))(v11, v6, v7);
      a1(v11);
      return (*(v8 + 8))(v11, v7);
    }
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_24A3E6D58()
{
  v1 = v0;
  v2 = sub_24A3C9CEC(&qword_27EF3F440, &qword_24A4B5BF0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v45 - v7;
  v47[0] = 0;
  v47[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v47[0] = 60;
  v47[1] = 0xE100000000000000;
  v9 = *v0;
  v10 = sub_24A4AC420();
  MEMORY[0x24C217D50](v10);

  MEMORY[0x24C217D50](0x3A656C746974203ALL, 0xE900000000000020);
  if (v0[7])
  {
    v11 = v0[6];
    v12 = v0[7];
  }

  else
  {
    v12 = 0xE300000000000000;
    v11 = 7104878;
  }

  MEMORY[0x24C217D50](v11, v12);

  MEMORY[0x24C217D50](0x6567617373656D20, 0xE90000000000003ALL);
  if (v0[9])
  {
    v13 = v0[8];
    v14 = v0[9];
  }

  else
  {
    v14 = 0xE300000000000000;
    v13 = 7104878;
  }

  MEMORY[0x24C217D50](v13, v14);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v16 = v47[0];
  v15 = v47[1];
  v47[0] = 0;
  v47[1] = 0xE000000000000000;
  sub_24A4ABF50();

  strcpy(v47, "okButtonLabel:");
  HIBYTE(v47[1]) = -18;
  if (v0[11])
  {
    v17 = v0[10];
    v18 = v0[11];
  }

  else
  {
    v18 = 0xE300000000000000;
    v17 = 7104878;
  }

  MEMORY[0x24C217D50](v17, v18);

  MEMORY[0x24C217D50](0xD000000000000014, 0x800000024A4AFE80);
  v19 = v0[13];
  v46 = v5;
  if (v19)
  {
    v20 = v0[12];
    v21 = v19;
  }

  else
  {
    v21 = 0xE300000000000000;
    v20 = 7104878;
  }

  MEMORY[0x24C217D50](v20, v21);

  MEMORY[0x24C217D50](8236, 0xE200000000000000);
  v22 = v47[0];
  v23 = v47[1];
  v47[0] = v16;
  v47[1] = v15;

  MEMORY[0x24C217D50](v22, v23);

  v24 = v47[0];
  v25 = v47[1];
  v47[0] = 0;
  v47[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v47[0] = 0xD000000000000011;
  v47[1] = 0x800000024A4AFEA0;
  sub_24A39990C(v0 + OBJC_IVAR____TtC7FMFCore8FMFAlert_cancelButtonURL, v8);
  v26 = sub_24A4AA9D0();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  if (v28(v8, 1, v26) == 1)
  {
    sub_24A3D9248(v8);
    v29 = 0xE300000000000000;
    v30 = 7104878;
  }

  else
  {
    v31 = sub_24A4AA960();
    v29 = v32;
    (*(v27 + 8))(v8, v26);
    v30 = v31;
  }

  MEMORY[0x24C217D50](v30, v29);

  MEMORY[0x24C217D50](8236, 0xE200000000000000);
  v33 = v47[0];
  v34 = v47[1];
  v47[0] = v24;
  v47[1] = v25;

  MEMORY[0x24C217D50](v33, v34);

  v36 = v47[0];
  v35 = v47[1];
  v47[0] = 0;
  v47[1] = 0xE000000000000000;
  sub_24A4ABF50();

  strcpy(v47, "okButtonURL: ");
  HIWORD(v47[1]) = -4864;
  v37 = v46;
  sub_24A39990C(v1 + OBJC_IVAR____TtC7FMFCore8FMFAlert_okButtonURL, v46);
  if (v28(v37, 1, v26) == 1)
  {
    sub_24A3D9248(v37);
    v38 = 0xE300000000000000;
    v39 = 7104878;
  }

  else
  {
    v40 = sub_24A4AA960();
    v38 = v41;
    (*(v27 + 8))(v37, v26);
    v39 = v40;
  }

  MEMORY[0x24C217D50](v39, v38);

  MEMORY[0x24C217D50](62, 0xE100000000000000);
  v42 = v47[0];
  v43 = v47[1];
  v47[0] = v36;
  v47[1] = v35;

  MEMORY[0x24C217D50](v42, v43);

  return v47[0];
}

void *FMFAlert.deinit()
{
  sub_24A3C8470((v0 + 2));
  v1 = v0[5];

  v2 = v0[7];

  v3 = v0[9];

  v4 = v0[11];

  v5 = v0[13];

  sub_24A3D9248(v0 + OBJC_IVAR____TtC7FMFCore8FMFAlert_okButtonURL);
  sub_24A3D9248(v0 + OBJC_IVAR____TtC7FMFCore8FMFAlert_cancelButtonURL);
  return v0;
}

uint64_t FMFAlert.__deallocating_deinit()
{
  FMFAlert.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *sub_24A3E7338@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for FMFAlert();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = FMFAlert.init(from:)(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

unint64_t sub_24A3E73B8()
{
  result = qword_27EF3F690;
  if (!qword_27EF3F690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F690);
  }

  return result;
}

unint64_t sub_24A3E7410()
{
  result = qword_27EF3F6A8;
  if (!qword_27EF3F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F6A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMFLocationAlertAddressType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FMFLocationAlertAddressType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24A3E77E8()
{
  result = qword_27EF3F6C8;
  if (!qword_27EF3F6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F6C8);
  }

  return result;
}

unint64_t sub_24A3E7840()
{
  result = qword_27EF3F6D0;
  if (!qword_27EF3F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F6D0);
  }

  return result;
}

unint64_t sub_24A3E7898()
{
  result = qword_27EF3F6D8;
  if (!qword_27EF3F6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F6D8);
  }

  return result;
}

uint64_t sub_24A3E78EC()
{
  v0 = sub_24A4AC0C0();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t static FMFDemoContent.load(from:)()
{
  result = sub_24A4AA9E0();
  if (!v0)
  {
    v3 = v2;
    v4 = result;
    if (qword_27EF3EBA0 != -1)
    {
      swift_once();
    }

    sub_24A3D9304();
    sub_24A4AA740();
    return sub_24A386E10(v4, v3);
  }

  return result;
}

uint64_t sub_24A3E79F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E69776F6C6C6F66;
  v4 = 0xE900000000000067;
  if (v2 != 1)
  {
    v3 = 0x7463657269646962;
    v4 = 0xED00006C616E6F69;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7265776F6C6C6F66;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x6E69776F6C6C6F66;
  v8 = 0xE900000000000067;
  if (*a2 != 1)
  {
    v7 = 0x7463657269646962;
    v8 = 0xED00006C616E6F69;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7265776F6C6C6F66;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A4AC270();
  }

  return v11 & 1;
}

uint64_t sub_24A3E7B18()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A3E7BCC()
{
  *v0;
  *v0;
  sub_24A4AB8F0();
}

uint64_t sub_24A3E7C6C()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A3E7D1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A3E9388();
  *a2 = result;
  return result;
}

void sub_24A3E7D4C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE900000000000067;
  v5 = 0x6E69776F6C6C6F66;
  if (v2 != 1)
  {
    v5 = 0x7463657269646962;
    v4 = 0xED00006C616E6F69;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7265776F6C6C6F66;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24A3E7E6C(void *a1)
{
  v3 = sub_24A3C9CEC(&qword_27EF3F740, &qword_24A4B6208);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = v1[1];
  v16 = *v1;
  v15 = *(v1 + 16);
  v9 = *(v1 + 5);
  v10 = *(v1 + 9);
  v28 = *(v1 + 7);
  v29 = v10;
  v30 = *(v1 + 11);
  v26 = *(v1 + 3);
  v27 = v9;
  memcpy(v31, v1 + 13, 0x130uLL);
  v11 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A3E8FB4();
  sub_24A4AC3D0();
  v18[0] = 0;
  v12 = v32;
  sub_24A4AC1B0();
  if (!v12)
  {
    v18[0] = v15;
    v17[0] = 1;
    sub_24A3E9008();
    sub_24A4AC1F0();
    v23 = v28;
    v24 = v29;
    v25 = v30;
    v21 = v26;
    v22 = v27;
    v20 = 2;
    sub_24A3E905C(&v26, v18);
    sub_24A3E90B8();
    sub_24A4AC1F0();
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v19[0] = v21;
    v19[1] = v22;
    sub_24A3E910C(v19);
    memcpy(v18, v31, sizeof(v18));
    v17[311] = 3;
    sub_24A3E5340(v31, v17);
    sub_24A3D72BC();
    sub_24A4AC1F0();
    memcpy(v17, v18, 0x130uLL);
    sub_24A3D785C(v17);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_24A3E8168@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v38 = sub_24A3C9CEC(&qword_27EF3F760, &unk_24A4B6210);
  v5 = *(v38 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v38);
  v8 = &v18 - v7;
  v9 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A3E8FB4();
  sub_24A4AC3C0();
  if (v2)
  {
    return sub_24A37EEE0(a1);
  }

  v10 = v5;
  LOBYTE(v22[0]) = 0;
  v11 = sub_24A4AC120();
  v13 = v12;
  v20 = v11;
  LOBYTE(v21[0]) = 1;
  sub_24A3E9160();
  sub_24A4AC160();
  v14 = LOBYTE(v22[0]);
  v30[311] = 2;
  sub_24A3E91B4();
  sub_24A4AC160();
  v19 = v14;
  *&v37[23] = v32;
  *&v37[39] = v33;
  *&v37[55] = v34;
  *&v37[71] = v35;
  *&v37[7] = v31;
  v29[311] = 3;
  sub_24A3D7088();
  sub_24A4AC160();
  (*(v10 + 8))(v8, v38);
  memcpy(v36, v30, sizeof(v36));
  *(&v21[6] + 1) = *&v37[32];
  *(&v21[8] + 1) = *&v37[48];
  *(&v21[10] + 1) = *&v37[64];
  *(&v21[2] + 1) = *v37;
  v15 = v20;
  v21[0] = v20;
  v21[1] = v13;
  v16 = v19;
  LOBYTE(v21[2]) = v19;
  v21[12] = *&v37[79];
  *(&v21[4] + 1) = *&v37[16];
  memcpy(&v21[13], v30, 0x130uLL);
  memcpy(a2, v21, 0x198uLL);
  sub_24A3E5290(v21, v22);
  sub_24A37EEE0(a1);
  v26 = *&v37[32];
  v27 = *&v37[48];
  *v28 = *&v37[64];
  v24 = *v37;
  v22[0] = v15;
  v22[1] = v13;
  v23 = v16;
  *&v28[15] = *&v37[79];
  v25 = *&v37[16];
  memcpy(v29, v36, 0x130uLL);
  return sub_24A3E52EC(v22);
}

unint64_t sub_24A3E8554()
{
  v1 = 0x656C646E6168;
  v2 = 0x6E6F697461636F6CLL;
  if (*v0 != 2)
  {
    v2 = 0x73736572646461;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_24A3E85D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A3E93D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A3E8604(uint64_t a1)
{
  v2 = sub_24A3E8FB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A3E8640(uint64_t a1)
{
  v2 = sub_24A3E8FB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A3E86AC()
{
  v0 = sub_24A4AA760();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_24A4AA750();
  qword_27EF3F6E0 = result;
  return result;
}

uint64_t sub_24A3E8700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C706F6570 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24A4AC270();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24A3E8790(uint64_t a1)
{
  v2 = sub_24A3E89AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A3E87CC(uint64_t a1)
{
  v2 = sub_24A3E89AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMFDemoContent.encode(to:)(void *a1)
{
  v3 = sub_24A3C9CEC(&qword_27EF3F6E8, &qword_24A4B5F20);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A3E89AC();

  sub_24A4AC3D0();
  v11[1] = v8;
  sub_24A3C9CEC(&qword_27EF3F6F8, &qword_24A4B5F28);
  sub_24A3E8C04(&qword_27EF3F700, sub_24A3E8A00);
  sub_24A4AC1F0();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_24A3E89AC()
{
  result = qword_27EF3F6F0;
  if (!qword_27EF3F6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F6F0);
  }

  return result;
}

unint64_t sub_24A3E8A00()
{
  result = qword_27EF3F708;
  if (!qword_27EF3F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F708);
  }

  return result;
}

uint64_t FMFDemoContent.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_24A3C9CEC(&qword_27EF3F710, &qword_24A4B5F30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A3E89AC();
  sub_24A4AC3C0();
  if (!v2)
  {
    sub_24A3C9CEC(&qword_27EF3F6F8, &qword_24A4B5F28);
    sub_24A3E8C04(&qword_27EF3F718, sub_24A3E8C7C);
    sub_24A4AC160();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return sub_24A37EEE0(a1);
}

uint64_t sub_24A3E8C04(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_24A3CBC9C(&qword_27EF3F6F8, &qword_24A4B5F28);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A3E8C7C()
{
  result = qword_27EF3F720;
  if (!qword_27EF3F720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F720);
  }

  return result;
}

uint64_t sub_24A3E8D00(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_24A3E8D48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24A3E8D9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 408))
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

uint64_t sub_24A3E8DE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 408) = 1;
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

    *(result + 408) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24A3E8EB0()
{
  result = qword_27EF3F728;
  if (!qword_27EF3F728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F728);
  }

  return result;
}

unint64_t sub_24A3E8F08()
{
  result = qword_27EF3F730;
  if (!qword_27EF3F730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F730);
  }

  return result;
}

unint64_t sub_24A3E8F60()
{
  result = qword_27EF3F738;
  if (!qword_27EF3F738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F738);
  }

  return result;
}

unint64_t sub_24A3E8FB4()
{
  result = qword_27EF3F748;
  if (!qword_27EF3F748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F748);
  }

  return result;
}

unint64_t sub_24A3E9008()
{
  result = qword_27EF3F750;
  if (!qword_27EF3F750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F750);
  }

  return result;
}

unint64_t sub_24A3E90B8()
{
  result = qword_27EF3F758;
  if (!qword_27EF3F758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F758);
  }

  return result;
}

unint64_t sub_24A3E9160()
{
  result = qword_27EF3F768;
  if (!qword_27EF3F768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F768);
  }

  return result;
}

unint64_t sub_24A3E91B4()
{
  result = qword_27EF3F770;
  if (!qword_27EF3F770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F770);
  }

  return result;
}

unint64_t sub_24A3E922C()
{
  result = qword_27EF3F778;
  if (!qword_27EF3F778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F778);
  }

  return result;
}

unint64_t sub_24A3E9284()
{
  result = qword_27EF3F780;
  if (!qword_27EF3F780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F780);
  }

  return result;
}

unint64_t sub_24A3E92DC()
{
  result = qword_27EF3F788;
  if (!qword_27EF3F788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F788);
  }

  return result;
}

unint64_t sub_24A3E9334()
{
  result = qword_27EF3F790;
  if (!qword_27EF3F790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F790);
  }

  return result;
}

uint64_t sub_24A3E9388()
{
  v0 = sub_24A4AC0C0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24A3E93D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
  if (v4 || (sub_24A4AC270() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024A4AE480 == a2 || (sub_24A4AC270() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (sub_24A4AC270() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24A4AC270();

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

unint64_t sub_24A3E953C()
{
  result = qword_27EF3F798;
  if (!qword_27EF3F798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F798);
  }

  return result;
}

uint64_t FMFActionURLInfo.firstName.getter()
{
  v1 = (v0 + *(type metadata accessor for FMFActionURLInfo() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for FMFActionURLInfo()
{
  result = qword_27EF3F7A8;
  if (!qword_27EF3F7A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FMFActionURLInfo.lastName.getter()
{
  v1 = (v0 + *(type metadata accessor for FMFActionURLInfo() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FMFActionURLInfo.email.getter()
{
  v1 = (v0 + *(type metadata accessor for FMFActionURLInfo() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FMFActionURLInfo.currentUserId.getter()
{
  v1 = (v0 + *(type metadata accessor for FMFActionURLInfo() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

void sub_24A3E97C4()
{
  sub_24A3A72D8(319, &qword_27EF3F6C0, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    sub_24A3A732C();
    if (v1 <= 0x3F)
    {
      sub_24A3A72D8(319, &qword_27EF3F3A8, MEMORY[0x277CC9578]);
      if (v2 <= 0x3F)
      {
        sub_24A3A72D8(319, &qword_27EF3F7B8, type metadata accessor for FMFLocationAlert);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for FMFSavePrefsRequest()
{
  result = qword_27EF3F7D8;
  if (!qword_27EF3F7D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A3E9984()
{
  v1 = v0;
  v37 = *MEMORY[0x277D85DE8];
  v2 = (v0 + qword_27EF3F7D0);
  v3 = *(v0 + qword_27EF3F7D0 + 8);
  if (v3)
  {
    v4 = *v2;
    v36 = MEMORY[0x277D837D0];
    *&v34 = v4;
    *(&v34 + 1) = v3;
    swift_beginAccess();

    sub_24A3A6CEC(&v34, 0x656369766544656DLL, 0xEA00000000006449);
    swift_endAccess();
  }

  else
  {
    v5 = sub_24A4AA790();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    sub_24A4AA780();
    v8 = *(v1 + qword_27EF3F7C0 + 8);
    v9 = *(v1 + qword_27EF3F7C0 + 16);
    v10 = *(v1 + qword_27EF3F7C0 + 24);
    *&v34 = *(v1 + qword_27EF3F7C0);
    *(&v34 + 1) = v8;
    v35 = v9;
    v36 = v10;
    sub_24A388B00(v34, v8, v9);
    sub_24A3C9CEC(&qword_27EF3F7E8, &qword_24A4BC5A0);
    sub_24A3EA014();
    v12 = sub_24A4AA770();
    v14 = v13;
    sub_24A37F110(v34, *(&v34 + 1), v35);

    v15 = objc_opt_self();
    v16 = sub_24A4AAA00();
    v31[0] = 0;
    v17 = [v15 JSONObjectWithData:v16 options:0 error:v31];

    v18 = v31[0];
    if (v17)
    {
      sub_24A4ABE70();
      swift_unknownObjectRelease();
      sub_24A3A60B4(&v32, &v34);
      sub_24A37EE84(&v34, &v32);
      v19 = sub_24A3C9CEC(&qword_27EF3F800, &unk_24A4B6530);
      if (swift_dynamicCast())
      {
        v20 = v31[0];
        v30 = v31[0];
        v21 = *(v1 + qword_27EF3F7C8);
        if (v21 == 2 || (v21 & 1) == 0)
        {
          sub_24A4A4198(0x61636F4C65646968, 0xEC0000006E6F6974, &v32);
          sub_24A37EF2C(&v32, &qword_27EF3F808, &unk_24A4BA6D0);
          sub_24A4A4198(0x657469726F766166, 0xE900000000000073, &v32);
          sub_24A37EF2C(&v32, &qword_27EF3F808, &unk_24A4BA6D0);
          *(&v33 + 1) = v19;
          *&v32 = v30;
          swift_beginAccess();

          sub_24A3A6CEC(&v32, 0x7366657270, 0xE500000000000000);
          v32 = 0u;
          v33 = 0u;
          v27 = 0x656369766544656DLL;
          v28 = 0xEA00000000006449;
        }

        else
        {
          sub_24A3C9CEC(&qword_27EF3F810, &qword_24A4B6540);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_24A4B4E10;
          strcpy((inited + 32), "hideLocation");
          *(inited + 45) = 0;
          *(inited + 46) = -5120;
          if (v20[2] && (v23 = sub_24A39B2C8(0x61636F4C65646968, 0xEC0000006E6F6974), (v24 & 1) != 0))
          {
            sub_24A37EE84(v20[7] + 32 * v23, inited + 48);
          }

          else
          {
            *(inited + 48) = 0u;
            *(inited + 64) = 0u;
          }

          v29 = sub_24A431168(inited);
          swift_setDeallocating();
          sub_24A37EF2C(inited + 32, &qword_27EF3F818, &qword_24A4B6548);
          *(&v33 + 1) = sub_24A3C9CEC(&qword_27EF3F820, &unk_24A4B6550);
          *&v32 = v29;
          swift_beginAccess();
          v27 = 0x7366657270;
          v28 = 0xE500000000000000;
        }

        sub_24A3A6CEC(&v32, v27, v28);
        swift_endAccess();
        sub_24A386E10(v12, v14);
        sub_24A37EEE0(&v34);
      }

      else
      {
        sub_24A37EEE0(&v34);
        sub_24A386E10(v12, v14);
      }
    }

    else
    {
      v25 = v18;
      v26 = sub_24A4AA950();

      swift_willThrow();
      sub_24A386E10(v12, v14);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24A3E9E70()
{
  v1 = *(v0 + qword_27EF3F7C0 + 24);
  sub_24A37F110(*(v0 + qword_27EF3F7C0), *(v0 + qword_27EF3F7C0 + 8), *(v0 + qword_27EF3F7C0 + 16));
  v2 = *(v0 + qword_27EF3F7D0 + 8);
}

uint64_t sub_24A3E9EBC()
{
  v0 = sub_24A4AAC20();
  v1 = *(v0 + qword_27EF3FC00);

  v2 = *(v0 + qword_27EF3FC08);

  v3 = *(v0 + qword_27EF3FC10);

  v4 = *(v0 + qword_27EF3FC18);

  v5 = *(v0 + qword_27EF3FC20);

  v6 = qword_27EF4E0D8;
  v7 = sub_24A4AAAD0();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(v0 + qword_27EF3F7C0 + 24);
  sub_24A37F110(*(v0 + qword_27EF3F7C0), *(v0 + qword_27EF3F7C0 + 8), *(v0 + qword_27EF3F7C0 + 16));
  v9 = *(v0 + qword_27EF3F7D0 + 8);

  return v0;
}

uint64_t sub_24A3E9FB8()
{
  v0 = *sub_24A3E9EBC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_24A3EA014()
{
  result = qword_27EF3F7F0;
  if (!qword_27EF3F7F0)
  {
    sub_24A3CBC9C(&qword_27EF3F7E8, &qword_24A4BC5A0);
    sub_24A38CDB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F7F0);
  }

  return result;
}

uint64_t sub_24A3EA098()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

FMFCore::FMFLocationSource_optional __swiftcall FMFLocationSource.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t FMFLocation.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FMFLocation.motionActivityState.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t FMFLocation.motionActivityState.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t FMFLocation.poiIdentifier.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for FMFLocation() + 32);

  return sub_24A3EA218(a1, v3);
}

uint64_t sub_24A3EA218(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F468, &qword_24A4B9F30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t FMFLocation.isLivePending.setter(char a1)
{
  result = type metadata accessor for FMFLocation();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t FMFLocation.isLivePaused.setter(char a1)
{
  result = type metadata accessor for FMFLocation();
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t FMFLocation.isInaccurate.getter()
{
  v1 = type metadata accessor for FMFLocation();
  memcpy(__dst, (v0 + *(v1 + 44)), 0x161uLL);
  v2 = sub_24A3B9C24(__dst) == 1;
  return (v2 | __dst[352]) & 1;
}

uint64_t FMFLocation.displayLabel.getter()
{
  v1 = type metadata accessor for FMFLocation();
  memcpy(__dst, (v0 + *(v1 + 44)), 0x161uLL);
  v2 = sub_24A3B9C24(__dst);
  result = 0;
  if (v2 != 1)
  {
    memcpy(v4, __dst, sizeof(v4));
    return sub_24A3D67B0();
  }

  return result;
}

BOOL FMFLocation.isOld.getter()
{
  v1 = sub_24A4AAAD0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMFLocation();
  memcpy(v13, (v0 + *(v6 + 44)), 0x161uLL);
  if (sub_24A3B9C24(v13) == 1)
  {
    return 0;
  }

  v8 = v13[38];
  v9 = [v8 timestamp];
  sub_24A4AAAA0();

  sub_24A4AAA70();
  v11 = v10;

  (*(v2 + 8))(v5, v1);
  return v11 < -300.0;
}

uint64_t sub_24A3EA664()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A3EA71C()
{
  *v0;
  *v0;
  *v0;
  sub_24A4AB8F0();
}

uint64_t sub_24A3EA7C0()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A3EA874@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A3EE62C();
  *a2 = result;
  return result;
}

void sub_24A3EA8A4(unint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0x800000024A4AE2F0;
  v5 = 0xD000000000000010;
  if (*v1 != 2)
  {
    v5 = 0x6E6F697461636F6CLL;
    v4 = 0xEE00656372756F53;
  }

  if (*v1)
  {
    v3 = 0x6E6F697461636F6CLL;
    v2 = 0xE800000000000000;
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

uint64_t sub_24A3EA918@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A3EE62C();
  *a1 = result;
  return result;
}

uint64_t sub_24A3EA940(uint64_t a1)
{
  v2 = sub_24A3B2B60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A3EA97C@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W3>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FMFLocation();
  v7 = v6[8];
  v8 = sub_24A4AAB20();
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  v9 = *(a1 + 8);
  *a3 = *a1;
  *(a3 + 8) = v9;
  v10 = v6[11];
  memcpy(__dst, (a1 + v10), 0x161uLL);
  memcpy((a3 + v6[11]), (a1 + v10), 0x161uLL);
  v11 = v6[8];

  sub_24A37B740(__dst, v19, &qword_27EF3F840, &qword_24A4B6598);
  sub_24A3EE6D0(a1 + v11, a3 + v7);
  *(a3 + 33) = *(a1 + 33);
  v12 = *(a1 + 32);
  *(a3 + 24) = *(a1 + 24);
  *(a3 + 32) = v12;
  *(a3 + 16) = *(a1 + 16);
  if (a2 == 1)
  {
  }

  else
  {
    v13 = sub_24A4AC270();

    v14 = 0;
    if ((v13 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v14 = *(a1 + 33) != 3;
LABEL_5:
  *(a3 + v6[9]) = v14;
  if (a2 < 2u)
  {
    v15 = sub_24A4AC270();

    if ((v15 & 1) == 0)
    {
      result = sub_24A3EE16C(a1, type metadata accessor for FMFLocation);
      v18 = 0;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v16 = *(a1 + 33);
  result = sub_24A3EE16C(a1, type metadata accessor for FMFLocation);
  v18 = v16 != 3;
LABEL_10:
  *(a3 + v6[10]) = v18;
  return result;
}

void *FMFLocation.init(from:address:label:labels:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a3;
  v10 = a3[1];
  v11 = *(a3 + 8);
  *(a5 + 24) = 0;
  *(a5 + 32) = 1;
  v12 = type metadata accessor for FMFLocation();
  v13 = v12[8];
  v14 = sub_24A4AAB20();
  (*(*(v14 - 8) + 56))(a5 + v13, 1, 1, v14);
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  memcpy(__dst, a2, 0x130uLL);
  __dst[38] = a1;
  LOBYTE(__dst[39]) = 0;
  __dst[40] = v9;
  __dst[41] = v10;
  LOWORD(__dst[42]) = v11;
  __dst[43] = a4;
  LOBYTE(__dst[44]) = 0;
  nullsub_1(__dst);
  result = memcpy((a5 + v12[11]), __dst, 0x161uLL);
  *(a5 + 33) = 0;
  *(a5 + v12[9]) = 0;
  *(a5 + v12[10]) = 0;
  return result;
}

uint64_t FMFLocation.init(from:shiftedLocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FMFLocation();
  v7 = v6[8];
  v8 = sub_24A4AAB20();
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  v9 = *(a1 + 8);
  *a3 = *a1;
  *(a3 + 8) = v9;
  *(a3 + 16) = *(a1 + 16);
  *(a3 + 33) = *(a1 + 33);
  v10 = v6[11];
  memcpy(__dst, (a1 + v10), 0x161uLL);
  if (sub_24A3B9C24(__dst) == 1)
  {
    sub_24A3BAFB0(__src);
  }

  else
  {
    sub_24A37B740(__dst, v23, &unk_27EF404E0, &unk_24A4B5230);
    memcpy(__src, __dst, sizeof(__src));
  }

  memcpy(v23, (a1 + v10), 0x161uLL);
  if (sub_24A3B9C24(v23) == 1)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v11 = v23[40];
    v12 = v23[41];
    v13 = v23[42];
  }

  memcpy(v22, (a1 + v10), 0x161uLL);
  if (sub_24A3B9C24(v22) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = v22[43];
  }

  memcpy(v21, (a1 + v10), 0x161uLL);
  v15 = sub_24A3B9C24(v21) != 1;
  v16 = v15 & v21[352];
  memcpy(v20, __src, 0x130uLL);
  v20[38] = a2;
  LOBYTE(v20[39]) = 0;
  v20[40] = v11;
  v20[41] = v12;
  LOWORD(v20[42]) = v13;
  v20[43] = v14;
  LOBYTE(v20[44]) = v16;
  nullsub_1(v20);
  memcpy((a3 + v6[11]), v20, 0x161uLL);
  v17 = *(a1 + 32);
  *(a3 + 24) = *(a1 + 24);
  *(a3 + 32) = v17;
  *(a3 + v6[9]) = *(a1 + v6[9]);
  v18 = *(a1 + v6[10]);

  result = sub_24A3EE16C(a1, type metadata accessor for FMFLocation);
  *(a3 + v6[10]) = v18;
  return result;
}

uint64_t sub_24A3EAF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v186 = a2;
  v187 = sub_24A4AB4E0();
  v174 = *(v187 - 8);
  v5 = *(v174 + 64);
  MEMORY[0x28223BE20](v187);
  v173 = &v149 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A4AAD80();
  v171 = *(v7 - 8);
  v172 = v7;
  v8 = *(v171 + 64);
  MEMORY[0x28223BE20](v7);
  v170 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A4AAE10();
  v168 = *(v10 - 8);
  v169 = v10;
  v11 = *(v168 + 64);
  MEMORY[0x28223BE20](v10);
  v167 = &v149 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24A3C9CEC(&qword_27EF3F488, &unk_24A4B6920);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v183 = &v149 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v166 = &v149 - v17;
  MEMORY[0x28223BE20](v18);
  v165 = &v149 - v19;
  MEMORY[0x28223BE20](v20);
  v163 = &v149 - v21;
  MEMORY[0x28223BE20](v22);
  v182 = &v149 - v23;
  MEMORY[0x28223BE20](v24);
  v181 = &v149 - v25;
  MEMORY[0x28223BE20](v26);
  v180 = &v149 - v27;
  MEMORY[0x28223BE20](v28);
  v179 = &v149 - v29;
  MEMORY[0x28223BE20](v30);
  v178 = &v149 - v31;
  MEMORY[0x28223BE20](v32);
  v177 = &v149 - v33;
  MEMORY[0x28223BE20](v34);
  v176 = &v149 - v35;
  MEMORY[0x28223BE20](v36);
  v175 = &v149 - v37;
  MEMORY[0x28223BE20](v38);
  v40 = &v149 - v39;
  v159 = sub_24A4AB410();
  v41 = *(v159 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v159);
  v44 = &v149 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_24A4AAAD0();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  v49 = &v149 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for FMFLocation();
  v50 = v184[8];
  v51 = sub_24A4AAB20();
  v52 = *(*(v51 - 8) + 56);
  v185 = a3;
  v52(a3 + v50, 1, 1, v51);
  sub_24A4AB4B0();
  v54 = v53;
  sub_24A4AB4C0();
  v56 = v55;
  sub_24A4AB4A0();
  v58 = v57;
  sub_24A4AB440();
  v60 = v59;
  sub_24A4AB430();
  v62 = v61;
  sub_24A4AB470();
  v64 = v63;
  sub_24A4AB4D0();
  sub_24A4AAA80();
  v65 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v66 = sub_24A4AAA60();
  v164 = [v65 initWithCoordinate:v66 altitude:v54 horizontalAccuracy:v56 verticalAccuracy:v58 course:v60 courseAccuracy:v62 speed:0.0 speedAccuracy:0.0 timestamp:{v64, 0}];

  (*(v46 + 8))(v49, v45);
  v67 = sub_24A4AB480();
  if (!v67[2])
  {

    goto LABEL_8;
  }

  v68 = v67[4];
  v69 = v67[5];

  if (!v69)
  {
LABEL_8:
    v161 = 0;
    v162 = 0;
    v160 = 0;
    goto LABEL_9;
  }

  v161 = v69;
  v162 = v68;
  v70._countAndFlagsBits = v68;
  v70._object = v69;
  FMFDefaultLabel.init(rawValue:)(v70);
  if (LOBYTE(v190[0]) == 5)
  {
    v71 = 259;
  }

  else
  {
    v71 = 3;
  }

  v160 = v71;
LABEL_9:
  v73 = v165;
  v72 = v166;
  v74 = sub_24A4AB210();
  v75 = v185;
  *v185 = v74;
  v75[1] = v76;
  v77 = v159;
  (*(v41 + 104))(v44, *MEMORY[0x277D094B8], v159);
  v78 = sub_24A4AB460();
  v165 = v79;
  v166 = v78;
  (*(v41 + 8))(v44, v77);
  sub_24A4AB490();
  v80 = sub_24A4AB5D0();
  v81 = *(v80 - 8);
  v82 = *(v81 + 48);
  if (v82(v40, 1, v80) == 1)
  {
    sub_24A37EF2C(v40, &qword_27EF3F488, &unk_24A4B6920);
    v159 = 0;
  }

  else
  {
    v159 = sub_24A4AB570();
    (*(v81 + 8))(v40, v80);
  }

  sub_24A4AB490();
  v83 = v175;
  v84 = v82(v175, 1, v80);
  v85 = v163;
  if (v84 == 1)
  {
    sub_24A37EF2C(v83, &qword_27EF3F488, &unk_24A4B6920);
    v157 = 0;
    v158 = 0;
  }

  else
  {
    v86 = sub_24A4AB580();
    v157 = v87;
    v158 = v86;
    (*(v81 + 8))(v83, v80);
  }

  sub_24A4AB490();
  v88 = v176;
  if (v82(v176, 1, v80) == 1)
  {
    sub_24A37EF2C(v88, &qword_27EF3F488, &unk_24A4B6920);
    v175 = 0;
    v156 = 0;
  }

  else
  {
    v175 = sub_24A4AB500();
    v156 = v89;
    (*(v81 + 8))(v88, v80);
  }

  sub_24A4AB490();
  v90 = v177;
  if (v82(v177, 1, v80) == 1)
  {
    sub_24A37EF2C(v90, &qword_27EF3F488, &unk_24A4B6920);
    v176 = 0;
    v155 = 0;
  }

  else
  {
    v176 = sub_24A4AB550();
    v155 = v91;
    (*(v81 + 8))(v90, v80);
  }

  sub_24A4AB490();
  v92 = v178;
  if (v82(v178, 1, v80) == 1)
  {
    sub_24A37EF2C(v92, &qword_27EF3F488, &unk_24A4B6920);
    v177 = 0;
    v154 = 0;
  }

  else
  {
    v177 = sub_24A4AB5A0();
    v154 = v93;
    (*(v81 + 8))(v92, v80);
  }

  sub_24A4AB490();
  v94 = v179;
  if (v82(v179, 1, v80) == 1)
  {
    sub_24A37EF2C(v94, &qword_27EF3F488, &unk_24A4B6920);
    v178 = 0;
    v153 = 0;
  }

  else
  {
    v178 = sub_24A4AB5B0();
    v153 = v95;
    (*(v81 + 8))(v94, v80);
  }

  sub_24A4AB490();
  v96 = v180;
  if (v82(v180, 1, v80) == 1)
  {
    sub_24A37EF2C(v96, &qword_27EF3F488, &unk_24A4B6920);
    v179 = 0;
    v152 = 0;
  }

  else
  {
    v179 = sub_24A4AB560();
    v152 = v97;
    (*(v81 + 8))(v96, v80);
  }

  sub_24A4AB490();
  v98 = v181;
  if (v82(v181, 1, v80) == 1)
  {
    sub_24A37EF2C(v98, &qword_27EF3F488, &unk_24A4B6920);
    v180 = 0;
    v151 = 0;
  }

  else
  {
    v180 = sub_24A4AB530();
    v151 = v99;
    (*(v81 + 8))(v98, v80);
  }

  sub_24A4AB490();
  v100 = v182;
  if (v82(v182, 1, v80) == 1)
  {
    sub_24A37EF2C(v100, &qword_27EF3F488, &unk_24A4B6920);
    v181 = 0;
    v150 = 0;
  }

  else
  {
    v181 = sub_24A4AB550();
    v150 = v101;
    (*(v81 + 8))(v100, v80);
  }

  sub_24A4AB490();
  if (v82(v85, 1, v80) == 1)
  {
    sub_24A37EF2C(v85, &qword_27EF3F488, &unk_24A4B6920);
    v182 = 0;
    v149 = 0;
  }

  else
  {
    v182 = sub_24A4AB520();
    v149 = v102;
    (*(v81 + 8))(v85, v80);
  }

  sub_24A4AB490();
  if (v82(v73, 1, v80) == 1)
  {
    sub_24A37EF2C(v73, &qword_27EF3F488, &unk_24A4B6920);
    v163 = 0;
    v103 = 0;
  }

  else
  {
    v163 = sub_24A4AB540();
    v103 = v104;
    (*(v81 + 8))(v73, v80);
  }

  sub_24A4AB490();
  if (v82(v72, 1, v80) == 1)
  {
    sub_24A37EF2C(v72, &qword_27EF3F488, &unk_24A4B6920);
    v105 = 0;
    v106 = 0;
  }

  else
  {
    v107 = sub_24A4AB510();
    v108 = v72;
    v105 = v107;
    v106 = v109;
    (*(v81 + 8))(v108, v80);
  }

  sub_24A4AB490();
  v110 = v183;
  if (v82(v183, 1, v80) == 1)
  {
    sub_24A37EF2C(v110, &qword_27EF3F488, &unk_24A4B6920);
    v111 = 0;
    v112 = 0;
  }

  else
  {
    v113 = v110;
    v111 = sub_24A4AB4F0();
    v112 = v114;
    (*(v81 + 8))(v113, v80);
  }

  v115 = v187;
  v116 = v167;
  v189[0] = v159;
  v189[1] = v158;
  v189[2] = v157;
  v189[3] = 0;
  v189[4] = 0;
  v189[5] = v175;
  v189[6] = v156;
  v189[7] = v176;
  v189[8] = v155;
  v189[9] = v177;
  v189[10] = v154;
  v189[11] = v178;
  v189[12] = v153;
  memset(&v189[13], 0, 32);
  v189[17] = v179;
  v189[18] = v152;
  v189[19] = 0;
  v189[20] = 0;
  v189[21] = MEMORY[0x277D84F90];
  v189[22] = 0;
  v189[23] = 0;
  v189[24] = v166;
  v189[25] = v165;
  v189[26] = v180;
  v189[27] = v151;
  v189[28] = v181;
  v189[29] = v150;
  v189[30] = v182;
  v189[31] = v149;
  v189[32] = v163;
  v189[33] = v103;
  v189[34] = v105;
  v189[35] = v106;
  v189[36] = v111;
  v189[37] = v112;
  nullsub_1(v189);
  memcpy(v190, v189, 0x130uLL);
  v117 = v164;
  v190[38] = v164;
  LOBYTE(v190[39]) = 0;
  v190[40] = v162;
  v190[41] = v161;
  LOWORD(v190[42]) = v160;
  v190[43] = 0;
  LOBYTE(v190[44]) = 0;
  nullsub_1(v190);
  v118 = v185;
  memcpy(v185 + v184[11], v190, 0x161uLL);
  *(v118 + 16) = 0;
  v183 = v117;
  sub_24A4AB450();
  v120 = v168;
  v119 = v169;
  v121 = (*(v168 + 88))(v116, v169);
  v122 = 0;
  v123 = v173;
  v125 = v170;
  v124 = v171;
  if (v121 != *MEMORY[0x277D090F8])
  {
    if (v121 == *MEMORY[0x277D090E0])
    {
      v122 = 1;
    }

    else if (v121 == *MEMORY[0x277D09100])
    {
      v122 = 2;
    }

    else if (v121 == *MEMORY[0x277D090F0])
    {
      v122 = 3;
    }

    else if (v121 == *MEMORY[0x277D090E8])
    {
      v122 = 4;
    }

    else if (v121 == *MEMORY[0x277D090D8])
    {
      v122 = 5;
    }

    else
    {
      (*(v120 + 8))(v116, v119);
      v122 = 0;
    }
  }

  v118[3] = v122;
  *(v118 + 32) = 0;
  sub_24A4AB420();
  v126 = v172;
  v127 = (*(v124 + 88))(v125, v172);
  v128 = 0;
  if (v127 != *MEMORY[0x277D09088])
  {
    if (v127 == *MEMORY[0x277D09078])
    {
LABEL_62:
      v128 = 1;
      goto LABEL_67;
    }

    if (v127 == *MEMORY[0x277D09080])
    {
      v128 = 2;
    }

    else
    {
      if (v127 != *MEMORY[0x277D09090])
      {
        (*(v124 + 8))(v125, v126);
        goto LABEL_62;
      }

      v128 = 3;
    }
  }

LABEL_67:
  *(v118 + 33) = v128;
  v129 = v184;
  *(v118 + v184[9]) = 0;
  *(v118 + v129[10]) = 0;
  v130 = FMFLocation.debugDescription.getter();
  v132 = v131;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v133 = sub_24A4AB630();
  sub_24A378E18(v133, qword_27EF4E260);
  v134 = v174;
  (*(v174 + 16))(v123, a1, v115);

  v135 = sub_24A4AB600();
  v136 = sub_24A4ABCE0();

  if (os_log_type_enabled(v135, v136))
  {
    v137 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    v188 = v138;
    *v137 = 136315394;
    v139 = sub_24A37BD58(v130, v132, &v188);

    *(v137 + 4) = v139;
    *(v137 + 12) = 2080;
    v140 = sub_24A4AB480();
    if (v140[2])
    {
      v142 = v140[4];
      v141 = v140[5];
    }

    else
    {
      v141 = 0xE300000000000000;
      v142 = 7104878;
    }

    v146 = *(v174 + 8);
    v146(v173, v187);
    v147 = sub_24A37BD58(v142, v141, &v188);

    *(v137 + 14) = v147;
    _os_log_impl(&dword_24A376000, v135, v136, "👀 FMFLocation: created from FMLLocation %s with secure label: '%s'", v137, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v138, -1, -1);
    MEMORY[0x24C219130](v137, -1, -1);

    v148 = sub_24A4AB220();
    (*(*(v148 - 8) + 8))(v186, v148);
    return (v146)(a1, v187);
  }

  else
  {

    v143 = sub_24A4AB220();
    (*(*(v143 - 8) + 8))(v186, v143);
    v144 = *(v134 + 8);
    v144(a1, v115);
    return (v144)(v123, v115);
  }
}

void sub_24A3EC26C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24A4AAAD0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v62[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for FMFLocation();
  v9 = *(v61 + 32);
  v10 = sub_24A4AAB20();
  (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  [a1 latitude];
  v12 = v11;
  [a1 longitude];
  v14 = v13;
  [a1 altitude];
  v16 = v15;
  [a1 horizontalAccuracy];
  v18 = v17;
  [a1 verticalAccuracy];
  v20 = v19;
  [a1 course];
  v22 = v21;
  [a1 speed];
  v24 = v23;
  v25 = [a1 timestamp];
  sub_24A4AAAA0();

  v26 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v27 = sub_24A4AAA60();
  v28 = [v26 initWithCoordinate:v27 altitude:v12 horizontalAccuracy:v14 verticalAccuracy:v16 course:v18 courseAccuracy:v20 speed:v22 speedAccuracy:0.0 timestamp:{v24, 0}];

  (*(v5 + 8))(v8, v4);
  v29 = [a1 locationLabel];
  if (!v29)
  {
    v31 = 0;
    v33 = 0;
LABEL_8:
    v35 = 0;
    goto LABEL_9;
  }

  v30 = v29;
  v31 = sub_24A4AB850();
  v33 = v32;

  if (!v33)
  {
    v31 = 0;
    goto LABEL_8;
  }

  v34._countAndFlagsBits = v31;
  v34._object = v33;
  FMFDefaultLabel.init(rawValue:)(v34);
  if (LOBYTE(v64[0]) == 5)
  {
    v35 = 259;
  }

  else
  {
    v35 = 3;
  }

LABEL_9:
  v36 = [a1 findMyId];
  v37 = sub_24A4AB850();
  v39 = v38;

  *a2 = v37;
  *(a2 + 8) = v39;
  sub_24A3BAFB0(v63);
  memcpy(v64, v63, 0x130uLL);
  v64[38] = v28;
  LOBYTE(v64[39]) = 0;
  v64[40] = v31;
  v64[41] = v33;
  LOWORD(v64[42]) = v35;
  v64[43] = 0;
  LOBYTE(v64[44]) = 0;
  nullsub_1(v64);
  v40 = v61;
  memcpy((a2 + *(v61 + 44)), v64, 0x161uLL);
  *(a2 + 16) = 0;
  v41 = v28;
  *(a2 + 24) = [a1 motionActivityState];
  *(a2 + 32) = 0;
  v42 = sub_24A4AA700();
  v62[3] = v42;
  v62[4] = sub_24A3EE678();
  v43 = sub_24A38D3BC(v62);
  (*(*(v42 - 8) + 104))(v43, *MEMORY[0x277D089E0], v42);
  LOBYTE(v42) = sub_24A4AA6C0();
  sub_24A37EEE0(v62);
  if ((v42 & 1) != 0 && [a1 publishReason] == 8)
  {
    v44 = 3;
  }

  else if ([a1 publishReason] == 7)
  {
    v44 = 2;
  }

  else
  {
    v44 = 1;
  }

  *(a2 + 33) = v44;
  *(a2 + *(v40 + 36)) = 0;
  *(a2 + *(v40 + 40)) = 0;
  v45 = FMFLocation.debugDescription.getter();
  v47 = v46;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v48 = sub_24A4AB630();
  sub_24A378E18(v48, qword_27EF4E260);

  v49 = a1;
  v50 = sub_24A4AB600();
  v51 = sub_24A4ABCE0();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v62[0] = v53;
    *v52 = 136315394;
    v54 = sub_24A37BD58(v45, v47, v62);

    *(v52 + 4) = v54;
    *(v52 + 12) = 2080;
    v55 = [v49 locationLabel];
    if (v55)
    {
      v56 = v55;
      v57 = sub_24A4AB850();
      v59 = v58;
    }

    else
    {
      v59 = 0xE300000000000000;
      v57 = 7104878;
    }

    v60 = sub_24A37BD58(v57, v59, v62);

    *(v52 + 14) = v60;
    _os_log_impl(&dword_24A376000, v50, v51, "👀 FMFLocation: created %s with secure label: '%s'", v52, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v53, -1, -1);
    MEMORY[0x24C219130](v52, -1, -1);
  }

  else
  {
  }
}

void FMFLocation.init(from:location:locationSource:locationLabel:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a4;
  v14 = type metadata accessor for FMFLocation();
  v15 = v14[8];
  v16 = sub_24A4AAB20();
  (*(*(v16 - 8) + 56))(a7 + v15, 1, 1, v16);
  if (a6)
  {

    v17._countAndFlagsBits = a5;
    v17._object = a6;
    FMFDefaultLabel.init(rawValue:)(v17);
    if (LOBYTE(__dst[0]) == 5)
    {
      v18 = 259;
    }

    else
    {
      v18 = 3;
    }
  }

  else
  {
    a5 = 0;
    v18 = 0;
  }

  *a7 = a1;
  *(a7 + 8) = a2;
  sub_24A3BAFB0(__src);
  memcpy(__dst, __src, 0x130uLL);
  __dst[38] = a3;
  LOBYTE(__dst[39]) = 0;
  __dst[40] = a5;
  __dst[41] = a6;
  LOWORD(__dst[42]) = v18;
  __dst[43] = 0;
  LOBYTE(__dst[44]) = 0;
  nullsub_1(__dst);
  memcpy((a7 + v14[11]), __dst, 0x161uLL);
  *(a7 + 16) = 0;
  *(a7 + 24) = 0;
  *(a7 + 32) = 1;
  *(a7 + 33) = v13;
  *(a7 + v14[9]) = 0;
  *(a7 + v14[10]) = 0;
  v19 = a3;
  v20 = FMFLocation.debugDescription.getter();
  v22 = v21;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v23 = sub_24A4AB630();
  sub_24A378E18(v23, qword_27EF4E260);

  v24 = sub_24A4AB600();
  v25 = sub_24A4ABCE0();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = v27;
    *v26 = 136315138;
    v28 = sub_24A37BD58(v20, v22, &v29);

    *(v26 + 4) = v28;
    _os_log_impl(&dword_24A376000, v24, v25, "👀 FMFLocation: created %s'", v26, 0xCu);
    sub_24A37EEE0(v27);
    MEMORY[0x24C219130](v27, -1, -1);
    MEMORY[0x24C219130](v26, -1, -1);
  }

  else
  {
  }
}

uint64_t FMFLocation.init(from:updatedLocation:address:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for FMFLocation();
  v9 = *(*(v8 - 1) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v49 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v48 - v12;
  memcpy(v59, a3, 0x130uLL);
  *(v13 + 3) = 0;
  v13[32] = 1;
  v14 = v8[8];
  v15 = sub_24A4AAB20();
  (*(*(v15 - 8) + 56))(&v13[v14], 1, 1, v15);
  v16 = *a1;
  v17 = a1[1];
  v51 = a1;
  v18 = *(a2 + 8);
  if (!v17)
  {
    goto LABEL_7;
  }

  if (!v18 || (v16 != *a2 || v17 != v18) && (sub_24A4AC270() & 1) == 0)
  {
    do
    {
      sub_24A4AC050();
      __break(1u);
LABEL_7:
      ;
    }

    while (v18);
  }

  *v13 = v16;
  *(v13 + 1) = v17;
  v13[16] = *(a2 + 16);
  v13[33] = *(a2 + 33);
  v19 = v8[11];
  memcpy(v58, (a2 + v19), 0x161uLL);
  v20 = sub_24A3B9C24(v58);
  v50 = a4;
  if (v20 == 1)
  {

    sub_24A37EF2C(v59, &unk_27EF404E0, &unk_24A4B5230);
    memcpy(v57, (a2 + v19), 0x161uLL);
    memcpy(&v13[v8[11]], (a2 + v19), 0x161uLL);
    sub_24A37B740(v57, v56, &qword_27EF3F840, &qword_24A4B6598);
    goto LABEL_23;
  }

  v21 = v58[38];
  memcpy(v57, (a2 + v19), 0x161uLL);
  if (sub_24A3B9C24(v57) == 1)
  {
    v48 = 0;
    v22 = 0;
    v23 = 0;
  }

  else
  {
    v48 = v57[40];
    v22 = v57[41];
    v23 = v57[42];
  }

  memcpy(v56, (a2 + v19), 0x161uLL);
  if (sub_24A3B9C24(v56) == 1)
  {
    v24 = 0;
  }

  else
  {
    v24 = v56[43];
  }

  memcpy(v55, v59, sizeof(v55));
  if (sub_24A3D77F8(v55) != 1)
  {
    v25 = v59;
LABEL_21:
    memcpy(v54, v25, sizeof(v54));
    goto LABEL_22;
  }

  memcpy(v53, (a2 + v19), 0x161uLL);
  if (sub_24A3B9C24(v53) != 1)
  {
    sub_24A37B740(v53, v52, &unk_27EF404E0, &unk_24A4B5230);
    v25 = v53;
    goto LABEL_21;
  }

  sub_24A3BAFB0(v54);
LABEL_22:
  memcpy(v53, v51 + v8[11], 0x161uLL);
  v26 = sub_24A3B9C24(v53) != 1;
  v27 = v26 & v53[352];
  memcpy(v52, v54, 0x130uLL);
  v52[38] = v21;
  LOBYTE(v52[39]) = 0;
  v52[40] = v48;
  v52[41] = v22;
  LOWORD(v52[42]) = v23;
  v52[43] = v24;
  LOBYTE(v52[44]) = v27;
  nullsub_1(v52);
  memcpy(&v13[v8[11]], v52, 0x161uLL);
  v28 = *(a2 + 32);
  *(v13 + 3) = *(a2 + 24);
  v13[32] = v28;

  v29 = v21;
  a4 = v50;
LABEL_23:
  v13[v8[9]] = *(a2 + v8[9]);
  v13[v8[10]] = *(a2 + v8[10]);
  v30 = FMFLocation.debugDescription.getter();
  v32 = v31;
  v33 = v49;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v34 = sub_24A4AB630();
  sub_24A378E18(v34, qword_27EF4E260);
  sub_24A3EE104(a2, v33, type metadata accessor for FMFLocation);

  v35 = sub_24A4AB600();
  v36 = sub_24A4ABCE0();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = v30;
    v38 = v33;
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v57[0] = v40;
    *v39 = 136315394;
    v41 = sub_24A37BD58(v37, v32, v57);

    *(v39 + 4) = v41;
    *(v39 + 12) = 2080;
    v42 = FMFLocation.debugDescription.getter();
    v44 = v43;
    sub_24A3EE16C(v38, type metadata accessor for FMFLocation);
    v45 = sub_24A37BD58(v42, v44, v57);

    *(v39 + 14) = v45;
    _os_log_impl(&dword_24A376000, v35, v36, "👀 FMFLocation: updated %sfrom %s", v39, 0x16u);
    swift_arrayDestroy();
    v46 = v40;
    a4 = v50;
    MEMORY[0x24C219130](v46, -1, -1);
    MEMORY[0x24C219130](v39, -1, -1);
  }

  else
  {

    sub_24A3EE16C(v33, type metadata accessor for FMFLocation);
  }

  sub_24A3EE16C(v51, type metadata accessor for FMFLocation);
  sub_24A39CA50(v13, a4, type metadata accessor for FMFLocation);
  return sub_24A3EE16C(a2, type metadata accessor for FMFLocation);
}

uint64_t FMFLocation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_24A3C9CEC(&qword_27EF3F848, &unk_24A4B65A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8 - 8];
  v10 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A3B2B60();
  sub_24A4AC3D0();
  v18 = *v3;
  v21 = 0;
  sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
  sub_24A38D258();
  sub_24A4AC1F0();
  if (!v2)
  {
    v11 = *(type metadata accessor for FMFLocation() + 44);
    memcpy(v17, v3 + v11, 0x161uLL);
    memcpy(v16, v3 + v11, sizeof(v16));
    v20 = 1;
    sub_24A37B740(v17, v15, &qword_27EF3F840, &qword_24A4B6598);
    sub_24A3C9CEC(&qword_27EF3F840, &qword_24A4B6598);
    sub_24A3EE02C();
    sub_24A4AC1F0();
    memcpy(v15, v16, 0x161uLL);
    sub_24A37EF2C(v15, &qword_27EF3F840, &qword_24A4B6598);
    v12 = *(v3 + 33);
    v19 = 3;
    sub_24A4AC1E0();
  }

  return (*(v6 + 8))(v9, v5);
}

char *sub_24A3ED900(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_24A3EDA58(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_24A3C9CEC(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_24A3C9CEC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_24A3EDB8C(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A3C9CEC(&qword_27EF3F520, &qword_24A4B5760);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24A3EDCB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A3C9CEC(&qword_27EF3F8C8, &qword_24A4B8C50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_24A3EDDB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A3C9CEC(&qword_27EF3F8D8, &qword_24A4B6948);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_24A3EDEF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A3C9CEC(&qword_27EF3F550, &qword_24A4B6940);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

unint64_t sub_24A3EE02C()
{
  result = qword_27EF3F850;
  if (!qword_27EF3F850)
  {
    sub_24A3CBC9C(&qword_27EF3F840, &qword_24A4B6598);
    sub_24A3EE0B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F850);
  }

  return result;
}

unint64_t sub_24A3EE0B0()
{
  result = qword_27EF3F858;
  if (!qword_27EF3F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F858);
  }

  return result;
}

uint64_t sub_24A3EE104(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A3EE16C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7FMFCore11FMFLocationV2eeoiySbAC_ACtFZ_0(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  v5 = v1[1];
  v6 = *(v3 + 8);
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_21;
    }

    v7 = *v1;
    v8 = *v4 == *v3 && v5 == v6;
    if (!v8 && (sub_24A4AC270() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v6)
  {
    goto LABEL_21;
  }

  v9 = type metadata accessor for FMFLocation();
  v10 = v9[11];
  memcpy(__dst, v4 + v10, 0x161uLL);
  v11 = v9[11];
  memcpy(v23, (v3 + v11), 0x161uLL);
  memcpy(__src, v4 + v10, 0x161uLL);
  memcpy(&__src[360], (v3 + v11), 0x161uLL);
  memcpy(v24, v4 + v10, 0x161uLL);
  if (sub_24A3B9C24(v24) != 1)
  {
    memcpy(v20, v4 + v10, 0x161uLL);
    memcpy(v18, v4 + v10, 0x161uLL);
    memcpy(v19, (v3 + v11), 0x161uLL);
    if (sub_24A3B9C24(v19) == 1)
    {
      memcpy(v17, v4 + v10, 0x161uLL);
      sub_24A37B740(__dst, v16, &qword_27EF3F840, &qword_24A4B6598);
      sub_24A37B740(v23, v16, &qword_27EF3F840, &qword_24A4B6598);
      sub_24A37B740(v20, v16, &qword_27EF3F840, &qword_24A4B6598);
      sub_24A3C36E0(v17);
      goto LABEL_16;
    }

    memcpy(v17, (v3 + v11), 0x161uLL);
    sub_24A37B740(__dst, v16, &qword_27EF3F840, &qword_24A4B6598);
    sub_24A37B740(v23, v16, &qword_27EF3F840, &qword_24A4B6598);
    sub_24A37B740(v20, v16, &qword_27EF3F840, &qword_24A4B6598);
    v13 = sub_24A3D7468(v18, v17);
    memcpy(v15, v17, 0x161uLL);
    sub_24A3C36E0(v15);
    memcpy(v16, v18, 0x161uLL);
    sub_24A3C36E0(v16);
    memcpy(v17, v4 + v10, 0x161uLL);
    sub_24A37EF2C(v17, &qword_27EF3F840, &qword_24A4B6598);
    if (v13)
    {
      goto LABEL_18;
    }

LABEL_21:
    v12 = 0;
    return v12 & 1;
  }

  memcpy(v19, (v3 + v11), 0x161uLL);
  if (sub_24A3B9C24(v19) == 1)
  {
    memcpy(v20, v4 + v10, 0x161uLL);
    sub_24A37B740(__dst, v18, &qword_27EF3F840, &qword_24A4B6598);
    sub_24A37B740(v23, v18, &qword_27EF3F840, &qword_24A4B6598);
    sub_24A37EF2C(v20, &qword_27EF3F840, &qword_24A4B6598);
LABEL_18:
    if (*(v4 + 16) == *(v3 + 16) && *(v4 + 33) == *(v3 + 33) && *(v4 + v9[10]) == *(v3 + v9[10]))
    {
      v12 = *(v4 + v9[9]) ^ *(v3 + v9[9]) ^ 1;
      return v12 & 1;
    }

    goto LABEL_21;
  }

  sub_24A37B740(__dst, v20, &qword_27EF3F840, &qword_24A4B6598);
  sub_24A37B740(v23, v20, &qword_27EF3F840, &qword_24A4B6598);
LABEL_16:
  memcpy(v19, __src, 0x2C9uLL);
  sub_24A37EF2C(v19, &qword_27EF3F8E0, &unk_24A4B6950);
  v12 = 0;
  return v12 & 1;
}

unint64_t sub_24A3EE580()
{
  result = qword_27EF3F860;
  if (!qword_27EF3F860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F860);
  }

  return result;
}

unint64_t sub_24A3EE5D8()
{
  result = qword_27EF3F890;
  if (!qword_27EF3F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F890);
  }

  return result;
}

uint64_t sub_24A3EE62C()
{
  v0 = sub_24A4AC0C0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_24A3EE678()
{
  result = qword_27EF40910;
  if (!qword_27EF40910)
  {
    sub_24A4AA700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40910);
  }

  return result;
}

uint64_t sub_24A3EE6D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F468, &qword_24A4B9F30);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t FMFLocationAlert.location.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28[-v6];
  v8 = sub_24A4AAAD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = CLLocationCoordinate2DMake(v2[2], v2[3]);
  v14 = v2[4];
  v15 = type metadata accessor for FMFLocationAlert();
  sub_24A37B740(v2 + v15[26], v7, &qword_27EF3F460, &unk_24A4B53B0);
  v16 = *(v9 + 48);
  if (v16(v7, 1, v8) == 1)
  {
    sub_24A4AAA40();
    if (v16(v7, 1, v8) != 1)
    {
      sub_24A37EF2C(v7, &qword_27EF3F460, &unk_24A4B53B0);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
  }

  v17 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v18 = sub_24A4AAA60();
  v19 = [v17 initWithCoordinate:v18 altitude:v13.latitude horizontalAccuracy:v13.longitude verticalAccuracy:0.0 course:v14 speed:0.0 timestamp:{0.0, 0.0}];

  (*(v9 + 8))(v12, v8);
  memcpy(v29, v2 + v15[23], 0x130uLL);
  v20 = v2 + v15[20];
  v22 = *v20;
  v21 = *(v20 + 1);
  v23 = *(v20 + 8);
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  v24 = type metadata accessor for FMFLocation();
  v25 = v24[8];
  v26 = sub_24A4AAB20();
  (*(*(v26 - 8) + 56))(a1 + v25, 1, 1, v26);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  memcpy(v33, v29, 0x130uLL);
  v33[38] = v19;
  LOBYTE(v33[39]) = 0;
  *(&v33[39] + 1) = *v32;
  HIDWORD(v33[39]) = *&v32[3];
  v33[40] = v22;
  v33[41] = v21;
  LOWORD(v33[42]) = v23;
  *(&v33[42] + 2) = v30;
  HIWORD(v33[42]) = v31;
  v33[43] = 0;
  LOBYTE(v33[44]) = 0;
  nullsub_1(v33);
  memcpy((a1 + v24[11]), v33, 0x161uLL);
  *(a1 + 33) = 0;
  *(a1 + v24[9]) = 0;
  *(a1 + v24[10]) = 0;
  (*(*(v24 - 1) + 56))(a1, 0, 1, v24);
  sub_24A37B740(v29, v28, &unk_27EF404E0, &unk_24A4B5230);
}

uint64_t FMFLocationAlertTarget.rawValue.getter()
{
  if (*v0)
  {
    result = 0x744F796669746F4ELL;
  }

  else
  {
    result = 0x654D796669746F4ELL;
  }

  *v0;
  return result;
}

uint64_t FMFLocationAlertTriggerType.rawValue.getter()
{
  v1 = 0x7265746E65;
  v2 = 0x74616964656D6D69;
  if (*v0 != 2)
  {
    v2 = 0x656C756465686373;
  }

  if (*v0)
  {
    v1 = 1953069157;
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

uint64_t FMFLocationAlertAcceptanceStatus.rawValue.getter()
{
  v1 = 0x676E69646E6550;
  if (*v0 != 1)
  {
    v1 = 0x6465747065636341;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6564646948;
  }
}

uint64_t FMFLocationAlert.init(locationAlert:location:radius:address:label:triggerType:isOn:repeating:schedule:phoneNumbers:emails:ckRecordName:ckRecordZoneOwnerName:acceptanceStatus:muteEndDate:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, const void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, unsigned __int8 *a8@<X7>, uint64_t a9@<X8>, char a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned __int8 *a19, uint64_t a20)
{
  v111 = a2;
  v112 = a7;
  v104 = a6;
  v109 = a4;
  v110 = a3;
  v113 = a12;
  v24 = a11;
  v25 = a10;
  v26 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v107 = &v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v108 = &v104 - v30;
  v31 = sub_24A3C9CEC(&qword_27EF3F470, &qword_24A4B6960);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v104 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v104 - v36;
  memcpy(v118, a5, sizeof(v118));
  LODWORD(v105) = *a8;
  v38 = *a19;
  v39 = *(a1 + 8);
  *a9 = *a1;
  *(a9 + 8) = v39;
  v114 = a1;
  if (a10 == 2)
  {
    v25 = *(a1 + 42);
  }

  *(a9 + 42) = v25 & 1;
  LODWORD(v106) = v38;
  if (a11 == 2)
  {
    v24 = *(v114 + 43);
  }

  *(a9 + 43) = v24 & 1;
  sub_24A37B740(v113, v34, &qword_27EF3F470, &qword_24A4B6960);
  v40 = type metadata accessor for FMFSchedule();
  v41 = *(v40 - 8);
  v42 = *(v41 + 48);
  if (v42(v34, 1, v40) == 1)
  {
    v43 = type metadata accessor for FMFLocationAlert();
    sub_24A37B740(v114 + *(v43 + 48), v37, &qword_27EF3F470, &qword_24A4B6960);
    v44 = v42(v34, 1, v40);

    if (v44 != 1)
    {
      sub_24A37EF2C(v34, &qword_27EF3F470, &qword_24A4B6960);
    }
  }

  else
  {
    sub_24A3F4460(v34, v37);
    (*(v41 + 56))(v37, 0, 1, v40);
  }

  v45 = a16;
  v47 = type metadata accessor for FMFLocationAlert();
  sub_24A37BE24(v37, a9 + v47[12], &qword_27EF3F470, &qword_24A4B6960);
  v48 = v114;
  *(a9 + 40) = *(v114 + 40);
  v49 = v105;
  if (v105 == 4)
  {
    v49 = *(v48 + 41);
  }

  v50 = a18;
  *(a9 + 41) = v49;
  v52 = v47[13];
  if (!a16)
  {
    a15 = *(v48 + v52);
    v45 = *(v48 + v52 + 8);
  }

  v53 = (a9 + v52);
  *v53 = a15;
  v53[1] = v45;
  v54 = v47[14];
  if (!a18)
  {
    a17 = *(v48 + v54);
    v50 = *(v48 + v54 + 8);
  }

  v55 = a13;
  v56 = (a9 + v54);
  *v56 = a17;
  v56[1] = v50;
  v57 = v47[15];
  v58 = v106;
  v59 = v107;
  if (v106 == 3)
  {
    v58 = *(v48 + v57);
  }

  v60 = a14;
  *(a9 + v57) = v58;
  v61 = v47[16];
  if (!a13)
  {
    v62 = *(v48 + v61);
  }

  *(a9 + v61) = v55;
  v63 = v47[17];
  if (!a14)
  {
    v60 = *(v48 + v63);
  }

  *(a9 + v63) = v60;
  v64 = v47[18];
  v105 = *(v48 + v64);
  v106 = a20;
  *(a9 + v64) = v105;
  v65 = v47[19];
  v66 = *(v48 + v65);
  v67 = *(v48 + v65 + 8);
  v68 = (a9 + v65);
  *v68 = v66;
  v68[1] = v67;
  sub_24A37B740(a20, v59, &qword_27EF3F460, &unk_24A4B53B0);
  v69 = sub_24A4AAAD0();
  v70 = *(v69 - 8);
  v71 = *(v70 + 48);
  if (v71(v59, 1, v69) == 1)
  {
    v72 = v48 + v47[27];
    v73 = v108;
    sub_24A37B740(v72, v108, &qword_27EF3F460, &unk_24A4B53B0);
    v74 = v71(v59, 1, v69);

    if (v74 != 1)
    {
      sub_24A37EF2C(v59, &qword_27EF3F460, &unk_24A4B53B0);
    }
  }

  else
  {
    v73 = v108;
    (*(v70 + 32))(v108, v59, v69);
    (*(v70 + 56))(v73, 0, 1, v69);
  }

  sub_24A37BE24(v73, a9 + v47[27], &qword_27EF3F460, &unk_24A4B53B0);
  v75 = v111;
  if (v111)
  {
    v76 = v111;
    [v76 coordinate];
    *(a9 + 16) = v77;
    [v76 coordinate];
    *(a9 + 24) = v78;
    v79 = v47[26];
    v80 = [v76 timestamp];
    sub_24A4AAAA0();

    (*(v70 + 56))(a9 + v79, 0, 1, v69);
    v81 = v114;
  }

  else
  {
    v81 = v114;
    *(a9 + 16) = *(v114 + 16);
    sub_24A37B740(v81 + v47[26], a9 + v47[26], &qword_27EF3F460, &unk_24A4B53B0);
  }

  v82 = v106;
  v83 = v110;
  if (v109)
  {
    v83 = *(v81 + 32);
  }

  *(a9 + 32) = v83;
  memcpy(v117, v118, sizeof(v117));
  if (sub_24A3D77F8(v117) != 1)
  {
    memcpy((a9 + v47[23]), v118, 0x130uLL);
    memcpy(v116, v117, sizeof(v116));
    v94 = FMFAddress.displayAddress.getter();
    v95 = (a9 + v47[22]);
    *v95 = v94;
    v95[1] = v96;
    v89 = v112;
    if (v112)
    {
      goto LABEL_32;
    }

LABEL_37:

    sub_24A37EF2C(v82, &qword_27EF3F460, &unk_24A4B53B0);
    sub_24A37EF2C(v113, &qword_27EF3F470, &qword_24A4B6960);
    v97 = v47[20];
    v99 = *(v81 + v97);
    v98 = *(v81 + v97 + 8);
    v100 = *(v81 + v97 + 16);
    v101 = a9 + v97;
    *v101 = v99;
    *(v101 + 8) = v98;
    *(v101 + 16) = v100;

    goto LABEL_38;
  }

  v84 = v47[23];
  memcpy(v116, (v81 + v84), sizeof(v116));
  memcpy((a9 + v47[23]), (v81 + v84), 0x130uLL);
  v85 = v47[22];
  v86 = *(v81 + v85);
  v87 = *(v81 + v85 + 8);
  v88 = (a9 + v85);
  *v88 = v86;
  v88[1] = v87;
  sub_24A37B740(v116, &v115, &unk_27EF404E0, &unk_24A4B5230);

  v89 = v112;
  if (!v112)
  {
    goto LABEL_37;
  }

LABEL_32:

  v90 = v104;
  v91._countAndFlagsBits = v104;
  v91._object = v89;
  FMFDefaultLabel.init(rawValue:)(v91);

  sub_24A37EF2C(v82, &qword_27EF3F460, &unk_24A4B53B0);
  sub_24A37EF2C(v113, &qword_27EF3F470, &qword_24A4B6960);
  if (v116[0] == 5)
  {
    v92 = 259;
  }

  else
  {
    v92 = 3;
  }

  v93 = a9 + v47[20];
  *v93 = v90;
  *(v93 + 8) = v89;
  *(v93 + 16) = v92;
LABEL_38:
  *(a9 + v47[21]) = *(v81 + v47[21]);
  *(a9 + v47[24]) = *(v81 + v47[24]);
  v102 = *(v81 + v47[25]);
  result = sub_24A3B593C(v81, type metadata accessor for FMFLocationAlert);
  *(a9 + v47[25]) = v102;
  return result;
}

uint64_t FMFLocationAlert.init(identifier:location:address:addressType:radius:label:locationAlertTarget:triggerType:repeating:schedule:phoneNumbers:emails:followerIds:friendId:ckRecordName:ckRecordZoneOwnerName:acceptanceStatus:muteEndDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, const void *a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, unsigned __int8 *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, uint64_t a23)
{
  v48 = *a5;
  v46 = a6[1];
  v47 = *a6;
  v45 = *(a6 + 8);
  v25 = *a7;
  v26 = *a8;
  v27 = *a22;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 42) = 1;
  *(a9 + 43) = a11;
  v28 = type metadata accessor for FMFLocationAlert();
  sub_24A37B740(a12, a9 + v28[12], &qword_27EF3F470, &qword_24A4B6960);
  *(a9 + 40) = v25;
  *(a9 + 41) = v26;
  v29 = 1;
  v30 = (a9 + v28[13]);
  *v30 = a18;
  v30[1] = a19;
  v31 = (a9 + v28[14]);
  *v31 = a20;
  v31[1] = a21;
  *(a9 + v28[15]) = v27;
  *(a9 + v28[16]) = a13;
  *(a9 + v28[17]) = a14;
  *(a9 + v28[18]) = a15;
  v32 = (a9 + v28[19]);
  *v32 = a16;
  v32[1] = a17;
  [a3 coordinate];
  *(a9 + 16) = v33;
  [a3 coordinate];
  *(a9 + 24) = v34;
  v35 = v28[26];
  v36 = [a3 timestamp];
  sub_24A4AAAA0();

  v37 = sub_24A4AAAD0();
  (*(*(v37 - 8) + 56))(a9 + v35, 0, 1, v37);
  *(a9 + 32) = a10;
  memcpy(__dst, a4, 0x130uLL);
  nullsub_1(__dst);
  memcpy((a9 + v28[23]), __dst, 0x130uLL);
  memcpy(v49, a4, sizeof(v49));
  v38 = FMFAddress.displayAddress.getter();
  v39 = (a9 + v28[22]);
  *v39 = v38;
  v39[1] = v40;
  v41 = a9 + v28[20];
  *v41 = v47;
  *(v41 + 8) = v46;
  *(v41 + 16) = v45;
  *(a9 + v28[21]) = v48;
  sub_24A37B740(a23, a9 + v28[27], &qword_27EF3F460, &unk_24A4B53B0);
  *(a9 + v28[24]) = 1;
  if (v25 != 1)
  {
    v29 = sub_24A4AC270();
  }

  sub_24A37EF2C(a23, &qword_27EF3F460, &unk_24A4B53B0);
  result = sub_24A37EF2C(a12, &qword_27EF3F470, &qword_24A4B6960);
  *(a9 + v28[25]) = v29 & 1;
  return result;
}

uint64_t sub_24A3EF74C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_24A4AAF60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v12 = *(v5 + 16);
  v12(&v26 - v10, a1, v4);
  v13 = (*(v5 + 88))(v11, v4);
  if (v13 == *MEMORY[0x277D09220])
  {
    v14 = 0;
LABEL_17:
    result = (*(v5 + 8))(a1, v4);
    *a2 = v14;
    return result;
  }

  if (v13 == *MEMORY[0x277D09200])
  {
    v14 = 1;
    goto LABEL_17;
  }

  if (v13 == *MEMORY[0x277D091F8])
  {
    v14 = 2;
    goto LABEL_17;
  }

  if (v13 == *MEMORY[0x277D09208])
  {
    v14 = 3;
    goto LABEL_17;
  }

  if (v13 == *MEMORY[0x277D091F0])
  {
    v14 = 4;
    goto LABEL_17;
  }

  if (v13 == *MEMORY[0x277D09218])
  {
    v14 = 5;
    goto LABEL_17;
  }

  if (v13 == *MEMORY[0x277D091E8])
  {
    v14 = 6;
    goto LABEL_17;
  }

  if (v13 == *MEMORY[0x277D09210])
  {
    v14 = 7;
    goto LABEL_17;
  }

  v27 = v5;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v16 = sub_24A4AB630();
  sub_24A378E18(v16, qword_27EF4E260);
  v12(v9, a1, v4);
  v17 = sub_24A4AB600();
  v18 = sub_24A4ABCD0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136315138;
    sub_24A3F5824(&qword_27EF3F9A8, MEMORY[0x277D09228]);
    v21 = sub_24A4AC240();
    v23 = v22;
    (*(v27 + 8))(v9, v4);
    v24 = sub_24A37BD58(v21, v23, &v28);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_24A376000, v17, v18, "Unrecognized source variant %s", v19, 0xCu);
    sub_24A37EEE0(v20);
    MEMORY[0x24C219130](v20, -1, -1);
    MEMORY[0x24C219130](v19, -1, -1);
  }

  else
  {

    (*(v27 + 8))(v9, v4);
  }

  v28 = 0;
  v29 = 0xE000000000000000;
  sub_24A4ABF50();

  v28 = 0xD00000000000001CLL;
  v29 = 0x800000024A4B0150;
  sub_24A3F5824(&qword_27EF3F9A8, MEMORY[0x277D09228]);
  v25 = sub_24A4AC240();
  MEMORY[0x24C217D50](v25);

  result = sub_24A4AC050();
  __break(1u);
  return result;
}

FMFCore::FMFLocationAlertAddressType_optional __swiftcall FMFLocationAlertAddressType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_24A3EFBFC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_24A4AB0B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v12 = *(v5 + 16);
  v12(&v26 - v10, a1, v4);
  v13 = (*(v5 + 88))(v11, v4);
  if (v13 == *MEMORY[0x277D09268])
  {
    v14 = 0;
LABEL_5:
    result = (*(v5 + 8))(a1, v4);
    *a2 = v14;
    return result;
  }

  if (v13 == *MEMORY[0x277D09260])
  {
    v14 = 1;
    goto LABEL_5;
  }

  v27 = v5;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v16 = sub_24A4AB630();
  sub_24A378E18(v16, qword_27EF4E260);
  v12(v9, a1, v4);
  v17 = sub_24A4AB600();
  v18 = sub_24A4ABCD0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136315138;
    sub_24A3F5824(&qword_27EF3F998, MEMORY[0x277D09270]);
    v21 = sub_24A4AC240();
    v23 = v22;
    (*(v27 + 8))(v9, v4);
    v24 = sub_24A37BD58(v21, v23, &v28);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_24A376000, v17, v18, "Unrecognized trigger variant %s", v19, 0xCu);
    sub_24A37EEE0(v20);
    MEMORY[0x24C219130](v20, -1, -1);
    MEMORY[0x24C219130](v19, -1, -1);
  }

  else
  {

    (*(v27 + 8))(v9, v4);
  }

  v28 = 0;
  v29 = 0xE000000000000000;
  sub_24A4ABF50();

  v28 = 0xD00000000000001DLL;
  v29 = 0x800000024A4B0110;
  sub_24A3F5824(&qword_27EF3F998, MEMORY[0x277D09270]);
  v25 = sub_24A4AC240();
  MEMORY[0x24C217D50](v25);

  result = sub_24A4AC050();
  __break(1u);
  return result;
}

FMFCore::FMFLocationAlertTriggerType_optional __swiftcall FMFLocationAlertTriggerType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A4AC0C0();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24A3F0050()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A3F0114()
{
  *v0;
  *v0;
  *v0;
  sub_24A4AB8F0();
}

uint64_t sub_24A3F01C4()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

void sub_24A3F0290(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x7265746E65;
  v4 = 0xE900000000000065;
  v5 = 0x74616964656D6D69;
  if (*v1 != 2)
  {
    v5 = 0x656C756465686373;
    v4 = 0xE900000000000064;
  }

  if (*v1)
  {
    v3 = 1953069157;
    v2 = 0xE400000000000000;
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

FMFCore::FMFLocationAlertTarget_optional __swiftcall FMFLocationAlertTarget.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A4AC0C0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24A3F0374(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x744F796669746F4ELL;
  }

  else
  {
    v4 = 0x654D796669746F4ELL;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xEC00000073726568;
  }

  if (*a2)
  {
    v6 = 0x744F796669746F4ELL;
  }

  else
  {
    v6 = 0x654D796669746F4ELL;
  }

  if (*a2)
  {
    v7 = 0xEC00000073726568;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24A4AC270();
  }

  return v9 & 1;
}

uint64_t sub_24A3F0424()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A3F04B0()
{
  *v0;
  sub_24A4AB8F0();
}

uint64_t sub_24A3F0528()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A3F05B0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24A4AC0C0();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_24A3F0610(uint64_t *a1@<X8>)
{
  v2 = 0x654D796669746F4ELL;
  if (*v1)
  {
    v2 = 0x744F796669746F4ELL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEC00000073726568;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24A3F0658@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_24A4AAFC0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277D09238])
  {
    v10 = 0;
LABEL_7:
    result = (*(v5 + 8))(a1, v4);
    *a2 = v10;
    return result;
  }

  if (v9 == *MEMORY[0x277D09240])
  {
    v10 = 1;
    goto LABEL_7;
  }

  if (v9 == *MEMORY[0x277D09248])
  {
    v10 = 2;
    goto LABEL_7;
  }

  v13 = 0;
  v14 = 0xE000000000000000;
  sub_24A4ABF50();

  v13 = 0xD00000000000001CLL;
  v14 = 0x800000024A4B0130;
  sub_24A3F5824(&qword_27EF3F9A0, MEMORY[0x277D09250]);
  v12 = sub_24A4AC240();
  MEMORY[0x24C217D50](v12);

  result = sub_24A4AC050();
  __break(1u);
  return result;
}

FMFCore::FMFLocationAlertAcceptanceStatus_optional __swiftcall FMFLocationAlertAcceptanceStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A4AC0C0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24A3F08E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x676E69646E6550;
  if (v2 != 1)
  {
    v4 = 0x6465747065636341;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E6564646948;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x676E69646E6550;
  if (*a2 != 1)
  {
    v8 = 0x6465747065636341;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E6564646948;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A4AC270();
  }

  return v11 & 1;
}

uint64_t sub_24A3F09E0()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A3F0A80()
{
  *v0;
  *v0;
  sub_24A4AB8F0();
}

uint64_t sub_24A3F0B0C()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

void sub_24A3F0BB4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x676E69646E6550;
  if (v2 != 1)
  {
    v5 = 0x6465747065636341;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E6564646948;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FMFLocationAlert.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FMFLocationAlert.ckRecordName.getter()
{
  v1 = (v0 + *(type metadata accessor for FMFLocationAlert() + 52));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FMFLocationAlert.ckRecordZoneOwnerName.getter()
{
  v1 = (v0 + *(type metadata accessor for FMFLocationAlert() + 56));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FMFLocationAlert.acceptanceStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FMFLocationAlert();
  *a1 = *(v1 + *(result + 60));
  return result;
}

uint64_t FMFLocationAlert.phoneNumbers.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMFLocationAlert() + 64));
}

uint64_t FMFLocationAlert.emails.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMFLocationAlert() + 68));
}

uint64_t FMFLocationAlert.followerIds.getter()
{
  v1 = *(v0 + *(type metadata accessor for FMFLocationAlert() + 72));
}

uint64_t FMFLocationAlert.friendId.getter()
{
  v1 = (v0 + *(type metadata accessor for FMFLocationAlert() + 76));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FMFLocationAlert.label.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FMFLocationAlert() + 80));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t FMFLocationAlert.addressType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FMFLocationAlert();
  *a1 = *(v1 + *(result + 84));
  return result;
}

uint64_t FMFLocationAlert.address.getter()
{
  v1 = (v0 + *(type metadata accessor for FMFLocationAlert() + 88));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FMFLocationAlert.fullAddress.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for FMFLocationAlert() + 92);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(a1, (v1 + v3), 0x130uLL);
  return sub_24A37B740(__dst, &v5, &unk_27EF404E0, &unk_24A4B5230);
}

uint64_t FMFLocationAlert.displayLabel.getter()
{
  v1 = type metadata accessor for FMFLocationAlert();
  v2 = (v0 + v1[20]);
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;
    v5 = v2[1];
    v6._countAndFlagsBits = sub_24A4AB880();
    FMFDefaultLabel.init(rawValue:)(v6);
    if (__dst[0] == 5)
    {

      v7 = v4;
      v8 = v3;
    }

    else
    {
      v7 = FMFDefaultLabel.localizedLabel.getter();
      v8 = v9;
    }

    v10 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v10 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      v11._countAndFlagsBits = sub_24A4AB880();
      FMFDefaultLabel.init(rawValue:)(v11);
      if (__dst[0] != 5)
      {
        return FMFDefaultLabel.localizedLabel.getter();
      }

      goto LABEL_14;
    }
  }

  v13 = (v0 + v1[22]);
  v14 = v13[1];
  if (v14)
  {
    v4 = *v13;
    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
LABEL_14:

      return v4;
    }
  }

  memcpy(__dst, (v0 + v1[23]), sizeof(__dst));
  if (sub_24A3D77F8(__dst) != 1)
  {
    memcpy(v17, __dst, sizeof(v17));
    return FMFAddress.displayAddress.getter();
  }

  return 0;
}

unint64_t sub_24A3F11F0(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x656475746974616CLL;
      break;
    case 2:
      result = 0x64757469676E6F6CLL;
      break;
    case 3:
      result = 0x737569646172;
      break;
    case 4:
      result = 1701869940;
      break;
    case 5:
      result = 0x72656767697274;
      break;
    case 6:
      result = 1850700649;
      break;
    case 7:
      result = 0x6F656D6974656E6FLL;
      break;
    case 8:
      result = 0x6D695465636E6566;
      break;
    case 9:
      result = 0x64726F6365526B63;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x6954657461647075;
      break;
    case 13:
      result = 0x6D754E656E6F6870;
      break;
    case 14:
      result = 0x736C69616D65;
      break;
    case 15:
      result = 0x7265776F6C6C6F66;
      break;
    case 16:
      result = 0x6449646E65697266;
      break;
    case 17:
      result = 0x6C6562616CLL;
      break;
    case 18:
      result = 0x6E6F697461636F6CLL;
      break;
    case 19:
      result = 0x73736572646461;
      break;
    case 20:
      result = 0x726464416C6C7566;
      break;
    case 21:
      result = 0x44646E456574756DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24A3F1464(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_24A3F11F0(*a1);
  v5 = v4;
  if (v3 == sub_24A3F11F0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A4AC270();
  }

  return v8 & 1;
}

uint64_t sub_24A3F14EC()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A3F11F0(v1);
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A3F1550()
{
  sub_24A3F11F0(*v0);
  sub_24A4AB8F0();
}

uint64_t sub_24A3F15A4()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A3F11F0(v1);
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A3F1604@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A3F57D0();
  *a2 = result;
  return result;
}

unint64_t sub_24A3F1634@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24A3F11F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24A3F1668@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A3F57D0();
  *a1 = result;
  return result;
}

uint64_t sub_24A3F169C(uint64_t a1)
{
  v2 = sub_24A3F44C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A3F16D8(uint64_t a1)
{
  v2 = sub_24A3F44C4();

  return MEMORY[0x2821FE720](a1, v2);
}

char FMFLocationAlert.init(from:)@<W0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a2;
  v3 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v134 = v130 - v5;
  v6 = sub_24A4AAAD0();
  v135 = *(v6 - 8);
  v136 = v6;
  v7 = *(v135 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v130 - v11;
  v13 = sub_24A3C9CEC(&qword_27EF3F470, &qword_24A4B6960);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v130 - v15;
  v17 = sub_24A3C9CEC(&qword_27EF3F8E8, &qword_24A4B6968);
  v137 = *(v17 - 8);
  v18 = *(v137 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v130 - v19;
  v140 = type metadata accessor for FMFLocationAlert();
  v21 = *(*(v140 - 1) + 64);
  MEMORY[0x28223BE20](v140);
  v141 = v130 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1[3];
  v23 = a1[4];
  v138 = a1;
  sub_24A37EACC(a1, v24);
  sub_24A3F44C4();
  v25 = v139;
  sub_24A4AC3C0();
  if (!v25)
  {
    v139 = v16;
    v131 = v9;
    v132 = v12;
    LOBYTE(v143[0]) = 0;
    v26 = sub_24A4AC120();
    v50 = v17;
    v51 = v141;
    *v141 = v26;
    *(v51 + 8) = v52;
    LOBYTE(v143[0]) = 6;
    *(v51 + 42) = sub_24A4AC130() & 1;
    LOBYTE(v143[0]) = 7;
    *(v51 + 43) = (sub_24A4AC130() & 1) == 0;
    v53 = type metadata accessor for FMFSchedule();
    LOBYTE(v143[0]) = 8;
    sub_24A3F5824(&qword_27EF3F8F8, type metadata accessor for FMFSchedule);
    v54 = v139;
    sub_24A4AC160();
    (*(*(v53 - 8) + 56))(v54, 0, 1, v53);
    sub_24A37BE24(v54, v141 + v140[12], &qword_27EF3F470, &qword_24A4B6960);
    LOBYTE(v143[0]) = 9;
    v55 = sub_24A4AC120();
    v56 = v50;
    v58 = v140;
    v57 = v141;
    v59 = (v141 + v140[13]);
    *v59 = v55;
    v59[1] = v60;
    LOBYTE(v143[0]) = 10;
    v61 = sub_24A4AC120();
    v62 = (v57 + v58[14]);
    *v62 = v61;
    v62[1] = v63;
    LOBYTE(v143[0]) = 11;
    sub_24A4AC0E0();
    if (v64)
    {
      v65 = sub_24A4AC0C0();

      v66 = 3;
      if (v65 < 3)
      {
        v66 = v65;
      }
    }

    else
    {
      v66 = 3;
    }

    *(v57 + v58[15]) = v66;
    LOBYTE(v143[0]) = 4;
    sub_24A4AC120();
    v68 = v67;
    v69 = sub_24A4AC0C0();
    if (v69 <= 1)
    {
      *(v57 + 40) = v69;
      LOBYTE(v143[0]) = 5;
      sub_24A4AC120();
      v139 = 0;
      v71 = v70;
      v130[2] = v68;

      v72 = sub_24A4AC0C0();

      if (v72 > 3)
      {
        __break(1u);
      }

      else
      {
        *(v57 + 41) = v72;
        sub_24A3C9CEC(&qword_27EF3F108, &qword_24A4B4950);
        LOBYTE(v144) = 13;
        sub_24A382908(&qword_27EF3F110);
        v73 = v139;
        sub_24A4AC160();
        if (v73)
        {

          v74 = 0;
        }

        else
        {
          v74 = v143[0];
        }

        *(v141 + v140[16]) = v74;
        LOBYTE(v144) = 14;
        sub_24A4AC160();
        *(v141 + v140[17]) = v143[0];
        LOBYTE(v144) = 15;
        sub_24A4AC160();
        v75 = v140;
        v76 = v141;
        *(v141 + v140[18]) = v143[0];
        LOBYTE(v143[0]) = 16;
        v77 = sub_24A4AC120();
        v130[1] = v71;
        v78 = (v76 + v75[19]);
        *v78 = v77;
        v78[1] = v79;
        LOBYTE(v143[0]) = 1;
        v80 = COERCE_DOUBLE(sub_24A4AC0F0());
        v81 = MEMORY[0x277CE4278];
        v82 = *MEMORY[0x277CE4278];
        if ((v83 & 1) == 0)
        {
          v82 = v80;
        }

        *(v76 + 16) = v82;
        LOBYTE(v143[0]) = 2;
        v84 = COERCE_DOUBLE(sub_24A4AC0F0());
        v85 = *(v81 + 8);
        if ((v86 & 1) == 0)
        {
          v85 = v84;
        }

        *(v76 + 24) = v85;
        LOBYTE(v143[0]) = 3;
        v87 = COERCE_DOUBLE(sub_24A4AC0F0());
        if (v88)
        {
          v87 = -1.0;
        }

        *(v141 + 32) = v87;
        LOBYTE(v143[0]) = 12;
        v139 = v20;
        v89 = sub_24A4AC170();
        v90 = [objc_opt_self() fm:v89 dateFromEpoch:?];
        v91 = v132;
        sub_24A4AAAA0();

        v92 = v141;
        v93 = v140[26];
        v94 = v135;
        v95 = v91;
        v96 = v136;
        (*(v135 + 16))(v141 + v93, v95, v136);
        v97 = *(v94 + 56);
        v97(v92 + v93, 0, 1, v96);
        LOBYTE(v143[0]) = 21;
        sub_24A3F5824(&qword_27EF3F900, MEMORY[0x277CC9578]);
        sub_24A4AC160();
        v98 = v134;
        v99 = v136;
        v130[0] = v97;
        v97(v134, 0, 1, v136);
        v100 = *(v135 + 32);
        v101 = v131;
        v100(v131, v98, v99);
        v102 = v100;
        v103 = v141;
        v104 = v140[27];
        v102(v141 + v104, v101, v99);
        (v130[0])(v103 + v104, 0, 1, v99);
        LOBYTE(v143[0]) = 19;
        v105 = sub_24A4AC120();
        v106 = (v141 + v140[22]);
        *v106 = v105;
        v106[1] = v107;
        v142 = 20;
        sub_24A3D7088();
        sub_24A4AC110();
        memcpy((v141 + v140[23]), v143, 0x130uLL);
        LOBYTE(v144) = 17;
        v108 = sub_24A4AC120();
        v110 = v109;

        v111._countAndFlagsBits = v108;
        v111._object = v110;
        FMFDefaultLabel.init(rawValue:)(v111);
        if (v144 == 5)
        {
          v112 = 259;
        }

        else
        {
          v112 = 3;
        }

        v113 = v141 + v140[20];
        *v113 = v108;
        *(v113 + 8) = v110;
        *(v113 + 16) = v112;
        LOBYTE(v144) = 18;
        v114 = sub_24A4AC120();
        v116 = sub_24A3F2954(v114, v115);
        if (v117)
        {
          v116 = 0;
        }

        result = FMFLocationAlertAddressType.init(rawValue:)(v116).value;
        v118 = v144;
        if (v144 != 8)
        {

          v119 = v140;
          v120 = v141;
          *(v141 + v140[21]) = v118;
          *(v120 + v119[24]) = 1;
          *(v120 + v119[25]) = 1;
          v140 = FMFLocationAlert.debugDescription.getter();
          v57 = v121;
          if (qword_27EF3EBF8 == -1)
          {
LABEL_36:
            v122 = sub_24A4AB630();
            sub_24A378E18(v122, qword_27EF4E260);

            v123 = sub_24A4AB600();
            v124 = sub_24A4ABCE0();

            v125 = v124;
            if (os_log_type_enabled(v123, v124))
            {
              v126 = swift_slowAlloc();
              v127 = swift_slowAlloc();
              v144 = v127;
              *v126 = 136315138;
              v128 = sub_24A37BD58(v140, v57, &v144);

              *(v126 + 4) = v128;
              _os_log_impl(&dword_24A376000, v123, v125, "FMFFence: initialized with coder %s", v126, 0xCu);
              sub_24A37EEE0(v127);
              MEMORY[0x24C219130](v127, -1, -1);
              MEMORY[0x24C219130](v126, -1, -1);
            }

            else
            {
            }

            (*(v135 + 8))(v132, v136);
            (*(v137 + 8))(v139, v56);
            v129 = v141;
            sub_24A3DE9CC(v141, v133);
            sub_24A37EEE0(v138);
            return sub_24A3B593C(v129, type metadata accessor for FMFLocationAlert);
          }

LABEL_41:
          swift_once();
          goto LABEL_36;
        }
      }

      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_41;
  }

  v27 = 0;
  LODWORD(v137) = 0;
  v28 = 0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v29 = sub_24A4AB630();
  sub_24A378E18(v29, qword_27EF4E260);
  v30 = v25;
  v31 = sub_24A4AB600();
  v32 = sub_24A4ABCC0();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    LODWORD(v135) = 0;
    v34 = v33;
    v35 = swift_slowAlloc();
    LODWORD(v136) = 0;
    v139 = v25;
    v36 = v35;
    v143[0] = v35;
    *v34 = 136315138;
    v144 = v139;
    v37 = v139;
    sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
    v38 = sub_24A4AB870();
    v40 = sub_24A37BD58(v38, v39, v143);

    *(v34 + 4) = v40;
    _os_log_impl(&dword_24A376000, v31, v32, "FMFFence: Could not decode. Error - %s", v34, 0xCu);
    sub_24A37EEE0(v36);
    v28 = v136;
    MEMORY[0x24C219130](v36, -1, -1);
    v41 = v34;
    v27 = v135;
    MEMORY[0x24C219130](v41, -1, -1);
  }

  v43 = v140;
  v42 = v141;
  v44 = v138;
  swift_willThrow();
  result = sub_24A37EEE0(v44);
  if (v27)
  {
    v46 = *(v42 + 8);

    if (!v137)
    {
      goto LABEL_9;
    }
  }

  else if (!v137)
  {
    goto LABEL_9;
  }

  sub_24A37EF2C(v42 + v43[12], &qword_27EF3F470, &qword_24A4B6960);
  v47 = *(v42 + v43[13] + 8);

  v48 = *(v42 + v43[14] + 8);

LABEL_9:
  if (v28)
  {
    v49 = *(v42 + v43[20] + 8);

    memcpy(v143, (v42 + v43[23]), 0x130uLL);
    return sub_24A37EF2C(v143, &unk_27EF404E0, &unk_24A4B5230);
  }

  return result;
}

uint64_t sub_24A3F2954(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_24A4ABF90();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_24A49D860(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t FMFLocationAlert.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_24A3C9CEC(&qword_27EF3F470, &qword_24A4B6960);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v83 - v4;
  v6 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v83 - v8;
  v10 = type metadata accessor for FMFLocationAlert();
  v11 = *(v10 + 108);
  v84 = v10;
  sub_24A37B740(v0 + v11, v9, &qword_27EF3F460, &unk_24A4B53B0);
  v12 = sub_24A4AB870();
  v87 = v13;
  v88 = v12;
  sub_24A37B740(v0 + *(v10 + 48), v5, &qword_27EF3F470, &qword_24A4B6960);
  v14 = sub_24A4AB870();
  v85 = v15;
  v86 = v14;
  v95[0] = 0;
  v95[1] = 0xE000000000000000;
  sub_24A4ABF50();
  MEMORY[0x24C217D50](60, 0xE100000000000000);
  MEMORY[0x24C217D50](0xD000000000000010, 0x800000024A4B6960);
  MEMORY[0x24C217D50](0x69746E656469203ALL, 0xEE00203A72656966);
  v16 = *(v0 + 8);
  v92[0] = *v0;
  v92[1] = v16;

  v89 = sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
  v17 = sub_24A4AB870();
  MEMORY[0x24C217D50](v17);

  MEMORY[0x24C217D50](0x6475746974616C20, 0xEB00000000203A65);
  v18 = *(v0 + 16);
  sub_24A4ABBE0();
  MEMORY[0x24C217D50](0x757469676E6F6C20, 0xEC000000203A6564);
  v19 = *(v0 + 24);
  sub_24A4ABBE0();
  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v83 = v95[0];
  v20 = v95[1];
  v95[0] = 0;
  v95[1] = 0xE000000000000000;
  sub_24A4ABF50();
  v96 = v95[0];
  v97 = v95[1];
  MEMORY[0x24C217D50](0x203A737569646172, 0xE800000000000000);
  v21 = *(v0 + 32);
  sub_24A4ABBE0();
  MEMORY[0x24C217D50](0x203A6E4F736920, 0xE700000000000000);
  if (*(v0 + 42))
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (*(v0 + 42))
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v22, v23);

  MEMORY[0x24C217D50](0x6974616570657220, 0xEC000000203A676ELL);
  if (*(v0 + 43))
  {
    v24 = 1702195828;
  }

  else
  {
    v24 = 0x65736C6166;
  }

  if (*(v0 + 43))
  {
    v25 = 0xE400000000000000;
  }

  else
  {
    v25 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v24, v25);

  MEMORY[0x24C217D50](0x754E656E6F687020, 0xEF203A737265626DLL);
  v26 = v84;
  v95[0] = *(v0 + v84[16]);

  sub_24A3C9CEC(&qword_27EF3F3E0, &qword_24A4B54A0);
  v27 = sub_24A4AB870();
  MEMORY[0x24C217D50](v27);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v28 = v96;
  v29 = v97;
  v95[0] = v83;
  v95[1] = v20;

  MEMORY[0x24C217D50](v28, v29);

  v30 = v95[0];
  v31 = v95[1];
  v95[0] = 0;
  v95[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v95[0] = 0x203A736C69616D65;
  v95[1] = 0xE800000000000000;
  v92[0] = *(v0 + v26[17]);

  v32 = sub_24A4AB870();
  MEMORY[0x24C217D50](v32);

  MEMORY[0x24C217D50](0x49646E6569726620, 0xEB00000000203A64);
  v33 = (v0 + v26[19]);
  v34 = v33[1];
  v92[0] = *v33;
  v92[1] = v34;

  v35 = sub_24A4AB870();
  MEMORY[0x24C217D50](v35);

  MEMORY[0x24C217D50](0x65776F6C6C6F6620, 0xEE00203A73644972);
  v92[0] = *(v0 + v26[18]);

  v36 = sub_24A4AB870();
  MEMORY[0x24C217D50](v36);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v37 = v95[0];
  v38 = v95[1];
  v95[0] = v30;
  v95[1] = v31;

  MEMORY[0x24C217D50](v37, v38);

  v39 = v95[0];
  v40 = v95[1];
  v95[0] = 0;
  v95[1] = 0xE000000000000000;
  sub_24A4ABF50();
  v92[0] = v95[0];
  v92[1] = v95[1];
  MEMORY[0x24C217D50](0x203A6C6562616CLL, 0xE700000000000000);
  v41 = (v0 + v26[20]);
  v43 = *v41;
  v42 = v41[1];
  LOWORD(v41) = *(v41 + 8);
  v95[0] = v43;
  v95[1] = v42;
  LOWORD(v95[2]) = v41;

  sub_24A3C9CEC(&qword_27EF3F908, &qword_24A4B7D00);
  v44 = sub_24A4AB870();
  MEMORY[0x24C217D50](v44);

  MEMORY[0x24C217D50](0x7373657264646120, 0xEE00203A65707954);
  LOBYTE(v95[0]) = *(v0 + v26[21]);
  sub_24A4AC030();
  MEMORY[0x24C217D50](0x7373657264646120, 0xEA0000000000203ALL);
  v45 = (v0 + v26[22]);
  v46 = v45[1];
  v95[0] = *v45;
  v95[1] = v46;

  v47 = sub_24A4AB870();
  MEMORY[0x24C217D50](v47);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v48 = v92[0];
  v49 = v92[1];
  v95[0] = v39;
  v95[1] = v40;

  MEMORY[0x24C217D50](v48, v49);

  v50 = v95[0];
  v51 = v95[1];
  v95[0] = 0;
  v95[1] = 0xE000000000000000;
  sub_24A4ABF50();
  v93 = v95[0];
  v94 = v95[1];
  MEMORY[0x24C217D50](0x726464416C6C7566, 0xED0000203A737365);
  v52 = v26[23];
  memcpy(v95, (v1 + v52), sizeof(v95));
  memcpy(v92, (v1 + v52), sizeof(v92));
  sub_24A37B740(v95, &v90, &unk_27EF404E0, &unk_24A4B5230);
  sub_24A3C9CEC(&unk_27EF404E0, &unk_24A4B5230);
  v53 = sub_24A4AB870();
  MEMORY[0x24C217D50](v53);

  MEMORY[0x24C217D50](0xD000000000000014, 0x800000024A4B0090);
  LOBYTE(v92[0]) = *(v1 + 40);
  sub_24A4AC030();
  MEMORY[0x24C217D50](0x7265676769727420, 0xEE00203A65707954);
  LOBYTE(v92[0]) = *(v1 + 41);
  sub_24A4AC030();
  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v54 = v93;
  v55 = v94;
  v92[0] = v50;
  v92[1] = v51;

  MEMORY[0x24C217D50](v54, v55);

  v56 = v92[1];
  v83 = v92[0];
  v92[0] = 0;
  v92[1] = 0xE000000000000000;
  sub_24A4ABF50();

  strcpy(v92, "setOnMe: ");
  WORD1(v92[1]) = 0;
  HIDWORD(v92[1]) = -385875968;
  if (*(v1 + v26[25]))
  {
    v57 = 1702195828;
  }

  else
  {
    v57 = 0x65736C6166;
  }

  if (*(v1 + v26[25]))
  {
    v58 = 0xE400000000000000;
  }

  else
  {
    v58 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v57, v58);

  MEMORY[0x24C217D50](0x654D794274657320, 0xEA0000000000203ALL);
  if (*(v1 + v26[24]))
  {
    v59 = 1702195828;
  }

  else
  {
    v59 = 0x65736C6166;
  }

  if (*(v1 + v26[24]))
  {
    v60 = 0xE400000000000000;
  }

  else
  {
    v60 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v59, v60);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  MEMORY[0x24C217D50](0x656C756465686373, 0xE800000000000000);
  MEMORY[0x24C217D50](8250, 0xE200000000000000);
  MEMORY[0x24C217D50](v86, v85);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v61 = v92[0];
  v62 = v92[1];
  v92[0] = v83;
  v92[1] = v56;

  MEMORY[0x24C217D50](v61, v62);

  v64 = v92[0];
  v63 = v92[1];
  v92[0] = 0;
  v92[1] = 0xE000000000000000;
  sub_24A4ABF50();

  strcpy(v92, "ckRecordName: ");
  HIBYTE(v92[1]) = -18;
  v65 = (v1 + v26[13]);
  v66 = v65[1];
  v90 = *v65;
  v91 = v66;

  v67 = sub_24A4AB870();
  MEMORY[0x24C217D50](v67);

  MEMORY[0x24C217D50](0xD000000000000018, 0x800000024A4B00B0);
  v68 = (v1 + v26[14]);
  v69 = v68[1];
  v90 = *v68;
  v91 = v69;

  v70 = sub_24A4AB870();
  MEMORY[0x24C217D50](v70);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v71 = v92[0];
  v72 = v92[1];
  v92[0] = v64;
  v92[1] = v63;

  MEMORY[0x24C217D50](v71, v72);

  v74 = v92[0];
  v73 = v92[1];
  v92[0] = 0;
  v92[1] = 0xE000000000000000;
  sub_24A4ABF50();

  v92[0] = 0xD000000000000012;
  v92[1] = 0x800000024A4B00D0;
  LOBYTE(v90) = *(v1 + v26[15]);
  sub_24A3C9CEC(&qword_27EF3F910, &qword_24A4B69A0);
  v75 = sub_24A4AB870();
  MEMORY[0x24C217D50](v75);

  MEMORY[0x24C217D50](62, 0xE100000000000000);
  v76 = v92[0];
  v77 = v92[1];
  v92[0] = v74;
  v92[1] = v73;

  MEMORY[0x24C217D50](v76, v77);

  v79 = v92[0];
  v78 = v92[1];
  strcpy(v92, "muteEndDate: ");
  HIWORD(v92[1]) = -4864;
  MEMORY[0x24C217D50](v88, v87);

  MEMORY[0x24C217D50](62, 0xE100000000000000);
  v80 = v92[0];
  v81 = v92[1];
  v92[0] = v79;
  v92[1] = v78;

  MEMORY[0x24C217D50](v80, v81);

  return v92[0];
}

void FMFLocationAlert.encode(to:)(void *a1)
{
  v2 = sub_24A4AAAD0();
  v57 = *(v2 - 8);
  v58 = v2;
  v3 = *(v57 + 64);
  MEMORY[0x28223BE20](v2);
  v56 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v50 - v10;
  v12 = sub_24A3C9CEC(&qword_27EF3F918, &qword_24A4B69A8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v50 - v15;
  v17 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A3F44C4();
  v18 = v59;
  sub_24A4AC3D0();
  v65[0] = *v18;
  v64[0] = 0;
  sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
  v19 = sub_24A38D258();
  v20 = v68;
  sub_24A4AC1F0();
  if (v20)
  {
    goto LABEL_2;
  }

  v53 = v8;
  v54 = v11;
  v55 = v13;
  v21 = *(v18 + 42);
  LOBYTE(v65[0]) = 6;
  sub_24A4AC1C0();
  v52 = v19;
  v22 = *(v18 + 43);
  LOBYTE(v65[0]) = 7;
  sub_24A4AC1C0();
  v68 = 0;
  v13 = v55;
  v23 = type metadata accessor for FMFLocationAlert();
  v24 = *(v23 + 48);
  LOBYTE(v65[0]) = 8;
  sub_24A3C9CEC(&qword_27EF3F470, &qword_24A4B6960);
  sub_24A3F4518();
  v20 = v68;
  sub_24A4AC1F0();
  if (v20)
  {
    goto LABEL_2;
  }

  v51 = v23;
  *(v18 + 40);
  *(v18 + 40);
  LOBYTE(v65[0]) = 4;
  sub_24A4AC1B0();
  v68 = 0;

  *(v18 + 41);
  v25 = v68;
  LOBYTE(v65[0]) = 5;
  sub_24A4AC1B0();
  v68 = v25;
  if (v25)
  {
    (*(v13 + 8))(v16, v12);
LABEL_6:

    return;
  }

  v26 = v51;
  v65[0] = *(v18 + v51[13]);
  v64[0] = 9;
  v20 = v68;
  sub_24A4AC1F0();
  if (v20)
  {
    goto LABEL_2;
  }

  v65[0] = *(v18 + v26[14]);
  v64[0] = 10;
  sub_24A4AC1F0();
  if (*(v18 + v26[15]) <= 2u)
  {
    LOBYTE(v65[0]) = 11;
    sub_24A4AC1B0();
    v68 = 0;

    v20 = v68;
  }

  v27 = *(v18 + 16);
  LOBYTE(v65[0]) = 1;
  sub_24A4AC1D0();
  if (v20)
  {
LABEL_2:
    v68 = v20;
    (*(v13 + 8))(v16, v12);
    return;
  }

  v28 = v18;
  v29 = *(v18 + 24);
  LOBYTE(v65[0]) = 2;
  sub_24A4AC1D0();
  v68 = 0;
  v30 = *(v18 + 32);
  LOBYTE(v65[0]) = 3;
  v50 = v12;
  v31 = v16;
  sub_24A4AC1D0();
  v68 = 0;
  v32 = v54;
  sub_24A37B740(v18 + v51[26], v54, &qword_27EF3F460, &unk_24A4B53B0);
  v33 = *(v57 + 48);
  v34 = v33(v32, 1, v58);
  if (v34 != 1)
  {
    v35 = v54;
    v36 = sub_24A4AAA60();
    (*(v57 + 8))(v35, v58);
    [v36 fm_epoch];
    LOBYTE(v65[0]) = 12;
    v37 = v68;
    sub_24A4AC200();
    v68 = v37;
    if (v37)
    {
      (*(v55 + 8))(v31, v50);

      return;
    }
  }

  v38 = v53;
  sub_24A37B740(v18 + v51[27], v53, &qword_27EF3F460, &unk_24A4B53B0);
  if (v33(v38, 1, v58) == 1)
  {
    sub_24A37EF2C(v53, &qword_27EF3F460, &unk_24A4B53B0);
  }

  else
  {
    (*(v57 + 32))(v56, v53, v58);
    LOBYTE(v65[0]) = 21;
    sub_24A3F5824(&qword_27EF3F400, MEMORY[0x277CC9578]);
    v39 = v68;
    sub_24A4AC1F0();
    v68 = v39;
    if (v39)
    {
      (*(v57 + 8))(v56, v58);
LABEL_12:
      (*(v55 + 8))(v31, v50);
      return;
    }

    (*(v57 + 8))(v56, v58);
  }

  *&v65[0] = *(v18 + v51[16]);
  v64[0] = 13;
  sub_24A3C9CEC(&qword_27EF3F3E0, &qword_24A4B54A0);
  sub_24A38CA78();
  v40 = v68;
  sub_24A4AC1F0();
  v68 = v40;
  if (v40)
  {
    goto LABEL_12;
  }

  *&v65[0] = *(v18 + v51[17]);
  v64[0] = 14;
  sub_24A4AC1F0();
  v68 = 0;
  *&v65[0] = *(v18 + v51[18]);
  v64[0] = 15;
  sub_24A4AC1F0();
  v68 = 0;
  v65[0] = *(v18 + v51[19]);
  v64[0] = 16;
  sub_24A4AC1F0();
  v68 = 0;
  v67 = *(v18 + v51[22]);
  v66 = 19;
  sub_24A4AC1F0();
  v68 = 0;
  v41 = v51[23];
  memcpy(v65, (v18 + v41), sizeof(v65));
  memcpy(v64, (v18 + v41), sizeof(v64));
  v63[311] = 20;
  sub_24A37B740(v65, v63, &unk_27EF404E0, &unk_24A4B5230);
  sub_24A3C9CEC(&unk_27EF404E0, &unk_24A4B5230);
  sub_24A3D7238();
  v42 = v68;
  sub_24A4AC1F0();
  v68 = v42;
  if (v42)
  {
    memcpy(v63, v64, 0x130uLL);
    sub_24A37EF2C(v63, &unk_27EF404E0, &unk_24A4B5230);
    goto LABEL_12;
  }

  memcpy(v63, v64, 0x130uLL);
  sub_24A37EF2C(v63, &unk_27EF404E0, &unk_24A4B5230);
  v43 = v51[21];
  LOBYTE(v61) = *(v28 + v43);
  sub_24A4AB870();
  LOBYTE(v61) = 18;
  v44 = v68;
  sub_24A4AC1B0();
  v68 = v44;
  if (!v44)
  {

    v45 = (v28 + v51[20]);
    v47 = *v45;
    v46 = v45[1];
    if (!v46)
    {
      v47 = 0;
    }

    v61 = v47;
    v62 = v46;
    v60 = 17;
    v48 = v68;
    sub_24A4AC1F0();
    v68 = v48;
    if (!v48)
    {
      v61 = *(v28 + v43);
      sub_24A4AC240();
      LOBYTE(v61) = 18;
      v49 = v68;
      sub_24A4AC1B0();
      v68 = v49;
      (*(v55 + 8))(v31, v50);
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  (*(v55 + 8))(v31, v50);
}

uint64_t sub_24A3F4460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFSchedule();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24A3F44C4()
{
  result = qword_27EF3F8F0;
  if (!qword_27EF3F8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F8F0);
  }

  return result;
}

unint64_t sub_24A3F4518()
{
  result = qword_27EF3F920;
  if (!qword_27EF3F920)
  {
    sub_24A3CBC9C(&qword_27EF3F470, &qword_24A4B6960);
    sub_24A3F5824(&qword_27EF3F928, type metadata accessor for FMFSchedule);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F920);
  }

  return result;
}

uint64_t _s7FMFCore16FMFLocationAlertV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFSchedule();
  v101 = *(v4 - 8);
  v102 = v4;
  v5 = *(v101 + 64);
  MEMORY[0x28223BE20](v4);
  v104 = (&v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_24A3C9CEC(&qword_27EF3F470, &qword_24A4B6960);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = (&v97 - v9);
  v11 = sub_24A3C9CEC(&qword_27EF3F9B0, &unk_24A4B6F90);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v103 = &v97 - v13;
  v14 = sub_24A4AAAD0();
  v105 = *(v14 - 8);
  v15 = *(v105 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v97 - v20;
  v22 = sub_24A3C9CEC(&qword_27EF3F3B8, &qword_24A4B5480);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v97 - v24;
  v26 = *(a1 + 8);
  v27 = *(a2 + 8);
  if (v26)
  {
    if (!v27 || (*a1 != *a2 || v26 != v27) && (sub_24A4AC270() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v27)
  {
    goto LABEL_13;
  }

  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *(a1 + 42) != *(a2 + 42) || *(a1 + 43) != *(a2 + 43))
  {
    goto LABEL_13;
  }

  v30 = type metadata accessor for FMFLocationAlert();
  v31 = v30[16];
  v32 = *(a1 + v31);
  v33 = *(a2 + v31);
  if (v32)
  {
    if (!v33)
    {
      goto LABEL_13;
    }

    v100 = v30;
    v34 = sub_24A38B37C(v32, v33);
    v30 = v100;
    if ((v34 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v33)
  {
    goto LABEL_13;
  }

  v35 = v30[17];
  v36 = *(a1 + v35);
  v37 = *(a2 + v35);
  if (v36)
  {
    if (!v37)
    {
      goto LABEL_13;
    }

    v100 = v30;
    v38 = sub_24A38B37C(v36, v37);
    v30 = v100;
    if ((v38 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v37)
  {
    goto LABEL_13;
  }

  v39 = v30[18];
  v40 = *(a1 + v39);
  v41 = *(a2 + v39);
  if (v40)
  {
    if (!v41)
    {
      goto LABEL_13;
    }

    v100 = v30;
    v42 = sub_24A38B37C(v40, v41);
    v30 = v100;
    if ((v42 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v41)
  {
    goto LABEL_13;
  }

  v43 = v30[19];
  v44 = (a1 + v43);
  v45 = *(a1 + v43 + 8);
  v46 = (a2 + v43);
  v47 = v46[1];
  if (v45)
  {
    if (!v47)
    {
      goto LABEL_13;
    }

    if (*v44 != *v46 || v45 != v47)
    {
      v100 = v30;
      v48 = sub_24A4AC270();
      v30 = v100;
      if ((v48 & 1) == 0)
      {
        goto LABEL_13;
      }
    }
  }

  else if (v47)
  {
    goto LABEL_13;
  }

  v49 = v30[20];
  v50 = (a1 + v49);
  v51 = *(a1 + v49 + 8);
  v52 = (a2 + v49);
  v53 = v52[1];
  if (!v51)
  {
    v100 = v30;
    if (!v53)
    {

      v30 = v100;
      goto LABEL_46;
    }

LABEL_44:

    goto LABEL_13;
  }

  if (!v53)
  {
    goto LABEL_44;
  }

  if (*v50 != *v52 || v51 != v53)
  {
    v100 = v30;
    v54 = sub_24A4AC270();
    v30 = v100;
    if ((v54 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

LABEL_46:
  if (*(a1 + v30[21]) == *(a2 + v30[21]))
  {
    v100 = v30;
    v55 = v30[22];
    v56 = (a1 + v55);
    v57 = *(a1 + v55 + 8);
    v58 = (a2 + v55);
    v59 = v58[1];
    if (v57)
    {
      if (!v59 || (*v56 != *v58 || v57 != v59) && (sub_24A4AC270() & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_54:
      v99 = v100[23];
      memcpy(v113, (a1 + v99), sizeof(v113));
      v98 = v100[23];
      memcpy(v114, v98 + a2, sizeof(v114));
      memcpy(v112, (a1 + v99), 0x130uLL);
      memcpy(&v112[304], v98 + a2, 0x130uLL);
      memcpy(v115, (a1 + v99), 0x130uLL);
      if (sub_24A3D77F8(v115) == 1)
      {
        memcpy(v110, &v112[304], 0x130uLL);
        if (sub_24A3D77F8(v110) == 1)
        {
          memcpy(v111, v112, sizeof(v111));
          sub_24A37B740(v113, v109, &unk_27EF404E0, &unk_24A4B5230);
          sub_24A37B740(v114, v109, &unk_27EF404E0, &unk_24A4B5230);
          sub_24A37EF2C(v111, &unk_27EF404E0, &unk_24A4B5230);
LABEL_63:
          v63 = *(a2 + 40);
          if (*(a1 + 40))
          {
            v64 = 0x744F796669746F4ELL;
          }

          else
          {
            v64 = 0x654D796669746F4ELL;
          }

          if (*(a1 + 40))
          {
            v65 = 0xEC00000073726568;
          }

          else
          {
            v65 = 0xE800000000000000;
          }

          if (*(a2 + 40))
          {
            v66 = 0x744F796669746F4ELL;
          }

          else
          {
            v66 = 0x654D796669746F4ELL;
          }

          if (*(a2 + 40))
          {
            v67 = 0xEC00000073726568;
          }

          else
          {
            v67 = 0xE800000000000000;
          }

          v99 = v67;
          if (v64 == v66 && v65 == v99)
          {
          }

          else
          {
            v97 = v65;
            LODWORD(v98) = sub_24A4AC270();

            if ((v98 & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          if ((sub_24A3DF050(*(a1 + 41), *(a2 + 41)) & 1) == 0 || *(a1 + v100[25]) != *(a2 + v100[25]) || *(a1 + v100[24]) != *(a2 + v100[24]))
          {
            goto LABEL_13;
          }

          v68 = v100[13];
          v69 = (a1 + v68);
          v70 = *(a1 + v68 + 8);
          v71 = (a2 + v68);
          v72 = v71[1];
          if (v70)
          {
            if (!v72 || (*v69 != *v71 || v70 != v72) && (sub_24A4AC270() & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          else if (v72)
          {
            goto LABEL_13;
          }

          v73 = v100[14];
          v74 = (a1 + v73);
          v75 = *(a1 + v73 + 8);
          v76 = (a2 + v73);
          v77 = v76[1];
          if (v75)
          {
            if (!v77 || (*v74 != *v76 || v75 != v77) && (sub_24A4AC270() & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          else if (v77)
          {
            goto LABEL_13;
          }

          v78 = v100[15];
          v79 = *(a1 + v78);
          v80 = *(a2 + v78);
          if (v79 == 3)
          {
            if (v80 != 3)
            {
              goto LABEL_13;
            }
          }

          else
          {
            if (v80 == 3)
            {
              goto LABEL_13;
            }

            v81 = 0x6E6564646948;
            if (v79)
            {
              if (v79 == 1)
              {
                v82 = 0xE700000000000000;
                v83 = 0x676E69646E6550;
              }

              else
              {
                v82 = 0xE800000000000000;
                v83 = 0x6465747065636341;
              }
            }

            else
            {
              v82 = 0xE600000000000000;
              v83 = 0x6E6564646948;
            }

            if (v80)
            {
              if (v80 == 1)
              {
                v99 = 0xE700000000000000;
                v81 = 0x676E69646E6550;
              }

              else
              {
                v99 = 0xE800000000000000;
                v81 = 0x6465747065636341;
              }
            }

            else
            {
              v99 = 0xE600000000000000;
            }

            if (v83 == v81 && v82 == v99)
            {
            }

            else
            {
              v97 = v82;
              LODWORD(v98) = sub_24A4AC270();

              if ((v98 & 1) == 0)
              {
                goto LABEL_13;
              }
            }
          }

          v99 = v100[27];
          v84 = *(v22 + 48);
          sub_24A37B740(a1 + v99, v25, &qword_27EF3F460, &unk_24A4B53B0);
          v85 = a2 + v99;
          v99 = v84;
          sub_24A37B740(v85, &v25[v84], &qword_27EF3F460, &unk_24A4B53B0);
          v98 = *(v105 + 48);
          if (v98(v25, 1, v14) == 1)
          {
            if (v98(&v25[v99], 1, v14) == 1)
            {
              sub_24A37EF2C(v25, &qword_27EF3F460, &unk_24A4B53B0);
LABEL_121:
              v88 = v100[12];
              v89 = *(v11 + 48);
              v90 = a1 + v88;
              v91 = v103;
              sub_24A37B740(v90, v103, &qword_27EF3F470, &qword_24A4B6960);
              sub_24A37B740(a2 + v88, v91 + v89, &qword_27EF3F470, &qword_24A4B6960);
              v92 = *(v101 + 48);
              if (v92(v91, 1, v102) == 1)
              {
                if (v92(&v103[v89], 1, v102) == 1)
                {
                  sub_24A37EF2C(v103, &qword_27EF3F470, &qword_24A4B6960);
                  v28 = 1;
                  return v28 & 1;
                }
              }

              else
              {
                v93 = v103;
                sub_24A37B740(v103, v10, &qword_27EF3F470, &qword_24A4B6960);
                if (v92((v93 + v89), 1, v102) != 1)
                {
                  v94 = v103;
                  v95 = &v103[v89];
                  v96 = v104;
                  sub_24A3F4460(v95, v104);
                  v28 = static FMFSchedule.== infix(_:_:)(v10, v96);
                  sub_24A3B593C(v96, type metadata accessor for FMFSchedule);
                  sub_24A3B593C(v10, type metadata accessor for FMFSchedule);
                  sub_24A37EF2C(v94, &qword_27EF3F470, &qword_24A4B6960);
                  return v28 & 1;
                }

                sub_24A3B593C(v10, type metadata accessor for FMFSchedule);
              }

              v60 = &qword_27EF3F9B0;
              v61 = &unk_24A4B6F90;
              v62 = v103;
              goto LABEL_61;
            }
          }

          else
          {
            sub_24A37B740(v25, v21, &qword_27EF3F460, &unk_24A4B53B0);
            if (v98(&v25[v99], 1, v14) != 1)
            {
              v86 = v105;
              (*(v105 + 32))(v17, &v25[v99], v14);
              sub_24A3F5824(&qword_27EF3F3C0, MEMORY[0x277CC9578]);
              LODWORD(v99) = sub_24A4AB810();
              v87 = *(v86 + 8);
              v87(v17, v14);
              v87(v21, v14);
              sub_24A37EF2C(v25, &qword_27EF3F460, &unk_24A4B53B0);
              if ((v99 & 1) == 0)
              {
                goto LABEL_13;
              }

              goto LABEL_121;
            }

            (*(v105 + 8))(v21, v14);
          }

          v60 = &qword_27EF3F3B8;
          v61 = &qword_24A4B5480;
          v62 = v25;
LABEL_61:
          sub_24A37EF2C(v62, v60, v61);
          goto LABEL_13;
        }

        sub_24A37B740(v113, v111, &unk_27EF404E0, &unk_24A4B5230);
        sub_24A37B740(v114, v111, &unk_27EF404E0, &unk_24A4B5230);
      }

      else
      {
        memcpy(v111, v112, sizeof(v111));
        memcpy(v109, v112, sizeof(v109));
        memcpy(v110, &v112[304], 0x130uLL);
        if (sub_24A3D77F8(v110) != 1)
        {
          memcpy(v108, &v112[304], sizeof(v108));
          LODWORD(v99) = _s7FMFCore10FMFAddressV2eeoiySbAC_ACtFZ_0(v109, v108);
          memcpy(v106, v108, sizeof(v106));
          sub_24A37B740(v113, v107, &unk_27EF404E0, &unk_24A4B5230);
          sub_24A37B740(v114, v107, &unk_27EF404E0, &unk_24A4B5230);
          sub_24A37B740(v111, v107, &unk_27EF404E0, &unk_24A4B5230);
          sub_24A3D785C(v106);
          memcpy(v107, v109, sizeof(v107));
          sub_24A3D785C(v107);
          memcpy(v108, v112, sizeof(v108));
          sub_24A37EF2C(v108, &unk_27EF404E0, &unk_24A4B5230);
          if ((v99 & 1) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_63;
        }

        memcpy(v108, v112, sizeof(v108));
        sub_24A37B740(v113, v107, &unk_27EF404E0, &unk_24A4B5230);
        sub_24A37B740(v114, v107, &unk_27EF404E0, &unk_24A4B5230);
        sub_24A37B740(v111, v107, &unk_27EF404E0, &unk_24A4B5230);
        sub_24A3D785C(v108);
      }

      memcpy(v110, v112, sizeof(v110));
      v60 = &qword_27EF3F350;
      v61 = &unk_24A4B5250;
      v62 = v110;
      goto LABEL_61;
    }

    if (!v59)
    {
      goto LABEL_54;
    }
  }

LABEL_13:
  v28 = 0;
  return v28 & 1;
}

unint64_t sub_24A3F53DC()
{
  result = qword_27EF3F930;
  if (!qword_27EF3F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F930);
  }

  return result;
}

unint64_t sub_24A3F5434()
{
  result = qword_27EF3F938;
  if (!qword_27EF3F938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F938);
  }

  return result;
}

unint64_t sub_24A3F548C()
{
  result = qword_27EF3F940;
  if (!qword_27EF3F940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F940);
  }

  return result;
}

unint64_t sub_24A3F54E4()
{
  result = qword_27EF3F948;
  if (!qword_27EF3F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F948);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FMFLocationAlert.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMFLocationAlert.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A3F56CC()
{
  result = qword_27EF3F980;
  if (!qword_27EF3F980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F980);
  }

  return result;
}

unint64_t sub_24A3F5724()
{
  result = qword_27EF3F988;
  if (!qword_27EF3F988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F988);
  }

  return result;
}

unint64_t sub_24A3F577C()
{
  result = qword_27EF3F990;
  if (!qword_27EF3F990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F990);
  }

  return result;
}

uint64_t sub_24A3F57D0()
{
  v0 = sub_24A4AC290();

  if (v0 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24A3F5824(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 FMFUpdatePrefsAction.__allocating_init(prefs:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  result = *(a1 + 8);
  v7 = *(a1 + 24);
  v2[1].n128_u8[8] = *a1;
  v2[1].n128_u8[9] = v3;
  v2[1].n128_u8[10] = v4;
  v2[1].n128_u8[11] = v5;
  v2[2] = result;
  v2[3].n128_u64[0] = v7;
  v2[1].n128_u8[0] = 0;
  return result;
}

uint64_t FMFUpdatePrefsAction.init(prefs:)(uint64_t a1)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  *(v1 + 24) = *a1;
  *(v1 + 25) = v2;
  *(v1 + 26) = v3;
  *(v1 + 27) = v4;
  *(v1 + 32) = v5;
  *(v1 + 48) = v6;
  *(v1 + 16) = 0;
  return v1;
}

uint64_t sub_24A3F590C()
{
  sub_24A4ABF50();
  MEMORY[0x24C217D50](60, 0xE100000000000000);
  v1 = *v0;
  v2 = sub_24A4AC420();
  MEMORY[0x24C217D50](v2);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v3 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v3);

  MEMORY[0x24C217D50](0x203A736665727020, 0xE800000000000000);
  v5 = *(v0 + 24);
  *(&v5 + 1) = *(v0 + 25);
  BYTE3(v5) = *(v0 + 27);
  v6 = *(v0 + 2);
  v7 = v0[6];
  sub_24A4AC030();
  return 0;
}

uint64_t sub_24A3F5A9C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
}

uint64_t FMFUpdatePrefsAction.deinit()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v0;
}

uint64_t FMFUpdatePrefsAction.__deallocating_deinit()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_24A3F5BAC(uint64_t a1)
{
  v35 = sub_24A4AB220();
  v3 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v29[1] = v1;
  v38 = MEMORY[0x277D84F90];
  v9 = v4;
  sub_24A3C0C34(0, v7, 0);
  v8 = v38;
  v10 = -1 << *(a1 + 32);
  v37 = a1 + 56;
  result = sub_24A4ABEA0();
  v12 = result;
  v13 = 0;
  v33 = v9 + 32;
  v34 = v9;
  v30 = a1;
  v31 = a1 + 64;
  v32 = v7;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    v15 = v12 >> 6;
    if ((*(v37 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_22;
    }

    v36 = *(a1 + 36);
    v16 = (*(a1 + 48) + 16 * v12);
    v17 = *v16;
    v18 = v16[1];

    sub_24A4AB200();
    v38 = v8;
    v19 = v6;
    v21 = *(v8 + 16);
    v20 = *(v8 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_24A3C0C34(v20 > 1, v21 + 1, 1);
      v8 = v38;
    }

    *(v8 + 16) = v21 + 1;
    result = (*(v34 + 32))(v8 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v21, v19, v35);
    v14 = 1 << *(a1 + 32);
    if (v12 >= v14)
    {
      goto LABEL_23;
    }

    v22 = *(v37 + 8 * v15);
    if ((v22 & (1 << v12)) == 0)
    {
      goto LABEL_24;
    }

    if (v36 != *(a1 + 36))
    {
      goto LABEL_25;
    }

    v6 = v19;
    v23 = v22 & (-2 << (v12 & 0x3F));
    if (v23)
    {
      v14 = __clz(__rbit64(v23)) | v12 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v15 << 6;
      v25 = v15 + 1;
      v26 = (v31 + 8 * v15);
      while (v25 < (v14 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_24A406830(v12, v36, 0);
          a1 = v30;
          v14 = __clz(__rbit64(v27)) + v24;
          goto LABEL_19;
        }
      }

      result = sub_24A406830(v12, v36, 0);
      a1 = v30;
LABEL_19:
      v6 = v19;
    }

    ++v13;
    v12 = v14;
    if (v13 == v32)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_24A3F5ED8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24A4AC360();
  sub_24A4AB8F0();
  return sub_24A4AC3A0();
}

uint64_t sub_24A3F5F24()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_24A4AB8F0();
}

uint64_t sub_24A3F5F2C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24A4AC360();
  sub_24A4AB8F0();
  return sub_24A4AC3A0();
}

uint64_t sub_24A3F5F74(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24A4AC270();
  }
}

uint64_t sub_24A3F5FA4(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 152) = a1;

  return MEMORY[0x2822009F8](sub_24A3F60BC, v3, 0);
}

uint64_t sub_24A3F60BC()
{
  v1 = v0;
  v3 = v0[5];
  v2 = v0[6];
  v4 = *(v2 + 112);
  *(v2 + 112) = v0[19];

  v5 = *(v3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = v0[8];
    v28 = v1[9];
    v29 = MEMORY[0x277D84F90];
    v8 = v1[5];
    sub_24A3DBDA8(0, v5, 0);
    v6 = v29;
    v9 = v8 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v10 = *(v7 + 72);
    do
    {
      v11 = v1[9];
      sub_24A3A0ADC(v9, v11);
      v12 = *v11;
      v13 = *(v28 + 8);

      sub_24A39A638(v11, type metadata accessor for FMFFriend);
      v15 = *(v29 + 16);
      v14 = *(v29 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_24A3DBDA8((v14 > 1), v15 + 1, 1);
      }

      *(v29 + 16) = v15 + 1;
      v16 = v29 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      v9 += v10;
      --v5;
    }

    while (v5);
  }

  v17 = v1[12];
  v18 = v1[13];
  v19 = v1[10];
  v20 = v1[11];
  v21 = v1[6];
  (*(v17 + 104))(v18, *MEMORY[0x277D08FE0], v20);
  sub_24A3FF864(1, v6, v18);

  (*(v17 + 8))(v18, v20);
  sub_24A4AAAC0();
  v22 = sub_24A4AAAD0();
  (*(*(v22 - 8) + 56))(v19, 0, 1, v22);
  v23 = OBJC_IVAR____TtC7FMFCore27FMFSecureLocationController_startRefreshingTimestamp;
  swift_beginAccess();
  sub_24A3A87F4(v19, v21 + v23);
  swift_endAccess();
  v24 = swift_task_alloc();
  v1[20] = v24;
  *v24 = v1;
  v24[1] = sub_24A3F6344;
  v25 = v1[6];
  v26 = v1[5];

  return sub_24A3FA1B8(v26);
}

uint64_t sub_24A3F6344()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[16];
    v5 = v2[17];
    v7 = v2[13];
    v9 = v2[9];
    v8 = v2[10];
    v10 = v2[7];

    v11 = *(v4 + 8);

    return v11();
  }

  else
  {
    v13 = swift_task_alloc();
    v2[21] = v13;
    *v13 = v4;
    v13[1] = sub_24A3F64FC;
    v14 = v2[6];

    return sub_24A3F83A4();
  }
}

uint64_t sub_24A3F64FC()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[16];
    v5 = v2[17];
    v7 = v2[13];
    v9 = v2[9];
    v8 = v2[10];
    v10 = v2[7];

    v11 = *(v4 + 8);

    return v11();
  }

  else
  {
    v13 = v2[6];

    return MEMORY[0x2822009F8](sub_24A3F6680, v13, 0);
  }
}

uint64_t sub_24A3F6680()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[10];
  v15 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  v8 = sub_24A4ABB70();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v9;
  v10[5] = v7;

  v11 = sub_24A432D64(0, 0, v5, &unk_24A4B7348, v10);
  v12 = *(v6 + 136);
  *(v6 + 136) = v11;

  v13 = v0[1];

  return v13();
}

uint64_t sub_24A3F6808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = *(type metadata accessor for FMFFriend() - 8);
  v5[9] = v6;
  v7 = *(v6 + 64) + 15;
  v5[10] = swift_task_alloc();
  v8 = sub_24A4AAD40();
  v5[11] = v8;
  v9 = *(v8 - 8);
  v5[12] = v9;
  v10 = *(v9 + 64) + 15;
  v5[13] = swift_task_alloc();
  v11 = sub_24A4AC010();
  v5[14] = v11;
  v12 = *(v11 - 8);
  v5[15] = v12;
  v13 = *(v12 + 64) + 15;
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A3F697C, 0, 0);
}

uint64_t sub_24A3F697C()
{
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    v0[6] = 0x403E000000000000;
    if (qword_27EF3EC08 != -1)
    {
      swift_once();
    }

    v3 = v0[16];
    v4 = swift_task_alloc();
    *(v4 + 16) = 4;
    *(v4 + 24) = v0 + 6;
    sub_24A4ABD70();

    v5 = v0[5];
    v6 = sub_24A4AC3E0();
    v8 = v7;
    sub_24A4AC2E0();
    v9 = swift_task_alloc();
    v0[18] = v9;
    *v9 = v0;
    v9[1] = sub_24A3F6B74;
    v10 = v0[16];

    return sub_24A405F7C(v6, v8, 0, 0, 1);
  }

  else
  {
    v12 = v0[16];
    v13 = v0[13];
    v14 = v0[10];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_24A3F6B74()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  (*(v2[15] + 8))(v2[16], v2[14]);
  if (v0)
  {
    v5 = sub_24A3F6FA0;
  }

  else
  {
    v5 = sub_24A3F6CDC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24A3F6CDC()
{
  v1 = v0[19];
  sub_24A4ABBB0();
  if (v1)
  {
    v3 = v0[16];
    v2 = v0[17];
    v4 = v0[13];
    v5 = v0[10];

    v6 = v0[1];

    return v6();
  }

  else
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v8 = sub_24A4AB630();
    sub_24A378E18(v8, qword_27EF4E260);
    v9 = sub_24A4AB600();
    v10 = sub_24A4ABCE0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24A376000, v9, v10, "FMFSecureLocationCtrl: Stop remaining locating spinners", v11, 2u);
      MEMORY[0x24C219130](v11, -1, -1);
    }

    v12 = v0[8];

    v13 = *(v12 + 16);
    v14 = MEMORY[0x277D84F90];
    if (v13)
    {
      v15 = v0[9];
      v26 = v0[10];
      v27 = MEMORY[0x277D84F90];
      v16 = v0[8];
      sub_24A3DBDA8(0, v13, 0);
      v14 = v27;
      v17 = v16 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
      v25 = *(v15 + 72);
      do
      {
        v18 = v0[10];
        sub_24A3A0ADC(v17, v18);
        v19 = *v18;
        v20 = *(v26 + 8);

        sub_24A39A638(v18, type metadata accessor for FMFFriend);
        v22 = *(v27 + 16);
        v21 = *(v27 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_24A3DBDA8((v21 > 1), v22 + 1, 1);
        }

        *(v27 + 16) = v22 + 1;
        v23 = v27 + 16 * v22;
        *(v23 + 32) = v19;
        *(v23 + 40) = v20;
        v17 += v25;
        --v13;
      }

      while (v13);
    }

    v0[20] = v14;
    v24 = v0[17];
    (*(v0[12] + 104))(v0[13], *MEMORY[0x277D08FE0], v0[11]);

    return MEMORY[0x2822009F8](sub_24A3F7324, v24, 0);
  }
}

uint64_t sub_24A3F6FA0()
{
  v1 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);
  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[19];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24A376000, v3, v4, "FMFSecureLocationCtrl: Shallow loading task cancelled", v7, 2u);
    MEMORY[0x24C219130](v7, -1, -1);
  }

  sub_24A4ABBB0();
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  sub_24A378E18(v2, qword_27EF4E260);
  v8 = sub_24A4AB600();
  v9 = sub_24A4ABCE0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_24A376000, v8, v9, "FMFSecureLocationCtrl: Stop remaining locating spinners", v10, 2u);
    MEMORY[0x24C219130](v10, -1, -1);
  }

  v11 = v0[8];

  v12 = *(v11 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v14 = v1[9];
    v27 = v1[10];
    v28 = MEMORY[0x277D84F90];
    v15 = v1[8];
    sub_24A3DBDA8(0, v12, 0);
    v13 = v28;
    v16 = v15 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v17 = *(v14 + 72);
    do
    {
      v18 = v1;
      v19 = v1[10];
      sub_24A3A0ADC(v16, v19);
      v20 = *v19;
      v21 = *(v27 + 8);

      sub_24A39A638(v19, type metadata accessor for FMFFriend);
      v23 = *(v28 + 16);
      v22 = *(v28 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_24A3DBDA8((v22 > 1), v23 + 1, 1);
      }

      *(v28 + 16) = v23 + 1;
      v24 = v28 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      v16 += v17;
      --v12;
      v1 = v18;
    }

    while (v12);
  }

  v1[20] = v13;
  v25 = v1[17];
  (*(v1[12] + 104))(v1[13], *MEMORY[0x277D08FE0], v1[11]);

  return MEMORY[0x2822009F8](sub_24A3F7324, v25, 0);
}

uint64_t sub_24A3F7324()
{
  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  sub_24A3FF864(0, v0[20], v2);

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_24A3F73D4, 0, 0);
}