uint64_t (*EnergySitePayload.accessToken.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = EnergySitePayload.accessToken.getter();
  a1[1] = v2;
  return sub_1D200C0B4;
}

uint64_t sub_1D200C0B4(uint64_t *a1, char a2)
{
  v2 = a1[2];
  if ((a2 & 1) == 0)
  {
    return EnergySitePayload.accessToken.setter(*a1, a1[1]);
  }

  v4 = *a1;
  v5 = a1[1];

  EnergySitePayload.accessToken.setter(v4, v5);
  return sub_1D1FE023C(a1);
}

uint64_t EnergySitePayload.refreshToken.getter()
{
  v2 = *(v0 + *(type metadata accessor for EnergySitePayload() + 20));

  swift_beginAccess();
  v3 = *(v2 + 96);
  v4 = *(v2 + 104);

  swift_endAccess();

  return v3;
}

uint64_t sub_1D200C1C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = a2;
  v9 = a1;
  v10 = (*(*(type metadata accessor for EnergySitePayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v9 - v10;
  sub_1D2028364(v2, &v9 - v10);
  v3 = EnergySitePayload.refreshToken.getter();
  v4 = v11;
  v5 = v3;
  v6 = v12;
  *v11 = v5;
  v4[1] = v7;
  return sub_1D2028400(v6);
}

uint64_t EnergySitePayload.refreshToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D200B0E8();

  swift_beginAccess();
  v2 = *(v5 + 104);
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;

  swift_endAccess();
}

uint64_t (*EnergySitePayload.refreshToken.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = EnergySitePayload.refreshToken.getter();
  a1[1] = v2;
  return sub_1D200C3C4;
}

uint64_t sub_1D200C3C4(uint64_t *a1, char a2)
{
  v2 = a1[2];
  if ((a2 & 1) == 0)
  {
    return EnergySitePayload.refreshToken.setter(*a1, a1[1]);
  }

  v4 = *a1;
  v5 = a1[1];

  EnergySitePayload.refreshToken.setter(v4, v5);
  return sub_1D1FE023C(a1);
}

uint64_t EnergySitePayload.timezone.getter()
{
  v2 = *(v0 + *(type metadata accessor for EnergySitePayload() + 20));

  swift_beginAccess();
  v3 = *(v2 + 112);
  v4 = *(v2 + 120);

  swift_endAccess();

  return v3;
}

uint64_t sub_1D200C4D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = a2;
  v9 = a1;
  v10 = (*(*(type metadata accessor for EnergySitePayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v9 - v10;
  sub_1D2028364(v2, &v9 - v10);
  v3 = EnergySitePayload.timezone.getter();
  v4 = v11;
  v5 = v3;
  v6 = v12;
  *v11 = v5;
  v4[1] = v7;
  return sub_1D2028400(v6);
}

uint64_t EnergySitePayload.timezone.setter(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D200B0E8();

  swift_beginAccess();
  v2 = *(v5 + 120);
  *(v5 + 112) = a1;
  *(v5 + 120) = a2;

  swift_endAccess();
}

uint64_t (*EnergySitePayload.timezone.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = EnergySitePayload.timezone.getter();
  a1[1] = v2;
  return sub_1D200C6D4;
}

uint64_t sub_1D200C6D4(uint64_t *a1, char a2)
{
  v2 = a1[2];
  if ((a2 & 1) == 0)
  {
    return EnergySitePayload.timezone.setter(*a1, a1[1]);
  }

  v4 = *a1;
  v5 = a1[1];

  EnergySitePayload.timezone.setter(v4, v5);
  return sub_1D1FE023C(a1);
}

uint64_t *EnergySitePayload.currentRatePlan.getter@<X0>(char *a1@<X8>)
{
  v5 = a1;
  v16 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEDF0, &unk_1D208F480);
  v6 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v11 = &v5 - v6;
  v16 = v1;
  v10 = 0;
  v9 = *(v1 + *(type metadata accessor for EnergySitePayload() + 20));

  v7 = (v9 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__currentRatePlan);
  v8 = &v15;
  swift_beginAccess();
  sub_1D2018864(v7, v11);
  swift_endAccess();

  v12 = type metadata accessor for EnergySitePayload.CurrentRatePlan();
  v3 = *(v12 - 8);
  v13 = *(v3 + 48);
  v14 = v3 + 48;
  if (v13(v11, 1) != 1)
  {
    return sub_1D2018B0C(v11, v5);
  }

  EnergySitePayload.CurrentRatePlan.init()(v5);
  result = (v13)(v11, 1, v12);
  if (result != 1)
  {
    return sub_1D2018A44(v11);
  }

  return result;
}

uint64_t sub_1D200C8E8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v9 = a2;
  v6 = a1;
  v4[1] = 0;
  v5 = (*(*(type metadata accessor for EnergySitePayload.CurrentRatePlan() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v4 - v5;
  v7 = (*(*(type metadata accessor for EnergySitePayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v6);
  v10 = v4 - v7;
  sub_1D2028364(v2, v4 - v7);
  EnergySitePayload.currentRatePlan.getter(v8);
  sub_1D2018B0C(v8, v9);
  return sub_1D2028400(v10);
}

char *sub_1D200C9F0(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(type metadata accessor for EnergySitePayload.CurrentRatePlan() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v4);
  v6 = &v3 - v5;
  sub_1D2018BA8(v1, &v3 - v5);
  return EnergySitePayload.currentRatePlan.setter(v6);
}

char *EnergySitePayload.currentRatePlan.setter(char *a1)
{
  v15 = a1;
  v18 = 0;
  v17 = 0;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEDF0, &unk_1D208F480) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v15);
  v10 = (&v7 - v8);
  v9 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v13 = &v7 - v9;
  v18 = v4;
  v17 = v1;
  v14 = sub_1D200B0E8();
  sub_1D2018BA8(v15, v13);
  v5 = type metadata accessor for EnergySitePayload.CurrentRatePlan();
  (*(*(v5 - 8) + 56))(v13, 0, 1);
  sub_1D2018864(v13, v10);
  v11 = (v14 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__currentRatePlan);
  v12 = &v16;
  swift_beginAccess();
  sub_1D2018C54(v10, v11);
  swift_endAccess();
  sub_1D2018A44(v13);

  return sub_1D2018ECC(v15);
}

char *EnergySitePayload.CurrentRatePlan.init()@<X0>(char *a1@<X8>)
{
  v8 = a1;
  v9 = 0;
  v5[1] = 0;
  v6 = type metadata accessor for EnergySitePayload.CurrentRatePlan();
  v5[0] = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v7 = v5 - v5[0];
  v9 = v5 - v5[0];
  type metadata accessor for EnergySitePayload.CurrentRatePlan.RatePlan();
  v1 = sub_1D208CB2C();
  v2 = v6;
  *v7 = v1;
  v3 = *(v2 + 20);
  sub_1D208C20C();
  return sub_1D2018B0C(v7, v8);
}

void (*EnergySitePayload.currentRatePlan.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(type metadata accessor for EnergySitePayload.CurrentRatePlan() - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3);
  v5 = __swift_coroFrameAllocStub(v3);
  a1[2] = v5;
  EnergySitePayload.currentRatePlan.getter(v5);
  return sub_1D200CD8C;
}

void sub_1D200CD8C(uint64_t *a1, char a2)
{
  if (a2)
  {
    v4 = a1[2];
    v5 = a1[1];
    v3 = *a1;
    sub_1D2018BA8(v4, v5);
    EnergySitePayload.currentRatePlan.setter(v5);
    sub_1D2018ECC(v4);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v2 = *a1;
    EnergySitePayload.currentRatePlan.setter(v6);
    free(v6);
    free(v7);
  }
}

BOOL EnergySitePayload.hasCurrentRatePlan.getter()
{
  v14 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEDF0, &unk_1D208F480);
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v12 = (&v4 - v7);
  v14 = v0;
  v11 = 0;
  v10 = *(v0 + *(type metadata accessor for EnergySitePayload() + 20));

  v8 = (v10 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__currentRatePlan);
  v9 = &v13;
  swift_beginAccess();
  sub_1D2018864(v8, v12);
  swift_endAccess();

  v2 = type metadata accessor for EnergySitePayload.CurrentRatePlan();
  v6 = (*(*(v2 - 8) + 48))(v12, 1) != 1;
  v5 = v6;
  sub_1D2018A44(v12);
  return v5;
}

Swift::Void __swiftcall EnergySitePayload.clearCurrentRatePlan()()
{
  v13 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEDF0, &unk_1D208F480);
  v5 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v7 = (&v4 - v5);
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v4 - v5);
  v10 = (&v4 - v6);
  v13 = v0;
  v11 = sub_1D200B0E8();
  v3 = type metadata accessor for EnergySitePayload.CurrentRatePlan();
  (*(*(v3 - 8) + 56))(v10, 1);
  sub_1D2018864(v10, v7);
  v8 = (v11 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__currentRatePlan);
  v9 = &v12;
  swift_beginAccess();
  sub_1D2018C54(v7, v8);
  swift_endAccess();
  sub_1D2018A44(v10);
}

uint64_t EnergySitePayload.usagePointCustomIndex.getter()
{
  v3 = *(v0 + *(type metadata accessor for EnergySitePayload() + 20));

  v2 = v3 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointCustomIndex;
  swift_beginAccess();
  v4 = *v2;
  sub_1D1FD0018(*v2, *(v2 + 8));
  swift_endAccess();

  return v4;
}

uint64_t sub_1D200D1A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = a2;
  v9 = a1;
  v10 = (*(*(type metadata accessor for EnergySitePayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v9 - v10;
  sub_1D2028364(v2, &v9 - v10);
  v3 = EnergySitePayload.usagePointCustomIndex.getter();
  v4 = v11;
  v5 = v3;
  v6 = v12;
  *v11 = v5;
  v4[1] = v7;
  return sub_1D2028400(v6);
}

uint64_t EnergySitePayload.usagePointCustomIndex.setter(uint64_t a1, unint64_t a2)
{
  v6 = sub_1D200B0E8();
  sub_1D1FD0018(a1, a2);
  sub_1D1FD0018(a1, a2);
  v5 = (v6 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointCustomIndex);
  swift_beginAccess();
  v2 = *v5;
  v3 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_1D1FD0094(v2, v3);
  swift_endAccess();
  sub_1D1FD0094(a1, a2);

  return sub_1D1FD0094(a1, a2);
}

uint64_t (*EnergySitePayload.usagePointCustomIndex.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = EnergySitePayload.usagePointCustomIndex.getter();
  a1[1] = v2;
  return sub_1D200D3C4;
}

uint64_t sub_1D200D3C4(uint64_t *a1, char a2)
{
  v2 = a1[2];
  if ((a2 & 1) == 0)
  {
    return EnergySitePayload.usagePointCustomIndex.setter(*a1, a1[1]);
  }

  v4 = *a1;
  v5 = a1[1];
  sub_1D1FD0018(*a1, v5);
  EnergySitePayload.usagePointCustomIndex.setter(v4, v5);
  result = a1;
  sub_1D2018FC4(a1);
  return result;
}

uint64_t EnergySitePayload.usageSummaryCustomIndex.getter()
{
  v3 = *(v0 + *(type metadata accessor for EnergySitePayload() + 20));

  v2 = v3 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryCustomIndex;
  swift_beginAccess();
  v4 = *v2;
  sub_1D1FD0018(*v2, *(v2 + 8));
  swift_endAccess();

  return v4;
}

uint64_t sub_1D200D4DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = a2;
  v9 = a1;
  v10 = (*(*(type metadata accessor for EnergySitePayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v9 - v10;
  sub_1D2028364(v2, &v9 - v10);
  v3 = EnergySitePayload.usageSummaryCustomIndex.getter();
  v4 = v11;
  v5 = v3;
  v6 = v12;
  *v11 = v5;
  v4[1] = v7;
  return sub_1D2028400(v6);
}

uint64_t EnergySitePayload.usageSummaryCustomIndex.setter(uint64_t a1, unint64_t a2)
{
  v6 = sub_1D200B0E8();
  sub_1D1FD0018(a1, a2);
  sub_1D1FD0018(a1, a2);
  v5 = (v6 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryCustomIndex);
  swift_beginAccess();
  v2 = *v5;
  v3 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_1D1FD0094(v2, v3);
  swift_endAccess();
  sub_1D1FD0094(a1, a2);

  return sub_1D1FD0094(a1, a2);
}

uint64_t (*EnergySitePayload.usageSummaryCustomIndex.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = EnergySitePayload.usageSummaryCustomIndex.getter();
  a1[1] = v2;
  return sub_1D200D700;
}

uint64_t sub_1D200D700(uint64_t *a1, char a2)
{
  v2 = a1[2];
  if ((a2 & 1) == 0)
  {
    return EnergySitePayload.usageSummaryCustomIndex.setter(*a1, a1[1]);
  }

  v4 = *a1;
  v5 = a1[1];
  sub_1D1FD0018(*a1, v5);
  EnergySitePayload.usageSummaryCustomIndex.setter(v4, v5);
  result = a1;
  sub_1D2018FC4(a1);
  return result;
}

uint64_t EnergySitePayload.intervalBlockCustomIndex.getter()
{
  v3 = *(v0 + *(type metadata accessor for EnergySitePayload() + 20));

  v2 = v3 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockCustomIndex;
  swift_beginAccess();
  v4 = *v2;
  sub_1D1FD0018(*v2, *(v2 + 8));
  swift_endAccess();

  return v4;
}

uint64_t sub_1D200D818@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = a2;
  v9 = a1;
  v10 = (*(*(type metadata accessor for EnergySitePayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v9 - v10;
  sub_1D2028364(v2, &v9 - v10);
  v3 = EnergySitePayload.intervalBlockCustomIndex.getter();
  v4 = v11;
  v5 = v3;
  v6 = v12;
  *v11 = v5;
  v4[1] = v7;
  return sub_1D2028400(v6);
}

uint64_t EnergySitePayload.intervalBlockCustomIndex.setter(uint64_t a1, unint64_t a2)
{
  v6 = sub_1D200B0E8();
  sub_1D1FD0018(a1, a2);
  sub_1D1FD0018(a1, a2);
  v5 = (v6 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockCustomIndex);
  swift_beginAccess();
  v2 = *v5;
  v3 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_1D1FD0094(v2, v3);
  swift_endAccess();
  sub_1D1FD0094(a1, a2);

  return sub_1D1FD0094(a1, a2);
}

uint64_t (*EnergySitePayload.intervalBlockCustomIndex.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = EnergySitePayload.intervalBlockCustomIndex.getter();
  a1[1] = v2;
  return sub_1D200DA3C;
}

uint64_t sub_1D200DA3C(uint64_t *a1, char a2)
{
  v2 = a1[2];
  if ((a2 & 1) == 0)
  {
    return EnergySitePayload.intervalBlockCustomIndex.setter(*a1, a1[1]);
  }

  v4 = *a1;
  v5 = a1[1];
  sub_1D1FD0018(*a1, v5);
  EnergySitePayload.intervalBlockCustomIndex.setter(v4, v5);
  result = a1;
  sub_1D2018FC4(a1);
  return result;
}

uint64_t EnergySitePayload.ckFunctionToken.getter()
{
  v3 = *(v0 + *(type metadata accessor for EnergySitePayload() + 20));

  v2 = (v3 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__ckFunctionToken);
  swift_beginAccess();
  v4 = *v2;
  v5 = v2[1];

  swift_endAccess();

  return v4;
}

uint64_t sub_1D200DB54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = a2;
  v9 = a1;
  v10 = (*(*(type metadata accessor for EnergySitePayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v9 - v10;
  sub_1D2028364(v2, &v9 - v10);
  v3 = EnergySitePayload.ckFunctionToken.getter();
  v4 = v11;
  v5 = v3;
  v6 = v12;
  *v11 = v5;
  v4[1] = v7;
  return sub_1D2028400(v6);
}

uint64_t EnergySitePayload.ckFunctionToken.setter(uint64_t a1, uint64_t a2)
{
  v6 = sub_1D200B0E8();

  v5 = (v6 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__ckFunctionToken);
  swift_beginAccess();
  v2 = v5[1];
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t (*EnergySitePayload.ckFunctionToken.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = EnergySitePayload.ckFunctionToken.getter();
  a1[1] = v2;
  return sub_1D200DD64;
}

uint64_t sub_1D200DD64(uint64_t *a1, char a2)
{
  v2 = a1[2];
  if ((a2 & 1) == 0)
  {
    return EnergySitePayload.ckFunctionToken.setter(*a1, a1[1]);
  }

  v4 = *a1;
  v5 = a1[1];

  EnergySitePayload.ckFunctionToken.setter(v4, v5);
  return sub_1D1FE023C(a1);
}

uint64_t EnergySitePayload.accountName.getter()
{
  v3 = *(v0 + *(type metadata accessor for EnergySitePayload() + 20));

  v2 = (v3 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accountName);
  swift_beginAccess();
  v4 = *v2;
  v5 = v2[1];

  swift_endAccess();

  return v4;
}

uint64_t sub_1D200DE7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = a2;
  v9 = a1;
  v10 = (*(*(type metadata accessor for EnergySitePayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v9 - v10;
  sub_1D2028364(v2, &v9 - v10);
  v3 = EnergySitePayload.accountName.getter();
  v4 = v11;
  v5 = v3;
  v6 = v12;
  *v11 = v5;
  v4[1] = v7;
  return sub_1D2028400(v6);
}

uint64_t EnergySitePayload.accountName.setter(uint64_t a1, uint64_t a2)
{
  v6 = sub_1D200B0E8();

  v5 = (v6 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accountName);
  swift_beginAccess();
  v2 = v5[1];
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t (*EnergySitePayload.accountName.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = EnergySitePayload.accountName.getter();
  a1[1] = v2;
  return sub_1D200E08C;
}

uint64_t sub_1D200E08C(uint64_t *a1, char a2)
{
  v2 = a1[2];
  if ((a2 & 1) == 0)
  {
    return EnergySitePayload.accountName.setter(*a1, a1[1]);
  }

  v4 = *a1;
  v5 = a1[1];

  EnergySitePayload.accountName.setter(v4, v5);
  return sub_1D1FE023C(a1);
}

uint64_t EnergySitePayload.accountNumber.getter()
{
  v3 = *(v0 + *(type metadata accessor for EnergySitePayload() + 20));

  v2 = (v3 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accountNumber);
  swift_beginAccess();
  v4 = *v2;
  v5 = v2[1];

  swift_endAccess();

  return v4;
}

uint64_t sub_1D200E1A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = a2;
  v9 = a1;
  v10 = (*(*(type metadata accessor for EnergySitePayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v9 - v10;
  sub_1D2028364(v2, &v9 - v10);
  v3 = EnergySitePayload.accountNumber.getter();
  v4 = v11;
  v5 = v3;
  v6 = v12;
  *v11 = v5;
  v4[1] = v7;
  return sub_1D2028400(v6);
}

uint64_t EnergySitePayload.accountNumber.setter(uint64_t a1, uint64_t a2)
{
  v6 = sub_1D200B0E8();

  v5 = (v6 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accountNumber);
  swift_beginAccess();
  v2 = v5[1];
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t (*EnergySitePayload.accountNumber.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = EnergySitePayload.accountNumber.getter();
  a1[1] = v2;
  return sub_1D200E3B4;
}

uint64_t sub_1D200E3B4(uint64_t *a1, char a2)
{
  v2 = a1[2];
  if ((a2 & 1) == 0)
  {
    return EnergySitePayload.accountNumber.setter(*a1, a1[1]);
  }

  v4 = *a1;
  v5 = a1[1];

  EnergySitePayload.accountNumber.setter(v4, v5);
  return sub_1D1FE023C(a1);
}

uint64_t EnergySitePayload.address.getter()
{
  v3 = *(v0 + *(type metadata accessor for EnergySitePayload() + 20));

  v2 = (v3 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__address);
  swift_beginAccess();
  v4 = *v2;
  v5 = v2[1];

  swift_endAccess();

  return v4;
}

uint64_t sub_1D200E4CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = a2;
  v9 = a1;
  v10 = (*(*(type metadata accessor for EnergySitePayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v9 - v10;
  sub_1D2028364(v2, &v9 - v10);
  v3 = EnergySitePayload.address.getter();
  v4 = v11;
  v5 = v3;
  v6 = v12;
  *v11 = v5;
  v4[1] = v7;
  return sub_1D2028400(v6);
}

uint64_t EnergySitePayload.address.setter(uint64_t a1, uint64_t a2)
{
  v6 = sub_1D200B0E8();

  v5 = (v6 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__address);
  swift_beginAccess();
  v2 = v5[1];
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t (*EnergySitePayload.address.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = EnergySitePayload.address.getter();
  a1[1] = v2;
  return sub_1D200E6DC;
}

uint64_t sub_1D200E6DC(uint64_t *a1, char a2)
{
  v2 = a1[2];
  if ((a2 & 1) == 0)
  {
    return EnergySitePayload.address.setter(*a1, a1[1]);
  }

  v4 = *a1;
  v5 = a1[1];

  EnergySitePayload.address.setter(v4, v5);
  return sub_1D1FE023C(a1);
}

uint64_t EnergySitePayload.serviceLocationID.getter()
{
  v3 = *(v0 + *(type metadata accessor for EnergySitePayload() + 20));

  v2 = (v3 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__serviceLocationID);
  swift_beginAccess();
  v4 = *v2;
  v5 = v2[1];

  swift_endAccess();

  return v4;
}

uint64_t sub_1D200E7F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = a2;
  v9 = a1;
  v10 = (*(*(type metadata accessor for EnergySitePayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v9 - v10;
  sub_1D2028364(v2, &v9 - v10);
  v3 = EnergySitePayload.serviceLocationID.getter();
  v4 = v11;
  v5 = v3;
  v6 = v12;
  *v11 = v5;
  v4[1] = v7;
  return sub_1D2028400(v6);
}

uint64_t EnergySitePayload.serviceLocationID.setter(uint64_t a1, uint64_t a2)
{
  v6 = sub_1D200B0E8();

  v5 = (v6 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__serviceLocationID);
  swift_beginAccess();
  v2 = v5[1];
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t (*EnergySitePayload.serviceLocationID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = EnergySitePayload.serviceLocationID.getter();
  a1[1] = v2;
  return sub_1D200EA04;
}

uint64_t sub_1D200EA04(uint64_t *a1, char a2)
{
  v2 = a1[2];
  if ((a2 & 1) == 0)
  {
    return EnergySitePayload.serviceLocationID.setter(*a1, a1[1]);
  }

  v4 = *a1;
  v5 = a1[1];

  EnergySitePayload.serviceLocationID.setter(v4, v5);
  return sub_1D1FE023C(a1);
}

uint64_t EnergySitePayload.alternateSupplier.getter()
{
  v3 = *(v0 + *(type metadata accessor for EnergySitePayload() + 20));

  v2 = (v3 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__alternateSupplier);
  swift_beginAccess();
  v4 = *v2;
  v5 = v2[1];

  swift_endAccess();

  return v4;
}

uint64_t sub_1D200EB1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = a2;
  v9 = a1;
  v10 = (*(*(type metadata accessor for EnergySitePayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v9 - v10;
  sub_1D2028364(v2, &v9 - v10);
  v3 = EnergySitePayload.alternateSupplier.getter();
  v4 = v11;
  v5 = v3;
  v6 = v12;
  *v11 = v5;
  v4[1] = v7;
  return sub_1D2028400(v6);
}

uint64_t EnergySitePayload.alternateSupplier.setter(uint64_t a1, uint64_t a2)
{
  v6 = sub_1D200B0E8();

  v5 = (v6 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__alternateSupplier);
  swift_beginAccess();
  v2 = v5[1];
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t (*EnergySitePayload.alternateSupplier.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = EnergySitePayload.alternateSupplier.getter();
  a1[1] = v2;
  return sub_1D200ED2C;
}

uint64_t sub_1D200ED2C(uint64_t *a1, char a2)
{
  v2 = a1[2];
  if ((a2 & 1) == 0)
  {
    return EnergySitePayload.alternateSupplier.setter(*a1, a1[1]);
  }

  v4 = *a1;
  v5 = a1[1];

  EnergySitePayload.alternateSupplier.setter(v4, v5);
  return sub_1D1FE023C(a1);
}

uint64_t EnergySitePayload.accessTokenExpirationDate.getter@<X0>(void *a1@<X8>)
{
  v5 = *(v1 + *(type metadata accessor for EnergySitePayload() + 20));

  v3 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accessTokenExpirationDate);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  swift_endAccess();
}

uint64_t sub_1D200EE34@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a2;
  v6 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v5 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v5 - v5;
  v7 = (*(*(type metadata accessor for EnergySitePayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v5 - v7;
  sub_1D2028364(v3, &v5 - v7);
  EnergySitePayload.accessTokenExpirationDate.getter(v8);
  sub_1D20284B4(v8, v9);
  return sub_1D2028400(v10);
}

uint64_t sub_1D200EF40(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v4);
  v6 = &v3 - v5;
  sub_1D1FD5F1C(v1, &v3 - v5);
  return EnergySitePayload.accessTokenExpirationDate.setter(v6);
}

uint64_t EnergySitePayload.accessTokenExpirationDate.setter(const void *a1)
{
  v14 = a1;
  v17 = 0;
  v16 = 0;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v14);
  v9 = &v6 - v7;
  v8 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v12 = &v6 - v8;
  v17 = v4;
  v16 = v1;
  v13 = sub_1D200B0E8();
  sub_1D1FD5F1C(v14, v12);
  sub_1D1FD5F1C(v12, v9);
  v10 = (v13 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accessTokenExpirationDate);
  v11 = &v15;
  swift_beginAccess();
  sub_1D1FD6448(v9, v10);
  swift_endAccess();
  sub_1D1FD6044(v12);

  return sub_1D1FD6044(v14);
}

void (*EnergySitePayload.accessTokenExpirationDate.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3);
  v5 = __swift_coroFrameAllocStub(v3);
  a1[2] = v5;
  EnergySitePayload.accessTokenExpirationDate.getter(v5);
  return sub_1D200F1F0;
}

void sub_1D200F1F0(uint64_t *a1, char a2)
{
  if (a2)
  {
    v4 = a1[2];
    v5 = a1[1];
    v3 = *a1;
    sub_1D1FD5F1C(v4, v5);
    EnergySitePayload.accessTokenExpirationDate.setter(v5);
    sub_1D1FD6044(v4);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v2 = *a1;
    EnergySitePayload.accessTokenExpirationDate.setter(v6);
    free(v6);
    free(v7);
  }
}

BOOL EnergySitePayload.hasAccessTokenExpirationDate.getter()
{
  v14 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v12 = &v4 - v7;
  v14 = v0;
  v11 = 0;
  v10 = *(v0 + *(type metadata accessor for EnergySitePayload() + 20));

  v8 = (v10 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accessTokenExpirationDate);
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

Swift::Void __swiftcall EnergySitePayload.clearAccessTokenExpirationDate()()
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
  v11 = sub_1D200B0E8();
  v3 = sub_1D208C1EC();
  (*(*(v3 - 8) + 56))(v10, 1);
  sub_1D1FD5F1C(v10, v7);
  v8 = (v11 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accessTokenExpirationDate);
  v9 = &v12;
  swift_beginAccess();
  sub_1D1FD6448(v7, v8);
  swift_endAccess();
  sub_1D1FD6044(v10);
}

uint64_t EnergySitePayload.utilitySupportedCheckDate.getter@<X0>(void *a1@<X8>)
{
  v5 = *(v1 + *(type metadata accessor for EnergySitePayload() + 20));

  v3 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__utilitySupportedCheckDate);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  swift_endAccess();
}

uint64_t sub_1D200F5F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a2;
  v6 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v5 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v5 - v5;
  v7 = (*(*(type metadata accessor for EnergySitePayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v5 - v7;
  sub_1D2028364(v3, &v5 - v7);
  EnergySitePayload.utilitySupportedCheckDate.getter(v8);
  sub_1D20284B4(v8, v9);
  return sub_1D2028400(v10);
}

uint64_t sub_1D200F700(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v4);
  v6 = &v3 - v5;
  sub_1D1FD5F1C(v1, &v3 - v5);
  return EnergySitePayload.utilitySupportedCheckDate.setter(v6);
}

uint64_t EnergySitePayload.utilitySupportedCheckDate.setter(const void *a1)
{
  v14 = a1;
  v17 = 0;
  v16 = 0;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v14);
  v9 = &v6 - v7;
  v8 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v12 = &v6 - v8;
  v17 = v4;
  v16 = v1;
  v13 = sub_1D200B0E8();
  sub_1D1FD5F1C(v14, v12);
  sub_1D1FD5F1C(v12, v9);
  v10 = (v13 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__utilitySupportedCheckDate);
  v11 = &v15;
  swift_beginAccess();
  sub_1D1FD6448(v9, v10);
  swift_endAccess();
  sub_1D1FD6044(v12);

  return sub_1D1FD6044(v14);
}

void (*EnergySitePayload.utilitySupportedCheckDate.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3);
  v5 = __swift_coroFrameAllocStub(v3);
  a1[2] = v5;
  EnergySitePayload.utilitySupportedCheckDate.getter(v5);
  return sub_1D200F9B0;
}

void sub_1D200F9B0(uint64_t *a1, char a2)
{
  if (a2)
  {
    v4 = a1[2];
    v5 = a1[1];
    v3 = *a1;
    sub_1D1FD5F1C(v4, v5);
    EnergySitePayload.utilitySupportedCheckDate.setter(v5);
    sub_1D1FD6044(v4);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v2 = *a1;
    EnergySitePayload.utilitySupportedCheckDate.setter(v6);
    free(v6);
    free(v7);
  }
}

BOOL EnergySitePayload.hasUtilitySupportedCheckDate.getter()
{
  v14 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v12 = &v4 - v7;
  v14 = v0;
  v11 = 0;
  v10 = *(v0 + *(type metadata accessor for EnergySitePayload() + 20));

  v8 = (v10 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__utilitySupportedCheckDate);
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

Swift::Void __swiftcall EnergySitePayload.clearUtilitySupportedCheckDate()()
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
  v11 = sub_1D200B0E8();
  v3 = sub_1D208C1EC();
  (*(*(v3 - 8) + 56))(v10, 1);
  sub_1D1FD5F1C(v10, v7);
  v8 = (v11 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__utilitySupportedCheckDate);
  v9 = &v12;
  swift_beginAccess();
  sub_1D1FD6448(v7, v8);
  swift_endAccess();
  sub_1D1FD6044(v10);
}

uint64_t EnergySitePayload.amiLastRefreshDate.getter@<X0>(void *a1@<X8>)
{
  v5 = *(v1 + *(type metadata accessor for EnergySitePayload() + 20));

  v3 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__amiLastRefreshDate);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  swift_endAccess();
}

uint64_t sub_1D200FDB4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a2;
  v6 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v5 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v5 - v5;
  v7 = (*(*(type metadata accessor for EnergySitePayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v5 - v7;
  sub_1D2028364(v3, &v5 - v7);
  EnergySitePayload.amiLastRefreshDate.getter(v8);
  sub_1D20284B4(v8, v9);
  return sub_1D2028400(v10);
}

uint64_t sub_1D200FEC0(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v4);
  v6 = &v3 - v5;
  sub_1D1FD5F1C(v1, &v3 - v5);
  return EnergySitePayload.amiLastRefreshDate.setter(v6);
}

uint64_t EnergySitePayload.amiLastRefreshDate.setter(const void *a1)
{
  v14 = a1;
  v17 = 0;
  v16 = 0;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v14);
  v9 = &v6 - v7;
  v8 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v12 = &v6 - v8;
  v17 = v4;
  v16 = v1;
  v13 = sub_1D200B0E8();
  sub_1D1FD5F1C(v14, v12);
  sub_1D1FD5F1C(v12, v9);
  v10 = (v13 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__amiLastRefreshDate);
  v11 = &v15;
  swift_beginAccess();
  sub_1D1FD6448(v9, v10);
  swift_endAccess();
  sub_1D1FD6044(v12);

  return sub_1D1FD6044(v14);
}

void (*EnergySitePayload.amiLastRefreshDate.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3);
  v5 = __swift_coroFrameAllocStub(v3);
  a1[2] = v5;
  EnergySitePayload.amiLastRefreshDate.getter(v5);
  return sub_1D2010170;
}

void sub_1D2010170(uint64_t *a1, char a2)
{
  if (a2)
  {
    v4 = a1[2];
    v5 = a1[1];
    v3 = *a1;
    sub_1D1FD5F1C(v4, v5);
    EnergySitePayload.amiLastRefreshDate.setter(v5);
    sub_1D1FD6044(v4);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v2 = *a1;
    EnergySitePayload.amiLastRefreshDate.setter(v6);
    free(v6);
    free(v7);
  }
}

BOOL EnergySitePayload.hasAmiLastRefreshDate.getter()
{
  v14 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v12 = &v4 - v7;
  v14 = v0;
  v11 = 0;
  v10 = *(v0 + *(type metadata accessor for EnergySitePayload() + 20));

  v8 = (v10 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__amiLastRefreshDate);
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

Swift::Void __swiftcall EnergySitePayload.clearAmiLastRefreshDate()()
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
  v11 = sub_1D200B0E8();
  v3 = sub_1D208C1EC();
  (*(*(v3 - 8) + 56))(v10, 1);
  sub_1D1FD5F1C(v10, v7);
  v8 = (v11 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__amiLastRefreshDate);
  v9 = &v12;
  swift_beginAccess();
  sub_1D1FD6448(v7, v8);
  swift_endAccess();
  sub_1D1FD6044(v10);
}

uint64_t EnergySitePayload.hasExportedEnergy_p.getter()
{
  v3 = *(v0 + *(type metadata accessor for EnergySitePayload() + 20));

  v2 = (v3 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__hasExportedEnergy_p);
  swift_beginAccess();
  v4 = *v2;
  swift_endAccess();

  return v4 & 1;
}

uint64_t sub_1D2010578@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v8 = a2;
  v6 = a1;
  v7 = (*(*(type metadata accessor for EnergySitePayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v6 - v7;
  sub_1D2028364(v2, &v6 - v7);
  v3 = EnergySitePayload.hasExportedEnergy_p.getter();
  v4 = v9;
  *v8 = v3 & 1;
  return sub_1D2028400(v4);
}

uint64_t EnergySitePayload.hasExportedEnergy_p.setter(char a1)
{
  v2 = (sub_1D200B0E8() + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__hasExportedEnergy_p);
  swift_beginAccess();
  *v2 = a1;
  swift_endAccess();
}

uint64_t (*EnergySitePayload.hasExportedEnergy_p.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = EnergySitePayload.hasExportedEnergy_p.getter() & 1;
  return sub_1D201073C;
}

uint64_t EnergySitePayload.usagePointNextRefreshDate.getter@<X0>(void *a1@<X8>)
{
  v5 = *(v1 + *(type metadata accessor for EnergySitePayload() + 20));

  v3 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointNextRefreshDate);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  swift_endAccess();
}

uint64_t sub_1D2010828@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a2;
  v6 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v5 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v5 - v5;
  v7 = (*(*(type metadata accessor for EnergySitePayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v5 - v7;
  sub_1D2028364(v3, &v5 - v7);
  EnergySitePayload.usagePointNextRefreshDate.getter(v8);
  sub_1D20284B4(v8, v9);
  return sub_1D2028400(v10);
}

uint64_t sub_1D2010934(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v4);
  v6 = &v3 - v5;
  sub_1D1FD5F1C(v1, &v3 - v5);
  return EnergySitePayload.usagePointNextRefreshDate.setter(v6);
}

uint64_t EnergySitePayload.usagePointNextRefreshDate.setter(const void *a1)
{
  v14 = a1;
  v17 = 0;
  v16 = 0;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v14);
  v9 = &v6 - v7;
  v8 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v12 = &v6 - v8;
  v17 = v4;
  v16 = v1;
  v13 = sub_1D200B0E8();
  sub_1D1FD5F1C(v14, v12);
  sub_1D1FD5F1C(v12, v9);
  v10 = (v13 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointNextRefreshDate);
  v11 = &v15;
  swift_beginAccess();
  sub_1D1FD6448(v9, v10);
  swift_endAccess();
  sub_1D1FD6044(v12);

  return sub_1D1FD6044(v14);
}

void (*EnergySitePayload.usagePointNextRefreshDate.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3);
  v5 = __swift_coroFrameAllocStub(v3);
  a1[2] = v5;
  EnergySitePayload.usagePointNextRefreshDate.getter(v5);
  return sub_1D2010BE4;
}

void sub_1D2010BE4(uint64_t *a1, char a2)
{
  if (a2)
  {
    v4 = a1[2];
    v5 = a1[1];
    v3 = *a1;
    sub_1D1FD5F1C(v4, v5);
    EnergySitePayload.usagePointNextRefreshDate.setter(v5);
    sub_1D1FD6044(v4);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v2 = *a1;
    EnergySitePayload.usagePointNextRefreshDate.setter(v6);
    free(v6);
    free(v7);
  }
}

BOOL EnergySitePayload.hasUsagePointNextRefreshDate.getter()
{
  v14 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v12 = &v4 - v7;
  v14 = v0;
  v11 = 0;
  v10 = *(v0 + *(type metadata accessor for EnergySitePayload() + 20));

  v8 = (v10 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointNextRefreshDate);
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

Swift::Void __swiftcall EnergySitePayload.clearUsagePointNextRefreshDate()()
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
  v11 = sub_1D200B0E8();
  v3 = sub_1D208C1EC();
  (*(*(v3 - 8) + 56))(v10, 1);
  sub_1D1FD5F1C(v10, v7);
  v8 = (v11 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointNextRefreshDate);
  v9 = &v12;
  swift_beginAccess();
  sub_1D1FD6448(v7, v8);
  swift_endAccess();
  sub_1D1FD6044(v10);
}

uint64_t EnergySitePayload.usageSummaryNextRefreshDate.getter@<X0>(void *a1@<X8>)
{
  v5 = *(v1 + *(type metadata accessor for EnergySitePayload() + 20));

  v3 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryNextRefreshDate);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  swift_endAccess();
}

uint64_t sub_1D2010FE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a2;
  v6 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v5 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v5 - v5;
  v7 = (*(*(type metadata accessor for EnergySitePayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v5 - v7;
  sub_1D2028364(v3, &v5 - v7);
  EnergySitePayload.usageSummaryNextRefreshDate.getter(v8);
  sub_1D20284B4(v8, v9);
  return sub_1D2028400(v10);
}

uint64_t sub_1D20110F4(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v4);
  v6 = &v3 - v5;
  sub_1D1FD5F1C(v1, &v3 - v5);
  return EnergySitePayload.usageSummaryNextRefreshDate.setter(v6);
}

uint64_t EnergySitePayload.usageSummaryNextRefreshDate.setter(const void *a1)
{
  v14 = a1;
  v17 = 0;
  v16 = 0;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v14);
  v9 = &v6 - v7;
  v8 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v12 = &v6 - v8;
  v17 = v4;
  v16 = v1;
  v13 = sub_1D200B0E8();
  sub_1D1FD5F1C(v14, v12);
  sub_1D1FD5F1C(v12, v9);
  v10 = (v13 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryNextRefreshDate);
  v11 = &v15;
  swift_beginAccess();
  sub_1D1FD6448(v9, v10);
  swift_endAccess();
  sub_1D1FD6044(v12);

  return sub_1D1FD6044(v14);
}

void (*EnergySitePayload.usageSummaryNextRefreshDate.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3);
  v5 = __swift_coroFrameAllocStub(v3);
  a1[2] = v5;
  EnergySitePayload.usageSummaryNextRefreshDate.getter(v5);
  return sub_1D20113A4;
}

void sub_1D20113A4(uint64_t *a1, char a2)
{
  if (a2)
  {
    v4 = a1[2];
    v5 = a1[1];
    v3 = *a1;
    sub_1D1FD5F1C(v4, v5);
    EnergySitePayload.usageSummaryNextRefreshDate.setter(v5);
    sub_1D1FD6044(v4);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v2 = *a1;
    EnergySitePayload.usageSummaryNextRefreshDate.setter(v6);
    free(v6);
    free(v7);
  }
}

BOOL EnergySitePayload.hasUsageSummaryNextRefreshDate.getter()
{
  v14 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v12 = &v4 - v7;
  v14 = v0;
  v11 = 0;
  v10 = *(v0 + *(type metadata accessor for EnergySitePayload() + 20));

  v8 = (v10 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryNextRefreshDate);
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

Swift::Void __swiftcall EnergySitePayload.clearUsageSummaryNextRefreshDate()()
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
  v11 = sub_1D200B0E8();
  v3 = sub_1D208C1EC();
  (*(*(v3 - 8) + 56))(v10, 1);
  sub_1D1FD5F1C(v10, v7);
  v8 = (v11 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryNextRefreshDate);
  v9 = &v12;
  swift_beginAccess();
  sub_1D1FD6448(v7, v8);
  swift_endAccess();
  sub_1D1FD6044(v10);
}

uint64_t EnergySitePayload.intervalBlockNextRefreshDate.getter@<X0>(void *a1@<X8>)
{
  v5 = *(v1 + *(type metadata accessor for EnergySitePayload() + 20));

  v3 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockNextRefreshDate);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  swift_endAccess();
}

uint64_t sub_1D20117A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a2;
  v6 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v5 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v5 - v5;
  v7 = (*(*(type metadata accessor for EnergySitePayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v5 - v7;
  sub_1D2028364(v3, &v5 - v7);
  EnergySitePayload.intervalBlockNextRefreshDate.getter(v8);
  sub_1D20284B4(v8, v9);
  return sub_1D2028400(v10);
}

uint64_t sub_1D20118B4(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v4);
  v6 = &v3 - v5;
  sub_1D1FD5F1C(v1, &v3 - v5);
  return EnergySitePayload.intervalBlockNextRefreshDate.setter(v6);
}

uint64_t EnergySitePayload.intervalBlockNextRefreshDate.setter(const void *a1)
{
  v14 = a1;
  v17 = 0;
  v16 = 0;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v14);
  v9 = &v6 - v7;
  v8 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v12 = &v6 - v8;
  v17 = v4;
  v16 = v1;
  v13 = sub_1D200B0E8();
  sub_1D1FD5F1C(v14, v12);
  sub_1D1FD5F1C(v12, v9);
  v10 = (v13 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockNextRefreshDate);
  v11 = &v15;
  swift_beginAccess();
  sub_1D1FD6448(v9, v10);
  swift_endAccess();
  sub_1D1FD6044(v12);

  return sub_1D1FD6044(v14);
}

void (*EnergySitePayload.intervalBlockNextRefreshDate.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3);
  v5 = __swift_coroFrameAllocStub(v3);
  a1[2] = v5;
  EnergySitePayload.intervalBlockNextRefreshDate.getter(v5);
  return sub_1D2011B64;
}

void sub_1D2011B64(uint64_t *a1, char a2)
{
  if (a2)
  {
    v4 = a1[2];
    v5 = a1[1];
    v3 = *a1;
    sub_1D1FD5F1C(v4, v5);
    EnergySitePayload.intervalBlockNextRefreshDate.setter(v5);
    sub_1D1FD6044(v4);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v2 = *a1;
    EnergySitePayload.intervalBlockNextRefreshDate.setter(v6);
    free(v6);
    free(v7);
  }
}

BOOL EnergySitePayload.hasIntervalBlockNextRefreshDate.getter()
{
  v14 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v12 = &v4 - v7;
  v14 = v0;
  v11 = 0;
  v10 = *(v0 + *(type metadata accessor for EnergySitePayload() + 20));

  v8 = (v10 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockNextRefreshDate);
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

Swift::Void __swiftcall EnergySitePayload.clearIntervalBlockNextRefreshDate()()
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
  v11 = sub_1D200B0E8();
  v3 = sub_1D208C1EC();
  (*(*(v3 - 8) + 56))(v10, 1);
  sub_1D1FD5F1C(v10, v7);
  v8 = (v11 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockNextRefreshDate);
  v9 = &v12;
  swift_beginAccess();
  sub_1D1FD6448(v7, v8);
  swift_endAccess();
  sub_1D1FD6044(v10);
}

uint64_t EnergySitePayload.subscriptionState.getter()
{
  v3 = *(v0 + *(type metadata accessor for EnergySitePayload() + 20));

  v2 = (v3 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionState);
  swift_beginAccess();
  v4 = *v2;
  v5 = v2[1];

  swift_endAccess();

  return v4;
}

uint64_t sub_1D2011F78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = a2;
  v9 = a1;
  v10 = (*(*(type metadata accessor for EnergySitePayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v9 - v10;
  sub_1D2028364(v2, &v9 - v10);
  v3 = EnergySitePayload.subscriptionState.getter();
  v4 = v11;
  v5 = v3;
  v6 = v12;
  *v11 = v5;
  v4[1] = v7;
  return sub_1D2028400(v6);
}

uint64_t EnergySitePayload.subscriptionState.setter(uint64_t a1, uint64_t a2)
{
  v6 = sub_1D200B0E8();

  v5 = (v6 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionState);
  swift_beginAccess();
  v2 = v5[1];
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t (*EnergySitePayload.subscriptionState.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = EnergySitePayload.subscriptionState.getter();
  a1[1] = v2;
  return sub_1D2012188;
}

uint64_t sub_1D2012188(uint64_t *a1, char a2)
{
  v2 = a1[2];
  if ((a2 & 1) == 0)
  {
    return EnergySitePayload.subscriptionState.setter(*a1, a1[1]);
  }

  v4 = *a1;
  v5 = a1[1];

  EnergySitePayload.subscriptionState.setter(v4, v5);
  return sub_1D1FE023C(a1);
}

uint64_t EnergySitePayload.subscriptionCreationDate.getter@<X0>(void *a1@<X8>)
{
  v5 = *(v1 + *(type metadata accessor for EnergySitePayload() + 20));

  v3 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionCreationDate);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  swift_endAccess();
}

uint64_t sub_1D2012290@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a2;
  v6 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v5 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v5 - v5;
  v7 = (*(*(type metadata accessor for EnergySitePayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v5 - v7;
  sub_1D2028364(v3, &v5 - v7);
  EnergySitePayload.subscriptionCreationDate.getter(v8);
  sub_1D20284B4(v8, v9);
  return sub_1D2028400(v10);
}

uint64_t sub_1D201239C(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v4);
  v6 = &v3 - v5;
  sub_1D1FD5F1C(v1, &v3 - v5);
  return EnergySitePayload.subscriptionCreationDate.setter(v6);
}

uint64_t EnergySitePayload.subscriptionCreationDate.setter(const void *a1)
{
  v14 = a1;
  v17 = 0;
  v16 = 0;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v14);
  v9 = &v6 - v7;
  v8 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v12 = &v6 - v8;
  v17 = v4;
  v16 = v1;
  v13 = sub_1D200B0E8();
  sub_1D1FD5F1C(v14, v12);
  sub_1D1FD5F1C(v12, v9);
  v10 = (v13 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionCreationDate);
  v11 = &v15;
  swift_beginAccess();
  sub_1D1FD6448(v9, v10);
  swift_endAccess();
  sub_1D1FD6044(v12);

  return sub_1D1FD6044(v14);
}

void (*EnergySitePayload.subscriptionCreationDate.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3);
  v5 = __swift_coroFrameAllocStub(v3);
  a1[2] = v5;
  EnergySitePayload.subscriptionCreationDate.getter(v5);
  return sub_1D201264C;
}

void sub_1D201264C(uint64_t *a1, char a2)
{
  if (a2)
  {
    v4 = a1[2];
    v5 = a1[1];
    v3 = *a1;
    sub_1D1FD5F1C(v4, v5);
    EnergySitePayload.subscriptionCreationDate.setter(v5);
    sub_1D1FD6044(v4);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v2 = *a1;
    EnergySitePayload.subscriptionCreationDate.setter(v6);
    free(v6);
    free(v7);
  }
}

uint64_t EnergySitePayload.subscriptionStartDate.getter@<X0>(void *a1@<X8>)
{
  v5 = *(v1 + *(type metadata accessor for EnergySitePayload() + 20));

  v3 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionStartDate);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  swift_endAccess();
}

uint64_t sub_1D201278C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a2;
  v6 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v5 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v5 - v5;
  v7 = (*(*(type metadata accessor for EnergySitePayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v5 - v7;
  sub_1D2028364(v3, &v5 - v7);
  EnergySitePayload.subscriptionStartDate.getter(v8);
  sub_1D20284B4(v8, v9);
  return sub_1D2028400(v10);
}

uint64_t sub_1D2012898(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v4);
  v6 = &v3 - v5;
  sub_1D1FD5F1C(v1, &v3 - v5);
  return EnergySitePayload.subscriptionStartDate.setter(v6);
}

uint64_t EnergySitePayload.subscriptionStartDate.setter(const void *a1)
{
  v14 = a1;
  v17 = 0;
  v16 = 0;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v14);
  v9 = &v6 - v7;
  v8 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v12 = &v6 - v8;
  v17 = v4;
  v16 = v1;
  v13 = sub_1D200B0E8();
  sub_1D1FD5F1C(v14, v12);
  sub_1D1FD5F1C(v12, v9);
  v10 = (v13 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionStartDate);
  v11 = &v15;
  swift_beginAccess();
  sub_1D1FD6448(v9, v10);
  swift_endAccess();
  sub_1D1FD6044(v12);

  return sub_1D1FD6044(v14);
}

void (*EnergySitePayload.subscriptionStartDate.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3);
  v5 = __swift_coroFrameAllocStub(v3);
  a1[2] = v5;
  EnergySitePayload.subscriptionStartDate.getter(v5);
  return sub_1D2012B48;
}

void sub_1D2012B48(uint64_t *a1, char a2)
{
  if (a2)
  {
    v4 = a1[2];
    v5 = a1[1];
    v3 = *a1;
    sub_1D1FD5F1C(v4, v5);
    EnergySitePayload.subscriptionStartDate.setter(v5);
    sub_1D1FD6044(v4);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v2 = *a1;
    EnergySitePayload.subscriptionStartDate.setter(v6);
    free(v6);
    free(v7);
  }
}

uint64_t EnergySitePayload.siteTombstone.getter@<X0>(void *a1@<X8>)
{
  v5 = *(v1 + *(type metadata accessor for EnergySitePayload() + 20));

  v3 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__siteTombstone);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  swift_endAccess();
}

uint64_t sub_1D2012C88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a2;
  v6 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v5 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v5 - v5;
  v7 = (*(*(type metadata accessor for EnergySitePayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v5 - v7;
  sub_1D2028364(v3, &v5 - v7);
  EnergySitePayload.siteTombstone.getter(v8);
  sub_1D20284B4(v8, v9);
  return sub_1D2028400(v10);
}

uint64_t sub_1D2012D94(uint64_t a1)
{
  v4 = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v4);
  v6 = &v3 - v5;
  sub_1D1FD5F1C(v1, &v3 - v5);
  return EnergySitePayload.siteTombstone.setter(v6);
}

uint64_t EnergySitePayload.siteTombstone.setter(const void *a1)
{
  v14 = a1;
  v17 = 0;
  v16 = 0;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v14);
  v9 = &v6 - v7;
  v8 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v12 = &v6 - v8;
  v17 = v4;
  v16 = v1;
  v13 = sub_1D200B0E8();
  sub_1D1FD5F1C(v14, v12);
  sub_1D1FD5F1C(v12, v9);
  v10 = (v13 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__siteTombstone);
  v11 = &v15;
  swift_beginAccess();
  sub_1D1FD6448(v9, v10);
  swift_endAccess();
  sub_1D1FD6044(v12);

  return sub_1D1FD6044(v14);
}

void (*EnergySitePayload.siteTombstone.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3);
  v5 = __swift_coroFrameAllocStub(v3);
  a1[2] = v5;
  EnergySitePayload.siteTombstone.getter(v5);
  return sub_1D2013044;
}

void sub_1D2013044(uint64_t *a1, char a2)
{
  if (a2)
  {
    v4 = a1[2];
    v5 = a1[1];
    v3 = *a1;
    sub_1D1FD5F1C(v4, v5);
    EnergySitePayload.siteTombstone.setter(v5);
    sub_1D1FD6044(v4);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = a1[2];
    v7 = a1[1];
    v2 = *a1;
    EnergySitePayload.siteTombstone.setter(v6);
    free(v6);
    free(v7);
  }
}

uint64_t EnergySitePayload.siteVersion.getter()
{
  v3 = *(v0 + *(type metadata accessor for EnergySitePayload() + 20));

  v2 = (v3 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__siteVersion);
  swift_beginAccess();
  v4 = *v2;
  v5 = *(v2 + 4);
  swift_endAccess();

  LODWORD(v6) = v4;
  BYTE4(v6) = v5 & 1;
  return v6;
}

uint64_t sub_1D20131A4@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v11 = a2;
  v9 = a1;
  v10 = (*(*(type metadata accessor for EnergySitePayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v8 - v10;
  sub_1D2028364(v2, &v8 - v10);
  v3 = EnergySitePayload.siteVersion.getter();
  v4 = v11;
  v5 = v3;
  v6 = v12;
  v13 = v5;
  *v11 = v5;
  *(v4 + 4) = BYTE4(v5) & 1;
  return sub_1D2028400(v6);
}

uint64_t sub_1D2013264(uint64_t a1)
{
  LODWORD(v2) = *a1;
  BYTE4(v2) = *(a1 + 4) & 1;
  return EnergySitePayload.siteVersion.setter(v2);
}

uint64_t EnergySitePayload.siteVersion.setter(uint64_t a1)
{
  v2 = a1;
  v3 = BYTE4(a1);
  v4 = sub_1D200B0E8() + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__siteVersion;
  swift_beginAccess();
  *v4 = v2;
  *(v4 + 4) = v3 & 1;
  swift_endAccess();
}

uint64_t (*EnergySitePayload.siteVersion.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v2 = EnergySitePayload.siteVersion.getter();
  *(a1 + 8) = v2;
  *(a1 + 12) = BYTE4(v2) & 1;
  return sub_1D20133E0;
}

uint64_t sub_1D20133E0(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    LODWORD(v4) = *(a1 + 2);
    BYTE4(v4) = *(a1 + 12) & 1;
    return EnergySitePayload.siteVersion.setter(v4);
  }

  else
  {
    LODWORD(v5) = *(a1 + 2);
    BYTE4(v5) = *(a1 + 12) & 1;
    return EnergySitePayload.siteVersion.setter(v5);
  }
}

uint64_t EnergySitePayload.generationMeters.getter()
{
  v3 = *(v0 + *(type metadata accessor for EnergySitePayload() + 20));

  v2 = (v3 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__generationMeters);
  swift_beginAccess();
  v4 = *v2;

  swift_endAccess();

  return v4;
}

uint64_t sub_1D20134F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v8 = a2;
  v6 = a1;
  v7 = (*(*(type metadata accessor for EnergySitePayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v6 - v7;
  sub_1D2028364(v2, &v6 - v7);
  v3 = EnergySitePayload.generationMeters.getter();
  v4 = v9;
  *v8 = v3;
  return sub_1D2028400(v4);
}

uint64_t EnergySitePayload.generationMeters.setter(uint64_t a1)
{
  v4 = sub_1D200B0E8();

  v3 = (v4 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__generationMeters);
  swift_beginAccess();
  v1 = *v3;
  *v3 = a1;

  swift_endAccess();
}

uint64_t *(*EnergySitePayload.generationMeters.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = EnergySitePayload.generationMeters.getter();
  return sub_1D20136E4;
}

uint64_t *sub_1D20136E4(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return EnergySitePayload.generationMeters.setter(*a1);
  }

  v4 = *a1;

  EnergySitePayload.generationMeters.setter(v4);
  return sub_1D1FD3C38(a1);
}

uint64_t EnergySitePayload.includeRatePlanInGuidance.getter()
{
  v3 = *(v0 + *(type metadata accessor for EnergySitePayload() + 20));

  v2 = (v3 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__includeRatePlanInGuidance);
  swift_beginAccess();
  v4 = *v2;
  v5 = *(v2 + 4);
  swift_endAccess();

  LODWORD(v6) = v4;
  BYTE4(v6) = v5 & 1;
  return v6;
}

uint64_t sub_1D20137FC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v11 = a2;
  v9 = a1;
  v10 = (*(*(type metadata accessor for EnergySitePayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v8 - v10;
  sub_1D2028364(v2, &v8 - v10);
  v3 = EnergySitePayload.includeRatePlanInGuidance.getter();
  v4 = v11;
  v5 = v3;
  v6 = v12;
  v13 = v5;
  *v11 = v5;
  *(v4 + 4) = BYTE4(v5) & 1;
  return sub_1D2028400(v6);
}

uint64_t sub_1D20138BC(uint64_t a1)
{
  LODWORD(v2) = *a1;
  BYTE4(v2) = *(a1 + 4) & 1;
  return EnergySitePayload.includeRatePlanInGuidance.setter(v2);
}

uint64_t EnergySitePayload.includeRatePlanInGuidance.setter(uint64_t a1)
{
  v2 = a1;
  v3 = BYTE4(a1);
  v4 = sub_1D200B0E8() + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__includeRatePlanInGuidance;
  swift_beginAccess();
  *v4 = v2;
  *(v4 + 4) = v3 & 1;
  swift_endAccess();
}

uint64_t (*EnergySitePayload.includeRatePlanInGuidance.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v2 = EnergySitePayload.includeRatePlanInGuidance.getter();
  *(a1 + 8) = v2;
  *(a1 + 12) = BYTE4(v2) & 1;
  return sub_1D2013A38;
}

uint64_t sub_1D2013A38(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    LODWORD(v4) = *(a1 + 2);
    BYTE4(v4) = *(a1 + 12) & 1;
    return EnergySitePayload.includeRatePlanInGuidance.setter(v4);
  }

  else
  {
    LODWORD(v5) = *(a1 + 2);
    BYTE4(v5) = *(a1 + 12) & 1;
    return EnergySitePayload.includeRatePlanInGuidance.setter(v5);
  }
}

uint64_t EnergySitePayload.unknownFields.setter(uint64_t a1)
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

uint64_t EnergySitePayload.CurrentRatePlan.ratePlan.getter()
{
  v2 = *v0;

  return v2;
}

uint64_t EnergySitePayload.CurrentRatePlan.ratePlan.setter(uint64_t a1)
{

  v2 = *v1;
  *v1 = a1;
}

uint64_t EnergySitePayload.CurrentRatePlan.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for EnergySitePayload.CurrentRatePlan() + 20);
  v2 = sub_1D208C21C();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t EnergySitePayload.CurrentRatePlan.unknownFields.setter(uint64_t a1)
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
  v3 = type metadata accessor for EnergySitePayload.CurrentRatePlan();
  (*(v9 + 40))(v1 + *(v3 + 20), v8, v11);
  return (*(v9 + 8))(v12, v11);
}

uint64_t EnergySitePayload.CurrentRatePlan.RatePlan.identifier.getter()
{
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t EnergySitePayload.CurrentRatePlan.RatePlan.identifier.setter(uint64_t a1, uint64_t a2)
{

  v3 = v2[1];
  *v2 = a1;
  v2[1] = a2;
}

uint64_t EnergySitePayload.CurrentRatePlan.RatePlan.descriptor.getter()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return v2;
}

uint64_t EnergySitePayload.CurrentRatePlan.RatePlan.descriptor.setter(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t EnergySitePayload.CurrentRatePlan.RatePlan.peaks.getter()
{
  v2 = *(v0 + 32);
  sub_1D1FD0018(v2, *(v0 + 40));
  return v2;
}

uint64_t EnergySitePayload.CurrentRatePlan.RatePlan.peaks.setter(uint64_t a1, unint64_t a2)
{
  sub_1D1FD0018(a1, a2);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  sub_1D1FD0094(v3, v4);
  return sub_1D1FD0094(a1, a2);
}

uint64_t EnergySitePayload.CurrentRatePlan.RatePlan.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for EnergySitePayload.CurrentRatePlan.RatePlan() + 28);
  v2 = sub_1D208C21C();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t EnergySitePayload.CurrentRatePlan.RatePlan.unknownFields.setter(uint64_t a1)
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
  v3 = type metadata accessor for EnergySitePayload.CurrentRatePlan.RatePlan();
  (*(v9 + 40))(v1 + *(v3 + 28), v8, v11);
  return (*(v9 + 8))(v12, v11);
}

char *EnergySitePayload.CurrentRatePlan.RatePlan.init()@<X0>(char *a1@<X8>)
{
  v18 = a1;
  v19 = 0;
  v16 = type metadata accessor for EnergySitePayload.CurrentRatePlan.RatePlan();
  v15 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v17 = &v14 - v15;
  v19 = &v14 - v15;
  v1 = sub_1D208C51C();
  v2 = v17;
  *v17 = v1;
  *(v2 + 1) = v3;
  v4 = sub_1D208C51C();
  v5 = v17;
  *(v17 + 2) = v4;
  *(v5 + 3) = v6;
  v7 = sub_1D208BD4C();
  v8 = v17;
  v9 = v7;
  v10 = v16;
  *(v17 + 4) = v9;
  *(v8 + 5) = v11;
  v12 = *(v10 + 28);
  sub_1D208C20C();
  return sub_1D2018FF8(v17, v18);
}

uint64_t EnergySitePayload.init()@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v11 = 0;
  v6 = type metadata accessor for EnergySitePayload();
  v5 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v7 = &v4 - v5;
  v11 = &v4 - v5;
  sub_1D208C20C();
  v8 = *(v6 + 20);
  v9 = *sub_1D2014628();

  v1 = v7;
  v2 = v10;
  *&v7[v8] = v9;
  return sub_1D20190A4(v1, v2);
}

uint64_t sub_1D20145F8()
{
  v1 = *sub_1D2014628();

  return v1;
}

uint64_t *sub_1D2014628()
{
  if (qword_1EE083158 != -1)
  {
    swift_once();
  }

  return &qword_1EE083160;
}

uint64_t sub_1D2014688()
{
  v2 = *(v0 + *(type metadata accessor for EnergySitePayload() + 20));

  return v2;
}

uint64_t sub_1D20146CC(uint64_t a1)
{

  v2 = (v1 + *(type metadata accessor for EnergySitePayload() + 20));
  v3 = *v2;
  *v2 = a1;
}

uint64_t sub_1D201472C()
{
  result = sub_1D208C64C();
  qword_1EC6C2908 = result;
  qword_1EC6C2910 = v1;
  return result;
}

uint64_t *sub_1D2014770()
{
  if (qword_1EC6C2900 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C2908;
}

uint64_t static EnergySitePayload.protoMessageName.getter()
{
  v0 = sub_1D2014770();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_1D201480C()
{
  v126 = sub_1D208C47C();
  __swift_allocate_value_buffer(v126, qword_1EE082D10);
  __swift_project_value_buffer(v126, qword_1EE082D10);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v130 = v0;
  v1 = *(v133 + 48);
  *v0 = 1;
  v128 = v0 + v1;
  *v128 = "siteName";
  *(v128 + 1) = 8;
  v128[16] = 2;
  v131 = MEMORY[0x1E69AADC8];
  v127 = *MEMORY[0x1E69AADC8];
  v132 = *(*(sub_1D208C45C() - 8) + 104);
  (v132)(v128, v127);
  v129 = *(*(v133 - 8) + 72);
  v2 = *(v133 + 48);
  *(v130 + v129) = 2;
  v3 = v130 + v129 + v2;
  *v3 = "latitude";
  *(v3 + 1) = 8;
  v3[16] = 2;
  v4 = *v131;
  v132();
  v5 = *(v133 + 48);
  v6 = (v130 + 2 * v129);
  *v6 = 3;
  v7 = v6 + v5;
  *v7 = "longitude";
  *(v7 + 1) = 9;
  v7[16] = 2;
  v8 = *v131;
  v132();
  v9 = *(v133 + 48);
  v10 = (v130 + 3 * v129);
  *v10 = 4;
  v11 = v10 + v9;
  *v11 = "utilityID";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v12 = *v131;
  v132();
  v13 = *(v133 + 48);
  v14 = (v130 + 4 * v129);
  *v14 = 5;
  v15 = v14 + v13;
  *v15 = "subscriptionID";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v16 = *v131;
  v132();
  v17 = *(v133 + 48);
  v18 = (v130 + 5 * v129);
  *v18 = 6;
  v19 = v18 + v17;
  *v19 = "accessToken";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v20 = *v131;
  v132();
  v21 = *(v133 + 48);
  v22 = (v130 + 6 * v129);
  *v22 = 7;
  v23 = v22 + v21;
  *v23 = "refreshToken";
  *(v23 + 1) = 12;
  v23[16] = 2;
  v24 = *v131;
  v132();
  v25 = *(v133 + 48);
  v26 = (v130 + 7 * v129);
  *v26 = 8;
  v27 = v26 + v25;
  *v27 = "timezone";
  *(v27 + 1) = 8;
  v27[16] = 2;
  v28 = *v131;
  v132();
  v29 = *(v133 + 48);
  v30 = &v130[v129];
  *v30 = 9;
  v31 = v30 + v29;
  *v31 = "currentRatePlan";
  *(v31 + 1) = 15;
  v31[16] = 2;
  v32 = *v131;
  v132();
  v33 = *(v133 + 48);
  v34 = (v130 + 9 * v129);
  *v34 = 10;
  v35 = v34 + v33;
  *v35 = "usagePointCustomIndex";
  *(v35 + 1) = 21;
  v35[16] = 2;
  v36 = *v131;
  v132();
  v37 = *(v133 + 48);
  v38 = (v130 + 10 * v129);
  *v38 = 11;
  v39 = v38 + v37;
  *v39 = "usageSummaryCustomIndex";
  *(v39 + 1) = 23;
  v39[16] = 2;
  v40 = *v131;
  v132();
  v41 = *(v133 + 48);
  v42 = (v130 + 11 * v129);
  *v42 = 12;
  v43 = v42 + v41;
  *v43 = "intervalBlockCustomIndex";
  *(v43 + 1) = 24;
  v43[16] = 2;
  v44 = *v131;
  v132();
  v45 = *(v133 + 48);
  v46 = (v130 + 12 * v129);
  *v46 = 13;
  v47 = v46 + v45;
  *v47 = "ckFunctionToken";
  *(v47 + 1) = 15;
  v47[16] = 2;
  v48 = *v131;
  v132();
  v49 = *(v133 + 48);
  v50 = (v130 + 13 * v129);
  *v50 = 14;
  v51 = v50 + v49;
  *v51 = "accountName";
  *(v51 + 1) = 11;
  v51[16] = 2;
  v52 = *v131;
  v132();
  v53 = *(v133 + 48);
  v54 = (v130 + 14 * v129);
  *v54 = 15;
  v55 = v54 + v53;
  *v55 = "accountNumber";
  *(v55 + 1) = 13;
  v55[16] = 2;
  v56 = *v131;
  v132();
  v57 = *(v133 + 48);
  v58 = (v130 + 15 * v129);
  *v58 = 16;
  v59 = v58 + v57;
  *v59 = "address";
  *(v59 + 1) = 7;
  v59[16] = 2;
  v60 = *v131;
  v132();
  v61 = *(v133 + 48);
  v62 = &v130[2 * v129];
  *v62 = 17;
  v63 = v62 + v61;
  *v63 = "serviceLocationID";
  *(v63 + 1) = 17;
  v63[16] = 2;
  v64 = *v131;
  v132();
  v65 = *(v133 + 48);
  v66 = (v130 + 17 * v129);
  *v66 = 18;
  v67 = v66 + v65;
  *v67 = "alternateSupplier";
  *(v67 + 1) = 17;
  v67[16] = 2;
  v68 = *v131;
  v132();
  v69 = *(v133 + 48);
  v70 = (v130 + 18 * v129);
  *v70 = 19;
  v71 = v70 + v69;
  *v71 = "accessTokenExpirationDate";
  *(v71 + 1) = 25;
  v71[16] = 2;
  v72 = *v131;
  v132();
  v73 = *(v133 + 48);
  v74 = (v130 + 19 * v129);
  *v74 = 20;
  v75 = v74 + v73;
  *v75 = "utilitySupportedCheckDate";
  *(v75 + 1) = 25;
  v75[16] = 2;
  v76 = *v131;
  v132();
  v77 = *(v133 + 48);
  v78 = (v130 + 20 * v129);
  *v78 = 21;
  v79 = v78 + v77;
  *v79 = "amiLastRefreshDate";
  *(v79 + 1) = 18;
  v79[16] = 2;
  v80 = *v131;
  v132();
  v81 = *(v133 + 48);
  v82 = (v130 + 21 * v129);
  *v82 = 22;
  v83 = v82 + v81;
  *v83 = "hasExportedEnergy";
  *(v83 + 1) = 17;
  v83[16] = 2;
  v84 = *v131;
  v132();
  v85 = *(v133 + 48);
  v86 = (v130 + 22 * v129);
  *v86 = 23;
  v87 = v86 + v85;
  *v87 = "usagePointNextRefreshDate";
  *(v87 + 1) = 25;
  v87[16] = 2;
  v88 = *v131;
  v132();
  v89 = *(v133 + 48);
  v90 = (v130 + 23 * v129);
  *v90 = 24;
  v91 = v90 + v89;
  *v91 = "usageSummaryNextRefreshDate";
  *(v91 + 1) = 27;
  v91[16] = 2;
  v92 = *v131;
  v132();
  v93 = *(v133 + 48);
  v94 = &v130[3 * v129];
  *v94 = 25;
  v95 = v94 + v93;
  *v95 = "intervalBlockNextRefreshDate";
  *(v95 + 1) = 28;
  v95[16] = 2;
  v96 = *v131;
  v132();
  v97 = *(v133 + 48);
  v98 = (v130 + 25 * v129);
  *v98 = 26;
  v99 = v98 + v97;
  *v99 = "subscriptionState";
  *(v99 + 1) = 17;
  v99[16] = 2;
  v100 = *v131;
  v132();
  v101 = *(v133 + 48);
  v102 = (v130 + 26 * v129);
  *v102 = 27;
  v103 = v102 + v101;
  *v103 = "subscriptionCreationDate";
  *(v103 + 1) = 24;
  v103[16] = 2;
  v104 = *v131;
  v132();
  v105 = *(v133 + 48);
  v106 = (v130 + 27 * v129);
  *v106 = 28;
  v107 = v106 + v105;
  *v107 = "subscriptionStartDate";
  *(v107 + 1) = 21;
  v107[16] = 2;
  v108 = *v131;
  v132();
  v109 = *(v133 + 48);
  v110 = (v130 + 28 * v129);
  *v110 = 29;
  v111 = v110 + v109;
  *v111 = "siteTombstone";
  *(v111 + 1) = 13;
  v111[16] = 2;
  v112 = *v131;
  v132();
  v113 = *(v133 + 48);
  v114 = (v130 + 29 * v129);
  *v114 = 30;
  v115 = v114 + v113;
  *v115 = "siteVersion";
  *(v115 + 1) = 11;
  v115[16] = 2;
  v116 = *v131;
  v132();
  v117 = *(v133 + 48);
  v118 = (v130 + 30 * v129);
  *v118 = 31;
  v119 = v118 + v117;
  *v119 = "generationMeters";
  *(v119 + 1) = 16;
  v119[16] = 2;
  v120 = *v131;
  v132();
  v121 = *(v133 + 48);
  v122 = (v130 + 31 * v129);
  *v122 = 32;
  v123 = v122 + v121;
  *v123 = "includeRatePlanInGuidance";
  *(v123 + 1) = 25;
  v123[16] = 2;
  v124 = *v131;
  v132();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D2015764()
{
  if (qword_1EE082D08 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EE082D10);
}

uint64_t static EnergySitePayload._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D2015764();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1D2015834()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  swift_endAccess();
  return v2;
}

uint64_t sub_1D2015890(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  v3 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  swift_endAccess();
}

double sub_1D201595C()
{
  swift_beginAccess();
  v2 = *(v0 + 32);
  swift_endAccess();
  return v2;
}

uint64_t sub_1D20159A8(double a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
  return swift_endAccess();
}

double sub_1D2015A50()
{
  swift_beginAccess();
  v2 = *(v0 + 40);
  swift_endAccess();
  return v2;
}

uint64_t sub_1D2015A9C(double a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
  return swift_endAccess();
}

uint64_t sub_1D2015B44()
{
  swift_beginAccess();
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  swift_endAccess();
  return v2;
}

uint64_t sub_1D2015BA0(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  v3 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;

  swift_endAccess();
}

uint64_t sub_1D2015C6C()
{
  swift_beginAccess();
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);

  swift_endAccess();
  return v2;
}

uint64_t sub_1D2015CC8(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  v3 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;

  swift_endAccess();
}

uint64_t sub_1D2015D94()
{
  swift_beginAccess();
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);

  swift_endAccess();
  return v2;
}

uint64_t sub_1D2015DF0(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  v3 = *(v2 + 88);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;

  swift_endAccess();
}

uint64_t sub_1D2015EBC()
{
  swift_beginAccess();
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);

  swift_endAccess();
  return v2;
}

uint64_t sub_1D2015F18(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  v3 = *(v2 + 104);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;

  swift_endAccess();
}

uint64_t sub_1D2015FE4()
{
  swift_beginAccess();
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);

  swift_endAccess();
  return v2;
}

uint64_t sub_1D2016040(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  v3 = *(v2 + 120);
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;

  swift_endAccess();
}

uint64_t sub_1D201610C@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__currentRatePlan);
  swift_beginAccess();
  sub_1D2018864(v3, a1);
  return swift_endAccess();
}

uint64_t *sub_1D2016168(uint64_t *a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEDF0, &unk_1D208F480) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v5 = (&v4 - v4);
  sub_1D2018864(v2, (&v4 - v4));
  v6 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__currentRatePlan);
  v7 = &v9;
  swift_beginAccess();
  sub_1D2018C54(v5, v6);
  swift_endAccess();
  return sub_1D2018A44(v8);
}

uint64_t sub_1D201629C()
{
  v2 = v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointCustomIndex;
  swift_beginAccess();
  v3 = *v2;
  sub_1D1FD0018(*v2, *(v2 + 8));
  swift_endAccess();
  return v3;
}

uint64_t sub_1D2016308(uint64_t a1, unint64_t a2)
{
  sub_1D1FD0018(a1, a2);
  v6 = (v2 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointCustomIndex);
  swift_beginAccess();
  v3 = *v6;
  v4 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  sub_1D1FD0094(v3, v4);
  swift_endAccess();
  return sub_1D1FD0094(a1, a2);
}

uint64_t sub_1D20163F0()
{
  v2 = v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryCustomIndex;
  swift_beginAccess();
  v3 = *v2;
  sub_1D1FD0018(*v2, *(v2 + 8));
  swift_endAccess();
  return v3;
}

uint64_t sub_1D201645C(uint64_t a1, unint64_t a2)
{
  sub_1D1FD0018(a1, a2);
  v6 = (v2 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryCustomIndex);
  swift_beginAccess();
  v3 = *v6;
  v4 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  sub_1D1FD0094(v3, v4);
  swift_endAccess();
  return sub_1D1FD0094(a1, a2);
}

uint64_t sub_1D2016544()
{
  v2 = v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockCustomIndex;
  swift_beginAccess();
  v3 = *v2;
  sub_1D1FD0018(*v2, *(v2 + 8));
  swift_endAccess();
  return v3;
}

uint64_t sub_1D20165B0(uint64_t a1, unint64_t a2)
{
  sub_1D1FD0018(a1, a2);
  v6 = (v2 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockCustomIndex);
  swift_beginAccess();
  v3 = *v6;
  v4 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  sub_1D1FD0094(v3, v4);
  swift_endAccess();
  return sub_1D1FD0094(a1, a2);
}

uint64_t sub_1D2016698()
{
  v2 = (v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__ckFunctionToken);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  swift_endAccess();
  return v3;
}

uint64_t sub_1D2016704(uint64_t a1, uint64_t a2)
{

  v6 = (v2 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__ckFunctionToken);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D20167E8()
{
  v2 = (v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accountName);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  swift_endAccess();
  return v3;
}

uint64_t sub_1D2016854(uint64_t a1, uint64_t a2)
{

  v6 = (v2 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accountName);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D2016938()
{
  v2 = (v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accountNumber);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  swift_endAccess();
  return v3;
}

uint64_t sub_1D20169A4(uint64_t a1, uint64_t a2)
{

  v6 = (v2 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accountNumber);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D2016A88()
{
  v2 = (v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__address);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  swift_endAccess();
  return v3;
}

uint64_t sub_1D2016AF4(uint64_t a1, uint64_t a2)
{

  v6 = (v2 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__address);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D2016BD8()
{
  v2 = (v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__serviceLocationID);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  swift_endAccess();
  return v3;
}

uint64_t sub_1D2016C44(uint64_t a1, uint64_t a2)
{

  v6 = (v2 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__serviceLocationID);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D2016D28()
{
  v2 = (v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__alternateSupplier);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  swift_endAccess();
  return v3;
}

uint64_t sub_1D2016D94(uint64_t a1, uint64_t a2)
{

  v6 = (v2 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__alternateSupplier);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D2016E78@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accessTokenExpirationDate);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D2016ED4(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  sub_1D1FD5F1C(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accessTokenExpirationDate);
  v7 = &v9;
  swift_beginAccess();
  sub_1D1FD6448(v5, v6);
  swift_endAccess();
  return sub_1D1FD6044(v8);
}

uint64_t sub_1D2017008@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__utilitySupportedCheckDate);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D2017064(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  sub_1D1FD5F1C(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__utilitySupportedCheckDate);
  v7 = &v9;
  swift_beginAccess();
  sub_1D1FD6448(v5, v6);
  swift_endAccess();
  return sub_1D1FD6044(v8);
}

uint64_t sub_1D2017198@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__amiLastRefreshDate);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D20171F4(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  sub_1D1FD5F1C(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__amiLastRefreshDate);
  v7 = &v9;
  swift_beginAccess();
  sub_1D1FD6448(v5, v6);
  swift_endAccess();
  return sub_1D1FD6044(v8);
}

uint64_t sub_1D2017328()
{
  v2 = (v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__hasExportedEnergy_p);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_1D2017388(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__hasExportedEnergy_p);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1D2017448@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointNextRefreshDate);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D20174A4(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  sub_1D1FD5F1C(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointNextRefreshDate);
  v7 = &v9;
  swift_beginAccess();
  sub_1D1FD6448(v5, v6);
  swift_endAccess();
  return sub_1D1FD6044(v8);
}

uint64_t sub_1D20175D8@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryNextRefreshDate);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D2017634(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  sub_1D1FD5F1C(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryNextRefreshDate);
  v7 = &v9;
  swift_beginAccess();
  sub_1D1FD6448(v5, v6);
  swift_endAccess();
  return sub_1D1FD6044(v8);
}

uint64_t sub_1D2017768@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockNextRefreshDate);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D20177C4(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  sub_1D1FD5F1C(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockNextRefreshDate);
  v7 = &v9;
  swift_beginAccess();
  sub_1D1FD6448(v5, v6);
  swift_endAccess();
  return sub_1D1FD6044(v8);
}

uint64_t sub_1D20178F8()
{
  v2 = (v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionState);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  swift_endAccess();
  return v3;
}

uint64_t sub_1D2017964(uint64_t a1, uint64_t a2)
{

  v6 = (v2 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionState);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_1D2017A48@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionCreationDate);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D2017AA4(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  sub_1D1FD5F1C(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionCreationDate);
  v7 = &v9;
  swift_beginAccess();
  sub_1D1FD6448(v5, v6);
  swift_endAccess();
  return sub_1D1FD6044(v8);
}

uint64_t sub_1D2017BD8@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionStartDate);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D2017C34(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  sub_1D1FD5F1C(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionStartDate);
  v7 = &v9;
  swift_beginAccess();
  sub_1D1FD6448(v5, v6);
  swift_endAccess();
  return sub_1D1FD6044(v8);
}

uint64_t sub_1D2017D68@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__siteTombstone);
  swift_beginAccess();
  sub_1D1FD5F1C(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1D2017DC4(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  sub_1D1FD5F1C(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__siteTombstone);
  v7 = &v9;
  swift_beginAccess();
  sub_1D1FD6448(v5, v6);
  swift_endAccess();
  return sub_1D1FD6044(v8);
}

uint64_t sub_1D2017EF8()
{
  v2 = (v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__siteVersion);
  swift_beginAccess();
  v3 = *v2;
  v4 = *(v2 + 4);
  swift_endAccess();
  LODWORD(v5) = v3;
  BYTE4(v5) = v4 & 1;
  return v5;
}

uint64_t sub_1D2017F74(uint64_t a1)
{
  v3 = a1;
  v4 = BYTE4(a1);
  v5 = v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__siteVersion;
  swift_beginAccess();
  *v5 = v3;
  *(v5 + 4) = v4 & 1;
  return swift_endAccess();
}

uint64_t sub_1D2018054()
{
  v2 = (v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__generationMeters);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1D20180B4(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__generationMeters);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_1D2018188()
{
  v2 = (v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__includeRatePlanInGuidance);
  swift_beginAccess();
  v3 = *v2;
  v4 = *(v2 + 4);
  swift_endAccess();
  LODWORD(v5) = v3;
  BYTE4(v5) = v4 & 1;
  return v5;
}

uint64_t sub_1D2018204(uint64_t a1)
{
  v3 = a1;
  v4 = BYTE4(a1);
  v5 = v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__includeRatePlanInGuidance;
  swift_beginAccess();
  *v5 = v3;
  *(v5 + 4) = v4 & 1;
  return swift_endAccess();
}

uint64_t sub_1D20182E4()
{
  type metadata accessor for EnergySitePayload._StorageClass();
  result = sub_1D2018318();
  qword_1EE083160 = result;
  return result;
}

uint64_t sub_1D2018318()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1D2018354();
}

uint64_t sub_1D2018354()
{
  *(v0 + 2) = sub_1D208C51C();
  *(v0 + 3) = v1;
  *(v0 + 4) = 0xC066800000000000;
  *(v0 + 5) = 0xC066800000000000;
  *(v0 + 6) = sub_1D208C51C();
  *(v0 + 7) = v2;
  *(v0 + 8) = sub_1D208C51C();
  *(v0 + 9) = v3;
  *(v0 + 10) = sub_1D208C51C();
  *(v0 + 11) = v4;
  *(v0 + 12) = sub_1D208C51C();
  *(v0 + 13) = v5;
  *(v0 + 14) = sub_1D208C51C();
  *(v0 + 15) = v6;
  v42 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__currentRatePlan;
  v7 = type metadata accessor for EnergySitePayload.CurrentRatePlan();
  (*(*(v7 - 8) + 56))(&v0[v42], 1);
  v43 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointCustomIndex;
  v8 = sub_1D208BD4C();
  v9 = &v0[v43];
  *v9 = v8;
  v9[1] = v10;
  v44 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryCustomIndex;
  v11 = sub_1D208BD4C();
  v12 = &v0[v44];
  *v12 = v11;
  v12[1] = v13;
  v45 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockCustomIndex;
  v14 = sub_1D208BD4C();
  v15 = &v0[v45];
  *v15 = v14;
  v15[1] = v16;
  v46 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__ckFunctionToken;
  v17 = sub_1D208C51C();
  v18 = &v0[v46];
  *v18 = v17;
  v18[1] = v19;
  v47 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accountName;
  v20 = sub_1D208C51C();
  v21 = &v0[v47];
  *v21 = v20;
  v21[1] = v22;
  v48 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accountNumber;
  v23 = sub_1D208C51C();
  v24 = &v0[v48];
  *v24 = v23;
  v24[1] = v25;
  v49 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__address;
  v26 = sub_1D208C51C();
  v27 = &v0[v49];
  *v27 = v26;
  v27[1] = v28;
  v50 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__serviceLocationID;
  v29 = sub_1D208C51C();
  v30 = &v0[v50];
  *v30 = v29;
  v30[1] = v31;
  v51 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__alternateSupplier;
  v32 = sub_1D208C51C();
  v33 = &v0[v51];
  *v33 = v32;
  v33[1] = v34;
  v52 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accessTokenExpirationDate;
  v54 = sub_1D208C1EC();
  v55 = *(*(v54 - 8) + 56);
  v55(&v0[v52], 1);
  (v55)(&v0[OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__utilitySupportedCheckDate], 1, 1, v54);
  (v55)(&v0[OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__amiLastRefreshDate], 1, 1, v54);
  v0[OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__hasExportedEnergy_p] = 0;
  (v55)(&v0[OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointNextRefreshDate], 1, 1, v54);
  (v55)(&v0[OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryNextRefreshDate], 1, 1, v54);
  (v55)(&v0[OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockNextRefreshDate], 1, 1, v54);
  v53 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionState;
  v35 = sub_1D208C51C();
  v36 = &v0[v53];
  *v36 = v35;
  v36[1] = v37;
  (v55)(&v0[OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionCreationDate], 1, 1, v54);
  (v55)(&v0[OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionStartDate], 1, 1, v54);
  (v55)(&v0[OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__siteTombstone], 1, 1, v54);
  v38 = &v0[OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__siteVersion];
  *v38 = 3;
  v38[4] = 0;
  v56 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__generationMeters;
  v39 = sub_1D208CB2C();
  result = v57;
  *(v57 + v56) = v39;
  v41 = v57 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__includeRatePlanInGuidance;
  *v41 = 0;
  *(v41 + 4) = 1;
  return result;
}

uint64_t sub_1D2018818(void *a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_1D201912C(a1);
}

void *sub_1D2018864(uint64_t *a1, void *a2)
{
  v10 = type metadata accessor for EnergySitePayload.CurrentRatePlan();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEDF0, &unk_1D208F480);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v5 = *a1;

    *a2 = v5;
    v7 = a2 + *(v10 + 20);
    v6 = a1 + *(v10 + 20);
    v2 = sub_1D208C21C();
    (*(*(v2 - 8) + 16))(v7, v6);
    (*(v11 + 56))(a2, 0, 1, v10);
  }

  return a2;
}

uint64_t type metadata accessor for EnergySitePayload.CurrentRatePlan()
{
  v1 = qword_1EE083360;
  if (!qword_1EE083360)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t *sub_1D2018A44(uint64_t *a1)
{
  v6 = type metadata accessor for EnergySitePayload.CurrentRatePlan();
  if (!(*(*(v6 - 8) + 48))(a1, 1))
  {
    v1 = *a1;

    v4 = a1 + *(v6 + 20);
    v2 = sub_1D208C21C();
    (*(*(v2 - 8) + 8))(v4);
  }

  return a1;
}

char *sub_1D2018B0C(char *a1, char *a2)
{
  *a2 = *a1;
  v4 = *(type metadata accessor for EnergySitePayload.CurrentRatePlan() + 20);
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 32))(&a2[v4], &a1[v4]);
  return a2;
}

char *sub_1D2018BA8(char *a1, char *a2)
{
  v4 = *a1;

  *a2 = v4;
  v5 = *(type metadata accessor for EnergySitePayload.CurrentRatePlan() + 20);
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 16))(&a2[v5], &a1[v5]);
  return a2;
}

