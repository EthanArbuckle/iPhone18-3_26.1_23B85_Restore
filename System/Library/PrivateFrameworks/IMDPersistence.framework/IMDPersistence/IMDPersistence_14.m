uint64_t sub_1B7C4D0B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

uint64_t sub_1B7C4D114()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_1B7C4D14C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_1B7C4D1E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

uint64_t sub_1B7C4D244()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_1B7C4D27C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t sub_1B7C4D314(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
}

uint64_t sub_1B7C4D374()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t sub_1B7C4D3AC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

void *StorageInspectorCrossCheckReport.__allocating_init()()
{
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *StorageInspectorCrossCheckReport.init()()
{
  result = v0;
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 0;
  return result;
}

unint64_t sub_1B7C4D480()
{
  v1 = 0xD000000000000037;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000003BLL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000002ELL;
  }

  *v0;
  return result;
}

uint64_t sub_1B7C4D4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7C4E540(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7C4D50C(uint64_t a1)
{
  v2 = sub_1B7C4D8B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7C4D548(uint64_t a1)
{
  v2 = sub_1B7C4D8B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *StorageInspectorCrossCheckReport.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t StorageInspectorCrossCheckReport.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t sub_1B7C4D5FC(void *a1)
{
  v3 = v1;
  v5 = sub_1B7C107FC(&qword_1EBA527A0, &qword_1B7D0CFE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C4D8B4();
  sub_1B7CFF830();
  swift_beginAccess();
  v15 = v3[2];
  LOBYTE(v14) = 0;
  type metadata accessor for RecordCounterDatabaseInspectorCrossCheckReport();
  sub_1B7C4DCCC(&qword_1EBA527B0, type metadata accessor for RecordCounterDatabaseInspectorCrossCheckReport);
  sub_1B7CFF4C0();
  if (!v2)
  {
    swift_beginAccess();
    v14 = v3[3];
    LOBYTE(v13) = 1;
    type metadata accessor for RecordCounterAttachmentStorageInspectorCrossCheckReport();
    sub_1B7C4DCCC(&qword_1EBA527B8, type metadata accessor for RecordCounterAttachmentStorageInspectorCrossCheckReport);
    sub_1B7CFF4C0();
    swift_beginAccess();
    v13 = v3[4];
    v12[15] = 2;
    type metadata accessor for DatabaseInspectorAttachmentStorageInspectorCrossCheckReport();
    sub_1B7C4DCCC(&qword_1EBA527C0, type metadata accessor for DatabaseInspectorAttachmentStorageInspectorCrossCheckReport);
    sub_1B7CFF4C0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1B7C4D8B4()
{
  result = qword_1EBA527A8;
  if (!qword_1EBA527A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA527A8);
  }

  return result;
}

uint64_t StorageInspectorCrossCheckReport.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  StorageInspectorCrossCheckReport.init(from:)(a1);
  return v2;
}

uint64_t *StorageInspectorCrossCheckReport.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_1B7C107FC(&qword_1EBA527C8, &unk_1B7D0CFE8);
  v25 = *(v5 - 8);
  v26 = v5;
  v6 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  v3[4] = 0;
  v9 = v3 + 4;
  v3[2] = 0;
  v10 = v3 + 2;
  v3[3] = 0;
  v11 = v3 + 3;
  v13 = a1[3];
  v12 = a1[4];
  v27 = a1;
  sub_1B7AE9124(a1, v13);
  sub_1B7C4D8B4();
  v24 = v8;
  sub_1B7CFF820();
  if (!v2)
  {
    type metadata accessor for RecordCounterDatabaseInspectorCrossCheckReport();
    v30 = 0;
    sub_1B7C4DCCC(&qword_1EBA527D0, type metadata accessor for RecordCounterDatabaseInspectorCrossCheckReport);
    v14 = v26;
    v15 = v24;
    sub_1B7CFF400();
    v16 = v29;
    swift_beginAccess();
    v17 = *v10;
    *v10 = v16;

    type metadata accessor for RecordCounterAttachmentStorageInspectorCrossCheckReport();
    LOBYTE(v29) = 1;
    sub_1B7C4DCCC(&qword_1EBA527D8, type metadata accessor for RecordCounterAttachmentStorageInspectorCrossCheckReport);
    sub_1B7CFF400();
    v19 = v28;
    swift_beginAccess();
    v20 = *v11;
    *v11 = v19;

    type metadata accessor for DatabaseInspectorAttachmentStorageInspectorCrossCheckReport();
    LOBYTE(v28) = 2;
    sub_1B7C4DCCC(&qword_1EBA527E0, type metadata accessor for DatabaseInspectorAttachmentStorageInspectorCrossCheckReport);
    sub_1B7CFF400();
    (*(v25 + 8))(v15, v14);
    v21 = v31;
    swift_beginAccess();
    v22 = *v9;
    *v9 = v21;
  }

  sub_1B7AE9168(v27);
  return v3;
}

uint64_t sub_1B7C4DCCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_1B7C4DD14@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for StorageInspectorCrossCheckReport();
  v5 = swift_allocObject();
  result = StorageInspectorCrossCheckReport.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t StorageInspectorCrossCheckReport.formatReport(with:)(uint64_t a1)
{
  v2 = v1;
  result = sub_1B7C219E4(0xD000000000000014, 0x80000001B7D54370);
  v5 = *(a1 + 24);
  v6 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(a1 + 24) = v6;
  swift_beginAccess();
  if (v2[2])
  {
    v7 = v2[2];

    result = sub_1B7C219E4(0xD000000000000025, 0x80000001B7D54400);
    v8 = *(a1 + 24);
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    *(a1 + 24) = v10;
    sub_1B7C9F5D4(a1);

    v11 = *(a1 + 24);
    v6 = v11 - 1;
    if (__OFSUB__(v11, 1))
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    *(a1 + 24) = v6;
  }

  swift_beginAccess();
  if (v2[3])
  {
    v12 = v2[3];

    result = sub_1B7C219E4(0xD00000000000002FLL, 0x80000001B7D543D0);
    v13 = *(a1 + 24);
    v9 = __OFADD__(v13, 1);
    v14 = v13 + 1;
    if (v9)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    *(a1 + 24) = v14;
    sub_1B7C9F5D4(a1);

    v15 = *(a1 + 24);
    v6 = v15 - 1;
    if (__OFSUB__(v15, 1))
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    *(a1 + 24) = v6;
  }

  result = swift_beginAccess();
  if (!v2[4])
  {
LABEL_14:
    if (!__OFSUB__(v6, 1))
    {
      *(a1 + 24) = v6 - 1;
      return result;
    }

    goto LABEL_17;
  }

  result = sub_1B7C219E4(0xD000000000000034, 0x80000001B7D54390);
  v16 = *(a1 + 24);
  v9 = __OFADD__(v16, 1);
  v17 = v16 + 1;
  if (v9)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *(a1 + 24) = v17;
  sub_1B7C9F5D4(a1);

  v18 = *(a1 + 24);
  v6 = v18 - 1;
  if (!__OFSUB__(v18, 1))
  {
    *(a1 + 24) = v6;
    goto LABEL_14;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t StorageInspectorCrossCheckReport.description.getter()
{
  v1 = *v0;
  v9 = sub_1B7CFF8D0();
  MEMORY[0x1B8CADCA0](663610, 0xE300000000000000);
  type metadata accessor for StorageInspectorReportStringBuilder();
  inited = swift_initStackObject();
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  v3 = (inited + 16);
  *(inited + 24) = 0;
  StorageInspectorCrossCheckReport.formatReport(with:)(inited);
  swift_beginAccess();
  v8 = *v3;
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v4 = sub_1B7CFEA10();
  v6 = v5;

  MEMORY[0x1B8CADCA0](v4, v6);

  return v9;
}

uint64_t getEnumTagSinglePayload for StorageInspectorCrossCheckReport.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StorageInspectorCrossCheckReport.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B7C4E43C()
{
  result = qword_1EBA527E8;
  if (!qword_1EBA527E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA527E8);
  }

  return result;
}

unint64_t sub_1B7C4E494()
{
  result = qword_1EBA527F0;
  if (!qword_1EBA527F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA527F0);
  }

  return result;
}

unint64_t sub_1B7C4E4EC()
{
  result = qword_1EBA527F8;
  if (!qword_1EBA527F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA527F8);
  }

  return result;
}

uint64_t sub_1B7C4E540(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000002ELL && 0x80000001B7D54470 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000037 && 0x80000001B7D544A0 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000003BLL && 0x80000001B7D544E0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1B7CFF590();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_1B7C4E668(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1B7C4E6D0()
{
  v0 = sub_1B7CFE420();
  sub_1B7AED154(v0, qword_1EDBE5950);
  sub_1B7AD9040(v0, qword_1EDBE5950);
  sub_1B7CFE3F0();
  return sub_1B7CFE410();
}

id sub_1B7C4E73C()
{
  result = [objc_allocWithZone(type metadata accessor for PersistenceServiceClient()) init];
  qword_1EDBE79F0 = result;
  return result;
}

id sub_1B7C4E7E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PersistenceServiceClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B7C4E824()
{
  result = sub_1B7CFEA30();
  qword_1EDBE39F8 = result;
  return result;
}

id static NSNotificationName.persistenceConnectionInterrupted.getter()
{
  if (qword_1EDBE39F0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDBE39F8;

  return v1;
}

void sub_1B7C4E8DC(uint64_t a1)
{
  if (qword_1EDBE5940 != -1)
  {
    swift_once();
  }

  v2 = sub_1B7CFE420();
  sub_1B7AD9040(v2, qword_1EDBE5950);
  v3 = sub_1B7CFE400();
  v4 = sub_1B7CFEF00();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B7AD5000, v3, v4, "Persistence XPC connection invalidated", v5, 2u);
    MEMORY[0x1B8CB0E70](v5, -1, -1);
  }

  v6 = *(a1 + OBJC_IVAR____TtC14IMDPersistence24PersistenceServiceClient_lock);
  MEMORY[0x1EEE9AC00](v7);
  os_unfair_lock_lock((v6 + 24));
  sub_1B7C4EFC0((v6 + 16));
  os_unfair_lock_unlock((v6 + 24));
}

void sub_1B7C4EA0C(id *a1)
{
  v2 = [objc_opt_self() defaultCenter];
  if (qword_1EDBE39F0 != -1)
  {
    swift_once();
  }

  [v2 postNotificationName:qword_1EDBE39F8 object:0];

  *a1 = 0;
}

void sub_1B7C4EABC()
{
  if (qword_1EDBE5940 != -1)
  {
    swift_once();
  }

  v0 = sub_1B7CFE420();
  sub_1B7AD9040(v0, qword_1EDBE5950);
  v1 = sub_1B7CFE400();
  v2 = sub_1B7CFEF00();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1B7AD5000, v1, v2, "Persistence XPC connection interrupted", v3, 2u);
    MEMORY[0x1B8CB0E70](v3, -1, -1);
  }

  v4 = [objc_opt_self() defaultCenter];
  v5 = v4;
  if (qword_1EDBE39F0 != -1)
  {
    swift_once();
    v4 = v5;
  }

  [v4 postNotificationName:qword_1EDBE39F8 object:0];
}

void sub_1B7C4EC20(void *a1)
{
  if (qword_1EDBE5940 != -1)
  {
    swift_once();
  }

  v2 = sub_1B7CFE420();
  sub_1B7AD9040(v2, qword_1EDBE5950);
  v3 = a1;
  oslog = sub_1B7CFE400();
  v4 = sub_1B7CFEEF0();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_1B7CFF750();
    v9 = sub_1B7AED1B8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1B7AD5000, oslog, v4, "Received error for synchronous proxy to persistence agent: %s", v5, 0xCu);
    sub_1B7AE9168(v6);
    MEMORY[0x1B8CB0E70](v6, -1, -1);
    MEMORY[0x1B8CB0E70](v5, -1, -1);
  }

  else
  {
  }
}

void sub_1B7C4EDB8(id *a1)
{
  v2 = [objc_opt_self() defaultCenter];
  if (qword_1EDBE39F0 != -1)
  {
    swift_once();
  }

  [v2 postNotificationName:qword_1EDBE39F8 object:0];

  v3 = *a1;
  [*a1 invalidate];

  *a1 = 0;
}

uint64_t sub_1B7C4EEE0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B7C4EF3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_1B7C4EFE4()
{
  v0 = type metadata accessor for StorageInspectorReportManager();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC14IMDPersistence29StorageInspectorReportManager____lazy_storage___reportDirectoryURL;
  v5 = sub_1B7CFDFF0();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC14IMDPersistence29StorageInspectorReportManager_report;
  result = [objc_allocWithZone(type metadata accessor for StorageInspectorReport()) init];
  *(v3 + v6) = result;
  qword_1EBA5DAF0 = v3;
  return result;
}

uint64_t sub_1B7C4F08C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = sub_1B7CFDFF0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B7CFE120();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v35 - v18;
  v20 = OBJC_IVAR____TtC14IMDPersistence29StorageInspectorReportManager____lazy_storage___reportDirectoryURL;
  swift_beginAccess();
  sub_1B7C487D8(v2 + v20, v19);
  if ((*(v4 + 48))(v19, 1, v3) != 1)
  {
    return (*(v4 + 32))(v36, v19, v3);
  }

  sub_1B7C4FB10(v19);
  v21 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  sub_1B7CFE110();
  v22 = sub_1B7CFE0A0();
  v35 = v2;
  v23 = v22;
  (*(v9 + 8))(v12, v8);
  v24 = [v21 stringFromDate_];

  v25 = sub_1B7CFEA60();
  v27 = v26;

  v37 = v25;
  v38 = v27;
  v41 = 58;
  v42 = 0xE100000000000000;
  v39 = 45;
  v40 = 0xE100000000000000;
  sub_1B7C4BFF0();
  v28 = sub_1B7CFF070();
  v30 = v29;

  v31 = NSTemporaryDirectory();
  sub_1B7CFEA60();

  sub_1B7CFDF20();

  v37 = 0;
  v38 = 0xE000000000000000;
  sub_1B7CFF210();

  v37 = 0xD000000000000020;
  v38 = 0x80000001B7D54730;
  MEMORY[0x1B8CADCA0](v28, v30);

  v32 = v36;
  sub_1B7CFDF60();

  (*(v4 + 8))(v7, v3);
  (*(v4 + 16))(v17, v32, v3);
  (*(v4 + 56))(v17, 0, 1, v3);
  v33 = v35;
  swift_beginAccess();
  sub_1B7C4FB78(v17, v33 + v20);
  return swift_endAccess();
}

uint64_t sub_1B7C4F4C8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v5 = sub_1B7CFE420();
  v50 = *(v5 - 8);
  v51 = v5;
  v6 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v49 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B7CFDFF0();
  v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v46 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v46 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v46[0] = v46 - v19;
  v20 = a2[4];
  sub_1B7AE9124(a2, a2[3]);
  sub_1B7C81520();
  v46[1] = v21;
  v48 = a1;
  sub_1B7AE9124(a1, a1[3]);
  swift_getDynamicType();
  sub_1B7CFF8D0();
  sub_1B7C4F08C(v11);
  sub_1B7CFDF60();
  v22 = v47;
  v23 = *(v47 + 8);
  v23(v11, v8);
  sub_1B7CFDF60();
  v23(v14, v8);
  v24 = v46[0];
  sub_1B7CFDF70();
  v23(v17, v8);
  v25 = v22;
  v26 = type metadata accessor for StorageInspectorReportFile();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  v29 = swift_allocObject();
  v30 = (v29 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile____lazy_storage___path);
  *v30 = 0;
  v30[1] = 0;
  *(v29 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_fileHandle) = 0;
  (*(v22 + 32))(v29 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_pathURL, v24, v8);

  v31 = v48[3];
  v32 = v48[4];
  sub_1B7AE9124(v48, v31);
  v33 = StorageInspectionReport.reportLines.getter(v31, v32);
  sub_1B7C96998(v33);

  v34 = v49;
  sub_1B7CFE410();

  v35 = sub_1B7CFE400();
  v36 = sub_1B7CFEED0();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v53 = v38;
    *v37 = 136315138;
    v39 = sub_1B7C95CE0();
    v41 = sub_1B7AED1B8(v39, v40, &v53);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_1B7AD5000, v35, v36, "Wrote report to: %s", v37, 0xCu);
    sub_1B7AE9168(v38);
    MEMORY[0x1B8CB0E70](v38, -1, -1);
    MEMORY[0x1B8CB0E70](v37, -1, -1);
  }

  (*(v50 + 8))(v34, v51);
  (*(v25 + 16))(v52, v29 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_pathURL, v8);
  swift_setDeallocating();
  v42 = *sub_1B7C95D64();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_1B7C4F9AC()
{
  sub_1B7C4FB10(v0 + OBJC_IVAR____TtC14IMDPersistence29StorageInspectorReportManager____lazy_storage___reportDirectoryURL);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StorageInspectorReportManager()
{
  result = qword_1EBA52828;
  if (!qword_1EBA52828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B7C4FA74()
{
  sub_1B7C4954C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1B7C4FB10(uint64_t a1)
{
  v2 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7C4FB78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7C4FBE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 344);
  *(v3 + 344) = v2;
}

uint64_t sub_1B7C4FC48()
{
  swift_beginAccess();
  v1 = *(v0 + 344);
}

uint64_t sub_1B7C4FC80(uint64_t a1)
{
  v3 = sub_1B7CFDFF0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B7C219E4(0xD000000000000024, 0x80000001B7D54760);
  v9 = *(a1 + 24);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(a1 + 24) = v11;
  sub_1B7C6A6CC(a1);
  sub_1B7C219E4(0, 0xE000000000000000);
  result = sub_1B7C219E4(0xD000000000000021, 0x80000001B7D54790);
  v12 = *(a1 + 24);
  v10 = __OFADD__(v12, 1);
  v13 = v12 + 1;
  if (v10)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(a1 + 24) = v13;
  swift_beginAccess();
  result = *(v1 + 344);
  v14 = *(result + 16);
  if (v14)
  {
    v15 = v4 + 16;
    v36 = *(v4 + 16);
    v37 = v4 + 16;
    v16 = result + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v17 = *(v15 + 56);
    v33[1] = result;
    v34 = v17;
    v18 = (v15 - 8);

    v35 = v3;
    while (1)
    {
      v36(v7, v16, v3);
      result = sub_1B7CFDFC0();
      if (*(a1 + 24) + 0x4000000000000000 < 0)
      {
        break;
      }

      v20 = result;
      v21 = v19;
      v38 = sub_1B7CFEC10();
      v39 = v22;
      MEMORY[0x1B8CADCA0](v20, v21);

      v23 = v38;
      v24 = v39;
      swift_beginAccess();
      v25 = *(a1 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a1 + 16) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_1B7AF182C(0, *(v25 + 2) + 1, 1, v25);
        *(a1 + 16) = v25;
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      if (v28 >= v27 >> 1)
      {
        v25 = sub_1B7AF182C((v27 > 1), v28 + 1, 1, v25);
      }

      *(v25 + 2) = v28 + 1;
      v29 = &v25[16 * v28];
      *(v29 + 4) = v23;
      *(v29 + 5) = v24;
      *(a1 + 16) = v25;
      swift_endAccess();
      v3 = v35;
      (*v18)(v7, v35);
      v16 += v34;
      if (!--v14)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_12:
  v30 = *(a1 + 24);
  v10 = __OFSUB__(v30, 1);
  v31 = v30 - 1;
  if (v10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = __OFSUB__(v31, 1);
  v32 = v31 - 1;
  if (!v10)
  {
    *(a1 + 24) = v32;
    return result;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t ExportableDatabaseRecordCountReport.__allocating_init(from:)(uint64_t *a1)
{
  *(swift_allocObject() + 344) = MEMORY[0x1E69E7CC0];
  sub_1B7AE90A8(a1, v4);
  v2 = StorageInspectionCountReport.init(from:)(v4);
  sub_1B7AE9168(a1);
  return v2;
}

uint64_t ExportableDatabaseRecordCountReport.init(from:)(uint64_t *a1)
{
  *(v1 + 344) = MEMORY[0x1E69E7CC0];
  sub_1B7AE90A8(a1, v5);
  v3 = StorageInspectionCountReport.init(from:)(v5);
  sub_1B7AE9168(a1);
  return v3;
}

uint64_t ExportableDatabaseRecordCountReport.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 344);

  return v0;
}

uint64_t ExportableDatabaseRecordCountReport.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 344);

  return swift_deallocClassInstance();
}

id sub_1B7C501BC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_1B7CFEA30();

  return v6;
}

uint64_t sub_1B7C50224(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1B7CFEA60();
  v7 = (a1 + *a4);
  v8 = v7[1];
  *v7 = v6;
  v7[1] = v9;
}

id IMDAttachmentMetadata.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  v2 = v1;
  sub_1B7AEE088(0, &unk_1EDBE59A0, 0x1E696AEC0);
  v4 = sub_1B7CFEFB0();
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B7CFEFB0();
    if (v6)
    {
      v7 = v6;
      v8 = sub_1B7CFEA30();
      v9 = [a1 decodeBoolForKey_];

      v10 = sub_1B7CFEFB0();
      v11 = [v2 initWithPermanentAttachmentGUID:v5 messageGUID:v7 fromMe:v9 handleID:v10];

      return v11;
    }
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1B7C505E8(void *a1)
{
  v3 = [v1 permanentAttachmentGUID];
  if (!v3)
  {
    sub_1B7CFEA60();
    v3 = sub_1B7CFEA30();
  }

  v4 = sub_1B7CFEA30();
  [a1 encodeObject:v3 forKey:v4];

  v5 = [v1 messageGUID];
  if (!v5)
  {
    sub_1B7CFEA60();
    v5 = sub_1B7CFEA30();
  }

  v6 = sub_1B7CFEA30();
  [a1 encodeObject:v5 forKey:v6];

  v7 = [v1 fromMe];
  v8 = sub_1B7CFEA30();
  [a1 encodeBool:v7 forKey:v8];

  v9 = [v1 handleID];
  v10 = sub_1B7CFEA30();
  [a1 encodeObject:v9 forKey:v10];
}

id IMDAttachmentMetadata.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void *IMDMessageRecord.makeIMItem(inputHandleString:useAttachmentCache:shouldLoadAttachments:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  if (a2)
  {
    v7 = sub_1B7CFEA30();
  }

  else
  {
    v7 = 0;
  }

  v8 = IMDCreateIMItemFromIMDMessageRecord(v4, v7, a3 & 1, a4 & 1);

  return v8;
}

uint64_t sub_1B7C50960()
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD00000000000001BLL, 0x80000001B7D513A0);
  MEMORY[0x1B8CADCA0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1B8CADCA0](0xD000000000000096, 0x80000001B7D549D0);
  SqlOperation.execute(_:_:)(0, 0xE000000000000000, 0);

  if (!v1)
  {
    sub_1B7C741A8();

    sub_1B7C741A8();
  }

  return result;
}

uint64_t sub_1B7C50AB8()
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0x4920545245534E49, 0xEC000000204F544ELL);
  MEMORY[0x1B8CADCA0](v0[2], v0[3]);
  MEMORY[0x1B8CADCA0](0xD000000000000093, 0x80000001B7D54930);
  MEMORY[0x1B8CADCA0](v0[4], v0[5]);
  MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
  SqlOperation.execute(_:_:)(0, 0xE000000000000000, 0);
}

