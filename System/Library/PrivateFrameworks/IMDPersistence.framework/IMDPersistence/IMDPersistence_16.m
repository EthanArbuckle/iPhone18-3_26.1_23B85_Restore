char *sub_1B7C76BC4@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for StorageInspectorReport());
  result = StorageInspectorReport.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t StorageInspectorReport.formatReport(with:)(uint64_t a1)
{
  v2 = v1;
  result = sub_1B7C219E4(0xD00000000000001DLL, 0x80000001B7D55D60);
  v5 = *(a1 + 24);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 24) = v7;
    v8 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_databaseInspectionReport;
    swift_beginAccess();
    if (*(v2 + v8))
    {

      sub_1B7C8B7B8(a1);
    }

    v9 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_attachmentStorageInspectorReport;
    swift_beginAccess();
    if (*(v2 + v9))
    {
      swift_beginAccess();
      v10 = *(*(a1 + 16) + 16);

      if (v10)
      {
        sub_1B7C219E4(0, 0xE000000000000000);
      }

      sub_1B7CA78C8(a1);
    }

    v11 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_exportableDatabaseRecordCountReport;
    swift_beginAccess();
    if (*(v2 + v11))
    {
      swift_beginAccess();
      v12 = *(*(a1 + 16) + 16);

      if (v12)
      {
        sub_1B7C219E4(0, 0xE000000000000000);
      }

      sub_1B7C4FC80(a1);
    }

    v13 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_crossCheckReport;
    result = swift_beginAccess();
    if (*(v2 + v13))
    {
      swift_beginAccess();
      v14 = *(*(a1 + 16) + 16);

      if (v14)
      {
        sub_1B7C219E4(0, 0xE000000000000000);
      }

      StorageInspectorCrossCheckReport.formatReport(with:)(a1);
    }

    v15 = *(a1 + 24);
    v6 = __OFSUB__(v15, 1);
    v16 = v15 - 1;
    if (!v6)
    {
      *(a1 + 24) = v16;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for StorageInspectorReport()
{
  result = qword_1EBA52E48;
  if (!qword_1EBA52E48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B7C76EB8()
{
  result = qword_1EBA52DE8;
  if (!qword_1EBA52DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52DE8);
  }

  return result;
}

uint64_t StorageInspectorReport.encodeToData()()
{
  v0 = sub_1B7CFDC10();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1B7CFDC00();
  type metadata accessor for StorageInspectorReport();
  sub_1B7C77334(&qword_1EBA52E38, type metadata accessor for StorageInspectorReport);
  v3 = sub_1B7CFDBF0();

  return v3;
}

uint64_t static StorageInspectorReport.create(fromData:)()
{
  v1 = sub_1B7CFDBE0();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1B7CFDBD0();
  type metadata accessor for StorageInspectorReport();
  sub_1B7C77334(&qword_1EBA52E40, type metadata accessor for StorageInspectorReport);
  sub_1B7CFDBC0();

  if (!v0)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1B7C77334(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7C7737C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

void sub_1B7C773DC()
{
  sub_1B7C4954C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1B7C77894()
{
  result = qword_1EBA52E58;
  if (!qword_1EBA52E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52E58);
  }

  return result;
}

unint64_t sub_1B7C778EC()
{
  result = qword_1EBA52E60;
  if (!qword_1EBA52E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52E60);
  }

  return result;
}

unint64_t sub_1B7C77944()
{
  result = qword_1EBA52E68;
  if (!qword_1EBA52E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52E68);
  }

  return result;
}

uint64_t sub_1B7C77998(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000018 && 0x80000001B7D55DB0 == a2;
  if (v3 || (sub_1B7CFF590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001B7D55DD0 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001B7D55E00 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B7D55E30 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B7D55E50 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B7CFF590();

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

uint64_t sub_1B7C77B4C()
{
  v2 = v1;
  v3 = v0;
  v4 = 0xD000000000000011;
  v5 = *(v0 + 64);
  v6 = *(v5 + 16);
  v22 = v5;
  if (v6)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1B7AECEEC(0, v6, 0);
    v7 = (v5 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;

      sub_1B7CFF210();

      MEMORY[0x1B8CADCA0](0xD000000000000011, 0x80000001B7D55EC0);

      v11 = *(v23 + 16);
      v10 = *(v23 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1B7AECEEC((v10 > 1), v11 + 1, 1);
      }

      *(v23 + 16) = v11 + 1;
      v12 = v23 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v9;
      v7 += 2;
      --v6;
    }

    while (v6);
    v2 = v1;
    v3 = v0;
    v4 = 0xD000000000000011;
  }

  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v13 = sub_1B7CFEA10();
  v15 = v14;

  if (qword_1EBA515F0 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    sub_1B7CFF210();

    MEMORY[0x1B8CADCA0](*(v3 + 16), *(v3 + 24));
    MEMORY[0x1B8CADCA0](10272, 0xE200000000000000);
    MEMORY[0x1B8CADCA0](v13, v15);

    MEMORY[0x1B8CADCA0](15145, 0xE200000000000000);
    SqlOperation.execute(_:_:)(v4 + 10, 0x80000001B7D513A0, 0);

    if (v2)
    {
      break;
    }

    v17 = v22;
    v4 = *(v22 + 16);
    if (!v4)
    {
      break;
    }

    v18 = 0;
    v2 = (v22 + 40);
    v15 = qword_1B7D0A720;
    while (v18 < *(v17 + 16))
    {
      v19 = v3;
      v20 = *(v2 - 1);
      v21 = *v2;
      sub_1B7C107FC(&qword_1EBA525D0, qword_1B7D0A720);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1B7D0A7B0;
      *(v13 + 32) = v20;
      *(v13 + 40) = v21;
      v3 = v19;

      sub_1B7C741A8();

      ++v18;

      v2 += 2;
      v17 = v22;
      if (v4 == v18)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  return result;
}

uint64_t sub_1B7C77E80()
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();

  strcpy(v9, "INSERT INTO ");
  BYTE5(v9[1]) = 0;
  HIWORD(v9[1]) = -5120;
  MEMORY[0x1B8CADCA0](v0[2], v0[3]);
  MEMORY[0x1B8CADCA0](10272, 0xE200000000000000);
  v1 = v0[8];

  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v2 = sub_1B7CFEA10();
  v4 = v3;

  MEMORY[0x1B8CADCA0](v2, v4);

  MEMORY[0x1B8CADCA0](0x5443454C45532029, 0xE900000000000020);
  v9[3] = v1;

  v5 = sub_1B7CFEA10();
  v7 = v6;

  MEMORY[0x1B8CADCA0](v5, v7);

  MEMORY[0x1B8CADCA0](0x204D4F524620, 0xE600000000000000);
  MEMORY[0x1B8CADCA0](v0[4], v0[5]);
  MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
  SqlOperation.execute(_:_:)(v9[0], v9[1], 0);
}

uint64_t sub_1B7C780A0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  return swift_deallocClassInstance();
}

uint64_t sub_1B7C78114@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord);
  sub_1B7CFE770();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B7C78220()
{
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord);
  sub_1B7CFE770();

  return v0;
}

uint64_t sub_1B7C78324()
{
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord);
  sub_1B7CFE790();
}

uint64_t sub_1B7C783E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord);
  sub_1B7C7B724();
  sub_1B7CFE770();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1B7C784F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord);
  sub_1B7CFE1D0();
}

uint64_t sub_1B7C785D0()
{
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord);
  sub_1B7C7B724();
  sub_1B7CFE770();

  return v0;
}

uint64_t sub_1B7C786D4()
{
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord);
  sub_1B7C7B6A8();
  sub_1B7CFE790();
}

uint64_t sub_1B7C78790(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord);
  sub_1B7CFE1D0();
}

double sub_1B7C78864@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord);
  sub_1B7C2DD10(&qword_1EBA52418, sub_1B7C2DD88);
  sub_1B7CFE770();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1B7C789A4()
{
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord);
  sub_1B7C2DD10(&qword_1EBA52418, sub_1B7C2DD88);
  sub_1B7CFE770();

  return v0;
}

uint64_t sub_1B7C78ADC()
{
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord);
  sub_1B7C2DD10(&qword_1EBA52400, sub_1B7C2DCBC);
  sub_1B7CFE790();
}

double sub_1B7C78BC4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord);
  sub_1B7C7B3F4();
  sub_1B7CFE770();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1B7C78CDC()
{
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord);
  sub_1B7C7B3F4();
  sub_1B7CFE770();

  return v0;
}

uint64_t sub_1B7C78DDC()
{
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord);
  sub_1B7C7B378();
  sub_1B7CFE790();
}

uint64_t sub_1B7C78EF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord);
  sub_1B7C7B604();
  sub_1B7CFE770();

  *a2 = v5;
  return result;
}

uint64_t sub_1B7C79000(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord);
  sub_1B7CFE1D0();
}

uint64_t sub_1B7C790D0()
{
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord);
  sub_1B7C7B604();
  sub_1B7CFE770();

  return v1;
}

uint64_t sub_1B7C791D8()
{
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord);
  sub_1B7C7B588();
  sub_1B7CFE790();
}

uint64_t sub_1B7C792BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord);
  sub_1B7CFE770();

  *a2 = v4;
  return result;
}

uint64_t sub_1B7C793CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord);
  sub_1B7CFE1D0();
}

uint64_t sub_1B7C794A4()
{
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord);
  sub_1B7CFE770();

  return v0;
}

uint64_t sub_1B7C795A0()
{
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord);
  sub_1B7CFE790();
}

uint64_t sub_1B7C7965C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord);
  sub_1B7CFE770();

  *a2 = v5;
  return result;
}

uint64_t sub_1B7C79764(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord);
  sub_1B7CFE1D0();
}

uint64_t sub_1B7C79838()
{
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5730, type metadata accessor for ChatRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord);
  sub_1B7CFE770();

  return v1;
}

uint64_t sub_1B7C79934()
{
  swift_getKeyPath();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord);
  sub_1B7CFE790();
}

uint64_t sub_1B7C79A24(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for ChatRecord();
  *(v1 + 64) = sub_1B7C107FC(&qword_1EBA52EA0, &unk_1B7D0FA20);
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord);
  *(v1 + 72) = swift_getOpaqueTypeConformance2();
  sub_1B7C1A14C((v1 + 40));
  sub_1B7CFE720();
  *(v1 + 16) = 0x101010101010101;
  v3 = *(v1 + 72);
  sub_1B7AE9124((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 24) = 16843009;
  *(v1 + 28) = 257;
  *(v1 + 30) = 1;
  v4 = *(v1 + 72);
  sub_1B7AE9124((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 31) = 1;
  v5 = *(v1 + 72);
  sub_1B7AE9124((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 32) = 257;
  v6 = *(v1 + 72);
  sub_1B7AE9124((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1B7CFE530();

  v7 = *(v1 + 72);
  sub_1B7AE9124((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1B7CFE530();

  v8 = *(v1 + 72);
  sub_1B7AE9124((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1B7CFE530();

  v9 = *(v1 + 72);
  sub_1B7AE9124((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1B7CFE530();

  v10 = *(v1 + 72);
  sub_1B7AE9124((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1B7CFE530();

  v11 = *(v1 + 72);
  sub_1B7AE9124((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1B7CFE530();

  sub_1B7CFE1F0();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  swift_beginAccess();
  sub_1B7AE9168((v1 + 40));
  sub_1B7AE910C(a1, v1 + 40);
  swift_endAccess();
  return v1;
}

uint64_t sub_1B7C79E44()
{
  sub_1B7AE9168(v0 + 5);
  v1 = OBJC_IVAR____TtC14IMDPersistence10ChatRecord___observationRegistrar;
  v2 = sub_1B7CFE200();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1B7C79EF0()
{
  result = sub_1B7CFE200();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1B7C79FF8(__int128 *a1)
{
  v2 = type metadata accessor for ChatRecord();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  sub_1B7C79A24(a1);
  return v5;
}

uint64_t sub_1B7C7A084(__int128 *a1)
{
  swift_beginAccess();
  sub_1B7AE9168((v1 + 40));
  sub_1B7AE910C(a1, v1 + 40);
  return swift_endAccess();
}

void (*sub_1B7C7A0DC(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1B7AE90A8(v1 + 40, v4);
  return sub_1B7C7A16C;
}

void sub_1B7C7A16C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_1B7AE90A8(*a1, v2 + 40);
    swift_beginAccess();
    sub_1B7AE9168((v3 + 40));
    sub_1B7AE910C((v2 + 40), v3 + 40);
    swift_endAccess();
    sub_1B7AE9168(v2);
  }

  else
  {
    swift_beginAccess();
    sub_1B7AE9168((v3 + 40));
    sub_1B7AE910C(v2, v3 + 40);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_1B7C7A228()
{
  v1 = *v0;
  sub_1B7CFF7C0();
  type metadata accessor for ChatRecord();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord);
  sub_1B7CFE750();
  return sub_1B7CFF800();
}

uint64_t sub_1B7C7A2B4()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1B7CFE750();
}

uint64_t sub_1B7C7A30C()
{
  sub_1B7CFF7C0();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1B7CFE750();
  return sub_1B7CFF800();
}

uint64_t sub_1B7C7A374()
{
  v1 = *v0;
  type metadata accessor for ChatRecord();
  sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord);
  return sub_1B7CFE740();
}

uint64_t sub_1B7C7A3F0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1B7C7A60C(uint64_t a1)
{
  result = sub_1B7C7B210(&qword_1EDBE5728, type metadata accessor for ChatRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7C7A664()
{
  sub_1B7C107FC(&qword_1EBA52050, &qword_1B7D0AF40);
  v0 = *(sub_1B7CFE850() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B7D0F300;
  swift_getKeyPath();
  sub_1B7C107FC(&qword_1EBA523D0, &qword_1B7D0BB90);
  v3 = *(sub_1B7CFE910() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_1B7D0A7B0;
  sub_1B7CFE900();
  v6 = sub_1B7CFE940();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1B7CFE950();
  sub_1B7C7B210(&qword_1EDBE3A00, MEMORY[0x1E697BD30]);
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  v9 = *(v6 + 48);
  v10 = *(v6 + 52);
  swift_allocObject();
  sub_1B7CFE950();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  v11 = *(v6 + 48);
  v12 = *(v6 + 52);
  swift_allocObject();
  sub_1B7CFE950();
  sub_1B7CFE840();
  swift_getKeyPath();
  v13 = *(v6 + 48);
  v14 = *(v6 + 52);
  swift_allocObject();
  sub_1B7CFE950();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  return v16;
}

uint64_t sub_1B7C7B210(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7C7B258()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C79934();
}

uint64_t sub_1B7C7B280()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C79934();
}

uint64_t sub_1B7C7B2A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C79934();
}

uint64_t sub_1B7C7B2D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C795A0();
}

uint64_t sub_1B7C7B2FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C795A0();
}

uint64_t sub_1B7C7B328()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C79934();
}

uint64_t sub_1B7C7B350()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1B7C78DDC();
}

unint64_t sub_1B7C7B378()
{
  result = qword_1EBA523D8;
  if (!qword_1EBA523D8)
  {
    sub_1B7C1091C(&qword_1EBA51FB0, &unk_1B7D0FA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA523D8);
  }

  return result;
}

unint64_t sub_1B7C7B3F4()
{
  result = qword_1EBA523E0;
  if (!qword_1EBA523E0)
  {
    sub_1B7C1091C(&qword_1EBA51FB0, &unk_1B7D0FA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA523E0);
  }

  return result;
}

uint64_t sub_1B7C7B470()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1B7C78DDC();
}

uint64_t sub_1B7C7B498()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C795A0();
}

uint64_t sub_1B7C7B4C4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1B7C78DDC();
}

uint64_t sub_1B7C7B4EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C795A0();
}

uint64_t sub_1B7C7B518()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1B7C78DDC();
}

uint64_t sub_1B7C7B540()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1B7C78DDC();
}

uint64_t sub_1B7C7B568()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C791D8();
}

unint64_t sub_1B7C7B588()
{
  result = qword_1EBA52E70;
  if (!qword_1EBA52E70)
  {
    sub_1B7C1091C(&qword_1EBA52E78, "̌\a");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52E70);
  }

  return result;
}

unint64_t sub_1B7C7B604()
{
  result = qword_1EBA52E80;
  if (!qword_1EBA52E80)
  {
    sub_1B7C1091C(&qword_1EBA52E78, "̌\a");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52E80);
  }

  return result;
}

uint64_t sub_1B7C7B680()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1B7C786D4();
}

unint64_t sub_1B7C7B6A8()
{
  result = qword_1EBA52E88;
  if (!qword_1EBA52E88)
  {
    sub_1B7C1091C(&qword_1EBA52E90, &unk_1B7D0FA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52E88);
  }

  return result;
}

unint64_t sub_1B7C7B724()
{
  result = qword_1EBA52E98;
  if (!qword_1EBA52E98)
  {
    sub_1B7C1091C(&qword_1EBA52E90, &unk_1B7D0FA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52E98);
  }

  return result;
}

uint64_t sub_1B7C7B7A0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1B7C78DDC();
}

uint64_t sub_1B7C7B7C8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1B7C78DDC();
}

uint64_t sub_1B7C7B7F0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1B7C78DDC();
}

uint64_t sub_1B7C7B818()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C79934();
}

uint64_t sub_1B7C7B840()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1B7C78DDC();
}

uint64_t sub_1B7C7B868()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1B7C78DDC();
}

uint64_t sub_1B7C7B890()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1B7C78DDC();
}

uint64_t sub_1B7C7B8B8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1B7C78DDC();
}

uint64_t sub_1B7C7B8E0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1B7C78ADC();
}

uint64_t sub_1B7C7B900()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1B7C78DDC();
}

uint64_t sub_1B7C7B928()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1B7C786D4();
}

uint64_t sub_1B7C7B950()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1B7C786D4();
}

uint64_t sub_1B7C7B978()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1B7C78324();
}

uint64_t sub_1B7C7B998()
{
  sub_1B7CFF7C0();
  sub_1B7CFEB10();

  return sub_1B7CFF800();
}

