void *sub_1D15E81F8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D15E8250()
{
  MEMORY[0x1D388E2F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D15E8288@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_circular;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1D15E82E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_config;
  swift_beginAccess();
  return sub_1D15F2F9C(v3 + v4, a2, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
}

uint64_t sub_1D15E8360()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D15E8398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HKHealthStore.HKMedicationClusterPublisher.Configuration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D15E8454(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HKHealthStore.HKMedicationClusterPublisher.Configuration(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D15E850C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Descriptor = type metadata accessor for HKMedicationClusterQueryDescriptor();
  v7 = *(Descriptor - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, Descriptor);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1D15E85D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HKMedicationClusterQueryDescriptor();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1D15E86A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D15F96D0(0, &qword_1EDECB378, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_1D15E8780(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1D15F96D0(0, &qword_1EDECB378, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D15E8854@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1D15E889C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 24) = v2;
  return result;
}

uint64_t sub_1D15E88E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 25);
  return result;
}

uint64_t sub_1D15E8928(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 25) = v2;
  return result;
}

uint64_t sub_1D15E89B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D15E8A3C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D15E8A74()
{
  sub_1D1609BB8(0, &qword_1EDEC9FB8, MEMORY[0x1E69E8660]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  v8 = *(v0 + 40);

  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1D15E8DA4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D15E8DE4()
{
  v1 = sub_1D166F174();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1D15E8E8C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D15E8EC4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D15E8F04()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D15E8F3C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D15E8F8C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1D15E8FCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC27HealthMedicationsExperience23MedicationFragmentLayer_color;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1D15E9034(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1D1615EA8(v2);
}

uint64_t sub_1D15E9078()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D15E90B0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D15E90F8()
{
  MEMORY[0x1D388E2F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D15E9130()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D15E9178(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D15E9188()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D15E91C8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D15E9200()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D15E9240()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D15E9278()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D15E93D0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D15E9410()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D15E9448()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D15E9488()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D15E94C0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D15E9508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D15FB870();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_1D166F8E4();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 40);

    return v13(v14, a2, v12);
  }
}

void sub_1D15E963C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D15FB870();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 32) + 8) = a2;
  }

  else
  {
    v11 = sub_1D166F8E4();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    v12(v13, a2, a2, v11);
  }
}

uint64_t sub_1D15E9764()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D15E97A0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D15E97D8()
{
  MEMORY[0x1D388E2F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D15E9810()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D15E9860()
{
  sub_1D162F4E8(0, &qword_1EC63DE70, sub_1D162E7F0, MEMORY[0x1E69E8548]);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void sub_1D15E9988()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1D16372D4(0, &qword_1EC63DF10, &type metadata for MedicationsScheduleIncompatibilityCache.MutableValues, MEMORY[0x1E69E8300]);
  }
}

uint64_t sub_1D15E99EC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D15E9A24()
{
  sub_1D1637118();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D15EA3A8()
{
  v1 = sub_1D166F174();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D15EA430()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D15EA500()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v3 | 7);
}

uint64_t sub_1D15EA5EC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D15EA624()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  v7 = *(v0 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D15EA6F4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D15EA734()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D15EA784()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D15EA7CC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D15EA80C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D15EA868()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D15EA8A0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D15EA8E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_config;
  swift_beginAccess();
  return sub_1D165370C(v3 + v4, a2, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
}

uint64_t sub_1D15EA964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D166F174();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D15EAA34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D166F174();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1D15EAAF0(uint64_t a1, uint64_t a2)
{
  sub_1D1654BAC(0, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, MEMORY[0x1E69E6720]);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D15EAB8C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  sub_1D1654BAC(0, &qword_1EC63DF18, type metadata accessor for TimeZoneChange, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D15EAC3C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D15EAC78()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D15EACB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    sub_1D165BA98(0, &qword_1EDECB378, MEMORY[0x1E6969530]);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 44);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_1D166F8E4();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 48);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1D15EADFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    sub_1D165BA98(0, &qword_1EDECB378, MEMORY[0x1E6969530]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1D166F8E4();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D15EAF3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_1D15EAF84(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 32) = v2;
  return result;
}

uint64_t sub_1D15EAFC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 33);
  return result;
}

uint64_t sub_1D15EB010(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 33) = v2;
  return result;
}

uint64_t sub_1D15EB260()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D15EB298()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D15EB2D8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D15EB310()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D15EB36C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1D15EB3B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_1D15EB3F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1D15EB440(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 24) = v2;
  return result;
}

uint64_t sub_1D15EB484@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_1D15EB4D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  v5 = *(v3 + 48);
  *a2 = *(v3 + 40);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1D15EB524(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  result = swift_beginAccess();
  *(v4 + 40) = v2;
  *(v4 + 48) = v3;
  return result;
}

uint64_t sub_1D15EB578@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 49);
  return result;
}

uint64_t sub_1D15EB5C0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 49) = v2;
  return result;
}

uint64_t sub_1D15EB604@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  v5 = *(v3 + 64);
  *a2 = *(v3 + 56);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1D15EB654(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  result = swift_beginAccess();
  *(v4 + 56) = v2;
  *(v4 + 64) = v3;
  return result;
}

HealthMedicationsExperience::PregnancyTrimesterLactationRatings::Rating_optional __swiftcall PregnancyTrimesterLactationRatings.Rating.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1D15EB70C()
{
  v1 = *v0;
  sub_1D16706A4();
  MEMORY[0x1D388D890](v1);
  return sub_1D16706E4();
}

uint64_t sub_1D15EB754()
{
  v1 = *v0;
  sub_1D16706A4();
  MEMORY[0x1D388D890](v1);
  return sub_1D16706E4();
}

HealthMedicationsExperience::PregnancyTrimesterLactationRatings_optional __swiftcall PregnancyTrimesterLactationRatings.init(ratingsString:)(Swift::String ratingsString)
{
  v2 = v1;
  v42 = 44;
  v43 = 0xE100000000000000;
  v40 = &v42;
  v3 = sub_1D15EC5D0(0x7FFFFFFFFFFFFFFFLL, 1, sub_1D15ED988, v39, ratingsString._countAndFlagsBits, ratingsString._object, &v42);
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v3 + 56;
    v8 = v5 - 1;
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v10 = (v7 + 32 * v6);
      v11 = v6;
      while (1)
      {
        if (v11 >= *(v4 + 16))
        {
          __break(1u);
          return v3;
        }

        v12 = *(v10 - 3);
        v13 = *(v10 - 2);
        if (!((v13 ^ v12) >> 14))
        {
          goto LABEL_4;
        }

        v14 = *(v10 - 1);
        v15 = *v10;
        if ((*v10 & 0x1000000000000000) == 0)
        {
          break;
        }

        v18 = *v10;
        v33 = *(v10 - 3);
        v36 = *(v10 - 2);
        v31 = *(v10 - 1);

        v34 = sub_1D15ED3F0(v33, v36, v31, v18, 10);
        LOBYTE(v36) = v19;

        if ((v36 & 1) == 0)
        {
          LODWORD(v3) = v34;
          if (v34 < 4)
          {
            goto LABEL_19;
          }
        }

LABEL_4:
        ++v11;
        v10 += 4;
        if (v5 == v11)
        {
          goto LABEL_26;
        }
      }

      if ((v15 & 0x2000000000000000) != 0)
      {
        v42 = *(v10 - 1);
        v43 = v15 & 0xFFFFFFFFFFFFFFLL;
        v16 = &v42;
      }

      else if ((v14 & 0x1000000000000000) != 0)
      {
        v16 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v35 = *(v10 - 3);
        v37 = v2;
        v20 = v8;
        v21 = *v10;
        v22 = v7;
        v23 = *(v10 - 2);
        v32 = *(v10 - 1);
        v16 = sub_1D1670354();
        v14 = v32;
        v12 = v35;
        v13 = v23;
        v7 = v22;
        v2 = v37;
        v15 = v21;
        v8 = v20;
      }

      v3 = sub_1D15ED9E0(v16, v12, v13, v14, v15, 10);
      v41 = v17 & 1;
      if ((v17 & 1) != 0 || v3 >= 4)
      {
        goto LABEL_4;
      }

LABEL_19:
      v38 = v2;
      v24 = v7;
      v25 = v3;
      LODWORD(v3) = swift_isUniquelyReferenced_nonNull_native();
      v26 = v8;
      if ((v3 & 1) == 0)
      {
        v3 = sub_1D15ED2EC(0, *(v9 + 16) + 1, 1, v9, &qword_1EC63D7D8, &type metadata for PregnancyTrimesterLactationRatings.Rating);
        v9 = v3;
      }

      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      if (v28 >= v27 >> 1)
      {
        v3 = sub_1D15ED2EC((v27 > 1), v28 + 1, 1, v9, &qword_1EC63D7D8, &type metadata for PregnancyTrimesterLactationRatings.Rating);
        v9 = v3;
      }

      v29 = v25;
      v7 = v24;
      v6 = v11 + 1;
      *(v9 + 16) = v28 + 1;
      *(v9 + v28 + 32) = v29;
      v8 = v26;
      v2 = v38;
      if (v26 == v11)
      {
        goto LABEL_26;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_26:

  if (*(v9 + 16) == 4)
  {
    v30 = *(v9 + 32);
  }

  else
  {
    v30 = 4;
  }

  *v2 = v30;
  return v3;
}

HealthMedicationsExperience::PregnancyTrimesterLactationRatings_optional __swiftcall PregnancyTrimesterLactationRatings.init(ratings:)(Swift::OpaquePointer ratings)
{
  v2 = v1;
  if (*(ratings._rawValue + 2) == 4)
  {
    v3 = *(ratings._rawValue + 8);
  }

  else
  {
    v3 = 4;
  }

  *v2 = v3;
  return v4;
}

int HKMedicationUserDomainConcept.pregnancyTrimesterLactationRatings.getter@<W0>(int *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = sub_1D161E974(KeyPath, 0x53555F6E65, 0xE500000000000000);
  v5 = v4;

  if (v5)
  {
    v7._countAndFlagsBits = v3;
    v7._object = v5;
    result = PregnancyTrimesterLactationRatings.init(ratingsString:)(v7);
    v8 = v9;
    if (v9 == 4)
    {
      v8 = 4;
    }
  }

  else
  {
    v8 = 4;
  }

  *a1 = v8;
  return result;
}

void sub_1D15EBBC0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 localizedOntologyPregnancyTrimesterLactationRatings];
  v4 = sub_1D166F944();

  *a2 = v4;
}

