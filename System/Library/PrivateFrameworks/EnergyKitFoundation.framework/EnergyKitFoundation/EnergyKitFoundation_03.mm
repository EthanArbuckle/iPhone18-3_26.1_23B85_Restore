EnergyKitFoundation::DatabaseType_optional __swiftcall DatabaseType.init(rawValue:)(Swift::String rawValue)
{
  v4 = v1;
  sub_1D208CB2C();
  *v2 = "owned";
  *(v2 + 8) = 5;
  *(v2 + 16) = 2;
  *(v2 + 24) = "shared";
  *(v2 + 32) = 6;
  *(v2 + 40) = 2;
  *(v2 + 48) = "owned_shared";
  *(v2 + 56) = 12;
  *(v2 + 64) = 2;
  sub_1D1FCECE8();
  v5 = sub_1D208CA5C();

  if (v5)
  {
    if (v5 == 1)
    {
      v6 = 1;
    }

    else
    {
      if (v5 != 2)
      {

        *v4 = 3;
        return result;
      }

      v6 = 2;
    }
  }

  else
  {
    v6 = 0;
  }

  *v4 = v6;
}

uint64_t static DatabaseType.allCases.getter()
{
  result = sub_1D208CB2C();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  sub_1D1FCECE8();
  return result;
}

unint64_t sub_1D202CF24()
{
  v2 = qword_1EC6BEEC8;
  if (!qword_1EC6BEEC8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEEC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D202D094@<X0>(uint64_t *a1@<X8>)
{
  result = DatabaseType.rawValue.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1D202D0C4@<X0>(uint64_t *a1@<X8>)
{
  result = static DatabaseType.allCases.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1D202D1F0()
{
  v2 = qword_1EC6BEED0;
  if (!qword_1EC6BEED0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEED0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D202D284()
{
  v2 = qword_1EC6BEED8;
  if (!qword_1EC6BEED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BEEE0, &qword_1D208FCC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEED8);
    return WitnessTable;
  }

  return v2;
}

id UsageSummaryRecords.__allocating_init(entity:insertInto:)(uint64_t a1, uint64_t a2)
{
  v6 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  return v6;
}

id UsageSummaryRecords.init(entity:insertInto:)(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v8 = a1;
  v7 = a2;
  v6.receiver = 0;
  v6.super_class = type metadata accessor for UsageSummaryRecords();
  v5 = objc_msgSendSuper2(&v6, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);
  MEMORY[0x1E69E5928](v5);
  v9 = v5;
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v9);
  return v5;
}

id UsageSummaryRecords.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UsageSummaryRecords();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id EnergyWindowNotifications.__allocating_init(entity:insertInto:)(uint64_t a1, uint64_t a2)
{
  v6 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  return v6;
}

id EnergyWindowNotifications.init(entity:insertInto:)(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v8 = a1;
  v7 = a2;
  v6.receiver = 0;
  v6.super_class = type metadata accessor for EnergyWindowNotifications();
  v5 = objc_msgSendSuper2(&v6, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);
  MEMORY[0x1E69E5928](v5);
  v9 = v5;
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v9);
  return v5;
}

id EnergyWindowNotifications.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EnergyWindowNotifications();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t IntervalBlockPayload.utilityID.getter()
{
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t IntervalBlockPayload.utilityID.setter(uint64_t a1, uint64_t a2)
{

  v3 = v2[1];
  *v2 = a1;
  v2[1] = a2;
}

uint64_t IntervalBlockPayload.subscriptionID.getter()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return v2;
}

uint64_t IntervalBlockPayload.subscriptionID.setter(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t IntervalBlockPayload.usagePointID.getter()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  return v2;
}

uint64_t IntervalBlockPayload.usagePointID.setter(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t IntervalBlockPayload.meterID.getter()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  return v2;
}

uint64_t IntervalBlockPayload.meterID.setter(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t IntervalBlockPayload.sourceTime.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v16 = 0;
  v9 = 0;
  v2 = sub_1D208BF1C();
  v6 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v5 - v6;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v10 = &v5 - v8;
  v16 = v1;
  v3 = type metadata accessor for IntervalBlockPayload();
  sub_1D1FD5F1C((v1 + *(v3 + 52)), v10);
  v11 = sub_1D208C1EC();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  v14 = *(v12 + 48);
  v15 = v12 + 48;
  if (v14(v10, 1) != 1)
  {
    return (*(v12 + 32))(v5, v10, v11);
  }

  sub_1D208BDDC();
  sub_1D208C1CC();
  result = (v14)(v10, 1, v11);
  if (result != 1)
  {
    return sub_1D1FD6044(v10);
  }

  return result;
}

uint64_t type metadata accessor for IntervalBlockPayload()
{
  v1 = qword_1EC6C46B0;
  if (!qword_1EC6C46B0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

char *sub_1D202DD08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4 = 0;
  v12 = sub_1D208C1EC();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v11 = &v4 - v5;
  v7 = (*(*(type metadata accessor for IntervalBlockPayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v6);
  v13 = &v4 - v7;
  sub_1D203BB14(v2, &v4 - v7);
  IntervalBlockPayload.sourceTime.getter(v11);
  (*(v8 + 32))(v10, v11, v12);
  return sub_1D203BFB8(v13);
}

uint64_t sub_1D202DE44(uint64_t a1)
{
  v3 = a1;
  v1 = sub_1D208C1EC();
  v5 = *(v1 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v3 - v4;
  (*(v5 + 16))(&v3 - v4);
  return IntervalBlockPayload.sourceTime.setter(v6);
}

uint64_t IntervalBlockPayload.sourceTime.setter(uint64_t a1)
{
  v11 = a1;
  v13 = 0;
  v12 = 0;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = &v4 - v5;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v12 = v1;
  v6 = 0;
  v10 = sub_1D208C1EC();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  (*(v8 + 16))(v7, v11);
  (*(v8 + 56))(v7, 0, 1, v10);
  v2 = type metadata accessor for IntervalBlockPayload();
  sub_1D1FD6448(v7, (v1 + *(v2 + 52)));
  return (*(v8 + 8))(v11, v10);
}

void (*IntervalBlockPayload.sourceTime.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_1D208C1EC();
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v8 = __swift_coroFrameAllocStub(v5);
  v6[4] = v8;
  IntervalBlockPayload.sourceTime.getter(v8);
  return sub_1D202E17C;
}

void sub_1D202E17C(uint64_t **a1, char a2)
{
  v10 = *a1;
  if (a2)
  {
    v6 = v10[4];
    v7 = v10[3];
    v5 = v10[1];
    v3 = *v10;
    v4 = v10[2];
    (*(v4 + 16))();
    IntervalBlockPayload.sourceTime.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    IntervalBlockPayload.sourceTime.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

BOOL IntervalBlockPayload.hasSourceTime.getter()
{
  v11 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v10 = &v5 - v8;
  v11 = v0;
  v9 = 0;
  v2 = type metadata accessor for IntervalBlockPayload();
  sub_1D1FD5F1C((v0 + *(v2 + 52)), v10);
  v3 = sub_1D208C1EC();
  v7 = (*(*(v3 - 8) + 48))(v10, 1) != 1;
  v6 = v7;
  sub_1D1FD6044(v10);
  return v6;
}

Swift::Void __swiftcall IntervalBlockPayload.clearSourceTime()()
{
  v6 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v4[0] = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v5 = v4 - v4[0];
  v6 = v0;
  v4[1] = 0;
  v2 = sub_1D208C1EC();
  (*(*(v2 - 8) + 56))(v5, 1);
  v3 = type metadata accessor for IntervalBlockPayload();
  sub_1D1FD6448(v5, (v0 + *(v3 + 52)));
}

uint64_t IntervalBlockPayload.start.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v16 = 0;
  v9 = 0;
  v2 = sub_1D208BF1C();
  v6 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v5 - v6;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v10 = &v5 - v8;
  v16 = v1;
  v3 = type metadata accessor for IntervalBlockPayload();
  sub_1D1FD5F1C((v1 + *(v3 + 56)), v10);
  v11 = sub_1D208C1EC();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  v14 = *(v12 + 48);
  v15 = v12 + 48;
  if (v14(v10, 1) != 1)
  {
    return (*(v12 + 32))(v5, v10, v11);
  }

  sub_1D208BDDC();
  sub_1D208C1CC();
  result = (v14)(v10, 1, v11);
  if (result != 1)
  {
    return sub_1D1FD6044(v10);
  }

  return result;
}

char *sub_1D202E654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4 = 0;
  v12 = sub_1D208C1EC();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v11 = &v4 - v5;
  v7 = (*(*(type metadata accessor for IntervalBlockPayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v6);
  v13 = &v4 - v7;
  sub_1D203BB14(v2, &v4 - v7);
  IntervalBlockPayload.start.getter(v11);
  (*(v8 + 32))(v10, v11, v12);
  return sub_1D203BFB8(v13);
}

uint64_t sub_1D202E790(uint64_t a1)
{
  v3 = a1;
  v1 = sub_1D208C1EC();
  v5 = *(v1 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v3 - v4;
  (*(v5 + 16))(&v3 - v4);
  return IntervalBlockPayload.start.setter(v6);
}

uint64_t IntervalBlockPayload.start.setter(uint64_t a1)
{
  v11 = a1;
  v13 = 0;
  v12 = 0;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = &v4 - v5;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v12 = v1;
  v6 = 0;
  v10 = sub_1D208C1EC();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  (*(v8 + 16))(v7, v11);
  (*(v8 + 56))(v7, 0, 1, v10);
  v2 = type metadata accessor for IntervalBlockPayload();
  sub_1D1FD6448(v7, (v1 + *(v2 + 56)));
  return (*(v8 + 8))(v11, v10);
}

void (*IntervalBlockPayload.start.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_1D208C1EC();
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v8 = __swift_coroFrameAllocStub(v5);
  v6[4] = v8;
  IntervalBlockPayload.start.getter(v8);
  return sub_1D202EAC8;
}

void sub_1D202EAC8(uint64_t **a1, char a2)
{
  v10 = *a1;
  if (a2)
  {
    v6 = v10[4];
    v7 = v10[3];
    v5 = v10[1];
    v3 = *v10;
    v4 = v10[2];
    (*(v4 + 16))();
    IntervalBlockPayload.start.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    IntervalBlockPayload.start.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

BOOL IntervalBlockPayload.hasStart.getter()
{
  v11 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v10 = &v5 - v8;
  v11 = v0;
  v9 = 0;
  v2 = type metadata accessor for IntervalBlockPayload();
  sub_1D1FD5F1C((v0 + *(v2 + 56)), v10);
  v3 = sub_1D208C1EC();
  v7 = (*(*(v3 - 8) + 48))(v10, 1) != 1;
  v6 = v7;
  sub_1D1FD6044(v10);
  return v6;
}

Swift::Void __swiftcall IntervalBlockPayload.clearStart()()
{
  v6 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v4[0] = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v5 = v4 - v4[0];
  v6 = v0;
  v4[1] = 0;
  v2 = sub_1D208C1EC();
  (*(*(v2 - 8) + 56))(v5, 1);
  v3 = type metadata accessor for IntervalBlockPayload();
  sub_1D1FD6448(v5, (v0 + *(v3 + 56)));
}

uint64_t IntervalBlockPayload.end.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v16 = 0;
  v9 = 0;
  v2 = sub_1D208BF1C();
  v6 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v5 - v6;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v10 = &v5 - v8;
  v16 = v1;
  v3 = type metadata accessor for IntervalBlockPayload();
  sub_1D1FD5F1C((v1 + *(v3 + 60)), v10);
  v11 = sub_1D208C1EC();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  v14 = *(v12 + 48);
  v15 = v12 + 48;
  if (v14(v10, 1) != 1)
  {
    return (*(v12 + 32))(v5, v10, v11);
  }

  sub_1D208BDEC();
  sub_1D208C1CC();
  result = (v14)(v10, 1, v11);
  if (result != 1)
  {
    return sub_1D1FD6044(v10);
  }

  return result;
}

char *sub_1D202EFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4 = 0;
  v12 = sub_1D208C1EC();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v11 = &v4 - v5;
  v7 = (*(*(type metadata accessor for IntervalBlockPayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v6);
  v13 = &v4 - v7;
  sub_1D203BB14(v2, &v4 - v7);
  IntervalBlockPayload.end.getter(v11);
  (*(v8 + 32))(v10, v11, v12);
  return sub_1D203BFB8(v13);
}

uint64_t sub_1D202F0DC(uint64_t a1)
{
  v3 = a1;
  v1 = sub_1D208C1EC();
  v5 = *(v1 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v3 - v4;
  (*(v5 + 16))(&v3 - v4);
  return IntervalBlockPayload.end.setter(v6);
}

uint64_t IntervalBlockPayload.end.setter(uint64_t a1)
{
  v11 = a1;
  v13 = 0;
  v12 = 0;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = &v4 - v5;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v12 = v1;
  v6 = 0;
  v10 = sub_1D208C1EC();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  (*(v8 + 16))(v7, v11);
  (*(v8 + 56))(v7, 0, 1, v10);
  v2 = type metadata accessor for IntervalBlockPayload();
  sub_1D1FD6448(v7, (v1 + *(v2 + 60)));
  return (*(v8 + 8))(v11, v10);
}

void (*IntervalBlockPayload.end.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_1D208C1EC();
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v8 = __swift_coroFrameAllocStub(v5);
  v6[4] = v8;
  IntervalBlockPayload.end.getter(v8);
  return sub_1D202F414;
}

void sub_1D202F414(uint64_t **a1, char a2)
{
  v10 = *a1;
  if (a2)
  {
    v6 = v10[4];
    v7 = v10[3];
    v5 = v10[1];
    v3 = *v10;
    v4 = v10[2];
    (*(v4 + 16))();
    IntervalBlockPayload.end.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    IntervalBlockPayload.end.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

BOOL IntervalBlockPayload.hasEnd.getter()
{
  v11 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v10 = &v5 - v8;
  v11 = v0;
  v9 = 0;
  v2 = type metadata accessor for IntervalBlockPayload();
  sub_1D1FD5F1C((v0 + *(v2 + 60)), v10);
  v3 = sub_1D208C1EC();
  v7 = (*(*(v3 - 8) + 48))(v10, 1) != 1;
  v6 = v7;
  sub_1D1FD6044(v10);
  return v6;
}

Swift::Void __swiftcall IntervalBlockPayload.clearEnd()()
{
  v6 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v4[0] = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v5 = v4 - v4[0];
  v6 = v0;
  v4[1] = 0;
  v2 = sub_1D208C1EC();
  (*(*(v2 - 8) + 56))(v5, 1);
  v3 = type metadata accessor for IntervalBlockPayload();
  sub_1D1FD6448(v5, (v0 + *(v3 + 60)));
}

void IntervalBlockPayload.unit.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v3 & 1;
}

uint64_t IntervalBlockPayload.unit.setter(uint64_t result)
{
  v2 = *(result + 8) & 1;
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

void IntervalBlockPayload.commodity.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 88);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v3 & 1;
}

uint64_t IntervalBlockPayload.commodity.setter(uint64_t result)
{
  v2 = *(result + 8) & 1;
  *(v1 + 80) = *result;
  *(v1 + 88) = v2;
  return result;
}

void IntervalBlockPayload.flowDirection.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 104);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v3 & 1;
}

uint64_t IntervalBlockPayload.flowDirection.setter(uint64_t result)
{
  v2 = *(result + 8) & 1;
  *(v1 + 96) = *result;
  *(v1 + 104) = v2;
  return result;
}

uint64_t type metadata accessor for IntervalBlockPayload.IntervalReading()
{
  v1 = qword_1EC6C46C0;
  if (!qword_1EC6C46C0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t IntervalBlockPayload.readings.getter()
{
  v2 = *(v0 + 112);

  return v2;
}

uint64_t IntervalBlockPayload.readings.setter(uint64_t a1)
{

  v2 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t IntervalBlockPayload.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for IntervalBlockPayload() + 48);
  v2 = sub_1D208C21C();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t IntervalBlockPayload.unknownFields.setter(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v7 = 0;
  v11 = sub_1D208C21C();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v8 = &v5 - v6;
  v14 = v2;
  v13 = v1;
  (*(v9 + 16))();
  v3 = type metadata accessor for IntervalBlockPayload();
  (*(v9 + 40))(v1 + *(v3 + 48), v8, v11);
  return (*(v9 + 8))(v12, v11);
}

uint64_t IntervalBlockPayload.FlowDirection.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = 0;
  v3 = 1;
  return sub_1D1FD8374(&v2, a1);
}

uint64_t IntervalBlockPayload.FlowDirection.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        v5 = 1;
        break;
      case 2:
        v4 = 2;
        v5 = 1;
        break;
      case 3:
        v4 = 3;
        v5 = 1;
        break;
      default:
        v4 = a1;
        v5 = 0;
        break;
    }
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  result = sub_1D1FD8374(&v4, a2);
  *(a2 + 9) = 0;
  return result;
}

uint64_t IntervalBlockPayload.FlowDirection.rawValue.getter()
{
  v4 = *v0;
  if ((v0[8] & 1) == 0)
  {
    return *v0;
  }

  v1 = *v0;
  switch(v4)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
  }

  return 3;
}

uint64_t sub_1D202FF04@<X0>(uint64_t *a1@<X8>)
{
  result = IntervalBlockPayload.FlowDirection.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1D202FF70()
{
  v2 = qword_1EC6BEEE8;
  if (!qword_1EC6BEEE8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEEE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2030024()
{
  v2 = qword_1EC6BEEF0;
  if (!qword_1EC6BEEF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEEF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t IntervalBlockPayload.Commodity.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = 0;
  v3 = 1;
  return sub_1D1FD8374(&v2, a1);
}

uint64_t IntervalBlockPayload.Commodity.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
      v5 = 1;
    }

    else
    {
      v4 = a1;
      v5 = 0;
    }
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  result = sub_1D1FD8374(&v4, a2);
  *(a2 + 9) = 0;
  return result;
}

uint64_t IntervalBlockPayload.Commodity.rawValue.getter()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1D2030314@<X0>(uint64_t *a1@<X8>)
{
  result = IntervalBlockPayload.Commodity.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1D2030380()
{
  v2 = qword_1EC6BEEF8;
  if (!qword_1EC6BEEF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEEF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2030434()
{
  v2 = qword_1EC6BEF00;
  if (!qword_1EC6BEF00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEF00);
    return WitnessTable;
  }

  return v2;
}

uint64_t IntervalBlockPayload.Unit.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = 0;
  v3 = 1;
  return sub_1D1FD8374(&v2, a1);
}

uint64_t IntervalBlockPayload.Unit.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
      v5 = 1;
    }

    else
    {
      v4 = a1;
      v5 = 0;
    }
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  result = sub_1D1FD8374(&v4, a2);
  *(a2 + 9) = 0;
  return result;
}

uint64_t IntervalBlockPayload.Unit.rawValue.getter()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1D2030724@<X0>(uint64_t *a1@<X8>)
{
  result = IntervalBlockPayload.Unit.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1D2030790()
{
  v2 = qword_1EC6BEF08;
  if (!qword_1EC6BEF08)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEF08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2030844()
{
  v2 = qword_1EC6BEF10;
  if (!qword_1EC6BEF10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEF10);
    return WitnessTable;
  }

  return v2;
}

uint64_t IntervalBlockPayload.IntervalReading.qualities.getter()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t IntervalBlockPayload.IntervalReading.qualities.setter(uint64_t a1)
{

  v2 = *(v1 + 8);
  *(v1 + 8) = a1;
}

uint64_t IntervalBlockPayload.IntervalReading.start.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v16 = 0;
  v9 = 0;
  v2 = sub_1D208BF1C();
  v6 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v5 - v6;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v10 = &v5 - v8;
  v16 = v1;
  v3 = type metadata accessor for IntervalBlockPayload.IntervalReading();
  sub_1D1FD5F1C((v1 + *(v3 + 28)), v10);
  v11 = sub_1D208C1EC();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  v14 = *(v12 + 48);
  v15 = v12 + 48;
  if (v14(v10, 1) != 1)
  {
    return (*(v12 + 32))(v5, v10, v11);
  }

  sub_1D208BDDC();
  sub_1D208C1CC();
  result = (v14)(v10, 1, v11);
  if (result != 1)
  {
    return sub_1D1FD6044(v10);
  }

  return result;
}

uint64_t sub_1D2030C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4 = 0;
  v12 = sub_1D208C1EC();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v11 = &v4 - v5;
  v7 = (*(*(type metadata accessor for IntervalBlockPayload.IntervalReading() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v6);
  v13 = &v4 - v7;
  sub_1D203B684(v2, &v4 - v7);
  IntervalBlockPayload.IntervalReading.start.getter(v11);
  (*(v8 + 32))(v10, v11, v12);
  return sub_1D203B978(v13);
}

uint64_t sub_1D2030DD0(uint64_t a1)
{
  v3 = a1;
  v1 = sub_1D208C1EC();
  v5 = *(v1 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v3 - v4;
  (*(v5 + 16))(&v3 - v4);
  return IntervalBlockPayload.IntervalReading.start.setter(v6);
}

uint64_t IntervalBlockPayload.IntervalReading.start.setter(uint64_t a1)
{
  v11 = a1;
  v13 = 0;
  v12 = 0;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = &v4 - v5;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v12 = v1;
  v6 = 0;
  v10 = sub_1D208C1EC();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  (*(v8 + 16))(v7, v11);
  (*(v8 + 56))(v7, 0, 1, v10);
  v2 = type metadata accessor for IntervalBlockPayload.IntervalReading();
  sub_1D1FD6448(v7, (v1 + *(v2 + 28)));
  return (*(v8 + 8))(v11, v10);
}

void (*IntervalBlockPayload.IntervalReading.start.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_1D208C1EC();
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v8 = __swift_coroFrameAllocStub(v5);
  v6[4] = v8;
  IntervalBlockPayload.IntervalReading.start.getter(v8);
  return sub_1D2031108;
}

void sub_1D2031108(uint64_t **a1, char a2)
{
  v10 = *a1;
  if (a2)
  {
    v6 = v10[4];
    v7 = v10[3];
    v5 = v10[1];
    v3 = *v10;
    v4 = v10[2];
    (*(v4 + 16))();
    IntervalBlockPayload.IntervalReading.start.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    IntervalBlockPayload.IntervalReading.start.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

BOOL IntervalBlockPayload.IntervalReading.hasStart.getter()
{
  v11 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v10 = &v5 - v8;
  v11 = v0;
  v9 = 0;
  v2 = type metadata accessor for IntervalBlockPayload.IntervalReading();
  sub_1D1FD5F1C((v0 + *(v2 + 28)), v10);
  v3 = sub_1D208C1EC();
  v7 = (*(*(v3 - 8) + 48))(v10, 1) != 1;
  v6 = v7;
  sub_1D1FD6044(v10);
  return v6;
}

Swift::Void __swiftcall IntervalBlockPayload.IntervalReading.clearStart()()
{
  v6 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v4[0] = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v5 = v4 - v4[0];
  v6 = v0;
  v4[1] = 0;
  v2 = sub_1D208C1EC();
  (*(*(v2 - 8) + 56))(v5, 1);
  v3 = type metadata accessor for IntervalBlockPayload.IntervalReading();
  sub_1D1FD6448(v5, (v0 + *(v3 + 28)));
}

uint64_t IntervalBlockPayload.IntervalReading.end.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v16 = 0;
  v9 = 0;
  v2 = sub_1D208BF1C();
  v6 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v5 - v6;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v10 = &v5 - v8;
  v16 = v1;
  v3 = type metadata accessor for IntervalBlockPayload.IntervalReading();
  sub_1D1FD5F1C((v1 + *(v3 + 32)), v10);
  v11 = sub_1D208C1EC();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  v14 = *(v12 + 48);
  v15 = v12 + 48;
  if (v14(v10, 1) != 1)
  {
    return (*(v12 + 32))(v5, v10, v11);
  }

  sub_1D208BDEC();
  sub_1D208C1CC();
  result = (v14)(v10, 1, v11);
  if (result != 1)
  {
    return sub_1D1FD6044(v10);
  }

  return result;
}

uint64_t sub_1D20315E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4 = 0;
  v12 = sub_1D208C1EC();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v11 = &v4 - v5;
  v7 = (*(*(type metadata accessor for IntervalBlockPayload.IntervalReading() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v6);
  v13 = &v4 - v7;
  sub_1D203B684(v2, &v4 - v7);
  IntervalBlockPayload.IntervalReading.end.getter(v11);
  (*(v8 + 32))(v10, v11, v12);
  return sub_1D203B978(v13);
}

uint64_t sub_1D203171C(uint64_t a1)
{
  v3 = a1;
  v1 = sub_1D208C1EC();
  v5 = *(v1 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v3 - v4;
  (*(v5 + 16))(&v3 - v4);
  return IntervalBlockPayload.IntervalReading.end.setter(v6);
}

uint64_t IntervalBlockPayload.IntervalReading.end.setter(uint64_t a1)
{
  v11 = a1;
  v13 = 0;
  v12 = 0;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = &v4 - v5;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v12 = v1;
  v6 = 0;
  v10 = sub_1D208C1EC();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  (*(v8 + 16))(v7, v11);
  (*(v8 + 56))(v7, 0, 1, v10);
  v2 = type metadata accessor for IntervalBlockPayload.IntervalReading();
  sub_1D1FD6448(v7, (v1 + *(v2 + 32)));
  return (*(v8 + 8))(v11, v10);
}

void (*IntervalBlockPayload.IntervalReading.end.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_1D208C1EC();
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v8 = __swift_coroFrameAllocStub(v5);
  v6[4] = v8;
  IntervalBlockPayload.IntervalReading.end.getter(v8);
  return sub_1D2031A54;
}

void sub_1D2031A54(uint64_t **a1, char a2)
{
  v10 = *a1;
  if (a2)
  {
    v6 = v10[4];
    v7 = v10[3];
    v5 = v10[1];
    v3 = *v10;
    v4 = v10[2];
    (*(v4 + 16))();
    IntervalBlockPayload.IntervalReading.end.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    IntervalBlockPayload.IntervalReading.end.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

BOOL IntervalBlockPayload.IntervalReading.hasEnd.getter()
{
  v11 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v10 = &v5 - v8;
  v11 = v0;
  v9 = 0;
  v2 = type metadata accessor for IntervalBlockPayload.IntervalReading();
  sub_1D1FD5F1C((v0 + *(v2 + 32)), v10);
  v3 = sub_1D208C1EC();
  v7 = (*(*(v3 - 8) + 48))(v10, 1) != 1;
  v6 = v7;
  sub_1D1FD6044(v10);
  return v6;
}

Swift::Void __swiftcall IntervalBlockPayload.IntervalReading.clearEnd()()
{
  v6 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v4[0] = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v5 = v4 - v4[0];
  v6 = v0;
  v4[1] = 0;
  v2 = sub_1D208C1EC();
  (*(*(v2 - 8) + 56))(v5, 1);
  v3 = type metadata accessor for IntervalBlockPayload.IntervalReading();
  sub_1D1FD6448(v5, (v0 + *(v3 + 32)));
}

uint64_t IntervalBlockPayload.IntervalReading.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for IntervalBlockPayload.IntervalReading() + 24);
  v2 = sub_1D208C21C();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t IntervalBlockPayload.IntervalReading.unknownFields.setter(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v7 = 0;
  v11 = sub_1D208C21C();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v8 = &v5 - v6;
  v14 = v2;
  v13 = v1;
  (*(v9 + 16))();
  v3 = type metadata accessor for IntervalBlockPayload.IntervalReading();
  (*(v9 + 40))(v1 + *(v3 + 24), v8, v11);
  return (*(v9 + 8))(v12, v11);
}

uint64_t IntervalBlockPayload.IntervalReading.Quality.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = 0;
  v3 = 1;
  return sub_1D1FD8374(&v2, a1);
}

uint64_t IntervalBlockPayload.IntervalReading.Quality.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        v5 = 1;
        break;
      case 2:
        v4 = 2;
        v5 = 1;
        break;
      case 3:
        v4 = 3;
        v5 = 1;
        break;
      default:
        v4 = a1;
        v5 = 0;
        break;
    }
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  result = sub_1D1FD8374(&v4, a2);
  *(a2 + 9) = 0;
  return result;
}

uint64_t IntervalBlockPayload.IntervalReading.Quality.rawValue.getter()
{
  v4 = *v0;
  if ((v0[8] & 1) == 0)
  {
    return *v0;
  }

  v1 = *v0;
  switch(v4)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
  }

  return 3;
}

uint64_t sub_1D20321D0@<X0>(uint64_t *a1@<X8>)
{
  result = IntervalBlockPayload.IntervalReading.Quality.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1D203223C()
{
  v2 = qword_1EC6BEF18;
  if (!qword_1EC6BEF18)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEF18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D20322F0()
{
  v2 = qword_1EC6BEF20;
  if (!qword_1EC6BEF20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEF20);
    return WitnessTable;
  }

  return v2;
}

char *IntervalBlockPayload.IntervalReading.init()@<X0>(char *a1@<X8>)
{
  v16 = a1;
  v17 = 0;
  v8 = 0;
  v10 = type metadata accessor for IntervalBlockPayload.IntervalReading();
  v7 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v15 = &v6 - v7;
  v17 = &v6 - v7;
  *v15 = 0;
  v1 = sub_1D208CB2C();
  v2 = v10;
  *(v15 + 1) = v1;
  v3 = *(v2 + 24);
  sub_1D208C20C();
  v9 = *(v10 + 28);
  v12 = sub_1D208C1EC();
  v4 = *(v12 - 8);
  v14 = *(v4 + 56);
  v13 = v4 + 56;
  v11 = 1;
  v14(&v15[v9], 1);
  (v14)(&v15[*(v10 + 32)], v11, v11, v12);
  return sub_1D2032564(v15, v16);
}

char *sub_1D2032564(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  v10 = type metadata accessor for IntervalBlockPayload.IntervalReading();
  v8 = v10[6];
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 32))(&a2[v8], &a1[v8]);
  v11 = v10[7];
  v13 = sub_1D208C1EC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if ((v15)(&a1[v11], 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy(&a2[v11], &a1[v11], *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v14 + 32))();
    (*(v14 + 56))(&a2[v11], 0, 1, v13);
  }

  __dst = &a2[v10[8]];
  __src = &a1[v10[8]];
  if (v15())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v14 + 32))(__dst, __src, v13);
    (*(v14 + 56))(__dst, 0, 1, v13);
  }

  return a2;
}

uint64_t sub_1D2032888(uint64_t a1)
{
  v7 = a1;
  v9 = 0;
  v8 = 0;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = &v4 - v5;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v8 = v1;
  sub_1D1FD5F1C(v9, &v4 - v5);
  v2 = type metadata accessor for IntervalBlockPayload.IntervalReading();
  sub_1D1FD6448(v6, (v1 + *(v2 + 28)));
  return sub_1D1FD6044(v7);
}

uint64_t sub_1D203298C(uint64_t a1)
{
  v7 = a1;
  v9 = 0;
  v8 = 0;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = &v4 - v5;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v8 = v1;
  sub_1D1FD5F1C(v9, &v4 - v5);
  v2 = type metadata accessor for IntervalBlockPayload.IntervalReading();
  sub_1D1FD6448(v6, (v1 + *(v2 + 32)));
  return sub_1D1FD6044(v7);
}

uint64_t IntervalBlockPayload.init()@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v29 = 0;
  v20 = 0;
  v22 = type metadata accessor for IntervalBlockPayload();
  v19 = (*(*(v22 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22);
  v27 = (&v18 - v19);
  v29 = &v18 - v19;
  v1 = sub_1D208C51C();
  v2 = v27;
  *v27 = v1;
  v2[1] = v3;
  v4 = sub_1D208C51C();
  v5 = v27;
  v27[2] = v4;
  v5[3] = v6;
  v7 = sub_1D208C51C();
  v8 = v27;
  v27[4] = v7;
  v8[5] = v9;
  v10 = sub_1D208C51C();
  v11 = v27;
  v27[6] = v10;
  v11[7] = v12;
  v11[8] = 0;
  v23 = 1;
  *(v11 + 72) = 1;
  v11[10] = 0;
  *(v11 + 88) = 1;
  v11[12] = 0;
  *(v11 + 104) = 1;
  type metadata accessor for IntervalBlockPayload.IntervalReading();
  v13 = sub_1D208CB2C();
  v14 = v22;
  v27[14] = v13;
  v15 = v14[12];
  sub_1D208C20C();
  v21 = v22[13];
  v24 = sub_1D208C1EC();
  v16 = *(v24 - 8);
  v26 = *(v16 + 56);
  v25 = v16 + 56;
  v26(v27 + v21, v23);
  (v26)(v27 + v22[14], v23, v23, v24);
  (v26)(v27 + v22[15], v23, v23, v24);
  return sub_1D2032C4C(v27, v28);
}

uint64_t sub_1D2032C4C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 112) = *(a1 + 112);
  v13 = type metadata accessor for IntervalBlockPayload();
  v11 = v13[12];
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 32))(a2 + v11, a1 + v11);
  v14 = v13[13];
  v16 = sub_1D208C1EC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if ((v18)(a1 + v14, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy((a2 + v14), (a1 + v14), *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v17 + 32))();
    (*(v17 + 56))(a2 + v14, 0, 1, v16);
  }

  __dst = (a2 + v13[14]);
  __src = (a1 + v13[14]);
  if (v18())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v17 + 32))(__dst, __src, v16);
    (*(v17 + 56))(__dst, 0, 1, v16);
  }

  v7 = (a2 + v13[15]);
  v8 = (a1 + v13[15]);
  if (v18())
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy(v7, v8, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v17 + 32))(v7, v8, v16);
    (*(v17 + 56))(v7, 0, 1, v16);
  }

  return a2;
}

