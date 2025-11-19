_BYTE *sub_1D2071A98(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xE0)
  {
    v5 = ((a3 + 31) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xE0)
  {
    v4 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 31;
    }
  }

  return result;
}

void *sub_1D2071CA8(const void *a1, void *a2)
{
  v6 = sub_1D208C21C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF318, &unk_1D2091A80);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_1D2071DD0(void *a1, void *a2)
{
  v9 = type metadata accessor for EnergySitePayload.CurrentRatePlan();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEDF0, &unk_1D208F480);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v6 = a2 + *(v9 + 20);
    v5 = a1 + *(v9 + 20);
    v2 = sub_1D208C21C();
    (*(*(v2 - 8) + 32))(v6, v5);
    (*(v10 + 56))(a2, 0, 1, v9);
  }

  return a2;
}

void *sub_1D2071F2C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928]();
  result = a2;
  *a2 = v3;
  return result;
}

uint64_t sub_1D2071F6C(uint64_t result, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) != 0xF000000000000000)
  {
    return sub_1D1FD0018(result, a2);
  }

  return result;
}

uint64_t sub_1D2071FB4(uint64_t result, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) != 0xF000000000000000)
  {
    return sub_1D1FD0094(result, a2);
  }

  return result;
}

char *sub_1D2071FFC(char *a1, char *a2)
{
  v2 = *a1;
  v3 = *a2;
  *a2 = v2;

  v6 = *(type metadata accessor for EnergySitePayload.CurrentRatePlan() + 20);
  v4 = sub_1D208C21C();
  (*(*(v4 - 8) + 40))(&a2[v6], &a1[v6]);
  return a2;
}

uint64_t UsagePointPayload.utilityID.getter()
{
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t UsagePointPayload.utilityID.setter(uint64_t a1, uint64_t a2)
{

  v3 = v2[1];
  *v2 = a1;
  v2[1] = a2;
}

uint64_t UsagePointPayload.subscriptionID.getter()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return v2;
}

uint64_t UsagePointPayload.subscriptionID.setter(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t UsagePointPayload.usagePointID.getter()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  return v2;
}

uint64_t UsagePointPayload.usagePointID.setter(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t UsagePointPayload.sourceTime.getter@<X0>(uint64_t a1@<X8>)
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
  v3 = type metadata accessor for UsagePointPayload();
  sub_1D1FD5F1C((v1 + *(v3 + 40)), v10);
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

uint64_t type metadata accessor for UsagePointPayload()
{
  v1 = qword_1EC6C7000;
  if (!qword_1EC6C7000)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

char *sub_1D20725AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v7 = (*(*(type metadata accessor for UsagePointPayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v13 = &v4 - v7;
  sub_1D207E60C(v2, &v4 - v7);
  UsagePointPayload.sourceTime.getter(v11);
  (*(v8 + 32))(v10, v11, v12);
  return sub_1D207E880(v13);
}

uint64_t sub_1D20726E8(uint64_t a1)
{
  v4 = a1;
  v1 = sub_1D208C1EC();
  v6 = *(v1 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v7 = &v4 - v5;
  (*(v6 + 16))(v2);
  return UsagePointPayload.sourceTime.setter(v7);
}

uint64_t UsagePointPayload.sourceTime.setter(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v8 = &v5 - v6;
  v14 = v2;
  v13 = v1;
  v7 = 0;
  v11 = sub_1D208C1EC();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  (*(v9 + 16))(v8, v12);
  (*(v9 + 56))(v8, 0, 1, v11);
  v3 = type metadata accessor for UsagePointPayload();
  sub_1D1FD6448(v8, (v1 + *(v3 + 40)));
  return (*(v9 + 8))(v12, v11);
}

void (*UsagePointPayload.sourceTime.modify(void *a1))(uint64_t **a1, char a2)
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
  UsagePointPayload.sourceTime.getter(v8);
  return sub_1D2072A20;
}

void sub_1D2072A20(uint64_t **a1, char a2)
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
    UsagePointPayload.sourceTime.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    UsagePointPayload.sourceTime.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

BOOL UsagePointPayload.hasSourceTime.getter()
{
  v11 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v10 = &v5 - v8;
  v11 = v0;
  v9 = 0;
  v2 = type metadata accessor for UsagePointPayload();
  sub_1D1FD5F1C((v0 + *(v2 + 40)), v10);
  v3 = sub_1D208C1EC();
  v7 = (*(*(v3 - 8) + 48))(v10, 1) != 1;
  v6 = v7;
  sub_1D1FD6044(v10);
  return v6;
}

Swift::Void __swiftcall UsagePointPayload.clearSourceTime()()
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
  v3 = type metadata accessor for UsagePointPayload();
  sub_1D1FD6448(v5, (v0 + *(v3 + 40)));
}

uint64_t type metadata accessor for UsagePointPayload.TariffProfile()
{
  v1 = qword_1EC6C7020;
  if (!qword_1EC6C7020)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t UsagePointPayload.tariffProfiles.getter()
{
  v2 = *(v0 + 48);

  return v2;
}

uint64_t UsagePointPayload.tariffProfiles.setter(uint64_t a1)
{

  v2 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t type metadata accessor for UsagePointPayload.TariffRider()
{
  v1 = qword_1EC6C7010;
  if (!qword_1EC6C7010)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t UsagePointPayload.riders.getter()
{
  v2 = *(v0 + 56);

  return v2;
}

uint64_t UsagePointPayload.riders.setter(uint64_t a1)
{

  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t UsagePointPayload.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for UsagePointPayload() + 36);
  v2 = sub_1D208C21C();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t UsagePointPayload.unknownFields.setter(uint64_t a1)
{
  v13 = a1;
  v15 = 0;
  v14 = 0;
  v8 = 0;
  v12 = sub_1D208C21C();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v12);
  v9 = &v6 - v7;
  v15 = v3;
  v14 = v1;
  (*(v10 + 16))(v2);
  v4 = type metadata accessor for UsagePointPayload();
  (*(v10 + 40))(v1 + *(v4 + 36), v9, v12);
  return (*(v10 + 8))(v13, v12);
}

uint64_t UsagePointPayload.TariffRider.riderID.getter()
{
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t UsagePointPayload.TariffRider.riderID.setter(uint64_t a1, uint64_t a2)
{

  v3 = v2[1];
  *v2 = a1;
  v2[1] = a2;
}

uint64_t UsagePointPayload.TariffRider.start.getter@<X0>(uint64_t a1@<X8>)
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
  v3 = type metadata accessor for UsagePointPayload.TariffRider();
  sub_1D1FD5F1C((v1 + *(v3 + 24)), v10);
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

uint64_t sub_1D20734BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v7 = (*(*(type metadata accessor for UsagePointPayload.TariffRider() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v13 = &v4 - v7;
  sub_1D207E17C(v2, &v4 - v7);
  UsagePointPayload.TariffRider.start.getter(v11);
  (*(v8 + 32))(v10, v11, v12);
  return sub_1D207E470(v13);
}

uint64_t sub_1D20735F8(uint64_t a1)
{
  v4 = a1;
  v1 = sub_1D208C1EC();
  v6 = *(v1 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v7 = &v4 - v5;
  (*(v6 + 16))(v2);
  return UsagePointPayload.TariffRider.start.setter(v7);
}

uint64_t UsagePointPayload.TariffRider.start.setter(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v8 = &v5 - v6;
  v14 = v2;
  v13 = v1;
  v7 = 0;
  v11 = sub_1D208C1EC();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  (*(v9 + 16))(v8, v12);
  (*(v9 + 56))(v8, 0, 1, v11);
  v3 = type metadata accessor for UsagePointPayload.TariffRider();
  sub_1D1FD6448(v8, (v1 + *(v3 + 24)));
  return (*(v9 + 8))(v12, v11);
}

void (*UsagePointPayload.TariffRider.start.modify(void *a1))(uint64_t **a1, char a2)
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
  UsagePointPayload.TariffRider.start.getter(v8);
  return sub_1D2073930;
}

void sub_1D2073930(uint64_t **a1, char a2)
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
    UsagePointPayload.TariffRider.start.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    UsagePointPayload.TariffRider.start.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

BOOL UsagePointPayload.TariffRider.hasStart.getter()
{
  v11 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v10 = &v5 - v8;
  v11 = v0;
  v9 = 0;
  v2 = type metadata accessor for UsagePointPayload.TariffRider();
  sub_1D1FD5F1C((v0 + *(v2 + 24)), v10);
  v3 = sub_1D208C1EC();
  v7 = (*(*(v3 - 8) + 48))(v10, 1) != 1;
  v6 = v7;
  sub_1D1FD6044(v10);
  return v6;
}

Swift::Void __swiftcall UsagePointPayload.TariffRider.clearStart()()
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
  v3 = type metadata accessor for UsagePointPayload.TariffRider();
  sub_1D1FD6448(v5, (v0 + *(v3 + 24)));
}

uint64_t UsagePointPayload.TariffRider.end.getter@<X0>(uint64_t a1@<X8>)
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
  v3 = type metadata accessor for UsagePointPayload.TariffRider();
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

  sub_1D208BDEC();
  sub_1D208C1CC();
  result = (v14)(v10, 1, v11);
  if (result != 1)
  {
    return sub_1D1FD6044(v10);
  }

  return result;
}

uint64_t sub_1D2073E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v7 = (*(*(type metadata accessor for UsagePointPayload.TariffRider() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v13 = &v4 - v7;
  sub_1D207E17C(v2, &v4 - v7);
  UsagePointPayload.TariffRider.end.getter(v11);
  (*(v8 + 32))(v10, v11, v12);
  return sub_1D207E470(v13);
}

uint64_t sub_1D2073F44(uint64_t a1)
{
  v4 = a1;
  v1 = sub_1D208C1EC();
  v6 = *(v1 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v7 = &v4 - v5;
  (*(v6 + 16))(v2);
  return UsagePointPayload.TariffRider.end.setter(v7);
}

uint64_t UsagePointPayload.TariffRider.end.setter(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v8 = &v5 - v6;
  v14 = v2;
  v13 = v1;
  v7 = 0;
  v11 = sub_1D208C1EC();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  (*(v9 + 16))(v8, v12);
  (*(v9 + 56))(v8, 0, 1, v11);
  v3 = type metadata accessor for UsagePointPayload.TariffRider();
  sub_1D1FD6448(v8, (v1 + *(v3 + 28)));
  return (*(v9 + 8))(v12, v11);
}

void (*UsagePointPayload.TariffRider.end.modify(void *a1))(uint64_t **a1, char a2)
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
  UsagePointPayload.TariffRider.end.getter(v8);
  return sub_1D207427C;
}

void sub_1D207427C(uint64_t **a1, char a2)
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
    UsagePointPayload.TariffRider.end.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    UsagePointPayload.TariffRider.end.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

BOOL UsagePointPayload.TariffRider.hasEnd.getter()
{
  v11 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v10 = &v5 - v8;
  v11 = v0;
  v9 = 0;
  v2 = type metadata accessor for UsagePointPayload.TariffRider();
  sub_1D1FD5F1C((v0 + *(v2 + 28)), v10);
  v3 = sub_1D208C1EC();
  v7 = (*(*(v3 - 8) + 48))(v10, 1) != 1;
  v6 = v7;
  sub_1D1FD6044(v10);
  return v6;
}

Swift::Void __swiftcall UsagePointPayload.TariffRider.clearEnd()()
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
  v3 = type metadata accessor for UsagePointPayload.TariffRider();
  sub_1D1FD6448(v5, (v0 + *(v3 + 28)));
}

uint64_t UsagePointPayload.TariffRider.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for UsagePointPayload.TariffRider() + 20);
  v2 = sub_1D208C21C();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t UsagePointPayload.TariffRider.unknownFields.setter(uint64_t a1)
{
  v13 = a1;
  v15 = 0;
  v14 = 0;
  v8 = 0;
  v12 = sub_1D208C21C();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v12);
  v9 = &v6 - v7;
  v15 = v3;
  v14 = v1;
  (*(v10 + 16))(v2);
  v4 = type metadata accessor for UsagePointPayload.TariffRider();
  (*(v10 + 40))(v1 + *(v4 + 20), v9, v12);
  return (*(v10 + 8))(v13, v12);
}

char *UsagePointPayload.TariffRider.init()@<X0>(char *a1@<X8>)
{
  v19 = a1;
  v20 = 0;
  v11 = 0;
  v13 = type metadata accessor for UsagePointPayload.TariffRider();
  v10 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v9 - v10;
  v20 = &v9 - v10;
  v1 = sub_1D208C51C();
  v2 = v18;
  v3 = v1;
  v4 = v13;
  *v18 = v3;
  *(v2 + 1) = v5;
  v6 = *(v4 + 20);
  sub_1D208C20C();
  v12 = *(v13 + 24);
  v15 = sub_1D208C1EC();
  v7 = *(v15 - 8);
  v17 = *(v7 + 56);
  v16 = v7 + 56;
  v14 = 1;
  v17(&v18[v12], 1);
  (v17)(&v18[*(v13 + 28)], v14, v14, v15);
  return sub_1D20748C8(v18, v19);
}

char *sub_1D20748C8(char *a1, char *a2)
{
  *a2 = *a1;
  v10 = type metadata accessor for UsagePointPayload.TariffRider();
  v8 = v10[5];
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 32))(&a2[v8], &a1[v8]);
  v11 = v10[6];
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

  __dst = &a2[v10[7]];
  __src = &a1[v10[7]];
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

uint64_t sub_1D2074BE4(uint64_t a1)
{
  v8 = a1;
  v10 = 0;
  v9 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  v10 = v2;
  v9 = v1;
  sub_1D1FD5F1C(v2, &v5 - v6);
  v3 = type metadata accessor for UsagePointPayload.TariffRider();
  sub_1D1FD6448(v7, (v1 + *(v3 + 24)));
  return sub_1D1FD6044(v8);
}

uint64_t sub_1D2074CE8(uint64_t a1)
{
  v8 = a1;
  v10 = 0;
  v9 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  v10 = v2;
  v9 = v1;
  sub_1D1FD5F1C(v2, &v5 - v6);
  v3 = type metadata accessor for UsagePointPayload.TariffRider();
  sub_1D1FD6448(v7, (v1 + *(v3 + 28)));
  return sub_1D1FD6044(v8);
}

uint64_t UsagePointPayload.TariffProfile.tariffProfileID.getter()
{
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t UsagePointPayload.TariffProfile.tariffProfileID.setter(uint64_t a1, uint64_t a2)
{

  v3 = v2[1];
  *v2 = a1;
  v2[1] = a2;
}

uint64_t UsagePointPayload.TariffProfile.start.getter@<X0>(uint64_t a1@<X8>)
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
  v3 = type metadata accessor for UsagePointPayload.TariffProfile();
  sub_1D1FD5F1C((v1 + *(v3 + 24)), v10);
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

uint64_t sub_1D207507C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v7 = (*(*(type metadata accessor for UsagePointPayload.TariffProfile() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v13 = &v4 - v7;
  sub_1D207DCEC(v2, &v4 - v7);
  UsagePointPayload.TariffProfile.start.getter(v11);
  (*(v8 + 32))(v10, v11, v12);
  return sub_1D207DFE0(v13);
}

uint64_t sub_1D20751B8(uint64_t a1)
{
  v4 = a1;
  v1 = sub_1D208C1EC();
  v6 = *(v1 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v7 = &v4 - v5;
  (*(v6 + 16))(v2);
  return UsagePointPayload.TariffProfile.start.setter(v7);
}

uint64_t UsagePointPayload.TariffProfile.start.setter(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v8 = &v5 - v6;
  v14 = v2;
  v13 = v1;
  v7 = 0;
  v11 = sub_1D208C1EC();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  (*(v9 + 16))(v8, v12);
  (*(v9 + 56))(v8, 0, 1, v11);
  v3 = type metadata accessor for UsagePointPayload.TariffProfile();
  sub_1D1FD6448(v8, (v1 + *(v3 + 24)));
  return (*(v9 + 8))(v12, v11);
}

void (*UsagePointPayload.TariffProfile.start.modify(void *a1))(uint64_t **a1, char a2)
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
  UsagePointPayload.TariffProfile.start.getter(v8);
  return sub_1D20754F0;
}

void sub_1D20754F0(uint64_t **a1, char a2)
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
    UsagePointPayload.TariffProfile.start.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    UsagePointPayload.TariffProfile.start.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

BOOL UsagePointPayload.TariffProfile.hasStart.getter()
{
  v11 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v10 = &v5 - v8;
  v11 = v0;
  v9 = 0;
  v2 = type metadata accessor for UsagePointPayload.TariffProfile();
  sub_1D1FD5F1C((v0 + *(v2 + 24)), v10);
  v3 = sub_1D208C1EC();
  v7 = (*(*(v3 - 8) + 48))(v10, 1) != 1;
  v6 = v7;
  sub_1D1FD6044(v10);
  return v6;
}

Swift::Void __swiftcall UsagePointPayload.TariffProfile.clearStart()()
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
  v3 = type metadata accessor for UsagePointPayload.TariffProfile();
  sub_1D1FD6448(v5, (v0 + *(v3 + 24)));
}

uint64_t UsagePointPayload.TariffProfile.end.getter@<X0>(uint64_t a1@<X8>)
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
  v3 = type metadata accessor for UsagePointPayload.TariffProfile();
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

  sub_1D208BDEC();
  sub_1D208C1CC();
  result = (v14)(v10, 1, v11);
  if (result != 1)
  {
    return sub_1D1FD6044(v10);
  }

  return result;
}

uint64_t sub_1D20759C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v7 = (*(*(type metadata accessor for UsagePointPayload.TariffProfile() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v13 = &v4 - v7;
  sub_1D207DCEC(v2, &v4 - v7);
  UsagePointPayload.TariffProfile.end.getter(v11);
  (*(v8 + 32))(v10, v11, v12);
  return sub_1D207DFE0(v13);
}

uint64_t sub_1D2075B04(uint64_t a1)
{
  v4 = a1;
  v1 = sub_1D208C1EC();
  v6 = *(v1 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v7 = &v4 - v5;
  (*(v6 + 16))(v2);
  return UsagePointPayload.TariffProfile.end.setter(v7);
}

uint64_t UsagePointPayload.TariffProfile.end.setter(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v8 = &v5 - v6;
  v14 = v2;
  v13 = v1;
  v7 = 0;
  v11 = sub_1D208C1EC();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  (*(v9 + 16))(v8, v12);
  (*(v9 + 56))(v8, 0, 1, v11);
  v3 = type metadata accessor for UsagePointPayload.TariffProfile();
  sub_1D1FD6448(v8, (v1 + *(v3 + 28)));
  return (*(v9 + 8))(v12, v11);
}

void (*UsagePointPayload.TariffProfile.end.modify(void *a1))(uint64_t **a1, char a2)
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
  UsagePointPayload.TariffProfile.end.getter(v8);
  return sub_1D2075E3C;
}

void sub_1D2075E3C(uint64_t **a1, char a2)
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
    UsagePointPayload.TariffProfile.end.setter(v7);
    (*(v4 + 8))(v6, v5);
    free(v6);
    free(v7);
  }

  else
  {
    v8 = v10[4];
    v9 = v10[3];
    v2 = *v10;
    UsagePointPayload.TariffProfile.end.setter(v8);
    free(v8);
    free(v9);
  }

  free(v10);
}

BOOL UsagePointPayload.TariffProfile.hasEnd.getter()
{
  v11 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v10 = &v5 - v8;
  v11 = v0;
  v9 = 0;
  v2 = type metadata accessor for UsagePointPayload.TariffProfile();
  sub_1D1FD5F1C((v0 + *(v2 + 28)), v10);
  v3 = sub_1D208C1EC();
  v7 = (*(*(v3 - 8) + 48))(v10, 1) != 1;
  v6 = v7;
  sub_1D1FD6044(v10);
  return v6;
}

Swift::Void __swiftcall UsagePointPayload.TariffProfile.clearEnd()()
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
  v3 = type metadata accessor for UsagePointPayload.TariffProfile();
  sub_1D1FD6448(v5, (v0 + *(v3 + 28)));
}

uint64_t UsagePointPayload.TariffProfile.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for UsagePointPayload.TariffProfile() + 20);
  v2 = sub_1D208C21C();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t UsagePointPayload.TariffProfile.unknownFields.setter(uint64_t a1)
{
  v13 = a1;
  v15 = 0;
  v14 = 0;
  v8 = 0;
  v12 = sub_1D208C21C();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v12);
  v9 = &v6 - v7;
  v15 = v3;
  v14 = v1;
  (*(v10 + 16))(v2);
  v4 = type metadata accessor for UsagePointPayload.TariffProfile();
  (*(v10 + 40))(v1 + *(v4 + 20), v9, v12);
  return (*(v10 + 8))(v13, v12);
}

char *UsagePointPayload.TariffProfile.init()@<X0>(char *a1@<X8>)
{
  v19 = a1;
  v20 = 0;
  v11 = 0;
  v13 = type metadata accessor for UsagePointPayload.TariffProfile();
  v10 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v9 - v10;
  v20 = &v9 - v10;
  v1 = sub_1D208C51C();
  v2 = v18;
  v3 = v1;
  v4 = v13;
  *v18 = v3;
  *(v2 + 1) = v5;
  v6 = *(v4 + 20);
  sub_1D208C20C();
  v12 = *(v13 + 24);
  v15 = sub_1D208C1EC();
  v7 = *(v15 - 8);
  v17 = *(v7 + 56);
  v16 = v7 + 56;
  v14 = 1;
  v17(&v18[v12], 1);
  (v17)(&v18[*(v13 + 28)], v14, v14, v15);
  return sub_1D2076488(v18, v19);
}

char *sub_1D2076488(char *a1, char *a2)
{
  *a2 = *a1;
  v10 = type metadata accessor for UsagePointPayload.TariffProfile();
  v8 = v10[5];
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 32))(&a2[v8], &a1[v8]);
  v11 = v10[6];
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

  __dst = &a2[v10[7]];
  __src = &a1[v10[7]];
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

uint64_t sub_1D20767A4(uint64_t a1)
{
  v8 = a1;
  v10 = 0;
  v9 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  v10 = v2;
  v9 = v1;
  sub_1D1FD5F1C(v2, &v5 - v6);
  v3 = type metadata accessor for UsagePointPayload.TariffProfile();
  sub_1D1FD6448(v7, (v1 + *(v3 + 24)));
  return sub_1D1FD6044(v8);
}

uint64_t sub_1D20768A8(uint64_t a1)
{
  v8 = a1;
  v10 = 0;
  v9 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  v10 = v2;
  v9 = v1;
  sub_1D1FD5F1C(v2, &v5 - v6);
  v3 = type metadata accessor for UsagePointPayload.TariffProfile();
  sub_1D1FD6448(v7, (v1 + *(v3 + 28)));
  return sub_1D1FD6044(v8);
}

uint64_t UsagePointPayload.init()@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v22 = 0;
  v18 = 0;
  v17 = type metadata accessor for UsagePointPayload();
  v16 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v15 - v16);
  v22 = &v15 - v16;
  v1 = sub_1D208C51C();
  v2 = v20;
  *v20 = v1;
  v2[1] = v3;
  v4 = sub_1D208C51C();
  v5 = v20;
  v20[2] = v4;
  v5[3] = v6;
  v7 = sub_1D208C51C();
  v8 = v20;
  v20[4] = v7;
  v8[5] = v9;
  type metadata accessor for UsagePointPayload.TariffProfile();
  v20[6] = sub_1D208CB2C();
  type metadata accessor for UsagePointPayload.TariffRider();
  v10 = sub_1D208CB2C();
  v11 = v17;
  v20[7] = v10;
  v12 = *(v11 + 36);
  sub_1D208C20C();
  v19 = *(v17 + 40);
  v13 = sub_1D208C1EC();
  (*(*(v13 - 8) + 56))(v20 + v19, 1);
  return sub_1D2076AD4(v20, v21);
}

