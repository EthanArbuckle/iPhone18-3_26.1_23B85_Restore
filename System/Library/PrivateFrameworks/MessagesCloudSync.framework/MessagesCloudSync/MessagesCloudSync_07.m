uint64_t initializeBufferWithCopyOfBuffer for ImportSummary.TypeSummary.StateCount(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ImportSummary.TypeSummary.StateCount(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for ImportSummary.TypeSummary.StateCount(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_22B9C3B28(uint64_t *a1)
{
  v2 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v22[-v5];
  v7 = type metadata accessor for ActionRecord();
  v8 = (a1 + *(v7 + 68));
  v10 = *v8;
  v9 = v8[1];
  if (v9)
  {
    sub_22B9349C8(&qword_27D8D5110, &unk_22BA15140);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22BA13CB0;
    *(inited + 32) = 0x6E6F737265505A46;
    *(inited + 40) = 0xEA00000000004449;
    *(inited + 48) = v10;
    *(inited + 56) = v9;

    v12 = sub_22B9BB884(inited);
    swift_setDeallocating();
    sub_22B967A40(inited + 32);
    sub_22B98BF80(v12);

    v13 = sub_22BA0FF5C();
  }

  else
  {
    v13 = 0;
  }

  sub_22B94498C(a1 + *(v7 + 64), v6);
  v14 = sub_22BA0FD8C();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v6, 1, v14) != 1)
  {
    v16 = sub_22BA0FCFC();
    (*(v15 + 8))(v6, v14);
  }

  if (a1[1])
  {
    v17 = *a1;
    v18 = sub_22BA0FFCC();
    if (a1[3])
    {
      goto LABEL_8;
    }
  }

  else
  {
    v18 = 0;
    if (a1[3])
    {
LABEL_8:
      v19 = a1[2];
      v20 = sub_22BA0FFCC();
      if (!v9)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  v20 = 0;
  if (v9)
  {
LABEL_9:
    v9 = sub_22BA0FFCC();
  }

LABEL_10:
  v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSenderInfo:v13 time:v16 guid:v18 messageID:0 account:0 accountID:0 service:v20 handle:v9 roomName:0 unformattedID:0 countryCode:0 type:2];

  if (v21)
  {
    sub_22B9752A4(a1);
  }

  else
  {
    __break(1u);
  }
}

void sub_22B9C3DF8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = [v4 groupTitle];
    [v3 setTitle_];

    sub_22B977794();
    if (v6)
    {
      osloga = sub_22BA0FFCC();

      [v3 setOtherHandle_];
    }

    else
    {
      [v3 setOtherHandle_];
    }
  }

  else
  {
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v9 = sub_22BA0FEFC();
    sub_22B936CA8(v9, qword_28141AD10);

    oslog = sub_22BA0FEDC();
    v10 = sub_22BA1044C();

    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_22B99153C(a2, a3, &v15);
      _os_log_impl(&dword_22B92A000, oslog, v10, "No Proto for IMGroupTitleChangeItem %s", v11, 0xCu);
      sub_22B936C4C(v12);
      MEMORY[0x23189ADD0](v12, -1, -1);
      MEMORY[0x23189ADD0](v11, -1, -1);
    }
  }
}

uint64_t sub_22B9C4068()
{
  v0 = sub_22B9349C8(&qword_27D8D5210, qword_22BA16040);
  sub_22B9C40C0(v0, qword_28141ACD0);
  v1 = sub_22B936CA8(v0, qword_28141ACD0);
  return sub_22B9C4124(v1);
}

uint64_t *sub_22B9C40C0(uint64_t a1, uint64_t *a2)
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

uint64_t sub_22B9C4124@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SyncStore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  if (qword_281415E28 != -1)
  {
    swift_once();
  }

  v4 = sub_22BA0FFCC();
  v5 = sub_22BA0FFCC();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_22BA0FC0C();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_22BA0FC4C();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

uint64_t sub_22B9C4280()
{
  sub_22B936C4C((v0 + 16));
  v1 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_identifier;
  v2 = sub_22BA0FDCC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_startDate;
  v4 = sub_22BA0FD8C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_22B936C4C((v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity));
  sub_22B936C4C((v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState));
  sub_22B936C4C((v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase));
  v5 = *(v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_syncDatabase);
  swift_unknownObjectRelease();
  v6 = *(v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_delegate);
  swift_unknownObjectRelease();
  v7 = *(v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_notifiers);

  v8 = *(v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_osActivity);

  sub_22B936C4C((v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_fileProvider));
  sub_22B936C4C((v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_telemetryService));
  v9 = *(v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);

  sub_22B936C4C((v0 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore));
  return v0;
}

uint64_t sub_22B9C43D8()
{
  sub_22B9C4280();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SyncContext()
{
  result = qword_281416638;
  if (!qword_281416638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B9C4484()
{
  result = sub_22BA0FDCC();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_22BA0FD8C();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_22B9C45AC()
{
  type metadata accessor for RemoteRecord();
  sub_22B9349C8(&qword_27D8D5860, qword_22BA18DC8);
  result = sub_22BA1004C();
  qword_28141ADE8 = result;
  unk_28141ADF0 = v1;
  return result;
}

id sub_22B9C4680()
{
  result = sub_22B9C46A0();
  qword_28141ACC8 = result;
  return result;
}

id sub_22B9C46A0()
{
  v0 = sub_22B9349C8(&qword_27D8D5210, qword_22BA16040);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v28 - v3;
  v5 = sub_22BA0FC4C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281414AF0 != -1)
  {
    swift_once();
  }

  v11 = sub_22B936CA8(v0, qword_28141ACD0);
  sub_22B9AE680(v11, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_22B9C4AEC(v4);
LABEL_13:
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v22 = sub_22BA0FEFC();
    sub_22B936CA8(v22, qword_28141AD40);
    v23 = sub_22BA0FEDC();
    v24 = sub_22BA1044C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_22B92A000, v23, v24, "Error: failed to load object model for SyncContainer", v25, 2u);
      MEMORY[0x23189ADD0](v25, -1, -1);
    }

    if (qword_281415E28 != -1)
    {
      swift_once();
    }

    v26 = objc_allocWithZone(MEMORY[0x277CBE4A0]);
    v14 = sub_22BA0FFCC();
    v21 = [v26 initWithName_];
    goto LABEL_20;
  }

  (*(v6 + 32))(v10, v4, v5);
  v12 = objc_allocWithZone(MEMORY[0x277CBE450]);
  v13 = sub_22BA0FBBC();
  v14 = [v12 initWithContentsOfURL_];

  (*(v6 + 8))(v10, v5);
  if (!v14)
  {
    goto LABEL_13;
  }

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v15 = sub_22BA0FEFC();
  sub_22B936CA8(v15, qword_28141AD40);
  v16 = sub_22BA0FEDC();
  v17 = sub_22BA1046C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_22B92A000, v16, v17, "Loaded object model for SyncContainer", v18, 2u);
    MEMORY[0x23189ADD0](v18, -1, -1);
  }

  if (qword_281415E28 != -1)
  {
    swift_once();
  }

  v19 = objc_allocWithZone(MEMORY[0x277CBE4A0]);
  v20 = sub_22BA0FFCC();
  v21 = [v19 initWithName:v20 managedObjectModel:v14];

LABEL_20:
  return v21;
}