uint64_t sub_1D20330B0(uint64_t a1)
{
  v7 = a1;
  v9 = 0;
  v8 = 0;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = &v4 - v5;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v8 = v1;
  sub_1D1FD5F1C(v9, &v4 - v5);
  v2 = type metadata accessor for IntervalBlockPayload();
  sub_1D1FD6448(v6, (v1 + *(v2 + 52)));
  return sub_1D1FD6044(v7);
}

uint64_t sub_1D20331B4(uint64_t a1)
{
  v7 = a1;
  v9 = 0;
  v8 = 0;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = &v4 - v5;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v8 = v1;
  sub_1D1FD5F1C(v9, &v4 - v5);
  v2 = type metadata accessor for IntervalBlockPayload();
  sub_1D1FD6448(v6, (v1 + *(v2 + 56)));
  return sub_1D1FD6044(v7);
}

uint64_t sub_1D20332B8(uint64_t a1)
{
  v7 = a1;
  v9 = 0;
  v8 = 0;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = &v4 - v5;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v8 = v1;
  sub_1D1FD5F1C(v9, &v4 - v5);
  v2 = type metadata accessor for IntervalBlockPayload();
  sub_1D1FD6448(v6, (v1 + *(v2 + 60)));
  return sub_1D1FD6044(v7);
}

uint64_t sub_1D203337C()
{
  result = sub_1D208CB2C();
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v1 + 16) = 1;
  *(v1 + 24) = 1;
  *(v1 + 32) = 2;
  *(v1 + 40) = 1;
  *(v1 + 48) = 3;
  *(v1 + 56) = 1;
  sub_1D1FCECE8();
  qword_1EC6C3388 = result;
  return result;
}