unint64_t sub_1B7C7BAE8()
{
  v1 = *(v0 + 16);
  if (v1 > 4)
  {
    v6 = 0xD000000000000017;
    v7 = 0xD00000000000001DLL;
    if (v1 == 8)
    {
      v7 = 0xD000000000000010;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000011;
    if (v1 != 5)
    {
      v8 = 0xD000000000000010;
    }

    if (*(v0 + 16) <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6E776F6E6B6E75;
    v3 = 0x6567617373656DLL;
    v4 = 0x656D686361747461;
    if (v1 != 3)
    {
      v4 = 0x656C646E6168;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*(v0 + 16))
    {
      v2 = 1952540771;
    }

    if (*(v0 + 16) <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1B7C7BC30()
{
  swift_beginAccess();
  v1 = v0[3];
  result = swift_beginAccess();
  v3 = v0[4];
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_5;
  }

  swift_beginAccess();
  v6 = v0[5];
  result = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B7C7BD04(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
}

uint64_t sub_1B7C7BD64()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t sub_1B7C7BD9C()
{
  result = swift_beginAccess();
  v2 = v0[3];
  if (v2 >= 1)
  {
    result = swift_beginAccess();
    v3 = v0[4];
    v4 = v2 - v3;
    if (__OFSUB__(v2, v3))
    {
      __break(1u);
    }

    else
    {
      result = swift_beginAccess();
      if (!__OFSUB__(v4, v0[5]))
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B7C7BE54()
{
  v1 = *v0;
  v2 = 0x79654B656C626174;
  v3 = 0x64656E616870726FLL;
  v4 = 0xD00000000000001CLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746E756F43776F72;
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

uint64_t sub_1B7C7BF08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7C80E54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7C7BF30(uint64_t a1)
{
  v2 = sub_1B7C7C2A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7C7BF6C(uint64_t a1)
{
  v2 = sub_1B7C7C2A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DatabaseTableInspectionReport.deinit()
{
  v1 = *(v0 + 48);

  return v0;
}

uint64_t DatabaseTableInspectionReport.__deallocating_deinit()
{
  v1 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_1B7C7C000(void *a1)
{
  v3 = v1;
  v5 = sub_1B7C107FC(&qword_1EBA52EB0, &qword_1B7D0FA40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C7C2A0();
  sub_1B7CFF830();
  v20 = *(v3 + 16);
  v19 = 0;
  sub_1B7C7C2F4();
  sub_1B7CFF500();
  if (!v2)
  {
    swift_beginAccess();
    v11 = *(v3 + 24);
    v19 = 1;
    sub_1B7CFF4F0();
    swift_beginAccess();
    v12 = *(v3 + 32);
    v18 = 2;
    sub_1B7CFF4F0();
    swift_beginAccess();
    v13 = *(v3 + 40);
    v17 = 3;
    sub_1B7CFF4F0();
    swift_beginAccess();
    v16 = *(v3 + 48);
    v15[7] = 4;
    sub_1B7C107FC(&qword_1EBA52EC8, &qword_1B7D0FA48);
    sub_1B7C7C714(&qword_1EBA52ED0, sub_1B7C7C348);
    sub_1B7CFF500();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1B7C7C2A0()
{
  result = qword_1EBA52EB8;
  if (!qword_1EBA52EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52EB8);
  }

  return result;
}

unint64_t sub_1B7C7C2F4()
{
  result = qword_1EBA52EC0;
  if (!qword_1EBA52EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52EC0);
  }

  return result;
}

unint64_t sub_1B7C7C348()
{
  result = qword_1EBA52ED8;
  if (!qword_1EBA52ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52ED8);
  }

  return result;
}

uint64_t DatabaseTableInspectionReport.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  DatabaseTableInspectionReport.init(from:)(a1);
  return v2;
}

uint64_t DatabaseTableInspectionReport.init(from:)(uint64_t *a1)
{
  v4 = sub_1B7C107FC(&qword_1EBA52EE0, &qword_1B7D0FA50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C7C2A0();
  sub_1B7CFF820();
  if (v2)
  {
    type metadata accessor for DatabaseTableInspectionReport();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = 0;
    sub_1B7C7C6C0();
    sub_1B7CFF440();
    *(v1 + 16) = v17;
    v15 = 1;
    *(v1 + 24) = sub_1B7CFF430();
    v14 = 2;
    *(v1 + 32) = sub_1B7CFF430();
    v13 = 3;
    *(v1 + 40) = sub_1B7CFF430();
    sub_1B7C107FC(&qword_1EBA52EC8, &qword_1B7D0FA48);
    v12 = 4;
    sub_1B7C7C714(&qword_1EBA52EF0, sub_1B7C7C78C);
    sub_1B7CFF440();
    (*(v5 + 8))(v8, v4);
    *(v1 + 48) = v11[1];
  }

  sub_1B7AE9168(a1);
  return v1;
}

unint64_t sub_1B7C7C6C0()
{
  result = qword_1EBA52EE8;
  if (!qword_1EBA52EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52EE8);
  }

  return result;
}

uint64_t sub_1B7C7C714(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1B7C1091C(&qword_1EBA52EC8, &qword_1B7D0FA48);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7C7C78C()
{
  result = qword_1EBA52EF8;
  if (!qword_1EBA52EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52EF8);
  }

  return result;
}

uint64_t sub_1B7C7C7E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for DatabaseTableInspectionReport();
  v5 = swift_allocObject();
  result = DatabaseTableInspectionReport.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t DatabaseTableInspectionReport.description.getter()
{
  v1 = v0;
  sub_1B7CFF210();
  v2 = *v0;
  v3 = sub_1B7CFF8D0();
  MEMORY[0x1B8CADCA0](v3);

  MEMORY[0x1B8CADCA0](0x3A656C626174203ALL, 0xE900000000000020);
  v4 = sub_1B7C7BAE8();
  MEMORY[0x1B8CADCA0](v4);

  MEMORY[0x1B8CADCA0](0x756F43776F72202CLL, 0xEC000000203A746ELL);
  swift_beginAccess();
  v25 = v0[3];
  v5 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v5);

  MEMORY[0x1B8CADCA0](0xD000000000000011, 0x80000001B7D561E0);
  v6 = v0[3];
  result = swift_beginAccess();
  v8 = v1[4];
  v9 = __OFSUB__(v6, v8);
  v10 = v6 - v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  result = swift_beginAccess();
  if (__OFSUB__(v10, v1[5]))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v11);

  MEMORY[0x1B8CADCA0](0xD000000000000011, 0x80000001B7D56200);
  v23 = v1[4];
  v12 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v12);

  MEMORY[0x1B8CADCA0](0xD000000000000020, 0x80000001B7D56220);
  v24 = v1[5];
  v13 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v13);

  result = MEMORY[0x1B8CADCA0](0xD000000000000016, 0x80000001B7D56250);
  v14 = v1[3];
  if (v14 < 1)
  {
LABEL_6:
    v17 = sub_1B7CFEDE0();
    MEMORY[0x1B8CADCA0](v17);

    MEMORY[0x1B8CADCA0](0xD000000000000015, 0x80000001B7D56270);
    swift_beginAccess();
    v18 = v1[6];

    v20 = MEMORY[0x1B8CADE30](v19, &type metadata for DatabaseTableInspectionReport.DetectedProblem);
    v22 = v21;

    MEMORY[0x1B8CADCA0](v20, v22);

    return 0;
  }

  v15 = v1[4];
  v9 = __OFSUB__(v14, v15);
  v16 = v14 - v15;
  if (v9)
  {
    goto LABEL_9;
  }

  if (!__OFSUB__(v16, v1[5]))
  {
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1B7C7CBE8()
{
  if (*v0)
  {
    result = 0x736D656C626F7270;
  }

  else
  {
    result = 0x4449776F72;
  }

  *v0;
  return result;
}

uint64_t sub_1B7C7CC20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449776F72 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B7CFF590() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736D656C626F7270 && a2 == 0xE800000000000000)
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

uint64_t sub_1B7C7CCF8(uint64_t a1)
{
  v2 = sub_1B7C7CF30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7C7CD34(uint64_t a1)
{
  v2 = sub_1B7C7CF30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DatabaseTableInspectionReport.DetectedProblem.encode(to:)(void *a1)
{
  v4 = sub_1B7C107FC(&qword_1EBA52F00, &unk_1B7D0FA58);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[0] = v1[1];
  v10 = a1[4];
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C7CF30();
  sub_1B7CFF830();
  v14 = 0;
  sub_1B7CFF520();
  if (!v2)
  {
    v12[1] = v12[0];
    v13 = 1;
    sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
    sub_1B7C7D178(&qword_1EBA52F10);
    sub_1B7CFF500();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1B7C7CF30()
{
  result = qword_1EBA52F08;
  if (!qword_1EBA52F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52F08);
  }

  return result;
}

uint64_t DatabaseTableInspectionReport.DetectedProblem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1B7C107FC(&qword_1EBA52F18, &qword_1B7D0FA68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C7CF30();
  sub_1B7CFF820();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_1B7CFF460();
    sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
    v15 = 1;
    sub_1B7C7D178(&qword_1EBA52F20);
    sub_1B7CFF440();
    (*(v6 + 8))(v9, v5);
    v12 = v14[1];
    *a2 = v11;
    a2[1] = v12;
  }

  return sub_1B7AE9168(a1);
}

uint64_t sub_1B7C7D178(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B7C1091C(&unk_1EBA525A0, "D\r\b");
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

IMDPersistence::DatabaseTableInspectionReport::TableKey_optional __swiftcall DatabaseTableInspectionReport.TableKey.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 10;
  if (rawValue < 0xA)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1B7C7D238()
{
  v0 = sub_1B7C245B8(&unk_1F2FA20E0);
  sub_1B7C107FC(&qword_1EBA52FA0, &qword_1B7D0FFB8);
  result = swift_arrayDestroy();
  off_1EBA52EA8 = v0;
  return result;
}

uint64_t static DatabaseTableInspectionReport.TableKey.nameMap.getter()
{
  if (qword_1EBA51600 != -1)
  {
    swift_once();
  }
}

IMDPersistence::DatabaseTableInspectionReport::TableKey_optional __swiftcall DatabaseTableInspectionReport.TableKey.init(withName:)(Swift::String withName)
{
  v2 = v1;
  if (qword_1EBA51600 != -1)
  {
    countAndFlagsBits = withName._countAndFlagsBits;
    object = withName._object;
    swift_once();
    withName._countAndFlagsBits = countAndFlagsBits;
    withName._object = object;
  }

  v3 = off_1EBA52EA8;
  if (!*(off_1EBA52EA8 + 2))
  {

    goto LABEL_7;
  }

  v4 = sub_1B7AE11D0(withName._countAndFlagsBits, withName._object);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_7:
    v8 = 10;
    goto LABEL_8;
  }

  result.value = DatabaseTableInspectionReport.TableKey.init(rawValue:)(*(v3[7] + v4)).value;
  v8 = v11;
LABEL_8:
  *v2 = v8;
  return result;
}

unint64_t sub_1B7C7D474()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0xD000000000000017;
    v7 = 0xD00000000000001DLL;
    if (v1 == 8)
    {
      v7 = 0xD000000000000010;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000011;
    if (v1 != 5)
    {
      v8 = 0xD000000000000010;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6E776F6E6B6E75;
    v3 = 0x6567617373656DLL;
    v4 = 0x656D686361747461;
    if (v1 != 3)
    {
      v4 = 0x656C646E6168;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 1952540771;
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

uint64_t sub_1B7C7D5F0()
{
  *v0;
  *v0;
  *v0;
  sub_1B7CFEB10();
}

uint64_t sub_1B7C7D710@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B7C812B4();
  *a2 = result;
  return result;
}

void sub_1B7C7D740(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x6D614E656C626174;
  v5 = 0x64656E616870726FLL;
  v6 = 0xED0000746E756F43;
  v7 = 0x80000001B7D4E310;
  v8 = 0xD00000000000001CLL;
  if (v2 != 4)
  {
    v8 = 0xD000000000000012;
    v7 = 0x80000001B7D4E330;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x746E756F43776F72;
  if (v2 != 1)
  {
    v10 = 0x6465746E65726170;
    v9 = 0xED0000746E756F43;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1B7C7D828()
{
  v1 = v0;
  sub_1B7C107FC(&qword_1EBA52F80, &qword_1B7D0FFA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7D0FA30;
  *(inited + 32) = 0;
  *(inited + 40) = sub_1B7C7BAE8();
  *(inited + 48) = v3;
  *(inited + 56) = 1;
  swift_beginAccess();
  v24 = v0[3];
  *(inited + 64) = sub_1B7CFF570();
  *(inited + 72) = v4;
  *(inited + 80) = 2;
  v5 = v0[3];
  result = swift_beginAccess();
  v7 = v1[4];
  v8 = __OFSUB__(v5, v7);
  v9 = v5 - v7;
  if (v8)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = swift_beginAccess();
  if (__OFSUB__(v9, v1[5]))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(inited + 88) = sub_1B7CFF570();
  *(inited + 96) = v10;
  *(inited + 104) = 3;
  v22 = v1[4];
  *(inited + 112) = sub_1B7CFF570();
  *(inited + 120) = v11;
  *(inited + 128) = 4;
  v23 = v1[5];
  *(inited + 136) = sub_1B7CFF570();
  *(inited + 144) = v12;
  *(inited + 152) = 5;
  sub_1B7C107FC(&qword_1EBA52F88, &qword_1B7D0FFA8);
  result = swift_allocObject();
  v13 = result;
  *(result + 16) = xmmword_1B7D0A7B0;
  v14 = v1[3];
  if (v14 < 1)
  {
    v19 = 0.0;
    goto LABEL_8;
  }

  v15 = v1[4];
  v8 = __OFSUB__(v14, v15);
  v16 = v14 - v15;
  if (v8)
  {
    goto LABEL_11;
  }

  v17 = v1[5];
  v8 = __OFSUB__(v16, v17);
  v18 = v16 - v17;
  if (!v8)
  {
    v19 = 100.0 - v18 / v14 * 100.0;
LABEL_8:
    *(result + 56) = MEMORY[0x1E69E7DE0];
    *(result + 64) = sub_1B7C810B8();
    *(v13 + 32) = v19;
    v20 = sub_1B7CFEA80();
    MEMORY[0x1B8CADCA0](v20);

    MEMORY[0x1B8CADCA0](37, 0xE100000000000000);
    *(inited + 160) = 0;
    *(inited + 168) = 0xE000000000000000;
    v21 = sub_1B7C246B4(inited);
    swift_setDeallocating();
    sub_1B7C107FC(&qword_1EBA52F98, &qword_1B7D0FFB0);
    swift_arrayDestroy();
    return v21;
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1B7C7DAD4(unint64_t result, uint64_t *a2)
{
  v2 = *result;
  if (!*(*result + 16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = *a2;
  result = sub_1B7C400B4(0);
  if ((v4 & 1) == 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!*(v3 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = (*(v2 + 56) + 16 * result);
  v7 = *v5;
  v6 = v5[1];

  result = sub_1B7C400B4(0);
  if ((v8 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v9 = (*(v3 + 56) + 16 * result);
  if (v7 == *v9 && v6 == v9[1])
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_1B7CFF590();
  }

  return v11 & 1;
}

unint64_t sub_1B7C7DBA4()
{
  result = qword_1EBA52F28;
  if (!qword_1EBA52F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52F28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DatabaseTableInspectionReport.TableKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DatabaseTableInspectionReport.TableKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B7C7E014()
{
  result = qword_1EBA52F40;
  if (!qword_1EBA52F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52F40);
  }

  return result;
}

unint64_t sub_1B7C7E06C()
{
  result = qword_1EBA52F48;
  if (!qword_1EBA52F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52F48);
  }

  return result;
}

unint64_t sub_1B7C7E0C4()
{
  result = qword_1EBA52F50;
  if (!qword_1EBA52F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52F50);
  }

  return result;
}

unint64_t sub_1B7C7E11C()
{
  result = qword_1EBA52F58;
  if (!qword_1EBA52F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52F58);
  }

  return result;
}

unint64_t sub_1B7C7E174()
{
  result = qword_1EBA52F60;
  if (!qword_1EBA52F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52F60);
  }

  return result;
}

unint64_t sub_1B7C7E1CC()
{
  result = qword_1EBA52F68;
  if (!qword_1EBA52F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52F68);
  }

  return result;
}

int64_t sub_1B7C7E220(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B7CC9FEC(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1B7C7E28C(v5);
  *a1 = v2;
  return result;
}

int64_t sub_1B7C7E28C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B7CFF550();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1B7C107FC(&qword_1EBA52538, &qword_1B7D0FF90);
        v5 = sub_1B7CFED20();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1B7C7E50C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1B7C7E394(0, v2, 1, a1);
  }

  return result;
}

unint64_t sub_1B7C7E394(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
LABEL_6:
    v8 = *(v5 + 8 * v4);
    v21 = v7;
    v22 = v6;
    while (*(v8 + 16))
    {
      v9 = *v6;

      result = sub_1B7C400B4(0);
      if ((v10 & 1) == 0)
      {
        goto LABEL_21;
      }

      if (!*(v9 + 16))
      {
        goto LABEL_22;
      }

      v11 = (*(v8 + 56) + 16 * result);
      v13 = *v11;
      v12 = v11[1];

      result = sub_1B7C400B4(0);
      if ((v14 & 1) == 0)
      {
        goto LABEL_23;
      }

      v15 = (*(v9 + 56) + 16 * result);
      if (v13 == *v15 && v12 == v15[1])
      {

LABEL_5:
        ++v4;
        v6 = v22 + 1;
        v7 = v21 - 1;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v17 = sub_1B7CFF590();

      if (v17)
      {
        if (!v5)
        {
          goto LABEL_24;
        }

        v18 = *v6;
        v8 = v6[1];
        *v6 = v8;
        v6[1] = v18;
        --v6;
        if (!__CFADD__(v7++, 1))
        {
          continue;
        }
      }

      goto LABEL_5;
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
  }

  return result;
}

uint64_t sub_1B7C7E50C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v103 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_109:
    v7 = *v103;
    if (!*v103)
    {
      goto LABEL_156;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_111;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v9 = (v7 + 1);
  if ((v7 + 1) < v6)
  {
    v10 = *a3;
    v11 = *(*a3 + 8 * v9);
    v110 = *(*a3 + 8 * v7);
    v111 = v11;

    v12 = v5;
    v107 = sub_1B7C7DAD4(&v111, &v110);
    if (v5)
    {
    }

    v9 = (v7 + 2);
    v101 = v7;
    if ((v7 + 2) < v6)
    {
      v13 = v10 + 8 * v7 + 16;
      do
      {
        v5 = *v13;
        if (!*(*v13 + 16))
        {
          goto LABEL_128;
        }

        v15 = *(v13 - 8);
        v16 = *v13;

        v17 = sub_1B7C400B4(0);
        if ((v18 & 1) == 0)
        {
          goto LABEL_129;
        }

        if (!*(v15 + 16))
        {
          goto LABEL_130;
        }

        v19 = *(v5 + 56) + 16 * v17;
        v7 = *v19;
        v20 = *(v19 + 8);

        v21 = sub_1B7C400B4(0);
        if ((v22 & 1) == 0)
        {
          goto LABEL_131;
        }

        v23 = (*(v15 + 56) + 16 * v21);
        if (v7 == *v23 && v20 == v23[1])
        {

          if (v107)
          {
            v5 = v12;
            v7 = v101;
            goto LABEL_24;
          }
        }

        else
        {
          v14 = sub_1B7CFF590();

          if ((v107 ^ v14))
          {
            goto LABEL_22;
          }
        }

        v13 += 8;
        ++v9;
      }

      while (v6 != v9);
      v9 = v6;
LABEL_22:
      v5 = v12;
    }

    v7 = v101;
    if (v107)
    {
LABEL_24:
      if (v9 < v7)
      {
        goto LABEL_147;
      }

      if (v7 < v9)
      {
        v25 = 8 * v9 - 8;
        v26 = 8 * v7;
        v27 = v9;
        v28 = v7;
        do
        {
          if (v28 != --v27)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_153;
            }

            v29 = *(v30 + v26);
            *(v30 + v26) = *(v30 + v25);
            *(v30 + v25) = v29;
          }

          ++v28;
          v25 -= 8;
          v26 += 8;
        }

        while (v28 < v27);
      }
    }
  }

  v31 = a3[1];
  if (v9 >= v31)
  {
    goto LABEL_58;
  }

  if (__OFSUB__(v9, v7))
  {
    goto LABEL_146;
  }

  if (v9 - v7 >= a4)
  {
    goto LABEL_58;
  }

  v32 = &v7[a4];
  if (__OFADD__(v7, a4))
  {
    goto LABEL_148;
  }

  if (v32 >= v31)
  {
    v32 = a3[1];
  }

  if (v32 < v7)
  {
    goto LABEL_149;
  }

  if (v9 == v32)
  {
    goto LABEL_58;
  }

  v99 = v5;
  v5 = *a3;
  v33 = (*a3 + 8 * v9 - 8);
  v102 = v7;
  v34 = &v7[-v9];
  v104 = v32;
LABEL_43:
  v106 = v33;
  v108 = v9;
  v35 = *(v5 + 8 * v9);
  v105 = v34;
  while (*(v35 + 16))
  {
    v36 = *v33;

    v37 = sub_1B7C400B4(0);
    if ((v38 & 1) == 0)
    {
      goto LABEL_122;
    }

    if (!*(v36 + 16))
    {
      goto LABEL_123;
    }

    v39 = *(v35 + 56) + 16 * v37;
    v7 = *v39;
    v40 = *(v39 + 8);

    v41 = sub_1B7C400B4(0);
    if ((v42 & 1) == 0)
    {
      goto LABEL_124;
    }

    v43 = (*(v36 + 56) + 16 * v41);
    if (v7 == *v43 && v40 == v43[1])
    {

LABEL_42:
      v9 = v108 + 1;
      v33 = v106 + 1;
      v34 = v105 - 1;
      if ((v108 + 1) != v104)
      {
        goto LABEL_43;
      }

      v9 = v104;
      v5 = v99;
      v7 = v102;
LABEL_58:
      if (v9 < v7)
      {
        goto LABEL_145;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B7CA1D30(0, *(v8 + 2) + 1, 1, v8);
        v8 = result;
      }

      v49 = *(v8 + 2);
      v48 = *(v8 + 3);
      v50 = v49 + 1;
      if (v49 >= v48 >> 1)
      {
        result = sub_1B7CA1D30((v48 > 1), v49 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 2) = v50;
      v51 = &v8[16 * v49];
      *(v51 + 4) = v7;
      *(v51 + 5) = v9;
      v7 = v9;
      v52 = *v103;
      if (!*v103)
      {
        goto LABEL_155;
      }

      if (v49)
      {
        while (2)
        {
          v53 = v50 - 1;
          if (v50 >= 4)
          {
            v58 = &v8[16 * v50 + 32];
            v59 = *(v58 - 64);
            v60 = *(v58 - 56);
            v64 = __OFSUB__(v60, v59);
            v61 = v60 - v59;
            if (v64)
            {
              goto LABEL_132;
            }

            v63 = *(v58 - 48);
            v62 = *(v58 - 40);
            v64 = __OFSUB__(v62, v63);
            v56 = v62 - v63;
            v57 = v64;
            if (v64)
            {
              goto LABEL_133;
            }

            v65 = &v8[16 * v50];
            v67 = *v65;
            v66 = *(v65 + 1);
            v64 = __OFSUB__(v66, v67);
            v68 = v66 - v67;
            if (v64)
            {
              goto LABEL_135;
            }

            v64 = __OFADD__(v56, v68);
            v69 = v56 + v68;
            if (v64)
            {
              goto LABEL_138;
            }

            if (v69 >= v61)
            {
              v87 = &v8[16 * v53 + 32];
              v89 = *v87;
              v88 = *(v87 + 1);
              v64 = __OFSUB__(v88, v89);
              v90 = v88 - v89;
              if (v64)
              {
                goto LABEL_142;
              }

              if (v56 < v90)
              {
                v53 = v50 - 2;
              }
            }

            else
            {
LABEL_78:
              if (v57)
              {
                goto LABEL_134;
              }

              v70 = &v8[16 * v50];
              v72 = *v70;
              v71 = *(v70 + 1);
              v73 = __OFSUB__(v71, v72);
              v74 = v71 - v72;
              v75 = v73;
              if (v73)
              {
                goto LABEL_137;
              }

              v76 = &v8[16 * v53 + 32];
              v78 = *v76;
              v77 = *(v76 + 1);
              v64 = __OFSUB__(v77, v78);
              v79 = v77 - v78;
              if (v64)
              {
                goto LABEL_140;
              }

              if (__OFADD__(v74, v79))
              {
                goto LABEL_141;
              }

              if (v74 + v79 < v56)
              {
                goto LABEL_92;
              }

              if (v56 < v79)
              {
                v53 = v50 - 2;
              }
            }
          }

          else
          {
            if (v50 == 3)
            {
              v54 = *(v8 + 4);
              v55 = *(v8 + 5);
              v64 = __OFSUB__(v55, v54);
              v56 = v55 - v54;
              v57 = v64;
              goto LABEL_78;
            }

            v80 = &v8[16 * v50];
            v82 = *v80;
            v81 = *(v80 + 1);
            v64 = __OFSUB__(v81, v82);
            v74 = v81 - v82;
            v75 = v64;
LABEL_92:
            if (v75)
            {
              goto LABEL_136;
            }

            v83 = &v8[16 * v53];
            v85 = *(v83 + 4);
            v84 = *(v83 + 5);
            v64 = __OFSUB__(v84, v85);
            v86 = v84 - v85;
            if (v64)
            {
              goto LABEL_139;
            }

            if (v86 < v74)
            {
              break;
            }
          }

          v91 = v53 - 1;
          if (v53 - 1 >= v50)
          {
            goto LABEL_125;
          }

          if (!*a3)
          {
            goto LABEL_152;
          }

          v92 = *&v8[16 * v91 + 32];
          v93 = *&v8[16 * v53 + 40];
          sub_1B7C7EC9C(*a3 + 8 * v92, (*a3 + 8 * *&v8[16 * v53 + 32]), (*a3 + 8 * v93), v52);
          if (v5)
          {
          }

          if (v93 < v92)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1B7C7F0FC(v8);
          }

          if (v91 >= *(v8 + 2))
          {
            goto LABEL_127;
          }

          v94 = &v8[16 * v91];
          *(v94 + 4) = v92;
          *(v94 + 5) = v93;
          v112 = v8;
          result = sub_1B7C7F070(v53);
          v8 = v112;
          v50 = *(v112 + 2);
          if (v50 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_109;
      }

      goto LABEL_4;
    }

    v45 = sub_1B7CFF590();

    if ((v45 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v5)
    {
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
      goto LABEL_154;
    }

    v46 = *v33;
    v35 = v33[1];
    *v33 = v35;
    v33[1] = v46;
    --v33;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
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
  result = sub_1B7C7F0FC(v8);
  v8 = result;
LABEL_111:
  v112 = v8;
  v95 = *(v8 + 2);
  if (v95 < 2)
  {
  }

  while (*a3)
  {
    v96 = *&v8[16 * v95];
    v97 = *&v8[16 * v95 + 24];
    sub_1B7C7EC9C(*a3 + 8 * v96, (*a3 + 8 * *&v8[16 * v95 + 16]), (*a3 + 8 * v97), v7);
    if (v5)
    {
    }

    if (v97 < v96)
    {
      goto LABEL_143;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1B7C7F0FC(v8);
    }

    if (v95 - 2 >= *(v8 + 2))
    {
      goto LABEL_144;
    }

    v98 = &v8[16 * v95];
    *v98 = v96;
    *(v98 + 1) = v97;
    v112 = v8;
    result = sub_1B7C7F070(v95 - 1);
    v8 = v112;
    v95 = *(v112 + 2);
    if (v95 <= 1)
    {
    }
  }

LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
  return result;
}

uint64_t sub_1B7C7EC9C(uint64_t __dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = &__src[-__dst];
  v8 = &__src[-__dst + 7];
  if (&__src[-__dst] >= 0)
  {
    v8 = &__src[-__dst];
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    if (a4 != __dst || __dst + 8 * v9 <= a4)
    {
      __dst = memmove(a4, __dst, 8 * v9);
    }

    v44 = &v4[8 * v9];
    if (v7 >= 8 && __src < v5)
    {
      v14 = __src;
      while (1)
      {
        v15 = *v14;
        if (!*(*v14 + 16))
        {
          __break(1u);
          goto LABEL_62;
        }

        v16 = *v4;
        v17 = *v14;

        __dst = sub_1B7C400B4(0);
        if ((v18 & 1) == 0)
        {
          goto LABEL_63;
        }

        if (!*(v16 + 16))
        {
          goto LABEL_66;
        }

        v19 = (*(v15 + 56) + 16 * __dst);
        v20 = *v19;
        v21 = v19[1];

        __dst = sub_1B7C400B4(0);
        if ((v22 & 1) == 0)
        {
          goto LABEL_68;
        }

        v23 = (*(v16 + 56) + 16 * __dst);
        v24 = v20 == *v23 && v21 == v23[1];
        if (v24)
        {
          break;
        }

        v25 = sub_1B7CFF590();

        if ((v25 & 1) == 0)
        {
          goto LABEL_25;
        }

        v26 = v14;
        v24 = v6 == v14;
        v14 += 8;
        if (!v24)
        {
          goto LABEL_26;
        }

LABEL_27:
        v6 += 8;
        if (v4 >= v44 || v14 >= v5)
        {
          goto LABEL_29;
        }
      }

LABEL_25:
      v26 = v4;
      v24 = v6 == v4;
      v4 += 8;
      if (v24)
      {
        goto LABEL_27;
      }

LABEL_26:
      *v6 = *v26;
      goto LABEL_27;
    }

LABEL_29:
    v27 = v6;
    goto LABEL_57;
  }

  v27 = __src;
  if (a4 != __src || &__src[8 * v12] <= a4)
  {
    __dst = memmove(a4, __src, 8 * v12);
  }

  v44 = &v4[8 * v12];
  if (v10 < 8 || v27 <= v6)
  {
LABEL_57:
    if (v27 != v4 || v27 >= &v4[(v44 - v4 + (v44 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v27, v4, 8 * ((v44 - v4) / 8));
    }

    return 1;
  }

  v43 = v4;
LABEL_36:
  v42 = v27;
  v28 = v27 - 8;
  v5 -= 8;
  v29 = v44;
  while (1)
  {
    v31 = *(v29 - 1);
    v29 -= 8;
    v30 = v31;
    if (!*(v31 + 16))
    {
      break;
    }

    v32 = *v28;

    __dst = sub_1B7C400B4(0);
    if ((v33 & 1) == 0)
    {
      goto LABEL_64;
    }

    if (!*(v32 + 16))
    {
      goto LABEL_65;
    }

    v34 = (*(v30 + 56) + 16 * __dst);
    v35 = *v34;
    v36 = v34[1];

    __dst = sub_1B7C400B4(0);
    if ((v37 & 1) == 0)
    {
      goto LABEL_67;
    }

    v38 = (*(v32 + 56) + 16 * __dst);
    if (v35 == *v38 && v36 == v38[1])
    {
    }

    else
    {
      v40 = sub_1B7CFF590();

      if (v40)
      {
        v41 = v28;
        if (v5 + 8 != v42)
        {
          *v5 = *v28;
        }

        v4 = v43;
        if (v44 <= v43 || (v27 = v41, v41 <= v6))
        {
          v27 = v41;
          goto LABEL_57;
        }

        goto LABEL_36;
      }
    }

    if (v5 + 8 != v44)
    {
      *v5 = *v29;
    }

    v5 -= 8;
    v44 = v29;
    if (v29 <= v43)
    {
      v44 = v29;
      v27 = v42;
      v4 = v43;
      goto LABEL_57;
    }
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  return __dst;
}

uint64_t sub_1B7C7F070(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B7C7F0FC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1B7C7F110(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B7C107FC(&qword_1EBA52F78, &qword_1B7D0FF98);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1B7C7F214(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 > 4u)
  {

    return 0;
  }

  v8 = sub_1B7CFF590();

  if (v8)
  {
    return 0;
  }

  if (!*(a4 + 16))
  {
    return 0;
  }

  v9 = sub_1B7C400B4(a1);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = *(*(a4 + 56) + 8 * v9);
  if (a1 <= 1u)
  {
    v16 = *(*(a4 + 56) + 8 * v9);
  }

  else if (a1 == 2)
  {
    v16 = *(*(a4 + 56) + 8 * v9);
  }

  else
  {
    if (a1 != 3)
    {

      goto LABEL_18;
    }

    v16 = *(*(a4 + 56) + 8 * v9);
  }

  v13 = sub_1B7CFF590();

  if (v13)
  {
LABEL_18:

    return a2;
  }

  if (a1)
  {
    v14 = sub_1B7CFF590();

    if (v14)
    {
      goto LABEL_21;
    }

    if (a1 == 3)
    {
    }

    else
    {
      v15 = sub_1B7CFF590();

      if ((v15 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    if (__OFADD__(v16, 9))
    {
      goto LABEL_29;
    }

LABEL_27:
    sub_1B7C4BFF0();
    return sub_1B7CFF080();
  }

LABEL_21:
  result = sub_1B7CFEB20();
  if (!__OFSUB__(v16, result))
  {
    sub_1B7C4BFF0();
    v17 = sub_1B7CFF080();
    MEMORY[0x1B8CADCA0](a2, a3);
    return v17;
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_1B7C7F6C0(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 4u)
  {

    return 0;
  }

  v6 = sub_1B7CFF590();

  if (v6)
  {
    return 0;
  }

  if (!*(a3 + 16))
  {
    return 0;
  }

  v7 = sub_1B7C400B4(a1);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  if (!*(a2 + 16))
  {
    return 0;
  }

  v9 = *(*(a3 + 56) + 8 * v7);
  v10 = sub_1B7C400B4(a1);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = (*(a2 + 56) + 16 * v10);
  v13 = v12[1];
  v26 = *v12;
  if (a1 >= 4u)
  {

    return v26;
  }

  v15 = sub_1B7CFF590();

  if (v15)
  {
    return v26;
  }

  if (!a1)
  {

LABEL_18:
    result = sub_1B7CFEB20();
    if (!__OFSUB__(v9, result))
    {
      sub_1B7C4BFF0();
      v27 = sub_1B7CFF080();
      MEMORY[0x1B8CADCA0](v26, v13);
LABEL_26:

      return v27;
    }

    __break(1u);
    goto LABEL_29;
  }

  v16 = sub_1B7CFF590();

  if (v16)
  {
    goto LABEL_18;
  }

  sub_1B7C4BFF0();
  v17 = sub_1B7CFF080();

  v27 = v17;
  if (a1 == 3)
  {
  }

  else
  {
    v18 = sub_1B7CFF590();

    if ((v18 & 1) == 0)
    {
      return v17;
    }
  }

  if (*(a2 + 16))
  {
    result = sub_1B7C400B4(5u);
    if (v19)
    {
      v20 = (*(a2 + 56) + 16 * result);
      v21 = *v20;
      v22 = v20[1];

      MEMORY[0x1B8CADCA0](v21, v22);

      MEMORY[0x1B8CADCA0](41, 0xE100000000000000);
      v23 = sub_1B7CFF080();
      v25 = v24;

      MEMORY[0x1B8CADCA0](v23, v25);

      MEMORY[0x1B8CADCA0](32, 0xE100000000000000);
      goto LABEL_26;
    }

    goto LABEL_30;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1B7C7FC94(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = *(a3 + 16);
  if (v53)
  {
    result = sub_1B7C219E4(result, a2);
    v6 = *(a4 + 24);
    v7 = __OFADD__(v6, 1);
    v8 = v6 + 1;
    if (v7)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
    }

    else
    {
      v9 = 0;
      v10 = 0;
      *(a4 + 24) = v8;
      v54 = a3 + 32;
      while (1)
      {
        v11 = *(v54 + 16 * v9);
        v12 = *(v54 + 16 * v9 + 8);
        v60 = 0x203A4449574F52;
        v61 = 0xE700000000000000;
        v62 = v11;

        v13 = sub_1B7CFF570();
        MEMORY[0x1B8CADCA0](v13);

        if (*(a4 + 24) + 0x4000000000000000 < 0)
        {
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v55 = v9;
        v15 = v60;
        v14 = v61;
        v60 = sub_1B7CFEC10();
        v61 = v16;
        MEMORY[0x1B8CADCA0](v15, v14);
        v17 = v60;
        v18 = v61;
        swift_beginAccess();
        v19 = *(a4 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a4 + 16) = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v19 = sub_1B7AF182C(0, *(v19 + 2) + 1, 1, v19);
          *(a4 + 16) = v19;
        }

        v22 = *(v19 + 2);
        v21 = *(v19 + 3);
        if (v22 >= v21 >> 1)
        {
          v19 = sub_1B7AF182C((v21 > 1), v22 + 1, 1, v19);
        }

        *(v19 + 2) = v22 + 1;
        v23 = &v19[16 * v22];
        *(v23 + 4) = v17;
        *(v23 + 5) = v18;
        *(a4 + 16) = v19;
        swift_endAccess();

        v24 = *(a4 + 24);
        v7 = __OFADD__(v24, 1);
        v25 = v24 + 1;
        if (v7)
        {
          goto LABEL_32;
        }

        *(a4 + 24) = v25;
        v58 = *(v12 + 16);
        if (v58)
        {
          break;
        }

LABEL_23:

        v50 = *(a4 + 24);
        v7 = __OFSUB__(v50, 1);
        v41 = v50 - 1;
        if (v7)
        {
          goto LABEL_33;
        }

        v9 = v55 + 1;
        *(a4 + 24) = v41;
        if (v9 == v53)
        {
          goto LABEL_27;
        }
      }

      v26 = 0;
      v56 = v12;
      v57 = v12 + 32;
      while (1)
      {
        if (v26 >= *(v12 + 16))
        {
          __break(1u);
          goto LABEL_31;
        }

        v27 = (v57 + 16 * v26);
        v29 = *v27;
        v28 = v27[1];
        v60 = 10;
        v61 = 0xE100000000000000;
        MEMORY[0x1EEE9AC00](result);
        v52[2] = &v60;

        v31 = sub_1B7CA57D8(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B7C14D3C, v52, v29, v28, v30);
        v59 = v10;
        v32 = *(v31 + 16);
        if (v32)
        {
          break;
        }

LABEL_12:
        ++v26;

        v10 = v59;
        v12 = v56;
        if (v26 == v58)
        {
          goto LABEL_23;
        }
      }

      v33 = (v31 + 56);
      while (1)
      {
        v34 = *(v33 - 3);
        v35 = *(v33 - 2);
        v36 = *(v33 - 1);
        v37 = *v33;

        v38 = MEMORY[0x1B8CADC20](v34, v35, v36, v37);
        v40 = v39;

        v41 = *(a4 + 24);
        if (v41 + 0x4000000000000000 < 0)
        {
          break;
        }

        v60 = sub_1B7CFEC10();
        v61 = v42;
        MEMORY[0x1B8CADCA0](v38, v40);

        v43 = v60;
        v44 = v61;
        swift_beginAccess();
        v45 = *(a4 + 16);
        v46 = swift_isUniquelyReferenced_nonNull_native();
        *(a4 + 16) = v45;
        if ((v46 & 1) == 0)
        {
          v45 = sub_1B7AF182C(0, *(v45 + 2) + 1, 1, v45);
          *(a4 + 16) = v45;
        }

        v48 = *(v45 + 2);
        v47 = *(v45 + 3);
        if (v48 >= v47 >> 1)
        {
          v45 = sub_1B7AF182C((v47 > 1), v48 + 1, 1, v45);
        }

        *(v45 + 2) = v48 + 1;
        v49 = &v45[16 * v48];
        *(v49 + 4) = v43;
        *(v49 + 5) = v44;
        *(a4 + 16) = v45;
        swift_endAccess();
        v33 += 4;
        if (!--v32)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_27:
      v7 = __OFSUB__(v41, 1);
      v51 = v41 - 1;
      if (v7)
      {
        goto LABEL_35;
      }

      *(a4 + 24) = v51;
    }
  }

  return result;
}

unint64_t sub_1B7C800A4(unint64_t result, uint64_t a2)
{
  v132 = result;
  if (result >> 62)
  {
    result = sub_1B7CFF120();
    v128 = result;
    if (!result)
    {
      return result;
    }

    v11 = sub_1B7CFF120();
    if (!v11)
    {
      goto LABEL_16;
    }

    v3 = v11;
  }

  else
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    v128 = v3;
    if (!v3)
    {
      return result;
    }
  }

  v138 = MEMORY[0x1E69E7CC0];
  sub_1B7C31228(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
LABEL_16:
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v4 = 0;
  v5 = v138;
  v6 = v132;
  do
  {
    if ((v132 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B8CAE380](v4);
    }

    else
    {
      v7 = *(v6 + 8 * v4 + 32);
    }

    v8 = sub_1B7C7D828();

    v138 = v5;
    v10 = v5[2];
    v9 = v5[3];
    if (v10 >= v9 >> 1)
    {
      sub_1B7C31228((v9 > 1), v10 + 1, 1);
      v5 = v138;
    }

    ++v4;
    v5[2] = v10 + 1;
    v5[v10 + 4] = v8;
    v6 = v132;
  }

  while (v3 != v4);
LABEL_17:
  v138 = v5;

  sub_1B7C7E220(&v138);

  v12 = v138;
  v13 = sub_1B7C238DC(MEMORY[0x1E69E7CC0]);
  v130 = v12[2];
  v131 = a2;
  v129 = v12;
  if (v130)
  {
    v14 = 0;
    v133 = v12 + 4;
    do
    {
      if (v14 >= v12[2])
      {
        goto LABEL_154;
      }

      v15 = v133[v14];
      v134 = v14 + 1;
      v136 = v13;
      v16 = 1 << *(v15 + 32);
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      else
      {
        v17 = -1;
      }

      v18 = v17 & *(v15 + 64);
      v19 = (v16 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v20 = 0;
      while (v18)
      {
        v21 = v18;
LABEL_31:
        v18 = (v21 - 1) & v21;
        if (*(v15 + 16))
        {
          v23 = *(*(v15 + 48) + (__clz(__rbit64(v21)) | (v20 << 6)));
          v24 = sub_1B7C400B4(v23);
          if (v25)
          {
            v26 = (*(v15 + 56) + 16 * v24);
            v28 = *v26;
            v27 = v26[1];
            v29 = v136[2];

            if (!v29)
            {
              goto LABEL_39;
            }

            sub_1B7C400B4(v23);
            if ((v30 & 1) == 0)
            {
              goto LABEL_39;
            }

            if (!v136[2])
            {
              goto LABEL_150;
            }

            v31 = sub_1B7C400B4(v23);
            if ((v32 & 1) == 0)
            {
              goto LABEL_151;
            }

            v33 = *(v136[7] + 8 * v31);
            if (v33 >= sub_1B7CFEB20())
            {
            }

            else
            {
LABEL_39:
              v34 = sub_1B7CFEB20();

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v138 = v136;
              v36 = sub_1B7C400B4(v23);
              v38 = v136[2];
              v39 = (v37 & 1) == 0;
              v40 = __OFADD__(v38, v39);
              v41 = v38 + v39;
              if (v40)
              {
                goto LABEL_156;
              }

              v42 = v37;
              if (v136[3] >= v41)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v47 = v36;
                  sub_1B7CE8200();
                  v36 = v47;
                }
              }

              else
              {
                sub_1B7CE3CDC(v41, isUniquelyReferenced_nonNull_native);
                v36 = sub_1B7C400B4(v23);
                if ((v42 & 1) != (v43 & 1))
                {
                  goto LABEL_163;
                }
              }

              v44 = v138;
              v136 = v138;
              if (v42)
              {
                *(v138[7] + 8 * v36) = v34;
              }

              else
              {
                v138[(v36 >> 6) + 8] |= 1 << v36;
                *(v44[6] + v36) = v23;
                *(v44[7] + 8 * v36) = v34;
                v45 = v44[2];
                v40 = __OFADD__(v45, 1);
                v46 = v45 + 1;
                if (v40)
                {
                  goto LABEL_158;
                }

                v44[2] = v46;
              }
            }
          }
        }
      }

      while (1)
      {
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
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
          goto LABEL_159;
        }

        if (v22 >= v19)
        {
          break;
        }

        v21 = *(v15 + 64 + 8 * v22);
        ++v20;
        if (v21)
        {
          v20 = v22;
          goto LABEL_31;
        }
      }

      a2 = v131;
      v14 = v134;
      v13 = v136;
      v12 = v129;
    }

    while (v134 != v130);
  }

  sub_1B7C219E4(0xD000000000000019, 0x80000001B7D562F0);
  v48 = *(a2 + 24);
  v40 = __OFADD__(v48, 1);
  v49 = v48 + 1;
  if (v40)
  {
    goto LABEL_157;
  }

  *(a2 + 24) = v49;
  if (v130)
  {
    v50 = 0;
    v51 = 0;
    v127 = v12 + 4;
    do
    {
      if (v51 >= v12[2])
      {
        goto LABEL_152;
      }

      v137 = v127[v51];

      if (!v50)
      {
        v126 = v51;
        v52 = 0;
        v53 = MEMORY[0x1E69E7CC0];
        v54 = MEMORY[0x1E69E7CC0];
        do
        {
          v55 = byte_1F2FA1890[v52 + 32];
          v135 = v53;
          if (v55 > 2)
          {
            if (v55 == 3)
            {
              v56 = 0x64656E616870726FLL;
              v57 = 0xEE00746E756F6320;
            }

            else
            {
              if (v55 == 4)
              {
                v56 = 0xD000000000000020;
              }

              else
              {
                v56 = 0xD000000000000013;
              }

              if (v55 == 4)
              {
                v57 = 0x80000001B7D56350;
              }

              else
              {
                v57 = 0x80000001B7D56310;
              }
            }
          }

          else if (byte_1F2FA1890[v52 + 32])
          {
            if (v55 == 1)
            {
              v56 = 0x6E756F6320776F72;
            }

            else
            {
              v56 = 0x6465746E65726170;
            }

            if (v55 == 1)
            {
              v57 = 0xE900000000000074;
            }

            else
            {
              v57 = 0xEE00746E756F6320;
            }
          }

          else
          {
            v56 = 0x616E20656C626174;
            v57 = 0xEA0000000000656DLL;
          }

          v138 = 0;
          v139 = 0xE000000000000000;
          sub_1B7CFEB20();
          sub_1B7C4BFF0();
          v58 = sub_1B7CFF080();
          v60 = v59;
          v61 = v13;
          v62 = sub_1B7C7F214(v55, v56, v57, v13);
          v64 = v63;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v54 = sub_1B7AF182C(0, *(v54 + 2) + 1, 1, v54);
          }

          v66 = *(v54 + 2);
          v65 = *(v54 + 3);
          if (v66 >= v65 >> 1)
          {
            v54 = sub_1B7AF182C((v65 > 1), v66 + 1, 1, v54);
          }

          *(v54 + 2) = v66 + 1;
          v67 = &v54[16 * v66];
          *(v67 + 4) = v62;
          *(v67 + 5) = v64;
          v13 = v61;
          v68 = sub_1B7C7F214(v55, v58, v60, v61);
          v70 = v69;

          v53 = v135;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v53 = sub_1B7AF182C(0, *(v135 + 2) + 1, 1, v135);
          }

          v72 = *(v53 + 2);
          v71 = *(v53 + 3);
          if (v72 >= v71 >> 1)
          {
            v53 = sub_1B7AF182C((v71 > 1), v72 + 1, 1, v53);
          }

          ++v52;
          *(v53 + 2) = v72 + 1;
          v73 = &v53[16 * v72];
          *(v73 + 4) = v68;
          *(v73 + 5) = v70;
        }

        while (v52 != 6);
        v138 = v54;

        sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
        sub_1B7C81070(&qword_1EDBE3020, &unk_1EBA525A0, "D\r\b");
        v74 = sub_1B7CFEA10();
        v50 = v75;

        a2 = v131;
        sub_1B7C219E4(v74, v50);

        v140 = v53;
        v138 = 0;
        v139 = 0xE000000000000000;
        sub_1B7CFEB20();
        sub_1B7CFF080();
        v76 = sub_1B7CFEA10();
        v78 = v77;

        sub_1B7C219E4(v76, v78);

        v51 = v126;
      }

      v79 = 0;
      ++v51;
      v80 = MEMORY[0x1E69E7CC0];
      do
      {
        v81 = sub_1B7C7F6C0(byte_1F2FA1890[v79 + 32], v137, v13);
        v83 = v82;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = sub_1B7AF182C(0, *(v80 + 2) + 1, 1, v80);
        }

        v85 = *(v80 + 2);
        v84 = *(v80 + 3);
        if (v85 >= v84 >> 1)
        {
          v80 = sub_1B7AF182C((v84 > 1), v85 + 1, 1, v80);
        }

        ++v79;
        *(v80 + 2) = v85 + 1;
        v86 = &v80[16 * v85];
        *(v86 + 4) = v81;
        *(v86 + 5) = v83;
      }

      while (v79 != 6);

      v138 = v80;
      sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
      sub_1B7C81070(&qword_1EDBE3020, &unk_1EBA525A0, "D\r\b");
      v87 = sub_1B7CFEA10();
      v89 = v88;

      if (*(a2 + 24) + 0x4000000000000000 < 0)
      {
        goto LABEL_153;
      }

      v138 = sub_1B7CFEC10();
      v139 = v90;
      MEMORY[0x1B8CADCA0](v87, v89);
      v91 = v138;
      v92 = v139;
      swift_beginAccess();
      v93 = *(a2 + 16);
      v94 = swift_isUniquelyReferenced_nonNull_native();
      *(a2 + 16) = v93;
      if ((v94 & 1) == 0)
      {
        v93 = sub_1B7AF182C(0, *(v93 + 2) + 1, 1, v93);
        *(a2 + 16) = v93;
      }

      v96 = *(v93 + 2);
      v95 = *(v93 + 3);
      if (v96 >= v95 >> 1)
      {
        v93 = sub_1B7AF182C((v95 > 1), v96 + 1, 1, v93);
      }

      *(v93 + 2) = v96 + 1;
      v97 = &v93[16 * v96];
      *(v97 + 4) = v91;
      *(v97 + 5) = v92;
      *(a2 + 16) = v93;
      swift_endAccess();

      v12 = v129;
    }

    while (v51 != v130);
  }

  else
  {
  }

  v98 = *(a2 + 24);
  v40 = __OFSUB__(v98, 1);
  v99 = v98 - 1;
  v100 = v132;
  if (v40)
  {
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  v101 = 0;
  *(a2 + 24) = v99;
  v102 = v132 & 0xC000000000000001;
  while (1)
  {
    if (v128 == v101)
    {
    }

    if (!v102)
    {
      break;
    }

    v103 = MEMORY[0x1B8CAE380](v101, v100);
    if (__OFADD__(v101, 1))
    {
      goto LABEL_106;
    }

LABEL_102:
    swift_beginAccess();
    v104 = *(v103 + 48);

    v105 = *(v104 + 16);

    ++v101;
    v100 = v132;
    if (v105)
    {
      goto LABEL_107;
    }
  }

  if (v101 >= *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_155;
  }

  v103 = *(v100 + 8 * v101 + 32);

  if (!__OFADD__(v101, 1))
  {
    goto LABEL_102;
  }

LABEL_106:
  __break(1u);
LABEL_107:
  sub_1B7C219E4(0, 0xE000000000000000);
  sub_1B7C219E4(0xD00000000000001ALL, 0x80000001B7D56330);
  v106 = *(a2 + 24);
  v40 = __OFADD__(v106, 1);
  v107 = v106 + 1;
  if (v40)
  {
    goto LABEL_160;
  }

  *(a2 + 24) = v107;
  if (v128 < 1)
  {
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v108 = 0;
  do
  {
    if (v102)
    {
      v109 = MEMORY[0x1B8CAE380](v108, v132);
    }

    else
    {
      v109 = *(v132 + 8 * v108 + 32);
    }

    ++v108;
    v110 = *(v109 + 16);
    v111 = 0xD000000000000017;
    v112 = 0xD00000000000001DLL;
    if (v110 == 8)
    {
      v112 = 0xD000000000000010;
    }

    v113 = 0x80000001B7D4E2C0;
    if (v110 == 8)
    {
      v113 = 0x80000001B7D4E2A0;
    }

    if (v110 == 7)
    {
      v114 = 0x80000001B7D4E280;
    }

    else
    {
      v111 = v112;
      v114 = v113;
    }

    if (v110 == 5)
    {
      v115 = 0xD000000000000011;
    }

    else
    {
      v115 = 0xD000000000000010;
    }

    if (v110 == 5)
    {
      v116 = 0x80000001B7D4E240;
    }

    else
    {
      v116 = 0x80000001B7D4E260;
    }

    if (*(v109 + 16) <= 6u)
    {
      v111 = v115;
      v114 = v116;
    }

    v117 = 0xEA0000000000746ELL;
    v118 = 0x656D686361747461;
    if (v110 != 3)
    {
      v118 = 0x656C646E6168;
      v117 = 0xE600000000000000;
    }

    if (v110 == 2)
    {
      v118 = 0x6567617373656DLL;
      v117 = 0xE700000000000000;
    }

    v119 = 0x6E776F6E6B6E75;
    if (*(v109 + 16))
    {
      v119 = 1952540771;
    }

    v120 = 0xE400000000000000;
    if (!*(v109 + 16))
    {
      v120 = 0xE700000000000000;
    }

    if (*(v109 + 16) <= 1u)
    {
      v118 = v119;
      v117 = v120;
    }

    if (*(v109 + 16) <= 4u)
    {
      v121 = v118;
    }

    else
    {
      v121 = v111;
    }

    if (*(v109 + 16) <= 4u)
    {
      v122 = v117;
    }

    else
    {
      v122 = v114;
    }

    swift_beginAccess();
    v123 = *(v109 + 48);

    sub_1B7C7FC94(v121, v122, v123, v131);
  }

  while (v128 != v108);
  v124 = *(v131 + 24);
  v40 = __OFSUB__(v124, 1);
  v125 = v124 - 1;
  if (!v40)
  {
    *(v131 + 24) = v125;
  }

LABEL_162:
  __break(1u);
LABEL_163:
  sub_1B7CFF740();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1B7C80E54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B656C626174 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B7CFF590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E756F43776F72 && a2 == 0xE800000000000000 || (sub_1B7CFF590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656E616870726FLL && a2 == 0xED0000746E756F43 || (sub_1B7CFF590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001B7D4E310 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B7D562D0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B7CFF590();

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

unint64_t sub_1B7C8101C()
{
  result = qword_1EBA52F70;
  if (!qword_1EBA52F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52F70);
  }

  return result;
}

uint64_t sub_1B7C81070(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1B7C1091C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7C810B8()
{
  result = qword_1EBA52F90;
  if (!qword_1EBA52F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52F90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DatabaseTableInspectionReport.ReportColumnKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DatabaseTableInspectionReport.ReportColumnKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B7C81260()
{
  result = qword_1EBA52FA8;
  if (!qword_1EBA52FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52FA8);
  }

  return result;
}

uint64_t sub_1B7C812B4()
{
  v0 = sub_1B7CFF3B0();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B7C81348(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = *(result + 16);
  v5 = result + 40;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v7 = (v5 + 24 * v3);
  v8 = v3;
  while (1)
  {
    if (v4 == v8)
    {
      v19 = sub_1B7CB5C48(v6);

      return v19;
    }

    if (v8 >= v4)
    {
      break;
    }

    v3 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_19;
    }

    v9 = *(v7 - 1);
    v10 = *v7;
    v11 = HIBYTE(*v7) & 0xF;
    if ((*v7 & 0x2000000000000000) == 0)
    {
      v11 = v9 & 0xFFFFFFFFFFFFLL;
    }

    ++v8;
    v7 += 3;
    if (v11)
    {
      v12 = *(v7 - 2);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B7CA23F8(0, *(v6 + 16) + 1, 1, v6);
        v6 = result;
      }

      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        result = sub_1B7CA23F8((v13 > 1), v14 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 16) = v15;
      v16 = (v6 + 24 * v14);
      v16[4] = v9;
      v16[5] = v10;
      v16[6] = v12;
      if (v4 != v8)
      {
        v17 = *(v6 + 24);
        if ((v14 + 2) > (v17 >> 1))
        {
          result = sub_1B7CA23F8((v17 > 1), v14 + 2, 1, v6);
          v6 = result;
        }

        *(v6 + 16) = v14 + 2;
        v18 = (v6 + 24 * v15);
        v18[4] = a2;
        v18[5] = a3;
        v18[6] = MEMORY[0x1E69E7CC0];
      }

      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t IMDNotificationsController.shouldDisplayGroupNameAndPhoto(with:participants:)()
{
  sub_1B7CFE300();
  sub_1B7C81604();
  return sub_1B7CFE2F0() & 1;
}

id sub_1B7C81598(void **a1)
{
  v1 = *a1;
  v2 = objc_opt_self();
  v3 = [v1 contact];
  v4 = [v2 isCNContactAKnownContact_];

  return v4;
}

unint64_t sub_1B7C81604()
{
  result = qword_1EBA52FB0;
  if (!qword_1EBA52FB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA52FB0);
  }

  return result;
}

uint64_t sub_1B7C816E0()
{
  if (qword_1EBA50EB8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B7CFE420();
  sub_1B7AD9040(v1, qword_1EBA5DA20);
  v2 = sub_1B7CFE400();
  v3 = sub_1B7CFEF00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B7AD5000, v2, v3, "Attempting group participant recovery migration...", v4, 2u);
    MEMORY[0x1B8CB0E70](v4, -1, -1);
  }

  v5 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v7 = v5[2];
  v6 = v5[3];
  v8 = v7 + 1;
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1B7AE3A9C((v6 > 1), v7 + 1, 1, v5);
  }

  v9 = MEMORY[0x1E69E7508];
  v14 = MEMORY[0x1E69E7508];
  v15 = &off_1F2FA8AB8;
  LOBYTE(v13) = 43;
  v5[2] = v8;
  sub_1B7AE910C(&v13, &v5[5 * v7 + 4]);
  v10 = v5[3];
  v11 = v7 + 2;
  if (v11 > (v10 >> 1))
  {
    v5 = sub_1B7AE3A9C((v10 > 1), v11, 1, v5);
  }

  v14 = v9;
  v15 = &off_1F2FA8AB8;
  LOBYTE(v13) = 43;
  v5[2] = v11;
  sub_1B7AE910C(&v13, &v5[5 * v8 + 4]);
  sub_1B7AE3B2C(0xD0000000000003C2, 0x80000001B7D563C0, 0);
  if (!v0)
  {
    sub_1B7AF3FE4(v5);
  }
}

uint64_t sub_1B7C81984@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1B7C8336C(&qword_1EDBE3CC8, type metadata accessor for SyncChatSliceRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C8336C(&qword_1EDBE3CC0, type metadata accessor for SyncChatSliceRecord);
  sub_1B7CFE770();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B7C81A90()
{
  swift_getKeyPath();
  sub_1B7C8336C(&qword_1EDBE3CC8, type metadata accessor for SyncChatSliceRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C8336C(&qword_1EDBE3CC0, type metadata accessor for SyncChatSliceRecord);
  sub_1B7CFE770();

  return v0;
}

uint64_t sub_1B7C81B94()
{
  swift_getKeyPath();
  sub_1B7C8336C(&qword_1EDBE3CC0, type metadata accessor for SyncChatSliceRecord);
  sub_1B7CFE790();
}

double sub_1B7C81C48@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1B7C8336C(&qword_1EDBE3CC8, type metadata accessor for SyncChatSliceRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C8336C(&qword_1EDBE3CC0, type metadata accessor for SyncChatSliceRecord);
  sub_1B7AF6C94(&qword_1EBA523E0);
  sub_1B7CFE770();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1B7C81D7C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1B7C8336C(&qword_1EDBE3CC8, type metadata accessor for SyncChatSliceRecord);
  sub_1B7CFE1D0();
}

uint64_t sub_1B7C81E44()
{
  swift_getKeyPath();
  sub_1B7C8336C(&qword_1EDBE3CC8, type metadata accessor for SyncChatSliceRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C8336C(&qword_1EDBE3CC0, type metadata accessor for SyncChatSliceRecord);
  sub_1B7AF6C94(&qword_1EBA523E0);
  sub_1B7CFE770();

  return v0;
}

uint64_t sub_1B7C81F70()
{
  swift_getKeyPath();
  sub_1B7C8336C(&qword_1EDBE3CC0, type metadata accessor for SyncChatSliceRecord);
  sub_1B7AF6C94(&qword_1EBA523D8);
  sub_1B7CFE790();
}

uint64_t sub_1B7C8204C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B7C8336C(&qword_1EDBE3CC8, type metadata accessor for SyncChatSliceRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C8336C(&qword_1EDBE3CC0, type metadata accessor for SyncChatSliceRecord);
  sub_1B7C8336C(&qword_1EDBE5728, type metadata accessor for ChatRecord);
  v4 = sub_1B7CFE760();

  *a2 = v4;
  return result;
}

uint64_t sub_1B7C82188(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1B7C8336C(&qword_1EDBE3CC8, type metadata accessor for SyncChatSliceRecord);
  sub_1B7CFE1D0();
}

uint64_t sub_1B7C82254()
{
  swift_getKeyPath();
  sub_1B7C8336C(&qword_1EDBE3CC8, type metadata accessor for SyncChatSliceRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C8336C(&qword_1EDBE3CC0, type metadata accessor for SyncChatSliceRecord);
  sub_1B7C8336C(&qword_1EDBE5728, type metadata accessor for ChatRecord);
  v0 = sub_1B7CFE760();

  return v0;
}

uint64_t sub_1B7C8238C()
{
  swift_getKeyPath();
  sub_1B7C8336C(&qword_1EDBE3CC0, type metadata accessor for SyncChatSliceRecord);
  sub_1B7C8336C(&qword_1EDBE5728, type metadata accessor for ChatRecord);
  sub_1B7CFE780();
}

uint64_t sub_1B7C82464(__int128 *a1)
{
  type metadata accessor for SyncChatSliceRecord();
  *(v1 + 48) = sub_1B7C107FC(&unk_1EBA52FD8, &qword_1B7D10350);
  sub_1B7C8336C(&qword_1EDBE3CC0, type metadata accessor for SyncChatSliceRecord);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  sub_1B7C1A14C((v1 + 24));
  sub_1B7CFE720();
  *(v1 + 16) = 1;
  sub_1B7CFE1F0();
  *(v1 + 16) = 0;
  swift_beginAccess();
  sub_1B7AE9168((v1 + 24));
  sub_1B7AE910C(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1B7C82598()
{
  sub_1B7AE9168(v0 + 3);
  v1 = OBJC_IVAR____TtC14IMDPersistence19SyncChatSliceRecord___observationRegistrar;
  v2 = sub_1B7CFE200();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SyncChatSliceRecord()
{
  result = qword_1EDBE3C90;
  if (!qword_1EDBE3C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7C82690()
{
  result = sub_1B7CFE200();
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

uint64_t sub_1B7C82758()
{
  v0 = qword_1EBA52FB8;

  return v0;
}

uint64_t sub_1B7C82790(__int128 *a1)
{
  v2 = type metadata accessor for SyncChatSliceRecord();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  sub_1B7C82464(a1);
  return v5;
}

uint64_t sub_1B7C8281C(__int128 *a1)
{
  swift_beginAccess();
  sub_1B7AE9168((v1 + 24));
  sub_1B7AE910C(a1, v1 + 24);
  return swift_endAccess();
}

void (*sub_1B7C82874(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1B7AE90A8(v1 + 24, v4);
  return sub_1B7C82904;
}

void sub_1B7C82904(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_1B7AE90A8(*a1, v2 + 40);
    swift_beginAccess();
    sub_1B7AE9168((v3 + 24));
    sub_1B7AE910C((v2 + 40), v3 + 24);
    swift_endAccess();
    sub_1B7AE9168(v2);
  }

  else
  {
    swift_beginAccess();
    sub_1B7AE9168((v3 + 24));
    sub_1B7AE910C(v2, v3 + 24);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_1B7C829C0()
{
  v1 = *v0;
  sub_1B7CFF7C0();
  type metadata accessor for SyncChatSliceRecord();
  sub_1B7C8336C(&qword_1EDBE3CC0, type metadata accessor for SyncChatSliceRecord);
  sub_1B7CFE750();
  return sub_1B7CFF800();
}

uint64_t sub_1B7C82A4C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1B7CFE750();
}

uint64_t sub_1B7C82AA4()
{
  sub_1B7CFF7C0();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1B7CFE750();
  return sub_1B7CFF800();
}

uint64_t sub_1B7C82B0C()
{
  v1 = *v0;
  type metadata accessor for SyncChatSliceRecord();
  sub_1B7C8336C(&qword_1EDBE3CC0, type metadata accessor for SyncChatSliceRecord);
  return sub_1B7CFE740();
}

uint64_t sub_1B7C82B88(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1B7C82DA4(uint64_t a1)
{
  result = sub_1B7C8336C(&qword_1EDBE3CC0, type metadata accessor for SyncChatSliceRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7C82DFC()
{
  v31 = sub_1B7CFE850();
  v0 = *(v31 - 8);
  v1 = v0;
  v2 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B7CFE7D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7C107FC(&qword_1EBA52050, &qword_1B7D0AF40);
  v9 = *(v0 + 72);
  v10 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B7D0CB60;
  swift_getKeyPath();
  v35 = 0u;
  v36 = 0u;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  sub_1B7CFE840();
  swift_getKeyPath();
  v35 = 0u;
  v36 = 0u;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  sub_1B7CFE840();
  swift_getKeyPath();
  v35 = 0u;
  v36 = 0u;
  (*(v5 + 104))(v8, *MEMORY[0x1E697BCD8], v4);
  v12 = sub_1B7CFE800();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = MEMORY[0x1E69E7CC0];
  v16 = sub_1B7CFE810();
  *(&v33 + 1) = v12;
  v34 = sub_1B7C8336C(qword_1EDBE3A20, MEMORY[0x1E697BCF0]);
  *&v32 = v16;
  sub_1B7CFE840();
  swift_getKeyPath();
  v35 = 0u;
  v36 = 0u;
  sub_1B7C107FC(&qword_1EBA52FC8, &unk_1B7D10330);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1B7D0A6F0;
  sub_1B7C107FC(&qword_1EBA52060, &qword_1B7D0AFD0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1B7D0AD40;
  *(v18 + 32) = swift_getKeyPath();
  *(v18 + 40) = swift_getKeyPath();
  *(v17 + 32) = v18;
  v19 = v30;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B7D100C0;
  *(v20 + 32) = swift_getKeyPath();
  *(v17 + 40) = v20;
  v21 = sub_1B7C107FC(&qword_1EBA52FD0, &unk_1B7D10340);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = sub_1B7CFE890();
  *(&v33 + 1) = v21;
  v34 = sub_1B7C832EC();
  *&v32 = v24;
  sub_1B7CFE840();
  v25 = sub_1B7CA2198(0, 1, 1, v15);
  v27 = *(v25 + 2);
  v26 = *(v25 + 3);
  if (v27 >= v26 >> 1)
  {
    v25 = sub_1B7CA2198(v26 > 1, v27 + 1, 1, v25);
  }

  *(v25 + 2) = v27 + 1;
  v28 = v25;
  (*(v1 + 32))(&v25[v10 + v27 * v9], v19, v31);
  *&v32 = v11;
  sub_1B7C50CF0(v28);
  return v32;
}

unint64_t sub_1B7C832EC()
{
  result = qword_1EDBE3A08;
  if (!qword_1EDBE3A08)
  {
    sub_1B7C1091C(&qword_1EBA52FD0, &unk_1B7D10340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBE3A08);
  }

  return result;
}

uint64_t sub_1B7C83350()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C8238C();
}

uint64_t sub_1B7C8336C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7C833B4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1B7C81F70();
}

uint64_t sub_1B7C833D4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1B7C81B94();
}

void *sub_1B7C83458()
{
  sub_1B7C107FC(&qword_1EBA530B8, &qword_1B7D103E0);
  swift_allocObject();
  result = sub_1B7C856AC(sub_1B7C834C4, 0, MEMORY[0x1E69E7CC0]);
  off_1EBA50DD0 = result;
  return result;
}

uint64_t (*sub_1B7C834C4())()
{
  v0 = [objc_opt_self() synchronousService];
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1B7C8903C;
  *(v2 + 24) = v1;
  return sub_1B7C8909C;
}

void *sub_1B7C83588()
{
  sub_1B7C107FC(&qword_1EBA530B8, &qword_1B7D103E0);
  swift_allocObject();
  result = sub_1B7C856AC(sub_1B7C835F4, 0, &unk_1F2FA22B8);
  off_1EBA52FE8 = result;
  return result;
}

uint64_t (*sub_1B7C835F4())()
{
  v0 = [objc_opt_self() synchronousService];
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1B7C89018;
  *(v2 + 24) = v1;
  return sub_1B7C8909C;
}

void sub_1B7C83690(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1B7C890F0;
  v6[3] = a4;
  v5 = _Block_copy(v6);

  [a3 ptaskQueryProviderWithBlock_];
  _Block_release(v5);
}

void *sub_1B7C83780()
{
  sub_1B7C107FC(&qword_1EBA53098, &qword_1B7D103C8);
  swift_allocObject();
  result = sub_1B7C85758(sub_1B7C837EC, 0, MEMORY[0x1E69E7CC0]);
  off_1EBA50DB0 = result;
  return result;
}

uint64_t (*sub_1B7C837EC())()
{
  v0 = [objc_opt_self() synchronousService];
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1B7C88F84;
  *(v2 + 24) = v1;
  return sub_1B7C8909C;
}

void *sub_1B7C838B0()
{
  sub_1B7C107FC(&qword_1EBA53098, &qword_1B7D103C8);
  swift_allocObject();
  result = sub_1B7C85758(sub_1B7C8391C, 0, &unk_1F2FA22E8);
  off_1EBA52FF8 = result;
  return result;
}

uint64_t (*sub_1B7C8391C())()
{
  v0 = [objc_opt_self() synchronousService];
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1B7C88F38;
  *(v2 + 24) = v1;
  return sub_1B7C88F5C;
}

void sub_1B7C839B8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1B7C890F0;
  v6[3] = a4;
  v5 = _Block_copy(v6);

  [a3 indexingQueryProviderWithBlock_];
  _Block_release(v5);
}

void *sub_1B7C83AA8()
{
  sub_1B7C107FC(&qword_1EBA53078, &qword_1B7D103B0);
  swift_allocObject();
  result = sub_1B7C85804(sub_1B7C83B14, 0, MEMORY[0x1E69E7CC0]);
  off_1EBA53000 = result;
  return result;
}

uint64_t (*sub_1B7C83B14())()
{
  v0 = [objc_opt_self() synchronousService];
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1B7C88E88;
  *(v2 + 24) = v1;
  return sub_1B7C8909C;
}

void *sub_1B7C83BD8()
{
  sub_1B7C107FC(&qword_1EBA53078, &qword_1B7D103B0);
  swift_allocObject();
  result = sub_1B7C85804(sub_1B7C83C44, 0, &unk_1F2FA2318);
  off_1EDBE2AC8 = result;
  return result;
}

uint64_t (*sub_1B7C83C44())()
{
  v0 = [objc_opt_self() synchronousService];
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1B7C88E64;
  *(v2 + 24) = v1;
  return sub_1B7C8909C;
}

void sub_1B7C83CE0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1B7C890F0;
  v6[3] = a4;
  v5 = _Block_copy(v6);

  [a3 spotlightQueryProviderWithBlock_];
  _Block_release(v5);
}

void *sub_1B7C83DD0()
{
  sub_1B7C107FC(&qword_1EBA53058, &qword_1B7D10398);
  swift_allocObject();
  result = sub_1B7C858B0(sub_1B7C83E3C, 0, MEMORY[0x1E69E7CC0]);
  off_1EBA53010 = result;
  return result;
}

uint64_t (*sub_1B7C83E3C())()
{
  v0 = [objc_opt_self() synchronousService];
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1B7C88DD0;
  *(v2 + 24) = v1;
  return sub_1B7C8909C;
}

void *sub_1B7C83F00()
{
  sub_1B7C107FC(&qword_1EBA53058, &qword_1B7D10398);
  swift_allocObject();
  result = sub_1B7C858B0(sub_1B7C83F6C, 0, &unk_1F2FA2348);
  off_1EBA53018 = result;
  return result;
}

uint64_t (*sub_1B7C83F6C())()
{
  v0 = [objc_opt_self() synchronousService];
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1B7C88DAC;
  *(v2 + 24) = v1;
  return sub_1B7C8909C;
}

void sub_1B7C84008(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1B7C890F0;
  v6[3] = a4;
  v5 = _Block_copy(v6);

  [a3 spotlightActivityMonitorQueryProviderWithBlock_];
  _Block_release(v5);
}

void *sub_1B7C840F8()
{
  sub_1B7C107FC(&qword_1EBA53038, &qword_1B7D10380);
  swift_allocObject();
  result = sub_1B7C8595C(sub_1B7C84164, 0, MEMORY[0x1E69E7CC0]);
  off_1EBA50DC0 = result;
  return result;
}

uint64_t (*sub_1B7C84164())()
{
  v0 = [objc_opt_self() synchronousService];
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1B7C88D18;
  *(v2 + 24) = v1;
  return sub_1B7C8909C;
}

uint64_t sub_1B7C84200(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void *sub_1B7C84288()
{
  sub_1B7C107FC(&qword_1EBA53038, &qword_1B7D10380);
  swift_allocObject();
  result = sub_1B7C8595C(sub_1B7C842F4, 0, &unk_1F2FA2378);
  off_1EBA50D18 = result;
  return result;
}

uint64_t (*sub_1B7C842F4())()
{
  v0 = [objc_opt_self() synchronousService];
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1B7C88CF4;
  *(v2 + 24) = v1;
  return sub_1B7C8909C;
}

void sub_1B7C84390(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1B7C890F0;
  v6[3] = a4;
  v5 = _Block_copy(v6);

  [a3 databaseQueryProviderWithBlock_];
  _Block_release(v5);
}

uint64_t sub_1B7C84458@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v8 = a2[1];

  v9 = a3(v6, v7, v8);

  *a4 = v9;
  return result;
}

void __swiftcall IMDPersistenceService.init()(IMDPersistenceService *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void IMDPersistenceService.ptaskQueryProvider(_:)(void (*a1)(void))
{
  v2 = [objc_opt_self() currentConnection];
  if (v2)
  {
    v3 = v2;
    [v2 auditToken];
    if (__IMDPersistenceCheckEntitlements(&v14, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = [objc_allocWithZone(IMDPersistentTaskQueryProvider) init];
      a1();
    }

    else
    {
      if (qword_1EDBE3808 != -1)
      {
        swift_once();
      }

      v9 = sub_1B7CFE420();
      sub_1B7AD9040(v9, qword_1EDBE79D0);
      v10 = v3;
      v11 = sub_1B7CFE400();
      v12 = sub_1B7CFEEF0();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 67109120;
        *(v13 + 4) = [v10 processIdentifier];

        _os_log_impl(&dword_1B7AD5000, v11, v12, "PTask provider request from %d denied, lacks entitlements", v13, 8u);
        MEMORY[0x1B8CB0E70](v13, -1, -1);
      }

      else
      {

        v11 = v10;
      }

      (a1)(0);
    }
  }

  else
  {
    if (qword_1EDBE3808 != -1)
    {
      swift_once();
    }

    v5 = sub_1B7CFE420();
    sub_1B7AD9040(v5, qword_1EDBE79D0);
    v6 = sub_1B7CFE400();
    v7 = sub_1B7CFEEF0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1B7AD5000, v6, v7, "No current NSXPCConnection", v8, 2u);
      MEMORY[0x1B8CB0E70](v8, -1, -1);
    }

    (a1)(0);
  }
}

void IMDPersistenceService.indexingQueryProvider(_:)(void (*a1)(void))
{
  v2 = [objc_opt_self() currentConnection];
  if (v2)
  {
    v3 = v2;
    [v2 auditToken];
    if (__IMDPersistenceCheckEntitlements(&v16, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = [objc_opt_self() sharedFeatureFlags];
      v5 = [v4 isSpotlightRefactorEnabled];

      if (v5)
      {
        v6 = [objc_opt_self() sharedController];
      }

      else
      {
        v6 = [objc_opt_self() sharedProvider];
      }

      v15 = v6;
      a1();
    }

    else
    {
      if (qword_1EDBE3808 != -1)
      {
        swift_once();
      }

      v11 = sub_1B7CFE420();
      sub_1B7AD9040(v11, qword_1EDBE79D0);
      v3 = v3;
      v12 = sub_1B7CFE400();
      v13 = sub_1B7CFEEF0();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 67109120;
        *(v14 + 4) = [v3 processIdentifier];

        _os_log_impl(&dword_1B7AD5000, v12, v13, "PTask provider request from %d denied, lacks entitlements", v14, 8u);
        MEMORY[0x1B8CB0E70](v14, -1, -1);
      }

      else
      {

        v12 = v3;
      }

      (a1)(0);
    }
  }

  else
  {
    if (qword_1EDBE3808 != -1)
    {
      swift_once();
    }

    v7 = sub_1B7CFE420();
    sub_1B7AD9040(v7, qword_1EDBE79D0);
    v8 = sub_1B7CFE400();
    v9 = sub_1B7CFEEF0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1B7AD5000, v8, v9, "No current NSXPCConnection", v10, 2u);
      MEMORY[0x1B8CB0E70](v10, -1, -1);
    }

    (a1)(0);
  }
}

void sub_1B7C84B10(void *a1, int a2, void *aBlock, void (*a4)(void *))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4(v6);
  _Block_release(v6);
  _Block_release(v6);
}

void sub_1B7C84BB4(void *a1, int a2, void *aBlock, uint64_t *a4, SEL *a5)
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a1;
  sub_1B7C886E4(v8, a4, a5);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_1B7C84C4C(void (*a1)(void), uint64_t a2, uint64_t *a3, SEL *a4)
{
  v7 = [objc_opt_self() currentConnection];
  if (v7)
  {
    v8 = v7;
    [v7 auditToken];
    if (__IMDPersistenceCheckEntitlements(&v20, 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = *a3;
      v10 = [objc_opt_self() *a4];
      a1();
    }

    else
    {
      if (qword_1EDBE3808 != -1)
      {
        swift_once();
      }

      v15 = sub_1B7CFE420();
      sub_1B7AD9040(v15, qword_1EDBE79D0);
      v16 = v8;
      v17 = sub_1B7CFE400();
      v18 = sub_1B7CFEEF0();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 67109120;
        *(v19 + 4) = [v16 processIdentifier];

        _os_log_impl(&dword_1B7AD5000, v17, v18, "PTask provider request from %d denied, lacks entitlements", v19, 8u);
        MEMORY[0x1B8CB0E70](v19, -1, -1);
      }

      else
      {

        v17 = v16;
      }

      (a1)(0);
    }
  }

  else
  {
    if (qword_1EDBE3808 != -1)
    {
      swift_once();
    }

    v11 = sub_1B7CFE420();
    sub_1B7AD9040(v11, qword_1EDBE79D0);
    v12 = sub_1B7CFE400();
    v13 = sub_1B7CFEEF0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1B7AD5000, v12, v13, "No current NSXPCConnection", v14, 2u);
      MEMORY[0x1B8CB0E70](v14, -1, -1);
    }

    (a1)(0);
  }
}

void IMDPersistenceService.databaseQueryProvider(_:)(void (*a1)(void))
{
  v2 = [objc_opt_self() currentConnection];
  if (v2)
  {
    v3 = v2;
    [v2 auditToken];
    if (__IMDPersistenceCheckEntitlements(&v14, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = [objc_opt_self() database];
      a1();

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1EDBE3808 != -1)
      {
        swift_once();
      }

      v9 = sub_1B7CFE420();
      sub_1B7AD9040(v9, qword_1EDBE79D0);
      v10 = v3;
      v11 = sub_1B7CFE400();
      v12 = sub_1B7CFEEF0();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 67109120;
        *(v13 + 4) = [v10 processIdentifier];

        _os_log_impl(&dword_1B7AD5000, v11, v12, "Database provider request from %d denied, lacks entitlements", v13, 8u);
        MEMORY[0x1B8CB0E70](v13, -1, -1);
      }

      else
      {

        v11 = v10;
      }

      (a1)(0);
    }
  }

  else
  {
    if (qword_1EDBE3808 != -1)
    {
      swift_once();
    }

    v5 = sub_1B7CFE420();
    sub_1B7AD9040(v5, qword_1EDBE79D0);
    v6 = sub_1B7CFE400();
    v7 = sub_1B7CFEEF0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1B7AD5000, v6, v7, "No current NSXPCConnection", v8, 2u);
      MEMORY[0x1B8CB0E70](v8, -1, -1);
    }

    (a1)(0);
  }
}

void sub_1B7C85194(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v9 = v4;
  if (qword_1EDBE3808 != -1)
  {
    swift_once();
  }

  v10 = sub_1B7CFE420();
  sub_1B7AD9040(v10, qword_1EDBE79D0);
  v11 = sub_1B7CFE400();
  v12 = sub_1B7CFEF00();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136446210;
    sub_1B7C107FC(a1, a2);
    sub_1B7C107FC(a3, a4);
    v15 = sub_1B7CFEAB0();
    v17 = sub_1B7AED1B8(v15, v16, &v19);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1B7AD5000, v11, v12, "Clearing query provider for %{public}s", v13, 0xCu);
    sub_1B7AE9168(v14);
    MEMORY[0x1B8CB0E70](v14, -1, -1);
    MEMORY[0x1B8CB0E70](v13, -1, -1);
  }

  v18 = *(v9 + 48);
  os_unfair_lock_lock((v18 + 32));
  sub_1B7C85338((v18 + 16));
  os_unfair_lock_unlock((v18 + 32));
}

void sub_1B7C85338(uint64_t *a1)
{
  v2 = *a1;
  swift_unknownObjectRelease();
  *a1 = 0;
  v3 = a1[1];
  if (v3)
  {
    v4 = objc_opt_self();
    swift_unknownObjectRetain();
    v5 = [v4 defaultCenter];
    [v5 removeObserver_];
    swift_unknownObjectRelease_n();
  }

  a1[1] = 0;
}

uint64_t sub_1B7C853D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void sub_1B7C85434(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v10 = *a1;
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (!a1[1])
  {
    v11 = [objc_opt_self() defaultCenter];
    if (qword_1EDBE39F0 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDBE39F8;
    aBlock[4] = a4;
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B7C855B8;
    aBlock[3] = a5;
    v13 = _Block_copy(aBlock);

    v14 = [v11 addObserverForName:v12 object:0 queue:0 usingBlock:v13];
    _Block_release(v13);

    a1[1] = v14;
  }
}

uint64_t sub_1B7C855B8(uint64_t a1)
{
  v2 = sub_1B7CFDC70();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1B7CFDC60();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

void *sub_1B7C856AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7C107FC(&qword_1EBA530C0, &unk_1B7D103E8);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  v3[6] = v7;
  v3[2] = a1;
  v3[3] = a2;
  if (*(a3 + 16))
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    v9 = sub_1B7C88FE0;
  }

  else
  {

    v9 = 0;
    v8 = 0;
  }

  v3[4] = v9;
  v3[5] = v8;
  return v3;
}

void *sub_1B7C85758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7C107FC(&unk_1EBA530A0, &qword_1B7D103D0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  v3[6] = v7;
  v3[2] = a1;
  v3[3] = a2;
  if (*(a3 + 16))
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    v9 = sub_1B7C88F00;
  }

  else
  {

    v9 = 0;
    v8 = 0;
  }

  v3[4] = v9;
  v3[5] = v8;
  return v3;
}

void *sub_1B7C85804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7C107FC(&unk_1EBA53080, &qword_1B7D103B8);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  v3[6] = v7;
  v3[2] = a1;
  v3[3] = a2;
  if (*(a3 + 16))
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    v9 = sub_1B7C88E2C;
  }

  else
  {

    v9 = 0;
    v8 = 0;
  }

  v3[4] = v9;
  v3[5] = v8;
  return v3;
}

void *sub_1B7C858B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7C107FC(&unk_1EBA53060, &qword_1B7D103A0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  v3[6] = v7;
  v3[2] = a1;
  v3[3] = a2;
  if (*(a3 + 16))
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    v9 = sub_1B7C88D74;
  }

  else
  {

    v9 = 0;
    v8 = 0;
  }

  v3[4] = v9;
  v3[5] = v8;
  return v3;
}

void *sub_1B7C8595C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7C107FC(&unk_1EBA53040, &qword_1B7D10388);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  v3[6] = v7;
  v3[2] = a1;
  v3[3] = a2;
  if (*(a3 + 16))
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    v9 = sub_1B7C88C94;
  }

  else
  {

    v9 = 0;
    v8 = 0;
  }

  v3[4] = v9;
  v3[5] = v8;
  return v3;
}

uint64_t sub_1B7C85A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a4 + 16);
  if (v7)
  {
    swift_unknownObjectRetain();
    v12 = (a4 + 40);
    do
    {
      v14 = *(v12 - 1);
      v13 = *v12;
      v19 = a1;
      v15 = swift_allocObject();
      *(v15 + 16) = a2;
      *(v15 + 24) = a3;
      v18[0] = a6;
      v18[1] = v15;

      v14(&v17, &v19, v18);

      swift_unknownObjectRelease();
      a1 = v17;
      v12 += 2;
      --v7;
    }

    while (v7);
  }

  else
  {
    swift_unknownObjectRetain();
  }

  return a1;
}

id sub_1B7C85AF8()
{
  swift_unknownObjectWeakInit();
  if (IMDIsRunningInDatabaseServerProcess())
  {
    swift_unknownObjectWeakAssign();
    v2.receiver = v0;
    v2.super_class = IMDPersistenceService;
    return objc_msgSendSuper2(&v2, sel_init);
  }

  else
  {
    result = sub_1B7CFF340();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B7C85D58(uint64_t a1)
{
  if (qword_1EBA50DC8 != -1)
  {
    a1 = swift_once();
  }

  v1 = off_1EBA50DD0;
  v2 = *(off_1EBA50DD0 + 6);
  MEMORY[0x1EEE9AC00](a1);
  sub_1B7C107FC(&unk_1EBA52710, &unk_1B7D0CEB0);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);

  os_unfair_lock_lock((v2 + 32));
  sub_1B7AFAE5C((v2 + 16), v28);
  os_unfair_lock_unlock((v2 + 32));

  v4 = v28[0];
  if (!v28[0])
  {
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    v6 = (v5 + 16);
    v7 = swift_beginAccess();
    v8 = v1[3];
    v9 = (v1[2])(v7);

    v9(sub_1B7C890F4, v5);

    v10 = v5;

    v12 = v1[4];
    if (v12)
    {
      v13 = v1[5];
      v14 = *v6;

      sub_1B7AD8F38(v12);
      v15 = swift_unknownObjectRetain();
      v16 = v12(v15, sub_1B7C890B0, v1);
      sub_1B7AE15D4(v12);
      swift_unknownObjectRelease();

      v17 = *v6;
      *v6 = v16;
      v11 = swift_unknownObjectRelease();
    }

    if (!*v6)
    {
      v18 = v1[3];
      v19 = (v1[2])(v11);

      v19(sub_1B7C890F4, v10);

      v20 = v1[4];
      if (v20)
      {
        v21 = v1[5];
        v22 = *v6;

        sub_1B7AD8F38(v20);
        v23 = swift_unknownObjectRetain();
        v24 = v20(v23, sub_1B7C890B0, v1);
        sub_1B7AE15D4(v20);
        swift_unknownObjectRelease();

        v25 = *v6;
        *v6 = v24;
        swift_unknownObjectRelease();
      }
    }

    v26 = v1[6];
    os_unfair_lock_lock((v26 + 32));
    sub_1B7C85434((v26 + 16), v6, v1, sub_1B7C88FA8, &unk_1F2FA5F58);
    os_unfair_lock_unlock((v26 + 32));

    v4 = *v6;
    swift_unknownObjectRetain();
  }

  return v4;
}

uint64_t sub_1B7C860E4(uint64_t a1)
{
  if (qword_1EBA51610 != -1)
  {
    a1 = swift_once();
  }

  v1 = off_1EBA52FE8;
  v2 = *(off_1EBA52FE8 + 6);
  MEMORY[0x1EEE9AC00](a1);
  sub_1B7C107FC(&unk_1EBA52710, &unk_1B7D0CEB0);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);

  os_unfair_lock_lock((v2 + 32));
  sub_1B7AFAE5C((v2 + 16), v28);
  os_unfair_lock_unlock((v2 + 32));

  v4 = v28[0];
  if (!v28[0])
  {
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    v6 = (v5 + 16);
    v7 = swift_beginAccess();
    v8 = v1[3];
    v9 = (v1[2])(v7);

    v9(sub_1B7C890F4, v5);

    v10 = v5;

    v12 = v1[4];
    if (v12)
    {
      v13 = v1[5];
      v14 = *v6;

      sub_1B7AD8F38(v12);
      v15 = swift_unknownObjectRetain();
      v16 = v12(v15, sub_1B7C88FA8, v1);
      sub_1B7AE15D4(v12);
      swift_unknownObjectRelease();

      v17 = *v6;
      *v6 = v16;
      v11 = swift_unknownObjectRelease();
    }

    if (!*v6)
    {
      v18 = v1[3];
      v19 = (v1[2])(v11);

      v19(sub_1B7C890F4, v10);

      v20 = v1[4];
      if (v20)
      {
        v21 = v1[5];
        v22 = *v6;

        sub_1B7AD8F38(v20);
        v23 = swift_unknownObjectRetain();
        v24 = v20(v23, sub_1B7C88FA8, v1);
        sub_1B7AE15D4(v20);
        swift_unknownObjectRelease();

        v25 = *v6;
        *v6 = v24;
        swift_unknownObjectRelease();
      }
    }

    v26 = v1[6];
    os_unfair_lock_lock((v26 + 32));
    sub_1B7C85434((v26 + 16), v6, v1, sub_1B7C88FA8, &unk_1F2FA5F58);
    os_unfair_lock_unlock((v26 + 32));

    v4 = *v6;
    swift_unknownObjectRetain();
  }

  return v4;
}

uint64_t sub_1B7C86470(uint64_t a1)
{
  if (qword_1EBA50DA8 != -1)
  {
    a1 = swift_once();
  }

  v1 = off_1EBA50DB0;
  v2 = *(off_1EBA50DB0 + 6);
  MEMORY[0x1EEE9AC00](a1);
  sub_1B7C107FC(&qword_1EBA52708, &unk_1B7D0CEA0);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);

  os_unfair_lock_lock((v2 + 32));
  sub_1B7AFAE5C((v2 + 16), v28);
  os_unfair_lock_unlock((v2 + 32));

  v4 = v28[0];
  if (!v28[0])
  {
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    v6 = (v5 + 16);
    v7 = swift_beginAccess();
    v8 = v1[3];
    v9 = (v1[2])(v7);

    v9(sub_1B7C890F4, v5);

    v10 = v5;

    v12 = v1[4];
    if (v12)
    {
      v13 = v1[5];
      v14 = *v6;

      sub_1B7AD8F38(v12);
      v15 = swift_unknownObjectRetain();
      v16 = v12(v15, sub_1B7C890AC, v1);
      sub_1B7AE15D4(v12);
      swift_unknownObjectRelease();

      v17 = *v6;
      *v6 = v16;
      v11 = swift_unknownObjectRelease();
    }

    if (!*v6)
    {
      v18 = v1[3];
      v19 = (v1[2])(v11);

      v19(sub_1B7C890F4, v10);

      v20 = v1[4];
      if (v20)
      {
        v21 = v1[5];
        v22 = *v6;

        sub_1B7AD8F38(v20);
        v23 = swift_unknownObjectRetain();
        v24 = v20(v23, sub_1B7C890AC, v1);
        sub_1B7AE15D4(v20);
        swift_unknownObjectRelease();

        v25 = *v6;
        *v6 = v24;
        swift_unknownObjectRelease();
      }
    }

    v26 = v1[6];
    os_unfair_lock_lock((v26 + 32));
    sub_1B7C85434((v26 + 16), v6, v1, sub_1B7C88EC8, &unk_1F2FA5DC8);
    os_unfair_lock_unlock((v26 + 32));

    v4 = *v6;
    swift_unknownObjectRetain();
  }

  return v4;
}

uint64_t sub_1B7C867FC(uint64_t a1)
{
  if (qword_1EBA50D00 != -1)
  {
    a1 = swift_once();
  }

  v1 = off_1EBA52FF8;
  v2 = *(off_1EBA52FF8 + 6);
  MEMORY[0x1EEE9AC00](a1);
  sub_1B7C107FC(&qword_1EBA52708, &unk_1B7D0CEA0);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);

  os_unfair_lock_lock((v2 + 32));
  sub_1B7AFAE44((v2 + 16), v28);
  os_unfair_lock_unlock((v2 + 32));

  v4 = v28[0];
  if (!v28[0])
  {
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    v6 = (v5 + 16);
    v7 = swift_beginAccess();
    v8 = v1[3];
    v9 = (v1[2])(v7);

    v9(sub_1B7C88EAC, v5);

    v10 = v5;

    v12 = v1[4];
    if (v12)
    {
      v13 = v1[5];
      v14 = *v6;

      sub_1B7AD8F38(v12);
      v15 = swift_unknownObjectRetain();
      v16 = v12(v15, sub_1B7C88EC8, v1);
      sub_1B7AE15D4(v12);
      swift_unknownObjectRelease();

      v17 = *v6;
      *v6 = v16;
      v11 = swift_unknownObjectRelease();
    }

    if (!*v6)
    {
      v18 = v1[3];
      v19 = (v1[2])(v11);

      v19(sub_1B7C88EAC, v10);

      v20 = v1[4];
      if (v20)
      {
        v21 = v1[5];
        v22 = *v6;

        sub_1B7AD8F38(v20);
        v23 = swift_unknownObjectRetain();
        v24 = v20(v23, sub_1B7C88EC8, v1);
        sub_1B7AE15D4(v20);
        swift_unknownObjectRelease();

        v25 = *v6;
        *v6 = v24;
        swift_unknownObjectRelease();
      }
    }

    v26 = v1[6];
    os_unfair_lock_lock((v26 + 32));
    sub_1B7C85434((v26 + 16), v6, v1, sub_1B7C88EC8, &unk_1F2FA5DC8);
    os_unfair_lock_unlock((v26 + 32));

    v4 = *v6;
    swift_unknownObjectRetain();
  }

  return v4;
}

uint64_t sub_1B7C86B88(uint64_t a1)
{
  if (qword_1EBA51618 != -1)
  {
    a1 = swift_once();
  }

  v1 = off_1EBA53000;
  v2 = *(off_1EBA53000 + 6);
  MEMORY[0x1EEE9AC00](a1);
  sub_1B7C107FC(&qword_1EBA52700, &unk_1B7D0CE90);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);

  os_unfair_lock_lock((v2 + 32));
  sub_1B7AFAE5C((v2 + 16), v28);
  os_unfair_lock_unlock((v2 + 32));

  v4 = v28[0];
  if (!v28[0])
  {
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    v6 = (v5 + 16);
    v7 = swift_beginAccess();
    v8 = v1[3];
    v9 = (v1[2])(v7);

    v9(sub_1B7C890F4, v5);

    v10 = v5;

    v12 = v1[4];
    if (v12)
    {
      v13 = v1[5];
      v14 = *v6;

      sub_1B7AD8F38(v12);
      v15 = swift_unknownObjectRetain();
      v16 = v12(v15, sub_1B7C890A8, v1);
      sub_1B7AE15D4(v12);
      swift_unknownObjectRelease();

      v17 = *v6;
      *v6 = v16;
      v11 = swift_unknownObjectRelease();
    }

    if (!*v6)
    {
      v18 = v1[3];
      v19 = (v1[2])(v11);

      v19(sub_1B7C890F4, v10);

      v20 = v1[4];
      if (v20)
      {
        v21 = v1[5];
        v22 = *v6;

        sub_1B7AD8F38(v20);
        v23 = swift_unknownObjectRetain();
        v24 = v20(v23, sub_1B7C890A8, v1);
        sub_1B7AE15D4(v20);
        swift_unknownObjectRelease();

        v25 = *v6;
        *v6 = v24;
        swift_unknownObjectRelease();
      }
    }

    v26 = v1[6];
    os_unfair_lock_lock((v26 + 32));
    sub_1B7C85434((v26 + 16), v6, v1, sub_1B7C88DF4, &unk_1F2FA5C38);
    os_unfair_lock_unlock((v26 + 32));

    v4 = *v6;
    swift_unknownObjectRetain();
  }

  return v4;
}

uint64_t sub_1B7C86F14(uint64_t a1)
{
  if (qword_1EDBE2AC0 != -1)
  {
    a1 = swift_once();
  }

  v1 = off_1EDBE2AC8;
  v2 = *(off_1EDBE2AC8 + 6);
  MEMORY[0x1EEE9AC00](a1);
  sub_1B7C107FC(&qword_1EBA52700, &unk_1B7D0CE90);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);

  os_unfair_lock_lock((v2 + 32));
  sub_1B7AFAE5C((v2 + 16), v28);
  os_unfair_lock_unlock((v2 + 32));

  v4 = v28[0];
  if (!v28[0])
  {
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    v6 = (v5 + 16);
    v7 = swift_beginAccess();
    v8 = v1[3];
    v9 = (v1[2])(v7);

    v9(sub_1B7C890F4, v5);

    v10 = v5;

    v12 = v1[4];
    if (v12)
    {
      v13 = v1[5];
      v14 = *v6;

      sub_1B7AD8F38(v12);
      v15 = swift_unknownObjectRetain();
      v16 = v12(v15, sub_1B7C88DF4, v1);
      sub_1B7AE15D4(v12);
      swift_unknownObjectRelease();

      v17 = *v6;
      *v6 = v16;
      v11 = swift_unknownObjectRelease();
    }

    if (!*v6)
    {
      v18 = v1[3];
      v19 = (v1[2])(v11);

      v19(sub_1B7C890F4, v10);

      v20 = v1[4];
      if (v20)
      {
        v21 = v1[5];
        v22 = *v6;

        sub_1B7AD8F38(v20);
        v23 = swift_unknownObjectRetain();
        v24 = v20(v23, sub_1B7C88DF4, v1);
        sub_1B7AE15D4(v20);
        swift_unknownObjectRelease();

        v25 = *v6;
        *v6 = v24;
        swift_unknownObjectRelease();
      }
    }

    v26 = v1[6];
    os_unfair_lock_lock((v26 + 32));
    sub_1B7C85434((v26 + 16), v6, v1, sub_1B7C88DF4, &unk_1F2FA5C38);
    os_unfair_lock_unlock((v26 + 32));

    v4 = *v6;
    swift_unknownObjectRetain();
  }

  return v4;
}

uint64_t sub_1B7C872A0(uint64_t a1)
{
  if (qword_1EBA51628 != -1)
  {
    a1 = swift_once();
  }

  v1 = off_1EBA53010;
  v2 = *(off_1EBA53010 + 6);
  MEMORY[0x1EEE9AC00](a1);
  sub_1B7C107FC(&qword_1EBA526F8, &unk_1B7D0CE80);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);

  os_unfair_lock_lock((v2 + 32));
  sub_1B7AFAE5C((v2 + 16), v28);
  os_unfair_lock_unlock((v2 + 32));

  v4 = v28[0];
  if (!v28[0])
  {
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    v6 = (v5 + 16);
    v7 = swift_beginAccess();
    v8 = v1[3];
    v9 = (v1[2])(v7);

    v9(sub_1B7C890F4, v5);

    v10 = v5;

    v12 = v1[4];
    if (v12)
    {
      v13 = v1[5];
      v14 = *v6;

      sub_1B7AD8F38(v12);
      v15 = swift_unknownObjectRetain();
      v16 = v12(v15, sub_1B7C890A4, v1);
      sub_1B7AE15D4(v12);
      swift_unknownObjectRelease();

      v17 = *v6;
      *v6 = v16;
      v11 = swift_unknownObjectRelease();
    }

    if (!*v6)
    {
      v18 = v1[3];
      v19 = (v1[2])(v11);

      v19(sub_1B7C890F4, v10);

      v20 = v1[4];
      if (v20)
      {
        v21 = v1[5];
        v22 = *v6;

        sub_1B7AD8F38(v20);
        v23 = swift_unknownObjectRetain();
        v24 = v20(v23, sub_1B7C890A4, v1);
        sub_1B7AE15D4(v20);
        swift_unknownObjectRelease();

        v25 = *v6;
        *v6 = v24;
        swift_unknownObjectRelease();
      }
    }

    v26 = v1[6];
    os_unfair_lock_lock((v26 + 32));
    sub_1B7C85434((v26 + 16), v6, v1, sub_1B7C88D3C, &unk_1F2FA5AA8);
    os_unfair_lock_unlock((v26 + 32));

    v4 = *v6;
    swift_unknownObjectRetain();
  }

  return v4;
}

uint64_t sub_1B7C8762C(uint64_t a1)
{
  if (qword_1EBA51630 != -1)
  {
    a1 = swift_once();
  }

  v1 = off_1EBA53018;
  v2 = *(off_1EBA53018 + 6);
  MEMORY[0x1EEE9AC00](a1);
  sub_1B7C107FC(&qword_1EBA526F8, &unk_1B7D0CE80);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);

  os_unfair_lock_lock((v2 + 32));
  sub_1B7AFAE5C((v2 + 16), v28);
  os_unfair_lock_unlock((v2 + 32));

  v4 = v28[0];
  if (!v28[0])
  {
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    v6 = (v5 + 16);
    v7 = swift_beginAccess();
    v8 = v1[3];
    v9 = (v1[2])(v7);

    v9(sub_1B7C890F4, v5);

    v10 = v5;

    v12 = v1[4];
    if (v12)
    {
      v13 = v1[5];
      v14 = *v6;

      sub_1B7AD8F38(v12);
      v15 = swift_unknownObjectRetain();
      v16 = v12(v15, sub_1B7C88D3C, v1);
      sub_1B7AE15D4(v12);
      swift_unknownObjectRelease();

      v17 = *v6;
      *v6 = v16;
      v11 = swift_unknownObjectRelease();
    }

    if (!*v6)
    {
      v18 = v1[3];
      v19 = (v1[2])(v11);

      v19(sub_1B7C890F4, v10);

      v20 = v1[4];
      if (v20)
      {
        v21 = v1[5];
        v22 = *v6;

        sub_1B7AD8F38(v20);
        v23 = swift_unknownObjectRetain();
        v24 = v20(v23, sub_1B7C88D3C, v1);
        sub_1B7AE15D4(v20);
        swift_unknownObjectRelease();

        v25 = *v6;
        *v6 = v24;
        swift_unknownObjectRelease();
      }
    }

    v26 = v1[6];
    os_unfair_lock_lock((v26 + 32));
    sub_1B7C85434((v26 + 16), v6, v1, sub_1B7C88D3C, &unk_1F2FA5AA8);
    os_unfair_lock_unlock((v26 + 32));

    v4 = *v6;
    swift_unknownObjectRetain();
  }

  return v4;
}

uint64_t sub_1B7C879B8(uint64_t a1)
{
  if (qword_1EBA50DB8 != -1)
  {
    a1 = swift_once();
  }

  v1 = off_1EBA50DC0;
  v2 = *(off_1EBA50DC0 + 6);
  MEMORY[0x1EEE9AC00](a1);
  sub_1B7C107FC(&qword_1EBA526F0, &unk_1B7D0CE70);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);

  os_unfair_lock_lock((v2 + 32));
  sub_1B7AFAE5C((v2 + 16), v28);
  os_unfair_lock_unlock((v2 + 32));

  v4 = v28[0];
  if (!v28[0])
  {
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    v6 = (v5 + 16);
    v7 = swift_beginAccess();
    v8 = v1[3];
    v9 = (v1[2])(v7);

    v9(sub_1B7C890F4, v5);

    v10 = v5;

    v12 = v1[4];
    if (v12)
    {
      v13 = v1[5];
      v14 = *v6;

      sub_1B7AD8F38(v12);
      v15 = swift_unknownObjectRetain();
      v16 = v12(v15, sub_1B7C890A0, v1);
      sub_1B7AE15D4(v12);
      swift_unknownObjectRelease();

      v17 = *v6;
      *v6 = v16;
      v11 = swift_unknownObjectRelease();
    }

    if (!*v6)
    {
      v18 = v1[3];
      v19 = (v1[2])(v11);

      v19(sub_1B7C890F4, v10);

      v20 = v1[4];
      if (v20)
      {
        v21 = v1[5];
        v22 = *v6;

        sub_1B7AD8F38(v20);
        v23 = swift_unknownObjectRetain();
        v24 = v20(v23, sub_1B7C890A0, v1);
        sub_1B7AE15D4(v20);
        swift_unknownObjectRelease();

        v25 = *v6;
        *v6 = v24;
        swift_unknownObjectRelease();
      }
    }

    v26 = v1[6];
    os_unfair_lock_lock((v26 + 32));
    sub_1B7C85434((v26 + 16), v6, v1, sub_1B7C88C5C, &unk_1F2F9F938);
    os_unfair_lock_unlock((v26 + 32));

    v4 = *v6;
    swift_unknownObjectRetain();
  }

  return v4;
}

uint64_t sub_1B7C87D44(uint64_t a1)
{
  if (qword_1EBA50D10 != -1)
  {
    a1 = swift_once();
  }

  v1 = off_1EBA50D18;
  v2 = *(off_1EBA50D18 + 6);
  MEMORY[0x1EEE9AC00](a1);
  sub_1B7C107FC(&qword_1EBA526F0, &unk_1B7D0CE70);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);

  os_unfair_lock_lock((v2 + 32));
  sub_1B7AFAE5C((v2 + 16), v28);
  os_unfair_lock_unlock((v2 + 32));

  v4 = v28[0];
  if (!v28[0])
  {
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    v6 = (v5 + 16);
    v7 = swift_beginAccess();
    v8 = v1[3];
    v9 = (v1[2])(v7);

    v9(sub_1B7C890F4, v5);

    v10 = v5;

    v12 = v1[4];
    if (v12)
    {
      v13 = v1[5];
      v14 = *v6;

      sub_1B7AD8F38(v12);
      v15 = swift_unknownObjectRetain();
      v16 = v12(v15, sub_1B7C88C5C, v1);
      sub_1B7AE15D4(v12);
      swift_unknownObjectRelease();

      v17 = *v6;
      *v6 = v16;
      v11 = swift_unknownObjectRelease();
    }

    if (!*v6)
    {
      v18 = v1[3];
      v19 = (v1[2])(v11);

      v19(sub_1B7C890F4, v10);

      v20 = v1[4];
      if (v20)
      {
        v21 = v1[5];
        v22 = *v6;

        sub_1B7AD8F38(v20);
        v23 = swift_unknownObjectRetain();
        v24 = v20(v23, sub_1B7C88C5C, v1);
        sub_1B7AE15D4(v20);
        swift_unknownObjectRelease();

        v25 = *v6;
        *v6 = v24;
        swift_unknownObjectRelease();
      }
    }

    v26 = v1[6];
    os_unfair_lock_lock((v26 + 32));
    sub_1B7C85434((v26 + 16), v6, v1, sub_1B7C88C5C, &unk_1F2F9F938);
    os_unfair_lock_unlock((v26 + 32));

    v4 = *v6;
    swift_unknownObjectRetain();
  }

  return v4;
}

unint64_t type metadata accessor for IMDPersistenceService()
{
  result = qword_1EBA50CF0;
  if (!qword_1EBA50CF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA50CF0);
  }

  return result;
}

void sub_1B7C8811C(uint64_t a1)
{
  v2 = [objc_opt_self() currentConnection];
  if (v2)
  {
    v3 = v2;
    [v2 auditToken];
    if (__IMDPersistenceCheckEntitlements(&v14, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = [objc_allocWithZone(IMDPersistentTaskQueryProvider) init];
      (*(a1 + 16))(a1, v4);
    }

    else
    {
      if (qword_1EDBE3808 != -1)
      {
        swift_once();
      }

      v10 = sub_1B7CFE420();
      sub_1B7AD9040(v10, qword_1EDBE79D0);
      v4 = v3;
      v11 = sub_1B7CFE400();
      v12 = sub_1B7CFEEF0();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 67109120;
        *(v13 + 4) = [v4 processIdentifier];

        _os_log_impl(&dword_1B7AD5000, v11, v12, "PTask provider request from %d denied, lacks entitlements", v13, 8u);
        MEMORY[0x1B8CB0E70](v13, -1, -1);
      }

      else
      {

        v11 = v4;
      }

      (*(a1 + 16))(a1, 0);
    }
  }

  else
  {
    if (qword_1EDBE3808 != -1)
    {
      swift_once();
    }

    v5 = sub_1B7CFE420();
    sub_1B7AD9040(v5, qword_1EDBE79D0);
    v6 = sub_1B7CFE400();
    v7 = sub_1B7CFEEF0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1B7AD5000, v6, v7, "No current NSXPCConnection", v8, 2u);
      MEMORY[0x1B8CB0E70](v8, -1, -1);
    }

    v9 = *(a1 + 16);

    v9(a1, 0);
  }
}

void sub_1B7C883CC(uint64_t a1)
{
  v2 = [objc_opt_self() currentConnection];
  if (v2)
  {
    v3 = v2;
    [v2 auditToken];
    if (__IMDPersistenceCheckEntitlements(&v18, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = [objc_opt_self() sharedFeatureFlags];
      v5 = [v4 isSpotlightRefactorEnabled];

      if (v5)
      {
        v6 = [objc_opt_self() sharedController];
      }

      else
      {
        v6 = [objc_opt_self() sharedProvider];
      }

      v17 = v6;
      (*(a1 + 16))(a1, v17);
    }

    else
    {
      if (qword_1EDBE3808 != -1)
      {
        swift_once();
      }

      v12 = sub_1B7CFE420();
      sub_1B7AD9040(v12, qword_1EDBE79D0);
      v13 = v3;
      v14 = sub_1B7CFE400();
      v15 = sub_1B7CFEEF0();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 67109120;
        *(v16 + 4) = [v13 processIdentifier];

        _os_log_impl(&dword_1B7AD5000, v14, v15, "PTask provider request from %d denied, lacks entitlements", v16, 8u);
        MEMORY[0x1B8CB0E70](v16, -1, -1);
      }

      else
      {

        v14 = v13;
      }

      (*(a1 + 16))(a1, 0);
    }
  }

  else
  {
    if (qword_1EDBE3808 != -1)
    {
      swift_once();
    }

    v7 = sub_1B7CFE420();
    sub_1B7AD9040(v7, qword_1EDBE79D0);
    v8 = sub_1B7CFE400();
    v9 = sub_1B7CFEEF0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1B7AD5000, v8, v9, "No current NSXPCConnection", v10, 2u);
      MEMORY[0x1B8CB0E70](v10, -1, -1);
    }

    v11 = *(a1 + 16);

    v11(a1, 0);
  }
}

void sub_1B7C886E4(uint64_t a1, uint64_t *a2, SEL *a3)
{
  v6 = [objc_opt_self() currentConnection];
  if (v6)
  {
    v7 = v6;
    [v6 auditToken];
    if (__IMDPersistenceCheckEntitlements(&v19, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = *a2;
      v9 = [objc_opt_self() *a3];
      (*(a1 + 16))(a1, v9);
    }

    else
    {
      if (qword_1EDBE3808 != -1)
      {
        swift_once();
      }

      v15 = sub_1B7CFE420();
      sub_1B7AD9040(v15, qword_1EDBE79D0);
      v9 = v7;
      v16 = sub_1B7CFE400();
      v17 = sub_1B7CFEEF0();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 67109120;
        *(v18 + 4) = [v9 processIdentifier];

        _os_log_impl(&dword_1B7AD5000, v16, v17, "PTask provider request from %d denied, lacks entitlements", v18, 8u);
        MEMORY[0x1B8CB0E70](v18, -1, -1);
      }

      else
      {

        v16 = v9;
      }

      (*(a1 + 16))(a1, 0);
    }
  }

  else
  {
    if (qword_1EDBE3808 != -1)
    {
      swift_once();
    }

    v10 = sub_1B7CFE420();
    sub_1B7AD9040(v10, qword_1EDBE79D0);
    v11 = sub_1B7CFE400();
    v12 = sub_1B7CFEEF0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1B7AD5000, v11, v12, "No current NSXPCConnection", v13, 2u);
      MEMORY[0x1B8CB0E70](v13, -1, -1);
    }

    v14 = *(a1 + 16);

    v14(a1, 0);
  }
}

void sub_1B7C8899C(uint64_t a1)
{
  v2 = [objc_opt_self() currentConnection];
  if (v2)
  {
    v3 = v2;
    [v2 auditToken];
    if (__IMDPersistenceCheckEntitlements(&v15, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = [objc_opt_self() database];
      (*(a1 + 16))(a1, v4);

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1EDBE3808 != -1)
      {
        swift_once();
      }

      v10 = sub_1B7CFE420();
      sub_1B7AD9040(v10, qword_1EDBE79D0);
      v11 = v3;
      v12 = sub_1B7CFE400();
      v13 = sub_1B7CFEEF0();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 67109120;
        *(v14 + 4) = [v11 processIdentifier];

        _os_log_impl(&dword_1B7AD5000, v12, v13, "Database provider request from %d denied, lacks entitlements", v14, 8u);
        MEMORY[0x1B8CB0E70](v14, -1, -1);
      }

      else
      {

        v12 = v11;
      }

      (*(a1 + 16))(a1, 0);
    }
  }

  else
  {
    if (qword_1EDBE3808 != -1)
    {
      swift_once();
    }

    v5 = sub_1B7CFE420();
    sub_1B7AD9040(v5, qword_1EDBE79D0);
    v6 = sub_1B7CFE400();
    v7 = sub_1B7CFEEF0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1B7AD5000, v6, v7, "No current NSXPCConnection", v8, 2u);
      MEMORY[0x1B8CB0E70](v8, -1, -1);
    }

    v9 = *(a1 + 16);

    v9(a1, 0);
  }
}

uint64_t sub_1B7C88CCC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B7C88F5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B7C890FC()
{
  v0 = sub_1B7CFE420();
  sub_1B7AED154(v0, qword_1EBA50EE0);
  sub_1B7AD9040(v0, qword_1EBA50EE0);
  sub_1B7CFE3F0();
  return sub_1B7CFE410();
}

uint64_t sub_1B7C89194(uint64_t a1)
{
  v2 = 0xD000000000000017;
  v3 = sub_1B7C107FC(&qword_1EBA52030, &unk_1B7D13080);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v39 = &v28 - v5;
  v6 = sub_1B7C107FC(&qword_1EBA52038, &qword_1B7D0AD18);
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - v8;
  v10 = sub_1B7C107FC(&qword_1EBA52040, &qword_1B7D13090);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - v13;
  v15 = a1;
  v16 = v45;
  result = sub_1B7AE3B2C(0xD000000000000035, 0x80000001B7D56CF0, 0);
  if (!v16)
  {
    v18 = result;
    v36 = 0x80000001B7D56CF0;
    v31 = v11;
    v38 = v15;
    v29 = v6;
    v40 = v14;
    v41 = v10;
    v45 = v9;
    v19 = MEMORY[0x1E69E7CC0];
    v42[0] = MEMORY[0x1E69E7CC0];

    sub_1B7AF1A7C(v19, v18, v42, v18);

    v20 = v42[0];
    v30 = *(v42[0] + 16);
    if (v30)
    {
      v21 = 0;
      v35 = "IMDMessageQueryStrings";
      v36 = 0x80000001B7D56D30;
      v33 = (v37 + 32);
      v34 = (v37 + 48);
      ++v31;
      v32 = (v37 + 8);
      v22 = (v42[0] + 40);
      v23 = v29;
      while (v21 < *(v20 + 16))
      {
        v24 = *(v22 - 1);
        v25 = *v22;
        v43 = 0xD000000000000017;
        v44 = v36;

        sub_1B7CFE310();
        v2 = v39;
        sub_1B7CFE320();
        if ((*v34)(v2, 1, v23) == 1)
        {
          goto LABEL_19;
        }

        (*v33)(v45, v2, v23);
        swift_getKeyPath();
        sub_1B7CFE330();

        if ((v25 & 0x2000000000000000) != 0)
        {
          v26 = HIBYTE(v25) & 0xF;
        }

        else
        {
          v26 = v24 & 0xFFFFFFFFFFFFLL;
        }

        if (v42[2] == v24 && v42[3] == v25 && !(v42[0] >> 16) && v42[1] >> 16 == v26)
        {

          (*v32)(v45, v23);
        }

        else
        {
          v27 = sub_1B7CFF560();

          (*v32)(v45, v23);
          if ((v27 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        (*v31)(v40, v41);
        MEMORY[0x1B8CADCA0](v24, v25);

        sub_1B7AE3B2C(v43, v44, 0);
        sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
        ++v21;

        v22 += 2;
        v2 = 0xD000000000000017;
        if (v30 == v21)
        {
        }
      }

      __break(1u);

      (*(v37 + 56))(0xD000000000000017, 1, 1, v23);
LABEL_19:
      sub_1B7AEE190(v2, &qword_1EBA52030, &unk_1B7D13080);
LABEL_20:
      result = sub_1B7CFF340();
      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1B7C89794(uint64_t a1)
{
  v2 = sub_1B7CFDFF0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SQLConnectionConfiguration();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  v15 = *(v14 + 36);
  v16 = sub_1B7CFE420();
  (*(*(v16 - 8) + 56))(&v13[v15], 1, 1, v16);
  *v13 = 1;
  *(v13 + 1) = 0;
  *(v13 + 8) = 1;
  (*(v3 + 16))(v6, a1, v2);
  sub_1B7AE3EA4(v13, v10);
  v17 = v28;
  v18 = sub_1B7CA69E0(v6, v10);
  if (!v17)
  {
    v20 = v18;
    sub_1B7C89194(v18);
    v26 = v20;
    v27 = 1;

    sub_1B7CBD01C();
    v24 = v20;
    v25 = 1;
    sub_1B7CD3FA4();
    if (qword_1EBA50ED8 != -1)
    {
      swift_once();
    }

    sub_1B7AD9040(v16, qword_1EBA50EE0);
    v21 = sub_1B7CFE400();
    v22 = sub_1B7CFEF00();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1B7AD5000, v21, v22, "Migration trial success", v23, 2u);
      MEMORY[0x1B8CB0E70](v23, -1, -1);
    }
  }

  return sub_1B7AE3F08(v13);
}

void sub_1B7C89A94(void *a1)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_self() sharedInstance];
  v3 = sub_1B7CFEA30();
  v4 = sub_1B7CFEA30();
  v5 = [v2 getBoolFromDomain:v3 forKey:v4];

  if ((v5 & 1) == 0)
  {
    if (qword_1EBA50ED8 != -1)
    {
      swift_once();
    }

    v6 = sub_1B7CFE420();
    sub_1B7AD9040(v6, qword_1EBA50EE0);
    v7 = sub_1B7CFE400();
    v8 = sub_1B7CFEF00();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1B7AD5000, v7, v8, "Removing trial.db", v9, 2u);
      MEMORY[0x1B8CB0E70](v9, -1, -1);
    }

    v10 = sub_1B7CFDF40();
    v28[0] = 0;
    v11 = [a1 removeItemAtURL:v10 error:v28];

    if (v11)
    {
      v12 = v28[0];
    }

    else
    {
      v13 = v28[0];
      v14 = sub_1B7CFDEC0();

      swift_willThrow();
    }

    v15 = sub_1B7CFDF40();
    v28[0] = 0;
    v16 = [a1 removeItemAtURL:v15 error:v28];

    if (v16)
    {
      v17 = v28[0];
    }

    else
    {
      v18 = v28[0];
      v19 = sub_1B7CFDEC0();

      swift_willThrow();
    }

    v20 = sub_1B7CFDF40();
    v28[0] = 0;
    v21 = [a1 removeItemAtURL:v20 error:v28];

    if (v21)
    {
      v22 = v28[0];
    }

    else
    {
      v23 = v28[0];
      v24 = sub_1B7CFDEC0();

      swift_willThrow();
    }

    v25 = sub_1B7CFEA30();
    v26 = sub_1B7CFEA30();
    IMSetDomainIntForKey();
  }

  v27 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7C89DD4(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B7CFEB40();

    return sub_1B7CFEC40();
  }

  return result;
}

void sub_1B7C89E70(void *a1)
{
  v1 = a1;
  sub_1B7C107FC(&qword_1EBA51FC0, &qword_1B7D0A700);
  sub_1B7CFEAB0();
  v2 = sub_1B7C89DD4(4096);
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v52 = v2;
  v53 = v4;
  v54 = v6;
  v55 = v8;
  if (qword_1EBA50ED8 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v9 = sub_1B7CFE420();
    sub_1B7AD9040(v9, qword_1EBA50EE0);
    v10 = sub_1B7CFE400();
    v11 = sub_1B7CFEF00();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1B7AD5000, v10, v11, "Migration error:", v12, 2u);
      MEMORY[0x1B8CB0E70](v12, -1, -1);
    }

    swift_beginAccess();

    v13 = sub_1B7CFF020();

    if (v13 < 1025)
    {
      break;
    }

    while (1)
    {
      v14 = sub_1B7CFE400();
      v15 = sub_1B7CFEF00();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v51 = v17;
        *v16 = 136315138;

        v18 = sub_1B7CFF000();
        if (v19)
        {
          v20 = v4;
        }

        else
        {
          v20 = v18;
        }

        if (v20 >> 14 < v2 >> 14)
        {
          goto LABEL_21;
        }

        v49 = v15;
        v21 = sub_1B7CFF030();
        log = v14;
        v23 = v22;
        v24 = v6;
        v26 = v25;
        v28 = v27;

        v29 = v26;
        v6 = v24;
        v30 = MEMORY[0x1B8CADC20](v21, v23, v29, v28);
        v32 = v31;

        v33 = sub_1B7AED1B8(v30, v32, &v51);

        *(v16 + 4) = v33;
        v14 = log;
        _os_log_impl(&dword_1B7AD5000, log, v49, " %s", v16, 0xCu);
        sub_1B7AE9168(v17);
        MEMORY[0x1B8CB0E70](v17, -1, -1);
        MEMORY[0x1B8CB0E70](v16, -1, -1);
      }

      v34 = sub_1B7CFF000();
      if (v35)
      {
        v34 = v4;
      }

      if (v4 >> 14 < v34 >> 14)
      {
        break;
      }

      v2 = sub_1B7CFF030();
      v4 = v36;
      v6 = v37;
      v39 = v38;

      v52 = v2;
      v53 = v4;
      v54 = v6;
      v55 = v39;

      v40 = sub_1B7CFF020();

      v8 = v39;
      if (v40 <= 1024)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
  }

  v39 = v8;
LABEL_17:
  v41 = sub_1B7CFE400();
  v42 = sub_1B7CFEF00();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v51 = v44;
    *v43 = 136315138;

    v45 = MEMORY[0x1B8CADC20](v2, v4, v6, v39);
    v47 = v46;

    v48 = sub_1B7AED1B8(v45, v47, &v51);

    *(v43 + 4) = v48;
    _os_log_impl(&dword_1B7AD5000, v41, v42, " %s", v43, 0xCu);
    sub_1B7AE9168(v44);
    MEMORY[0x1B8CB0E70](v44, -1, -1);
    MEMORY[0x1B8CB0E70](v43, -1, -1);
  }
}

void _sSo21IMDLegacyRecordBridgeC14IMDPersistenceE17runMigrationTrialyyFZ_0()
{
  v125[2] = *MEMORY[0x1E69E9840];
  v0 = sub_1B7CFDEE0();
  v120 = *(v0 - 8);
  v1 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v113 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B7CFDFF0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v123 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v124 = (&v113 - v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v113 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v113 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v113 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v113 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v121 = &v113 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v122 = &v113 - v25;
  v26 = [objc_opt_self() sharedInstance];
  if (!v26)
  {
    __break(1u);
  }

  v27 = v26;
  v28 = [v26 isInternalInstall];

  if (!v28)
  {
    goto LABEL_41;
  }

  v29 = [objc_opt_self() sharedFeatureFlags];
  v30 = [v29 _isOneChatOptedOut];

  if (!v30)
  {
    goto LABEL_41;
  }

  v119 = v12;
  v31 = sub_1B7CFEA30();
  v32 = sub_1B7CFEA30();
  v33 = IMGetDomainIntForKey();

  if (v33 <= 4)
  {
    v118 = [objc_opt_self() defaultManager];
    v34 = IMMessagesDatabaseURL();
    sub_1B7CFDFB0();

    v35 = IMMessagesDatabaseURL();
    sub_1B7CFDFB0();

    sub_1B7CFDF50();
    v36 = *(v5 + 8);
    v117 = v5 + 8;
    v36(v18, v4);
    sub_1B7CFDF70();
    v36(v21, v4);
    v37 = IMMessagesDatabaseURL();
    sub_1B7CFDFB0();

    sub_1B7CFDF50();
    v36(v18, v4);
    v114 = v15;
    sub_1B7CFDF70();
    v36(v21, v4);
    v38 = IMSMSDirectoryURL();
    sub_1B7CFDFB0();

    strcpy(v125, "trial.db");
    BYTE1(v125[1]) = 0;
    WORD1(v125[1]) = 0;
    HIDWORD(v125[1]) = -402653184;
    v39 = *MEMORY[0x1E6968F70];
    v40 = v120;
    v41 = *(v120 + 104);
    v41(v3, v39, v0);
    v115 = sub_1B7C4BFF0();
    sub_1B7CFDFE0();
    v116 = v4;
    v42 = *(v40 + 8);
    v42(v3, v0);
    v36(v21, v116);
    v43 = IMSMSDirectoryURL();
    sub_1B7CFDFB0();

    strcpy(v125, "trial.db-shm");
    BYTE5(v125[1]) = 0;
    HIWORD(v125[1]) = -5120;
    v41(v3, v39, v0);
    sub_1B7CFDFE0();
    v42(v3, v0);
    v36(v21, v116);
    v44 = IMSMSDirectoryURL();
    sub_1B7CFDFB0();

    strcpy(v125, "trial.db-wal");
    BYTE5(v125[1]) = 0;
    HIWORD(v125[1]) = -5120;
    v41(v3, v39, v0);
    sub_1B7CFDFE0();
    v42(v3, v0);
    v45 = v116;
    v36(v21, v116);
    if (qword_1EBA50ED8 != -1)
    {
      swift_once();
    }

    v46 = sub_1B7CFE420();
    sub_1B7AD9040(v46, qword_1EBA50EE0);
    v47 = sub_1B7CFE400();
    v48 = sub_1B7CFEF00();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1B7AD5000, v47, v48, "Removing trial.db if already present", v49, 2u);
      MEMORY[0x1B8CB0E70](v49, -1, -1);
    }

    v50 = sub_1B7CFDF40();
    v125[0] = 0;
    v51 = v118;
    v52 = [v118 removeItemAtURL:v50 error:v125];

    if (v52)
    {
      v53 = v125[0];
    }

    else
    {
      v59 = v125[0];
      v60 = sub_1B7CFDEC0();

      swift_willThrow();
    }

    v61 = sub_1B7CFDF40();
    v125[0] = 0;
    v62 = [v51 removeItemAtURL:v61 error:v125];

    if (v62)
    {
      v63 = v125[0];
    }

    else
    {
      v64 = v125[0];
      v65 = sub_1B7CFDEC0();

      swift_willThrow();
    }

    v66 = sub_1B7CFDF40();
    v125[0] = 0;
    v67 = [v118 removeItemAtURL:v66 error:v125];

    if (v67)
    {
      v68 = v125[0];
    }

    else
    {
      v69 = v125[0];
      v70 = sub_1B7CFDEC0();

      swift_willThrow();
    }

    v71 = sub_1B7CFE400();
    v72 = sub_1B7CFEF00();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_1B7AD5000, v71, v72, "Copying sms.db to trial.db", v73, 2u);
      MEMORY[0x1B8CB0E70](v73, -1, -1);
    }

    v74 = sub_1B7CFDF40();
    v75 = sub_1B7CFDF40();
    v125[0] = 0;
    v76 = v118;
    v77 = [v118 copyItemAtURL:v74 toURL:v75 error:v125];

    if (v77)
    {
      v78 = v125[0];
      v79 = sub_1B7CFDF40();
      v80 = sub_1B7CFDF40();
      v125[0] = 0;
      v81 = [v76 copyItemAtURL:v79 toURL:v80 error:v125];

      if (v81)
      {
        v82 = v125[0];
      }

      else
      {
        v95 = v125[0];
        v96 = sub_1B7CFDEC0();

        swift_willThrow();
      }

      v97 = sub_1B7CFDF40();
      v98 = sub_1B7CFDF40();
      v125[0] = 0;
      v99 = [v118 copyItemAtURL:v97 toURL:v98 error:v125];

      v100 = v124;
      if (v99)
      {
        v101 = v125[0];
      }

      else
      {
        v102 = v125[0];
        v103 = sub_1B7CFDEC0();

        swift_willThrow();
      }

      v104 = sub_1B7CFE400();
      v105 = sub_1B7CFEF00();
      v106 = os_log_type_enabled(v104, v105);
      v107 = v114;
      if (v106)
      {
        v108 = swift_slowAlloc();
        *v108 = 0;
        _os_log_impl(&dword_1B7AD5000, v104, v105, "Running trial migration", v108, 2u);
        MEMORY[0x1B8CB0E70](v108, -1, -1);
      }

      v109 = v119;
      sub_1B7C89794(v119);
      v110 = v118;
      v111 = v123;
      sub_1B7C89A94(v118);

      v36(v111, v45);
      v36(v100, v45);
      v36(v109, v45);
      v94 = v107;
    }

    else
    {
      v83 = v125[0];
      v84 = sub_1B7CFDEC0();

      swift_willThrow();
      v85 = v84;
      v86 = sub_1B7CFE400();
      v87 = sub_1B7CFEEF0();

      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = v36;
        v90 = swift_slowAlloc();
        *v88 = 138412290;
        v91 = v84;
        v92 = _swift_stdlib_bridgeErrorToNSError();
        *(v88 + 4) = v92;
        *v90 = v92;
        _os_log_impl(&dword_1B7AD5000, v86, v87, "Could not start trial, but space may be unavailable: %@", v88, 0xCu);
        sub_1B7AEE190(v90, &qword_1EBA521E0, &unk_1B7D0CE60);
        v93 = v90;
        v36 = v89;
        MEMORY[0x1B8CB0E70](v93, -1, -1);
        MEMORY[0x1B8CB0E70](v88, -1, -1);
      }

      v36(v123, v45);
      v36(v124, v45);
      v36(v119, v45);
      v94 = v114;
    }

    v36(v94, v45);
    v36(v121, v45);
    v36(v122, v45);