uint64_t sub_22B9C4AEC(uint64_t a1)
{
  v2 = sub_22B9349C8(&qword_27D8D5210, qword_22BA16040);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B9C4B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x800000022BA1E1E0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_22BA10C6C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_22B9C4C04(uint64_t a1)
{
  v2 = sub_22B9C53E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B9C4C40(uint64_t a1)
{
  v2 = sub_22B9C53E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B9C4C7C(void *a1)
{
  v3 = sub_22B9349C8(&qword_27D8D5890, &qword_22BA18E70);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22B9C551C();
  sub_22BA10D9C();
  v13 = 0;
  sub_22BA10BDC();
  if (!v1)
  {
    v12 = 1;
    sub_22BA10BDC();
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_22B9C4E04(void *a1, uint64_t a2)
{
  v4 = sub_22B9349C8(&qword_27D8D5868, &qword_22BA18E60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22B9C53E8();
  sub_22BA10D9C();
  v12[1] = a2;
  sub_22B9349C8(&qword_27D8D5878, &qword_22BA18E68);
  sub_22B9C543C();
  sub_22BA10BEC();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_22B9C4F7C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000011;
  }

  else
  {
    v4 = 0xD000000000000010;
  }

  if (v3)
  {
    v5 = "h";
  }

  else
  {
    v5 = "byteSizeExceeded";
  }

  if (*a2)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (*a2)
  {
    v7 = "byteSizeExceeded";
  }

  else
  {
    v7 = "h";
  }

  if (v4 == v6 && (v5 | 0x8000000000000000) == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22BA10C6C();
  }

  return v9 & 1;
}

uint64_t sub_22B9C5024()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B9C50A0()
{
  *v0;
  sub_22BA1008C();
}

uint64_t sub_22B9C5108()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B9C5180@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22BA10AAC();

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

void sub_22B9C51E0(unint64_t *a1@<X8>)
{
  v2 = "byteSizeExceeded";
  v3 = 0xD000000000000010;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = "h";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_22B9C526C()
{
  v1 = 0x5365676172657661;
  if (*v0 != 1)
  {
    v1 = 0x69614674696D696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x756F436C61746F74;
  }
}

uint64_t sub_22B9C52DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22B9C57F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22B9C5304(uint64_t a1)
{
  v2 = sub_22B9C551C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B9C5340(uint64_t a1)
{
  v2 = sub_22B9C551C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B9C537C(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = 0;
    v4 = 0;
    v5 = a1 + 32;
    while (1)
    {
      v6 = *(v5 + 8 * v3);
      v7 = __OFADD__(v4, v6);
      v4 += v6;
      if (v7)
      {
        break;
      }

      if (result == ++v3)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_22B9C53E8()
{
  result = qword_27D8D5870;
  if (!qword_27D8D5870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5870);
  }

  return result;
}

unint64_t sub_22B9C543C()
{
  result = qword_27D8D5880;
  if (!qword_27D8D5880)
  {
    sub_22B948760(&qword_27D8D5878, &qword_22BA18E68);
    sub_22B9C54C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5880);
  }

  return result;
}

unint64_t sub_22B9C54C8()
{
  result = qword_27D8D5888;
  if (!qword_27D8D5888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5888);
  }

  return result;
}

unint64_t sub_22B9C551C()
{
  result = qword_27D8D5898;
  if (!qword_27D8D5898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5898);
  }

  return result;
}

uint64_t sub_22B9C5590(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_22B9C55E8()
{
  result = qword_27D8D58A0;
  if (!qword_27D8D58A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D58A0);
  }

  return result;
}

unint64_t sub_22B9C5640()
{
  result = qword_27D8D58A8;
  if (!qword_27D8D58A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D58A8);
  }

  return result;
}

unint64_t sub_22B9C5698()
{
  result = qword_27D8D58B0;
  if (!qword_27D8D58B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D58B0);
  }

  return result;
}

unint64_t sub_22B9C56F0()
{
  result = qword_27D8D58B8;
  if (!qword_27D8D58B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D58B8);
  }

  return result;
}

unint64_t sub_22B9C5748()
{
  result = qword_27D8D58C0;
  if (!qword_27D8D58C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D58C0);
  }

  return result;
}

unint64_t sub_22B9C57A0()
{
  result = qword_27D8D58C8;
  if (!qword_27D8D58C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D58C8);
  }

  return result;
}

uint64_t sub_22B9C57F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F436C61746F74 && a2 == 0xEA0000000000746ELL;
  if (v4 || (sub_22BA10C6C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5365676172657661 && a2 == 0xEB00000000657A69 || (sub_22BA10C6C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69614674696D696CLL && a2 == 0xEC0000006572756CLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_22BA10C6C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_22B9C5930()
{
  result = qword_27D8D58D0;
  if (!qword_27D8D58D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D58D0);
  }

  return result;
}

unint64_t sub_22B9C5984()
{
  result = qword_27D8D58D8;
  if (!qword_27D8D58D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D58D8);
  }

  return result;
}

uint64_t type metadata accessor for ActionRecord()
{
  result = qword_281415F40;
  if (!qword_281415F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22B9C5A6C()
{
  sub_22B9651AC(319, &qword_281414C40);
  if (v0 <= 0x3F)
  {
    sub_22B934C68();
    if (v1 <= 0x3F)
    {
      sub_22B9651AC(319, qword_281416020);
      if (v2 <= 0x3F)
      {
        sub_22B9651AC(319, &qword_281415E38);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22B9C5BA4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a2;
  v3 = sub_22B9349C8(&qword_27D8D58F8, &qword_22BA19310);
  v141 = *(v3 - 8);
  v142 = v3;
  v4 = *(v141 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v143 = &v135 - v6;
  v7 = sub_22B9349C8(&qword_27D8D4B80, &qword_22BA12C30);
  v144 = *(v7 - 8);
  v145 = v7;
  v8 = *(v144 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v146 = &v135 - v10;
  v11 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v140 = &v135 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v135 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v135 - v21;
  v23 = sub_22B9349C8(&qword_27D8D4B90, &qword_22BA12C40);
  v147 = *(v23 - 8);
  v24 = *(v147 + 64);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v135 - v26;
  v28 = type metadata accessor for ActionRecord();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28, v30);
  v32 = (&v135 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = a1[3];
  v34 = a1[4];
  v149 = a1;
  sub_22B9358B4(a1, v33);
  sub_22B9358F8();
  v35 = v148;
  sub_22BA10D8C();
  if (v35)
  {
    sub_22B936C4C(v149);
    return;
  }

  v36 = v22;
  v37 = v147;
  v138 = v28;
  v148 = v32;
  LOBYTE(v150[0]) = 0;
  v38 = v27;
  v39 = sub_22BA10ACC();
  v40 = v148;
  *v148 = v39;
  v40[1] = v41;
  LOBYTE(v150[0]) = 1;
  v40[2] = sub_22BA10ACC();
  v40[3] = v42;
  LOBYTE(v150[0]) = 2;
  v136 = 0;
  v40[4] = sub_22BA10ACC();
  v40[5] = v43;
  LOBYTE(v150[0]) = 3;
  v40[6] = sub_22BA10ACC();
  v40[7] = v44;
  LOBYTE(v150[0]) = 4;
  v40[8] = sub_22BA10ACC();
  v40[9] = v45;
  LOBYTE(v150[0]) = 5;
  v46 = sub_22BA10ACC();
  v137 = 0;
  v40[10] = v46;
  v40[11] = v47;
  v48 = sub_22BA0FD8C();
  LOBYTE(v150[0]) = 6;
  sub_22B9C7D0C(&unk_281416C00, MEMORY[0x277CC9578]);
  v49 = v137;
  sub_22BA10AFC();
  v137 = v49;
  if (v49)
  {
    (*(v37 + 8))(v38, v23);
    v50 = 0;
    v51 = 0;
    v52 = 0;
    LODWORD(v147) = 0;
    goto LABEL_13;
  }

  sub_22B935A74(v36, v40 + v138[10]);
  LOBYTE(v150[0]) = 7;
  v53 = v137;
  sub_22BA10AFC();
  v137 = v53;
  if (v53)
  {
    (*(v37 + 8))(v38, v23);
    v51 = 0;
    v52 = 0;
    LODWORD(v147) = 0;
    v50 = 1;
    goto LABEL_13;
  }

  v54 = v48;
  sub_22B935A74(v19, v148 + v138[11]);
  LOBYTE(v150[0]) = 8;
  v55 = v137;
  v56 = sub_22BA10ACC();
  v137 = v55;
  if (v55)
  {
    (*(v37 + 8))(v38, v23);
    v52 = 0;
    LODWORD(v147) = 0;
    v50 = 1;
    v51 = 1;
    goto LABEL_13;
  }

  v58 = v38;
  v59 = (v148 + v138[12]);
  *v59 = v56;
  v59[1] = v57;
  v60 = v149[4];
  sub_22B9358B4(v149, v149[3]);
  sub_22B93641C();
  v61 = v137;
  sub_22BA10D8C();
  v137 = v61;
  if (v61)
  {
    (*(v37 + 8))(v38, v23);
    LODWORD(v147) = 0;
    v50 = 1;
    v51 = 1;
    v52 = 1;
    goto LABEL_13;
  }

  LOBYTE(v150[0]) = 0;
  v62 = sub_22BA10ACC();
  v137 = 0;
  v75 = (v148 + v138[13]);
  *v75 = v62;
  v75[1] = v63;
  v155 = 1;
  sub_22B936470();
  v76 = v137;
  sub_22BA10B3C();
  v137 = v76;
  if (v76)
  {
    goto LABEL_31;
  }

  v77 = v149;
  *(v148 + v138[14]) = v150[0];
  v78 = v77[4];
  sub_22B9358B4(v77, v77[3]);
  sub_22B9C7D54();
  v79 = v137;
  sub_22BA10D8C();
  v137 = v79;
  if (v79)
  {
LABEL_31:
    (*(v144 + 8))(v146, v145);
    (*(v37 + 8))(v38, v23);
    v50 = 1;
    v51 = 1;
    v52 = 1;
    LODWORD(v147) = 1;
LABEL_13:
    v64 = v136;
    sub_22B936C4C(v149);
    v65 = v148;
    v66 = v148[1];

    if (!v64)
    {
      v71 = v65[3];
    }

    v67 = v65[5];

    v72 = v65[7];

    v68 = v65[9];

    v73 = v65[11];

    if (v50)
    {
      v69 = v138;
      sub_22B961B24(v65 + v138[10]);
      if (v51)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v69 = v138;
      if (v51)
      {
LABEL_22:
        sub_22B961B24(v65 + v69[11]);
        if ((v52 & 1) == 0)
        {
LABEL_23:
          if (!v147)
          {
            return;
          }

          goto LABEL_24;
        }

LABEL_18:
        v70 = *(v65 + v69[12] + 8);

        if ((v147 & 1) == 0)
        {
          return;
        }

LABEL_24:
        v74 = *(v65 + v69[13] + 8);

        return;
      }
    }

    if (!v52)
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  v155 = 1;
  sub_22B978580();
  v80 = v137;
  sub_22BA10B3C();
  v137 = v80;
  if (v80 || (*(v148 + v138[15]) = v150[0], LOBYTE(v150[0]) = 0, v81 = v137, v82 = sub_22BA10B0C(), (v137 = v81) != 0))
  {
    (*(v141 + 8))(v143, v142);
    goto LABEL_31;
  }

  v84 = v83;
  v85 = 1;
  v86 = 1;
  if ((v84 & 1) == 0)
  {
    v87 = [objc_opt_self() __im_dateWithNanosecondTimeIntervalSinceReferenceDate_];
    if (!v87)
    {
      __break(1u);
      return;
    }

    v88 = v87;
    sub_22BA0FD5C();

    v86 = 0;
  }

  v89 = v140;
  (*(*(v54 - 8) + 56))(v140, v86, 1, v54);
  sub_22B935A74(v89, v148 + v138[16]);
  LOBYTE(v150[0]) = 1;
  v90 = v137;
  v91 = sub_22BA10ACC();
  v93 = v90;
  if (v90)
  {
    (*(v141 + 8))(v143, v142);
    (*(v144 + 8))(v146, v145);
    (*(v37 + 8))(v58, v23);
    v94 = 0;
    v95 = 0;
    v85 = 0;
    v96 = 0;
    v137 = v90;
    goto LABEL_44;
  }

  v97 = (v148 + v138[17]);
  *v97 = v91;
  v97[1] = v92;
  LOBYTE(v150[0]) = 2;
  v98 = sub_22BA10ACC();
  v137 = 0;
  v99 = (v148 + v138[18]);
  *v99 = v98;
  v99[1] = v100;
  LOBYTE(v150[0]) = 3;
  v101 = v137;
  v102 = sub_22BA10ACC();
  v137 = v101;
  if (v101)
  {
    (*(v141 + 8))(v143, v142);
    (*(v144 + 8))(v146, v145);
    (*(v37 + 8))(v58, v23);
    v95 = 0;
    v85 = 0;
    v96 = 0;
    v94 = 1;
    goto LABEL_44;
  }

  v104 = (v148 + v138[19]);
  *v104 = v102;
  v104[1] = v103;
  sub_22B935B38(v149, v150);
  v105 = v137;
  sub_22B977E78(v150, v151);
  v137 = v105;
  if (v105)
  {
    (*(v141 + 8))(v143, v142);
    (*(v144 + 8))(v146, v145);
    (*(v37 + 8))(v58, v23);
    v85 = 0;
LABEL_43:
    v96 = 0;
    v94 = 1;
    v95 = 1;
    goto LABEL_44;
  }

  v106 = v149;
  v107 = v148 + v138[20];
  *v107 = v151[0];
  *(v107 + 8) = v152;
  *(v107 + 24) = v153;
  *(v107 + 40) = v154;
  sub_22B935B38(v106, v150);
  v108 = v137;
  sub_22B9B2FD4(v150);
  v137 = v108;
  if (v108)
  {
    (*(v141 + 8))(v143, v142);
    (*(v144 + 8))(v146, v145);
    (*(v37 + 8))(v58, v23);
    goto LABEL_43;
  }

  v127 = (v148 + v138[21]);
  *v127 = v109;
  v127[1] = v110;
  v127[2] = v111;
  v127[3] = v112;
  LOBYTE(v150[0]) = 4;
  v128 = v137;
  v129 = sub_22BA10ACC();
  v137 = v128;
  if (!v128)
  {
    v131 = v129;
    v132 = v130;
    (*(v141 + 8))(v143, v142);
    (*(v144 + 8))(v146, v145);
    (*(v37 + 8))(v58, v23);
    v133 = v148;
    v134 = (v148 + v138[22]);
    *v134 = v131;
    v134[1] = v132;
    sub_22B9C7DA8(v133, v139);
    sub_22B936C4C(v149);
    sub_22B9752A4(v133);
    return;
  }

  (*(v141 + 8))(v143, v142);
  (*(v144 + 8))(v146, v145);
  (*(v37 + 8))(v58, v23);
  v94 = 1;
  v95 = 1;
  v96 = 1;
LABEL_44:
  sub_22B936C4C(v149);
  v113 = v148;
  v114 = v148[1];

  v115 = v113[3];

  v116 = v113[5];

  v117 = v113[7];

  v118 = v113[9];

  v119 = v113[11];

  v120 = v138;
  sub_22B961B24(v113 + v138[10]);
  sub_22B961B24(v113 + v120[11]);
  v121 = *(v113 + v120[12] + 8);

  v122 = *(v113 + v120[13] + 8);

  sub_22B961B24(v113 + v120[16]);
  if (v93)
  {
    if (v94)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v125 = *(v148 + v138[17] + 8);

    if (v94)
    {
LABEL_46:
      v123 = *(v148 + v138[18] + 8);

      if ((v95 & 1) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_52;
    }
  }

  if (!v95)
  {
LABEL_47:
    if (v85)
    {
      goto LABEL_48;
    }

    goto LABEL_53;
  }

LABEL_52:
  v126 = *(v148 + v138[19] + 8);

  if (v85)
  {
LABEL_48:
    v124 = (v148 + v138[20]);
    sub_22B9C7C98(*v124, v124[1], v124[2], v124[3], v124[4], v124[5], v124[6]);
    if (v96)
    {
      goto LABEL_54;
    }

    return;
  }

LABEL_53:
  if (v96)
  {
LABEL_54:
    sub_22B93594C(*(v148 + v138[21]), *(v148 + v138[21] + 8), *(v148 + v138[21] + 16), *(v148 + v138[21] + 24));
  }
}

uint64_t sub_22B9C6C44()
{
  v1 = *v0;
  sub_22BA10D3C();
  MEMORY[0x23189A3B0](v1 + 3);
  return sub_22BA10D6C();
}

uint64_t sub_22B9C6CBC()
{
  v1 = *v0;
  sub_22BA10D3C();
  MEMORY[0x23189A3B0](v1 + 3);
  return sub_22BA10D6C();
}

uint64_t sub_22B9C6D00@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22B9C7E0C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_22B9C6DA0()
{
  result = qword_27D8D58E0;
  if (!qword_27D8D58E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D58E0);
  }

  return result;
}

uint64_t sub_22B9C6E00()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B9C6EC8()
{
  *v0;
  *v0;
  *v0;
  sub_22BA1008C();
}

uint64_t sub_22B9C6F7C()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B9C7040@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22B9C7FA0();
  *a2 = result;
  return result;
}

void sub_22B9C7070(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701669236;
  v5 = 0xE500000000000000;
  v6 = 0x6469754772;
  v7 = 0xE400000000000000;
  v8 = 1682531172;
  if (v2 != 3)
  {
    v8 = 0x444974616863;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7265646E6573;
    v3 = 0xE600000000000000;
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

uint64_t sub_22B9C70F4()
{
  v1 = *v0;
  v2 = 1701669236;
  v3 = 0x6469754772;
  v4 = 1682531172;
  if (v1 != 3)
  {
    v4 = 0x444974616863;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7265646E6573;
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

uint64_t sub_22B9C7174@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22B9C7FA0();
  *a1 = result;
  return result;
}

uint64_t sub_22B9C71A8(uint64_t a1)
{
  v2 = sub_22B9C7D54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B9C71E4(uint64_t a1)
{
  v2 = sub_22B9C7D54();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_22B9C7220()
{
  v1 = v0;
  v2 = type metadata accessor for ActionRecord();
  v3 = *(*(v2 - 1) + 64);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = (&v129 - v10);
  v12 = *(v1 + *(v9 + 60));
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      sub_22B951A54(0, &qword_27D8D5908, 0x277D1AA50);
      sub_22B9C7DA8(v1, v11);
      sub_22B9E7DF4(v11);
      v14 = v49;
      v50 = (v1 + v2[20]);
      v51 = v50[1];
      if (v51 == 1)
      {
        goto LABEL_19;
      }

      v132 = v7;
      v52 = v50[2];
      v53 = v50[3];
      v54 = v50[4];
      v55 = v50[5];
      v56 = v50[6];
      v131 = *v50;
      v134[0] = v131;
      v135 = v51;
      v136 = v52;
      v137 = v53;
      v138 = v54;
      v139 = v55;
      v140 = v56;
      v57 = v56;
      v58 = v51;
      v59 = v52;
      v60 = v53;
      v130 = v54;
      v61 = v54;
      v129 = v55;
      v62 = v55;
      result = [v14 guid];
      if (result)
      {
        v63 = result;
        v64 = sub_22BA0FFFC();
        v66 = v65;

        sub_22B9E7FA8(v134, v64, v66);

        v68 = v130;
        v67 = v131;
        v69 = v51;
        v70 = v52;
        v71 = v53;
        v72 = v129;
        v73 = v56;
LABEL_18:
        sub_22B9C7C98(v67, v69, v70, v71, v68, v72, v73);
        v7 = v132;
        goto LABEL_19;
      }

      __break(1u);
    }

    else
    {
      if (v12 != 3)
      {
        sub_22B951A54(0, &qword_27D8D5910, 0x277D1A9E0);
        sub_22B9C7DA8(v1, v11);
        sub_22B974F2C(v11);
        v14 = v74;
        v75 = (v1 + v2[20]);
        v16 = v75[1];
        if (v16 == 1)
        {
          goto LABEL_19;
        }

        v76 = *v75;
        v18 = v75[2];
        v19 = v75[3];
        v21 = v75[4];
        v77 = v75[5];
        v78 = v75[6];
        v131 = v76;
        v132 = v7;
        v134[0] = v76;
        v135 = v16;
        v136 = v18;
        v137 = v19;
        v138 = v21;
        v139 = v77;
        v140 = v78;
        v130 = v78;
        v79 = v78;
        v80 = v16;
        v81 = v18;
        v82 = v19;
        v83 = v21;
        v129 = v77;
        v84 = v77;
        result = [v14 guid];
        if (result)
        {
          v85 = result;
          v86 = sub_22BA0FFFC();
          v88 = v87;

          sub_22B9750E0(v134, v86, v88);
          goto LABEL_17;
        }

LABEL_60:
        __break(1u);
        return result;
      }

      sub_22B951A54(0, &qword_27D8D5920, 0x277D1AB28);
      sub_22B9C7DA8(v1, v11);
      sub_22BA0A048(v11);
      v14 = v13;
      v15 = (v1 + v2[20]);
      v16 = v15[1];
      if (v16 == 1)
      {
        goto LABEL_19;
      }

      v17 = *v15;
      v18 = v15[2];
      v19 = v15[3];
      v21 = v15[4];
      v20 = v15[5];
      v22 = v15[6];
      v131 = v17;
      v132 = v7;
      v134[0] = v17;
      v135 = v16;
      v136 = v18;
      v137 = v19;
      v138 = v21;
      v139 = v20;
      v140 = v22;
      v130 = v22;
      v23 = v22;
      v24 = v16;
      v25 = v18;
      v26 = v19;
      v27 = v21;
      v129 = v20;
      v28 = v20;
      result = [v14 guid];
      if (result)
      {
        v30 = result;
        v31 = sub_22BA0FFFC();
        v33 = v32;

        sub_22BA0A2A0(v134, v31, v33);
LABEL_17:

        v73 = v130;
        v67 = v131;
        v69 = v16;
        v70 = v18;
        v71 = v19;
        v68 = v21;
        v72 = v129;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (*(v1 + *(v9 + 60)))
  {
    sub_22B951A54(0, &qword_27D8D5918, 0x277D1AA38);
    sub_22B9C7DA8(v1, v11);
    sub_22B9774B8(v11);
    v14 = v92;
    v89 = v1[3];
    if (v89)
    {
      goto LABEL_20;
    }

LABEL_22:
    v93 = v14;
    goto LABEL_23;
  }

  sub_22B951A54(0, &qword_27D8D5928, 0x277D1A9F0);
  sub_22B9C7DA8(v1, v11);
  sub_22B9C3B28(v11);
  v14 = v34;
  v35 = (v1 + v2[20]);
  v16 = v35[1];
  if (v16 != 1)
  {
    v36 = *v35;
    v18 = v35[2];
    v19 = v35[3];
    v21 = v35[4];
    v37 = v35[5];
    v38 = v35[6];
    v131 = v36;
    v132 = v7;
    v134[0] = v36;
    v135 = v16;
    v136 = v18;
    v137 = v19;
    v138 = v21;
    v139 = v37;
    v140 = v38;
    v130 = v38;
    v39 = v38;
    v40 = v16;
    v41 = v18;
    v42 = v19;
    v43 = v21;
    v129 = v37;
    v44 = v37;
    result = [v14 guid];
    if (result)
    {
      v45 = result;
      v46 = sub_22BA0FFFC();
      v48 = v47;

      sub_22B9C3DF8(v134, v46, v48);
      goto LABEL_17;
    }

    goto LABEL_59;
  }

LABEL_19:
  v89 = v1[3];
  if (!v89)
  {
    goto LABEL_22;
  }

LABEL_20:
  v90 = v1[2];
  v91 = v14;
  v89 = sub_22BA0FFCC();
LABEL_23:
  v94 = &off_27871A000;
  [v14 setService_];

  v95 = (v1 + v2[21]);
  v96 = *v95;
  v97 = v95[3];
  if (v96 != 1 && v97 != 0)
  {
    v99 = v97;
    if ([v99 hasActualService])
    {
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v100 = sub_22BA0FEFC();
      sub_22B936CA8(v100, qword_28141AD40);
      sub_22B9C7DA8(v1, v7);
      v101 = v99;
      v102 = sub_22BA0FEDC();
      v103 = sub_22BA1046C();

      if (os_log_type_enabled(v102, v103))
      {
        v132 = v7;
        v104 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v133 = v131;
        *v104 = 136315394;
        v105 = [v101 actualService];
        if (v105)
        {
          v106 = v105;
          v107 = sub_22BA0FFFC();
          v109 = v108;
        }

        else
        {
          v109 = 0xE300000000000000;
          v107 = 7104878;
        }

        LODWORD(v130) = v103;
        v110 = sub_22B99153C(v107, v109, &v133);

        *(v104 + 4) = v110;
        *(v104 + 12) = 2080;
        v111 = v132;
        if (*(v132 + 3))
        {
          v112 = *(v132 + 2);
          v113 = *(v132 + 3);
          v94 = &off_27871A000;
        }

        else
        {
          v113 = 0xE300000000000000;
          v94 = &off_27871A000;
          v112 = 7104878;
        }

        sub_22B9752A4(v111);
        v114 = sub_22B99153C(v112, v113, &v133);

        *(v104 + 14) = v114;
        _os_log_impl(&dword_22B92A000, v102, v130, "using proto4 service %s over %s", v104, 0x16u);
        v115 = v131;
        swift_arrayDestroy();
        MEMORY[0x23189ADD0](v115, -1, -1);
        MEMORY[0x23189ADD0](v104, -1, -1);
      }

      else
      {

        sub_22B9752A4(v7);
      }

      v99 = [v101 actualService];
      [v14 v94[268]];
    }
  }

  v116 = (v1 + v2[19]);
  if (v116[1])
  {
    v117 = *v116;
    v118 = sub_22BA0FFCC();
  }

  else
  {
    v118 = 0;
  }

  [v14 setDestinationCallerID_];

  v119 = (v1 + v2[18]);
  if (v119[1])
  {
    v120 = *v119;
    v121 = sub_22BA0FFCC();
  }

  else
  {
    v121 = 0;
  }

  [v14 setReplyToGUID_];

  v122 = (v1 + v2[22]);
  if (v122[1])
  {
    v123 = *v122;
    v124 = sub_22BA0FFCC();
  }

  else
  {
    v124 = 0;
  }

  [v14 setCloudKitChatID_];

  if (v1[7])
  {
    v125 = v1[6];
    v126 = sub_22BA0FFCC();
  }

  else
  {
    v126 = 0;
  }

  [v14 setCloudKitRecordID_];

  if (v1[5])
  {
    v127 = v1[4];
    v128 = sub_22BA0FFCC();
  }

  else
  {
    v128 = 0;
  }

  [v14 setCloudKitRecordChangeTag_];

  [v14 setCloudKitSyncState_];
  [v14 setCloudKitServerChangeTokenBlob_];
  return v14;
}

uint64_t sub_22B9C7B00(void *a1)
{
  v2 = sub_22B9349C8(&qword_27D8D5930, &qword_22BA19318);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_22B9358B4(a1, a1[3]);
  sub_22B9C7D54();
  sub_22BA10D9C();
  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_22B9C7C14(uint64_t a1)
{
  *(a1 + 8) = sub_22B9C7D0C(&qword_27D8D58E8, type metadata accessor for ActionRecord);
  result = sub_22B9C7D0C(&qword_27D8D58F0, type metadata accessor for ActionRecord);
  *(a1 + 16) = result;
  return result;
}

void sub_22B9C7C98(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_22B9C7D0C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22B9C7D54()
{
  result = qword_27D8D5900;
  if (!qword_27D8D5900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5900);
  }

  return result;
}

uint64_t sub_22B9C7DA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B9C7E0C(unint64_t a1)
{
  if (a1 >= 8)
  {
    return 5;
  }

  else
  {
    return (0x403020100050505uLL >> (8 * a1));
  }
}

unint64_t sub_22B9C7E34()
{
  result = qword_27D8D5938;
  if (!qword_27D8D5938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5938);
  }

  return result;
}

unint64_t sub_22B9C7E9C()
{
  result = qword_27D8D5940;
  if (!qword_27D8D5940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5940);
  }

  return result;
}

unint64_t sub_22B9C7EF4()
{
  result = qword_27D8D5948;
  if (!qword_27D8D5948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5948);
  }

  return result;
}

unint64_t sub_22B9C7F4C()
{
  result = qword_27D8D5950;
  if (!qword_27D8D5950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D5950);
  }

  return result;
}

uint64_t sub_22B9C7FA0()
{
  v0 = sub_22BA10AAC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22B9C7FF4()
{
  sub_22B95FA40(v8);
  v0 = v9;
  if (v9)
  {
    v1 = v10;
    sub_22B9358B4(v8, v9);
    (*(v1 + 56))(v0, v1);
    v3 = v2;
    sub_22B936C4C(v8);
    v4 = v3;
    v5 = 6;
    if (v4)
    {
      v6 = sub_22B9C2E30();
      if (v6 == 7)
      {
        return 6;
      }

      else
      {
        return v6;
      }
    }
  }

  else
  {
    sub_22B936BEC(v8, &qword_27D8D4FF8, &qword_22BA14748);
    return 6;
  }

  return v5;
}

uint64_t sub_22B9C80B4()
{
  if (qword_281416778 != -1)
  {
    swift_once();
  }

  v0 = xmmword_28141AEB0;
  v1 = objc_opt_self();
  swift_unknownObjectRetain();
  v2 = [v1 defaultManager];
  if (qword_281414F10 != -1)
  {
    swift_once();
  }

  sub_22B935B38(&unk_28141AD68, v19);
  sub_22B943D3C(v19, v19[3]);
  v18[3] = &type metadata for FileManagerProvider;
  v18[4] = &off_283F53B48;
  v17[3] = &type metadata for DatabaseRecordPersistence;
  v17[4] = &off_283F55858;
  v18[0] = v2;
  v3 = type metadata accessor for DatabaseImporter();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  v7 = sub_22B943D3C(v18, &type metadata for FileManagerProvider);
  v8 = *(qword_283F53B18 + 64);
  MEMORY[0x28223BE20](v7, v7);
  v10 = (&v17[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  sub_22B943D3C(v17, &type metadata for DatabaseRecordPersistence);
  v12 = *v10;
  v13 = v2;
  v14 = sub_22B9D5A14(v0, *(&v0 + 1), v12, v6);

  sub_22B936C4C(v17);
  sub_22B936C4C(v18);
  result = sub_22B936C4C(v19);
  qword_28141ADA8 = v14;
  return result;
}

uint64_t sub_22B9C82E0(uint64_t a1, char a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 232) = a7;
  *(v8 + 240) = v7;
  *(v8 + 216) = a3;
  *(v8 + 224) = a6;
  *(v8 + 187) = a5;
  *(v8 + 186) = a4;
  *(v8 + 185) = a2;
  *(v8 + 208) = a1;
  v9 = type metadata accessor for UnknownRecord();
  *(v8 + 248) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 256) = swift_task_alloc();
  updated = type metadata accessor for MessageUpdateRecord();
  *(v8 + 264) = updated;
  v12 = *(*(updated - 8) + 64) + 15;
  *(v8 + 272) = swift_task_alloc();
  v13 = type metadata accessor for RecoverableMessageRecord();
  *(v8 + 280) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v8 + 288) = swift_task_alloc();
  v15 = type metadata accessor for AttachmentRecord();
  *(v8 + 296) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v8 + 304) = swift_task_alloc();
  v17 = type metadata accessor for ItemRecord();
  *(v8 + 312) = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  *(v8 + 320) = swift_task_alloc();
  v19 = type metadata accessor for ChatRecord(0);
  *(v8 + 328) = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  *(v8 + 336) = swift_task_alloc();
  v21 = type metadata accessor for ChatLockRecord();
  *(v8 + 344) = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  *(v8 + 352) = swift_task_alloc();
  v23 = sub_22B9349C8(&qword_27D8D5958, &qword_22BA195D0);
  *(v8 + 360) = v23;
  v24 = *(v23 - 8);
  *(v8 + 368) = v24;
  v25 = *(v24 + 64) + 15;
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();
  v26 = type metadata accessor for DatabaseRecord();
  *(v8 + 392) = v26;
  v27 = *(v26 - 8);
  *(v8 + 400) = v27;
  v28 = *(v27 + 64) + 15;
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = swift_task_alloc();
  *(v8 + 440) = swift_task_alloc();
  *(v8 + 448) = swift_task_alloc();
  *(v8 + 456) = swift_task_alloc();
  *(v8 + 464) = swift_task_alloc();
  *(v8 + 472) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9C85D8, v7, 0);
}

uint64_t sub_22B9C85D8()
{
  v43 = v0;
  if (*(v0 + 187) == 1)
  {
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v1 = sub_22BA0FEFC();
    sub_22B936CA8(v1, qword_28141AD10);
    v2 = sub_22BA0FEDC();
    v3 = sub_22BA1042C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 186);
      v5 = *(v0 + 216);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v42 = v7;
      *v6 = 136315138;
      *(v0 + 192) = v5;
      *(v0 + 200) = v4 & 1;
      v8 = sub_22BA1005C();
      v10 = sub_22B99153C(v8, v9, &v42);

      *(v6 + 4) = v10;
      v11 = "Performing import with tombstoning with batch: %s";
LABEL_10:
      _os_log_impl(&dword_22B92A000, v2, v3, v11, v6, 0xCu);
      sub_22B936C4C(v7);
      MEMORY[0x23189ADD0](v7, -1, -1);
      MEMORY[0x23189ADD0](v6, -1, -1);
    }
  }

  else
  {
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v12 = sub_22BA0FEFC();
    sub_22B936CA8(v12, qword_28141AD10);
    v2 = sub_22BA0FEDC();
    v3 = sub_22BA1042C();
    if (os_log_type_enabled(v2, v3))
    {
      v13 = *(v0 + 186);
      v14 = *(v0 + 216);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v42 = v7;
      *v6 = 136315138;
      *(v0 + 176) = v14;
      *(v0 + 184) = v13 & 1;
      v15 = sub_22BA1005C();
      v17 = sub_22B99153C(v15, v16, &v42);

      *(v6 + 4) = v17;
      v11 = "Performing import, given predicate with batch: %s";
      goto LABEL_10;
    }
  }

  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 208);
  v19 = sub_22BA0FEFC();
  *(v0 + 480) = sub_22B936CA8(v19, qword_28141AD10);
  v20 = v18;
  v21 = sub_22BA0FEDC();
  v22 = sub_22BA1043C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 208);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v23;
    *v25 = v23;
    v26 = v23;
    _os_log_impl(&dword_22B92A000, v21, v22, "Doing remote record query with predicate %@", v24, 0xCu);
    sub_22B936BEC(v25, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v25, -1, -1);
    MEMORY[0x23189ADD0](v24, -1, -1);
  }

  v27 = *(v0 + 186);

  v28 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v29 = sub_22BA0FFCC();
  v30 = [v28 initWithEntityName_];
  *(v0 + 488) = v30;

  if ((v27 & 1) == 0)
  {
    [v30 setFetchLimit_];
  }

  v31 = *(v0 + 240);
  v32 = *(v0 + 208);
  v33 = sub_22BA101DC();
  [v30 setRelationshipKeyPathsForPrefetching_];

  [v30 setPredicate_];
  *(v0 + 496) = *(v31 + 112);
  v34 = *(v31 + 120);
  *(v0 + 504) = v34;
  ObjectType = swift_getObjectType();
  *(v0 + 512) = ObjectType;
  v36 = *(v34 + 48);
  v41 = (v36 + *v36);
  v37 = v36[1];
  v38 = swift_task_alloc();
  *(v0 + 520) = v38;
  v39 = type metadata accessor for RemoteRecord();
  *(v0 + 528) = v39;
  *v38 = v0;
  v38[1] = sub_22B9C8B2C;

  return (v41)(v30, v39, &off_281415E10, &off_283F57740, ObjectType, v34);
}

uint64_t sub_22B9C8B2C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 520);
  v6 = *v2;
  *(v4 + 536) = a1;
  *(v4 + 544) = v1;

  v7 = *(v3 + 240);
  if (v1)
  {
    v8 = sub_22B9CAEB8;
  }

  else
  {
    v8 = sub_22B9C8C64;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22B9C8C64()
{
  v1 = *(v0 + 536);
  v2 = *(v1 + 16);
  *(v0 + 552) = v2;
  if (v2)
  {
    v3 = *(v0 + 400);
    v4 = *(v0 + 368);
    v51 = *(v0 + 360);
    v53 = MEMORY[0x277D84F90];
    sub_22B9680C0(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v49 = *(v4 + 72);
    do
    {
      v6 = *(v0 + 464);
      v8 = *(v0 + 376);
      v7 = *(v0 + 384);
      sub_22B9934AC(v5, v7, &qword_27D8D5958, &qword_22BA195D0);
      sub_22B9D7BE4(v7, v8, &qword_27D8D5958, &qword_22BA195D0);

      sub_22B9D7B1C(v8 + *(v51 + 48), v6, type metadata accessor for DatabaseRecord);
      v10 = *(v53 + 16);
      v9 = *(v53 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_22B9680C0(v9 > 1, v10 + 1, 1);
      }

      *(v0 + 600) = v53;
      v11 = *(v0 + 464);
      *(v53 + 16) = v10 + 1;
      v12 = *(v3 + 80);
      *(v0 + 188) = v12;
      v13 = *(v3 + 72);
      *(v0 + 608) = v13;
      sub_22B9D7B1C(v11, v53 + ((v12 + 32) & ~v12) + v13 * v10, type metadata accessor for DatabaseRecord);
      v5 += v49;
      --v2;
    }

    while (v2);
    v14 = *(v0 + 536);

    v15 = swift_task_alloc();
    *(v0 + 560) = v15;
    *v15 = v0;
    v15[1] = sub_22B9C9074;
    v16 = *(v0 + 232);
    v17 = *(v0 + 240);
    v18 = *(v0 + 224);
    v19 = *(v0 + 185);

    return sub_22B9CE630(v53, v19, v18, v16);
  }

  else
  {
    v21 = *(v0 + 480);
    v22 = *(v0 + 208);

    v23 = v22;
    v24 = sub_22BA0FEDC();
    v25 = sub_22BA1046C();

    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 488);
    if (v26)
    {
      v28 = *(v0 + 208);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v28;
      *v30 = v28;
      v31 = v28;
      _os_log_impl(&dword_22B92A000, v24, v25, "Query to sync store returned empty for predicate: %@", v29, 0xCu);
      sub_22B936BEC(v30, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v30, -1, -1);
      MEMORY[0x23189ADD0](v29, -1, -1);
    }

    v33 = *(v0 + 464);
    v32 = *(v0 + 472);
    v35 = *(v0 + 448);
    v34 = *(v0 + 456);
    v37 = *(v0 + 432);
    v36 = *(v0 + 440);
    v38 = *(v0 + 416);
    v39 = *(v0 + 424);
    v40 = *(v0 + 408);
    v41 = *(v0 + 384);
    v43 = *(v0 + 376);
    v44 = *(v0 + 352);
    v45 = *(v0 + 336);
    v46 = *(v0 + 320);
    v47 = *(v0 + 304);
    v48 = *(v0 + 288);
    v50 = *(v0 + 272);
    v52 = *(v0 + 256);

    v42 = *(v0 + 8);

    return v42(0);
  }
}

uint64_t sub_22B9C9074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = *(*v3 + 560);
  v7 = *v3;
  v5[71] = a1;
  v5[72] = a2;
  v5[73] = a3;

  v8 = swift_task_alloc();
  v5[74] = v8;
  *v8 = v7;
  v8[1] = sub_22B9C91D0;
  v9 = v5[30];

  return sub_22B9D295C(a1);
}

uint64_t sub_22B9C91D0()
{
  v1 = *(*v0 + 592);
  v2 = *(*v0 + 240);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B9C92E0, v2, 0);
}

uint64_t sub_22B9C92E0()
{
  v1 = *(*(v0 + 600) + 16);
  if (v1)
  {
    v2 = 0;
    v3 = MEMORY[0x277D84F90];
    do
    {
      v4 = *(v0 + 472);
      v5 = *(v0 + 448);
      v6 = *(v0 + 392);
      sub_22B960B88(*(v0 + 600) + ((*(v0 + 188) + 32) & ~*(v0 + 188)) + *(v0 + 608) * v2, v4);
      sub_22B960B88(v4, v5);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v8 = *(v0 + 448);
      if (EnumCaseMultiPayload <= 2)
      {
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v14 = *(v0 + 328);
            v9 = *(v0 + 336);
            v11 = type metadata accessor for ChatRecord;
            sub_22B9D7B1C(v8, v9, type metadata accessor for ChatRecord);
            *(v0 + 40) = v14;
            v12 = type metadata accessor for ChatRecord;
            v13 = &qword_281416388;
          }

          else
          {
            v17 = *(v0 + 312);
            v9 = *(v0 + 320);
            v11 = type metadata accessor for ItemRecord;
            sub_22B9D7B1C(v8, v9, type metadata accessor for ItemRecord);
            *(v0 + 40) = v17;
            v12 = type metadata accessor for ItemRecord;
            v13 = &qword_2814161A0;
          }
        }

        else
        {
          v16 = *(v0 + 344);
          v9 = *(v0 + 352);
          v11 = type metadata accessor for ChatLockRecord;
          sub_22B9D7B1C(v8, v9, type metadata accessor for ChatLockRecord);
          *(v0 + 40) = v16;
          v12 = type metadata accessor for ChatLockRecord;
          v13 = &qword_27D8D5010;
        }
      }

      else if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload == 5)
        {
          v15 = *(v0 + 264);
          v9 = *(v0 + 272);
          v11 = type metadata accessor for MessageUpdateRecord;
          sub_22B9D7B1C(v8, v9, type metadata accessor for MessageUpdateRecord);
          *(v0 + 40) = v15;
          v12 = type metadata accessor for MessageUpdateRecord;
          v13 = &unk_281415528;
        }

        else
        {
          v19 = *(v0 + 248);
          v9 = *(v0 + 256);
          v11 = type metadata accessor for UnknownRecord;
          sub_22B9D7B1C(v8, v9, type metadata accessor for UnknownRecord);
          *(v0 + 40) = v19;
          v12 = type metadata accessor for UnknownRecord;
          v13 = &unk_27D8D5000;
        }
      }

      else if (EnumCaseMultiPayload == 3)
      {
        v10 = *(v0 + 296);
        v9 = *(v0 + 304);
        v11 = type metadata accessor for AttachmentRecord;
        sub_22B9D7B1C(v8, v9, type metadata accessor for AttachmentRecord);
        *(v0 + 40) = v10;
        v12 = type metadata accessor for AttachmentRecord;
        v13 = &qword_2814159B0;
      }

      else
      {
        v18 = *(v0 + 280);
        v9 = *(v0 + 288);
        v11 = type metadata accessor for RecoverableMessageRecord;
        sub_22B9D7B1C(v8, v9, type metadata accessor for RecoverableMessageRecord);
        *(v0 + 40) = v18;
        v12 = type metadata accessor for RecoverableMessageRecord;
        v13 = &unk_27D8D5008;
      }

      *(v0 + 48) = sub_22B9D7C4C(v13, v12);
      v20 = sub_22B957E80((v0 + 16));
      sub_22B9D7B1C(v9, v20, v11);
      v21 = *(v0 + 40);
      v22 = *(v0 + 472);
      if (v21)
      {
        v23 = *(v0 + 48);
        sub_22B9358B4((v0 + 16), *(v0 + 40));
        v24 = (*(v23 + 48))(v21, v23);
        v26 = v25;
        sub_22B936C4C((v0 + 16));
        sub_22B9D7B84(v22, type metadata accessor for DatabaseRecord);
        if (v26)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_22B97FB74(0, *(v3 + 2) + 1, 1, v3);
          }

          v28 = *(v3 + 2);
          v27 = *(v3 + 3);
          if (v28 >= v27 >> 1)
          {
            v3 = sub_22B97FB74((v27 > 1), v28 + 1, 1, v3);
          }

          *(v3 + 2) = v28 + 1;
          v29 = &v3[16 * v28];
          *(v29 + 4) = v24;
          *(v29 + 5) = v26;
        }
      }

      else
      {
        sub_22B936BEC(v0 + 16, &qword_27D8D4FF8, &qword_22BA14748);
        sub_22B9D7B84(v22, type metadata accessor for DatabaseRecord);
      }

      ++v2;
    }

    while (v1 != v2);
    v30 = *(v0 + 600);
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
  }

  v31 = *(v0 + 568);
  *(v0 + 616) = sub_22BA0197C(v3);

  v32 = *(v31 + 16);
  if (v32)
  {
    v33 = 0;
    v34 = *(v0 + 568) + ((*(v0 + 188) + 32) & ~*(v0 + 188));
    v35 = MEMORY[0x277D84F90];
    do
    {
      v36 = *(v0 + 456);
      v37 = *(v0 + 432);
      v38 = *(v0 + 392);
      sub_22B960B88(v34 + *(v0 + 608) * v33, v36);
      sub_22B960B88(v36, v37);
      v39 = swift_getEnumCaseMultiPayload();
      v40 = *(v0 + 432);
      if (v39 <= 2)
      {
        if (v39)
        {
          if (v39 == 1)
          {
            v46 = *(v0 + 328);
            v41 = *(v0 + 336);
            v43 = type metadata accessor for ChatRecord;
            sub_22B9D7B1C(v40, v41, type metadata accessor for ChatRecord);
            *(v0 + 80) = v46;
            v44 = type metadata accessor for ChatRecord;
            v45 = &qword_281416388;
          }

          else
          {
            v49 = *(v0 + 312);
            v41 = *(v0 + 320);
            v43 = type metadata accessor for ItemRecord;
            sub_22B9D7B1C(v40, v41, type metadata accessor for ItemRecord);
            *(v0 + 80) = v49;
            v44 = type metadata accessor for ItemRecord;
            v45 = &qword_2814161A0;
          }
        }

        else
        {
          v48 = *(v0 + 344);
          v41 = *(v0 + 352);
          v43 = type metadata accessor for ChatLockRecord;
          sub_22B9D7B1C(v40, v41, type metadata accessor for ChatLockRecord);
          *(v0 + 80) = v48;
          v44 = type metadata accessor for ChatLockRecord;
          v45 = &qword_27D8D5010;
        }
      }

      else if (v39 > 4)
      {
        if (v39 == 5)
        {
          v47 = *(v0 + 264);
          v41 = *(v0 + 272);
          v43 = type metadata accessor for MessageUpdateRecord;
          sub_22B9D7B1C(v40, v41, type metadata accessor for MessageUpdateRecord);
          *(v0 + 80) = v47;
          v44 = type metadata accessor for MessageUpdateRecord;
          v45 = &unk_281415528;
        }

        else
        {
          v51 = *(v0 + 248);
          v41 = *(v0 + 256);
          v43 = type metadata accessor for UnknownRecord;
          sub_22B9D7B1C(v40, v41, type metadata accessor for UnknownRecord);
          *(v0 + 80) = v51;
          v44 = type metadata accessor for UnknownRecord;
          v45 = &unk_27D8D5000;
        }
      }

      else if (v39 == 3)
      {
        v42 = *(v0 + 296);
        v41 = *(v0 + 304);
        v43 = type metadata accessor for AttachmentRecord;
        sub_22B9D7B1C(v40, v41, type metadata accessor for AttachmentRecord);
        *(v0 + 80) = v42;
        v44 = type metadata accessor for AttachmentRecord;
        v45 = &qword_2814159B0;
      }

      else
      {
        v50 = *(v0 + 280);
        v41 = *(v0 + 288);
        v43 = type metadata accessor for RecoverableMessageRecord;
        sub_22B9D7B1C(v40, v41, type metadata accessor for RecoverableMessageRecord);
        *(v0 + 80) = v50;
        v44 = type metadata accessor for RecoverableMessageRecord;
        v45 = &unk_27D8D5008;
      }

      *(v0 + 88) = sub_22B9D7C4C(v45, v44);
      v52 = sub_22B957E80((v0 + 56));
      sub_22B9D7B1C(v41, v52, v43);
      v53 = *(v0 + 80);
      v54 = *(v0 + 456);
      if (v53)
      {
        v55 = *(v0 + 88);
        sub_22B9358B4((v0 + 56), *(v0 + 80));
        v56 = (*(v55 + 48))(v53, v55);
        v58 = v57;
        sub_22B936C4C((v0 + 56));
        sub_22B9D7B84(v54, type metadata accessor for DatabaseRecord);
        if (v58)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = sub_22B97FB74(0, *(v35 + 2) + 1, 1, v35);
          }

          v60 = *(v35 + 2);
          v59 = *(v35 + 3);
          if (v60 >= v59 >> 1)
          {
            v35 = sub_22B97FB74((v59 > 1), v60 + 1, 1, v35);
          }

          *(v35 + 2) = v60 + 1;
          v61 = &v35[16 * v60];
          *(v61 + 4) = v56;
          *(v61 + 5) = v58;
        }
      }

      else
      {
        sub_22B936BEC(v0 + 56, &qword_27D8D4FF8, &qword_22BA14748);
        sub_22B9D7B84(v54, type metadata accessor for DatabaseRecord);
      }

      ++v33;
    }

    while (v32 != v33);
  }

  else
  {
    v35 = MEMORY[0x277D84F90];
  }

  v62 = *(v0 + 576);
  *(v0 + 624) = sub_22BA0197C(v35);

  v63 = *(v62 + 16);
  if (v63)
  {
    v64 = 0;
    v65 = *(v0 + 576) + ((*(v0 + 188) + 32) & ~*(v0 + 188));
    v66 = MEMORY[0x277D84F90];
    do
    {
      v67 = *(v0 + 440);
      v68 = *(v0 + 416);
      v69 = *(v0 + 392);
      sub_22B960B88(v65 + *(v0 + 608) * v64, v67);
      sub_22B960B88(v67, v68);
      v70 = swift_getEnumCaseMultiPayload();
      v71 = *(v0 + 416);
      if (v70 <= 2)
      {
        if (v70)
        {
          if (v70 == 1)
          {
            v77 = *(v0 + 328);
            v72 = *(v0 + 336);
            v74 = type metadata accessor for ChatRecord;
            sub_22B9D7B1C(v71, v72, type metadata accessor for ChatRecord);
            *(v0 + 120) = v77;
            v75 = type metadata accessor for ChatRecord;
            v76 = &qword_281416388;
          }

          else
          {
            v80 = *(v0 + 312);
            v72 = *(v0 + 320);
            v74 = type metadata accessor for ItemRecord;
            sub_22B9D7B1C(v71, v72, type metadata accessor for ItemRecord);
            *(v0 + 120) = v80;
            v75 = type metadata accessor for ItemRecord;
            v76 = &qword_2814161A0;
          }
        }

        else
        {
          v79 = *(v0 + 344);
          v72 = *(v0 + 352);
          v74 = type metadata accessor for ChatLockRecord;
          sub_22B9D7B1C(v71, v72, type metadata accessor for ChatLockRecord);
          *(v0 + 120) = v79;
          v75 = type metadata accessor for ChatLockRecord;
          v76 = &qword_27D8D5010;
        }
      }

      else if (v70 > 4)
      {
        if (v70 == 5)
        {
          v78 = *(v0 + 264);
          v72 = *(v0 + 272);
          v74 = type metadata accessor for MessageUpdateRecord;
          sub_22B9D7B1C(v71, v72, type metadata accessor for MessageUpdateRecord);
          *(v0 + 120) = v78;
          v75 = type metadata accessor for MessageUpdateRecord;
          v76 = &unk_281415528;
        }

        else
        {
          v82 = *(v0 + 248);
          v72 = *(v0 + 256);
          v74 = type metadata accessor for UnknownRecord;
          sub_22B9D7B1C(v71, v72, type metadata accessor for UnknownRecord);
          *(v0 + 120) = v82;
          v75 = type metadata accessor for UnknownRecord;
          v76 = &unk_27D8D5000;
        }
      }

      else if (v70 == 3)
      {
        v73 = *(v0 + 296);
        v72 = *(v0 + 304);
        v74 = type metadata accessor for AttachmentRecord;
        sub_22B9D7B1C(v71, v72, type metadata accessor for AttachmentRecord);
        *(v0 + 120) = v73;
        v75 = type metadata accessor for AttachmentRecord;
        v76 = &qword_2814159B0;
      }

      else
      {
        v81 = *(v0 + 280);
        v72 = *(v0 + 288);
        v74 = type metadata accessor for RecoverableMessageRecord;
        sub_22B9D7B1C(v71, v72, type metadata accessor for RecoverableMessageRecord);
        *(v0 + 120) = v81;
        v75 = type metadata accessor for RecoverableMessageRecord;
        v76 = &unk_27D8D5008;
      }

      *(v0 + 128) = sub_22B9D7C4C(v76, v75);
      v83 = sub_22B957E80((v0 + 96));
      sub_22B9D7B1C(v72, v83, v74);
      v84 = *(v0 + 120);
      v85 = *(v0 + 440);
      if (v84)
      {
        v86 = *(v0 + 128);
        sub_22B9358B4((v0 + 96), *(v0 + 120));
        v87 = (*(v86 + 48))(v84, v86);
        v89 = v88;
        sub_22B936C4C((v0 + 96));
        sub_22B9D7B84(v85, type metadata accessor for DatabaseRecord);
        if (v89)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v66 = sub_22B97FB74(0, *(v66 + 2) + 1, 1, v66);
          }

          v91 = *(v66 + 2);
          v90 = *(v66 + 3);
          if (v91 >= v90 >> 1)
          {
            v66 = sub_22B97FB74((v90 > 1), v91 + 1, 1, v66);
          }

          *(v66 + 2) = v91 + 1;
          v92 = &v66[16 * v91];
          *(v92 + 4) = v87;
          *(v92 + 5) = v89;
        }
      }

      else
      {
        sub_22B936BEC(v0 + 96, &qword_27D8D4FF8, &qword_22BA14748);
        sub_22B9D7B84(v85, type metadata accessor for DatabaseRecord);
      }

      ++v64;
    }

    while (v63 != v64);
  }

  else
  {
    v66 = MEMORY[0x277D84F90];
  }

  v93 = *(v0 + 584);
  *(v0 + 632) = sub_22BA0197C(v66);

  v94 = *(v93 + 16);
  if (v94)
  {
    v95 = 0;
    v96 = *(v0 + 584) + ((*(v0 + 188) + 32) & ~*(v0 + 188));
    v97 = MEMORY[0x277D84F90];
    do
    {
      v98 = *(v0 + 424);
      v99 = *(v0 + 408);
      v100 = *(v0 + 392);
      sub_22B960B88(v96 + *(v0 + 608) * v95, v98);
      sub_22B960B88(v98, v99);
      v101 = swift_getEnumCaseMultiPayload();
      v102 = *(v0 + 408);
      if (v101 <= 2)
      {
        if (v101)
        {
          if (v101 == 1)
          {
            v108 = *(v0 + 328);
            v103 = *(v0 + 336);
            v105 = type metadata accessor for ChatRecord;
            sub_22B9D7B1C(v102, v103, type metadata accessor for ChatRecord);
            *(v0 + 160) = v108;
            v106 = type metadata accessor for ChatRecord;
            v107 = &qword_281416388;
          }

          else
          {
            v111 = *(v0 + 312);
            v103 = *(v0 + 320);
            v105 = type metadata accessor for ItemRecord;
            sub_22B9D7B1C(v102, v103, type metadata accessor for ItemRecord);
            *(v0 + 160) = v111;
            v106 = type metadata accessor for ItemRecord;
            v107 = &qword_2814161A0;
          }
        }

        else
        {
          v110 = *(v0 + 344);
          v103 = *(v0 + 352);
          v105 = type metadata accessor for ChatLockRecord;
          sub_22B9D7B1C(v102, v103, type metadata accessor for ChatLockRecord);
          *(v0 + 160) = v110;
          v106 = type metadata accessor for ChatLockRecord;
          v107 = &qword_27D8D5010;
        }
      }

      else if (v101 > 4)
      {
        if (v101 == 5)
        {
          v109 = *(v0 + 264);
          v103 = *(v0 + 272);
          v105 = type metadata accessor for MessageUpdateRecord;
          sub_22B9D7B1C(v102, v103, type metadata accessor for MessageUpdateRecord);
          *(v0 + 160) = v109;
          v106 = type metadata accessor for MessageUpdateRecord;
          v107 = &unk_281415528;
        }

        else
        {
          v113 = *(v0 + 248);
          v103 = *(v0 + 256);
          v105 = type metadata accessor for UnknownRecord;
          sub_22B9D7B1C(v102, v103, type metadata accessor for UnknownRecord);
          *(v0 + 160) = v113;
          v106 = type metadata accessor for UnknownRecord;
          v107 = &unk_27D8D5000;
        }
      }

      else if (v101 == 3)
      {
        v104 = *(v0 + 296);
        v103 = *(v0 + 304);
        v105 = type metadata accessor for AttachmentRecord;
        sub_22B9D7B1C(v102, v103, type metadata accessor for AttachmentRecord);
        *(v0 + 160) = v104;
        v106 = type metadata accessor for AttachmentRecord;
        v107 = &qword_2814159B0;
      }

      else
      {
        v112 = *(v0 + 280);
        v103 = *(v0 + 288);
        v105 = type metadata accessor for RecoverableMessageRecord;
        sub_22B9D7B1C(v102, v103, type metadata accessor for RecoverableMessageRecord);
        *(v0 + 160) = v112;
        v106 = type metadata accessor for RecoverableMessageRecord;
        v107 = &unk_27D8D5008;
      }

      *(v0 + 168) = sub_22B9D7C4C(v107, v106);
      v114 = sub_22B957E80((v0 + 136));
      sub_22B9D7B1C(v103, v114, v105);
      v115 = *(v0 + 160);
      v116 = *(v0 + 424);
      if (v115)
      {
        v117 = *(v0 + 168);
        sub_22B9358B4((v0 + 136), *(v0 + 160));
        v118 = (*(v117 + 48))(v115, v117);
        v120 = v119;
        sub_22B936C4C((v0 + 136));
        sub_22B9D7B84(v116, type metadata accessor for DatabaseRecord);
        if (v120)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v97 = sub_22B97FB74(0, *(v97 + 2) + 1, 1, v97);
          }

          v122 = *(v97 + 2);
          v121 = *(v97 + 3);
          if (v122 >= v121 >> 1)
          {
            v97 = sub_22B97FB74((v121 > 1), v122 + 1, 1, v97);
          }

          *(v97 + 2) = v122 + 1;
          v123 = &v97[16 * v122];
          *(v123 + 4) = v118;
          *(v123 + 5) = v120;
        }
      }

      else
      {
        sub_22B936BEC(v0 + 136, &qword_27D8D4FF8, &qword_22BA14748);
        sub_22B9D7B84(v116, type metadata accessor for DatabaseRecord);
      }

      ++v95;
    }

    while (v94 != v95);
    v124 = *(v0 + 584);
  }

  else
  {
    v125 = *(v0 + 584);

    v97 = MEMORY[0x277D84F90];
  }

  v126 = *(v0 + 187);
  *(v0 + 640) = sub_22BA0197C(v97);

  if (v126)
  {
    v127 = swift_task_alloc();
    *(v0 + 648) = v127;
    *v127 = v0;
    v127[1] = sub_22B9CA7B0;
    v128 = *(v0 + 568);
    v129 = *(v0 + 240);

    return sub_22B9D345C(v128);
  }

  else
  {
    v131 = *(v0 + 624);
    v132 = *(v0 + 616);
    v151 = *(v0 + 504);
    v133 = *(v0 + 240);
    v134 = *(v0 + 187);
    v149 = *(v0 + 632);
    KeyPath = swift_getKeyPath();
    v136 = sub_22B9CE458(KeyPath, v132);

    v137 = objc_allocWithZone(MEMORY[0x277CBE428]);
    v138 = sub_22BA0FFCC();
    v139 = [v137 initWithEntityName_];
    *(v0 + 664) = v139;

    [v139 setPredicate_];
    v140 = swift_allocObject();
    swift_weakInit();
    v141 = swift_allocObject();
    *(v0 + 672) = v141;
    *(v141 + 16) = v140;
    *(v141 + 24) = v131;
    *(v141 + 32) = v134;
    *(v141 + 40) = v149;
    v142 = *(v151 + 72);
    v150 = (v142 + *v142);
    v143 = v142[1];
    v144 = swift_task_alloc();
    *(v0 + 680) = v144;
    *v144 = v0;
    v144[1] = sub_22B9CAB34;
    v145 = *(v0 + 528);
    v147 = *(v0 + 504);
    v146 = *(v0 + 512);
    v148 = *(v0 + 496);

    return (v150)(v139, sub_22B9D7AF8, v141, v145, &off_283F57740, v146, v147);
  }
}