uint64_t *sub_1D2033418()
{
  if (qword_1EC6C3380 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C3388;
}

uint64_t static IntervalBlockPayload.FlowDirection.allCases.getter()
{
  v1 = sub_1D2033418();
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  return v2;
}

uint64_t static IntervalBlockPayload.FlowDirection.allCases.setter(uint64_t a1)
{
  v3 = sub_1D2033418();

  swift_beginAccess();
  v1 = *v3;
  *v3 = a1;

  swift_endAccess();
}

uint64_t (*static IntervalBlockPayload.FlowDirection.allCases.modify())()
{
  sub_1D2033418();
  swift_beginAccess();
  return sub_1D1FD9ED8;
}

uint64_t sub_1D20335A8@<X0>(uint64_t *a1@<X8>)
{
  result = static IntervalBlockPayload.FlowDirection.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D20335D4()
{
  result = sub_1D208CB2C();
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v1 + 16) = 1;
  *(v1 + 24) = 1;
  sub_1D1FCECE8();
  qword_1EC6C3398 = result;
  return result;
}

uint64_t *sub_1D2033648()
{
  if (qword_1EC6C3390 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C3398;
}

uint64_t static IntervalBlockPayload.Commodity.allCases.getter()
{
  v1 = sub_1D2033648();
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  return v2;
}

uint64_t static IntervalBlockPayload.Commodity.allCases.setter(uint64_t a1)
{
  v3 = sub_1D2033648();

  swift_beginAccess();
  v1 = *v3;
  *v3 = a1;

  swift_endAccess();
}

uint64_t (*static IntervalBlockPayload.Commodity.allCases.modify())()
{
  sub_1D2033648();
  swift_beginAccess();
  return sub_1D1FD9ED8;
}

uint64_t sub_1D20337D8@<X0>(uint64_t *a1@<X8>)
{
  result = static IntervalBlockPayload.Commodity.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D2033804()
{
  result = sub_1D208CB2C();
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v1 + 16) = 1;
  *(v1 + 24) = 1;
  sub_1D1FCECE8();
  qword_1EC6C33A8 = result;
  return result;
}

uint64_t *sub_1D2033878()
{
  if (qword_1EC6C33A0 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C33A8;
}

uint64_t static IntervalBlockPayload.Unit.allCases.getter()
{
  v1 = sub_1D2033878();
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  return v2;
}

uint64_t static IntervalBlockPayload.Unit.allCases.setter(uint64_t a1)
{
  v3 = sub_1D2033878();

  swift_beginAccess();
  v1 = *v3;
  *v3 = a1;

  swift_endAccess();
}

uint64_t (*static IntervalBlockPayload.Unit.allCases.modify())()
{
  sub_1D2033878();
  swift_beginAccess();
  return sub_1D1FD9ED8;
}

uint64_t sub_1D2033A08@<X0>(uint64_t *a1@<X8>)
{
  result = static IntervalBlockPayload.Unit.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D2033A34()
{
  result = sub_1D208CB2C();
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v1 + 16) = 1;
  *(v1 + 24) = 1;
  *(v1 + 32) = 2;
  *(v1 + 40) = 1;
  *(v1 + 48) = 3;
  *(v1 + 56) = 1;
  sub_1D1FCECE8();
  qword_1EC6C33B8 = result;
  return result;
}

uint64_t *sub_1D2033AD0()
{
  if (qword_1EC6C33B0 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C33B8;
}

uint64_t static IntervalBlockPayload.IntervalReading.Quality.allCases.getter()
{
  v1 = sub_1D2033AD0();
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  return v2;
}

uint64_t static IntervalBlockPayload.IntervalReading.Quality.allCases.setter(uint64_t a1)
{
  v3 = sub_1D2033AD0();

  swift_beginAccess();
  v1 = *v3;
  *v3 = a1;

  swift_endAccess();
}

uint64_t (*static IntervalBlockPayload.IntervalReading.Quality.allCases.modify())()
{
  sub_1D2033AD0();
  swift_beginAccess();
  return sub_1D1FD9ED8;
}

uint64_t sub_1D2033C60@<X0>(uint64_t *a1@<X8>)
{
  result = static IntervalBlockPayload.IntervalReading.Quality.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D2033C8C()
{
  result = sub_1D208C64C();
  qword_1EC6C33C8 = result;
  qword_1EC6C33D0 = v1;
  return result;
}

uint64_t *sub_1D2033CD0()
{
  if (qword_1EC6C33C0 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C33C8;
}

uint64_t static IntervalBlockPayload.protoMessageName.getter()
{
  v0 = sub_1D2033CD0();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_1D2033D6C()
{
  v42 = sub_1D208C47C();
  __swift_allocate_value_buffer(v42, qword_1EC6C33E0);
  __swift_project_value_buffer(v42, qword_1EC6C33E0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v46 = v0;
  v1 = *(v49 + 48);
  *v0 = 1;
  v44 = v0 + v1;
  *v44 = "utilityID";
  *(v44 + 1) = 9;
  v44[16] = 2;
  v47 = MEMORY[0x1E69AADC8];
  v43 = *MEMORY[0x1E69AADC8];
  v48 = *(*(sub_1D208C45C() - 8) + 104);
  (v48)(v44, v43);
  v45 = *(*(v49 - 8) + 72);
  v2 = *(v49 + 48);
  *(v46 + v45) = 2;
  v3 = v46 + v45 + v2;
  *v3 = "subscriptionID";
  *(v3 + 1) = 14;
  v3[16] = 2;
  v4 = *v47;
  v48();
  v5 = *(v49 + 48);
  v6 = (v46 + 2 * v45);
  *v6 = 3;
  v7 = v6 + v5;
  *v7 = "usagePointID";
  *(v7 + 1) = 12;
  v7[16] = 2;
  v8 = *v47;
  v48();
  v9 = *(v49 + 48);
  v10 = (v46 + 3 * v45);
  *v10 = 4;
  v11 = v10 + v9;
  *v11 = "meterID";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v12 = *v47;
  v48();
  v13 = *(v49 + 48);
  v14 = (v46 + 4 * v45);
  *v14 = 5;
  v15 = v14 + v13;
  *v15 = "sourceTime";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v16 = *v47;
  v48();
  v17 = *(v49 + 48);
  v18 = (v46 + 5 * v45);
  *v18 = 6;
  v19 = v18 + v17;
  *v19 = "start";
  *(v19 + 1) = 5;
  v19[16] = 2;
  v20 = *v47;
  v48();
  v21 = *(v49 + 48);
  v22 = (v46 + 6 * v45);
  *v22 = 7;
  v23 = v22 + v21;
  *v23 = "end";
  *(v23 + 1) = 3;
  v23[16] = 2;
  v24 = *v47;
  v48();
  v25 = *(v49 + 48);
  v26 = (v46 + 7 * v45);
  *v26 = 8;
  v27 = v26 + v25;
  *v27 = "unit";
  *(v27 + 1) = 4;
  v27[16] = 2;
  v28 = *v47;
  v48();
  v29 = *(v49 + 48);
  v30 = &v46[v45];
  *v30 = 9;
  v31 = v30 + v29;
  *v31 = "commodity";
  *(v31 + 1) = 9;
  v31[16] = 2;
  v32 = *v47;
  v48();
  v33 = *(v49 + 48);
  v34 = (v46 + 9 * v45);
  *v34 = 10;
  v35 = v34 + v33;
  *v35 = "flowDirection";
  *(v35 + 1) = 13;
  v35[16] = 2;
  v36 = *v47;
  v48();
  v37 = *(v49 + 48);
  v38 = (v46 + 10 * v45);
  *v38 = 11;
  v39 = v38 + v37;
  *v39 = "readings";
  *(v39 + 1) = 8;
  v39[16] = 2;
  v40 = *v47;
  v48();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D2034344()
{
  if (qword_1EC6C33D8 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EC6C33E0);
}

uint64_t static IntervalBlockPayload._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D2034344();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t IntervalBlockPayload.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1D208C27C();
    if (v2 || (v1 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        sub_1D1FDADDC();
        break;
      case 2:
        sub_1D1FDAE60();
        break;
      case 3:
        sub_1D1FDAEE4();
        break;
      case 4:
        sub_1D1FFF628();
        break;
      case 5:
        sub_1D20348F0();
        break;
      case 6:
        sub_1D20349B8();
        break;
      case 7:
        sub_1D2034A80();
        break;
      case 8:
        sub_1D2034B48();
        break;
      case 9:
        sub_1D2034BF0();
        break;
      case 10:
        sub_1D2034C98();
        break;
      case 11:
        sub_1D2034D40();
        break;
    }

    v2 = 0;
  }

  return result;
}

uint64_t sub_1D20348F0()
{
  v1 = *(type metadata accessor for IntervalBlockPayload() + 52);
  sub_1D208C1EC();
  sub_1D1FE1C64();
  return sub_1D208C33C();
}

uint64_t sub_1D20349B8()
{
  v1 = *(type metadata accessor for IntervalBlockPayload() + 56);
  sub_1D208C1EC();
  sub_1D1FE1C64();
  return sub_1D208C33C();
}

uint64_t sub_1D2034A80()
{
  v1 = *(type metadata accessor for IntervalBlockPayload() + 60);
  sub_1D208C1EC();
  sub_1D1FE1C64();
  return sub_1D208C33C();
}

uint64_t sub_1D2034D40()
{
  type metadata accessor for IntervalBlockPayload.IntervalReading();
  sub_1D2036578();
  return sub_1D208C32C();
}

uint64_t IntervalBlockPayload.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v109 = a1;
  v105 = a2;
  v106 = a3;
  v138 = 0;
  v137 = 0;
  v139 = a2;
  v110 = sub_1D208C21C();
  v111 = *(v110 - 8);
  v112 = v110 - 8;
  v113 = (*(v111 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v114 = v29 - v113;
  v138 = MEMORY[0x1EEE9AC00](v109);
  v137 = v3;
  v115 = *v3;
  v116 = v3[1];

  v117 = sub_1D208C66C();

  if (v117)
  {
    v100 = v108;
  }

  else
  {
    v4 = v108;
    v101 = *v107;
    v102 = v107[1];

    sub_1D208C41C();
    v103 = v4;
    v104 = v4;
    if (v4)
    {
      v33 = v104;

      v34 = v33;
      return result;
    }

    v100 = v103;
  }

  v96 = v100;
  v97 = v107[2];
  v98 = v107[3];

  v99 = sub_1D208C66C();

  if (v99)
  {
    v91 = v96;
  }

  else
  {
    v5 = v96;
    v92 = v107[2];
    v93 = v107[3];

    sub_1D208C41C();
    v94 = v5;
    v95 = v5;
    if (v5)
    {
      v32 = v95;

      v34 = v32;
      return result;
    }

    v91 = v94;
  }

  v87 = v91;
  v88 = v107[4];
  v89 = v107[5];

  v90 = sub_1D208C66C();

  if (v90)
  {
    v82 = v87;
  }

  else
  {
    v6 = v87;
    v83 = v107[4];
    v84 = v107[5];

    sub_1D208C41C();
    v85 = v6;
    v86 = v6;
    if (v6)
    {
      v31 = v86;

      v34 = v31;
      return result;
    }

    v82 = v85;
  }

  v78 = v82;
  v79 = v107[6];
  v80 = v107[7];

  v81 = sub_1D208C66C();

  if (v81)
  {
    v73 = v78;
  }

  else
  {
    v7 = v78;
    v74 = v107[6];
    v75 = v107[7];

    sub_1D208C41C();
    v76 = v7;
    v77 = v7;
    if (v7)
    {
      v30 = v77;

      v34 = v30;
      return result;
    }

    v73 = v76;
  }

  v8 = v73;
  result = sub_1D2035BB4(v107, v109, v105, v106);
  v71 = v8;
  v72 = v8;
  if (v8)
  {
    v34 = v72;
    return result;
  }

  sub_1D2035E4C(v107, v109, v105, v106);
  v69 = 0;
  v70 = 0;
  sub_1D20360E4(v107, v109, v105, v106);
  v67 = 0;
  v68 = 0;
  v10 = v107[8];
  v11 = *(v107 + 72);
  v66 = &v135;
  v135 = v10;
  v136 = v11 & 1;
  v65 = &v133;
  v133 = 0;
  v134 = 1;
  sub_1D203637C();
  if (sub_1D208C59C())
  {
    v61 = v67;
  }

  else
  {
    v12 = v107[8];
    v13 = *(v107 + 72);
    v62 = &v118;
    v118 = v12;
    v119 = v13 & 1;
    sub_1D2030844();
    v14 = v67;
    result = sub_1D208C3CC();
    v63 = v14;
    v64 = v14;
    if (v14)
    {
      v34 = v64;
      return result;
    }

    v61 = 0;
  }

  v58 = v61;
  v15 = v107[10];
  v16 = *(v107 + 88);
  v60 = &v131;
  v131 = v15;
  v132 = v16 & 1;
  v59 = &v129;
  v129 = 0;
  v130 = 1;
  sub_1D20363F8();
  if (sub_1D208C59C())
  {
    v54 = v58;
  }

  else
  {
    v17 = v107[10];
    v18 = *(v107 + 88);
    v55 = &v120;
    v120 = v17;
    v121 = v18 & 1;
    sub_1D2030434();
    v19 = v58;
    result = sub_1D208C3CC();
    v56 = v19;
    v57 = v19;
    if (v19)
    {
      v34 = v57;
      return result;
    }

    v54 = 0;
  }

  v51 = v54;
  v20 = v107[12];
  v21 = *(v107 + 104);
  v53 = &v127;
  v127 = v20;
  v128 = v21 & 1;
  v52 = &v125;
  v125 = 0;
  v126 = 1;
  sub_1D2036474();
  if (sub_1D208C59C())
  {
    v47 = v51;
  }

  else
  {
    v22 = v107[12];
    v23 = *(v107 + 104);
    v48 = &v122;
    v122 = v22;
    v123 = v23 & 1;
    sub_1D2030024();
    v24 = v51;
    result = sub_1D208C3CC();
    v49 = v24;
    v50 = v24;
    if (v24)
    {
      v34 = v50;
      return result;
    }

    v47 = 0;
  }

  v43 = v47;
  v45 = v107[14];

  v124 = v45;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEF40, &unk_1D208FE50);
  sub_1D20364F0();
  v46 = sub_1D208C82C();

  if (v46)
  {
    v38 = v43;
  }

  else
  {
    v40 = v107[14];

    v39 = type metadata accessor for IntervalBlockPayload.IntervalReading();
    sub_1D2036578();
    v25 = v43;
    sub_1D208C43C();
    v41 = v25;
    v42 = v25;
    if (v25)
    {
      v29[2] = v42;
    }

    v38 = v41;
  }

  v26 = v114;
  v35 = v38;
  v27 = type metadata accessor for IntervalBlockPayload();
  (*(v111 + 16))(v26, v107 + *(v27 + 48), v110);
  v28 = v35;
  sub_1D208C1FC();
  v36 = v28;
  v37 = v28;
  if (v28)
  {
    v29[1] = v37;
  }

  return (*(v111 + 8))(v114, v110);
}

uint64_t sub_1D2035BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v18 = a2;
  v14 = a3;
  v15 = a4;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v30 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v17 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v26 = v10 - v17;
  v19 = 0;
  v25 = sub_1D208C1EC();
  v23 = *(v25 - 8);
  v24 = v25 - 8;
  v20 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v10 - v20;
  v29 = v10 - v20;
  v28 = v5;
  v27 = v6;
  v7 = type metadata accessor for IntervalBlockPayload();
  sub_1D1FD5F1C((v22 + *(v7 + 52)), v26);
  if ((*(v23 + 48))(v26, 1, v25) == 1)
  {
    result = sub_1D1FD6044(v26);
    v13 = v16;
  }

  else
  {
    (*(v23 + 32))(v21, v26, v25);
    sub_1D1FE1C64();
    v9 = v16;
    sub_1D208C44C();
    v11 = v9;
    v12 = v9;
    if (v9)
    {
      v10[1] = v12;
      return (*(v23 + 8))(v21, v25);
    }

    else
    {
      (*(v23 + 8))(v21, v25);
      result = v11;
      v13 = v11;
    }
  }

  return result;
}

uint64_t sub_1D2035E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v18 = a2;
  v14 = a3;
  v15 = a4;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v30 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v17 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v26 = v10 - v17;
  v19 = 0;
  v25 = sub_1D208C1EC();
  v23 = *(v25 - 8);
  v24 = v25 - 8;
  v20 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v10 - v20;
  v29 = v10 - v20;
  v28 = v5;
  v27 = v6;
  v7 = type metadata accessor for IntervalBlockPayload();
  sub_1D1FD5F1C((v22 + *(v7 + 56)), v26);
  if ((*(v23 + 48))(v26, 1, v25) == 1)
  {
    result = sub_1D1FD6044(v26);
    v13 = v16;
  }

  else
  {
    (*(v23 + 32))(v21, v26, v25);
    sub_1D1FE1C64();
    v9 = v16;
    sub_1D208C44C();
    v11 = v9;
    v12 = v9;
    if (v9)
    {
      v10[1] = v12;
      return (*(v23 + 8))(v21, v25);
    }

    else
    {
      (*(v23 + 8))(v21, v25);
      result = v11;
      v13 = v11;
    }
  }

  return result;
}

uint64_t sub_1D20360E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v18 = a2;
  v14 = a3;
  v15 = a4;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v30 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v17 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v26 = v10 - v17;
  v19 = 0;
  v25 = sub_1D208C1EC();
  v23 = *(v25 - 8);
  v24 = v25 - 8;
  v20 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v10 - v20;
  v29 = v10 - v20;
  v28 = v5;
  v27 = v6;
  v7 = type metadata accessor for IntervalBlockPayload();
  sub_1D1FD5F1C((v22 + *(v7 + 60)), v26);
  if ((*(v23 + 48))(v26, 1, v25) == 1)
  {
    result = sub_1D1FD6044(v26);
    v13 = v16;
  }

  else
  {
    (*(v23 + 32))(v21, v26, v25);
    sub_1D1FE1C64();
    v9 = v16;
    sub_1D208C44C();
    v11 = v9;
    v12 = v9;
    if (v9)
    {
      v10[1] = v12;
      return (*(v23 + 8))(v21, v25);
    }

    else
    {
      (*(v23 + 8))(v21, v25);
      result = v11;
      v13 = v11;
    }
  }

  return result;
}

unint64_t sub_1D203637C()
{
  v2 = qword_1EC6BEF28;
  if (!qword_1EC6BEF28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEF28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D20363F8()
{
  v2 = qword_1EC6BEF30;
  if (!qword_1EC6BEF30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEF30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2036474()
{
  v2 = qword_1EC6BEF38;
  if (!qword_1EC6BEF38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEF38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D20364F0()
{
  v2 = qword_1EC6BEF48;
  if (!qword_1EC6BEF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BEF40, &unk_1D208FE50);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEF48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2036578()
{
  v2 = qword_1EC6BEF50;
  if (!qword_1EC6BEF50)
  {
    type metadata accessor for IntervalBlockPayload.IntervalReading();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEF50);
    return WitnessTable;
  }

  return v2;
}

BOOL static IntervalBlockPayload.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v123 = a1;
  v145 = a2;
  v178 = 0;
  v177 = 0;
  v103 = 0;
  v104 = sub_1D208C21C();
  v105 = *(v104 - 8);
  v106 = v104 - 8;
  v107 = (v105[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](0);
  v108 = &v41 - v107;
  v109 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v110 = &v41 - v109;
  v111 = sub_1D208C1EC();
  v112 = *(v111 - 8);
  v113 = v111 - 8;
  v114 = (*(v112 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v111);
  v115 = &v41 - v114;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA78, &qword_1D208E750);
  v117 = (*(*(v116 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v116);
  v118 = &v41 - v117;
  v119 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v120 = &v41 - v119;
  v121 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v122 = &v41 - v121;
  v124 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64);
  v125 = (v124 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v123);
  v126 = &v41 - v125;
  v127 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v128 = &v41 - v127;
  v129 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v130 = &v41 - v129;
  v131 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v132 = &v41 - v131;
  v133 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v134 = &v41 - v133;
  v135 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v136 = &v41 - v135;
  v137 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v138 = &v41 - v137;
  v139 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v140 = &v41 - v139;
  v141 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v142 = &v41 - v141;
  v178 = v24;
  v177 = v25;
  v143 = *v24;
  v144 = v24[1];

  v149 = &v175;
  v175 = v143;
  v176 = v144;
  v146 = *v145;
  v147 = v145[1];

  v148 = v174;
  v174[0] = v146;
  v174[1] = v147;
  v150 = MEMORY[0x1D38948D0](v175, v176, v146, v147);
  sub_1D1FE023C(v148);
  sub_1D1FE023C(v149);
  if ((v150 & 1) == 0)
  {
    return 0;
  }

  v95 = *(v123 + 16);
  v96 = *(v123 + 24);

  v100 = &v172;
  v172 = v95;
  v173 = v96;
  v97 = v145[2];
  v98 = v145[3];

  v99 = v171;
  v171[0] = v97;
  v171[1] = v98;
  v101 = MEMORY[0x1D38948D0](v172, v173, v97, v98);
  sub_1D1FE023C(v99);
  sub_1D1FE023C(v100);
  if ((v101 & 1) == 0)
  {
    return 0;
  }

  v88 = *(v123 + 32);
  v89 = *(v123 + 40);

  v93 = &v169;
  v169 = v88;
  v170 = v89;
  v90 = v145[4];
  v91 = v145[5];

  v92 = v168;
  v168[0] = v90;
  v168[1] = v91;
  v94 = MEMORY[0x1D38948D0](v169, v170, v90, v91);
  sub_1D1FE023C(v92);
  sub_1D1FE023C(v93);
  if ((v94 & 1) == 0)
  {
    return 0;
  }

  v81 = *(v123 + 48);
  v82 = *(v123 + 56);

  v86 = &v166;
  v166 = v81;
  v167 = v82;
  v83 = v145[6];
  v84 = v145[7];

  v85 = v165;
  v165[0] = v83;
  v165[1] = v84;
  v87 = MEMORY[0x1D38948D0](v166, v167, v83, v84);
  sub_1D1FE023C(v85);
  sub_1D1FE023C(v86);
  if ((v87 & 1) == 0)
  {
    return 0;
  }

  v77 = type metadata accessor for IntervalBlockPayload();
  sub_1D1FD5F1C((v123 + v77[13]), v142);
  sub_1D1FD5F1C(v145 + v77[13], v140);
  v78 = &v122[*(v116 + 48)];
  sub_1D1FD5F1C(v142, v122);
  sub_1D1FD5F1C(v140, v78);
  v79 = *(v112 + 48);
  v80 = v112 + 48;
  if (v79(v122, 1, v111) == 1)
  {
    if (v79(v78, 1, v111) == 1)
    {
      sub_1D1FD6044(v122);
      v76 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    sub_1D1FD5F1C(v122, v138);
    if (v79(v78, 1, v111) != 1)
    {
      (*(v112 + 32))(v115, v78, v111);
      sub_1D1FE0494();
      v75 = sub_1D208C59C();
      v74 = *(v112 + 8);
      v73 = v112 + 8;
      v74(v115, v111);
      v74(v138, v111);
      sub_1D1FD6044(v122);
      v76 = v75;
      goto LABEL_15;
    }

    (*(v112 + 8))(v138, v111);
  }

  sub_1D1FE0268(v122);
  v76 = 0;
LABEL_15:
  v72 = v76;
  sub_1D1FD6044(v140);
  sub_1D1FD6044(v142);
  if ((v72 & 1) == 0)
  {
    return 0;
  }

  sub_1D1FD5F1C((v123 + v77[14]), v136);
  sub_1D1FD5F1C(v145 + v77[14], v134);
  v71 = &v120[*(v116 + 48)];
  sub_1D1FD5F1C(v136, v120);
  sub_1D1FD5F1C(v134, v71);
  if (v79(v120, 1, v111) == 1)
  {
    if (v79(v71, 1, v111) == 1)
    {
      sub_1D1FD6044(v120);
      v70 = 1;
      goto LABEL_26;
    }
  }

  else
  {
    sub_1D1FD5F1C(v120, v132);
    if (v79(v71, 1, v111) != 1)
    {
      (*(v112 + 32))(v115, v71, v111);
      sub_1D1FE0494();
      v69 = sub_1D208C59C();
      v68 = *(v112 + 8);
      v67 = v112 + 8;
      v68(v115, v111);
      v68(v132, v111);
      sub_1D1FD6044(v120);
      v70 = v69;
      goto LABEL_26;
    }

    (*(v112 + 8))(v132, v111);
  }

  sub_1D1FE0268(v120);
  v70 = 0;
LABEL_26:
  v66 = v70;
  sub_1D1FD6044(v134);
  sub_1D1FD6044(v136);
  if ((v66 & 1) == 0)
  {
    return 0;
  }

  sub_1D1FD5F1C((v123 + v77[15]), v130);
  sub_1D1FD5F1C(v145 + v77[15], v128);
  v65 = &v118[*(v116 + 48)];
  sub_1D1FD5F1C(v130, v118);
  sub_1D1FD5F1C(v128, v65);
  if (v79(v118, 1, v111) == 1)
  {
    if (v79(v65, 1, v111) == 1)
    {
      sub_1D1FD6044(v118);
      v64 = 1;
      goto LABEL_37;
    }
  }

  else
  {
    sub_1D1FD5F1C(v118, v126);
    if (v79(v65, 1, v111) != 1)
    {
      (*(v112 + 32))(v115, v65, v111);
      sub_1D1FE0494();
      v63 = sub_1D208C59C();
      v62 = *(v112 + 8);
      v61 = v112 + 8;
      v62(v115, v111);
      v62(v126, v111);
      sub_1D1FD6044(v118);
      v64 = v63;
      goto LABEL_37;
    }

    (*(v112 + 8))(v126, v111);
  }

  sub_1D1FE0268(v118);
  v64 = 0;
LABEL_37:
  v60 = v64;
  sub_1D1FD6044(v128);
  sub_1D1FD6044(v130);
  if (v60)
  {
    v26 = *(v123 + 64);
    v27 = *(v123 + 72);
    v59 = &v163;
    v163 = v26;
    v164 = v27 & 1;
    v28 = v145[8];
    v29 = *(v145 + 72);
    v58 = &v161;
    v161 = v28;
    v162 = v29 & 1;
    sub_1D203637C();
    v30 = sub_1D208C59C();
    if (v30)
    {
      v31 = *(v123 + 80);
      v32 = *(v123 + 88);
      v57 = &v159;
      v159 = v31;
      v160 = v32 & 1;
      v33 = v145[10];
      v34 = *(v145 + 88);
      v56 = &v157;
      v157 = v33;
      v158 = v34 & 1;
      sub_1D20363F8();
      if (sub_1D208C59C())
      {
        v35 = *(v123 + 96);
        v36 = *(v123 + 104);
        v55 = &v155;
        v155 = v35;
        v156 = v36 & 1;
        v37 = v145[12];
        v38 = *(v145 + 104);
        v54 = &v153;
        v153 = v37;
        v154 = v38 & 1;
        sub_1D2036474();
        if (sub_1D208C59C())
        {
          v46 = *(v123 + 112);

          v52 = &v152;
          v152 = v46;
          v47 = v145[14];

          v51 = &v151;
          v151 = v47;
          v50 = v152;
          v48 = v47;
          v49 = type metadata accessor for IntervalBlockPayload.IntervalReading();
          sub_1D203A5AC();
          v53 = sub_1D208C7BC();
          sub_1D1FD3C38(v51);
          sub_1D1FD3C38(v52);
          if (v53)
          {
            v39 = v123 + v77[12];
            v42 = v105[2];
            v41 = v105 + 2;
            v42(v110, v39, v104);
            v42(v108, v145 + v77[12], v104);
            sub_1D1FE0414();
            v45 = sub_1D208C59C();
            v44 = v105[1];
            v43 = v105 + 1;
            v44(v108, v104);
            v44(v110, v104);
            return (v45 & 1) != 0;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t IntervalBlockPayload.hashValue.getter()
{
  type metadata accessor for IntervalBlockPayload();
  sub_1D203A62C();
  return sub_1D208C9DC();
}

void (*sub_1D2037764(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = IntervalBlockPayload.unknownFields.modify();
  return sub_1D1FDDFE4;
}

uint64_t sub_1D2037954()
{
  v14 = sub_1D208C47C();
  __swift_allocate_value_buffer(v14, qword_1EC6C3400);
  __swift_project_value_buffer(v14, qword_1EC6C3400);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v18 = v0;
  v1 = *(v21 + 48);
  *v0 = 0;
  v16 = v0 + v1;
  *v16 = "FLOW_DIRECTION_UNSPECIFIED";
  *(v16 + 1) = 26;
  v16[16] = 2;
  v19 = MEMORY[0x1E69AADC8];
  v15 = *MEMORY[0x1E69AADC8];
  v20 = *(*(sub_1D208C45C() - 8) + 104);
  (v20)(v16, v15);
  v17 = *(*(v21 - 8) + 72);
  v2 = *(v21 + 48);
  *(v18 + v17) = 1;
  v3 = v18 + v17 + v2;
  *v3 = "DELIVERED";
  *(v3 + 1) = 9;
  v3[16] = 2;
  v4 = *v19;
  v20();
  v5 = *(v21 + 48);
  v6 = (v18 + 2 * v17);
  *v6 = 2;
  v7 = v6 + v5;
  *v7 = "REVERSE";
  *(v7 + 1) = 7;
  v7[16] = 2;
  v8 = *v19;
  v20();
  v9 = *(v21 + 48);
  v10 = (v18 + 3 * v17);
  *v10 = 3;
  v11 = v10 + v9;
  *v11 = "NET";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v12 = *v19;
  v20();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D2037BE4()
{
  if (qword_1EC6C33F8 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EC6C3400);
}

uint64_t static IntervalBlockPayload.FlowDirection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D2037BE4();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1D2037CCC()
{
  v7 = sub_1D208C47C();
  __swift_allocate_value_buffer(v7, qword_1EC6C3420);
  __swift_project_value_buffer(v7, qword_1EC6C3420);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v10 = v0;
  v1 = *(v13 + 48);
  *v0 = 0;
  v9 = v0 + v1;
  *v9 = "COMMODITY_UNSPECIFIED";
  *(v9 + 1) = 21;
  v9[16] = 2;
  v11 = MEMORY[0x1E69AADC8];
  v8 = *MEMORY[0x1E69AADC8];
  v12 = *(*(sub_1D208C45C() - 8) + 104);
  (v12)(v9, v8);
  v2 = *(v13 + 48);
  v3 = (v10 + *(*(v13 - 8) + 72));
  *v3 = 1;
  v4 = v3 + v2;
  *v4 = "ELECTRIC";
  *(v4 + 1) = 8;
  v4[16] = 2;
  v5 = *v11;
  v12();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D2037E80()
{
  if (qword_1EC6C3418 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EC6C3420);
}

uint64_t static IntervalBlockPayload.Commodity._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D2037E80();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1D2037F68()
{
  v7 = sub_1D208C47C();
  __swift_allocate_value_buffer(v7, qword_1EC6C3440);
  __swift_project_value_buffer(v7, qword_1EC6C3440);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v10 = v0;
  v1 = *(v13 + 48);
  *v0 = 0;
  v9 = v0 + v1;
  *v9 = "UNIT_UNSPECIFIED";
  *(v9 + 1) = 16;
  v9[16] = 2;
  v11 = MEMORY[0x1E69AADC8];
  v8 = *MEMORY[0x1E69AADC8];
  v12 = *(*(sub_1D208C45C() - 8) + 104);
  (v12)(v9, v8);
  v2 = *(v13 + 48);
  v3 = (v10 + *(*(v13 - 8) + 72));
  *v3 = 1;
  v4 = v3 + v2;
  *v4 = "KWH";
  *(v4 + 1) = 3;
  v4[16] = 2;
  v5 = *v11;
  v12();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D203811C()
{
  if (qword_1EC6C3438 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EC6C3440);
}

uint64_t static IntervalBlockPayload.Unit._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D203811C();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1D2038204()
{
  v0 = sub_1D2033CD0();
  v4 = *v0;
  v5 = v0[1];

  v1 = sub_1D208C64C();
  v6 = MEMORY[0x1D38948B0](v4, v5, v1);
  v7 = v2;

  result = v6;
  qword_1EC6C3460 = v6;
  qword_1EC6C3468 = v7;
  return result;
}

uint64_t *sub_1D20382A4()
{
  if (qword_1EC6C3458 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C3460;
}

uint64_t static IntervalBlockPayload.IntervalReading.protoMessageName.getter()
{
  v0 = sub_1D20382A4();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_1D2038340()
{
  v14 = sub_1D208C47C();
  __swift_allocate_value_buffer(v14, qword_1EC6C3478);
  __swift_project_value_buffer(v14, qword_1EC6C3478);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v18 = v0;
  v1 = *(v21 + 48);
  *v0 = 1;
  v16 = v0 + v1;
  *v16 = "value";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v19 = MEMORY[0x1E69AADC8];
  v15 = *MEMORY[0x1E69AADC8];
  v20 = *(*(sub_1D208C45C() - 8) + 104);
  (v20)(v16, v15);
  v17 = *(*(v21 - 8) + 72);
  v2 = *(v21 + 48);
  *(v18 + v17) = 2;
  v3 = v18 + v17 + v2;
  *v3 = "qualities";
  *(v3 + 1) = 9;
  v3[16] = 2;
  v4 = *v19;
  v20();
  v5 = *(v21 + 48);
  v6 = (v18 + 2 * v17);
  *v6 = 3;
  v7 = v6 + v5;
  *v7 = "start";
  *(v7 + 1) = 5;
  v7[16] = 2;
  v8 = *v19;
  v20();
  v9 = *(v21 + 48);
  v10 = (v18 + 3 * v17);
  *v10 = 4;
  v11 = v10 + v9;
  *v11 = "end";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v12 = *v19;
  v20();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D20385EC()
{
  if (qword_1EC6C3470 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EC6C3478);
}

uint64_t static IntervalBlockPayload.IntervalReading._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D20385EC();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t IntervalBlockPayload.IntervalReading.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1D208C27C();
    if (v2 || (v1 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        sub_1D20039E8();
        break;
      case 2:
        sub_1D2038914();
        break;
      case 3:
        sub_1D20389BC();
        break;
      case 4:
        sub_1D2038A84();
        break;
    }

    v2 = 0;
  }

  return result;
}

uint64_t sub_1D20389BC()
{
  v1 = *(type metadata accessor for IntervalBlockPayload.IntervalReading() + 28);
  sub_1D208C1EC();
  sub_1D1FE1C64();
  return sub_1D208C33C();
}

uint64_t sub_1D2038A84()
{
  v1 = *(type metadata accessor for IntervalBlockPayload.IntervalReading() + 32);
  sub_1D208C1EC();
  sub_1D1FE1C64();
  return sub_1D208C33C();
}

uint64_t IntervalBlockPayload.IntervalReading.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v29 = a2;
  v30 = a3;
  v41 = 0;
  v40 = 0;
  v42 = a2;
  v34 = sub_1D208C21C();
  v35 = *(v34 - 8);
  v36 = v34 - 8;
  v37 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v38 = v12 - v37;
  v41 = MEMORY[0x1EEE9AC00](v33);
  v40 = v3;
  if (*v3 == 0.0)
  {
    v26 = v32;
  }

  else
  {
    v4 = v32;
    v5 = *v31;
    result = sub_1D208C40C();
    v27 = v4;
    v28 = v4;
    if (v4)
    {
      v12[3] = v28;
      return result;
    }

    v26 = 0;
  }

  v22 = v26;
  v24 = v31[1];

  v39 = v24;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEF78, &qword_1D208FE60);
  sub_1D203A7AC();
  v25 = sub_1D208C82C();

  if (v25)
  {
    v18 = v22;
  }

  else
  {
    v19 = v31[1];

    sub_1D20322F0();
    v7 = v22;
    sub_1D208C3AC();
    v20 = v7;
    v21 = v7;
    if (v7)
    {
      v12[2] = v21;
    }

    v18 = v20;
  }

  v8 = v18;
  result = sub_1D2038F18(v31, v33, v29, v30);
  v16 = v8;
  v17 = v8;
  if (!v8)
  {
    sub_1D20391B0(v31, v33, v29, v30);
    v14 = 0;
    v15 = 0;
    v9 = v38;
    v10 = type metadata accessor for IntervalBlockPayload.IntervalReading();
    (*(v35 + 16))(v9, v31 + *(v10 + 24), v34);
    v11 = v14;
    sub_1D208C1FC();
    v12[4] = v11;
    v13 = v11;
    if (v11)
    {
      v12[1] = v13;
    }

    return (*(v35 + 8))(v38, v34);
  }

  return result;
}

uint64_t sub_1D2038F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v18 = a2;
  v14 = a3;
  v15 = a4;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v30 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v17 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v26 = v10 - v17;
  v19 = 0;
  v25 = sub_1D208C1EC();
  v23 = *(v25 - 8);
  v24 = v25 - 8;
  v20 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v10 - v20;
  v29 = v10 - v20;
  v28 = v5;
  v27 = v6;
  v7 = type metadata accessor for IntervalBlockPayload.IntervalReading();
  sub_1D1FD5F1C((v22 + *(v7 + 28)), v26);
  if ((*(v23 + 48))(v26, 1, v25) == 1)
  {
    result = sub_1D1FD6044(v26);
    v13 = v16;
  }

  else
  {
    (*(v23 + 32))(v21, v26, v25);
    sub_1D1FE1C64();
    v9 = v16;
    sub_1D208C44C();
    v11 = v9;
    v12 = v9;
    if (v9)
    {
      v10[1] = v12;
      return (*(v23 + 8))(v21, v25);
    }

    else
    {
      (*(v23 + 8))(v21, v25);
      result = v11;
      v13 = v11;
    }
  }

  return result;
}

uint64_t sub_1D20391B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v18 = a2;
  v14 = a3;
  v15 = a4;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v30 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v17 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v26 = v10 - v17;
  v19 = 0;
  v25 = sub_1D208C1EC();
  v23 = *(v25 - 8);
  v24 = v25 - 8;
  v20 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v10 - v20;
  v29 = v10 - v20;
  v28 = v5;
  v27 = v6;
  v7 = type metadata accessor for IntervalBlockPayload.IntervalReading();
  sub_1D1FD5F1C((v22 + *(v7 + 32)), v26);
  if ((*(v23 + 48))(v26, 1, v25) == 1)
  {
    result = sub_1D1FD6044(v26);
    v13 = v16;
  }

  else
  {
    (*(v23 + 32))(v21, v26, v25);
    sub_1D1FE1C64();
    v9 = v16;
    sub_1D208C44C();
    v11 = v9;
    v12 = v9;
    if (v9)
    {
      v10[1] = v12;
      return (*(v23 + 8))(v21, v25);
    }

    else
    {
      (*(v23 + 8))(v21, v25);
      result = v11;
      v13 = v11;
    }
  }

  return result;
}

BOOL static IntervalBlockPayload.IntervalReading.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v67 = a1;
  v66 = a2;
  v83 = 0;
  v82 = 0;
  v48 = 0;
  v49 = sub_1D208C21C();
  v50 = *(v49 - 8);
  v51 = v49 - 8;
  v52 = (v50[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](0);
  v53 = &v20 - v52;
  v54 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v55 = &v20 - v54;
  v56 = sub_1D208C1EC();
  v57 = *(v56 - 8);
  v58 = v56 - 8;
  v59 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v56);
  v60 = &v20 - v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA78, &qword_1D208E750);
  v62 = (*(*(v61 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v61);
  v63 = &v20 - v62;
  v64 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v65 = &v20 - v64;
  v68 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v67);
  v69 = &v20 - v68;
  v70 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v71 = &v20 - v70;
  v72 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v73 = &v20 - v72;
  v74 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v75 = &v20 - v74;
  v76 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v77 = &v20 - v76;
  v78 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v79 = &v20 - v78;
  v83 = v16;
  v82 = v17;
  if (*v16 != *v17)
  {
    return 0;
  }

  v40 = *(v67 + 8);

  v45 = &v81;
  v81 = v40;
  v41 = *(v66 + 8);

  v44 = &v80;
  v80 = v41;
  v43 = v81;
  v42 = v41;
  sub_1D203A834();
  v46 = sub_1D208C7BC();
  sub_1D1FD3C38(v44);
  sub_1D1FD3C38(v45);
  if ((v46 & 1) == 0)
  {
    return 0;
  }

  v36 = type metadata accessor for IntervalBlockPayload.IntervalReading();
  sub_1D1FD5F1C((v67 + v36[7]), v79);
  sub_1D1FD5F1C((v66 + v36[7]), v77);
  v37 = &v65[*(v61 + 48)];
  sub_1D1FD5F1C(v79, v65);
  sub_1D1FD5F1C(v77, v37);
  v38 = *(v57 + 48);
  v39 = v57 + 48;
  if (v38(v65, 1, v56) == 1)
  {
    if (v38(v37, 1, v56) == 1)
    {
      sub_1D1FD6044(v65);
      v35 = 1;
      goto LABEL_11;
    }
  }

  else
  {
    sub_1D1FD5F1C(v65, v75);
    if (v38(v37, 1, v56) != 1)
    {
      (*(v57 + 32))(v60, v37, v56);
      sub_1D1FE0494();
      v34 = sub_1D208C59C();
      v33 = *(v57 + 8);
      v32 = v57 + 8;
      v33(v60, v56);
      v33(v75, v56);
      sub_1D1FD6044(v65);
      v35 = v34;
      goto LABEL_11;
    }

    (*(v57 + 8))(v75, v56);
  }

  sub_1D1FE0268(v65);
  v35 = 0;
LABEL_11:
  v31 = v35;
  sub_1D1FD6044(v77);
  sub_1D1FD6044(v79);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

  sub_1D1FD5F1C((v67 + v36[8]), v73);
  sub_1D1FD5F1C((v66 + v36[8]), v71);
  v30 = &v63[*(v61 + 48)];
  sub_1D1FD5F1C(v73, v63);
  sub_1D1FD5F1C(v71, v30);
  if (v38(v63, 1, v56) == 1)
  {
    if (v38(v30, 1, v56) == 1)
    {
      sub_1D1FD6044(v63);
      v29 = 1;
      goto LABEL_22;
    }
  }

  else
  {
    sub_1D1FD5F1C(v63, v69);
    if (v38(v30, 1, v56) != 1)
    {
      (*(v57 + 32))(v60, v30, v56);
      sub_1D1FE0494();
      v28 = sub_1D208C59C();
      v27 = *(v57 + 8);
      v26 = v57 + 8;
      v27(v60, v56);
      v27(v69, v56);
      sub_1D1FD6044(v63);
      v29 = v28;
      goto LABEL_22;
    }

    (*(v57 + 8))(v69, v56);
  }

  sub_1D1FE0268(v63);
  v29 = 0;
LABEL_22:
  v25 = v29;
  sub_1D1FD6044(v71);
  sub_1D1FD6044(v73);
  if (v25)
  {
    v18 = v67 + v36[6];
    v21 = v50[2];
    v20 = v50 + 2;
    v21(v55, v18, v49);
    v21(v53, v66 + v36[6], v49);
    sub_1D1FE0414();
    v24 = sub_1D208C59C();
    v23 = v50[1];
    v22 = v50 + 1;
    v23(v53, v49);
    v23(v55, v49);
    return (v24 & 1) != 0;
  }

  else
  {
    return 0;
  }
}

uint64_t IntervalBlockPayload.IntervalReading.hashValue.getter()
{
  type metadata accessor for IntervalBlockPayload.IntervalReading();
  sub_1D203A8B0();
  return sub_1D208C9DC();
}

void (*sub_1D203A040(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = IntervalBlockPayload.IntervalReading.unknownFields.modify();
  return sub_1D1FDDFE4;
}

uint64_t sub_1D203A230()
{
  v14 = sub_1D208C47C();
  __swift_allocate_value_buffer(v14, qword_1EC6C3498);
  __swift_project_value_buffer(v14, qword_1EC6C3498);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v18 = v0;
  v1 = *(v21 + 48);
  *v0 = 0;
  v16 = v0 + v1;
  *v16 = "QUALITY_UNSPECIFIED";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v19 = MEMORY[0x1E69AADC8];
  v15 = *MEMORY[0x1E69AADC8];
  v20 = *(*(sub_1D208C45C() - 8) + 104);
  (v20)(v16, v15);
  v17 = *(*(v21 - 8) + 72);
  v2 = *(v21 + 48);
  *(v18 + v17) = 1;
  v3 = v18 + v17 + v2;
  *v3 = "ESTIMATED";
  *(v3 + 1) = 9;
  v3[16] = 2;
  v4 = *v19;
  v20();
  v5 = *(v21 + 48);
  v6 = (v18 + 2 * v17);
  *v6 = 2;
  v7 = v6 + v5;
  *v7 = "VALIDATED";
  *(v7 + 1) = 9;
  v7[16] = 2;
  v8 = *v19;
  v20();
  v9 = *(v21 + 48);
  v10 = (v18 + 3 * v17);
  *v10 = 3;
  v11 = v10 + v9;
  *v11 = "RAW";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v12 = *v19;
  v20();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D203A4C4()
{
  if (qword_1EC6C3490 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EC6C3498);
}

uint64_t static IntervalBlockPayload.IntervalReading.Quality._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D203A4C4();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

unint64_t sub_1D203A5AC()
{
  v2 = qword_1EC6BEF58;
  if (!qword_1EC6BEF58)
  {
    type metadata accessor for IntervalBlockPayload.IntervalReading();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEF58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D203A62C()
{
  v2 = qword_1EC6BEF60;
  if (!qword_1EC6BEF60)
  {
    type metadata accessor for IntervalBlockPayload();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEF60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D203A6AC()
{
  v2 = qword_1EC6BEF68;
  if (!qword_1EC6BEF68)
  {
    type metadata accessor for IntervalBlockPayload();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEF68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D203A72C()
{
  v2 = qword_1EC6BEF70;
  if (!qword_1EC6BEF70)
  {
    type metadata accessor for IntervalBlockPayload();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEF70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D203A7AC()
{
  v2 = qword_1EC6BEF80;
  if (!qword_1EC6BEF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BEF78, &qword_1D208FE60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEF80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D203A834()
{
  v2 = qword_1EC6BEF88;
  if (!qword_1EC6BEF88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEF88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D203A8B0()
{
  v2 = qword_1EC6BEF90;
  if (!qword_1EC6BEF90)
  {
    type metadata accessor for IntervalBlockPayload.IntervalReading();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEF90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D203A930()
{
  v2 = qword_1EC6BEF98;
  if (!qword_1EC6BEF98)
  {
    type metadata accessor for IntervalBlockPayload.IntervalReading();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEF98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D203A9C8()
{
  v2 = qword_1EC6BEFA0;
  if (!qword_1EC6BEFA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEFA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D203AA8C()
{
  v2 = qword_1EC6BEFA8;
  if (!qword_1EC6BEFA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEFA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D203AB50()
{
  v2 = qword_1EC6BEFB0;
  if (!qword_1EC6BEFB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEFB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D203AC14()
{
  v2 = qword_1EC6BEFB8;
  if (!qword_1EC6BEFB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEFB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D203ACD8()
{
  v2 = qword_1EC6BEFC0;
  if (!qword_1EC6BEFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BEFC8, &qword_1D2090208);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEFC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D203AD78()
{
  v2 = qword_1EC6BEFD0;
  if (!qword_1EC6BEFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BEFD8, &qword_1D2090248);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEFD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D203AE18()
{
  v2 = qword_1EC6BEFE0;
  if (!qword_1EC6BEFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BEFE8, &qword_1D2090288);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEFE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D203AED0()
{
  v2 = qword_1EC6BEFF0;
  if (!qword_1EC6BEFF0)
  {
    type metadata accessor for IntervalBlockPayload();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEFF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D203AF98()
{
  v2 = qword_1EC6BEFF8;
  if (!qword_1EC6BEFF8)
  {
    type metadata accessor for IntervalBlockPayload();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEFF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D203B030()
{
  v2 = qword_1EC6BF000;
  if (!qword_1EC6BF000)
  {
    type metadata accessor for IntervalBlockPayload.IntervalReading();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF000);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D203B170()
{
  v4 = sub_1D203B2FC();
  if (v0 <= 0x3F)
  {
    v4 = sub_1D208C21C();
    if (v1 <= 0x3F)
    {
      v4 = sub_1D1FE0FAC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_1D203B2FC()
{
  v4 = qword_1EC6BF008;
  if (!qword_1EC6BF008)
  {
    type metadata accessor for IntervalBlockPayload.IntervalReading();
    v3 = sub_1D208C7AC();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EC6BF008);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1D203B424()
{
  v4 = sub_1D203B544();
  if (v0 <= 0x3F)
  {
    v4 = sub_1D208C21C();
    if (v1 <= 0x3F)
    {
      v4 = sub_1D1FE0FAC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_1D203B544()
{
  v4 = qword_1EC6BF010;
  if (!qword_1EC6BF010)
  {
    v3 = sub_1D208C7AC();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EC6BF010);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1D203B608()
{
  v2 = qword_1EC6C4750[0];
  if (!qword_1EC6C4750[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC6C4750);
    return WitnessTable;
  }

  return v2;
}

char *sub_1D203B684(char *a1, char *a2)
{
  *a2 = *a1;
  v8 = *(a1 + 1);

  *(a2 + 1) = v8;
  v11 = type metadata accessor for IntervalBlockPayload.IntervalReading();
  v9 = v11[6];
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 16))(&a2[v9], &a1[v9]);
  v12 = v11[7];
  v14 = sub_1D208C1EC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if ((v16)(&a1[v12], 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy(&a2[v12], &a1[v12], *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v15 + 16))();
    (*(v15 + 56))(&a2[v12], 0, 1, v14);
  }

  __dst = &a2[v11[8]];
  __src = &a1[v11[8]];
  if (v16())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v15 + 16))(__dst, __src, v14);
    (*(v15 + 56))(__dst, 0, 1, v14);
  }

  return a2;
}

uint64_t sub_1D203B978(uint64_t a1)
{
  v1 = *(a1 + 8);

  v6 = type metadata accessor for IntervalBlockPayload.IntervalReading();
  v5 = v6[6];
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 8))(a1 + v5);
  v7 = v6[7];
  v9 = sub_1D208C1EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!(v11)(a1 + v7, 1))
  {
    (*(v10 + 8))(a1 + v7, v9);
  }

  v4 = a1 + v6[8];
  if (!v11())
  {
    (*(v10 + 8))(v4, v9);
  }

  return a1;
}

uint64_t sub_1D203BB14(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v11 = *(a1 + 8);

  *(a2 + 8) = v11;
  *(a2 + 16) = *(a1 + 16);
  v12 = *(a1 + 24);

  *(a2 + 24) = v12;
  *(a2 + 32) = *(a1 + 32);
  v13 = *(a1 + 40);

  *(a2 + 40) = v13;
  *(a2 + 48) = *(a1 + 48);
  v14 = *(a1 + 56);

  *(a2 + 56) = v14;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 104) = *(a1 + 104);
  v15 = *(a1 + 112);

  *(a2 + 112) = v15;
  v18 = type metadata accessor for IntervalBlockPayload();
  v16 = v18[12];
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 16))(a2 + v16, a1 + v16);
  v19 = v18[13];
  v21 = sub_1D208C1EC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if ((v23)(a1 + v19, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy((a2 + v19), (a1 + v19), *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v22 + 16))();
    (*(v22 + 56))(a2 + v19, 0, 1, v21);
  }

  __dst = (a2 + v18[14]);
  __src = (a1 + v18[14]);
  if (v23())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v22 + 16))(__dst, __src, v21);
    (*(v22 + 56))(__dst, 0, 1, v21);
  }

  v7 = (a2 + v18[15]);
  v8 = (a1 + v18[15]);
  if (v23())
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy(v7, v8, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v22 + 16))(v7, v8, v21);
    (*(v22 + 56))(v7, 0, 1, v21);
  }

  return a2;
}

char *sub_1D203BFB8(char *a1)
{
  v1 = *(a1 + 1);

  v2 = *(a1 + 3);

  v3 = *(a1 + 5);

  v4 = *(a1 + 7);

  v5 = *(a1 + 14);

  v11 = type metadata accessor for IntervalBlockPayload();
  v10 = v11[12];
  v6 = sub_1D208C21C();
  (*(*(v6 - 8) + 8))(&a1[v10]);
  v12 = v11[13];
  v14 = sub_1D208C1EC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (!(v16)(&a1[v12], 1))
  {
    (*(v15 + 8))(&a1[v12], v14);
  }

  v9 = &a1[v11[14]];
  if (!v16())
  {
    (*(v15 + 8))(v9, v14);
  }

  v8 = &a1[v11[15]];
  if (!v16())
  {
    (*(v15 + 8))(v8, v14);
  }

  return a1;
}

uint64_t InsightRecordPayload.start.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = a1;
  v17 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v5 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v10 = &v4 - v5;
  v17 = v1;
  v9 = 0;
  v8 = *(v1 + *(type metadata accessor for InsightRecordPayload() + 20));

  v6 = (v8 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__start);
  v7 = &v16;
  swift_beginAccess();
  sub_1D1FD5F1C(v6, v10);
  swift_endAccess();

  v11 = sub_1D208C1EC();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  v14 = *(v12 + 48);
  v15 = v12 + 48;
  if (v14(v10, 1) != 1)
  {
    return (*(v12 + 32))(v4, v10, v11);
  }

  sub_1D208C1DC();
  result = (v14)(v10, 1, v11);
  if (result != 1)
  {
    return sub_1D1FD6044(v10);
  }

  return result;
}

uint64_t type metadata accessor for InsightRecordPayload()
{
  v1 = qword_1EC6C5840;
  if (!qword_1EC6C5840)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1D203C42C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4 = 0;
  v12 = sub_1D208C1EC();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v11 = &v4 - v5;
  v7 = (*(*(type metadata accessor for InsightRecordPayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v6);
  v13 = &v4 - v7;
  sub_1D204D580(v2, &v4 - v7);
  InsightRecordPayload.start.getter(v11);
  (*(v8 + 32))(v10, v11, v12);
  return sub_1D204D61C(v13);
}

uint64_t sub_1D203C568(uint64_t a1)
{
  v3 = a1;
  v1 = sub_1D208C1EC();
  v5 = *(v1 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v3 - v4;
  (*(v5 + 16))(&v3 - v4);
  return InsightRecordPayload.start.setter(v6);
}

uint64_t InsightRecordPayload.start.setter(uint64_t a1)
{
  v15 = a1;
  v19 = 0;
  v18 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v15);
  v8 = &v6 - v6;
  v7 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v11 = &v6 - v7;
  v19 = v4;
  v18 = v1;
  v12 = sub_1D203C804();
  v16 = sub_1D208C1EC();
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  (*(v13 + 16))(v11, v15);
  (*(v13 + 56))(v11, 0, 1, v16);
  sub_1D1FD5F1C(v11, v8);
  v9 = (v12 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__start);
  v10 = &v17;
  swift_beginAccess();
  sub_1D1FD6448(v8, v9);
  swift_endAccess();
  sub_1D1FD6044(v11);

  return (*(v13 + 8))(v15, v16);
}

uint64_t sub_1D203C804()
{
  v7 = type metadata accessor for InsightRecordPayload();
  v8 = *(v7 + 20);
  type metadata accessor for InsightRecordPayload._StorageClass();
  if ((sub_1D208CADC() & 1) == 0)
  {
    v5 = *(v6 + *(v7 + 20));

    v0 = sub_1D20427F0(v5);
    v1 = *(v7 + 20);
    v2 = *(v6 + v1);
    *(v6 + v1) = v0;
  }

  v4 = *(v6 + *(v7 + 20));

  return v4;
}

uint64_t type metadata accessor for InsightRecordPayload._StorageClass()
{
  v1 = qword_1EC6C5880;
  if (!qword_1EC6C5880)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void (*InsightRecordPayload.start.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_1D208C1EC();
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v8 = __swift_coroFrameAllocStub(v5);
  v6[4] = v8;
  InsightRecordPayload.start.getter(v8);
  return sub_1D203CA6C;
}

void sub_1D203CA6C(uint64_t **a1, char a2)
{
  v10 = *a1;
  if (a2)
  {
    v6 = v10[4];
    v7 = v10[3];
    v5 = v10[1];
    v3 = *v10;
    v4 = v10[2];
    (*(v4 + 16))();
    InsightRecordPayload.start.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    InsightRecordPayload.start.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

BOOL InsightRecordPayload.hasStart.getter()
{
  v14 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v12 = &v4 - v7;
  v14 = v0;
  v11 = 0;
  v10 = *(v0 + *(type metadata accessor for InsightRecordPayload() + 20));

  v8 = (v10 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__start);
  v9 = &v13;
  swift_beginAccess();
  sub_1D1FD5F1C(v8, v12);
  swift_endAccess();

  v2 = sub_1D208C1EC();
  v6 = (*(*(v2 - 8) + 48))(v12, 1) != 1;
  v5 = v6;
  sub_1D1FD6044(v12);
  return v5;
}

Swift::Void __swiftcall InsightRecordPayload.clearStart()()
{
  v13 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v5 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v7 = &v4 - v5;
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v4 - v5);
  v10 = &v4 - v6;
  v13 = v0;
  v11 = sub_1D203C804();
  v3 = sub_1D208C1EC();
  (*(*(v3 - 8) + 56))(v10, 1);
  sub_1D1FD5F1C(v10, v7);
  v8 = (v11 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__start);
  v9 = &v12;
  swift_beginAccess();
  sub_1D1FD6448(v7, v8);
  swift_endAccess();
  sub_1D1FD6044(v10);
}

uint64_t InsightRecordPayload.end.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = a1;
  v17 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v5 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v10 = &v4 - v5;
  v17 = v1;
  v9 = 0;
  v8 = *(v1 + *(type metadata accessor for InsightRecordPayload() + 20));

  v6 = (v8 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__end);
  v7 = &v16;
  swift_beginAccess();
  sub_1D1FD5F1C(v6, v10);
  swift_endAccess();

  v11 = sub_1D208C1EC();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  v14 = *(v12 + 48);
  v15 = v12 + 48;
  if (v14(v10, 1) != 1)
  {
    return (*(v12 + 32))(v4, v10, v11);
  }

  sub_1D208C1DC();
  result = (v14)(v10, 1, v11);
  if (result != 1)
  {
    return sub_1D1FD6044(v10);
  }

  return result;
}

uint64_t sub_1D203CFF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4 = 0;
  v12 = sub_1D208C1EC();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v11 = &v4 - v5;
  v7 = (*(*(type metadata accessor for InsightRecordPayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v6);
  v13 = &v4 - v7;
  sub_1D204D580(v2, &v4 - v7);
  InsightRecordPayload.end.getter(v11);
  (*(v8 + 32))(v10, v11, v12);
  return sub_1D204D61C(v13);
}

uint64_t sub_1D203D130(uint64_t a1)
{
  v3 = a1;
  v1 = sub_1D208C1EC();
  v5 = *(v1 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v3 - v4;
  (*(v5 + 16))(&v3 - v4);
  return InsightRecordPayload.end.setter(v6);
}

uint64_t InsightRecordPayload.end.setter(uint64_t a1)
{
  v15 = a1;
  v19 = 0;
  v18 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v15);
  v8 = &v6 - v6;
  v7 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v11 = &v6 - v7;
  v19 = v4;
  v18 = v1;
  v12 = sub_1D203C804();
  v16 = sub_1D208C1EC();
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  (*(v13 + 16))(v11, v15);
  (*(v13 + 56))(v11, 0, 1, v16);
  sub_1D1FD5F1C(v11, v8);
  v9 = (v12 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__end);
  v10 = &v17;
  swift_beginAccess();
  sub_1D1FD6448(v8, v9);
  swift_endAccess();
  sub_1D1FD6044(v11);

  return (*(v13 + 8))(v15, v16);
}

void (*InsightRecordPayload.end.modify(void *a1))(uint64_t **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_1D208C1EC();
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v8 = __swift_coroFrameAllocStub(v5);
  v6[4] = v8;
  InsightRecordPayload.end.getter(v8);
  return sub_1D203D4E4;
}

void sub_1D203D4E4(uint64_t **a1, char a2)
{
  v10 = *a1;
  if (a2)
  {
    v6 = v10[4];
    v7 = v10[3];
    v5 = v10[1];
    v3 = *v10;
    v4 = v10[2];
    (*(v4 + 16))();
    InsightRecordPayload.end.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    InsightRecordPayload.end.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

BOOL InsightRecordPayload.hasEnd.getter()
{
  v14 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v12 = &v4 - v7;
  v14 = v0;
  v11 = 0;
  v10 = *(v0 + *(type metadata accessor for InsightRecordPayload() + 20));

  v8 = (v10 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__end);
  v9 = &v13;
  swift_beginAccess();
  sub_1D1FD5F1C(v8, v12);
  swift_endAccess();

  v2 = sub_1D208C1EC();
  v6 = (*(*(v2 - 8) + 48))(v12, 1) != 1;
  v5 = v6;
  sub_1D1FD6044(v12);
  return v5;
}

Swift::Void __swiftcall InsightRecordPayload.clearEnd()()
{
  v13 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v5 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v7 = &v4 - v5;
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v4 - v5);
  v10 = &v4 - v6;
  v13 = v0;
  v11 = sub_1D203C804();
  v3 = sub_1D208C1EC();
  (*(*(v3 - 8) + 56))(v10, 1);
  sub_1D1FD5F1C(v10, v7);
  v8 = (v11 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__end);
  v9 = &v12;
  swift_beginAccess();
  sub_1D1FD6448(v7, v8);
  swift_endAccess();
  sub_1D1FD6044(v10);
}

double InsightRecordPayload.totalEnergy.getter()
{
  v3 = *(v0 + *(type metadata accessor for InsightRecordPayload() + 20));

  v2 = (v3 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__totalEnergy);
  swift_beginAccess();
  v4 = *v2;
  swift_endAccess();

  return v4;
}

uint64_t sub_1D203D930@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v8 = a2;
  v6 = a1;
  v7 = (*(*(type metadata accessor for InsightRecordPayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v6 - v7;
  sub_1D204D580(v2, &v6 - v7);
  v3 = InsightRecordPayload.totalEnergy.getter();
  v4 = v9;
  *v8 = v3;
  return sub_1D204D61C(v4);
}

uint64_t InsightRecordPayload.totalEnergy.setter(double a1)
{
  v2 = (sub_1D203C804() + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__totalEnergy);
  swift_beginAccess();
  *v2 = a1;
  swift_endAccess();
}

uint64_t (*InsightRecordPayload.totalEnergy.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  *a1 = InsightRecordPayload.totalEnergy.getter();
  return sub_1D203DAD8;
}

double InsightRecordPayload.totalRuntime.getter()
{
  v3 = *(v0 + *(type metadata accessor for InsightRecordPayload() + 20));

  v2 = (v3 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__totalRuntime);
  swift_beginAccess();
  v4 = *v2;
  swift_endAccess();

  return v4;
}

uint64_t sub_1D203DBBC@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v8 = a2;
  v6 = a1;
  v7 = (*(*(type metadata accessor for InsightRecordPayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v6 - v7;
  sub_1D204D580(v2, &v6 - v7);
  v3 = InsightRecordPayload.totalRuntime.getter();
  v4 = v9;
  *v8 = v3;
  return sub_1D204D61C(v4);
}

uint64_t InsightRecordPayload.totalRuntime.setter(double a1)
{
  v2 = (sub_1D203C804() + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__totalRuntime);
  swift_beginAccess();
  *v2 = a1;
  swift_endAccess();
}

uint64_t (*InsightRecordPayload.totalRuntime.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  *a1 = InsightRecordPayload.totalRuntime.getter();
  return sub_1D203DD64;
}

char *InsightRecordPayload.byPeaks.getter@<X0>(char *a1@<X8>)
{
  v5 = a1;
  v16 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF018, &qword_1D2090838);
  v6 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v11 = &v5 - v6;
  v16 = v1;
  v10 = 0;
  v9 = *(v1 + *(type metadata accessor for InsightRecordPayload() + 20));

  v7 = (v9 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byPeaks);
  v8 = &v15;
  swift_beginAccess();
  sub_1D204283C(v7, v11);
  swift_endAccess();

  v12 = type metadata accessor for InsightRecordPayload.TariffPeakStats();
  v3 = *(v12 - 8);
  v13 = *(v3 + 48);
  v14 = v3 + 48;
  if (v13(v11, 1) != 1)
  {
    return sub_1D2042AF0(v11, v5);
  }

  InsightRecordPayload.TariffPeakStats.init()(v5);
  result = (v13)(v11, 1, v12);
  if (result != 1)
  {
    return sub_1D2042A34(v11);
  }

  return result;
}

uint64_t sub_1D203DF54@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v9 = a2;
  v6 = a1;
  v4[1] = 0;
  v5 = (*(*(type metadata accessor for InsightRecordPayload.TariffPeakStats() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v4 - v5;
  v7 = (*(*(type metadata accessor for InsightRecordPayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v6);
  v10 = v4 - v7;
  sub_1D204D580(v2, v4 - v7);
  InsightRecordPayload.byPeaks.getter(v8);
  sub_1D2042AF0(v8, v9);
  return sub_1D204D61C(v10);
}

uint64_t sub_1D203E05C(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(type metadata accessor for InsightRecordPayload.TariffPeakStats() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v4);
  v6 = &v3 - v5;
  sub_1D2042BB4(v1, &v3 - v5);
  return InsightRecordPayload.byPeaks.setter(v6);
}

uint64_t InsightRecordPayload.byPeaks.setter(char *a1)
{
  v15 = a1;
  v18 = 0;
  v17 = 0;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF018, &qword_1D2090838) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v15);
  v10 = (&v7 - v8);
  v9 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v13 = &v7 - v9;
  v18 = v4;
  v17 = v1;
  v14 = sub_1D203C804();
  sub_1D2042BB4(v15, v13);
  v5 = type metadata accessor for InsightRecordPayload.TariffPeakStats();
  (*(*(v5 - 8) + 56))(v13, 0, 1);
  sub_1D204283C(v13, v10);
  v11 = (v14 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byPeaks);
  v12 = &v16;
  swift_beginAccess();
  sub_1D2042C78(v10, v11);
  swift_endAccess();
  sub_1D2042A34(v13);

  return sub_1D2042F30(v15);
}

char *InsightRecordPayload.TariffPeakStats.init()@<X0>(char *a1@<X8>)
{
  v8 = a1;
  v9 = 0;
  v1 = type metadata accessor for InsightRecordPayload.TariffPeakStats();
  v6 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - v6;
  v7 = v3;
  v9 = &v6 - v6;
  *v3 = -1.0;
  *(v3 + 1) = -1.0;
  *(v3 + 2) = -1.0;
  *(v3 + 3) = -1.0;
  *(v3 + 4) = -1.0;
  *(v3 + 5) = -1.0;
  v4 = &v3[*(v2 + 40)];
  sub_1D208C20C();
  return sub_1D2042AF0(v7, v8);
}

void (*InsightRecordPayload.byPeaks.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(type metadata accessor for InsightRecordPayload.TariffPeakStats() - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3);
  v5 = __swift_coroFrameAllocStub(v3);
  a1[2] = v5;
  InsightRecordPayload.byPeaks.getter(v5);
  return sub_1D203E3E8;
}

void sub_1D203E3E8(uint64_t *a1, char a2)
{
  if (a2)
  {
    v4 = a1[2];
    v5 = a1[1];
    v3 = *a1;
    sub_1D2042BB4(v4, v5);
    InsightRecordPayload.byPeaks.setter(v5);
    sub_1D2042F30(v4);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v2 = *a1;
    InsightRecordPayload.byPeaks.setter(v6);
    free(v6);
    free(v7);
  }
}

BOOL InsightRecordPayload.hasByPeaks.getter()
{
  v14 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF018, &qword_1D2090838);
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v12 = (&v4 - v7);
  v14 = v0;
  v11 = 0;
  v10 = *(v0 + *(type metadata accessor for InsightRecordPayload() + 20));

  v8 = (v10 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byPeaks);
  v9 = &v13;
  swift_beginAccess();
  sub_1D204283C(v8, v12);
  swift_endAccess();

  v2 = type metadata accessor for InsightRecordPayload.TariffPeakStats();
  v6 = (*(*(v2 - 8) + 48))(v12, 1) != 1;
  v5 = v6;
  sub_1D2042A34(v12);
  return v5;
}

Swift::Void __swiftcall InsightRecordPayload.clearByPeaks()()
{
  v13 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF018, &qword_1D2090838);
  v5 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v7 = (&v4 - v5);
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v4 - v5);
  v10 = (&v4 - v6);
  v13 = v0;
  v11 = sub_1D203C804();
  v3 = type metadata accessor for InsightRecordPayload.TariffPeakStats();
  (*(*(v3 - 8) + 56))(v10, 1);
  sub_1D204283C(v10, v7);
  v8 = (v11 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byPeaks);
  v9 = &v12;
  swift_beginAccess();
  sub_1D2042C78(v7, v8);
  swift_endAccess();
  sub_1D2042A34(v10);
}

char *InsightRecordPayload.byGridCleanliness.getter@<X0>(char *a1@<X8>)
{
  v5 = a1;
  v16 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF020, &qword_1D2090840);
  v6 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v11 = &v5 - v6;
  v16 = v1;
  v10 = 0;
  v9 = *(v1 + *(type metadata accessor for InsightRecordPayload() + 20));

  v7 = (v9 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byGridCleanliness);
  v8 = &v15;
  swift_beginAccess();
  sub_1D2042FAC(v7, v11);
  swift_endAccess();

  v12 = type metadata accessor for InsightRecordPayload.GridCleanlinessStats();
  v3 = *(v12 - 8);
  v13 = *(v3 + 48);
  v14 = v3 + 48;
  if (v13(v11, 1) != 1)
  {
    return sub_1D2043250(v11, v5);
  }

  InsightRecordPayload.GridCleanlinessStats.init()(v5);
  result = (v13)(v11, 1, v12);
  if (result != 1)
  {
    return sub_1D2043194(v11);
  }

  return result;
}

uint64_t sub_1D203E8F8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v9 = a2;
  v6 = a1;
  v4[1] = 0;
  v5 = (*(*(type metadata accessor for InsightRecordPayload.GridCleanlinessStats() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v4 - v5;
  v7 = (*(*(type metadata accessor for InsightRecordPayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v6);
  v10 = v4 - v7;
  sub_1D204D580(v2, v4 - v7);
  InsightRecordPayload.byGridCleanliness.getter(v8);
  sub_1D2043250(v8, v9);
  return sub_1D204D61C(v10);
}

uint64_t sub_1D203EA00(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(type metadata accessor for InsightRecordPayload.GridCleanlinessStats() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v4);
  v6 = &v3 - v5;
  sub_1D2043304(v1, &v3 - v5);
  return InsightRecordPayload.byGridCleanliness.setter(v6);
}

uint64_t InsightRecordPayload.byGridCleanliness.setter(char *a1)
{
  v15 = a1;
  v18 = 0;
  v17 = 0;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF020, &qword_1D2090840) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v15);
  v10 = (&v7 - v8);
  v9 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v13 = &v7 - v9;
  v18 = v4;
  v17 = v1;
  v14 = sub_1D203C804();
  sub_1D2043304(v15, v13);
  v5 = type metadata accessor for InsightRecordPayload.GridCleanlinessStats();
  (*(*(v5 - 8) + 56))(v13, 0, 1);
  sub_1D2042FAC(v13, v10);
  v11 = (v14 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byGridCleanliness);
  v12 = &v16;
  swift_beginAccess();
  sub_1D20433B8(v10, v11);
  swift_endAccess();
  sub_1D2043194(v13);

  return sub_1D2043650(v15);
}

char *InsightRecordPayload.GridCleanlinessStats.init()@<X0>(char *a1@<X8>)
{
  v8 = a1;
  v9 = 0;
  v1 = type metadata accessor for InsightRecordPayload.GridCleanlinessStats();
  v6 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - v6;
  v7 = v3;
  v9 = &v6 - v6;
  *v3 = -1.0;
  *(v3 + 1) = -1.0;
  *(v3 + 2) = -1.0;
  *(v3 + 3) = -1.0;
  v4 = &v3[*(v2 + 32)];
  sub_1D208C20C();
  return sub_1D2043250(v7, v8);
}

void (*InsightRecordPayload.byGridCleanliness.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(type metadata accessor for InsightRecordPayload.GridCleanlinessStats() - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3);
  v5 = __swift_coroFrameAllocStub(v3);
  a1[2] = v5;
  InsightRecordPayload.byGridCleanliness.getter(v5);
  return sub_1D203ED84;
}

void sub_1D203ED84(uint64_t *a1, char a2)
{
  if (a2)
  {
    v4 = a1[2];
    v5 = a1[1];
    v3 = *a1;
    sub_1D2043304(v4, v5);
    InsightRecordPayload.byGridCleanliness.setter(v5);
    sub_1D2043650(v4);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v2 = *a1;
    InsightRecordPayload.byGridCleanliness.setter(v6);
    free(v6);
    free(v7);
  }
}

BOOL InsightRecordPayload.hasByGridCleanliness.getter()
{
  v14 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF020, &qword_1D2090840);
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v12 = (&v4 - v7);
  v14 = v0;
  v11 = 0;
  v10 = *(v0 + *(type metadata accessor for InsightRecordPayload() + 20));

  v8 = (v10 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byGridCleanliness);
  v9 = &v13;
  swift_beginAccess();
  sub_1D2042FAC(v8, v12);
  swift_endAccess();

  v2 = type metadata accessor for InsightRecordPayload.GridCleanlinessStats();
  v6 = (*(*(v2 - 8) + 48))(v12, 1) != 1;
  v5 = v6;
  sub_1D2043194(v12);
  return v5;
}

Swift::Void __swiftcall InsightRecordPayload.clearByGridCleanliness()()
{
  v13 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF020, &qword_1D2090840);
  v5 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v7 = (&v4 - v5);
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v4 - v5);
  v10 = (&v4 - v6);
  v13 = v0;
  v11 = sub_1D203C804();
  v3 = type metadata accessor for InsightRecordPayload.GridCleanlinessStats();
  (*(*(v3 - 8) + 56))(v10, 1);
  sub_1D2042FAC(v10, v7);
  v8 = (v11 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byGridCleanliness);
  v9 = &v12;
  swift_beginAccess();
  sub_1D20433B8(v7, v8);
  swift_endAccess();
  sub_1D2043194(v10);
}

char *InsightRecordPayload.weather.getter@<X0>(char *a1@<X8>)
{
  v5 = a1;
  v16 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF028, &qword_1D2090848);
  v6 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v11 = &v5 - v6;
  v16 = v1;
  v10 = 0;
  v9 = *(v1 + *(type metadata accessor for InsightRecordPayload() + 20));

  v7 = (v9 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__weather);
  v8 = &v15;
  swift_beginAccess();
  sub_1D20436CC(v7, v11);
  swift_endAccess();

  v12 = type metadata accessor for InsightRecordPayload.WeatherStats();
  v3 = *(v12 - 8);
  v13 = *(v3 + 48);
  v14 = v3 + 48;
  if (v13(v11, 1) != 1)
  {
    return sub_1D2043970(v11, v5);
  }

  InsightRecordPayload.WeatherStats.init()(v5);
  result = (v13)(v11, 1, v12);
  if (result != 1)
  {
    return sub_1D20438B4(v11);
  }

  return result;
}

uint64_t sub_1D203F294@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v9 = a2;
  v6 = a1;
  v4[1] = 0;
  v5 = (*(*(type metadata accessor for InsightRecordPayload.WeatherStats() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v4 - v5;
  v7 = (*(*(type metadata accessor for InsightRecordPayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v6);
  v10 = v4 - v7;
  sub_1D204D580(v2, v4 - v7);
  InsightRecordPayload.weather.getter(v8);
  sub_1D2043970(v8, v9);
  return sub_1D204D61C(v10);
}

uint64_t sub_1D203F39C(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(type metadata accessor for InsightRecordPayload.WeatherStats() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v4);
  v6 = &v3 - v5;
  sub_1D2043A24(v1, &v3 - v5);
  return InsightRecordPayload.weather.setter(v6);
}

uint64_t InsightRecordPayload.weather.setter(char *a1)
{
  v15 = a1;
  v18 = 0;
  v17 = 0;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF028, &qword_1D2090848) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v15);
  v10 = (&v7 - v8);
  v9 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v13 = &v7 - v9;
  v18 = v4;
  v17 = v1;
  v14 = sub_1D203C804();
  sub_1D2043A24(v15, v13);
  v5 = type metadata accessor for InsightRecordPayload.WeatherStats();
  (*(*(v5 - 8) + 56))(v13, 0, 1);
  sub_1D20436CC(v13, v10);
  v11 = (v14 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__weather);
  v12 = &v16;
  swift_beginAccess();
  sub_1D2043AD8(v10, v11);
  swift_endAccess();
  sub_1D20438B4(v13);

  return sub_1D2043D70(v15);
}

char *InsightRecordPayload.WeatherStats.init()@<X0>(char *a1@<X8>)
{
  v8 = a1;
  v9 = 0;
  v1 = type metadata accessor for InsightRecordPayload.WeatherStats();
  v6 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - v6;
  v7 = v3;
  v9 = &v6 - v6;
  *v3 = -1.0;
  *(v3 + 1) = -1.0;
  *(v3 + 2) = -1.0;
  *(v3 + 3) = -1.0;
  v4 = &v3[*(v2 + 32)];
  sub_1D208C20C();
  return sub_1D2043970(v7, v8);
}

void (*InsightRecordPayload.weather.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(type metadata accessor for InsightRecordPayload.WeatherStats() - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3);
  v5 = __swift_coroFrameAllocStub(v3);
  a1[2] = v5;
  InsightRecordPayload.weather.getter(v5);
  return sub_1D203F720;
}

void sub_1D203F720(uint64_t *a1, char a2)
{
  if (a2)
  {
    v4 = a1[2];
    v5 = a1[1];
    v3 = *a1;
    sub_1D2043A24(v4, v5);
    InsightRecordPayload.weather.setter(v5);
    sub_1D2043D70(v4);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v2 = *a1;
    InsightRecordPayload.weather.setter(v6);
    free(v6);
    free(v7);
  }
}

BOOL InsightRecordPayload.hasWeather.getter()
{
  v14 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF028, &qword_1D2090848);
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v12 = (&v4 - v7);
  v14 = v0;
  v11 = 0;
  v10 = *(v0 + *(type metadata accessor for InsightRecordPayload() + 20));

  v8 = (v10 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__weather);
  v9 = &v13;
  swift_beginAccess();
  sub_1D20436CC(v8, v12);
  swift_endAccess();

  v2 = type metadata accessor for InsightRecordPayload.WeatherStats();
  v6 = (*(*(v2 - 8) + 48))(v12, 1) != 1;
  v5 = v6;
  sub_1D20438B4(v12);
  return v5;
}

Swift::Void __swiftcall InsightRecordPayload.clearWeather()()
{
  v13 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF028, &qword_1D2090848);
  v5 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v7 = (&v4 - v5);
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v4 - v5);
  v10 = (&v4 - v6);
  v13 = v0;
  v11 = sub_1D203C804();
  v3 = type metadata accessor for InsightRecordPayload.WeatherStats();
  (*(*(v3 - 8) + 56))(v10, 1);
  sub_1D20436CC(v10, v7);
  v8 = (v11 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__weather);
  v9 = &v12;
  swift_beginAccess();
  sub_1D2043AD8(v7, v8);
  swift_endAccess();
  sub_1D20438B4(v10);
}

uint64_t InsightRecordPayload.grouping.getter@<X0>(uint64_t a1@<X8>)
{
  v7 = *(v1 + *(type metadata accessor for InsightRecordPayload() + 20));

  v3 = (v7 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__grouping);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  swift_endAccess();
  *a1 = v4;
  *(a1 + 8) = v5 & 1;
}

uint64_t sub_1D203FB48@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a2;
  v7 = a1;
  v8 = (*(*(type metadata accessor for InsightRecordPayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v7 - v8;
  sub_1D204D580(v2, &v7 - v8);
  InsightRecordPayload.grouping.getter(&v11);
  v3 = v9;
  v4 = v10;
  v5 = v12;
  *v9 = v11;
  *(v3 + 8) = v5 & 1;
  return sub_1D204D61C(v4);
}

uint64_t sub_1D203FC04(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1 & 1;
  return InsightRecordPayload.grouping.setter(&v3);
}

uint64_t InsightRecordPayload.grouping.setter(uint64_t *a1)
{
  v4 = a1[1] & 1;
  v2 = *a1;
  v3 = sub_1D203C804() + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__grouping;
  swift_beginAccess();
  *v3 = v2;
  *(v3 + 8) = v4;
  swift_endAccess();
}

uint64_t (*InsightRecordPayload.grouping.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  InsightRecordPayload.grouping.getter(a1);
  return sub_1D203FD8C;
}

uint64_t sub_1D203FD8C(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 8);
  if (a2)
  {
    v5 = *a1;
    v6 = v3 & 1;
    return InsightRecordPayload.grouping.setter(&v5);
  }

  else
  {
    v7 = *a1;
    v8 = v3 & 1;
    return InsightRecordPayload.grouping.setter(&v7);
  }
}

uint64_t InsightRecordPayload.unknownFields.setter(uint64_t a1)
{
  v11 = a1;
  v13 = 0;
  v12 = 0;
  v10 = sub_1D208C21C();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v6 = &v4 - v5;
  v13 = v2;
  v12 = v1;
  (*(v8 + 16))();
  (*(v8 + 40))(v7, v6, v10);
  return (*(v8 + 8))(v11, v10);
}

uint64_t InsightRecordPayload.Grouping.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = 0;
  v3 = 1;
  return sub_1D1FD8374(&v2, a1);
}

uint64_t InsightRecordPayload.Grouping.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
      v5 = 1;
    }

    else if (a1 == 2)
    {
      v4 = 2;
      v5 = 1;
    }

    else
    {
      v4 = a1;
      v5 = 0;
    }
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  result = sub_1D1FD8374(&v4, a2);
  *(a2 + 9) = 0;
  return result;
}

uint64_t InsightRecordPayload.Grouping.rawValue.getter()
{
  v4 = *v0;
  if ((v0[8] & 1) == 0)
  {
    return *v0;
  }

  v1 = *v0;
  if (!v4)
  {
    return 0;
  }

  if (v4 == 1)
  {
    return 1;
  }

  return 2;
}

uint64_t sub_1D204020C@<X0>(uint64_t *a1@<X8>)
{
  result = InsightRecordPayload.Grouping.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t InsightRecordPayload.TariffPeakStats.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for InsightRecordPayload.TariffPeakStats() + 40);
  v2 = sub_1D208C21C();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t InsightRecordPayload.TariffPeakStats.unknownFields.setter(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v7 = 0;
  v11 = sub_1D208C21C();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v8 = &v5 - v6;
  v14 = v2;
  v13 = v1;
  (*(v9 + 16))();
  v3 = type metadata accessor for InsightRecordPayload.TariffPeakStats();
  (*(v9 + 40))(v1 + *(v3 + 40), v8, v11);
  return (*(v9 + 8))(v12, v11);
}

uint64_t InsightRecordPayload.GridCleanlinessStats.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for InsightRecordPayload.GridCleanlinessStats() + 32);
  v2 = sub_1D208C21C();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t InsightRecordPayload.GridCleanlinessStats.unknownFields.setter(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v7 = 0;
  v11 = sub_1D208C21C();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v8 = &v5 - v6;
  v14 = v2;
  v13 = v1;
  (*(v9 + 16))();
  v3 = type metadata accessor for InsightRecordPayload.GridCleanlinessStats();
  (*(v9 + 40))(v1 + *(v3 + 32), v8, v11);
  return (*(v9 + 8))(v12, v11);
}

uint64_t InsightRecordPayload.WeatherStats.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for InsightRecordPayload.WeatherStats() + 32);
  v2 = sub_1D208C21C();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t InsightRecordPayload.WeatherStats.unknownFields.setter(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v7 = 0;
  v11 = sub_1D208C21C();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v8 = &v5 - v6;
  v14 = v2;
  v13 = v1;
  (*(v9 + 16))();
  v3 = type metadata accessor for InsightRecordPayload.WeatherStats();
  (*(v9 + 40))(v1 + *(v3 + 32), v8, v11);
  return (*(v9 + 8))(v12, v11);
}

uint64_t InsightRecordPayload.init()@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v11 = 0;
  v6 = type metadata accessor for InsightRecordPayload();
  v5 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v7 = &v4 - v5;
  v11 = &v4 - v5;
  sub_1D208C20C();
  v8 = *(v6 + 20);
  v9 = *sub_1D20410A0();

  v1 = v7;
  v2 = v10;
  *&v7[v8] = v9;
  return sub_1D2043EE4(v1, v2);
}

uint64_t sub_1D2041070()
{
  v1 = *sub_1D20410A0();

  return v1;
}

uint64_t *sub_1D20410A0()
{
  if (qword_1EC6C4828 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C4830;
}

uint64_t sub_1D2041100()
{
  v2 = *(v0 + *(type metadata accessor for InsightRecordPayload() + 20));

  return v2;
}

uint64_t sub_1D2041144(uint64_t a1)
{

  v2 = (v1 + *(type metadata accessor for InsightRecordPayload() + 20));
  v3 = *v2;
  *v2 = a1;
}

uint64_t sub_1D20411A4()
{
  result = sub_1D208CB2C();
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v1 + 16) = 1;
  *(v1 + 24) = 1;
  *(v1 + 32) = 2;
  *(v1 + 40) = 1;
  sub_1D1FCECE8();
  qword_1EC6C47E8 = result;
  return result;
}

uint64_t *sub_1D204122C()
{
  if (qword_1EC6C47E0 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C47E8;
}

uint64_t static InsightRecordPayload.Grouping.allCases.getter()
{
  v1 = sub_1D204122C();
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  return v2;
}

uint64_t static InsightRecordPayload.Grouping.allCases.setter(uint64_t a1)
{
  v3 = sub_1D204122C();

  swift_beginAccess();
  v1 = *v3;
  *v3 = a1;

  swift_endAccess();
}

uint64_t (*static InsightRecordPayload.Grouping.allCases.modify())()
{
  sub_1D204122C();
  swift_beginAccess();
  return sub_1D1FD9ED8;
}

uint64_t sub_1D20413BC@<X0>(uint64_t *a1@<X8>)
{
  result = static InsightRecordPayload.Grouping.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D20413E8()
{
  result = sub_1D208C64C();
  qword_1EC6C47F8 = result;
  qword_1EC6C4800 = v1;
  return result;
}

uint64_t *sub_1D204142C()
{
  if (qword_1EC6C47F0 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C47F8;
}

uint64_t static InsightRecordPayload.protoMessageName.getter()
{
  v0 = sub_1D204142C();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_1D20414C8()
{
  v30 = sub_1D208C47C();
  __swift_allocate_value_buffer(v30, qword_1EC6C4810);
  __swift_project_value_buffer(v30, qword_1EC6C4810);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v34 = v0;
  v1 = *(v37 + 48);
  *v0 = 1;
  v32 = v0 + v1;
  *v32 = "start";
  *(v32 + 1) = 5;
  v32[16] = 2;
  v35 = MEMORY[0x1E69AADC8];
  v31 = *MEMORY[0x1E69AADC8];
  v36 = *(*(sub_1D208C45C() - 8) + 104);
  (v36)(v32, v31);
  v33 = *(*(v37 - 8) + 72);
  v2 = *(v37 + 48);
  *(v34 + v33) = 2;
  v3 = v34 + v33 + v2;
  *v3 = "end";
  *(v3 + 1) = 3;
  v3[16] = 2;
  v4 = *v35;
  v36();
  v5 = *(v37 + 48);
  v6 = (v34 + 2 * v33);
  *v6 = 3;
  v7 = v6 + v5;
  *v7 = "totalEnergy";
  *(v7 + 1) = 11;
  v7[16] = 2;
  v8 = *v35;
  v36();
  v9 = *(v37 + 48);
  v10 = (v34 + 3 * v33);
  *v10 = 4;
  v11 = v10 + v9;
  *v11 = "totalRuntime";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v12 = *v35;
  v36();
  v13 = *(v37 + 48);
  v14 = (v34 + 4 * v33);
  *v14 = 5;
  v15 = v14 + v13;
  *v15 = "byPeaks";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v16 = *v35;
  v36();
  v17 = *(v37 + 48);
  v18 = (v34 + 5 * v33);
  *v18 = 6;
  v19 = v18 + v17;
  *v19 = "byGridCleanliness";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v20 = *v35;
  v36();
  v21 = *(v37 + 48);
  v22 = (v34 + 6 * v33);
  *v22 = 7;
  v23 = v22 + v21;
  *v23 = "weather";
  *(v23 + 1) = 7;
  v23[16] = 2;
  v24 = *v35;
  v36();
  v25 = *(v37 + 48);
  v26 = (v34 + 7 * v33);
  *v26 = 8;
  v27 = v26 + v25;
  *v27 = "grouping";
  *(v27 + 1) = 8;
  v27[16] = 2;
  v28 = *v35;
  v36();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D2041944()
{
  if (qword_1EC6C4808 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EC6C4810);
}

uint64_t static InsightRecordPayload._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D2041944();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1D2041A14@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__start);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D2041A70(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  sub_1D1FD5F1C(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__start);
  v7 = &v9;
  swift_beginAccess();
  sub_1D1FD6448(v5, v6);
  swift_endAccess();
  return sub_1D1FD6044(v8);
}

uint64_t sub_1D2041BA4@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__end);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D2041C00(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  sub_1D1FD5F1C(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__end);
  v7 = &v9;
  swift_beginAccess();
  sub_1D1FD6448(v5, v6);
  swift_endAccess();
  return sub_1D1FD6044(v8);
}

double sub_1D2041D34()
{
  v2 = (v0 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__totalEnergy);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1D2041D90(double a1)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__totalEnergy);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

double sub_1D2041E50()
{
  v2 = (v0 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__totalRuntime);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1D2041EAC(double a1)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__totalRuntime);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1D2041F6C@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byPeaks);
  swift_beginAccess();
  sub_1D204283C(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D2041FC8(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF018, &qword_1D2090838) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v5 = (&v4 - v4);
  sub_1D204283C(v2, (&v4 - v4));
  v6 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byPeaks);
  v7 = &v9;
  swift_beginAccess();
  sub_1D2042C78(v5, v6);
  swift_endAccess();
  return sub_1D2042A34(v8);
}

uint64_t sub_1D20420FC@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byGridCleanliness);
  swift_beginAccess();
  sub_1D2042FAC(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D2042158(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF020, &qword_1D2090840) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v5 = (&v4 - v4);
  sub_1D2042FAC(v2, (&v4 - v4));
  v6 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byGridCleanliness);
  v7 = &v9;
  swift_beginAccess();
  sub_1D20433B8(v5, v6);
  swift_endAccess();
  return sub_1D2043194(v8);
}

uint64_t sub_1D204228C@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__weather);
  swift_beginAccess();
  sub_1D20436CC(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D20422E8(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF028, &qword_1D2090848) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v5 = (&v4 - v4);
  sub_1D20436CC(v2, (&v4 - v4));
  v6 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__weather);
  v7 = &v9;
  swift_beginAccess();
  sub_1D2043AD8(v5, v6);
  swift_endAccess();
  return sub_1D20438B4(v8);
}

uint64_t sub_1D204241C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__grouping);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  result = swift_endAccess();
  *a1 = v4;
  *(a1 + 8) = v5 & 1;
  return result;
}

uint64_t sub_1D204249C(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = v1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__grouping;
  swift_beginAccess();
  *v5 = v3;
  *(v5 + 8) = v4 & 1;
  return swift_endAccess();
}

uint64_t sub_1D2042578()
{
  type metadata accessor for InsightRecordPayload._StorageClass();
  result = sub_1D20425AC();
  qword_1EC6C4830 = result;
  return result;
}

uint64_t sub_1D20425AC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1D20425E8();
}

uint64_t sub_1D20425E8()
{
  v6 = OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__start;
  v7 = sub_1D208C1EC();
  v8 = *(*(v7 - 8) + 56);
  v8(v0 + v6, 1);
  (v8)(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__end, 1, 1, v7);
  *(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__totalEnergy) = -1.0;
  *(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__totalRuntime) = -1.0;
  v9 = OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byPeaks;
  v1 = type metadata accessor for InsightRecordPayload.TariffPeakStats();
  (*(*(v1 - 8) + 56))(v0 + v9, 1);
  v10 = OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byGridCleanliness;
  v2 = type metadata accessor for InsightRecordPayload.GridCleanlinessStats();
  (*(*(v2 - 8) + 56))(v0 + v10, 1);
  v11 = OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__weather;
  v3 = type metadata accessor for InsightRecordPayload.WeatherStats();
  (*(*(v3 - 8) + 56))(v0 + v11, 1);
  result = v12;
  v5 = v12 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__grouping;
  *v5 = 0;
  *(v5 + 8) = 1;
  return result;
}

uint64_t sub_1D20427F0(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_1D2043F6C(a1);
}

void *sub_1D204283C(void *a1, void *a2)
{
  v9 = type metadata accessor for InsightRecordPayload.TariffPeakStats();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF018, &qword_1D2090838);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    a2[1] = a1[1];
    a2[2] = a1[2];
    a2[3] = a1[3];
    a2[4] = a1[4];
    a2[5] = a1[5];
    v6 = a2 + *(v9 + 40);
    v5 = a1 + *(v9 + 40);
    v2 = sub_1D208C21C();
    (*(*(v2 - 8) + 16))(v6, v5);
    (*(v10 + 56))(a2, 0, 1, v9);
  }

  return a2;
}

uint64_t type metadata accessor for InsightRecordPayload.TariffPeakStats()
{
  v1 = qword_1EC6C5850;
  if (!qword_1EC6C5850)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1D2042A34(uint64_t a1)
{
  v5 = type metadata accessor for InsightRecordPayload.TariffPeakStats();
  if (!(*(*(v5 - 8) + 48))(a1, 1))
  {
    v3 = a1 + *(v5 + 40);
    v1 = sub_1D208C21C();
    (*(*(v1 - 8) + 8))(v3);
  }

  return a1;
}

char *sub_1D2042AF0(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 2) = *(a1 + 2);
  *(a2 + 3) = *(a1 + 3);
  *(a2 + 4) = *(a1 + 4);
  *(a2 + 5) = *(a1 + 5);
  v4 = *(type metadata accessor for InsightRecordPayload.TariffPeakStats() + 40);
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 32))(&a2[v4], &a1[v4]);
  return a2;
}

char *sub_1D2042BB4(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 2) = *(a1 + 2);
  *(a2 + 3) = *(a1 + 3);
  *(a2 + 4) = *(a1 + 4);
  *(a2 + 5) = *(a1 + 5);
  v4 = *(type metadata accessor for InsightRecordPayload.TariffPeakStats() + 40);
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 16))(&a2[v4], &a1[v4]);
  return a2;
}

void *sub_1D2042C78(void *a1, void *a2)
{
  v13 = type metadata accessor for InsightRecordPayload.TariffPeakStats();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if ((v15)(a2, 1))
  {
    if (v15(a1, 1, v13))
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF018, &qword_1D2090838);
      memcpy(a2, a1, *(*(v5 - 8) + 64));
    }

    else
    {
      *a2 = *a1;
      a2[1] = a1[1];
      a2[2] = a1[2];
      a2[3] = a1[3];
      a2[4] = a1[4];
      a2[5] = a1[5];
      v8 = a2 + *(v13 + 40);
      v7 = a1 + *(v13 + 40);
      v4 = sub_1D208C21C();
      (*(*(v4 - 8) + 32))(v8, v7);
      (*(v14 + 56))(a2, 0, 1, v13);
    }
  }

  else if (v15(a1, 1, v13))
  {
    sub_1D2042F30(a2);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF018, &qword_1D2090838);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    a2[1] = a1[1];
    a2[2] = a1[2];
    a2[3] = a1[3];
    a2[4] = a1[4];
    a2[5] = a1[5];
    v10 = a2 + *(v13 + 40);
    v9 = a1 + *(v13 + 40);
    v2 = sub_1D208C21C();
    (*(*(v2 - 8) + 40))(v10, v9);
  }

  return a2;
}

uint64_t sub_1D2042F30(uint64_t a1)
{
  v3 = *(type metadata accessor for InsightRecordPayload.TariffPeakStats() + 40);
  v1 = sub_1D208C21C();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

void *sub_1D2042FAC(void *a1, void *a2)
{
  v9 = type metadata accessor for InsightRecordPayload.GridCleanlinessStats();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF020, &qword_1D2090840);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    a2[1] = a1[1];
    a2[2] = a1[2];
    a2[3] = a1[3];
    v6 = a2 + *(v9 + 32);
    v5 = a1 + *(v9 + 32);
    v2 = sub_1D208C21C();
    (*(*(v2 - 8) + 16))(v6, v5);
    (*(v10 + 56))(a2, 0, 1, v9);
  }

  return a2;
}

uint64_t type metadata accessor for InsightRecordPayload.GridCleanlinessStats()
{
  v1 = qword_1EC6C5860;
  if (!qword_1EC6C5860)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1D2043194(uint64_t a1)
{
  v5 = type metadata accessor for InsightRecordPayload.GridCleanlinessStats();
  if (!(*(*(v5 - 8) + 48))(a1, 1))
  {
    v3 = a1 + *(v5 + 32);
    v1 = sub_1D208C21C();
    (*(*(v1 - 8) + 8))(v3);
  }

  return a1;
}

char *sub_1D2043250(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 2) = *(a1 + 2);
  *(a2 + 3) = *(a1 + 3);
  v4 = *(type metadata accessor for InsightRecordPayload.GridCleanlinessStats() + 32);
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 32))(&a2[v4], &a1[v4]);
  return a2;
}

char *sub_1D2043304(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 2) = *(a1 + 2);
  *(a2 + 3) = *(a1 + 3);
  v4 = *(type metadata accessor for InsightRecordPayload.GridCleanlinessStats() + 32);
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 16))(&a2[v4], &a1[v4]);
  return a2;
}

void *sub_1D20433B8(void *a1, void *a2)
{
  v13 = type metadata accessor for InsightRecordPayload.GridCleanlinessStats();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if ((v15)(a2, 1))
  {
    if (v15(a1, 1, v13))
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF020, &qword_1D2090840);
      memcpy(a2, a1, *(*(v5 - 8) + 64));
    }

    else
    {
      *a2 = *a1;
      a2[1] = a1[1];
      a2[2] = a1[2];
      a2[3] = a1[3];
      v8 = a2 + *(v13 + 32);
      v7 = a1 + *(v13 + 32);
      v4 = sub_1D208C21C();
      (*(*(v4 - 8) + 32))(v8, v7);
      (*(v14 + 56))(a2, 0, 1, v13);
    }
  }

  else if (v15(a1, 1, v13))
  {
    sub_1D2043650(a2);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF020, &qword_1D2090840);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    a2[1] = a1[1];
    a2[2] = a1[2];
    a2[3] = a1[3];
    v10 = a2 + *(v13 + 32);
    v9 = a1 + *(v13 + 32);
    v2 = sub_1D208C21C();
    (*(*(v2 - 8) + 40))(v10, v9);
  }

  return a2;
}

uint64_t sub_1D2043650(uint64_t a1)
{
  v3 = *(type metadata accessor for InsightRecordPayload.GridCleanlinessStats() + 32);
  v1 = sub_1D208C21C();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

void *sub_1D20436CC(void *a1, void *a2)
{
  v9 = type metadata accessor for InsightRecordPayload.WeatherStats();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF028, &qword_1D2090848);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    a2[1] = a1[1];
    a2[2] = a1[2];
    a2[3] = a1[3];
    v6 = a2 + *(v9 + 32);
    v5 = a1 + *(v9 + 32);
    v2 = sub_1D208C21C();
    (*(*(v2 - 8) + 16))(v6, v5);
    (*(v10 + 56))(a2, 0, 1, v9);
  }

  return a2;
}

uint64_t type metadata accessor for InsightRecordPayload.WeatherStats()
{
  v1 = qword_1EC6C5870;
  if (!qword_1EC6C5870)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1D20438B4(uint64_t a1)
{
  v5 = type metadata accessor for InsightRecordPayload.WeatherStats();
  if (!(*(*(v5 - 8) + 48))(a1, 1))
  {
    v3 = a1 + *(v5 + 32);
    v1 = sub_1D208C21C();
    (*(*(v1 - 8) + 8))(v3);
  }

  return a1;
}

char *sub_1D2043970(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 2) = *(a1 + 2);
  *(a2 + 3) = *(a1 + 3);
  v4 = *(type metadata accessor for InsightRecordPayload.WeatherStats() + 32);
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 32))(&a2[v4], &a1[v4]);
  return a2;
}

char *sub_1D2043A24(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 2) = *(a1 + 2);
  *(a2 + 3) = *(a1 + 3);
  v4 = *(type metadata accessor for InsightRecordPayload.WeatherStats() + 32);
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 16))(&a2[v4], &a1[v4]);
  return a2;
}

void *sub_1D2043AD8(void *a1, void *a2)
{
  v13 = type metadata accessor for InsightRecordPayload.WeatherStats();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if ((v15)(a2, 1))
  {
    if (v15(a1, 1, v13))
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF028, &qword_1D2090848);
      memcpy(a2, a1, *(*(v5 - 8) + 64));
    }

    else
    {
      *a2 = *a1;
      a2[1] = a1[1];
      a2[2] = a1[2];
      a2[3] = a1[3];
      v8 = a2 + *(v13 + 32);
      v7 = a1 + *(v13 + 32);
      v4 = sub_1D208C21C();
      (*(*(v4 - 8) + 32))(v8, v7);
      (*(v14 + 56))(a2, 0, 1, v13);
    }
  }

  else if (v15(a1, 1, v13))
  {
    sub_1D2043D70(a2);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF028, &qword_1D2090848);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    a2[1] = a1[1];
    a2[2] = a1[2];
    a2[3] = a1[3];
    v10 = a2 + *(v13 + 32);
    v9 = a1 + *(v13 + 32);
    v2 = sub_1D208C21C();
    (*(*(v2 - 8) + 40))(v10, v9);
  }

  return a2;
}

uint64_t sub_1D2043D70(uint64_t a1)
{
  v3 = *(type metadata accessor for InsightRecordPayload.WeatherStats() + 32);
  v1 = sub_1D208C21C();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

unint64_t sub_1D2043DEC()
{
  v2 = qword_1EC6BF030;
  if (!qword_1EC6BF030)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF030);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2043E68()
{
  v2 = qword_1EC6BF038;
  if (!qword_1EC6BF038)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF038);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D2043EE4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = type metadata accessor for InsightRecordPayload();
  result = a2;
  *(a2 + *(v3 + 20)) = *(a1 + *(v3 + 20));
  return result;
}

uint64_t sub_1D2043F6C(uint64_t a1)
{
  v84 = a1;
  v104 = 0;
  v103 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF028, &qword_1D2090848);
  v18 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v68 = (&v18 - v18);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF020, &qword_1D2090840);
  v19 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v62 = (&v18 - v19);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF018, &qword_1D2090838);
  v20 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v56 = (&v18 - v20);
  v21 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v84);
  v38 = &v18 - v21;
  v104 = v5;
  v103 = v1;
  v32 = &qword_1EC6C3498[365];
  v22 = OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__start;
  v28 = 0;
  v23 = sub_1D208C1EC();
  v6 = *(v23 - 8);
  v25 = *(v6 + 56);
  v24 = v6 + 56;
  v81 = 1;
  v25(v1 + v22, 1);
  v37 = &qword_1EC6C3498[365];
  (v25)(v1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__end, v81, v81, v23);
  v43 = &qword_1EC6C3498[365];
  *(v1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__totalEnergy) = -1.0;
  v49 = &qword_1EC6C3498[365];
  *(v1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__totalRuntime) = -1.0;
  v55 = &qword_1EC6C3498[365];
  v26 = OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byPeaks;
  v7 = type metadata accessor for InsightRecordPayload.TariffPeakStats();
  (*(*(v7 - 8) + 56))(v1 + v26, v81);
  v61 = &qword_1EC6C3498[365];
  v27 = OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byGridCleanliness;
  v8 = type metadata accessor for InsightRecordPayload.GridCleanlinessStats();
  (*(*(v8 - 8) + 56))(v1 + v27, v81);
  v67 = &qword_1EC6C3498[365];
  v29 = OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__weather;
  v9 = type metadata accessor for InsightRecordPayload.WeatherStats();
  (*(*(v9 - 8) + 56))(v1 + v29, v81);
  v10 = v32;
  v11 = v81;
  v12 = v84;
  v76 = &qword_1EC6C3498[365];
  v13 = v1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__grouping;
  *v13 = 0;
  *(v13 + 8) = v11 & 1;
  v30 = (v12 + v10[288]);
  v31 = &v102;
  v71 = 32;
  v78 = 0;
  swift_beginAccess();
  sub_1D1FD5F1C(v30, v38);
  swift_endAccess();
  v33 = (v1 + v32[288]);
  v34 = &v101;
  v77 = 33;
  swift_beginAccess();
  sub_1D1FD6448(v38, v33);
  swift_endAccess();
  v35 = (v84 + v37[289]);
  v36 = &v100;
  swift_beginAccess();
  sub_1D1FD5F1C(v35, v38);
  swift_endAccess();
  v39 = (v1 + v37[289]);
  v40 = &v99;
  swift_beginAccess();
  sub_1D1FD6448(v38, v39);
  swift_endAccess();
  v41 = (v84 + v43[290]);
  v42 = &v98;
  swift_beginAccess();
  v45 = *v41;
  swift_endAccess();
  v44 = (v1 + v43[290]);
  v46 = &v97;
  swift_beginAccess();
  *v44 = v45;
  swift_endAccess();
  v47 = (v84 + v49[291]);
  v48 = &v96;
  swift_beginAccess();
  v51 = *v47;
  swift_endAccess();
  v50 = (v1 + v49[291]);
  v52 = &v95;
  swift_beginAccess();
  *v50 = v51;
  swift_endAccess();
  v53 = (v84 + v55[292]);
  v54 = &v94;
  swift_beginAccess();
  sub_1D204283C(v53, v56);
  swift_endAccess();
  v57 = (v1 + v55[292]);
  v58 = &v93;
  swift_beginAccess();
  sub_1D2042C78(v56, v57);
  swift_endAccess();
  v59 = (v84 + v61[293]);
  v60 = &v92;
  swift_beginAccess();
  sub_1D2042FAC(v59, v62);
  swift_endAccess();
  v63 = (v1 + v61[293]);
  v64 = &v91;
  swift_beginAccess();
  sub_1D20433B8(v62, v63);
  swift_endAccess();
  v65 = (v84 + v67[294]);
  v66 = &v90;
  swift_beginAccess();
  sub_1D20436CC(v65, v68);
  swift_endAccess();
  v69 = (v1 + v67[294]);
  v70 = &v89;
  swift_beginAccess();
  sub_1D2043AD8(v68, v69);
  swift_endAccess();
  v72 = (v84 + v76[295]);
  v73 = v87;
  swift_beginAccess();
  v74 = *v72;
  v75 = *(v72 + 8);
  swift_endAccess();
  v87[3] = v74;
  v88 = v75 & 1 & v81;
  v79 = v74;
  v80 = v88;
  v82 = (v1 + v76[295]);
  v83 = &v86;
  swift_beginAccess();
  v14 = v80;
  v15 = v81;
  v16 = v82;
  *v82 = v79;
  *(v16 + 8) = v14 & 1 & v15;
  swift_endAccess();

  return v85;
}

uint64_t sub_1D2044750()
{
  sub_1D1FD6044(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__start);
  sub_1D1FD6044(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__end);
  sub_1D2042A34(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byPeaks);
  sub_1D2043194(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byGridCleanliness);
  sub_1D20438B4(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__weather);
  return v2;
}

uint64_t sub_1D20447CC()
{
  v0 = *sub_1D2044750();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t InsightRecordPayload.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v22 = a1;
  v21 = v3;
  sub_1D203C804();

  v7 = *(v6 + *(type metadata accessor for InsightRecordPayload() + 20));

  v20 = v7;
  v16 = a2;
  v17 = a3;
  v18 = a1;
  v13 = sub_1D2044D70;
  v14 = &v15;
  v11 = type metadata accessor for InsightRecordPayload._StorageClass();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6BF320, "D1");
  sub_1D201D1EC(&v20, sub_1D201D1BC, v12, v11, v4, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v19);
}

uint64_t sub_1D20449A8()
{
  while (1)
  {
    result = sub_1D208C27C();
    if (v2 || (v1 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        sub_1D2044DAC();
        break;
      case 2:
        sub_1D2044E8C();
        break;
      case 3:
        sub_1D2044F6C();
        break;
      case 4:
        sub_1D2045034();
        break;
      case 5:
        sub_1D20450FC();
        break;
      case 6:
        sub_1D20451DC();
        break;
      case 7:
        sub_1D20452BC();
        break;
      case 8:
        sub_1D204539C();
        break;
    }

    v2 = 0;
  }

  return result;
}

uint64_t sub_1D2044D70()
{
  v4 = v0[2];
  v1 = v0[3];
  v2 = v0[4];
  return sub_1D20449A8();
}

uint64_t sub_1D2044DAC()
{
  swift_beginAccess();
  sub_1D208C1EC();
  sub_1D1FE1C64();
  sub_1D208C33C();
  return swift_endAccess();
}

uint64_t sub_1D2044E8C()
{
  swift_beginAccess();
  sub_1D208C1EC();
  sub_1D1FE1C64();
  sub_1D208C33C();
  return swift_endAccess();
}

uint64_t sub_1D2044F6C()
{
  swift_beginAccess();
  sub_1D208C2FC();
  return swift_endAccess();
}

uint64_t sub_1D2045034()
{
  swift_beginAccess();
  sub_1D208C2FC();
  return swift_endAccess();
}

uint64_t sub_1D20450FC()
{
  swift_beginAccess();
  type metadata accessor for InsightRecordPayload.TariffPeakStats();
  sub_1D204A0F0();
  sub_1D208C33C();
  return swift_endAccess();
}

uint64_t sub_1D20451DC()
{
  swift_beginAccess();
  type metadata accessor for InsightRecordPayload.GridCleanlinessStats();
  sub_1D204B284();
  sub_1D208C33C();
  return swift_endAccess();
}

uint64_t sub_1D20452BC()
{
  swift_beginAccess();
  type metadata accessor for InsightRecordPayload.WeatherStats();
  sub_1D204C418();
  sub_1D208C33C();
  return swift_endAccess();
}

uint64_t sub_1D204539C()
{
  swift_beginAccess();
  sub_1D2043E68();
  sub_1D208C2AC();
  return swift_endAccess();
}

uint64_t InsightRecordPayload.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v19 = a2;
  v20 = a3;
  v22 = sub_1D2045C8C;
  v23 = sub_1D201D1BC;
  v39 = 0;
  v38 = 0;
  v40 = a2;
  v17 = 0;
  v11 = sub_1D208C21C();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  v14 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v15 = v9 - v14;
  v39 = v21;
  v38 = v3;
  v18 = *(v16 + *(type metadata accessor for InsightRecordPayload() + 20));

  v27 = &v37;
  v37 = v18;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v24 = &v29;
  v30 = v22;
  v31 = &v32;
  v25 = type metadata accessor for InsightRecordPayload._StorageClass();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6BF320, "D1");
  v5 = v26;
  sub_1D201D1EC(v27, v23, v24, v25, v4, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v36);
  v28 = v5;
  if (v5)
  {
    v9[2] = v36;
  }

  else
  {
    v6 = v15;

    (*(v12 + 16))(v6, v16, v11);
    v7 = v28;
    sub_1D208C1FC();
    v9[4] = v7;
    v10 = v7;
    if (v7)
    {
      v9[1] = v10;
    }

    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_1D2045778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1D2045CC8(a1, a2, a3, a4);
  if (!v4)
  {
    sub_1D2045F78(a1, a2, a3, a4);
    v18 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__totalEnergy);
    swift_beginAccess();
    v19 = *v18;
    swift_endAccess();
    if (v19 != -1.0)
    {
      v16 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__totalEnergy);
      swift_beginAccess();
      v17 = *v16;
      swift_endAccess();
      sub_1D208C40C();
    }

    v14 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__totalRuntime);
    swift_beginAccess();
    v15 = *v14;
    swift_endAccess();
    if (v15 != -1.0)
    {
      v12 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__totalRuntime);
      swift_beginAccess();
      v13 = *v12;
      swift_endAccess();
      sub_1D208C40C();
    }

    sub_1D2046228(a1, a2, a3, a4);
    sub_1D2046460(a1, a2, a3, a4);
    sub_1D2046698(a1, a2, a3, a4);
    v9 = a1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__grouping;
    swift_beginAccess();
    v10 = *v9;
    v11 = *(v9 + 8);
    swift_endAccess();
    sub_1D204C5C8();
    if ((sub_1D208C59C() & 1) == 0)
    {
      v6 = a1 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__grouping;
      swift_beginAccess();
      v7 = *v6;
      v8 = *(v6 + 8);
      swift_endAccess();
      sub_1D2043E68();
      sub_1D208C3CC();
    }

    return 0;
  }

  return result;
}