uint64_t sub_1B7C50BFC(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1B7AF182C(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B7C50CF0(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1B7CA2198(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_1B7CFE850();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B7C50E44(uint64_t result)
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

  result = sub_1B7CA21C0(result, v12, 1, v3);
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

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

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

void *sub_1B7C50F30(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1B7CA1D90(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1B7C107FC(&qword_1EBA52478, &unk_1B7D0D930);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t StorageInspector.StorageInspectorError.hashValue.getter()
{
  sub_1B7CFF7C0();
  MEMORY[0x1B8CAE910](0);
  return sub_1B7CFF800();
}

uint64_t sub_1B7C510AC()
{
  sub_1B7CFF7C0();
  MEMORY[0x1B8CAE910](0);
  return sub_1B7CFF800();
}

uint64_t sub_1B7C510F0()
{
  sub_1B7CFF7C0();
  MEMORY[0x1B8CAE910](0);
  return sub_1B7CFF800();
}

uint64_t StorageInspector.options.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14IMDPersistence16StorageInspector_options;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t StorageInspector.schedulingBehavior.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14IMDPersistence16StorageInspector_schedulingBehavior;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t StorageInspector.schedulingBehavior.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC14IMDPersistence16StorageInspector_schedulingBehavior;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

id StorageInspector.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StorageInspector.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC14IMDPersistence16StorageInspector_options] = 31;
  v0[OBJC_IVAR____TtC14IMDPersistence16StorageInspector_schedulingBehavior] = 1;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t StorageInspector.description.getter()
{
  v1 = v0;
  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD00000000000001BLL, 0x80000001B7D54A70);
  v2 = OBJC_IVAR____TtC14IMDPersistence16StorageInspector_options;
  swift_beginAccess();
  v8 = *(v1 + v2);
  StorageInspector.Options.description.getter();
  MEMORY[0x1B8CADCA0](v3);

  MEMORY[0x1B8CADCA0](0xD000000000000016, 0x80000001B7D54A90);
  v4 = OBJC_IVAR____TtC14IMDPersistence16StorageInspector_schedulingBehavior;
  swift_beginAccess();
  if (*(v1 + v4))
  {
    v5 = 0x74696E4972657375;
  }

  else
  {
    v5 = 0x756F72676B636162;
  }

  if (*(v1 + v4))
  {
    v6 = 0xED00006465746169;
  }

  else
  {
    v6 = 0xEA0000000000646ELL;
  }

  MEMORY[0x1B8CADCA0](v5, v6);

  MEMORY[0x1B8CADCA0](93, 0xE100000000000000);
  return 0;
}

void StorageInspector.Options.description.getter()
{
  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = *v0;
LABEL_2:
  if (v1 <= 5)
  {
    v4 = 5;
  }

  else
  {
    v4 = v1;
  }

  v5 = v4 + 1;
  v6 = (&unk_1F2FA1658 + 24 * v1 + 32);
  while (v1 != 5)
  {
    if (v5 == ++v1)
    {
      __break(1u);
      return;
    }

    v7 = v6 + 3;
    v8 = *v6;
    v6 += 3;
    if ((v8 & ~v3) == 0)
    {
      v10 = *(v7 - 2);
      v9 = *(v7 - 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B7C311A8(0, v2[2] + 1, 1);
      }

      v12 = v2[2];
      v11 = v2[3];
      if (v12 >= v11 >> 1)
      {
        sub_1B7C311A8((v11 > 1), v12 + 1, 1);
      }

      v2[2] = v12 + 1;
      v13 = &v2[3 * v12];
      v13[4] = v8;
      v13[5] = v10;
      v13[6] = v9;
      goto LABEL_2;
    }
  }

  v14 = v2[2];
  if (v14)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1B7AECEEC(0, v14, 0);
    v15 = v2 + 6;
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      v19 = *(v21 + 16);
      v18 = *(v21 + 24);

      if (v19 >= v18 >> 1)
      {
        sub_1B7AECEEC((v18 > 1), v19 + 1, 1);
      }

      *(v21 + 16) = v19 + 1;
      v20 = v21 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
      v15 += 3;
      --v14;
    }

    while (v14);
  }

  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  sub_1B7CFEA10();
}

uint64_t StorageInspector.run(withOptions:)(uint64_t *a1)
{
  v2[11] = v1;
  v4 = sub_1B7CFE420();
  v2[12] = v4;
  v5 = *(v4 - 8);
  v2[13] = v5;
  v6 = *(v5 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *a1;
  v2[16] = v7;
  v2[17] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1B7C51848, 0, 0);
}

uint64_t sub_1B7C51848()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[11];
  v4 = OBJC_IVAR____TtC14IMDPersistence16StorageInspector_options;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_1B7CFE070();
  v0[18] = v5;
  sub_1B7CFE410();
  v6 = sub_1B7CFE400();
  v7 = sub_1B7CFEED0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1B7AD5000, v6, v7, "Storage Inspection starting...", v8, 2u);
    MEMORY[0x1B8CB0E70](v8, -1, -1);
  }

  v9 = v0[16];
  v10 = v0[12];
  v11 = v0[13];
  v12 = v0[11];

  v13 = *(v11 + 8);
  v0[19] = v13;
  v13(v9, v10);
  v14 = swift_allocObject();
  v0[20] = v14;
  *(v14 + 16) = 0;
  v15 = swift_allocObject();
  v0[21] = v15;
  *(v15 + 16) = 0;
  v16 = swift_allocObject();
  v0[22] = v16;
  swift_unknownObjectWeakInit();
  v17 = swift_task_alloc();
  v0[23] = v17;
  v17[2] = v16;
  v17[3] = v15;
  v17[4] = v14;
  v18 = *(MEMORY[0x1E69E88D0] + 4);
  v19 = swift_task_alloc();
  v0[24] = v19;
  *v19 = v0;
  v19[1] = sub_1B7C51AA8;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1B7C51AA8()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B7C51BDC, 0, 0);
}

uint64_t sub_1B7C51BDC()
{
  v1 = *(v0 + 120);
  sub_1B7CFE070();
  v3 = v2;
  sub_1B7CFE410();
  v4 = sub_1B7CFE400();
  v5 = sub_1B7CFEED0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 144);
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = v3 - v6;
    _os_log_impl(&dword_1B7AD5000, v4, v5, "Storage Inspection completed in %f seconds", v7, 0xCu);
    MEMORY[0x1B8CB0E70](v7, -1, -1);
  }

  v8 = *(v0 + 168);
  v9 = *(v0 + 152);
  v10 = *(v0 + 120);
  v11 = *(v0 + 96);
  v12 = *(v0 + 104);

  v9(v10, v11);
  swift_beginAccess();
  v13 = *(v8 + 16);
  if (v13)
  {
    v14 = *(v0 + 112);
    v15 = v13;
    sub_1B7CFE410();
    v16 = v13;
    v17 = sub_1B7CFE400();
    v18 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v13;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_1B7AD5000, v17, v18, "Storage Inspection failed with error: %@", v19, 0xCu);
      sub_1B7C20434(v20);
      MEMORY[0x1B8CB0E70](v20, -1, -1);
      MEMORY[0x1B8CB0E70](v19, -1, -1);
    }

    v23 = *(v0 + 152);
    v24 = *(v0 + 112);
    v25 = *(v0 + 96);

    v23(v24, v25);
    goto LABEL_7;
  }

  v33 = *(v0 + 160);
  swift_beginAccess();
  v34 = *(v33 + 16);
  if (!v34)
  {
    sub_1B7C53BD0();
    swift_allocError();
LABEL_7:
    v27 = *(v0 + 160);
    v26 = *(v0 + 168);
    v29 = *(v0 + 120);
    v28 = *(v0 + 128);
    v30 = *(v0 + 112);
    swift_willThrow();

    v31 = *(v0 + 8);

    return v31();
  }

  v35 = *(v0 + 160);
  v36 = *(v0 + 168);
  v38 = *(v0 + 120);
  v37 = *(v0 + 128);
  v39 = *(v0 + 112);
  v40 = v34;

  v41 = *(v0 + 8);

  return v41(v40);
}

uint64_t sub_1B7C51F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B7C107FC(&qword_1EBA52910, &unk_1B7D0D940);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &aBlock[-1] - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_1B7CFEDA0();
  }

  v13 = Strong;
  v14 = [objc_opt_self() database];
  (*(v8 + 16))(v11, a1, v7);
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  (*(v8 + 32))(v16 + v15, v11, v7);
  aBlock[4] = sub_1B7C54338;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7C52274;
  aBlock[3] = &unk_1F2F9F910;
  v17 = _Block_copy(aBlock);

  [v14 inspectStorageWithStorageInspector:v13 completionHandler:v17];
  _Block_release(v17);

  return swift_unknownObjectRelease();
}

uint64_t sub_1B7C521C0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a3 + 16);
  *(a3 + 16) = a2;
  v9 = a2;

  swift_beginAccess();
  v10 = *(a4 + 16);
  *(a4 + 16) = a1;
  v11 = a1;

  sub_1B7C107FC(&qword_1EBA52910, &unk_1B7D0D940);
  return sub_1B7CFEDA0();
}

void sub_1B7C52274(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

unint64_t sub_1B7C52300()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x736E6F6974706FLL;
  }

  *v0;
  return result;
}

uint64_t sub_1B7C52340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000;
  if (v6 || (sub_1B7CFF590() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B7D54B30 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B7CFF590();

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

uint64_t sub_1B7C52430(uint64_t a1)
{
  v2 = sub_1B7C53C24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7C5246C(uint64_t a1)
{
  v2 = sub_1B7C53C24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id StorageInspector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t StorageInspector.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1B7C107FC(&qword_1EBA52870, &qword_1B7D0D328);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C53C24();
  sub_1B7CFF830();
  v11 = OBJC_IVAR____TtC14IMDPersistence16StorageInspector_options;
  swift_beginAccess();
  v15 = *(v3 + v11);
  v16 = 0;
  sub_1B7C53C78();
  sub_1B7CFF500();
  if (!v2)
  {
    v12 = OBJC_IVAR____TtC14IMDPersistence16StorageInspector_schedulingBehavior;
    swift_beginAccess();
    v16 = *(v3 + v12);
    v14[7] = 1;
    sub_1B7C53CCC();
    sub_1B7CFF500();
  }

  return (*(v6 + 8))(v9, v5);
}

void *StorageInspector.init(from:)(uint64_t *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v25 = sub_1B7C107FC(&qword_1EBA52890, &qword_1B7D0D330);
  v23 = *(v25 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v7 = &v21 - v6;
  v8 = OBJC_IVAR____TtC14IMDPersistence16StorageInspector_options;
  *&v1[OBJC_IVAR____TtC14IMDPersistence16StorageInspector_options] = 31;
  v9 = OBJC_IVAR____TtC14IMDPersistence16StorageInspector_schedulingBehavior;
  v1[OBJC_IVAR____TtC14IMDPersistence16StorageInspector_schedulingBehavior] = 1;
  v10 = a1[4];
  v11 = sub_1B7AE9124(a1, a1[3]);
  sub_1B7C53C24();
  v24 = v7;
  v12 = v26;
  sub_1B7CFF820();
  if (v12)
  {
    sub_1B7AE9168(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v26 = a1;
    v22 = v9;
    v13 = v23;
    v29 = 0;
    sub_1B7C53D20();
    v14 = v24;
    v15 = v25;
    sub_1B7CFF440();
    v16 = v28;
    swift_beginAccess();
    *&v2[v8] = v16;
    LOBYTE(v28) = 1;
    sub_1B7C53D74();
    sub_1B7CFF440();
    v18 = v30;
    v19 = v14;
    v20 = v22;
    swift_beginAccess();
    v2[v20] = v18;
    v27.receiver = v2;
    v27.super_class = ObjectType;
    v11 = objc_msgSendSuper2(&v27, sel_init);
    (*(v13 + 8))(v19, v15);
    sub_1B7AE9168(v26);
  }

  return v11;
}

void *sub_1B7C52970@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = StorageInspector.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t StorageInspector.SchedulingBehavior.description.getter()
{
  if (*v0)
  {
    result = 0x74696E4972657375;
  }

  else
  {
    result = 0x756F72676B636162;
  }

  *v0;
  return result;
}

IMDPersistence::StorageInspector::SchedulingBehavior_optional __swiftcall StorageInspector.SchedulingBehavior.init(rawValue:)(Swift::Int rawValue)
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

uint64_t sub_1B7C52B04()
{
  if (*v0)
  {
    result = 0x74696E4972657375;
  }

  else
  {
    result = 0x756F72676B636162;
  }

  *v0;
  return result;
}

BOOL sub_1B7C52CA0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1B7C52CD0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1B7C52CFC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void StorageInspector.run(_:)(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v4 = sub_1B7CFE420();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v63 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v56 - v9;
  v11 = &unk_1EBA5D000;
  v12 = qword_1EBA5DB00;
  qword_1EBA5DB00 = v2;

  v13 = v2;
  v61 = ", schedulingBehavior: ";
  sub_1B7CFE410();
  v14 = v13;
  v15 = sub_1B7CFE400();
  v16 = sub_1B7CFEED0();

  v17 = os_log_type_enabled(v15, v16);
  v65 = v14;
  v62 = v4;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = a1;
    v20 = swift_slowAlloc();
    v66[0] = v20;
    *v18 = 136315138;
    v21 = StorageInspector.description.getter();
    v23 = v5;
    v24 = sub_1B7AED1B8(v21, v22, v66);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_1B7AD5000, v15, v16, "Beginning to run database verifiers with options: %s", v18, 0xCu);
    sub_1B7AE9168(v20);
    v25 = v20;
    a1 = v19;
    v11 = &unk_1EBA5D000;
    MEMORY[0x1B8CB0E70](v25, -1, -1);
    v26 = v18;
    v4 = v62;
    MEMORY[0x1B8CB0E70](v26, -1, -1);

    v27 = *(v23 + 8);
    v27(v10, v4);
    v28 = v23;
  }

  else
  {

    v27 = *(v5 + 8);
    v27(v10, v4);
    v28 = v5;
  }

  v29 = sub_1B7C533D0();
  v30 = v63;
  sub_1B7CFE410();

  v31 = sub_1B7CFE400();
  v32 = sub_1B7CFEED0();

  v33 = os_log_type_enabled(v31, v32);
  v34 = v64;
  if (v33)
  {
    v59 = v32;
    v60 = v27;
    v61 = v28;
    v35 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v68 = v57;
    v58 = v35;
    *v35 = 136315138;
    v36 = v29[2];
    v37 = MEMORY[0x1E69E7CC0];
    if (v36)
    {
      v56 = a1;
      v67 = MEMORY[0x1E69E7CC0];
      sub_1B7AECEEC(0, v36, 0);
      v37 = v67;
      v38 = (v29 + 4);
      do
      {
        sub_1B7AE90A8(v38, v66);
        sub_1B7AE9124(v66, v66[3]);
        v39 = sub_1B7C81520();
        v41 = v40;
        sub_1B7AE9168(v66);
        v67 = v37;
        v43 = *(v37 + 16);
        v42 = *(v37 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_1B7AECEEC((v42 > 1), v43 + 1, 1);
          v37 = v67;
        }

        *(v37 + 16) = v43 + 1;
        v44 = v37 + 16 * v43;
        *(v44 + 32) = v39;
        *(v44 + 40) = v41;
        v38 += 40;
        --v36;
      }

      while (v36);
      v30 = v63;
      v34 = v64;
      a1 = v56;
      v11 = &unk_1EBA5D000;
    }

    v66[0] = v37;
    sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
    sub_1B7AF7FAC();
    v45 = sub_1B7CFEA10();
    v47 = v46;

    v48 = sub_1B7AED1B8(v45, v47, &v68);

    v49 = v58;
    *(v58 + 1) = v48;
    _os_log_impl(&dword_1B7AD5000, v31, v59, "Beginning to run database verifiers: %s", v49, 0xCu);
    v50 = v57;
    sub_1B7AE9168(v57);
    MEMORY[0x1B8CB0E70](v50, -1, -1);
    MEMORY[0x1B8CB0E70](v49, -1, -1);

    v60(v30, v62);
  }

  else
  {

    v27(v30, v4);
  }

  v51 = OBJC_IVAR____TtC14IMDPersistence16StorageInspector_schedulingBehavior;
  v52 = v65;
  swift_beginAccess();
  if (v52[v51] == 1)
  {
    type metadata accessor for ForegroundStorageInspectorScheduler();
  }

  else
  {
    type metadata accessor for BackgroundStorageInspectorScheduler();
  }

  v53 = swift_allocObject();
  *(v53 + 24) = MEMORY[0x1E69E7CC0];
  *(v53 + 32) = 0u;
  *(v53 + 48) = 0u;
  *(v53 + 64) = 0u;
  *(v53 + 16) = v29;
  swift_beginAccess();

  sub_1B7AF4604(v54, sub_1B7CA29F0, &qword_1EBA52908, qword_1B7D10580);
  swift_endAccess();
  (*(*v53 + 264))(a1, v34);
  sub_1B7C752AC();

  v55 = v11[352];
  v11[352] = 0;
}

void *sub_1B7C533D0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14IMDPersistence16StorageInspector_options;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if ((v3 & 1) == 0)
  {
    v4 = MEMORY[0x1E69E7CC0];
    if ((v3 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v5 = type metadata accessor for DatabaseInspector();
  swift_allocObject();
  v6 = sub_1B7C5A32C();
  v4 = sub_1B7CA29F0(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v8 = v4[2];
  v7 = v4[3];
  if (v8 >= v7 >> 1)
  {
    v4 = sub_1B7CA29F0((v7 > 1), v8 + 1, 1, v4);
  }

  v26 = v5;
  v27 = &off_1F2FA4BF8;
  *&v25 = v6;
  v4[2] = v8 + 1;
  sub_1B7AE910C(&v25, &v4[5 * v8 + 4]);
  v3 = *(v1 + v2);
  if ((v3 & 2) != 0)
  {
LABEL_7:
    v9 = type metadata accessor for DatabaseExportRecordCounter();
    swift_allocObject();
    v10 = sub_1B7CC1854();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1B7CA29F0(0, v4[2] + 1, 1, v4);
    }

    v12 = v4[2];
    v11 = v4[3];
    if (v12 >= v11 >> 1)
    {
      v4 = sub_1B7CA29F0((v11 > 1), v12 + 1, 1, v4);
    }

    v26 = v9;
    v27 = &off_1F2FA7F90;
    *&v25 = v10;
    v4[2] = v12 + 1;
    sub_1B7AE910C(&v25, &v4[5 * v12 + 4]);
    v3 = *(v1 + v2);
  }

LABEL_12:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 0x10) == 0)
    {
      return v4;
    }

    goto LABEL_20;
  }

  v13 = type metadata accessor for AttachmentStorageInspector();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_1B7C56078();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1B7CA29F0(0, v4[2] + 1, 1, v4);
  }

  v18 = v4[2];
  v17 = v4[3];
  if (v18 >= v17 >> 1)
  {
    v4 = sub_1B7CA29F0((v17 > 1), v18 + 1, 1, v4);
  }

  v26 = v13;
  v27 = &off_1F2FA7FD8;
  *&v25 = v16;
  v4[2] = v18 + 1;
  sub_1B7AE910C(&v25, &v4[5 * v18 + 4]);
  if ((*(v1 + v2) & 0x10) != 0)
  {
LABEL_20:
    v19 = type metadata accessor for DatabaseInspectorCrossCheckInspector();
    swift_allocObject();

    v21 = sub_1B7CEA9FC(v20);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1B7CA29F0(0, v4[2] + 1, 1, v4);
    }

    v23 = v4[2];
    v22 = v4[3];
    if (v23 >= v22 >> 1)
    {
      v4 = sub_1B7CA29F0((v22 > 1), v23 + 1, 1, v4);
    }

    v26 = v19;
    v27 = &off_1F2FA8EB0;
    *&v25 = v21;
    v4[2] = v23 + 1;
    sub_1B7AE910C(&v25, &v4[5 * v23 + 4]);
  }

  return v4;
}