LABEL_41:
    v112 = *MEMORY[0x1E69E9840];
    return;
  }

  if (qword_1EBA50ED8 != -1)
  {
    swift_once();
  }

  v54 = sub_1B7CFE420();
  sub_1B7AD9040(v54, qword_1EBA50EE0);
  v124 = sub_1B7CFE400();
  v55 = sub_1B7CFEED0();
  if (os_log_type_enabled(v124, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_1B7AD5000, v124, v55, "Skipping trial, already performed latest version", v56, 2u);
    MEMORY[0x1B8CB0E70](v56, -1, -1);
  }

  v57 = *MEMORY[0x1E69E9840];
  v58 = v124;
}

uint64_t sub_1B7C8B144(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 344);
  if (v3 >> 62)
  {
LABEL_18:
    v4 = sub_1B7CFF120();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

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
LABEL_13:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_18;
        }

        v6 = *(v3 + 8 * v5 + 32);

        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }
      }

      if (*(v6 + 16) == v2)
      {

        return v6;
      }

      ++v5;
    }

    while (v7 != v4);
  }

  return 0;
}

uint64_t sub_1B7C8B264(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 344);
  if (v5 >> 62)
  {
LABEL_54:
    v6 = sub_1B7CFF120();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1B8CAE380](v7, v5);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_48:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_54;
        }

        v8 = *(v5 + 8 * v7 + 32);

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_48;
        }
      }

      v10 = *(v8 + 16);
      v11 = 0xD000000000000017;
      v12 = 0xD00000000000001DLL;
      if (v10 == 8)
      {
        v12 = 0xD000000000000010;
      }

      v13 = 0x80000001B7D4E2C0;
      if (v10 == 8)
      {
        v13 = 0x80000001B7D4E2A0;
      }

      if (v10 != 7)
      {
        v11 = v12;
      }

      v15 = 0x80000001B7D4E260;
      v14 = 0x80000001B7D4E280;
      if (v10 != 7)
      {
        v14 = v13;
      }

      if (v10 == 5)
      {
        v16 = 0xD000000000000011;
      }

      else
      {
        v16 = 0xD000000000000010;
      }

      if (v10 == 5)
      {
        v15 = 0x80000001B7D4E240;
      }

      if (*(v8 + 16) <= 6u)
      {
        v11 = v16;
        v14 = v15;
      }

      v17 = 0x656D686361747461;
      if (v10 != 3)
      {
        v17 = 0x656C646E6168;
      }

      v18 = 0xEA0000000000746ELL;
      if (v10 != 3)
      {
        v18 = 0xE600000000000000;
      }

      if (v10 == 2)
      {
        v17 = 0x6567617373656DLL;
      }

      v19 = 0xE700000000000000;
      if (v10 == 2)
      {
        v18 = 0xE700000000000000;
      }

      v20 = 0x6E776F6E6B6E75;
      if (*(v8 + 16))
      {
        v20 = 1952540771;
        v19 = 0xE400000000000000;
      }

      if (*(v8 + 16) <= 1u)
      {
        v17 = v20;
        v18 = v19;
      }

      if (*(v8 + 16) <= 4u)
      {
        v21 = v17;
      }

      else
      {
        v21 = v11;
      }

      if (*(v8 + 16) <= 4u)
      {
        v22 = v18;
      }

      else
      {
        v22 = v14;
      }

      if (v21 == a1 && v22 == a2)
      {

LABEL_51:

        return v8;
      }

      v23 = sub_1B7CFF590();

      if (v23)
      {
        goto LABEL_51;
      }

      ++v7;
    }

    while (v9 != v6);
  }

  return 0;
}