uint64_t sub_1D2045CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v17 = a2;
  v13 = a3;
  v14 = a4;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v16 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v25 = v9 - v16;
  v26 = sub_1D208C1EC();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v19 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v18);
  v20 = v9 - v19;
  v30 = v9 - v19;
  v29 = v5;
  v28 = v6;
  v21 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__start);
  v22 = &v27;
  swift_beginAccess();
  sub_1D1FD5F1C(v21, v25);
  swift_endAccess();
  if ((*(v23 + 48))(v25, 1, v26) == 1)
  {
    result = sub_1D1FD6044(v25);
    v12 = v15;
  }

  else
  {
    (*(v23 + 32))(v20, v25, v26);
    sub_1D1FE1C64();
    v8 = v15;
    sub_1D208C44C();
    v10 = v8;
    v11 = v8;
    if (v8)
    {
      v9[1] = v11;
      return (*(v23 + 8))(v20, v26);
    }

    else
    {
      (*(v23 + 8))(v20, v26);
      result = v10;
      v12 = v10;
    }
  }

  return result;
}

uint64_t sub_1D2045F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v17 = a2;
  v13 = a3;
  v14 = a4;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v16 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v25 = v9 - v16;
  v26 = sub_1D208C1EC();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v19 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v18);
  v20 = v9 - v19;
  v30 = v9 - v19;
  v29 = v5;
  v28 = v6;
  v21 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__end);
  v22 = &v27;
  swift_beginAccess();
  sub_1D1FD5F1C(v21, v25);
  swift_endAccess();
  if ((*(v23 + 48))(v25, 1, v26) == 1)
  {
    result = sub_1D1FD6044(v25);
    v12 = v15;
  }

  else
  {
    (*(v23 + 32))(v20, v25, v26);
    sub_1D1FE1C64();
    v8 = v15;
    sub_1D208C44C();
    v10 = v8;
    v11 = v8;
    if (v8)
    {
      v9[1] = v11;
      return (*(v23 + 8))(v20, v26);
    }

    else
    {
      (*(v23 + 8))(v20, v26);
      result = v10;
      v12 = v10;
    }
  }

  return result;
}