uint64_t *sub_1D2018C54(void *a1, uint64_t *a2)
{
  v14 = type metadata accessor for EnergySitePayload.CurrentRatePlan();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(a2, 1))
  {
    if ((v16)(a1, 1, v14))
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEDF0, &unk_1D208F480);
      memcpy(a2, a1, *(*(v6 - 8) + 64));
    }

    else
    {
      *a2 = *a1;
      v9 = a2 + *(v14 + 20);
      v8 = a1 + *(v14 + 20);
      v5 = sub_1D208C21C();
      (*(*(v5 - 8) + 32))(v9, v8);
      (*(v15 + 56))(a2, 0, 1, v14);
    }
  }

  else if ((v16)(a1, 1, v14))
  {
    sub_1D2018ECC(a2);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEDF0, &unk_1D208F480);
    memcpy(a2, a1, *(*(v4 - 8) + 64));
  }

  else
  {
    v2 = *a2;
    *a2 = *a1;

    v11 = a2 + *(v14 + 20);
    v10 = a1 + *(v14 + 20);
    v3 = sub_1D208C21C();
    (*(*(v3 - 8) + 40))(v11, v10);
  }

  return a2;
}

char *sub_1D2018ECC(char *a1)
{
  v1 = *a1;

  v4 = *(type metadata accessor for EnergySitePayload.CurrentRatePlan() + 20);
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 8))(&a1[v4]);
  return a1;
}