uint64_t sub_22B9CA7B0()
{
  v2 = *v1;
  v3 = *(*v1 + 648);
  v4 = *v1;
  *(*v1 + 656) = v0;

  v5 = *(v2 + 240);
  if (v0)
  {
    v6 = sub_22B9CB144;
  }

  else
  {
    v6 = sub_22B9CA8DC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B9CA8DC()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 616);
  v22 = *(v0 + 504);
  v3 = *(v0 + 240);
  v4 = *(v0 + 187);
  v20 = *(v0 + 632);
  KeyPath = swift_getKeyPath();
  v6 = sub_22B9CE458(KeyPath, v2);

  v7 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v8 = sub_22BA0FFCC();
  v9 = [v7 initWithEntityName_];
  *(v0 + 664) = v9;

  [v9 setPredicate_];
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v0 + 672) = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = v1;
  *(v11 + 32) = v4;
  *(v11 + 40) = v20;
  v12 = *(v22 + 72);
  v21 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v0 + 680) = v14;
  *v14 = v0;
  v14[1] = sub_22B9CAB34;
  v15 = *(v0 + 528);
  v17 = *(v0 + 504);
  v16 = *(v0 + 512);
  v18 = *(v0 + 496);

  return (v21)(v9, sub_22B9D7AF8, v11, v15, &off_283F57740, v16, v17);
}

uint64_t sub_22B9CAB34()
{
  v2 = *v1;
  v3 = *(*v1 + 680);
  v9 = *v1;
  *(*v1 + 688) = v0;

  if (v0)
  {
    v4 = *(v2 + 240);
    v5 = sub_22B9CB414;
  }

  else
  {
    v6 = *(v2 + 672);
    v7 = *(v2 + 240);

    v5 = sub_22B9CAC5C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22B9CAC5C()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 480);

  v4 = sub_22BA0FEDC();
  v5 = sub_22BA1042C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 664);
  v8 = *(v0 + 576);
  v9 = *(v0 + 568);
  v10 = *(v0 + 488);
  if (v6)
  {
    v11 = *(v0 + 187);
    v12 = swift_slowAlloc();
    *v12 = 134218496;
    v13 = *(v9 + 16);

    *(v12 + 4) = v13;

    *(v12 + 12) = 2048;
    v14 = *(v8 + 16);

    *(v12 + 14) = v14;

    *(v12 + 22) = 1024;
    *(v12 + 24) = v11;
    _os_log_impl(&dword_22B92A000, v4, v5, "Successfully imported %ld records, had %ld unsupported records, did tombstone? %{BOOL}d", v12, 0x1Cu);
    MEMORY[0x23189ADD0](v12, -1, -1);
  }

  else
  {
    v15 = *(v0 + 576);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v36 = *(v0 + 552);
  v17 = *(v0 + 464);
  v16 = *(v0 + 472);
  v19 = *(v0 + 448);
  v18 = *(v0 + 456);
  v20 = *(v0 + 432);
  v21 = *(v0 + 440);
  v23 = *(v0 + 416);
  v22 = *(v0 + 424);
  v24 = *(v0 + 408);
  v25 = *(v0 + 384);
  v28 = *(v0 + 376);
  v29 = *(v0 + 352);
  v30 = *(v0 + 336);
  v31 = *(v0 + 320);
  v32 = *(v0 + 304);
  v33 = *(v0 + 288);
  v34 = *(v0 + 272);
  v35 = *(v0 + 256);

  v26 = *(v0 + 8);

  return v26(v36);
}

uint64_t sub_22B9CAEB8()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 480);
  v3 = *(v0 + 208);
  sub_22B975FD8(0, v1, 0, 0);
  v4 = v3;
  v5 = v1;
  v6 = sub_22BA0FEDC();
  v7 = sub_22BA1044C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 208);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v8;
    *v10 = v12;
    v10[1] = v8;
    v13 = v8;
    _os_log_impl(&dword_22B92A000, v6, v7, "Failed query: %@ for predicate: %@, batch size: none", v9, 0x16u);
    sub_22B9349C8(&qword_27D8D4CD0, qword_22BA14360);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v10, -1, -1);
    MEMORY[0x23189ADD0](v9, -1, -1);
  }

  else
  {
  }

  v15 = *(v0 + 464);
  v14 = *(v0 + 472);
  v17 = *(v0 + 448);
  v16 = *(v0 + 456);
  v19 = *(v0 + 432);
  v18 = *(v0 + 440);
  v20 = *(v0 + 416);
  v21 = *(v0 + 424);
  v22 = *(v0 + 408);
  v23 = *(v0 + 384);
  v26 = *(v0 + 376);
  v27 = *(v0 + 352);
  v28 = *(v0 + 336);
  v29 = *(v0 + 320);
  v30 = *(v0 + 304);
  v31 = *(v0 + 288);
  v32 = *(v0 + 272);
  v33 = *(v0 + 256);

  v24 = *(v0 + 8);

  return v24(0);
}

uint64_t sub_22B9CB144()
{
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[77];
  v5 = v0[72];
  v6 = v0[71];
  v7 = v0[61];

  v8 = v0[82];
  v9 = v0[60];
  v10 = v0[26];
  sub_22B975FD8(0, v8, 0, 0);
  v11 = v10;
  v12 = v8;
  v13 = sub_22BA0FEDC();
  v14 = sub_22BA1044C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = v0[26];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412546;
    v18 = v8;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v19;
    *(v16 + 12) = 2112;
    *(v16 + 14) = v15;
    *v17 = v19;
    v17[1] = v15;
    v20 = v15;
    _os_log_impl(&dword_22B92A000, v13, v14, "Failed query: %@ for predicate: %@, batch size: none", v16, 0x16u);
    sub_22B9349C8(&qword_27D8D4CD0, qword_22BA14360);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v17, -1, -1);
    MEMORY[0x23189ADD0](v16, -1, -1);
  }

  else
  {
  }

  v22 = v0[58];
  v21 = v0[59];
  v24 = v0[56];
  v23 = v0[57];
  v26 = v0[54];
  v25 = v0[55];
  v27 = v0[52];
  v28 = v0[53];
  v29 = v0[51];
  v30 = v0[48];
  v33 = v0[47];
  v34 = v0[44];
  v35 = v0[42];
  v36 = v0[40];
  v37 = v0[38];
  v38 = v0[36];
  v39 = v0[34];
  v40 = v0[32];

  v31 = v0[1];

  return v31(0);
}

uint64_t sub_22B9CB414()
{
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[61];

  v6 = v0[86];
  v7 = v0[60];
  v8 = v0[26];
  sub_22B975FD8(0, v6, 0, 0);
  v9 = v8;
  v10 = v6;
  v11 = sub_22BA0FEDC();
  v12 = sub_22BA1044C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[26];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412546;
    v16 = v6;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v13;
    *v15 = v17;
    v15[1] = v13;
    v18 = v13;
    _os_log_impl(&dword_22B92A000, v11, v12, "Failed query: %@ for predicate: %@, batch size: none", v14, 0x16u);
    sub_22B9349C8(&qword_27D8D4CD0, qword_22BA14360);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v15, -1, -1);
    MEMORY[0x23189ADD0](v14, -1, -1);
  }

  else
  {
  }

  v20 = v0[58];
  v19 = v0[59];
  v22 = v0[56];
  v21 = v0[57];
  v24 = v0[54];
  v23 = v0[55];
  v25 = v0[52];
  v26 = v0[53];
  v27 = v0[51];
  v28 = v0[48];
  v31 = v0[47];
  v32 = v0[44];
  v33 = v0[42];
  v34 = v0[40];
  v35 = v0[38];
  v36 = v0[36];
  v37 = v0[34];
  v38 = v0[32];

  v29 = v0[1];

  return v29(0);
}

uint64_t sub_22B9CB6C8()
{
  v1 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v2 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v1 - 8, v3);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v28[-v8];
  v10 = sub_22BA0FD8C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v28[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v28[-v18];
  v20 = OBJC_IVAR____TtC17MessagesCloudSync16DatabaseImporter_lastImportProgressDate;
  swift_beginAccess();
  sub_22B9934AC(v0 + v20, v9, &unk_27D8D4A90, &qword_22BA126A0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_22B936BEC(v9, &unk_27D8D4A90, &qword_22BA126A0);
    sub_22BA0FD6C();
    v21 = 1;
    (*(v11 + 56))(v6, 0, 1, v10);
    swift_beginAccess();
    sub_22B9D7A7C(v6, v0 + v20);
    swift_endAccess();
    return v21;
  }

  (*(v11 + 32))(v19, v9, v10);
  sub_22BA0FD6C();
  result = sub_22BA0FCEC();
  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v23 < 9.22337204e18)
  {
    v24 = v23;
    v25 = sub_22BA0FFCC();
    v26 = IMBagIntValueWithDefault();

    v27 = *(v11 + 8);
    v27(v16, v10);
    v27(v19, v10);
    return v26 <= v24;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_22B9CB9CC(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = *(*(sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9CBA6C, v2, 0);
}

uint64_t sub_22B9CBA6C()
{
  v1 = v0[15];
  KeyPath = swift_getKeyPath();
  v3 = sub_22B9A7818(KeyPath, 1);

  v4 = swift_getKeyPath();
  v5 = sub_22B9A7C48(v4, 0xD000000000000012, 0x800000022BA1B9F0);

  sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22BA17B40;
  *(v6 + 32) = v3;
  *(v6 + 40) = v5;
  v7 = objc_allocWithZone(MEMORY[0x277CCA920]);
  sub_22B9A90E8();
  v8 = v3;
  v9 = v5;
  v10 = sub_22BA101DC();

  v11 = [v7 initWithType:1 subpredicates:v10];
  v0[17] = v11;

  v12 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v13 = sub_22BA0FFCC();
  v14 = [v12 initWithEntityName_];
  v0[18] = v14;

  [v14 setFetchLimit_];
  [v14 setPredicate_];
  v0[19] = OBJC_IVAR____TtC17MessagesCloudSync16DatabaseImporter_lastImportProgressDate;
  v0[20] = *(v1 + 112);
  v15 = *(v1 + 120);
  v0[21] = v15;
  v0[22] = swift_getObjectType();
  v0[23] = *(v15 + 56);
  v0[24] = (v15 + 56) & 0xFFFFFFFFFFFFLL | 0x997000000000000;
  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v16 = v0[17];
  v17 = sub_22BA0FEFC();
  v0[25] = sub_22B936CA8(v17, qword_28141AD10);
  v18 = v16;
  v19 = sub_22BA0FEDC();
  v20 = sub_22BA1043C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = v0[17];
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v21;
    *v23 = v21;
    v24 = v21;
    _os_log_impl(&dword_22B92A000, v19, v20, "Running RemoteRecord query for completed message GUIDs with predicate %@", v22, 0xCu);
    sub_22B936BEC(v23, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v23, -1, -1);
    MEMORY[0x23189ADD0](v22, -1, -1);
  }

  v25 = v0[23];
  v26 = v0[24];

  v35 = (v25 + *v25);
  v27 = v25[1];
  v28 = swift_task_alloc();
  v0[26] = v28;
  *v28 = v0;
  v28[1] = sub_22B9CBE3C;
  v29 = v0[24];
  v31 = v0[21];
  v30 = v0[22];
  v32 = v0[20];
  v33 = v0[18];

  return v35(v33, v30, v31);
}

uint64_t sub_22B9CBE3C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  *(v4 + 216) = a1;
  *(v4 + 224) = v1;

  v7 = *(v3 + 120);
  if (v1)
  {
    v8 = sub_22B9CD490;
  }

  else
  {
    v8 = sub_22B9CBF70;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22B9CBF70()
{
  v1 = v0[27];
  v2 = v0[25];
  if (*(v1 + 16))
  {
    v3 = v0[27];

    v4 = sub_22BA0FEDC();
    v5 = sub_22BA1046C();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[27];
    if (v6)
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = *(v1 + 16);

      _os_log_impl(&dword_22B92A000, v4, v5, "Found %ld message GUIDs to look for stragglers for", v8, 0xCu);
      MEMORY[0x23189ADD0](v8, -1, -1);
    }

    else
    {
      v13 = v0[27];
    }

    v14 = swift_task_alloc();
    v0[29] = v14;
    *v14 = v0;
    v14[1] = sub_22B9CC180;
    v15 = v0[27];
    v16 = v0[14];
    v17 = v0[15];
    v18 = v0[13];

    return sub_22B9CD584(v15, 2, v18, v16);
  }

  else
  {
    v9 = v0[27];

    v10 = sub_22BA0FEDC();
    v11 = sub_22BA1046C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22B92A000, v10, v11, "No completed message GUIDs found to search for straggling sub records for", v12, 2u);
      MEMORY[0x23189ADD0](v12, -1, -1);
    }

    return MEMORY[0x2822009F8](sub_22B9CD1C8, 0, 0);
  }
}