uint64_t sub_1D2046228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v17 = a2;
  v13 = a3;
  v14 = a4;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF018, &qword_1D2090838);
  v16 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v25 = v9 - v16;
  v26 = type metadata accessor for InsightRecordPayload.TariffPeakStats();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v19 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v18);
  v20 = v9 - v19;
  v30 = v9 - v19;
  v29 = v5;
  v28 = v6;
  v21 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byPeaks);
  v22 = &v27;
  swift_beginAccess();
  sub_1D204283C(v21, v25);
  swift_endAccess();
  if ((*(v23 + 48))(v25, 1, v26) == 1)
  {
    result = sub_1D2042A34(v25);
    v12 = v15;
  }

  else
  {
    sub_1D2042AF0(v25, v20);
    sub_1D204A0F0();
    v8 = v15;
    sub_1D208C44C();
    v10 = v8;
    v11 = v8;
    if (v8)
    {
      v9[1] = v11;
      return sub_1D2042F30(v20);
    }

    else
    {
      sub_1D2042F30(v20);
      result = v10;
      v12 = v10;
    }
  }

  return result;
}

uint64_t sub_1D2046460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v17 = a2;
  v13 = a3;
  v14 = a4;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF020, &qword_1D2090840);
  v16 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v25 = v9 - v16;
  v26 = type metadata accessor for InsightRecordPayload.GridCleanlinessStats();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v19 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v18);
  v20 = v9 - v19;
  v30 = v9 - v19;
  v29 = v5;
  v28 = v6;
  v21 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byGridCleanliness);
  v22 = &v27;
  swift_beginAccess();
  sub_1D2042FAC(v21, v25);
  swift_endAccess();
  if ((*(v23 + 48))(v25, 1, v26) == 1)
  {
    result = sub_1D2043194(v25);
    v12 = v15;
  }

  else
  {
    sub_1D2043250(v25, v20);
    sub_1D204B284();
    v8 = v15;
    sub_1D208C44C();
    v10 = v8;
    v11 = v8;
    if (v8)
    {
      v9[1] = v11;
      return sub_1D2043650(v20);
    }

    else
    {
      sub_1D2043650(v20);
      result = v10;
      v12 = v10;
    }
  }

  return result;
}