void sub_1B7C5378C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1B7CFDEB0();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t StorageInspector.encodeToData()()
{
  swift_getObjectType();
  v0 = sub_1B7CFDC10();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1B7CFDC00();
  sub_1B7C53DEC(&qword_1EBA528A8);
  v3 = sub_1B7CFDBF0();

  return v3;
}

uint64_t static StorageInspector.create(fromData:)()
{
  v1 = sub_1B7CFDBE0();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1B7CFDBD0();
  sub_1B7C53DEC(&qword_1EBA528B0);
  sub_1B7CFDBC0();

  if (!v0)
  {
    return v5;
  }

  return result;
}

unint64_t sub_1B7C53BD0()
{
  result = qword_1EBA52868;
  if (!qword_1EBA52868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52868);
  }

  return result;
}

unint64_t sub_1B7C53C24()
{
  result = qword_1EBA52878;
  if (!qword_1EBA52878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52878);
  }

  return result;
}

unint64_t sub_1B7C53C78()
{
  result = qword_1EBA52880;
  if (!qword_1EBA52880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52880);
  }

  return result;
}

unint64_t sub_1B7C53CCC()
{
  result = qword_1EBA52888;
  if (!qword_1EBA52888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52888);
  }

  return result;
}

unint64_t sub_1B7C53D20()
{
  result = qword_1EBA52898;
  if (!qword_1EBA52898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52898);
  }

  return result;
}

unint64_t sub_1B7C53D74()
{
  result = qword_1EBA528A0;
  if (!qword_1EBA528A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA528A0);
  }

  return result;
}

uint64_t sub_1B7C53DEC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StorageInspector();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7C53E30()
{
  result = qword_1EBA528B8;
  if (!qword_1EBA528B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA528B8);
  }

  return result;
}

unint64_t sub_1B7C53E88()
{
  result = qword_1EBA528C0;
  if (!qword_1EBA528C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA528C0);
  }

  return result;
}

unint64_t sub_1B7C53EE0()
{
  result = qword_1EBA528C8;
  if (!qword_1EBA528C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA528C8);
  }

  return result;
}

unint64_t sub_1B7C53F38()
{
  result = qword_1EBA528D0;
  if (!qword_1EBA528D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA528D0);
  }

  return result;
}

unint64_t sub_1B7C53F90()
{
  result = qword_1EBA528D8;
  if (!qword_1EBA528D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA528D8);
  }

  return result;
}

unint64_t sub_1B7C53FE8()
{
  result = qword_1EBA528E0;
  if (!qword_1EBA528E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA528E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StorageInspector.StorageInspectorError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for StorageInspector.StorageInspectorError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StorageInspectionCountReport.ReportContentFlags(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StorageInspectionCountReport.ReportContentFlags(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_1B7C541D8()
{
  result = qword_1EBA528E8;
  if (!qword_1EBA528E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA528E8);
  }

  return result;
}

unint64_t sub_1B7C54230()
{
  result = qword_1EBA528F0;
  if (!qword_1EBA528F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA528F0);
  }

  return result;
}

unint64_t sub_1B7C54288()
{
  result = qword_1EBA528F8;
  if (!qword_1EBA528F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA528F8);
  }

  return result;
}

unint64_t sub_1B7C542E4()
{
  result = qword_1EBA52900;
  if (!qword_1EBA52900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52900);
  }

  return result;
}

uint64_t sub_1B7C54338(void *a1, void *a2)
{
  v5 = *(*(sub_1B7C107FC(&qword_1EBA52910, &unk_1B7D0D940) - 8) + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);

  return sub_1B7C521C0(a1, a2, v6, v7);
}

uint64_t sub_1B7C543EC()
{
  v1 = v0;
  v71[4] = *MEMORY[0x1E69E9840];
  v2 = sub_1B7CFE420();
  v68 = *(v2 - 8);
  v69 = v2;
  v3 = *(v68 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v62 - v7;
  v9 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v62 - v11;
  v13 = sub_1B7CFDFF0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v66 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v62 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v62 - v21;
  v23 = OBJC_IVAR____TtC14IMDPersistence35AttachmentStorageDirectoryInspector_rootDirectory;
  swift_beginAccess();
  v65 = v1;
  sub_1B7C487D8(v1 + v23, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1B7AEE190(v12, &qword_1EBA51FA0, &qword_1B7D0A6D0);
    sub_1B7C55FBC();
    v70 = swift_allocError();
    result = swift_willThrow();
    goto LABEL_15;
  }

  v63 = v6;
  (*(v14 + 32))(v22, v12, v13);
  v67 = v22;
  sub_1B7CFDFC0();
  LOBYTE(v71[0]) = 0;
  v64 = objc_opt_self();
  v25 = [v64 defaultManager];
  v26 = sub_1B7CFEA30();

  v27 = [v25 fileExistsAtPath:v26 isDirectory:v71];

  if (!v27)
  {
    v28 = v8;
LABEL_7:
    sub_1B7CFE410();
    (*(v14 + 16))(v20, v67, v13);
    v29 = sub_1B7CFE400();
    v30 = sub_1B7CFEED0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v71[0] = v32;
      *v31 = 136315138;
      v33 = sub_1B7CFDFC0();
      v62 = v28;
      v35 = v34;
      (*(v14 + 8))(v20, v13);
      v36 = sub_1B7AED1B8(v33, v35, v71);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_1B7AD5000, v29, v30, "Root directory not found: %s", v31, 0xCu);
      sub_1B7AE9168(v32);
      MEMORY[0x1B8CB0E70](v32, -1, -1);
      MEMORY[0x1B8CB0E70](v31, -1, -1);

      (*(v68 + 8))(v62, v69);
    }

    else
    {

      (*(v14 + 8))(v20, v13);
      (*(v68 + 8))(v28, v69);
    }

    goto LABEL_10;
  }

  v28 = v8;
  if ((v71[0] & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  v37 = [v64 defaultManager];
  v38 = v67;
  v39 = sub_1B7CFDF40();
  v71[0] = 0;
  v40 = [v37 contentsOfDirectoryAtURL:v39 includingPropertiesForKeys:0 options:0 error:v71];

  v41 = v71[0];
  if (v40)
  {
    v42 = sub_1B7CFECE0();
    v43 = v41;

    v44 = v65;
    v45 = v65[5];
    v65[5] = v42;

    *(v44 + OBJC_IVAR____TtC14IMDPersistence35AttachmentStorageDirectoryInspector_directoryCount) = *(v44[5] + 16);
    v46 = v63;
    sub_1B7CFE410();
    v47 = v66;
    (*(v14 + 16))(v66, v38, v13);
    v48 = sub_1B7CFE400();
    v49 = sub_1B7CFEED0();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = v47;
      v51 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v71[0] = v65;
      *v51 = 136315138;
      v52 = sub_1B7CFDFC0();
      v54 = v53;
      v55 = *(v14 + 8);
      v55(v50, v13);
      v56 = sub_1B7AED1B8(v52, v54, v71);

      *(v51 + 4) = v56;
      _os_log_impl(&dword_1B7AD5000, v48, v49, "Inspecting '%s'", v51, 0xCu);
      v57 = v65;
      sub_1B7AE9168(v65);
      MEMORY[0x1B8CB0E70](v57, -1, -1);
      MEMORY[0x1B8CB0E70](v51, -1, -1);

      (*(v68 + 8))(v63, v69);
      result = (v55)(v67, v13);
    }

    else
    {

      v60 = *(v14 + 8);
      v60(v47, v13);
      (*(v68 + 8))(v46, v69);
      result = (v60)(v38, v13);
    }
  }

  else
  {
    v58 = v71[0];
    v59 = sub_1B7CFDEC0();

    v70 = v59;
    swift_willThrow();
    result = (*(v14 + 8))(v38, v13);
  }

LABEL_15:
  v61 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B7C54BB0()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_1B7CFE420();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(*(v3 + 40) + 16))
  {
    return 1;
  }

  v10 = *(v3 + 32);
  if ((v10 & 0x8000000000000000) == 0)
  {
    if (v10)
    {
      while (*(*(v3 + 40) + 16))
      {
        v11 = objc_autoreleasePoolPush();
        sub_1B7C54E00(v3, &v17);
        if (v2)
        {
          objc_autoreleasePoolPop(v11);
          return v12;
        }

        v2 = 0;
        objc_autoreleasePoolPop(v11);
        if (!--v10)
        {
          if (*(*(v3 + 40) + 16))
          {
            return 0;
          }

          break;
        }
      }

      sub_1B7CFE410();

      v13 = sub_1B7CFE400();
      v14 = sub_1B7CFEED0();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 134217984;
        *(v15 + 4) = *(v3 + OBJC_IVAR____TtC14IMDPersistence35AttachmentStorageDirectoryInspector_directoryCount);

        _os_log_impl(&dword_1B7AD5000, v13, v14, "Finished inspecting %ld root directories.", v15, 0xCu);
        MEMORY[0x1B8CB0E70](v15, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v9, v4);
      return *(*(v3 + 40) + 16) == 0;
    }

    else
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7C54E00(uint64_t a1, void *a2)
{
  v4 = sub_1B7CFE420();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StorageInspectionAttachmentDirectory();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B7CFDFF0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 40);
  if (!*(v18 + 16))
  {
    __break(1u);
    goto LABEL_22;
  }

  v40 = a2;
  v37 = v5;
  v38 = v4;
  v19 = *(v13 + 16);
  v20 = v15;
  v19(v17, v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v15);
  sub_1B7C909D8(0, 1);
  v21 = *(a1 + OBJC_IVAR____TtC14IMDPersistence35AttachmentStorageDirectoryInspector_attachmentDepth);
  if (!v21)
  {
    v35 = objc_autoreleasePoolPush();
    v36 = v20;
    v19(v11, v17, v20);
    *&v11[*(v8 + 20)] = MEMORY[0x1E69E7CC0];
    v25 = v41;
    sub_1B7C68F34();
    a2 = v25;
    if (!v25)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_13;
      }

      v8 = Strong;
      if (qword_1EBA515F0 != -1)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

LABEL_6:
    sub_1B7C55F44(v11);
    objc_autoreleasePoolPop(v35);
    v24 = v36;
    goto LABEL_7;
  }

  v22 = v20;
  v23 = v41;
  sub_1B7C552C8(v17, v21);
  a2 = v23;
  v24 = v22;
  if (v23)
  {
LABEL_7:
    result = (*(v13 + 8))(v17, v24);
    *v40 = a2;
    return result;
  }

  while (1)
  {
    v11 = OBJC_IVAR____TtC14IMDPersistence35AttachmentStorageDirectoryInspector_directoryCount;
    v28 = *(a1 + OBJC_IVAR____TtC14IMDPersistence35AttachmentStorageDirectoryInspector_directoryCount);
    v29 = *(*(a1 + 40) + 16);
    v8 = v28 - v29;
    if (!__OFSUB__(v28, v29))
    {
      break;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    Strong = swift_once();
LABEL_10:
    MEMORY[0x1EEE9AC00](Strong);
    *(&v35 - 2) = v8;
    *(&v35 - 1) = v11;
    SqlOperation.transact(_:)(sub_1B7C55FA0);
    if (a2)
    {
      swift_unknownObjectRelease();
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
LABEL_13:
    sub_1B7C55F44(v11);
    objc_autoreleasePoolPop(v35);
    v24 = v36;
  }

  if (__ROR8__(0x8F5C28F5C28F5C29 * v8 + 0x51EB851EB851EB8, 1) <= 0x51EB851EB851EB8uLL)
  {
    v36 = v24;
    sub_1B7CFE410();

    v30 = sub_1B7CFE400();
    v31 = sub_1B7CFEED0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134218240;
      *(v32 + 4) = v8;
      *(v32 + 12) = 2048;
      *(v32 + 14) = *&v11[a1];

      _os_log_impl(&dword_1B7AD5000, v30, v31, "Inspected %ld of %ld root directories...", v32, 0x16u);
      MEMORY[0x1B8CB0E70](v32, -1, -1);
    }

    else
    {
    }

    v34 = v37;
    v33 = v38;

    (*(v34 + 8))(v39, v33);
    v24 = v36;
  }

  return (*(v13 + 8))(v17, v24);
}