uint64_t sub_1D15EBC28(uint64_t a1)
{
  v2 = sub_1D15EE3F4(&qword_1EC63D830, type metadata accessor for HKError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1D15EBC94(uint64_t a1)
{
  v2 = sub_1D15EE3F4(&qword_1EC63D830, type metadata accessor for HKError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1D15EBD04(uint64_t a1)
{
  v2 = sub_1D15EE3F4(&qword_1EC63D868, type metadata accessor for HKError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1D15EBD78(uint64_t a1, id *a2)
{
  result = sub_1D166F9E4();
  *a2 = 0;
  return result;
}

uint64_t sub_1D15EBDF0(uint64_t a1, id *a2)
{
  v3 = sub_1D166F9F4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D15EBE70@<X0>(uint64_t *a1@<X8>)
{
  sub_1D166FA04();
  v2 = sub_1D166F9C4();

  *a1 = v2;
  return result;
}

uint64_t sub_1D15EBEB4()
{
  v1 = *v0;
  v2 = sub_1D166FA04();
  v3 = MEMORY[0x1D388CD70](v2);

  return v3;
}

uint64_t sub_1D15EBEF0()
{
  v1 = *v0;
  sub_1D166FA04();
  sub_1D166FAE4();
}

uint64_t sub_1D15EBF44()
{
  v1 = *v0;
  sub_1D166FA04();
  sub_1D16706A4();
  sub_1D166FAE4();
  v2 = sub_1D16706E4();

  return v2;
}

uint64_t sub_1D15EC02C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  sub_1D16706A4();
  a3(v5);
  return sub_1D16706E4();
}

uint64_t sub_1D15EC0C8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  sub_1D16706A4();
  a4(v6);
  return sub_1D16706E4();
}

uint64_t sub_1D15EC12C(uint64_t a1)
{
  v2 = sub_1D15EE3F4(&qword_1EC63D868, type metadata accessor for HKError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1D15EC198(uint64_t a1)
{
  v2 = sub_1D15EE3F4(&qword_1EC63D868, type metadata accessor for HKError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1D15EC204(void *a1, uint64_t a2)
{
  v4 = sub_1D15EE3F4(&qword_1EC63D868, type metadata accessor for HKError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1D15EC2B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D15EE3F4(&qword_1EC63D868, type metadata accessor for HKError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1D15EC334()
{
  v2 = *v0;
  sub_1D16706A4();
  sub_1D166F984();
  return sub_1D16706E4();
}

uint64_t sub_1D15EC394(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1D166FA04();
  v6 = v5;
  if (v4 == sub_1D166FA04() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D16705D4();
  }

  return v9 & 1;
}

uint64_t sub_1D15EC41C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D15EE3F4(&qword_1EC63D868, type metadata accessor for HKError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1D15EC4A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D166F9C4();

  *a2 = v5;
  return result;
}

uint64_t sub_1D15EC4E8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1D166FA04();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1D15EC514(uint64_t a1)
{
  v2 = sub_1D15EE3F4(&qword_1EDEC9E10, type metadata accessor for Key);
  v3 = sub_1D15EE3F4(&qword_1EC63D878, type metadata accessor for Key);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

unint64_t sub_1D15EC5D0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1D166FBC4();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1D15EC990(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1D15EC990((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1D166FBA4();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1D166FB04();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1D166FB04();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1D166FBC4();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1D15EC990(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1D166FBC4();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1D15EC990(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1D15EC990((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1D166FB04();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_1D15EC990(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D15EE9A0(0, &qword_1EDEC9D38, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D15ECAB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D15EE9A0(0, &qword_1EDECABA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D15ECC40(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D15EE468(0, &qword_1EC63D790, sub_1D15EE4BC);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void *sub_1D15ECD54(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D15EE468(0, &qword_1EC63D7B8, sub_1D15EE514);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D15EE514();
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1D15ECEC0(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, void (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1D15EE468(0, a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1D15ED0A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D15EE9A0(0, &qword_1EC63D7A8, &type metadata for MedicationSearchCluster, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D15ED1C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D15EE468(0, &qword_1EC63D788, type metadata accessor for HKMedicationFreeTextFormTypeCode);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1D15ED2EC(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1D15EE9A0(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

unsigned __int8 *sub_1D15ED3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_1D15EE5F0();

  result = sub_1D166FBB4();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1D164F4AC();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1D1670354();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1D15ED988(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D16705D4() & 1;
  }
}

uint64_t sub_1D15ED9E0(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1D164F8A4(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1D166FB54();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1D164F8A4(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1D164F8A4(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_1D166FB54();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

unint64_t sub_1D15EDE5C()
{
  result = qword_1EC63D6F0;
  if (!qword_1EC63D6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63D6F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PregnancyTrimesterLactationRatings(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[4])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PregnancyTrimesterLactationRatings(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PregnancyTrimesterLactationRatings.Rating(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PregnancyTrimesterLactationRatings.Rating(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D15EE3F4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D15EE468(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D16705A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D15EE4BC()
{
  if (!qword_1EC63D798)
  {
    v0 = sub_1D166FEF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63D798);
    }
  }
}

void sub_1D15EE514()
{
  if (!qword_1EC63D7C0)
  {
    sub_1D15EE5A8(255, &qword_1EDECACB0, 0x1E69A3B10);
    sub_1D15EE5A8(255, &qword_1EDECACF0, 0x1E69A3AD0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC63D7C0);
    }
  }
}

uint64_t sub_1D15EE5A8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1D15EE5F0()
{
  result = qword_1EC63D7E0;
  if (!qword_1EC63D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63D7E0);
  }

  return result;
}

uint64_t sub_1D15EE678(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D15EE698(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void sub_1D15EE9A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D15EEA3C()
{
  result = qword_1EC63D858;
  if (!qword_1EC63D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63D858);
  }

  return result;
}

uint64_t UIView.isAtExtraExtraLargeOrBigger.getter()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = *MEMORY[0x1E69DDC28];
  LOBYTE(v1) = sub_1D1670054();

  return v1 & 1;
}

id sub_1D15EEBB8()
{
  v1 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientBackground;
  v2 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientBackground);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientBackground);
  }

  else
  {
    type metadata accessor for MedicationGradientBackground();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D15EEC30()
{
  v1 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientDefaultBackgroundColor;
  v2 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientDefaultBackgroundColor);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientDefaultBackgroundColor);
  }

  else
  {
    v4 = [objc_opt_self() systemGray3Color];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D15EECAC()
{
  v1 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___shapeView;
  v2 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___shapeView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___shapeView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for MedicationShapeView()) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D15EED44()
{
  v1 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___placeholderView;
  v2 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___placeholderView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___placeholderView);
  }

  else
  {
    v4 = sub_1D15EEDA8(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D15EEDA8(uint64_t a1)
{
  v2 = [objc_opt_self() whiteColor];
  v3 = objc_opt_self();
  v4 = [v3 configurationWithHierarchicalColor_];

  v5 = (a1 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_placeholderConfiguration);
  v6 = [v3 configurationWithWeight_];
  v7 = [v4 configurationByApplyingConfiguration_];

  v8 = v7;
  v9 = sub_1D166F9C4();
  v10 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v8];

  if (v10)
  {
    v11 = [v10 imageWithoutBaseline];
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

  v13 = v12;
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 setContentMode_];
  [v13 setHidden_];

  return v13;
}

id sub_1D15EEF70(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_circular;
  result = swift_beginAccess();
  v6 = v3[v4];
  v3[v4] = v2;
  if (v2 != v6)
  {
    return [v3 setNeedsLayout];
  }

  return result;
}

uint64_t sub_1D15EEFE0()
{
  v1 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_circular;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1D15EF024(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_circular;
  result = swift_beginAccess();
  v6 = v1[v4];
  v1[v4] = a1;
  if (v6 != v3)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

void (*sub_1D15EF094(uint64_t *a1))(id **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_circular;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1D15EF128;
}

void sub_1D15EF128(id **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v2 = (*a1)[4];
  v4 = *(*a1 + 40);
  v5 = v2[v3];
  v2[v3] = v4;
  if (v4 != v5)
  {
    [v1[3] setNeedsLayout];
  }

  free(v1);
}

uint64_t sub_1D15EF184(uint64_t a1, uint64_t *a2)
{
  sub_1D15F290C(0, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1D15F2F9C(a1, &v11 - v6, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_config;
  swift_beginAccess();
  sub_1D15EF390(v7, v8 + v9);
  swift_endAccess();
  sub_1D15F04C4();
  return sub_1D15F32D0(v7, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
}

uint64_t sub_1D15EF294@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_config;
  swift_beginAccess();
  return sub_1D15F2F9C(v1 + v3, a1, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
}

uint64_t sub_1D15EF308(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_config;
  swift_beginAccess();
  sub_1D15EF390(a1, v1 + v3);
  swift_endAccess();
  sub_1D15F04C4();
  return sub_1D15F32D0(a1, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
}

uint64_t sub_1D15EF390(uint64_t a1, uint64_t a2)
{
  sub_1D15F290C(0, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*sub_1D15EF424(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D15EF488;
}

uint64_t sub_1D15EF488(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_1D15F04C4();
  }

  return result;
}

void *MedicationView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_placeholderConfiguration;
  if (qword_1EDECB080 != -1)
  {
    swift_once();
  }

  *&v4[v9] = xmmword_1EDECB090;
  *&v4[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientBackground] = 0;
  *&v4[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientDefaultBackgroundColor] = 0;
  *&v4[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___shapeView] = 0;
  *&v4[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___placeholderView] = 0;
  v4[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_circular] = 1;
  v10 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_config;
  v11 = type metadata accessor for MedicationVisualizationConfig(0);
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v24.receiver = v4;
  v24.super_class = type metadata accessor for MedicationView(0);
  v12 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
  [v12 setClipsToBounds_];
  v13 = sub_1D15EEBB8();
  [v12 addSubview_];

  v14 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientBackground;
  v15 = *(v12 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientBackground);
  [v12 bounds];
  [v15 setFrame_];

  [*(v12 + v14) setAutoresizingMask_];
  v16 = sub_1D15EECAC();
  [v12 addSubview_];

  v17 = MEMORY[0x1E69E7D40];
  v18 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x148);
  v19 = *(v12 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___shapeView);
  v18();

  v20 = sub_1D15EED44();
  [v12 addSubview_];

  v21 = *((*v17 & *v12) + 0x140);
  v22 = *(v12 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___placeholderView);
  v21();

  sub_1D15F04C4();
  return v12;
}

char *MedicationView.__allocating_init(frame:placeholderConfiguration:)(uint64_t *a1, double a2, double a3, double a4, double a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = *a1;
  v13 = a1[1];
  v14 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_placeholderConfiguration;
  if (qword_1EDECB080 != -1)
  {
    swift_once();
  }

  *&v11[v14] = xmmword_1EDECB090;
  *&v11[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientBackground] = 0;
  *&v11[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientDefaultBackgroundColor] = 0;
  *&v11[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___shapeView] = 0;
  *&v11[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___placeholderView] = 0;
  v11[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_circular] = 1;
  v15 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_config;
  v16 = type metadata accessor for MedicationVisualizationConfig(0);
  (*(*(v16 - 8) + 56))(&v11[v15], 1, 1, v16);
  v31.receiver = v11;
  v31.super_class = v5;
  v17 = objc_msgSendSuper2(&v31, sel_initWithFrame_, a2, a3, a4, a5);
  v18 = &v17[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_placeholderConfiguration];
  *v18 = v12;
  *(v18 + 1) = v13;
  v19 = v17;
  [v19 setClipsToBounds_];
  v20 = sub_1D15EEBB8();
  [v19 addSubview_];

  v21 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientBackground;
  v22 = *&v19[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientBackground];
  [v19 bounds];
  [v22 setFrame_];

  [*&v19[v21] setAutoresizingMask_];
  v23 = sub_1D15EECAC();
  [v19 addSubview_];

  v24 = MEMORY[0x1E69E7D40];
  v25 = *((*MEMORY[0x1E69E7D40] & *v19) + 0x148);
  v26 = *&v19[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___shapeView];
  v25();

  v27 = sub_1D15EED44();
  [v19 addSubview_];

  v28 = *((*v24 & *v19) + 0x140);
  v29 = *&v19[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___placeholderView];
  v28();

  sub_1D15F04C4();
  return v19;
}

char *MedicationView.init(frame:placeholderConfiguration:)(uint64_t *a1, double a2, double a3, double a4, double a5)
{
  v10 = *a1;
  v11 = a1[1];
  v12 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_placeholderConfiguration;
  if (qword_1EDECB080 != -1)
  {
    swift_once();
  }

  *&v5[v12] = xmmword_1EDECB090;
  *&v5[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientBackground] = 0;
  *&v5[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientDefaultBackgroundColor] = 0;
  *&v5[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___shapeView] = 0;
  *&v5[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___placeholderView] = 0;
  v5[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_circular] = 1;
  v13 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_config;
  v14 = type metadata accessor for MedicationVisualizationConfig(0);
  (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
  v29.receiver = v5;
  v29.super_class = type metadata accessor for MedicationView(0);
  v15 = objc_msgSendSuper2(&v29, sel_initWithFrame_, a2, a3, a4, a5);
  v16 = &v15[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_placeholderConfiguration];
  *v16 = v10;
  *(v16 + 1) = v11;
  v17 = v15;
  [v17 setClipsToBounds_];
  v18 = sub_1D15EEBB8();
  [v17 addSubview_];

  v19 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientBackground;
  v20 = *&v17[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientBackground];
  [v17 bounds];
  [v20 setFrame_];

  [*&v17[v19] setAutoresizingMask_];
  v21 = sub_1D15EECAC();
  [v17 addSubview_];

  v22 = MEMORY[0x1E69E7D40];
  v23 = *((*MEMORY[0x1E69E7D40] & *v17) + 0x148);
  v24 = *&v17[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___shapeView];
  v23();

  v25 = sub_1D15EED44();
  [v17 addSubview_];

  v26 = *((*v22 & *v17) + 0x140);
  v27 = *&v17[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___placeholderView];
  v26();

  sub_1D15F04C4();
  return v17;
}

uint64_t sub_1D15EFDA4()
{
  [v0 setClipsToBounds_];
  v1 = sub_1D15EEBB8();
  [v0 addSubview_];

  v2 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientBackground;
  v3 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientBackground);
  [v0 bounds];
  [v3 setFrame_];

  [*(v0 + v2) setAutoresizingMask_];
  v4 = sub_1D15EECAC();
  [v0 addSubview_];

  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x148);
  v7 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___shapeView);
  v6();

  v8 = sub_1D15EED44();
  [v0 addSubview_];

  v9 = *((*v5 & *v0) + 0x140);
  v10 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___placeholderView);
  v9();

  return sub_1D15F04C4();
}

void sub_1D15F0018()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for MedicationView(0);
  objc_msgSendSuper2(&v11, sel_setNeedsUpdateConstraints);
  v1 = sub_1D15EECAC();
  v2 = [v1 constraints];

  if (!v2)
  {
    sub_1D15EE5A8(0, &unk_1EDEC9E38, 0x1E696ACD8);
    sub_1D166FC54();
    v2 = sub_1D166FC44();
  }

  v3 = objc_opt_self();
  [v3 deactivateConstraints_];

  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x148);
  v6 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___shapeView);
  v5();

  v7 = sub_1D15EED44();
  v8 = [v7 constraints];

  if (!v8)
  {
    sub_1D15EE5A8(0, &unk_1EDEC9E38, 0x1E696ACD8);
    sub_1D166FC54();
    v8 = sub_1D166FC44();
  }

  [v3 deactivateConstraints_];

  v9 = *((*v4 & *v0) + 0x140);
  v10 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___placeholderView);
  v9();
}

void sub_1D15F0278(void *a1)
{
  v3 = objc_opt_self();
  sub_1D15F2860();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D1672190;
  v5 = [v1 leadingAnchor];
  v6 = [a1 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  v8 = [v1 trailingAnchor];
  v9 = [a1 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v4 + 40) = v10;
  v11 = [v1 topAnchor];
  v12 = [a1 topAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v4 + 48) = v13;
  v14 = [v1 bottomAnchor];
  v15 = [a1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v4 + 56) = v16;
  sub_1D15EE5A8(0, &unk_1EDEC9E38, 0x1E696ACD8);
  v17 = sub_1D166FC44();

  [v3 activateConstraints_];
}

uint64_t sub_1D15F04C4()
{
  v1 = v0;
  sub_1D15F2ED0();
  v45 = *(v2 - 8);
  v46 = v2;
  v3 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MedicationVisualizationConfig(0);
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15F290C(0, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig, MEMORY[0x1E69E6720]);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v49 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v43 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v43 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v43 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v43 - v21;
  v23 = sub_1D15EECAC();
  v24 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_config;
  swift_beginAccess();
  sub_1D15F2F9C(v1 + v24, v22, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  v25 = OBJC_IVAR____TtC27HealthMedicationsExperience19MedicationShapeView_config;
  swift_beginAccess();
  sub_1D15F2F9C(v23 + v25, v20, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  swift_beginAccess();
  sub_1D15EF390(v22, v23 + v25);
  swift_endAccess();
  sub_1D16518D8(v20);

  sub_1D15F32D0(v20, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  sub_1D15F32D0(v22, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  v26 = *(v1 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___shapeView);
  sub_1D15F2F9C(v1 + v24, v17, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  v27 = v48;
  v28 = *(v47 + 48);
  v29 = v28(v17, 1, v48) == 1;
  v30 = v26;
  sub_1D15F32D0(v17, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  [v30 setHidden_];

  v31 = v27;
  v32 = sub_1D15EED44();
  sub_1D15F2F9C(v1 + v24, v14, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  v33 = v28(v14, 1, v27) != 1;
  sub_1D15F32D0(v14, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  v34 = v49;
  [v32 setHidden_];

  v35 = sub_1D15EEBB8();
  sub_1D15F2F9C(v1 + v24, v34, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  if (v28(v34, 1, v31))
  {
    sub_1D15F32D0(v34, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
    v36 = sub_1D15EEC30();
  }

  else
  {
    v37 = v43;
    sub_1D15F346C(v34, v43, type metadata accessor for MedicationVisualizationConfig);
    sub_1D15F32D0(v34, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
    v39 = v44;
    v38 = v45;
    v40 = v37 + *(v31 + 24);
    v41 = v46;
    (*(v45 + 16))(v44, v40, v46);
    sub_1D15F31C8(v37, type metadata accessor for MedicationVisualizationConfig);
    v36 = sub_1D166F894();
    (*(v38 + 8))(v39, v41);
  }

  [v35 setBackgroundColor_];

  return sub_1D15F09F4();
}

uint64_t sub_1D15F09F4()
{
  v1 = v0;
  sub_1D15F2E34();
  v74 = v2;
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v73 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15F290C(0, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v65 - v7;
  v9 = type metadata accessor for MedicationVisualizationConfig(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_config;
  swift_beginAccess();
  sub_1D15F2F9C(v1 + v14, v8, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1D15F32D0(v8, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig);
  }

  sub_1D15F2F38(v8, v13);
  [v1 setIsAccessibilityElement_];
  v16 = sub_1D166F9C4();
  v68 = v1;
  [v1 setAccessibilityIdentifier_];

  LOBYTE(v76) = *v13;
  v17 = MedicationShape.accessibilityLabel.getter();
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  v20 = 0xE000000000000000;
  if (v18)
  {
    v20 = v18;
  }

  v65 = v20;
  v66 = v19;
  v67 = v13;
  v21 = *(v13 + 8);
  v24 = *(v21 + 64);
  v23 = v21 + 64;
  v22 = v24;
  v25 = 1 << *(*(v13 + 8) + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v22;
  v28 = (v25 + 63) >> 6;
  v72 = *(v13 + 8);

  v29 = 0;
  v30 = 0;
  v69 = MEMORY[0x1E69E7CC0];
  v70 = v28;
  v71 = v23;
LABEL_11:
  v31 = v29;
  if (!v27)
  {
    goto LABEL_13;
  }

  do
  {
    v75 = v30;
    v29 = v31;
LABEL_17:
    v13 = __clz(__rbit64(v27)) | (v29 << 6);
    v32 = *(v72 + 56);
    v33 = (*(v72 + 48) + 32 * v13);
    v34 = *v33;
    v35 = v33[1];
    v37 = v33[2];
    v36 = v33[3];
    sub_1D15F290C(0, &qword_1EDECAE48, sub_1D15F2ED0, MEMORY[0x1E69E6720]);
    v39 = v32 + *(*(v38 - 8) + 72) * v13;
    v40 = v73;
    sub_1D15F2F9C(v39, &v73[*(v74 + 48)], &qword_1EDECAE48, sub_1D15F2ED0);
    *v40 = v34;
    v40[1] = v35;
    v40[2] = v37;
    v40[3] = v36;

    v41 = sub_1D15F301C(v37, v36);
    if (qword_1EDECA9B0 != -1)
    {
      v41 = swift_once();
    }

    v27 &= v27 - 1;
    MEMORY[0x1EEE9AC00](v41);
    v30 = v75;
    sub_1D15F1494(sub_1D15F3030, v42, &v76);
    v43 = v76;
    if (v76)
    {
      if (qword_1EDECB050 != -1)
      {
        swift_once();
      }

      v13 = sub_1D166F004();
      v45 = v44;
      sub_1D15F3050(v43);
      sub_1D15F31C8(v40, sub_1D15F2E34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v69 = sub_1D15ECAB4(0, *(v69 + 2) + 1, 1, v69);
      }

      v23 = v71;
      v47 = *(v69 + 2);
      v46 = *(v69 + 3);
      if (v47 >= v46 >> 1)
      {
        v69 = sub_1D15ECAB4((v46 > 1), v47 + 1, 1, v69);
      }

      v48 = v69;
      *(v69 + 2) = v47 + 1;
      v49 = &v48[16 * v47];
      *(v49 + 4) = v13;
      *(v49 + 5) = v45;
      v28 = v70;
      goto LABEL_11;
    }

    sub_1D15F31C8(v40, sub_1D15F2E34);
    v31 = v29;
    v28 = v70;
    v23 = v71;
  }

  while (v27);
  while (1)
  {
LABEL_13:
    v29 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_39;
    }

    if (v29 >= v28)
    {
      break;
    }

    v27 = *(v23 + 8 * v29);
    ++v31;
    if (v27)
    {
      v75 = v30;
      goto LABEL_17;
    }
  }

  v50 = objc_opt_self();
  v23 = MEMORY[0x1E69E6158];
  v51 = sub_1D166FC44();

  v52 = [v50 localizedStringByJoiningStrings_];

  v27 = sub_1D166FA04();
  v13 = v53;

  if (qword_1EDECA998 == -1)
  {
    goto LABEL_30;
  }

LABEL_39:
  v54 = swift_once();
LABEL_30:
  MEMORY[0x1EEE9AC00](v54);
  v55 = v67;
  sub_1D15F1494(sub_1D15F3090, v56, &v76);
  v57 = v76;
  if (v76)
  {
    if (qword_1EDECB050 != -1)
    {
      swift_once();
    }

    v58 = sub_1D166F004();
    v60 = v59;
    sub_1D15F3050(v57);
  }

  else
  {
    v58 = 0;
    v60 = 0xE000000000000000;
  }

  if (qword_1EDECB050 != -1)
  {
    swift_once();
  }

  sub_1D166F004();
  sub_1D15F30B0();
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1D16721A0;
  *(v61 + 56) = v23;
  v62 = sub_1D15F3174();
  v63 = v65;
  *(v61 + 32) = v66;
  *(v61 + 40) = v63;
  *(v61 + 96) = v23;
  *(v61 + 104) = v62;
  *(v61 + 64) = v62;
  *(v61 + 72) = v27;
  *(v61 + 80) = v13;
  *(v61 + 136) = v23;
  *(v61 + 144) = v62;
  *(v61 + 112) = v58;
  *(v61 + 120) = v60;
  sub_1D166FA44();

  v64 = sub_1D166F9C4();

  [v68 setAccessibilityLabel_];

  return sub_1D15F31C8(v55, type metadata accessor for MedicationVisualizationConfig);
}

uint64_t sub_1D15F1250(void **a1, uint64_t a2)
{
  sub_1D15F2E34();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D15F290C(0, &qword_1EDECAE48, sub_1D15F2ED0, MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v24 - v11;
  v13 = *a1;
  sub_1D15F346C(a2, v8, sub_1D15F2E34);
  v14 = v8[1];
  v15 = v8[2];
  v16 = v8[3];
  v17 = v13;

  sub_1D15F3228(v15, v16);
  sub_1D15F323C(v8 + *(v5 + 56), v12);
  sub_1D15F2ED0();
  v19 = v18;
  v20 = *(v18 - 8);
  if ((*(v20 + 48))(v12, 1, v18) == 1)
  {
    sub_1D15F32D0(v12, &qword_1EDECAE48, sub_1D15F2ED0);
    v21 = 0;
  }

  else
  {
    v22 = sub_1D166F894();
    (*(v20 + 8))(v12, v19);
    sub_1D15EE5A8(0, &qword_1EDECACA8, 0x1E69DC888);
    v21 = sub_1D16700A4();
  }

  return v21 & 1;
}

void sub_1D15F1494(uint64_t (*a1)(id *)@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v7 = (a2 + 48);
    while (1)
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v15 = *(v7 - 2);
      v16 = v8;
      v17 = v9;
      v10 = v15;

      v11 = a1(&v15);
      v12 = v15;
      if (v3)
      {

        return;
      }

      if (v11)
      {
        break;
      }

      v7 += 3;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v13 = v16;
    v14 = v17;
    *a3 = v15;
    a3[1] = v13;
    a3[2] = v14;
  }

  else
  {
LABEL_6:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

uint64_t sub_1D15F156C(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  for (i = (a3 + 32); ; ++i)
  {
    v7 = *i;
    v10 = *i;

    v8 = a1(&v10);
    if (v3)
    {
      break;
    }

    if (v8)
    {
      return v7;
    }

    if (!--v4)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_1D15F1610(uint64_t *a1)
{
  v1 = *a1;
  sub_1D15EE5A8(0, &qword_1EDEC9D80, 0x1E69E58C0);
  v2 = *(type metadata accessor for MedicationVisualizationConfig(0) + 24);
  sub_1D15F2ED0();
  v3 = sub_1D166F894();
  v4 = sub_1D16700A4();

  return v4 & 1;
}

double sub_1D15F17A8()
{
  *&result = 2;
  xmmword_1EDECB090 = xmmword_1D16721B0;
  return result;
}

double sub_1D15F1804()
{
  *&result = 1;
  xmmword_1EC63D8F0 = xmmword_1D16721C0;
  return result;
}

__n128 sub_1D15F1840@<Q0>(void *a1@<X0>, __n128 *a2@<X1>, __n128 *a3@<X8>)
{
  if (*a1 != -1)
  {
    v4 = a2;
    v5 = a3;
    swift_once();
    a3 = v5;
    a2 = v4;
  }

  result = *a2;
  *a3 = *a2;
  return result;
}

id _s27HealthMedicationsExperience14MedicationViewC5frameACSo6CGRectV_tcfC_0(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id MedicationListAvatarView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC27HealthMedicationsExperience24MedicationListAvatarView_shapeViewConstraints] = MEMORY[0x1E69E7CC0];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for MedicationListAvatarView(0);
  v9 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1D15F290C(0, &qword_1EC63D940, sub_1D15F2970, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D16721D0;
  v11 = sub_1D166F504();
  v12 = MEMORY[0x1E69DC2B0];
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D15F29D0();
  v13 = v9;
  sub_1D1670074();

  swift_unknownObjectRelease();

  return v13;
}

void sub_1D15F1A70(void *a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [a2 preferredContentSizeCategory];
    v7 = *MEMORY[0x1E69DDC28];
    v8 = sub_1D1670054() & 1;
    v9 = [a1 traitCollection];
    v10 = [v9 preferredContentSizeCategory];

    LODWORD(v9) = sub_1D1670054() & 1;
    if (v8 != v9)
    {
      v11 = v5;
      v12 = sub_1D15EECAC();
      sub_1D15F1C30(v12);

      sub_1D15F04C4();
      v13 = sub_1D15EED44();

      sub_1D15F2118(v13);
      v5 = v6;
      v6 = v13;
    }
  }
}

void sub_1D15F1C30(void *a1)
{
  v3 = objc_opt_self();
  v4 = OBJC_IVAR____TtC27HealthMedicationsExperience24MedicationListAvatarView_shapeViewConstraints;
  v5 = *&v1[OBJC_IVAR____TtC27HealthMedicationsExperience24MedicationListAvatarView_shapeViewConstraints];
  sub_1D15EE5A8(0, &unk_1EDEC9E38, 0x1E696ACD8);

  v6 = sub_1D166FC44();

  [v3 deactivateConstraints_];

  v7 = [v1 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  v9 = *MEMORY[0x1E69DDC28];
  LOBYTE(v7) = sub_1D1670054();

  if (v7)
  {
    sub_1D15F2860();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D1672190;
    v11 = [a1 centerYAnchor];
    v12 = [v1 centerYAnchor];
    v13 = [v11 constraintEqualToAnchor_];

    *(v10 + 32) = v13;
    v14 = [a1 leadingAnchor];
    v15 = [v1 leadingAnchor];
    v16 = [v14 constraintEqualToAnchor_];

    *(v10 + 40) = v16;
    v17 = [a1 heightAnchor];
    v18 = &property descriptor for MedicationView.config;
    v19 = [v17 constraintEqualToConstant_];

    *(v10 + 48) = v19;
  }

  else
  {
    v36 = v3;
    v20 = [v1 traitCollection];
    v21 = [v20 preferredContentSizeCategory];

    v22 = *MEMORY[0x1E69DDC40];
    v23 = sub_1D1670054();

    sub_1D15F2860();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D1672190;
    v24 = [v1 centerXAnchor];
    v25 = [a1 centerXAnchor];
    v26 = [v24 constraintEqualToAnchor_];

    *(v10 + 32) = v26;
    if (v23)
    {
      v27 = [v1 topAnchor];
      v28 = [a1 topAnchor];
      v29 = [v27 constraintEqualToAnchor:v28 constant:-13.0];
    }

    else
    {
      v27 = [v1 centerYAnchor];
      v28 = [a1 centerYAnchor];
      v29 = [v27 constraintEqualToAnchor_];
    }

    *(v10 + 40) = v29;
    v30 = [a1 heightAnchor];
    v18 = 0x1FBB28000;
    v31 = [v30 0x1FBB28FF1];

    *(v10 + 48) = v31;
    v3 = v36;
  }

  v32 = [a1 widthAnchor];
  v33 = [v32 v18[159]];

  *(v10 + 56) = v33;
  v34 = *&v1[v4];
  *&v1[v4] = v10;

  v35 = *&v1[v4];

  v37 = sub_1D166FC44();

  [v3 activateConstraints_];
}

void sub_1D15F2118(void *a1)
{
  v2 = v1;
  v4 = [a1 constraints];
  if (!v4)
  {
    sub_1D15EE5A8(0, &unk_1EDEC9E38, 0x1E696ACD8);
    sub_1D166FC54();
    v4 = sub_1D166FC44();
  }

  v5 = objc_opt_self();
  [v5 deactivateConstraints_];

  v6 = [v2 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  v8 = *MEMORY[0x1E69DDC28];
  LOBYTE(v6) = sub_1D1670054();

  if (v6)
  {
    sub_1D15F2860();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D1672190;
    v10 = [a1 centerYAnchor];
    v11 = [v2 centerYAnchor];
    v12 = [v10 constraintEqualToAnchor_];

    *(v9 + 32) = v12;
    v13 = [a1 leadingAnchor];
    v14 = [v2 leadingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:16.0];

    *(v9 + 40) = v15;
    v16 = [a1 heightAnchor];
    v17 = [v16 constraintEqualToConstant_];

    *(v9 + 48) = v17;
    v18 = [a1 widthAnchor];
    v19 = [v18 constraintEqualToConstant_];

    *(v9 + 56) = v19;
LABEL_7:
    sub_1D15EE5A8(0, &unk_1EDEC9E38, 0x1E696ACD8);
    v32 = sub_1D166FC44();

    [v5 activateConstraints_];

    return;
  }

  v20 = [v2 traitCollection];
  v21 = [v20 preferredContentSizeCategory];

  v22 = *MEMORY[0x1E69DDC40];
  LOBYTE(v20) = sub_1D1670054();

  if (v20)
  {
    sub_1D15F2860();
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D16721E0;
    v24 = [a1 centerXAnchor];
    v25 = [v2 centerXAnchor];
    v26 = [v24 constraintEqualToAnchor_];

    *(v23 + 32) = v26;
    v27 = [a1 topAnchor];
    v28 = [v2 topAnchor];
    v29 = [v27 constraintEqualToAnchor:v28 constant:48.0];

    *(v23 + 40) = v29;
    v30 = [a1 widthAnchor];
    v31 = [v30 constraintEqualToConstant_];

    *(v23 + 48) = v31;
    goto LABEL_7;
  }

  sub_1D15F2658();
}

id sub_1D15F2608(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1D15F2658()
{
  v1 = objc_opt_self();
  sub_1D15F2860();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D16721E0;
  v3 = [v0 centerXAnchor];
  v4 = sub_1D15EED44();
  v5 = [v4 centerXAnchor];

  v6 = [v3 constraintEqualToAnchor_];
  *(v2 + 32) = v6;
  v7 = [v0 centerYAnchor];
  v8 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___placeholderView;
  v9 = [*&v0[OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___placeholderView] centerYAnchor];
  v10 = [v7 constraintEqualToAnchor_];

  *(v2 + 40) = v10;
  v11 = [*&v0[v8] widthAnchor];
  v12 = [v0 widthAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 multiplier:0.6];

  *(v2 + 48) = v13;
  sub_1D15EE5A8(0, &unk_1EDEC9E38, 0x1E696ACD8);
  v14 = sub_1D166FC44();

  [v1 activateConstraints_];
}

void sub_1D15F2860()
{
  if (!qword_1EDECB330)
  {
    v0 = sub_1D16705A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDECB330);
    }
  }
}

uint64_t sub_1D15F28D4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D15F290C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1D15F2970()
{
  result = qword_1EC63D948;
  if (!qword_1EC63D948)
  {
    sub_1D15F3118(255, &qword_1EC63D950);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EC63D948);
  }

  return result;
}

unint64_t sub_1D15F29D0()
{
  result = qword_1EC63D958;
  if (!qword_1EC63D958)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC63D958);
  }

  return result;
}

void sub_1D15F2A3C()
{
  sub_1D15F290C(319, &qword_1EC63D908, type metadata accessor for MedicationVisualizationConfig, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for MedicationView.PlaceholderConfiguration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MedicationView.PlaceholderConfiguration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_1D15F2E34()
{
  if (!qword_1EDECA290[0])
  {
    sub_1D15F290C(255, &qword_1EDECAE48, sub_1D15F2ED0, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDECA290);
    }
  }
}

void sub_1D15F2ED0()
{
  if (!qword_1EDECAE50)
  {
    sub_1D15EE5A8(255, &qword_1EDECACA8, 0x1E69DC888);
    v0 = sub_1D166F8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDECAE50);
    }
  }
}

uint64_t sub_1D15F2F38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationVisualizationConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D15F2F9C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D15F290C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D15F301C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void *sub_1D15F3050(void *result)
{
  if (result)
  {
  }

  return result;
}

void sub_1D15F30B0()
{
  if (!qword_1EDEC9D30)
  {
    sub_1D15F3118(255, &qword_1EDEC9D28);
    v0 = sub_1D16705A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC9D30);
    }
  }
}

uint64_t sub_1D15F3118(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1D15F3174()
{
  result = qword_1EDECA010;
  if (!qword_1EDECA010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDECA010);
  }

  return result;
}

uint64_t sub_1D15F31C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D15F3228(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1D15F323C(uint64_t a1, uint64_t a2)
{
  sub_1D15F290C(0, &qword_1EDECAE48, sub_1D15F2ED0, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D15F32D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D15F290C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D15F3340()
{
  v1 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_placeholderConfiguration;
  if (qword_1EDECB080 != -1)
  {
    swift_once();
  }

  *(v0 + v1) = xmmword_1EDECB090;
  *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientBackground) = 0;
  *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___gradientDefaultBackgroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___shapeView) = 0;
  *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView____lazy_storage___placeholderView) = 0;
  *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_circular) = 1;
  v2 = OBJC_IVAR____TtC27HealthMedicationsExperience14MedicationView_config;
  v3 = type metadata accessor for MedicationVisualizationConfig(0);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  sub_1D1670424();
  __break(1u);
}

uint64_t sub_1D15F346C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ScheduleItem.identifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ScheduleItem.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_date;
  v4 = sub_1D166F174();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ScheduleItem.medicationIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier + 8);

  return v1;
}

uint64_t ScheduleItem.__allocating_init(identifier:date:medicationIdentifier:doseAmount:isLastScheduledDose:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v18 = OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_date;
  v19 = sub_1D166F174();
  (*(*(v19 - 8) + 32))(v17 + v18, a3, v19);
  v20 = (v17 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier);
  *v20 = a4;
  v20[1] = a5;
  *(v17 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_doseAmount) = a7;
  *(v17 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_isLastScheduledDose) = a6;
  return v17;
}

uint64_t ScheduleItem.init(identifier:date:medicationIdentifier:doseAmount:isLastScheduledDose:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7)
{
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v13 = OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_date;
  v14 = sub_1D166F174();
  (*(*(v14 - 8) + 32))(v7 + v13, a3, v14);
  v15 = (v7 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier);
  *v15 = a4;
  v15[1] = a5;
  *(v7 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_doseAmount) = a7;
  *(v7 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_isLastScheduledDose) = a6;
  return v7;
}

uint64_t ScheduleItem.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_date;
  v3 = sub_1D166F174();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier + 8);

  return v0;
}

uint64_t ScheduleItem.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_date;
  v3 = sub_1D166F174();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier + 8];

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s27HealthMedicationsExperience12ScheduleItemC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (v4 || (sub_1D16705D4()) && (sub_1D166F134() & 1) != 0 && (*(a1 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier) == *(a2 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier) ? (v5 = *(a1 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier + 8) == *(a2 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier + 8)) : (v5 = 0), (v5 || (sub_1D16705D4()) && *(a1 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_doseAmount) == *(a2 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_doseAmount)))
  {
    v6 = *(a1 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_isLastScheduledDose) ^ *(a2 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_isLastScheduledDose) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t type metadata accessor for ScheduleItem()
{
  result = qword_1EDECB0C8;
  if (!qword_1EDECB0C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D15F39EC()
{
  result = sub_1D166F174();
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

id HKHealthStore.publisher(for:debugIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1D15F3BDC(a1, a4, type metadata accessor for HKMedicationClusterQueryDescriptor);
  v7 = (a4 + *(type metadata accessor for HKHealthStore.HKMedicationClusterPublisher.Configuration(0) + 20));
  *v7 = a2;
  v7[1] = a3;
  *(a4 + *(type metadata accessor for HKHealthStore.HKMedicationClusterPublisher(0) + 20)) = v9;

  return v9;
}

uint64_t sub_1D15F3BDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id HKHealthStore.HKMedicationClusterPublisher.healthStore.getter()
{
  v1 = *(v0 + *(type metadata accessor for HKHealthStore.HKMedicationClusterPublisher(0) + 20));

  return v1;
}

void *static HKHealthStore.HKMedicationClusterPublisher.makeQuery(with:outputHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = sub_1D165ACE8(sub_1D15F3F4C, v6);

  v8 = (a1 + *(type metadata accessor for HKHealthStore.HKMedicationClusterPublisher.Configuration(0) + 20));
  v9 = v8[1];
  if (v9)
  {
    v10 = *v8;
    v11 = v7;
    v9 = sub_1D166F9C4();
  }

  else
  {
    v12 = v7;
  }

  [v7 setDebugIdentifier_];

  return v7;
}

uint64_t sub_1D15F3D50(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *))
{
  sub_1D15F4354();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7);
  v13 = (v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v15 = (v19 - v14);
  if (a2)
  {
    *v13 = a2;
    (*(v9 + 104))(v13, *MEMORY[0x1E69A3898], v8);

    v15 = v13;
  }

  else
  {
    if (a3)
    {
      v16 = a3;
    }

    else
    {
      type metadata accessor for HKError(0);
      v19[0] = 0;
      sub_1D165BD30(MEMORY[0x1E69E7CC0]);
      sub_1D15F430C(&qword_1EC63D868, type metadata accessor for HKError);
      sub_1D166F074();
      v16 = v19[1];
    }

    *v15 = v16;
    (*(v9 + 104))(v15, *MEMORY[0x1E69A38A0], v8);
    v17 = a3;
  }

  a4(v15);
  return (*(v9 + 8))(v15, v8);
}

void *sub_1D15F3FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = sub_1D165ACE8(sub_1D15F4414, v6);

  v8 = (a1 + *(type metadata accessor for HKHealthStore.HKMedicationClusterPublisher.Configuration(0) + 20));
  v9 = v8[1];
  if (v9)
  {
    v10 = *v8;
    v11 = v7;
    v9 = sub_1D166F9C4();
  }

  else
  {
    v12 = v7;
  }

  [v7 setDebugIdentifier_];

  return v7;
}

uint64_t sub_1D15F40C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D15F430C(&qword_1EC63D9B8, type metadata accessor for HKHealthStore.HKMedicationClusterPublisher);

  return MEMORY[0x1EEE0EB08](a1, a4, a2, v8, a3);
}

uint64_t sub_1D15F417C()
{
  result = type metadata accessor for HKHealthStore.HKMedicationClusterPublisher.Configuration(319);
  if (v1 <= 0x3F)
  {
    result = sub_1D15EE5A8(319, &qword_1EDECADC8, 0x1E696C1C0);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1D15F4238()
{
  type metadata accessor for HKMedicationClusterQueryDescriptor();
  if (v0 <= 0x3F)
  {
    sub_1D15F42BC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D15F42BC()
{
  if (!qword_1EDECAE20)
  {
    v0 = sub_1D16700E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDECAE20);
    }
  }
}

uint64_t sub_1D15F430C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D15F4354()
{
  if (!qword_1EC63D9C0)
  {
    sub_1D15F43AC();
    v0 = sub_1D166F404();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63D9C0);
    }
  }
}

void sub_1D15F43AC()
{
  if (!qword_1EC63D9C8)
  {
    sub_1D15EE5A8(255, &qword_1EC63D9D0, 0x1E69A3B08);
    v0 = sub_1D166FCF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63D9C8);
    }
  }
}

uint64_t sub_1D15F4418()
{
  v1 = type metadata accessor for MedicationDoseEventLogSource(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15F8F04(v0, v4, type metadata accessor for MedicationDoseEventLogSource);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *v4;
    v6 = *(v4 + 1);
    v7 = *(v4 + 2);
    sub_1D15F9034(0);
    v9 = *(v8 + 64);
    v10 = *&v4[*(v8 + 112) + 8];

    v11 = objc_opt_self();
    v12 = *(v7 + 16);
    v13 = *(v7 + 24);

    v14 = sub_1D166F9C4();

    v15 = sub_1D166F9C4();

    v16 = [v11 syncIdentifierForScheduleItemIdentifier:v14 medicationIdentifier:v15];

    v17 = sub_1D166FA04();
  }

  else
  {
    v18 = *(v4 + 1);

    sub_1D15F933C(0);
    v9 = *(v19 + 48);
    v20 = *&v4[*(v19 + 96) + 8];

    v16 = [objc_opt_self() syncIdentifierForScheduleItemIdentifier:0 medicationIdentifier:0];
    v17 = sub_1D166FA04();
  }

  v21 = sub_1D166F174();
  (*(*(v21 - 8) + 8))(&v4[v9], v21);
  return v17;
}

uint64_t MedicationDoseEventUpdateModel.status.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t MedicationDoseEventUpdateModel.logDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MedicationDoseEventUpdateModel(0) + 24);

  return sub_1D15F8A24(v3, a1);
}

uint64_t MedicationDoseEventUpdateModel.doseAmount.getter()
{
  v1 = (v0 + *(type metadata accessor for MedicationDoseEventUpdateModel(0) + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MedicationDoseEventUpdateModel.init(medicationDoseEvent:status:logDate:doseAmount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3 & 1;
  updated = type metadata accessor for MedicationDoseEventUpdateModel(0);
  result = sub_1D15F8AB8(a4, a7 + *(updated + 24));
  v13 = a7 + *(updated + 28);
  *v13 = a5;
  *(v13 + 8) = a6 & 1;
  return result;
}

uint64_t sub_1D15F4730()
{
  v1 = v0;
  sub_1D15F96D0(0, &qword_1EDECB378, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v55 - v7;
  v9 = sub_1D166F174();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v64 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v55 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v55 - v17;
  if (*(v0 + 16) == 1)
  {
    v63 = [*v0 logStatus];
  }

  else
  {
    v63 = *(v0 + 8);
  }

  updated = type metadata accessor for MedicationDoseEventUpdateModel(0);
  v20 = v0 + *(updated + 28);
  if (*(v20 + 8) == 1)
  {
    v21 = *v0;
    v61 = sub_1D1670014();
    v60 = v22;
  }

  else
  {
    v60 = 0;
    v61 = *v20;
  }

  sub_1D15F8A24(v1 + *(updated + 24), v8);
  v23 = *(v10 + 48);
  if (v23(v8, 1, v9) == 1)
  {
    v24 = [*v1 startDate];
    sub_1D166F144();

    if (v23(v8, 1, v9) != 1)
    {
      sub_1D15F8E38(v8);
    }
  }

  else
  {
    (*(v10 + 32))(v18, v8, v9);
  }

  Date.dateWithOutSecsAndNanoSecs()(v16);
  v25 = *v1;
  v26 = [v25 metadata];
  v62 = v18;
  if (v26)
  {
    v27 = v26;
    v28 = sub_1D166F944();

    v29 = *MEMORY[0x1E696BB68];
    v30 = sub_1D166FA04();
    if (*(v28 + 16))
    {
      v32 = sub_1D16061DC(v30, v31);
      v34 = v33;

      if (v34)
      {
        sub_1D15F928C(*(v28 + 56) + 32 * v32, v65);

        sub_1D15FA184(v65, &v66);
        v35 = objc_opt_self();
        __swift_project_boxed_opaque_existential_0(&v66, v67);
        v36 = sub_1D16705C4();
        v37 = [v35 syncVersionForStatus_];
        v38 = [v35 _metadataWithSyncIdentifier_syncVersion_isLastScheduledDose_];
        swift_unknownObjectRelease();

        v59 = sub_1D166F944();
        __swift_destroy_boxed_opaque_existential_0(&v66);
        goto LABEL_18;
      }
    }

    else
    {
    }
  }

  v59 = 0;
LABEL_18:
  v58 = [v25 logOrigin];
  v39 = [v25 scheduleItemIdentifier];
  if (v39)
  {
    v40 = v39;
    v41 = sub_1D166FA04();
    v56 = v42;
    v57 = v41;
  }

  else
  {
    v56 = 0;
    v57 = 0;
  }

  v43 = [v25 medicationIdentifier];
  sub_1D166FA04();
  v55 = v44;

  sub_1D1670004();
  v45 = [v25 scheduledDate];
  if (v45)
  {
    v46 = v16;
    v47 = v45;
    sub_1D166F144();

    v16 = v46;
    v48 = 0;
  }

  else
  {
    v48 = 1;
  }

  (*(v10 + 56))(v6, v48, 1, v9);
  v49 = v16;
  (*(v10 + 16))(v64, v16, v9);
  v50 = [v25 doseUnitString];
  if (v50)
  {
    v51 = v50;
    sub_1D166FA04();
  }

  sub_1D15EE5A8(0, &unk_1EDECACE0, 0x1E696C280);
  v52 = sub_1D1670024();
  v53 = *(v10 + 8);
  v53(v49, v9);
  v53(v62, v9);
  return v52;
}

uint64_t Date.dateWithOutSecsAndNanoSecs()@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  sub_1D15F96D0(0, &qword_1EDECB378, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v28 = &v27 - v3;
  v33 = sub_1D166F2D4();
  v31 = *(v33 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1D166EFA4();
  v30 = *(v32 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D166F2B4();
  sub_1D15F96D0(0, &qword_1EC63D9D8, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v10 = sub_1D166F2C4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = 4 * v12;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D1672470;
  v16 = v15 + v13;
  v17 = *(v11 + 104);
  v17(v16, *MEMORY[0x1E6969A68], v10);
  v17(v16 + v12, *MEMORY[0x1E6969A78], v10);
  v17(v16 + 2 * v12, *MEMORY[0x1E6969A48], v10);
  v18 = 3 * v12;
  v19 = v29;
  v17(v16 + v18, *MEMORY[0x1E6969A58], v10);
  v17(v16 + v14, *MEMORY[0x1E6969A88], v10);
  v20 = v28;
  sub_1D15F8B4C(v15);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D166F244();

  v21 = *(v31 + 8);
  v22 = v33;
  v21(v6, v33);
  sub_1D166F2B4();
  sub_1D166F294();
  v21(v6, v22);
  (*(v30 + 8))(v9, v32);
  v23 = sub_1D166F174();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  if (v25(v20, 1, v23) != 1)
  {
    return (*(v24 + 32))(v34, v20, v23);
  }

  (*(v24 + 16))(v34, v19, v23);
  result = (v25)(v20, 1, v23);
  if (result != 1)
  {
    return sub_1D15F8E38(v20);
  }

  return result;
}

uint64_t MedicationDoseEventLogger.__allocating_init(healthStore:)(id a1)
{
  result = swift_allocObject();
  if (!a1)
  {
    v3 = result;
    a1 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
    [a1 setSourceBundleIdentifier_];
    [a1 resume];
    result = v3;
  }

  *(result + 16) = a1;
  return result;
}

uint64_t MedicationDoseEventLogger.init(healthStore:)(id a1)
{
  if (!a1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
    [v2 setSourceBundleIdentifier_];
    [v2 resume];
    a1 = v2;
  }

  *(v1 + 16) = a1;
  return v1;
}

uint64_t MedicationDoseEventLogger.saveMedicationDoseEvents(_:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = *(type metadata accessor for MedicationDoseEventUpdateModel(0) - 8);
  v2[5] = v3;
  v4 = *(v3 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v5 = *(type metadata accessor for MedicationDoseEventLogSource(0) - 8);
  v2[8] = v5;
  v6 = *(v5 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v7 = type metadata accessor for MedicationDoseEventSaveRequest(0);
  v2[11] = v7;
  v8 = *(v7 - 8);
  v2[12] = v8;
  v9 = *(v8 + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D15F547C, 0, 0);
}

uint64_t sub_1D15F547C()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[12];
    v4 = v0[8];
    v5 = v0[5];
    v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v35 = *(v3 + 72);
    v31 = (v4 + 72);
    v32 = (v4 + 80);
    v29 = (v5 + 72);
    v30 = (v5 + 80);
    v34 = v0 + 10;
    v33 = v0 + 7;
    v36 = MEMORY[0x1E69E7CC0];
    v37 = MEMORY[0x1E69E7CC0];
    do
    {
      v11 = v0[11];
      sub_1D15F8F04(v6, v0[13], type metadata accessor for MedicationDoseEventSaveRequest);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v13 = v0[13];
      if (EnumCaseMultiPayload == 1)
      {
        v14 = *v33;
        v15 = v0[6];
        sub_1D15F8F6C(v13, *v33, type metadata accessor for MedicationDoseEventUpdateModel);
        sub_1D15F8F04(v14, v15, type metadata accessor for MedicationDoseEventUpdateModel);
        v16 = v36;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1D15ECBD8(0, v36[2] + 1, 1, v36);
        }

        v18 = v16[2];
        v17 = v16[3];
        v19 = v18 + 1;
        v20 = type metadata accessor for MedicationDoseEventUpdateModel;
        v21 = type metadata accessor for MedicationDoseEventUpdateModel;
        if (v18 >= v17 >> 1)
        {
          v16 = sub_1D15ECBD8(v17 > 1, v18 + 1, 1, v16);
          v20 = type metadata accessor for MedicationDoseEventUpdateModel;
          v21 = type metadata accessor for MedicationDoseEventUpdateModel;
        }

        v23 = v0 + 6;
        v22 = v0 + 7;
        v24 = v29;
        v25 = v30;
        v36 = v16;
      }

      else
      {
        v26 = *v34;
        v27 = v0[9];
        sub_1D15F8F6C(v13, *v34, type metadata accessor for MedicationDoseEventLogSource);
        sub_1D15F8F04(v26, v27, type metadata accessor for MedicationDoseEventLogSource);
        v16 = v37;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1D15ECC0C(0, v37[2] + 1, 1, v37);
        }

        v18 = v16[2];
        v28 = v16[3];
        v19 = v18 + 1;
        v20 = type metadata accessor for MedicationDoseEventLogSource;
        v21 = type metadata accessor for MedicationDoseEventLogSource;
        if (v18 >= v28 >> 1)
        {
          v16 = sub_1D15ECC0C(v28 > 1, v18 + 1, 1, v16);
          v20 = type metadata accessor for MedicationDoseEventLogSource;
          v21 = type metadata accessor for MedicationDoseEventLogSource;
        }

        v23 = v0 + 9;
        v22 = v0 + 10;
        v24 = v31;
        v25 = v32;
        v37 = v16;
      }

      v10 = *v23;
      sub_1D15F8FD4(*v22, v21);
      v16[2] = v19;
      sub_1D15F8F6C(v10, v16 + ((*v25 + 32) & ~*v25) + *v24 * v18, v20);
      v6 += v35;
      --v2;
    }

    while (v2);
  }

  else
  {
    v36 = MEMORY[0x1E69E7CC0];
    v37 = MEMORY[0x1E69E7CC0];
  }

  v0[14] = v36;
  v0[15] = v37;
  v0[2] = MEMORY[0x1E69E7CC0];
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_1D15F5860;
  v8 = v0[4];

  return MedicationDoseEventLogger.logMedicationDoseEvents(_:)(v37);
}

uint64_t sub_1D15F5860(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  v4[17] = a1;
  v4[18] = v1;

  v7 = v3[15];
  if (v1)
  {
    v8 = v4[14];

    return MEMORY[0x1EEE6DFA0](sub_1D15F5C3C, 0, 0);
  }

  else
  {

    v9 = swift_task_alloc();
    v4[19] = v9;
    *v9 = v6;
    v9[1] = sub_1D15F5A10;
    v10 = v4[4];
    v11 = v4[14];

    return MedicationDoseEventLogger.updateMedicationDoseEvents(_:)(v11);
  }
}

uint64_t sub_1D15F5A10(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v7 = v4[17];
    v8 = v4[14];

    v9 = sub_1D15F5CD8;
  }

  else
  {
    v10 = v4[14];

    v4[21] = a1;
    v9 = sub_1D15F5B54;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1D15F5B54()
{
  v1 = v0[21];
  v2 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[6];
  v5 = v0[7];
  sub_1D15F7174(v0[17], sub_1D1626B98);
  sub_1D15F7174(v1, sub_1D1626B98);
  v7 = v0[2];

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_1D15F5C3C()
{
  v1 = v0[18];
  v2 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[6];
  v5 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D15F5CD8()
{
  v1 = v0[20];
  v2 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[6];
  v5 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t MedicationDoseEventLogger.logMedicationDoseEvents(_:)(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v2[21] = *v1;
  sub_1D15F96D0(0, &qword_1EDECB378, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v5 = sub_1D166F174();
  v2[23] = v5;
  v6 = *(v5 - 8);
  v2[24] = v6;
  v7 = *(v6 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v8 = type metadata accessor for MedicationDoseEventLogSource(0);
  v2[27] = v8;
  v9 = *(v8 - 8);
  v2[28] = v9;
  v10 = *(v9 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D15F5F2C, 0, 0);
}

uint64_t sub_1D15F5F2C()
{
  v94 = v0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[18] = MEMORY[0x1E69E7CC0];
  v2 = v0[19];
  v92 = *(v2 + 16);
  if (v92)
  {
    v3 = v0[28];
    v4 = v0[29];
    v5 = v0[24];
    v6 = v2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v86 = *(v3 + 72);
    v84 = (v5 + 56);
    v85 = (v5 + 32);
    v82 = (v5 + 8);
    v83 = (v5 + 16);
    v87 = v4;
    do
    {
      v7 = v0[29];
      v8 = v0[30];
      v9 = v0[27];
      sub_1D15F8F04(v6, v8, type metadata accessor for MedicationDoseEventLogSource);
      sub_1D15F8F04(v8, v7, type metadata accessor for MedicationDoseEventLogSource);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v90 = *(v4 + 8);
      v91 = *v7;
      v12 = v0[29];
      v11 = v0[30];
      v13 = v0[26];
      v14 = v0[23];
      v88 = v0[22];
      v89 = v0[25];
      if (EnumCaseMultiPayload == 1)
      {
        v15 = *(v4 + 16);
        sub_1D15F9034(0);
        v17 = *(v12 + v16[20]);
        v18 = (v12 + v16[24]);
        v80 = *v18;
        v78 = *(v18 + 8);
        v19 = (v12 + v16[28]);
        v75 = v19[1];
        v76 = *v19;
        (*v85)(v13, v12 + v16[16], v14);
        sub_1D15F4418();
        v74 = *(v15 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_doseAmount);
        v20 = objc_opt_self();

        v21 = sub_1D166F9C4();

        v22 = [v20 syncVersionForStatus_];
        v23 = [v20 _metadataWithSyncIdentifier_syncVersion_isLastScheduledDose_];

        sub_1D166F944();
        sub_1D15EE5A8(0, &unk_1EDECACE0, 0x1E696C280);
        v24 = *(v15 + 24);
        v73 = *(v15 + 16);
        v25 = v13;
        v26 = *v83;
        (*v83)(v88, v15 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_date, v14);
        (*v84)(v88, 0, 1, v14);
        v26(v89, v25, v14);

        v27 = sub_1D1670024();
      }

      else
      {
        sub_1D15F933C(0);
        v29 = *(v12 + v28[16]);
        v30 = (v12 + v28[20]);
        v31 = *v30;
        v81 = *(v30 + 8);
        v32 = (v12 + v28[24]);
        v77 = v32[1];
        v79 = *v32;
        (*v85)(v13, v12 + v28[12], v14);
        sub_1D15F4418();
        v33 = objc_opt_self();
        v34 = sub_1D166F9C4();

        v35 = [v33 syncVersionForStatus_];
        v36 = [v33 _metadataWithSyncIdentifier_syncVersion_isLastScheduledDose_];

        sub_1D166F944();
        sub_1D15EE5A8(0, &unk_1EDECACE0, 0x1E696C280);
        (*v84)(v88, 1, 1, v14);
        (*v83)(v89, v13, v14);
        v27 = sub_1D1670024();
      }

      (*v82)(v0[26], v0[23]);
      v37 = v27;
      MEMORY[0x1D388CE10](v37, v38, v39, v40, v41, v42, v43);
      if (*((v0[18] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[18] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v45 = *((v0[18] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D166FC84();
      }

      v44 = v0[30];
      sub_1D166FCC4();

      sub_1D15F8FD4(v44, type metadata accessor for MedicationDoseEventLogSource);
      v4 = v87;
      v6 += v86;
      --v92;
    }

    while (v92);
    v1 = v0[18];
  }

  v0[31] = v1;
  if (v1 >> 62)
  {
    if (sub_1D1670224())
    {
      goto LABEL_12;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:
    if (qword_1EDECB358 != -1)
    {
      swift_once();
    }

    v46 = sub_1D166F4E4();
    v0[32] = __swift_project_value_buffer(v46, qword_1EDECB360);
    v47 = sub_1D166F4D4();
    v48 = sub_1D166FF64();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = v0[21];
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v93[0] = v51;
      *v50 = 136315394;
      v52 = sub_1D1670754();
      v54 = sub_1D15F7A30(v52, v53, v93);

      *(v50 + 4) = v54;
      *(v50 + 12) = 2080;
      v55 = sub_1D15EE5A8(0, &unk_1EDECACE0, 0x1E696C280);

      v57 = MEMORY[0x1D388CE40](v56, v55);
      v59 = v58;

      v60 = sub_1D15F7A30(v57, v59, v93);

      *(v50 + 14) = v60;
      _os_log_impl(&dword_1D15E6000, v47, v48, "%s Saving medication dose events to healthStore: %s", v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D388E250](v51, -1, -1);
      MEMORY[0x1D388E250](v50, -1, -1);
    }

    v61 = *(v0[20] + 16);
    if (v1 >> 62)
    {
      sub_1D15EE5A8(0, &qword_1EC63D9F0, 0x1E696C2D0);

      sub_1D1670434();
    }

    else
    {
      swift_bridgeObjectRetain_n();
      sub_1D16705E4();
      sub_1D15EE5A8(0, &qword_1EC63D9F0, 0x1E696C2D0);
    }

    sub_1D15EE5A8(0, &qword_1EC63D9F0, 0x1E696C2D0);
    v62 = sub_1D166FC44();
    v0[33] = v62;

    v0[2] = v0;
    v0[3] = sub_1D15F68B8;
    v63 = swift_continuation_init();
    sub_1D15F94CC(0, &qword_1EC63D9F8);
    v0[17] = v64;
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D15F7284;
    v0[13] = &block_descriptor;
    v0[14] = v63;
    [v61 saveObjects:v62 withCompletion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  v66 = v0[29];
  v65 = v0[30];
  v68 = v0[25];
  v67 = v0[26];
  v69 = v0[22];

  v70 = v0[1];
  v71 = v0[31];

  return v70(v71);
}

uint64_t sub_1D15F68B8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  if (v2)
  {
    v3 = sub_1D15F6B44;
  }

  else
  {
    v3 = sub_1D15F69C8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D15F69C8()
{
  v19 = v0;
  v1 = *(v0 + 256);

  v2 = sub_1D166F4D4();
  v3 = sub_1D166FF64();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 168);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136315138;
    v7 = sub_1D1670754();
    v9 = sub_1D15F7A30(v7, v8, &v18);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1D15E6000, v2, v3, "%s SUCCESS: medication dose events saved in healthStore!", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1D388E250](v6, -1, -1);
    MEMORY[0x1D388E250](v5, -1, -1);
  }

  v11 = *(v0 + 232);
  v10 = *(v0 + 240);
  v13 = *(v0 + 200);
  v12 = *(v0 + 208);
  v14 = *(v0 + 176);

  v15 = *(v0 + 8);
  v16 = *(v0 + 248);

  return v15(v16);
}

uint64_t sub_1D15F6B44()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[30];
  v4 = v0[31];
  v5 = v0[29];
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[22];
  swift_willThrow();

  v9 = v0[1];
  v10 = v0[34];

  return v9();
}

uint64_t MedicationDoseEventLogger.updateMedicationDoseEvents(_:)(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D15F6C2C, 0, 0);
}

uint64_t sub_1D15F6C2C()
{
  v1 = MEMORY[0x1E69E7CC0];
  v0[18] = MEMORY[0x1E69E7CC0];
  v2 = v0 + 18;
  v3 = v0[19];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(type metadata accessor for MedicationDoseEventUpdateModel(0) - 8);
    v6 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    do
    {
      v8 = sub_1D15F4730();
      MEMORY[0x1D388CE10]();
      if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v9 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D166FC84();
      }

      sub_1D166FCC4();

      v6 += v7;
      --v4;
    }

    while (v4);
    v1 = *v2;
  }

  v0[21] = v1;
  if (v1 >> 62)
  {
    if (sub_1D1670224())
    {
      v10 = *(v0[20] + 16);
      sub_1D15EE5A8(0, &qword_1EC63D9F0, 0x1E696C2D0);

      sub_1D1670434();

      goto LABEL_10;
    }

    v1 = v0[21];
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v0[20] + 16);

    sub_1D16705E4();
    sub_1D15EE5A8(0, &qword_1EC63D9F0, 0x1E696C2D0);
LABEL_10:
    sub_1D15EE5A8(0, &qword_1EC63D9F0, 0x1E696C2D0);
    v11 = sub_1D166FC44();
    v0[22] = v11;

    v0[2] = v0;
    v0[3] = sub_1D15F6F6C;
    v12 = swift_continuation_init();
    sub_1D15F94CC(0, &qword_1EC63D9F8);
    v0[17] = v13;
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D15F7284;
    v0[13] = &block_descriptor_7;
    v0[14] = v12;
    [v10 saveObjects:v11 withCompletion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  v14 = v0[1];

  return v14(v1);
}

uint64_t sub_1D15F6F6C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 184) = v3;
  if (v3)
  {
    v4 = *(v1 + 168);

    v5 = sub_1D15F70EC;
  }

  else
  {
    v5 = sub_1D15F7084;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D15F7084()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 168);

  return v1(v2);
}

uint64_t sub_1D15F70EC()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

uint64_t sub_1D15F7174(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1D1670224();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_1D1670224();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1D15F7F7C(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D15F7284(uint64_t a1, int a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a2)
  {
    v5 = *v5;

    return MEMORY[0x1EEE6DEE0](v5);
  }

  if (!a3)
  {
    __break(1u);
    return MEMORY[0x1EEE6DEE0](v5);
  }

  sub_1D15F9218();
  swift_allocError();
  *v7 = a3;
  v8 = a3;

  return swift_continuation_throwingResumeWithError();
}

uint64_t MedicationDoseEventLogger.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D15F7388(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D15F7420;

  return MedicationDoseEventLogger.logMedicationDoseEvents(_:)(a1);
}

uint64_t sub_1D15F7420(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1D15F7520(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D15FA328;

  return MedicationDoseEventLogger.updateMedicationDoseEvents(_:)(a1);
}

uint64_t MedicationDoseEventLogger.logUnloggedMedications(for:status:logDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D15F75E0, 0, 0);
}

uint64_t sub_1D15F75E0()
{
  v1 = v0[21];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v5 = [objc_allocWithZone(MEMORY[0x1E69A3AE0]) initWithHealthStore_];
  v0[23] = v5;
  v6 = sub_1D166F9C4();
  v0[24] = v6;
  v7 = sub_1D166F124();
  v0[25] = v7;
  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_1D15F776C;
  v8 = swift_continuation_init();
  sub_1D15F94CC(0, &qword_1EC63DA08);
  v0[17] = v9;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D15F7970;
  v0[13] = &block_descriptor_11;
  v0[14] = v8;
  [v5 logUnloggedDoseEventsForScheduledItemIdentifier:v6 status:v2 logDate:v7 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D15F776C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_1D15F78EC;
  }

  else
  {
    v3 = sub_1D15F787C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D15F787C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D15F78EC()
{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[26];

  return v5();
}

uint64_t sub_1D15F7970(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1D15F9218();
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1D15F7A30(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D15F7AFC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1D15F928C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1D15F7AFC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1D15F7C08(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1D1670354();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1D15F7C08(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D15F7C54(a1, a2);
  sub_1D15F7D84(&unk_1F4D4ACF8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1D15F7C54(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D164F434(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1D1670354();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1D166FB24();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D164F434(v10, 0);
        result = sub_1D16702C4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1D15F7D84(uint64_t result)
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

  result = sub_1D15F7E70(result, v12, 1, v3);
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

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

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

char *sub_1D15F7E70(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D15FA194(0, &qword_1EC63DA68, MEMORY[0x1E69E7508], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1D15F7F7C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1D1670224();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1D1670304();
  *v1 = result;
  return result;
}

uint64_t _s27HealthMedicationsExperience28MedicationDoseEventLogSourceO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v103 = sub_1D166F174();
  v105 = *(v103 - 8);
  v4 = v105[8];
  v5 = MEMORY[0x1EEE9AC00](v103);
  v101 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v90 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v100 = &v90 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v90 - v12;
  v14 = type metadata accessor for MedicationDoseEventLogSource(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v90 - v19);
  sub_1D15FA2A8();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = &v25[*(v23 + 56)];
  sub_1D15F8F04(a1, v25, type metadata accessor for MedicationDoseEventLogSource);
  sub_1D15F8F04(a2, v26, type metadata accessor for MedicationDoseEventLogSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v104 = v25;
  if (EnumCaseMultiPayload != 1)
  {
    v101 = v13;
    sub_1D15F8F04(v25, v20, type metadata accessor for MedicationDoseEventLogSource);
    v49 = *v20;
    v48 = v20[1];
    sub_1D15F933C(0);
    v51 = v50[12];
    v32 = v20 + v51;
    v52 = v50[16];
    v99 = *(v20 + v52);
    v53 = v50[20];
    v54 = *(v20 + v53);
    LODWORD(v98) = *(v20 + v53 + 8);
    v55 = v50[24];
    v56 = *(v20 + v55);
    v57 = *(v20 + v55 + 8);
    v97 = v56;
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      goto LABEL_9;
    }

    v102 = v57;
    v60 = *v26;
    v61 = *(v26 + 1);
    v96 = *&v26[v52];
    v62 = *&v26[v53];
    LODWORD(v95) = v26[v53 + 8];
    v63 = *&v26[v55];
    v42 = *&v26[v55 + 8];
    v94 = v63;
    v64 = v105[4];
    v65 = v32;
    v45 = v103;
    v64(v101, v65, v103);
    v66 = &v26[v51];
    v67 = v100;
    v64(v100, v66, v45);
    if (v49 == v60 && v48 == v61)
    {
    }

    else
    {
      v71 = sub_1D16705D4();

      if ((v71 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v72 = v101;
    if ((sub_1D166F134() & 1) == 0)
    {

      v74 = v105[1];
      v74(v67, v45);
      v74(v72, v45);
      goto LABEL_30;
    }

    if (v99 == v96)
    {
      if (v98)
      {
        if (!v95)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v54 == v62)
        {
          v79 = v95;
        }

        else
        {
          v79 = 1;
        }

        if (v79)
        {
          goto LABEL_29;
        }
      }

      if (v102)
      {
        if (v42)
        {
          if (v97 == v94 && v102 == v42)
          {

            v80 = v105[1];
            v80(v67, v45);
            v81 = v101;
LABEL_51:
            v80(v81, v45);
            v58 = 1;
            goto LABEL_31;
          }

          v86 = sub_1D16705D4();

          v87 = v105[1];
          v87(v67, v45);
          v87(v101, v45);
          goto LABEL_63;
        }

        v85 = v105[1];
        v85(v67, v45);
        v85(v101, v45);
LABEL_60:
        v77 = v104;
LABEL_61:
        v58 = 0;
        v59 = type metadata accessor for MedicationDoseEventLogSource;
        goto LABEL_33;
      }

      v83 = v105[1];
      v83(v67, v45);
      v84 = v101;
LABEL_56:
      v83(v84, v45);
      v59 = type metadata accessor for MedicationDoseEventLogSource;
      if (!v42)
      {
        v58 = 1;
        goto LABEL_32;
      }

      goto LABEL_60;
    }

LABEL_29:

    v76 = v105[1];
    v76(v67, v45);
    v76(v101, v45);
    goto LABEL_30;
  }

  v100 = v9;
  sub_1D15F8F04(v25, v18, type metadata accessor for MedicationDoseEventLogSource);
  v28 = *v18;
  v99 = v18[1];
  v29 = v18[2];
  sub_1D15F9034(0);
  v31 = v30[16];
  v32 = v18 + v31;
  v33 = v30[20];
  v98 = *(v18 + v33);
  v34 = v30[24];
  v35 = *(v18 + v34);
  LODWORD(v97) = *(v18 + v34 + 8);
  v36 = v30[28];
  v37 = v18 + v36;
  v38 = *(v18 + v36);
  v102 = *(v37 + 1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v92 = v38;
    v40 = *v26;
    v39 = *(v26 + 1);
    v95 = *(v26 + 2);
    v96 = v29;
    v94 = *&v26[v33];
    v41 = *&v26[v34];
    v93 = v26[v34 + 8];
    v42 = *&v26[v36 + 8];
    v91 = *&v26[v36];
    v43 = v105[4];
    v44 = v32;
    v45 = v103;
    v43(v100, v44, v103);
    v46 = &v26[v31];
    v47 = v101;
    v43(v101, v46, v45);
    if (v28 == v40 && v99 == v39)
    {
    }

    else
    {
      v68 = sub_1D16705D4();

      if ((v68 & 1) == 0)
      {

        v75 = v105[1];
        v75(v47, v45);
        v75(v100, v45);
        goto LABEL_30;
      }
    }

    v69 = _s27HealthMedicationsExperience12ScheduleItemC2eeoiySbAC_ACtFZ_0(v96, v95);
    v70 = v100;
    if ((v69 & 1) == 0 || (sub_1D166F134() & 1) == 0 || v98 != v94)
    {
      goto LABEL_26;
    }

    if (v97)
    {
      if (!v93)
      {
LABEL_26:

        v73 = v105[1];
        v73(v47, v45);
        v73(v70, v45);
LABEL_30:
        v58 = 0;
LABEL_31:
        v59 = type metadata accessor for MedicationDoseEventLogSource;
        goto LABEL_32;
      }
    }

    else
    {
      v82 = v93;
      if (v35 != v41)
      {
        v82 = 1;
      }

      if (v82)
      {
        goto LABEL_26;
      }
    }

    if (v102)
    {
      if (v42)
      {
        if (v92 == v91 && v102 == v42)
        {

          v80 = v105[1];
          v80(v47, v45);
          v81 = v70;
          goto LABEL_51;
        }

        v86 = sub_1D16705D4();

        v89 = v105[1];
        v89(v47, v45);
        v89(v70, v45);
LABEL_63:
        v59 = type metadata accessor for MedicationDoseEventLogSource;
        v77 = v104;
        if (v86)
        {
          v58 = 1;
          goto LABEL_33;
        }

        goto LABEL_61;
      }

      v88 = v105[1];
      v88(v47, v45);
      v88(v70, v45);
      goto LABEL_60;
    }

    v83 = v105[1];
    v83(v47, v45);
    v84 = v70;
    goto LABEL_56;
  }

LABEL_9:

  (v105[1])(v32, v103);
  v58 = 0;
  v59 = sub_1D15FA2A8;
LABEL_32:
  v77 = v104;
LABEL_33:
  sub_1D15F8FD4(v77, v59);
  return v58;
}

uint64_t sub_1D15F8A24(uint64_t a1, uint64_t a2)
{
  sub_1D15F96D0(0, &qword_1EDECB378, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D15F8AB8(uint64_t a1, uint64_t a2)
{
  sub_1D15F96D0(0, &qword_1EDECB378, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D15F8B4C(uint64_t a1)
{
  v2 = sub_1D166F2C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_1D15FA1E4();
    v10 = sub_1D16702A4();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1D15FA264(&qword_1EC63DA78);
      v18 = sub_1D166F974();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1D15FA264(&qword_1EC63DA80);
          v25 = sub_1D166F9B4();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D15F8E38(uint64_t a1)
{
  sub_1D15F96D0(0, &qword_1EDECB378, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D15F8F04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D15F8F6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D15F8FD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D15F9034(uint64_t a1)
{
  if (!qword_1EC63D9E0)
  {
    MEMORY[0x1EEE9AC00](a1);
    v1 = MEMORY[0x1E69E6158];
    type metadata accessor for ScheduleItem();
    sub_1D166F174();
    type metadata accessor for LogStatus(255);
    v2 = MEMORY[0x1E69E6720];
    sub_1D15FA194(255, &qword_1EC63D9E8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    sub_1D15FA194(255, &qword_1EDECAE20, v1, v2);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC63D9E0);
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1D15F9218()
{
  result = qword_1EDECB320;
  if (!qword_1EDECB320)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDECB320);
  }

  return result;
}

uint64_t sub_1D15F928C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_1D15F933C(uint64_t a1)
{
  if (!qword_1EC63DA00)
  {
    MEMORY[0x1EEE9AC00](a1);
    v1 = MEMORY[0x1E69E6158];
    sub_1D166F174();
    type metadata accessor for LogStatus(255);
    v2 = MEMORY[0x1E69E6720];
    sub_1D15FA194(255, &qword_1EC63D9E8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    sub_1D15FA194(255, &qword_1EDECAE20, v1, v2);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC63DA00);
    }
  }
}

void sub_1D15F94CC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1D15F9218();
    v3 = sub_1D166FDD4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D15F9588()
{
  sub_1D15EE5A8(319, &unk_1EDECACE0, 0x1E696C280);
  if (v0 <= 0x3F)
  {
    sub_1D15F96D0(319, &qword_1EC63DA30, type metadata accessor for LogStatus, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D15F96D0(319, &qword_1EDECB378, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1D15FA194(319, &qword_1EC63D9E8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D15F96D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D15F97B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of MedicationDoseEventLogging.logMedicationDoseEvents(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D15F9958;

  return v11(a1, a2, a3);
}

uint64_t sub_1D15F9958(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of MedicationDoseEventLogging.updateMedicationDoseEvents(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D15FA320;

  return v11(a1, a2, a3);
}

void sub_1D15F9BCC(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1D1670224())
    {
LABEL_3:
      sub_1D15F9EB0();
      v3 = sub_1D16702A4();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1D1670224();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v40 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v38 = v1;
    while (1)
    {
      v8 = MEMORY[0x1D388D4D0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_1D1670094();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_1D15EE5A8(0, &qword_1EC63DA50, 0x1E696AD98);
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_1D16700A4();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v38;
            v5 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v38;
        v5 = v40;
        if (v7 == v40)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v37 = v1 + 32;
    v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v39)
    {
      v24 = *(v3 + 40);
      v25 = *(v37 + 8 * v23);
      v26 = sub_1D1670094();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_1D15EE5A8(0, &qword_1EC63DA50, 0x1E696AD98);
        do
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_1D16700A4();

          if (v34)
          {

            v5 = v40;
            goto LABEL_23;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
        }

        while (((1 << v28) & v30) != 0);
        v5 = v40;
      }

      *(v6 + 8 * v29) = v31 | v30;
      *(*(v3 + 48) + 8 * v28) = v25;
      v35 = *(v3 + 16);
      v9 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v36;
LABEL_23:
      if (++v23 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_1D15F9EB0()
{
  if (!qword_1EC63DA48)
  {
    sub_1D15EE5A8(255, &qword_1EC63DA50, 0x1E696AD98);
    sub_1D15F9F24();
    v0 = sub_1D16702B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63DA48);
    }
  }
}

unint64_t sub_1D15F9F24()
{
  result = qword_1EC63DA58;
  if (!qword_1EC63DA58)
  {
    sub_1D15EE5A8(255, &qword_1EC63DA50, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC63DA58);
  }

  return result;
}

uint64_t sub_1D15F9F8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D15FA0E8();
    v3 = sub_1D16702A4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_1D16706A4();

      sub_1D166FAE4();
      result = sub_1D16706E4();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_1D16705D4();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void sub_1D15FA0E8()
{
  if (!qword_1EC63DA60)
  {
    v0 = sub_1D16702B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63DA60);
    }
  }
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

_OWORD *sub_1D15FA184(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1D15FA194(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D15FA1E4()
{
  if (!qword_1EC63DA70)
  {
    sub_1D166F2C4();
    sub_1D15FA264(&qword_1EC63DA78);
    v0 = sub_1D16702B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63DA70);
    }
  }
}

uint64_t sub_1D15FA264(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D166F2C4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D15FA2A8()
{
  if (!qword_1EC63DA88)
  {
    type metadata accessor for MedicationDoseEventLogSource(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC63DA88);
    }
  }
}

uint64_t sub_1D15FA368(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_1D15FA42C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 25) = a1;
  return result;
}

uint64_t MedicationRoomInteractionAnalyticsManager.__allocating_init(provenance:hasSideEffectsContent:hasPregnancyContent:)(uint64_t a1, char a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 32) = [objc_allocWithZone(MEMORY[0x1E696BF70]) init];
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 25) = a3;
  return v6;
}

uint64_t MedicationRoomInteractionAnalyticsManager.init(provenance:hasSideEffectsContent:hasPregnancyContent:)(uint64_t a1, char a2, char a3)
{
  *(v3 + 32) = [objc_allocWithZone(MEMORY[0x1E696BF70]) init];
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 25) = a3;
  return v3;
}

void sub_1D15FA594(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if (qword_1EDECB358 != -1)
  {
    swift_once();
  }

  v7 = sub_1D166F4E4();
  __swift_project_value_buffer(v7, qword_1EDECB360);
  v8 = sub_1D166F4D4();
  v9 = sub_1D166FF64();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v10 = 136315650;
    v12 = sub_1D1670754();
    v14 = sub_1D15F7A30(v12, v13, aBlock);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = HKStringFromMedicationRoomAnalyticsAction();
    v16 = sub_1D166FA04();
    v18 = v17;

    v19 = sub_1D15F7A30(v16, v18, aBlock);

    *(v10 + 14) = v19;
    *(v10 + 22) = 2048;
    *(v10 + 24) = a2;
    _os_log_impl(&dword_1D15E6000, v8, v9, "[%s] Submitting analytics for action: %s, roomType: %ld", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D388E250](v11, -1, -1);
    MEMORY[0x1D388E250](v10, -1, -1);
  }

  v20 = a1;
  v38 = v3[2];
  v21 = v3[4];
  swift_beginAccess();
  v22 = *(v3 + 24);
  swift_beginAccess();
  v23 = *(v3 + 25);
  type metadata accessor for MedicationRoomInteractionEvent();
  v24 = swift_allocObject();
  *(v24 + 56) = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  if (qword_1EDECB1C0 != -1)
  {
    swift_once();
  }

  v25 = a2;
  v26 = off_1EDECB1C8;
  v27 = qword_1EDECAD88;
  v28 = *(off_1EDECB1C8 + 2);
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = qword_1EDECAD90;
  v30 = type metadata accessor for MedicationsSettingsManager();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v33 = sub_1D163E808(v28, 0, v29);

  *(v24 + 64) = v33;
  v34 = [v21 currentCalendar];
  if (v34)
  {
    *(v24 + 16) = v34;
    *(v24 + 24) = v20;
    *(v24 + 32) = v25;
    *(v24 + 40) = v38;
    *(v24 + 48) = v22;
    *(v24 + 49) = v23;
    v35 = HKLogMedication();
    v36 = [objc_allocWithZone(MEMORY[0x1E696BF00]) initWithLoggingCategory:v35 healthDataSource:v26[2]];

    aBlock[4] = sub_1D15FA9B0;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D15FABB0;
    aBlock[3] = &block_descriptor_0;
    v37 = _Block_copy(aBlock);
    [v36 submitEvent:v24 completion:v37];
    _Block_release(v37);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D15FA9B0(char a1, void *a2)
{
  if (a1)
  {
    if (qword_1EDECB358 != -1)
    {
      swift_once();
    }

    v2 = sub_1D166F4E4();
    __swift_project_value_buffer(v2, qword_1EDECB360);
    oslog = sub_1D166F4D4();
    v3 = sub_1D166FF34();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1D15E6000, oslog, v3, "[MedicationRoomInteractionAnalytics] Successfully submitted analytics", v4, 2u);
LABEL_13:
      MEMORY[0x1D388E250](v4, -1, -1);
    }
  }

  else
  {
    if (qword_1EDECB358 != -1)
    {
      swift_once();
    }

    v6 = sub_1D166F4E4();
    __swift_project_value_buffer(v6, qword_1EDECB360);
    v7 = a2;
    oslog = sub_1D166F4D4();
    v8 = sub_1D166FF44();

    if (os_log_type_enabled(oslog, v8))
    {
      v4 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v4 = 138412290;
      if (a2)
      {
        v10 = a2;
        v11 = _swift_stdlib_bridgeErrorToNSError();
        v12 = v11;
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }

      *(v4 + 4) = v11;
      *v9 = v12;
      _os_log_impl(&dword_1D15E6000, oslog, v8, "[MedicationRoomInteractionAnalytics] Failed to submit analytics with error: %@.", v4, 0xCu);
      sub_1D15FADE4(v9);
      MEMORY[0x1D388E250](v9, -1, -1);
      goto LABEL_13;
    }
  }
}

void sub_1D15FABB0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t MedicationRoomInteractionAnalyticsManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D15FADE4(uint64_t a1)
{
  sub_1D15FAE40();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D15FAE40()
{
  if (!qword_1EC63DF40)
  {
    sub_1D15FAE98();
    v0 = sub_1D16700E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC63DF40);
    }
  }
}

unint64_t sub_1D15FAE98()
{
  result = qword_1EDEC9D80;
  if (!qword_1EDEC9D80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEC9D80);
  }

  return result;
}

uint64_t sub_1D15FAEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D15FA328;

  return MedicationScheduleItemDataSourcing.scheduleItems(for:medicationsIdentifiers:)(a1, a2, a3, a4, a5);
}

uint64_t MedicationScheduleItemDataSourcing.scheduleItems(for:medicationsIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 40);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D15FA328;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t MedicationScheduleItemDataSource.__allocating_init(healthStore:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t MedicationScheduleItemDataSource.fetchScheduleItem(_:)(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  sub_1D15FB870();
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  sub_1D15FB8C8(0, qword_1EDECAE90, &qword_1EDECACD0, 0x1E69A3AF0, type metadata accessor for HKMedicationScheduleItemQueryDescriptor);
  v3[16] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  sub_1D15FB8C8(0, &unk_1EDECB310, &qword_1EDECACD0, 0x1E69A3AF0, MEMORY[0x1E69682B8]);
  v3[18] = v8;
  v9 = *(v8 - 8);
  v3[19] = v9;
  v10 = *(v9 + 64) + 15;
  v3[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D15FB2B0, 0, 0);
}

uint64_t sub_1D15FB2B0()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[16];
  v18 = v4;
  v6 = v0[14];
  v19 = v6;
  v20 = v0[18];
  v22 = v0[12];
  v23 = v0[13];
  v21 = v0[11];
  KeyPath = swift_getKeyPath();
  MEMORY[0x1D388C1D0](KeyPath, 0);
  v8 = sub_1D166F174();
  v9 = *(*(v8 - 8) + 56);
  v9(v4, 1, 1, v8);
  v9(v6, 1, 1, v8);
  sub_1D15FB948();
  v10 = *(v2 + 72);
  v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D16721D0;
  (*(v2 + 16))(v12 + v11, v1, v20);
  v9(v3, 1, 1, v8);
  v13 = v5[7];
  v9(v3 + v13, 1, 1, v8);
  v14 = v5[9];
  v15 = (v3 + v5[8]);
  v16 = v3 + v5[10];
  sub_1D166F8D4();
  sub_1D15FB9CC(v18, v3);
  sub_1D15FB9CC(v19, v3 + v13);
  *v15 = v21;
  v15[1] = v22;
  *(v3 + v14) = v12;
  v0[21] = *(v23 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1D15FB4B4, 0, 0);
}

uint64_t sub_1D15FB4B4()
{
  v1 = v0[21];
  v2 = v0[17];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_1D15FB564;
  v3 = swift_continuation_init();
  sub_1D15FF730(v3, v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D15FB564()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 176) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1D15FB7C4;
  }

  else
  {
    *(v1 + 184) = *(v1 + 80);
    v4 = sub_1D15FB688;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D15FB688()
{
  v1 = v0[23];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v4 = v0[23];
    }

    result = sub_1D1670224();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v5 = v0[23];

    v3 = 0;
    goto LABEL_11;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1D388D4D0](0, v0[23]);
    v10 = v0[23];
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[23] + 32);
  }

LABEL_11:
  v6 = v0[17];
  v8 = v0[14];
  v7 = v0[15];
  (*(v0[19] + 8))(v0[20], v0[18]);
  sub_1D15FFC9C(v6);

  v9 = v0[1];

  return v9(v3);
}

uint64_t sub_1D15FB7C4()
{
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  (*(v0[19] + 8))(v0[20], v0[18]);
  sub_1D15FFC9C(v1);

  v4 = v0[1];
  v5 = v0[22];

  return v4();
}

void sub_1D15FB870()
{
  if (!qword_1EDECB378)
  {
    sub_1D166F174();
    v0 = sub_1D16700E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDECB378);
    }
  }
}

void sub_1D15FB8C8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D15EE5A8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D15FB948()
{
  if (!qword_1EDECABC0)
  {
    sub_1D15FB8C8(255, &unk_1EDECB310, &qword_1EDECACD0, 0x1E69A3AF0, MEMORY[0x1E69682B8]);
    v0 = sub_1D16705A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDECABC0);
    }
  }
}

uint64_t sub_1D15FB9CC(uint64_t a1, uint64_t a2)
{
  sub_1D15FB870();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MedicationScheduleItemDataSource.hk_scheduleItems(for:)(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  sub_1D15FB870();
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  sub_1D15FB8C8(0, qword_1EDECAE90, &qword_1EDECACD0, 0x1E69A3AF0, type metadata accessor for HKMedicationScheduleItemQueryDescriptor);
  v3[16] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D15FBB2C, 0, 0);
}

uint64_t sub_1D15FBB2C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[12];
  v13 = v0[11];
  v14 = v0[13];
  v6 = sub_1D166F174();
  v7 = *(*(v6 - 8) + 56);
  v7(v4, 1, 1, v6);
  v7(v3, 1, 1, v6);
  v7(v1, 1, 1, v6);
  v8 = v2[7];
  v7(v1 + v8, 1, 1, v6);
  v9 = v2[9];
  v10 = (v1 + v2[8]);
  v11 = v1 + v2[10];
  sub_1D166F8D4();
  sub_1D15FB9CC(v4, v1);
  sub_1D15FB9CC(v3, v1 + v8);
  *v10 = v13;
  v10[1] = v5;
  *(v1 + v9) = 0;
  v0[18] = *(v14 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1D15FBCB4, 0, 0);
}

uint64_t sub_1D15FBCB4()
{
  v2 = v0[17];
  v1 = v0[18];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_1D15FBD60;
  v3 = swift_continuation_init();
  sub_1D15FF730(v3, v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D15FBD60()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 152) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1D15FBF14;
  }

  else
  {
    *(v1 + 160) = *(v1 + 80);
    v4 = sub_1D15FBE84;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D15FBE84()
{
  v2 = v0[14];
  v1 = v0[15];
  sub_1D15FFC9C(v0[17]);

  v3 = v0[1];
  v4 = v0[20];

  return v3(v4);
}

uint64_t sub_1D15FBF14()
{
  v2 = v0[14];
  v1 = v0[15];
  sub_1D15FFC9C(v0[17]);

  v3 = v0[1];
  v4 = v0[19];

  return v3();
}

uint64_t MedicationScheduleItemDataSource.fetchScheduleItems(in:)(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  sub_1D15FB870();
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  sub_1D15FB8C8(0, qword_1EDECAE90, &qword_1EDECACD0, 0x1E69A3AF0, type metadata accessor for HKMedicationScheduleItemQueryDescriptor);
  v2[15] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  sub_1D15FB8C8(0, &unk_1EDECB310, &qword_1EDECACD0, 0x1E69A3AF0, MEMORY[0x1E69682B8]);
  v2[17] = v7;
  v8 = *(v7 - 8);
  v2[18] = v8;
  v9 = *(v8 + 64) + 15;
  v2[19] = swift_task_alloc();
  v10 = sub_1D166F174();
  v2[20] = v10;
  v11 = *(v10 - 8);
  v2[21] = v11;
  v12 = *(v11 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D15FC188, 0, 0);
}

uint64_t sub_1D15FC188()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[18];
  v6 = v0[19];
  v7 = v0[16];
  v23 = v6;
  v24 = v0[17];
  v8 = v0[14];
  v21 = v1;
  v22 = v0[13];
  v25 = v0[15];
  v26 = v0[12];
  v9 = v0[11];
  sub_1D166EF64();
  sub_1D166EF54();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1D388C1D0](KeyPath, 0);
  v11 = *(v4 + 16);
  v11(v8, v2, v3);
  v12 = *(v4 + 56);
  v12(v8, 0, 1, v3);
  v11(v22, v21, v3);
  v12(v22, 0, 1, v3);
  sub_1D15FB948();
  v13 = *(v5 + 72);
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D16721D0;
  (*(v5 + 16))(v15 + v14, v23, v24);
  v12(v7, 1, 1, v3);
  v16 = v25[7];
  v12(v7 + v16, 1, 1, v3);
  v17 = v25[9];
  v18 = (v7 + v25[8]);
  v19 = v7 + v25[10];
  sub_1D166F8D4();
  sub_1D15FB9CC(v8, v7);
  sub_1D15FB9CC(v22, v7 + v16);
  *v18 = 0;
  v18[1] = 0;
  *(v7 + v17) = v15;
  v0[24] = *(v26 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1D15FC3A8, 0, 0);
}

uint64_t sub_1D15FC3A8()
{
  v1 = v0[24];
  v2 = v0[16];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_1D15FC458;
  v3 = swift_continuation_init();
  sub_1D15FF730(v3, v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D15FC458()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1D15FC688;
  }

  else
  {
    *(v1 + 208) = *(v1 + 80);
    v4 = sub_1D15FC57C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D15FC57C()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  (*(v0[18] + 8))(v0[19], v0[17]);
  v8 = *(v4 + 8);
  v8(v1, v3);
  v8(v2, v3);
  sub_1D15FFC9C(v5);

  v9 = v0[1];
  v10 = v0[26];

  return v9(v10);
}

uint64_t sub_1D15FC688()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  (*(v0[18] + 8))(v0[19], v0[17]);
  v8 = *(v4 + 8);
  v8(v1, v3);
  v8(v2, v3);
  sub_1D15FFC9C(v5);

  v9 = v0[1];
  v10 = v0[25];

  return v9();
}

uint64_t MedicationScheduleItemDataSource.doseEvents(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1D15FB8C8(0, &unk_1EDECAE30, &qword_1EDECACA0, 0x1E696C3A8, MEMORY[0x1E696B3D0]);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D15FC880, 0, 0);
}

uint64_t sub_1D15FC880()
{
  v1 = v0[7];
  v2 = v0[3];
  v24 = v0[4];
  v3 = v0[2];
  v4 = objc_opt_self();
  v5 = sub_1D166F9C4();
  v6 = [v4 predicateForMedicationDoseEventWithScheduleItemIdentifier_];
  v0[8] = v6;

  v7 = MEMORY[0x1E696B3A0];
  sub_1D15FFD24(0, &qword_1EDECABA8, &qword_1EDECAE40, MEMORY[0x1E696B3A0]);
  sub_1D15FB8C8(0, &qword_1EDECAE40, &qword_1EDECACA0, 0x1E696C3A8, v7);
  v9 = *(*(v8 - 8) + 72);
  v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  *(swift_allocObject() + 16) = xmmword_1D16721D0;
  sub_1D15EE5A8(0, &unk_1EDECADD0, 0x1E696C3D0);
  v11 = [swift_getObjCClassFromMetadata() medicationDoseEventType];
  sub_1D15EE5A8(0, &qword_1EDECACA0, 0x1E696C3A8);
  v12 = v6;
  sub_1D166F8F4();

  v13 = MEMORY[0x1E69682B8];
  sub_1D15FFD24(0, &unk_1EDECABB0, &qword_1EDECB308, MEMORY[0x1E69682B8]);
  sub_1D15FB8C8(0, &qword_1EDECB308, &qword_1EDECACA0, 0x1E696C3A8, v13);
  v15 = *(*(v14 - 8) + 72);
  v16 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
  *(swift_allocObject() + 16) = xmmword_1D16721D0;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1D388C1D0](KeyPath, 0);
  sub_1D166F904();
  v18 = *(v24 + 16);
  v19 = *(MEMORY[0x1E696B3C8] + 4);
  v20 = swift_task_alloc();
  v0[9] = v20;
  *v20 = v0;
  v20[1] = sub_1D15FCBC4;
  v21 = v0[7];
  v22 = v0[5];

  return MEMORY[0x1EEDC7698](v18, v22);
}

uint64_t sub_1D15FCBC4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = sub_1D15FCDD4;
  }

  else
  {
    *(v4 + 88) = a1;
    v7 = sub_1D15FCCEC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D15FCCEC()
{
  v1 = v0[6];
  v2 = sub_1D15FCECC(v0[11]);

  v3 = (v1 + 8);
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  if (v2)
  {
    (*v3)(v0[7], v0[5]);
  }

  else
  {

    (*v3)(v4, v6);
    v2 = MEMORY[0x1E69E7CC0];
  }

  v7 = v0[7];

  v8 = v0[1];

  return v8(v2);
}

uint64_t sub_1D15FCDD4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);
  v5 = *(v0 + 80);

  return v4();
}

void sub_1D15FCE70(id *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v4 = [*a1 *a4];
  sub_1D166F144();
}

uint64_t sub_1D15FCECC(unint64_t a1)
{
  v10 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  sub_1D16703A4();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1670224())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1D388D4D0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_1D1670374();
      v8 = *(v10 + 16);
      sub_1D16703B4();
      sub_1D16703C4();
      sub_1D1670384();
      if (v7 == i)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_1D1670224();
    sub_1D16703A4();
  }

  return v10;
}

uint64_t sub_1D15FD034(uint64_t a1)
{
  v2 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  sub_1D162306C(0, v2, 0);
  v3 = v11;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1D15F928C(i, v10);
      sub_1D15F42BC();
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v5 = v9;
      v11 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1D162306C((v6 > 1), v7 + 1, 1);
        v5 = v9;
        v3 = v11;
      }

      *(v3 + 16) = v7 + 1;
      *(v3 + 16 * v7 + 32) = v5;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1D15FD140(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  sub_1D162308C(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1D15F928C(i, v9);
      sub_1D15FB8C8(0, &qword_1EC63DA90, &qword_1EC63DA98, 0x1E696C010, MEMORY[0x1E69E62F8]);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D162308C((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1D15FD28C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1D162304C(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1D15F928C(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D162304C((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t MedicationScheduleItemDataSource.unloggedScheduleItems(for:)(uint64_t a1, uint64_t a2)
{
  v3[191] = v2;
  v3[185] = a2;
  v3[179] = a1;
  v4 = sub_1D166F174();
  v3[197] = v4;
  v5 = *(v4 - 8);
  v3[203] = v5;
  v6 = *(v5 + 64) + 15;
  v3[209] = swift_task_alloc();
  v3[210] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D15FD474, 0, 0);
}

uint64_t sub_1D15FD474()
{
  v1 = v0[191];
  v2 = v0[185];
  v3 = v0[179];
  v4 = swift_allocObject();
  v0[211] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;

  v5 = MEMORY[0x1E69E62F8];
  sub_1D15FB8C8(0, &qword_1EDECAE00, &unk_1EDECACE0, 0x1E696C280, MEMORY[0x1E69E62F8]);
  swift_asyncLet_begin();
  v6 = swift_allocObject();
  v0[212] = v6;
  v6[2] = v1;
  v6[3] = v3;
  v6[4] = v2;

  sub_1D15FB8C8(0, &qword_1EDECADF0, &qword_1EDECACD0, 0x1E69A3AF0, v5);
  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEC0](v0 + 2, v0 + 167, sub_1D15FD610, v0 + 162);
}

uint64_t sub_1D15FD610()
{
  v1[213] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 173, sub_1D15FE274, v1 + 168);
  }

  else
  {
    v1[214] = v1[167];

    return MEMORY[0x1EEE6DEC0](v1 + 82, v1 + 173, sub_1D15FD6C4, v1 + 180);
  }
}

uint64_t sub_1D15FD6C4()
{
  *(v1 + 1720) = v0;
  if (v0)
  {
    v2 = sub_1D15FE35C;
  }

  else
  {
    v2 = sub_1D15FD6F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D15FD6F8()
{
  v1 = *(v0 + 1712);
  i = *(v0 + 1384);
  v125 = MEMORY[0x1E69E7CC0];
  v121 = v1;
  if (v1 >> 62)
  {
    goto LABEL_101;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v102 = i;

  v4 = MEMORY[0x1E69E7CC0];
  v124 = v3;
  if (v3)
  {
    v5 = 0;
    v6 = v108[214] + 32;
    do
    {
      if ((v121 & 0xC000000000000001) != 0)
      {
        i = MEMORY[0x1D388D4D0](v5, v108[214]);
      }

      else
      {
        if (v5 >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_96;
        }

        i = *(v6 + 8 * v5);
      }

      v7 = i;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_95;
      }

      if ([i logStatus] == 4 || objc_msgSend(v7, sel_logStatus) == 5)
      {
      }

      else
      {
        sub_1D1670374();
        v9 = *(v125 + 16);
        sub_1D16703B4();
        v3 = v124;
        sub_1D16703C4();
        i = sub_1D1670384();
      }

      ++v5;
    }

    while (v8 != v3);
    v10 = v125;
    v125 = v4;
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_102;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
    v125 = MEMORY[0x1E69E7CC0];
    if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
    {
      goto LABEL_102;
    }
  }

  if ((v10 & 0x4000000000000000) == 0)
  {
    v11 = *(v10 + 16);
    goto LABEL_20;
  }

LABEL_102:
  i = sub_1D1670224();
  v11 = i;
LABEL_20:
  v12 = v108[203];
  v106 = (v12 + 32);
  if (v11)
  {
    v13 = v10 & 0xC000000000000001;
    v122 = (v12 + 8);
    v119 = (v12 + 16);
    v101 = MEMORY[0x1E69E7CC0];
    v14 = 0;
    if ((v10 & 0xC000000000000001) == 0)
    {
      goto LABEL_27;
    }

LABEL_37:
    for (i = MEMORY[0x1D388D4D0](v14, v10); ; i = *(v10 + 8 * v14 + 32))
    {
      v15 = i;
      v16 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
        goto LABEL_97;
      }

      v17 = [i scheduleItemIdentifier];
      if (v17)
      {
        v18 = v17;
        v19 = sub_1D166FA04();
        v21 = v20;

        v22 = [v15 scheduledDate];
        if (v22)
        {
          v23 = v108[210];
          v24 = v22;
          sub_1D166F144();

          v25 = sub_1D1670004();
          v26 = v108[210];
          if ((v27 & 1) == 0)
          {
            v115 = v108[209];
            v28 = v108[197];
            v117 = v25;
            v29 = v108[210];
            (*v119)(v115, v26, v28);
            v30 = [v15 medicationIdentifier];
            v31 = sub_1D166FA04();
            v111 = v32;
            v113 = v31;

            LOBYTE(v30) = [v15 isLastScheduledDose];
            (*v122)(v29, v28);
            v33 = type metadata accessor for ScheduleItem();
            v34 = *(v33 + 48);
            v35 = *(v33 + 52);
            v36 = swift_allocObject();
            *(v36 + 16) = v19;
            *(v36 + 24) = v21;
            v37 = (*v106)(v36 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_date, v115, v28);
            v38 = (v36 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier);
            *v38 = v113;
            v38[1] = v111;
            *(v36 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_doseAmount) = v117;
            *(v36 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_isLastScheduledDose) = v30;
            MEMORY[0x1D388CE10](v37);
            if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v39 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1D166FC84();
            }

            i = sub_1D166FCC4();
            v101 = v125;
            if (v16 == v11)
            {
              goto LABEL_39;
            }

            v14 = v16;
            if (v13)
            {
              goto LABEL_37;
            }

            goto LABEL_27;
          }

          (*v122)(v26, v108[197]);
        }
      }

      ++v14;
      if (v16 == v11)
      {
        goto LABEL_39;
      }

      if (v13)
      {
        goto LABEL_37;
      }

LABEL_27:
      if (v14 >= *(v10 + 16))
      {
        goto LABEL_98;
      }
    }
  }

  v101 = MEMORY[0x1E69E7CC0];
LABEL_39:

  if (v102 >> 62)
  {
    i = sub_1D1670224();
  }

  else
  {
    i = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = v124;
  v41 = MEMORY[0x1E69E7CC0];
  if (i)
  {
    v42 = 0;
    v123 = v121 & 0xC000000000000001;
    v121 &= 0xFFFFFFFFFFFFFF8uLL;
    v43 = v108[214] + 32;
    v103 = i;
    do
    {
      v105 = v41;
      if ((v102 & 0xC000000000000001) != 0)
      {
        i = MEMORY[0x1D388D4D0](v42, v102);
      }

      else
      {
        if (v42 >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_100;
        }

        i = *(v102 + v42 + 4);
      }

      v120 = i;
      v44 = __OFADD__(v42, 1);
      v45 = v42 + 1;
      if (v44)
      {
        goto LABEL_99;
      }

      v104 = v45;
      v46 = [i doses];
      sub_1D15EE5A8(0, &unk_1EDECACC0, 0x1E69A3AF8);
      v47 = sub_1D166FC54();

      v125 = MEMORY[0x1E69E7CC0];
      if (v47 >> 62)
      {
        i = sub_1D1670224();
        v48 = i;
        if (i)
        {
LABEL_51:
          v49 = 0;
          v114 = v47 & 0xFFFFFFFFFFFFFF8;
          v116 = v47 & 0xC000000000000001;
          v112 = v47 + 32;
          v107 = MEMORY[0x1E69E7CC0];
          v109 = v48;
          v110 = v47;
          while (1)
          {
            if (v116)
            {
              i = MEMORY[0x1D388D4D0](v49, v47);
            }

            else
            {
              if (v49 >= *(v114 + 16))
              {
                goto LABEL_94;
              }

              i = *(v112 + 8 * v49);
            }

            v51 = i;
            v44 = __OFADD__(v49, 1);
            v52 = (v49 + 1);
            if (v44)
            {
              goto LABEL_93;
            }

            v118 = v52;
            if (v40)
            {
              break;
            }

LABEL_81:
            v76 = v108[209];
            v77 = v108[197];
            v78 = [v120 identifier];
            v79 = sub_1D166FA04();
            v81 = v80;

            v82 = [v120 scheduledDateTime];
            sub_1D166F144();

            v83 = [v51 medicationIdentifier];
            v84 = sub_1D166FA04();
            v86 = v85;

            v87 = [v51 dose];
            [v87 doubleValue];
            v89 = v88;

            LOBYTE(v87) = [v51 isLastScheduledDose];
            v90 = type metadata accessor for ScheduleItem();
            v91 = *(v90 + 48);
            v92 = *(v90 + 52);
            v93 = swift_allocObject();
            *(v93 + 16) = v79;
            *(v93 + 24) = v81;
            v94 = (*v106)(v93 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_date, v76, v77);
            v95 = (v93 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_medicationIdentifier);
            *v95 = v84;
            v95[1] = v86;
            *(v93 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_doseAmount) = v89;
            *(v93 + OBJC_IVAR____TtC27HealthMedicationsExperience12ScheduleItem_isLastScheduledDose) = v87;
            MEMORY[0x1D388CE10](v94);
            if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v96 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1D166FC84();
            }

            i = sub_1D166FCC4();
            v107 = v125;
            v49 = v118;
            v50 = v118 == v109;
            v40 = v124;
LABEL_54:
            v47 = v110;
            if (v50)
            {
              goto LABEL_44;
            }
          }

          v53 = 0;
          while (2)
          {
            if (v123)
            {
              i = MEMORY[0x1D388D4D0](v53, v108[214]);
            }

            else
            {
              if (v53 >= *(v121 + 16))
              {
                goto LABEL_92;
              }

              i = *(v43 + 8 * v53);
            }

            v54 = i;
            v55 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
              __break(1u);
LABEL_92:
              __break(1u);
LABEL_93:
              __break(1u);
LABEL_94:
              __break(1u);
LABEL_95:
              __break(1u);
LABEL_96:
              __break(1u);
LABEL_97:
              __break(1u);
LABEL_98:
              __break(1u);
LABEL_99:
              __break(1u);
LABEL_100:
              __break(1u);
LABEL_101:
              v99 = i;
              v3 = sub_1D1670224();
              i = v99;
              goto LABEL_3;
            }

            v56 = [v51 medicationIdentifier];
            v57 = sub_1D166FA04();
            v59 = v58;

            v60 = [v54 medicationIdentifier];
            v61 = sub_1D166FA04();
            v63 = v62;

            if (v57 == v61 && v59 == v63)
            {

              goto LABEL_75;
            }

            v65 = sub_1D16705D4();

            if (v65)
            {
LABEL_75:
              v66 = [v120 identifier];
              v67 = sub_1D166FA04();
              v69 = v68;

              v70 = [v54 scheduleItemIdentifier];
              if (v70)
              {
                v71 = v70;
                v72 = sub_1D166FA04();
                v74 = v73;

                if (v67 == v72 && v69 == v74)
                {

                  v40 = v124;
LABEL_53:

                  v49 = v118;
                  v50 = v118 == v109;
                  goto LABEL_54;
                }

                v75 = sub_1D16705D4();

                v40 = v124;
                if (v75)
                {
                  v54 = v51;
                  goto LABEL_53;
                }

                goto LABEL_63;
              }
            }

            v40 = v124;
LABEL_63:
            ++v53;
            if (v55 == v40)
            {
              goto LABEL_81;
            }

            continue;
          }
        }
      }

      else
      {
        v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v48)
        {
          goto LABEL_51;
        }
      }

      v107 = MEMORY[0x1E69E7CC0];
LABEL_44:

      v125 = v105;

      sub_1D15F715C(v107);

      v41 = v105;
      v42 = v104;
    }

    while (v104 != v103);
  }

  v97 = v108[214];
  v98 = v41;

  sub_1D15F715C(v98);
  v108[216] = v101;

  return MEMORY[0x1EEE6DEB0](v108 + 82, v108 + 173, sub_1D15FE188, v108 + 198);
}

uint64_t sub_1D15FE1E0()
{
  v1 = v0[212];
  v2 = v0[211];
  v3 = v0[210];
  v4 = v0[209];

  v5 = v0[1];
  v6 = v0[216];

  return v5(v6);
}

uint64_t sub_1D15FE2CC()
{
  v1 = v0[213];
  v2 = v0[212];
  v3 = v0[211];
  v4 = v0[210];
  v5 = v0[209];

  v6 = v0[1];

  return v6();
}