uint64_t sub_22B9CC180()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B9CC290, v2, 0);
}

uint64_t sub_22B9CC290()
{
  v1 = v0[27];
  v2 = v0[25];

  v3 = sub_22BA0FEDC();
  v4 = sub_22BA1046C();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[27];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&dword_22B92A000, v3, v4, "Marking %ld messages as being re-written", v7, 0xCu);
    MEMORY[0x23189ADD0](v7, -1, -1);
  }

  else
  {
    v8 = v0[27];
  }

  v9 = v0[27];
  v30 = v0[21];
  v10 = v0[15];
  v0[11] = 1684632935;
  v0[12] = 0xE400000000000000;
  MEMORY[0x231899730](0x4025204E4920, 0xE600000000000000);
  v11 = v0[11];
  v12 = v0[12];
  sub_22B9349C8(&qword_27D8D5170, &unk_22BA19630);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22BA13CB0;
  *(v13 + 56) = sub_22B9349C8(&qword_27D8D5960, &unk_22BA1AA20);
  *(v13 + 32) = v9;

  v14 = sub_22BA0FFCC();

  v15 = sub_22BA101DC();

  v16 = [objc_opt_self() predicateWithFormat:v14 argumentArray:v15];

  v17 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v18 = sub_22BA0FFCC();
  v19 = [v17 initWithEntityName_];
  v0[30] = v19;

  [v19 setPredicate_];
  v20 = swift_allocObject();
  v0[31] = v20;
  swift_weakInit();
  v21 = *(v30 + 72);
  v29 = (v21 + *v21);
  v22 = v21[1];
  v23 = swift_task_alloc();
  v0[32] = v23;
  v24 = type metadata accessor for RemoteRecord();
  *v23 = v0;
  v23[1] = sub_22B9CC61C;
  v26 = v0[21];
  v25 = v0[22];
  v27 = v0[20];

  return (v29)(v19, sub_22B9D7D04, v20, v24, &off_283F57740, v25, v26);
}

uint64_t sub_22B9CC61C()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v9 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = *(v2 + 120);
    v5 = sub_22B9CD500;
  }

  else
  {
    v6 = *(v2 + 248);
    v7 = *(v2 + 120);

    v5 = sub_22B9CC744;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22B9CC744()
{
  v1 = *(v0 + 120);
  if (sub_22B9CB6C8())
  {
    v2 = *(v0 + 200);
    v3 = sub_22BA0FEDC();
    v4 = sub_22BA1046C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22B92A000, v3, v4, "Broadcasting import progress", v5, 2u);
      MEMORY[0x23189ADD0](v5, -1, -1);
    }

    v6 = *(v0 + 152);
    v8 = *(v0 + 120);
    v7 = *(v0 + 128);

    sub_22BA0FD6C();
    v9 = sub_22BA0FD8C();
    (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
    swift_beginAccess();
    sub_22B9D7A7C(v7, v8 + v6);
    swift_endAccess();

    return MEMORY[0x2822009F8](sub_22B9CCBF8, 0, 0);
  }

  else
  {
    v10 = *(v0 + 264);
    v11 = *(v0 + 104);
    sub_22B97EAEC();
    if (v10)
    {
      v12 = v10;
      v13 = *(v0 + 200);
      v14 = v10;
      v15 = sub_22BA0FEDC();
      v16 = sub_22BA1042C();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        v19 = v12;
        v20 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 4) = v20;
        *v18 = v20;
        _os_log_impl(&dword_22B92A000, v15, v16, "Importer stopping work due to %@", v17, 0xCu);
        sub_22B936BEC(v18, &qword_27D8D4CD0, qword_22BA14360);
        MEMORY[0x23189ADD0](v18, -1, -1);
        MEMORY[0x23189ADD0](v17, -1, -1);
      }

      v21 = *(v0 + 240);
      v23 = *(v0 + 136);
      v22 = *(v0 + 144);

      swift_willThrow();
      v24 = *(v0 + 128);

      v25 = *(v0 + 8);

      return v25();
    }

    else
    {

      if (qword_281414D18 != -1)
      {
        swift_once();
      }

      v26 = *(v0 + 136);
      v27 = sub_22BA0FEFC();
      *(v0 + 200) = sub_22B936CA8(v27, qword_28141AD10);
      v28 = v26;
      v29 = sub_22BA0FEDC();
      v30 = sub_22BA1043C();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = *(v0 + 136);
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        *(v32 + 4) = v31;
        *v33 = v31;
        v34 = v31;
        _os_log_impl(&dword_22B92A000, v29, v30, "Running RemoteRecord query for completed message GUIDs with predicate %@", v32, 0xCu);
        sub_22B936BEC(v33, &qword_27D8D4CD0, qword_22BA14360);
        MEMORY[0x23189ADD0](v33, -1, -1);
        MEMORY[0x23189ADD0](v32, -1, -1);
      }

      v35 = *(v0 + 184);
      v36 = *(v0 + 192);

      v45 = (v35 + *v35);
      v37 = v35[1];
      v38 = swift_task_alloc();
      *(v0 + 208) = v38;
      *v38 = v0;
      v38[1] = sub_22B9CBE3C;
      v39 = *(v0 + 192);
      v41 = *(v0 + 168);
      v40 = *(v0 + 176);
      v42 = *(v0 + 160);
      v43 = *(v0 + 144);

      return v45(v43, v40, v41);
    }
  }
}

uint64_t sub_22B9CCBF8()
{
  v1 = *(*(v0 + 104) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
  *(v0 + 272) = v1;
  return MEMORY[0x2822009F8](sub_22B9CCC28, v1, 0);
}

uint64_t sub_22B9CCC28()
{
  v1 = *(v0 + 272);
  swift_beginAccess();
  *(v0 + 280) = *(v1 + 120);
  *(v0 + 288) = *(v1 + 128);
  *(v0 + 320) = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_22B9CCCB8, 0, 0);
}

uint64_t sub_22B9CCCB8()
{
  v1 = *sub_22B9358B4((*(v0 + 104) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore), *(*(v0 + 104) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore + 24));

  return MEMORY[0x2822009F8](sub_22B9CCD34, v1, 0);
}

uint64_t sub_22B9CCD34()
{
  sub_22B9E45D8(*(v0 + 280), *(v0 + 288), 0);

  return MEMORY[0x2822009F8](sub_22B9CCDA0, 0, 0);
}

uint64_t sub_22B9CCDA0()
{
  v1 = *(v0 + 320);
  v3 = *(v0 + 280);
  v2 = *(v0 + 288);
  v4 = *(v0 + 120);
  v5 = *sub_22B9358B4((*(v0 + 104) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(*(v0 + 104) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  sub_22BA0980C(v3, v2, v1);

  return MEMORY[0x2822009F8](sub_22B9CCE4C, v4, 0);
}

uint64_t sub_22B9CCE4C()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 104);
  sub_22B97EAEC();
  if (v1)
  {
    v3 = v1;
    v4 = *(v0 + 200);
    v5 = v1;
    v6 = sub_22BA0FEDC();
    v7 = sub_22BA1042C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = v3;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_22B92A000, v6, v7, "Importer stopping work due to %@", v8, 0xCu);
      sub_22B936BEC(v9, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v9, -1, -1);
      MEMORY[0x23189ADD0](v8, -1, -1);
    }

    v12 = *(v0 + 240);
    v14 = *(v0 + 136);
    v13 = *(v0 + 144);

    swift_willThrow();
    v15 = *(v0 + 128);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {

    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 136);
    v19 = sub_22BA0FEFC();
    *(v0 + 200) = sub_22B936CA8(v19, qword_28141AD10);
    v20 = v18;
    v21 = sub_22BA0FEDC();
    v22 = sub_22BA1043C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 136);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v23;
      *v25 = v23;
      v26 = v23;
      _os_log_impl(&dword_22B92A000, v21, v22, "Running RemoteRecord query for completed message GUIDs with predicate %@", v24, 0xCu);
      sub_22B936BEC(v25, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v25, -1, -1);
      MEMORY[0x23189ADD0](v24, -1, -1);
    }

    v27 = *(v0 + 184);
    v28 = *(v0 + 192);

    v36 = (v27 + *v27);
    v29 = v27[1];
    v30 = swift_task_alloc();
    *(v0 + 208) = v30;
    *v30 = v0;
    v30[1] = sub_22B9CBE3C;
    v31 = *(v0 + 192);
    v33 = *(v0 + 168);
    v32 = *(v0 + 176);
    v34 = *(v0 + 160);
    v35 = *(v0 + 144);

    return v36(v35, v32, v33);
  }
}

uint64_t sub_22B9CD1C8()
{
  v1 = *(*(v0 + 104) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
  *(v0 + 296) = v1;
  return MEMORY[0x2822009F8](sub_22B9CD1F8, v1, 0);
}

uint64_t sub_22B9CD1F8()
{
  v1 = *(v0 + 296);
  swift_beginAccess();
  *(v0 + 304) = *(v1 + 120);
  *(v0 + 312) = *(v1 + 128);
  *(v0 + 321) = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_22B9CD288, 0, 0);
}

uint64_t sub_22B9CD288()
{
  v1 = *sub_22B9358B4((*(v0 + 104) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore), *(*(v0 + 104) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore + 24));

  return MEMORY[0x2822009F8](sub_22B9CD304, v1, 0);
}

uint64_t sub_22B9CD304()
{
  sub_22B9E45D8(*(v0 + 304), *(v0 + 312), 0);

  return MEMORY[0x2822009F8](sub_22B9CD370, 0, 0);
}

uint64_t sub_22B9CD370()
{
  v1 = *(v0 + 321);
  v3 = *(v0 + 304);
  v2 = *(v0 + 312);
  v4 = *(v0 + 120);
  v5 = *sub_22B9358B4((*(v0 + 104) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(*(v0 + 104) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  sub_22BA0980C(v3, v2, v1);

  return MEMORY[0x2822009F8](sub_22B9CD41C, v4, 0);
}

uint64_t sub_22B9CD41C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 128);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22B9CD490()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 224);
  v3 = *(v0 + 128);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22B9CD500()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[17];
  v3 = v0[18];

  v5 = v0[33];
  v6 = v0[16];

  v7 = v0[1];

  return v7();
}

uint64_t sub_22B9CD584(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = v4;
  *(v5 + 112) = a2;
  *(v5 + 40) = a1;
  *(v5 + 48) = a3;
  return MEMORY[0x2822009F8](sub_22B9CD5AC, v4, 0);
}

uint64_t sub_22B9CD5AC()
{
  if (!*(*(v0 + 40) + 16) || (v1 = sub_22B9D5BC0(*(v0 + 112)), (*(v0 + 72) = v1) == 0))
  {
LABEL_32:
    v24 = *(v0 + 8);

    return v24();
  }

  v2 = v1[2];
  *(v0 + 80) = v2;
  if (!v2)
  {
LABEL_31:

    goto LABEL_32;
  }

  v3 = 0;
  while (1)
  {
    *(v0 + 88) = v3;
    v7 = *(v0 + 72) + v3;
    v8 = *(v7 + 32);
    v9 = sub_22B9D5D28(*(v7 + 32), *(v0 + 40));
    *(v0 + 96) = v9;
    if (v9)
    {
      break;
    }

    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v10 = sub_22BA0FEFC();
    sub_22B936CA8(v10, qword_28141AD40);
    v11 = sub_22BA0FEDC();
    v12 = sub_22BA1044C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *(v0 + 16) = v14;
      *v13 = 136315138;
      if (v8 <= 2)
      {
        v4 = 0x72636E4574616863;
        if (v8)
        {
          v5 = 0xEF32766465747079;
          if (v8 != 1)
          {
            v4 = 0xD000000000000012;
            v5 = 0x800000022BA1B9F0;
          }
        }

        else
        {
          v4 = 0xD000000000000012;
          v5 = 0x800000022BA1B9C0;
        }
      }

      else if (v8 > 4)
      {
        if (v8 == 5)
        {
          v4 = 0x556567617373656DLL;
          v5 = 0xEF31566574616470;
        }

        else
        {
          v5 = 0xE700000000000000;
          v4 = 0x6E776F6E6B6E75;
        }
      }

      else if (v8 == 3)
      {
        v4 = 0x656D686361747461;
        v5 = 0xEA0000000000746ELL;
      }

      else
      {
        v4 = 0xD000000000000012;
        v5 = 0x800000022BA1BA10;
      }

      v6 = sub_22B99153C(v4, v5, (v0 + 16));

      *(v13 + 4) = v6;
      _os_log_impl(&dword_22B92A000, v11, v12, "Failed to generate sub predicate for subtype %s", v13, 0xCu);
      sub_22B936C4C(v14);
      MEMORY[0x23189ADD0](v14, -1, -1);
      MEMORY[0x23189ADD0](v13, -1, -1);
    }

    v3 = *(v0 + 88) + 1;
    if (v3 == *(v0 + 80))
    {
      v23 = *(v0 + 72);
      goto LABEL_31;
    }
  }

  v45 = v9;
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 40);
  v16 = sub_22BA0FEFC();
  sub_22B936CA8(v16, qword_28141AD40);

  v17 = sub_22BA0FEDC();
  v18 = sub_22BA1046C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *(v0 + 24) = v20;
    *v19 = 136315650;
    if (v8 <= 2)
    {
      if (v8)
      {
        v22 = 0xEF32766465747079;
        v21 = 0x72636E4574616863;
        if (v8 != 1)
        {
          v21 = 0xD000000000000012;
          v22 = 0x800000022BA1B9F0;
        }
      }

      else
      {
        v21 = 0xD000000000000012;
        v22 = 0x800000022BA1B9C0;
      }
    }

    else if (v8 > 4)
    {
      if (v8 == 5)
      {
        v21 = 0x556567617373656DLL;
        v22 = 0xEF31566574616470;
      }

      else
      {
        v22 = 0xE700000000000000;
        v21 = 0x6E776F6E6B6E75;
      }
    }

    else if (v8 == 3)
    {
      v21 = 0x656D686361747461;
      v22 = 0xEA0000000000746ELL;
    }

    else
    {
      v21 = 0xD000000000000012;
      v22 = 0x800000022BA1BA10;
    }

    v26 = *(v0 + 112);
    v27 = sub_22B99153C(v21, v22, (v0 + 24));

    *(v19 + 4) = v27;
    *(v19 + 12) = 2080;
    v28 = 0xE700000000000000;
    v29 = 0x556567617373656DLL;
    if (v26 == 5)
    {
      v28 = 0xEF31566574616470;
    }

    else
    {
      v29 = 0x6E776F6E6B6E75;
    }

    v30 = 0x656D686361747461;
    if (v26 != 3)
    {
      v30 = 0xD000000000000012;
    }

    v31 = 0xEA0000000000746ELL;
    if (v26 != 3)
    {
      v31 = 0x800000022BA1BA10;
    }

    if (v26 <= 4)
    {
      v29 = v30;
      v28 = v31;
    }

    v32 = 0x72636E4574616863;
    if (v26 != 1)
    {
      v32 = 0xD000000000000012;
    }

    v33 = 0xEF32766465747079;
    if (v26 != 1)
    {
      v33 = 0x800000022BA1B9F0;
    }

    if (!v26)
    {
      v32 = 0xD000000000000012;
      v33 = 0x800000022BA1B9C0;
    }

    if (v26 <= 2)
    {
      v34 = v32;
    }

    else
    {
      v34 = v29;
    }

    if (v26 <= 2)
    {
      v35 = v33;
    }

    else
    {
      v35 = v28;
    }

    v36 = *(v0 + 40);
    v37 = sub_22B99153C(v34, v35, (v0 + 24));

    *(v19 + 14) = v37;
    *(v19 + 22) = 2080;
    *(v0 + 32) = v36;
    sub_22B9349C8(&qword_27D8D5960, &unk_22BA1AA20);
    sub_22B9D7C94();
    sub_22B936ACC();
    v38 = sub_22BA1015C();
    v40 = sub_22B99153C(v38, v39, (v0 + 24));

    *(v19 + 24) = v40;
    _os_log_impl(&dword_22B92A000, v17, v18, "Fetching related %s records for %s %s", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v20, -1, -1);
    MEMORY[0x23189ADD0](v19, -1, -1);
  }

  v41 = swift_task_alloc();
  *(v0 + 104) = v41;
  *v41 = v0;
  v41[1] = sub_22B9CDC84;
  v42 = *(v0 + 56);
  v43 = *(v0 + 64);
  v44 = *(v0 + 48);

  return sub_22B9C82E0(v45, v8, 0, 1, 1, v44, v42);
}

uint64_t sub_22B9CDC84()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B9CDD94, v2, 0);
}

uint64_t sub_22B9CDD94()
{
  v1 = *(v0 + 88) + 1;
  if (v1 == *(v0 + 80))
  {
LABEL_2:
    v2 = *(v0 + 72);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    while (1)
    {
      *(v0 + 88) = v1;
      v8 = *(v0 + 72) + v1;
      v9 = *(v8 + 32);
      v10 = sub_22B9D5D28(*(v8 + 32), *(v0 + 40));
      *(v0 + 96) = v10;
      if (v10)
      {
        break;
      }

      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v11 = sub_22BA0FEFC();
      sub_22B936CA8(v11, qword_28141AD40);
      v12 = sub_22BA0FEDC();
      v13 = sub_22BA1044C();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *(v0 + 16) = v15;
        *v14 = 136315138;
        if (v9 <= 2)
        {
          v5 = 0x72636E4574616863;
          if (v9)
          {
            v6 = 0xEF32766465747079;
            if (v9 != 1)
            {
              v5 = 0xD000000000000012;
              v6 = 0x800000022BA1B9F0;
            }
          }

          else
          {
            v5 = 0xD000000000000012;
            v6 = 0x800000022BA1B9C0;
          }
        }

        else if (v9 > 4)
        {
          if (v9 == 5)
          {
            v5 = 0x556567617373656DLL;
            v6 = 0xEF31566574616470;
          }

          else
          {
            v6 = 0xE700000000000000;
            v5 = 0x6E776F6E6B6E75;
          }
        }

        else if (v9 == 3)
        {
          v5 = 0x656D686361747461;
          v6 = 0xEA0000000000746ELL;
        }

        else
        {
          v5 = 0xD000000000000012;
          v6 = 0x800000022BA1BA10;
        }

        v7 = sub_22B99153C(v5, v6, (v0 + 16));

        *(v14 + 4) = v7;
        _os_log_impl(&dword_22B92A000, v12, v13, "Failed to generate sub predicate for subtype %s", v14, 0xCu);
        sub_22B936C4C(v15);
        MEMORY[0x23189ADD0](v15, -1, -1);
        MEMORY[0x23189ADD0](v14, -1, -1);
      }

      v1 = *(v0 + 88) + 1;
      if (v1 == *(v0 + 80))
      {
        goto LABEL_2;
      }
    }

    v43 = v10;
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 40);
    v17 = sub_22BA0FEFC();
    sub_22B936CA8(v17, qword_28141AD40);

    v18 = sub_22BA0FEDC();
    v19 = sub_22BA1046C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *(v0 + 24) = v21;
      *v20 = 136315650;
      if (v9 <= 2)
      {
        if (v9)
        {
          v23 = 0xEF32766465747079;
          v22 = 0x72636E4574616863;
          if (v9 != 1)
          {
            v22 = 0xD000000000000012;
            v23 = 0x800000022BA1B9F0;
          }
        }

        else
        {
          v22 = 0xD000000000000012;
          v23 = 0x800000022BA1B9C0;
        }
      }

      else if (v9 > 4)
      {
        if (v9 == 5)
        {
          v22 = 0x556567617373656DLL;
          v23 = 0xEF31566574616470;
        }

        else
        {
          v23 = 0xE700000000000000;
          v22 = 0x6E776F6E6B6E75;
        }
      }

      else if (v9 == 3)
      {
        v22 = 0x656D686361747461;
        v23 = 0xEA0000000000746ELL;
      }

      else
      {
        v22 = 0xD000000000000012;
        v23 = 0x800000022BA1BA10;
      }

      v24 = *(v0 + 112);
      v25 = sub_22B99153C(v22, v23, (v0 + 24));

      *(v20 + 4) = v25;
      *(v20 + 12) = 2080;
      v26 = 0xE700000000000000;
      v27 = 0x556567617373656DLL;
      if (v24 == 5)
      {
        v26 = 0xEF31566574616470;
      }

      else
      {
        v27 = 0x6E776F6E6B6E75;
      }

      v28 = 0x656D686361747461;
      if (v24 != 3)
      {
        v28 = 0xD000000000000012;
      }

      v29 = 0xEA0000000000746ELL;
      if (v24 != 3)
      {
        v29 = 0x800000022BA1BA10;
      }

      if (v24 <= 4)
      {
        v27 = v28;
        v26 = v29;
      }

      v30 = 0x72636E4574616863;
      if (v24 != 1)
      {
        v30 = 0xD000000000000012;
      }

      v31 = 0xEF32766465747079;
      if (v24 != 1)
      {
        v31 = 0x800000022BA1B9F0;
      }

      if (!v24)
      {
        v30 = 0xD000000000000012;
        v31 = 0x800000022BA1B9C0;
      }

      if (v24 <= 2)
      {
        v32 = v30;
      }

      else
      {
        v32 = v27;
      }

      if (v24 <= 2)
      {
        v33 = v31;
      }

      else
      {
        v33 = v26;
      }

      v34 = *(v0 + 40);
      v35 = sub_22B99153C(v32, v33, (v0 + 24));

      *(v20 + 14) = v35;
      *(v20 + 22) = 2080;
      *(v0 + 32) = v34;
      sub_22B9349C8(&qword_27D8D5960, &unk_22BA1AA20);
      sub_22B9D7C94();
      sub_22B936ACC();
      v36 = sub_22BA1015C();
      v38 = sub_22B99153C(v36, v37, (v0 + 24));

      *(v20 + 24) = v38;
      _os_log_impl(&dword_22B92A000, v18, v19, "Fetching related %s records for %s %s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v21, -1, -1);
      MEMORY[0x23189ADD0](v20, -1, -1);
    }

    v39 = swift_task_alloc();
    *(v0 + 104) = v39;
    *v39 = v0;
    v39[1] = sub_22B9CDC84;
    v40 = *(v0 + 56);
    v41 = *(v0 + 64);
    v42 = *(v0 + 48);

    return sub_22B9C82E0(v43, v9, 0, 1, 1, v42, v40);
  }
}

id sub_22B9CE458(uint64_t a1, uint64_t a2)
{
  sub_22BA107BC();
  if (v3)
  {
    MEMORY[0x231899730](0x4025204E4920, 0xE600000000000000);
    sub_22B9349C8(&qword_27D8D5170, &unk_22BA19630);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_22BA13CB0;
    *(v4 + 56) = sub_22B9349C8(&qword_27D8D5960, &unk_22BA1AA20);
    *(v4 + 32) = a2;

    v5 = sub_22BA0FFCC();

    v6 = sub_22BA101DC();

    v7 = [objc_opt_self() predicateWithFormat:v5 argumentArray:v6];

    return v7;
  }

  else
  {
    v9 = [objc_opt_self() predicateWithValue_];

    return v9;
  }
}

id sub_22B9CE5BC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    return [a2 setStatusValue_];
  }

  return result;
}

uint64_t sub_22B9CE630(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 584) = v4;
  *(v5 + 576) = a4;
  *(v5 + 568) = a3;
  *(v5 + 1133) = a2;
  *(v5 + 560) = a1;
  v6 = type metadata accessor for UnknownRecord();
  *(v5 + 592) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v5 + 600) = swift_task_alloc();
  updated = type metadata accessor for MessageUpdateRecord();
  *(v5 + 608) = updated;
  v9 = *(*(updated - 8) + 64) + 15;
  *(v5 + 616) = swift_task_alloc();
  v10 = type metadata accessor for RecoverableMessageRecord();
  *(v5 + 624) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v5 + 632) = swift_task_alloc();
  v12 = type metadata accessor for AttachmentRecord();
  *(v5 + 640) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v5 + 648) = swift_task_alloc();
  v14 = type metadata accessor for ItemRecord();
  *(v5 + 656) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v5 + 664) = swift_task_alloc();
  v16 = type metadata accessor for ChatRecord(0);
  *(v5 + 672) = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  *(v5 + 680) = swift_task_alloc();
  v18 = type metadata accessor for ChatLockRecord();
  *(v5 + 688) = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  *(v5 + 696) = swift_task_alloc();
  v20 = type metadata accessor for DatabaseRecord();
  *(v5 + 704) = v20;
  v21 = *(v20 - 8);
  *(v5 + 712) = v21;
  v22 = *(v21 + 64) + 15;
  *(v5 + 720) = swift_task_alloc();
  *(v5 + 728) = swift_task_alloc();
  *(v5 + 736) = swift_task_alloc();
  *(v5 + 744) = swift_task_alloc();
  *(v5 + 752) = swift_task_alloc();
  *(v5 + 760) = swift_task_alloc();
  *(v5 + 768) = swift_task_alloc();
  *(v5 + 776) = swift_task_alloc();
  *(v5 + 784) = swift_task_alloc();
  *(v5 + 792) = swift_task_alloc();
  *(v5 + 800) = swift_task_alloc();
  *(v5 + 808) = swift_task_alloc();
  *(v5 + 816) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9CE8E0, v4, 0);
}