void sub_1B7C552C8(char *a1, void *a2)
{
  v68 = a2;
  v73 = *MEMORY[0x1E69E9840];
  v58 = type metadata accessor for StorageInspectionAttachmentDirectory();
  v4 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v54 - v11;
  v13 = sub_1B7CFDFF0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v59 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v54 - v18;
  v20 = objc_autoreleasePoolPush();
  v21 = *(v14 + 16);
  v57 = v14 + 16;
  v56 = v21;
  v21(v19, a1, v13);
  if (qword_1EBA51660 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for AttachmentDirectoryEnumerator();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();

  v25 = sub_1B7CD6A6C(v19);
  if (v2)
  {
    goto LABEL_44;
  }

  v26 = v25;
  v62 = 0;
  v55 = v20;
  v27 = (v14 + 56);
  v65 = (v14 + 48);
  v66 = OBJC_IVAR____TtC14IMDPersistence29AttachmentDirectoryEnumerator_error;
  v63 = (v14 + 32);
  v64 = (v14 + 8);
  v28 = v59;
  v29 = v60;
  while (1)
  {
    v30 = objc_autoreleasePoolPush();
    v31 = *(v26 + 16);
    if (v31)
    {
      if ([v31 nextObject])
      {
        sub_1B7CFF0A0();
        swift_unknownObjectRelease();
      }

      else
      {
        v69 = 0u;
        v70 = 0u;
      }

      v71 = v69;
      v72 = v70;
      if (*(&v70 + 1))
      {
        v32 = swift_dynamicCast();
        (*v27)(v10, v32 ^ 1u, 1, v13);
        goto LABEL_15;
      }
    }

    else
    {
      v71 = 0u;
      v72 = 0u;
    }

    sub_1B7AEE190(&v71, &qword_1EBA51FA8, qword_1B7D0B230);
    (*v27)(v10, 1, 1, v13);
LABEL_15:
    v33 = *(v26 + v66);
    if (v33)
    {
      v48 = *(v26 + v66);
      swift_willThrow();
      v49 = v33;
      sub_1B7AEE190(v10, &qword_1EBA51FA0, &qword_1B7D0A6D0);
      v20 = v55;
      goto LABEL_43;
    }

    sub_1B7C124A0(v10, v12);
    if ((*v65)(v12, 1, v13) == 1)
    {
      sub_1B7AEE190(v12, &qword_1EBA51FA0, &qword_1B7D0A6D0);
      objc_autoreleasePoolPop(v30);

      objc_autoreleasePoolPop(v55);
      goto LABEL_45;
    }

    (*v63)(v28, v12, v13);
    v34 = *(v26 + 16);
    if (v34)
    {
      v35 = [v34 level];
      if (v35 != v68)
      {
        goto LABEL_6;
      }
    }

    else if (v68)
    {
      goto LABEL_6;
    }

    v67 = v30;
    v61 = objc_autoreleasePoolPush();
    v56(v29, v28, v13);
    *&v29[*(v58 + 20)] = MEMORY[0x1E69E7CC0];
    sub_1B7CFDFC0();
    LOBYTE(v71) = 0;
    v36 = [objc_opt_self() defaultManager];
    v37 = sub_1B7CFEA30();

    v38 = [v36 fileExistsAtPath:v37 isDirectory:&v71];

    if (!v38 || (v71 & 1) == 0)
    {
      v30 = v67;
      goto LABEL_26;
    }

    v39 = objc_autoreleasePoolPush();
    v40 = v62;
    sub_1B7C691B4(v29, &v71);
    v30 = v67;
    if (v40)
    {
      break;
    }

    v62 = 0;
    objc_autoreleasePoolPop(v39);
LABEL_26:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v42 = Strong;
      if (qword_1EBA515F0 != -1)
      {
        swift_once();
      }

      v43 = off_1EBA52D08;
      v44 = objc_autoreleasePoolPush();
      swift_beginAccess();
      IMDSqlOperationBeginTransaction(v43 + 2);
      *&v69 = 0;
      IMDSqlOperationGetError((v43 + 2), &v69);
      v45 = v69;
      swift_endAccess();
      if (v45)
      {
        swift_willThrow();
        v62 = v45;
        v20 = v55;
        v50 = v61;
        goto LABEL_41;
      }

      v46 = v62;
      sub_1B7C597B8(v42, v60);
      v62 = v46;
      if (v46)
      {
        goto LABEL_37;
      }

      swift_beginAccess();
      IMDSqlOperationCommitTransaction(v43 + 2);
      *&v69 = 0;
      IMDSqlOperationGetError((v43 + 2), &v69);
      v47 = v69;
      swift_endAccess();
      if (v47)
      {
        swift_willThrow();
        v62 = v47;
LABEL_37:
        v20 = v55;
        v50 = v61;
        if (v43[4] && (swift_beginAccess(), IMDSqlOperationRevertTransaction(v43 + 2), *&v69 = 0, IMDSqlOperationGetError((v43 + 2), &v69), v51 = v69, swift_endAccess(), v51))
        {
          swift_willThrow();
          v52 = v51;

          v62 = v52;
        }

        else
        {
          swift_willThrow();
        }

LABEL_41:
        objc_autoreleasePoolPop(v44);
        swift_unknownObjectRelease();
        v29 = v60;
        v30 = v67;
        goto LABEL_42;
      }

      objc_autoreleasePoolPop(v44);
      swift_unknownObjectRelease();
      v29 = v60;
      v30 = v67;
    }

    sub_1B7C55F44(v29);
    objc_autoreleasePoolPop(v61);
    [*(v26 + 16) skipDescendants];
    v28 = v59;
LABEL_6:
    (*v64)(v28, v13);
    objc_autoreleasePoolPop(v30);
  }

  objc_autoreleasePoolPop(v39);
  v20 = v55;
  v50 = v61;
LABEL_42:
  sub_1B7C55F44(v29);
  objc_autoreleasePoolPop(v50);
  (*v64)(v59, v13);
LABEL_43:
  objc_autoreleasePoolPop(v30);

LABEL_44:
  objc_autoreleasePoolPop(v20);
LABEL_45:
  v53 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7C55ACC()
{
  sub_1B7C12510((v0 + 2));
  v1 = v0[5];

  sub_1B7AEE190(v0 + OBJC_IVAR____TtC14IMDPersistence35AttachmentStorageDirectoryInspector_rootDirectory, &qword_1EBA51FA0, &qword_1B7D0A6D0);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AttachmentStorageDirectoryInspector()
{
  result = qword_1EBA52930;
  if (!qword_1EBA52930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B7C55BA4()
{
  sub_1B7C4954C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1B7C55CAC()
{
  v1 = v0;
  v2 = sub_1B7CFDFF0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v21 - v9;
  v21[1] = 0;
  v21[2] = 0xE000000000000000;
  sub_1B7CFF210();
  v11 = *v0;
  v12 = sub_1B7CFF8D0();
  v14 = v13;

  v22 = v12;
  v23 = v14;
  MEMORY[0x1B8CADCA0](0xD000000000000011, 0x80000001B7D54C70);
  v15 = OBJC_IVAR____TtC14IMDPersistence35AttachmentStorageDirectoryInspector_rootDirectory;
  swift_beginAccess();
  sub_1B7C487D8(v1 + v15, v10);
  if ((*(v3 + 48))(v10, 1, v2))
  {
    sub_1B7AEE190(v10, &qword_1EBA51FA0, &qword_1B7D0A6D0);
    v16 = 0xE300000000000000;
    v17 = 7104878;
  }

  else
  {
    (*(v3 + 16))(v6, v10, v2);
    sub_1B7AEE190(v10, &qword_1EBA51FA0, &qword_1B7D0A6D0);
    v18 = sub_1B7CFDFC0();
    v16 = v19;
    (*(v3 + 8))(v6, v2);
    v17 = v18;
  }

  MEMORY[0x1B8CADCA0](v17, v16);

  return v22;
}

uint64_t sub_1B7C55F44(uint64_t a1)
{
  v2 = type metadata accessor for StorageInspectionAttachmentDirectory();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B7C55FBC()
{
  result = qword_1EBA52940;
  if (!qword_1EBA52940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52940);
  }

  return result;
}

unint64_t sub_1B7C56024()
{
  result = qword_1EBA52948;
  if (!qword_1EBA52948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52948);
  }

  return result;
}

uint64_t sub_1B7C56078()
{
  v1 = v0;
  v2 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v64 = &v60 - v4;
  v5 = sub_1B7CFDFF0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *MEMORY[0x1E69A7868];
  sub_1B7CFEA60();
  sub_1B7CFDF10();

  v11 = IMStickerCacheDirectoryURL();
  sub_1B7CFDFB0();

  sub_1B7CFDFC0();
  v66 = v6;
  v12 = *(v6 + 8);
  v63 = v5;
  v12(v9, v5);
  sub_1B7CFDF10();

  v13 = OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_inspectionReport;
  type metadata accessor for AttachmentStorageInspectorReport();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E7CC0];
  *(v14 + 344) = MEMORY[0x1E69E7CC0];
  StorageInspectionCountReport.init()();
  *(v1 + v13) = v16;
  v17 = OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_databaseContext;
  type metadata accessor for StorageInspectionVerificationDatabaseContext();
  swift_allocObject();
  *(v1 + v17) = sub_1B7CC27D0(0xD00000000000001ALL, 0x80000001B7D0DAD0);
  v18 = OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_attachmentPathsTable;
  type metadata accessor for StorageInspectionFileRecordTable();
  swift_allocObject();
  *(v1 + v18) = sub_1B7C74D3C(0xD000000000000015, 0x80000001B7D54E80, 2);
  v19 = OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_orphanedAttachmentPathsTable;
  swift_allocObject();
  *(v1 + v19) = sub_1B7C74D3C(0xD00000000000001ELL, 0x80000001B7D54EA0, 2);
  *(v1 + 24) = v15;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 16) = v15;
  swift_beginAccess();
  sub_1B7C50E1C(v15);
  swift_endAccess();
  v20 = OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_databaseContext;
  v21 = *(v1 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_databaseContext);
  v22 = *(v1 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_attachmentPathsTable);
  swift_beginAccess();
  swift_retain_n();
  swift_retain_n();

  MEMORY[0x1B8CADDF0](v23);
  if (*((*(v21 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v21 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v58 = *((*(v21 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1B7CFED00();
  }

  sub_1B7CFED40();
  swift_endAccess();

  v24 = *(v1 + v20);
  v25 = *(v1 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_orphanedAttachmentPathsTable);
  swift_beginAccess();
  swift_retain_n();

  MEMORY[0x1B8CADDF0](v26);
  if (*((*(v24 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v24 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v59 = *((*(v24 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1B7CFED00();
  }

  sub_1B7CFED40();
  swift_endAccess();

  v61 = OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_attachmentURL;
  v27 = v66;
  v28 = *(v66 + 16);
  v65 = v66 + 16;
  v29 = v63;
  v28(v9, v1 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_attachmentURL, v63);
  v30 = v9;
  v31 = v28;
  v32 = type metadata accessor for AttachmentStorageDirectoryLogger();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  v35 = swift_allocObject();
  v36 = v35 + OBJC_IVAR____TtC14IMDPersistence32AttachmentStorageDirectoryLogger_delegate;
  *(v35 + OBJC_IVAR____TtC14IMDPersistence32AttachmentStorageDirectoryLogger_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v35 + OBJC_IVAR____TtC14IMDPersistence32AttachmentStorageDirectoryLogger_directoryBatchSize) = 100;
  v37 = *(v27 + 32);
  v37(v35 + OBJC_IVAR____TtC14IMDPersistence32AttachmentStorageDirectoryLogger_rootDirectory, v30, v29);
  *(v36 + 8) = &off_1F2FA4B80;
  swift_unknownObjectWeakAssign();
  *(v35 + OBJC_IVAR____TtC14IMDPersistence32AttachmentStorageDirectoryLogger_minDepth) = 4;
  sub_1B7C5904C(v35, v1, type metadata accessor for AttachmentStorageDirectoryLogger, &off_1F2FA2E58);

  v62 = OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_stickerCacheURL;
  v28(v30, v1 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_stickerCacheURL, v29);
  v38 = *(v32 + 48);
  v39 = *(v32 + 52);
  v40 = swift_allocObject();
  v41 = v40 + OBJC_IVAR____TtC14IMDPersistence32AttachmentStorageDirectoryLogger_delegate;
  *(v40 + OBJC_IVAR____TtC14IMDPersistence32AttachmentStorageDirectoryLogger_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v40 + OBJC_IVAR____TtC14IMDPersistence32AttachmentStorageDirectoryLogger_directoryBatchSize) = 100;
  v37(v40 + OBJC_IVAR____TtC14IMDPersistence32AttachmentStorageDirectoryLogger_rootDirectory, v30, v29);
  *(v41 + 8) = &off_1F2FA4B80;
  swift_unknownObjectWeakAssign();
  *(v40 + OBJC_IVAR____TtC14IMDPersistence32AttachmentStorageDirectoryLogger_minDepth) = 2;
  sub_1B7C5904C(v40, v1, type metadata accessor for AttachmentStorageDirectoryLogger, &off_1F2FA2E58);

  v42 = v64;
  v28(v64, v1 + v61, v29);
  v43 = *(v66 + 56);
  v43(v42, 0, 1, v29);
  v44 = type metadata accessor for AttachmentStorageDirectoryInspector();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  v47 = swift_allocObject();
  v47[3] = 0;
  swift_unknownObjectWeakInit();
  v47[4] = 100;
  v47[5] = MEMORY[0x1E69E7CC0];
  v48 = OBJC_IVAR____TtC14IMDPersistence35AttachmentStorageDirectoryInspector_rootDirectory;
  v43(v47 + OBJC_IVAR____TtC14IMDPersistence35AttachmentStorageDirectoryInspector_rootDirectory, 1, 1, v29);
  *(v47 + OBJC_IVAR____TtC14IMDPersistence35AttachmentStorageDirectoryInspector_directoryCount) = 0;
  swift_beginAccess();

  sub_1B7C4FB78(v42, v47 + v48);
  swift_endAccess();
  *(v47 + OBJC_IVAR____TtC14IMDPersistence35AttachmentStorageDirectoryInspector_attachmentDepth) = 2;
  v47[3] = &off_1F2FA4B90;
  swift_unknownObjectWeakAssign();

  sub_1B7C5904C(v47, v1, type metadata accessor for AttachmentStorageDirectoryInspector, &off_1F2FA4AB8);

  v31(v42, v1 + v62, v29);
  v43(v42, 0, 1, v29);
  v49 = *(v44 + 48);
  v50 = *(v44 + 52);
  v51 = swift_allocObject();
  v51[3] = 0;
  swift_unknownObjectWeakInit();
  v51[4] = 100;
  v51[5] = MEMORY[0x1E69E7CC0];
  v52 = OBJC_IVAR____TtC14IMDPersistence35AttachmentStorageDirectoryInspector_rootDirectory;
  v43(v51 + OBJC_IVAR____TtC14IMDPersistence35AttachmentStorageDirectoryInspector_rootDirectory, 1, 1, v29);
  *(v51 + OBJC_IVAR____TtC14IMDPersistence35AttachmentStorageDirectoryInspector_directoryCount) = 0;
  swift_beginAccess();
  sub_1B7C4FB78(v42, v51 + v52);
  swift_endAccess();
  *(v51 + OBJC_IVAR____TtC14IMDPersistence35AttachmentStorageDirectoryInspector_attachmentDepth) = 0;
  v51[3] = &off_1F2FA4B90;
  swift_unknownObjectWeakAssign();

  sub_1B7C5904C(v51, v1, type metadata accessor for AttachmentStorageDirectoryInspector, &off_1F2FA4AB8);

  if (qword_1EBA515D8 != -1)
  {
    swift_once();
  }

  v53 = *(v1 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_inspectionReport);
  v54 = *(qword_1EBA5DAF0 + OBJC_IVAR____TtC14IMDPersistence29StorageInspectorReportManager_report);

  v55 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_attachmentStorageInspectorReport;
  swift_beginAccess();
  v56 = *&v54[v55];
  *&v54[v55] = v53;

  return v1;
}

void sub_1B7C569A8()
{
  v2 = v1;
  v11[7] = *MEMORY[0x1E69E9840];
  v3 = *(v0 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_inspectionReport);
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = &unk_1F2FA2000;

  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  v5 = off_1EBA52D08;
  v6 = objc_autoreleasePoolPush();
  swift_beginAccess();
  IMDSqlOperationBeginTransaction(v5 + 2);
  v11[0] = 0;
  IMDSqlOperationGetError((v5 + 2), v11);
  v7 = v11[0];
  swift_endAccess();
  if (!v7)
  {
    sub_1B7C59208(v0);
    if (v1)
    {
      if (!v5[4])
      {
        goto LABEL_12;
      }
    }

    else
    {
      swift_beginAccess();
      IMDSqlOperationCommitTransaction(v5 + 2);
      v11[0] = 0;
      IMDSqlOperationGetError((v5 + 2), v11);
      v8 = v11[0];
      swift_endAccess();
      if (!v8)
      {
        objc_autoreleasePoolPop(v6);
        sub_1B7CC3168();
        goto LABEL_14;
      }

      swift_willThrow();
      v2 = v8;
      if (!v5[4])
      {
        goto LABEL_12;
      }
    }

    swift_beginAccess();
    IMDSqlOperationRevertTransaction(v5 + 2);
    v11[0] = 0;
    IMDSqlOperationGetError((v5 + 2), v11);
    v9 = v11[0];
    swift_endAccess();
    if (v9)
    {
      swift_willThrow();
      v9;

      goto LABEL_13;
    }

LABEL_12:
    swift_willThrow();
    goto LABEL_13;
  }

  swift_willThrow();
  v7;
LABEL_13:
  objc_autoreleasePoolPop(v6);
LABEL_14:
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1B7C56BCC(void *a1@<X8>)
{
  v3 = v2;
  v12[4] = *MEMORY[0x1E69E9840];
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  v5 = off_1EBA52D08;
  v6 = objc_autoreleasePoolPush();
  swift_beginAccess();
  IMDSqlOperationBeginTransaction(v5 + 2);
  v12[0] = 0;
  IMDSqlOperationGetError((v5 + 2), v12);
  v7 = v12[0];
  swift_endAccess();
  if (!v7)
  {
    sub_1B7C56E4C();
    if (v2)
    {
      if (!v5[4])
      {
        goto LABEL_12;
      }
    }

    else
    {
      swift_beginAccess();
      IMDSqlOperationCommitTransaction(v5 + 2);
      v12[0] = 0;
      IMDSqlOperationGetError((v5 + 2), v12);
      v8 = v12[0];
      swift_endAccess();
      if (!v8)
      {
        objc_autoreleasePoolPop(v6);
        sub_1B7C571DC(*(v1 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_attachmentPathsTable), 0x656D686361747441, 0xEF7368746150746ELL);
        sub_1B7C571DC(*(v1 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_orphanedAttachmentPathsTable), 0xD000000000000017, 0x80000001B7D54DA0);
        v11 = *(v1 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_inspectionReport);
        a1[3] = type metadata accessor for AttachmentStorageInspectorReport();
        a1[4] = &protocol witness table for StorageInspectionCountReport;
        *a1 = v11;

        goto LABEL_14;
      }

      swift_willThrow();
      v3 = v8;
      if (!v5[4])
      {
        goto LABEL_12;
      }
    }

    swift_beginAccess();
    IMDSqlOperationRevertTransaction(v5 + 2);
    v12[0] = 0;
    IMDSqlOperationGetError((v5 + 2), v12);
    v9 = v12[0];
    swift_endAccess();
    if (v9)
    {
      swift_willThrow();
      v9;

      goto LABEL_13;
    }

LABEL_12:
    swift_willThrow();
    goto LABEL_13;
  }

  swift_willThrow();
  v7;
LABEL_13:
  objc_autoreleasePoolPop(v6);
LABEL_14:
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1B7C56E4C()
{
  v24 = sub_1B7CFE420();
  v2 = *(*(v24 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v24);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 0;
  v26 = OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_databaseContext;
  v25 = "OrphanedAttachmentPaths";
  v22 = "BY ROWID ASC LIMIT ?;";
  v23 = "directoryBatchSize";
  v21 = (v7 + 8);
  v3.n128_u64[0] = 134217984;
  v20 = v3;
  while (1)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = v0;
    v10 = *(v0 + v26);
    v11 = swift_allocObject();
    *(v11 + 16) = v6;
    if (qword_1EBA515F0 != -1)
    {
      swift_once();
    }

    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = v10;

    v13 = sub_1B7CD7370(0xD000000000000085, v25 | 0x8000000000000000, sub_1B7C59668, v12);
    if (v1)
    {

      goto LABEL_15;
    }

    v14 = v13;

    swift_beginAccess();
    v15 = *(v11 + 16);
    v6 = v15 + 1;
    if (v15 == -1)
    {
      break;
    }

    if (!v14)
    {
      v14 = MEMORY[0x1E69E7CC0];
    }

    v16 = sub_1B7C663C4(v14);

    if (!v16[2])
    {

LABEL_15:
      objc_autoreleasePoolPop(v8);
      return;
    }

    sub_1B7CFE410();

    v17 = sub_1B7CFE400();
    v18 = sub_1B7CFEEE0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = v20.n128_u32[0];
      *(v19 + 4) = v16[2];

      _os_log_impl(&dword_1B7AD5000, v17, v18, "found %ld remaining attachment records", v19, 0xCu);
      MEMORY[0x1B8CB0E70](v19, -1, -1);
    }

    else
    {
    }

    v0 = v9;
    (*v21)(v5, v24);
    sub_1B7C57BA8(v16);

    objc_autoreleasePoolPop(v8);
  }

  __break(1u);
}

void sub_1B7C571DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a2;
  v7 = *v3;
  v57 = sub_1B7CFDFF0();
  v8 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v49 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v49 - v21;
  if (a1)
  {
    v50 = v20;
    v51 = a3;
    v49 = v3;
    v52 = v4;
    v53 = v19;
    v23 = qword_1EBA515D8;

    v54 = a1;
    if (v23 != -1)
    {
      swift_once();
    }

    sub_1B7C81520();
    sub_1B7C4F08C(v11);
    sub_1B7CFDF60();
    v24 = v53;
    v25 = *(v53 + 8);
    v26 = v11;
    v27 = v57;
    v25(v26, v57);
    sub_1B7CFDF60();
    v25(v14, v27);
    sub_1B7CFDF70();
    v25(v17, v27);
    v28 = type metadata accessor for StorageInspectorReportFile();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    v31 = swift_allocObject();
    v32 = (v31 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile____lazy_storage___path);
    *v32 = 0;
    v32[1] = 0;
    *(v31 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_fileHandle) = 0;
    v33 = *(v24 + 32);
    v33(v31 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_pathURL, v22, v27);

    v56[0] = 0;
    v34 = v54;

    v35 = v52;
    sub_1B7C96F08(v31, v34, v56, 50);
    if (v35)
    {
      swift_setDeallocating();
      v36 = *sub_1B7C95D64();
      v37 = *(v36 + 48);
      v38 = *(v36 + 52);
      swift_deallocClassInstance();
    }

    else
    {
      v39 = *(v49 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_inspectionReport);
      v40 = *(v24 + 16);
      v41 = v50;
      v40(v50, v31 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_pathURL, v27);
      swift_beginAccess();
      v42 = *(v39 + 344);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v39 + 344) = v42;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v42 = sub_1B7CA1D44(0, v42[2] + 1, 1, v42);
        *(v39 + 344) = v42;
      }

      v45 = v42[2];
      v44 = v42[3];
      if (v45 >= v44 >> 1)
      {
        v42 = sub_1B7CA1D44(v44 > 1, v45 + 1, 1, v42);
      }

      v42[2] = v45 + 1;
      v33(v42 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v45, v41, v57);
      *(v39 + 344) = v42;

      swift_setDeallocating();
      v46 = *sub_1B7C95D64();
      v47 = *(v46 + 48);
      v48 = *(v46 + 52);
      swift_deallocClassInstance();
    }
  }
}

void sub_1B7C57674()
{
  v9[4] = *MEMORY[0x1E69E9840];
  sub_1B7CC33C4();
  if (!v1)
  {
    if (qword_1EBA515F0 != -1)
    {
      swift_once();
    }

    v2 = off_1EBA52D08;
    v3 = objc_autoreleasePoolPush();
    swift_beginAccess();
    IMDSqlOperationBeginTransaction(v2 + 2);
    v9[0] = 0;
    IMDSqlOperationGetError((v2 + 2), v9);
    v4 = v9[0];
    swift_endAccess();
    if (v4)
    {
      swift_willThrow();
      v4;
    }

    else
    {
      sub_1B7C59464(v0);
      swift_beginAccess();
      IMDSqlOperationCommitTransaction(v2 + 2);
      v9[0] = 0;
      IMDSqlOperationGetError((v2 + 2), v9);
      v5 = v9[0];
      swift_endAccess();
      if (v5)
      {
        swift_willThrow();
        v6 = v5;
        if (v2[4] && (swift_beginAccess(), IMDSqlOperationRevertTransaction(v2 + 2), v9[0] = 0, IMDSqlOperationGetError((v2 + 2), v9), v7 = v9[0], swift_endAccess(), v7))
        {
          swift_willThrow();
          v7;
        }

        else
        {
          swift_willThrow();
        }
      }
    }

    objc_autoreleasePoolPop(v3);
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7C57868()
{
  v1 = OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_attachmentURL;
  v2 = sub_1B7CFDFF0();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_stickerCacheURL, v2);
  v4 = *(v0 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_inspectionReport);

  v5 = *(v0 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_databaseContext);

  v6 = *(v0 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_attachmentPathsTable);

  v7 = *(v0 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_orphanedAttachmentPathsTable);
}

uint64_t sub_1B7C57940()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_1B7AEE190(v0 + 32, &qword_1EBA52988, &unk_1B7D132D0);
  v3 = OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_attachmentURL;
  v4 = sub_1B7CFDFF0();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_stickerCacheURL, v4);
  v6 = *(v0 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_inspectionReport);

  v7 = *(v0 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_databaseContext);

  v8 = *(v0 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_attachmentPathsTable);

  v9 = *(v0 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_orphanedAttachmentPathsTable);

  return v0;
}

uint64_t sub_1B7C57A38()
{
  sub_1B7C57940();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AttachmentStorageInspector()
{
  result = qword_1EBA52960;
  if (!qword_1EBA52960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7C57AE4()
{
  result = sub_1B7CFDFF0();
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

void sub_1B7C57BA8(uint64_t a1)
{
  v3 = v2;
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *(type metadata accessor for StorageInspectionAttachmentRecord() - 8);
    v7 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v6 + 72);
    while (1)
    {
      v9 = objc_autoreleasePoolPush();
      sub_1B7C57C88(v7, v1, &v10);
      if (v3)
      {
        break;
      }

      v3 = 0;
      objc_autoreleasePoolPop(v9);
      v7 += v8;
      if (!--v4)
      {
        return;
      }
    }

    objc_autoreleasePoolPop(v9);
  }
}

uint64_t sub_1B7C57C88(uint64_t a1, uint64_t a2, void *a3)
{
  v204 = a3;
  v197 = a2;
  v195 = sub_1B7CFE420();
  v202 = *(v195 - 8);
  v5 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v195);
  v200 = &v171 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B7C107FC(&qword_1EBA52970, &qword_1B7D0DB30);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v190 = &v171 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v189 = &v171 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v188 = &v171 - v13;
  v192 = sub_1B7CFDD50();
  v14 = *(v192 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v192);
  v183 = &v171 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v182 = &v171 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v181 = &v171 - v20;
  v201 = sub_1B7CFDFF0();
  v21 = *(v201 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v201);
  v194 = &v171 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v203 = &v171 - v25;
  v26 = sub_1B7C107FC(&qword_1EBA52978, &qword_1B7D0DB38);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v171 - v28;
  v30 = type metadata accessor for StorageInspectionAttachmentDirectory();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v171 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(type metadata accessor for StorageInspectionAttachmentRecord() + 48);
  v196 = a1;
  sub_1B7C59684(a1 + v35, v29);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    return sub_1B7AEE190(v29, &qword_1EBA52978, &qword_1B7D0DB38);
  }

  sub_1B7C596F4(v29, v34);
  if (!*(*&v34[*(v30 + 20)] + 16))
  {
    return sub_1B7C59758(v34, type metadata accessor for StorageInspectionAttachmentDirectory);
  }

  v37 = *(v197 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_attachmentPathsTable);
  v38 = sub_1B7CDE180(v34);
  if (v3)
  {
    result = sub_1B7C59758(v34, type metadata accessor for StorageInspectionAttachmentDirectory);
    *v204 = v3;
    return result;
  }

  v40 = v38[2];
  v193 = 0;
  if (!v40)
  {

    return sub_1B7C59758(v34, type metadata accessor for StorageInspectionAttachmentDirectory);
  }

  v171 = v38;
  v172 = v34;
  v41 = *(v21 + 16);
  v42 = v38 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
  v179 = (v14 + 56);
  v180 = OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_inspectionReport;
  v174 = (v14 + 32);
  v173 = (v14 + 8);
  v43 = v42;
  v44 = *(v21 + 72);
  v178 = *MEMORY[0x1E695DBA8];
  v198 = v44;
  v199 = (v21 + 8);
  v186 = "BY ROWID ASC LIMIT ?;";
  v187 = "directoryBatchSize";
  v45 = v201;
  v185 = (v202 + 8);
  *&v39 = 136315138;
  v175 = v39;
  v177 = xmmword_1B7D0A7B0;
  v191 = v21 + 16;
  v46 = v203;
  v47 = v40;
  v176 = v41;
  v41(v203, v43, v201);
  while (1)
  {
    v49 = URL.fileAllocationSize.getter();
    if (v50)
    {
      v204 = v43;
      v202 = v47;
      v51 = v200;
      sub_1B7CFE410();
      v52 = v194;
      v41(v194, v46, v45);
      v53 = sub_1B7CFE400();
      v54 = sub_1B7CFEEF0();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = v52;
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v205 = v57;
        *v56 = v175;
        v184 = sub_1B7CFDFC0();
        v59 = v58;
        v60 = *v199;
        (*v199)(v55, v201);
        v61 = sub_1B7AED1B8(v184, v59, &v205);
        v41 = v176;

        *(v56 + 4) = v61;
        _os_log_impl(&dword_1B7AD5000, v53, v54, "File allocations size for url is nil: %s", v56, 0xCu);
        sub_1B7AE9168(v57);
        MEMORY[0x1B8CB0E70](v57, -1, -1);
        MEMORY[0x1B8CB0E70](v56, -1, -1);

        (*v185)(v200, v195);
        v46 = v203;
        v60(v203, v201);
        v45 = v201;
      }

      else
      {

        v48 = *v199;
        (*v199)(v52, v45);
        (*v185)(v51, v195);
        v46 = v203;
        v48(v203, v45);
      }

      goto LABEL_10;
    }

    v62 = v49;
    v63 = *(v196 + 24);
    if (v63 <= 1)
    {
      if (!*(v196 + 24))
      {
        (*v199)(v46, v45);
        goto LABEL_12;
      }

      v64 = *(v197 + v180);
      result = swift_beginAccess();
      v76 = v64[20];
      v77 = v76 + v62;
      if (__CFADD__(v76, v62))
      {
        goto LABEL_127;
      }

      v64[20] = v77;
      if (v77 < v76)
      {
        goto LABEL_130;
      }

      v78 = v64[17];
      if (__CFADD__(v78, v62))
      {
        goto LABEL_134;
      }

      v64[17] = v78 + v62;
      result = swift_beginAccess();
      v79 = v64[12];
      v80 = v79 + 1;
      if (v79 == -1)
      {
        goto LABEL_135;
      }

      v64[12] = v80;
      if (v80 < v79)
      {
        goto LABEL_138;
      }

      v81 = v64[9];
      if (v81 == -1)
      {
        goto LABEL_142;
      }

      v204 = v43;
      v202 = v47;
      v64[9] = v81 + 1;
      sub_1B7C107FC(&qword_1EBA52980, &unk_1B7D0DB40);
      inited = swift_initStackObject();
      *(inited + 16) = v177;
      v83 = v178;
      *(inited + 32) = v178;
      v84 = v83;
      sub_1B7C72F40(inited);
      swift_setDeallocating();
      v85 = v188;
      sub_1B7C59758(inited + 32, type metadata accessor for URLResourceKey);
      v86 = v193;
      sub_1B7CFDF00();
      if (v86)
      {

        (*v179)(v85, 1, 1, v192);
        sub_1B7AEE190(v85, &qword_1EBA52970, &qword_1B7D0DB30);
        v193 = 0;
      }

      else
      {
        v193 = 0;

        v104 = v192;
        (*v179)(v85, 0, 1, v192);
        v105 = v181;
        (*v174)(v181, v85, v104);
        v106 = sub_1B7CFDD40();
        (*v173)(v105, v104);
        if (v106 == 2)
        {
          v45 = v201;
        }

        else
        {
          v45 = v201;
          if ((v106 & 1) == 0)
          {
            v124 = 0;
            v145 = 0;
            v46 = v203;
            goto LABEL_86;
          }
        }
      }

      v112 = v203;
      v119 = sub_1B7CFDFC0();
      v121 = sub_1B7C73368(v119, v120);
      v123 = v122;

      if (v123)
      {
LABEL_57:
        (*v199)(v112, v45);
        v46 = v112;
LABEL_10:
        v47 = v202;
LABEL_11:
        v43 = v204;
        goto LABEL_12;
      }

      if (v121)
      {
        v124 = (IM_APFS_PURGEABLE_IGNORE_ME() & v121) == 0;
      }

      else
      {
        v124 = 0;
      }

      v46 = v203;
      v145 = [objc_opt_self() purgeableFlagsAttributedToMessages_];
LABEL_86:
      v47 = v202;
      (*v199)(v46, v45);
      if (!v124)
      {
        goto LABEL_11;
      }

      result = swift_beginAccess();
      v146 = v64[32];
      v147 = v146 + v62;
      if (__CFADD__(v146, v62))
      {
        goto LABEL_144;
      }

      v64[32] = v147;
      if (v147 < v146)
      {
        goto LABEL_149;
      }

      v148 = v64[29];
      if (__CFADD__(v148, v62))
      {
        goto LABEL_152;
      }

      v64[29] = v148 + v62;
      result = swift_beginAccess();
      v149 = v64[24];
      v150 = v149 + 1;
      v43 = v204;
      if (v149 == -1)
      {
        goto LABEL_153;
      }

      v64[24] = v150;
      if (v150 < v149)
      {
        goto LABEL_156;
      }

      v151 = v64[21];
      if (v151 == -1)
      {
        goto LABEL_160;
      }

      v64[21] = v151 + 1;
      if (v145)
      {
        result = swift_beginAccess();
        v152 = v64[36];
        v153 = v152 + v62;
        if (__CFADD__(v152, v62))
        {
          goto LABEL_164;
        }

        v64[36] = v153;
        if (v153 < v152)
        {
          goto LABEL_167;
        }

        v154 = v64[33];
        if (__CFADD__(v154, v62))
        {
          goto LABEL_168;
        }

        v64[33] = v154 + v62;
        result = swift_beginAccess();
        v155 = v64[28];
        v156 = v155 + 1;
        if (v155 == -1)
        {
          goto LABEL_172;
        }

        v64[28] = v156;
        if (v156 < v155)
        {
          goto LABEL_175;
        }

        v157 = v64[25];
        v144 = v157 + 1;
        if (v157 == -1)
        {
          goto LABEL_177;
        }

LABEL_117:
        v64[25] = v144;
        goto LABEL_12;
      }

      goto LABEL_12;
    }

    v204 = v43;
    if (v63 != 2)
    {
      break;
    }

    v64 = *(v197 + v180);
    result = swift_beginAccess();
    v65 = v64[10];
    v66 = v65 + 1;
    if (v65 == -1)
    {
      goto LABEL_128;
    }

    v64[10] = v66;
    if (v66 < v65)
    {
      goto LABEL_129;
    }

    v67 = v64[9];
    if (v67 == -1)
    {
      goto LABEL_132;
    }

    v64[9] = v67 + 1;
    result = swift_beginAccess();
    v68 = v64[18];
    v69 = v68 + v62;
    if (__CFADD__(v68, v62))
    {
      goto LABEL_137;
    }

    v64[18] = v69;
    if (v69 < v68)
    {
      goto LABEL_140;
    }

    v70 = v64[17];
    if (__CFADD__(v70, v62))
    {
      goto LABEL_143;
    }

    v202 = v47;
    v64[17] = v70 + v62;
    sub_1B7C107FC(&qword_1EBA52980, &unk_1B7D0DB40);
    v71 = swift_initStackObject();
    *(v71 + 16) = v177;
    v72 = v178;
    *(v71 + 32) = v178;
    v73 = v72;
    sub_1B7C72F40(v71);
    swift_setDeallocating();
    v74 = v189;
    sub_1B7C59758(v71 + 32, type metadata accessor for URLResourceKey);
    v75 = v193;
    sub_1B7CFDF00();
    if (v75)
    {

      (*v179)(v74, 1, 1, v192);
      sub_1B7AEE190(v74, &qword_1EBA52970, &qword_1B7D0DB30);
      v193 = 0;
    }

    else
    {
      v193 = 0;

      v101 = v192;
      (*v179)(v74, 0, 1, v192);
      v102 = v182;
      (*v174)(v182, v74, v101);
      v103 = sub_1B7CFDD40();
      (*v173)(v102, v101);
      if (v103 == 2)
      {
        v45 = v201;
      }

      else
      {
        v45 = v201;
        if ((v103 & 1) == 0)
        {
          v118 = 0;
          v131 = 0;
          v46 = v203;
          goto LABEL_69;
        }
      }
    }

    v112 = v203;
    v113 = sub_1B7CFDFC0();
    v115 = sub_1B7C73368(v113, v114);
    v117 = v116;

    if (v117)
    {
      goto LABEL_57;
    }

    if (v115)
    {
      v118 = (IM_APFS_PURGEABLE_IGNORE_ME() & v115) == 0;
    }

    else
    {
      v118 = 0;
    }

    v46 = v203;
    v131 = [objc_opt_self() purgeableFlagsAttributedToMessages_];
LABEL_69:
    v47 = v202;
    (*v199)(v46, v45);
    if (!v118)
    {
      goto LABEL_11;
    }

    result = swift_beginAccess();
    v132 = v64[30];
    v133 = v132 + v62;
    if (__CFADD__(v132, v62))
    {
      goto LABEL_145;
    }

    v64[30] = v133;
    if (v133 < v132)
    {
      goto LABEL_148;
    }

    v134 = v64[29];
    if (__CFADD__(v134, v62))
    {
      goto LABEL_151;
    }

    v64[29] = v134 + v62;
    result = swift_beginAccess();
    v135 = v64[22];
    v136 = v135 + 1;
    v43 = v204;
    if (v135 == -1)
    {
      goto LABEL_154;
    }

    v64[22] = v136;
    if (v136 < v135)
    {
      goto LABEL_158;
    }

    v137 = v64[21];
    if (v137 == -1)
    {
      goto LABEL_159;
    }

    v64[21] = v137 + 1;
    if (v131)
    {
      result = swift_beginAccess();
      v138 = v64[34];
      v139 = v138 + v62;
      if (__CFADD__(v138, v62))
      {
        goto LABEL_163;
      }

      v64[34] = v139;
      if (v139 < v138)
      {
        goto LABEL_166;
      }

      v140 = v64[33];
      if (__CFADD__(v140, v62))
      {
        goto LABEL_170;
      }

      v64[33] = v140 + v62;
      result = swift_beginAccess();
      v141 = v64[26];
      v142 = v141 + 1;
      if (v141 == -1)
      {
        goto LABEL_173;
      }

      v64[26] = v142;
      if (v142 < v141)
      {
        goto LABEL_174;
      }

      v143 = v64[25];
      v144 = v143 + 1;
      if (v143 == -1)
      {
        goto LABEL_179;
      }

      goto LABEL_117;
    }

LABEL_12:
    v43 = (v43 + v198);
    if (!--v47)
    {

      v34 = v172;
      return sub_1B7C59758(v34, type metadata accessor for StorageInspectionAttachmentDirectory);
    }

    v41(v46, v43, v45);
  }

  v64 = *(v197 + v180);
  result = swift_beginAccess();
  v87 = v64[11];
  v88 = v87 + 1;
  if (v87 != -1)
  {
    v64[11] = v88;
    if (v88 < v87)
    {
      goto LABEL_131;
    }

    v89 = v64[9];
    if (v89 == -1)
    {
      goto LABEL_133;
    }

    v64[9] = v89 + 1;
    result = swift_beginAccess();
    v90 = v64[19];
    v91 = v90 + v62;
    if (__CFADD__(v90, v62))
    {
      goto LABEL_136;
    }

    v64[19] = v91;
    if (v91 < v90)
    {
      goto LABEL_139;
    }

    v92 = v64[17];
    if (__CFADD__(v92, v62))
    {
      goto LABEL_141;
    }

    v64[17] = v92 + v62;
    sub_1B7C107FC(&qword_1EBA52980, &unk_1B7D0DB40);
    v93 = swift_initStackObject();
    *(v93 + 16) = v177;
    v94 = v178;
    *(v93 + 32) = v178;
    v95 = v93 + 32;
    v96 = v94;
    sub_1B7C72F40(v93);
    swift_setDeallocating();
    v97 = v203;
    sub_1B7C59758(v95, type metadata accessor for URLResourceKey);
    v98 = v190;
    v99 = v193;
    sub_1B7CFDF00();
    if (v99)
    {
      v100 = v47;

      (*v179)(v98, 1, 1, v192);
      sub_1B7AEE190(v98, &qword_1EBA52970, &qword_1B7D0DB30);
      v193 = 0;
      goto LABEL_63;
    }

    v193 = 0;

    v107 = v98;
    v108 = v98;
    v109 = v192;
    (*v179)(v107, 0, 1, v192);
    v110 = v183;
    (*v174)(v183, v108, v109);
    v111 = sub_1B7CFDD40();
    (*v173)(v110, v109);
    if (v111 == 2)
    {
      v100 = v47;
      v45 = v201;
LABEL_62:
      v97 = v203;
LABEL_63:
      v125 = sub_1B7CFDFC0();
      v127 = sub_1B7C73368(v125, v126);
      v129 = v128;

      if (v129)
      {
        (*v199)(v97, v45);
        v46 = v97;
        v47 = v100;
        v41 = v176;
        goto LABEL_11;
      }

      if (v127)
      {
        v130 = (IM_APFS_PURGEABLE_IGNORE_ME() & v127) == 0;
      }

      else
      {
        v130 = 0;
      }

      v46 = v203;
      v158 = [objc_opt_self() purgeableFlagsAttributedToMessages_];
      v47 = v100;
      v41 = v176;
    }

    else
    {
      v45 = v201;
      if (v111)
      {
        v100 = v47;
        goto LABEL_62;
      }

      v130 = 0;
      v158 = 0;
      v46 = v203;
    }

    (*v199)(v46, v45);
    if (!v130)
    {
      goto LABEL_11;
    }

    result = swift_beginAccess();
    v159 = v64[31];
    v160 = v159 + v62;
    if (__CFADD__(v159, v62))
    {
      goto LABEL_146;
    }

    v64[31] = v160;
    if (v160 < v159)
    {
      goto LABEL_147;
    }

    v161 = v64[29];
    if (__CFADD__(v161, v62))
    {
      goto LABEL_150;
    }

    v64[29] = v161 + v62;
    result = swift_beginAccess();
    v162 = v64[23];
    v163 = v162 + 1;
    v43 = v204;
    if (v162 == -1)
    {
      goto LABEL_155;
    }

    v64[23] = v163;
    if (v163 < v162)
    {
      goto LABEL_157;
    }

    v164 = v64[21];
    if (v164 == -1)
    {
      goto LABEL_161;
    }

    v64[21] = v164 + 1;
    if (v158)
    {
      result = swift_beginAccess();
      v165 = v64[35];
      v166 = v165 + v62;
      if (__CFADD__(v165, v62))
      {
        goto LABEL_162;
      }

      v64[35] = v166;
      if (v166 < v165)
      {
        goto LABEL_165;
      }

      v167 = v64[33];
      if (__CFADD__(v167, v62))
      {
        goto LABEL_169;
      }

      v64[33] = v167 + v62;
      result = swift_beginAccess();
      v168 = v64[27];
      v169 = v168 + 1;
      if (v168 == -1)
      {
        goto LABEL_171;
      }

      v64[27] = v169;
      if (v169 < v168)
      {
        goto LABEL_176;
      }

      v170 = v64[25];
      v144 = v170 + 1;
      if (v170 == -1)
      {
        goto LABEL_178;
      }

      goto LABEL_117;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
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
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
  return result;
}

uint64_t sub_1B7C5904C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a2 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1B7CA29F0(0, v8[2] + 1, 1, v8);
    *(a2 + 16) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1B7CA29F0((v10 > 1), v11 + 1, 1, v8);
  }

  v12 = a3(0);
  v19 = v12;
  v20 = a4;
  *&v18 = a1;
  v8[2] = v11 + 1;
  sub_1B7AE910C(&v18, &v8[5 * v11 + 4]);
  *(a2 + 16) = v8;
  swift_endAccess();
  swift_beginAccess();
  v13 = *(a2 + 24);

  v14 = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 24) = v13;
  if ((v14 & 1) == 0)
  {
    v13 = sub_1B7CA29F0(0, v13[2] + 1, 1, v13);
    *(a2 + 24) = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1B7CA29F0((v15 > 1), v16 + 1, 1, v13);
  }

  v19 = v12;
  v20 = a4;
  *&v18 = a1;
  v13[2] = v16 + 1;
  sub_1B7AE910C(&v18, &v13[5 * v16 + 4]);
  *(a2 + 24) = v13;
  return swift_endAccess();
}

void sub_1B7C59208(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_databaseContext);
  sub_1B7CC2DDC();
  if (!v1)
  {
    sub_1B7C60A6C();
    swift_beginAccess();
    v3 = *(v2 + 32);
    if (v3 >> 62)
    {
      goto LABEL_20;
    }

    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v4)
    {
      v5 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1B8CAE380](v5, v3);
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v6 = *(v3 + 8 * v5 + 32);

          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_18:
            __break(1u);
LABEL_19:
            __break(1u);
LABEL_20:
            v4 = sub_1B7CFF120();
            goto LABEL_4;
          }
        }

        if (qword_1EBA515F0 != -1)
        {
          swift_once();
        }

        sub_1B7CFF210();

        MEMORY[0x1B8CADCA0](v6[2], v6[3]);
        MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
        SqlOperation.execute(_:_:)(0xD000000000000015, 0x80000001B7D54D80, 0);

        (*(*v6 + 152))(v8);

        ++v5;
      }

      while (v7 != v4);
    }
  }
}

void sub_1B7C59464(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_databaseContext);
  sub_1B7CC2C18();
  if (!v1)
  {
    swift_beginAccess();
    v3 = *(v2 + 32);
    if (v3 >> 62)
    {
      goto LABEL_20;
    }

    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v4)
    {
      v5 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1B8CAE380](v5, v3);
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v6 = *(v3 + 8 * v5 + 32);

          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_18:
            __break(1u);
LABEL_19:
            __break(1u);
LABEL_20:
            v4 = sub_1B7CFF120();
            goto LABEL_4;
          }
        }

        if (qword_1EBA515F0 != -1)
        {
          swift_once();
        }

        sub_1B7CFF210();

        MEMORY[0x1B8CADCA0](*(v6 + 16), *(v6 + 24));
        MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
        SqlOperation.execute(_:_:)(0xD000000000000015, 0x80000001B7D54D80, 0);

        ++v5;
      }

      while (v7 != v4);
    }
  }
}