uint64_t sub_1D2046698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v17 = a2;
  v13 = a3;
  v14 = a4;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF028, &qword_1D2090848);
  v16 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v25 = v9 - v16;
  v26 = type metadata accessor for InsightRecordPayload.WeatherStats();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v19 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v18);
  v20 = v9 - v19;
  v30 = v9 - v19;
  v29 = v5;
  v28 = v6;
  v21 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__weather);
  v22 = &v27;
  swift_beginAccess();
  sub_1D20436CC(v21, v25);
  swift_endAccess();
  if ((*(v23 + 48))(v25, 1, v26) == 1)
  {
    result = sub_1D20438B4(v25);
    v12 = v15;
  }

  else
  {
    sub_1D2043970(v25, v20);
    sub_1D204C418();
    v8 = v15;
    sub_1D208C44C();
    v10 = v8;
    v11 = v8;
    if (v8)
    {
      v9[1] = v11;
      return sub_1D2043D70(v20);
    }

    else
    {
      sub_1D2043D70(v20);
      result = v10;
      v12 = v10;
    }
  }

  return result;
}

BOOL static InsightRecordPayload.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v33 = a1;
  v25 = 0;
  v44 = 0;
  v43 = 0;
  v24 = 0;
  v40 = 0;
  v26 = sub_1D208C21C();
  v27 = *(v26 - 8);
  v28 = v27;
  v29 = *(v27 + 64);
  v2 = MEMORY[0x1EEE9AC00](0);
  v31 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  v30 = &v9 - v31;
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v9 - v31;
  v44 = v3;
  v43 = v4;
  v35 = type metadata accessor for InsightRecordPayload();
  v34 = v35;
  v38 = *(v33 + *(v35 + 20));

  v37 = *(v36 + *(v35 + 20));

  v39 = sub_1D208CB6C();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v39 & 1) == 0)
  {
    v16 = v24;
    goto LABEL_7;
  }

  v5 = v24;
  v19 = *(v33 + *(v34 + 20));

  v20 = *(v36 + *(v34 + 20));

  v41[0] = v19;
  v41[1] = v20;
  v21 = &v9;
  MEMORY[0x1EEE9AC00](&v9);
  v22 = &v9 - 4;
  *(&v9 - 2) = sub_1D2046CEC;
  *(&v9 - 1) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF040, &qword_1D2090868);
  sub_1D201D1EC(v41, sub_1D2024ECC, v22, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v7);
  v23 = v5;
  if (!v5)
  {
    sub_1D2024EFC(v41);
    v40 = v42;
    if ((v42 & 1) == 0)
    {
      v17 = 0;
      v18 = v23;
      return v17;
    }

    v16 = v23;
LABEL_7:
    v10 = v16;
    v12 = *(v28 + 16);
    v11 = v28 + 16;
    v12(v32, v33, v26);
    v12(v30, v36, v26);
    sub_1D1FE0414();
    v15 = sub_1D208C59C();
    v14 = *(v28 + 8);
    v13 = v28 + 8;
    v14(v30, v26);
    v14(v32, v26);
    v17 = (v15 & 1) != 0;
    v18 = v10;
    return v17;
  }

  result = 0;
  __break(1u);
  return result;
}