uint64_t type metadata accessor for EnergySitePayload.CurrentRatePlan.RatePlan()
{
  v1 = qword_1EE0833F0;
  if (!qword_1EE0833F0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

char *sub_1D2018FF8(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 2) = *(a1 + 2);
  v4 = *(type metadata accessor for EnergySitePayload.CurrentRatePlan.RatePlan() + 28);
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 32))(&a2[v4], &a1[v4]);
  return a2;
}

uint64_t sub_1D20190A4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = type metadata accessor for EnergySitePayload();
  result = a2;
  *(a2 + *(v3 + 20)) = *(a1 + *(v3 + 20));
  return result;
}

uint64_t sub_1D201912C(void *a1)
{
  v306 = a1;
  v373 = 0;
  v372 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v105 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v279 = &v105 - v105;
  v106 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEDF0, &unk_1D208F480) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v306);
  v157 = (&v105 - v106);
  v373 = v3;
  v372 = v1;
  v1[2] = sub_1D208C51C();
  v1[3] = v4;
  v1[4] = 0xC066800000000000;
  v1[5] = 0xC066800000000000;
  v1[6] = sub_1D208C51C();
  v1[7] = v5;
  v1[8] = sub_1D208C51C();
  v1[9] = v6;
  v1[10] = sub_1D208C51C();
  v1[11] = v7;
  v1[12] = sub_1D208C51C();
  v1[13] = v8;
  v1[14] = sub_1D208C51C();
  v1[15] = v9;
  v156 = &unk_1EE083000;
  v107 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__currentRatePlan;
  v122 = 0;
  v10 = *(*(type metadata accessor for EnergySitePayload.CurrentRatePlan() - 8) + 56);
  v303 = 1;
  v10(v1 + v107, 1);
  v162 = &unk_1EE083000;
  v108 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointCustomIndex;
  v11 = sub_1D208BD4C();
  v12 = (v1 + v108);
  *v12 = v11;
  v12[1] = v13;
  v169 = &unk_1EE083000;
  v109 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryCustomIndex;
  v14 = sub_1D208BD4C();
  v15 = (v1 + v109);
  *v15 = v14;
  v15[1] = v16;
  v176 = &unk_1EE083000;
  v110 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockCustomIndex;
  v17 = sub_1D208BD4C();
  v18 = (v1 + v110);
  *v18 = v17;
  v18[1] = v19;
  v183 = &unk_1EE083000;
  v111 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__ckFunctionToken;
  v20 = sub_1D208C51C();
  v21 = (v1 + v111);
  *v21 = v20;
  v21[1] = v22;
  v190 = &unk_1EE083000;
  v112 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accountName;
  v23 = sub_1D208C51C();
  v24 = (v1 + v112);
  *v24 = v23;
  v24[1] = v25;
  v197 = &unk_1EE083000;
  v113 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accountNumber;
  v26 = sub_1D208C51C();
  v27 = (v1 + v113);
  *v27 = v26;
  v27[1] = v28;
  v204 = &unk_1EE083000;
  v114 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__address;
  v29 = sub_1D208C51C();
  v30 = (v1 + v114);
  *v30 = v29;
  v30[1] = v31;
  v211 = &unk_1EE083000;
  v115 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__serviceLocationID;
  v32 = sub_1D208C51C();
  v33 = (v1 + v115);
  *v33 = v32;
  v33[1] = v34;
  v218 = &unk_1EE083000;
  v116 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__alternateSupplier;
  v35 = sub_1D208C51C();
  v36 = (v1 + v116);
  *v36 = v35;
  v36[1] = v37;
  v225 = &unk_1EE083000;
  v117 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accessTokenExpirationDate;
  v119 = sub_1D208C1EC();
  v38 = *(v119 - 8);
  v121 = *(v38 + 56);
  v120 = v38 + 56;
  v121(v1 + v117, v303);
  v230 = &unk_1EE083000;
  (v121)(v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__utilitySupportedCheckDate, v303, v303, v119);
  v235 = &unk_1EE083000;
  (v121)(v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__amiLastRefreshDate, v303, v303, v119);
  v39 = v119;
  v40 = v121;
  v41 = v303;
  v240 = &unk_1EE083000;
  *(v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__hasExportedEnergy_p) = 0;
  v246 = &unk_1EE083000;
  v40(v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointNextRefreshDate, v41, v41, v39);
  v251 = &unk_1EE083000;
  (v121)(v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryNextRefreshDate, v303, v303, v119);
  v256 = &unk_1EE083000;
  (v121)(v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockNextRefreshDate, v303, v303, v119);
  v261 = &unk_1EE083000;
  v118 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionState;
  v42 = sub_1D208C51C();
  v43 = v119;
  v44 = v121;
  v45 = v303;
  v46 = (v1 + v118);
  *v46 = v42;
  v46[1] = v47;
  v268 = &unk_1EE083000;
  v44(v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionCreationDate, v45, v45, v43);
  v273 = &unk_1EE083000;
  (v121)(v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionStartDate, v303, v303, v119);
  v278 = &unk_1EE083000;
  (v121)(v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__siteTombstone, v303, v303, v119);
  v284 = &unk_1EE083000;
  v48 = v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__siteVersion;
  *v48 = 3;
  v48[4] = 0;
  v291 = &unk_1EE083000;
  v123 = OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__generationMeters;
  v49 = sub_1D208CB2C();
  v50 = v303;
  *(v1 + v123) = v49;
  v298 = &unk_1EE082000;
  v51 = v1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__includeRatePlanInGuidance;
  *v51 = 0;
  v51[4] = v50 & 1;
  v124 = &v371;
  v295 = 32;
  v300 = 0;
  swift_beginAccess();
  v125 = v306[2];
  v126 = v306[3];

  swift_endAccess();
  v127 = &v370;
  v299 = 33;
  swift_beginAccess();
  v52 = v126;
  v53 = v1[3];
  v1[2] = v125;
  v1[3] = v52;

  swift_endAccess();
  v128 = &v369;
  swift_beginAccess();
  v129 = v306[4];
  swift_endAccess();
  v130 = &v368;
  swift_beginAccess();
  v1[4] = v129;
  swift_endAccess();
  v131 = &v367;
  swift_beginAccess();
  v132 = v306[5];
  swift_endAccess();
  v133 = &v366;
  swift_beginAccess();
  v1[5] = v132;
  swift_endAccess();
  v134 = &v365;
  swift_beginAccess();
  v135 = v306[6];
  v136 = v306[7];

  swift_endAccess();
  v137 = &v364;
  swift_beginAccess();
  v54 = v136;
  v55 = v1[7];
  v1[6] = v135;
  v1[7] = v54;

  swift_endAccess();
  v138 = &v363;
  swift_beginAccess();
  v139 = v306[8];
  v140 = v306[9];

  swift_endAccess();
  v141 = &v362;
  swift_beginAccess();
  v56 = v140;
  v57 = v1[9];
  v1[8] = v139;
  v1[9] = v56;

  swift_endAccess();
  v142 = &v361;
  swift_beginAccess();
  v143 = v306[10];
  v144 = v306[11];

  swift_endAccess();
  v145 = &v360;
  swift_beginAccess();
  v58 = v144;
  v59 = v1[11];
  v1[10] = v143;
  v1[11] = v58;

  swift_endAccess();
  v146 = &v359;
  swift_beginAccess();
  v147 = v306[12];
  v148 = v306[13];

  swift_endAccess();
  v149 = &v358;
  swift_beginAccess();
  v60 = v148;
  v61 = v1[13];
  v1[12] = v147;
  v1[13] = v60;

  swift_endAccess();
  v150 = &v357;
  swift_beginAccess();
  v151 = v306[14];
  v152 = v306[15];

  swift_endAccess();
  v153 = &v356;
  swift_beginAccess();
  v62 = v152;
  v63 = v1[15];
  v1[14] = v151;
  v1[15] = v62;

  swift_endAccess();
  v154 = (v306 + v156[39]);
  v155 = &v355;
  swift_beginAccess();
  sub_1D2018864(v154, v157);
  swift_endAccess();
  v158 = (v1 + v156[39]);
  v159 = &v354;
  swift_beginAccess();
  sub_1D2018C54(v157, v158);
  swift_endAccess();
  v160 = (v306 + v162[30]);
  v161 = &v353;
  swift_beginAccess();
  v163 = *v160;
  v165 = v160[1];
  sub_1D1FD0018(v163, v165);
  swift_endAccess();
  v164 = (v1 + v162[30]);
  v166 = &v352;
  swift_beginAccess();
  v64 = v164;
  v65 = v165;
  v66 = *v164;
  v67 = v164[1];
  *v164 = v163;
  v64[1] = v65;
  sub_1D1FD0094(v66, v67);
  swift_endAccess();
  v167 = (v306 + v169[29]);
  v168 = &v351;
  swift_beginAccess();
  v170 = *v167;
  v172 = v167[1];
  sub_1D1FD0018(v170, v172);
  swift_endAccess();
  v171 = (v1 + v169[29]);
  v173 = &v350;
  swift_beginAccess();
  v68 = v171;
  v69 = v172;
  v70 = *v171;
  v71 = v171[1];
  *v171 = v170;
  v68[1] = v69;
  sub_1D1FD0094(v70, v71);
  swift_endAccess();
  v174 = (v306 + v176[28]);
  v175 = &v349;
  swift_beginAccess();
  v177 = *v174;
  v179 = v174[1];
  sub_1D1FD0018(v177, v179);
  swift_endAccess();
  v178 = (v1 + v176[28]);
  v180 = &v348;
  swift_beginAccess();
  v72 = v178;
  v73 = v179;
  v74 = *v178;
  v75 = v178[1];
  *v178 = v177;
  v72[1] = v73;
  sub_1D1FD0094(v74, v75);
  swift_endAccess();
  v181 = (v306 + v183[41]);
  v182 = &v347;
  swift_beginAccess();
  v184 = *v181;
  v186 = v181[1];

  swift_endAccess();
  v185 = (v1 + v183[41]);
  v187 = &v346;
  swift_beginAccess();
  v76 = v185;
  v77 = v186;
  v78 = v185[1];
  *v185 = v184;
  v76[1] = v77;

  swift_endAccess();
  v188 = (v306 + v190[50]);
  v189 = &v345;
  swift_beginAccess();
  v191 = *v188;
  v193 = v188[1];

  swift_endAccess();
  v192 = (v1 + v190[50]);
  v194 = &v344;
  swift_beginAccess();
  v79 = v192;
  v80 = v193;
  v81 = v192[1];
  *v192 = v191;
  v79[1] = v80;

  swift_endAccess();
  v195 = (v306 + v197[47]);
  v196 = &v343;
  swift_beginAccess();
  v198 = *v195;
  v200 = v195[1];

  swift_endAccess();
  v199 = (v1 + v197[47]);
  v201 = &v342;
  swift_beginAccess();
  v82 = v199;
  v83 = v200;
  v84 = v199[1];
  *v199 = v198;
  v82[1] = v83;

  swift_endAccess();
  v202 = (v306 + v204[18]);
  v203 = &v341;
  swift_beginAccess();
  v205 = *v202;
  v207 = v202[1];

  swift_endAccess();
  v206 = (v1 + v204[18]);
  v208 = &v340;
  swift_beginAccess();
  v85 = v206;
  v86 = v207;
  v87 = v206[1];
  *v206 = v205;
  v85[1] = v86;

  swift_endAccess();
  v209 = (v306 + v211[35]);
  v210 = &v339;
  swift_beginAccess();
  v212 = *v209;
  v214 = v209[1];

  swift_endAccess();
  v213 = (v1 + v211[35]);
  v215 = &v338;
  swift_beginAccess();
  v88 = v213;
  v89 = v214;
  v90 = v213[1];
  *v213 = v212;
  v88[1] = v89;

  swift_endAccess();
  v216 = (v306 + v218[36]);
  v217 = &v337;
  swift_beginAccess();
  v219 = *v216;
  v221 = v216[1];

  swift_endAccess();
  v220 = (v1 + v218[36]);
  v222 = &v336;
  swift_beginAccess();
  v91 = v220;
  v92 = v221;
  v93 = v220[1];
  *v220 = v219;
  v91[1] = v92;

  swift_endAccess();
  v223 = v306 + v225[25];
  v224 = &v335;
  swift_beginAccess();
  sub_1D1FD5F1C(v223, v279);
  swift_endAccess();
  v226 = v1 + v225[25];
  v227 = &v334;
  swift_beginAccess();
  sub_1D1FD6448(v279, v226);
  swift_endAccess();
  v228 = v306 + v230[22];
  v229 = &v333;
  swift_beginAccess();
  sub_1D1FD5F1C(v228, v279);
  swift_endAccess();
  v231 = v1 + v230[22];
  v232 = &v332;
  swift_beginAccess();
  sub_1D1FD6448(v279, v231);
  swift_endAccess();
  v233 = v306 + v235[33];
  v234 = &v331;
  swift_beginAccess();
  sub_1D1FD5F1C(v233, v279);
  swift_endAccess();
  v236 = v1 + v235[33];
  v237 = &v330;
  swift_beginAccess();
  sub_1D1FD6448(v279, v236);
  swift_endAccess();
  v238 = v306 + v240[52];
  v239 = &v329;
  swift_beginAccess();
  v242 = *v238;
  swift_endAccess();
  v241 = v1 + v240[52];
  v243 = &v328;
  swift_beginAccess();
  *v241 = v242;
  swift_endAccess();
  v244 = v306 + v246[23];
  v245 = &v327;
  swift_beginAccess();
  sub_1D1FD5F1C(v244, v279);
  swift_endAccess();
  v247 = v1 + v246[23];
  v248 = &v326;
  swift_beginAccess();
  sub_1D1FD6448(v279, v247);
  swift_endAccess();
  v249 = v306 + v251[20];
  v250 = &v325;
  swift_beginAccess();
  sub_1D1FD5F1C(v249, v279);
  swift_endAccess();
  v252 = v1 + v251[20];
  v253 = &v324;
  swift_beginAccess();
  sub_1D1FD6448(v279, v252);
  swift_endAccess();
  v254 = v306 + v256[19];
  v255 = &v323;
  swift_beginAccess();
  sub_1D1FD5F1C(v254, v279);
  swift_endAccess();
  v257 = v1 + v256[19];
  v258 = &v322;
  swift_beginAccess();
  sub_1D1FD6448(v279, v257);
  swift_endAccess();
  v259 = (v306 + v261[34]);
  v260 = &v321;
  swift_beginAccess();
  v262 = *v259;
  v264 = v259[1];

  swift_endAccess();
  v263 = (v1 + v261[34]);
  v265 = &v320;
  swift_beginAccess();
  v94 = v263;
  v95 = v264;
  v96 = v263[1];
  *v263 = v262;
  v94[1] = v95;

  swift_endAccess();
  v266 = v306 + v268[27];
  v267 = &v319;
  swift_beginAccess();
  sub_1D1FD5F1C(v266, v279);
  swift_endAccess();
  v269 = v1 + v268[27];
  v270 = &v318;
  swift_beginAccess();
  sub_1D1FD6448(v279, v269);
  swift_endAccess();
  v271 = v306 + v273[32];
  v272 = &v317;
  swift_beginAccess();
  sub_1D1FD5F1C(v271, v279);
  swift_endAccess();
  v274 = v1 + v273[32];
  v275 = &v316;
  swift_beginAccess();
  sub_1D1FD6448(v279, v274);
  swift_endAccess();
  v276 = v306 + v278[45];
  v277 = &v315;
  swift_beginAccess();
  sub_1D1FD5F1C(v276, v279);
  swift_endAccess();
  v280 = v1 + v278[45];
  v281 = &v314;
  swift_beginAccess();
  sub_1D1FD6448(v279, v280);
  swift_endAccess();
  v282 = v306 + v284[48];
  v283 = &v313;
  swift_beginAccess();
  v285 = *v282;
  v286 = v282[4];
  swift_endAccess();
  v287 = (v1 + v284[48]);
  v288 = &v312;
  swift_beginAccess();
  v97 = v286;
  v98 = v287;
  v99 = v303;
  *v287 = v285;
  *(v98 + 4) = v97 & 1 & v99;
  swift_endAccess();
  v289 = (v306 + v291[37]);
  v290 = &v311;
  swift_beginAccess();
  v293 = *v289;

  swift_endAccess();
  v292 = (v1 + v291[37]);
  v294 = &v310;
  swift_beginAccess();
  v100 = *v292;
  *v292 = v293;

  swift_endAccess();
  v296 = v306 + v298[442];
  v297 = &v309;
  swift_beginAccess();
  v301 = *v296;
  v302 = v296[4];
  swift_endAccess();
  v304 = (v1 + v298[442]);
  v305 = &v308;
  swift_beginAccess();
  v101 = v302;
  v102 = v303;
  v103 = v304;
  *v304 = v301;
  *(v103 + 4) = v101 & 1 & v102;
  swift_endAccess();

  return v307;
}