uint64_t sub_1D2076AD4(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 56) = *(a1 + 56);
  v7 = type metadata accessor for UsagePointPayload();
  v5 = *(v7 + 36);
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 32))(a2 + v5, a1 + v5);
  v8 = *(v7 + 40);
  v10 = sub_1D208C1EC();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(a1 + v8, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy((a2 + v8), (a1 + v8), *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v11 + 32))();
    (*(v11 + 56))(a2 + v8, 0, 1, v10);
  }

  return a2;
}

uint64_t sub_1D2076D10(uint64_t a1)
{
  v8 = a1;
  v10 = 0;
  v9 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  v10 = v2;
  v9 = v1;
  sub_1D1FD5F1C(v2, &v5 - v6);
  v3 = type metadata accessor for UsagePointPayload();
  sub_1D1FD6448(v7, (v1 + *(v3 + 40)));
  return sub_1D1FD6044(v8);
}

uint64_t sub_1D2076DD4()
{
  result = sub_1D208C64C();
  qword_1EC6C6658 = result;
  qword_1EC6C6660 = v1;
  return result;
}

uint64_t *sub_1D2076E18()
{
  if (qword_1EC6C6650 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C6658;
}

uint64_t static UsagePointPayload.protoMessageName.getter()
{
  v0 = sub_1D2076E18();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_1D2076EB4()
{
  v22 = sub_1D208C47C();
  __swift_allocate_value_buffer(v22, qword_1EC6C6670);
  __swift_project_value_buffer(v22, qword_1EC6C6670);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v26 = v0;
  v1 = *(v29 + 48);
  *v0 = 1;
  v24 = v0 + v1;
  *v24 = "utilityID";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v27 = MEMORY[0x1E69AADC8];
  v23 = *MEMORY[0x1E69AADC8];
  v28 = *(*(sub_1D208C45C() - 8) + 104);
  (v28)(v24, v23);
  v25 = *(*(v29 - 8) + 72);
  v2 = *(v29 + 48);
  *(v26 + v25) = 2;
  v3 = v26 + v25 + v2;
  *v3 = "subscriptionID";
  *(v3 + 1) = 14;
  v3[16] = 2;
  v4 = *v27;
  v28();
  v5 = *(v29 + 48);
  v6 = (v26 + 2 * v25);
  *v6 = 3;
  v7 = v6 + v5;
  *v7 = "usagePointID";
  *(v7 + 1) = 12;
  v7[16] = 2;
  v8 = *v27;
  v28();
  v9 = *(v29 + 48);
  v10 = (v26 + 3 * v25);
  *v10 = 4;
  v11 = v10 + v9;
  *v11 = "sourceTime";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v12 = *v27;
  v28();
  v13 = *(v29 + 48);
  v14 = (v26 + 4 * v25);
  *v14 = 5;
  v15 = v14 + v13;
  *v15 = "tariffProfiles";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v16 = *v27;
  v28();
  v17 = *(v29 + 48);
  v18 = (v26 + 5 * v25);
  *v18 = 6;
  v19 = v18 + v17;
  *v19 = "riders";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v20 = *v27;
  v28();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D2077248()
{
  if (qword_1EC6C6668 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EC6C6670);
}

uint64_t static UsagePointPayload._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D2077248();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t UsagePointPayload.decodeMessage<A>(decoder:)()
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
        sub_1D2077628();
        break;
      case 5:
        sub_1D20776F0();
        break;
      case 6:
        sub_1D207779C();
        break;
    }

    v2 = 0;
  }

  return result;
}

uint64_t sub_1D2077628()
{
  v1 = *(type metadata accessor for UsagePointPayload() + 40);
  sub_1D208C1EC();
  sub_1D1FE1C64();
  return sub_1D208C33C();
}

uint64_t sub_1D20776F0()
{
  type metadata accessor for UsagePointPayload.TariffProfile();
  sub_1D207846C();
  return sub_1D208C32C();
}

uint64_t sub_1D207779C()
{
  type metadata accessor for UsagePointPayload.TariffRider();
  sub_1D20783EC();
  return sub_1D208C32C();
}

uint64_t UsagePointPayload.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v66 = a2;
  v67 = a3;
  v82 = 0;
  v81 = 0;
  v83 = a2;
  v71 = sub_1D208C21C();
  v72 = *(v71 - 8);
  v73 = v71 - 8;
  v74 = (*(v72 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v70);
  v75 = v15 - v74;
  v82 = v4;
  v81 = v3;
  v76 = *v3;
  v77 = v3[1];

  v78 = sub_1D208C66C();

  if (v78)
  {
    v61 = v69;
  }

  else
  {
    v5 = v69;
    v62 = *v68;
    v63 = v68[1];

    sub_1D208C41C();
    v64 = v5;
    v65 = v5;
    if (v5)
    {
      v19 = v65;

      v20 = v19;
      return result;
    }

    v61 = v64;
  }

  v57 = v61;
  v58 = v68[2];
  v59 = v68[3];

  v60 = sub_1D208C66C();

  if (v60)
  {
    v52 = v57;
  }

  else
  {
    v6 = v57;
    v53 = v68[2];
    v54 = v68[3];

    sub_1D208C41C();
    v55 = v6;
    v56 = v6;
    if (v6)
    {
      v18 = v56;

      v20 = v18;
      return result;
    }

    v52 = v55;
  }

  v48 = v52;
  v49 = v68[4];
  v50 = v68[5];

  v51 = sub_1D208C66C();

  if (v51)
  {
    v43 = v48;
  }

  else
  {
    v7 = v48;
    v44 = v68[4];
    v45 = v68[5];

    sub_1D208C41C();
    v46 = v7;
    v47 = v7;
    if (v7)
    {
      v17 = v47;

      v20 = v17;
      return result;
    }

    v43 = v46;
  }

  v8 = v43;
  result = sub_1D2078044(v68, v70, v66, v67);
  v41 = v8;
  v42 = v8;
  if (v8)
  {
    v20 = v42;
    return result;
  }

  v39 = v68[6];

  v80 = v39;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF380, &qword_1D2091CE0);
  sub_1D20782DC();
  v40 = sub_1D208C82C();

  if (v40)
  {
    v33 = v41;
  }

  else
  {
    v35 = v68[6];

    v34 = type metadata accessor for UsagePointPayload.TariffProfile();
    sub_1D207846C();
    v10 = v41;
    sub_1D208C43C();
    v36 = v10;
    v37 = v10;
    if (v10)
    {
      v16 = v37;

      v20 = v16;
      return result;
    }

    v33 = v36;
  }

  v29 = v33;
  v31 = v68[7];

  v79 = v31;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF390, &unk_1D2091CE8);
  sub_1D2078364();
  v32 = sub_1D208C82C();

  if (v32)
  {
    v24 = v29;
  }

  else
  {
    v26 = v68[7];

    v25 = type metadata accessor for UsagePointPayload.TariffRider();
    sub_1D20783EC();
    v11 = v29;
    sub_1D208C43C();
    v27 = v11;
    v28 = v11;
    if (v11)
    {
      v15[2] = v28;
    }

    v24 = v27;
  }

  v12 = v75;
  v21 = v24;
  v13 = type metadata accessor for UsagePointPayload();
  (*(v72 + 16))(v12, v68 + *(v13 + 36), v71);
  v14 = v21;
  sub_1D208C1FC();
  v22 = v14;
  v23 = v14;
  if (v14)
  {
    v15[1] = v23;
  }

  return (*(v72 + 8))(v75, v71);
}

uint64_t sub_1D2078044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v7 = type metadata accessor for UsagePointPayload();
  sub_1D1FD5F1C((v22 + *(v7 + 40)), v26);
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