uint64_t sub_1D2046CEC(uint64_t a1, uint64_t a2)
{
  v177 = a1;
  v181 = a2;
  v220 = 0;
  v221 = 0;
  v219 = 0;
  v218 = 0;
  v155 = 0;
  v119 = type metadata accessor for InsightRecordPayload.WeatherStats();
  v120 = *(v119 - 8);
  v121 = v119 - 8;
  v122 = (*(v120 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v119);
  v123 = (v30 - v122);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF120, &qword_1D20911B0);
  v125 = (*(*(v124 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v124);
  v126 = v30 - v125;
  v127 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF028, &qword_1D2090848) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v155);
  v128 = (v30 - v127);
  v129 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v130 = (v30 - v129);
  v131 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v132 = (v30 - v131);
  v133 = type metadata accessor for InsightRecordPayload.GridCleanlinessStats();
  v134 = *(v133 - 8);
  v135 = v133 - 8;
  v136 = (*(v134 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v133);
  v137 = (v30 - v136);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF128, &qword_1D20911B8);
  v139 = (*(*(v138 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v138);
  v140 = v30 - v139;
  v141 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF020, &qword_1D2090840) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v155);
  v142 = (v30 - v141);
  v143 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v144 = (v30 - v143);
  v145 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v146 = (v30 - v145);
  v147 = type metadata accessor for InsightRecordPayload.TariffPeakStats();
  v148 = *(v147 - 8);
  v149 = v147 - 8;
  v150 = (*(v148 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v147);
  v151 = (v30 - v150);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF130, &unk_1D20911C0);
  v153 = (*(*(v152 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v152);
  v154 = v30 - v153;
  v156 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF018, &qword_1D2090838) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v155);
  v157 = (v30 - v156);
  v158 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v159 = (v30 - v158);
  v160 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v161 = (v30 - v160);
  v192 = sub_1D208C1EC();
  v190 = *(v192 - 8);
  v191 = v192 - 8;
  v162 = (*(v190 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v192);
  v163 = v30 - v162;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA78, &qword_1D208E750);
  v164 = (*(*(v186 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v186);
  v165 = v30 - v164;
  v166 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v193 = v30 - v166;
  v167 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x1EEE9AC00](v177);
  v168 = v30 - v167;
  v169 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v170 = v30 - v169;
  v171 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v172 = v30 - v171;
  v173 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v174 = v30 - v173;
  v175 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v189 = v30 - v175;
  v176 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v187 = v30 - v176;
  v220 = v26;
  v221 = v27;

  v219 = v177;

  v218 = v181;

  v180 = &qword_1EC6C3498[365];
  v178 = (v177 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__start);
  v179 = &v217;
  v182 = 32;
  v183 = 0;
  swift_beginAccess();
  sub_1D1FD5F1C(v178, v187);
  swift_endAccess();
  v184 = (v181 + v180[288]);
  v185 = &v216;
  swift_beginAccess();
  sub_1D1FD5F1C(v184, v189);
  swift_endAccess();
  v188 = *(v186 + 48);
  sub_1D1FD5F1C(v187, v193);
  sub_1D1FD5F1C(v189, &v193[v188]);
  v194 = *(v190 + 48);
  v195 = v190 + 48;
  if (v194(v193, 1, v192) == 1)
  {
    if (v194(&v193[v188], 1, v192) == 1)
    {
      sub_1D1FD6044(v193);
      v118 = 1;
      goto LABEL_7;
    }
  }

  else
  {
    sub_1D1FD5F1C(v193, v174);
    if (v194(&v193[v188], 1, v192) != 1)
    {
      (*(v190 + 32))(v163, &v193[v188], v192);
      sub_1D1FE0494();
      v117 = sub_1D208C59C();
      v116 = *(v190 + 8);
      v115 = v190 + 8;
      v116(v163, v192);
      v116(v174, v192);
      sub_1D1FD6044(v193);
      v118 = v117;
      goto LABEL_7;
    }

    (*(v190 + 8))(v174, v192);
  }

  sub_1D1FE0268(v193);
  v118 = 0;
LABEL_7:
  v114 = v118;
  sub_1D1FD6044(v189);
  sub_1D1FD6044(v187);
  if ((v114 & 1) == 0)
  {
    goto LABEL_60;
  }

  v107 = &qword_1EC6C3498[365];
  v105 = (v177 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__end);
  v106 = &v215;
  v108 = 32;
  v109 = 0;
  swift_beginAccess();
  sub_1D1FD5F1C(v105, v172);
  swift_endAccess();
  v110 = (v181 + v107[289]);
  v111 = &v214;
  swift_beginAccess();
  sub_1D1FD5F1C(v110, v170);
  swift_endAccess();
  v112 = &v165[*(v186 + 48)];
  sub_1D1FD5F1C(v172, v165);
  sub_1D1FD5F1C(v170, v112);
  if (v194(v165, 1, v192) == 1)
  {
    if (v194(v112, 1, v192) != 1)
    {
      goto LABEL_20;
    }

    sub_1D1FD6044(v165);
    v104 = 1;
  }

  else
  {
    sub_1D1FD5F1C(v165, v168);
    if (v194(v112, 1, v192) == 1)
    {
      (*(v190 + 8))(v168, v192);
LABEL_20:
      sub_1D1FE0268(v165);
      v104 = 0;
      goto LABEL_18;
    }

    (*(v190 + 32))(v163, v112, v192);
    sub_1D1FE0494();
    v103 = sub_1D208C59C();
    v102 = *(v190 + 8);
    v101 = v190 + 8;
    v102(v163, v192);
    v102(v168, v192);
    sub_1D1FD6044(v165);
    v104 = v103;
  }

LABEL_18:
  v100 = v104;
  sub_1D1FD6044(v170);
  sub_1D1FD6044(v172);
  if ((v100 & 1) == 0)
  {
    goto LABEL_60;
  }

  v93 = &qword_1EC6C3498[365];
  v91 = (v177 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__totalEnergy);
  v92 = &v213;
  v94 = 32;
  v95 = 0;
  swift_beginAccess();
  v99 = *v91;
  swift_endAccess();
  v96 = (v181 + v93[290]);
  v97 = &v212;
  swift_beginAccess();
  v98 = *v96;
  swift_endAccess();
  if (v99 != v98)
  {
    goto LABEL_60;
  }

  v84 = &qword_1EC6C3498[365];
  v82 = (v177 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__totalRuntime);
  v83 = &v211;
  v85 = 32;
  v86 = 0;
  swift_beginAccess();
  v90 = *v82;
  swift_endAccess();
  v87 = (v181 + v84[291]);
  v88 = &v210;
  swift_beginAccess();
  v89 = *v87;
  swift_endAccess();
  if (v90 != v89)
  {
    goto LABEL_60;
  }

  v74 = &qword_1EC6C3498[365];
  v72 = (v177 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byPeaks);
  v73 = &v209;
  v75 = 32;
  v76 = 0;
  swift_beginAccess();
  sub_1D204283C(v72, v161);
  swift_endAccess();
  v77 = (v181 + v74[292]);
  v78 = &v208;
  swift_beginAccess();
  sub_1D204283C(v77, v159);
  swift_endAccess();
  v79 = &v154[*(v152 + 48)];
  sub_1D204283C(v161, v154);
  sub_1D204283C(v159, v79);
  v80 = *(v148 + 48);
  v81 = v148 + 48;
  if (v80(v154, 1, v147) == 1)
  {
    if (v80(v79, 1, v147) == 1)
    {
      sub_1D2042A34(v154);
      v71 = 1;
      goto LABEL_32;
    }
  }

  else
  {
    sub_1D204283C(v154, v157);
    if (v80(v79, 1, v147) != 1)
    {
      sub_1D2042AF0(v79, v151);
      v70 = static InsightRecordPayload.TariffPeakStats.== infix(_:_:)(v157, v151);
      sub_1D2042F30(v151);
      sub_1D2042F30(v157);
      sub_1D2042A34(v154);
      v71 = v70;
      goto LABEL_32;
    }

    sub_1D2042F30(v157);
  }

  sub_1D204D698(v154);
  v71 = 0;
LABEL_32:
  v69 = v71;
  sub_1D2042A34(v159);
  sub_1D2042A34(v161);
  if ((v69 & 1) == 0)
  {
    goto LABEL_60;
  }

  v61 = &qword_1EC6C3498[365];
  v59 = (v177 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__byGridCleanliness);
  v60 = &v207;
  v62 = 32;
  v63 = 0;
  swift_beginAccess();
  sub_1D2042FAC(v59, v146);
  swift_endAccess();
  v64 = (v181 + v61[293]);
  v65 = &v206;
  swift_beginAccess();
  sub_1D2042FAC(v64, v144);
  swift_endAccess();
  v66 = &v140[*(v138 + 48)];
  sub_1D2042FAC(v146, v140);
  sub_1D2042FAC(v144, v66);
  v67 = *(v134 + 48);
  v68 = v134 + 48;
  if (v67(v140, 1, v133) == 1)
  {
    if (v67(v66, 1, v133) == 1)
    {
      sub_1D2043194(v140);
      v58 = 1;
      goto LABEL_43;
    }
  }

  else
  {
    sub_1D2042FAC(v140, v142);
    if (v67(v66, 1, v133) != 1)
    {
      sub_1D2043250(v66, v137);
      v57 = static InsightRecordPayload.GridCleanlinessStats.== infix(_:_:)(v142, v137);
      sub_1D2043650(v137);
      sub_1D2043650(v142);
      sub_1D2043194(v140);
      v58 = v57;
      goto LABEL_43;
    }

    sub_1D2043650(v142);
  }

  sub_1D204D7F4(v140);
  v58 = 0;
LABEL_43:
  v56 = v58;
  sub_1D2043194(v144);
  sub_1D2043194(v146);
  if ((v56 & 1) == 0)
  {
    goto LABEL_60;
  }

  v48 = &qword_1EC6C3498[365];
  v46 = (v177 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__weather);
  v47 = &v205;
  v49 = 32;
  v50 = 0;
  swift_beginAccess();
  sub_1D20436CC(v46, v132);
  swift_endAccess();
  v51 = (v181 + v48[294]);
  v52 = &v204;
  swift_beginAccess();
  sub_1D20436CC(v51, v130);
  swift_endAccess();
  v53 = &v126[*(v124 + 48)];
  sub_1D20436CC(v132, v126);
  sub_1D20436CC(v130, v53);
  v54 = *(v120 + 48);
  v55 = v120 + 48;
  if (v54(v126, 1, v119) == 1)
  {
    if (v54(v53, 1, v119) != 1)
    {
      goto LABEL_56;
    }

    sub_1D20438B4(v126);
    v45 = 1;
  }

  else
  {
    sub_1D20436CC(v126, v128);
    if (v54(v53, 1, v119) == 1)
    {
      sub_1D2043D70(v128);
LABEL_56:
      sub_1D204D950(v126);
      v45 = 0;
      goto LABEL_54;
    }

    sub_1D2043970(v53, v123);
    v44 = static InsightRecordPayload.WeatherStats.== infix(_:_:)(v128, v123);
    sub_1D2043D70(v123);
    sub_1D2043D70(v128);
    sub_1D20438B4(v126);
    v45 = v44;
  }

LABEL_54:
  v43 = v45;
  sub_1D20438B4(v130);
  sub_1D20438B4(v132);
  if (v43)
  {
    v33 = &qword_1EC6C3498[365];
    v30[0] = v177 + OBJC_IVAR____TtCV19EnergyKitFoundation20InsightRecordPayloadP33_247506845F11D05DF227A0A259CD087113_StorageClass__grouping;
    v30[1] = v202;
    v34 = 32;
    v35 = 0;
    swift_beginAccess();
    v31 = *v30[0];
    v32 = *(v30[0] + 8);
    swift_endAccess();
    v202[3] = v31;
    v40 = 1;
    v203 = v32 & 1;
    v42 = &v200;
    v200 = v31;
    v201 = v32 & 1;
    v36 = (v181 + v33[295]);
    v37 = v198;
    swift_beginAccess();
    v38 = *v36;
    v39 = *(v36 + 8);
    swift_endAccess();
    v198[3] = v38;
    v199 = v39 & 1 & v40;
    v41 = &v196;
    v196 = v38;
    v197 = v199;
    sub_1D204C5C8();
    v28 = sub_1D208C59C();
    if (v28)
    {

      v113 = 1;
      return v113 & 1;
    }
  }

LABEL_60:

  v113 = 0;
  return v113 & 1;
}

uint64_t InsightRecordPayload.hashValue.getter()
{
  type metadata accessor for InsightRecordPayload();
  sub_1D204838C();
  return sub_1D208C9DC();
}

unint64_t sub_1D204838C()
{
  v2 = qword_1EC6BF048;
  if (!qword_1EC6BF048)
  {
    type metadata accessor for InsightRecordPayload();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF048);
    return WitnessTable;
  }

  return v2;
}