uint64_t sub_1D201A754()
{
  sub_1D1FE023C(v0 + 16);
  sub_1D1FE023C(v0 + 48);
  sub_1D1FE023C(v0 + 64);
  sub_1D1FE023C(v0 + 80);
  sub_1D1FE023C(v0 + 96);
  sub_1D1FE023C(v0 + 112);
  sub_1D2018A44((v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__currentRatePlan));
  sub_1D2018FC4(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointCustomIndex);
  sub_1D2018FC4(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryCustomIndex);
  sub_1D2018FC4(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockCustomIndex);
  sub_1D1FE023C(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__ckFunctionToken);
  sub_1D1FE023C(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accountName);
  sub_1D1FE023C(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accountNumber);
  sub_1D1FE023C(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__address);
  sub_1D1FE023C(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__serviceLocationID);
  sub_1D1FE023C(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__alternateSupplier);
  sub_1D1FD6044(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accessTokenExpirationDate);
  sub_1D1FD6044(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__utilitySupportedCheckDate);
  sub_1D1FD6044(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__amiLastRefreshDate);
  sub_1D1FD6044(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointNextRefreshDate);
  sub_1D1FD6044(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryNextRefreshDate);
  sub_1D1FD6044(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockNextRefreshDate);
  sub_1D1FE023C(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionState);
  sub_1D1FD6044(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionCreationDate);
  sub_1D1FD6044(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionStartDate);
  sub_1D1FD6044(v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__siteTombstone);
  sub_1D1FD3C38((v0 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__generationMeters));
  return v2;
}