uint64_t sub_22B9CE8E0()
{
  if (qword_281415390 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 584);

  return MEMORY[0x2822009F8](sub_22B9CE970, v1, 0);
}

uint64_t sub_22B9CE970()
{
  v1 = *(*(v0 + 560) + 16);
  *(v0 + 824) = v1;
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    v11 = 0;
    v7 = MEMORY[0x277D84F90];
LABEL_32:
    *(v0 + 1080) = v2;
    *(v0 + 1072) = v7;
    *(v0 + 1064) = v2;
    *(v0 + 1000) = 0u;
    *(v0 + 1016) = 0u;
    *(v0 + 1032) = 0u;
    *(v0 + 1048) = 0u;
    v48 = *(v2 + 2);
    if (v48)
    {
      v49 = *(v0 + 712);
      v50 = &v2[(*(v49 + 80) + 32) & ~*(v49 + 80)];
      v51 = *(v49 + 72);

      do
      {
        v52 = *(v0 + 728);
        v53 = *(v0 + 720);
        v54 = *(v0 + 704);
        sub_22B960B88(v50, v52);
        sub_22B960B88(v52, v53);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v56 = *(v0 + 720);
        if (EnumCaseMultiPayload <= 2)
        {
          if (EnumCaseMultiPayload)
          {
            if (EnumCaseMultiPayload == 1)
            {
              v57 = *(v0 + 680);
              v62 = *(v0 + 672);
              v59 = type metadata accessor for ChatRecord;
              sub_22B9D7B1C(v56, v57, type metadata accessor for ChatRecord);
              *(v0 + 80) = v62;
              v60 = type metadata accessor for ChatRecord;
              v61 = &qword_281416388;
            }

            else
            {
              v57 = *(v0 + 664);
              v65 = *(v0 + 656);
              v59 = type metadata accessor for ItemRecord;
              sub_22B9D7B1C(v56, v57, type metadata accessor for ItemRecord);
              *(v0 + 80) = v65;
              v60 = type metadata accessor for ItemRecord;
              v61 = &qword_2814161A0;
            }
          }

          else
          {
            v57 = *(v0 + 696);
            v64 = *(v0 + 688);
            v59 = type metadata accessor for ChatLockRecord;
            sub_22B9D7B1C(v56, v57, type metadata accessor for ChatLockRecord);
            *(v0 + 80) = v64;
            v60 = type metadata accessor for ChatLockRecord;
            v61 = &qword_27D8D5010;
          }
        }

        else if (EnumCaseMultiPayload > 4)
        {
          if (EnumCaseMultiPayload == 5)
          {
            v57 = *(v0 + 616);
            v63 = *(v0 + 608);
            v59 = type metadata accessor for MessageUpdateRecord;
            sub_22B9D7B1C(v56, v57, type metadata accessor for MessageUpdateRecord);
            *(v0 + 80) = v63;
            v60 = type metadata accessor for MessageUpdateRecord;
            v61 = &unk_281415528;
          }

          else
          {
            v57 = *(v0 + 600);
            v67 = *(v0 + 592);
            v59 = type metadata accessor for UnknownRecord;
            sub_22B9D7B1C(v56, v57, type metadata accessor for UnknownRecord);
            *(v0 + 80) = v67;
            v60 = type metadata accessor for UnknownRecord;
            v61 = &unk_27D8D5000;
          }
        }

        else if (EnumCaseMultiPayload == 3)
        {
          v57 = *(v0 + 648);
          v58 = *(v0 + 640);
          v59 = type metadata accessor for AttachmentRecord;
          sub_22B9D7B1C(v56, v57, type metadata accessor for AttachmentRecord);
          *(v0 + 80) = v58;
          v60 = type metadata accessor for AttachmentRecord;
          v61 = &qword_2814159B0;
        }

        else
        {
          v57 = *(v0 + 632);
          v66 = *(v0 + 624);
          v59 = type metadata accessor for RecoverableMessageRecord;
          sub_22B9D7B1C(v56, v57, type metadata accessor for RecoverableMessageRecord);
          *(v0 + 80) = v66;
          v60 = type metadata accessor for RecoverableMessageRecord;
          v61 = &unk_27D8D5008;
        }

        *(v0 + 88) = sub_22B9D7C4C(v61, v60);
        v68 = sub_22B957E80((v0 + 56));
        sub_22B9D7B1C(v57, v68, v59);
        v69 = *(v0 + 80);
        v70 = *(v0 + 728);
        if (v69)
        {
          v71 = *(v0 + 88);
          sub_22B9358B4((v0 + 56), *(v0 + 80));
          v72 = (*(v71 + 24))(v69, v71);
          v74 = v73;
          sub_22B936C4C((v0 + 56));
          sub_22B9D7B84(v70, type metadata accessor for DatabaseRecord);
          if (v74)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v2 = sub_22B97FB74(0, *(v2 + 2) + 1, 1, v2);
            }

            v76 = *(v2 + 2);
            v75 = *(v2 + 3);
            if (v76 >= v75 >> 1)
            {
              v2 = sub_22B97FB74((v75 > 1), v76 + 1, 1, v2);
            }

            *(v2 + 2) = v76 + 1;
            v77 = &v2[16 * v76];
            *(v77 + 4) = v72;
            *(v77 + 5) = v74;
          }
        }

        else
        {
          sub_22B936BEC(v0 + 56, &qword_27D8D4FF8, &qword_22BA14748);
          sub_22B9D7B84(v70, type metadata accessor for DatabaseRecord);
        }

        v50 += v51;
        --v48;
      }

      while (v48);
      v11 = *(v0 + 824);
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
    }

    v78 = sub_22BA0197C(v2);
    *(v0 + 1088) = v78;

    v79 = *(v78 + 16);
    v80 = v11 - v79;
    if (v11 > v79)
    {
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v81 = sub_22BA0FEFC();
      sub_22B936CA8(v81, qword_28141AD40);
      v82 = sub_22BA0FEDC();
      v83 = sub_22BA1045C();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 134217984;
        *(v84 + 4) = v80;

        _os_log_impl(&dword_22B92A000, v82, v83, "Found %ld records without GUIDs!", v84, 0xCu);
        MEMORY[0x23189ADD0](v84, -1, -1);

LABEL_65:
        v85 = swift_task_alloc();
        *(v0 + 1096) = v85;
        *v85 = v0;
        v85[1] = sub_22B9D2088;
        v86 = *(v0 + 584);
        v87 = *(v0 + 576);
        v88 = *(v0 + 568);
        v89 = *(v0 + 1133);

        return sub_22B9CD584(v78, v89, v88, v87);
      }
    }

    goto LABEL_65;
  }

  v3 = 0;
  v4 = *(v0 + 712);
  *(v0 + 1128) = *(v4 + 80);
  *(v0 + 832) = *(v4 + 72);
  v5 = &unk_281415000;
  v6 = &unk_28141A000;
  v7 = v2;
  while (1)
  {
    *(v0 + 928) = v2;
    *(v0 + 920) = v7;
    *(v0 + 912) = v2;
    *(v0 + 848) = 0u;
    *(v0 + 864) = 0u;
    *(v0 + 880) = 0u;
    *(v0 + 896) = 0u;
    *(v0 + 840) = v3;
    v12 = *(v0 + 816);
    v13 = *(v0 + 808);
    v14 = *(v0 + 704);
    sub_22B960B88(*(v0 + 560) + ((*(v0 + 1128) + 32) & ~*(v0 + 1128)) + *(v0 + 832) * v3, v12);
    sub_22B960B88(v12, v13);
    LODWORD(v12) = swift_getEnumCaseMultiPayload();
    sub_22B9D7B84(v13, type metadata accessor for DatabaseRecord);
    if (v12 == 6)
    {
      sub_22B960B88(*(v0 + 816), *(v0 + 800));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_22B97FC80(0, v7[2] + 1, 1, v7);
      }

      v16 = v7[2];
      v15 = v7[3];
      if (v16 >= v15 >> 1)
      {
        v7 = sub_22B97FC80(v15 > 1, v16 + 1, 1, v7);
      }

      v17 = *(v0 + 832);
      v18 = *(v0 + 1128);
      v19 = *(v0 + 800);
      v7[2] = v16 + 1;
      sub_22B9D7B1C(v19, v7 + ((v18 + 32) & ~v18) + v17 * v16, type metadata accessor for DatabaseRecord);
      if (v5[245] != -1)
      {
        swift_once();
      }

      v20 = *(v0 + 816);
      v21 = v6[435];
      swift_beginAccess();
      sub_22B9C34D8(1, 0, 0x6E776F6E6B6E75, 0xE700000000000000, 0);
      swift_endAccess();
      v10 = v20;
      goto LABEL_4;
    }

    v22 = *(v0 + 816);
    sub_22B95FA40((v0 + 16));
    v23 = *(v0 + 40);
    if (!v23)
    {
      sub_22B936BEC(v0 + 16, &qword_27D8D4FF8, &qword_22BA14748);
      goto LABEL_18;
    }

    v24 = *(v0 + 48);
    sub_22B9358B4((v0 + 16), *(v0 + 40));
    v25 = (*(v24 + 56))(v23, v24);
    v27 = v26;
    *(v0 + 936) = v25;
    *(v0 + 944) = v26;
    sub_22B936C4C((v0 + 16));
    if (v27)
    {
      break;
    }

LABEL_18:
    sub_22B960B88(*(v0 + 816), *(v0 + 744));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_22B97FC80(0, v7[2] + 1, 1, v7);
    }

    v29 = v7[2];
    v28 = v7[3];
    if (v29 >= v28 >> 1)
    {
      v7 = sub_22B97FC80(v28 > 1, v29 + 1, 1, v7);
    }

    v30 = *(v0 + 832);
    v31 = *(v0 + 1128);
    v32 = *(v0 + 744);
    v7[2] = v29 + 1;
    sub_22B9D7B1C(v32, v7 + ((v31 + 32) & ~v31) + v30 * v29, type metadata accessor for DatabaseRecord);
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v33 = *(v0 + 816);
    v34 = *(v0 + 736);
    v35 = sub_22BA0FEFC();
    sub_22B936CA8(v35, qword_28141AD10);
    sub_22B960B88(v33, v34);
    v36 = sub_22BA0FEDC();
    v37 = sub_22BA1044C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = *(v0 + 736);
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *(v0 + 536) = v40;
      *v39 = 136315138;
      sub_22B95FA40((v0 + 96));
      v41 = *(v0 + 120);
      if (v41)
      {
        v42 = *(v0 + 128);
        sub_22B9358B4((v0 + 96), *(v0 + 120));
        v43 = (*(v42 + 24))(v41, v42);
        v45 = v44;
        sub_22B936C4C((v0 + 96));
        if (v45)
        {
          sub_22B9D7B84(*(v0 + 736), type metadata accessor for DatabaseRecord);
LABEL_30:
          v46 = *(v0 + 816);
          v47 = sub_22B99153C(v43, v45, (v0 + 536));

          *(v39 + 4) = v47;
          _os_log_impl(&dword_22B92A000, v36, v37, "No record type for record guid %s", v39, 0xCu);
          sub_22B936C4C(v40);
          MEMORY[0x23189ADD0](v40, -1, -1);
          MEMORY[0x23189ADD0](v39, -1, -1);

          sub_22B9D7B84(v46, type metadata accessor for DatabaseRecord);
          v6 = &unk_28141A000;
          v5 = &unk_281415000;
          goto LABEL_5;
        }
      }

      else
      {
        sub_22B936BEC(v0 + 96, &qword_27D8D4FF8, &qword_22BA14748);
      }

      sub_22B9D7B84(*(v0 + 736), type metadata accessor for DatabaseRecord);

      v45 = 0xE400000000000000;
      v43 = 1701736302;
      goto LABEL_30;
    }

    v8 = *(v0 + 816);
    v9 = *(v0 + 736);

    sub_22B9D7B84(v9, type metadata accessor for DatabaseRecord);
    v10 = v8;
LABEL_4:
    sub_22B9D7B84(v10, type metadata accessor for DatabaseRecord);
LABEL_5:
    v11 = *(v0 + 824);
    v3 = *(v0 + 840) + 1;
    if (v3 == v11)
    {
      goto LABEL_32;
    }
  }

  if (v5[245] != -1)
  {
    swift_once();
  }

  *(v0 + 952) = v6[435];
  swift_beginAccess();
  sub_22B9C34D8(1, 0, v25, v27, 0);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_22B9CF608, 0, 0);
}

uint64_t sub_22B9CF608()
{
  v1 = v0[102];
  sub_22B95FA40(v0 + 17);
  v2 = v0[20];
  if (v2)
  {
    v3 = v0[21];
    sub_22B9358B4(v0 + 17, v0[20]);
    v4 = *(v3 + 104);
    v9 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[120] = v6;
    *v6 = v0;
    v6[1] = sub_22B9CF798;

    return v9(v2, v3);
  }

  else
  {
    v8 = v0[73];
    sub_22B936BEC((v0 + 17), &qword_27D8D4FF8, &qword_22BA14748);

    return MEMORY[0x2822009F8](sub_22B9CF8C0, v8, 0);
  }
}

uint64_t sub_22B9CF798(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 960);
  v6 = *v2;
  *(*v2 + 968) = v1;

  if (v1)
  {
    v7 = sub_22B9CFA3C;
  }

  else
  {
    *(v4 + 1134) = a1;
    v7 = sub_22B9D0F10;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22B9CF8C0()
{
  v1 = *(v0 + 920);
  sub_22B960B88(*(v0 + 816), *(v0 + 752));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 920);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_22B97FC80(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_22B97FC80(v4 > 1, v5 + 1, 1, v3);
  }

  v6 = *(v0 + 752);
  *(v0 + 984) = *(v0 + 928);
  *(v0 + 976) = v3;
  v7 = *(v0 + 952);
  v8 = *(v0 + 944);
  v9 = *(v0 + 936);
  v10 = *(v0 + 832);
  v11 = *(v0 + 1128);
  v12 = *(v0 + 568);
  v3[2] = v5 + 1;
  sub_22B9D7B1C(v6, v3 + ((v11 + 32) & ~v11) + v10 * v5, type metadata accessor for DatabaseRecord);
  swift_beginAccess();
  sub_22B9C34D8(1, 1u, v9, v8, 0);
  swift_endAccess();

  v13 = *(v12 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
  *(v0 + 992) = v13;

  return MEMORY[0x2822009F8](sub_22B9D118C, v13, 0);
}

uint64_t sub_22B9CFA3C()
{
  v1 = *(v0 + 584);
  sub_22B936C4C((v0 + 136));

  return MEMORY[0x2822009F8](sub_22B9CFAA8, v1, 0);
}

uint64_t sub_22B9CFAA8()
{
  v1 = *(v0 + 912);
  sub_22B960B88(*(v0 + 816), *(v0 + 792));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 912);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_22B97FC80(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_22B97FC80(v4 > 1, v5 + 1, 1, v3);
  }

  v6 = *(v0 + 832);
  v7 = *(v0 + 1128);
  v8 = *(v0 + 792);
  v3[2] = v5 + 1;
  v152 = v3;
  sub_22B9D7B1C(v8, v3 + ((v7 + 32) & ~v7) + v6 * v5, type metadata accessor for DatabaseRecord);
  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 968);
  v10 = *(v0 + 816);
  v11 = *(v0 + 784);
  v12 = *(v0 + 776);
  v13 = *(v0 + 768);
  v153 = sub_22BA0FEFC();
  v14 = sub_22B936CA8(v153, qword_28141AD10);
  sub_22B960B88(v10, v11);
  sub_22B960B88(v10, v12);
  sub_22B960B88(v10, v13);
  v15 = v9;
  v16 = sub_22BA0FEDC();
  v17 = sub_22BA1044C();

  if (!os_log_type_enabled(v16, v17))
  {
    v30 = *(v0 + 784);
    v31 = *(v0 + 776);
    v32 = *(v0 + 768);

    sub_22B9D7B84(v32, type metadata accessor for DatabaseRecord);
    sub_22B9D7B84(v31, type metadata accessor for DatabaseRecord);
    sub_22B9D7B84(v30, type metadata accessor for DatabaseRecord);
    goto LABEL_25;
  }

  v18 = *(v0 + 968);
  v19 = *(v0 + 784);
  v20 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  *(v0 + 552) = v14;
  *v20 = 138413058;
  v22 = v18;
  v23 = _swift_stdlib_bridgeErrorToNSError();
  *(v20 + 4) = v23;
  *v21 = v23;
  *(v20 + 12) = 2080;
  sub_22B95FA40((v0 + 216));
  v24 = *(v0 + 240);
  if (v24)
  {
    v25 = *(v0 + 248);
    sub_22B9358B4((v0 + 216), *(v0 + 240));
    v26 = (*(v25 + 24))(v24, v25);
    v28 = v27;
    sub_22B936C4C((v0 + 216));
    if (v28)
    {
      sub_22B9D7B84(*(v0 + 784), type metadata accessor for DatabaseRecord);
      v29 = v26;
      goto LABEL_14;
    }
  }

  else
  {
    sub_22B936BEC(v0 + 216, &qword_27D8D4FF8, &qword_22BA14748);
  }

  sub_22B9D7B84(*(v0 + 784), type metadata accessor for DatabaseRecord);

  v28 = 0xEA00000000003E64;
  v29 = 0x6975675F6C696E3CLL;
LABEL_14:
  v33 = *(v0 + 776);
  v34 = sub_22B99153C(v29, v28, (v0 + 552));

  *(v20 + 14) = v34;
  *(v20 + 22) = 2080;
  sub_22B95FA40((v0 + 256));
  v35 = *(v0 + 280);
  if (v35)
  {
    v36 = *(v0 + 288);
    sub_22B9358B4((v0 + 256), *(v0 + 280));
    v37 = (*(v36 + 56))(v35, v36);
    v39 = v38;
    sub_22B936C4C((v0 + 256));
    if (v39)
    {
      sub_22B9D7B84(*(v0 + 776), type metadata accessor for DatabaseRecord);
      v40 = v37;
      goto LABEL_19;
    }
  }

  else
  {
    sub_22B936BEC(v0 + 256, &qword_27D8D4FF8, &qword_22BA14748);
  }

  sub_22B9D7B84(*(v0 + 776), type metadata accessor for DatabaseRecord);

  v39 = 0x800000022BA1E4D0;
  v40 = 0xD000000000000010;
LABEL_19:
  v41 = *(v0 + 768);
  v42 = sub_22B99153C(v40, v39, (v0 + 552));

  *(v20 + 24) = v42;
  *(v20 + 32) = 2080;
  sub_22B95FA40((v0 + 296));
  v43 = *(v0 + 320);
  if (!v43)
  {
    sub_22B936BEC(v0 + 296, &qword_27D8D4FF8, &qword_22BA14748);
    goto LABEL_23;
  }

  v44 = *(v0 + 328);
  sub_22B9358B4((v0 + 296), *(v0 + 320));
  v45 = (*(v44 + 48))(v43, v44);
  v47 = v46;
  sub_22B936C4C((v0 + 296));
  if (!v47)
  {
LABEL_23:
    sub_22B9D7B84(*(v0 + 768), type metadata accessor for DatabaseRecord);

    v47 = 0x800000022BA1E4F0;
    v48 = 0xD000000000000010;
    goto LABEL_24;
  }

  sub_22B9D7B84(*(v0 + 768), type metadata accessor for DatabaseRecord);
  v48 = v45;
LABEL_24:
  v31 = sub_22B99153C(v48, v47, (v0 + 552));

  *(v20 + 34) = v31;
  _os_log_impl(&dword_22B92A000, v16, v17, "Error importing: %@ for record(guid = %s, recordType = %s, recordName = %s)", v20, 0x2Au);
  sub_22B936BEC(v21, &qword_27D8D4CD0, qword_22BA14360);
  MEMORY[0x23189ADD0](v21, -1, -1);
  swift_arrayDestroy();
  MEMORY[0x23189ADD0](v14, -1, -1);
  MEMORY[0x23189ADD0](v20, -1, -1);