uint64_t sub_1B7C59684(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7C107FC(&qword_1EBA52978, &qword_1B7D0DB38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7C596F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorageInspectionAttachmentDirectory();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7C59758(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B7C597B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7CFDFF0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v110 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v107 = &v91 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v104 = (&v91 - v11);
  v12 = type metadata accessor for StorageInspectionAttachmentDirectory();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v101 = (&v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v103 = &v91 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v91 - v18;
  v108 = sub_1B7CFE420();
  v100 = *(v108 - 8);
  v20 = *(v100 + 64);
  v21 = MEMORY[0x1EEE9AC00](v108);
  v98 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v91 - v23;
  v25 = *(a1 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_inspectionReport);
  result = swift_beginAccess();
  v27 = *(v25 + 296);
  v28 = __CFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *(v25 + 296) = v29;
  v30 = *(a2 + *(v12 + 20));
  v31 = *(v30 + 16);
  v102 = v12;
  if (v31)
  {
    v32 = *(a1 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_databaseContext);
    v33 = v96;
    result = sub_1B7C60B88(a2);
    if (v33)
    {
      return result;
    }

    v109 = sub_1B7C65A2C(result);

    v106 = sub_1B7C663C4(v109);

    sub_1B7C57BA8(v106);

    v96 = 0;
  }

  else
  {
    result = swift_beginAccess();
    v34 = *(v25 + 304);
    v28 = __CFADD__(v34, 1);
    v35 = v34 + 1;
    if (v28)
    {
LABEL_26:
      __break(1u);
      return result;
    }

    *(v25 + 304) = v35;
  }

  v105 = "BY ROWID ASC LIMIT ?;";
  v106 = "directoryBatchSize";
  sub_1B7CFE410();
  sub_1B7C5A108(a2, v19);
  v36 = v103;
  sub_1B7C5A108(a2, v103);
  v37 = a2;
  v38 = v101;
  sub_1B7C5A108(v37, v101);
  v39 = sub_1B7CFE400();
  v40 = sub_1B7CFEEE0();
  v41 = os_log_type_enabled(v39, v40);
  v109 = v4;
  if (!v41)
  {
    sub_1B7C59758(v36, type metadata accessor for StorageInspectionAttachmentDirectory);

    sub_1B7C59758(v38, type metadata accessor for StorageInspectionAttachmentDirectory);
    sub_1B7C59758(v19, type metadata accessor for StorageInspectionAttachmentDirectory);
    v71 = v100;
    v104 = *(v100 + 8);
    result = v104(v24, v108);
    v73 = v110;
    v74 = v98;
    v75 = *(v30 + 16);
    if (!v75)
    {
      return result;
    }

    goto LABEL_18;
  }

  v92 = v40;
  v94 = v39;
  v95 = v24;
  *&v97 = v30;
  v42 = swift_slowAlloc();
  v91 = swift_slowAlloc();
  v111 = v91;
  *v42 = 136315650;
  sub_1B7C5A16C();
  v43 = sub_1B7CFF570();
  v45 = v44;
  sub_1B7C59758(v19, type metadata accessor for StorageInspectionAttachmentDirectory);
  v46 = sub_1B7AED1B8(v43, v45, &v111);

  *(v42 + 4) = v46;
  *(v42 + 12) = 2048;
  v47 = v102;
  v48 = *(*&v36[*(v102 + 20)] + 16);
  sub_1B7C59758(v36, type metadata accessor for StorageInspectionAttachmentDirectory);
  *(v42 + 14) = v48;
  v93 = v42;
  *(v42 + 22) = 2080;
  v49 = *(v38 + *(v47 + 20));
  v50 = *(v49 + 16);
  v99 = v5;
  v51 = 0;
  if (v50)
  {
    v53 = *(v5 + 16);
    v52 = v5 + 16;
    v54 = v49 + ((*(v52 + 64) + 32) & ~*(v52 + 64));
    v102 = *(v52 + 56);
    v103 = v53;
    while (1)
    {
      v55 = v104;
      v56 = v109;
      (v103)(v104, v54, v109);
      v57 = URL.fileAllocationSize.getter();
      v59 = v58;
      result = (*(v52 - 8))(v55, v56);
      v60 = (v59 & 1) != 0 ? 0 : v57;
      v28 = __CFADD__(v51, v60);
      v51 += v60;
      if (v28)
      {
        break;
      }

      v54 += v102;
      if (!--v50)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_15:
  v61 = objc_opt_self();
  v62 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  v63 = [v61 stringFromHugeNumber_];

  v64 = sub_1B7CFEA60();
  v66 = v65;

  sub_1B7C59758(v101, type metadata accessor for StorageInspectionAttachmentDirectory);
  v67 = sub_1B7AED1B8(v64, v66, &v111);

  v68 = v93;
  *(v93 + 24) = v67;
  v69 = v94;
  _os_log_impl(&dword_1B7AD5000, v94, v92, "Found attachment: %s, found %ld attachments, for %s on disk", v68, 0x20u);
  v70 = v91;
  swift_arrayDestroy();
  MEMORY[0x1B8CB0E70](v70, -1, -1);
  MEMORY[0x1B8CB0E70](v68, -1, -1);

  v71 = v100;
  v104 = *(v100 + 8);
  result = v104(v95, v108);
  v4 = v109;
  v73 = v110;
  v74 = v98;
  v5 = v99;
  v30 = v97;
  v75 = *(v97 + 16);
  if (v75)
  {
LABEL_18:
    v77 = *(v5 + 16);
    v76 = v5 + 16;
    v78 = v30 + ((*(v76 + 64) + 32) & ~*(v76 + 64));
    v102 = *(v76 + 56);
    v103 = v77;
    v100 = v76 - 8;
    v101 = (v76 + 16);
    v99 = v71 + 8;
    *&v72 = 136315138;
    v97 = v72;
    do
    {
      v88 = v107;
      (v103)(v107, v78, v4);
      sub_1B7CFE410();
      (*v101)(v73, v88, v4);
      v89 = sub_1B7CFE400();
      v90 = sub_1B7CFEEE0();
      if (os_log_type_enabled(v89, v90))
      {
        v79 = swift_slowAlloc();
        v80 = v76;
        v81 = swift_slowAlloc();
        v111 = v81;
        *v79 = v97;
        sub_1B7C5A16C();
        v82 = sub_1B7CFF570();
        v84 = v83;
        (*v100)(v110, v109);
        v85 = sub_1B7AED1B8(v82, v84, &v111);
        v4 = v109;

        *(v79 + 4) = v85;
        _os_log_impl(&dword_1B7AD5000, v89, v90, "%s", v79, 0xCu);
        sub_1B7AE9168(v81);
        v86 = v81;
        v76 = v80;
        v73 = v110;
        MEMORY[0x1B8CB0E70](v86, -1, -1);
        v87 = v79;
        v74 = v98;
        MEMORY[0x1B8CB0E70](v87, -1, -1);
      }

      else
      {

        (*v100)(v73, v4);
      }

      result = v104(v74, v108);
      v78 += v102;
      --v75;
    }

    while (v75);
  }

  return result;
}

uint64_t sub_1B7C5A108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorageInspectionAttachmentDirectory();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B7C5A16C()
{
  result = qword_1EBA52088;
  if (!qword_1EBA52088)
  {
    sub_1B7CFDFF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52088);
  }

  return result;
}

uint64_t sub_1B7C5A1C4()
{
  sub_1B7C107FC(&qword_1EBA52770, &qword_1B7D0CFA8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7D0CB60;
  v1 = type metadata accessor for ChatLookupRecord();
  v2 = sub_1B7C5A2E4(&qword_1EDBE3F90, type metadata accessor for ChatLookupRecord);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for SyncChatSliceRecord();
  v4 = sub_1B7C5A2E4(&qword_1EDBE3CA0, type metadata accessor for SyncChatSliceRecord);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for ChatServiceRecord();
  result = sub_1B7C5A2E4(&qword_1EDBE3F10, type metadata accessor for ChatServiceRecord);
  *(v0 + 64) = v5;
  *(v0 + 72) = result;
  qword_1EBA5DB28 = v0;
  return result;
}

uint64_t sub_1B7C5A2E4(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1B7C5A32C()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CD0];
  v0[2] = MEMORY[0x1E69E7CD0];
  v0[3] = 0;
  type metadata accessor for StorageInspectionVerificationDatabaseContext();
  swift_allocObject();
  v0[4] = sub_1B7CC27D0(0xD000000000000011, 0x80000001B7D0DBD0);
  type metadata accessor for StorageInspectionOrphanedAttachmentTable();
  swift_allocObject();
  v0[5] = sub_1B7C74D3C(0xD000000000000014, 0x80000001B7D552B0, 1);
  v0[6] = 0;
  v0[7] = v2;
  v0[8] = v2;
  v0[9] = v2;
  type metadata accessor for DatabaseInspectionReport();
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 344) = MEMORY[0x1E69E7CC0];
  StorageInspectionCountReport.init()();
  v0[10] = v5;
  type metadata accessor for DatabaseTableInspectionReport();
  v6 = swift_allocObject();
  *(v6 + 16) = 1;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = v4;
  v0[11] = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = 4;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = v4;
  v0[12] = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = 8;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = v4;
  v0[13] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = 2;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  *(v9 + 48) = v4;
  v0[14] = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = 3;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  *(v10 + 48) = v4;
  v0[15] = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = 7;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 48) = v4;
  v0[16] = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = 6;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 40) = 0;
  *(v12 + 48) = v4;
  v0[17] = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = 5;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  *(v13 + 48) = v4;
  v0[18] = v13;
  v15 = v0[4];
  v14 = v0[5];
  swift_beginAccess();
  swift_retain_n();

  MEMORY[0x1B8CADDF0](v16);
  if (*((*(v15 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v15 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v33 = *((*(v15 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1B7CFED00();
  }

  sub_1B7CFED40();
  swift_endAccess();

  v17 = qword_1EBA5DB00;
  if (qword_1EBA5DB00)
  {
    v18 = v1[4];
    v19 = OBJC_IVAR____TtC14IMDPersistence16StorageInspector_schedulingBehavior;
    swift_beginAccess();
    v20 = 100;
    if (*(v17 + v19))
    {
      v21 = 1000;
    }

    else
    {
      v21 = 100;
    }

    *(v18 + 16) = v21;
    if (*(v17 + v19))
    {
      v20 = 1000;
    }

    *(v18 + 24) = v20;
  }

  if (qword_1EBA515D8 != -1)
  {
    swift_once();
  }

  v22 = *(qword_1EBA5DAF0 + OBJC_IVAR____TtC14IMDPersistence29StorageInspectorReportManager_report);
  v23 = v1[10];
  v24 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_databaseInspectionReport;
  swift_beginAccess();
  v25 = *&v22[v24];
  *&v22[v24] = v23;
  v26 = v22;

  sub_1B7C107FC(&qword_1EBA52060, &qword_1B7D0AFD0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1B7D0DB50;
  v28 = v1[12];
  *(v27 + 32) = v1[11];
  *(v27 + 40) = v28;
  v29 = v1[14];
  *(v27 + 48) = v1[13];
  *(v27 + 56) = v29;
  v30 = v1[16];
  *(v27 + 64) = v1[15];
  *(v27 + 72) = v30;
  v31 = v1[18];
  *(v27 + 80) = v1[17];
  *(v27 + 88) = v31;
  v1[19] = v27;

  return v1;
}

void sub_1B7C5A75C()
{
  v9[4] = *MEMORY[0x1E69E9840];
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  v2 = off_1EBA52D08;
  v3 = objc_autoreleasePoolPush();
  swift_beginAccess();
  IMDSqlOperationBeginTransaction(v2 + 2);
  v9[0] = 0;
  IMDSqlOperationGetError((v2 + 2), v9);
  v4 = v9[0];
  swift_endAccess();
  if (!v4)
  {
    sub_1B7C603B8(v0);
    v5 = v1;
    if (v1)
    {
      if (!v2[4])
      {
        goto LABEL_12;
      }
    }

    else
    {
      swift_beginAccess();
      IMDSqlOperationCommitTransaction(v2 + 2);
      v9[0] = 0;
      IMDSqlOperationGetError((v2 + 2), v9);
      v6 = v9[0];
      swift_endAccess();
      if (!v6)
      {
        goto LABEL_13;
      }

      swift_willThrow();
      v5 = v6;
      if (!v2[4])
      {
LABEL_12:
        swift_willThrow();
        goto LABEL_13;
      }
    }

    swift_beginAccess();
    IMDSqlOperationRevertTransaction(v2 + 2);
    v9[0] = 0;
    IMDSqlOperationGetError((v2 + 2), v9);
    v7 = v9[0];
    swift_endAccess();
    if (v7)
    {
      swift_willThrow();
      v7;

      goto LABEL_13;
    }

    goto LABEL_12;
  }

  swift_willThrow();
  v4;
LABEL_13:
  objc_autoreleasePoolPop(v3);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7C5AC78()
{
  v2 = *(v0[4] + 16);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = v1;
    if (v2)
    {
      v4 = v2 - 1;
      while (1)
      {
        v5 = v4;
        v8 = 0;
        v6 = objc_autoreleasePoolPush();
        sub_1B7C5AD1C(v0, &v8, &v7);
        if (v3)
        {
          break;
        }

        v3 = 0;
        objc_autoreleasePoolPop(v6);
        if ((v8 & 1) == 0)
        {
          v4 = v5 - 1;
          if (v5)
          {
            continue;
          }
        }

        return;
      }

      objc_autoreleasePoolPop(v6);
    }
  }
}

void sub_1B7C5AD1C(void *a1, char *a2, void *a3)
{
  v43 = a3;
  v42 = sub_1B7CFE420();
  v6 = *(v42 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v37 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v37 - v14;
  v16 = a1[4];
  v17 = sub_1B7C5B1BC();
  if (v3)
  {
LABEL_2:
    *v43 = v3;
    return;
  }

  v38 = v12;
  v39 = a2;
  v40 = v6;
  v41 = 0;
  if (v18)
  {
    sub_1B7CFE410();

    v19 = sub_1B7CFE400();
    v20 = sub_1B7CFEED0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134218240;
      *(v21 + 4) = a1[6];
      *(v21 + 12) = 2048;
      v22 = a1[11];
      swift_beginAccess();
      *(v21 + 14) = *(v22 + 24);

      _os_log_impl(&dword_1B7AD5000, v19, v20, "Finished Inspecting %ld of %ld chats...", v21, 0x16u);
      MEMORY[0x1B8CB0E70](v21, -1, -1);
    }

    else
    {
    }

    v36 = v39;
    (*(v40 + 8))(v9, v42);
    *v36 = 1;
  }

  else
  {
    v23 = v17;
    v37[1] = "directoryBatchSize";
    v39 = "nspectionReport";
    sub_1B7CFE410();
    v24 = sub_1B7CFE400();
    v25 = sub_1B7CFEEE0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = v23;
      _os_log_impl(&dword_1B7AD5000, v24, v25, "- Verifying chat with rowID %llu", v26, 0xCu);
      MEMORY[0x1B8CB0E70](v26, -1, -1);
    }

    v27 = *(v40 + 8);
    v27(v15, v42);
    v3 = v41;
    sub_1B7C5B46C(v23, a1);
    if (v3)
    {
      goto LABEL_2;
    }

    v28 = a1[6];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      __break(1u);
    }

    else
    {
      a1[6] = v30;
      v31 = v38;
      if (__ROR8__(0x8F5C28F5C28F5C29 * v30 + 0x51EB851EB851EB8, 1) <= 0x51EB851EB851EB8uLL)
      {
        v41 = 0;
        sub_1B7CFE410();

        v32 = sub_1B7CFE400();
        v33 = sub_1B7CFEED0();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 134218240;
          *(v34 + 4) = a1[6];
          *(v34 + 12) = 2048;
          v35 = a1[11];
          swift_beginAccess();
          *(v34 + 14) = *(v35 + 24);

          _os_log_impl(&dword_1B7AD5000, v32, v33, "Inspecting %ld of %ld chats...", v34, 0x16u);
          MEMORY[0x1B8CB0E70](v34, -1, -1);
        }

        else
        {
        }

        v27(v31, v42);
      }
    }
  }
}

id sub_1B7C5B1BC()
{
  v13[4] = *MEMORY[0x1E69E9840];
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  v1 = off_1EBA52D08;
  sub_1B7CFF210();

  v13[1] = 0xD000000000000012;
  v13[2] = 0x80000001B7D51810;
  v2 = *(v0 + 56);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);

  MEMORY[0x1B8CADCA0](v3, v4);

  MEMORY[0x1B8CADCA0](0xD00000000000001CLL, 0x80000001B7D55290);
  v5 = objc_autoreleasePoolPush();
  v6 = sub_1B7CFEA30();
  swift_beginAccess();
  IMDSqlOperationStartQuery(v1 + 16, v6);
  swift_endAccess();

  swift_beginAccess();
  v13[0] = 0;
  IMDSqlOperationGetError((v1 + 16), v13);
  v7 = v13[0];
  swift_endAccess();
  if (v7)
  {
    swift_willThrow();
    v7;
  }

  else
  {
    v10._countAndFlagsBits = 0x4449574F52;
    v10._object = 0xE500000000000000;
    v7 = SqlOperation.firstUInt64(forColumnName:)(v10);
    swift_beginAccess();
    IMDSqlOperationFinishQuery((v1 + 16));
    v13[0] = 0;
    IMDSqlOperationGetError((v1 + 16), v13);
    v11 = v13[0];
    swift_endAccess();
    if (v11)
    {
      swift_willThrow();
      swift_beginAccess();
      v12 = v11;
      IMDSqlOperationFinishQuery((v1 + 16));
      v13[0] = 0;
      IMDSqlOperationGetError((v1 + 16), v13);
      v7 = v13[0];
      swift_endAccess();
      swift_willThrow();
      if (v7)
      {
        v7 = v7;
      }
    }
  }

  objc_autoreleasePoolPop(v5);

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1B7C5B46C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v60 = *MEMORY[0x1E69E9840];
  v7 = sub_1B7CFE420();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B7C5C1C0(a1);
  if (v3)
  {
    goto LABEL_27;
  }

  sub_1B7C90218(a1, v12, v41);

  v37 = 0;
  v48 = v41[6];
  v49 = v41[7];
  v50 = v41[8];
  v44 = v41[2];
  v45 = v41[3];
  v46 = v41[4];
  v47 = v41[5];
  v42 = v41[0];
  v43 = v41[1];
  if (sub_1B7C608C8(&v42) != 1)
  {
    v57 = v48;
    v58 = v49;
    v59 = v50;
    v53 = v44;
    v54 = v45;
    v55 = v46;
    v56 = v47;
    v51 = v42;
    v52 = v43;
    sub_1B7C8CD2C(&v39);
    sub_1B7AEE190(v41, &qword_1EBA529A0, &qword_1B7D0DC48);
    v16 = v40;
    if (v40)
    {
      if (*(v40 + 16))
      {
        v36 = v39;
        v17 = *(a2 + 88);
        swift_beginAccess();
        v18 = *(v17 + 48);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v17 + 48) = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v18 = sub_1B7CA2B48(0, *(v18 + 2) + 1, 1, v18);
          *(v17 + 48) = v18;
        }

        v21 = *(v18 + 2);
        v20 = *(v18 + 3);
        if (v21 >= v20 >> 1)
        {
          v18 = sub_1B7CA2B48((v20 > 1), v21 + 1, 1, v18);
        }

        *(v18 + 2) = v21 + 1;
        v22 = &v18[16 * v21];
        *(v22 + 4) = v36;
        *(v22 + 5) = v16;
        *(v17 + 48) = v18;
        swift_endAccess();
      }
    }

    v23 = *(a2 + 80);
    swift_beginAccess();
    v24 = *(v23 + 24);
    v25 = __CFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      __break(1u);
    }

    else
    {
      *(v23 + 24) = v26;
      if (qword_1EBA515F0 == -1)
      {
        goto LABEL_16;
      }
    }

    swift_once();
LABEL_16:
    v27 = off_1EBA52D08;
    v28 = objc_autoreleasePoolPush();
    swift_beginAccess();
    IMDSqlOperationBeginTransaction(v27 + 2);
    v38[0] = 0;
    IMDSqlOperationGetError((v27 + 2), v38);
    v29 = v38[0];
    swift_endAccess();
    if (v29)
    {
      swift_willThrow();
      v29;
LABEL_26:
      objc_autoreleasePoolPop(v28);
      goto LABEL_27;
    }

    v30 = v37;
    sub_1B7C608E0(v4, a1, a2);
    if (v30)
    {
      v31 = v30;
    }

    else
    {
      swift_beginAccess();
      IMDSqlOperationCommitTransaction(v27 + 2);
      v38[0] = 0;
      IMDSqlOperationGetError((v27 + 2), v38);
      v32 = v38[0];
      swift_endAccess();
      if (!v32)
      {
        goto LABEL_26;
      }

      swift_willThrow();
      v31 = v32;
    }

    if (v27[4] && (swift_beginAccess(), IMDSqlOperationRevertTransaction(v27 + 2), v38[0] = 0, IMDSqlOperationGetError((v27 + 2), v38), v33 = v38[0], swift_endAccess(), v33))
    {
      swift_willThrow();
      v33;
    }

    else
    {
      swift_willThrow();
    }

    goto LABEL_26;
  }

  sub_1B7CFE410();
  v13 = sub_1B7CFE400();
  v14 = sub_1B7CFEEF0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = a1;
    _os_log_impl(&dword_1B7AD5000, v13, v14, "Could not find chat record for row ID %llu", v15, 0xCu);
    MEMORY[0x1B8CB0E70](v15, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
LABEL_27:
  v34 = *MEMORY[0x1E69E9840];
}

void sub_1B7C5B984(Swift::String *a1)
{
  v3 = v2;
  v4 = v1;
  v17[6] = *MEMORY[0x1E69E9840];
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  v6 = off_1EBA52D08;
  v7 = objc_autoreleasePoolPush();
  swift_beginAccess();
  IMDSqlOperationBeginTransaction(v6 + 2);
  v17[0] = 0;
  IMDSqlOperationGetError((v6 + 2), v17);
  v8 = v17[0];
  swift_endAccess();
  if (v8)
  {
    swift_willThrow();
    v8;
  }

  else
  {
    sub_1B7C5CD84(a1);
    if (!v2)
    {
      countAndFlagsBits = a1[5]._countAndFlagsBits;
      v10 = SqlOperation.rowCount(forTable:)(*(*(v4 + 64) + 16));
      v3 = v11;
      if (!v11)
      {
        v12 = v10;
        swift_beginAccess();
        *(countAndFlagsBits + 48) = v12;
        sub_1B7C5DF34(a1);
        sub_1B7C5E2B0(a1);
        sub_1B7C5CA4C(a1);
        sub_1B7C5CC38(a1);
        sub_1B7C5E568(a1);
        swift_beginAccess();
        IMDSqlOperationCommitTransaction(v6 + 2);
        v16 = 0;
        IMDSqlOperationGetError((v6 + 2), &v16);
        v13 = v16;
        swift_endAccess();
        if (!v13)
        {
          goto LABEL_13;
        }

        swift_willThrow();
        v3 = v13;
      }
    }

    if (v6[4] && (swift_beginAccess(), IMDSqlOperationRevertTransaction(v6 + 2), v16 = 0, IMDSqlOperationGetError((v6 + 2), &v16), v14 = v16, swift_endAccess(), v14))
    {
      swift_willThrow();
      v14;
    }

    else
    {
      swift_willThrow();
    }
  }

LABEL_13:
  objc_autoreleasePoolPop(v7);
  v15 = *MEMORY[0x1E69E9840];
}

void sub_1B7C5BC18()
{
  v23[4] = *MEMORY[0x1E69E9840];
  v2 = sub_1B7CFE420();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v23[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  v7 = off_1EBA52D08;
  v8 = objc_autoreleasePoolPush();
  swift_beginAccess();
  IMDSqlOperationBeginTransaction(v7 + 2);
  v23[0] = 0;
  IMDSqlOperationGetError((v7 + 2), v23);
  v9 = v23[0];
  swift_endAccess();
  if (!v9)
  {
    sub_1B7C605EC(v0);
    if (v1)
    {
      v10 = v1;
      if (!v7[4])
      {
        goto LABEL_12;
      }
    }

    else
    {
      swift_beginAccess();
      IMDSqlOperationCommitTransaction(v7 + 2);
      v23[0] = 0;
      IMDSqlOperationGetError((v7 + 2), v23);
      v11 = v23[0];
      swift_endAccess();
      if (!v11)
      {
        objc_autoreleasePoolPop(v8);
        goto LABEL_17;
      }

      swift_willThrow();
      v10 = v11;
      if (!v7[4])
      {
        goto LABEL_12;
      }
    }

    swift_beginAccess();
    IMDSqlOperationRevertTransaction(v7 + 2);
    v23[0] = 0;
    IMDSqlOperationGetError((v7 + 2), v23);
    v12 = v23[0];
    swift_endAccess();
    if (v12)
    {
      swift_willThrow();
      v13 = v12;

      v10 = v13;
      goto LABEL_13;
    }

LABEL_12:
    swift_willThrow();
    goto LABEL_13;
  }

  swift_willThrow();
  v10 = v9;
LABEL_13:
  objc_autoreleasePoolPop(v8);
  sub_1B7CFE410();
  v14 = v10;
  v15 = sub_1B7CFE400();
  v16 = sub_1B7CFEEF0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = v10;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_1B7AD5000, v15, v16, "failed to drop verification tables: %@", v17, 0xCu);
    sub_1B7AEE190(v18, &qword_1EBA521E0, &unk_1B7D0CE60);
    MEMORY[0x1B8CB0E70](v18, -1, -1);
    MEMORY[0x1B8CB0E70](v17, -1, -1);
  }

  else
  {
  }

  (*(v3 + 8))(v6, v2);
LABEL_17:
  v21 = *MEMORY[0x1E69E9840];
}

void *sub_1B7C5BFD4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  v7 = v0[10];

  v8 = v0[11];

  v9 = v0[12];

  v10 = v0[13];

  v11 = v0[14];

  v12 = v0[15];

  v13 = v0[16];

  v14 = v0[17];

  v15 = v0[18];

  v16 = v0[19];

  return v0;
}