uint64_t sub_1D201A918()
{
  v0 = *sub_1D201A754();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t EnergySitePayload.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v22 = a1;
  v21 = v3;
  sub_1D200B0E8();

  v7 = *(v6 + *(type metadata accessor for EnergySitePayload() + 20));

  v20 = v7;
  v16 = a2;
  v17 = a3;
  v18 = a1;
  v13 = sub_1D201B75C;
  v14 = &v15;
  v11 = type metadata accessor for EnergySitePayload._StorageClass();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6BF320, "D1");
  sub_1D201D1EC(&v20, sub_1D201D1BC, v12, v11, v4, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7288], &v19);
}

uint64_t sub_1D201AAF4()
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
        sub_1D201B798();
        break;
      case 2:
        sub_1D201B858();
        break;
      case 3:
        sub_1D201B918();
        break;
      case 4:
        sub_1D201B9D8();
        break;
      case 5:
        sub_1D201BA98();
        break;
      case 6:
        sub_1D201BB58();
        break;
      case 7:
        sub_1D201BC18();
        break;
      case 8:
        sub_1D201BCD8();
        break;
      case 9:
        sub_1D201BD98();
        break;
      case 10:
        sub_1D201BE78();
        break;
      case 11:
        sub_1D201BF40();
        break;
      case 12:
        sub_1D201C008();
        break;
      case 13:
        sub_1D201C0D0();
        break;
      case 14:
        sub_1D201C198();
        break;
      case 15:
        sub_1D201C260();
        break;
      case 16:
        sub_1D201C328();
        break;
      case 17:
        sub_1D201C3F0();
        break;
      case 18:
        sub_1D201C4B8();
        break;
      case 19:
        sub_1D201C580();
        break;
      case 20:
        sub_1D201C660();
        break;
      case 21:
        sub_1D201C740();
        break;
      case 22:
        sub_1D201C820();
        break;
      case 23:
        sub_1D201C8E8();
        break;
      case 24:
        sub_1D201C9C8();
        break;
      case 25:
        sub_1D201CAA8();
        break;
      case 26:
        sub_1D201CB88();
        break;
      case 27:
        sub_1D201CC50();
        break;
      case 28:
        sub_1D201CD30();
        break;
      case 29:
        sub_1D201CE10();
        break;
      case 30:
        sub_1D201CEF0();
        break;
      case 31:
        sub_1D201CFB8();
        break;
      case 32:
        sub_1D201D080();
        break;
    }

    v2 = 0;
  }

  return result;
}

uint64_t sub_1D201B75C()
{
  v4 = v0[2];
  v1 = v0[3];
  v2 = v0[4];
  return sub_1D201AAF4();
}

uint64_t sub_1D201B798()
{
  swift_beginAccess();
  sub_1D208C30C();
  return swift_endAccess();
}

uint64_t sub_1D201B858()
{
  swift_beginAccess();
  sub_1D208C2FC();
  return swift_endAccess();
}

uint64_t sub_1D201B918()
{
  swift_beginAccess();
  sub_1D208C2FC();
  return swift_endAccess();
}

uint64_t sub_1D201B9D8()
{
  swift_beginAccess();
  sub_1D208C30C();
  return swift_endAccess();
}

uint64_t sub_1D201BA98()
{
  swift_beginAccess();
  sub_1D208C30C();
  return swift_endAccess();
}

uint64_t sub_1D201BB58()
{
  swift_beginAccess();
  sub_1D208C30C();
  return swift_endAccess();
}

uint64_t sub_1D201BC18()
{
  swift_beginAccess();
  sub_1D208C30C();
  return swift_endAccess();
}

uint64_t sub_1D201BCD8()
{
  swift_beginAccess();
  sub_1D208C30C();
  return swift_endAccess();
}

uint64_t sub_1D201BD98()
{
  swift_beginAccess();
  type metadata accessor for EnergySitePayload.CurrentRatePlan();
  sub_1D20275F8();
  sub_1D208C33C();
  return swift_endAccess();
}

uint64_t sub_1D201BE78()
{
  swift_beginAccess();
  sub_1D208C2BC();
  return swift_endAccess();
}

uint64_t sub_1D201BF40()
{
  swift_beginAccess();
  sub_1D208C2BC();
  return swift_endAccess();
}

uint64_t sub_1D201C008()
{
  swift_beginAccess();
  sub_1D208C2BC();
  return swift_endAccess();
}

uint64_t sub_1D201C0D0()
{
  swift_beginAccess();
  sub_1D208C30C();
  return swift_endAccess();
}

uint64_t sub_1D201C198()
{
  swift_beginAccess();
  sub_1D208C30C();
  return swift_endAccess();
}

uint64_t sub_1D201C260()
{
  swift_beginAccess();
  sub_1D208C30C();
  return swift_endAccess();
}

uint64_t sub_1D201C328()
{
  swift_beginAccess();
  sub_1D208C30C();
  return swift_endAccess();
}

uint64_t sub_1D201C3F0()
{
  swift_beginAccess();
  sub_1D208C30C();
  return swift_endAccess();
}

uint64_t sub_1D201C4B8()
{
  swift_beginAccess();
  sub_1D208C30C();
  return swift_endAccess();
}

uint64_t sub_1D201C580()
{
  swift_beginAccess();
  sub_1D208C1EC();
  sub_1D1FE1C64();
  sub_1D208C33C();
  return swift_endAccess();
}

uint64_t sub_1D201C660()
{
  swift_beginAccess();
  sub_1D208C1EC();
  sub_1D1FE1C64();
  sub_1D208C33C();
  return swift_endAccess();
}

uint64_t sub_1D201C740()
{
  swift_beginAccess();
  sub_1D208C1EC();
  sub_1D1FE1C64();
  sub_1D208C33C();
  return swift_endAccess();
}

uint64_t sub_1D201C820()
{
  swift_beginAccess();
  sub_1D208C29C();
  return swift_endAccess();
}

uint64_t sub_1D201C8E8()
{
  swift_beginAccess();
  sub_1D208C1EC();
  sub_1D1FE1C64();
  sub_1D208C33C();
  return swift_endAccess();
}

uint64_t sub_1D201C9C8()
{
  swift_beginAccess();
  sub_1D208C1EC();
  sub_1D1FE1C64();
  sub_1D208C33C();
  return swift_endAccess();
}

uint64_t sub_1D201CAA8()
{
  swift_beginAccess();
  sub_1D208C1EC();
  sub_1D1FE1C64();
  sub_1D208C33C();
  return swift_endAccess();
}

uint64_t sub_1D201CB88()
{
  swift_beginAccess();
  sub_1D208C30C();
  return swift_endAccess();
}

uint64_t sub_1D201CC50()
{
  swift_beginAccess();
  sub_1D208C1EC();
  sub_1D1FE1C64();
  sub_1D208C33C();
  return swift_endAccess();
}

uint64_t sub_1D201CD30()
{
  swift_beginAccess();
  sub_1D208C1EC();
  sub_1D1FE1C64();
  sub_1D208C33C();
  return swift_endAccess();
}

uint64_t sub_1D201CE10()
{
  swift_beginAccess();
  sub_1D208C1EC();
  sub_1D1FE1C64();
  sub_1D208C33C();
  return swift_endAccess();
}

uint64_t sub_1D201CEF0()
{
  swift_beginAccess();
  sub_1D208C31C();
  return swift_endAccess();
}

uint64_t sub_1D201CFB8()
{
  swift_beginAccess();
  sub_1D208C2EC();
  return swift_endAccess();
}

uint64_t sub_1D201D080()
{
  swift_beginAccess();
  sub_1D208C2CC();
  return swift_endAccess();
}

uint64_t sub_1D201D148(void *a1, uint64_t (*a2)(void), uint64_t a3, void *a4)
{
  result = a2(*a1);
  if (v4)
  {
    *a4 = v4;
  }

  return result;
}

uint64_t sub_1D201D1EC(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a2;
  v12 = a5;
  v13 = a8;
  v22 = a4;
  v21 = a5;
  v20 = a6;
  v14 = *(a5 - 8);
  v15 = a5 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00]();
  v18 = &v11 - v16;
  result = v17(v9);
  v19 = v8;
  if (v8)
  {
    return (*(v14 + 32))(v13, v18, v12);
  }

  return result;
}

uint64_t EnergySitePayload.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v19 = a2;
  v20 = a3;
  v22 = sub_1D201F09C;
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
  v18 = *(v16 + *(type metadata accessor for EnergySitePayload() + 20));

  v27 = &v37;
  v37 = v18;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v24 = &v29;
  v30 = v22;
  v31 = &v32;
  v25 = type metadata accessor for EnergySitePayload._StorageClass();
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

uint64_t sub_1D201D5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v128 = *(a1 + 16);
  v129 = *(a1 + 24);

  swift_endAccess();
  v130 = sub_1D208C66C();

  if (v130)
  {
    v120 = v126;
  }

  else
  {
    swift_beginAccess();
    v121 = *(a1 + 16);
    v122 = *(a1 + 24);

    swift_endAccess();
    sub_1D208C41C();
    if (v126)
    {
    }

    v120 = 0;
  }

  swift_beginAccess();
  v119 = *(a1 + 32);
  swift_endAccess();
  if (v119 == 0.0)
  {
    v117 = v120;
  }

  else
  {
    swift_beginAccess();
    v118 = *(a1 + 32);
    swift_endAccess();
    result = sub_1D208C40C();
    if (v120)
    {
      return result;
    }

    v117 = 0;
  }

  swift_beginAccess();
  v116 = *(a1 + 40);
  swift_endAccess();
  if (v116 == 0.0)
  {
    v114 = v117;
  }

  else
  {
    swift_beginAccess();
    v115 = *(a1 + 40);
    swift_endAccess();
    result = sub_1D208C40C();
    if (v117)
    {
      return result;
    }

    v114 = 0;
  }

  swift_beginAccess();
  v111 = *(a1 + 48);
  v112 = *(a1 + 56);

  swift_endAccess();
  v113 = sub_1D208C66C();

  if (v113)
  {
    v108 = v114;
  }

  else
  {
    swift_beginAccess();
    v109 = *(a1 + 48);
    v110 = *(a1 + 56);

    swift_endAccess();
    sub_1D208C41C();
    if (v114)
    {
    }

    v108 = 0;
  }

  swift_beginAccess();
  v105 = *(a1 + 64);
  v106 = *(a1 + 72);

  swift_endAccess();
  v107 = sub_1D208C66C();

  if (v107)
  {
    v102 = v108;
  }

  else
  {
    swift_beginAccess();
    v103 = *(a1 + 64);
    v104 = *(a1 + 72);

    swift_endAccess();
    sub_1D208C41C();
    if (v108)
    {
    }

    v102 = 0;
  }

  swift_beginAccess();
  v99 = *(a1 + 80);
  v100 = *(a1 + 88);

  swift_endAccess();
  v101 = sub_1D208C66C();

  if (v101)
  {
    v96 = v102;
  }

  else
  {
    swift_beginAccess();
    v97 = *(a1 + 80);
    v98 = *(a1 + 88);

    swift_endAccess();
    sub_1D208C41C();
    if (v102)
    {
    }

    v96 = 0;
  }

  swift_beginAccess();
  v93 = *(a1 + 96);
  v94 = *(a1 + 104);

  swift_endAccess();
  v95 = sub_1D208C66C();

  if (v95)
  {
    v90 = v96;
  }

  else
  {
    swift_beginAccess();
    v91 = *(a1 + 96);
    v92 = *(a1 + 104);

    swift_endAccess();
    sub_1D208C41C();
    if (v96)
    {
    }

    v90 = 0;
  }

  swift_beginAccess();
  v87 = *(a1 + 112);
  v88 = *(a1 + 120);

  swift_endAccess();
  v89 = sub_1D208C66C();

  if ((v89 & 1) == 0)
  {
    swift_beginAccess();
    v85 = *(a1 + 112);
    v86 = *(a1 + 120);

    swift_endAccess();
    sub_1D208C41C();
    if (!v90)
    {

      v84 = 0;
      goto LABEL_33;
    }
  }

  v84 = v90;
LABEL_33:
  result = sub_1D201F0D8(a1, a2, a3, a4);
  if (!v84)
  {
    v80 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointCustomIndex);
    swift_beginAccess();
    v82 = *v80;
    v81 = v80[1];
    sub_1D1FD0018(*v80, v81);
    swift_endAccess();
    sub_1D2027678();
    v83 = sub_1D208C82C();
    sub_1D1FD0094(v82, v81);
    if ((v83 & 1) == 0)
    {
      v77 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointCustomIndex);
      swift_beginAccess();
      v78 = *v77;
      v79 = v77[1];
      sub_1D1FD0018(*v77, v79);
      swift_endAccess();
      sub_1D208C3DC();
      sub_1D1FD0094(v78, v79);
    }

    v73 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryCustomIndex);
    swift_beginAccess();
    v75 = *v73;
    v74 = v73[1];
    sub_1D1FD0018(*v73, v74);
    swift_endAccess();
    v76 = sub_1D208C82C();
    sub_1D1FD0094(v75, v74);
    if ((v76 & 1) == 0)
    {
      v70 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryCustomIndex);
      swift_beginAccess();
      v71 = *v70;
      v72 = v70[1];
      sub_1D1FD0018(*v70, v72);
      swift_endAccess();
      sub_1D208C3DC();
      sub_1D1FD0094(v71, v72);
    }

    v66 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockCustomIndex);
    swift_beginAccess();
    v68 = *v66;
    v67 = v66[1];
    sub_1D1FD0018(*v66, v67);
    swift_endAccess();
    v69 = sub_1D208C82C();
    sub_1D1FD0094(v68, v67);
    if ((v69 & 1) == 0)
    {
      v63 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockCustomIndex);
      swift_beginAccess();
      v64 = *v63;
      v65 = v63[1];
      sub_1D1FD0018(*v63, v65);
      swift_endAccess();
      sub_1D208C3DC();
      sub_1D1FD0094(v64, v65);
    }

    v59 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__ckFunctionToken);
    swift_beginAccess();
    v60 = *v59;
    v61 = v59[1];

    swift_endAccess();
    v62 = sub_1D208C66C();

    if ((v62 & 1) == 0)
    {
      v56 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__ckFunctionToken);
      swift_beginAccess();
      v57 = *v56;
      v58 = v56[1];

      swift_endAccess();
      sub_1D208C41C();
    }

    v52 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accountName);
    swift_beginAccess();
    v53 = *v52;
    v54 = v52[1];

    swift_endAccess();
    v55 = sub_1D208C66C();

    if ((v55 & 1) == 0)
    {
      v49 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accountName);
      swift_beginAccess();
      v50 = *v49;
      v51 = v49[1];

      swift_endAccess();
      sub_1D208C41C();
    }

    v45 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accountNumber);
    swift_beginAccess();
    v46 = *v45;
    v47 = v45[1];

    swift_endAccess();
    v48 = sub_1D208C66C();

    if ((v48 & 1) == 0)
    {
      v42 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accountNumber);
      swift_beginAccess();
      v43 = *v42;
      v44 = v42[1];

      swift_endAccess();
      sub_1D208C41C();
    }

    v38 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__address);
    swift_beginAccess();
    v39 = *v38;
    v40 = v38[1];

    swift_endAccess();
    v41 = sub_1D208C66C();

    if ((v41 & 1) == 0)
    {
      v35 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__address);
      swift_beginAccess();
      v36 = *v35;
      v37 = v35[1];

      swift_endAccess();
      sub_1D208C41C();
    }

    v31 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__serviceLocationID);
    swift_beginAccess();
    v32 = *v31;
    v33 = v31[1];

    swift_endAccess();
    v34 = sub_1D208C66C();

    if ((v34 & 1) == 0)
    {
      v28 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__serviceLocationID);
      swift_beginAccess();
      v29 = *v28;
      v30 = v28[1];

      swift_endAccess();
      sub_1D208C41C();
    }

    v24 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__alternateSupplier);
    swift_beginAccess();
    v25 = *v24;
    v26 = v24[1];

    swift_endAccess();
    v27 = sub_1D208C66C();

    if ((v27 & 1) == 0)
    {
      v21 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__alternateSupplier);
      swift_beginAccess();
      v22 = *v21;
      v23 = v21[1];

      swift_endAccess();
      sub_1D208C41C();
    }

    sub_1D201F310(a1, a2, a3, a4);
    sub_1D201F5C0(a1, a2, a3, a4);
    sub_1D201F870(a1, a2, a3, a4);
    v19 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__hasExportedEnergy_p);
    swift_beginAccess();
    v20 = *v19;
    swift_endAccess();
    if (v20)
    {
      v17 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__hasExportedEnergy_p);
      swift_beginAccess();
      v18 = *v17;
      swift_endAccess();
      sub_1D208C3BC();
    }

    sub_1D201FB20(a1, a2, a3, a4);
    sub_1D201FDD0(a1, a2, a3, a4);
    sub_1D2020080(a1, a2, a3, a4);
    v13 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionState);
    swift_beginAccess();
    v14 = *v13;
    v15 = v13[1];

    swift_endAccess();
    v16 = sub_1D208C66C();

    if ((v16 & 1) == 0)
    {
      v10 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionState);
      swift_beginAccess();
      v11 = *v10;
      v12 = v10[1];

      swift_endAccess();
      sub_1D208C41C();
    }

    sub_1D2020330(a1, a2, a3, a4);
    sub_1D20205E0(a1, a2, a3, a4);
    sub_1D2020890(a1, a2, a3, a4);
    sub_1D2020B40(a1);
    v7 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__generationMeters);
    swift_beginAccess();
    v8 = *v7;

    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE68, &unk_1D208FB70);
    sub_1D2028750();
    v9 = sub_1D208C82C();

    if ((v9 & 1) == 0)
    {
      v5 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__generationMeters);
      swift_beginAccess();
      v6 = *v5;

      swift_endAccess();
      sub_1D208C3FC();
    }

    return sub_1D2020C50(a1);
  }

  return result;
}

uint64_t *sub_1D201F0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v17 = a2;
  v13 = a3;
  v14 = a4;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEDF0, &unk_1D208F480);
  v16 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v25 = (v9 - v16);
  v26 = type metadata accessor for EnergySitePayload.CurrentRatePlan();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v19 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v18);
  v20 = v9 - v19;
  v30 = v9 - v19;
  v29 = v5;
  v28 = v6;
  v21 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__currentRatePlan);
  v22 = &v27;
  swift_beginAccess();
  sub_1D2018864(v21, v25);
  swift_endAccess();
  if ((*(v23 + 48))(v25, 1, v26) == 1)
  {
    result = sub_1D2018A44(v25);
    v12 = v15;
  }

  else
  {
    sub_1D2018B0C(v25, v20);
    sub_1D20275F8();
    v8 = v15;
    sub_1D208C44C();
    v10 = v8;
    v11 = v8;
    if (v8)
    {
      v9[1] = v11;
      return sub_1D2018ECC(v20);
    }

    else
    {
      sub_1D2018ECC(v20);
      result = v10;
      v12 = v10;
    }
  }

  return result;
}

uint64_t sub_1D201F310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v21 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accessTokenExpirationDate);
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

uint64_t sub_1D201F5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v21 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__utilitySupportedCheckDate);
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

uint64_t sub_1D201F870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v21 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__amiLastRefreshDate);
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

uint64_t sub_1D201FB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v21 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointNextRefreshDate);
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

uint64_t sub_1D201FDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v21 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryNextRefreshDate);
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

uint64_t sub_1D2020080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v21 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockNextRefreshDate);
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

uint64_t sub_1D2020330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v21 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionCreationDate);
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

uint64_t sub_1D20205E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v21 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionStartDate);
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

uint64_t sub_1D2020890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v21 = (v5 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__siteTombstone);
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

uint64_t sub_1D2020B40(uint64_t a1)
{
  v3 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__siteVersion);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 4);
  result = swift_endAccess();
  if ((v5 & 1) == 0)
  {
    result = sub_1D208C42C();
    if (!v2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D2020C50(uint64_t a1)
{
  v3 = (a1 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__includeRatePlanInGuidance);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 4);
  result = swift_endAccess();
  if ((v5 & 1) == 0)
  {
    result = sub_1D208C3EC();
    if (!v2)
    {
      return 0;
    }
  }

  return result;
}

BOOL static EnergySitePayload.== infix(_:_:)(uint64_t a1, uint64_t a2)
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
  v35 = type metadata accessor for EnergySitePayload();
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
  *(&v9 - 2) = sub_1D202117C;
  *(&v9 - 1) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEDF8, &qword_1D208F4B8);
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