LABEL_25:
  v49 = *(v0 + 816);
  v50 = sub_22B9C7FF4();
  if (v50 <= 2)
  {
    if (v50 == 1)
    {
      v56 = *(v0 + 896);
      v54 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

LABEL_36:
      v155 = *(v0 + 880);
      goto LABEL_37;
    }

    if (v50 == 2)
    {
      v51 = *(v0 + 880);
      v52 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (!v52)
      {
        v155 = v53;
        v54 = *(v0 + 896);
LABEL_37:
        v161 = *(v0 + 864);
LABEL_40:
        v160 = *(v0 + 848);
        goto LABEL_41;
      }

      __break(1u);
      goto LABEL_113;
    }

LABEL_34:
    v54 = *(v0 + 896);
    goto LABEL_36;
  }

  if (v50 != 3)
  {
    if (v50 == 4)
    {
      v55 = *(v0 + 848);
      v160 = v55 + 1;
      if (!__OFADD__(v55, 1))
      {
        v54 = *(v0 + 896);
        v155 = *(v0 + 880);
        v161 = *(v0 + 864);
LABEL_41:
        v58 = *(v0 + 968);
        v59 = *(v0 + 952);
        v60 = *(v0 + 944);
        v61 = *(v0 + 936);
        v62 = *(v0 + 816);
        *(v0 + 520) = 0;
        *(v0 + 528) = 0xE000000000000000;
        sub_22BA108FC();
        v63 = *(v0 + 528);

        *(v0 + 504) = 0xD00000000000001CLL;
        *(v0 + 512) = 0x800000022BA1E4B0;
        MEMORY[0x231899730](v61, v60);
        MEMORY[0x231899730](8250, 0xE200000000000000);
        swift_getErrorValue();
        v64 = *(v0 + 432);
        v65 = sub_22B958118(*(v0 + 440), *(v0 + 448));
        MEMORY[0x231899730](v65);

        sub_22B975FD8(9, v58, *(v0 + 504), *(v0 + 512));

        swift_beginAccess();
        v66 = v58;
        sub_22B9C34D8(1, 2u, v61, v60, v58);
        swift_endAccess();

        sub_22B9D7B84(v62, type metadata accessor for DatabaseRecord);
        v67 = *(v0 + 928);
        v68 = *(v0 + 920);
        v156 = *(v0 + 904);
        v157 = *(v0 + 888);
        v69 = *(v0 + 872);
        v158 = v69;
        v159 = *(v0 + 856);
        v70 = *(v0 + 824);
        v71 = *(v0 + 840) + 1;
        v154 = v67;
        if (v71 == v70)
        {
          v72 = v152;
          v73 = v155;
LABEL_43:
          *(v0 + 1080) = v67;
          *(v0 + 1072) = v68;
          *(v0 + 1064) = v72;
          *(v0 + 1056) = v156;
          *(v0 + 1048) = v54;
          *(v0 + 1040) = v157;
          *(v0 + 1032) = v73;
          *(v0 + 1024) = v158;
          *(v0 + 1016) = v161;
          *(v0 + 1008) = v159;
          *(v0 + 1000) = v160;
          v74 = *(v67 + 16);
          if (v74)
          {
            v75 = *(v0 + 712);
            v76 = v67 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
            v77 = *(v75 + 72);

            v78 = MEMORY[0x277D84F90];
            do
            {
              v79 = *(v0 + 728);
              v80 = *(v0 + 720);
              v81 = *(v0 + 704);
              sub_22B960B88(v76, v79);
              sub_22B960B88(v79, v80);
              EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
              v83 = *(v0 + 720);
              if (EnumCaseMultiPayload <= 2)
              {
                if (EnumCaseMultiPayload)
                {
                  if (EnumCaseMultiPayload == 1)
                  {
                    v84 = *(v0 + 680);
                    v89 = *(v0 + 672);
                    v86 = type metadata accessor for ChatRecord;
                    sub_22B9D7B1C(v83, v84, type metadata accessor for ChatRecord);
                    *(v0 + 80) = v89;
                    v87 = type metadata accessor for ChatRecord;
                    v88 = &qword_281416388;
                  }

                  else
                  {
                    v84 = *(v0 + 664);
                    v92 = *(v0 + 656);
                    v86 = type metadata accessor for ItemRecord;
                    sub_22B9D7B1C(v83, v84, type metadata accessor for ItemRecord);
                    *(v0 + 80) = v92;
                    v87 = type metadata accessor for ItemRecord;
                    v88 = &qword_2814161A0;
                  }
                }

                else
                {
                  v84 = *(v0 + 696);
                  v91 = *(v0 + 688);
                  v86 = type metadata accessor for ChatLockRecord;
                  sub_22B9D7B1C(v83, v84, type metadata accessor for ChatLockRecord);
                  *(v0 + 80) = v91;
                  v87 = type metadata accessor for ChatLockRecord;
                  v88 = &qword_27D8D5010;
                }
              }

              else if (EnumCaseMultiPayload > 4)
              {
                if (EnumCaseMultiPayload == 5)
                {
                  v84 = *(v0 + 616);
                  v90 = *(v0 + 608);
                  v86 = type metadata accessor for MessageUpdateRecord;
                  sub_22B9D7B1C(v83, v84, type metadata accessor for MessageUpdateRecord);
                  *(v0 + 80) = v90;
                  v87 = type metadata accessor for MessageUpdateRecord;
                  v88 = &unk_281415528;
                }

                else
                {
                  v84 = *(v0 + 600);
                  v94 = *(v0 + 592);
                  v86 = type metadata accessor for UnknownRecord;
                  sub_22B9D7B1C(v83, v84, type metadata accessor for UnknownRecord);
                  *(v0 + 80) = v94;
                  v87 = type metadata accessor for UnknownRecord;
                  v88 = &unk_27D8D5000;
                }
              }

              else if (EnumCaseMultiPayload == 3)
              {
                v84 = *(v0 + 648);
                v85 = *(v0 + 640);
                v86 = type metadata accessor for AttachmentRecord;
                sub_22B9D7B1C(v83, v84, type metadata accessor for AttachmentRecord);
                *(v0 + 80) = v85;
                v87 = type metadata accessor for AttachmentRecord;
                v88 = &qword_2814159B0;
              }

              else
              {
                v84 = *(v0 + 632);
                v93 = *(v0 + 624);
                v86 = type metadata accessor for RecoverableMessageRecord;
                sub_22B9D7B1C(v83, v84, type metadata accessor for RecoverableMessageRecord);
                *(v0 + 80) = v93;
                v87 = type metadata accessor for RecoverableMessageRecord;
                v88 = &unk_27D8D5008;
              }

              *(v0 + 88) = sub_22B9D7C4C(v88, v87);
              v95 = sub_22B957E80((v0 + 56));
              sub_22B9D7B1C(v84, v95, v86);
              v96 = *(v0 + 80);
              v97 = *(v0 + 728);
              if (v96)
              {
                v98 = *(v0 + 88);
                sub_22B9358B4((v0 + 56), *(v0 + 80));
                v99 = (*(v98 + 24))(v96, v98);
                v101 = v100;
                sub_22B936C4C((v0 + 56));
                sub_22B9D7B84(v97, type metadata accessor for DatabaseRecord);
                if (v101)
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v78 = sub_22B97FB74(0, *(v78 + 2) + 1, 1, v78);
                  }

                  v103 = *(v78 + 2);
                  v102 = *(v78 + 3);
                  if (v103 >= v102 >> 1)
                  {
                    v78 = sub_22B97FB74((v102 > 1), v103 + 1, 1, v78);
                  }

                  *(v78 + 2) = v103 + 1;
                  v104 = &v78[16 * v103];
                  *(v104 + 4) = v99;
                  *(v104 + 5) = v101;
                }
              }

              else
              {
                sub_22B936BEC(v0 + 56, &qword_27D8D4FF8, &qword_22BA14748);
                sub_22B9D7B84(v97, type metadata accessor for DatabaseRecord);
              }

              v76 += v77;
              --v74;
            }

            while (v74);
            v70 = *(v0 + 824);
          }

          else
          {

            v78 = MEMORY[0x277D84F90];
          }

          v140 = sub_22BA0197C(v78);
          *(v0 + 1088) = v140;

          v141 = *(v140 + 16);
          v142 = v70 - v141;
          if (v70 > v141)
          {
            if (qword_281414D30 != -1)
            {
              swift_once();
            }

            sub_22B936CA8(v153, qword_28141AD40);
            v143 = sub_22BA0FEDC();
            v144 = sub_22BA1045C();
            if (os_log_type_enabled(v143, v144))
            {
              v145 = swift_slowAlloc();
              *v145 = 134217984;
              *(v145 + 4) = v142;

              _os_log_impl(&dword_22B92A000, v143, v144, "Found %ld records without GUIDs!", v145, 0xCu);
              MEMORY[0x23189ADD0](v145, -1, -1);

LABEL_105:
              v146 = swift_task_alloc();
              *(v0 + 1096) = v146;
              *v146 = v0;
              v146[1] = sub_22B9D2088;
              v147 = *(v0 + 584);
              v148 = *(v0 + 576);
              v149 = *(v0 + 568);
              v150 = *(v0 + 1133);

              return sub_22B9CD584(v140, v150, v149, v148);
            }
          }

          goto LABEL_105;
        }

        v72 = v152;
        v73 = v155;
        while (1)
        {
          *(v0 + 928) = v67;
          *(v0 + 920) = v68;
          *(v0 + 912) = v72;
          *(v0 + 904) = v156;
          *(v0 + 896) = v54;
          *(v0 + 888) = v157;
          *(v0 + 880) = v73;
          *(v0 + 872) = v158;
          *(v0 + 864) = v161;
          *(v0 + 856) = v159;
          *(v0 + 848) = v160;
          *(v0 + 840) = v71;
          v107 = *(v0 + 816);
          v108 = *(v0 + 808);
          v109 = *(v0 + 704);
          sub_22B960B88(*(v0 + 560) + ((*(v0 + 1128) + 32) & ~*(v0 + 1128)) + *(v0 + 832) * v71, v107);
          sub_22B960B88(v107, v108);
          LODWORD(v107) = swift_getEnumCaseMultiPayload();
          sub_22B9D7B84(v108, type metadata accessor for DatabaseRecord);
          if (v107 == 6)
          {
            sub_22B960B88(*(v0 + 816), *(v0 + 800));
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v68 = sub_22B97FC80(0, v68[2] + 1, 1, v68);
            }

            v111 = v68[2];
            v110 = v68[3];
            if (v111 >= v110 >> 1)
            {
              v68 = sub_22B97FC80(v110 > 1, v111 + 1, 1, v68);
            }

            v112 = *(v0 + 832);
            v113 = *(v0 + 1128);
            v114 = *(v0 + 800);
            v68[2] = v111 + 1;
            sub_22B9D7B1C(v114, v68 + ((v113 + 32) & ~v113) + v112 * v111, type metadata accessor for DatabaseRecord);
            if (qword_2814157A8 != -1)
            {
              swift_once();
            }

            v115 = *(v0 + 816);
            swift_beginAccess();
            sub_22B9C34D8(1, 0, 0x6E776F6E6B6E75, 0xE700000000000000, 0);
            swift_endAccess();
            sub_22B9D7B84(v115, type metadata accessor for DatabaseRecord);
            goto LABEL_71;
          }

          v116 = *(v0 + 816);
          sub_22B95FA40((v0 + 16));
          v117 = *(v0 + 40);
          if (v117)
          {
            v118 = *(v0 + 48);
            sub_22B9358B4((v0 + 16), *(v0 + 40));
            v31 = (*(v118 + 56))(v117, v118);
            v14 = v119;
            *(v0 + 936) = v31;
            *(v0 + 944) = v119;
            sub_22B936C4C((v0 + 16));
            if (v14)
            {
              if (qword_2814157A8 == -1)
              {
                goto LABEL_109;
              }

              goto LABEL_116;
            }
          }

          else
          {
            sub_22B936BEC(v0 + 16, &qword_27D8D4FF8, &qword_22BA14748);
          }

          sub_22B960B88(*(v0 + 816), *(v0 + 744));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v68 = sub_22B97FC80(0, v68[2] + 1, 1, v68);
          }

          v121 = v68[2];
          v120 = v68[3];
          if (v121 >= v120 >> 1)
          {
            v68 = sub_22B97FC80(v120 > 1, v121 + 1, 1, v68);
          }

          v122 = v54;
          v123 = *(v0 + 832);
          v124 = *(v0 + 1128);
          v125 = *(v0 + 744);
          v68[2] = v121 + 1;
          sub_22B9D7B1C(v125, v68 + ((v124 + 32) & ~v124) + v123 * v121, type metadata accessor for DatabaseRecord);
          if (qword_281414D18 != -1)
          {
            swift_once();
          }

          v126 = *(v0 + 816);
          v127 = *(v0 + 736);
          sub_22B936CA8(v153, qword_28141AD10);
          sub_22B960B88(v126, v127);
          v128 = sub_22BA0FEDC();
          v129 = sub_22BA1044C();
          if (os_log_type_enabled(v128, v129))
          {
            break;
          }

          v105 = *(v0 + 816);
          v106 = *(v0 + 736);

          sub_22B9D7B84(v106, type metadata accessor for DatabaseRecord);
          v67 = v154;
          sub_22B9D7B84(v105, type metadata accessor for DatabaseRecord);
LABEL_70:
          v54 = v122;
          v73 = v155;
LABEL_71:
          v70 = *(v0 + 824);
          v71 = *(v0 + 840) + 1;
          if (v71 == v70)
          {
            goto LABEL_43;
          }
        }

        v130 = *(v0 + 736);
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        *(v0 + 536) = v132;
        *v131 = 136315138;
        sub_22B95FA40((v0 + 96));
        v133 = *(v0 + 120);
        if (v133)
        {
          v134 = *(v0 + 128);
          sub_22B9358B4((v0 + 96), *(v0 + 120));
          v135 = (*(v134 + 24))(v133, v134);
          v137 = v136;
          sub_22B936C4C((v0 + 96));
          if (v137)
          {
            sub_22B9D7B84(*(v0 + 736), type metadata accessor for DatabaseRecord);
LABEL_96:
            v138 = *(v0 + 816);
            v139 = sub_22B99153C(v135, v137, (v0 + 536));

            *(v131 + 4) = v139;
            _os_log_impl(&dword_22B92A000, v128, v129, "No record type for record guid %s", v131, 0xCu);
            sub_22B936C4C(v132);
            MEMORY[0x23189ADD0](v132, -1, -1);
            MEMORY[0x23189ADD0](v131, -1, -1);

            sub_22B9D7B84(v138, type metadata accessor for DatabaseRecord);
            v72 = v152;
            v67 = v154;
            goto LABEL_70;
          }
        }

        else
        {
          sub_22B936BEC(v0 + 96, &qword_27D8D4FF8, &qword_22BA14748);
        }

        sub_22B9D7B84(*(v0 + 736), type metadata accessor for DatabaseRecord);

        v137 = 0xE400000000000000;
        v135 = 1701736302;
        goto LABEL_96;
      }

LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    goto LABEL_34;
  }

  v57 = *(v0 + 864);
  v161 = v57 + 1;
  if (!__OFADD__(v57, 1))
  {
    v54 = *(v0 + 896);
    v155 = *(v0 + 880);
    goto LABEL_40;
  }

LABEL_115:
  __break(1u);
LABEL_116:
  swift_once();
LABEL_109:
  *(v0 + 952) = qword_28141AD98;
  swift_beginAccess();
  sub_22B9C34D8(1, 0, v31, v14, 0);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_22B9CF608, 0, 0);
}

uint64_t sub_22B9D0F10()
{
  v1 = *(v0 + 584);
  sub_22B936C4C((v0 + 136));

  return MEMORY[0x2822009F8](sub_22B9D0F7C, v1, 0);
}

uint64_t sub_22B9D0F7C()
{
  v1 = *(v0 + 816);
  if (*(v0 + 1134))
  {
    v2 = *(v0 + 928);
    v3 = (v0 + 760);
    sub_22B960B88(v1, *(v0 + 760));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *(v0 + 928);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_22B97FC80(0, v5[2] + 1, 1, v5);
    }

    v7 = v5[2];
    v6 = v5[3];
    v8 = v7 + 1;
    if (v7 >= v6 >> 1)
    {
      v5 = sub_22B97FC80(v6 > 1, v7 + 1, 1, v5);
    }

    v9 = *(v0 + 920);
    v10 = v5;
  }

  else
  {
    v11 = *(v0 + 920);
    v3 = (v0 + 752);
    sub_22B960B88(v1, *(v0 + 752));
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v5 = *(v0 + 920);
    if ((v12 & 1) == 0)
    {
      v5 = sub_22B97FC80(0, v5[2] + 1, 1, v5);
    }

    v7 = v5[2];
    v13 = v5[3];
    v8 = v7 + 1;
    if (v7 >= v13 >> 1)
    {
      v5 = sub_22B97FC80(v13 > 1, v7 + 1, 1, v5);
    }

    v10 = *(v0 + 928);
    v9 = v5;
  }

  v14 = *v3;
  *(v0 + 984) = v10;
  *(v0 + 976) = v9;
  v15 = *(v0 + 952);
  v16 = *(v0 + 944);
  v17 = *(v0 + 936);
  v18 = *(v0 + 832);
  v19 = *(v0 + 1128);
  v20 = *(v0 + 568);
  v5[2] = v8;
  sub_22B9D7B1C(v14, v5 + ((v19 + 32) & ~v19) + v18 * v7, type metadata accessor for DatabaseRecord);
  swift_beginAccess();
  sub_22B9C34D8(1, 1u, v17, v16, 0);
  swift_endAccess();

  v21 = *(v20 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
  *(v0 + 992) = v21;

  return MEMORY[0x2822009F8](sub_22B9D118C, v21, 0);
}

uint64_t sub_22B9D118C()
{
  v1 = *(v0 + 992);
  v2 = swift_beginAccess();
  v5 = *(v1 + 120);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v0 + 584);
    *(v1 + 120) = v7;
    v2 = sub_22B9D1218;
    v4 = 0;
  }

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22B9D1218()
{
  v1 = *(v0 + 816);
  sub_22B95FA40((v0 + 176));
  v2 = *(v0 + 200);
  if (!v2)
  {
    sub_22B936BEC(v0 + 176, &qword_27D8D4FF8, &qword_22BA14748);
    goto LABEL_9;
  }

  v3 = *(v0 + 208);
  sub_22B9358B4((v0 + 176), *(v0 + 200));
  (*(v3 + 56))(v2, v3);
  v5 = v4;
  sub_22B936C4C((v0 + 176));
  if (!v5)
  {
LABEL_9:
    sub_22B9D7B84(*(v0 + 816), type metadata accessor for DatabaseRecord);
    goto LABEL_10;
  }

  v6 = *(v0 + 816);
  v7 = sub_22B9C2E30();
  v8 = sub_22B9D7B84(v6, type metadata accessor for DatabaseRecord);
  if (v7 > 2u)
  {
    if (v7 != 3)
    {
      if (v7 == 4)
      {
        v103 = *(v0 + 856);
        v14 = v103 + 1;
        if (!__OFADD__(v103, 1))
        {
          v114 = *(v0 + 904);
          v12 = *(v0 + 888);
          v13 = *(v0 + 872);
          goto LABEL_14;
        }

        goto LABEL_95;
      }

      goto LABEL_10;
    }

LABEL_92:
    v105 = *(v0 + 872);
    v13 = v105 + 1;
    if (!__OFADD__(v105, 1))
    {
      v114 = *(v0 + 904);
      v12 = *(v0 + 888);
      goto LABEL_13;
    }

LABEL_96:
    __break(1u);
    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  if (v7 == 1)
  {
    v104 = *(v0 + 904);
    v114 = v104 + 1;
    if (!__OFADD__(v104, 1))
    {
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_92;
  }

  if (v7 != 2)
  {
LABEL_10:
    v114 = *(v0 + 904);
LABEL_11:
    v12 = *(v0 + 888);
    goto LABEL_12;
  }

  v11 = *(v0 + 888);
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v114 = *(v0 + 904);
LABEL_12:
  v13 = *(v0 + 872);
LABEL_13:
  v14 = *(v0 + 856);
LABEL_14:
  v15 = *(v0 + 984);
  v16 = *(v0 + 976);
  v110 = *(v0 + 912);
  v111 = *(v0 + 896);
  v17 = *(v0 + 880);
  v112 = v17;
  v113 = *(v0 + 864);
  v18 = *(v0 + 848);
  v19 = *(v0 + 824);
  v20 = *(v0 + 840) + 1;
  v108 = v15;
  if (v20 == v19)
  {
LABEL_15:
    *(v0 + 1080) = v15;
    *(v0 + 1072) = v16;
    *(v0 + 1064) = v110;
    *(v0 + 1056) = v114;
    *(v0 + 1048) = v111;
    *(v0 + 1040) = v12;
    *(v0 + 1032) = v112;
    *(v0 + 1024) = v13;
    *(v0 + 1016) = v113;
    *(v0 + 1008) = v14;
    *(v0 + 1000) = v18;
    v21 = *(v15 + 16);
    if (v21)
    {
      v22 = *(v0 + 712);
      v23 = v15 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
      v24 = *(v22 + 72);

      v25 = MEMORY[0x277D84F90];
      do
      {
        v26 = *(v0 + 728);
        v27 = *(v0 + 720);
        v28 = *(v0 + 704);
        sub_22B960B88(v23, v26);
        sub_22B960B88(v26, v27);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v30 = *(v0 + 720);
        if (EnumCaseMultiPayload <= 2)
        {
          if (EnumCaseMultiPayload)
          {
            if (EnumCaseMultiPayload == 1)
            {
              v31 = *(v0 + 680);
              v36 = *(v0 + 672);
              v33 = type metadata accessor for ChatRecord;
              sub_22B9D7B1C(v30, v31, type metadata accessor for ChatRecord);
              *(v0 + 80) = v36;
              v34 = type metadata accessor for ChatRecord;
              v35 = &qword_281416388;
            }

            else
            {
              v31 = *(v0 + 664);
              v39 = *(v0 + 656);
              v33 = type metadata accessor for ItemRecord;
              sub_22B9D7B1C(v30, v31, type metadata accessor for ItemRecord);
              *(v0 + 80) = v39;
              v34 = type metadata accessor for ItemRecord;
              v35 = &qword_2814161A0;
            }
          }

          else
          {
            v31 = *(v0 + 696);
            v38 = *(v0 + 688);
            v33 = type metadata accessor for ChatLockRecord;
            sub_22B9D7B1C(v30, v31, type metadata accessor for ChatLockRecord);
            *(v0 + 80) = v38;
            v34 = type metadata accessor for ChatLockRecord;
            v35 = &qword_27D8D5010;
          }
        }

        else if (EnumCaseMultiPayload > 4)
        {
          if (EnumCaseMultiPayload == 5)
          {
            v31 = *(v0 + 616);
            v37 = *(v0 + 608);
            v33 = type metadata accessor for MessageUpdateRecord;
            sub_22B9D7B1C(v30, v31, type metadata accessor for MessageUpdateRecord);
            *(v0 + 80) = v37;
            v34 = type metadata accessor for MessageUpdateRecord;
            v35 = &unk_281415528;
          }

          else
          {
            v31 = *(v0 + 600);
            v41 = *(v0 + 592);
            v33 = type metadata accessor for UnknownRecord;
            sub_22B9D7B1C(v30, v31, type metadata accessor for UnknownRecord);
            *(v0 + 80) = v41;
            v34 = type metadata accessor for UnknownRecord;
            v35 = &unk_27D8D5000;
          }
        }

        else if (EnumCaseMultiPayload == 3)
        {
          v31 = *(v0 + 648);
          v32 = *(v0 + 640);
          v33 = type metadata accessor for AttachmentRecord;
          sub_22B9D7B1C(v30, v31, type metadata accessor for AttachmentRecord);
          *(v0 + 80) = v32;
          v34 = type metadata accessor for AttachmentRecord;
          v35 = &qword_2814159B0;
        }

        else
        {
          v31 = *(v0 + 632);
          v40 = *(v0 + 624);
          v33 = type metadata accessor for RecoverableMessageRecord;
          sub_22B9D7B1C(v30, v31, type metadata accessor for RecoverableMessageRecord);
          *(v0 + 80) = v40;
          v34 = type metadata accessor for RecoverableMessageRecord;
          v35 = &unk_27D8D5008;
        }

        *(v0 + 88) = sub_22B9D7C4C(v35, v34);
        v42 = sub_22B957E80((v0 + 56));
        sub_22B9D7B1C(v31, v42, v33);
        v43 = *(v0 + 80);
        v44 = *(v0 + 728);
        if (v43)
        {
          v45 = *(v0 + 88);
          sub_22B9358B4((v0 + 56), *(v0 + 80));
          v46 = (*(v45 + 24))(v43, v45);
          v48 = v47;
          sub_22B936C4C((v0 + 56));
          sub_22B9D7B84(v44, type metadata accessor for DatabaseRecord);
          if (v48)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = sub_22B97FB74(0, *(v25 + 2) + 1, 1, v25);
            }

            v50 = *(v25 + 2);
            v49 = *(v25 + 3);
            if (v50 >= v49 >> 1)
            {
              v25 = sub_22B97FB74((v49 > 1), v50 + 1, 1, v25);
            }

            *(v25 + 2) = v50 + 1;
            v51 = &v25[16 * v50];
            *(v51 + 4) = v46;
            *(v51 + 5) = v48;
          }
        }

        else
        {
          sub_22B936BEC(v0 + 56, &qword_27D8D4FF8, &qword_22BA14748);
          sub_22B9D7B84(v44, type metadata accessor for DatabaseRecord);
        }

        v23 += v24;
        --v21;
      }

      while (v21);
      v19 = *(v0 + 824);
    }

    else
    {

      v25 = MEMORY[0x277D84F90];
    }

    v90 = sub_22BA0197C(v25);
    *(v0 + 1088) = v90;

    v91 = *(v90 + 16);
    v92 = v19 - v91;
    if (v19 > v91)
    {
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v93 = sub_22BA0FEFC();
      sub_22B936CA8(v93, qword_28141AD40);
      v94 = sub_22BA0FEDC();
      v95 = sub_22BA1045C();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        *v96 = 134217984;
        *(v96 + 4) = v92;

        _os_log_impl(&dword_22B92A000, v94, v95, "Found %ld records without GUIDs!", v96, 0xCu);
        MEMORY[0x23189ADD0](v96, -1, -1);

LABEL_77:
        v97 = swift_task_alloc();
        *(v0 + 1096) = v97;
        *v97 = v0;
        v97[1] = sub_22B9D2088;
        v98 = *(v0 + 584);
        v99 = *(v0 + 576);
        v100 = *(v0 + 568);
        v101 = *(v0 + 1133);

        return sub_22B9CD584(v90, v101, v100, v99);
      }
    }

    goto LABEL_77;
  }

  v109 = *(v0 + 848);
  v106 = v13;
  v107 = v12;
  while (1)
  {
    *(v0 + 928) = v15;
    *(v0 + 920) = v16;
    *(v0 + 912) = v110;
    *(v0 + 904) = v114;
    *(v0 + 896) = v111;
    *(v0 + 888) = v12;
    *(v0 + 880) = v112;
    *(v0 + 872) = v13;
    *(v0 + 864) = v113;
    *(v0 + 856) = v14;
    *(v0 + 848) = v18;
    *(v0 + 840) = v20;
    v54 = *(v0 + 816);
    v55 = *(v0 + 808);
    v56 = *(v0 + 704);
    sub_22B960B88(*(v0 + 560) + ((*(v0 + 1128) + 32) & ~*(v0 + 1128)) + *(v0 + 832) * v20, v54);
    sub_22B960B88(v54, v55);
    LODWORD(v54) = swift_getEnumCaseMultiPayload();
    sub_22B9D7B84(v55, type metadata accessor for DatabaseRecord);
    if (v54 == 6)
    {
      sub_22B960B88(*(v0 + 816), *(v0 + 800));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_22B97FC80(0, v16[2] + 1, 1, v16);
      }

      v58 = v16[2];
      v57 = v16[3];
      if (v58 >= v57 >> 1)
      {
        v16 = sub_22B97FC80(v57 > 1, v58 + 1, 1, v16);
      }

      v59 = *(v0 + 832);
      v60 = *(v0 + 1128);
      v61 = *(v0 + 800);
      v16[2] = v58 + 1;
      sub_22B9D7B1C(v61, v16 + ((v60 + 32) & ~v60) + v59 * v58, type metadata accessor for DatabaseRecord);
      if (qword_2814157A8 != -1)
      {
        swift_once();
      }

      v62 = *(v0 + 816);
      swift_beginAccess();
      sub_22B9C34D8(1, 0, 0x6E776F6E6B6E75, 0xE700000000000000, 0);
      swift_endAccess();
      sub_22B9D7B84(v62, type metadata accessor for DatabaseRecord);
      goto LABEL_43;
    }

    v63 = *(v0 + 816);
    sub_22B95FA40((v0 + 16));
    v64 = *(v0 + 40);
    if (v64)
    {
      break;
    }

    sub_22B936BEC(v0 + 16, &qword_27D8D4FF8, &qword_22BA14748);
LABEL_56:
    sub_22B960B88(*(v0 + 816), *(v0 + 744));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_22B97FC80(0, v16[2] + 1, 1, v16);
    }

    v70 = v16[2];
    v69 = v16[3];
    if (v70 >= v69 >> 1)
    {
      v16 = sub_22B97FC80(v69 > 1, v70 + 1, 1, v16);
    }

    v71 = v14;
    v72 = *(v0 + 832);
    v73 = *(v0 + 1128);
    v74 = *(v0 + 744);
    v16[2] = v70 + 1;
    sub_22B9D7B1C(v74, v16 + ((v73 + 32) & ~v73) + v72 * v70, type metadata accessor for DatabaseRecord);
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v75 = *(v0 + 816);
    v76 = *(v0 + 736);
    v77 = sub_22BA0FEFC();
    sub_22B936CA8(v77, qword_28141AD10);
    sub_22B960B88(v75, v76);
    v78 = sub_22BA0FEDC();
    v79 = sub_22BA1044C();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = *(v0 + 736);
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *(v0 + 536) = v82;
      *v81 = 136315138;
      sub_22B95FA40((v0 + 96));
      v83 = *(v0 + 120);
      if (v83)
      {
        v84 = *(v0 + 128);
        sub_22B9358B4((v0 + 96), *(v0 + 120));
        v85 = (*(v84 + 24))(v83, v84);
        v87 = v86;
        sub_22B936C4C((v0 + 96));
        if (v87)
        {
          sub_22B9D7B84(*(v0 + 736), type metadata accessor for DatabaseRecord);
LABEL_68:
          v88 = *(v0 + 816);
          v89 = sub_22B99153C(v85, v87, (v0 + 536));

          *(v81 + 4) = v89;
          _os_log_impl(&dword_22B92A000, v78, v79, "No record type for record guid %s", v81, 0xCu);
          sub_22B936C4C(v82);
          MEMORY[0x23189ADD0](v82, -1, -1);
          MEMORY[0x23189ADD0](v81, -1, -1);

          sub_22B9D7B84(v88, type metadata accessor for DatabaseRecord);
          v12 = v107;
          v15 = v108;
          v13 = v106;
          goto LABEL_42;
        }
      }

      else
      {
        sub_22B936BEC(v0 + 96, &qword_27D8D4FF8, &qword_22BA14748);
      }

      sub_22B9D7B84(*(v0 + 736), type metadata accessor for DatabaseRecord);

      v87 = 0xE400000000000000;
      v85 = 1701736302;
      goto LABEL_68;
    }

    v52 = *(v0 + 816);
    v53 = *(v0 + 736);

    sub_22B9D7B84(v53, type metadata accessor for DatabaseRecord);
    sub_22B9D7B84(v52, type metadata accessor for DatabaseRecord);