uint64_t sub_1B7C5C06C()
{
  sub_1B7C5BFD4();

  return swift_deallocClassInstance();
}

uint64_t sub_1B7C5C10C()
{
  v1 = *v0;
  sub_1B7C5AC78();
  return v2 & 1;
}

void sub_1B7C5C134(uint64_t *a1@<X8>)
{
  v4 = *v1;
  countAndFlagsBits = (*v1)[2]._countAndFlagsBits;
  sub_1B7C5B984(v4);
  if (!v2)
  {
    v6 = v4[5]._countAndFlagsBits;
    a1[3] = type metadata accessor for DatabaseInspectionReport();
    a1[4] = &protocol witness table for StorageInspectionCountReport;
    *a1 = v6;
  }
}

uint64_t sub_1B7C5C1C0(uint64_t a1)
{
  v3 = v1;
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = sub_1B7CD7370(0xD000000000000051, 0x80000001B7D55230, sub_1B7C60A04, v5);

  if (!v2)
  {
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v8 = *(v7 + 16);
    if (v8)
    {
      v15 = v7;
      v9 = (v7 + 32);
      swift_beginAccess();
      do
      {
        v10 = *v9++;
        sub_1B7C5E81C(&v16, v10, &qword_1EBA52990, &unk_1B7D0DC30);
        --v8;
      }

      while (v8);
      swift_endAccess();
      v7 = v15;
    }

    v11 = *(v3 + 72);
    sub_1B7C74460(v7);

    v12 = *(v3 + 96);
    sub_1B7C107FC(&qword_1EBA52998, &qword_1B7D0DC40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B7D0A7B0;
    *(inited + 32) = a1;
    sub_1B7C74894(inited, 0x64695F74616863, 0xE700000000000000);

    swift_setDeallocating();
    v6 = sub_1B7CDAC54(v7);
  }

  return v6;
}

uint64_t sub_1B7C5C3F8(sqlite3_int64 a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v42 = a3;
  v51 = a1;
  v53[3] = *MEMORY[0x1E69E9840];
  v41 = sub_1B7CFE420();
  v8 = *(*(v41 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v41);
  v49 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = 0;
  v46 = "ionVerificationDatabaseContext";
  v47 = 0;
  v44 = "directoryBatchSize";
  v45 = "SELECT message_id FROM ";
  v43 = "ROM message WHERE ROWID == ?;";
  v40 = (v11 + 8);
  v9.n128_u64[0] = 134218496;
  v38 = v9;
  v39 = xmmword_1B7D0A7B0;
  for (i = v3; ; v6 = i)
  {
    v12 = objc_autoreleasePoolPush();
    if (qword_1EBA515F0 != -1)
    {
      swift_once();
    }

    v13 = off_1EBA52D08;
    v53[0] = 0;
    v53[1] = 0xE000000000000000;
    sub_1B7CFF210();
    MEMORY[0x1B8CADCA0](0xD000000000000017, v46 | 0x8000000000000000);
    v14 = a2;
    MEMORY[0x1B8CADCA0](*(a2 + 32), *(a2 + 40));
    MEMORY[0x1B8CADCA0](0xD000000000000048, v45 | 0x8000000000000000);

    v15 = objc_autoreleasePoolPush();
    v16 = sub_1B7CFEA30();
    swift_beginAccess();
    IMDSqlOperationStartQuery(v13 + 16, v16);
    swift_endAccess();

    swift_beginAccess();
    v52 = 0;
    IMDSqlOperationGetError((v13 + 16), &v52);
    v17 = v52;
    swift_endAccess();
    if (v17)
    {
      swift_willThrow();
      v17;
      goto LABEL_28;
    }

    sub_1B7C261D0(v13, v51, v47, v6, v53);
    if (v4)
    {
      goto LABEL_25;
    }

    v18 = v53[0];
    swift_beginAccess();
    IMDSqlOperationFinishQuery((v13 + 16));
    v52 = 0;
    IMDSqlOperationGetError((v13 + 16), &v52);
    v19 = v52;
    swift_endAccess();
    if (v19)
    {
      break;
    }

    objc_autoreleasePoolPop(v15);

    if (!v18)
    {
      v22 = v12;
LABEL_13:
      v18 = MEMORY[0x1E69E7CC0];
      goto LABEL_14;
    }

    v20 = *(v18 + 16);
    if (!v20)
    {
      v22 = v12;

      goto LABEL_13;
    }

    v21 = *(v18 + 8 * v20 + 24);
    v47 = v21 + 1;
    if (v21 == -1)
    {
      goto LABEL_33;
    }

    v22 = v12;
LABEL_14:
    v23 = *(v18 + 16);
    v24 = v50 + v23;
    if (__CFADD__(v50, v23))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
    }

    if (!v23)
    {

      objc_autoreleasePoolPop(v22);
      v50 = v24;
      goto LABEL_29;
    }

    sub_1B7CFE410();

    v25 = sub_1B7CFE400();
    v26 = sub_1B7CFEEE0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = v38.n128_u32[0];
      *(v27 + 4) = *(v18 + 16);
      *(v27 + 12) = 2048;
      *(v27 + 14) = v51;
      *(v27 + 22) = 2048;
      if (!*(v18 + 16))
      {
        goto LABEL_32;
      }

      *(v27 + 24) = *(v18 + 32);
      v28 = v27;

      _os_log_impl(&dword_1B7AD5000, v25, v26, "Verifying %ld messages in chat %llu for table: chat_message_join, starting at row: %llu", v28, 0x20u);
      MEMORY[0x1B8CB0E70](v28, -1, -1);
    }

    else
    {
    }

    (*v40)(v49, v41);
    v29 = v42;
    v30 = *(v42 + 80);
    swift_beginAccess();
    v31 = *(v30 + 40);
    v32 = __CFADD__(v31, v23);
    v33 = v31 + v23;
    if (v32)
    {
      goto LABEL_31;
    }

    *(v30 + 40) = v33;
    sub_1B7C5CFAC(v18, v29);

    sub_1B7C107FC(&qword_1EBA52998, &qword_1B7D0DC40);
    inited = swift_initStackObject();
    *(inited + 16) = v39;
    *(inited + 32) = v51;
    a2 = v14;
    sub_1B7C74894(inited, 0x64695F74616863, 0xE700000000000000);

    swift_setDeallocating();
    objc_autoreleasePoolPop(v22);
    v50 = v24;
  }

  swift_willThrow();
  v5 = v19;
LABEL_25:
  swift_beginAccess();
  IMDSqlOperationFinishQuery((v13 + 16));
  v52 = 0;
  IMDSqlOperationGetError((v13 + 16), &v52);
  v35 = v52;
  swift_endAccess();
  swift_willThrow();
  if (v35)
  {
    v35;
  }

LABEL_28:
  objc_autoreleasePoolPop(v15);

  objc_autoreleasePoolPop(v12);
LABEL_29:
  v36 = *MEMORY[0x1E69E9840];
  return v50;
}