void (*sub_1D204846C(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = InsightRecordPayload.unknownFields.modify();
  return sub_1D1FDDFE4;
}

unint64_t sub_1D20485A8()
{
  v2 = qword_1EC6BF050;
  if (!qword_1EC6BF050)
  {
    type metadata accessor for InsightRecordPayload();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF050);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2048670()
{
  v2 = qword_1EC6BF058;
  if (!qword_1EC6BF058)
  {
    type metadata accessor for InsightRecordPayload();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF058);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D204875C()
{
  v10 = sub_1D208C47C();
  __swift_allocate_value_buffer(v10, qword_1EC6C4840);
  __swift_project_value_buffer(v10, qword_1EC6C4840);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v14 = v0;
  v1 = *(v17 + 48);
  *v0 = 0;
  v12 = v0 + v1;
  *v12 = "none";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v15 = MEMORY[0x1E69AADC8];
  v11 = *MEMORY[0x1E69AADC8];
  v16 = *(*(sub_1D208C45C() - 8) + 104);
  (v16)(v12, v11);
  v13 = *(*(v17 - 8) + 72);
  v2 = *(v17 + 48);
  *(v14 + v13) = 1;
  v3 = v14 + v13 + v2;
  *v3 = "energy";
  *(v3 + 1) = 6;
  v3[16] = 2;
  v4 = *v15;
  v16();
  v5 = *(v17 + 48);
  v6 = (v14 + 2 * v13);
  *v6 = 2;
  v7 = v6 + v5;
  *v7 = "runtime";
  *(v7 + 1) = 7;
  v7[16] = 2;
  v8 = *v15;
  v16();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D2048984()
{
  if (qword_1EC6C4838 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EC6C4840);
}

uint64_t static InsightRecordPayload.Grouping._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D2048984();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1D2048A6C()
{
  v0 = sub_1D204142C();
  v4 = *v0;
  v5 = v0[1];

  v1 = sub_1D208C64C();
  v6 = MEMORY[0x1D38948B0](v4, v5, v1);
  v7 = v2;

  result = v6;
  qword_1EC6C4860 = v6;
  qword_1EC6C4868 = v7;
  return result;
}

uint64_t *sub_1D2048B0C()
{
  if (qword_1EC6C4858 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C4860;
}

uint64_t static InsightRecordPayload.TariffPeakStats.protoMessageName.getter()
{
  v0 = sub_1D2048B0C();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_1D2048BA8()
{
  v22 = sub_1D208C47C();
  __swift_allocate_value_buffer(v22, qword_1EC6C4878);
  __swift_project_value_buffer(v22, qword_1EC6C4878);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v26 = v0;
  v1 = *(v29 + 48);
  *v0 = 1;
  v24 = v0 + v1;
  *v24 = "unknown";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v27 = MEMORY[0x1E69AADC8];
  v23 = *MEMORY[0x1E69AADC8];
  v28 = *(*(sub_1D208C45C() - 8) + 104);
  (v28)(v24, v23);
  v25 = *(*(v29 - 8) + 72);
  v2 = *(v29 + 48);
  *(v26 + v25) = 2;
  v3 = v26 + v25 + v2;
  *v3 = "superOffPeak";
  *(v3 + 1) = 12;
  v3[16] = 2;
  v4 = *v27;
  v28();
  v5 = *(v29 + 48);
  v6 = (v26 + 2 * v25);
  *v6 = 3;
  v7 = v6 + v5;
  *v7 = "offPeak";
  *(v7 + 1) = 7;
  v7[16] = 2;
  v8 = *v27;
  v28();
  v9 = *(v29 + 48);
  v10 = (v26 + 3 * v25);
  *v10 = 4;
  v11 = v10 + v9;
  *v11 = "partialPeak";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v12 = *v27;
  v28();
  v13 = *(v29 + 48);
  v14 = (v26 + 4 * v25);
  *v14 = 5;
  v15 = v14 + v13;
  *v15 = "onPeak";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v16 = *v27;
  v28();
  v17 = *(v29 + 48);
  v18 = (v26 + 5 * v25);
  *v18 = 6;
  v19 = v18 + v17;
  *v19 = "criticalPeak";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v20 = *v27;
  v28();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D2048F4C()
{
  if (qword_1EC6C4870 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EC6C4878);
}

uint64_t static InsightRecordPayload.TariffPeakStats._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D2048F4C();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t InsightRecordPayload.TariffPeakStats.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1D208C27C();
    if (v2 || (v1 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        sub_1D20039E8();
        break;
      case 2:
        sub_1D204932C();
        break;
      case 3:
        sub_1D20493B0();
        break;
      case 4:
        sub_1D2049434();
        break;
      case 5:
        sub_1D20494B8();
        break;
      case 6:
        sub_1D204953C();
        break;
    }

    v2 = 0;
  }

  return result;
}

uint64_t InsightRecordPayload.TariffPeakStats.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a1;
  v47 = a2;
  v48 = a3;
  v58 = 0;
  v57 = 0;
  v59 = a2;
  v52 = sub_1D208C21C();
  v53 = *(v52 - 8);
  v54 = v52 - 8;
  v55 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v56 = v20 - v55;
  v58 = MEMORY[0x1EEE9AC00](v51);
  v57 = v3;
  if (*v3 == -1.0)
  {
    v44 = v50;
  }

  else
  {
    v4 = v50;
    v5 = *v49;
    result = sub_1D208C40C();
    v45 = v4;
    v46 = v4;
    if (v4)
    {
      return result;
    }

    v44 = 0;
  }

  v43 = v44;
  if (v49[1] == -1.0)
  {
    v40 = v43;
  }

  else
  {
    v7 = v43;
    v8 = *(v49 + 1);
    result = sub_1D208C40C();
    v41 = v7;
    v42 = v7;
    if (v7)
    {
      return result;
    }

    v40 = 0;
  }

  v39 = v40;
  if (v49[2] == -1.0)
  {
    v36 = v39;
  }

  else
  {
    v9 = v39;
    v10 = *(v49 + 2);
    result = sub_1D208C40C();
    v37 = v9;
    v38 = v9;
    if (v9)
    {
      return result;
    }

    v36 = 0;
  }

  v35 = v36;
  if (v49[3] == -1.0)
  {
    v32 = v35;
  }

  else
  {
    v11 = v35;
    v12 = *(v49 + 3);
    result = sub_1D208C40C();
    v33 = v11;
    v34 = v11;
    if (v11)
    {
      return result;
    }

    v32 = 0;
  }

  v31 = v32;
  if (v49[4] == -1.0)
  {
    v28 = v31;
  }

  else
  {
    v13 = v31;
    v14 = *(v49 + 4);
    result = sub_1D208C40C();
    v29 = v13;
    v30 = v13;
    if (v13)
    {
      return result;
    }

    v28 = 0;
  }

  v27 = v28;
  if (v49[5] == -1.0)
  {
    v24 = v27;
  }

  else
  {
    v15 = v27;
    v16 = *(v49 + 5);
    result = sub_1D208C40C();
    v25 = v15;
    v26 = v15;
    if (v15)
    {
      return result;
    }

    v24 = 0;
  }

  v17 = v56;
  v21 = v24;
  v18 = type metadata accessor for InsightRecordPayload.TariffPeakStats();
  (*(v53 + 16))(v17, v49 + *(v18 + 40), v52);
  v19 = v21;
  sub_1D208C1FC();
  v22 = v19;
  v23 = v19;
  if (v19)
  {
    v20[1] = v23;
  }

  return (*(v53 + 8))(v56, v52);
}

BOOL static InsightRecordPayload.TariffPeakStats.== infix(_:_:)(double *a1, double *a2)
{
  v17 = a1;
  v16 = a2;
  v26 = 0;
  v25 = 0;
  v18 = sub_1D208C21C();
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  v21 = (v19[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v8 - v21;
  v23 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v24 = &v8 - v23;
  v26 = v4;
  v25 = v5;
  if (*v4 == *v5)
  {
    if (v17[1] == v16[1])
    {
      if (v17[2] == v16[2])
      {
        if (v17[3] == v16[3])
        {
          if (v17[4] == v16[4])
          {
            if (v17[5] == v16[5])
            {
              v9 = type metadata accessor for InsightRecordPayload.TariffPeakStats();
              v6 = v17 + *(v9 + 40);
              v11 = v19[2];
              v10 = v19 + 2;
              v11(v24, v6, v18);
              v11(v22, v16 + *(v9 + 40), v18);
              sub_1D1FE0414();
              v14 = sub_1D208C59C();
              v13 = v19[1];
              v12 = v19 + 1;
              v13(v22, v18);
              v13(v24, v18);
              return (v14 & 1) != 0;
            }

            else
            {
              return 0;
            }
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t InsightRecordPayload.TariffPeakStats.hashValue.getter()
{
  type metadata accessor for InsightRecordPayload.TariffPeakStats();
  sub_1D2049E0C();
  return sub_1D208C9DC();
}

unint64_t sub_1D2049E0C()
{
  v2 = qword_1EC6BF060;
  if (!qword_1EC6BF060)
  {
    type metadata accessor for InsightRecordPayload.TariffPeakStats();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF060);
    return WitnessTable;
  }

  return v2;
}

void (*sub_1D2049EEC(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = InsightRecordPayload.TariffPeakStats.unknownFields.modify();
  return sub_1D1FDDFE4;
}

unint64_t sub_1D204A028()
{
  v2 = qword_1EC6BF068;
  if (!qword_1EC6BF068)
  {
    type metadata accessor for InsightRecordPayload.TariffPeakStats();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF068);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D204A0F0()
{
  v2 = qword_1EC6BF070;
  if (!qword_1EC6BF070)
  {
    type metadata accessor for InsightRecordPayload.TariffPeakStats();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF070);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D204A1DC()
{
  v0 = sub_1D204142C();
  v4 = *v0;
  v5 = v0[1];

  v1 = sub_1D208C64C();
  v6 = MEMORY[0x1D38948B0](v4, v5, v1);
  v7 = v2;

  result = v6;
  qword_1EC6C4898 = v6;
  qword_1EC6C48A0 = v7;
  return result;
}

uint64_t *sub_1D204A27C()
{
  if (qword_1EC6C4890 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C4898;
}

uint64_t static InsightRecordPayload.GridCleanlinessStats.protoMessageName.getter()
{
  v0 = sub_1D204A27C();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_1D204A318()
{
  v14 = sub_1D208C47C();
  __swift_allocate_value_buffer(v14, qword_1EC6C48B0);
  __swift_project_value_buffer(v14, qword_1EC6C48B0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v18 = v0;
  v1 = *(v21 + 48);
  *v0 = 1;
  v16 = v0 + v1;
  *v16 = "unknown";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v19 = MEMORY[0x1E69AADC8];
  v15 = *MEMORY[0x1E69AADC8];
  v20 = *(*(sub_1D208C45C() - 8) + 104);
  (v20)(v16, v15);
  v17 = *(*(v21 - 8) + 72);
  v2 = *(v21 + 48);
  *(v18 + v17) = 2;
  v3 = v18 + v17 + v2;
  *v3 = "clean";
  *(v3 + 1) = 5;
  v3[16] = 2;
  v4 = *v19;
  v20();
  v5 = *(v21 + 48);
  v6 = (v18 + 2 * v17);
  *v6 = 3;
  v7 = v6 + v5;
  *v7 = "reduce";
  *(v7 + 1) = 6;
  v7[16] = 2;
  v8 = *v19;
  v20();
  v9 = *(v21 + 48);
  v10 = (v18 + 3 * v17);
  *v10 = 4;
  v11 = v10 + v9;
  *v11 = "avoid";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v12 = *v19;
  v20();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D204A5C8()
{
  if (qword_1EC6C48A8 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EC6C48B0);
}

uint64_t static InsightRecordPayload.GridCleanlinessStats._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D204A5C8();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t InsightRecordPayload.GridCleanlinessStats.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1D208C27C();
    if (v2 || (v1 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        sub_1D20039E8();
        break;
      case 2:
        sub_1D204932C();
        break;
      case 3:
        sub_1D20493B0();
        break;
      case 4:
        sub_1D2049434();
        break;
    }

    v2 = 0;
  }

  return result;
}

uint64_t InsightRecordPayload.GridCleanlinessStats.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a1;
  v35 = a2;
  v36 = a3;
  v46 = 0;
  v45 = 0;
  v47 = a2;
  v40 = sub_1D208C21C();
  v41 = *(v40 - 8);
  v42 = v40 - 8;
  v43 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v44 = v16 - v43;
  v46 = MEMORY[0x1EEE9AC00](v39);
  v45 = v3;
  if (*v3 == -1.0)
  {
    v32 = v38;
  }

  else
  {
    v4 = v38;
    v5 = *v37;
    result = sub_1D208C40C();
    v33 = v4;
    v34 = v4;
    if (v4)
    {
      return result;
    }

    v32 = 0;
  }

  v31 = v32;
  if (v37[1] == -1.0)
  {
    v28 = v31;
  }

  else
  {
    v7 = v31;
    v8 = *(v37 + 1);
    result = sub_1D208C40C();
    v29 = v7;
    v30 = v7;
    if (v7)
    {
      return result;
    }

    v28 = 0;
  }

  v27 = v28;
  if (v37[2] == -1.0)
  {
    v24 = v27;
  }

  else
  {
    v9 = v27;
    v10 = *(v37 + 2);
    result = sub_1D208C40C();
    v25 = v9;
    v26 = v9;
    if (v9)
    {
      return result;
    }

    v24 = 0;
  }

  v23 = v24;
  if (v37[3] == -1.0)
  {
    v20 = v23;
  }

  else
  {
    v11 = v23;
    v12 = *(v37 + 3);
    result = sub_1D208C40C();
    v21 = v11;
    v22 = v11;
    if (v11)
    {
      return result;
    }

    v20 = 0;
  }

  v13 = v44;
  v17 = v20;
  v14 = type metadata accessor for InsightRecordPayload.GridCleanlinessStats();
  (*(v41 + 16))(v13, v37 + *(v14 + 32), v40);
  v15 = v17;
  sub_1D208C1FC();
  v18 = v15;
  v19 = v15;
  if (v15)
  {
    v16[1] = v19;
  }

  return (*(v41 + 8))(v44, v40);
}

BOOL static InsightRecordPayload.GridCleanlinessStats.== infix(_:_:)(double *a1, double *a2)
{
  v17 = a1;
  v16 = a2;
  v26 = 0;
  v25 = 0;
  v18 = sub_1D208C21C();
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  v21 = (v19[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v8 - v21;
  v23 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v24 = &v8 - v23;
  v26 = v4;
  v25 = v5;
  if (*v4 == *v5)
  {
    if (v17[1] == v16[1])
    {
      if (v17[2] == v16[2])
      {
        if (v17[3] == v16[3])
        {
          v9 = type metadata accessor for InsightRecordPayload.GridCleanlinessStats();
          v6 = v17 + *(v9 + 32);
          v11 = v19[2];
          v10 = v19 + 2;
          v11(v24, v6, v18);
          v11(v22, v16 + *(v9 + 32), v18);
          sub_1D1FE0414();
          v14 = sub_1D208C59C();
          v13 = v19[1];
          v12 = v19 + 1;
          v13(v22, v18);
          v13(v24, v18);
          return (v14 & 1) != 0;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t InsightRecordPayload.GridCleanlinessStats.hashValue.getter()
{
  type metadata accessor for InsightRecordPayload.GridCleanlinessStats();
  sub_1D204AFA0();
  return sub_1D208C9DC();
}

unint64_t sub_1D204AFA0()
{
  v2 = qword_1EC6BF078;
  if (!qword_1EC6BF078)
  {
    type metadata accessor for InsightRecordPayload.GridCleanlinessStats();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF078);
    return WitnessTable;
  }

  return v2;
}

void (*sub_1D204B080(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = InsightRecordPayload.GridCleanlinessStats.unknownFields.modify();
  return sub_1D1FDDFE4;
}

unint64_t sub_1D204B1BC()
{
  v2 = qword_1EC6BF080;
  if (!qword_1EC6BF080)
  {
    type metadata accessor for InsightRecordPayload.GridCleanlinessStats();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF080);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D204B284()
{
  v2 = qword_1EC6BF088;
  if (!qword_1EC6BF088)
  {
    type metadata accessor for InsightRecordPayload.GridCleanlinessStats();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF088);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D204B370()
{
  v0 = sub_1D204142C();
  v4 = *v0;
  v5 = v0[1];

  v1 = sub_1D208C64C();
  v6 = MEMORY[0x1D38948B0](v4, v5, v1);
  v7 = v2;

  result = v6;
  qword_1EC6C48D0 = v6;
  qword_1EC6C48D8 = v7;
  return result;
}

uint64_t *sub_1D204B410()
{
  if (qword_1EC6C48C8 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C48D0;
}

uint64_t static InsightRecordPayload.WeatherStats.protoMessageName.getter()
{
  v0 = sub_1D204B410();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_1D204B4AC()
{
  v14 = sub_1D208C47C();
  __swift_allocate_value_buffer(v14, qword_1EC6C48E8);
  __swift_project_value_buffer(v14, qword_1EC6C48E8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v18 = v0;
  v1 = *(v21 + 48);
  *v0 = 1;
  v16 = v0 + v1;
  *v16 = "unknown";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v19 = MEMORY[0x1E69AADC8];
  v15 = *MEMORY[0x1E69AADC8];
  v20 = *(*(sub_1D208C45C() - 8) + 104);
  (v20)(v16, v15);
  v17 = *(*(v21 - 8) + 72);
  v2 = *(v21 + 48);
  *(v18 + v17) = 2;
  v3 = v18 + v17 + v2;
  *v3 = "lowTemperature";
  *(v3 + 1) = 14;
  v3[16] = 2;
  v4 = *v19;
  v20();
  v5 = *(v21 + 48);
  v6 = (v18 + 2 * v17);
  *v6 = 3;
  v7 = v6 + v5;
  *v7 = "highTemperature";
  *(v7 + 1) = 15;
  v7[16] = 2;
  v8 = *v19;
  v20();
  v9 = *(v21 + 48);
  v10 = (v18 + 3 * v17);
  *v10 = 4;
  v11 = v10 + v9;
  *v11 = "avgTemperature";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v12 = *v19;
  v20();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D204B75C()
{
  if (qword_1EC6C48E0 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EC6C48E8);
}

uint64_t static InsightRecordPayload.WeatherStats._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D204B75C();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t InsightRecordPayload.WeatherStats.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1D208C27C();
    if (v2 || (v1 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        sub_1D20039E8();
        break;
      case 2:
        sub_1D204932C();
        break;
      case 3:
        sub_1D20493B0();
        break;
      case 4:
        sub_1D2049434();
        break;
    }

    v2 = 0;
  }

  return result;
}

uint64_t InsightRecordPayload.WeatherStats.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a1;
  v35 = a2;
  v36 = a3;
  v46 = 0;
  v45 = 0;
  v47 = a2;
  v40 = sub_1D208C21C();
  v41 = *(v40 - 8);
  v42 = v40 - 8;
  v43 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v44 = v16 - v43;
  v46 = MEMORY[0x1EEE9AC00](v39);
  v45 = v3;
  if (*v3 == -1.0)
  {
    v32 = v38;
  }

  else
  {
    v4 = v38;
    v5 = *v37;
    result = sub_1D208C40C();
    v33 = v4;
    v34 = v4;
    if (v4)
    {
      return result;
    }

    v32 = 0;
  }

  v31 = v32;
  if (v37[1] == -1.0)
  {
    v28 = v31;
  }

  else
  {
    v7 = v31;
    v8 = *(v37 + 1);
    result = sub_1D208C40C();
    v29 = v7;
    v30 = v7;
    if (v7)
    {
      return result;
    }

    v28 = 0;
  }

  v27 = v28;
  if (v37[2] == -1.0)
  {
    v24 = v27;
  }

  else
  {
    v9 = v27;
    v10 = *(v37 + 2);
    result = sub_1D208C40C();
    v25 = v9;
    v26 = v9;
    if (v9)
    {
      return result;
    }

    v24 = 0;
  }

  v23 = v24;
  if (v37[3] == -1.0)
  {
    v20 = v23;
  }

  else
  {
    v11 = v23;
    v12 = *(v37 + 3);
    result = sub_1D208C40C();
    v21 = v11;
    v22 = v11;
    if (v11)
    {
      return result;
    }

    v20 = 0;
  }

  v13 = v44;
  v17 = v20;
  v14 = type metadata accessor for InsightRecordPayload.WeatherStats();
  (*(v41 + 16))(v13, v37 + *(v14 + 32), v40);
  v15 = v17;
  sub_1D208C1FC();
  v18 = v15;
  v19 = v15;
  if (v15)
  {
    v16[1] = v19;
  }

  return (*(v41 + 8))(v44, v40);
}

BOOL static InsightRecordPayload.WeatherStats.== infix(_:_:)(double *a1, double *a2)
{
  v17 = a1;
  v16 = a2;
  v26 = 0;
  v25 = 0;
  v18 = sub_1D208C21C();
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  v21 = (v19[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v8 - v21;
  v23 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v24 = &v8 - v23;
  v26 = v4;
  v25 = v5;
  if (*v4 == *v5)
  {
    if (v17[1] == v16[1])
    {
      if (v17[2] == v16[2])
      {
        if (v17[3] == v16[3])
        {
          v9 = type metadata accessor for InsightRecordPayload.WeatherStats();
          v6 = v17 + *(v9 + 32);
          v11 = v19[2];
          v10 = v19 + 2;
          v11(v24, v6, v18);
          v11(v22, v16 + *(v9 + 32), v18);
          sub_1D1FE0414();
          v14 = sub_1D208C59C();
          v13 = v19[1];
          v12 = v19 + 1;
          v13(v22, v18);
          v13(v24, v18);
          return (v14 & 1) != 0;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t InsightRecordPayload.WeatherStats.hashValue.getter()
{
  type metadata accessor for InsightRecordPayload.WeatherStats();
  sub_1D204C134();
  return sub_1D208C9DC();
}

unint64_t sub_1D204C134()
{
  v2 = qword_1EC6BF090;
  if (!qword_1EC6BF090)
  {
    type metadata accessor for InsightRecordPayload.WeatherStats();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF090);
    return WitnessTable;
  }

  return v2;
}

void (*sub_1D204C214(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = InsightRecordPayload.WeatherStats.unknownFields.modify();
  return sub_1D1FDDFE4;
}

unint64_t sub_1D204C350()
{
  v2 = qword_1EC6BF098;
  if (!qword_1EC6BF098)
  {
    type metadata accessor for InsightRecordPayload.WeatherStats();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF098);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D204C418()
{
  v2 = qword_1EC6BF0A0;
  if (!qword_1EC6BF0A0)
  {
    type metadata accessor for InsightRecordPayload.WeatherStats();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF0A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D204C51C()
{
  v2 = qword_1EC6BF0A8;
  if (!qword_1EC6BF0A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF0A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D204C5C8()
{
  v2 = qword_1EC6BF0B0;
  if (!qword_1EC6BF0B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF0B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D204C65C()
{
  v2 = qword_1EC6BF0B8;
  if (!qword_1EC6BF0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BF0C0, &qword_1D2090958);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF0B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D204C6FC()
{
  v2 = qword_1EC6BF0C8;
  if (!qword_1EC6BF0C8)
  {
    type metadata accessor for InsightRecordPayload();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF0C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D204C7C4()
{
  v2 = qword_1EC6BF0D0;
  if (!qword_1EC6BF0D0)
  {
    type metadata accessor for InsightRecordPayload();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF0D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D204C85C()
{
  v2 = qword_1EC6BF0D8;
  if (!qword_1EC6BF0D8)
  {
    type metadata accessor for InsightRecordPayload.TariffPeakStats();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF0D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D204C924()
{
  v2 = qword_1EC6BF0E0;
  if (!qword_1EC6BF0E0)
  {
    type metadata accessor for InsightRecordPayload.TariffPeakStats();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF0E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D204C9BC()
{
  v2 = qword_1EC6BF0E8;
  if (!qword_1EC6BF0E8)
  {
    type metadata accessor for InsightRecordPayload.GridCleanlinessStats();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF0E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D204CA84()
{
  v2 = qword_1EC6BF0F0;
  if (!qword_1EC6BF0F0)
  {
    type metadata accessor for InsightRecordPayload.GridCleanlinessStats();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF0F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D204CB1C()
{
  v2 = qword_1EC6BF0F8;
  if (!qword_1EC6BF0F8)
  {
    type metadata accessor for InsightRecordPayload.WeatherStats();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF0F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D204CBE4()
{
  v2 = qword_1EC6BF100;
  if (!qword_1EC6BF100)
  {
    type metadata accessor for InsightRecordPayload.WeatherStats();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF100);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D204CCDC()
{
  v3 = sub_1D208C21C();
  if (v0 <= 0x3F)
  {
    v3 = type metadata accessor for InsightRecordPayload._StorageClass();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1D204CE9C()
{
  v2 = sub_1D208C21C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1D204CFD0()
{
  v2 = sub_1D208C21C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1D204D108()
{
  v8 = sub_1D1FE0FAC();
  updated = v8;
  if (v0 <= 0x3F)
  {
    v10 = *(v8 - 8) + 64;
    v1 = sub_1D204D318();
    updated = v1;
    if (v2 <= 0x3F)
    {
      v11 = *(v1 - 8) + 64;
      v7 = sub_1D204D3B4();
      updated = v7;
      if (v3 <= 0x3F)
      {
        v12 = *(v7 - 8) + 64;
        v6 = sub_1D204D450();
        updated = v6;
        if (v4 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          updated = swift_updateClassMetadata2();
          if (!updated)
          {
            return 0;
          }
        }
      }
    }
  }

  return updated;
}

uint64_t sub_1D204D318()
{
  v4 = qword_1EC6BF108;
  if (!qword_1EC6BF108)
  {
    type metadata accessor for InsightRecordPayload.TariffPeakStats();
    v3 = sub_1D208C8FC();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EC6BF108);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1D204D3B4()
{
  v4 = qword_1EC6BF110;
  if (!qword_1EC6BF110)
  {
    type metadata accessor for InsightRecordPayload.GridCleanlinessStats();
    v3 = sub_1D208C8FC();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EC6BF110);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1D204D450()
{
  v4 = qword_1EC6BF118;
  if (!qword_1EC6BF118)
  {
    type metadata accessor for InsightRecordPayload.WeatherStats();
    v3 = sub_1D208C8FC();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EC6BF118);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1D204D504()
{
  v2 = qword_1EC6C5910[0];
  if (!qword_1EC6C5910[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC6C5910);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D204D580(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = *(type metadata accessor for InsightRecordPayload() + 20);
  v7 = *(a1 + v6);

  result = a2;
  *(a2 + v6) = v7;
  return result;
}

uint64_t sub_1D204D61C(uint64_t a1)
{
  v1 = sub_1D208C21C();
  (*(*(v1 - 8) + 8))(a1);
  v2 = *(a1 + *(type metadata accessor for InsightRecordPayload() + 20));

  return a1;
}

uint64_t sub_1D204D698(uint64_t a1)
{
  v8 = type metadata accessor for InsightRecordPayload.TariffPeakStats();
  v9 = *(*(v8 - 8) + 48);
  if (!(v9)(a1, 1))
  {
    v6 = a1 + *(v8 + 40);
    v1 = sub_1D208C21C();
    (*(*(v1 - 8) + 8))(v6);
  }

  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF130, &unk_1D20911C0) + 48);
  if (!v9())
  {
    v4 = v5 + *(v8 + 40);
    v2 = sub_1D208C21C();
    (*(*(v2 - 8) + 8))(v4);
  }

  return a1;
}

uint64_t sub_1D204D7F4(uint64_t a1)
{
  v8 = type metadata accessor for InsightRecordPayload.GridCleanlinessStats();
  v9 = *(*(v8 - 8) + 48);
  if (!(v9)(a1, 1))
  {
    v6 = a1 + *(v8 + 32);
    v1 = sub_1D208C21C();
    (*(*(v1 - 8) + 8))(v6);
  }

  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF128, &qword_1D20911B8) + 48);
  if (!v9())
  {
    v4 = v5 + *(v8 + 32);
    v2 = sub_1D208C21C();
    (*(*(v2 - 8) + 8))(v4);
  }

  return a1;
}

uint64_t sub_1D204D950(uint64_t a1)
{
  v8 = type metadata accessor for InsightRecordPayload.WeatherStats();
  v9 = *(*(v8 - 8) + 48);
  if (!(v9)(a1, 1))
  {
    v6 = a1 + *(v8 + 32);
    v1 = sub_1D208C21C();
    (*(*(v1 - 8) + 8))(v6);
  }

  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF120, &qword_1D20911B0) + 48);
  if (!v9())
  {
    v4 = v5 + *(v8 + 32);
    v2 = sub_1D208C21C();
    (*(*(v2 - 8) + 8))(v4);
  }

  return a1;
}

id static IntervalBlocks.fetchRequest()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA00, &qword_1D208D5F8);
  sub_1D208C64C();
  type metadata accessor for IntervalBlocks();
  return sub_1D1FCF514();
}

uint64_t sub_1D204DB2C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v6 = [v4 meterID];
  *a2 = sub_1D208C5CC();
  a2[1] = v2;
  MEMORY[0x1E69E5920](v6);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D204DBBC(void *a1, void *a2)
{
  sub_1D1FCFF8C(a1, &v6);
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  v5 = sub_1D208C5BC();
  [v4 setMeterID_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1D204DC68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = sub_1D208BF1C();
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v3 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1E69E5928](v6);
  v14 = v6;
  v13 = v6;
  v12 = [v6 start];
  sub_1D208BECC();
  (*(v7 + 32))(v9, v10, v11);
  MEMORY[0x1E69E5920](v12);
  return MEMORY[0x1E69E5920](v13);
}

uint64_t sub_1D204DD8C(uint64_t a1, void **a2)
{
  v3[1] = a1;
  v5 = a2;
  v12 = sub_1D208BF1C();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v4 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v11 = v3 - v4;
  (*(v9 + 16))(v3 - v4);
  v6 = *v5;
  MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v8 = v6;
  v7 = sub_1D208BE7C();
  [v8 setStart_];
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v8);
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_1D204DEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = sub_1D208BF1C();
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v3 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1E69E5928](v6);
  v14 = v6;
  v13 = v6;
  v12 = [v6 end];
  sub_1D208BECC();
  (*(v7 + 32))(v9, v10, v11);
  MEMORY[0x1E69E5920](v12);
  return MEMORY[0x1E69E5920](v13);
}

uint64_t sub_1D204E000(uint64_t a1, void **a2)
{
  v3[1] = a1;
  v5 = a2;
  v12 = sub_1D208BF1C();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v4 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v11 = v3 - v4;
  (*(v9 + 16))(v3 - v4);
  v6 = *v5;
  MEMORY[0x1E69E5928](v6);
  v13 = v6;
  v8 = v6;
  v7 = sub_1D208BE7C();
  [v8 setEnd_];
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v8);
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_1D204E150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v4 = a1;
  v11 = sub_1D208BF1C();
  v7 = *(v11 - 8);
  v8 = v11 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v3 - v5;
  v6 = *MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1E69E5928](v6);
  v14 = v6;
  v13 = v6;
  v12 = [v6 sourceTime];
  sub_1D208BECC();
  (*(v7 + 32))(v9, v10, v11);
  MEMORY[0x1E69E5920](v12);
  return MEMORY[0x1E69E5920](v13);
}