uint64_t sub_1D202117C(uint64_t a1)
{
  v558 = MEMORY[0x1EEE9AC00](a1);
  v564 = v1;
  v698 = 0;
  v699 = 0;
  v697 = 0;
  v696 = 0;
  v488 = 0;
  v463 = sub_1D208C1EC();
  v464 = *(v463 - 8);
  v465 = v463 - 8;
  v466 = (*(v464 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v463);
  v467 = &v77[-v466];
  v468 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA78, &qword_1D208E750);
  v469 = *(*(v468 - 8) + 64);
  v470 = (v469 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v468);
  v471 = &v77[-v470];
  v472 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v473 = &v77[-v472];
  v474 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v475 = &v77[-v474];
  v476 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v477 = &v77[-v476];
  v478 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v479 = &v77[-v478];
  v480 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v481 = &v77[-v480];
  v482 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v483 = &v77[-v482];
  v484 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v485 = &v77[-v484];
  v486 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v487 = &v77[-v486];
  v489 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64);
  v490 = (v489 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = MEMORY[0x1EEE9AC00](v488);
  v491 = &v77[-v490];
  v492 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v493 = &v77[-v492];
  v494 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v495 = &v77[-v494];
  v496 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v497 = &v77[-v496];
  v498 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v499 = &v77[-v498];
  v500 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v501 = &v77[-v500];
  v502 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v503 = &v77[-v502];
  v504 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v505 = &v77[-v504];
  v506 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v507 = &v77[-v506];
  v508 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v509 = &v77[-v508];
  v510 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v511 = &v77[-v510];
  v512 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v513 = &v77[-v512];
  v514 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v515 = &v77[-v514];
  v516 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v517 = &v77[-v516];
  v518 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v519 = &v77[-v518];
  v520 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v521 = &v77[-v520];
  v522 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v523 = &v77[-v522];
  v524 = (v51 + 15) & 0xFFFFFFFFFFFFFFF0;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v525 = &v77[-v524];
  v526 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v527 = &v77[-v526];
  v528 = (v55 + 15) & 0xFFFFFFFFFFFFFFF0;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v529 = &v77[-v528];
  v530 = (v57 + 15) & 0xFFFFFFFFFFFFFFF0;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v531 = &v77[-v530];
  v532 = (v59 + 15) & 0xFFFFFFFFFFFFFFF0;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v533 = &v77[-v532];
  v534 = (v61 + 15) & 0xFFFFFFFFFFFFFFF0;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v535 = &v77[-v534];
  v536 = (v63 + 15) & 0xFFFFFFFFFFFFFFF0;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v537 = &v77[-v536];
  v538 = (v65 + 15) & 0xFFFFFFFFFFFFFFF0;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v539 = &v77[-v538];
  v540 = (v67 + 15) & 0xFFFFFFFFFFFFFFF0;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v541 = &v77[-v540];
  v542 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v68);
  v543 = &v77[-v542];
  v544 = type metadata accessor for EnergySitePayload.CurrentRatePlan();
  v545 = *(v544 - 8);
  v546 = v544 - 8;
  v547 = (*(v545 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v544);
  v548 = &v77[-v547];
  v549 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE60, &qword_1D208FB68);
  v550 = (*(*(v549 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v549);
  v551 = &v77[-v550];
  v552 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEDF0, &unk_1D208F480) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v70 = MEMORY[0x1EEE9AC00](v558);
  v553 = &v77[-v552];
  v554 = (v71 + 15) & 0xFFFFFFFFFFFFFFF0;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v555 = &v77[-v554];
  v556 = (v73 + 15) & 0xFFFFFFFFFFFFFFF0;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v557 = &v77[-v556];
  v698 = v74;
  v699 = v75;

  v697 = v558;

  v696 = v564;

  v559 = &v695;
  v562 = 32;
  v563 = 0;
  swift_beginAccess();
  v560 = *(v558 + 16);
  v561 = *(v558 + 24);

  swift_endAccess();
  v569 = &v693;
  v693 = v560;
  v694 = v561;
  v565 = &v692;
  swift_beginAccess();
  v566 = *(v564 + 16);
  v567 = *(v564 + 24);

  swift_endAccess();
  v568 = v691;
  v691[0] = v566;
  v691[1] = v567;
  v570 = MEMORY[0x1D38948D0](v693, v694, v566, v567);
  sub_1D1FE023C(v568);
  sub_1D1FE023C(v569);
  if ((v570 & 1) == 0)
  {
    goto LABEL_162;
  }

  v456 = &v690;
  v457 = 32;
  v458 = 0;
  swift_beginAccess();
  v461 = *(v558 + 32);
  swift_endAccess();
  v459 = &v689;
  swift_beginAccess();
  v460 = *(v564 + 32);
  swift_endAccess();
  if (v461 != v460)
  {
    goto LABEL_162;
  }

  v450 = &v688;
  v451 = 32;
  v452 = 0;
  swift_beginAccess();
  v455 = *(v558 + 40);
  swift_endAccess();
  v453 = &v687;
  swift_beginAccess();
  v454 = *(v564 + 40);
  swift_endAccess();
  if (v455 != v454)
  {
    goto LABEL_162;
  }

  v439 = &v686;
  v442 = 32;
  v443 = 0;
  swift_beginAccess();
  v440 = *(v558 + 48);
  v441 = *(v558 + 56);

  swift_endAccess();
  v448 = &v684;
  v684 = v440;
  v685 = v441;
  v444 = &v683;
  swift_beginAccess();
  v445 = *(v564 + 48);
  v446 = *(v564 + 56);

  swift_endAccess();
  v447 = v682;
  v682[0] = v445;
  v682[1] = v446;
  v449 = MEMORY[0x1D38948D0](v684, v685, v445, v446);
  sub_1D1FE023C(v447);
  sub_1D1FE023C(v448);
  if ((v449 & 1) == 0)
  {
    goto LABEL_162;
  }

  v428 = &v681;
  v431 = 32;
  v432 = 0;
  swift_beginAccess();
  v429 = *(v558 + 64);
  v430 = *(v558 + 72);

  swift_endAccess();
  v437 = &v679;
  v679 = v429;
  v680 = v430;
  v433 = &v678;
  swift_beginAccess();
  v434 = *(v564 + 64);
  v435 = *(v564 + 72);

  swift_endAccess();
  v436 = v677;
  v677[0] = v434;
  v677[1] = v435;
  v438 = MEMORY[0x1D38948D0](v679, v680, v434, v435);
  sub_1D1FE023C(v436);
  sub_1D1FE023C(v437);
  if ((v438 & 1) == 0)
  {
    goto LABEL_162;
  }

  v417 = &v676;
  v420 = 32;
  v421 = 0;
  swift_beginAccess();
  v418 = *(v558 + 80);
  v419 = *(v558 + 88);

  swift_endAccess();
  v426 = &v674;
  v674 = v418;
  v675 = v419;
  v422 = &v673;
  swift_beginAccess();
  v423 = *(v564 + 80);
  v424 = *(v564 + 88);

  swift_endAccess();
  v425 = v672;
  v672[0] = v423;
  v672[1] = v424;
  v427 = MEMORY[0x1D38948D0](v674, v675, v423, v424);
  sub_1D1FE023C(v425);
  sub_1D1FE023C(v426);
  if ((v427 & 1) == 0)
  {
    goto LABEL_162;
  }

  v406 = &v671;
  v409 = 32;
  v410 = 0;
  swift_beginAccess();
  v407 = *(v558 + 96);
  v408 = *(v558 + 104);

  swift_endAccess();
  v415 = &v669;
  v669 = v407;
  v670 = v408;
  v411 = &v668;
  swift_beginAccess();
  v412 = *(v564 + 96);
  v413 = *(v564 + 104);

  swift_endAccess();
  v414 = v667;
  v667[0] = v412;
  v667[1] = v413;
  v416 = MEMORY[0x1D38948D0](v669, v670, v412, v413);
  sub_1D1FE023C(v414);
  sub_1D1FE023C(v415);
  if ((v416 & 1) == 0)
  {
    goto LABEL_162;
  }

  v395 = &v666;
  v398 = 32;
  v399 = 0;
  swift_beginAccess();
  v396 = *(v558 + 112);
  v397 = *(v558 + 120);

  swift_endAccess();
  v404 = &v664;
  v664 = v396;
  v665 = v397;
  v400 = &v663;
  swift_beginAccess();
  v401 = *(v564 + 112);
  v402 = *(v564 + 120);

  swift_endAccess();
  v403 = v662;
  v662[0] = v401;
  v662[1] = v402;
  v405 = MEMORY[0x1D38948D0](v664, v665, v401, v402);
  sub_1D1FE023C(v403);
  sub_1D1FE023C(v404);
  if ((v405 & 1) == 0)
  {
    goto LABEL_162;
  }

  v387 = &unk_1EE083000;
  v385 = (v558 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__currentRatePlan);
  v386 = &v661;
  v388 = 32;
  v389 = 0;
  swift_beginAccess();
  sub_1D2018864(v385, v557);
  swift_endAccess();
  v390 = (v564 + v387[39]);
  v391 = &v660;
  swift_beginAccess();
  sub_1D2018864(v390, v555);
  swift_endAccess();
  v392 = v551 + *(v549 + 48);
  sub_1D2018864(v557, v551);
  sub_1D2018864(v555, v392);
  v393 = *(v545 + 48);
  v394 = v545 + 48;
  if (v393(v551, 1, v544) == 1)
  {
    if (v393(v392, 1, v544) != 1)
    {
      goto LABEL_21;
    }

    sub_1D2018A44(v551);
    v384 = 1;
  }

  else
  {
    sub_1D2018864(v551, v553);
    if (v393(v392, 1, v544) == 1)
    {
      sub_1D2018ECC(v553);
LABEL_21:
      sub_1D20285DC(v551);
      v384 = 0;
      goto LABEL_19;
    }

    sub_1D2018B0C(v392, v548);
    v383 = static EnergySitePayload.CurrentRatePlan.== infix(_:_:)(v553, v548);
    sub_1D2018ECC(v548);
    sub_1D2018ECC(v553);
    sub_1D2018A44(v551);
    v384 = v383;
  }

LABEL_19:
  v382 = v384;
  sub_1D2018A44(v555);
  sub_1D2018A44(v557);
  if ((v382 & 1) == 0)
  {
    goto LABEL_162;
  }

  v372 = &unk_1EE083000;
  v368 = (v558 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointCustomIndex);
  v369 = &v659;
  v373 = 32;
  v374 = 0;
  swift_beginAccess();
  v370 = *v368;
  v371 = v368[1];
  sub_1D1FD0018(v370, v371);
  swift_endAccess();
  v380 = &v657;
  v657 = v370;
  v658 = v371;
  v375 = (v564 + v372[30]);
  v376 = &v656;
  swift_beginAccess();
  v377 = *v375;
  v378 = v375[1];
  sub_1D1FD0018(v377, v378);
  swift_endAccess();
  v379 = v655;
  v655[0] = v377;
  v655[1] = v378;
  v381 = MEMORY[0x1D3893F80](v657, v658, v377, v378);
  sub_1D2018FC4(v379);
  sub_1D2018FC4(v380);
  if ((v381 & 1) == 0)
  {
    goto LABEL_162;
  }

  v358 = &unk_1EE083000;
  v354 = (v558 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryCustomIndex);
  v355 = &v654;
  v359 = 32;
  v360 = 0;
  swift_beginAccess();
  v356 = *v354;
  v357 = v354[1];
  sub_1D1FD0018(v356, v357);
  swift_endAccess();
  v366 = &v652;
  v652 = v356;
  v653 = v357;
  v361 = (v564 + v358[29]);
  v362 = &v651;
  swift_beginAccess();
  v363 = *v361;
  v364 = v361[1];
  sub_1D1FD0018(v363, v364);
  swift_endAccess();
  v365 = v650;
  v650[0] = v363;
  v650[1] = v364;
  v367 = MEMORY[0x1D3893F80](v652, v653, v363, v364);
  sub_1D2018FC4(v365);
  sub_1D2018FC4(v366);
  if ((v367 & 1) == 0)
  {
    goto LABEL_162;
  }

  v344 = &unk_1EE083000;
  v340 = (v558 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockCustomIndex);
  v341 = &v649;
  v345 = 32;
  v346 = 0;
  swift_beginAccess();
  v342 = *v340;
  v343 = v340[1];
  sub_1D1FD0018(v342, v343);
  swift_endAccess();
  v352 = &v647;
  v647 = v342;
  v648 = v343;
  v347 = (v564 + v344[28]);
  v348 = &v646;
  swift_beginAccess();
  v349 = *v347;
  v350 = v347[1];
  sub_1D1FD0018(v349, v350);
  swift_endAccess();
  v351 = v645;
  v645[0] = v349;
  v645[1] = v350;
  v353 = MEMORY[0x1D3893F80](v647, v648, v349, v350);
  sub_1D2018FC4(v351);
  sub_1D2018FC4(v352);
  if ((v353 & 1) == 0)
  {
    goto LABEL_162;
  }

  v330 = &unk_1EE083000;
  v326 = (v558 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__ckFunctionToken);
  v327 = &v644;
  v331 = 32;
  v332 = 0;
  swift_beginAccess();
  v328 = *v326;
  v329 = v326[1];

  swift_endAccess();
  v338 = &v642;
  v642 = v328;
  v643 = v329;
  v333 = (v564 + v330[41]);
  v334 = &v641;
  swift_beginAccess();
  v335 = *v333;
  v336 = v333[1];

  swift_endAccess();
  v337 = v640;
  v640[0] = v335;
  v640[1] = v336;
  v339 = MEMORY[0x1D38948D0](v642, v643, v335, v336);
  sub_1D1FE023C(v337);
  sub_1D1FE023C(v338);
  if ((v339 & 1) == 0)
  {
    goto LABEL_162;
  }

  v316 = &unk_1EE083000;
  v312 = (v558 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accountName);
  v313 = &v639;
  v317 = 32;
  v318 = 0;
  swift_beginAccess();
  v314 = *v312;
  v315 = v312[1];

  swift_endAccess();
  v324 = &v637;
  v637 = v314;
  v638 = v315;
  v319 = (v564 + v316[50]);
  v320 = &v636;
  swift_beginAccess();
  v321 = *v319;
  v322 = v319[1];

  swift_endAccess();
  v323 = v635;
  v635[0] = v321;
  v635[1] = v322;
  v325 = MEMORY[0x1D38948D0](v637, v638, v321, v322);
  sub_1D1FE023C(v323);
  sub_1D1FE023C(v324);
  if ((v325 & 1) == 0)
  {
    goto LABEL_162;
  }

  v302 = &unk_1EE083000;
  v298 = (v558 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accountNumber);
  v299 = &v634;
  v303 = 32;
  v304 = 0;
  swift_beginAccess();
  v300 = *v298;
  v301 = v298[1];

  swift_endAccess();
  v310 = &v632;
  v632 = v300;
  v633 = v301;
  v305 = (v564 + v302[47]);
  v306 = &v631;
  swift_beginAccess();
  v307 = *v305;
  v308 = v305[1];

  swift_endAccess();
  v309 = v630;
  v630[0] = v307;
  v630[1] = v308;
  v311 = MEMORY[0x1D38948D0](v632, v633, v307, v308);
  sub_1D1FE023C(v309);
  sub_1D1FE023C(v310);
  if ((v311 & 1) == 0)
  {
    goto LABEL_162;
  }

  v288 = &unk_1EE083000;
  v284 = (v558 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__address);
  v285 = &v629;
  v289 = 32;
  v290 = 0;
  swift_beginAccess();
  v286 = *v284;
  v287 = v284[1];

  swift_endAccess();
  v296 = &v627;
  v627 = v286;
  v628 = v287;
  v291 = (v564 + v288[18]);
  v292 = &v626;
  swift_beginAccess();
  v293 = *v291;
  v294 = v291[1];

  swift_endAccess();
  v295 = v625;
  v625[0] = v293;
  v625[1] = v294;
  v297 = MEMORY[0x1D38948D0](v627, v628, v293, v294);
  sub_1D1FE023C(v295);
  sub_1D1FE023C(v296);
  if ((v297 & 1) == 0)
  {
    goto LABEL_162;
  }

  v274 = &unk_1EE083000;
  v270 = (v558 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__serviceLocationID);
  v271 = &v624;
  v275 = 32;
  v276 = 0;
  swift_beginAccess();
  v272 = *v270;
  v273 = v270[1];

  swift_endAccess();
  v282 = &v622;
  v622 = v272;
  v623 = v273;
  v277 = (v564 + v274[35]);
  v278 = &v621;
  swift_beginAccess();
  v279 = *v277;
  v280 = v277[1];

  swift_endAccess();
  v281 = v620;
  v620[0] = v279;
  v620[1] = v280;
  v283 = MEMORY[0x1D38948D0](v622, v623, v279, v280);
  sub_1D1FE023C(v281);
  sub_1D1FE023C(v282);
  if ((v283 & 1) == 0)
  {
    goto LABEL_162;
  }

  v260 = &unk_1EE083000;
  v256 = (v558 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__alternateSupplier);
  v257 = &v619;
  v261 = 32;
  v262 = 0;
  swift_beginAccess();
  v258 = *v256;
  v259 = v256[1];

  swift_endAccess();
  v268 = &v617;
  v617 = v258;
  v618 = v259;
  v263 = (v564 + v260[36]);
  v264 = &v616;
  swift_beginAccess();
  v265 = *v263;
  v266 = v263[1];

  swift_endAccess();
  v267 = v615;
  v615[0] = v265;
  v615[1] = v266;
  v269 = MEMORY[0x1D38948D0](v617, v618, v265, v266);
  sub_1D1FE023C(v267);
  sub_1D1FE023C(v268);
  if ((v269 & 1) == 0)
  {
    goto LABEL_162;
  }

  v248 = &unk_1EE083000;
  v246 = (v558 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__accessTokenExpirationDate);
  v247 = &v614;
  v249 = 32;
  v250 = 0;
  swift_beginAccess();
  sub_1D1FD5F1C(v246, v543);
  swift_endAccess();
  v251 = (v564 + v248[25]);
  v252 = &v613;
  swift_beginAccess();
  sub_1D1FD5F1C(v251, v541);
  swift_endAccess();
  v253 = &v487[*(v468 + 48)];
  sub_1D1FD5F1C(v543, v487);
  sub_1D1FD5F1C(v541, v253);
  v254 = *(v464 + 48);
  v255 = v464 + 48;
  if (v254(v487, 1, v463) == 1)
  {
    if (v254(v253, 1, v463) == 1)
    {
      sub_1D1FD6044(v487);
      v245 = 1;
      goto LABEL_43;
    }
  }

  else
  {
    sub_1D1FD5F1C(v487, v539);
    if (v254(v253, 1, v463) != 1)
    {
      (*(v464 + 32))(v467, v253, v463);
      sub_1D1FE0494();
      v244 = sub_1D208C59C();
      v243 = *(v464 + 8);
      v242 = v464 + 8;
      v243(v467, v463);
      v243(v539, v463);
      sub_1D1FD6044(v487);
      v245 = v244;
      goto LABEL_43;
    }

    (*(v464 + 8))(v539, v463);
  }

  sub_1D1FE0268(v487);
  v245 = 0;
LABEL_43:
  v241 = v245;
  sub_1D1FD6044(v541);
  sub_1D1FD6044(v543);
  if ((v241 & 1) == 0)
  {
    goto LABEL_162;
  }

  v235 = &unk_1EE083000;
  v233 = (v558 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__utilitySupportedCheckDate);
  v234 = &v612;
  v236 = 32;
  v237 = 0;
  swift_beginAccess();
  sub_1D1FD5F1C(v233, v537);
  swift_endAccess();
  v238 = (v564 + v235[22]);
  v239 = &v611;
  swift_beginAccess();
  sub_1D1FD5F1C(v238, v535);
  swift_endAccess();
  v240 = &v485[*(v468 + 48)];
  sub_1D1FD5F1C(v537, v485);
  sub_1D1FD5F1C(v535, v240);
  if (v254(v485, 1, v463) == 1)
  {
    if (v254(v240, 1, v463) == 1)
    {
      sub_1D1FD6044(v485);
      v232 = 1;
      goto LABEL_54;
    }
  }

  else
  {
    sub_1D1FD5F1C(v485, v533);
    if (v254(v240, 1, v463) != 1)
    {
      (*(v464 + 32))(v467, v240, v463);
      sub_1D1FE0494();
      v231 = sub_1D208C59C();
      v230 = *(v464 + 8);
      v229 = v464 + 8;
      v230(v467, v463);
      v230(v533, v463);
      sub_1D1FD6044(v485);
      v232 = v231;
      goto LABEL_54;
    }

    (*(v464 + 8))(v533, v463);
  }

  sub_1D1FE0268(v485);
  v232 = 0;
LABEL_54:
  v228 = v232;
  sub_1D1FD6044(v535);
  sub_1D1FD6044(v537);
  if ((v228 & 1) == 0)
  {
    goto LABEL_162;
  }

  v222 = &unk_1EE083000;
  v220 = (v558 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__amiLastRefreshDate);
  v221 = &v610;
  v223 = 32;
  v224 = 0;
  swift_beginAccess();
  sub_1D1FD5F1C(v220, v531);
  swift_endAccess();
  v225 = (v564 + v222[33]);
  v226 = &v609;
  swift_beginAccess();
  sub_1D1FD5F1C(v225, v529);
  swift_endAccess();
  v227 = &v483[*(v468 + 48)];
  sub_1D1FD5F1C(v531, v483);
  sub_1D1FD5F1C(v529, v227);
  if (v254(v483, 1, v463) == 1)
  {
    if (v254(v227, 1, v463) != 1)
    {
      goto LABEL_67;
    }

    sub_1D1FD6044(v483);
    v219 = 1;
  }

  else
  {
    sub_1D1FD5F1C(v483, v527);
    if (v254(v227, 1, v463) == 1)
    {
      (*(v464 + 8))(v527, v463);
LABEL_67:
      sub_1D1FE0268(v483);
      v219 = 0;
      goto LABEL_65;
    }

    (*(v464 + 32))(v467, v227, v463);
    sub_1D1FE0494();
    v218 = sub_1D208C59C();
    v217 = *(v464 + 8);
    v216 = v464 + 8;
    v217(v467, v463);
    v217(v527, v463);
    sub_1D1FD6044(v483);
    v219 = v218;
  }

LABEL_65:
  v215 = v219;
  sub_1D1FD6044(v529);
  sub_1D1FD6044(v531);
  if ((v215 & 1) == 0)
  {
    goto LABEL_162;
  }

  v208 = &unk_1EE083000;
  v206 = (v558 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__hasExportedEnergy_p);
  v207 = &v608;
  v209 = 32;
  v210 = 0;
  swift_beginAccess();
  v213 = *v206;
  swift_endAccess();
  v211 = (v564 + v208[52]);
  v212 = &v607;
  swift_beginAccess();
  v214 = *v211;
  swift_endAccess();
  if ((v213 & 1) != (v214 & 1))
  {
    goto LABEL_162;
  }

  v200 = &unk_1EE083000;
  v198 = (v558 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usagePointNextRefreshDate);
  v199 = &v606;
  v201 = 32;
  v202 = 0;
  swift_beginAccess();
  sub_1D1FD5F1C(v198, v525);
  swift_endAccess();
  v203 = (v564 + v200[23]);
  v204 = &v605;
  swift_beginAccess();
  sub_1D1FD5F1C(v203, v523);
  swift_endAccess();
  v205 = &v481[*(v468 + 48)];
  sub_1D1FD5F1C(v525, v481);
  sub_1D1FD5F1C(v523, v205);
  if (v254(v481, 1, v463) == 1)
  {
    if (v254(v205, 1, v463) == 1)
    {
      sub_1D1FD6044(v481);
      v197 = 1;
      goto LABEL_78;
    }
  }

  else
  {
    sub_1D1FD5F1C(v481, v521);
    if (v254(v205, 1, v463) != 1)
    {
      (*(v464 + 32))(v467, v205, v463);
      sub_1D1FE0494();
      v196 = sub_1D208C59C();
      v195 = *(v464 + 8);
      v194 = v464 + 8;
      v195(v467, v463);
      v195(v521, v463);
      sub_1D1FD6044(v481);
      v197 = v196;
      goto LABEL_78;
    }

    (*(v464 + 8))(v521, v463);
  }

  sub_1D1FE0268(v481);
  v197 = 0;
LABEL_78:
  v193 = v197;
  sub_1D1FD6044(v523);
  sub_1D1FD6044(v525);
  if ((v193 & 1) == 0)
  {
    goto LABEL_162;
  }

  v187 = &unk_1EE083000;
  v185 = (v558 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__usageSummaryNextRefreshDate);
  v186 = &v604;
  v188 = 32;
  v189 = 0;
  swift_beginAccess();
  sub_1D1FD5F1C(v185, v519);
  swift_endAccess();
  v190 = (v564 + v187[20]);
  v191 = &v603;
  swift_beginAccess();
  sub_1D1FD5F1C(v190, v517);
  swift_endAccess();
  v192 = &v479[*(v468 + 48)];
  sub_1D1FD5F1C(v519, v479);
  sub_1D1FD5F1C(v517, v192);
  if (v254(v479, 1, v463) == 1)
  {
    if (v254(v192, 1, v463) == 1)
    {
      sub_1D1FD6044(v479);
      v184 = 1;
      goto LABEL_89;
    }
  }

  else
  {
    sub_1D1FD5F1C(v479, v515);
    if (v254(v192, 1, v463) != 1)
    {
      (*(v464 + 32))(v467, v192, v463);
      sub_1D1FE0494();
      v183 = sub_1D208C59C();
      v182 = *(v464 + 8);
      v181 = v464 + 8;
      v182(v467, v463);
      v182(v515, v463);
      sub_1D1FD6044(v479);
      v184 = v183;
      goto LABEL_89;
    }

    (*(v464 + 8))(v515, v463);
  }

  sub_1D1FE0268(v479);
  v184 = 0;
LABEL_89:
  v180 = v184;
  sub_1D1FD6044(v517);
  sub_1D1FD6044(v519);
  if ((v180 & 1) == 0)
  {
    goto LABEL_162;
  }

  v174 = &unk_1EE083000;
  v172 = (v558 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__intervalBlockNextRefreshDate);
  v173 = &v602;
  v175 = 32;
  v176 = 0;
  swift_beginAccess();
  sub_1D1FD5F1C(v172, v513);
  swift_endAccess();
  v177 = (v564 + v174[19]);
  v178 = &v601;
  swift_beginAccess();
  sub_1D1FD5F1C(v177, v511);
  swift_endAccess();
  v179 = &v477[*(v468 + 48)];
  sub_1D1FD5F1C(v513, v477);
  sub_1D1FD5F1C(v511, v179);
  if (v254(v477, 1, v463) == 1)
  {
    if (v254(v179, 1, v463) != 1)
    {
      goto LABEL_102;
    }

    sub_1D1FD6044(v477);
    v171 = 1;
  }

  else
  {
    sub_1D1FD5F1C(v477, v509);
    if (v254(v179, 1, v463) == 1)
    {
      (*(v464 + 8))(v509, v463);
LABEL_102:
      sub_1D1FE0268(v477);
      v171 = 0;
      goto LABEL_100;
    }

    (*(v464 + 32))(v467, v179, v463);
    sub_1D1FE0494();
    v170 = sub_1D208C59C();
    v169 = *(v464 + 8);
    v168 = v464 + 8;
    v169(v467, v463);
    v169(v509, v463);
    sub_1D1FD6044(v477);
    v171 = v170;
  }

LABEL_100:
  v167 = v171;
  sub_1D1FD6044(v511);
  sub_1D1FD6044(v513);
  if ((v167 & 1) == 0)
  {
    goto LABEL_162;
  }

  v157 = &unk_1EE083000;
  v153 = (v558 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionState);
  v154 = &v600;
  v158 = 32;
  v159 = 0;
  swift_beginAccess();
  v155 = *v153;
  v156 = v153[1];

  swift_endAccess();
  v165 = &v598;
  v598 = v155;
  v599 = v156;
  v160 = (v564 + v157[34]);
  v161 = &v597;
  swift_beginAccess();
  v162 = *v160;
  v163 = v160[1];

  swift_endAccess();
  v164 = v596;
  v596[0] = v162;
  v596[1] = v163;
  v166 = MEMORY[0x1D38948D0](v598, v599, v162, v163);
  sub_1D1FE023C(v164);
  sub_1D1FE023C(v165);
  if ((v166 & 1) == 0)
  {
    goto LABEL_162;
  }

  v147 = &unk_1EE083000;
  v145 = (v558 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionCreationDate);
  v146 = &v595;
  v148 = 32;
  v149 = 0;
  swift_beginAccess();
  sub_1D1FD5F1C(v145, v507);
  swift_endAccess();
  v150 = (v564 + v147[27]);
  v151 = &v594;
  swift_beginAccess();
  sub_1D1FD5F1C(v150, v505);
  swift_endAccess();
  v152 = &v475[*(v468 + 48)];
  sub_1D1FD5F1C(v507, v475);
  sub_1D1FD5F1C(v505, v152);
  if (v254(v475, 1, v463) == 1)
  {
    if (v254(v152, 1, v463) == 1)
    {
      sub_1D1FD6044(v475);
      v144 = 1;
      goto LABEL_112;
    }
  }

  else
  {
    sub_1D1FD5F1C(v475, v503);
    if (v254(v152, 1, v463) != 1)
    {
      (*(v464 + 32))(v467, v152, v463);
      sub_1D1FE0494();
      v143 = sub_1D208C59C();
      v142 = *(v464 + 8);
      v141 = v464 + 8;
      v142(v467, v463);
      v142(v503, v463);
      sub_1D1FD6044(v475);
      v144 = v143;
      goto LABEL_112;
    }

    (*(v464 + 8))(v503, v463);
  }

  sub_1D1FE0268(v475);
  v144 = 0;
LABEL_112:
  v140 = v144;
  sub_1D1FD6044(v505);
  sub_1D1FD6044(v507);
  if ((v140 & 1) == 0)
  {
    goto LABEL_162;
  }

  v134 = &unk_1EE083000;
  v132 = (v558 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__subscriptionStartDate);
  v133 = &v593;
  v135 = 32;
  v136 = 0;
  swift_beginAccess();
  sub_1D1FD5F1C(v132, v501);
  swift_endAccess();
  v137 = (v564 + v134[32]);
  v138 = &v592;
  swift_beginAccess();
  sub_1D1FD5F1C(v137, v499);
  swift_endAccess();
  v139 = &v473[*(v468 + 48)];
  sub_1D1FD5F1C(v501, v473);
  sub_1D1FD5F1C(v499, v139);
  if (v254(v473, 1, v463) == 1)
  {
    if (v254(v139, 1, v463) == 1)
    {
      sub_1D1FD6044(v473);
      v131 = 1;
      goto LABEL_123;
    }
  }

  else
  {
    sub_1D1FD5F1C(v473, v497);
    if (v254(v139, 1, v463) != 1)
    {
      (*(v464 + 32))(v467, v139, v463);
      sub_1D1FE0494();
      v130 = sub_1D208C59C();
      v129 = *(v464 + 8);
      v128 = v464 + 8;
      v129(v467, v463);
      v129(v497, v463);
      sub_1D1FD6044(v473);
      v131 = v130;
      goto LABEL_123;
    }

    (*(v464 + 8))(v497, v463);
  }

  sub_1D1FE0268(v473);
  v131 = 0;
LABEL_123:
  v127 = v131;
  sub_1D1FD6044(v499);
  sub_1D1FD6044(v501);
  if ((v127 & 1) == 0)
  {
    goto LABEL_162;
  }

  v121 = &unk_1EE083000;
  v119 = (v558 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__siteTombstone);
  v120 = &v591;
  v122 = 32;
  v123 = 0;
  swift_beginAccess();
  sub_1D1FD5F1C(v119, v495);
  swift_endAccess();
  v124 = (v564 + v121[45]);
  v125 = &v590;
  swift_beginAccess();
  sub_1D1FD5F1C(v124, v493);
  swift_endAccess();
  v126 = &v471[*(v468 + 48)];
  sub_1D1FD5F1C(v495, v471);
  sub_1D1FD5F1C(v493, v126);
  if (v254(v471, 1, v463) == 1)
  {
    if (v254(v126, 1, v463) == 1)
    {
      sub_1D1FD6044(v471);
      v118 = 1;
      goto LABEL_134;
    }
  }

  else
  {
    sub_1D1FD5F1C(v471, v491);
    if (v254(v126, 1, v463) != 1)
    {
      (*(v464 + 32))(v467, v126, v463);
      sub_1D1FE0494();
      v117 = sub_1D208C59C();
      v116 = *(v464 + 8);
      v115 = v464 + 8;
      v116(v467, v463);
      v116(v491, v463);
      sub_1D1FD6044(v471);
      v118 = v117;
      goto LABEL_134;
    }

    (*(v464 + 8))(v491, v463);
  }

  sub_1D1FE0268(v471);
  v118 = 0;
LABEL_134:
  v114 = v118;
  sub_1D1FD6044(v493);
  sub_1D1FD6044(v495);
  if ((v114 & 1) == 0)
  {
    goto LABEL_162;
  }

  v105 = &unk_1EE083000;
  v103 = v558 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__siteVersion;
  v104 = &v589;
  v106 = 32;
  v107 = 0;
  swift_beginAccess();
  v110 = *v103;
  v111 = *(v103 + 4);
  swift_endAccess();
  v108 = (v564 + v105[48]);
  v109 = &v588;
  swift_beginAccess();
  v112 = *v108;
  v113 = *(v108 + 4);
  swift_endAccess();
  v584[6] = v110;
  v585 = v111 & 1;
  v586 = v112;
  v587 = v113 & 1;
  if (v111)
  {
    if (v587)
    {
      v102 = 1;
      goto LABEL_145;
    }

    goto LABEL_147;
  }

  v571 = v110;
  v572 = v111 & 1;
  if (v587)
  {
LABEL_147:
    v102 = 0;
    goto LABEL_145;
  }

  v102 = v571 == v586;
LABEL_145:
  if (!v102)
  {
    goto LABEL_162;
  }

  v93 = &unk_1EE083000;
  v90 = (v558 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__generationMeters);
  v91 = v584;
  v94 = 32;
  v95 = 0;
  swift_beginAccess();
  v92 = *v90;

  swift_endAccess();
  v100 = &v583;
  v583 = v92;
  v96 = (v564 + v93[37]);
  v97 = &v582;
  swift_beginAccess();
  v98 = *v96;

  swift_endAccess();
  v99 = &v581;
  v581 = v98;
  v101 = sub_1D208C7BC();
  sub_1D1FD3C38(v99);
  sub_1D1FD3C38(v100);
  if ((v101 & 1) == 0)
  {
    goto LABEL_162;
  }

  v81 = &unk_1EE082000;
  v79 = v558 + OBJC_IVAR____TtCV19EnergyKitFoundation17EnergySitePayloadP33_D6784D412C41A6893A7748F683861ABE13_StorageClass__includeRatePlanInGuidance;
  v80 = &v580;
  v82 = 32;
  v83 = 0;
  swift_beginAccess();
  v86 = *v79;
  v87 = *(v79 + 4);
  swift_endAccess();
  v84 = (v564 + v81[442]);
  v85 = &v579;
  swift_beginAccess();
  v88 = *v84;
  v89 = *(v84 + 4);
  swift_endAccess();
  v575 = v86;
  v576 = v87 & 1;
  v577 = v88;
  v578 = v89 & 1;
  if ((v87 & 1) == 0)
  {
    v573 = v86;
    v574 = v87 & 1;
    if ((v578 & 1) == 0)
    {
      v78 = v573 == v577;
      goto LABEL_158;
    }

    goto LABEL_160;
  }

  if ((v578 & 1) == 0)
  {
LABEL_160:
    v78 = 0;
    goto LABEL_158;
  }

  v78 = 1;
LABEL_158:
  if (!v78)
  {
LABEL_162:

    v462 = 0;
    return v462 & 1;
  }

  v462 = 1;
  return v462 & 1;
}