unint64_t sub_1D20782DC()
{
  v2 = qword_1EC6BF388;
  if (!qword_1EC6BF388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BF380, &qword_1D2091CE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF388);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D2078364()
{
  v2 = qword_1EC6BF398;
  if (!qword_1EC6BF398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BF390, &unk_1D2091CE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF398);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D20783EC()
{
  v2 = qword_1EC6BF3A0;
  if (!qword_1EC6BF3A0)
  {
    type metadata accessor for UsagePointPayload.TariffRider();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF3A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D207846C()
{
  v2 = qword_1EC6BF3A8;
  if (!qword_1EC6BF3A8)
  {
    type metadata accessor for UsagePointPayload.TariffProfile();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF3A8);
    return WitnessTable;
  }

  return v2;
}

BOOL static UsagePointPayload.== infix(_:_:)(void *a1, char *a2)
{
  v73 = a1;
  v82 = a2;
  v102 = 0;
  v101 = 0;
  v57 = 0;
  v58 = sub_1D208C21C();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  v61 = (v59[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v62 = v12 - v61;
  v63 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v64 = v12 - v63;
  v65 = sub_1D208C1EC();
  v66 = *(v65 - 8);
  v67 = v65 - 8;
  v68 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v65);
  v69 = v12 - v68;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA78, &qword_1D208E750);
  v71 = (*(*(v70 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v70);
  v72 = v12 - v71;
  v74 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v73);
  v75 = v12 - v74;
  v76 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v77 = v12 - v76;
  v78 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v79 = v12 - v78;
  v102 = v8;
  v101 = v9;
  v80 = *v8;
  v81 = v8[1];

  v86 = &v99;
  v99 = v80;
  v100 = v81;
  v83 = *v82;
  v84 = *(v82 + 1);

  v85 = v98;
  v98[0] = v83;
  v98[1] = v84;
  v87 = MEMORY[0x1D38948D0](v99, v100, v83, v84);
  sub_1D1FE023C(v85);
  sub_1D1FE023C(v86);
  if ((v87 & 1) == 0)
  {
    return 0;
  }

  v49 = v73[2];
  v50 = v73[3];

  v54 = &v96;
  v96 = v49;
  v97 = v50;
  v51 = *(v82 + 2);
  v52 = *(v82 + 3);

  v53 = v95;
  v95[0] = v51;
  v95[1] = v52;
  v55 = MEMORY[0x1D38948D0](v96, v97, v51, v52);
  sub_1D1FE023C(v53);
  sub_1D1FE023C(v54);
  if ((v55 & 1) == 0)
  {
    return 0;
  }

  v42 = v73[4];
  v43 = v73[5];

  v47 = &v93;
  v93 = v42;
  v94 = v43;
  v44 = *(v82 + 4);
  v45 = *(v82 + 5);

  v46 = v92;
  v92[0] = v44;
  v92[1] = v45;
  v48 = MEMORY[0x1D38948D0](v93, v94, v44, v45);
  sub_1D1FE023C(v46);
  sub_1D1FE023C(v47);
  if ((v48 & 1) == 0)
  {
    return 0;
  }

  v38 = type metadata accessor for UsagePointPayload();
  sub_1D1FD5F1C(v73 + *(v38 + 40), v79);
  sub_1D1FD5F1C(&v82[*(v38 + 40)], v77);
  v39 = &v72[*(v70 + 48)];
  sub_1D1FD5F1C(v79, v72);
  sub_1D1FD5F1C(v77, v39);
  v40 = *(v66 + 48);
  v41 = v66 + 48;
  if (v40(v72, 1, v65) == 1)
  {
    if (v40(v39, 1, v65) == 1)
    {
      sub_1D1FD6044(v72);
      v37 = 1;
      goto LABEL_13;
    }
  }

  else
  {
    sub_1D1FD5F1C(v72, v75);
    if (v40(v39, 1, v65) != 1)
    {
      (*(v66 + 32))(v69, v39, v65);
      sub_1D1FE0494();
      v36 = sub_1D208C59C();
      v35 = *(v66 + 8);
      v34 = v66 + 8;
      v35(v69, v65);
      v35(v75, v65);
      sub_1D1FD6044(v72);
      v37 = v36;
      goto LABEL_13;
    }

    (*(v66 + 8))(v75, v65);
  }

  sub_1D1FE0268(v72);
  v37 = 0;
LABEL_13:
  v33 = v37;
  sub_1D1FD6044(v77);
  sub_1D1FD6044(v79);
  if (v33)
  {
    v25 = v73[6];

    v31 = &v91;
    v91 = v25;
    v26 = *(v82 + 6);

    v30 = &v90;
    v90 = v26;
    v29 = v91;
    v27 = v26;
    v28 = type metadata accessor for UsagePointPayload.TariffProfile();
    sub_1D207D020();
    v32 = sub_1D208C7BC();
    sub_1D1FD3C38(v30);
    sub_1D1FD3C38(v31);
    if (v32)
    {
      v17 = v73[7];

      v23 = &v89;
      v89 = v17;
      v18 = *(v82 + 7);

      v22 = &v88;
      v88 = v18;
      v21 = v89;
      v19 = v18;
      v20 = type metadata accessor for UsagePointPayload.TariffRider();
      sub_1D207D0A0();
      v24 = sub_1D208C7BC();
      sub_1D1FD3C38(v22);
      sub_1D1FD3C38(v23);
      if (v24)
      {
        v10 = v73 + *(v38 + 36);
        v13 = v59[2];
        v12[1] = v59 + 2;
        v13(v64, v10, v58);
        v13(v62, &v82[*(v38 + 36)], v58);
        sub_1D1FE0414();
        v16 = sub_1D208C59C();
        v15 = v59[1];
        v14 = v59 + 1;
        v15(v62, v58);
        v15(v64, v58);
        return (v16 & 1) != 0;
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

uint64_t UsagePointPayload.hashValue.getter()
{
  type metadata accessor for UsagePointPayload();
  sub_1D207D120();
  return sub_1D208C9DC();
}

void (*sub_1D2079188(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = UsagePointPayload.unknownFields.modify();
  return sub_1D1FDDFE4;
}

uint64_t sub_1D2079378()
{
  v0 = sub_1D2076E18();
  v4 = *v0;
  v5 = v0[1];

  v1 = sub_1D208C64C();
  v6 = MEMORY[0x1D38948B0](v4, v5, v1);
  v7 = v2;

  result = v6;
  qword_1EC6C6690 = v6;
  qword_1EC6C6698 = v7;
  return result;
}

uint64_t *sub_1D2079418()
{
  if (qword_1EC6C6688 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C6690;
}

uint64_t static UsagePointPayload.TariffRider.protoMessageName.getter()
{
  v0 = sub_1D2079418();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_1D20794B4()
{
  v10 = sub_1D208C47C();
  __swift_allocate_value_buffer(v10, qword_1EC6C66A8);
  __swift_project_value_buffer(v10, qword_1EC6C66A8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v14 = v0;
  v1 = *(v17 + 48);
  *v0 = 1;
  v12 = v0 + v1;
  *v12 = "riderID";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v15 = MEMORY[0x1E69AADC8];
  v11 = *MEMORY[0x1E69AADC8];
  v16 = *(*(sub_1D208C45C() - 8) + 104);
  (v16)(v12, v11);
  v13 = *(*(v17 - 8) + 72);
  v2 = *(v17 + 48);
  *(v14 + v13) = 2;
  v3 = v14 + v13 + v2;
  *v3 = "start";
  *(v3 + 1) = 5;
  v3[16] = 2;
  v4 = *v15;
  v16();
  v5 = *(v17 + 48);
  v6 = (v14 + 2 * v13);
  *v6 = 3;
  v7 = v6 + v5;
  *v7 = "end";
  *(v7 + 1) = 3;
  v7[16] = 2;
  v8 = *v15;
  v16();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D20796E8()
{
  if (qword_1EC6C66A0 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EC6C66A8);
}

uint64_t static UsagePointPayload.TariffRider._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D20796E8();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t UsagePointPayload.TariffRider.decodeMessage<A>(decoder:)()
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
        sub_1D20799B4();
        break;
      case 3:
        sub_1D2079A7C();
        break;
    }

    v2 = 0;
  }

  return result;
}

uint64_t sub_1D20799B4()
{
  v1 = *(type metadata accessor for UsagePointPayload.TariffRider() + 24);
  sub_1D208C1EC();
  sub_1D1FE1C64();
  return sub_1D208C33C();
}

uint64_t sub_1D2079A7C()
{
  v1 = *(type metadata accessor for UsagePointPayload.TariffRider() + 28);
  sub_1D208C1EC();
  sub_1D1FE1C64();
  return sub_1D208C33C();
}

uint64_t UsagePointPayload.TariffRider.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v22 = a2;
  v23 = a3;
  v36 = 0;
  v35 = 0;
  v37 = a2;
  v27 = sub_1D208C21C();
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v31 = v11 - v30;
  v36 = v4;
  v35 = v3;
  v32 = *v3;
  v33 = v3[1];

  v34 = sub_1D208C66C();

  if (v34)
  {
    v17 = v25;
  }

  else
  {
    v5 = v25;
    v18 = *v24;
    v19 = v24[1];

    sub_1D208C41C();
    v20 = v5;
    v21 = v5;
    if (v5)
    {
      v11[2] = v21;
    }

    v17 = v20;
  }

  v6 = v17;
  result = sub_1D2079E40(v24, v26, v22, v23);
  v15 = v6;
  v16 = v6;
  if (!v6)
  {
    sub_1D207A0D8(v24, v26, v22, v23);
    v13 = 0;
    v14 = 0;
    v8 = v31;
    v9 = type metadata accessor for UsagePointPayload.TariffRider();
    (*(v28 + 16))(v8, v24 + *(v9 + 20), v27);
    v10 = v13;
    sub_1D208C1FC();
    v11[4] = v10;
    v12 = v10;
    if (v10)
    {
      v11[1] = v12;
    }

    return (*(v28 + 8))(v31, v27);
  }

  return result;
}

uint64_t sub_1D2079E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v7 = type metadata accessor for UsagePointPayload.TariffRider();
  sub_1D1FD5F1C((v22 + *(v7 + 24)), v26);
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

uint64_t sub_1D207A0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v7 = type metadata accessor for UsagePointPayload.TariffRider();
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

BOOL static UsagePointPayload.TariffRider.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v59 = a1;
  v74 = a2;
  v84 = 0;
  v83 = 0;
  v41 = 0;
  v42 = sub_1D208C21C();
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  v45 = (v43[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v46 = v20 - v45;
  v47 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v48 = v20 - v47;
  v49 = sub_1D208C1EC();
  v50 = *(v49 - 8);
  v51 = v49 - 8;
  v52 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v49);
  v53 = v20 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA78, &qword_1D208E750);
  v55 = (*(*(v54 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v54);
  v56 = v20 - v55;
  v57 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v58 = v20 - v57;
  v60 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v59);
  v61 = v20 - v60;
  v62 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v63 = v20 - v62;
  v64 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v65 = v20 - v64;
  v66 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v67 = v20 - v66;
  v68 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v69 = v20 - v68;
  v70 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v71 = v20 - v70;
  v84 = v16;
  v83 = v17;
  v72 = *v16;
  v73 = v16[1];

  v78 = &v81;
  v81 = v72;
  v82 = v73;
  v75 = *v74;
  v76 = v74[1];

  v77 = v80;
  v80[0] = v75;
  v80[1] = v76;
  v79 = MEMORY[0x1D38948D0](v81, v82, v75, v76);
  sub_1D1FE023C(v77);
  sub_1D1FE023C(v78);
  if ((v79 & 1) == 0)
  {
    return 0;
  }

  v36 = type metadata accessor for UsagePointPayload.TariffRider();
  sub_1D1FD5F1C((v59 + v36[6]), v71);
  sub_1D1FD5F1C(v74 + v36[6], v69);
  v37 = &v58[*(v54 + 48)];
  sub_1D1FD5F1C(v71, v58);
  sub_1D1FD5F1C(v69, v37);
  v38 = *(v50 + 48);
  v39 = v50 + 48;
  if (v38(v58, 1, v49) == 1)
  {
    if (v38(v37, 1, v49) == 1)
    {
      sub_1D1FD6044(v58);
      v35 = 1;
      goto LABEL_9;
    }
  }

  else
  {
    sub_1D1FD5F1C(v58, v67);
    if (v38(v37, 1, v49) != 1)
    {
      (*(v50 + 32))(v53, v37, v49);
      sub_1D1FE0494();
      v34 = sub_1D208C59C();
      v33 = *(v50 + 8);
      v32 = v50 + 8;
      v33(v53, v49);
      v33(v67, v49);
      sub_1D1FD6044(v58);
      v35 = v34;
      goto LABEL_9;
    }

    (*(v50 + 8))(v67, v49);
  }

  sub_1D1FE0268(v58);
  v35 = 0;
LABEL_9:
  v31 = v35;
  sub_1D1FD6044(v69);
  sub_1D1FD6044(v71);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

  sub_1D1FD5F1C((v59 + v36[7]), v65);
  sub_1D1FD5F1C(v74 + v36[7], v63);
  v30 = &v56[*(v54 + 48)];
  sub_1D1FD5F1C(v65, v56);
  sub_1D1FD5F1C(v63, v30);
  if (v38(v56, 1, v49) == 1)
  {
    if (v38(v30, 1, v49) == 1)
    {
      sub_1D1FD6044(v56);
      v29 = 1;
      goto LABEL_20;
    }
  }

  else
  {
    sub_1D1FD5F1C(v56, v61);
    if (v38(v30, 1, v49) != 1)
    {
      (*(v50 + 32))(v53, v30, v49);
      sub_1D1FE0494();
      v28 = sub_1D208C59C();
      v27 = *(v50 + 8);
      v26 = v50 + 8;
      v27(v53, v49);
      v27(v61, v49);
      sub_1D1FD6044(v56);
      v29 = v28;
      goto LABEL_20;
    }

    (*(v50 + 8))(v61, v49);
  }

  sub_1D1FE0268(v56);
  v29 = 0;
LABEL_20:
  v25 = v29;
  sub_1D1FD6044(v63);
  sub_1D1FD6044(v65);
  if (v25)
  {
    v18 = v59 + v36[5];
    v21 = v43[2];
    v20[1] = v43 + 2;
    v21(v48, v18, v42);
    v21(v46, v74 + v36[5], v42);
    sub_1D1FE0414();
    v24 = sub_1D208C59C();
    v23 = v43[1];
    v22 = v43 + 1;
    v23(v46, v42);
    v23(v48, v42);
    return (v24 & 1) != 0;
  }

  else
  {
    return 0;
  }
}

uint64_t UsagePointPayload.TariffRider.hashValue.getter()
{
  type metadata accessor for UsagePointPayload.TariffRider();
  sub_1D207D2A0();
  return sub_1D208C9DC();
}

void (*sub_1D207AFDC(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = UsagePointPayload.TariffRider.unknownFields.modify();
  return sub_1D1FDDFE4;
}

uint64_t sub_1D207B1CC()
{
  v0 = sub_1D2076E18();
  v4 = *v0;
  v5 = v0[1];

  v1 = sub_1D208C64C();
  v6 = MEMORY[0x1D38948B0](v4, v5, v1);
  v7 = v2;

  result = v6;
  qword_1EC6C66C8 = v6;
  qword_1EC6C66D0 = v7;
  return result;
}

uint64_t *sub_1D207B26C()
{
  if (qword_1EC6C66C0 != -1)
  {
    swift_once();
  }

  return &qword_1EC6C66C8;
}

uint64_t static UsagePointPayload.TariffProfile.protoMessageName.getter()
{
  v0 = sub_1D207B26C();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_1D207B308()
{
  v10 = sub_1D208C47C();
  __swift_allocate_value_buffer(v10, qword_1EC6C66E0);
  __swift_project_value_buffer(v10, qword_1EC6C66E0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA50, &unk_1D208E740);
  sub_1D208CB2C();
  v14 = v0;
  v1 = *(v17 + 48);
  *v0 = 1;
  v12 = v0 + v1;
  *v12 = "tariffProfileID";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v15 = MEMORY[0x1E69AADC8];
  v11 = *MEMORY[0x1E69AADC8];
  v16 = *(*(sub_1D208C45C() - 8) + 104);
  (v16)(v12, v11);
  v13 = *(*(v17 - 8) + 72);
  v2 = *(v17 + 48);
  *(v14 + v13) = 2;
  v3 = v14 + v13 + v2;
  *v3 = "start";
  *(v3 + 1) = 5;
  v3[16] = 2;
  v4 = *v15;
  v16();
  v5 = *(v17 + 48);
  v6 = (v14 + 2 * v13);
  *v6 = 3;
  v7 = v6 + v5;
  *v7 = "end";
  *(v7 + 1) = 3;
  v7[16] = 2;
  v8 = *v15;
  v16();
  sub_1D1FCECE8();
  return sub_1D208C46C();
}

uint64_t sub_1D207B53C()
{
  if (qword_1EC6C66D8 != -1)
  {
    swift_once();
  }

  v0 = sub_1D208C47C();
  return __swift_project_value_buffer(v0, qword_1EC6C66E0);
}

uint64_t static UsagePointPayload.TariffProfile._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D207B53C();
  v1 = sub_1D208C47C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t UsagePointPayload.TariffProfile.decodeMessage<A>(decoder:)()
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
        sub_1D207B808();
        break;
      case 3:
        sub_1D207B8D0();
        break;
    }

    v2 = 0;
  }

  return result;
}

uint64_t sub_1D207B808()
{
  v1 = *(type metadata accessor for UsagePointPayload.TariffProfile() + 24);
  sub_1D208C1EC();
  sub_1D1FE1C64();
  return sub_1D208C33C();
}

uint64_t sub_1D207B8D0()
{
  v1 = *(type metadata accessor for UsagePointPayload.TariffProfile() + 28);
  sub_1D208C1EC();
  sub_1D1FE1C64();
  return sub_1D208C33C();
}

uint64_t UsagePointPayload.TariffProfile.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v22 = a2;
  v23 = a3;
  v36 = 0;
  v35 = 0;
  v37 = a2;
  v27 = sub_1D208C21C();
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v31 = v11 - v30;
  v36 = v4;
  v35 = v3;
  v32 = *v3;
  v33 = v3[1];

  v34 = sub_1D208C66C();

  if (v34)
  {
    v17 = v25;
  }

  else
  {
    v5 = v25;
    v18 = *v24;
    v19 = v24[1];

    sub_1D208C41C();
    v20 = v5;
    v21 = v5;
    if (v5)
    {
      v11[2] = v21;
    }

    v17 = v20;
  }

  v6 = v17;
  result = sub_1D207BC94(v24, v26, v22, v23);
  v15 = v6;
  v16 = v6;
  if (!v6)
  {
    sub_1D207BF2C(v24, v26, v22, v23);
    v13 = 0;
    v14 = 0;
    v8 = v31;
    v9 = type metadata accessor for UsagePointPayload.TariffProfile();
    (*(v28 + 16))(v8, v24 + *(v9 + 20), v27);
    v10 = v13;
    sub_1D208C1FC();
    v11[4] = v10;
    v12 = v10;
    if (v10)
    {
      v11[1] = v12;
    }

    return (*(v28 + 8))(v31, v27);
  }

  return result;
}

uint64_t sub_1D207BC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v7 = type metadata accessor for UsagePointPayload.TariffProfile();
  sub_1D1FD5F1C((v22 + *(v7 + 24)), v26);
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

uint64_t sub_1D207BF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v7 = type metadata accessor for UsagePointPayload.TariffProfile();
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

BOOL static UsagePointPayload.TariffProfile.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v59 = a1;
  v74 = a2;
  v84 = 0;
  v83 = 0;
  v41 = 0;
  v42 = sub_1D208C21C();
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  v45 = (v43[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v46 = v20 - v45;
  v47 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v48 = v20 - v47;
  v49 = sub_1D208C1EC();
  v50 = *(v49 - 8);
  v51 = v49 - 8;
  v52 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v49);
  v53 = v20 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA78, &qword_1D208E750);
  v55 = (*(*(v54 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v54);
  v56 = v20 - v55;
  v57 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v58 = v20 - v57;
  v60 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v59);
  v61 = v20 - v60;
  v62 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v63 = v20 - v62;
  v64 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v65 = v20 - v64;
  v66 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v67 = v20 - v66;
  v68 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v69 = v20 - v68;
  v70 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v71 = v20 - v70;
  v84 = v16;
  v83 = v17;
  v72 = *v16;
  v73 = v16[1];

  v78 = &v81;
  v81 = v72;
  v82 = v73;
  v75 = *v74;
  v76 = v74[1];

  v77 = v80;
  v80[0] = v75;
  v80[1] = v76;
  v79 = MEMORY[0x1D38948D0](v81, v82, v75, v76);
  sub_1D1FE023C(v77);
  sub_1D1FE023C(v78);
  if ((v79 & 1) == 0)
  {
    return 0;
  }

  v36 = type metadata accessor for UsagePointPayload.TariffProfile();
  sub_1D1FD5F1C((v59 + v36[6]), v71);
  sub_1D1FD5F1C(v74 + v36[6], v69);
  v37 = &v58[*(v54 + 48)];
  sub_1D1FD5F1C(v71, v58);
  sub_1D1FD5F1C(v69, v37);
  v38 = *(v50 + 48);
  v39 = v50 + 48;
  if (v38(v58, 1, v49) == 1)
  {
    if (v38(v37, 1, v49) == 1)
    {
      sub_1D1FD6044(v58);
      v35 = 1;
      goto LABEL_9;
    }
  }

  else
  {
    sub_1D1FD5F1C(v58, v67);
    if (v38(v37, 1, v49) != 1)
    {
      (*(v50 + 32))(v53, v37, v49);
      sub_1D1FE0494();
      v34 = sub_1D208C59C();
      v33 = *(v50 + 8);
      v32 = v50 + 8;
      v33(v53, v49);
      v33(v67, v49);
      sub_1D1FD6044(v58);
      v35 = v34;
      goto LABEL_9;
    }

    (*(v50 + 8))(v67, v49);
  }

  sub_1D1FE0268(v58);
  v35 = 0;
LABEL_9:
  v31 = v35;
  sub_1D1FD6044(v69);
  sub_1D1FD6044(v71);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

  sub_1D1FD5F1C((v59 + v36[7]), v65);
  sub_1D1FD5F1C(v74 + v36[7], v63);
  v30 = &v56[*(v54 + 48)];
  sub_1D1FD5F1C(v65, v56);
  sub_1D1FD5F1C(v63, v30);
  if (v38(v56, 1, v49) == 1)
  {
    if (v38(v30, 1, v49) == 1)
    {
      sub_1D1FD6044(v56);
      v29 = 1;
      goto LABEL_20;
    }
  }

  else
  {
    sub_1D1FD5F1C(v56, v61);
    if (v38(v30, 1, v49) != 1)
    {
      (*(v50 + 32))(v53, v30, v49);
      sub_1D1FE0494();
      v28 = sub_1D208C59C();
      v27 = *(v50 + 8);
      v26 = v50 + 8;
      v27(v53, v49);
      v27(v61, v49);
      sub_1D1FD6044(v56);
      v29 = v28;
      goto LABEL_20;
    }

    (*(v50 + 8))(v61, v49);
  }

  sub_1D1FE0268(v56);
  v29 = 0;
LABEL_20:
  v25 = v29;
  sub_1D1FD6044(v63);
  sub_1D1FD6044(v65);
  if (v25)
  {
    v18 = v59 + v36[5];
    v21 = v43[2];
    v20[1] = v43 + 2;
    v21(v48, v18, v42);
    v21(v46, v74 + v36[5], v42);
    sub_1D1FE0414();
    v24 = sub_1D208C59C();
    v23 = v43[1];
    v22 = v43 + 1;
    v23(v46, v42);
    v23(v48, v42);
    return (v24 & 1) != 0;
  }

  else
  {
    return 0;
  }
}

uint64_t UsagePointPayload.TariffProfile.hashValue.getter()
{
  type metadata accessor for UsagePointPayload.TariffProfile();
  sub_1D207D3A0();
  return sub_1D208C9DC();
}

void (*sub_1D207CE30(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = UsagePointPayload.TariffProfile.unknownFields.modify();
  return sub_1D1FDDFE4;
}

unint64_t sub_1D207D020()
{
  v2 = qword_1EC6BF3B0;
  if (!qword_1EC6BF3B0)
  {
    type metadata accessor for UsagePointPayload.TariffProfile();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF3B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D207D0A0()
{
  v2 = qword_1EC6BF3B8;
  if (!qword_1EC6BF3B8)
  {
    type metadata accessor for UsagePointPayload.TariffRider();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF3B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D207D120()
{
  v2 = qword_1EC6BF3C0;
  if (!qword_1EC6BF3C0)
  {
    type metadata accessor for UsagePointPayload();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF3C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D207D1A0()
{
  v2 = qword_1EC6BF3C8;
  if (!qword_1EC6BF3C8)
  {
    type metadata accessor for UsagePointPayload();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF3C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D207D220()
{
  v2 = qword_1EC6BF3D0;
  if (!qword_1EC6BF3D0)
  {
    type metadata accessor for UsagePointPayload();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF3D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D207D2A0()
{
  v2 = qword_1EC6BF3D8;
  if (!qword_1EC6BF3D8)
  {
    type metadata accessor for UsagePointPayload.TariffRider();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF3D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D207D320()
{
  v2 = qword_1EC6BF3E0;
  if (!qword_1EC6BF3E0)
  {
    type metadata accessor for UsagePointPayload.TariffRider();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF3E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D207D3A0()
{
  v2 = qword_1EC6BF3E8;
  if (!qword_1EC6BF3E8)
  {
    type metadata accessor for UsagePointPayload.TariffProfile();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF3E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D207D420()
{
  v2 = qword_1EC6BF3F0;
  if (!qword_1EC6BF3F0)
  {
    type metadata accessor for UsagePointPayload.TariffProfile();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF3F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D207D4B8()
{
  v2 = qword_1EC6BF3F8;
  if (!qword_1EC6BF3F8)
  {
    type metadata accessor for UsagePointPayload();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF3F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D207D580()
{
  v2 = qword_1EC6BF400;
  if (!qword_1EC6BF400)
  {
    type metadata accessor for UsagePointPayload();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF400);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D207D618()
{
  v2 = qword_1EC6BF408;
  if (!qword_1EC6BF408)
  {
    type metadata accessor for UsagePointPayload.TariffRider();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF408);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D207D6F8()
{
  v2 = qword_1EC6BF410;
  if (!qword_1EC6BF410)
  {
    type metadata accessor for UsagePointPayload.TariffProfile();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF410);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1D207D838()
{
  v5 = sub_1D207D998();
  if (v0 <= 0x3F)
  {
    v5 = sub_1D207DA34();
    if (v1 <= 0x3F)
    {
      v5 = sub_1D208C21C();
      if (v2 <= 0x3F)
      {
        v5 = sub_1D1FE0FAC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v5;
}

uint64_t sub_1D207D998()
{
  v4 = qword_1EC6BF418;
  if (!qword_1EC6BF418)
  {
    type metadata accessor for UsagePointPayload.TariffProfile();
    v3 = sub_1D208C7AC();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EC6BF418);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1D207DA34()
{
  v4 = qword_1EC6BF420;
  if (!qword_1EC6BF420)
  {
    type metadata accessor for UsagePointPayload.TariffRider();
    v3 = sub_1D208C7AC();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EC6BF420);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1D207DB20()
{
  v3 = sub_1D208C21C();
  if (v0 <= 0x3F)
  {
    v3 = sub_1D1FE0FAC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

unint64_t sub_1D207DC70()
{
  v2 = qword_1EC6C70B0[0];
  if (!qword_1EC6C70B0[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC6C70B0);
    return WitnessTable;
  }

  return v2;
}

char *sub_1D207DCEC(char *a1, char *a2)
{
  *a2 = *a1;
  v8 = *(a1 + 1);

  *(a2 + 1) = v8;
  v11 = type metadata accessor for UsagePointPayload.TariffProfile();
  v9 = v11[5];
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 16))(&a2[v9], &a1[v9]);
  v12 = v11[6];
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

  __dst = &a2[v11[7]];
  __src = &a1[v11[7]];
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

uint64_t sub_1D207DFE0(uint64_t a1)
{
  v1 = *(a1 + 8);

  v6 = type metadata accessor for UsagePointPayload.TariffProfile();
  v5 = v6[5];
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 8))(a1 + v5);
  v7 = v6[6];
  v9 = sub_1D208C1EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!(v11)(a1 + v7, 1))
  {
    (*(v10 + 8))(a1 + v7, v9);
  }

  v4 = a1 + v6[7];
  if (!v11())
  {
    (*(v10 + 8))(v4, v9);
  }

  return a1;
}

char *sub_1D207E17C(char *a1, char *a2)
{
  *a2 = *a1;
  v8 = *(a1 + 1);

  *(a2 + 1) = v8;
  v11 = type metadata accessor for UsagePointPayload.TariffRider();
  v9 = v11[5];
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 16))(&a2[v9], &a1[v9]);
  v12 = v11[6];
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

  __dst = &a2[v11[7]];
  __src = &a1[v11[7]];
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

uint64_t sub_1D207E470(uint64_t a1)
{
  v1 = *(a1 + 8);

  v6 = type metadata accessor for UsagePointPayload.TariffRider();
  v5 = v6[5];
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 8))(a1 + v5);
  v7 = v6[6];
  v9 = sub_1D208C1EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!(v11)(a1 + v7, 1))
  {
    (*(v10 + 8))(a1 + v7, v9);
  }

  v4 = a1 + v6[7];
  if (!v11())
  {
    (*(v10 + 8))(v4, v9);
  }

  return a1;
}

char *sub_1D207E60C(char *a1, char *a2)
{
  *a2 = *a1;
  v5 = *(a1 + 1);

  *(a2 + 1) = v5;
  *(a2 + 2) = *(a1 + 2);
  v6 = *(a1 + 3);

  *(a2 + 3) = v6;
  *(a2 + 4) = *(a1 + 4);
  v7 = *(a1 + 5);

  *(a2 + 5) = v7;
  v8 = *(a1 + 6);

  *(a2 + 6) = v8;
  v9 = *(a1 + 7);

  *(a2 + 7) = v9;
  v12 = type metadata accessor for UsagePointPayload();
  v10 = *(v12 + 36);
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 16))(&a2[v10], &a1[v10]);
  v13 = *(v12 + 40);
  v15 = sub_1D208C1EC();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(&a1[v13], 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
    memcpy(&a2[v13], &a1[v13], *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v16 + 16))();
    (*(v16 + 56))(&a2[v13], 0, 1, v15);
  }

  return a2;
}

char *sub_1D207E880(char *a1)
{
  v1 = *(a1 + 1);

  v2 = *(a1 + 3);

  v3 = *(a1 + 5);

  v4 = *(a1 + 6);

  v5 = *(a1 + 7);

  v9 = type metadata accessor for UsagePointPayload();
  v8 = *(v9 + 36);
  v6 = sub_1D208C21C();
  (*(*(v6 - 8) + 8))(&a1[v8]);
  v10 = *(v9 + 40);
  v12 = sub_1D208C1EC();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(&a1[v10], 1))
  {
    (*(v13 + 8))(&a1[v10], v12);
  }

  return a1;
}

uint64_t sub_1D207E9D8()
{
  sub_1D1FE6710();
  result = sub_1D208C50C();
  qword_1EE083438 = result;
  return result;
}

uint64_t *sub_1D207EA10()
{
  if (qword_1EE082F60 != -1)
  {
    swift_once();
  }

  return &qword_1EE083438;
}

uint64_t sub_1D207EA70()
{
  v1 = sub_1D207EA10();
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  return v2;
}

uint64_t sub_1D207EAC8(uint64_t a1)
{
  v3 = sub_1D207EA10();

  swift_beginAccess();
  v1 = *v3;
  *v3 = a1;

  swift_endAccess();
}

uint64_t (*sub_1D207EB3C())()
{
  sub_1D207EA10();
  swift_beginAccess();
  return sub_1D1FD9ED8;
}

uint64_t static EnergyKitFeatureCheck.isEnabled(key:)(char *a1)
{
  v9 = 0;
  v6 = *a1;
  v9 = *a1;
  if ((*sub_1D1FCE46C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v4 = sub_1D207EA10();
  swift_beginAccess();
  v5 = *v4;
  sub_1D1FE6710();
  sub_1D208C56C();
  if (v7 == 2)
  {
    swift_endAccess();
LABEL_5:
    v8[3] = &type metadata for EnergyKitFeatures;
    v8[4] = sub_1D207ECE4();
    LOBYTE(v8[0]) = v6;
    v2 = sub_1D208C1AC();
    __swift_destroy_boxed_opaque_existential_1(v8);
    v3 = v2;
    return v3 & 1;
  }

  swift_endAccess();
  v3 = v7;
  return v3 & 1;
}

unint64_t sub_1D207ECE4()
{
  v2 = qword_1EE082868[0];
  if (!qword_1EE082868[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EE082868);
    return WitnessTable;
  }

  return v2;
}

uint64_t static EnergyKitFeatureCheck.setOverride(key:val:)(char *a1)
{
  v2 = *a1;
  sub_1D207EA10();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF428, qword_1D2092290);
  sub_1D208C57C();
  return swift_endAccess();
}

uint64_t static EnergyKitFeatureCheck.removeOverride(key:)(char *a1)
{
  v2 = *a1;
  sub_1D207EA10();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF428, qword_1D2092290);
  sub_1D208C57C();
  return swift_endAccess();
}

uint64_t sub_1D207EFAC(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v1529 = v1;
  v1594 = v2;
  v1593 = v3;
  v1592 = v4;
  v1591 = v5;
  v1595 = v6;
  v1530 = v4;
  v1585 = 0;
  v1781 = 0;
  v1780 = 0;
  v1779 = 0;
  v1778 = 0;
  v1777 = 0;
  v1776 = 0;
  v1775 = 0;
  v1774 = 0;
  v1773 = 0;
  v1772 = 0;
  v1771 = 0;
  v1770 = 0;
  v1769 = 0;
  v1531 = type metadata accessor for EnergySitePayload.CurrentRatePlan();
  v1532 = *(*(v1531 - 8) + 64);
  MEMORY[0x1EEE9AC00](0);
  v1534 = (v1532 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1533 = v426 - v1534;
  MEMORY[0x1EEE9AC00](v7);
  v1535 = v426 - v1534;
  v1536 = sub_1D208C1EC();
  v1537 = *(v1536 - 8);
  v1538 = v1537;
  v8 = *(v1537 + 64);
  MEMORY[0x1EEE9AC00](v1536 - 8);
  v1539 = v426 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v1546 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v1548 = (v1546 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1540 = v426 - v1548;
  MEMORY[0x1EEE9AC00](v426 - v1548);
  v1541 = v426 - v1548;
  MEMORY[0x1EEE9AC00](v426 - v1548);
  v1542 = v426 - v1548;
  MEMORY[0x1EEE9AC00](v426 - v1548);
  v1543 = v426 - v1548;
  MEMORY[0x1EEE9AC00](v426 - v1548);
  v1544 = v426 - v1548;
  MEMORY[0x1EEE9AC00](v426 - v1548);
  v1545 = v426 - v1548;
  MEMORY[0x1EEE9AC00](v426 - v1548);
  v1547 = v426 - v1548;
  MEMORY[0x1EEE9AC00](v426 - v1548);
  v1549 = v426 - v1548;
  v1562 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v1585);
  v1564 = (v1562 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1550 = v426 - v1564;
  MEMORY[0x1EEE9AC00](v11);
  v1551 = v426 - v1564;
  MEMORY[0x1EEE9AC00](v12);
  v1552 = v426 - v1564;
  MEMORY[0x1EEE9AC00](v13);
  v1553 = v426 - v1564;
  MEMORY[0x1EEE9AC00](v14);
  v1554 = v426 - v1564;
  MEMORY[0x1EEE9AC00](v15);
  v1555 = v426 - v1564;
  MEMORY[0x1EEE9AC00](v16);
  v1556 = v426 - v1564;
  MEMORY[0x1EEE9AC00](v17);
  v1557 = v426 - v1564;
  MEMORY[0x1EEE9AC00](v18);
  v1558 = v426 - v1564;
  MEMORY[0x1EEE9AC00](v19);
  v1559 = v426 - v1564;
  MEMORY[0x1EEE9AC00](v20);
  v1560 = v426 - v1564;
  MEMORY[0x1EEE9AC00](v21);
  v1561 = v426 - v1564;
  MEMORY[0x1EEE9AC00](v22);
  v1563 = v426 - v1564;
  MEMORY[0x1EEE9AC00](v23);
  v1565 = v426 - v1564;
  v1566 = sub_1D208BF1C();
  v1567 = *(v1566 - 8);
  v1568 = v1567;
  v1581 = *(v1567 + 64);
  MEMORY[0x1EEE9AC00](v1585);
  v1583 = (v1581 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1569 = v426 - v1583;
  MEMORY[0x1EEE9AC00](v24);
  v1570 = v426 - v1583;
  MEMORY[0x1EEE9AC00](v25);
  v1571 = v426 - v1583;
  MEMORY[0x1EEE9AC00](v26);
  v1572 = v426 - v1583;
  MEMORY[0x1EEE9AC00](v27);
  v1573 = v426 - v1583;
  MEMORY[0x1EEE9AC00](v28);
  v1574 = v426 - v1583;
  v1781 = v426 - v1583;
  MEMORY[0x1EEE9AC00](v29);
  v1575 = v426 - v1583;
  MEMORY[0x1EEE9AC00](v30);
  v1576 = v426 - v1583;
  v1780 = v426 - v1583;
  MEMORY[0x1EEE9AC00](v31);
  v1577 = v426 - v1583;
  MEMORY[0x1EEE9AC00](v32);
  v1578 = v426 - v1583;
  MEMORY[0x1EEE9AC00](v33);
  v1579 = v426 - v1583;
  v1779 = v426 - v1583;
  MEMORY[0x1EEE9AC00](v34);
  v1580 = v426 - v1583;
  v1778 = v426 - v1583;
  MEMORY[0x1EEE9AC00](v35);
  v1582 = v426 - v1583;
  v1777 = v426 - v1583;
  MEMORY[0x1EEE9AC00](v36);
  v1584 = v426 - v1583;
  v1776 = v426 - v1583;
  v1586 = sub_1D208BF8C();
  v1587 = *(v1586 - 8);
  v1588 = v1587;
  v37 = *(v1587 + 64);
  MEMORY[0x1EEE9AC00](v1585);
  v1589 = v426 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for EnergySitePayload();
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v1590 = v426 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1618 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE70, &unk_1D208FB80) - 8) + 64);
  MEMORY[0x1EEE9AC00](v1595);
  v1620 = (v1618 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1596 = v426 - v1620;
  MEMORY[0x1EEE9AC00](v42);
  v1597 = v426 - v1620;
  MEMORY[0x1EEE9AC00](v43);
  v1598 = v426 - v1620;
  MEMORY[0x1EEE9AC00](v44);
  v1599 = v426 - v1620;
  MEMORY[0x1EEE9AC00](v45);
  v1600 = v426 - v1620;
  MEMORY[0x1EEE9AC00](v46);
  v1601 = v426 - v1620;
  MEMORY[0x1EEE9AC00](v47);
  v1602 = v426 - v1620;
  MEMORY[0x1EEE9AC00](v48);
  v1603 = v426 - v1620;
  MEMORY[0x1EEE9AC00](v49);
  v1604 = v426 - v1620;
  MEMORY[0x1EEE9AC00](v50);
  v1605 = v426 - v1620;
  MEMORY[0x1EEE9AC00](v51);
  v1606 = v426 - v1620;
  MEMORY[0x1EEE9AC00](v52);
  v1607 = v426 - v1620;
  MEMORY[0x1EEE9AC00](v53);
  v1608 = v426 - v1620;
  MEMORY[0x1EEE9AC00](v54);
  v1609 = v426 - v1620;
  MEMORY[0x1EEE9AC00](v55);
  v1610 = v426 - v1620;
  MEMORY[0x1EEE9AC00](v56);
  v1611 = v426 - v1620;
  MEMORY[0x1EEE9AC00](v57);
  v1612 = v426 - v1620;
  MEMORY[0x1EEE9AC00](v58);
  v1613 = v426 - v1620;
  MEMORY[0x1EEE9AC00](v59);
  v1614 = v426 - v1620;
  MEMORY[0x1EEE9AC00](v60);
  v1615 = v426 - v1620;
  MEMORY[0x1EEE9AC00](v61);
  v1616 = v426 - v1620;
  MEMORY[0x1EEE9AC00](v62);
  v1617 = v426 - v1620;
  MEMORY[0x1EEE9AC00](v63);
  v1619 = v426 - v1620;
  MEMORY[0x1EEE9AC00](v64);
  v1621 = v426 - v1620;
  v1775 = v65;
  v1774 = v66;
  v1773 = v67;
  v1772 = v68;
  v1771 = v69;
  if (*sub_1D1FCE46C() == 1)
  {
    EnergySitePayload.ckFunctionToken.getter();
    v1527 = v70;
    v1528 = sub_1D208C66C();

    if (v1528)
    {
      v1526 = 0;
    }

    else
    {
      EnergySitePayload.ckFunctionToken.getter();
      v1520 = v71;
      v1521 = sub_1D208C60C();
      v1522 = v72;

      v1623[0] = v1521;
      v1623[1] = v1522;
      v1622[0] = sub_1D208C64C();
      v1622[1] = v73;
      sub_1D208BA94();
      v1523 = v1622;
      v1524 = v1623;
      v1525 = sub_1D208C93C();
      sub_1D1FE023C(v1523);
      sub_1D1FE023C(v1524);
      v1526 = v1525;
    }

    if (v1526)
    {
      v1519 = 1;
    }

    else
    {
      EnergySitePayload.ckFunctionToken.getter();
      v1517 = v74;
      v1518 = sub_1D208C66C();

      if (v1518)
      {
        v1516 = 0;
      }

      else
      {
        EnergySitePayload.ckFunctionToken.getter();
        v1510 = v75;
        v1511 = sub_1D208C60C();
        v1512 = v76;

        v1625[0] = v1511;
        v1625[1] = v1512;
        v1624[0] = sub_1D208C64C();
        v1624[1] = v77;
        sub_1D208BA94();
        v1513 = v1624;
        v1514 = v1625;
        v1515 = sub_1D208C93C();
        sub_1D1FE023C(v1513);
        sub_1D1FE023C(v1514);
        v1516 = v1515;
      }

      v1519 = v1516;
    }

    if (v1519)
    {
      sub_1D1FCD668(v1530 & 1, v1621);
      v1508 = sub_1D208C4AC();
      v1509 = *(v1508 - 8);
      if ((*(v1509 + 48))(v1621, 1) == 1)
      {
        sub_1D202975C(v1621);
        v1507 = v1529;
      }

      else
      {
        v1505 = sub_1D208C48C();
        v1502 = v1505;
        v1504 = sub_1D208C84C();
        v1503 = v1504;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
        v1506 = sub_1D208CB2C();
        if (os_log_type_enabled(v1505, v1504))
        {
          v1500 = v1529;
          v1492 = sub_1D208C8EC();
          v1488 = v1492;
          v1489 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
          v1490 = 0;
          v1493 = sub_1D2029898(0);
          v1491 = v1493;
          v1494 = sub_1D2029898(v1490);
          v1628 = v1492;
          v1627 = v1493;
          v1626 = v1494;
          v1495 = 0;
          v1496 = &v1628;
          sub_1D20298EC(0, &v1628);
          sub_1D20298EC(v1495, v1496);
          v1625[2] = v1506;
          v1497 = v426;
          MEMORY[0x1EEE9AC00](v426);
          v1498 = &v426[-6];
          v426[-4] = v78;
          v426[-3] = &v1627;
          v426[-2] = &v1626;
          v1499 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF430, &qword_1D2092320);
          sub_1D208BA0C();
          v79 = v1500;
          sub_1D208C6FC();
          v1501 = v79;
          if (v79)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_1D1FC7000, v1502, v1503, "[Deduplication] WARNING: Mock Tokens used. New always wins", v1488, 2u);
            v1486 = 0;
            sub_1D202994C(v1491);
            sub_1D202994C(v1494);
            sub_1D208C8BC();

            v1487 = v1501;
          }
        }

        else
        {

          v1487 = v1529;
        }

        v1485 = v1487;

        (*(v1509 + 8))(v1621, v1508);
        v1507 = v1485;
      }

      v1483 = v1507;
      sub_1D2028364(v1595, v1590);
      sub_1D208B938(v1590, v1591);
      v1484 = v1483;
    }

    else
    {
      v1484 = v1529;
    }

    v1482 = v1484;
  }

  else
  {
    v1482 = v1529;
  }

  v1477 = v1482;
  sub_1D208BF7C();
  v1478 = sub_1D208BF2C();
  v1479 = v80;
  v1769 = v1478;
  v1770 = v80;
  (*(v1588 + 8))(v1589, v1586);
  EnergySitePayload.accessToken.getter();
  v1480 = v81;
  v1481 = sub_1D208C66C();

  if (v1481)
  {
    v1476 = 0;
  }

  else
  {
    EnergySitePayload.refreshToken.getter();
    v1474 = v82;
    v1475 = sub_1D208C66C();

    v1476 = v1475 ^ 1;
  }

  if (v1476)
  {
    EnergySitePayload.ckFunctionToken.getter();
    v1471 = v83;
    v1472 = sub_1D208C66C();

    v1473 = v1472 ^ 1;
  }

  else
  {
    v1473 = 0;
  }

  if (v1473)
  {
    EnergySitePayload.accessToken.getter();
    v1468 = v84;
    v1469 = sub_1D208C66C();

    v1470 = v1469 ^ 1;
  }

  else
  {
    v1470 = 0;
  }

  if (v1470)
  {
    EnergySitePayload.refreshToken.getter();
    v1465 = v85;
    v1466 = sub_1D208C66C();

    v1467 = v1466 ^ 1;
  }

  else
  {
    v1467 = 0;
  }

  if (v1467)
  {
    EnergySitePayload.ckFunctionToken.getter();
    v1462 = v86;
    v1463 = sub_1D208C66C();

    v1464 = v1463 ^ 1;
  }

  else
  {
    v1464 = 0;
  }

  if (v1464)
  {
    sub_1D1FCD668(v1530 & 1, v1619);
    v1458 = sub_1D208C4AC();
    v1459 = *(v1458 - 8);
    v1460 = *(v1459 + 48);
    v1461 = (v1459 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v1460(v1619, 1) == 1)
    {
      sub_1D202975C(v1619);
      v1457 = v1477;
    }

    else
    {

      v1440 = 32;
      v1444 = 32;
      v1445 = 7;
      v87 = swift_allocObject();
      v88 = v1479;
      v1446 = v87;
      *(v87 + 16) = v1478;
      *(v87 + 24) = v88;
      v1456 = sub_1D208C48C();
      v1438 = v1456;
      v1455 = sub_1D208C85C();
      v1439 = v1455;
      v1441 = 17;
      v1449 = swift_allocObject();
      v1442 = v1449;
      *(v1449 + 16) = v1440;
      v1450 = swift_allocObject();
      v1443 = v1450;
      *(v1450 + 16) = 8;
      v89 = swift_allocObject();
      v90 = v1446;
      v1447 = v89;
      *(v89 + 16) = sub_1D208B9D0;
      *(v89 + 24) = v90;
      v91 = swift_allocObject();
      v92 = v1447;
      v1453 = v91;
      v1448 = v91;
      *(v91 + 16) = sub_1D205248C;
      *(v91 + 24) = v92;
      v1454 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
      v1451 = sub_1D208CB2C();
      v1452 = v93;

      v94 = v1449;
      v95 = v1452;
      *v1452 = sub_1D2029A40;
      v95[1] = v94;

      v96 = v1450;
      v97 = v1452;
      v1452[2] = sub_1D2029A40;
      v97[3] = v96;

      v98 = v1452;
      v99 = v1453;
      v1452[4] = sub_1D2052498;
      v98[5] = v99;
      sub_1D1FCECE8();

      if (os_log_type_enabled(v1456, v1455))
      {
        v1435 = v1477;
        v1430 = sub_1D208C8EC();
        v1427 = v1430;
        v1428 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
        v1431 = sub_1D2029898(0);
        v1429 = v1431;
        v1433 = 1;
        v1432 = sub_1D2029898(1);
        v1633 = v1430;
        v1632 = v1431;
        v1631 = v1432;
        v1434 = &v1633;
        sub_1D20298EC(2, &v1633);
        sub_1D20298EC(v1433, v1434);
        v100 = v1435;
        v1629 = sub_1D2029A40;
        v1630 = v1442;
        sub_1D2029900(&v1629, v1434, &v1632, &v1631);
        v1436 = v100;
        v1437 = v100;
        if (v100)
        {
          v1425 = 0;

          __break(1u);
        }

        else
        {
          v1629 = sub_1D2029A40;
          v1630 = v1443;
          sub_1D2029900(&v1629, &v1633, &v1632, &v1631);
          v1423 = 0;
          v1424 = 0;
          v1629 = sub_1D2052498;
          v1630 = v1448;
          sub_1D2029900(&v1629, &v1633, &v1632, &v1631);
          v1421 = 0;
          v1422 = 0;
          _os_log_impl(&dword_1D1FC7000, v1438, v1439, "[Deduplication] [%s] Both sites onboarded", v1427, 0xCu);
          sub_1D202994C(v1429);
          sub_1D202994C(v1432);
          sub_1D208C8BC();

          v1426 = v1421;
        }
      }

      else
      {

        v1426 = v1477;
      }

      v1420 = v1426;

      (*(v1459 + 8))(v1619, v1458);
      v1457 = v1420;
    }

    v1417 = v1457;
    sub_1D1FE94C4(v1593, v1565);
    v1418 = *(v1568 + 48);
    v1419 = (v1568 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v1418(v1565, 1, v1566) == 1)
    {
      sub_1D1FF1A9C(v1565);
    }

    else
    {
      v1415 = *(v1568 + 32);
      v1416 = (v1568 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v1415(v1584, v1565, v1566);
      sub_1D1FE94C4(v1594, v1563);
      if (v1418(v1563, 1, v1566) == 1)
      {
        sub_1D1FF1A9C(v1563);
        (*(v1568 + 8))(v1584, v1566);
      }

      else
      {
        v1415(v1582, v1563, v1566);
        if (sub_1D208BE8C())
        {
          sub_1D1FCD668(v1530 & 1, v1617);
          if ((v1460)(v1617, 1, v1458) == 1)
          {
            sub_1D202975C(v1617);
            v1414 = v1417;
          }

          else
          {

            v1397 = 32;
            v1401 = 32;
            v1402 = 7;
            v101 = swift_allocObject();
            v102 = v1479;
            v1403 = v101;
            *(v101 + 16) = v1478;
            *(v101 + 24) = v102;
            v1413 = sub_1D208C48C();
            v1395 = v1413;
            v1412 = sub_1D208C85C();
            v1396 = v1412;
            v1398 = 17;
            v1406 = swift_allocObject();
            v1399 = v1406;
            *(v1406 + 16) = v1397;
            v1407 = swift_allocObject();
            v1400 = v1407;
            *(v1407 + 16) = 8;
            v103 = swift_allocObject();
            v104 = v1403;
            v1404 = v103;
            *(v103 + 16) = sub_1D208B9D0;
            *(v103 + 24) = v104;
            v105 = swift_allocObject();
            v106 = v1404;
            v1410 = v105;
            v1405 = v105;
            *(v105 + 16) = sub_1D205248C;
            *(v105 + 24) = v106;
            v1411 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
            v1408 = sub_1D208CB2C();
            v1409 = v107;

            v108 = v1406;
            v109 = v1409;
            *v1409 = sub_1D2029A40;
            v109[1] = v108;

            v110 = v1407;
            v111 = v1409;
            v1409[2] = sub_1D2029A40;
            v111[3] = v110;

            v112 = v1409;
            v113 = v1410;
            v1409[4] = sub_1D2052498;
            v112[5] = v113;
            sub_1D1FCECE8();

            if (os_log_type_enabled(v1413, v1412))
            {
              v1392 = v1417;
              v1387 = sub_1D208C8EC();
              v1384 = v1387;
              v1385 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
              v1388 = sub_1D2029898(0);
              v1386 = v1388;
              v1390 = 1;
              v1389 = sub_1D2029898(1);
              v1638 = v1387;
              v1637 = v1388;
              v1636 = v1389;
              v1391 = &v1638;
              sub_1D20298EC(2, &v1638);
              sub_1D20298EC(v1390, v1391);
              v114 = v1392;
              v1634 = sub_1D2029A40;
              v1635 = v1399;
              sub_1D2029900(&v1634, v1391, &v1637, &v1636);
              v1393 = v114;
              v1394 = v114;
              if (v114)
              {
                v1382 = 0;

                __break(1u);
              }

              else
              {
                v1634 = sub_1D2029A40;
                v1635 = v1400;
                sub_1D2029900(&v1634, &v1638, &v1637, &v1636);
                v1380 = 0;
                v1381 = 0;
                v1634 = sub_1D2052498;
                v1635 = v1405;
                sub_1D2029900(&v1634, &v1638, &v1637, &v1636);
                v1378 = 0;
                v1379 = 0;
                _os_log_impl(&dword_1D1FC7000, v1395, v1396, "[Deduplication] [%s] 1.1 Newer sites wins", v1384, 0xCu);
                sub_1D202994C(v1386);
                sub_1D202994C(v1389);
                sub_1D208C8BC();

                v1383 = v1378;
              }
            }

            else
            {

              v1383 = v1417;
            }

            v1377 = v1383;

            (*(v1459 + 8))(v1617, v1458);
            v1414 = v1377;
          }

          v1375 = v1414;
          sub_1D2028364(v1595, v1590);
          sub_1D208B938(v1590, v1591);
          v1374 = *(v1568 + 8);
          v1373 = v1568 + 8;
          v1374(v1582, v1566);
          v1374(v1584, v1566);
          v1376 = v1375;
LABEL_222:
          v929 = v1376;
          goto LABEL_394;
        }

        v1372 = *(v1568 + 8);
        v1371 = v1568 + 8;
        v1372(v1582, v1566);
        v1372(v1584, v1566);
      }
    }

    sub_1D1FE94C4(v1593, v1561);
    if (v1418(v1561, 1, v1566) == 1)
    {
      sub_1D1FF1A9C(v1561);
      v1370 = v1417;
    }

    else
    {
      v1368 = *(v1568 + 32);
      v1369 = (v1568 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v1368(v1580, v1561, v1566);
      sub_1D1FE94C4(v1594, v1560);
      if (v1418(v1560, 1, v1566) == 1)
      {
        sub_1D1FF1A9C(v1560);
        (*(v1568 + 8))(v1580, v1566);
        v1370 = v1417;
      }

      else
      {
        v1368(v1579, v1560, v1566);
        if (sub_1D208BEBC())
        {
          EnergySitePayload.amiLastRefreshDate.getter(v1549);
          v1366 = *(v1538 + 48);
          v1367 = (v1538 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
          if (v1366(v1549, 1, v1536) == 1)
          {
            sub_1D1FD6044(v1549);
            (*(v1568 + 56))(v1559, 1, 1, v1566);
          }

          else
          {
            sub_1D208C1BC();
            (*(v1538 + 8))(v1549, v1536);
            (*(v1568 + 56))(v1559, 0, 1, v1566);
          }

          if (v1418(v1559, 1, v1566) == 1)
          {
            sub_1D208BDDC();
            if (v1418(v1559, 1, v1566) != 1)
            {
              sub_1D1FF1A9C(v1559);
            }
          }

          else
          {
            v1368(v1578, v1559, v1566);
          }

          EnergySitePayload.amiLastRefreshDate.getter(v1547);
          if ((v1366)(v1547, 1, v1536) == 0)
          {
            (*(v1538 + 16))(v1539, v1547, v1536);
            sub_1D1FD6044(v1547);
            sub_1D208C1BC();
            (*(v1538 + 8))(v1539, v1536);
            (*(v1568 + 56))(v1558, 0, 1, v1566);
          }

          else
          {
            sub_1D1FD6044(v1547);
            (*(v1568 + 56))(v1558, 1, 1, v1566);
          }

          if (v1418(v1558, 1, v1566) == 1)
          {
            sub_1D208BDDC();
            if (v1418(v1558, 1, v1566) != 1)
            {
              sub_1D1FF1A9C(v1558);
            }
          }

          else
          {
            v1368(v1577, v1558, v1566);
          }

          v1364 = sub_1D208BE8C();
          v1363 = *(v1568 + 8);
          v1362 = v1568 + 8;
          v1360 = v1363;
          v1361 = (v1568 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v1363(v1577, v1566);
          v1363(v1578, v1566);
          if (v1364)
          {
            sub_1D1FCD668(v1530 & 1, v1616);
            if ((v1460)(v1616, 1, v1458) == 1)
            {
              sub_1D202975C(v1616);
              v1359 = v1417;
            }

            else
            {

              v1342 = 32;
              v1346 = 32;
              v1347 = 7;
              v115 = swift_allocObject();
              v116 = v1479;
              v1348 = v115;
              *(v115 + 16) = v1478;
              *(v115 + 24) = v116;
              v1358 = sub_1D208C48C();
              v1340 = v1358;
              v1357 = sub_1D208C85C();
              v1341 = v1357;
              v1343 = 17;
              v1351 = swift_allocObject();
              v1344 = v1351;
              *(v1351 + 16) = v1342;
              v1352 = swift_allocObject();
              v1345 = v1352;
              *(v1352 + 16) = 8;
              v117 = swift_allocObject();
              v118 = v1348;
              v1349 = v117;
              *(v117 + 16) = sub_1D208B9D0;
              *(v117 + 24) = v118;
              v119 = swift_allocObject();
              v120 = v1349;
              v1355 = v119;
              v1350 = v119;
              *(v119 + 16) = sub_1D205248C;
              *(v119 + 24) = v120;
              v1356 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
              v1353 = sub_1D208CB2C();
              v1354 = v121;

              v122 = v1351;
              v123 = v1354;
              *v1354 = sub_1D2029A40;
              v123[1] = v122;

              v124 = v1352;
              v125 = v1354;
              v1354[2] = sub_1D2029A40;
              v125[3] = v124;

              v126 = v1354;
              v127 = v1355;
              v1354[4] = sub_1D2052498;
              v126[5] = v127;
              sub_1D1FCECE8();

              if (os_log_type_enabled(v1358, v1357))
              {
                v1337 = v1417;
                v1332 = sub_1D208C8EC();
                v1329 = v1332;
                v1330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
                v1333 = sub_1D2029898(0);
                v1331 = v1333;
                v1335 = 1;
                v1334 = sub_1D2029898(1);
                v1643 = v1332;
                v1642 = v1333;
                v1641 = v1334;
                v1336 = &v1643;
                sub_1D20298EC(2, &v1643);
                sub_1D20298EC(v1335, v1336);
                v128 = v1337;
                v1639 = sub_1D2029A40;
                v1640 = v1344;
                sub_1D2029900(&v1639, v1336, &v1642, &v1641);
                v1338 = v128;
                v1339 = v128;
                if (v128)
                {
                  v1327 = 0;

                  __break(1u);
                }

                else
                {
                  v1639 = sub_1D2029A40;
                  v1640 = v1345;
                  sub_1D2029900(&v1639, &v1643, &v1642, &v1641);
                  v1325 = 0;
                  v1326 = 0;
                  v1639 = sub_1D2052498;
                  v1640 = v1350;
                  sub_1D2029900(&v1639, &v1643, &v1642, &v1641);
                  v1323 = 0;
                  v1324 = 0;
                  _os_log_impl(&dword_1D1FC7000, v1340, v1341, "[Deduplication] [%s] 1.2.1 Newer sites wins", v1329, 0xCu);
                  sub_1D202994C(v1331);
                  sub_1D202994C(v1334);
                  sub_1D208C8BC();

                  v1328 = v1323;
                }
              }

              else
              {

                v1328 = v1417;
              }

              v1322 = v1328;

              (*(v1459 + 8))(v1616, v1458);
              v1359 = v1322;
            }

            v1320 = v1359;
            sub_1D2028364(v1595, v1590);
            sub_1D208B938(v1590, v1591);
            v1321 = v1320;
          }

          else
          {
            EnergySitePayload.subscriptionState.getter();
            v1318 = v129;
            v1319 = sub_1D208C66C();

            if (v1319)
            {
              EnergySitePayload.subscriptionState.getter();
              v1315 = v130;
              v1316 = sub_1D208C66C();

              if (v1316)
              {
                v1310 = EnergySitePayload.subscriptionState.getter();
                v1312 = v131;
                v1644 = 2;
                v132 = EnergySiteSubscriptionErrorState.rawValue.getter();
                v1311 = v133;
                v1313 = MEMORY[0x1D38948D0](v1310, v1312, v132);

                v1314 = v1313;
              }

              else
              {
                v1314 = 0;
              }

              v1317 = v1314;
            }

            else
            {
              v1317 = 1;
            }

            if (v1317)
            {
              sub_1D1FCD668(v1530 & 1, v1615);
              if ((v1460)(v1615, 1, v1458) == 1)
              {
                sub_1D202975C(v1615);
                v1309 = v1417;
              }

              else
              {

                v1292 = 32;
                v1296 = 32;
                v1297 = 7;
                v134 = swift_allocObject();
                v135 = v1479;
                v1298 = v134;
                *(v134 + 16) = v1478;
                *(v134 + 24) = v135;
                v1308 = sub_1D208C48C();
                v1290 = v1308;
                v1307 = sub_1D208C85C();
                v1291 = v1307;
                v1293 = 17;
                v1301 = swift_allocObject();
                v1294 = v1301;
                *(v1301 + 16) = v1292;
                v1302 = swift_allocObject();
                v1295 = v1302;
                *(v1302 + 16) = 8;
                v136 = swift_allocObject();
                v137 = v1298;
                v1299 = v136;
                *(v136 + 16) = sub_1D208B9D0;
                *(v136 + 24) = v137;
                v138 = swift_allocObject();
                v139 = v1299;
                v1305 = v138;
                v1300 = v138;
                *(v138 + 16) = sub_1D205248C;
                *(v138 + 24) = v139;
                v1306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
                v1303 = sub_1D208CB2C();
                v1304 = v140;

                v141 = v1301;
                v142 = v1304;
                *v1304 = sub_1D2029A40;
                v142[1] = v141;

                v143 = v1302;
                v144 = v1304;
                v1304[2] = sub_1D2029A40;
                v144[3] = v143;

                v145 = v1304;
                v146 = v1305;
                v1304[4] = sub_1D2052498;
                v145[5] = v146;
                sub_1D1FCECE8();

                if (os_log_type_enabled(v1308, v1307))
                {
                  v1287 = v1417;
                  v1282 = sub_1D208C8EC();
                  v1279 = v1282;
                  v1280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
                  v1283 = sub_1D2029898(0);
                  v1281 = v1283;
                  v1285 = 1;
                  v1284 = sub_1D2029898(1);
                  v1649 = v1282;
                  v1648 = v1283;
                  v1647 = v1284;
                  v1286 = &v1649;
                  sub_1D20298EC(2, &v1649);
                  sub_1D20298EC(v1285, v1286);
                  v147 = v1287;
                  v1645 = sub_1D2029A40;
                  v1646 = v1294;
                  sub_1D2029900(&v1645, v1286, &v1648, &v1647);
                  v1288 = v147;
                  v1289 = v147;
                  if (v147)
                  {
                    v1277 = 0;

                    __break(1u);
                  }

                  else
                  {
                    v1645 = sub_1D2029A40;
                    v1646 = v1295;
                    sub_1D2029900(&v1645, &v1649, &v1648, &v1647);
                    v1275 = 0;
                    v1276 = 0;
                    v1645 = sub_1D2052498;
                    v1646 = v1300;
                    sub_1D2029900(&v1645, &v1649, &v1648, &v1647);
                    v1273 = 0;
                    v1274 = 0;
                    _os_log_impl(&dword_1D1FC7000, v1290, v1291, "[Deduplication] [%s] 1.2.2 Newer sites wins", v1279, 0xCu);
                    sub_1D202994C(v1281);
                    sub_1D202994C(v1284);
                    sub_1D208C8BC();

                    v1278 = v1273;
                  }
                }

                else
                {

                  v1278 = v1417;
                }

                v1272 = v1278;

                (*(v1459 + 8))(v1615, v1458);
                v1309 = v1272;
              }

              v1270 = v1309;
              sub_1D2028364(v1595, v1590);
              sub_1D208B938(v1590, v1591);
              v1271 = v1270;
            }

            else
            {
              if (EnergySitePayload.hasCurrentRatePlan.getter())
              {
                EnergySitePayload.currentRatePlan.getter(v1535);
                EnergySitePayload.currentRatePlan.getter(v1533);
                sub_1D2027A30();
                v1268 = sub_1D208C59C() ^ 1;
                sub_1D2018ECC(v1533);
                sub_1D2018ECC(v1535);
                v1269 = v1268;
              }

              else
              {
                v1269 = 0;
              }

              if (v1269)
              {
                sub_1D1FCD668(v1530 & 1, v1614);
                if ((v1460)(v1614, 1, v1458) == 1)
                {
                  sub_1D202975C(v1614);
                  v1267 = v1417;
                }

                else
                {

                  v1250 = 32;
                  v1254 = 32;
                  v1255 = 7;
                  v148 = swift_allocObject();
                  v149 = v1479;
                  v1256 = v148;
                  *(v148 + 16) = v1478;
                  *(v148 + 24) = v149;
                  v1266 = sub_1D208C48C();
                  v1248 = v1266;
                  v1265 = sub_1D208C85C();
                  v1249 = v1265;
                  v1251 = 17;
                  v1259 = swift_allocObject();
                  v1252 = v1259;
                  *(v1259 + 16) = v1250;
                  v1260 = swift_allocObject();
                  v1253 = v1260;
                  *(v1260 + 16) = 8;
                  v150 = swift_allocObject();
                  v151 = v1256;
                  v1257 = v150;
                  *(v150 + 16) = sub_1D208B9D0;
                  *(v150 + 24) = v151;
                  v152 = swift_allocObject();
                  v153 = v1257;
                  v1263 = v152;
                  v1258 = v152;
                  *(v152 + 16) = sub_1D205248C;
                  *(v152 + 24) = v153;
                  v1264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
                  v1261 = sub_1D208CB2C();
                  v1262 = v154;

                  v155 = v1259;
                  v156 = v1262;
                  *v1262 = sub_1D2029A40;
                  v156[1] = v155;

                  v157 = v1260;
                  v158 = v1262;
                  v1262[2] = sub_1D2029A40;
                  v158[3] = v157;

                  v159 = v1262;
                  v160 = v1263;
                  v1262[4] = sub_1D2052498;
                  v159[5] = v160;
                  sub_1D1FCECE8();

                  if (os_log_type_enabled(v1266, v1265))
                  {
                    v1245 = v1417;
                    v1240 = sub_1D208C8EC();
                    v1237 = v1240;
                    v1238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
                    v1241 = sub_1D2029898(0);
                    v1239 = v1241;
                    v1243 = 1;
                    v1242 = sub_1D2029898(1);
                    v1654 = v1240;
                    v1653 = v1241;
                    v1652 = v1242;
                    v1244 = &v1654;
                    sub_1D20298EC(2, &v1654);
                    sub_1D20298EC(v1243, v1244);
                    v161 = v1245;
                    v1650 = sub_1D2029A40;
                    v1651 = v1252;
                    sub_1D2029900(&v1650, v1244, &v1653, &v1652);
                    v1246 = v161;
                    v1247 = v161;
                    if (v161)
                    {
                      v1235 = 0;

                      __break(1u);
                    }

                    else
                    {
                      v1650 = sub_1D2029A40;
                      v1651 = v1253;
                      sub_1D2029900(&v1650, &v1654, &v1653, &v1652);
                      v1233 = 0;
                      v1234 = 0;
                      v1650 = sub_1D2052498;
                      v1651 = v1258;
                      sub_1D2029900(&v1650, &v1654, &v1653, &v1652);
                      v1231 = 0;
                      v1232 = 0;
                      _os_log_impl(&dword_1D1FC7000, v1248, v1249, "[Deduplication] [%s] 1.2.3 Newer sites wins", v1237, 0xCu);
                      sub_1D202994C(v1239);
                      sub_1D202994C(v1242);
                      sub_1D208C8BC();

                      v1236 = v1231;
                    }
                  }

                  else
                  {

                    v1236 = v1417;
                  }

                  v1230 = v1236;

                  (*(v1459 + 8))(v1614, v1458);
                  v1267 = v1230;
                }

                v1228 = v1267;
                sub_1D2028364(v1595, v1590);
                sub_1D208B938(v1590, v1591);
                v1229 = v1228;
              }

              else
              {
                v1713 = EnergySitePayload.siteVersion.getter();
                v1711 = v1713;
                v1712 = BYTE4(v1713);
                if ((v1713 & 0x100000000) != 0)
                {
                  v1227 = 1;
                }

                else
                {
                  v1227 = v1711;
                }

                v1226 = v1227;
                v1710 = EnergySitePayload.siteVersion.getter();
                v1708 = v1710;
                v1709 = BYTE4(v1710);
                if ((v1710 & 0x100000000) != 0)
                {
                  v1225 = 1;
                }

                else
                {
                  v1225 = v1708;
                }

                if (v1225 >= v1226)
                {
                  v1180 = EnergySitePayload.generationMeters.getter();
                  v1181 = MEMORY[0x1E69E6158];
                  v1184 = sub_1D208C78C();

                  v1182 = EnergySitePayload.generationMeters.getter();
                  v1183 = sub_1D208C78C();

                  if (v1184 == v1183)
                  {
                    if (EnergySitePayload.hasExportedEnergy_p.getter())
                    {
                      v1139 = EnergySitePayload.hasExportedEnergy_p.getter() ^ 1;
                    }

                    else
                    {
                      v1139 = 0;
                    }

                    if (v1139)
                    {
                      sub_1D1FCD668(v1530 & 1, v1611);
                      if ((v1460)(v1611, 1, v1458) == 1)
                      {
                        sub_1D202975C(v1611);
                        v1138 = v1417;
                      }

                      else
                      {

                        v1121 = 32;
                        v1125 = 32;
                        v1126 = 7;
                        v191 = swift_allocObject();
                        v192 = v1479;
                        v1127 = v191;
                        *(v191 + 16) = v1478;
                        *(v191 + 24) = v192;
                        v1137 = sub_1D208C48C();
                        v1119 = v1137;
                        v1136 = sub_1D208C85C();
                        v1120 = v1136;
                        v1122 = 17;
                        v1130 = swift_allocObject();
                        v1123 = v1130;
                        *(v1130 + 16) = v1121;
                        v1131 = swift_allocObject();
                        v1124 = v1131;
                        *(v1131 + 16) = 8;
                        v193 = swift_allocObject();
                        v194 = v1127;
                        v1128 = v193;
                        *(v193 + 16) = sub_1D208B9D0;
                        *(v193 + 24) = v194;
                        v195 = swift_allocObject();
                        v196 = v1128;
                        v1134 = v195;
                        v1129 = v195;
                        *(v195 + 16) = sub_1D205248C;
                        *(v195 + 24) = v196;
                        v1135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
                        v1132 = sub_1D208CB2C();
                        v1133 = v197;

                        v198 = v1130;
                        v199 = v1133;
                        *v1133 = sub_1D2029A40;
                        v199[1] = v198;

                        v200 = v1131;
                        v201 = v1133;
                        v1133[2] = sub_1D2029A40;
                        v201[3] = v200;

                        v202 = v1133;
                        v203 = v1134;
                        v1133[4] = sub_1D2052498;
                        v202[5] = v203;
                        sub_1D1FCECE8();

                        if (os_log_type_enabled(v1137, v1136))
                        {
                          v1116 = v1417;
                          v1111 = sub_1D208C8EC();
                          v1108 = v1111;
                          v1109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
                          v1112 = sub_1D2029898(0);
                          v1110 = v1112;
                          v1114 = 1;
                          v1113 = sub_1D2029898(1);
                          v1669 = v1111;
                          v1668 = v1112;
                          v1667 = v1113;
                          v1115 = &v1669;
                          sub_1D20298EC(2, &v1669);
                          sub_1D20298EC(v1114, v1115);
                          v204 = v1116;
                          v1665 = sub_1D2029A40;
                          v1666 = v1123;
                          sub_1D2029900(&v1665, v1115, &v1668, &v1667);
                          v1117 = v204;
                          v1118 = v204;
                          if (v204)
                          {
                            v1106 = 0;

                            __break(1u);
                          }

                          else
                          {
                            v1665 = sub_1D2029A40;
                            v1666 = v1124;
                            sub_1D2029900(&v1665, &v1669, &v1668, &v1667);
                            v1104 = 0;
                            v1105 = 0;
                            v1665 = sub_1D2052498;
                            v1666 = v1129;
                            sub_1D2029900(&v1665, &v1669, &v1668, &v1667);
                            v1102 = 0;
                            v1103 = 0;
                            _os_log_impl(&dword_1D1FC7000, v1119, v1120, "[Deduplication] [%s] 1.2.6 Newer sites wins", v1108, 0xCu);
                            sub_1D202994C(v1110);
                            sub_1D202994C(v1113);
                            sub_1D208C8BC();

                            v1107 = v1102;
                          }
                        }

                        else
                        {

                          v1107 = v1417;
                        }

                        v1101 = v1107;

                        (*(v1459 + 8))(v1611, v1458);
                        v1138 = v1101;
                      }

                      v1099 = v1138;
                      sub_1D2028364(v1595, v1590);
                      sub_1D208B938(v1590, v1591);
                      v1100 = v1099;
                    }

                    else
                    {
                      v1707 = EnergySitePayload.includeRatePlanInGuidance.getter();
                      v1705 = v1707;
                      v1706 = BYTE4(v1707);
                      v1098 = (v1707 & 0x100000000) == 0;
                      if ((v1707 & 0x100000000) != 0)
                      {
                        v1096 = 0;
                      }

                      else
                      {
                        v1672 = EnergySitePayload.includeRatePlanInGuidance.getter();
                        v1670 = v1672;
                        v1671 = BYTE4(v1672);
                        v1097 = (v1672 & 0x100000000) != 0;
                        v1096 = v1097;
                      }

                      if (v1096)
                      {
                        sub_1D1FCD668(v1530 & 1, v1610);
                        if ((v1460)(v1610, 1, v1458) == 1)
                        {
                          sub_1D202975C(v1610);
                          v1095 = v1417;
                        }

                        else
                        {

                          v1078 = 32;
                          v1082 = 32;
                          v1083 = 7;
                          v205 = swift_allocObject();
                          v206 = v1479;
                          v1084 = v205;
                          *(v205 + 16) = v1478;
                          *(v205 + 24) = v206;
                          v1094 = sub_1D208C48C();
                          v1076 = v1094;
                          v1093 = sub_1D208C85C();
                          v1077 = v1093;
                          v1079 = 17;
                          v1087 = swift_allocObject();
                          v1080 = v1087;
                          *(v1087 + 16) = v1078;
                          v1088 = swift_allocObject();
                          v1081 = v1088;
                          *(v1088 + 16) = 8;
                          v207 = swift_allocObject();
                          v208 = v1084;
                          v1085 = v207;
                          *(v207 + 16) = sub_1D208B9D0;
                          *(v207 + 24) = v208;
                          v209 = swift_allocObject();
                          v210 = v1085;
                          v1091 = v209;
                          v1086 = v209;
                          *(v209 + 16) = sub_1D205248C;
                          *(v209 + 24) = v210;
                          v1092 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
                          v1089 = sub_1D208CB2C();
                          v1090 = v211;

                          v212 = v1087;
                          v213 = v1090;
                          *v1090 = sub_1D2029A40;
                          v213[1] = v212;

                          v214 = v1088;
                          v215 = v1090;
                          v1090[2] = sub_1D2029A40;
                          v215[3] = v214;

                          v216 = v1090;
                          v217 = v1091;
                          v1090[4] = sub_1D2052498;
                          v216[5] = v217;
                          sub_1D1FCECE8();

                          if (os_log_type_enabled(v1094, v1093))
                          {
                            v1073 = v1417;
                            v1068 = sub_1D208C8EC();
                            v1065 = v1068;
                            v1066 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
                            v1069 = sub_1D2029898(0);
                            v1067 = v1069;
                            v1071 = 1;
                            v1070 = sub_1D2029898(1);
                            v1677 = v1068;
                            v1676 = v1069;
                            v1675 = v1070;
                            v1072 = &v1677;
                            sub_1D20298EC(2, &v1677);
                            sub_1D20298EC(v1071, v1072);
                            v218 = v1073;
                            v1673 = sub_1D2029A40;
                            v1674 = v1080;
                            sub_1D2029900(&v1673, v1072, &v1676, &v1675);
                            v1074 = v218;
                            v1075 = v218;
                            if (v218)
                            {
                              v1063 = 0;

                              __break(1u);
                            }

                            else
                            {
                              v1673 = sub_1D2029A40;
                              v1674 = v1081;
                              sub_1D2029900(&v1673, &v1677, &v1676, &v1675);
                              v1061 = 0;
                              v1062 = 0;
                              v1673 = sub_1D2052498;
                              v1674 = v1086;
                              sub_1D2029900(&v1673, &v1677, &v1676, &v1675);
                              v1059 = 0;
                              v1060 = 0;
                              _os_log_impl(&dword_1D1FC7000, v1076, v1077, "[Deduplication] [%s] 1.2.7 Newer sites wins", v1065, 0xCu);
                              sub_1D202994C(v1067);
                              sub_1D202994C(v1070);
                              sub_1D208C8BC();

                              v1064 = v1059;
                            }
                          }

                          else
                          {

                            v1064 = v1417;
                          }

                          v1058 = v1064;

                          (*(v1459 + 8))(v1610, v1458);
                          v1095 = v1058;
                        }

                        v1056 = v1095;
                        sub_1D2028364(v1595, v1590);
                        sub_1D208B938(v1590, v1591);
                        v1057 = v1056;
                      }

                      else
                      {
                        v1704 = EnergySitePayload.includeRatePlanInGuidance.getter();
                        v1702 = v1704;
                        v1703 = BYTE4(v1704);
                        v1055 = (v1704 & 0x100000000) == 0;
                        if ((v1704 & 0x100000000) != 0)
                        {
                          v1053 = 0;
                        }

                        else
                        {
                          v1680 = EnergySitePayload.includeRatePlanInGuidance.getter();
                          v1678 = v1680;
                          v1679 = BYTE4(v1680);
                          v1054 = (v1680 & 0x100000000) == 0;
                          v1053 = v1054;
                        }

                        if (v1053)
                        {
                          sub_1D1FCD668(v1530 & 1, v1609);
                          if ((v1460)(v1609, 1, v1458) == 1)
                          {
                            sub_1D202975C(v1609);
                            v1052 = v1417;
                          }

                          else
                          {

                            v1035 = 32;
                            v1039 = 32;
                            v1040 = 7;
                            v219 = swift_allocObject();
                            v220 = v1479;
                            v1041 = v219;
                            *(v219 + 16) = v1478;
                            *(v219 + 24) = v220;
                            v1051 = sub_1D208C48C();
                            v1033 = v1051;
                            v1050 = sub_1D208C85C();
                            v1034 = v1050;
                            v1036 = 17;
                            v1044 = swift_allocObject();
                            v1037 = v1044;
                            *(v1044 + 16) = v1035;
                            v1045 = swift_allocObject();
                            v1038 = v1045;
                            *(v1045 + 16) = 8;
                            v221 = swift_allocObject();
                            v222 = v1041;
                            v1042 = v221;
                            *(v221 + 16) = sub_1D208B9D0;
                            *(v221 + 24) = v222;
                            v223 = swift_allocObject();
                            v224 = v1042;
                            v1048 = v223;
                            v1043 = v223;
                            *(v223 + 16) = sub_1D205248C;
                            *(v223 + 24) = v224;
                            v1049 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
                            v1046 = sub_1D208CB2C();
                            v1047 = v225;

                            v226 = v1044;
                            v227 = v1047;
                            *v1047 = sub_1D2029A40;
                            v227[1] = v226;

                            v228 = v1045;
                            v229 = v1047;
                            v1047[2] = sub_1D2029A40;
                            v229[3] = v228;

                            v230 = v1047;
                            v231 = v1048;
                            v1047[4] = sub_1D2052498;
                            v230[5] = v231;
                            sub_1D1FCECE8();

                            if (os_log_type_enabled(v1051, v1050))
                            {
                              v1030 = v1417;
                              v1025 = sub_1D208C8EC();
                              v1022 = v1025;
                              v1023 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
                              v1026 = sub_1D2029898(0);
                              v1024 = v1026;
                              v1028 = 1;
                              v1027 = sub_1D2029898(1);
                              v1685 = v1025;
                              v1684 = v1026;
                              v1683 = v1027;
                              v1029 = &v1685;
                              sub_1D20298EC(2, &v1685);
                              sub_1D20298EC(v1028, v1029);
                              v232 = v1030;
                              v1681 = sub_1D2029A40;
                              v1682 = v1037;
                              sub_1D2029900(&v1681, v1029, &v1684, &v1683);
                              v1031 = v232;
                              v1032 = v232;
                              if (v232)
                              {
                                v1020 = 0;

                                __break(1u);
                              }

                              else
                              {
                                v1681 = sub_1D2029A40;
                                v1682 = v1038;
                                sub_1D2029900(&v1681, &v1685, &v1684, &v1683);
                                v1018 = 0;
                                v1019 = 0;
                                v1681 = sub_1D2052498;
                                v1682 = v1043;
                                sub_1D2029900(&v1681, &v1685, &v1684, &v1683);
                                v1016 = 0;
                                v1017 = 0;
                                _os_log_impl(&dword_1D1FC7000, v1033, v1034, "[Deduplication] [%s] 1.2.8 Newer sites wins.", v1022, 0xCu);
                                sub_1D202994C(v1024);
                                sub_1D202994C(v1027);
                                sub_1D208C8BC();

                                v1021 = v1016;
                              }
                            }

                            else
                            {

                              v1021 = v1417;
                            }

                            v1015 = v1021;

                            (*(v1459 + 8))(v1609, v1458);
                            v1052 = v1015;
                          }

                          v1013 = v1052;
                          sub_1D2028364(v1595, v1590);
                          sub_1D208B938(v1590, v1591);
                          v1014 = v1013;
                        }

                        else
                        {
                          v1701 = EnergySitePayload.includeRatePlanInGuidance.getter();
                          v1699 = v1701;
                          v1700 = BYTE4(v1701);
                          v1012 = (v1701 & 0x100000000) != 0;
                          if ((v1701 & 0x100000000) != 0)
                          {
                            v1688 = EnergySitePayload.includeRatePlanInGuidance.getter();
                            v1686 = v1688;
                            v1687 = BYTE4(v1688);
                            v1011 = (v1688 & 0x100000000) == 0;
                            v1010 = v1011;
                          }

                          else
                          {
                            v1010 = 0;
                          }

                          if (v1010)
                          {
                            sub_1D1FCD668(v1530 & 1, v1608);
                            if ((v1460)(v1608, 1, v1458) == 1)
                            {
                              sub_1D202975C(v1608);
                              v1009 = v1417;
                            }

                            else
                            {

                              v992 = 32;
                              v996 = 32;
                              v997 = 7;
                              v233 = swift_allocObject();
                              v234 = v1479;
                              v998 = v233;
                              *(v233 + 16) = v1478;
                              *(v233 + 24) = v234;
                              v1008 = sub_1D208C48C();
                              v990 = v1008;
                              v1007 = sub_1D208C85C();
                              v991 = v1007;
                              v993 = 17;
                              v1001 = swift_allocObject();
                              v994 = v1001;
                              *(v1001 + 16) = v992;
                              v1002 = swift_allocObject();
                              v995 = v1002;
                              *(v1002 + 16) = 8;
                              v235 = swift_allocObject();
                              v236 = v998;
                              v999 = v235;
                              *(v235 + 16) = sub_1D208B9D0;
                              *(v235 + 24) = v236;
                              v237 = swift_allocObject();
                              v238 = v999;
                              v1005 = v237;
                              v1000 = v237;
                              *(v237 + 16) = sub_1D205248C;
                              *(v237 + 24) = v238;
                              v1006 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
                              v1003 = sub_1D208CB2C();
                              v1004 = v239;

                              v240 = v1001;
                              v241 = v1004;
                              *v1004 = sub_1D2029A40;
                              v241[1] = v240;

                              v242 = v1002;
                              v243 = v1004;
                              v1004[2] = sub_1D2029A40;
                              v243[3] = v242;

                              v244 = v1004;
                              v245 = v1005;
                              v1004[4] = sub_1D2052498;
                              v244[5] = v245;
                              sub_1D1FCECE8();

                              if (os_log_type_enabled(v1008, v1007))
                              {
                                v987 = v1417;
                                v982 = sub_1D208C8EC();
                                v979 = v982;
                                v980 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
                                v983 = sub_1D2029898(0);
                                v981 = v983;
                                v985 = 1;
                                v984 = sub_1D2029898(1);
                                v1693 = v982;
                                v1692 = v983;
                                v1691 = v984;
                                v986 = &v1693;
                                sub_1D20298EC(2, &v1693);
                                sub_1D20298EC(v985, v986);
                                v246 = v987;
                                v1689 = sub_1D2029A40;
                                v1690 = v994;
                                sub_1D2029900(&v1689, v986, &v1692, &v1691);
                                v988 = v246;
                                v989 = v246;
                                if (v246)
                                {
                                  v977 = 0;

                                  __break(1u);
                                }

                                else
                                {
                                  v1689 = sub_1D2029A40;
                                  v1690 = v995;
                                  sub_1D2029900(&v1689, &v1693, &v1692, &v1691);
                                  v975 = 0;
                                  v976 = 0;
                                  v1689 = sub_1D2052498;
                                  v1690 = v1000;
                                  sub_1D2029900(&v1689, &v1693, &v1692, &v1691);
                                  v973 = 0;
                                  v974 = 0;
                                  _os_log_impl(&dword_1D1FC7000, v990, v991, "[Deduplication] [%s] 1.2.9 older sites wins", v979, 0xCu);
                                  sub_1D202994C(v981);
                                  sub_1D202994C(v984);
                                  sub_1D208C8BC();

                                  v978 = v973;
                                }
                              }

                              else
                              {

                                v978 = v1417;
                              }

                              v972 = v978;

                              (*(v1459 + 8))(v1608, v1458);
                              v1009 = v972;
                            }

                            v971 = v1009;
                          }

                          else
                          {
                            sub_1D1FCD668(v1530 & 1, v1607);
                            if ((v1460)(v1607, 1, v1458) == 1)
                            {
                              sub_1D202975C(v1607);
                              v970 = v1417;
                            }

                            else
                            {

                              v953 = 32;
                              v957 = 32;
                              v958 = 7;
                              v247 = swift_allocObject();
                              v248 = v1479;
                              v959 = v247;
                              *(v247 + 16) = v1478;
                              *(v247 + 24) = v248;
                              v969 = sub_1D208C48C();
                              v951 = v969;
                              v968 = sub_1D208C85C();
                              v952 = v968;
                              v954 = 17;
                              v962 = swift_allocObject();
                              v955 = v962;
                              *(v962 + 16) = v953;
                              v963 = swift_allocObject();
                              v956 = v963;
                              *(v963 + 16) = 8;
                              v249 = swift_allocObject();
                              v250 = v959;
                              v960 = v249;
                              *(v249 + 16) = sub_1D208B9D0;
                              *(v249 + 24) = v250;
                              v251 = swift_allocObject();
                              v252 = v960;
                              v966 = v251;
                              v961 = v251;
                              *(v251 + 16) = sub_1D205248C;
                              *(v251 + 24) = v252;
                              v967 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
                              v964 = sub_1D208CB2C();
                              v965 = v253;

                              v254 = v962;
                              v255 = v965;
                              *v965 = sub_1D2029A40;
                              v255[1] = v254;

                              v256 = v963;
                              v257 = v965;
                              v965[2] = sub_1D2029A40;
                              v257[3] = v256;

                              v258 = v965;
                              v259 = v966;
                              v965[4] = sub_1D2052498;
                              v258[5] = v259;
                              sub_1D1FCECE8();

                              if (os_log_type_enabled(v969, v968))
                              {
                                v948 = v1417;
                                v943 = sub_1D208C8EC();
                                v940 = v943;
                                v941 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
                                v944 = sub_1D2029898(0);
                                v942 = v944;
                                v946 = 1;
                                v945 = sub_1D2029898(1);
                                v1698 = v943;
                                v1697 = v944;
                                v1696 = v945;
                                v947 = &v1698;
                                sub_1D20298EC(2, &v1698);
                                sub_1D20298EC(v946, v947);
                                v260 = v948;
                                v1694 = sub_1D2029A40;
                                v1695 = v955;
                                sub_1D2029900(&v1694, v947, &v1697, &v1696);
                                v949 = v260;
                                v950 = v260;
                                if (v260)
                                {
                                  v938 = 0;

                                  __break(1u);
                                }

                                else
                                {
                                  v1694 = sub_1D2029A40;
                                  v1695 = v956;
                                  sub_1D2029900(&v1694, &v1698, &v1697, &v1696);
                                  v936 = 0;
                                  v937 = 0;
                                  v1694 = sub_1D2052498;
                                  v1695 = v961;
                                  sub_1D2029900(&v1694, &v1698, &v1697, &v1696);
                                  v934 = 0;
                                  v935 = 0;
                                  _os_log_impl(&dword_1D1FC7000, v951, v952, "[Deduplication] [%s] 1.2.10 older sites wins", v940, 0xCu);
                                  sub_1D202994C(v942);
                                  sub_1D202994C(v945);
                                  sub_1D208C8BC();

                                  v939 = v934;
                                }
                              }

                              else
                              {

                                v939 = v1417;
                              }

                              v933 = v939;

                              (*(v1459 + 8))(v1607, v1458);
                              v970 = v933;
                            }

                            v971 = v970;
                          }

                          v1014 = v971;
                        }

                        v1057 = v1014;
                      }

                      v1100 = v1057;
                    }

                    v1141 = v1100;
                  }

                  else
                  {
                    sub_1D1FCD668(v1530 & 1, v1612);
                    if ((v1460)(v1612, 1, v1458) == 1)
                    {
                      sub_1D202975C(v1612);
                      v1179 = v1417;
                    }

                    else
                    {

                      v1162 = 32;
                      v1166 = 32;
                      v1167 = 7;
                      v177 = swift_allocObject();
                      v178 = v1479;
                      v1168 = v177;
                      *(v177 + 16) = v1478;
                      *(v177 + 24) = v178;
                      v1178 = sub_1D208C48C();
                      v1160 = v1178;
                      v1177 = sub_1D208C85C();
                      v1161 = v1177;
                      v1163 = 17;
                      v1171 = swift_allocObject();
                      v1164 = v1171;
                      *(v1171 + 16) = v1162;
                      v1172 = swift_allocObject();
                      v1165 = v1172;
                      *(v1172 + 16) = 8;
                      v179 = swift_allocObject();
                      v180 = v1168;
                      v1169 = v179;
                      *(v179 + 16) = sub_1D208B9D0;
                      *(v179 + 24) = v180;
                      v181 = swift_allocObject();
                      v182 = v1169;
                      v1175 = v181;
                      v1170 = v181;
                      *(v181 + 16) = sub_1D205248C;
                      *(v181 + 24) = v182;
                      v1176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
                      v1173 = sub_1D208CB2C();
                      v1174 = v183;

                      v184 = v1171;
                      v185 = v1174;
                      *v1174 = sub_1D2029A40;
                      v185[1] = v184;

                      v186 = v1172;
                      v187 = v1174;
                      v1174[2] = sub_1D2029A40;
                      v187[3] = v186;

                      v188 = v1174;
                      v189 = v1175;
                      v1174[4] = sub_1D2052498;
                      v188[5] = v189;
                      sub_1D1FCECE8();

                      if (os_log_type_enabled(v1178, v1177))
                      {
                        v1157 = v1417;
                        v1152 = sub_1D208C8EC();
                        v1149 = v1152;
                        v1150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
                        v1153 = sub_1D2029898(0);
                        v1151 = v1153;
                        v1155 = 1;
                        v1154 = sub_1D2029898(1);
                        v1664 = v1152;
                        v1663 = v1153;
                        v1662 = v1154;
                        v1156 = &v1664;
                        sub_1D20298EC(2, &v1664);
                        sub_1D20298EC(v1155, v1156);
                        v190 = v1157;
                        v1660 = sub_1D2029A40;
                        v1661 = v1164;
                        sub_1D2029900(&v1660, v1156, &v1663, &v1662);
                        v1158 = v190;
                        v1159 = v190;
                        if (v190)
                        {
                          v1147 = 0;

                          __break(1u);
                        }

                        else
                        {
                          v1660 = sub_1D2029A40;
                          v1661 = v1165;
                          sub_1D2029900(&v1660, &v1664, &v1663, &v1662);
                          v1145 = 0;
                          v1146 = 0;
                          v1660 = sub_1D2052498;
                          v1661 = v1170;
                          sub_1D2029900(&v1660, &v1664, &v1663, &v1662);
                          v1143 = 0;
                          v1144 = 0;
                          _os_log_impl(&dword_1D1FC7000, v1160, v1161, "[Deduplication] [%s] 1.2.5 Newer sites wins", v1149, 0xCu);
                          sub_1D202994C(v1151);
                          sub_1D202994C(v1154);
                          sub_1D208C8BC();

                          v1148 = v1143;
                        }
                      }

                      else
                      {

                        v1148 = v1417;
                      }

                      v1142 = v1148;

                      (*(v1459 + 8))(v1612, v1458);
                      v1179 = v1142;
                    }

                    v1140 = v1179;
                    sub_1D2028364(v1595, v1590);
                    sub_1D208B938(v1590, v1591);
                    v1141 = v1140;
                  }

                  v1186 = v1141;
                }

                else
                {
                  sub_1D1FCD668(v1530 & 1, v1613);
                  v162 = (v1460)(v1613, 1, v1458);
                  if (v162 == 1)
                  {
                    sub_1D202975C(v1613);
                    v1224 = v1417;
                  }

                  else
                  {

                    v1207 = 32;
                    v1211 = 32;
                    v1212 = 7;
                    v163 = swift_allocObject();
                    v164 = v1479;
                    v1213 = v163;
                    *(v163 + 16) = v1478;
                    *(v163 + 24) = v164;
                    v1223 = sub_1D208C48C();
                    v1205 = v1223;
                    v1222 = sub_1D208C85C();
                    v1206 = v1222;
                    v1208 = 17;
                    v1216 = swift_allocObject();
                    v1209 = v1216;
                    *(v1216 + 16) = v1207;
                    v1217 = swift_allocObject();
                    v1210 = v1217;
                    *(v1217 + 16) = 8;
                    v165 = swift_allocObject();
                    v166 = v1213;
                    v1214 = v165;
                    *(v165 + 16) = sub_1D208B9D0;
                    *(v165 + 24) = v166;
                    v167 = swift_allocObject();
                    v168 = v1214;
                    v1220 = v167;
                    v1215 = v167;
                    *(v167 + 16) = sub_1D205248C;
                    *(v167 + 24) = v168;
                    v1221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
                    v1218 = sub_1D208CB2C();
                    v1219 = v169;

                    v170 = v1216;
                    v171 = v1219;
                    *v1219 = sub_1D2029A40;
                    v171[1] = v170;

                    v172 = v1217;
                    v173 = v1219;
                    v1219[2] = sub_1D2029A40;
                    v173[3] = v172;

                    v174 = v1219;
                    v175 = v1220;
                    v1219[4] = sub_1D2052498;
                    v174[5] = v175;
                    sub_1D1FCECE8();

                    if (os_log_type_enabled(v1223, v1222))
                    {
                      v1202 = v1417;
                      v1197 = sub_1D208C8EC();
                      v1194 = v1197;
                      v1195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
                      v1198 = sub_1D2029898(0);
                      v1196 = v1198;
                      v1200 = 1;
                      v1199 = sub_1D2029898(1);
                      v1659 = v1197;
                      v1658 = v1198;
                      v1657 = v1199;
                      v1201 = &v1659;
                      sub_1D20298EC(2, &v1659);
                      sub_1D20298EC(v1200, v1201);
                      v176 = v1202;
                      v1655 = sub_1D2029A40;
                      v1656 = v1209;
                      sub_1D2029900(&v1655, v1201, &v1658, &v1657);
                      v1203 = v176;
                      v1204 = v176;
                      if (v176)
                      {
                        v1192 = 0;

                        __break(1u);
                      }

                      else
                      {
                        v1655 = sub_1D2029A40;
                        v1656 = v1210;
                        sub_1D2029900(&v1655, &v1659, &v1658, &v1657);
                        v1190 = 0;
                        v1191 = 0;
                        v1655 = sub_1D2052498;
                        v1656 = v1215;
                        sub_1D2029900(&v1655, &v1659, &v1658, &v1657);
                        v1188 = 0;
                        v1189 = 0;
                        _os_log_impl(&dword_1D1FC7000, v1205, v1206, "[Deduplication] [%s] 1.2.4 Newer sites wins", v1194, 0xCu);
                        sub_1D202994C(v1196);
                        sub_1D202994C(v1199);
                        sub_1D208C8BC();

                        v1193 = v1188;
                      }
                    }

                    else
                    {

                      v1193 = v1417;
                    }

                    v1187 = v1193;

                    (*(v1459 + 8))(v1613, v1458);
                    v1224 = v1187;
                  }

                  v1185 = v1224;
                  sub_1D2028364(v1595, v1590);
                  sub_1D208B938(v1590, v1591);
                  v1186 = v1185;
                }

                v1229 = v1186;
              }

              v1271 = v1229;
            }

            v1321 = v1271;
          }

          v932 = v1321;
          v1360(v1579, v1566);
          v1360(v1580, v1566);
          v1370 = v932;
        }

        else
        {
          v931 = *(v1568 + 8);
          v930 = v1568 + 8;
          v931(v1579, v1566);
          v931(v1580, v1566);
          v1370 = v1417;
        }
      }
    }

    v1376 = v1370;
    goto LABEL_222;
  }

  EnergySitePayload.accessToken.getter();
  v927 = v261;
  v928 = sub_1D208C66C();

  if (v928)
  {
    v926 = 0;
  }

  else
  {
    EnergySitePayload.refreshToken.getter();
    v924 = v262;
    v925 = sub_1D208C66C();

    v926 = v925 ^ 1;
  }

  if (v926)
  {
    EnergySitePayload.ckFunctionToken.getter();
    v921 = v263;
    v922 = sub_1D208C66C();

    v923 = v922 ^ 1;
  }

  else
  {
    v923 = 0;
  }

  if (v923)
  {
    sub_1D1FCD668(v1530 & 1, v1606);
    v917 = sub_1D208C4AC();
    v918 = *(v917 - 8);
    v919 = *(v918 + 48);
    v920 = (v918 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v919(v1606, 1) == 1)
    {
      sub_1D202975C(v1606);
      v916 = v1477;
    }

    else
    {

      v899 = 32;
      v903 = 32;
      v904 = 7;
      v264 = swift_allocObject();
      v265 = v1479;
      v905 = v264;
      *(v264 + 16) = v1478;
      *(v264 + 24) = v265;
      v915 = sub_1D208C48C();
      v897 = v915;
      v914 = sub_1D208C85C();
      v898 = v914;
      v900 = 17;
      v908 = swift_allocObject();
      v901 = v908;
      *(v908 + 16) = v899;
      v909 = swift_allocObject();
      v902 = v909;
      *(v909 + 16) = 8;
      v266 = swift_allocObject();
      v267 = v905;
      v906 = v266;
      *(v266 + 16) = sub_1D208B9D0;
      *(v266 + 24) = v267;
      v268 = swift_allocObject();
      v269 = v906;
      v912 = v268;
      v907 = v268;
      *(v268 + 16) = sub_1D205248C;
      *(v268 + 24) = v269;
      v913 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
      v910 = sub_1D208CB2C();
      v911 = v270;

      v271 = v908;
      v272 = v911;
      *v911 = sub_1D2029A40;
      v272[1] = v271;

      v273 = v909;
      v274 = v911;
      v911[2] = sub_1D2029A40;
      v274[3] = v273;

      v275 = v911;
      v276 = v912;
      v911[4] = sub_1D2052498;
      v275[5] = v276;
      sub_1D1FCECE8();

      if (os_log_type_enabled(v915, v914))
      {
        v894 = v1477;
        v889 = sub_1D208C8EC();
        v886 = v889;
        v887 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
        v890 = sub_1D2029898(0);
        v888 = v890;
        v892 = 1;
        v891 = sub_1D2029898(1);
        v1718 = v889;
        v1717 = v890;
        v1716 = v891;
        v893 = &v1718;
        sub_1D20298EC(2, &v1718);
        sub_1D20298EC(v892, v893);
        v277 = v894;
        v1714 = sub_1D2029A40;
        v1715 = v901;
        sub_1D2029900(&v1714, v893, &v1717, &v1716);
        v895 = v277;
        v896 = v277;
        if (v277)
        {
          v884 = 0;

          __break(1u);
        }

        else
        {
          v1714 = sub_1D2029A40;
          v1715 = v902;
          sub_1D2029900(&v1714, &v1718, &v1717, &v1716);
          v882 = 0;
          v883 = 0;
          v1714 = sub_1D2052498;
          v1715 = v907;
          sub_1D2029900(&v1714, &v1718, &v1717, &v1716);
          v880 = 0;
          v881 = 0;
          _os_log_impl(&dword_1D1FC7000, v897, v898, "[Deduplication] [%s] Old site onboarded", v886, 0xCu);
          sub_1D202994C(v888);
          sub_1D202994C(v891);
          sub_1D208C8BC();

          v885 = v880;
        }
      }

      else
      {

        v885 = v1477;
      }

      v879 = v885;

      (*(v918 + 8))(v1606, v917);
      v916 = v879;
    }

    v876 = v916;
    sub_1D1FE94C4(v1594, v1557);
    v877 = *(v1568 + 48);
    v878 = (v1568 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v877(v1557, 1, v1566) == 1)
    {
      sub_1D1FF1A9C(v1557);
      v875 = v876;
    }

    else
    {
      v873 = *(v1568 + 32);
      v874 = (v1568 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v873(v1576, v1557, v1566);
      EnergySitePayload.siteTombstone.getter(v1545);
      if ((*(v1538 + 48))(v1545, 1, v1536) == 1)
      {
        sub_1D1FD6044(v1545);
        (*(v1568 + 56))(v1556, 1, 1, v1566);
      }

      else
      {
        sub_1D208C1BC();
        (*(v1538 + 8))(v1545, v1536);
        (*(v1568 + 56))(v1556, 0, 1, v1566);
      }

      if (v877(v1556, 1, v1566) == 1)
      {
        sub_1D208BDDC();
        if (v877(v1556, 1, v1566) != 1)
        {
          sub_1D1FF1A9C(v1556);
        }
      }

      else
      {
        v873(v1575, v1556, v1566);
      }

      v872 = sub_1D208BE8C();
      v870 = *(v1568 + 8);
      v871 = (v1568 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v870(v1575, v1566);
      if (v872)
      {
        sub_1D1FCD668(v1530 & 1, v1605);
        if ((v919)(v1605, 1, v917) == 1)
        {
          sub_1D202975C(v1605);
          v869 = v876;
        }

        else
        {

          v852 = 32;
          v856 = 32;
          v857 = 7;
          v278 = swift_allocObject();
          v279 = v1479;
          v858 = v278;
          *(v278 + 16) = v1478;
          *(v278 + 24) = v279;
          v868 = sub_1D208C48C();
          v850 = v868;
          v867 = sub_1D208C85C();
          v851 = v867;
          v853 = 17;
          v861 = swift_allocObject();
          v854 = v861;
          *(v861 + 16) = v852;
          v862 = swift_allocObject();
          v855 = v862;
          *(v862 + 16) = 8;
          v280 = swift_allocObject();
          v281 = v858;
          v859 = v280;
          *(v280 + 16) = sub_1D208B9D0;
          *(v280 + 24) = v281;
          v282 = swift_allocObject();
          v283 = v859;
          v865 = v282;
          v860 = v282;
          *(v282 + 16) = sub_1D205248C;
          *(v282 + 24) = v283;
          v866 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
          v863 = sub_1D208CB2C();
          v864 = v284;

          v285 = v861;
          v286 = v864;
          *v864 = sub_1D2029A40;
          v286[1] = v285;

          v287 = v862;
          v288 = v864;
          v864[2] = sub_1D2029A40;
          v288[3] = v287;

          v289 = v864;
          v290 = v865;
          v864[4] = sub_1D2052498;
          v289[5] = v290;
          sub_1D1FCECE8();

          if (os_log_type_enabled(v868, v867))
          {
            v847 = v876;
            v842 = sub_1D208C8EC();
            v839 = v842;
            v840 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
            v843 = sub_1D2029898(0);
            v841 = v843;
            v845 = 1;
            v844 = sub_1D2029898(1);
            v1723 = v842;
            v1722 = v843;
            v1721 = v844;
            v846 = &v1723;
            sub_1D20298EC(2, &v1723);
            sub_1D20298EC(v845, v846);
            v291 = v847;
            v1719 = sub_1D2029A40;
            v1720 = v854;
            sub_1D2029900(&v1719, v846, &v1722, &v1721);
            v848 = v291;
            v849 = v291;
            if (v291)
            {
              v837 = 0;

              __break(1u);
            }

            else
            {
              v1719 = sub_1D2029A40;
              v1720 = v855;
              sub_1D2029900(&v1719, &v1723, &v1722, &v1721);
              v835 = 0;
              v836 = 0;
              v1719 = sub_1D2052498;
              v1720 = v860;
              sub_1D2029900(&v1719, &v1723, &v1722, &v1721);
              v833 = 0;
              v834 = 0;
              _os_log_impl(&dword_1D1FC7000, v850, v851, "[Deduplication] [%s] 2.1 Newer sites wins", v839, 0xCu);
              sub_1D202994C(v841);
              sub_1D202994C(v844);
              sub_1D208C8BC();

              v838 = v833;
            }
          }

          else
          {

            v838 = v876;
          }

          v832 = v838;

          (*(v918 + 8))(v1605, v917);
          v869 = v832;
        }

        v831 = v869;
        sub_1D2028364(v1595, v1590);
        sub_1D208B938(v1590, v1591);
        v870(v1576, v1566);
        v875 = v831;
      }

      else
      {
        v870(v1576, v1566);
        v875 = v876;
      }
    }

    v830 = v875;
  }

  else
  {
    EnergySitePayload.accessToken.getter();
    v828 = v292;
    v829 = sub_1D208C66C();

    if (v829)
    {
      v827 = 0;
    }

    else
    {
      EnergySitePayload.refreshToken.getter();
      v825 = v293;
      v826 = sub_1D208C66C();

      v827 = v826 ^ 1;
    }

    if (v827)
    {
      EnergySitePayload.ckFunctionToken.getter();
      v822 = v294;
      v823 = sub_1D208C66C();

      v824 = v823 ^ 1;
    }

    else
    {
      v824 = 0;
    }

    if (v824)
    {
      sub_1D1FCD668(v1530 & 1, v1604);
      v818 = sub_1D208C4AC();
      v819 = *(v818 - 8);
      v820 = *(v819 + 48);
      v821 = (v819 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v820(v1604, 1) == 1)
      {
        sub_1D202975C(v1604);
        v817 = v1477;
      }

      else
      {

        v800 = 32;
        v804 = 32;
        v805 = 7;
        v295 = swift_allocObject();
        v296 = v1479;
        v806 = v295;
        *(v295 + 16) = v1478;
        *(v295 + 24) = v296;
        v816 = sub_1D208C48C();
        v798 = v816;
        v815 = sub_1D208C85C();
        v799 = v815;
        v801 = 17;
        v809 = swift_allocObject();
        v802 = v809;
        *(v809 + 16) = v800;
        v810 = swift_allocObject();
        v803 = v810;
        *(v810 + 16) = 8;
        v297 = swift_allocObject();
        v298 = v806;
        v807 = v297;
        *(v297 + 16) = sub_1D208B9D0;
        *(v297 + 24) = v298;
        v299 = swift_allocObject();
        v300 = v807;
        v813 = v299;
        v808 = v299;
        *(v299 + 16) = sub_1D205248C;
        *(v299 + 24) = v300;
        v814 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
        v811 = sub_1D208CB2C();
        v812 = v301;

        v302 = v809;
        v303 = v812;
        *v812 = sub_1D2029A40;
        v303[1] = v302;

        v304 = v810;
        v305 = v812;
        v812[2] = sub_1D2029A40;
        v305[3] = v304;

        v306 = v812;
        v307 = v813;
        v812[4] = sub_1D2052498;
        v306[5] = v307;
        sub_1D1FCECE8();

        if (os_log_type_enabled(v816, v815))
        {
          v795 = v1477;
          v790 = sub_1D208C8EC();
          v787 = v790;
          v788 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
          v791 = sub_1D2029898(0);
          v789 = v791;
          v793 = 1;
          v792 = sub_1D2029898(1);
          v1728 = v790;
          v1727 = v791;
          v1726 = v792;
          v794 = &v1728;
          sub_1D20298EC(2, &v1728);
          sub_1D20298EC(v793, v794);
          v308 = v795;
          v1724 = sub_1D2029A40;
          v1725 = v802;
          sub_1D2029900(&v1724, v794, &v1727, &v1726);
          v796 = v308;
          v797 = v308;
          if (v308)
          {
            v785 = 0;

            __break(1u);
          }

          else
          {
            v1724 = sub_1D2029A40;
            v1725 = v803;
            sub_1D2029900(&v1724, &v1728, &v1727, &v1726);
            v783 = 0;
            v784 = 0;
            v1724 = sub_1D2052498;
            v1725 = v808;
            sub_1D2029900(&v1724, &v1728, &v1727, &v1726);
            v781 = 0;
            v782 = 0;
            _os_log_impl(&dword_1D1FC7000, v798, v799, "[Deduplication] [%s] new site onboarded", v787, 0xCu);
            sub_1D202994C(v789);
            sub_1D202994C(v792);
            sub_1D208C8BC();

            v786 = v781;
          }
        }

        else
        {

          v786 = v1477;
        }

        v780 = v786;

        (*(v819 + 8))(v1604, v818);
        v817 = v780;
      }

      v777 = v817;
      sub_1D1FE94C4(v1593, v1555);
      v778 = *(v1568 + 48);
      v779 = (v1568 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v778(v1555, 1, v1566) == 1)
      {
        sub_1D1FF1A9C(v1555);
        v776 = v777;
      }

      else
      {
        v773 = *(v1568 + 32);
        v774 = (v1568 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v773(v1574, v1555, v1566);
        EnergySitePayload.siteTombstone.getter(v1544);
        if ((*(v1538 + 48))(v1544, 1, v1536) == 0)
        {
          (*(v1538 + 16))(v1539, v1544, v1536);
          sub_1D1FD6044(v1544);
          sub_1D208C1BC();
          (*(v1538 + 8))(v1539, v1536);
          (*(v1568 + 56))(v1554, 0, 1, v1566);
        }

        else
        {
          sub_1D1FD6044(v1544);
          (*(v1568 + 56))(v1554, 1, 1, v1566);
        }

        if (v778(v1554, 1, v1566) == 1)
        {
          sub_1D208BDDC();
          if (v778(v1554, 1, v1566) != 1)
          {
            sub_1D1FF1A9C(v1554);
          }
        }

        else
        {
          v773(v1573, v1554, v1566);
        }

        v772 = sub_1D208BE9C();
        v770 = *(v1568 + 8);
        v771 = (v1568 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v770(v1573, v1566);
        if (v772)
        {
          sub_1D1FCD668(v1530 & 1, v1603);
          if ((v820)(v1603, 1, v818) == 1)
          {
            sub_1D202975C(v1603);
            v769 = v777;
          }

          else
          {

            v752 = 32;
            v756 = 32;
            v757 = 7;
            v309 = swift_allocObject();
            v310 = v1479;
            v758 = v309;
            *(v309 + 16) = v1478;
            *(v309 + 24) = v310;
            v768 = sub_1D208C48C();
            v750 = v768;
            v767 = sub_1D208C85C();
            v751 = v767;
            v753 = 17;
            v761 = swift_allocObject();
            v754 = v761;
            *(v761 + 16) = v752;
            v762 = swift_allocObject();
            v755 = v762;
            *(v762 + 16) = 8;
            v311 = swift_allocObject();
            v312 = v758;
            v759 = v311;
            *(v311 + 16) = sub_1D208B9D0;
            *(v311 + 24) = v312;
            v313 = swift_allocObject();
            v314 = v759;
            v765 = v313;
            v760 = v313;
            *(v313 + 16) = sub_1D205248C;
            *(v313 + 24) = v314;
            v766 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
            v763 = sub_1D208CB2C();
            v764 = v315;

            v316 = v761;
            v317 = v764;
            *v764 = sub_1D2029A40;
            v317[1] = v316;

            v318 = v762;
            v319 = v764;
            v764[2] = sub_1D2029A40;
            v319[3] = v318;

            v320 = v764;
            v321 = v765;
            v764[4] = sub_1D2052498;
            v320[5] = v321;
            sub_1D1FCECE8();

            if (os_log_type_enabled(v768, v767))
            {
              v747 = v777;
              v742 = sub_1D208C8EC();
              v739 = v742;
              v740 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
              v743 = sub_1D2029898(0);
              v741 = v743;
              v745 = 1;
              v744 = sub_1D2029898(1);
              v1733 = v742;
              v1732 = v743;
              v1731 = v744;
              v746 = &v1733;
              sub_1D20298EC(2, &v1733);
              sub_1D20298EC(v745, v746);
              v322 = v747;
              v1729 = sub_1D2029A40;
              v1730 = v754;
              sub_1D2029900(&v1729, v746, &v1732, &v1731);
              v748 = v322;
              v749 = v322;
              if (v322)
              {
                v737 = 0;

                __break(1u);
              }

              else
              {
                v1729 = sub_1D2029A40;
                v1730 = v755;
                sub_1D2029900(&v1729, &v1733, &v1732, &v1731);
                v735 = 0;
                v736 = 0;
                v1729 = sub_1D2052498;
                v1730 = v760;
                sub_1D2029900(&v1729, &v1733, &v1732, &v1731);
                v733 = 0;
                v734 = 0;
                _os_log_impl(&dword_1D1FC7000, v750, v751, "[Deduplication] [%s] 3.1 Newer sites wins", v739, 0xCu);
                sub_1D202994C(v741);
                sub_1D202994C(v744);
                sub_1D208C8BC();

                v738 = v733;
              }
            }

            else
            {

              v738 = v777;
            }

            v732 = v738;

            (*(v819 + 8))(v1603, v818);
            v769 = v732;
          }

          v731 = v769;
          sub_1D2028364(v1595, v1590);
          sub_1D208B938(v1590, v1591);
          v770(v1574, v1566);
          v776 = v731;
        }

        else
        {
          v770(v1574, v1566);
          v776 = v777;
        }
      }

      v730 = v776;
    }

    else
    {
      sub_1D1FCD668(v1530 & 1, v1602);
      v726 = sub_1D208C4AC();
      v727 = *(v726 - 8);
      v728 = *(v727 + 48);
      v729 = (v727 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v728(v1602, 1) == 1)
      {
        sub_1D202975C(v1602);
        v725 = v1477;
      }

      else
      {

        v708 = 32;
        v712 = 32;
        v713 = 7;
        v323 = swift_allocObject();
        v324 = v1479;
        v714 = v323;
        *(v323 + 16) = v1478;
        *(v323 + 24) = v324;
        v724 = sub_1D208C48C();
        v706 = v724;
        v723 = sub_1D208C85C();
        v707 = v723;
        v709 = 17;
        v717 = swift_allocObject();
        v710 = v717;
        *(v717 + 16) = v708;
        v718 = swift_allocObject();
        v711 = v718;
        *(v718 + 16) = 8;
        v325 = swift_allocObject();
        v326 = v714;
        v715 = v325;
        *(v325 + 16) = sub_1D208B9D0;
        *(v325 + 24) = v326;
        v327 = swift_allocObject();
        v328 = v715;
        v721 = v327;
        v716 = v327;
        *(v327 + 16) = sub_1D205248C;
        *(v327 + 24) = v328;
        v722 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
        v719 = sub_1D208CB2C();
        v720 = v329;

        v330 = v717;
        v331 = v720;
        *v720 = sub_1D2029A40;
        v331[1] = v330;

        v332 = v718;
        v333 = v720;
        v720[2] = sub_1D2029A40;
        v333[3] = v332;

        v334 = v720;
        v335 = v721;
        v720[4] = sub_1D2052498;
        v334[5] = v335;
        sub_1D1FCECE8();

        if (os_log_type_enabled(v724, v723))
        {
          v703 = v1477;
          v698 = sub_1D208C8EC();
          v695 = v698;
          v696 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
          v699 = sub_1D2029898(0);
          v697 = v699;
          v701 = 1;
          v700 = sub_1D2029898(1);
          v1738 = v698;
          v1737 = v699;
          v1736 = v700;
          v702 = &v1738;
          sub_1D20298EC(2, &v1738);
          sub_1D20298EC(v701, v702);
          v336 = v703;
          v1734 = sub_1D2029A40;
          v1735 = v710;
          sub_1D2029900(&v1734, v702, &v1737, &v1736);
          v704 = v336;
          v705 = v336;
          if (v336)
          {
            v693 = 0;

            __break(1u);
          }

          else
          {
            v1734 = sub_1D2029A40;
            v1735 = v711;
            sub_1D2029900(&v1734, &v1738, &v1737, &v1736);
            v691 = 0;
            v692 = 0;
            v1734 = sub_1D2052498;
            v1735 = v716;
            sub_1D2029900(&v1734, &v1738, &v1737, &v1736);
            v689 = 0;
            v690 = 0;
            _os_log_impl(&dword_1D1FC7000, v706, v707, "[Deduplication] [%s] No site onboarded", v695, 0xCu);
            sub_1D202994C(v697);
            sub_1D202994C(v700);
            sub_1D208C8BC();

            v694 = v689;
          }
        }

        else
        {

          v694 = v1477;
        }

        v688 = v694;

        (*(v727 + 8))(v1602, v726);
        v725 = v688;
      }

      v685 = v725;
      EnergySitePayload.siteTombstone.getter(v1543);
      v686 = *(v1538 + 48);
      v687 = (v1538 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v686(v1543, 1, v1536) == 1)
      {
        sub_1D1FD6044(v1543);
        (*(v1568 + 56))(v1553, 1, 1, v1566);
      }

      else
      {
        sub_1D208C1BC();
        (*(v1538 + 8))(v1543, v1536);
        (*(v1568 + 56))(v1553, 0, 1, v1566);
      }

      v683 = *(v1568 + 48);
      v684 = (v1568 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v683(v1553, 1, v1566) == 1)
      {
        sub_1D208BDDC();
        if (v683(v1553, 1, v1566) != 1)
        {
          sub_1D1FF1A9C(v1553);
        }
      }

      else
      {
        (*(v1568 + 32))(v1572, v1553, v1566);
      }

      EnergySitePayload.siteTombstone.getter(v1542);
      if ((v686)(v1542, 1, v1536) == 0)
      {
        (*(v1538 + 16))(v1539, v1542, v1536);
        sub_1D1FD6044(v1542);
        sub_1D208C1BC();
        (*(v1538 + 8))(v1539, v1536);
        (*(v1568 + 56))(v1552, 0, 1, v1566);
      }

      else
      {
        sub_1D1FD6044(v1542);
        (*(v1568 + 56))(v1552, 1, 1, v1566);
      }

      if (v683(v1552, 1, v1566) == 1)
      {
        sub_1D208BDDC();
        if (v683(v1552, 1, v1566) != 1)
        {
          sub_1D1FF1A9C(v1552);
        }
      }

      else
      {
        (*(v1568 + 32))(v1571, v1552, v1566);
      }

      v681 = sub_1D208BE8C();
      v680 = *(v1568 + 8);
      v679 = v1568 + 8;
      v677 = v680;
      v678 = (v1568 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v680(v1571, v1566);
      v680(v1572, v1566);
      if (v681)
      {
        sub_1D1FCD668(v1530 & 1, v1601);
        if ((v728)(v1601, 1, v726) == 1)
        {
          sub_1D202975C(v1601);
          v676 = v685;
        }

        else
        {

          v659 = 32;
          v663 = 32;
          v664 = 7;
          v337 = swift_allocObject();
          v338 = v1479;
          v665 = v337;
          *(v337 + 16) = v1478;
          *(v337 + 24) = v338;
          v675 = sub_1D208C48C();
          v657 = v675;
          v674 = sub_1D208C85C();
          v658 = v674;
          v660 = 17;
          v668 = swift_allocObject();
          v661 = v668;
          *(v668 + 16) = v659;
          v669 = swift_allocObject();
          v662 = v669;
          *(v669 + 16) = 8;
          v339 = swift_allocObject();
          v340 = v665;
          v666 = v339;
          *(v339 + 16) = sub_1D208B9D0;
          *(v339 + 24) = v340;
          v341 = swift_allocObject();
          v342 = v666;
          v672 = v341;
          v667 = v341;
          *(v341 + 16) = sub_1D205248C;
          *(v341 + 24) = v342;
          v673 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
          v670 = sub_1D208CB2C();
          v671 = v343;

          v344 = v668;
          v345 = v671;
          *v671 = sub_1D2029A40;
          v345[1] = v344;

          v346 = v669;
          v347 = v671;
          v671[2] = sub_1D2029A40;
          v347[3] = v346;

          v348 = v671;
          v349 = v672;
          v671[4] = sub_1D2052498;
          v348[5] = v349;
          sub_1D1FCECE8();

          if (os_log_type_enabled(v675, v674))
          {
            v654 = v685;
            v649 = sub_1D208C8EC();
            v646 = v649;
            v647 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
            v650 = sub_1D2029898(0);
            v648 = v650;
            v652 = 1;
            v651 = sub_1D2029898(1);
            v1743 = v649;
            v1742 = v650;
            v1741 = v651;
            v653 = &v1743;
            sub_1D20298EC(2, &v1743);
            sub_1D20298EC(v652, v653);
            v350 = v654;
            v1739 = sub_1D2029A40;
            v1740 = v661;
            sub_1D2029900(&v1739, v653, &v1742, &v1741);
            v655 = v350;
            v656 = v350;
            if (v350)
            {
              v644 = 0;

              __break(1u);
            }

            else
            {
              v1739 = sub_1D2029A40;
              v1740 = v662;
              sub_1D2029900(&v1739, &v1743, &v1742, &v1741);
              v642 = 0;
              v643 = 0;
              v1739 = sub_1D2052498;
              v1740 = v667;
              sub_1D2029900(&v1739, &v1743, &v1742, &v1741);
              v640 = 0;
              v641 = 0;
              _os_log_impl(&dword_1D1FC7000, v657, v658, "[Deduplication] [%s] 4.1 Newer sites wins", v646, 0xCu);
              sub_1D202994C(v648);
              sub_1D202994C(v651);
              sub_1D208C8BC();

              v645 = v640;
            }
          }

          else
          {

            v645 = v685;
          }

          v639 = v645;

          (*(v727 + 8))(v1601, v726);
          v676 = v639;
        }

        v637 = v676;
        sub_1D2028364(v1595, v1590);
        sub_1D208B938(v1590, v1591);
        v638 = v637;
      }

      else
      {
        EnergySitePayload.siteTombstone.getter(v1541);
        if ((v686)(v1541, 1, v1536) == 0)
        {
          (*(v1538 + 16))(v1539, v1541, v1536);
          sub_1D1FD6044(v1541);
          sub_1D208C1BC();
          (*(v1538 + 8))(v1539, v1536);
          (*(v1568 + 56))(v1551, 0, 1, v1566);
        }

        else
        {
          sub_1D1FD6044(v1541);
          (*(v1568 + 56))(v1551, 1, 1, v1566);
        }

        if (v683(v1551, 1, v1566) == 1)
        {
          sub_1D208BDDC();
          if (v683(v1551, 1, v1566) != 1)
          {
            sub_1D1FF1A9C(v1551);
          }
        }

        else
        {
          (*(v1568 + 32))(v1570, v1551, v1566);
        }

        EnergySitePayload.siteTombstone.getter(v1540);
        if (v686(v1540, 1, v1536) == 1)
        {
          sub_1D1FD6044(v1540);
          (*(v1568 + 56))(v1550, 1, 1, v1566);
        }

        else
        {
          sub_1D208C1BC();
          (*(v1538 + 8))(v1540, v1536);
          (*(v1568 + 56))(v1550, 0, 1, v1566);
        }

        if (v683(v1550, 1, v1566) == 1)
        {
          sub_1D208BDDC();
          if (v683(v1550, 1, v1566) != 1)
          {
            sub_1D1FF1A9C(v1550);
          }
        }

        else
        {
          (*(v1568 + 32))(v1569, v1550, v1566);
        }

        v635 = sub_1D208BE8C();
        v677(v1569, v1566);
        v677(v1570, v1566);
        if (v635)
        {
          sub_1D1FCD668(v1530 & 1, v1600);
          if ((v728)(v1600, 1, v726) == 1)
          {
            sub_1D202975C(v1600);
            v634 = v685;
          }

          else
          {

            v617 = 32;
            v621 = 32;
            v622 = 7;
            v351 = swift_allocObject();
            v352 = v1479;
            v623 = v351;
            *(v351 + 16) = v1478;
            *(v351 + 24) = v352;
            v633 = sub_1D208C48C();
            v615 = v633;
            v632 = sub_1D208C85C();
            v616 = v632;
            v618 = 17;
            v626 = swift_allocObject();
            v619 = v626;
            *(v626 + 16) = v617;
            v627 = swift_allocObject();
            v620 = v627;
            *(v627 + 16) = 8;
            v353 = swift_allocObject();
            v354 = v623;
            v624 = v353;
            *(v353 + 16) = sub_1D208B9D0;
            *(v353 + 24) = v354;
            v355 = swift_allocObject();
            v356 = v624;
            v630 = v355;
            v625 = v355;
            *(v355 + 16) = sub_1D205248C;
            *(v355 + 24) = v356;
            v631 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
            v628 = sub_1D208CB2C();
            v629 = v357;

            v358 = v626;
            v359 = v629;
            *v629 = sub_1D2029A40;
            v359[1] = v358;

            v360 = v627;
            v361 = v629;
            v629[2] = sub_1D2029A40;
            v361[3] = v360;

            v362 = v629;
            v363 = v630;
            v629[4] = sub_1D2052498;
            v362[5] = v363;
            sub_1D1FCECE8();

            if (os_log_type_enabled(v633, v632))
            {
              v612 = v685;
              v607 = sub_1D208C8EC();
              v604 = v607;
              v605 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
              v608 = sub_1D2029898(0);
              v606 = v608;
              v610 = 1;
              v609 = sub_1D2029898(1);
              v1748 = v607;
              v1747 = v608;
              v1746 = v609;
              v611 = &v1748;
              sub_1D20298EC(2, &v1748);
              sub_1D20298EC(v610, v611);
              v364 = v612;
              v1744 = sub_1D2029A40;
              v1745 = v619;
              sub_1D2029900(&v1744, v611, &v1747, &v1746);
              v613 = v364;
              v614 = v364;
              if (v364)
              {
                v602 = 0;

                __break(1u);
              }

              else
              {
                v1744 = sub_1D2029A40;
                v1745 = v620;
                sub_1D2029900(&v1744, &v1748, &v1747, &v1746);
                v600 = 0;
                v601 = 0;
                v1744 = sub_1D2052498;
                v1745 = v625;
                sub_1D2029900(&v1744, &v1748, &v1747, &v1746);
                v598 = 0;
                v599 = 0;
                _os_log_impl(&dword_1D1FC7000, v615, v616, "[Deduplication] [%s] 4.2 Older sites wins", v604, 0xCu);
                sub_1D202994C(v606);
                sub_1D202994C(v609);
                sub_1D208C8BC();

                v603 = v598;
              }
            }

            else
            {

              v603 = v685;
            }

            v597 = v603;

            (*(v727 + 8))(v1600, v726);
            v634 = v597;
          }

          v596 = v634;
        }

        else
        {
          EnergySitePayload.timezone.getter();
          v594 = v365;
          v595 = sub_1D208C66C();

          if (v595)
          {
            EnergySitePayload.timezone.getter();
            v591 = v366;
            v592 = sub_1D208C66C();

            v593 = v592 ^ 1;
          }

          else
          {
            v593 = 0;
          }

          if (v593)
          {
            sub_1D1FCD668(v1530 & 1, v1599);
            if ((v728)(v1599, 1, v726) == 1)
            {
              sub_1D202975C(v1599);
              v590 = v685;
            }

            else
            {

              v573 = 32;
              v577 = 32;
              v578 = 7;
              v367 = swift_allocObject();
              v368 = v1479;
              v579 = v367;
              *(v367 + 16) = v1478;
              *(v367 + 24) = v368;
              v589 = sub_1D208C48C();
              v571 = v589;
              v588 = sub_1D208C85C();
              v572 = v588;
              v574 = 17;
              v582 = swift_allocObject();
              v575 = v582;
              *(v582 + 16) = v573;
              v583 = swift_allocObject();
              v576 = v583;
              *(v583 + 16) = 8;
              v369 = swift_allocObject();
              v370 = v579;
              v580 = v369;
              *(v369 + 16) = sub_1D208B9D0;
              *(v369 + 24) = v370;
              v371 = swift_allocObject();
              v372 = v580;
              v586 = v371;
              v581 = v371;
              *(v371 + 16) = sub_1D205248C;
              *(v371 + 24) = v372;
              v587 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
              v584 = sub_1D208CB2C();
              v585 = v373;

              v374 = v582;
              v375 = v585;
              *v585 = sub_1D2029A40;
              v375[1] = v374;

              v376 = v583;
              v377 = v585;
              v585[2] = sub_1D2029A40;
              v377[3] = v376;

              v378 = v585;
              v379 = v586;
              v585[4] = sub_1D2052498;
              v378[5] = v379;
              sub_1D1FCECE8();

              if (os_log_type_enabled(v589, v588))
              {
                v568 = v685;
                v563 = sub_1D208C8EC();
                v560 = v563;
                v561 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
                v564 = sub_1D2029898(0);
                v562 = v564;
                v566 = 1;
                v565 = sub_1D2029898(1);
                v1753 = v563;
                v1752 = v564;
                v1751 = v565;
                v567 = &v1753;
                sub_1D20298EC(2, &v1753);
                sub_1D20298EC(v566, v567);
                v380 = v568;
                v1749 = sub_1D2029A40;
                v1750 = v575;
                sub_1D2029900(&v1749, v567, &v1752, &v1751);
                v569 = v380;
                v570 = v380;
                if (v380)
                {
                  v558 = 0;

                  __break(1u);
                }

                else
                {
                  v1749 = sub_1D2029A40;
                  v1750 = v576;
                  sub_1D2029900(&v1749, &v1753, &v1752, &v1751);
                  v556 = 0;
                  v557 = 0;
                  v1749 = sub_1D2052498;
                  v1750 = v581;
                  sub_1D2029900(&v1749, &v1753, &v1752, &v1751);
                  v554 = 0;
                  v555 = 0;
                  _os_log_impl(&dword_1D1FC7000, v571, v572, "[Deduplication] [%s] 4.3 Newer sites wins", v560, 0xCu);
                  sub_1D202994C(v562);
                  sub_1D202994C(v565);
                  sub_1D208C8BC();

                  v559 = v554;
                }
              }

              else
              {

                v559 = v685;
              }

              v553 = v559;

              (*(v727 + 8))(v1599, v726);
              v590 = v553;
            }

            v551 = v590;
            sub_1D2028364(v1595, v1590);
            sub_1D208B938(v1590, v1591);
            v552 = v551;
          }

          else
          {
            EnergySitePayload.timezone.getter();
            v549 = v381;
            v550 = sub_1D208C66C();

            if (v550)
            {
              EnergySitePayload.timezone.getter();
              v546 = v382;
              v547 = sub_1D208C66C();

              v548 = v547 ^ 1;
            }

            else
            {
              v548 = 0;
            }

            if (v548)
            {
              sub_1D1FCD668(v1530 & 1, v1598);
              if ((v728)(v1598, 1, v726) == 1)
              {
                sub_1D202975C(v1598);
                v545 = v685;
              }

              else
              {

                v528 = 32;
                v532 = 32;
                v533 = 7;
                v383 = swift_allocObject();
                v384 = v1479;
                v534 = v383;
                *(v383 + 16) = v1478;
                *(v383 + 24) = v384;
                v544 = sub_1D208C48C();
                v526 = v544;
                v543 = sub_1D208C85C();
                v527 = v543;
                v529 = 17;
                v537 = swift_allocObject();
                v530 = v537;
                *(v537 + 16) = v528;
                v538 = swift_allocObject();
                v531 = v538;
                *(v538 + 16) = 8;
                v385 = swift_allocObject();
                v386 = v534;
                v535 = v385;
                *(v385 + 16) = sub_1D208B9D0;
                *(v385 + 24) = v386;
                v387 = swift_allocObject();
                v388 = v535;
                v541 = v387;
                v536 = v387;
                *(v387 + 16) = sub_1D205248C;
                *(v387 + 24) = v388;
                v542 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
                v539 = sub_1D208CB2C();
                v540 = v389;

                v390 = v537;
                v391 = v540;
                *v540 = sub_1D2029A40;
                v391[1] = v390;

                v392 = v538;
                v393 = v540;
                v540[2] = sub_1D2029A40;
                v393[3] = v392;

                v394 = v540;
                v395 = v541;
                v540[4] = sub_1D2052498;
                v394[5] = v395;
                sub_1D1FCECE8();

                if (os_log_type_enabled(v544, v543))
                {
                  v523 = v685;
                  v518 = sub_1D208C8EC();
                  v515 = v518;
                  v516 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
                  v519 = sub_1D2029898(0);
                  v517 = v519;
                  v521 = 1;
                  v520 = sub_1D2029898(1);
                  v1758 = v518;
                  v1757 = v519;
                  v1756 = v520;
                  v522 = &v1758;
                  sub_1D20298EC(2, &v1758);
                  sub_1D20298EC(v521, v522);
                  v396 = v523;
                  v1754 = sub_1D2029A40;
                  v1755 = v530;
                  sub_1D2029900(&v1754, v522, &v1757, &v1756);
                  v524 = v396;
                  v525 = v396;
                  if (v396)
                  {
                    v513 = 0;

                    __break(1u);
                  }

                  else
                  {
                    v1754 = sub_1D2029A40;
                    v1755 = v531;
                    sub_1D2029900(&v1754, &v1758, &v1757, &v1756);
                    v511 = 0;
                    v512 = 0;
                    v1754 = sub_1D2052498;
                    v1755 = v536;
                    sub_1D2029900(&v1754, &v1758, &v1757, &v1756);
                    v509 = 0;
                    v510 = 0;
                    _os_log_impl(&dword_1D1FC7000, v526, v527, "[Deduplication] [%s] 4.4 Older sites wins", v515, 0xCu);
                    sub_1D202994C(v517);
                    sub_1D202994C(v520);
                    sub_1D208C8BC();

                    v514 = v509;
                  }
                }

                else
                {

                  v514 = v685;
                }

                v508 = v514;

                (*(v727 + 8))(v1598, v726);
                v545 = v508;
              }

              v507 = v545;
            }

            else
            {
              sub_1D1FCD668(v1530 & 1, v1597);
              if ((v728)(v1597, 1, v726) == 1)
              {
                sub_1D202975C(v1597);
                v506 = v685;
              }

              else
              {

                v489 = 32;
                v493 = 32;
                v494 = 7;
                v397 = swift_allocObject();
                v398 = v1479;
                v495 = v397;
                *(v397 + 16) = v1478;
                *(v397 + 24) = v398;
                v505 = sub_1D208C48C();
                v487 = v505;
                v504 = sub_1D208C85C();
                v488 = v504;
                v490 = 17;
                v498 = swift_allocObject();
                v491 = v498;
                *(v498 + 16) = v489;
                v499 = swift_allocObject();
                v492 = v499;
                *(v499 + 16) = 8;
                v399 = swift_allocObject();
                v400 = v495;
                v496 = v399;
                *(v399 + 16) = sub_1D208B9D0;
                *(v399 + 24) = v400;
                v401 = swift_allocObject();
                v402 = v496;
                v502 = v401;
                v497 = v401;
                *(v401 + 16) = sub_1D205248C;
                *(v401 + 24) = v402;
                v503 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
                v500 = sub_1D208CB2C();
                v501 = v403;

                v404 = v498;
                v405 = v501;
                *v501 = sub_1D2029A40;
                v405[1] = v404;

                v406 = v499;
                v407 = v501;
                v501[2] = sub_1D2029A40;
                v407[3] = v406;

                v408 = v501;
                v409 = v502;
                v501[4] = sub_1D2052498;
                v408[5] = v409;
                sub_1D1FCECE8();

                if (os_log_type_enabled(v505, v504))
                {
                  v484 = v685;
                  v479 = sub_1D208C8EC();
                  v476 = v479;
                  v477 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
                  v480 = sub_1D2029898(0);
                  v478 = v480;
                  v482 = 1;
                  v481 = sub_1D2029898(1);
                  v1763 = v479;
                  v1762 = v480;
                  v1761 = v481;
                  v483 = &v1763;
                  sub_1D20298EC(2, &v1763);
                  sub_1D20298EC(v482, v483);
                  v410 = v484;
                  v1759 = sub_1D2029A40;
                  v1760 = v491;
                  sub_1D2029900(&v1759, v483, &v1762, &v1761);
                  v485 = v410;
                  v486 = v410;
                  if (v410)
                  {
                    v474 = 0;

                    __break(1u);
                  }

                  else
                  {
                    v1759 = sub_1D2029A40;
                    v1760 = v492;
                    sub_1D2029900(&v1759, &v1763, &v1762, &v1761);
                    v472 = 0;
                    v473 = 0;
                    v1759 = sub_1D2052498;
                    v1760 = v497;
                    sub_1D2029900(&v1759, &v1763, &v1762, &v1761);
                    v470 = 0;
                    v471 = 0;
                    _os_log_impl(&dword_1D1FC7000, v487, v488, "[Deduplication] [%s] 4.5 Default: Newer sites wins", v476, 0xCu);
                    sub_1D202994C(v478);
                    sub_1D202994C(v481);
                    sub_1D208C8BC();

                    v475 = v470;
                  }
                }

                else
                {

                  v475 = v685;
                }

                v469 = v475;

                (*(v727 + 8))(v1597, v726);
                v506 = v469;
              }

              v468 = v506;
              sub_1D2028364(v1595, v1590);
              sub_1D208B938(v1590, v1591);
              v507 = v468;
            }

            v552 = v507;
          }

          v596 = v552;
        }

        v638 = v596;
      }

      v730 = v638;
    }

    v830 = v730;
  }

  v929 = v830;
LABEL_394:
  v465 = v929;
  sub_1D1FCD668(v1530 & 1, v1596);
  v466 = sub_1D208C4AC();
  v467 = *(v466 - 8);
  if ((*(v467 + 48))(v1596, 1) == 1)
  {
    sub_1D202975C(v1596);
    v464 = v465;
  }

  else
  {

    v447 = 32;
    v451 = 32;
    v452 = 7;
    v411 = swift_allocObject();
    v412 = v1479;
    v453 = v411;
    *(v411 + 16) = v1478;
    *(v411 + 24) = v412;
    v463 = sub_1D208C48C();
    v445 = v463;
    v462 = sub_1D208C85C();
    v446 = v462;
    v448 = 17;
    v456 = swift_allocObject();
    v449 = v456;
    *(v456 + 16) = v447;
    v457 = swift_allocObject();
    v450 = v457;
    *(v457 + 16) = 8;
    v413 = swift_allocObject();
    v414 = v453;
    v454 = v413;
    *(v413 + 16) = sub_1D208B9D0;
    *(v413 + 24) = v414;
    v415 = swift_allocObject();
    v416 = v454;
    v460 = v415;
    v455 = v415;
    *(v415 + 16) = sub_1D205248C;
    *(v415 + 24) = v416;
    v461 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE78, &unk_1D20911D0);
    v458 = sub_1D208CB2C();
    v459 = v417;

    v418 = v456;
    v419 = v459;
    *v459 = sub_1D2029A40;
    v419[1] = v418;

    v420 = v457;
    v421 = v459;
    v459[2] = sub_1D2029A40;
    v421[3] = v420;

    v422 = v459;
    v423 = v460;
    v459[4] = sub_1D2052498;
    v422[5] = v423;
    sub_1D1FCECE8();

    if (os_log_type_enabled(v463, v462))
    {
      v442 = v465;
      v437 = sub_1D208C8EC();
      v434 = v437;
      v435 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEE80, qword_1D208FBA0);
      v438 = sub_1D2029898(0);
      v436 = v438;
      v440 = 1;
      v439 = sub_1D2029898(1);
      v1768 = v437;
      v1767 = v438;
      v1766 = v439;
      v441 = &v1768;
      sub_1D20298EC(2, &v1768);
      sub_1D20298EC(v440, v441);
      v424 = v442;
      v1764 = sub_1D2029A40;
      v1765 = v449;
      sub_1D2029900(&v1764, v441, &v1767, &v1766);
      v443 = v424;
      v444 = v424;
      if (v424)
      {
        v432 = 0;

        __break(1u);
      }

      else
      {
        v1764 = sub_1D2029A40;
        v1765 = v450;
        sub_1D2029900(&v1764, &v1768, &v1767, &v1766);
        v430 = 0;
        v431 = 0;
        v1764 = sub_1D2052498;
        v1765 = v455;
        sub_1D2029900(&v1764, &v1768, &v1767, &v1766);
        v428 = 0;
        v429 = 0;
        _os_log_impl(&dword_1D1FC7000, v445, v446, "[Deduplication] [%s] Completed", v434, 0xCu);
        sub_1D202994C(v436);
        sub_1D202994C(v439);
        sub_1D208C8BC();

        v433 = v428;
      }
    }

    else
    {

      v433 = v465;
    }

    v427 = v433;

    (*(v467 + 8))(v1596, v466);
    v464 = v427;
  }

  v426[1] = v464;
}

uint64_t sub_1D2089A90()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 32) & 1;
  return sub_1D207EFAC(*(v0 + 16));
}

uint64_t static MergeEnergySite.siteFromMetadata(siteID:metadata:zoneName:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a1;
  v22 = a2;
  v19 = a3;
  v20 = a4;
  v17 = a5;
  v18 = a6;
  v16 = v6;
  sub_1D1FD0018(a3, a4);

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6BF320, "D1");
  v7 = type metadata accessor for EKEnergySite();
  sub_1D1FEA670(sub_1D208B840, v12, v7, &v14, &v15);
  sub_1D1FD0094(a3, a4);

  if (v13)
  {
    return v9;
  }

  else
  {
    return v15;
  }
}

uint64_t sub_1D2089CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, void *a8@<X8>)
{
  v131 = a8;
  v182 = a1;
  v183 = a2;
  v177 = a3;
  v178 = a4;
  v179 = a5;
  v180 = a6;
  v132 = a7;
  v210 = 0;
  v208 = 0;
  v209 = 0;
  v206 = 0;
  v207 = 0;
  v204 = 0;
  v205 = 0;
  v201 = 0;
  v195 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF318, &unk_1D2091A80);
  v133 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v134 = v79 - v133;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEA28, &unk_1D208D700);
  v135 = *(*(v9 - 8) + 64);
  v136 = (v135 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v137 = v79 - v136;
  v138 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v79 - v136);
  v139 = v79 - v138;
  v140 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v79 - v138);
  v141 = v79 - v140;
  v142 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v79 - v140);
  v143 = v79 - v142;
  v144 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v79 - v142);
  v145 = v79 - v144;
  v146 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v79 - v144);
  v147 = v79 - v146;
  v148 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v79 - v146);
  v149 = v79 - v148;
  v150 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v79 - v148);
  v151 = v79 - v150;
  v152 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v79 - v150);
  v153 = v79 - v152;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BF180, &qword_1D208E5C0);
  v154 = *(*(v18 - 8) + 64);
  v155 = (v154 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v156 = v79 - v155;
  v157 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v79 - v155);
  v158 = v79 - v157;
  v159 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v79 - v157);
  v160 = v79 - v159;
  v161 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v79 - v159);
  v162 = v79 - v161;
  v163 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v79 - v161);
  v164 = v79 - v163;
  v165 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v79 - v163);
  v166 = v79 - v165;
  v167 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v79 - v165);
  v168 = v79 - v167;
  v169 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v79 - v167);
  v170 = v79 - v169;
  v171 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v79 - v169);
  v172 = v79 - v171;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6BEDF0, &unk_1D208F480);
  v173 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v174 = v79 - v173;
  v175 = 0;
  v176 = (*(*(sub_1D208C23C() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v175);
  v188 = v79 - v176;
  v181 = (*(*(type metadata accessor for EnergySitePayload() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v182);
  v184 = v79 - v181;
  v210 = v79 - v181;
  v208 = v28;
  v209 = v29;
  v206 = v30;
  v207 = v31;
  v204 = v32;
  v205 = v33;
  sub_1D1FD0018(v28, v29);
  v185 = v203;
  v203[0] = v182;
  v203[1] = v183;
  v186 = v202;
  memset(v202, 0, sizeof(v202));
  v190 = sub_1D2025260();
  v189 = MEMORY[0x1E6969080];
  v191 = MEMORY[0x1E69AA8D0];
  v187 = sub_1D2029718();
  sub_1D2029734();
  v34 = v192;
  result = sub_1D208C37C();
  v193 = v34;
  v194 = v34;
  if (v34)
  {
    *v132 = v194;
  }

  else
  {
    v124 = 0;
    v88 = sub_1D1FE2B54();
    v89 = EnergySitePayload.latitude.getter();
    EnergySitePayload.longitude.getter();
    v93 = sub_1D1FE2BB8();
    v201 = v93;
    v90 = type metadata accessor for EKEnergySite();

    v91 = EnergySitePayload.siteName.getter();
    v92 = v36;

    v94 = EnergySitePayload.subscriptionState.getter();
    v95 = v37;
    MEMORY[0x1E69E5928](v93);
    v96 = EnergySitePayload.utilityID.getter();
    v97 = v38;
    v98 = EnergySitePayload.subscriptionID.getter();
    v99 = v39;
    v100 = EnergySitePayload.accessToken.getter();
    v101 = v40;
    v102 = EnergySitePayload.refreshToken.getter();
    v103 = v41;
    v104 = EnergySitePayload.timezone.getter();
    v105 = v42;
    EnergySitePayload.currentRatePlan.getter(v174);
    v43 = *(*(type metadata accessor for EnergySitePayload.CurrentRatePlan() - 8) + 56);
    v125 = 1;
    v43(v174, 0);
    v106 = EnergySitePayload.usagePointCustomIndex.getter();
    v107 = v44;
    v108 = EnergySitePayload.usageSummaryCustomIndex.getter();
    v109 = v45;
    v110 = EnergySitePayload.intervalBlockCustomIndex.getter();
    v111 = v46;
    v112 = EnergySitePayload.ckFunctionToken.getter();
    v113 = v47;
    v114 = EnergySitePayload.accountName.getter();
    v115 = v48;
    v116 = EnergySitePayload.accountNumber.getter();
    v117 = v49;
    v118 = EnergySitePayload.address.getter();
    v119 = v50;
    v120 = EnergySitePayload.serviceLocationID.getter();
    v121 = v51;
    v122 = EnergySitePayload.alternateSupplier.getter();
    v123 = v52;
    EnergySitePayload.accessTokenExpirationDate.getter(v153);
    v126 = sub_1D208C1EC();
    v127 = *(v126 - 8);
    v128 = v126 - 8;
    v129 = *(v127 + 48);
    v130 = v127 + 48;
    if ((v129)(v153, v125) == 1)
    {
      sub_1D1FD6044(v153);
      v53 = sub_1D208BF1C();
      (*(*(v53 - 8) + 56))(v172, 1);
    }

    else
    {
      sub_1D208C1BC();
      (*(v127 + 8))(v153, v126);
      v54 = sub_1D208BF1C();
      (*(*(v54 - 8) + 56))(v172, 0, 1);
    }

    EnergySitePayload.utilitySupportedCheckDate.getter(v151);
    if (v129(v151, 1, v126) == 1)
    {
      sub_1D1FD6044(v151);
      v55 = sub_1D208BF1C();
      (*(*(v55 - 8) + 56))(v170, 1);
    }

    else
    {
      sub_1D208C1BC();
      (*(v127 + 8))(v151, v126);
      v56 = sub_1D208BF1C();
      (*(*(v56 - 8) + 56))(v170, 0, 1);
    }

    EnergySitePayload.amiLastRefreshDate.getter(v149);
    if (v129(v149, 1, v126) == 1)
    {
      sub_1D1FD6044(v149);
      v57 = sub_1D208BF1C();
      (*(*(v57 - 8) + 56))(v168, 1);
    }

    else
    {
      sub_1D208C1BC();
      (*(v127 + 8))(v149, v126);
      v58 = sub_1D208BF1C();
      (*(*(v58 - 8) + 56))(v168, 0, 1);
    }

    v87 = EnergySitePayload.hasExportedEnergy_p.getter();
    EnergySitePayload.usagePointNextRefreshDate.getter(v147);
    if (v129(v147, 1, v126) == 1)
    {
      sub_1D1FD6044(v147);
      v59 = sub_1D208BF1C();
      (*(*(v59 - 8) + 56))(v166, 1);
    }

    else
    {
      sub_1D208C1BC();
      (*(v127 + 8))(v147, v126);
      v60 = sub_1D208BF1C();
      (*(*(v60 - 8) + 56))(v166, 0, 1);
    }

    EnergySitePayload.usageSummaryNextRefreshDate.getter(v145);
    if (v129(v145, 1, v126) == 1)
    {
      sub_1D1FD6044(v145);
      v61 = sub_1D208BF1C();
      (*(*(v61 - 8) + 56))(v164, 1);
    }

    else
    {
      sub_1D208C1BC();
      (*(v127 + 8))(v145, v126);
      v62 = sub_1D208BF1C();
      (*(*(v62 - 8) + 56))(v164, 0, 1);
    }

    EnergySitePayload.intervalBlockNextRefreshDate.getter(v143);
    if (v129(v143, 1, v126) == 1)
    {
      sub_1D1FD6044(v143);
      v63 = sub_1D208BF1C();
      (*(*(v63 - 8) + 56))(v162, 1);
    }

    else
    {
      sub_1D208C1BC();
      (*(v127 + 8))(v143, v126);
      v64 = sub_1D208BF1C();
      (*(*(v64 - 8) + 56))(v162, 0, 1);
    }

    EnergySitePayload.subscriptionCreationDate.getter(v141);
    if (v129(v141, 1, v126) == 1)
    {
      sub_1D1FD6044(v141);
      v65 = sub_1D208BF1C();
      (*(*(v65 - 8) + 56))(v160, 1);
    }

    else
    {
      sub_1D208C1BC();
      (*(v127 + 8))(v141, v126);
      v66 = sub_1D208BF1C();
      (*(*(v66 - 8) + 56))(v160, 0, 1);
    }

    EnergySitePayload.subscriptionStartDate.getter(v139);
    if (v129(v139, 1, v126) == 1)
    {
      sub_1D1FD6044(v139);
      v67 = sub_1D208BF1C();
      (*(*(v67 - 8) + 56))(v158, 1);
    }

    else
    {
      sub_1D208C1BC();
      (*(v127 + 8))(v139, v126);
      v68 = sub_1D208BF1C();
      (*(*(v68 - 8) + 56))(v158, 0, 1);
    }

    EnergySitePayload.siteTombstone.getter(v137);
    if (v129(v137, 1, v126) == 1)
    {
      sub_1D1FD6044(v137);
      v69 = sub_1D208BF1C();
      (*(*(v69 - 8) + 56))(v156, 1);
    }

    else
    {
      sub_1D208C1BC();
      (*(v127 + 8))(v137, v126);
      v70 = sub_1D208BF1C();
      (*(*(v70 - 8) + 56))(v156, 0, 1);
    }

    v200 = EnergySitePayload.siteVersion.getter();
    v198 = v200;
    v199 = BYTE4(v200) & 1;
    if ((v200 & 0x100000000) != 0)
    {
      v86 = 3;
    }

    else
    {
      v86 = v198;
    }

    v71 = v168;
    v72 = v170;
    v73 = v172;
    v74 = v123;
    v75 = v122;
    v76 = v121;
    v77 = v120;
    v83 = v86;
    v84 = EnergySitePayload.generationMeters.getter();
    v197 = EnergySitePayload.includeRatePlanInGuidance.getter();
    v81 = v197;
    v82 = BYTE4(v197);
    v80 = sub_1D208C21C();
    v79[0] = *(v80 - 8);
    v79[1] = v80 - 8;
    (*(v79[0] + 16))(v134, v184);
    (*(v79[0] + 56))(v134, 0, 1, v80);
    LODWORD(v196) = v81;
    BYTE4(v196) = v82 & 1;
    v85 = EKEnergySite.__allocating_init(siteID:siteName:ckZoneName:state:location:utilityID:subscriptionID:accessToken:refreshToken:timezone:currentRatePlan:usagePointCustomIndex:usageSummaryCustomIndex:intervalBlockCustomIndex:ckFunctionToken:accountName:accountNumber:address:serviceLocationID:alternateSupplier:accessTokenExpirationDate:utilitySupportedCheckDate:amiLastRefreshDate:hasExportedEnergy:usagePointNextRefreshDate:usageSummaryNextRefreshDate:intervalBlockNextRefreshDate:subscriptionCreationDate:subscriptionStartDate:siteTombstone:siteVersion:generationMeters:includeRatePlanInGuidance:unknownFields:)(v177, v178, v91, v92, v179, v180, v94, v95, v93, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v174, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v77, v76, v75, v74, v73, v72, v71, v87 & 1, v166, v164, v162, v160, v158, v156, v83, v84, v196, v134);
    v195 = v85;
    MEMORY[0x1E69E5928](v85);
    v78 = v85;
    *v131 = v85;
    MEMORY[0x1E69E5920](v78);
    MEMORY[0x1E69E5920](v93);
    return sub_1D2028400(v184);
  }

  return result;
}

uint64_t sub_1D208B938(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D208C21C();
  (*(*(v2 - 8) + 40))(a2, a1);
  v3 = type metadata accessor for EnergySitePayload();
  v4 = *(a1 + *(v3 + 20));
  v5 = (a2 + *(v3 + 20));
  v6 = *v5;
  *v5 = v4;

  return a2;
}

uint64_t sub_1D208B9D0()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1D2089AD0();
  return result;
}

unint64_t sub_1D208BA0C()
{
  v2 = qword_1EC6BF438;
  if (!qword_1EC6BF438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6BF430, &qword_1D2092320);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF438);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1D208BA94()
{
  v2 = qword_1EC6BF440;
  if (!qword_1EC6BF440)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC6BF440);
    return WitnessTable;
  }

  return v2;
}