LABEL_42:
    v14 = v71;
    v18 = v109;
LABEL_43:
    v19 = *(v0 + 824);
    v20 = *(v0 + 840) + 1;
    if (v20 == v19)
    {
      goto LABEL_15;
    }
  }

  v65 = *(v0 + 48);
  sub_22B9358B4((v0 + 16), *(v0 + 40));
  v66 = (*(v65 + 56))(v64, v65);
  v68 = v67;
  *(v0 + 936) = v66;
  *(v0 + 944) = v67;
  sub_22B936C4C((v0 + 16));
  if (!v68)
  {
    goto LABEL_56;
  }

  if (qword_2814157A8 != -1)
  {
    swift_once();
  }

  *(v0 + 952) = qword_28141AD98;
  swift_beginAccess();
  sub_22B9C34D8(1, 0, v66, v68, 0);
  swift_endAccess();
  v8 = sub_22B9CF608;
  v9 = 0;
  v10 = 0;

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22B9D2088()
{
  v1 = *(*v0 + 1096);
  v2 = *(*v0 + 584);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B9D2198, v2, 0);
}

uint64_t sub_22B9D2198()
{
  v10 = v0;
  v1 = *(v0 + 1088);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_22B9801C4(*(v1 + 16), 0);
    v4 = sub_22B954698(&v9, v3 + 4, v2, v1);
    sub_22B951944();
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  *(v0 + 1104) = v3;
  *(v0 + 1132) = *(*sub_22B9358B4((*(v0 + 568) + 16), *(*(v0 + 568) + 40)) + 17);
  v5 = swift_task_alloc();
  *(v0 + 1112) = v5;
  *v5 = v0;
  v5[1] = sub_22B9D22C4;
  v6 = *(v0 + 584);
  v7 = *(v0 + 1133);

  return sub_22B9D4560(v3, v7, (v0 + 1132));
}

uint64_t sub_22B9D22C4()
{
  v1 = *(*v0 + 1112);
  v2 = *(*v0 + 1104);
  v3 = *(*v0 + 584);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22B9D23F0, v3, 0);
}