uint64_t sub_1B7C8B514()
{
  swift_beginAccess();

  MEMORY[0x1B8CADDF0](v1);
  if (*((*(v0 + 344) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 344) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v3 = *((*(v0 + 344) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1B7CFED00();
  }

  sub_1B7CFED40();
  return swift_endAccess();
}

unint64_t static DatabaseInspectionReport.tableName(fromTableKey:)(_BYTE *a1)
{
  v1 = *a1;
  if (v1 > 4)
  {
    v6 = 0xD000000000000017;
    v7 = 0xD00000000000001DLL;
    if (v1 == 8)
    {
      v7 = 0xD000000000000010;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000011;
    if (v1 != 5)
    {
      v8 = 0xD000000000000010;
    }

    if (*a1 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6E776F6E6B6E75;
    v3 = 0x6567617373656DLL;
    v4 = 0x656D686361747461;
    if (v1 != 3)
    {
      v4 = 0x656C646E6168;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*a1)
    {
      v2 = 1952540771;
    }

    if (*a1 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

char static DatabaseInspectionReport.tableKey(fromName:)@<W0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (qword_1EBA51600 != -1)
  {
    v7 = a1;
    v8 = a2;
    swift_once();
    a1 = v7;
    a2 = v8;
  }

  v4 = off_1EBA52EA8;
  v5 = *(off_1EBA52EA8 + 2);
  if (v5)
  {
    a1 = sub_1B7AE11D0(a1, a2);
    if (v6)
    {
      LOBYTE(a1) = DatabaseTableInspectionReport.TableKey.init(rawValue:)(*(v4[7] + a1));
      LOBYTE(v5) = v10;
      if (v10 == 10)
      {
        LOBYTE(v5) = 0;
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  *a3 = v5;
  return a1;
}

uint64_t sub_1B7C8B7B8(uint64_t a1)
{
  result = sub_1B7C219E4(0xD000000000000017, 0x80000001B7D56D50);
  v4 = *(a1 + 24);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  *(a1 + 24) = v6;
  sub_1B7C219E4(0, 0xE000000000000000);
  swift_beginAccess();
  v7 = *(v1 + 344);

  sub_1B7C800A4(v8, a1);

  result = sub_1B7C219E4(0, 0xE000000000000000);
  v9 = *(a1 + 24);
  v5 = __OFSUB__(v9, 1);
  v10 = v9 - 1;
  if (v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(a1 + 24) = v10;
  result = sub_1B7C219E4(0x3A73746E756F43, 0xE700000000000000);
  v11 = *(a1 + 24);
  v5 = __OFADD__(v11, 1);
  v12 = v11 + 1;
  if (v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(a1 + 24) = v12;
  result = sub_1B7C6A6CC(a1);
  v13 = *(a1 + 24);
  v5 = __OFSUB__(v13, 1);
  v14 = v13 - 1;
  if (v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = __OFSUB__(v14, 1);
  v15 = v14 - 1;
  if (!v5)
  {
    *(a1 + 24) = v15;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t DatabaseInspectionReport.__allocating_init(from:)(uint64_t *a1)
{
  *(swift_allocObject() + 344) = MEMORY[0x1E69E7CC0];
  sub_1B7AE90A8(a1, v4);
  v2 = StorageInspectionCountReport.init(from:)(v4);
  sub_1B7AE9168(a1);
  return v2;
}

uint64_t DatabaseInspectionReport.init(from:)(uint64_t *a1)
{
  *(v1 + 344) = MEMORY[0x1E69E7CC0];
  sub_1B7AE90A8(a1, v5);
  v3 = StorageInspectionCountReport.init(from:)(v5);
  sub_1B7AE9168(a1);
  return v3;
}

uint64_t DatabaseInspectionReport.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 344);

  return v0;
}

uint64_t DatabaseInspectionReport.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 344);

  return swift_deallocClassInstance();
}

uint64_t sub_1B7C8BB34(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v35 = MEMORY[0x1E69E7CC0];
  sub_1B7C31370(0, v1, 0);
  v2 = v35;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = sub_1B7CFF0E0();
  v7 = result;
  v8 = 0;
  v9 = *(v3 + 36);
  v29 = v3 + 72;
  v30 = v1;
  v31 = v9;
  v32 = v3 + 64;
  v33 = v3;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v34 = v8;
    v12 = (*(v3 + 48) + 16 * v7);
    v13 = *v12;
    v14 = v12[1];
    v15 = (*(v3 + 56) + 16 * v7);
    v17 = *v15;
    v16 = v15[1];
    sub_1B7C107FC(&unk_1EBA52600, &qword_1B7D0AA78);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1B7D0A6F0;
    v19 = MEMORY[0x1E69E6158];
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = &off_1F2FA8B58;
    *(v18 + 72) = v17;
    *(v18 + 32) = v13;
    *(v18 + 40) = v14;
    *(v18 + 96) = v19;
    *(v18 + 104) = &off_1F2FA8B58;
    *(v18 + 80) = v16;
    v21 = *(v35 + 16);
    v20 = *(v35 + 24);

    if (v21 >= v20 >> 1)
    {
      result = sub_1B7C31370((v20 > 1), v21 + 1, 1);
    }

    *(v35 + 16) = v21 + 1;
    *(v35 + 8 * v21 + 32) = v18;
    v3 = v33;
    v10 = 1 << *(v33 + 32);
    if (v7 >= v10)
    {
      goto LABEL_24;
    }

    v4 = v32;
    v22 = *(v32 + 8 * v11);
    if ((v22 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v9 = v31;
    if (v31 != *(v33 + 36))
    {
      goto LABEL_26;
    }

    v23 = v22 & (-2 << (v7 & 0x3F));
    if (v23)
    {
      v10 = __clz(__rbit64(v23)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v11 << 6;
      v25 = v11 + 1;
      v26 = (v29 + 8 * v11);
      while (v25 < (v10 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_1B7C8CB5C(v7, v31, 0);
          v10 = __clz(__rbit64(v27)) + v24;
          goto LABEL_4;
        }
      }

      result = sub_1B7C8CB5C(v7, v31, 0);
    }

LABEL_4:
    v8 = v34 + 1;
    v7 = v10;
    if (v34 + 1 == v30)
    {
      return v2;
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
LABEL_26:
  __break(1u);
  return result;
}

void *sub_1B7C8BDE8(void *result)
{
  v1 = result[2];
  if (!v1)
  {
    return result;
  }

  v2 = result + 4;
  v20 = result[4];

  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v5 = v2[v3];
    v6 = *(v5 + 16);
    v7 = v4[2];
    v8 = v7 + v6;
    if (__OFADD__(v7, v6))
    {
      break;
    }

    v9 = v2[v3];

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v8 <= v4[3] >> 1)
    {
      if (*(v5 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v7 <= v8)
      {
        v10 = v7 + v6;
      }

      else
      {
        v10 = v7;
      }

      result = sub_1B7AE3A9C(result, v10, 1, v4);
      v4 = result;
      if (*(v5 + 16))
      {
LABEL_14:
        if ((v4[3] >> 1) - v4[2] < v6)
        {
          goto LABEL_22;
        }

        sub_1B7C107FC(&qword_1EBA52460, &qword_1B7D113A0);
        swift_arrayInitWithCopy();

        if (v6)
        {
          v11 = v4[2];
          v12 = __OFADD__(v11, v6);
          v13 = v11 + v6;
          if (v12)
          {
            goto LABEL_23;
          }

          v4[2] = v13;
        }

        goto LABEL_4;
      }
    }

    if (v6)
    {
      goto LABEL_21;
    }

LABEL_4:
    if (v1 == ++v3)
    {
      sub_1B7AF3098(v4);
      sub_1B7AF7F10(0x3F, 0xE100000000000000, *(v20 + 16));
      sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
      sub_1B7AF7FAC();
      v14 = sub_1B7CFEA10();
      v16 = v15;

      MEMORY[0x1B8CADCA0](v14, v16);

      MEMORY[0x1B8CADCA0](41, 0xE100000000000000);
      sub_1B7AF7F10(0x28, 0xE100000000000000, v1);

      v17 = sub_1B7CFEA10();
      v19 = v18;

      MEMORY[0x1B8CADCA0](v17, v19);
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1B7C8C060(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void))
{
  v5 = sub_1B7AE3F68();
  v6 = sub_1B7C8C458(a2, v5);

  a3(v6, 0);
}

void sub_1B7C8C1CC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    type metadata accessor for IMDAttachmentMetadata(0);
    v5 = sub_1B7CFE980();
  }

  if (a2)
  {
    v6 = sub_1B7CFDEB0();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_1B7C8C278(uint64_t a1, void *a2, void (**a3)(void, void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  if (*(a1 + 16))
  {
    v7 = swift_allocObject();
    v7[2] = a2;
    v7[3] = a1;
    v7[4] = sub_1B7C8C444;
    v7[5] = v6;
    aBlock[4] = sub_1B7C8C44C;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B7AE14D0;
    aBlock[3] = &unk_1F2F9F960;
    v8 = _Block_copy(aBlock);
    _Block_copy(a3);
    v9 = a2;

    IMDPersistencePerformBlock(v8, 1, v10);
    _Block_release(v8);
  }

  else
  {
    _Block_copy(a3);
    sub_1B7C247AC(MEMORY[0x1E69E7CC0]);
    type metadata accessor for IMDAttachmentMetadata(0);
    v11 = sub_1B7CFE980();
    (a3)[2](a3, v11, 0);
  }
}

uint64_t sub_1B7C8C458(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1B7C248BC(MEMORY[0x1E69E7CC0]);
  v93 = v7;
  v8 = *(a1 + 16);
  v86 = a2;
  if (!v8)
  {
LABEL_18:
    v90 = 0;
    v91 = 0xE000000000000000;
    v92 = v6;
    MEMORY[0x1B8CADCA0](0xD000000000000053, 0x80000001B7D56DD0);
    v41 = sub_1B7C8BB34(v93);
    sub_1B7C8BDE8(v41);

    MEMORY[0x1B8CADCA0](0xD0000000000000BELL, 0x80000001B7D56E30);
    v43 = v90;
    v42 = v91;
    v44 = v92;

    v45 = v86;
    v46 = sub_1B7AE3B2C(v43, v42, 0);
    if (v3)
    {
      v83 = v3;

      swift_bridgeObjectRelease_n();

      return v45;
    }

    v47 = v46;
    v90 = v6;

    sub_1B7C95110(v44, v47, &v90, v47);
    v83 = 0;

    swift_bridgeObjectRelease_n();
    v49 = v90;
    v45 = sub_1B7C247AC(MEMORY[0x1E69E7CC0]);
    v85 = *(v49 + 16);
    if (!v85)
    {
LABEL_44:

      return v45;
    }

    v50 = 0;
    v51 = (v49 + 80);
    v84 = v49;
    while (1)
    {
      if (v50 >= *(v49 + 16))
      {
        goto LABEL_47;
      }

      v54 = *(v51 - 6);
      v55 = *(v51 - 5);
      v57 = *(v51 - 4);
      v56 = *(v51 - 3);
      v58 = *(v51 - 16);
      v59 = *v51;
      v87 = v50;
      v89 = v59;
      if (v58 == 1)
      {
        v86 = 0;
        v60 = 0;
      }

      else
      {
        v86 = *(v51 - 1);
        v60 = v59;
      }

      v61 = sub_1B7CFEA30();
      v62 = sub_1B7CFEA30();
      v88 = v55;
      if (v60)
      {
        v63 = sub_1B7CFEA30();
      }

      else
      {
        v63 = 0;
      }

      v64 = [objc_allocWithZone(IMDAttachmentMetadata) initWithPermanentAttachmentGUID:v61 messageGUID:v62 fromMe:v58 handleID:v63];

      v65 = [v64 permanentAttachmentGUID];
      v66 = sub_1B7CFEA60();
      v68 = v67;

      v69 = v64;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v90 = v45;
      v72 = sub_1B7AE11D0(v66, v68);
      v73 = v45[2];
      v74 = (v71 & 1) == 0;
      v75 = v73 + v74;
      if (__OFADD__(v73, v74))
      {
        goto LABEL_48;
      }

      v76 = v71;
      if (v45[3] >= v75)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v49 = v84;
          if (v71)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_1B7CE94C0();
          v49 = v84;
          if (v76)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
        sub_1B7CE5EAC(v75, isUniquelyReferenced_nonNull_native);
        v77 = sub_1B7AE11D0(v66, v68);
        if ((v76 & 1) != (v78 & 1))
        {
          goto LABEL_50;
        }

        v72 = v77;
        v49 = v84;
        if (v76)
        {
LABEL_24:

          v45 = v90;
          v52 = *(v90 + 56);
          v53 = *(v52 + 8 * v72);
          *(v52 + 8 * v72) = v69;

          goto LABEL_25;
        }
      }

      v45 = v90;
      *(v90 + 8 * (v72 >> 6) + 64) |= 1 << v72;
      v79 = (v45[6] + 16 * v72);
      *v79 = v66;
      v79[1] = v68;
      *(v45[7] + 8 * v72) = v69;

      v80 = v45[2];
      v39 = __OFADD__(v80, 1);
      v81 = v80 + 1;
      if (v39)
      {
        goto LABEL_49;
      }

      v45[2] = v81;
LABEL_25:
      v50 = v87 + 1;
      v51 += 7;
      if (v85 == v87 + 1)
      {
        goto LABEL_44;
      }
    }
  }

  v9 = (a1 + 40);
  while (1)
  {
    v10 = *(v9 - 1);
    v11 = *v9;
    v90 = 95;
    v91 = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v7);
    v82[2] = &v90;
    swift_bridgeObjectRetain_n();
    v13 = sub_1B7CA57D8(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B7C14D3C, v82, v10, v11, v12);
    v14 = *(v13 + 16);
    if (v14)
    {
      break;
    }

LABEL_4:
    v9 += 2;
    if (!--v8)
    {
      goto LABEL_18;
    }
  }

  v87 = v8;
  v88 = v3;
  v15 = (v13 + 32 * v14);
  v16 = *v15;
  v17 = v15[1];
  v18 = v10;
  v19 = v15[2];
  v20 = v15[3];
  swift_bridgeObjectRetain_n();

  v89 = MEMORY[0x1B8CADC20](v16, v17, v19, v20);
  v22 = v21;
  swift_bridgeObjectRelease_n();
  v23 = v93;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v90 = v23;
  v25 = v18;
  v27 = sub_1B7AE11D0(v18, v11);
  v28 = *(v23 + 16);
  v29 = (v26 & 1) == 0;
  v7 = v28 + v29;
  if (!__OFADD__(v28, v29))
  {
    v30 = v26;
    if (*(v23 + 24) < v7)
    {
      sub_1B7CE5BEC(v7, v24);
      v7 = sub_1B7AE11D0(v18, v11);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_50;
      }

      v27 = v7;
      v32 = v89;
      if ((v30 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_13:

      v93 = v90;
      v33 = (*(v90 + 56) + 16 * v27);
      v34 = v33[1];
      *v33 = v32;
      v33[1] = v22;

LABEL_17:
      v6 = MEMORY[0x1E69E7CC0];
      v8 = v87;
      v3 = v88;
      goto LABEL_4;
    }

    if (v24)
    {
      v32 = v89;
      if (v26)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v7 = sub_1B7CE9348();
      v32 = v89;
      if (v30)
      {
        goto LABEL_13;
      }
    }

LABEL_15:
    v35 = v90;
    *(v90 + 8 * (v27 >> 6) + 64) |= 1 << v27;
    v36 = (v35[6] + 16 * v27);
    *v36 = v25;
    v36[1] = v11;
    v37 = (v35[7] + 16 * v27);
    *v37 = v32;
    v37[1] = v22;
    v38 = v35[2];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_46;
    }

    v93 = v35;
    v35[2] = v40;
    goto LABEL_17;
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  result = sub_1B7CFF740();
  __break(1u);
  return result;
}

uint64_t sub_1B7C8CB5C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SQLColumn(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for SQLColumn(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_1B7C8CBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    return (*(a4 + 24))();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7C8CC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a3 <= 0x7FFFFFFF)
  {
    return (*(a5 + 24))(a2, a3, a4, a5);
  }

  __break(1u);
  return result;
}