uint64_t sub_1D2024E74@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void)@<X1>, _BYTE *a3@<X8>)
{
  result = a2(*a1, a1[1]);
  *a3 = result & 1;
  return result;
}

uint64_t *sub_1D2024EFC(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[1];

  return a1;
}

uint64_t EnergySitePayload.hashValue.getter()
{
  type metadata accessor for EnergySitePayload();
  sub_1D2024F7C();
  return sub_1D208C9DC();
}

unint64_t sub_1D2024F7C()
{
  v2 = qword_1EC6BEE00;
  if (!qword_1EC6BEE00)
  {
    type metadata accessor for EnergySitePayload();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEE00);
    return WitnessTable;
  }

  return v2;
}

void (*sub_1D202505C(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = EnergySitePayload.unknownFields.modify();
  return sub_1D1FDDFE4;
}

unint64_t sub_1D2025198()
{
  v2 = qword_1EC6BEE08;
  if (!qword_1EC6BEE08)
  {
    type metadata accessor for EnergySitePayload();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEE08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2025260()
{
  v2 = qword_1EE0828F8;
  if (!qword_1EE0828F8)
  {
    type metadata accessor for EnergySitePayload();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EE0828F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D202534C()
{
  v0 = sub_1D2014770();
  v4 = *v0;
  v5 = v0[1];

  v1 = sub_1D208C64C();
  v6 = MEMORY[0x1D38948B0](v4, v5, v1);
  v7 = v2;

  result = v6;
  qword_1EC6C2920 = v6;
  qword_1EC6C2928 = v7;
  return result;
}

uint64_t *sub_1D20253EC()
{
  if (qword_1EC6C2918 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C2920;
}

uint64_t static EnergySitePayload.CurrentRatePlan.protoMessageName.getter()
{
  v0 = sub_1D20253EC();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_1D2025488()
{
  v4 = sub_1D208C47C();
  __swift_allocate_value_buffer(v4, qword_1EE082DB8);
  __swift_project_value_buffer(v4, qword_1EE082DB8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v0 = *(v7 + 48);
  *v1 = 1;
  v6 = v1 + v0;
  *v6 = "ratePlan";
  *(v6 + 1) = 8;
  v6[16] = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v2 = sub_1D208C45C();
  (*(*(v2 - 8) + 104))(v6, v5);
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D20255A8()
{
  if (qword_1EE082DB0 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EE082DB8);
}

uint64_t static EnergySitePayload.CurrentRatePlan._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D20255A8();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t EnergySitePayload.CurrentRatePlan.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1D208C27C();
    if (v2 || (v1 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1D20257B8();
    }

    v2 = 0;
  }

  return result;
}

uint64_t sub_1D20257B8()
{
  type metadata accessor for EnergySitePayload.CurrentRatePlan.RatePlan();
  sub_1D2025B98();
  return sub_1D208C32C();
}

uint64_t EnergySitePayload.CurrentRatePlan.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v18 = a2;
  v19 = a3;
  v33 = 0;
  v32 = 0;
  v34 = a2;
  v23 = sub_1D208C21C();
  v24 = *(v23 - 8);
  v25 = v23 - 8;
  v26 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = v9 - v26;
  v33 = MEMORY[0x1EEE9AC00](v22);
  v32 = v3;
  v29 = *v3;

  v31 = v29;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE10, &qword_1D208F4C0);
  sub_1D2025B10();
  v30 = sub_1D208C82C();

  if (v30)
  {
    v13 = v21;
  }

  else
  {
    v15 = *v20;

    v14 = type metadata accessor for EnergySitePayload.CurrentRatePlan.RatePlan();
    sub_1D2025B98();
    v4 = v21;
    sub_1D208C43C();
    v16 = v4;
    v17 = v4;
    if (v4)
    {
      v9[1] = v17;
    }

    v13 = v16;
  }

  v5 = v27;
  v10 = v13;
  v6 = type metadata accessor for EnergySitePayload.CurrentRatePlan();
  (*(v24 + 16))(v5, &v20[*(v6 + 20)], v23);
  v7 = v10;
  sub_1D208C1FC();
  v11 = v7;
  v12 = v7;
  if (v7)
  {
    v9[0] = v12;
  }

  return (*(v24 + 8))(v27, v23);
}

unint64_t sub_1D2025B10()
{
  v2 = qword_1EE082208[0];
  if (!qword_1EE082208[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BEE10, &qword_1D208F4C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EE082208);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2025B98()
{
  v2 = qword_1EC6BEE18;
  if (!qword_1EC6BEE18)
  {
    type metadata accessor for EnergySitePayload.CurrentRatePlan.RatePlan();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEE18);
    return WitnessTable;
  }

  return v2;
}

BOOL static EnergySitePayload.CurrentRatePlan.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v14 = a1;
  v23 = a2;
  v35 = 0;
  v34 = 0;
  v24 = 0;
  v15 = sub_1D208C21C();
  v16 = *(v15 - 8);
  v17 = v15 - 8;
  v18 = (v16[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v14);
  v19 = v8 - v18;
  v20 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v21 = v8 - v20;
  v35 = v4;
  v34 = v5;
  v22 = *v4;

  v30 = &v33;
  v33 = v22;
  v25 = *v23;

  v29 = &v32;
  v32 = v25;
  v28 = v33;
  v26 = v25;
  v27 = type metadata accessor for EnergySitePayload.CurrentRatePlan.RatePlan();
  sub_1D2027478();
  v31 = sub_1D208C7BC();
  sub_1D1FD3C38(v29);
  sub_1D1FD3C38(v30);
  if (v31)
  {
    v8[0] = type metadata accessor for EnergySitePayload.CurrentRatePlan();
    v6 = v14 + *(v8[0] + 20);
    v9 = v16[2];
    v8[1] = v16 + 2;
    v9(v21, v6, v15);
    v9(v19, v23 + *(v8[0] + 20), v15);
    sub_1D1FE0414();
    v12 = sub_1D208C59C();
    v11 = v16[1];
    v10 = v16 + 1;
    v11(v19, v15);
    v11(v21, v15);
    return (v12 & 1) != 0;
  }

  else
  {
    return 0;
  }
}

uint64_t EnergySitePayload.CurrentRatePlan.hashValue.getter()
{
  type metadata accessor for EnergySitePayload.CurrentRatePlan();
  sub_1D20274F8();
  return sub_1D208C9DC();
}

void (*sub_1D2025F68(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = EnergySitePayload.CurrentRatePlan.unknownFields.modify();
  return sub_1D1FDDFE4;
}

uint64_t sub_1D2026158()
{
  v0 = sub_1D20253EC();
  v4 = *v0;
  v5 = v0[1];

  v1 = sub_1D208C64C();
  v6 = MEMORY[0x1D38948B0](v4, v5, v1);
  v7 = v2;

  result = v6;
  qword_1EC6C2938 = v6;
  qword_1EC6C2940 = v7;
  return result;
}

uint64_t *sub_1D20261F8()
{
  if (qword_1EC6C2930 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C2938;
}

uint64_t static EnergySitePayload.CurrentRatePlan.RatePlan.protoMessageName.getter()
{
  v0 = sub_1D20261F8();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_1D2026294()
{
  v10 = sub_1D208C47C();
  __swift_allocate_value_buffer(v10, qword_1EC6C2950);
  __swift_project_value_buffer(v10, qword_1EC6C2950);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v14 = v0;
  v1 = *(v17 + 48);
  *v0 = 1;
  v12 = v0 + v1;
  *v12 = "identifier";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v15 = MEMORY[0x1E69AADC8];
  v11 = *MEMORY[0x1E69AADC8];
  v16 = *(*(sub_1D208C45C() - 8) + 104);
  (v16)(v12, v11);
  v13 = *(*(v17 - 8) + 72);
  v2 = *(v17 + 48);
  *(v14 + v13) = 2;
  v3 = v14 + v13 + v2;
  *v3 = "descriptor";
  *(v3 + 1) = 10;
  v3[16] = 2;
  v4 = *v15;
  v16();
  v5 = *(v17 + 48);
  v6 = (v14 + 2 * v13);
  *v6 = 3;
  v7 = v6 + v5;
  *v7 = "peaks";
  *(v7 + 1) = 5;
  v7[16] = 2;
  v8 = *v15;
  v16();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D20264D0()
{
  if (qword_1EC6C2948 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EC6C2950);
}

uint64_t static EnergySitePayload.CurrentRatePlan.RatePlan._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D20264D0();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t EnergySitePayload.CurrentRatePlan.RatePlan.decodeMessage<A>(decoder:)()
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
        sub_1D202679C();
        break;
    }

    v2 = 0;
  }

  return result;
}

uint64_t EnergySitePayload.CurrentRatePlan.RatePlan.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a1;
  v41 = a2;
  v42 = a3;
  v57 = 0;
  v56 = 0;
  v58 = a2;
  v46 = sub_1D208C21C();
  v47 = *(v46 - 8);
  v48 = v46 - 8;
  v49 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v50 = v11 - v49;
  v57 = MEMORY[0x1EEE9AC00](v45);
  v56 = v3;
  v51 = *v3;
  v52 = v3[1];

  v53 = sub_1D208C66C();

  if (v53)
  {
    v36 = v44;
  }

  else
  {
    v4 = v44;
    v37 = *v43;
    v38 = *(v43 + 1);

    sub_1D208C41C();
    v39 = v4;
    v40 = v4;
    if (v4)
    {
      v13 = v40;

      v14 = v13;
      return result;
    }

    v36 = v39;
  }

  v32 = v36;
  v33 = *(v43 + 2);
  v34 = *(v43 + 3);

  v35 = sub_1D208C66C();

  if (v35)
  {
    v27 = v32;
  }

  else
  {
    v5 = v32;
    v28 = *(v43 + 2);
    v29 = *(v43 + 3);

    sub_1D208C41C();
    v30 = v5;
    v31 = v5;
    if (v5)
    {
      v12 = v31;

      v14 = v12;
      return result;
    }

    v27 = v30;
  }

  v23 = v27;
  v25 = *(v43 + 4);
  v24 = *(v43 + 5);
  sub_1D1FD0018(v25, v24);
  v54 = v25;
  v55 = v24;
  sub_1D2027678();
  v26 = sub_1D208C82C();
  sub_1D1FD0094(v25, v24);
  if (v26)
  {
    v18 = v23;
  }

  else
  {
    v19 = *(v43 + 4);
    v20 = *(v43 + 5);
    sub_1D1FD0018(v19, v20);
    v6 = v23;
    sub_1D208C3DC();
    v21 = v6;
    v22 = v6;
    if (v6)
    {
      v11[2] = v22;
      return sub_1D1FD0094(v19, v20);
    }

    sub_1D1FD0094(v19, v20);
    v18 = v21;
  }

  v7 = v50;
  v15 = v18;
  v8 = type metadata accessor for EnergySitePayload.CurrentRatePlan.RatePlan();
  (*(v47 + 16))(v7, &v43[*(v8 + 28)], v46);
  v9 = v15;
  sub_1D208C1FC();
  v16 = v9;
  v17 = v9;
  if (v9)
  {
    v11[1] = v17;
  }

  return (*(v47 + 8))(v50, v46);
}

BOOL static EnergySitePayload.CurrentRatePlan.RatePlan.== infix(_:_:)(void *a1, char *a2)
{
  v28 = a1;
  v38 = a2;
  v54 = 0;
  v53 = 0;
  v29 = sub_1D208C21C();
  v30 = *(v29 - 8);
  v31 = v29 - 8;
  v32 = (v30[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v28);
  v33 = v8 - v32;
  v34 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v35 = v8 - v34;
  v54 = v4;
  v53 = v5;
  v36 = *v4;
  v37 = v4[1];

  v42 = &v51;
  v51 = v36;
  v52 = v37;
  v39 = *v38;
  v40 = *(v38 + 1);

  v41 = v50;
  v50[0] = v39;
  v50[1] = v40;
  v43 = MEMORY[0x1D38948D0](v51, v52, v39, v40);
  sub_1D1FE023C(v41);
  sub_1D1FE023C(v42);
  if (v43)
  {
    v20 = v28[2];
    v21 = v28[3];

    v25 = &v48;
    v48 = v20;
    v49 = v21;
    v22 = *(v38 + 2);
    v23 = *(v38 + 3);

    v24 = v47;
    v47[0] = v22;
    v47[1] = v23;
    v26 = MEMORY[0x1D38948D0](v48, v49, v22, v23);
    sub_1D1FE023C(v24);
    sub_1D1FE023C(v25);
    if (v26)
    {
      v13 = v28[4];
      v14 = v28[5];
      sub_1D1FD0018(v13, v14);
      v18 = &v45;
      v45 = v13;
      v46 = v14;
      v15 = *(v38 + 4);
      v16 = *(v38 + 5);
      sub_1D1FD0018(v15, v16);
      v17 = v44;
      v44[0] = v15;
      v44[1] = v16;
      v19 = MEMORY[0x1D3893F80](v45, v46, v15, v16);
      sub_1D2018FC4(v17);
      sub_1D2018FC4(v18);
      if (v19)
      {
        v8[0] = type metadata accessor for EnergySitePayload.CurrentRatePlan.RatePlan();
        v6 = v28 + *(v8[0] + 28);
        v9 = v30[2];
        v8[1] = v30 + 2;
        v9(v35, v6, v29);
        v9(v33, &v38[*(v8[0] + 28)], v29);
        sub_1D1FE0414();
        v12 = sub_1D208C59C();
        v11 = v30[1];
        v10 = v30 + 1;
        v11(v33, v29);
        v11(v35, v29);
        return (v12 & 1) != 0;
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

uint64_t EnergySitePayload.CurrentRatePlan.RatePlan.hashValue.getter()
{
  type metadata accessor for EnergySitePayload.CurrentRatePlan.RatePlan();
  sub_1D20276F0();
  return sub_1D208C9DC();
}

void (*sub_1D2027288(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = EnergySitePayload.CurrentRatePlan.RatePlan.unknownFields.modify();
  return sub_1D1FDDFE4;
}

unint64_t sub_1D2027478()
{
  v2 = qword_1EC6BEE20;
  if (!qword_1EC6BEE20)
  {
    type metadata accessor for EnergySitePayload.CurrentRatePlan.RatePlan();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEE20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D20274F8()
{
  v2 = qword_1EC6BEE28;
  if (!qword_1EC6BEE28)
  {
    type metadata accessor for EnergySitePayload.CurrentRatePlan();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEE28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2027578()
{
  v2 = qword_1EC6BEE30;
  if (!qword_1EC6BEE30)
  {
    type metadata accessor for EnergySitePayload.CurrentRatePlan();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEE30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D20275F8()
{
  v2 = qword_1EE082B10;
  if (!qword_1EE082B10)
  {
    type metadata accessor for EnergySitePayload.CurrentRatePlan();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EE082B10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2027678()
{
  v2 = qword_1EE082A28;
  if (!qword_1EE082A28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EE082A28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D20276F0()
{
  v2 = qword_1EC6BEE38;
  if (!qword_1EC6BEE38)
  {
    type metadata accessor for EnergySitePayload.CurrentRatePlan.RatePlan();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEE38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2027770()
{
  v2 = qword_1EC6BEE40;
  if (!qword_1EC6BEE40)
  {
    type metadata accessor for EnergySitePayload.CurrentRatePlan.RatePlan();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEE40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2027808()
{
  v2 = qword_1EE0828F0;
  if (!qword_1EE0828F0)
  {
    type metadata accessor for EnergySitePayload();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EE0828F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D20278D0()
{
  v2 = qword_1EC6BEE48;
  if (!qword_1EC6BEE48)
  {
    type metadata accessor for EnergySitePayload();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEE48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2027968()
{
  v2 = qword_1EE082B08;
  if (!qword_1EE082B08)
  {
    type metadata accessor for EnergySitePayload.CurrentRatePlan();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EE082B08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2027A30()
{
  v2 = qword_1EC6BEE50;
  if (!qword_1EC6BEE50)
  {
    type metadata accessor for EnergySitePayload.CurrentRatePlan();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEE50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2027AC8()
{
  v2 = qword_1EC6BEE58;
  if (!qword_1EC6BEE58)
  {
    type metadata accessor for EnergySitePayload.CurrentRatePlan.RatePlan();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEE58);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D2027C08()
{
  v3 = sub_1D208C21C();
  if (v0 <= 0x3F)
  {
    v3 = type metadata accessor for EnergySitePayload._StorageClass();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1D2027D24()
{
  v3 = sub_1D2027DF0();
  if (v0 <= 0x3F)
  {
    v3 = sub_1D208C21C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1D2027DF0()
{
  v4 = qword_1EE082A70;
  if (!qword_1EE082A70)
  {
    type metadata accessor for EnergySitePayload.CurrentRatePlan.RatePlan();
    v3 = sub_1D208C7AC();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EE082A70);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1D2027EDC()
{
  v2 = sub_1D208C21C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1D2027FBC()
{
  v4 = sub_1D2028234();
  updated = v4;
  if (v0 <= 0x3F)
  {
    v6 = *(v4 - 8) + 64;
    v3 = sub_1D1FE0FAC();
    updated = v3;
    if (v1 <= 0x3F)
    {
      v7 = *(v3 - 8) + 64;
      updated = swift_updateClassMetadata2();
      if (!updated)
      {
        return 0;
      }
    }
  }

  return updated;
}

uint64_t sub_1D2028234()
{
  v4 = qword_1EE082AD8[0];
  if (!qword_1EE082AD8[0])
  {
    type metadata accessor for EnergySitePayload.CurrentRatePlan();
    v3 = sub_1D208C8FC();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, qword_1EE082AD8);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1D20282E8()
{
  v2 = qword_1EC6C2FF0[0];
  if (!qword_1EC6C2FF0[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC6C2FF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D2028364(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = *(type metadata accessor for EnergySitePayload() + 20);
  v7 = *(a1 + v6);

  result = a2;
  *(a2 + v6) = v7;
  return result;
}

uint64_t sub_1D2028400(uint64_t a1)
{
  v1 = sub_1D208C21C();
  (*(*(v1 - 8) + 8))(a1);
  v2 = *(a1 + *(type metadata accessor for EnergySitePayload() + 20));

  return a1;
}

void *sub_1D202847C(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

void *sub_1D20284B4(const void *a1, void *a2)
{
  v6 = sub_1D208C1EC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t *sub_1D20285DC(uint64_t *a1)
{
  v10 = type metadata accessor for EnergySitePayload.CurrentRatePlan();
  v11 = *(*(v10 - 8) + 48);
  if (!(v11)(a1, 1))
  {
    v1 = *a1;

    v8 = a1 + *(v10 + 20);
    v2 = sub_1D208C21C();
    (*(*(v2 - 8) + 8))(v8);
  }

  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE60, &qword_1D208FB68) + 48));
  if (!v11())
  {
    v3 = *v7;

    v6 = v7 + *(v10 + 20);
    v4 = sub_1D208C21C();
    (*(*(v4 - 8) + 8))(v6);
  }

  return a1;
}

unint64_t sub_1D2028750()
{
  v2 = qword_1EE082200;
  if (!qword_1EE082200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BEE68, &unk_1D208FB70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EE082200);
    return WitnessTable;
  }

  return v2;
}

uint64_t static IntervalBlockProcessing.readingsFrom(data:)(uint64_t a1, unint64_t a2)
{
  v9 = a1;
  v10 = a2;
  v13 = sub_1D20292D0;
  v6[32] = sub_1D202982C;
  v6[33] = sub_1D2029A48;
  v6[34] = sub_1D2029A54;
  v6[35] = sub_1D2029A40;
  v6[36] = sub_1D2029A40;
  v6[37] = sub_1D2029BE4;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v17 = 0;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE70, &unk_1D208FB80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = v6 - v7;
  v21 = MEMORY[0x1EEE9AC00](v9);
  v22 = v2;
  v20 = v3;
  sub_1D1FD0018(v21, v2);
  v11 = &v14;
  v15 = v9;
  v16 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6BF320, "D1");
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEC60, &unk_1D208FB90);
  sub_1D1FEA670(v13, v12, v4, &v18, &v19);
  sub_1D1FD0094(v9, v10);
  return v19;
}

uint64_t sub_1D2029058@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = sub_1D2029C44();
  result = static NSCoding<>.unsecureUnarchived(from:)(a1, a2, v4);
  v13 = result;
  if (v10)
  {
    *a3 = v10;
  }

  else
  {
    if (result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE90, &qword_1D208FBF8);
      MEMORY[0x1E69E5928](v13);
      sub_1D2029D30();
      sub_1D208CB7C();
      MEMORY[0x1E69E5920](v13);
      MEMORY[0x1E69E5920](v13);
      if (v14)
      {
        v6 = v14;
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE90, &qword_1D208FBF8);
      type metadata accessor for IntervalBlockClientPayload.IntervalReading();
      sub_1D2029CA8();
      *a4 = sub_1D208C6DC();

      return 0;
    }

    else
    {
      type metadata accessor for IntervalBlockClientPayload.IntervalReading();
      result = sub_1D208C52C();
      *a4 = result;
    }
  }

  return result;
}

uint64_t sub_1D2029300@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = 0;
  v10 = 0;
  v4 = *a1;
  v5 = a1[1];
  v9 = v4;
  v10 = v5;
  sub_1D1FD0018(v4, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6BF320, "D1");
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEEA8, &qword_1D208FC00);
  sub_1D1FEA670(sub_1D2029DB8, v7, v2, &v8, a2);
  return sub_1D1FD0094(v4, v5);
}

uint64_t sub_1D2029418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v11 = a4;
  v19 = a1;
  v20 = a2;
  v12 = a3;
  v36 = 0;
  v34 = 0;
  v35 = 0;
  v13 = 0;
  v14 = (*(*(sub_1D208C23C() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v25 = v8 - v14;
  v15 = type metadata accessor for IntervalBlockClientPayload.IntervalReading();
  v16 = *(v15 - 8);
  v17 = v15 - 8;
  v18 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v19);
  v21 = v8 - v18;
  v36 = v8 - v18;
  v34 = v4;
  v35 = v5;
  sub_1D1FD0018(v4, v5);
  v22 = v33;
  v33[0] = v19;
  v33[1] = v20;
  v23 = v32;
  memset(v32, 0, sizeof(v32));
  v27 = sub_1D2001480();
  v26 = MEMORY[0x1E6969080];
  v28 = MEMORY[0x1E69AA8D0];
  v24 = sub_1D2029718();
  sub_1D2029734();
  v6 = v29;
  result = sub_1D208C37C();
  v30 = v6;
  v31 = v6;
  if (v6)
  {
    *v12 = v31;
  }

  else
  {
    if ((*(v21 + 32) & 0x80000000) != 0)
    {
      v8[0] = *(v21 + 16);
      v8[1] = *(v21 + 24);

      v9 = sub_1D208C66C();

      v10 = v9 ^ 1;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      *(v21 + 32) = 0;
    }

    sub_1D2006C80(v21, v11);
    (*(v16 + 56))(v11, 0, 1, v15);
    return sub_1D2006FA4(v21);
  }

  return result;
}

uint64_t sub_1D202975C(uint64_t a1)
{
  v3 = sub_1D208C4AC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1D2029898(uint64_t a1)
{
  if (a1)
  {
    return sub_1D208C8EC();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D20298EC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1D202994C(uint64_t result)
{
  if (result)
  {
    sub_1D208C8CC();
    return sub_1D208C8BC();
  }

  return result;
}

uint64_t sub_1D20299B4(void (*a1)(void))
{
  a1();
  v2 = _swift_stdlib_bridgeErrorToNSError();
  MEMORY[0x1E69E5928](v2);
  swift_unknownObjectRelease();
  return v2;
}

_BYTE **sub_1D2029A2C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1D2029A60(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = a4();
  v8 = *a1;
  MEMORY[0x1E69E5928](v9);
  sub_1D208C91C();
  if (v9)
  {
    MEMORY[0x1E69E5920](v9);
  }

  *a1 = v8 + 8;
  v5 = *a2;
  if (*a2)
  {
    MEMORY[0x1E69E5928](v9);
    *v5 = v9;
    result = MEMORY[0x1E69E5920](v9);
    *a2 = v5 + 1;
  }

  else
  {
    result = MEMORY[0x1E69E5920](v9);
  }

  *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1D2029C44()
{
  v2 = qword_1EC6BEE88;
  if (!qword_1EC6BEE88)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC6BEE88);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1D2029CA8()
{
  v2 = qword_1EC6BEE98;
  if (!qword_1EC6BEE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BEE90, &qword_1D208FBF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEE98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2029D30()
{
  v2 = qword_1EC6BEEA0;
  if (!qword_1EC6BEEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BEE90, &qword_1D208FBF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BEEA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t static UUID.from(data:)@<X0>(uint64_t a1@<X8>)
{
  if (MEMORY[0x1D3893FB0]() == 16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEB68, &qword_1D208E528);
    return sub_1D208BCEC();
  }

  else
  {
    v2 = sub_1D208BF8C();
    return (*(*(v2 - 8) + 56))(a1, 1);
  }
}

uint64_t sub_1D2029EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = a3;
  v21 = a1;
  v20 = a2;
  v17 = "Fatal error";
  v18 = "UnsafeBufferPointer with negative count";
  v19 = "Swift/UnsafeBufferPointer.swift";
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v22 = sub_1D208BF8C();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  v25 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = &v5 - v25;
  v28 = MEMORY[0x1EEE9AC00](v21);
  v29 = v3;
  if (v28)
  {
    v15 = v21;
    v14 = v21;
    if (v20)
    {
      v11 = v20 - v21;
    }

    else
    {
      __break(1u);
    }

    v10 = v11;
    if (v11 < 0)
    {
      sub_1D208CA4C();
      __break(1u);
    }

    v12 = v14;
    v13 = v10;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v9 = sub_1D208C5AC();
  if (!v9)
  {
    return (*(v23 + 56))(v16, 1, 1, v22);
  }

  v8 = v9;
  v6 = v9;
  v27 = v9;
  sub_1D202CA64();
  v7 = sub_1D202A1CC(v6);
  sub_1D208BF4C();
  (*(v23 + 32))(v16, v26, v22);
  (*(v23 + 56))(v16, 0, 1, v22);
  return MEMORY[0x1E69E5920](v7);
}

uint64_t UUID.init(string:namespace:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v15 = a5;
  v31 = a1;
  v32 = a2;
  v21 = a3;
  v22 = a4;
  v16 = "Fatal error";
  v17 = "Unexpectedly found nil while unwrapping an Optional value";
  v18 = "EnergyKitFoundation/UUID.swift";
  v43 = 0;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  v19 = 0;
  v37 = sub_1D208C5FC();
  v33 = *(v37 - 8);
  v34 = v37 - 8;
  v20 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v35 = &v12 - v20;
  v23 = sub_1D208BF8C();
  v24 = *(v23 - 8);
  v25 = v23 - 8;
  v27 = *(v24 + 64);
  v26 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v31);
  v28 = &v12 - v26;
  v29 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v30 = &v12 - v29;
  v43 = &v12 - v29;
  v41 = v6;
  v42 = v7;
  v39 = v8;
  v40 = v9;
  sub_1D208C5EC();
  sub_1D1FCD65C();
  v36 = sub_1D208C5DC();
  v38 = v10;
  (*(v33 + 8))(v35, v37);
  if ((v38 & 0xF000000000000000) == 0xF000000000000000)
  {
    sub_1D208CA2C();
    __break(1u);
  }

  else
  {
    v13 = v36;
    v14 = v38;
  }

  UUID.init(data:namespace:)(v13, v14, v21, v22, v28);
  (*(v24 + 32))(v30, v28, v23);
  (*(v24 + 16))(v15, v30, v23);

  return (*(v24 + 8))(v30, v23);
}

uint64_t UUID.init(data:namespace:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a5;
  v26 = a1;
  v25 = a2;
  v36 = a3;
  v37 = a4;
  v20 = "Fatal error";
  v21 = "Unexpectedly found nil while unwrapping an Optional value";
  v22 = "EnergyKitFoundation/UUID.swift";
  v48 = 0;
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  v23 = 0;
  v42 = sub_1D208C5FC();
  v38 = *(v42 - 8);
  v39 = v42 - 8;
  v24 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v40 = &v17 - v24;
  v27 = sub_1D208BF8C();
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v17 - v30;
  v32 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v33 = &v17 - v32;
  v48 = &v17 - v32;
  v46 = v7;
  v47 = v8;
  v44 = v9;
  v45 = v10;
  v34 = sub_1D208CB2C();
  v35 = v11;
  sub_1D208C5EC();
  sub_1D1FCD65C();
  v41 = sub_1D208C5DC();
  v43 = v12;
  (*(v38 + 8))(v40, v42);
  if ((v43 & 0xF000000000000000) == 0xF000000000000000)
  {
    sub_1D208CA2C();
    __break(1u);
  }

  else
  {
    v17 = v41;
    v18 = v43;
  }

  v13 = v34;
  v14 = v35;
  v15 = v18;
  *v35 = v17;
  v14[1] = v15;
  sub_1D1FCECE8();
  UUID.init(data:salts:)(v26, v25, v13, v31);
  (*(v28 + 32))(v33, v31, v27);
  (*(v28 + 16))(v19, v33, v27);

  return (*(v28 + 8))(v33, v27);
}

uint64_t UUID.init(uuid:namespace:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17 = a4;
  v20 = a1;
  v14 = a2;
  v15 = a3;
  v28 = 0;
  v27 = 0;
  v25 = 0;
  v26 = 0;
  v22 = sub_1D208BF8C();
  v18 = *(v22 - 8);
  v19 = v22 - 8;
  v12 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22);
  v16 = &v11 - v12;
  v13 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v11 - v12);
  v21 = &v11 - v13;
  v28 = &v11 - v13;
  v27 = a1;
  v25 = v6;
  v26 = v7;
  v8 = UUID.data.getter();
  UUID.init(data:namespace:)(v8, v9, v14, v15, v16);
  (*(v18 + 32))(v21, v16, v22);
  (*(v18 + 16))(v17, v21, v22);
  v24 = *(v18 + 8);
  v23 = v18 + 8;
  v24(v20, v22);
  return (v24)(v21, v22);
}

uint64_t UUID.data.getter()
{
  v11 = v0;
  *&v9 = sub_1D208BF6C();
  *(&v9 + 1) = v1;
  v12 = v9;
  *&v13 = v9;
  *(&v13 + 1) = v1;
  v8 = v13;
  v7 = v4;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEEB0, &qword_1D208FC08);
  sub_1D202C62C(&v8, sub_1D202C600, v6, v2, MEMORY[0x1E69E73E0], MEMORY[0x1E6969080], MEMORY[0x1E69E7410], v5);
  return v10;
}

uint64_t UUID.init(uuid:namespace:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a3;
  v23 = a1;
  v22 = a2;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v25 = sub_1D208BF8C();
  v20 = *(v25 - 8);
  v21 = v25 - 8;
  v10 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v14 = &v9 - v10;
  v11 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v9 - v10);
  v16 = &v9 - v11;
  v12 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v9 - v11);
  v24 = &v9 - v12;
  v30 = &v9 - v12;
  v29 = a1;
  v28 = v6;
  v15 = UUID.data.getter();
  v13 = v7;
  v18 = *(v20 + 16);
  v17 = v20 + 16;
  v18(v14, v22, v25);
  UUID.init(data:namespace:)(v15, v13, v14, v16);
  (*(v20 + 32))(v24, v16, v25);
  v18(v19, v24, v25);
  v27 = *(v20 + 8);
  v26 = v20 + 8;
  v27(v22, v25);
  v27(v23, v25);
  return (v27)(v24, v25);
}

uint64_t UUID.init(data:namespace:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v22 = a1;
  v21 = a2;
  v27 = a3;
  v35 = 0;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v29 = sub_1D208BF8C();
  v25 = *(v29 - 8);
  v26 = v29 - 8;
  v16 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v22);
  v23 = &v16 - v16;
  v17 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v16 - v17;
  v35 = &v16 - v17;
  v33 = v7;
  v34 = v8;
  v32 = a3;
  v20 = MEMORY[0x1E6969080];
  v19 = sub_1D208CB2C();
  v18 = v9;
  v10 = UUID.data.getter();
  v11 = v18;
  v12 = v10;
  v13 = v19;
  *v18 = v12;
  v11[1] = v14;
  sub_1D1FCECE8();
  UUID.init(data:salts:)(v22, v21, v13, v23);
  (*(v25 + 32))(v28, v23, v29);
  (*(v25 + 16))(v24, v28, v29);
  v31 = *(v25 + 8);
  v30 = v25 + 8;
  v31(v27, v29);
  return (v31)(v28, v29);
}

uint64_t UUID.init(data:salts:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a3;
  v69 = a2;
  v68 = a1;
  v48 = a4;
  v52 = 0;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v85[1] = 0;
  v85[0] = 0;
  v79 = 0;
  v78 = 0;
  v49 = 0;
  v76 = 0;
  v75 = 0;
  v50 = sub_1D208C4CC();
  v4 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](0);
  v51 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1D208C4FC();
  v54 = *(v53 - 8);
  v55 = v54;
  v56 = *(v54 + 64);
  v6 = MEMORY[0x1EEE9AC00](v52);
  v58 = (v56 + 15) & 0xFFFFFFFFFFFFFFF0;
  v57 = &v23 - v58;
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v23 - v58;
  v90 = &v23 - v58;
  v61 = sub_1D208BF8C();
  v62 = *(v61 - 8);
  v63 = v62;
  v64 = *(v62 + 64);
  v7 = MEMORY[0x1EEE9AC00](v68);
  v66 = (v64 + 15) & 0xFFFFFFFFFFFFFFF0;
  v65 = &v23 - v66;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v67 = &v23 - v66;
  v89 = &v23 - v66;
  v87 = v8;
  v88 = v9;
  v86 = v10;
  sub_1D1FD0018(v8, v9);
  v85[5] = v68;
  v85[6] = v69;
  v70 = sub_1D2027678();
  if (sub_1D208C82C())
  {
    sub_1D202C754();
    LODWORD(v22) = 0;
    v21 = 74;
    sub_1D208CA3C();
    __break(1u);
  }

  sub_1D1FD0094(v68, v69);

  v85[4] = v60;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE90, &qword_1D208FBF8);
  v45 = v46;
  v47 = sub_1D202C78C();
  if (sub_1D208C82C())
  {
    sub_1D202C754();
    LODWORD(v22) = 0;
    v21 = 75;
    sub_1D208CA3C();
    __break(1u);
  }

  sub_1D208C4EC();
  v85[2] = v68;
  v85[3] = v69;
  v42 = sub_1D202C814();
  v41 = v42;
  v43 = sub_1D202C894();
  sub_1D208C4BC();

  v84 = v60;
  sub_1D208C83C();
  for (i = v49; ; i = v25)
  {
    v38 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEEB8, &qword_1D208FC10);
    sub_1D208CA1C();
    v39 = v82;
    v40 = v83;
    if (v83 >> 60 == 15)
    {
      break;
    }

    v36 = v39;
    v37 = v40;
    v27 = v40;
    v26 = v39;
    v75 = v39;
    v76 = v40;
    sub_1D1FD0018(v39, v40);
    v73 = v26;
    v74 = v27;
    v15 = sub_1D208C82C();
    if (v15)
    {
      sub_1D202C754();
      LODWORD(v22) = 0;
      v21 = 85;
      sub_1D208CA3C();
      __break(1u);
    }

    v25 = v38;
    sub_1D1FD0094(v26, v27);
    v71 = v26;
    v72 = v27;
    sub_1D208C4BC();
    sub_1D1FD0094(v26, v27);
  }

  sub_1D1FD3C38(v85);
  sub_1D208BF7C();
  v11 = sub_1D208BF6C();
  v12 = v57;
  *&v80 = v11;
  *(&v80 + 1) = v13;
  v81[1] = v80;
  *&v81[0] = v11;
  *(&v81[0] + 1) = v13;
  v28 = *(v63 + 8);
  v29 = (v63 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v65, v61);
  (*(v55 + 16))(v12, v59, v53);
  sub_1D208C4DC();
  v30 = *(v55 + 8);
  v31 = (v55 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v30(v57, v53);
  sub_1D202C90C();
  v34 = sub_1D208BD5C();
  v35 = v14;
  v32 = v34;
  v33 = v14;
  v78 = v34;
  v79 = v14;
  sub_1D1FD0018(v34, v14);
  if (MEMORY[0x1D3893FB0](v34, v35) <= 16)
  {
    sub_1D202C754();
    LODWORD(v22) = 0;
    v21 = 92;
    sub_1D208CA3C();
    __break(1u);
  }

  v16 = v38;
  sub_1D1FD0094(v32, v33);
  sub_1D1FD0018(v32, v33);
  v23 = &v23;
  MEMORY[0x1EEE9AC00](&v23);
  v24 = &v23 - 4;
  v21 = v32;
  v22 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEEB0, &qword_1D208FC08);
  sub_1D202C480(v81, sub_1D202C98C, v24, v18, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v19);
  if (v16)
  {
    result = sub_1D1FD0094(v32, v33);
    __break(1u);
  }

  else
  {
    sub_1D1FD0094(v32, v33);
    BYTE6(v81[0]) = BYTE6(v81[0]) & 0xF | 0x50;
    BYTE8(v81[0]) = BYTE8(v81[0]) & 0x3F | 0x80;
    v77 = v81[0];
    v21 = *(&v81[0] + 1);
    sub_1D208BF5C();
    (*(v63 + 32))(v67, v65, v61);
    sub_1D1FD0094(v32, v33);
    v30(v59, v53);
    (*(v63 + 16))(v48, v67, v61);

    sub_1D1FD0094(v68, v69);
    v28(v67, v61);
    return v23;
  }

  return result;
}

uint64_t UUID.init(string:namespace:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a4;
  v37 = a1;
  v38 = a2;
  v26 = a3;
  v21 = "Fatal error";
  v22 = "Unexpectedly found nil while unwrapping an Optional value";
  v23 = "EnergyKitFoundation/UUID.swift";
  v48 = 0;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  v24 = 0;
  v43 = sub_1D208C5FC();
  v39 = *(v43 - 8);
  v40 = v43 - 8;
  v25 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v41 = &v11 - v25;
  v27 = sub_1D208BF8C();
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  v33 = *(v28 + 64);
  v30 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v37);
  v31 = &v11 - v30;
  v32 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v34 = &v11 - v32;
  v35 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v36 = &v11 - v35;
  v48 = &v11 - v35;
  v46 = v6;
  v47 = v7;
  v45 = v8;
  sub_1D208C5EC();
  sub_1D1FCD65C();
  v42 = sub_1D208C5DC();
  v44 = v9;
  (*(v39 + 8))(v41, v43);
  if ((v44 & 0xF000000000000000) == 0xF000000000000000)
  {
    sub_1D208CA2C();
    __break(1u);
  }

  else
  {
    v18 = v42;
    v19 = v44;
  }

  v12 = v19;
  v13 = v18;
  v15 = *(v28 + 16);
  v14 = v28 + 16;
  v15(v31, v26, v27);
  UUID.init(data:namespace:)(v13, v12, v31, v34);
  (*(v28 + 32))(v36, v34, v27);
  v15(v20, v36, v27);
  v17 = *(v28 + 8);
  v16 = v28 + 8;
  v17(v26, v27);

  return (v17)(v36, v27);
}

uint64_t sub_1D202BDD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17 = a1;
  v15 = a2;
  v16 = a3;
  sub_1D1FD0018(a2, a3);
  v13 = a2;
  v14 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEEB0, &qword_1D208FC08);
  sub_1D202BFCC(MEMORY[0x1E69E7508], 16, sub_1D202C9BC, v12, a1, v5, MEMORY[0x1E69E7508], MEMORY[0x1E69E73E0], a4, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v4);
  result = sub_1D1FD0094(a2, a3);
  if (v11)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D202BF00(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1D1FD0018(a2, a3);
  sub_1D202C9EC();
  sub_1D208C7CC();

  sub_1D208C8DC();
  swift_unknownObjectRelease();
}

char *sub_1D202BFCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v21 = a9;
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a8;
  v29 = a12;
  v30 = "Fatal error";
  v31 = "Division results in an overflow in remainder operation";
  v32 = "Swift/IntegerTypes.swift";
  v33 = "Division by zero in remainder operation";
  v34 = "self must be a properly aligned pointer for types Pointee and T";
  v35 = "Swift/UnsafePointer.swift";
  v46 = a6;
  v45 = a7;
  v44 = a8;
  v43 = a10;
  v36 = *(a8 - 8);
  v37 = a8 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  result = &v17 - v38;
  v39 = &v17 - v38;
  v40 = *(v13 - 8);
  v41 = v13 - 8;
  v14 = *(v40 + 80) + 1;
  v42 = *(v40 + 80);
  if (__OFSUB__(v14, 1))
  {
    __break(1u);
    return result;
  }

  if ((v25 & v42) == 0)
  {
    if (v22 == 1)
    {
      goto LABEL_23;
    }

    v19 = *(*(v26 - 8) + 72);
    v20 = *(v40 + 72);
    if (v20 >= v19)
    {
      if (v19)
      {
        if (v20 != 0x8000000000000000 || v19 != -1)
        {
          v18 = v20 % v19 == 0;
          goto LABEL_18;
        }

        sub_1D208CA2C();
        __break(1u);
      }

      sub_1D208CA2C();
      __break(1u);
    }

    if (v20)
    {
      if (v19 != 0x8000000000000000 || v20 != -1)
      {
        v18 = v19 % v20 == 0;
LABEL_18:
        if (v18)
        {
          goto LABEL_23;
        }

        goto LABEL_19;
      }

      sub_1D208CA2C();
      __break(1u);
    }

    sub_1D208CA2C();
    __break(1u);
    goto LABEL_23;
  }

LABEL_19:
  sub_1D208CA4C();
  __break(1u);
LABEL_23:
  v16 = v28;
  result = v23(v25, v39);
  v17 = v16;
  if (v16)
  {
    return (*(v36 + 32))(v29, v39, v27);
  }

  return result;
}

uint64_t sub_1D202C480(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a2;
  v12 = a5;
  v13 = a8;
  v22 = a4;
  v21 = a5;
  v20 = a6;
  v14 = *(a5 - 8);
  v15 = a5 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00]();
  v18 = &v11 - v16;
  result = v17(v9);
  v19 = v8;
  if (v8)
  {
    return (*(v14 + 32))(v13, v18, v12);
  }

  return result;
}

uint64_t sub_1D202C580@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D208BF6C();
  result = MEMORY[0x1D3893FA0](a1, 16);
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D202C62C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a2;
  v12 = a5;
  v13 = a8;
  v22 = a4;
  v21 = a5;
  v20 = a6;
  v14 = *(a5 - 8);
  v15 = a5 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00]();
  v18 = &v11 - v16;
  result = v17(v9);
  v19 = v8;
  if (v8)
  {
    return (*(v14 + 32))(v13, v18, v12);
  }

  return result;
}

unint64_t sub_1D202C78C()
{
  v2 = qword_1EE0829F8;
  if (!qword_1EE0829F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BEE90, &qword_1D208FBF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EE0829F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D202C814()
{
  v2 = qword_1EE082A00;
  if (!qword_1EE082A00)
  {
    sub_1D208C4FC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EE082A00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D202C894()
{
  v2 = qword_1EE082A10;
  if (!qword_1EE082A10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EE082A10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D202C90C()
{
  v2 = qword_1EE082A08;
  if (!qword_1EE082A08)
  {
    sub_1D208C4CC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EE082A08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D202C9EC()
{
  v2 = qword_1EE082A30;
  if (!qword_1EE082A30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EE082A30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D202CA64()
{
  v2 = qword_1EC6BEEC0;
  if (!qword_1EC6BEEC0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC6BEEC0);
    return ObjCClassMetadata;
  }

  return v2;
}