uint64_t sub_22B9D23F0()
{
  v1 = *(*(v0 + 568) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
  *(v0 + 1120) = v1;
  return MEMORY[0x2822009F8](sub_22B9D2420, v1, 0);
}

uint64_t sub_22B9D2420()
{
  v1 = v0[140];
  swift_beginAccess();
  v2 = *(v1 + 144);
  v3 = *(v2 + 16);

  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = sub_22B990B64(3u);
  if ((v5 & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = v0[132];
  v8 = (*(v2 + 56) + 16 * v4);
  v9 = *v8 + v7;
  if (__OFADD__(*v8, v7))
  {
    __break(1u);
    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  v10 = v0[131];
  v11 = v8[1];
  v12 = v11 + v10;
  if (__OFADD__(v11, v10))
  {
    __break(1u);
LABEL_7:
    v9 = v0[132];
    v12 = v0[131];
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = v2;
  sub_22B9BB0F8(v9, v12, 3, isUniquelyReferenced_nonNull_native);
  v14 = v0[140];
  v15 = *(v1 + 144);
  *(v1 + 144) = v17;

  v4 = sub_22B9D2538;
  v5 = v14;
  v6 = 0;

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22B9D2538()
{
  v1 = v0[140];
  v2 = *(v1 + 152);
  v3 = *(v2 + 16);

  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = sub_22B990B64(3u);
  if ((v5 & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = v0[130];
  v8 = (*(v2 + 56) + 16 * v4);
  v9 = *v8 + v7;
  if (__OFADD__(*v8, v7))
  {
    __break(1u);
    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  v10 = v0[129];
  v11 = v8[1];
  v12 = v11 + v10;
  if (__OFADD__(v11, v10))
  {
    __break(1u);
LABEL_7:
    v9 = v0[130];
    v12 = v0[129];
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = v2;
  sub_22B9BB0F8(v9, v12, 3, isUniquelyReferenced_nonNull_native);
  v14 = v0[140];
  v15 = *(v1 + 152);
  *(v1 + 152) = v17;

  v4 = sub_22B9D263C;
  v5 = v14;
  v6 = 0;

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22B9D263C()
{
  v1 = v0[140];
  v2 = *(v1 + 160);
  v3 = *(v2 + 16);

  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = sub_22B990B64(3u);
  if ((v5 & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = v0[128];
  v8 = (*(v2 + 56) + 16 * v4);
  v9 = *v8 + v7;
  if (__OFADD__(*v8, v7))
  {
    __break(1u);
    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  v10 = v0[127];
  v11 = v8[1];
  v12 = v11 + v10;
  if (__OFADD__(v11, v10))
  {
    __break(1u);
LABEL_7:
    v9 = v0[128];
    v12 = v0[127];
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = v2;
  sub_22B9BB0F8(v9, v12, 3, isUniquelyReferenced_nonNull_native);
  v14 = v0[140];
  v15 = *(v1 + 160);
  *(v1 + 160) = v17;

  v4 = sub_22B9D2740;
  v5 = v14;
  v6 = 0;

  return MEMORY[0x2822009F8](v4, v5, v6);
}

unint64_t sub_22B9D2740()
{
  v1 = v0[140];
  v2 = *(v1 + 168);
  v3 = *(v2 + 16);

  if (!v3)
  {
    goto LABEL_7;
  }

  result = sub_22B990B64(3u);
  if ((v5 & 1) == 0)
  {
    goto LABEL_7;
  }

  v6 = v0[126];
  v7 = (*(v2 + 56) + 16 * result);
  v8 = *v7 + v6;
  if (__OFADD__(*v7, v6))
  {
    __break(1u);
    return result;
  }

  v9 = v0[125];
  v10 = v7[1];
  v11 = v10 + v9;
  if (__OFADD__(v10, v9))
  {
    __break(1u);
LABEL_7:
    v8 = v0[126];
    v11 = v0[125];
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = v2;
  sub_22B9BB0F8(v8, v11, 3, isUniquelyReferenced_nonNull_native);
  v13 = v0[102];
  v14 = v0[101];
  v15 = v0[100];
  v16 = v0[99];
  v17 = v0[98];
  v18 = v0[97];
  v19 = v0[96];
  v20 = v0[95];
  v26 = v0[94];
  v27 = v0[93];
  v28 = v0[92];
  v29 = v0[91];
  v30 = v0[90];
  v31 = v0[87];
  v32 = v0[85];
  v33 = v0[83];
  v34 = v0[81];
  v35 = v0[79];
  v36 = v0[77];
  v37 = v0[75];
  v21 = *(v1 + 168);
  *(v1 + 168) = v38;

  v22 = v0[1];
  v23 = v0[135];
  v24 = v0[134];
  v25 = v0[133];

  return v22(v23, v24, v25);
}

uint64_t sub_22B9D295C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for ItemRecord();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = type metadata accessor for ActionRecord();
  v2[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = type metadata accessor for MessageRecord();
  v2[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = type metadata accessor for ChatRecord(0);
  v2[10] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v11 = sub_22BA0FD8C();
  v2[12] = v11;
  v12 = *(v11 - 8);
  v2[13] = v12;
  v13 = *(v12 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v14 = type metadata accessor for DatabaseRecord();
  v2[16] = v14;
  v15 = *(v14 - 8);
  v2[17] = v15;
  v16 = *(v15 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v17 = *(*(sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9D2BAC, v1, 0);
}

uint64_t sub_22B9D2BAC()
{
  v1 = v0[2];
  v62 = *(v0[13] + 56);
  v62(v0[23], 1, 1, v0[12]);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[17];
    v4 = v0[13];
    v58 = v0[8];
    v59 = v0[10];
    v57 = v0[6];
    v5 = v0[2] + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = (v4 + 48);
    v7 = (v4 + 32);
    v55 = (v4 + 8);
    v56 = (v4 + 48);
    v63 = (v4 + 32);
    v64 = *(v3 + 72);
    do
    {
      v12 = v0[18];
      v11 = v0[19];
      v13 = v0[16];
      sub_22B960B88(v5, v11);
      sub_22B960B88(v11, v12);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2 || EnumCaseMultiPayload == 0)
      {
        v8 = v0[22];
        v9 = v0[18];
        v10 = v0[12];
        sub_22B9D7B84(v0[19], type metadata accessor for DatabaseRecord);
        v7 = v63;
        sub_22B9D7B84(v9, type metadata accessor for DatabaseRecord);
        v62(v8, 1, 1, v10);
      }

      else
      {
        if (EnumCaseMultiPayload == 1)
        {
          v16 = v0[11];
          sub_22B9D7B1C(v0[18], v16, type metadata accessor for ChatRecord);
          v17 = v16 + *(v59 + 100);
          if (*(v17 + 8))
          {
            v18 = v0[22];
            v19 = v0[12];
            sub_22B9D7B84(v0[11], type metadata accessor for ChatRecord);
            v62(v18, 1, 1, v19);
          }

          else
          {
            v26 = [objc_opt_self() __im_dateWithNanosecondTimeIntervalSinceReferenceDate_];
            if (v26)
            {
              v27 = v0[21];
              v28 = v26;
              sub_22BA0FD5C();

              v29 = 0;
            }

            else
            {
              v29 = 1;
            }

            v31 = v0[21];
            v30 = v0[22];
            v32 = v0[12];
            sub_22B9D7B84(v0[11], type metadata accessor for ChatRecord);
            v62(v31, v29, 1, v32);
            sub_22B9D7BE4(v31, v30, &unk_27D8D4A90, &qword_22BA126A0);
            v7 = v63;
          }
        }

        else
        {
          v20 = v0[4];
          sub_22B9D7B1C(v0[18], v0[5], type metadata accessor for ItemRecord);
          v21 = swift_getEnumCaseMultiPayload();
          v22 = v0[22];
          v23 = v0[5];
          if (v21 > 1)
          {
            v24 = v0[7];
            sub_22B9D7B1C(v23, v24, type metadata accessor for ActionRecord);
            sub_22B9934AC(v24 + *(v57 + 64), v22, &unk_27D8D4A90, &qword_22BA126A0);
            v25 = type metadata accessor for ActionRecord;
          }

          else
          {
            v24 = v0[9];
            sub_22B9D7B1C(v23, v24, type metadata accessor for MessageRecord);
            sub_22B9934AC(v24 + *(v58 + 56), v22, &unk_27D8D4A90, &qword_22BA126A0);
            v25 = type metadata accessor for MessageRecord;
          }

          sub_22B9D7B84(v24, v25);
        }

        v33 = v0[22];
        v34 = v0[12];
        v35 = *v6;
        if ((*v6)(v33, 1, v34) != 1)
        {
          v60 = v0[23];
          v36 = v7;
          v37 = v0[20];
          v61 = *v36;
          (*v36)(v0[15], v33, v34);
          sub_22B9934AC(v60, v37, &unk_27D8D4A90, &qword_22BA126A0);
          v38 = v35(v37, 1, v34);
          v39 = v0[12];
          if (v38 == 1)
          {
            v40 = v0[23];
            v41 = v0[20];
            v42 = v0[15];
            sub_22B9D7B84(v0[19], type metadata accessor for DatabaseRecord);
            sub_22B936BEC(v40, &unk_27D8D4A90, &qword_22BA126A0);
            sub_22B936BEC(v41, &unk_27D8D4A90, &qword_22BA126A0);
            v43 = v42;
            v7 = v63;
            v61(v40, v43, v39);
            v62(v40, 0, 1, v39);
          }

          else
          {
            v44 = v0[19];
            v45 = v0[14];
            v61(v45, v0[20], v0[12]);
            v46 = sub_22BA0FD0C();
            v47 = *v55;
            (*v55)(v45, v39);
            sub_22B9D7B84(v44, type metadata accessor for DatabaseRecord);
            if (v46)
            {
              v48 = v0[23];
              v49 = v0[15];
              v50 = v0[12];
              sub_22B936BEC(v48, &unk_27D8D4A90, &qword_22BA126A0);
              v7 = v63;
              v61(v48, v49, v50);
              v62(v48, 0, 1, v50);
              v6 = v56;
            }

            else
            {
              v47(v0[15], v0[12]);
              v6 = v56;
              v7 = v63;
            }
          }

          goto LABEL_5;
        }

        sub_22B9D7B84(v0[19], type metadata accessor for DatabaseRecord);
      }

      sub_22B936BEC(v0[22], &unk_27D8D4A90, &qword_22BA126A0);
LABEL_5:
      v5 += v64;
      --v2;
    }

    while (v2);
  }

  v51 = swift_task_alloc();
  v0[24] = v51;
  *v51 = v0;
  v51[1] = sub_22B9D3234;
  v52 = v0[23];
  v53 = v0[3];

  return sub_22B9D509C(v52);
}

uint64_t sub_22B9D3234()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B9D3344, v2, 0);
}

uint64_t sub_22B9D3344()
{
  v1 = v0[22];
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[11];
  v11 = v0[9];
  v12 = v0[7];
  v13 = v0[5];
  sub_22B936BEC(v0[23], &unk_27D8D4A90, &qword_22BA126A0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_22B9D345C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for UnknownRecord();
  v2[9] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  updated = type metadata accessor for MessageUpdateRecord();
  v2[11] = updated;
  v6 = *(*(updated - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = type metadata accessor for RecoverableMessageRecord();
  v2[13] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v9 = type metadata accessor for AttachmentRecord();
  v2[15] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v11 = type metadata accessor for ItemRecord();
  v2[17] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v13 = type metadata accessor for ChatRecord(0);
  v2[19] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v15 = type metadata accessor for ChatLockRecord();
  v2[21] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v17 = type metadata accessor for DatabaseRecord();
  v2[23] = v17;
  v18 = *(v17 - 8);
  v2[24] = v18;
  v19 = *(v18 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9D3684, v1, 0);
}

uint64_t sub_22B9D3684()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  *(v0 + 224) = v2;
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 192);
    v5 = *(v4 + 80);
    *(v0 + 264) = v5;
    v6 = *(v4 + 72);
    *(v0 + 232) = v6;
    while (1)
    {
      *(v0 + 240) = v3;
      v7 = *(v0 + 208);
      v8 = *(v0 + 216);
      v9 = *(v0 + 184);
      sub_22B960B88(v1 + ((v5 + 32) & ~v5) + v6 * v3, v8);
      sub_22B960B88(v8, v7);
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        break;
      }

      sub_22B9D7B84(*(v0 + 216), type metadata accessor for DatabaseRecord);
      v10 = *(v0 + 224);
      v11 = *(v0 + 240) + 1;
      sub_22B9D7B84(*(v0 + 208), type metadata accessor for DatabaseRecord);
      if (v11 == v10)
      {
        goto LABEL_6;
      }

      v6 = *(v0 + 232);
      v3 = *(v0 + 240) + 1;
      LOBYTE(v5) = *(v0 + 264);
      v1 = *(v0 + 56);
    }

    sub_22B9D7B84(*(v0 + 208), type metadata accessor for DatabaseRecord);

    return MEMORY[0x2822009F8](sub_22B9D3898, 0, 0);
  }

  else
  {
LABEL_6:
    v13 = *(v0 + 208);
    v12 = *(v0 + 216);
    v14 = *(v0 + 200);
    v15 = *(v0 + 176);
    v16 = *(v0 + 160);
    v17 = *(v0 + 144);
    v18 = *(v0 + 128);
    v19 = *(v0 + 112);
    v20 = *(v0 + 96);
    v21 = *(v0 + 80);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_22B9D3898()
{
  v1 = v0[23];
  sub_22B960B88(v0[27], v0[25]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[25];
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v9 = v0[19];
        v4 = v0[20];
        v6 = type metadata accessor for ChatRecord;
        sub_22B9D7B1C(v3, v4, type metadata accessor for ChatRecord);
        v0[5] = v9;
        v7 = &qword_281416388;
        v8 = type metadata accessor for ChatRecord;
      }

      else
      {
        v12 = v0[17];
        v4 = v0[18];
        v6 = type metadata accessor for ItemRecord;
        sub_22B9D7B1C(v3, v4, type metadata accessor for ItemRecord);
        v0[5] = v12;
        v7 = &qword_2814161A0;
        v8 = type metadata accessor for ItemRecord;
      }
    }

    else
    {
      v11 = v0[21];
      v4 = v0[22];
      v6 = type metadata accessor for ChatLockRecord;
      sub_22B9D7B1C(v3, v4, type metadata accessor for ChatLockRecord);
      v0[5] = v11;
      v7 = &qword_27D8D5010;
      v8 = type metadata accessor for ChatLockRecord;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v10 = v0[11];
      v4 = v0[12];
      v6 = type metadata accessor for MessageUpdateRecord;
      sub_22B9D7B1C(v3, v4, type metadata accessor for MessageUpdateRecord);
      v0[5] = v10;
      v7 = &unk_281415528;
      v8 = type metadata accessor for MessageUpdateRecord;
    }

    else
    {
      v14 = v0[9];
      v4 = v0[10];
      v6 = type metadata accessor for UnknownRecord;
      sub_22B9D7B1C(v3, v4, type metadata accessor for UnknownRecord);
      v0[5] = v14;
      v7 = &unk_27D8D5000;
      v8 = type metadata accessor for UnknownRecord;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v5 = v0[15];
    v4 = v0[16];
    v6 = type metadata accessor for AttachmentRecord;
    sub_22B9D7B1C(v3, v4, type metadata accessor for AttachmentRecord);
    v0[5] = v5;
    v7 = &qword_2814159B0;
    v8 = type metadata accessor for AttachmentRecord;
  }

  else
  {
    v13 = v0[13];
    v4 = v0[14];
    v6 = type metadata accessor for RecoverableMessageRecord;
    sub_22B9D7B1C(v3, v4, type metadata accessor for RecoverableMessageRecord);
    v0[5] = v13;
    v7 = &unk_27D8D5008;
    v8 = type metadata accessor for RecoverableMessageRecord;
  }

  v0[6] = sub_22B9D7C4C(v7, v8);
  v15 = sub_22B957E80(v0 + 2);
  sub_22B9D7B1C(v4, v15, v6);
  v16 = v0[5];
  if (v16)
  {
    v17 = v0[8];
    v18 = v0[6];
    sub_22B9358B4(v0 + 2, v0[5]);
    v19 = *(v18 + 112);
    v24 = (v19 + *v19);
    v20 = v19[1];
    v21 = swift_task_alloc();
    v0[31] = v21;
    *v21 = v0;
    v21[1] = sub_22B9D3D0C;

    return v24(v17 + 176, v16, v18);
  }

  else
  {
    sub_22B936BEC((v0 + 2), &qword_27D8D4FF8, &qword_22BA14748);
    v23 = v0[8];

    return MEMORY[0x2822009F8](sub_22B9D4004, v23, 0);
  }
}

uint64_t sub_22B9D3D0C()
{
  v2 = *(*v1 + 248);
  v5 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = sub_22B9D3E88;
  }

  else
  {
    v3 = sub_22B9D3E20;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B9D3E20()
{
  sub_22B936C4C((v0 + 16));
  v1 = *(v0 + 64);

  return MEMORY[0x2822009F8](sub_22B9D4004, v1, 0);
}

uint64_t sub_22B9D3E88()
{
  v1 = *(v0 + 64);
  sub_22B936C4C((v0 + 16));

  return MEMORY[0x2822009F8](sub_22B9D3EF4, v1, 0);
}

uint64_t sub_22B9D3EF4()
{
  v1 = v0[26];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[20];
  v5 = v0[18];
  v6 = v0[16];
  v7 = v0[14];
  v8 = v0[12];
  v12 = v0[10];
  sub_22B9D7B84(v0[27], type metadata accessor for DatabaseRecord);

  v9 = v0[1];
  v10 = v0[32];

  return v9();
}

uint64_t sub_22B9D4004()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 240) + 1;
  sub_22B9D7B84(*(v0 + 216), type metadata accessor for DatabaseRecord);
  if (v2 == v1)
  {
LABEL_4:
    v11 = *(v0 + 208);
    v10 = *(v0 + 216);
    v12 = *(v0 + 200);
    v13 = *(v0 + 176);
    v14 = *(v0 + 160);
    v15 = *(v0 + 144);
    v16 = *(v0 + 128);
    v17 = *(v0 + 112);
    v18 = *(v0 + 96);
    v19 = *(v0 + 80);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    while (1)
    {
      v3 = *(v0 + 232);
      v4 = *(v0 + 240) + 1;
      *(v0 + 240) = v4;
      v5 = *(v0 + 208);
      v6 = *(v0 + 216);
      v7 = *(v0 + 184);
      sub_22B960B88(*(v0 + 56) + ((*(v0 + 264) + 32) & ~*(v0 + 264)) + v3 * v4, v6);
      sub_22B960B88(v6, v5);
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        break;
      }

      sub_22B9D7B84(*(v0 + 216), type metadata accessor for DatabaseRecord);
      v8 = *(v0 + 224);
      v9 = *(v0 + 240) + 1;
      sub_22B9D7B84(*(v0 + 208), type metadata accessor for DatabaseRecord);
      if (v9 == v8)
      {
        goto LABEL_4;
      }
    }

    sub_22B9D7B84(*(v0 + 208), type metadata accessor for DatabaseRecord);

    return MEMORY[0x2822009F8](sub_22B9D3898, 0, 0);
  }
}

id sub_22B9D4214(void *a1, void *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v14 = [a2 recordName];
    if (!v14)
    {
      return [a2 setStatusValue_];
    }

    v15 = v14;
    v22 = a7;
    v16 = sub_22BA0FFFC();
    v18 = v17;

    if (sub_22B9D4394(v16, v18, a4))
    {
      if (a5)
      {
        v19 = [a2 data];
        if (v19)
        {
          v20 = v19;
          [a1 deleteObject_];
        }
      }

      [a2 setStatusValue_];
    }

    if (sub_22B9D4394(v16, v18, a6))
    {
      [a2 setStatusValue_];
    }

    v21 = sub_22B9D4394(v16, v18, v22);

    if (v21)
    {
      return [a2 setStatusValue_];
    }
  }

  return result;
}

uint64_t sub_22B9D4394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_22BA10D3C();
  sub_22BA1008C();
  v7 = sub_22BA10D6C();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_22BA10C6C() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_22B9D448C(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_22BA0FFFC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_22B9D44F0(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = *a1;
    v8 = sub_22BA0FFCC();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v6 *a5];
}

uint64_t sub_22B9D4560(uint64_t a1, char a2, _BYTE *a3)
{
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  *(v4 + 65) = *a3;
  return MEMORY[0x2822009F8](sub_22B9D458C, v3, 0);
}

uint64_t sub_22B9D458C()
{
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isSpotlightRefactorEnabled];

  if (!v2)
  {
    goto LABEL_25;
  }

  v3 = *(v0 + 64);
  if (*(v0 + 65) == 6)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2 * (*(v0 + 65) == 0);
  }

  if (v3 == 1)
  {
    v16 = qword_28141ADC8;
    if (qword_28141ADC8)
    {
      v17 = qword_28141ADD0;
      v18 = *(qword_28141ADD0 + 56);
      v37 = (v18 + *v18);
      v19 = v18[1];
      v20 = swift_task_alloc();
      *(v0 + 48) = v20;
      *v20 = v0;
      v20[1] = sub_22B9D4C00;
      v10 = *(v0 + 16);
      v11 = v4;
      v12 = v16;
      v13 = v17;
      v14 = v37;

      return v14(v10, v11, v12, v13);
    }

    sub_22B952500();
    v21 = swift_allocError();
    swift_willThrow();
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v31 = sub_22BA0FEFC();
    sub_22B936CA8(v31, qword_28141AD40);
    v32 = v21;
    v24 = sub_22BA0FEDC();
    v25 = sub_22BA1044C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v33 = v21;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v34;
      *v27 = v34;
      v30 = "Failed to complete chat batch indexing with error %@";
      goto LABEL_23;
    }

LABEL_24:

    goto LABEL_25;
  }

  if (v3 == 2)
  {
    v5 = qword_28141ADC8;
    if (qword_28141ADC8)
    {
      v6 = qword_28141ADD0;
      v7 = *(qword_28141ADD0 + 48);
      v36 = (v7 + *v7);
      v8 = v7[1];
      v9 = swift_task_alloc();
      *(v0 + 32) = v9;
      *v9 = v0;
      v9[1] = sub_22B9D4ACC;
      v10 = *(v0 + 16);
      v11 = v4;
      v12 = v5;
      v13 = v6;
      v14 = v36;

      return v14(v10, v11, v12, v13);
    }

    sub_22B952500();
    v21 = swift_allocError();
    swift_willThrow();
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v22 = sub_22BA0FEFC();
    sub_22B936CA8(v22, qword_28141AD40);
    v23 = v21;
    v24 = sub_22BA0FEDC();
    v25 = sub_22BA1044C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = v21;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v29;
      *v27 = v29;
      v30 = "Failed to complete message batch indexing with error %@";
LABEL_23:
      _os_log_impl(&dword_22B92A000, v24, v25, v30, v26, 0xCu);
      sub_22B936BEC(v27, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v27, -1, -1);
      MEMORY[0x23189ADD0](v26, -1, -1);

      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_25:
  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_22B9D4ACC()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  v3[5] = v0;

  if (v0)
  {
    v4 = v3[3];

    return MEMORY[0x2822009F8](sub_22B9D4D34, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_22B9D4C00()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {
    v4 = v3[3];

    return MEMORY[0x2822009F8](sub_22B9D4ED4, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_22B9D4D34()
{
  v1 = *(v0 + 40);
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v2 = sub_22BA0FEFC();
  sub_22B936CA8(v2, qword_28141AD40);
  v3 = v1;
  v4 = sub_22BA0FEDC();
  v5 = sub_22BA1044C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_22B92A000, v4, v5, "Failed to complete message batch indexing with error %@", v6, 0xCu);
    sub_22B936BEC(v7, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v7, -1, -1);
    MEMORY[0x23189ADD0](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22B9D4ED4()
{
  v1 = *(v0 + 56);
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v2 = sub_22BA0FEFC();
  sub_22B936CA8(v2, qword_28141AD40);
  v3 = v1;
  v4 = sub_22BA0FEDC();
  v5 = sub_22BA1044C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_22B92A000, v4, v5, "Failed to complete chat batch indexing with error %@", v6, 0xCu);
    sub_22B936BEC(v7, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v7, -1, -1);
    MEMORY[0x23189ADD0](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22B9D5074(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = *(a2 + 8);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

uint64_t sub_22B9D509C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(*(sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v4 = sub_22BA0FD8C();
  v2[11] = v4;
  v5 = *(v4 - 8);
  v2[12] = v5;
  v6 = *(v5 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9D51B8, v1, 0);
}

uint64_t sub_22B9D51B8()
{
  v51 = v0;
  v1 = v0[16];
  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  v7 = OBJC_IVAR____TtC17MessagesCloudSync16DatabaseImporter_lastReloadDate;
  v0[17] = OBJC_IVAR____TtC17MessagesCloudSync16DatabaseImporter_lastReloadDate;
  swift_beginAccess();
  v8 = *(v3 + 16);
  v8(v1, v5 + v7, v2);
  sub_22BA0FD3C();
  v10 = v9;
  v11 = *(v3 + 8);
  v11(v1, v2);
  v12 = fabs(v10);
  sub_22B9934AC(v6, v4, &unk_27D8D4A90, &qword_22BA126A0);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_22B936BEC(v0[10], &unk_27D8D4A90, &qword_22BA126A0);
LABEL_3:
    v13 = 3600.0;
    goto LABEL_4;
  }

  v14 = v0[15];
  v15 = v0[11];
  (*(v0[12] + 32))(v14, v0[10], v15);
  sub_22BA0FD3C();
  v17 = fabs(v16);
  v11(v14, v15);
  if (v17 >= 172800.0)
  {
    if (v17 >= 604800.0)
    {
      if (v17 >= 1209600.0)
      {
        goto LABEL_3;
      }

      v13 = 600.0;
    }

    else
    {
      v13 = 300.0;
    }

LABEL_4:
    if (v12 <= v13)
    {
      goto LABEL_22;
    }

    goto LABEL_8;
  }

  if (v12 <= 30.0)
  {
LABEL_22:
    v43 = v0[15];
    v42 = v0[16];
    v45 = v0[13];
    v44 = v0[14];
    v46 = v0[10];

    v47 = v0[1];

    return v47();
  }

LABEL_8:
  v18 = v0[14];
  sub_22BA0FD7C();
  if (qword_281414D18 != -1)
  {
    swift_once();
  }

  v19 = v0[13];
  v20 = v0[14];
  v21 = v0[11];
  v22 = sub_22BA0FEFC();
  sub_22B936CA8(v22, qword_28141AD10);
  v8(v19, v20, v21);
  v23 = sub_22BA0FEDC();
  v24 = sub_22BA1046C();
  v25 = os_log_type_enabled(v23, v24);
  v26 = v0[13];
  v27 = v0[11];
  if (v25)
  {
    v28 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50 = v49;
    *v28 = 136315138;
    sub_22B9D7C4C(&qword_281416BF0, MEMORY[0x277CC9578]);
    v29 = sub_22BA10C1C();
    v31 = v30;
    v11(v26, v27);
    v32 = sub_22B99153C(v29, v31, &v50);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_22B92A000, v23, v24, "Reload chat registry at %s", v28, 0xCu);
    sub_22B936C4C(v49);
    MEMORY[0x23189ADD0](v49, -1, -1);
    MEMORY[0x23189ADD0](v28, -1, -1);
  }

  else
  {

    v11(v26, v27);
  }

  v33 = qword_28141ADC8;
  v0[18] = qword_28141ADC8;
  if (!v33)
  {
    v37 = v0[17];
    v38 = v0[14];
    v39 = v0[11];
    v40 = v0[12];
    v41 = v0[9];
    swift_beginAccess();
    (*(v40 + 40))(v41 + v37, v38, v39);
    swift_endAccess();
    goto LABEL_22;
  }

  v34 = qword_28141ADD0;
  v0[19] = qword_28141ADD0;
  v0[20] = *(v34 + 136);
  v0[21] = (v34 + 136) & 0xFFFFFFFFFFFFLL | 0x4484000000000000;
  if (qword_281416450 != -1)
  {
    swift_once();
  }

  sub_22BA102EC();
  v36 = sub_22BA1029C();

  return MEMORY[0x2822009F8](sub_22B9D56B4, v36, v35);
}

uint64_t sub_22B9D56B4()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = *(v0 + 72);
  v4 = *(v0 + 144);
  (*(v0 + 160))();

  return MEMORY[0x2822009F8](sub_22B9D5728, v3, 0);
}

uint64_t sub_22B9D5728()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[9];
  swift_beginAccess();
  (*(v4 + 40))(v5 + v1, v2, v3);
  swift_endAccess();
  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[10];

  v11 = v0[1];

  return v11();
}

uint64_t sub_22B9D5808()
{
  v1 = v0[14];
  swift_unknownObjectRelease();
  sub_22B936C4C(v0 + 16);
  sub_22B936C4C(v0 + 22);
  v2 = OBJC_IVAR____TtC17MessagesCloudSync16DatabaseImporter_lastReloadDate;
  v3 = sub_22BA0FD8C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_22B936BEC(v0 + OBJC_IVAR____TtC17MessagesCloudSync16DatabaseImporter_lastImportProgressDate, &unk_27D8D4A90, &qword_22BA126A0);
  v4 = *(v0 + OBJC_IVAR____TtC17MessagesCloudSync16DatabaseImporter_importActivityName + 8);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for DatabaseImporter()
{
  result = qword_281415898;
  if (!qword_281415898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22B9D5920()
{
  v0 = sub_22BA0FD8C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_22B934C68();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_22B9D5A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22BA0FD8C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[3] = &type metadata for FileManagerProvider;
  v16[4] = &off_283F53B48;
  v15[3] = &type metadata for DatabaseRecordPersistence;
  v15[4] = &off_283F55858;
  v16[0] = a3;
  swift_defaultActor_initialize();
  *(a4 + 168) = 0;
  (*(v9 + 56))(a4 + OBJC_IVAR____TtC17MessagesCloudSync16DatabaseImporter_lastImportProgressDate, 1, 1, v8);
  v13 = (a4 + OBJC_IVAR____TtC17MessagesCloudSync16DatabaseImporter_importActivityName);
  *v13 = 0xD00000000000001ELL;
  v13[1] = 0x800000022BA1E460;
  *(a4 + 112) = a1;
  *(a4 + 120) = a2;
  sub_22B935B38(v16, a4 + 176);
  sub_22B935B38(v15, a4 + 128);
  sub_22BA0FD7C();
  sub_22B936C4C(v15);
  sub_22B936C4C(v16);
  (*(v9 + 32))(a4 + OBJC_IVAR____TtC17MessagesCloudSync16DatabaseImporter_lastReloadDate, v12, v8);
  return a4;
}

void *sub_22B9D5BC0(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        goto LABEL_14;
      }

      v1 = "MessageEncryptedV3";
    }

    else
    {
      v1 = "chatLockRecordType";
    }
  }

  else
  {
    if (a1 > 4u || a1 == 3)
    {
      goto LABEL_14;
    }

    v1 = "recoverableMessage";
  }

  if (0x800000022BA1B9F0 == ((v1 - 32) | 0x8000000000000000))
  {

    return &unk_283F50D98;
  }

LABEL_14:
  v3 = sub_22BA10C6C();

  if (v3)
  {
    return &unk_283F50D98;
  }

  else
  {
    return 0;
  }
}

id sub_22B9D5D28(unsigned __int8 a1, uint64_t a2)
{
  if (a1 == 3)
  {
    goto LABEL_14;
  }

  v4 = sub_22BA10C6C();

  if (v4)
  {
    goto LABEL_16;
  }

  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        goto LABEL_15;
      }

      v5 = "MessageEncryptedV3";
    }

    else
    {
      v5 = "chatLockRecordType";
    }
  }

  else
  {
    if (a1 > 4u || a1 == 3)
    {
      goto LABEL_15;
    }

    v5 = "recoverableMessage";
  }

  if (0x800000022BA1BA10 == ((v5 - 32) | 0x8000000000000000))
  {
LABEL_14:

    goto LABEL_16;
  }

LABEL_15:
  v6 = sub_22BA10C6C();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  if (!*(a2 + 16))
  {
    return 0;
  }

  KeyPath = swift_getKeyPath();
  v8 = sub_22B9CE458(KeyPath, a2);

  v9 = swift_getKeyPath();
  v10 = sub_22B9A7818(v9, 0);

  sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22BA17B40;
  *(v11 + 32) = v8;
  *(v11 + 40) = v10;
  v12 = objc_allocWithZone(MEMORY[0x277CCA920]);
  sub_22B9A90E8();
  v13 = v8;
  v14 = v10;
  v15 = sub_22BA101DC();

  v16 = [v12 initWithType:1 subpredicates:v15];

  v17 = swift_getKeyPath();
  v18 = 0x556567617373656DLL;
  v19 = 0xEF31566574616470;
  if (a1 != 5)
  {
    v18 = 0x6E776F6E6B6E75;
    v19 = 0xE700000000000000;
  }

  v20 = 0x800000022BA1BA10;
  v21 = 0x656D686361747461;
  if (a1 == 3)
  {
    v20 = 0xEA0000000000746ELL;
  }

  else
  {
    v21 = 0xD000000000000012;
  }

  if (a1 <= 4u)
  {
    v18 = v21;
    v19 = v20;
  }

  v22 = 0x800000022BA1B9C0;
  v23 = 0x800000022BA1B9F0;
  v24 = 0x72636E4574616863;
  if (a1 == 1)
  {
    v23 = 0xEF32766465747079;
  }

  else
  {
    v24 = 0xD000000000000012;
  }

  if (a1)
  {
    v22 = v23;
  }

  else
  {
    v24 = 0xD000000000000012;
  }

  if (a1 <= 2u)
  {
    v25 = v24;
  }

  else
  {
    v25 = v18;
  }

  if (a1 <= 2u)
  {
    v26 = v22;
  }

  else
  {
    v26 = v19;
  }

  v27 = sub_22B9A7C48(v17, v25, v26);

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_22BA17B40;
  *(v28 + 32) = v16;
  *(v28 + 40) = v27;
  v29 = objc_allocWithZone(MEMORY[0x277CCA920]);
  v30 = v16;
  v31 = v27;
  v32 = sub_22BA101DC();

  v33 = [v29 initWithType:1 subpredicates:v32];

  return v33;
}

uint64_t sub_22B9D6234(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 96) = a3;
  *(v4 + 104) = v3;
  *(v4 + 88) = a2;
  *(v4 + 208) = a1;
  v5 = *(*(sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0) - 8) + 64) + 15;
  *(v4 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9D62D8, v3, 0);
}

uint64_t sub_22B9D62D8()
{
  v1 = *(v0 + 208);
  *(v0 + 120) = OBJC_IVAR____TtC17MessagesCloudSync16DatabaseImporter_lastImportProgressDate;
  *(v0 + 128) = 0;
  KeyPath = swift_getKeyPath();
  v3 = sub_22B9A7818(KeyPath, 0);

  v4 = swift_getKeyPath();
  v5 = 0xEF32766465747079;
  v6 = 0x72636E4574616863;
  v7 = 0xEF31566574616470;
  v8 = 0x556567617373656DLL;
  if (v1 != 5)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  v9 = 0xEA0000000000746ELL;
  v10 = 0x656D686361747461;
  if (v1 != 3)
  {
    v10 = 0xD000000000000012;
    v9 = 0x800000022BA1BA10;
  }

  if (v1 <= 4)
  {
    v8 = v10;
    v7 = v9;
  }

  if (v1 != 1)
  {
    v6 = 0xD000000000000012;
    v5 = 0x800000022BA1B9F0;
  }

  if (!v1)
  {
    v6 = 0xD000000000000012;
    v5 = 0x800000022BA1B9C0;
  }

  if (v1 <= 2)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  if (v1 <= 2)
  {
    v12 = v5;
  }

  else
  {
    v12 = v7;
  }

  v13 = *(v0 + 208);
  v14 = sub_22B9A7C48(v4, v11, v12);

  sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22BA17B40;
  *(v15 + 32) = v3;
  *(v15 + 40) = v14;
  v16 = objc_allocWithZone(MEMORY[0x277CCA920]);
  sub_22B9A90E8();
  v17 = v3;
  v18 = v14;
  v19 = sub_22BA101DC();

  v20 = [v16 initWithType:1 subpredicates:v19];
  *(v0 + 136) = v20;

  v21 = swift_task_alloc();
  *(v0 + 144) = v21;
  *v21 = v0;
  v21[1] = sub_22B9D65A0;
  if (v13 == 2)
  {
    v22 = 100;
  }

  else
  {
    v22 = 5;
  }

  v23 = *(v0 + 96);
  v24 = *(v0 + 104);
  v25 = *(v0 + 88);
  v26 = *(v0 + 208);

  return sub_22B9C82E0(v20, v26, v22, 0, 1, v25, v23);
}

uint64_t sub_22B9D65A0(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 104);
  v6 = *v1;
  *(*v1 + 152) = a1;

  return MEMORY[0x2822009F8](sub_22B9D66D0, v4, 0);
}

uint64_t sub_22B9D66D0()
{
  v1 = *(v0 + 104);
  if (sub_22B9CB6C8())
  {
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v2 = sub_22BA0FEFC();
    sub_22B936CA8(v2, qword_28141AD10);
    v3 = sub_22BA0FEDC();
    v4 = sub_22BA1046C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22B92A000, v3, v4, "Broadcasting import progress", v5, 2u);
      MEMORY[0x23189ADD0](v5, -1, -1);
    }

    v6 = *(v0 + 112);
    v7 = *(v0 + 120);
    v8 = *(v0 + 104);

    sub_22BA0FD6C();
    v9 = sub_22BA0FD8C();
    (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
    swift_beginAccess();
    sub_22B9D7A7C(v6, v8 + v7);
    swift_endAccess();
    v10 = sub_22B9D6CB0;
    goto LABEL_17;
  }

  if (!*(v0 + 152))
  {
    v10 = sub_22B9D739C;
LABEL_17:

    return MEMORY[0x2822009F8](v10, 0, 0);
  }

  v11 = *(v0 + 128);
  v12 = *(v0 + 88);
  sub_22B97EAEC();
  if (v11)
  {
    v13 = v11;
    if (qword_281414D18 != -1)
    {
      swift_once();
    }

    v14 = sub_22BA0FEFC();
    sub_22B936CA8(v14, qword_28141AD10);
    v15 = v11;
    v16 = sub_22BA0FEDC();
    v17 = sub_22BA1042C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v13;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_22B92A000, v16, v17, "Importer stopping work due to %@", v18, 0xCu);
      sub_22B936BEC(v19, &qword_27D8D4CD0, qword_22BA14360);
      MEMORY[0x23189ADD0](v19, -1, -1);
      MEMORY[0x23189ADD0](v18, -1, -1);
    }

    v22 = *(v0 + 112);

    swift_willThrow();

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    *(v0 + 128) = 0;
    v25 = *(v0 + 208);
    KeyPath = swift_getKeyPath();
    v27 = sub_22B9A7818(KeyPath, 0);

    v28 = swift_getKeyPath();
    v29 = 0xEF32766465747079;
    v30 = 0x72636E4574616863;
    v31 = 0xEF31566574616470;
    v32 = 0x556567617373656DLL;
    if (v25 != 5)
    {
      v32 = 0x6E776F6E6B6E75;
      v31 = 0xE700000000000000;
    }

    v33 = 0xEA0000000000746ELL;
    v34 = 0x656D686361747461;
    if (v25 != 3)
    {
      v34 = 0xD000000000000012;
      v33 = 0x800000022BA1BA10;
    }

    if (v25 <= 4)
    {
      v32 = v34;
      v31 = v33;
    }

    if (v25 != 1)
    {
      v30 = 0xD000000000000012;
      v29 = 0x800000022BA1B9F0;
    }

    if (!v25)
    {
      v30 = 0xD000000000000012;
      v29 = 0x800000022BA1B9C0;
    }

    if (v25 <= 2)
    {
      v35 = v30;
    }

    else
    {
      v35 = v32;
    }

    if (v25 <= 2)
    {
      v36 = v29;
    }

    else
    {
      v36 = v31;
    }

    v37 = *(v0 + 208);
    v38 = sub_22B9A7C48(v28, v35, v36);

    sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_22BA17B40;
    *(v39 + 32) = v27;
    *(v39 + 40) = v38;
    v40 = objc_allocWithZone(MEMORY[0x277CCA920]);
    sub_22B9A90E8();
    v41 = v27;
    v42 = v38;
    v43 = sub_22BA101DC();

    v44 = [v40 initWithType:1 subpredicates:v43];
    *(v0 + 136) = v44;

    v45 = swift_task_alloc();
    *(v0 + 144) = v45;
    *v45 = v0;
    v45[1] = sub_22B9D65A0;
    if (v37 == 2)
    {
      v46 = 100;
    }

    else
    {
      v46 = 5;
    }

    v47 = *(v0 + 96);
    v48 = *(v0 + 104);
    v49 = *(v0 + 88);
    v50 = *(v0 + 208);

    return sub_22B9C82E0(v44, v50, v46, 0, 1, v49, v47);
  }
}

uint64_t sub_22B9D6CB0()
{
  v1 = *(*(v0 + 88) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
  *(v0 + 160) = v1;
  return MEMORY[0x2822009F8](sub_22B9D6CE0, v1, 0);
}

uint64_t sub_22B9D6CE0()
{
  v1 = *(v0 + 160);
  swift_beginAccess();
  *(v0 + 168) = *(v1 + 120);
  *(v0 + 176) = *(v1 + 128);
  *(v0 + 209) = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_22B9D6D70, 0, 0);
}

uint64_t sub_22B9D6D70()
{
  v1 = *sub_22B9358B4((*(v0 + 88) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore), *(*(v0 + 88) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore + 24));

  return MEMORY[0x2822009F8](sub_22B9D6DEC, v1, 0);
}

uint64_t sub_22B9D6DEC()
{
  sub_22B9E45D8(*(v0 + 168), *(v0 + 176), 0);

  return MEMORY[0x2822009F8](sub_22B9D6E58, 0, 0);
}

uint64_t sub_22B9D6E58()
{
  v1 = *(v0 + 209);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 104);
  v5 = *sub_22B9358B4((*(v0 + 88) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(*(v0 + 88) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  sub_22BA0980C(v3, v2, v1);

  return MEMORY[0x2822009F8](sub_22B9D6F04, v4, 0);
}

uint64_t sub_22B9D6F04()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 128);
    v2 = *(v0 + 88);
    sub_22B97EAEC();
    if (v1)
    {
      v3 = v1;
      if (qword_281414D18 != -1)
      {
        swift_once();
      }

      v4 = sub_22BA0FEFC();
      sub_22B936CA8(v4, qword_28141AD10);
      v5 = v1;
      v6 = sub_22BA0FEDC();
      v7 = sub_22BA1042C();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138412290;
        v10 = v3;
        v11 = _swift_stdlib_bridgeErrorToNSError();
        *(v8 + 4) = v11;
        *v9 = v11;
        _os_log_impl(&dword_22B92A000, v6, v7, "Importer stopping work due to %@", v8, 0xCu);
        sub_22B936BEC(v9, &qword_27D8D4CD0, qword_22BA14360);
        MEMORY[0x23189ADD0](v9, -1, -1);
        MEMORY[0x23189ADD0](v8, -1, -1);
      }

      v12 = *(v0 + 112);

      swift_willThrow();

      v13 = *(v0 + 8);

      return v13();
    }

    else
    {
      *(v0 + 128) = 0;
      v15 = *(v0 + 208);
      KeyPath = swift_getKeyPath();
      v17 = sub_22B9A7818(KeyPath, 0);

      v18 = swift_getKeyPath();
      v19 = 0xEF32766465747079;
      v20 = 0x72636E4574616863;
      v21 = 0xEF31566574616470;
      v22 = 0x556567617373656DLL;
      if (v15 != 5)
      {
        v22 = 0x6E776F6E6B6E75;
        v21 = 0xE700000000000000;
      }

      v23 = 0xEA0000000000746ELL;
      v24 = 0x656D686361747461;
      if (v15 != 3)
      {
        v24 = 0xD000000000000012;
        v23 = 0x800000022BA1BA10;
      }

      if (v15 <= 4)
      {
        v22 = v24;
        v21 = v23;
      }

      if (v15 != 1)
      {
        v20 = 0xD000000000000012;
        v19 = 0x800000022BA1B9F0;
      }

      if (!v15)
      {
        v20 = 0xD000000000000012;
        v19 = 0x800000022BA1B9C0;
      }

      if (v15 <= 2)
      {
        v25 = v20;
      }

      else
      {
        v25 = v22;
      }

      if (v15 <= 2)
      {
        v26 = v19;
      }

      else
      {
        v26 = v21;
      }

      v27 = *(v0 + 208);
      v28 = sub_22B9A7C48(v18, v25, v26);

      sub_22B9349C8(&qword_27D8D4F60, &unk_22BA17970);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_22BA17B40;
      *(v29 + 32) = v17;
      *(v29 + 40) = v28;
      v30 = objc_allocWithZone(MEMORY[0x277CCA920]);
      sub_22B9A90E8();
      v31 = v17;
      v32 = v28;
      v33 = sub_22BA101DC();

      v34 = [v30 initWithType:1 subpredicates:v33];
      *(v0 + 136) = v34;

      v35 = swift_task_alloc();
      *(v0 + 144) = v35;
      *v35 = v0;
      v35[1] = sub_22B9D65A0;
      if (v27 == 2)
      {
        v36 = 100;
      }

      else
      {
        v36 = 5;
      }

      v37 = *(v0 + 96);
      v38 = *(v0 + 104);
      v39 = *(v0 + 88);
      v40 = *(v0 + 208);

      return sub_22B9C82E0(v34, v40, v36, 0, 1, v39, v37);
    }
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22B9D739C, 0, 0);
  }
}

uint64_t sub_22B9D739C()
{
  v1 = *(*(v0 + 88) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector);
  *(v0 + 184) = v1;
  return MEMORY[0x2822009F8](sub_22B9D73CC, v1, 0);
}

uint64_t sub_22B9D73CC()
{
  v1 = *(v0 + 184);
  swift_beginAccess();
  *(v0 + 192) = *(v1 + 120);
  *(v0 + 200) = *(v1 + 128);
  *(v0 + 210) = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_22B9D745C, 0, 0);
}

uint64_t sub_22B9D745C()
{
  v1 = *sub_22B9358B4((*(v0 + 88) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore), *(*(v0 + 88) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore + 24));

  return MEMORY[0x2822009F8](sub_22B9D74D8, v1, 0);
}

uint64_t sub_22B9D74D8()
{
  sub_22B9E45D8(*(v0 + 192), *(v0 + 200), 0);

  return MEMORY[0x2822009F8](sub_22B9D7544, 0, 0);
}

uint64_t sub_22B9D7544()
{
  v1 = *(v0 + 210);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 112);
  v5 = *sub_22B9358B4((*(v0 + 88) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(*(v0 + 88) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  sub_22BA0980C(v3, v2, v1);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_22B9D75F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = *(*(sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9D7694, v3, 0);
}

uint64_t sub_22B9D7694()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = sub_22BA0FD8C();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = OBJC_IVAR____TtC17MessagesCloudSync16DatabaseImporter_lastImportProgressDate;
  swift_beginAccess();
  sub_22B9D7A7C(v2, v1 + v5);
  swift_endAccess();
  v6 = *(v3 + 16);
  v0[10] = v6;
  if (v6)
  {
    v7 = v0[7];
    v0[11] = 0;
    v8 = *(v7 + 32);
    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v9[1] = sub_22B9D7820;
    v10 = v0[8];
    v11 = v0[5];
    v12 = v0[6];

    return (sub_22B9D6234)(v8, v11, v12);
  }

  else
  {
    v14 = v0[9];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_22B9D7820()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 72);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = *(v2 + 64);

    return MEMORY[0x2822009F8](sub_22B9D796C, v8, 0);
  }
}

uint64_t sub_22B9D796C()
{
  v1 = v0[11] + 1;
  if (v1 == v0[10])
  {
    v2 = v0[9];

    v3 = v0[1];

    return v3();
  }

  else
  {
    v0[11] = v1;
    v5 = *(v0[7] + v1 + 32);
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_22B9D7820;
    v7 = v0[8];
    v8 = v0[5];
    v9 = v0[6];

    return (sub_22B9D6234)(v5, v8, v9);
  }
}

uint64_t sub_22B9D7A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B9D7B1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B9D7B84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22B9D7BE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22B9349C8(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_22B9D7C4C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22B9D7C94()
{
  result = qword_281414C00;
  if (!qword_281414C00)
  {
    sub_22B948760(&qword_27D8D5960, &unk_22BA1AA20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281414C00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DatabaseImporter.Batch(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DatabaseImporter.Batch(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_22B9D7D70(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B9D7D8C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_22B9D7DBC()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22B9D7E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = *v6;
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = sub_22B945AC8;

  return sub_22B9DA594(a3, a4, a5, a6 & 1);
}

uint64_t sub_22B9D7EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_22B943E68;

  return (sub_22B9DA014)(a3);
}

uint64_t sub_22B9D7F9C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22B9349C8(&qword_27D8D4BC0, &qword_22BA18560);
  v38 = a2;
  result = sub_22BA10A7C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_22BA10D3C();
      sub_22BA1008C();
      result = sub_22BA10D6C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22B9D823C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22B9349C8(&qword_27D8D5968, &unk_22BA19760);
  v41 = a2;
  result = sub_22BA10A7C();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
    v40 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + v23;
      v28 = *v27;
      v42 = *(v27 + 8);
      if ((v41 & 1) == 0)
      {

        v29 = v28;
      }

      v30 = *(v8 + 40);
      sub_22BA10D3C();
      sub_22BA1008C();
      result = sub_22BA10D6C();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v28;
      v19[1] = v42;
      ++*(v8 + 16);
      v5 = v40;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v10, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22B9D84F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22B9349C8(&unk_27D8D57A0, &qword_22BA18568);
  v37 = a2;
  result = sub_22BA10A7C();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      if ((v37 & 1) == 0)
      {
        v26 = v22;
      }

      v27 = *(v8 + 40);
      result = sub_22BA1071C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22B9D877C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_22B9349C8(&qword_27D8D5510, &qword_22BA16DF0);
  v36 = a2;
  result = sub_22BA10A7C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_22B936C98(v25, v37);
      }

      else
      {
        sub_22B936B20(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_22BA10D3C();
      sub_22BA1008C();
      result = sub_22BA10D6C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_22B936C98(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}