void sub_1B7C5CA4C(uint64_t a1)
{
  v4 = objc_autoreleasePoolPush();
  v5 = sub_1B7CD7640(&v23);
  if (!v2)
  {
    v19 = v1;
    while (1)
    {
      v6 = *(v5 + 16);
      if (!v6)
      {
        break;
      }

      v21 = v4;
      v20 = v5;
      v7 = v5 + 32;
      swift_beginAccess();
      v8 = 0;
      do
      {
        v11 = *(v7 + 8 * v8++);
        v12 = *(a1 + 72);
        v13 = *(v12 + 40);
        v14 = sub_1B7CFF7B0();
        v15 = -1 << *(v12 + 32);
        v16 = v14 & ~v15;
        if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
        {
          v17 = ~v15;
          while (*(*(v12 + 48) + 8 * v16) != v11)
          {
            v16 = (v16 + 1) & v17;
            if (((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
            {
              goto LABEL_6;
            }
          }
        }

        else
        {
LABEL_6:
          v9 = *(a1 + 72);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v22 = *(a1 + 72);
          sub_1B7C5F58C(v11, v16, isUniquelyReferenced_nonNull_native, &qword_1EBA52990, &unk_1B7D0DC30);
          *(a1 + 72) = v22;
        }
      }

      while (v8 != v6);
      swift_endAccess();
      v18 = *(v19 + 72);
      sub_1B7C74460(v20);

      objc_autoreleasePoolPop(v21);
      v4 = objc_autoreleasePoolPush();
      v5 = sub_1B7CD7640(&v23);
    }
  }

  objc_autoreleasePoolPop(v4);
}

Swift::UInt64 sub_1B7C5CC38(Swift::String *a1)
{
  v2 = a1;
  countAndFlagsBits = a1[5]._countAndFlagsBits;
  swift_beginAccess();
  v4 = *(v2[3]._object + 2);
  swift_beginAccess();
  v5 = countAndFlagsBits[42];
  countAndFlagsBits[42] = v4;
  v6 = v4 >= v5;
  v7 = v4 - v5;
  if (!v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = countAndFlagsBits[39];
  v9 = v8 + v7;
  if (__CFADD__(v8, v7))
  {
    goto LABEL_14;
  }

  countAndFlagsBits[39] = v9;
  swift_beginAccess();
  v10 = *(v2[4]._object + 2);
  v11 = countAndFlagsBits[41];
  countAndFlagsBits[41] = v10;
  v6 = v10 >= v11;
  v12 = v10 - v11;
  if (!v6)
  {
    goto LABEL_15;
  }

  v6 = __CFADD__(v9, v12);
  v13 = v9 + v12;
  if (!v6)
  {
    countAndFlagsBits[39] = v13;
    v2 = *(v1 + 72);
    if (qword_1EBA515F0 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  swift_once();
LABEL_8:
  result = SqlOperation.rowCount(forTable:)(v2[1]);
  if (!v15)
  {
    v16 = countAndFlagsBits[40];
    countAndFlagsBits[40] = result;
    v6 = result >= v16;
    v17 = result - v16;
    if (!v6)
    {
      __break(1u);
LABEL_18:
      __break(1u);
      return result;
    }

    v18 = countAndFlagsBits[39];
    v6 = __CFADD__(v18, v17);
    v19 = v18 + v17;
    if (v6)
    {
      goto LABEL_18;
    }

    countAndFlagsBits[39] = v19;
  }

  return result;
}

void sub_1B7C5CD84(uint64_t a1)
{
  v4 = objc_autoreleasePoolPush();
  v5 = sub_1B7C26374(&v24);
  if (v2)
  {
LABEL_14:
    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v6 = v5;
    v20 = a1;
    v21 = v1;
    while (1)
    {
      v7 = *(v6 + 16);
      if (!v7)
      {

        goto LABEL_14;
      }

      v8 = *(a1 + 80);
      swift_beginAccess();
      v9 = *(v8 + 56);
      v10 = __CFADD__(v9, v7);
      v11 = v9 + v7;
      if (v10)
      {
        break;
      }

      v22 = v4;
      *(v8 + 56) = v11;
      v23 = MEMORY[0x1E69E7CC0];
      sub_1B7AECEEC(0, v7, 0);
      v12 = (v6 + 48);
      do
      {
        v13 = *(v12 - 1);
        v14 = *v12;
        v16 = *(v23 + 16);
        v15 = *(v23 + 24);

        if (v16 >= v15 >> 1)
        {
          sub_1B7AECEEC((v15 > 1), v16 + 1, 1);
        }

        *(v23 + 16) = v16 + 1;
        v17 = v23 + 16 * v16;
        *(v17 + 32) = v13;
        *(v17 + 40) = v14;
        v12 += 3;
        --v7;
      }

      while (v7);

      v18 = sub_1B7C26978(v23);

      if (*(v18 + 16))
      {
        a1 = v20;
        sub_1B7C5CFAC(v18, v20);
        v19 = *(v21 + 112);
        sub_1B7C74460(v18);
      }

      else
      {

        a1 = v20;
      }

      objc_autoreleasePoolPop(v22);
      v4 = objc_autoreleasePoolPush();
      v6 = sub_1B7C26374(&v24);
    }

    __break(1u);
  }
}

void sub_1B7C5CFAC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v29 = *(a1 + 16);
  if (v29)
  {
    v6 = 0;
    v30 = a1 + 32;
    v28 = v2;
    while (1)
    {
      v8 = *(v30 + 8 * v6);
      v9 = objc_autoreleasePoolPush();
      sub_1B7C5D298(v8, a2);
      if (v3)
      {
        break;
      }

      if (qword_1EBA515F0 != -1)
      {
        swift_once();
      }

      v10 = swift_allocObject();
      *(v10 + 16) = v8;
      v11 = sub_1B7CD7370(0xD00000000000003DLL, 0x80000001B7D55140, sub_1B7C6084C, v10);
      v33 = v9;

      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      v13 = *(v12 + 16);
      if (v13)
      {
        v31 = v6;
        v32 = v12;
        v14 = v12 + 32;
        swift_beginAccess();
        v15 = 0;
        do
        {
          v18 = *(v14 + 8 * v15++);
          v19 = *(a2 + 56);
          v20 = *(v19 + 40);
          v21 = sub_1B7CFF7B0();
          v22 = -1 << *(v19 + 32);
          v23 = v21 & ~v22;
          if ((*(v19 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
          {
            v24 = ~v22;
            while (*(*(v19 + 48) + 8 * v23) != v18)
            {
              v23 = (v23 + 1) & v24;
              if (((*(v19 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
              {
                goto LABEL_13;
              }
            }
          }

          else
          {
LABEL_13:
            v16 = *(a2 + 56);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v34 = *(a2 + 56);
            sub_1B7C5F58C(v18, v23, isUniquelyReferenced_nonNull_native, &qword_1EBA52990, &unk_1B7D0DC30);
            *(a2 + 56) = v34;
          }
        }

        while (v15 != v13);
        swift_endAccess();
        v4 = v28;
        v25 = *(v28 + 72);
        sub_1B7C74460(v32);
        v7 = v33;

        v6 = v31;
      }

      else
      {

        v7 = v33;
      }

      ++v6;
      objc_autoreleasePoolPop(v7);
      if (v6 == v29)
      {
        goto LABEL_21;
      }
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
LABEL_21:
    v26 = *(v4 + 64);
    sub_1B7C74460(a1);
    if (!v3)
    {
    }
  }
}

uint64_t sub_1B7C5D298(uint64_t a1, uint64_t a2)
{
  v133 = a2;
  v142 = *MEMORY[0x1E69E9840];
  v130 = type metadata accessor for StorageInspectionAttachmentDirectory();
  v137 = *(v130 - 8);
  v4 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v130);
  v126 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_1B7CFDFF0();
  v127 = *(v139 - 8);
  v6 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v134 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v135 = &v105 - v9;
  v10 = sub_1B7C107FC(&qword_1EBA52978, &qword_1B7D0DB38);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v105 - v15;
  v17 = type metadata accessor for StorageInspectionAttachmentRecord();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v105 - v23;
  v25 = v138;
  result = sub_1B7C60E9C(a1);
  if (v25)
  {
    goto LABEL_5;
  }

  v110 = a1;
  v129 = v21;
  v131 = v24;
  v128 = v17;
  v123 = v18;
  v119 = v16;
  v27 = v133;
  v117 = v13;
  v112 = v2;
  if (!*(result + 16))
  {

    goto LABEL_5;
  }

  v113 = result;
  v28 = sub_1B7C65A2C(result);
  v106 = 0;
  v30 = *(v28 + 16);
  if (!v30)
  {
    goto LABEL_63;
  }

  v107 = v28;
  v31 = *(v27 + 80);
  swift_beginAccess();
  v32 = v31[16];
  v33 = v32 + v30;
  if (__CFADD__(v32, v30))
  {
    goto LABEL_74;
  }

  v31[16] = v33;
  v34 = v119;
  v35 = v123;
  v36 = v128;
  v37 = v131;
  v38 = v130;
  if (v33 < v32)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v39 = v31[13];
  if (__CFADD__(v39, v30))
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v31[13] = v39 + v30;
  v40 = v133;
  swift_beginAccess();
  swift_beginAccess();
  v41 = sub_1B7C65CF0(v107, (v40 + 16), (v40 + 24));
  swift_endAccess();
  swift_endAccess();
  v124 = *(v41 + 16);
  if (!v124)
  {

    v87 = *(v35 + 72);
    v88 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    goto LABEL_54;
  }

  swift_beginAccess();
  v42 = v31[37];
  v43 = __CFADD__(v42, 1);
  v44 = v42 + 1;
  if (v43)
  {
LABEL_77:
    __break(1u);
  }

  v31[37] = v44;
  v105 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v122 = v41 + v105;
  v118 = v31 + 38;
  swift_beginAccess();
  swift_beginAccess();
  v108 = v31 + 17;
  swift_beginAccess();
  v45 = 0;
  v125 = (v137 + 48);
  v136 = v127 + 16;
  v46 = (v127 + 8);
  v121 = v41;
  v111 = v30;
  v116 = v31;
  while (1)
  {
    if (v45 >= *(v41 + 16))
    {
      goto LABEL_66;
    }

    v120 = *(v35 + 72);
    v132 = v45;
    sub_1B7C607E8(v122 + v120 * v45, v37);
    v47 = *(v36 + 48);
    sub_1B7C59684(v37 + v47, v34);
    v48 = *v125;
    if ((*v125)(v34, 1, v38) != 1)
    {
      break;
    }

    sub_1B7AEE190(v34, &qword_1EBA52978, &qword_1B7D0DB38);
LABEL_34:
    v37 = v131;
    sub_1B7C60868(v131, type metadata accessor for StorageInspectionAttachmentRecord);
    v71 = v118;
    v72 = *v118 + 1;
    if (*v118 == -1)
    {
      goto LABEL_68;
    }

    v36 = v128;
    v41 = v121;
LABEL_13:
    v45 = v132 + 1;
    *v71 = v72;
    if (v45 == v124)
    {
      goto LABEL_52;
    }
  }

  v49 = *(v34 + *(v38 + 20));
  v50 = *(v49 + 16);
  if (!v50)
  {
    sub_1B7C60868(v34, type metadata accessor for StorageInspectionAttachmentDirectory);
    v35 = v123;
    goto LABEL_34;
  }

  v114 = v47;
  v115 = v48;
  v51 = objc_opt_self();
  v52 = 0;
  v109 = (*(v127 + 80) + 32) & ~*(v127 + 80);
  v53 = v49 + v109;
  v137 = *(v127 + 72);
  v138 = *(v127 + 16);
  v54 = v139;
  v55 = v135;
  v138(v135, v49 + v109, v139);
  while (1)
  {
    sub_1B7CFDFC0();
    v56 = *v46;
    (*v46)(v55, v54);
    LOBYTE(v140) = 0;
    v57 = [v51 defaultManager];
    v58 = sub_1B7CFEA30();

    v59 = [v57 fileExistsAtPath:v58 isDirectory:&v140];

    if (v59)
    {
      if (__OFADD__(v52++, 1))
      {
        __break(1u);
        goto LABEL_65;
      }
    }

    v53 += v137;
    --v50;
    v54 = v139;
    v55 = v135;
    if (!v50)
    {
      break;
    }

    v138(v135, v53, v139);
  }

  v34 = v119;
  sub_1B7C60868(v119, type metadata accessor for StorageInspectionAttachmentDirectory);
  v61 = v134;
  v62 = v116;
  if (v52 < 0)
  {
    goto LABEL_67;
  }

  v30 = v111;
  v38 = v130;
  v35 = v123;
  if (!v52)
  {
    goto LABEL_34;
  }

  v63 = v116[12];
  v64 = v63 + v52;
  if (__CFADD__(v63, v52))
  {
    goto LABEL_69;
  }

  v116[12] = v64;
  v43 = v64 >= v63;
  v65 = v52;
  v66 = v117;
  if (!v43)
  {
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v67 = v62[9];
  v43 = __CFADD__(v67, v65);
  v68 = v67 + v65;
  if (v43)
  {
    goto LABEL_71;
  }

  v62[9] = v68;
  v69 = v131;
  sub_1B7C59684(&v131[v114], v66);
  if (v115(v66, 1, v38) == 1)
  {
    sub_1B7C60868(v69, type metadata accessor for StorageInspectionAttachmentRecord);
    sub_1B7AEE190(v66, &qword_1EBA52978, &qword_1B7D0DB38);
    v70 = 0;
    v37 = v69;
    goto LABEL_46;
  }

  v73 = v66;
  v74 = v126;
  sub_1B7C596F4(v73, v126);
  v75 = *(v74 + *(v38 + 20));
  v76 = *(v75 + 16);
  if (v76)
  {
    v70 = 0;
    v77 = v75 + v109;
    while (1)
    {
      v78 = v139;
      v138(v61, v77, v139);
      v79 = URL.fileAllocationSize.getter();
      v81 = v80;
      v56(v61, v78);
      v82 = (v81 & 1) != 0 ? 0 : v79;
      v43 = __CFADD__(v70, v82);
      v70 += v82;
      if (v43)
      {
        break;
      }

      v77 += v137;
      --v76;
      v61 = v134;
      if (!v76)
      {
        goto LABEL_45;
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v70 = 0;
LABEL_45:
  v37 = v131;
  sub_1B7C60868(v131, type metadata accessor for StorageInspectionAttachmentRecord);
  sub_1B7C60868(v126, type metadata accessor for StorageInspectionAttachmentDirectory);
  v30 = v111;
  v34 = v119;
  v35 = v123;
  v38 = v130;
LABEL_46:
  v83 = v116[20];
  v84 = v83 + v70;
  v85 = v108;
  if (__CFADD__(v83, v70))
  {
    goto LABEL_72;
  }

  v116[20] = v84;
  v43 = v84 >= v83;
  v86 = v70;
  v36 = v128;
  v41 = v121;
  if (!v43)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v43 = __CFADD__(*v85, v86);
  v72 = *v85 + v86;
  if (!v43)
  {
    v71 = v85;
    goto LABEL_13;
  }

  __break(1u);
LABEL_52:

  v87 = v120;
  v88 = v105;
LABEL_54:
  v89 = v107 + v88;
  v90 = v129;
  do
  {
    sub_1B7C607E8(v89, v90);
    sub_1B7C61014(&v140);
    v91 = v141;
    if (v141)
    {
      v92 = v140;
      v93 = *(v133 + 120);
      swift_beginAccess();
      v94 = *(v93 + 48);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v93 + 48) = v94;
      v96 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v94 = sub_1B7CA2B48(0, *(v94 + 2) + 1, 1, v94);
        *(v93 + 48) = v94;
      }

      v98 = *(v94 + 2);
      v97 = *(v94 + 3);
      if (v98 >= v97 >> 1)
      {
        v94 = sub_1B7CA2B48((v97 > 1), v98 + 1, 1, v94);
      }

      *(v94 + 2) = v98 + 1;
      v99 = &v94[16 * v98];
      *(v99 + 4) = v92;
      *(v99 + 5) = v91;
      *(v93 + 48) = v94;
      swift_endAccess();

      v90 = v129;
      sub_1B7C60868(v129, type metadata accessor for StorageInspectionAttachmentRecord);
      v30 = v96;
    }

    else
    {
      sub_1B7C60868(v90, type metadata accessor for StorageInspectionAttachmentRecord);
    }

    v89 += v87;
    --v30;
  }

  while (v30);
LABEL_63:

  v100 = v112;
  v101 = *(v112 + 80);
  v102 = v106;
  sub_1B7C74460(v113);

  if (!v102)
  {

    v103 = *(v100 + 104);
    sub_1B7C107FC(&qword_1EBA52998, &qword_1B7D0DC40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B7D0A7B0;
    *(inited + 32) = v110;
    sub_1B7C74894(inited, 0x5F6567617373656DLL, 0xEA00000000006469);

    result = swift_setDeallocating();
  }

LABEL_5:
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B7C5DF34(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for StorageInspectionAttachmentRecord();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = 0;
  v10 = objc_autoreleasePoolPush();
  v11 = sub_1B7C61B18(&v50);
  if (v2)
  {
LABEL_2:
    objc_autoreleasePoolPop(v10);
  }

  else
  {
    v12 = v11;
    v42 = v5;
    v43 = v3;
    v44 = a1;
    v41 = v6;
    while (1)
    {
      if (!*(v12 + 16))
      {

        goto LABEL_2;
      }

      v49 = sub_1B7C65A2C(v12);
      v13 = *(a1 + 80);
      v48 = v12;
      v14 = *(v12 + 16);
      swift_beginAccess();
      v15 = v13[11];
      v16 = v15 + v14;
      if (__CFADD__(v15, v14))
      {
        break;
      }

      v13[11] = v16;
      if (v16 < v15)
      {
        goto LABEL_27;
      }

      v17 = v13[9];
      if (__CFADD__(v17, v14))
      {
        goto LABEL_28;
      }

      v45 = v14;
      v46 = 0;
      v47 = v10;
      v13[9] = v17 + v14;
      v18 = *(v49 + 16);
      if (v18)
      {
        v19 = 0;
        v20 = &v9[*(v5 + 44)];
        v21 = v49 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
        v22 = *(v41 + 72);
        while (1)
        {
          sub_1B7C607E8(v21, v9);
          v23 = *v20;
          v24 = v20[8];
          sub_1B7C60868(v9, type metadata accessor for StorageInspectionAttachmentRecord);
          v25 = v24 ? 0 : v23;
          v26 = __CFADD__(v19, v25);
          v19 += v25;
          if (v26)
          {
            break;
          }

          v21 += v22;
          if (!--v18)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v19 = 0;
LABEL_17:
      swift_beginAccess();
      v27 = v13[19];
      v28 = v27 + v19;
      if (__CFADD__(v27, v19))
      {
        goto LABEL_29;
      }

      v13[19] = v28;
      if (v28 < v27)
      {
        goto LABEL_30;
      }

      v29 = v13[17];
      if (__CFADD__(v29, v19))
      {
        goto LABEL_31;
      }

      v13[17] = v29 + v19;
      a1 = v44;
      v30 = *(v44 + 40);
      v31 = v46;
      sub_1B7C70A70(v49, 1);
      if (v31)
      {

        v10 = v47;
        goto LABEL_2;
      }

      v32 = v43;
      v33 = *(v43 + 104);
      v34 = v48;
      sub_1B7C74894(v48, 0x656D686361747461, 0xED000064695F746ELL);
      v35 = v47;

      v36 = *(v32 + 80);
      sub_1B7C74460(v34);

      v37 = *(a1 + 120);
      swift_beginAccess();
      v38 = *(v37 + 40);
      v39 = __OFADD__(v38, v45);
      v40 = v38 + v45;
      if (v39)
      {
        goto LABEL_32;
      }

      *(v37 + 40) = v40;
      objc_autoreleasePoolPop(v35);
      v10 = objc_autoreleasePoolPush();
      v12 = sub_1B7C61B18(&v50);
      v5 = v42;
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }
}

void sub_1B7C5E2B0(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for StorageInspectionAttachmentRecord();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = 0;
  v10 = objc_autoreleasePoolPush();
  v11 = sub_1B7C61CD4(&v41);
  if (v2)
  {
LABEL_2:
    v40 = v2;
LABEL_25:
    objc_autoreleasePoolPop(v10);
  }

  else
  {
    v12 = v11;
    v34 = a1;
    v35 = v3;
    v36 = v6;
    v37 = v5;
    while (1)
    {
      if (!*(v12 + 16))
      {
        v40 = v2;
LABEL_24:

        goto LABEL_25;
      }

      v13 = sub_1B7C65A2C(v12);
      v40 = v2;
      v14 = v13;

      v15 = *(a1 + 40);
      v16 = v40;
      sub_1B7C70A70(v14, 0);
      v40 = v16;
      if (v16)
      {
        goto LABEL_24;
      }

      v17 = *(a1 + 80);
      v18 = *(v14 + 16);
      swift_beginAccess();
      v19 = v17[10];
      v20 = v19 + v18;
      if (__CFADD__(v19, v18))
      {
        break;
      }

      v17[10] = v20;
      if (v20 < v19)
      {
        goto LABEL_28;
      }

      v21 = v17[9];
      if (__CFADD__(v21, v18))
      {
        goto LABEL_29;
      }

      v17[9] = v21 + v18;
      if (v18)
      {
        v38 = v14;
        v39 = v10;
        v22 = 0;
        v23 = &v9[*(v37 + 44)];
        v24 = v14 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
        v25 = *(v36 + 72);
        while (1)
        {
          sub_1B7C607E8(v24, v9);
          v26 = *v23;
          v27 = v23[8];
          sub_1B7C60868(v9, type metadata accessor for StorageInspectionAttachmentRecord);
          v28 = v27 ? 0 : v26;
          v29 = __CFADD__(v22, v28);
          v22 += v28;
          if (v29)
          {
            break;
          }

          v24 += v25;
          if (!--v18)
          {

            v10 = v39;
            a1 = v34;
            goto LABEL_18;
          }
        }

        __break(1u);
        break;
      }

      v22 = 0;
LABEL_18:
      swift_beginAccess();
      v30 = v17[18];
      v31 = v30 + v22;
      if (__CFADD__(v30, v22))
      {
        goto LABEL_30;
      }

      v17[18] = v31;
      if (v31 < v30)
      {
        goto LABEL_31;
      }

      v32 = v17[17];
      if (__CFADD__(v32, v22))
      {
        goto LABEL_32;
      }

      v17[17] = v32 + v22;
      objc_autoreleasePoolPop(v10);
      v10 = objc_autoreleasePoolPush();
      v2 = v40;
      v12 = sub_1B7C61CD4(&v41);
      if (v2)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }
}

Swift::UInt64 sub_1B7C5E568(void *a1)
{
  v3 = a1[11];
  v4 = v1[7];
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  result = SqlOperation.rowCount(forTable:)(v4[1]);
  if (!v6)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v7 = result;
      swift_beginAccess();
      *(v3 + 32) = v7;
      v8 = a1[12];
      result = SqlOperation.rowCount(forTable:)(*(v1[9] + 16));
      if (v9)
      {
        return result;
      }

      if ((result & 0x8000000000000000) == 0)
      {
        v10 = result;
        swift_beginAccess();
        *(v8 + 32) = v10;
        v11 = a1[13];
        result = SqlOperation.rowCount(forTable:)(*(v1[14] + 16));
        if (v12)
        {
          return result;
        }

        if ((result & 0x8000000000000000) == 0)
        {
          v13 = result;
          swift_beginAccess();
          *(v11 + 32) = v13;
          v14 = a1[14];
          result = SqlOperation.rowCount(forTable:)(*(v1[8] + 16));
          if (v15)
          {
            return result;
          }

          if ((result & 0x8000000000000000) == 0)
          {
            v16 = result;
            swift_beginAccess();
            *(v14 + 32) = v16;
            v17 = a1[15];
            result = SqlOperation.rowCount(forTable:)(*(v1[10] + 16));
            if (v18)
            {
              return result;
            }

            if ((result & 0x8000000000000000) == 0)
            {
              v19 = result;
              swift_beginAccess();
              *(v17 + 32) = v19;
              v20 = a1[16];
              result = SqlOperation.rowCount(forTable:)(*(v1[13] + 16));
              if (v21)
              {
                return result;
              }

              if ((result & 0x8000000000000000) == 0)
              {
                v22 = result;
                swift_beginAccess();
                *(v20 + 32) = v22;
                v23 = a1[17];
                result = SqlOperation.rowCount(forTable:)(*(v1[12] + 16));
                if (v24)
                {
                  return result;
                }

                if ((result & 0x8000000000000000) == 0)
                {
                  v25 = result;
                  swift_beginAccess();
                  *(v23 + 32) = v25;
                  v26 = a1[18];
                  result = SqlOperation.rowCount(forTable:)(*(v1[11] + 16));
                  if (v27)
                  {
                    return result;
                  }

                  if ((result & 0x8000000000000000) == 0)
                  {
                    v28 = result;
                    result = swift_beginAccess();
                    *(v26 + 32) = v28;
                    return result;
                  }

LABEL_28:
                  __break(1u);
                  return result;
                }

LABEL_27:
                __break(1u);
                goto LABEL_28;
              }

LABEL_26:
              __break(1u);
              goto LABEL_27;
            }

LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_1B7C5E81C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = *v4;
  v10 = *(*v4 + 40);
  v11 = sub_1B7CFF7B0();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (*(*(v9 + 48) + 8 * v13) != a2)
    {
      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v15 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    sub_1B7C5F58C(a2, v13, isUniquelyReferenced_nonNull_native, a3, a4);
    *v4 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1B7C5E91C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1B7CFF7C0();
  sub_1B7CFEB10();
  v9 = sub_1B7CFF800();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1B7CFF590() & 1) != 0)
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

    sub_1B7C5F6C8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1B7C5EA6C(void *a1, void *a2)
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

    v9 = sub_1B7CFF130();

    if (v9)
    {

      sub_1B7C60A20();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1B7CFF120();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1B7C5EC84(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1B7C5F2E0(v22 + 1);
    }

    v20 = v8;
    sub_1B7C5F508(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_1B7C60A20();
  v11 = *(v6 + 40);
  v12 = sub_1B7CFEFC0();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1B7C5F848(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1B7CFEFD0();

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

uint64_t sub_1B7C5EC84(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1B7C107FC(&qword_1EBA529B0, &qword_1B7D0DC58);
    v2 = sub_1B7CFF1B0();
    v16 = v2;
    sub_1B7CFF110();
    if (sub_1B7CFF140())
    {
      sub_1B7C60A20();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1B7C5F2E0(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_1B7CFEFC0();
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

      while (sub_1B7CFF140());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1B7C5EE64(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_1B7C107FC(a2, a3);
  result = sub_1B7CFF1A0();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    v29 = v4;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_1B7CFF7B0();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v11 >= 64)
    {
      bzero((v5 + 56), 8 * v14);
    }

    else
    {
      *v10 = -1 << v11;
    }

    v4 = v29;
    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_1B7C5F080(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1B7C107FC(&qword_1EBA529A8, &qword_1B7D0DC50);
  result = sub_1B7CFF1A0();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1B7CFF7C0();
      sub_1B7CFEB10();
      result = sub_1B7CFF800();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B7C5F2E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1B7C107FC(&qword_1EBA529B0, &qword_1B7D0DC58);
  result = sub_1B7CFF1A0();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_1B7CFEFC0();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
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

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1B7C5F508(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1B7CFEFC0();
  v5 = -1 << *(a2 + 32);
  result = sub_1B7CFF100();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1B7C5F58C(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v6 = result;
  v7 = *(*v5 + 16);
  v8 = *(*v5 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B7C5EE64(v7 + 1, a4, a5);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a2;
      result = sub_1B7C5F9A8(a4, a5);
      a2 = v9;
      goto LABEL_12;
    }

    sub_1B7C5FD84(v7 + 1, a4, a5);
  }

  v10 = *v5;
  v11 = *(*v5 + 40);
  result = sub_1B7CFF7B0();
  v12 = -1 << *(v10 + 32);
  a2 = result & ~v12;
  if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v10 + 48) + 8 * a2) != v6)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v5;
  *(*v5 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = v6;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B7CFF730();
  __break(1u);
  return result;
}

uint64_t sub_1B7C5F6C8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1B7C5F080(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1B7C5FAD8();
      goto LABEL_16;
    }

    sub_1B7C5FF6C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1B7CFF7C0();
  sub_1B7CFEB10();
  result = sub_1B7CFF800();
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

      result = sub_1B7CFF590();
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
  result = sub_1B7CFF730();
  __break(1u);
  return result;
}

void sub_1B7C5F848(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B7C5F2E0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1B7C5FC34();
      goto LABEL_12;
    }

    sub_1B7C601A4(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_1B7CFEFC0();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_1B7C60A20();
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_1B7CFEFD0();

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
  sub_1B7CFF730();
  __break(1u);
}

void *sub_1B7C5F9A8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1B7C107FC(a1, a2);
  v4 = *v2;
  v5 = sub_1B7CFF190();
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
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
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

void *sub_1B7C5FAD8()
{
  v1 = v0;
  sub_1B7C107FC(&qword_1EBA529A8, &qword_1B7D0DC50);
  v2 = *v0;
  v3 = sub_1B7CFF190();
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

id sub_1B7C5FC34()
{
  v1 = v0;
  sub_1B7C107FC(&qword_1EBA529B0, &qword_1B7D0DC58);
  v2 = *v0;
  v3 = sub_1B7CFF190();
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

uint64_t sub_1B7C5FD84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_1B7C107FC(a2, a3);
  result = sub_1B7CFF1A0();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      v20 = *(v8 + 40);
      result = sub_1B7CFF7B0();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v19;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        goto LABEL_26;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v4 = v8;
  }

  return result;
}

uint64_t sub_1B7C5FF6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1B7C107FC(&qword_1EBA529A8, &qword_1B7D0DC50);
  result = sub_1B7CFF1A0();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1B7CFF7C0();

      sub_1B7CFEB10();
      result = sub_1B7CFF800();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_1B7C601A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1B7C107FC(&qword_1EBA529B0, &qword_1B7D0DC58);
  result = sub_1B7CFF1A0();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_1B7CFEFC0();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
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

        v2 = v26;
        goto LABEL_28;
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