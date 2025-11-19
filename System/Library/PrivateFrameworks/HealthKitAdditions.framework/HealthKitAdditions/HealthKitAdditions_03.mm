uint64_t sub_1DF6E0DF0(uint64_t a1, uint64_t a2)
{
  sub_1DF6C5F4C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id HKHealthStore.makeDatabaseChangesPublisher(types:anchor:includeChangeDetails:debugIdentifier:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = v6;

  v7 = v6;

  return a2;
}

uint64_t HKHealthStore.DatabaseChangesPublisher.Configuration.init(types:anchor:includeChangeDetails:debugIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t HKHealthStore.DatabaseChangesPublisher.QueryOutput.changes.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

void *HKHealthStore.DatabaseChangesPublisher.QueryOutput.anchor.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t HKHealthStore.DatabaseChangesPublisher.QueryOutput.init(changes:anchor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t HKHealthStore.DatabaseChangesPublisher.Configuration.types.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

void *HKHealthStore.DatabaseChangesPublisher.Configuration.anchor.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t HKHealthStore.DatabaseChangesPublisher.Configuration.debugIdentifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t HKHealthStore.DatabaseChangesPublisher.Configuration.debugIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_1DF6E1134(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  sub_1DF6E16C4();

  v4 = v3;

  v5 = a2;
  v6 = sub_1DF6F5FEC();

  return v6;
}

id HKHealthStore.DatabaseChangesPublisher.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v6 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v6;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;

  return v6;
}

void sub_1DF6E1250(int a1, void *a2, void *a3, id a4, void (*a5)(void **))
{
  if (a4)
  {
    v12 = a4;
    v13 = 0;
    v14 = 1;
    v6 = a4;
    a5(&v12);
  }

  else
  {
    if (a3)
    {
      v7 = a3;
    }

    else
    {
      v8 = a2;
      v9 = sub_1DF6C4248(MEMORY[0x1E69E7CC0]);
      a2 = v8;
      v7 = v9;
    }

    v12 = v7;
    v13 = a2;
    v14 = 0;
    v10 = a2;

    v11 = v10;

    a5(&v12);
  }

  sub_1DF6E1840(v12, v13, v14, HIBYTE(v14));
}

id sub_1DF6E132C@<X0>(uint64_t a1@<X8>)
{
  v6 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v6;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;

  return v6;
}

uint64_t sub_1DF6E1390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DF6E17CC();

  return HKQueryPublisher.receive<A>(subscriber:)(a1, a4, a2, v8, a3);
}

uint64_t sub_1DF6E13F4(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v6 = a4;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a4)
  {
    sub_1DF69EF80(0, &qword_1EDC03EB8, 0x1E696C3D0);
    sub_1DF69EF80(0, &qword_1EDC03638, 0x1E696C3D8);
    sub_1DF6C6570();
    v6 = sub_1DF6F62AC();
  }

  v11 = a2;
  v12 = a3;
  v13 = a5;
  v10(v11, a3, v6, a5);
}

id _sSo13HKHealthStoreC18HealthKitAdditionsE24DatabaseChangesPublisherV9makeQuery4with13outputHandlerSo7HKQueryCAE13ConfigurationV_yAC0nH6ResultOys0P0OyAE0J6OutputVs5Error_pGGYbctFZ_0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = *(a1 + 16);
  v8 = a1[3];
  v9 = a1[4];
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = objc_allocWithZone(MEMORY[0x1E696C618]);
  sub_1DF69EF80(0, &qword_1EDC03EB8, 0x1E696C3D0);

  v12 = sub_1DF6F659C();
  v18[4] = sub_1DF6E1820;
  v18[5] = v10;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1DF6E13F4;
  v18[3] = &block_descriptor_16;
  v13 = _Block_copy(v18);
  v14 = [v11 initWithTypes:v12 anchor:v5 resultsHandler:v13];

  _Block_release(v13);

  [v14 setIncludeChangeDetails_];
  v15 = v14;
  if (v9)
  {
    v16 = sub_1DF6F63BC();
  }

  else
  {
    v16 = 0;
  }

  [v14 setDebugIdentifier_];

  return v14;
}

unint64_t sub_1DF6E169C(uint64_t a1)
{
  result = sub_1DF6E16C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DF6E16C4()
{
  result = qword_1EDC03E58;
  if (!qword_1EDC03E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC03E58);
  }

  return result;
}

uint64_t sub_1DF6E1728(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1DF6E1770(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DF6E17CC()
{
  result = qword_1EDC03E50;
  if (!qword_1EDC03E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC03E50);
  }

  return result;
}

void sub_1DF6E1840(void *a1, void *a2, char a3, unsigned __int8 a4)
{
  if (a4 == 2)
  {
  }

  else if (a4 <= 1u)
  {
    sub_1DF6E1868(a1, a2, a3 & 1);
  }
}

void sub_1DF6E1868(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {

    a1 = a2;
  }
}

uint64_t HKHealthStore.makeActivitySummaryPublisher(predicate:receivesUpdates:orderByDateAscending:limit:debugIdentifier:)@<X0>(void *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 9) = a3;
  *(a7 + 16) = a4;
  *(a7 + 24) = a5;
  *(a7 + 32) = a6;
  *(a7 + 40) = v7;
  v8 = a1;
  v9 = v7;
}

id HKHealthStore.ActivitySummaryPublisher.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v6 = *v1;
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  v4 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v4;

  return v6;
}

void sub_1DF6E1970(int a1, void *a2, id a3, void (*a4)(void **), uint64_t a5, char a6)
{
  if (a2)
  {
    v8 = a2;
    v9 = a6 & 1;
  }

  else
  {
    if (!a3)
    {
      return;
    }

    v8 = a3;
    v9 = 2;
    v7 = a3;
  }

  a4(&v8);
  sub_1DF6B6574(v8, v9);
}

uint64_t sub_1DF6E19E8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    sub_1DF6E201C();
    v5 = sub_1DF6F65AC();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

id sub_1DF6E1A90@<X0>(uint64_t a1@<X8>)
{
  v6 = *v1;
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  v4 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v4;

  return v6;
}

uint64_t sub_1DF6E1AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DF6E1FA4();

  return HKQueryPublisher.receive<A>(subscriber:)(a1, a4, a2, v8, a3);
}

id _sSo13HKHealthStoreC18HealthKitAdditionsE24ActivitySummaryPublisherV9makeQuery4with13outputHandlerSo7HKQueryCAE13ConfigurationV_yAC0nH6ResultOySaySo010HKActivityG0CGGYbctFZ_0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 9);
  v8 = a1[2];
  v19 = a1[3];
  v21 = a1[4];
  v20 = ~v6;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = (v6 & 1) == 0;
  *(v9 + 32) = v10;
  v11 = objc_allocWithZone(MEMORY[0x1E696BED0]);
  v26 = sub_1DF6E1FF8;
  v27 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1DF6E19E8;
  v25 = &block_descriptor_17;
  v12 = _Block_copy(&aBlock);

  v13 = [v11 initWithPredicate:v5 resultsHandler:v12];
  _Block_release(v12);

  [v13 setOrderByDateAscending_];
  [v13 setLimit_];
  if ((v20 & 1) == 0)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;
    *(v14 + 32) = v10;
    v26 = sub_1DF6E206C;
    v27 = v14;
    aBlock = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1DF6E19E8;
    v25 = &block_descriptor_13;
    v15 = _Block_copy(&aBlock);

    [v13 setUpdateHandler_];
    _Block_release(v15);
  }

  v16 = v21;
  v17 = v13;
  if (v21)
  {
    v16 = sub_1DF6F63BC();
  }

  [v13 setDebugIdentifier_];

  return v13;
}

unint64_t sub_1DF6E1DBC(uint64_t a1)
{
  result = sub_1DF6E1DE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DF6E1DE4()
{
  result = qword_1EDC03E68;
  if (!qword_1EDC03E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC03E68);
  }

  return result;
}

uint64_t sub_1DF6E1E38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF6E1E80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DF6E1EDC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_1DF6E1F38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1DF6E1FA4()
{
  result = qword_1EDC03E60;
  if (!qword_1EDC03E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC03E60);
  }

  return result;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1DF6E201C()
{
  result = qword_1EDC036E8;
  if (!qword_1EDC036E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC036E8);
  }

  return result;
}

id HKHealthStore.makeDateRangePublisher(debugIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  a3[2] = v3;

  return v5;
}

uint64_t sub_1DF6E20B8(void *a1)
{
  sub_1DF6E2510();

  v2 = a1;
  v3 = sub_1DF6F5FEC();

  return v3;
}

uint64_t HKHealthStore.DateRangeQueryPublisher.configuration.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void sub_1DF6E2168(int a1, void *a2, id a3, void (*a4)(void **))
{
  if (a3)
  {
    v14 = a3;
    v15 = 1;
    v5 = a3;
  }

  else if (a2)
  {
    v14 = a2;
    v15 = 0;
  }

  else
  {
    if (qword_1EDC04110 != -1)
    {
      swift_once();
    }

    v6 = sub_1DF6F5DDC();
    __swift_project_value_buffer(v6, qword_1EDC07CE0);
    v7 = sub_1DF6F5DBC();
    v8 = sub_1DF6F687C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      v11 = sub_1DF6F6FBC();
      v13 = sub_1DF6A9D50(v11, v12, &v14);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1DF69D000, v7, v8, "[%s]: Received both nil for date intervals and error", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1E12DCBA0](v10, -1, -1);
      MEMORY[0x1E12DCBA0](v9, -1, -1);
    }

    v14 = sub_1DF6C4334(MEMORY[0x1E69E7CC0]);
    v15 = 0;
  }

  a4(&v14);
  sub_1DF6E272C(v14, v15, HIBYTE(v15));
}

uint64_t sub_1DF6E2328@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1DF6E2340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DF6E26B8();

  return HKQueryPublisher.receive<A>(subscriber:)(a1, a4, a2, v8, a3);
}

id _sSo13HKHealthStoreC18HealthKitAdditionsE23DateRangeQueryPublisherV04makeH04with13outputHandlerSo7HKQueryCAE13ConfigurationV_yAC0nI6ResultOys0P0OySDySo12HKSampleTypeC10Foundation0F8IntervalVGs5Error_pGGYbctFZ_0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = objc_allocWithZone(MEMORY[0x1E696C620]);
  v14[4] = sub_1DF6E270C;
  v14[5] = v7;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1DF6C8924;
  v14[3] = &block_descriptor_18;
  v9 = _Block_copy(v14);

  v10 = [v8 initWithDateIntervalHandler_];
  _Block_release(v9);

  v11 = v10;
  if (v6)
  {
    v12 = sub_1DF6F63BC();
  }

  else
  {
    v12 = 0;
  }

  [v10 setDebugIdentifier_];

  return v10;
}

unint64_t sub_1DF6E24E8(uint64_t a1)
{
  result = sub_1DF6E2510();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DF6E2510()
{
  result = qword_1EDC03E78;
  if (!qword_1EDC03E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC03E78);
  }

  return result;
}

uint64_t sub_1DF6E2564(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF6E25AC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1DF6E25FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1DF6E2658(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1DF6E26B8()
{
  result = qword_1EDC03E70;
  if (!qword_1EDC03E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC03E70);
  }

  return result;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1DF6E272C(void *a1, char a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 <= 1u)
  {
    sub_1DF6B1E04(a1, a2 & 1);
  }
}

uint64_t static HKFeatureSettings.Key<A>.enabled.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *MEMORY[0x1E696B8D0];
  result = sub_1DF6F63EC();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t HKFeatureSettings.Key.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static HKFeatureSettings.Key<A>.liveOnTermsAcknowledged.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *MEMORY[0x1E696B8D8];
  result = sub_1DF6F63EC();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static HKFeatureSettings.Key<A>.onboardingAcknowledged.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *MEMORY[0x1E696B8E0];
  result = sub_1DF6F63EC();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static HKFeatureSettings.Key<A>.onboardingAcknowledgedDate.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *MEMORY[0x1E696B8E8];
  result = sub_1DF6F63EC();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t HKFeatureSettings.Key.rawValue.getter()
{
  v0 = sub_1DF6E2F0C();

  return v0;
}

uint64_t HKFeatureSettings.Key.rawValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1DF6E28BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = HKFeatureSettings.Key.init(rawValue:)(*a1, a1[1], v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_1DF6E28FC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1DF6E2F0C();
  a1[1] = v2;
}

uint64_t HKFeatureSettings.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getObjectType();
  v7 = sub_1DF6F6A0C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v40 - v10;
  v12 = *a1;
  v13 = a1[1];
  v14 = [v3 keyValueStorage];
  v15 = sub_1DF6F62AC();

  if (*(v15 + 16) && (v16 = sub_1DF6C3550(v12, v13), (v17 & 1) != 0))
  {
    sub_1DF6AAB1C(*(v15 + 56) + 32 * v16, v45);

    sub_1DF6AAB1C(v45, v44);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v45);
      v18 = *(a2 - 8);
      v19 = *(v18 + 56);
      v19(v11, 0, 1, a2);
      (*(v18 + 32))(a3, v11, a2);
      return (v19)(a3, 0, 1, a2);
    }

    else
    {
      v22 = *(a2 - 8);
      v23 = *(v22 + 56);
      v42 = v22 + 56;
      v23(v11, 1, 1, a2);
      (*(v8 + 8))(v11, v7);
      if (qword_1EDC04110 != -1)
      {
        swift_once();
      }

      v24 = sub_1DF6F5DDC();
      __swift_project_value_buffer(v24, qword_1EDC07CE0);
      sub_1DF6AAB1C(v45, v44);

      v25 = sub_1DF6F5DBC();
      v26 = sub_1DF6F687C();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        HIDWORD(v40) = v26;
        v28 = v27;
        v41 = swift_slowAlloc();
        v43 = v41;
        *v28 = 136446978;
        v29 = sub_1DF6F6FBC();
        v31 = sub_1DF6A9D50(v29, v30, &v43);

        *(v28 + 4) = v31;
        *(v28 + 12) = 2082;
        v32 = sub_1DF6F6FBC();
        v34 = sub_1DF6A9D50(v32, v33, &v43);

        *(v28 + 14) = v34;
        *(v28 + 22) = 2082;
        *(v28 + 24) = sub_1DF6A9D50(v12, v13, &v43);
        *(v28 + 32) = 2082;
        __swift_project_boxed_opaque_existential_0(v44, v44[3]);
        swift_getDynamicType();
        v35 = sub_1DF6F6FBC();
        v37 = v36;
        __swift_destroy_boxed_opaque_existential_1(v44);
        v38 = sub_1DF6A9D50(v35, v37, &v43);

        *(v28 + 34) = v38;
        _os_log_impl(&dword_1DF69D000, v25, BYTE4(v40), "[%{public}s]: Expected value of type %{public}s for key %{public}s but found value of type %{public}s", v28, 0x2Au);
        v39 = v41;
        swift_arrayDestroy();
        MEMORY[0x1E12DCBA0](v39, -1, -1);
        MEMORY[0x1E12DCBA0](v28, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v44);
      }

      __swift_destroy_boxed_opaque_existential_1(v45);
      return (v23)(a3, 1, 1, a2);
    }
  }

  else
  {

    v21 = *(*(a2 - 8) + 56);

    return v21(a3, 1, 1, a2);
  }
}

uint64_t HKFeatureSettings.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = sub_1DF6F63BC();
  v7 = [v2 dateForKey_];

  if (v7)
  {
    sub_1DF6F5A6C();

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_1DF6F5A7C();
  v10 = *(*(v9 - 8) + 56);

  return v10(a2, v8, 1, v9);
}

uint64_t sub_1DF6E2F0C()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t sub_1DF6E2F14()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DF6E2F50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1DF6E2F98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t HKHealthStore.makeSampleCountPublisher(sampleTypes:predicate:debugIdentifier:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  a5[4] = v5;
  v6 = a2;
  v7 = v5;
}

id HKHealthStore.SampleCountPublisher.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  *(a1 + 24) = v2;
  v5 = v3;

  return v5;
}

void sub_1DF6E30B8(int a1, uint64_t a2, id a3, void (*a4)(void **))
{
  v4 = a4;
  if (!a2)
  {
    if (!a3)
    {
      return;
    }

    v26 = a3;
    v27 = 2;
    v7 = a3;
    goto LABEL_20;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v6 = sub_1DF6B79DC();
LABEL_19:
    v26 = v6;
    v27 = 1;
LABEL_20:
    v4(&v26);
    sub_1DF6B6574(v26, v27);
    return;
  }

  sub_1DF6B7CC0();
  v8 = sub_1DF6F6D1C();
  v6 = v8;
  v9 = 0;
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = v8 + 64;
  if (v12)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v18 = v15 | (v9 << 6);
      v19 = *(*(a2 + 56) + 8 * v18);
      v20 = *(*(a2 + 48) + 8 * v18);
      v21 = [v19 integerValue];
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(v6[6] + 8 * v18) = v20;
      *(v6[7] + 8 * v18) = v21;
      v22 = v6[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      v6[2] = v24;
      if (!v12)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        v4 = a4;
        goto LABEL_19;
      }

      v17 = *(a2 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
}

id sub_1DF6E3288@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  *(a1 + 24) = v2;
  v5 = v3;

  return v5;
}

uint64_t sub_1DF6E32F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DF6E5388();

  return HKQueryPublisher.receive<A>(subscriber:)(a1, a4, a2, v8, a3);
}

uint64_t sub_1DF6E335C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    sub_1DF69EF80(0, &qword_1EDC03EB8, 0x1E696C3D0);
    sub_1DF69EF80(0, &qword_1EDC03560, 0x1E696AD98);
    sub_1DF69FA98(&qword_1EDC03EB0, &qword_1EDC03EB8, 0x1E696C3D0);
    v5 = sub_1DF6F62AC();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

uint64_t sub_1DF6E3468(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1DF6B7CC0();
  result = sub_1DF6F6D2C();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      v24 = *(v8 + 40);
      result = sub_1DF6F69CC();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1DF6E36C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1DF6C5EE8();
  v36 = a2;
  result = sub_1DF6F6D2C();
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
        sub_1DF6B1E38(v25, v37);
      }

      else
      {
        sub_1DF6AAB1C(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1DF6F6F0C();
      sub_1DF6F645C();
      result = sub_1DF6F6F2C();
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
      result = sub_1DF6B1E38(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_1DF6E396C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1DF6BDCD8();
  v38 = a2;
  result = sub_1DF6F6D2C();
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
      v17 = __clz(__rbit64(v13));
      v39 = (v13 - 1) & v13;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((v38 & 1) == 0)
      {
        v24 = v22;
        v25 = v23;
      }

      v26 = *(v8 + 40);
      sub_1DF6F63EC();
      sub_1DF6F6F0C();
      sub_1DF6F645C();
      v27 = sub_1DF6F6F2C();

      v28 = -1 << *(v8 + 32);
      v29 = v27 & ~v28;
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
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
      v5 = v37;
      v13 = v39;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        v39 = (v19 - 1) & v19;
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

uint64_t sub_1DF6E3C24(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1DF6F6F0C();
  sub_1DF6F645C();
  v9 = sub_1DF6F6F2C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1DF6F6E2C() & 1) != 0)
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

    sub_1DF6E46FC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1DF6E3D74(void *a1, void *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_1DF6F6A9C();

    if (v17)
    {

      sub_1DF69EF80(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v38;
    }

    else
    {
      result = sub_1DF6F6A8C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_1DF6E3FF0(v15, result + 1, a5, a3, a4, a6);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_1DF6E445C(v30 + 1, a5, a3, a4, a6);
        }

        v31 = v16;
        sub_1DF6E4678(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    sub_1DF69EF80(0, a3, a4);
    v19 = *(v14 + 40);
    v20 = sub_1DF6F69CC();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_1DF6F69DC();

        if (v25)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v32 = *(*(v14 + 48) + 8 * v22);
      *a1 = v32;
      v33 = v32;
      return 0;
    }

    else
    {
LABEL_11:
      v26 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *v11;
      v28 = a2;
      sub_1DF6E487C(v28, v22, isUniquelyReferenced_nonNull_native, a5, a3, a4, a6);
      *v11 = v39;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1DF6E3FF0(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  if (a2)
  {
    sub_1DF6E5624(0, a3, a4, a5, a6);
    v10 = sub_1DF6F6ADC();
    v24 = v10;
    sub_1DF6F6A7C();
    if (sub_1DF6F6AAC())
    {
      sub_1DF69EF80(0, a4, a5);
      do
      {
        swift_dynamicCast();
        v18 = *(v10 + 16);
        if (*(v10 + 24) <= v18)
        {
          sub_1DF6E445C(v18 + 1, a3, a4, a5, a6);
        }

        v10 = v24;
        v11 = *(v24 + 40);
        result = sub_1DF6F69CC();
        v13 = v24 + 56;
        v14 = -1 << *(v24 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v24 + 48) + 8 * v17) = v23;
        ++*(v24 + 16);
      }

      while (sub_1DF6F6AAC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v10;
}

uint64_t sub_1DF6E4208(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1DF6D50CC();
  result = sub_1DF6F6ACC();
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
      sub_1DF6F6F0C();
      sub_1DF6F645C();
      result = sub_1DF6F6F2C();
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

uint64_t sub_1DF6E445C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v8 = *(*v5 + 24);
  }

  sub_1DF6E5624(0, a2, a3, a4, a5);
  result = sub_1DF6F6ACC();
  v10 = result;
  if (*(v7 + 16))
  {
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(*(v7 + 48) + 8 * (v19 | (v11 << 6)));
      v23 = *(v10 + 40);
      result = sub_1DF6F69CC();
      v24 = -1 << *(v10 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v22;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v7 + 32);
    if (v31 >= 64)
    {
      bzero((v7 + 56), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

  *v6 = v10;
  return result;
}

unint64_t sub_1DF6E4678(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1DF6F69CC();
  v5 = -1 << *(a2 + 32);
  result = sub_1DF6F6A6C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1DF6E46FC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1DF6E4208(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1DF6E4A24();
      goto LABEL_16;
    }

    sub_1DF6E4CC8(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1DF6F6F0C();
  sub_1DF6F645C();
  result = sub_1DF6F6F2C();
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

      result = sub_1DF6F6E2C();
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
  result = sub_1DF6F6E7C();
  __break(1u);
  return result;
}

void sub_1DF6E487C(uint64_t a1, unint64_t a2, char a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a5;
    v13 = a6;
    sub_1DF6E445C(v10 + 1, a4, a5, a6, a7);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1DF6E4B74(a4, a5, a6, a7);
      goto LABEL_12;
    }

    v12 = a5;
    v13 = a6;
    sub_1DF6E4EF4(v10 + 1, a4, a5, a6, a7);
  }

  v14 = *v7;
  v15 = *(*v7 + 40);
  v16 = sub_1DF6F69CC();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_1DF69EF80(0, v12, v13);
    do
    {
      v19 = *(*(v14 + 48) + 8 * a2);
      v20 = sub_1DF6F69DC();

      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1DF6F6E7C();
  __break(1u);
}

void *sub_1DF6E4A24()
{
  v1 = v0;
  sub_1DF6D50CC();
  v2 = *v0;
  v3 = sub_1DF6F6ABC();
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

id sub_1DF6E4B74(unint64_t *a1, unint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v5 = v4;
  sub_1DF6E5624(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_1DF6F6ABC();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }

  return result;
}

uint64_t sub_1DF6E4CC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1DF6D50CC();
  result = sub_1DF6F6ACC();
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
      sub_1DF6F6F0C();

      sub_1DF6F645C();
      result = sub_1DF6F6F2C();
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

uint64_t sub_1DF6E4EF4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v8 = *(*v5 + 24);
  }

  sub_1DF6E5624(0, a2, a3, a4, a5);
  result = sub_1DF6F6ACC();
  v10 = result;
  if (*(v7 + 16))
  {
    v30 = v6;
    v11 = 0;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v21 = *(v10 + 40);
      v22 = *(*(v7 + 48) + 8 * (v18 | (v11 << 6)));
      result = sub_1DF6F69CC();
      v23 = -1 << *(v10 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v10 + 48) + 8 * v17) = v22;
      ++*(v10 + 16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v15)
      {

        v6 = v30;
        goto LABEL_28;
      }

      v20 = *(v7 + 56 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
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
    *v6 = v10;
  }

  return result;
}

id _sSo13HKHealthStoreC18HealthKitAdditionsE20SampleCountPublisherV9makeQuery4with13outputHandlerSo7HKQueryCAE13ConfigurationV_yAC0nH6ResultOySDySo12HKSampleTypeCSiGGYbctFZ_0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[3];
  v17 = a1[2];

  sub_1DF6E54B8(v8, &qword_1EDC03EB8, 0x1E696C3D0, &qword_1EDC03EB0, &qword_1ECE4DDD0);

  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = objc_allocWithZone(MEMORY[0x1E696C3B0]);
  sub_1DF69EF80(0, &qword_1EDC03EB8, 0x1E696C3D0);
  sub_1DF69FA98(&qword_1EDC03EB0, &qword_1EDC03EB8, 0x1E696C3D0);

  v11 = sub_1DF6F671C();

  aBlock[4] = sub_1DF6E53DC;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF6E335C;
  aBlock[3] = &block_descriptor_19;
  v12 = _Block_copy(aBlock);
  v13 = [v10 initWithSampleTypes:v11 predicate:v5 resultsHandler:v12];

  _Block_release(v12);

  v14 = v13;
  if (v7)
  {
    v15 = sub_1DF6F63BC();
  }

  else
  {
    v15 = 0;
  }

  [v13 setDebugIdentifier_];

  return v13;
}

unint64_t sub_1DF6E52EC(uint64_t a1)
{
  result = sub_1DF6E5314();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DF6E5314()
{
  result = qword_1EDC03E88;
  if (!qword_1EDC03E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC03E88);
  }

  return result;
}

unint64_t sub_1DF6E5388()
{
  result = qword_1EDC03E80;
  if (!qword_1EDC03E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC03E80);
  }

  return result;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DF6E53FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E12DBB50](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1DF6E3C24(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1DF6E54B8(unint64_t a1, unint64_t *a2, uint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DF6F6A8C())
  {
    v11 = sub_1DF69EF80(0, a2, a3);
    v12 = sub_1DF69FA98(a4, a2, a3);
    result = MEMORY[0x1E12DBB50](i, v11, v12);
    v20 = result;
    if (j)
    {
      break;
    }

    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1E12DBF80](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * j + 32);
      }

      v17 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1DF6E3D74(&v19, v16, a2, a3, a5, a4);

      if (v17 == v14)
      {
        return v20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v15 = result;
  v14 = sub_1DF6F6A8C();
  result = v15;
  if (v14)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_1DF6E5624(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_1DF69EF80(255, a3, a4);
    sub_1DF69FA98(a5, a3, a4);
    v9 = sub_1DF6F6AFC();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1DF6E56B0(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  *&v50 = a1;
  *(&v50 + 1) = a2;
  *&v49[0] = 31868;
  *(&v49[0] + 1) = 0xE200000000000000;
  sub_1DF6D5078();
  v3 = MEMORY[0x1E69E6158];
  v4 = sub_1DF6F6A2C();
  v5 = sub_1DF6C4044(MEMORY[0x1E69E7CC0]);
  v45 = *(v4 + 16);
  if (!v45)
  {
LABEL_42:

    return v5;
  }

  v6 = 0;
  v44 = *MEMORY[0x1E696BA88];
  v42 = *MEMORY[0x1E696BB68];
  v43 = v4;
  v7 = (v4 + 40);
  while (v6 < *(v4 + 16))
  {
    v9 = *(v7 - 1);
    v10 = *v7;
    *&v50 = v9;
    *(&v50 + 1) = v10;
    *&v49[0] = 61;
    *(&v49[0] + 1) = 0xE100000000000000;

    v11 = sub_1DF6F6A2C();
    if (v11[2] != 2)
    {

      sub_1DF6D4EF4();
      swift_allocError();
      sub_1DF6E68D8(v9, v10, v40);
      swift_willThrow();

      return v5;
    }

    v12 = v11[4];
    v13 = v11[5];
    v14 = v11[7];
    v48 = v11[6];

    v47 = v14;

    if (sub_1DF6F63EC() == v12 && v15 == v13)
    {
      goto LABEL_24;
    }

    v17 = sub_1DF6F6E2C();

    if (v17)
    {
      goto LABEL_25;
    }

    if (sub_1DF6F63EC() == v12 && v18 == v13)
    {
LABEL_24:

      goto LABEL_25;
    }

    v20 = sub_1DF6F6E2C();

    if (v20)
    {
      goto LABEL_25;
    }

    v21 = sub_1DF6EA920(v48, v14);
    v47 = v23;
    v48 = v21;
    if (v22 > 1u)
    {
      if (v22 == 2)
      {
        v51 = MEMORY[0x1E69E6370];
        LOBYTE(v50) = v21 & 1;
        v25 = 2;
        goto LABEL_26;
      }

      if (v22 == 3)
      {
        v51 = sub_1DF69EF80(0, &qword_1ECE4DDE0, 0x1E696C348);
        *&v50 = v48;
        v24 = v48;
        v25 = 3;
LABEL_26:
        v46 = v25;
        goto LABEL_27;
      }

LABEL_25:
      v51 = v3;
      *&v50 = v48;
      *(&v50 + 1) = v47;

      v25 = 4;
      goto LABEL_26;
    }

    if (v22)
    {
      v51 = MEMORY[0x1E69E63B0];
      *&v50 = v21;
      v25 = 1;
      goto LABEL_26;
    }

    v46 = 0;
    v51 = MEMORY[0x1E69E6530];
    *&v50 = v21;
LABEL_27:
    sub_1DF6B1E38(&v50, v49);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v5;
    v28 = sub_1DF6C3550(v12, v13);
    v29 = v5[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_47;
    }

    v32 = v27;
    if (v5[3] >= v31)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v35 = v46;
        if (v27)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_1DF6E8444();
        v35 = v46;
        if (v32)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      sub_1DF6E36C0(v31, isUniquelyReferenced_nonNull_native);
      v33 = sub_1DF6C3550(v12, v13);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_49;
      }

      v28 = v33;
      v35 = v46;
      if (v32)
      {
LABEL_6:

        v5 = v52;
        v8 = (v52[7] + 32 * v28);
        __swift_destroy_boxed_opaque_existential_1(v8);
        sub_1DF6B1E38(v49, v8);

        sub_1DF6EA60C(v48, v47, v35);
        goto LABEL_7;
      }
    }

    v5 = v52;
    v52[(v28 >> 6) + 8] |= 1 << v28;
    v36 = (v5[6] + 16 * v28);
    *v36 = v12;
    v36[1] = v13;
    sub_1DF6B1E38(v49, (v5[7] + 32 * v28));

    sub_1DF6EA60C(v48, v47, v35);
    v37 = v5[2];
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      goto LABEL_48;
    }

    v5[2] = v39;
LABEL_7:
    ++v6;
    v7 += 2;
    v3 = MEMORY[0x1E69E6158];
    v4 = v43;
    if (v45 == v6)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  result = sub_1DF6F6E8C();
  __break(1u);
  return result;
}

uint64_t sub_1DF6E5B5C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = v1;
    v5 = sub_1DF6E81CC(*(a1 + 16), 0);
    v6 = sub_1DF6EA18C(&v47, v5 + 4, v3, a1);
    v1 = v47;

    sub_1DF6B1D20();
    if (v6 != v3)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v1 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  *&v47 = v5;
  sub_1DF6E8C08(&v47);
  if (!v1)
  {
    v8 = *(v47 + 16);
    v46 = v47;
    if (v8)
    {
      v9 = 0;
      v10 = v47 + 40;
      v49 = *(v47 + 16);
      v43 = v8 - 1;
      v45 = MEMORY[0x1E69E7CC0];
      v44 = v47 + 40;
      do
      {
        v11 = (v10 + 16 * v9);
        v12 = v9;
        v13 = v46;
        while (1)
        {
          if (v12 >= *(v13 + 16))
          {
            __break(1u);
            goto LABEL_46;
          }

          v14 = *(v11 - 1);
          v15 = *v11;
          if (*(a1 + 16))
          {
            v16 = *v11;

            v17 = sub_1DF6C3550(v14, v15);
            if (v18)
            {
              sub_1DF6AAB1C(*(a1 + 56) + 32 * v17, &v47);
            }

            else
            {
              v47 = 0u;
              v48 = 0u;
            }

            v13 = v46;
          }

          else
          {
            v47 = 0u;
            v48 = 0u;
          }

          v19 = sub_1DF6EA3F0(&v47);
          if (v21 != 0xFF)
          {
            break;
          }

          ++v12;

          v11 += 2;
          if (v49 == v12)
          {
            goto LABEL_43;
          }
        }

        v22 = v19;
        v23 = v20;
        v24 = v21;
        *&v47 = v14;
        *(&v47 + 1) = v15;

        MEMORY[0x1E12DB8A0](61, 0xE100000000000000);
        v26 = *(&v47 + 1);
        v25 = v47;
        if (v24 <= 1u)
        {
          if (v24)
          {
            v32 = sub_1DF6F66FC();
          }

          else
          {
            *&v47 = v22;
            v32 = sub_1DF6F6DEC();
          }

          v1 = v32;
          v31 = v33;
        }

        else if (v24 == 2)
        {
          if (v22)
          {
            v1 = 1702195828;
          }

          else
          {
            v1 = 0x65736C6166;
          }

          if (v22)
          {
            v31 = 0xE400000000000000;
          }

          else
          {
            v31 = 0xE500000000000000;
          }
        }

        else if (v24 == 3)
        {
          *&v47 = 0;
          *(&v47 + 1) = 0xE000000000000000;
          v41 = v25;
          MEMORY[0x1E12DB8A0](91, 0xE100000000000000);
          [v22 _value];
          sub_1DF6F670C();
          MEMORY[0x1E12DB8A0](32, 0xE100000000000000);
          v27 = [v22 _unit];
          v28 = [v27 unitString];

          v39 = sub_1DF6F63EC();
          v30 = v29;

          MEMORY[0x1E12DB8A0](v39, v30);

          MEMORY[0x1E12DB8A0](93, 0xE100000000000000);
          v25 = v41;
          v31 = *(&v47 + 1);
          v1 = v47;
        }

        else
        {
          sub_1DF6EA5D4(v22, v23, 4);
          v1 = v22;
          v31 = v23;
        }

        *&v47 = v25;
        *(&v47 + 1) = v26;

        MEMORY[0x1E12DB8A0](v1, v31);

        v34 = *(&v47 + 1);
        v42 = v47;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_1DF6B52F0(0, *(v45 + 2) + 1, 1, v45);
        }

        v36 = *(v45 + 2);
        v35 = *(v45 + 3);
        v40 = v34;
        if (v36 >= v35 >> 1)
        {
          v45 = sub_1DF6B52F0((v35 > 1), v36 + 1, 1, v45);
        }

        v9 = v12 + 1;
        sub_1DF6EA5F8(v22, v23, v24);

        *(v45 + 2) = v36 + 1;
        v37 = &v45[16 * v36];
        *(v37 + 4) = v42;
        *(v37 + 5) = v40;
        v10 = v44;
      }

      while (v43 != v12);
    }

    else
    {
      v45 = MEMORY[0x1E69E7CC0];
    }

LABEL_43:

    *&v47 = v45;
    sub_1DF6EB074(0, &qword_1ECE4D910, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DF6B8EA0();
    v7 = sub_1DF6F632C();

    return v7;
  }

LABEL_47:

  __break(1u);
  return result;
}

id sub_1DF6E6038(uint64_t a1, uint64_t a2)
{
  v65 = a2;
  v58 = a1;
  sub_1DF6EAD70(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v59 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6EADA4(0);
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v55 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6EAE58(0);
  v56 = v8;
  v60 = *(v8 - 8);
  v9 = *(v60 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v57 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v64 = v47 - v12;
  sub_1DF6EAE8C(0);
  v14 = v13;
  v61 = *(v13 - 8);
  v15 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6EAEC0();
  v19 = v18;
  v20 = *(v18 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v23 = v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6EB074(0, &qword_1ECE4DE20, MEMORY[0x1E69E63B0], MEMORY[0x1E69E8298]);
  v25 = v24;
  v26 = *(v24 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v29 = v47 - v28;
  sub_1DF6F5CDC();
  v30 = sub_1DF69EF80(0, &qword_1ECE4DE00, 0x1E696C510);
  sub_1DF6F5CDC();
  v31 = sub_1DF6F5DAC();
  v47[1] = v30;
  v50 = v26;
  v51 = v25;
  v52 = v20;
  v53 = v14;
  v54 = v19;
  MEMORY[0x1EEE9AC00](v31);
  v48 = v29;
  v47[-4] = v29;
  v47[-3] = v17;
  v49 = v17;
  v47[-2] = v23;
  sub_1DF6EADD8();
  sub_1DF6EB1DC(&qword_1ECE4DE30, sub_1DF6EAE58);
  v32 = v56;
  sub_1DF6F5D7C();
  sub_1DF6F653C();

  v33 = v57;
  sub_1DF6F5D5C();
  v34 = v59;
  sub_1DF6F5D8C();
  v35 = *(v60 + 8);
  v35(v33, v32);

  v36 = v62;
  v37 = v63;
  if ((*(v62 + 48))(v34, 1, v63) == 1)
  {
    v38 = v61;
    v39 = v51;
    v40 = v48;
    v35(v64, v32);
    sub_1DF6EAF34(v34, sub_1DF6EAD70);
    (*(v38 + 8))(v49, v53);
    (*(v52 + 8))(v23, v54);
    (*(v50 + 8))(v40, v39);
    return 0;
  }

  else
  {
    v42 = v55;
    (*(v36 + 32))(v55, v34, v37);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_1DF6F5D9C();
    v44 = v67;
    v45 = v48;
    sub_1DF6F5D9C();
    v46 = [ObjCClassFromMetadata quantityWithUnit:v44 doubleValue:v66];

    (*(v36 + 8))(v42, v37);
    v35(v64, v32);
    (*(v61 + 8))(v49, v53);
    (*(v52 + 8))(v23, v54);
    (*(v50 + 8))(v45, v51);
    return v46;
  }
}

uint64_t sub_1DF6E68D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1DF6F6B2C();
  MEMORY[0x1E12DB8A0](0xD000000000000014, 0x80000001DF6FDBF0);
  MEMORY[0x1E12DB8A0](61, 0xE100000000000000);
  MEMORY[0x1E12DB8A0](0xD00000000000004ELL, 0x80000001DF6FDC10);
  MEMORY[0x1E12DB8A0](a1, a2);
  result = MEMORY[0x1E12DB8A0](46, 0xE100000000000000);
  *a3 = 0xD000000000000018;
  a3[1] = 0x80000001DF6FDBD0;
  a3[2] = 0;
  a3[3] = 0xE000000000000000;
  return result;
}

uint64_t sub_1DF6E69C8@<X0>(void (*a1)(char *, uint64_t)@<X0>, void (*a2)(char *, uint64_t)@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v174 = a3;
  v202 = a2;
  v204 = a1;
  v178 = a4;
  sub_1DF6EAE58(0);
  v177 = v4;
  v179 = *(v4 - 8);
  v5 = *(v179 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v176 = &v150 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v189 = &v150 - v8;
  v167 = sub_1DF6F5C6C();
  v170 = *(v167 - 8);
  v9 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v167);
  v162 = &v150 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E67B0];
  v168 = MEMORY[0x1E69E8288];
  sub_1DF6EB074(0, &qword_1ECE4DE38, MEMORY[0x1E69E67B0], MEMORY[0x1E69E8288]);
  v169 = v12;
  v171 = *(v12 - 8);
  v13 = *(v171 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v164 = &v150 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v166 = &v150 - v16;
  sub_1DF6EB224(0, &qword_1ECE4DE40, sub_1DF6EAF94, MEMORY[0x1E69E9288]);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v172 = &v150 - v19;
  sub_1DF6EB00C(0);
  v21 = *(v20 - 8);
  v199 = v20;
  v200 = v21;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v173 = &v150 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v198 = &v150 - v25;
  sub_1DF6EAE8C(0);
  v27 = v26;
  v158 = *(v26 - 8);
  v28 = *(v158 + 8);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v150 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v150 - v32;
  sub_1DF6EB040(0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v37 = &v150 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = MEMORY[0x1E69E8238];
  sub_1DF6EB074(0, &qword_1ECE4DE60, v11, MEMORY[0x1E69E8238]);
  v161 = v38;
  v181 = *(v38 - 1);
  v39 = *(v181 + 64);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v156 = &v150 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v157 = &v150 - v42;
  v201 = MEMORY[0x1E69E9288];
  sub_1DF6EB074(0, &qword_1ECE4DE68, v11, MEMORY[0x1E69E9288]);
  v193 = v43;
  v206 = *(v43 - 8);
  v44 = *(v206 + 64);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v165 = &v150 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v163 = &v150 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v203 = &v150 - v50;
  MEMORY[0x1EEE9AC00](v49);
  v190 = &v150 - v51;
  sub_1DF6EB0C4(0);
  v185 = v52;
  v175 = *(v52 - 8);
  v53 = *(v175 + 64);
  v54 = MEMORY[0x1EEE9AC00](v52);
  v184 = &v150 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v192 = &v150 - v56;
  v57 = sub_1DF6F5D3C();
  v58 = *(v57 - 8);
  v207 = v57;
  v208 = v58;
  v59 = *(v58 + 64);
  v60 = MEMORY[0x1EEE9AC00](v57);
  v62 = &v150 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v180 = &v150 - v63;
  sub_1DF6EB158(0);
  v196 = v64;
  v195 = *(v64 - 8);
  v65 = *(v195 + 64);
  v66 = MEMORY[0x1EEE9AC00](v64);
  v155 = &v150 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v191 = &v150 - v68;
  v69 = sub_1DF6F5C9C();
  v70 = *(v69 - 8);
  v71 = *(v70 + 64);
  v72 = MEMORY[0x1EEE9AC00](v69);
  v160 = &v150 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = MEMORY[0x1EEE9AC00](v72);
  v76 = &v150 - v75;
  MEMORY[0x1EEE9AC00](v74);
  v188 = &v150 - v77;
  v197 = v76;
  sub_1DF6F5C7C();
  v183 = sub_1DF6EB1DC(&qword_1ECE4DE88, MEMORY[0x1E69E8268]);
  v194 = v69;
  MEMORY[0x1E12DB030](v76, v69, v183);
  v78 = *(v70 + 8);
  v186 = v70 + 8;
  v187 = v78;
  v78(v76, v69);
  v213 = 91;
  v214 = 0xE100000000000000;
  v205 = sub_1DF6B9044();
  MEMORY[0x1E12DB030](v215, &v213, MEMORY[0x1E69E6158], v205);
  sub_1DF6F5C5C();
  v153 = sub_1DF6F5D6C();
  v79 = *(v153 - 8);
  v152 = *(v79 + 56);
  v154 = v79 + 56;
  v80 = v37;
  v152(v37, 1, 1, v153);
  sub_1DF6F5C5C();
  v182 = MEMORY[0x1E69E9290];
  v81 = sub_1DF6EB1DC(&qword_1ECE4DE90, sub_1DF6EAE8C);
  MEMORY[0x1E12DB030](v202, v27, v81);
  sub_1DF6F5C2C();
  v82 = *(v158 + 1);
  v82(v31, v27);
  v83 = v203;
  v84 = MEMORY[0x1E69E67B0];
  v151 = v62;
  sub_1DF6F5CFC();
  v82(v33, v27);
  v85 = v207;
  v202 = *(v208 + 8);
  v208 += 8;
  v202(v62, v207);
  v158 = sub_1DF6EB040;
  sub_1DF6EAF34(v80, sub_1DF6EB040);
  v86 = v156;
  MEMORY[0x1E12DB060](v83, v84);
  v87 = sub_1DF6EB18C(&qword_1ECE4DE98, &qword_1ECE4DE60, v159);
  v88 = v157;
  v89 = v161;
  MEMORY[0x1E12DB030](v86, v161, v87);
  v90 = *(v181 + 8);
  v90(v86, v89);
  v91 = v190;
  sub_1DF6F5C2C();
  v90(v88, v89);
  sub_1DF6EB074(0, &qword_1ECE4DE20, MEMORY[0x1E69E63B0], MEMORY[0x1E69E8298]);
  sub_1DF6F5CBC();
  sub_1DF6EB0F8();
  v93 = v92;
  v201 = sub_1DF6EB18C(&qword_1ECE4DEA0, &qword_1ECE4DE68, v201);
  v94 = v193;
  v95 = v192;
  v181 = v93;
  v96 = v180;
  sub_1DF6F5D0C();
  v97 = *(v206 + 8);
  v206 += 8;
  v204 = v97;
  v97(v91, v94);
  v98 = v202;
  v202(v96, v85);
  v99 = v155;
  MEMORY[0x1E12DB050](v95, v93);
  v157 = MEMORY[0x1E69E8230];
  v159 = sub_1DF6EB1DC(&qword_1ECE4DEA8, sub_1DF6EB158);
  v100 = v196;
  MEMORY[0x1E12DB030](v99, v196, v159);
  v101 = *(v195 + 8);
  v195 += 8;
  v161 = v101;
  v101(v99, v100);
  v211 = 32;
  v212 = 0xE100000000000000;
  MEMORY[0x1E12DB030](&v213, &v211, MEMORY[0x1E69E6158], v205);
  sub_1DF6F5C5C();
  v102 = v162;
  sub_1DF6F5D4C();
  v103 = v80;
  v152(v80, 1, 1, v153);
  v104 = v151;
  sub_1DF6F5C5C();
  sub_1DF6EB1DC(&qword_1ECE4DEB0, MEMORY[0x1E69E8250]);
  v105 = v203;
  v106 = MEMORY[0x1E69E67B0];
  v107 = v167;
  sub_1DF6F5D2C();
  v98(v104, v207);
  sub_1DF6EAF34(v103, v158);
  (*(v170 + 8))(v102, v107);
  v108 = v164;
  MEMORY[0x1E12DB0C0](v105, v106);
  v109 = sub_1DF6EB18C(&qword_1ECE4DEB8, &qword_1ECE4DE38, v168);
  v110 = v166;
  v111 = v169;
  MEMORY[0x1E12DB030](v108, v169, v109);
  v112 = *(v171 + 8);
  v112(v108, v111);
  v113 = v190;
  sub_1DF6F5C2C();
  v112(v110, v111);
  sub_1DF6EAEC0();
  sub_1DF6F5CBC();
  sub_1DF6EAF94();
  v115 = v114;
  sub_1DF69EF80(0, &qword_1ECE4DE00, 0x1E696C510);
  v116 = v193;
  v117 = v172;
  v118 = v180;
  sub_1DF6F5D0C();
  v204(v113, v116);
  v202(v118, v207);
  v119 = v173;
  MEMORY[0x1E12DB050](v117, v115);
  v172 = sub_1DF6EB1DC(&qword_1ECE4DEC0, sub_1DF6EB00C);
  v120 = v199;
  MEMORY[0x1E12DB030](v119, v199, v172);
  v121 = *(v200 + 8);
  v200 += 8;
  v174 = v121;
  v121(v119, v120);
  v209 = 93;
  v210 = 0xE100000000000000;
  MEMORY[0x1E12DB030](&v211, &v209, MEMORY[0x1E69E6158], v205);
  v122 = v160;
  sub_1DF6F5C8C();
  v123 = v194;
  MEMORY[0x1E12DB030](v122, v194, v183);
  v187(v122, v123);
  sub_1DF6F5C2C();
  v124 = v215[0];
  v125 = v215[1];
  sub_1DF6F5C5C();
  v209 = v124;
  v210 = v125;
  v126 = v163;
  sub_1DF6F5D1C();
  v127 = v165;
  sub_1DF6F5D1C();

  sub_1DF6F5CEC();
  v128 = v204;
  v204(v127, v116);
  v129 = v126;
  v128(v126, v116);
  v130 = v207;
  v131 = v202;
  v202(v118, v207);
  sub_1DF6F5C5C();
  sub_1DF6F5D1C();
  sub_1DF6F5CEC();
  v128(v129, v116);
  v131(v118, v130);
  v132 = v131;
  v133 = v213;
  v134 = v214;
  sub_1DF6F5C5C();
  v209 = v133;
  v210 = v134;
  sub_1DF6F5D1C();

  v173 = sub_1DF6EB1DC(&qword_1ECE4DEC8, sub_1DF6EB0C4);
  sub_1DF6F5CEC();
  v204(v129, v116);
  v135 = v118;
  v132(v118, v130);
  sub_1DF6F5C5C();
  sub_1DF6EADD8();
  v181 = v136;
  sub_1DF6F5CEC();
  v137 = v132;
  v132(v118, v130);
  v139 = v211;
  v138 = v212;
  sub_1DF6F5C5C();
  v209 = v139;
  v210 = v138;
  sub_1DF6F5D1C();

  v205 = sub_1DF6EB1DC(&qword_1ECE4DE30, sub_1DF6EAE58);
  v140 = v176;
  v141 = v177;
  v142 = v193;
  sub_1DF6F5CEC();
  v143 = v204;
  v204(v129, v142);
  v137(v135, v207);
  sub_1DF6F5C5C();
  sub_1DF6F5D1C();
  sub_1DF6F5CEC();
  v143(v129, v142);
  v202(v135, v207);
  v144 = *(v179 + 8);
  v144(v140, v141);
  v144(v189, v141);
  v145 = *(v175 + 8);
  v146 = v185;
  v145(v184, v185);
  v145(v192, v146);
  v143(v203, v142);
  v143(v190, v142);
  v147 = v194;
  v148 = v187;
  v187(v197, v194);
  v174(v198, v199);
  v161(v191, v196);
  return v148(v188, v147);
}

uint64_t sub_1DF6E80C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1E12DB850](*a1, a1[1], a1[2], a1[3]);
  v5 = sub_1DF6EA2F8(v3, v4);

  *a2 = 0;
  *(a2 + 8) = !v5;
  return result;
}

void sub_1DF6E8148(void *a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x1E12DB850](*a1, a1[1], a1[2], a1[3]);
  v3 = sub_1DF6F63BC();

  v4 = [objc_opt_self() unitFromString_];

  *a2 = v4;
}

void *sub_1DF6E81CC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1DF6EB074(0, &qword_1ECE4D860, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1DF6E8268(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1DF6EB074(0, qword_1ECE4D620, MEMORY[0x1E69E7508], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

id sub_1DF6E82F4()
{
  v1 = v0;
  sub_1DF6B7CC0();
  v2 = *v0;
  v3 = sub_1DF6F6D1C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1DF6E8444()
{
  v1 = v0;
  sub_1DF6C5EE8();
  v2 = *v0;
  v3 = sub_1DF6F6D1C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1DF6AAB1C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1DF6B1E38(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_1DF6E85DC()
{
  v1 = v0;
  sub_1DF6BDCD8();
  v2 = *v0;
  v3 = sub_1DF6F6D1C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_1DF6E8730(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DF6EB074(0, &qword_1ECE4D860, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
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

char *sub_1DF6E8854(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DF6EB074(0, &qword_1ECE4DE28, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
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

void *sub_1DF6E8980(void *result, int64_t a2, char a3, void *a4)
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
    sub_1DF6EB224(0, &qword_1ECE4DED0, sub_1DF6EB288, MEMORY[0x1E69E6F90]);
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
    sub_1DF6EB288();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DF6E8ACC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DF6EB074(0, &qword_1ECE4D858, &type metadata for HKSharingAuthorizationIdentifier, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1DF6E8C08(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DF6EA2E4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1DF6E8C74(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1DF6E8C74(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DF6F6DDC();
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
        v5 = sub_1DF6F65EC();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1DF6E8E3C(v7, v8, a1, v4);
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
    return sub_1DF6E8D6C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DF6E8D6C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1DF6F6E2C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DF6E8E3C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1DF6E96CC(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1DF6E9418((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1DF6F6E2C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1DF6F6E2C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1DF6B51DC(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1DF6B51DC((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1DF6E9418((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1DF6E96CC(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1DF6E9640(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1DF6F6E2C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_1DF6E9418(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1DF6F6E2C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1DF6F6E2C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1DF6E9640(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DF6E96CC(v3);
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

char *sub_1DF6E96E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DF6EB224(0, &qword_1ECE4D848, sub_1DF6B5D74, MEMORY[0x1E69E6F90]);
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

unsigned __int8 *sub_1DF6E9808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1DF6F652C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1DF6E9D94();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1DF6F6BDC();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
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

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1DF6E9D94()
{
  v0 = sub_1DF6F653C();
  v4 = sub_1DF6E9E14(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1DF6E9E14(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1DF6F644C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1DF6F6A1C();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1DF6E8268(v9, 0);
  v12 = sub_1DF6E9F6C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1DF6F644C();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1DF6F6BDC();
LABEL_4:

  return sub_1DF6F644C();
}

unint64_t sub_1DF6E9F6C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1DF6D88DC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1DF6F64CC();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1DF6F6BDC();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1DF6D88DC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1DF6F64AC();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void *sub_1DF6EA18C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

BOOL sub_1DF6EA2F8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_1DF6F6B1C();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_1DF6EA3F0(__int128 *a1)
{
  sub_1DF6DAF78(a1, &v6);
  if (*(&v7 + 1))
  {
    sub_1DF69EF80(0, &qword_1ECE4DDE0, 0x1E696C348);
    if (swift_dynamicCast())
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_1DF6B8F1C(&v6);
  }

  sub_1DF6DAF78(a1, &v6);
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_1DF6B8F1C(&v6);
  }

  sub_1DF6DAF78(a1, &v6);
  if (!*(&v7 + 1))
  {
    sub_1DF6B8F1C(&v6);
LABEL_13:
    sub_1DF6DAF78(a1, &v6);
    if (*(&v7 + 1))
    {
      if (swift_dynamicCast())
      {
        v2 = v5;
        sub_1DF6B8F1C(a1);
        return v2;
      }
    }

    else
    {
      sub_1DF6B8F1C(&v6);
    }

    v3 = a1[1];
    v6 = *a1;
    v7 = v3;
    if (*(&v3 + 1))
    {
      if (swift_dynamicCast())
      {
        return v5;
      }
    }

    else
    {
      sub_1DF6B8F1C(&v6);
    }

    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v2 = v5;
  sub_1DF6B8F1C(a1);
  return v2;
}

id sub_1DF6EA5D4(id result, uint64_t a2, char a3)
{
  if (a3 == 4)
  {
  }

  if (a3 == 3)
  {
    return result;
  }

  return result;
}

void sub_1DF6EA5F8(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_1DF6EA60C(a1, a2, a3);
  }
}

void sub_1DF6EA60C(void *a1, uint64_t a2, char a3)
{
  if (a3 == 4)
  {
  }

  else if (a3 == 3)
  {
  }
}

uint64_t sub_1DF6EA630(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF6F57FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = a1;
  v18[1] = a2;
  sub_1DF6F57EC();
  sub_1DF6D5078();
  sub_1DF6F6A3C();
  (*(v5 + 8))(v8, v4);

  v9 = sub_1DF6F640C();
  v11 = v10;

  v12 = v9 == 7562617 && v11 == 0xE300000000000000;
  if (v12 || (sub_1DF6F6E2C() & 1) != 0 || (v9 == 121 ? (v13 = v11 == 0xE100000000000000) : (v13 = 0), v13 || (sub_1DF6F6E2C() & 1) != 0 || (v9 == 1702195828 ? (v14 = v11 == 0xE400000000000000) : (v14 = 0), v14 || (sub_1DF6F6E2C() & 1) != 0 || (v9 == 116 ? (v15 = v11 == 0xE100000000000000) : (v15 = 0), v15 || (sub_1DF6F6E2C() & 1) != 0))))
  {

    return 1;
  }

  else if (v9 == 28526 && v11 == 0xE200000000000000 || (sub_1DF6F6E2C() & 1) != 0 || v9 == 110 && v11 == 0xE100000000000000 || (sub_1DF6F6E2C() & 1) != 0 || v9 == 0x65736C6166 && v11 == 0xE500000000000000 || (sub_1DF6F6E2C() & 1) != 0 || v9 == 102 && v11 == 0xE100000000000000)
  {

    return 0;
  }

  else
  {
    v17 = sub_1DF6F6E2C();

    result = 0;
    if ((v17 & 1) == 0)
    {
      return 2;
    }
  }

  return result;
}

unsigned __int8 *sub_1DF6EA920(uint64_t a1, unint64_t a2)
{
  sub_1DF69EF80(0, &qword_1ECE4DDE0, 0x1E696C348);

  result = sub_1DF6E6038(a1, a2);
  if (result)
  {
    v5 = result;

    return v5;
  }

  v6 = HIBYTE(a2) & 0xF;
  v7 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    goto LABEL_65;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {

    v5 = sub_1DF6E9808(a1, a2, 10);
    v30 = v29;

    if ((v30 & 1) == 0)
    {
      goto LABEL_70;
    }

LABEL_65:
    v31[0] = 0;
    if (sub_1DF6EA2F8(a1, a2))
    {

      return v31[0];
    }

    else
    {

      v27 = sub_1DF6EA630(a1, a2);
      if (v27 != 2)
      {
        v28 = v27;

        return (v28 & 1);
      }
    }

    return a1;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1DF6F6BDC();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v7 >= 1)
      {
        v6 = v7 - 1;
        if (v7 != 1)
        {
          v5 = 0;
          if (result)
          {
            v16 = result + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                goto LABEL_63;
              }

              v18 = 10 * v5;
              if ((v5 * 10) >> 64 != (10 * v5) >> 63)
              {
                goto LABEL_63;
              }

              v5 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                goto LABEL_63;
              }

              ++v16;
              if (!--v6)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_55;
        }

        goto LABEL_63;
      }

      goto LABEL_76;
    }

    if (v9 != 45)
    {
      if (v7)
      {
        v5 = 0;
        if (result)
        {
          while (1)
          {
            v22 = *result - 48;
            if (v22 > 9)
            {
              goto LABEL_63;
            }

            v23 = 10 * v5;
            if ((v5 * 10) >> 64 != (10 * v5) >> 63)
            {
              goto LABEL_63;
            }

            v5 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              goto LABEL_63;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_55;
      }

LABEL_63:
      v5 = 0;
      LOBYTE(v6) = 1;
LABEL_64:
      v32 = v6;
      if (v6)
      {
        goto LABEL_65;
      }

LABEL_70:

      return v5;
    }

    if (v7 >= 1)
    {
      v6 = v7 - 1;
      if (v7 != 1)
      {
        v5 = 0;
        if (result)
        {
          v10 = result + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              goto LABEL_63;
            }

            v12 = 10 * v5;
            if ((v5 * 10) >> 64 != (10 * v5) >> 63)
            {
              goto LABEL_63;
            }

            v5 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              goto LABEL_63;
            }

            ++v10;
            if (!--v6)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v6) = 0;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v31[0] = a1;
  v31[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a1 != 43)
  {
    if (a1 != 45)
    {
      if (v6)
      {
        v5 = 0;
        v24 = v31;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v5;
          if ((v5 * 10) >> 64 != (10 * v5) >> 63)
          {
            break;
          }

          v5 = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v6)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v6)
    {
      if (--v6)
      {
        v5 = 0;
        v13 = v31 + 1;
        while (1)
        {
          v14 = *v13 - 48;
          if (v14 > 9)
          {
            break;
          }

          v15 = 10 * v5;
          if ((v5 * 10) >> 64 != (10 * v5) >> 63)
          {
            break;
          }

          v5 = v15 - v14;
          if (__OFSUB__(v15, v14))
          {
            break;
          }

          ++v13;
          if (!--v6)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_75;
  }

  if (v6)
  {
    if (--v6)
    {
      v5 = 0;
      v19 = v31 + 1;
      while (1)
      {
        v20 = *v19 - 48;
        if (v20 > 9)
        {
          break;
        }

        v21 = 10 * v5;
        if ((v5 * 10) >> 64 != (10 * v5) >> 63)
        {
          break;
        }

        v5 = v21 + v20;
        if (__OFADD__(v21, v20))
        {
          break;
        }

        ++v19;
        if (!--v6)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_77:
  __break(1u);
  return result;
}

_BYTE *sub_1DF6EACF0@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_1DF6EADD8()
{
  if (!qword_1ECE4DDF8)
  {
    sub_1DF69EF80(255, &qword_1ECE4DE00, 0x1E696C510);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ECE4DDF8);
    }
  }
}

void sub_1DF6EAEC0()
{
  if (!qword_1ECE4DE18)
  {
    sub_1DF69EF80(255, &qword_1ECE4DE00, 0x1E696C510);
    v0 = sub_1DF6F5CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4DE18);
    }
  }
}

uint64_t sub_1DF6EAF34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1DF6EAF94()
{
  if (!qword_1ECE4DE48)
  {
    sub_1DF69EF80(255, &qword_1ECE4DE00, 0x1E696C510);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECE4DE48);
    }
  }
}

void sub_1DF6EB074(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DF6EB0F8()
{
  if (!qword_1ECE4DE78)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECE4DE78);
    }
  }
}

uint64_t sub_1DF6EB18C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1DF6EB074(255, a2, MEMORY[0x1E69E67B0], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DF6EB1DC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DF6EB224(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DF6EB288()
{
  if (!qword_1ECE4DED8)
  {
    type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECE4DED8);
    }
  }
}

uint64_t sub_1DF6EB2F4(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t HKDeviceKeyValueStore.fetchEntries(for:)(uint64_t a1, uint64_t a2)
{
  sub_1DF6EB504();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  v11[2] = v2;
  v11[3] = a1;
  v11[4] = a2;
  v12 = MEMORY[0x1E69E62F8];
  sub_1DF6EC30C(0, &qword_1EDC03FE8, &qword_1EDC03F08, MEMORY[0x1E69E62F8]);
  sub_1DF6EC400(&qword_1EDC03FF0, &qword_1EDC03FE8, &qword_1EDC03F08, v12);
  v13 = v2;

  sub_1DF6F5FCC();
  sub_1DF6EB690(&qword_1EDC03F90, sub_1DF6EB504);
  v14 = sub_1DF6F5FEC();
  (*(v7 + 8))(v10, v6);
  return v14;
}

void sub_1DF6EB504()
{
  if (!qword_1EDC03F88)
  {
    v0 = MEMORY[0x1E69E62F8];
    sub_1DF6EC30C(255, &qword_1EDC03FE8, &qword_1EDC03F08, MEMORY[0x1E69E62F8]);
    sub_1DF6EC400(&qword_1EDC03FF0, &qword_1EDC03FE8, &qword_1EDC03F08, v0);
    v1 = sub_1DF6F5FDC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC03F88);
    }
  }
}

uint64_t sub_1DF6EB5BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  sub_1DF6EC30C(0, &qword_1EDC03FE8, &qword_1EDC03F08, MEMORY[0x1E69E62F8]);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();

  v12 = a1;
  result = sub_1DF6F5FBC();
  *a4 = result;
  return result;
}

uint64_t sub_1DF6EB690(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DF6EB6D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  if (a5)
  {
    a5 = sub_1DF6F63BC();
  }

  v10 = swift_allocObject();
  *(v10 + 16) = sub_1DF6B1DF4;
  *(v10 + 24) = v9;
  v12[4] = sub_1DF6F0D30;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1DF6EB8C4;
  v12[3] = &block_descriptor_162;
  v11 = _Block_copy(v12);

  [a3 fetchEntriesForKey:a5 completion:v11];
  _Block_release(v11);
}

void sub_1DF6EB81C(void *a1, id a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    a3(a2, 1);
  }

  else
  {
    if (a1)
    {
      v6 = a1;
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    a3(v6, 0);
  }
}

uint64_t sub_1DF6EB8C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1DF69EF80(0, qword_1EDC03588, 0x1E696C0D0);
    v4 = sub_1DF6F65AC();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_1DF6EB968@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  sub_1DF6EC30C(0, &qword_1ECE4DEE8, &qword_1ECE4DEF0, MEMORY[0x1E69E6720]);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = a1;

  result = sub_1DF6F5FBC();
  *a4 = result;
  return result;
}

void sub_1DF6EBA30(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v7 = sub_1DF6F63BC();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1DF6B21D4;
  *(v8 + 24) = v6;
  v10[4] = sub_1DF6F0D1C;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1DF6AE6E0;
  v10[3] = &block_descriptor_150_0;
  v9 = _Block_copy(v10);

  [a3 mostRecentEntryForKey:v7 completion:v9];
  _Block_release(v9);
}

void sub_1DF6EBB64(int a1, id a2, void (*a3)(void))
{
  if (a2)
  {
    v5 = a2;
    (a3)(a2, 1);
  }

  else
  {
    a3();
  }
}

void *sub_1DF6EBBDC@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = *a1;
  if (result)
  {
    v8 = [result storageEntries];
    sub_1DF69EF80(0, &qword_1ECE4DF10, 0x1E696C0C8);
    v9 = sub_1DF6F65AC();

    v21 = a4;
    if (v9 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DF6F6A8C())
    {
      v11 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1E12DBF80](v11, v9);
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v15 = [v12 key];
        v16 = sub_1DF6F63EC();
        v18 = v17;

        if (v16 == a2 && v18 == a3)
        {

          goto LABEL_24;
        }

        v20 = sub_1DF6F6E2C();

        if (v20)
        {

          goto LABEL_24;
        }

        ++v11;
        if (v14 == i)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

LABEL_23:

    v13 = 0;
LABEL_24:
    a4 = v21;
  }

  else
  {
    v13 = 0;
  }

  *a4 = v13;
  return result;
}

uint64_t HKDeviceKeyValueStore.mostRecentBool(for:)(uint64_t a1, uint64_t a2)
{
  sub_1DF6EC254();
  v6 = *(v5 - 8);
  v31 = v5;
  v32 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6EC450();
  v11 = *(v10 - 8);
  v33 = v10;
  v34 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6EC528(0);
  v16 = *(v15 - 8);
  v35 = v15;
  v36 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v30 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v19[2] = v2;
  v19[3] = a1;
  v19[4] = a2;
  v20 = MEMORY[0x1E69E6720];
  sub_1DF6EC30C(0, &qword_1ECE4DEE8, &qword_1ECE4DEF0, MEMORY[0x1E69E6720]);
  sub_1DF6EC400(&qword_1ECE4DEF8, &qword_1ECE4DEE8, &qword_1ECE4DEF0, v20);
  v21 = v2;

  sub_1DF6F5FCC();
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  sub_1DF6EC398(0, &qword_1ECE4DF08, &qword_1ECE4DF10, 0x1E696C0C8, v20);
  sub_1DF6EB690(&qword_1ECE4DF18, sub_1DF6EC254);

  v23 = v31;
  sub_1DF6F600C();

  (*(v32 + 8))(v9, v23);
  sub_1DF6EB690(&qword_1ECE4DF38, sub_1DF6EC450);
  v24 = v33;
  v25 = sub_1DF6F5FEC();
  (*(v34 + 8))(v14, v24);
  v37 = v25;
  sub_1DF6EC558();
  sub_1DF6AE368(0, &qword_1EDC03EF8);
  sub_1DF6EB690(&qword_1ECE4DF30, sub_1DF6EC558);
  v26 = v30;
  sub_1DF6F603C();

  sub_1DF6EB690(&qword_1ECE4DF40, sub_1DF6EC528);
  v27 = v35;
  v28 = sub_1DF6F5FEC();
  (*(v36 + 8))(v26, v27);
  return v28;
}

void sub_1DF6EC254()
{
  if (!qword_1ECE4DEE0)
  {
    v0 = MEMORY[0x1E69E6720];
    sub_1DF6EC30C(255, &qword_1ECE4DEE8, &qword_1ECE4DEF0, MEMORY[0x1E69E6720]);
    sub_1DF6EC400(&qword_1ECE4DEF8, &qword_1ECE4DEE8, &qword_1ECE4DEF0, v0);
    v1 = sub_1DF6F5FDC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECE4DEE0);
    }
  }
}

void sub_1DF6EC30C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1DF6EC398(255, a3, qword_1EDC03588, 0x1E696C0D0, a4);
    sub_1DF69F1E4();
    v5 = sub_1DF6F5FAC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1DF6EC398(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1DF69EF80(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1DF6EC400(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1DF6EC30C(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1DF6EC450()
{
  if (!qword_1ECE4DF00)
  {
    sub_1DF6EC254();
    sub_1DF6EC398(255, &qword_1ECE4DF08, &qword_1ECE4DF10, 0x1E696C0C8, MEMORY[0x1E69E6720]);
    sub_1DF6EB690(&qword_1ECE4DF18, sub_1DF6EC254);
    v0 = sub_1DF6F5E2C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4DF00);
    }
  }
}

void sub_1DF6EC558()
{
  if (!qword_1ECE4DF28)
  {
    sub_1DF6EC398(255, &qword_1ECE4DF08, &qword_1ECE4DF10, 0x1E696C0C8, MEMORY[0x1E69E6720]);
    sub_1DF69F1E4();
    v0 = sub_1DF6F5F1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4DF28);
    }
  }
}

void sub_1DF6EC608(void **a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  if (v3)
  {
    v10[0] = 0;
    v4 = [v3 numberValue_];
    if (v4)
    {
      v5 = v4;
      v6 = v10[0];
      v7 = [v5 BOOLValue];

      *a2 = v7;
    }

    else
    {
      v8 = v10[0];
      sub_1DF6F59AC();

      swift_willThrow();
    }
  }

  else
  {
    *a2 = 2;
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t HKDeviceKeyValueStore.mostRecentData(for:)(uint64_t a1, uint64_t a2)
{
  sub_1DF6EC254();
  v6 = *(v5 - 8);
  v31 = v5;
  v32 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6EC450();
  v11 = *(v10 - 8);
  v33 = v10;
  v34 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6ECB88(0);
  v16 = *(v15 - 8);
  v35 = v15;
  v36 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v30 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v19[2] = v2;
  v19[3] = a1;
  v19[4] = a2;
  v20 = MEMORY[0x1E69E6720];
  sub_1DF6EC30C(0, &qword_1ECE4DEE8, &qword_1ECE4DEF0, MEMORY[0x1E69E6720]);
  sub_1DF6EC400(&qword_1ECE4DEF8, &qword_1ECE4DEE8, &qword_1ECE4DEF0, v20);
  v21 = v2;

  sub_1DF6F5FCC();
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  sub_1DF6EC398(0, &qword_1ECE4DF08, &qword_1ECE4DF10, 0x1E696C0C8, v20);
  sub_1DF6EB690(&qword_1ECE4DF18, sub_1DF6EC254);

  v23 = v31;
  sub_1DF6F600C();

  (*(v32 + 8))(v9, v23);
  sub_1DF6EB690(&qword_1ECE4DF38, sub_1DF6EC450);
  v24 = v33;
  v25 = sub_1DF6F5FEC();
  (*(v34 + 8))(v14, v24);
  v37 = v25;
  sub_1DF6EC558();
  sub_1DF6AE368(0, &qword_1EDC04650);
  sub_1DF6EB690(&qword_1ECE4DF30, sub_1DF6EC558);
  v26 = v30;
  sub_1DF6F600C();

  sub_1DF6EB690(&qword_1ECE4DF50, sub_1DF6ECB88);
  v27 = v35;
  v28 = sub_1DF6F5FEC();
  (*(v36 + 8))(v26, v27);
  return v28;
}

void sub_1DF6ECBB8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1DF6EC558();
    v10 = v9;
    sub_1DF6AE368(255, a3);
    v12 = v11;
    v13 = sub_1DF6EB690(&qword_1ECE4DF30, sub_1DF6EC558);
    v14 = a5(a1, v10, v12, v13);
    if (!v15)
    {
      atomic_store(v14, a2);
    }
  }
}

void sub_1DF6ECC7C(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {
    v4 = [v3 value];
    v5 = sub_1DF6F5A0C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t HKDeviceKeyValueStore.mostRecentDate(for:)(uint64_t a1, uint64_t a2)
{
  sub_1DF6EC254();
  v6 = *(v5 - 8);
  v31 = v5;
  v32 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6EC450();
  v11 = *(v10 - 8);
  v33 = v10;
  v34 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6ED178();
  v16 = *(v15 - 8);
  v35 = v15;
  v36 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v30 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v19[2] = v2;
  v19[3] = a1;
  v19[4] = a2;
  v20 = MEMORY[0x1E69E6720];
  sub_1DF6EC30C(0, &qword_1ECE4DEE8, &qword_1ECE4DEF0, MEMORY[0x1E69E6720]);
  sub_1DF6EC400(&qword_1ECE4DEF8, &qword_1ECE4DEE8, &qword_1ECE4DEF0, v20);
  v21 = v2;

  sub_1DF6F5FCC();
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  sub_1DF6EC398(0, &qword_1ECE4DF08, &qword_1ECE4DF10, 0x1E696C0C8, v20);
  sub_1DF6EB690(&qword_1ECE4DF18, sub_1DF6EC254);

  v23 = v31;
  sub_1DF6F600C();

  (*(v32 + 8))(v9, v23);
  sub_1DF6EB690(&qword_1ECE4DF38, sub_1DF6EC450);
  v24 = v33;
  v25 = sub_1DF6F5FEC();
  (*(v34 + 8))(v14, v24);
  v37 = v25;
  sub_1DF6EC558();
  sub_1DF69FB7C();
  sub_1DF6EB690(&qword_1ECE4DF30, sub_1DF6EC558);
  v26 = v30;
  sub_1DF6F603C();

  sub_1DF6EB690(&qword_1ECE4DF60, sub_1DF6ED178);
  v27 = v35;
  v28 = sub_1DF6F5FEC();
  (*(v36 + 8))(v26, v27);
  return v28;
}

void sub_1DF6ED178()
{
  if (!qword_1ECE4DF58)
  {
    sub_1DF6EC558();
    sub_1DF69FB7C();
    sub_1DF6EB690(&qword_1ECE4DF30, sub_1DF6EC558);
    v0 = sub_1DF6F5E4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4DF58);
    }
  }
}

void sub_1DF6ED224(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DF6F6A0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DF6ED278@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  if (v3)
  {
    v13[0] = 0;
    v4 = [v3 dateValue_];
    v5 = v13[0];
    if (v4)
    {
      v6 = v4;
      sub_1DF6F5A6C();
      v7 = v5;

      v8 = sub_1DF6F5A7C();
      result = (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
    }

    else
    {
      v11 = v13[0];
      sub_1DF6F59AC();

      result = swift_willThrow();
    }
  }

  else
  {
    v10 = sub_1DF6F5A7C();
    result = (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HKDeviceKeyValueStore.mostRecentNumber(for:)(uint64_t a1, uint64_t a2)
{
  sub_1DF6EC254();
  v6 = *(v5 - 8);
  v31 = v5;
  v32 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6EC450();
  v11 = *(v10 - 8);
  v33 = v10;
  v34 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6ED860();
  v16 = *(v15 - 8);
  v35 = v15;
  v36 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v30 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v19[2] = v2;
  v19[3] = a1;
  v19[4] = a2;
  v20 = MEMORY[0x1E69E6720];
  sub_1DF6EC30C(0, &qword_1ECE4DEE8, &qword_1ECE4DEF0, MEMORY[0x1E69E6720]);
  sub_1DF6EC400(&qword_1ECE4DEF8, &qword_1ECE4DEE8, &qword_1ECE4DEF0, v20);
  v21 = v2;

  sub_1DF6F5FCC();
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  sub_1DF6EC398(0, &qword_1ECE4DF08, &qword_1ECE4DF10, 0x1E696C0C8, v20);
  sub_1DF6EB690(&qword_1ECE4DF18, sub_1DF6EC254);

  v23 = v31;
  sub_1DF6F600C();

  (*(v32 + 8))(v9, v23);
  sub_1DF6EB690(&qword_1ECE4DF38, sub_1DF6EC450);
  v24 = v33;
  v25 = sub_1DF6F5FEC();
  (*(v34 + 8))(v14, v24);
  v37 = v25;
  sub_1DF6EC558();
  sub_1DF6EC398(0, &qword_1ECE4D788, &qword_1EDC03560, 0x1E696AD98, v20);
  sub_1DF6EB690(&qword_1ECE4DF30, sub_1DF6EC558);
  v26 = v30;
  sub_1DF6F603C();

  sub_1DF6EB690(&qword_1ECE4DF70, sub_1DF6ED860);
  v27 = v35;
  v28 = sub_1DF6F5FEC();
  (*(v36 + 8))(v26, v27);
  return v28;
}

void sub_1DF6ED860()
{
  if (!qword_1ECE4DF68)
  {
    sub_1DF6EC558();
    sub_1DF6EC398(255, &qword_1ECE4D788, &qword_1EDC03560, 0x1E696AD98, MEMORY[0x1E69E6720]);
    sub_1DF6EB690(&qword_1ECE4DF30, sub_1DF6EC558);
    v0 = sub_1DF6F5E4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4DF68);
    }
  }
}

id sub_1DF6ED938@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v9[1] = *MEMORY[0x1E69E9840];
  result = *a1;
  if (result)
  {
    v9[0] = 0;
    v4 = [result numberValue_];
    v5 = v9[0];
    if (v4)
    {
      *a2 = v4;
      result = v5;
      v6 = *MEMORY[0x1E69E9840];
      return result;
    }

    v7 = v9[0];
    sub_1DF6F59AC();

    result = swift_willThrow();
  }

  else
  {
    *a2 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HKDeviceKeyValueStore.mostRecentString(for:)(uint64_t a1, uint64_t a2)
{
  sub_1DF6EC254();
  v6 = *(v5 - 8);
  v31 = v5;
  v32 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6EC450();
  v11 = *(v10 - 8);
  v33 = v10;
  v34 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6EDEBC(0);
  v16 = *(v15 - 8);
  v35 = v15;
  v36 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v30 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v19[2] = v2;
  v19[3] = a1;
  v19[4] = a2;
  v20 = MEMORY[0x1E69E6720];
  sub_1DF6EC30C(0, &qword_1ECE4DEE8, &qword_1ECE4DEF0, MEMORY[0x1E69E6720]);
  sub_1DF6EC400(&qword_1ECE4DEF8, &qword_1ECE4DEE8, &qword_1ECE4DEF0, v20);
  v21 = v2;

  sub_1DF6F5FCC();
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  sub_1DF6EC398(0, &qword_1ECE4DF08, &qword_1ECE4DF10, 0x1E696C0C8, v20);
  sub_1DF6EB690(&qword_1ECE4DF18, sub_1DF6EC254);

  v23 = v31;
  sub_1DF6F600C();

  (*(v32 + 8))(v9, v23);
  sub_1DF6EB690(&qword_1ECE4DF38, sub_1DF6EC450);
  v24 = v33;
  v25 = sub_1DF6F5FEC();
  (*(v34 + 8))(v14, v24);
  v37 = v25;
  sub_1DF6EC558();
  sub_1DF6AE368(0, &qword_1EDC04798);
  sub_1DF6EB690(&qword_1ECE4DF30, sub_1DF6EC558);
  v26 = v30;
  sub_1DF6F603C();

  sub_1DF6EB690(&qword_1ECE4DF80, sub_1DF6EDEBC);
  v27 = v35;
  v28 = sub_1DF6F5FEC();
  (*(v36 + 8))(v26, v27);
  return v28;
}

void sub_1DF6EDEEC(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  if (v3)
  {
    v14[0] = 0;
    v4 = [v3 stringValue_];
    v5 = v14[0];
    if (v4)
    {
      v6 = v4;
      v7 = sub_1DF6F63EC();
      v9 = v8;
      v10 = v5;

      *a2 = v7;
      a2[1] = v9;
    }

    else
    {
      v12 = v14[0];
      sub_1DF6F59AC();

      swift_willThrow();
    }

    v13 = *MEMORY[0x1E69E9840];
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    v11 = *MEMORY[0x1E69E9840];
  }
}

uint64_t HKDeviceKeyValueStore.setValue<A>(_:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v135 = a3;
  v136 = a2;
  sub_1DF6F02C0(0, &qword_1ECE4DF88, MEMORY[0x1E695BFF0]);
  v126 = *(v6 - 8);
  v127 = v6;
  v7 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v125 = v119 - v8;
  sub_1DF69FB7C();
  v121 = *(v9 - 8);
  v10 = *(v121 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v122 = v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v123 = v119 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v130 = v119 - v14;
  v15 = sub_1DF6F5A7C();
  v16 = *(v15 - 8);
  v131 = v15;
  v132 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v124 = v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DF6F6A0C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v128 = v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v129 = v119 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = v119 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = v119 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = v119 - v32;
  v34 = *(*(a4 - 8) + 48);
  if (v34(a1, 1, a4) != 1)
  {
    v38 = *(v20 + 16);
    v120 = a1;
    v133 = v38;
    (v38)(v33, a1, v19);
    if (v34(v33, 1, a4) == 1)
    {
      (*(v20 + 8))(v33, v19);
    }

    else if (swift_dynamicCast())
    {
      v39 = v137;
      v40 = v138;
      v41 = swift_allocObject();
      v43 = v134;
      v42 = v135;
      v41[2] = v134;
      v41[3] = v39;
      v44 = v136;
      v41[4] = v40;
      v41[5] = v44;
      v41[6] = v42;
      v45 = MEMORY[0x1E695C028];
      sub_1DF6F02C0(0, &qword_1EDC03FC0, MEMORY[0x1E695C028]);
      v47 = *(v46 + 48);
      v48 = *(v46 + 52);
      swift_allocObject();
      v49 = v43;

      v137 = sub_1DF6F5FBC();
      sub_1DF6EFFA4(&qword_1EDC03FC8, &qword_1EDC03FC0, v45);
      v50 = sub_1DF6F5FEC();

      goto LABEL_17;
    }

    v51 = v120;
    (v133)(v31, v120, v19);
    if (v34(v31, 1, a4) == 1)
    {
      (*(v20 + 8))(v31, v19);
    }

    else
    {
      sub_1DF69EF80(0, &qword_1EDC03560, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v52 = v137;
        v53 = swift_allocObject();
        v55 = v134;
        v54 = v135;
        v53[2] = v134;
        v53[3] = v52;
        v53[4] = v136;
        v53[5] = v54;
        v56 = MEMORY[0x1E695C028];
        sub_1DF6F02C0(0, &qword_1EDC03FC0, MEMORY[0x1E695C028]);
        v58 = *(v57 + 48);
        v59 = *(v57 + 52);
        swift_allocObject();
        v60 = v55;

        v61 = v52;
        v137 = sub_1DF6F5FBC();
        sub_1DF6EFFA4(&qword_1EDC03FC8, &qword_1EDC03FC0, v56);
        v62 = sub_1DF6F5FEC();

        v137 = v62;
        v63 = MEMORY[0x1E695BED0];
        sub_1DF6F02C0(0, &qword_1ECE4DD68, MEMORY[0x1E695BED0]);
        sub_1DF6EFFA4(&qword_1ECE4DD70, &qword_1ECE4DD68, v63);
        v64 = sub_1DF6F5FEC();

        return v64;
      }
    }

    (v133)(v28, v51, v19);
    v65 = v34(v28, 1, a4);
    v66 = v132;
    if (v65 == 1)
    {
      (*(v20 + 8))(v28, v19);
LABEL_18:
      v78 = v129;
      v119[1] = v20 + 16;
      v133();
      v79 = v34(v78, 1, a4);
      v80 = v130;
      v119[0] = v20;
      if (v79 == 1)
      {
        (*(v20 + 8))(v78, v19);
        (*(v66 + 56))(v80, 1, 1, v131);
      }

      else
      {
        v81 = v131;
        v82 = swift_dynamicCast();
        v83 = v66;
        v84 = *(v66 + 56);
        v84(v80, v82 ^ 1u, 1, v81);
        if ((*(v83 + 48))(v80, 1, v81) != 1)
        {
          v102 = v124;
          (*(v83 + 32))(v124, v80, v81);
          v103 = *(v83 + 16);
          v104 = v83;
          v105 = v123;
          v103(v123, v102, v81);
          v84(v105, 0, 1, v81);
          v106 = v122;
          sub_1DF6F056C(v105, v122);
          v107 = (*(v121 + 80) + 24) & ~*(v121 + 80);
          v108 = swift_allocObject();
          v109 = v134;
          *(v108 + 16) = v134;
          sub_1DF6B08D8(v106, v108 + v107);
          v110 = (v108 + ((v10 + v107 + 7) & 0xFFFFFFFFFFFFFFF8));
          v111 = v135;
          *v110 = v136;
          v110[1] = v111;
          v112 = MEMORY[0x1E695C028];
          sub_1DF6F02C0(0, &qword_1EDC03FC0, MEMORY[0x1E695C028]);
          v114 = *(v113 + 48);
          v115 = *(v113 + 52);
          swift_allocObject();
          v116 = v109;

          v137 = sub_1DF6F5FBC();
          sub_1DF6EFFA4(&qword_1EDC03FC8, &qword_1EDC03FC0, v112);
          v117 = sub_1DF6F5FEC();
          sub_1DF6F0BB0(v105, sub_1DF69FB7C);

          v137 = v117;
          v118 = MEMORY[0x1E695BED0];
          sub_1DF6F02C0(0, &qword_1ECE4DD68, MEMORY[0x1E695BED0]);
          sub_1DF6EFFA4(&qword_1ECE4DD70, &qword_1ECE4DD68, v118);
          v64 = sub_1DF6F5FEC();

          (*(v104 + 8))(v102, v131);
          return v64;
        }
      }

      sub_1DF6F0BB0(v80, sub_1DF69FB7C);
      v85 = v128;
      (v133)(v128, v120, v19);
      v86 = v34(v85, 1, a4);
      v87 = v136;
      if (v86 == 1)
      {
        (*(v119[0] + 8))(v85, v19);
LABEL_25:
        sub_1DF6EFF50();
        v137 = swift_allocError();
        sub_1DF69F1E4();
        v100 = v125;
        sub_1DF6F5F7C();
        sub_1DF6EFFA4(&qword_1ECE4DF98, &qword_1ECE4DF88, MEMORY[0x1E695BFF0]);
        v101 = v127;
        v64 = sub_1DF6F5FEC();
        (*(v126 + 8))(v100, v101);
        return v64;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_25;
      }

      v88 = v137;
      v89 = v138;
      v90 = swift_allocObject();
      v92 = v134;
      v91 = v135;
      v90[2] = v134;
      v90[3] = v88;
      v90[4] = v89;
      v90[5] = v87;
      v90[6] = v91;
      v93 = MEMORY[0x1E695C028];
      sub_1DF6F02C0(0, &qword_1EDC03FC0, MEMORY[0x1E695C028]);
      v95 = *(v94 + 48);
      v96 = *(v94 + 52);
      swift_allocObject();
      v97 = v92;

      sub_1DF6B047C(v88, v89);
      v137 = sub_1DF6F5FBC();
      sub_1DF6EFFA4(&qword_1EDC03FC8, &qword_1EDC03FC0, v93);
      v98 = sub_1DF6F5FEC();

      v137 = v98;
      v99 = MEMORY[0x1E695BED0];
      sub_1DF6F02C0(0, &qword_1ECE4DD68, MEMORY[0x1E695BED0]);
      sub_1DF6EFFA4(&qword_1ECE4DD70, &qword_1ECE4DD68, v99);
      v64 = sub_1DF6F5FEC();
      sub_1DF6B03FC(v88, v89);

      return v64;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_18;
    }

    v67 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v68 = swift_allocObject();
    v70 = v134;
    v69 = v135;
    v68[2] = v134;
    v68[3] = v67;
    v68[4] = v136;
    v68[5] = v69;
    v71 = MEMORY[0x1E695C028];
    sub_1DF6F02C0(0, &qword_1EDC03FC0, MEMORY[0x1E695C028]);
    v73 = *(v72 + 48);
    v74 = *(v72 + 52);
    swift_allocObject();
    v75 = v70;

    v76 = v67;
    v137 = sub_1DF6F5FBC();
    sub_1DF6EFFA4(&qword_1EDC03FC8, &qword_1EDC03FC0, v71);
    v50 = sub_1DF6F5FEC();

LABEL_17:
    v137 = v50;
    v77 = MEMORY[0x1E695BED0];
    sub_1DF6F02C0(0, &qword_1ECE4DD68, MEMORY[0x1E695BED0]);
    sub_1DF6EFFA4(&qword_1ECE4DD70, &qword_1ECE4DD68, v77);
    v64 = sub_1DF6F5FEC();

    return v64;
  }

  v36 = v135;
  v35 = v136;

  return sub_1DF6EEF00(a1, v35, v36, v19);
}

uint64_t sub_1DF6EEF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v92 = a3;
  v93 = a2;
  sub_1DF6F02C0(0, &qword_1ECE4DF88, MEMORY[0x1E695BFF0]);
  v83 = *(v6 - 8);
  v84 = v6;
  v7 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v82 = &v82 - v8;
  sub_1DF69FB7C();
  v10 = *(v9 - 8);
  v88 = v9;
  v89 = v10;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v85 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v86 = &v82 - v13;
  sub_1DF6F0B90(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a4 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v87 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v82 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v82 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v82 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = *(v19 + 16);
  v90 = a1;
  v32(&v82 - v33, a1, a4);
  sub_1DF6AE368(0, &qword_1EDC04798);
  if (swift_dynamicCast())
  {

    v34 = swift_allocObject();
    v36 = v91;
    v35 = v92;
    v34[2] = v91;
    v34[3] = 0;
    v37 = v93;
    v34[4] = 0;
    v34[5] = v37;
    v34[6] = v35;
    v38 = MEMORY[0x1E695C028];
    sub_1DF6F02C0(0, &qword_1EDC03FC0, MEMORY[0x1E695C028]);
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    v42 = v36;
  }

  else
  {
    v44 = v91;
    v43 = v92;
    v32(v31, v90, a4);
    sub_1DF6EC398(0, &qword_1ECE4D788, &qword_1EDC03560, 0x1E696AD98, MEMORY[0x1E69E6720]);
    if (swift_dynamicCast())
    {

      v45 = swift_allocObject();
      v45[2] = v44;
      v45[3] = 0;
      v45[4] = v93;
      v45[5] = v43;
      v38 = MEMORY[0x1E695C028];
      sub_1DF6F02C0(0, &qword_1EDC03FC0, MEMORY[0x1E695C028]);
      v47 = *(v46 + 48);
      v48 = *(v46 + 52);
      swift_allocObject();
      v49 = v44;
    }

    else
    {
      v32(v28, v90, a4);
      sub_1DF6AE368(0, &qword_1EDC03EF8);
      if (swift_dynamicCast())
      {
        v50 = swift_allocObject();
        v50[2] = v44;
        v50[3] = 0;
        v50[4] = v93;
        v50[5] = v43;
        v38 = MEMORY[0x1E695C028];
        sub_1DF6F02C0(0, &qword_1EDC03FC0, MEMORY[0x1E695C028]);
        v52 = *(v51 + 48);
        v53 = *(v51 + 52);
        swift_allocObject();
        v54 = v44;
      }

      else
      {
        v32(v25, v90, a4);
        v55 = v88;
        v56 = swift_dynamicCast();
        v57 = v89;
        (*(v89 + 56))(v18, v56 ^ 1u, 1, v55);
        LODWORD(v55) = (*(v57 + 48))(v18, 1, v55);
        sub_1DF6F0BB0(v18, sub_1DF6F0B90);
        if (!v55)
        {
          v69 = sub_1DF6F5A7C();
          v70 = v86;
          (*(*(v69 - 8) + 56))(v86, 1, 1, v69);
          v71 = v85;
          sub_1DF6F056C(v70, v85);
          v72 = (*(v57 + 80) + 24) & ~*(v57 + 80);
          v73 = swift_allocObject();
          *(v73 + 16) = v44;
          sub_1DF6B08D8(v71, v73 + v72);
          v74 = (v73 + ((v11 + v72 + 7) & 0xFFFFFFFFFFFFFFF8));
          *v74 = v93;
          v74[1] = v43;
          v75 = MEMORY[0x1E695C028];
          sub_1DF6F02C0(0, &qword_1EDC03FC0, MEMORY[0x1E695C028]);
          v77 = *(v76 + 48);
          v78 = *(v76 + 52);
          swift_allocObject();
          v79 = v44;

          v94 = sub_1DF6F5FBC();
          sub_1DF6EFFA4(&qword_1EDC03FC8, &qword_1EDC03FC0, v75);
          v65 = sub_1DF6F5FEC();
          sub_1DF6F0BB0(v70, sub_1DF69FB7C);
          goto LABEL_11;
        }

        v32(v87, v90, a4);
        sub_1DF6AE368(0, &qword_1EDC04650);
        v58 = swift_dynamicCast();
        v59 = v93;
        if ((v58 & 1) == 0)
        {
          sub_1DF6EFF50();
          v94 = swift_allocError();
          sub_1DF69F1E4();
          v80 = v82;
          sub_1DF6F5F7C();
          sub_1DF6EFFA4(&qword_1ECE4DF98, &qword_1ECE4DF88, MEMORY[0x1E695BFF0]);
          v81 = v84;
          v67 = sub_1DF6F5FEC();
          (*(v83 + 8))(v80, v81);
          return v67;
        }

        sub_1DF6B20E8(v94, v95);
        v60 = swift_allocObject();
        *(v60 + 16) = v44;
        *(v60 + 24) = xmmword_1DF6FC4D0;
        *(v60 + 40) = v59;
        *(v60 + 48) = v43;
        v38 = MEMORY[0x1E695C028];
        sub_1DF6F02C0(0, &qword_1EDC03FC0, MEMORY[0x1E695C028]);
        v62 = *(v61 + 48);
        v63 = *(v61 + 52);
        swift_allocObject();
        v64 = v44;
      }
    }
  }

  v94 = sub_1DF6F5FBC();
  sub_1DF6EFFA4(&qword_1EDC03FC8, &qword_1EDC03FC0, v38);
  v65 = sub_1DF6F5FEC();
LABEL_11:

  v94 = v65;
  v66 = MEMORY[0x1E695BED0];
  sub_1DF6F02C0(0, &qword_1ECE4DD68, MEMORY[0x1E695BED0]);
  sub_1DF6EFFA4(&qword_1ECE4DD70, &qword_1ECE4DD68, v66);
  v67 = sub_1DF6F5FEC();

  return v67;
}

uint64_t HKDeviceKeyValueStore.setString(_:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = a4;
  v10 = MEMORY[0x1E695C028];
  sub_1DF6F02C0(0, &qword_1EDC03FC0, MEMORY[0x1E695C028]);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();

  v14 = v4;
  sub_1DF6F5FBC();
  sub_1DF6EFFA4(&qword_1EDC03FC8, &qword_1EDC03FC0, v10);
  v15 = sub_1DF6F5FEC();

  return v15;
}

uint64_t HKDeviceKeyValueStore.setNumber(_:key:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  v8 = MEMORY[0x1E695C028];
  sub_1DF6F02C0(0, &qword_1EDC03FC0, MEMORY[0x1E695C028]);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = a1;

  v13 = v3;
  sub_1DF6F5FBC();
  sub_1DF6EFFA4(&qword_1EDC03FC8, &qword_1EDC03FC0, v8);
  v14 = sub_1DF6F5FEC();

  return v14;
}

uint64_t HKDeviceKeyValueStore.setBool(_:key:)(char a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 2)
  {
    v6 = swift_allocObject();
    v6[2] = v3;
    v6[3] = 0;
    v6[4] = a2;
    v6[5] = a3;
    v7 = MEMORY[0x1E695C028];
    sub_1DF6F02C0(0, &qword_1EDC03FC0, MEMORY[0x1E695C028]);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = v3;

    sub_1DF6F5FBC();
    sub_1DF6EFFA4(&qword_1EDC03FC8, &qword_1EDC03FC0, v7);
    v12 = sub_1DF6F5FEC();
  }

  else
  {
    v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v14 = swift_allocObject();
    v14[2] = v3;
    v14[3] = v13;
    v14[4] = a2;
    v14[5] = a3;
    v15 = MEMORY[0x1E695C028];
    sub_1DF6F02C0(0, &qword_1EDC03FC0, MEMORY[0x1E695C028]);
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    v19 = v13;
    v20 = v3;

    sub_1DF6F5FBC();
    sub_1DF6EFFA4(&qword_1EDC03FC8, &qword_1EDC03FC0, v15);
    v12 = sub_1DF6F5FEC();
  }

  return v12;
}

uint64_t HKDeviceKeyValueStore.setDate(_:key:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DF69FB7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1DF6F056C(a1, v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  sub_1DF6B08D8(v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v12 = (v11 + ((v9 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = a2;
  v12[1] = a3;
  v13 = MEMORY[0x1E695C028];
  sub_1DF6F02C0(0, &qword_1EDC03FC0, MEMORY[0x1E695C028]);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = v3;

  v20[1] = sub_1DF6F5FBC();
  sub_1DF6EFFA4(&qword_1EDC03FC8, &qword_1EDC03FC0, v13);
  v18 = sub_1DF6F5FEC();

  return v18;
}

unint64_t sub_1DF6EFF50()
{
  result = qword_1ECE4DF90;
  if (!qword_1ECE4DF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4DF90);
  }

  return result;
}

uint64_t sub_1DF6EFFA4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_1DF6F02C0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t HKDeviceKeyValueStore.setData(_:key:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = a4;
  v10 = MEMORY[0x1E695C028];
  sub_1DF6F02C0(0, &qword_1EDC03FC0, MEMORY[0x1E695C028]);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = v4;
  sub_1DF6B0468(a1, a2);

  sub_1DF6F5FBC();
  sub_1DF6EFFA4(&qword_1EDC03FC8, &qword_1EDC03FC0, v10);
  v15 = sub_1DF6F5FEC();

  return v15;
}

void sub_1DF6F0128(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  if (a5 >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_1DF6F59FC();
  }

  v11 = sub_1DF6F63BC();
  v12 = swift_allocObject();
  v12[2] = sub_1DF6B21D4;
  v12[3] = v9;
  v12[4] = a3;
  v15[4] = sub_1DF6F0B28;
  v15[5] = v12;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1DF6CDA24;
  v15[3] = &block_descriptor_118;
  v13 = _Block_copy(v15);
  v14 = a3;

  [v14 setData:v10 forKey:v11 completion:v13];
  _Block_release(v13);
}

void sub_1DF6F02C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_1DF69F1E4();
    v7 = a3(a1, MEMORY[0x1E69E7CA8] + 8, v6, MEMORY[0x1E69E7288]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1DF6F0334(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_1DF69FB7C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  sub_1DF6F056C(a4, v11);
  v13 = sub_1DF6F5A7C();
  v14 = *(v13 - 8);
  LODWORD(a1) = (*(v14 + 48))(v11, 1, v13);

  v15 = 0;
  if (a1 != 1)
  {
    v15 = sub_1DF6F5A4C();
    (*(v14 + 8))(v11, v13);
  }

  v16 = sub_1DF6F63BC();
  v17 = swift_allocObject();
  v17[2] = sub_1DF6B21D4;
  v17[3] = v12;
  v17[4] = a3;
  aBlock[4] = sub_1DF6F0D78;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF6CDA24;
  aBlock[3] = &block_descriptor_108;
  v18 = _Block_copy(aBlock);
  v19 = a3;

  [v19 setDate:v15 forKey:v16 completion:v18];
  _Block_release(v18);
}

uint64_t sub_1DF6F056C(uint64_t a1, uint64_t a2)
{
  sub_1DF69FB7C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DF6F05D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = sub_1DF6F63BC();
  v10 = swift_allocObject();
  v10[2] = sub_1DF6B21D4;
  v10[3] = v8;
  v10[4] = a3;
  v13[4] = sub_1DF6F0D78;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DF6CDA24;
  v13[3] = &block_descriptor_98;
  v11 = _Block_copy(v13);
  v12 = a3;

  [v12 setNumber:a4 forKey:v9 completion:v11];
  _Block_release(v11);
}

void sub_1DF6F0728(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  sub_1DF6F05D4(a1, a2, *(v2 + 16), *(v2 + 24));
}

void sub_1DF6F0734(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  if (a5)
  {
    a5 = sub_1DF6F63BC();
  }

  v10 = sub_1DF6F63BC();
  v11 = swift_allocObject();
  v11[2] = sub_1DF6B21D4;
  v11[3] = v9;
  v11[4] = a3;
  v14[4] = sub_1DF6F0D78;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1DF6CDA24;
  v14[3] = &block_descriptor_20;
  v12 = _Block_copy(v14);
  v13 = a3;

  [v13 setString:a5 forKey:v10 completion:v12];
  _Block_release(v12);
}

uint64_t objectdestroy_43Tm()
{
  sub_1DF69FB7C();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = sub_1DF6F5A7C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v7 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 16, v2 | 7);
}

void sub_1DF6F09F4(uint64_t a1, uint64_t a2)
{
  sub_1DF69FB7C();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = (v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  sub_1DF6F0334(a1, a2, v8, v2 + v7);
}

unint64_t sub_1DF6F0ABC()
{
  result = qword_1ECE4DFA0;
  if (!qword_1ECE4DFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4DFA0);
  }

  return result;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1DF6F0B2C(int a1, id a2)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a2 != 0;
  v7 = a2;
  v5(a2, v6);

  sub_1DF6B2194(a2, v6);
}

uint64_t sub_1DF6F0BB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_40Tm()
{
  v1 = *(v0 + 32);
  if (v1 >> 60 != 15)
  {
    sub_1DF6B03FC(*(v0 + 24), v1);
  }

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_46Tm()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_53Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_1DF6F0D10(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_1DF6EBA30(a1, a2, *(v2 + 16));
}

unint64_t static HKSharingAuthorizationIdentifier.clinicalSharingIdentifiers.getter()
{
  v0 = *MEMORY[0x1E696BC40];
  v140 = *MEMORY[0x1E696BC38];
  v141 = v0;
  v1 = *MEMORY[0x1E696BCA0];
  v142 = *MEMORY[0x1E696BC98];
  v143 = v1;
  v2 = *MEMORY[0x1E696BD50];
  v144 = *MEMORY[0x1E696BD30];
  v145 = v2;
  v3 = *MEMORY[0x1E696BDC8];
  v146 = *MEMORY[0x1E696BD78];
  v147 = v3;
  v4 = *MEMORY[0x1E696BDF0];
  v148 = *MEMORY[0x1E696BC80];
  v149 = v4;
  v100 = *MEMORY[0x1E696BE18];
  v150 = *MEMORY[0x1E696BE10];
  v151 = v100;
  v98 = *MEMORY[0x1E696BDB8];
  v152 = *MEMORY[0x1E696BE00];
  v153 = v98;
  v102 = *MEMORY[0x1E696BDB0];
  v154 = *MEMORY[0x1E696BDC0];
  v155 = v102;
  v103 = *MEMORY[0x1E696BC68];
  v156 = *MEMORY[0x1E696BDF8];
  v157 = v103;
  v139[0] = MEMORY[0x1E69E7CC0];
  v5 = v140;
  v6 = v0;
  v7 = v142;
  v8 = v1;
  v9 = v144;
  v10 = v2;
  v11 = v146;
  v12 = v3;
  v13 = v148;
  v14 = v4;
  v15 = v150;
  v16 = v100;
  v17 = v152;
  v18 = v98;
  v19 = v154;
  v20 = v102;
  v21 = v156;
  v22 = v103;
  sub_1DF6F6C1C();
  sub_1DF69EF80(0, &qword_1ECE4DCB0, 0x1E696C370);
  for (i = 4; i != 22; ++i)
  {
    MEMORY[0x1E12DBCD0](v139[i + 1]);
    sub_1DF6F6BEC();
    v24 = *(v139[0] + 16);
    sub_1DF6F6C2C();
    sub_1DF6F6C3C();
    sub_1DF6F6BFC();
  }

  type metadata accessor for HKQuantityTypeIdentifier(0);
  swift_arrayDestroy();
  v25 = *MEMORY[0x1E696B550];
  v106 = *MEMORY[0x1E696B548];
  v107 = v25;
  v26 = *MEMORY[0x1E696B570];
  v108 = *MEMORY[0x1E696B558];
  v109 = v26;
  v27 = *MEMORY[0x1E696B580];
  v110 = *MEMORY[0x1E696B578];
  v111 = v27;
  v88 = *MEMORY[0x1E696B590];
  v112 = *MEMORY[0x1E696B588];
  v113 = v88;
  v28 = *MEMORY[0x1E696B5A0];
  v114 = *MEMORY[0x1E696B598];
  v115 = v28;
  v90 = *MEMORY[0x1E696B5B8];
  v116 = *MEMORY[0x1E696B5A8];
  v117 = v90;
  v89 = *MEMORY[0x1E696B5D0];
  v118 = *MEMORY[0x1E696B5C0];
  v87 = v118;
  v119 = v89;
  v91 = *MEMORY[0x1E696B5E8];
  v120 = *MEMORY[0x1E696B5E0];
  v121 = v91;
  v93 = *MEMORY[0x1E696B608];
  v122 = *MEMORY[0x1E696B600];
  v123 = v93;
  v92 = *MEMORY[0x1E696B628];
  v124 = *MEMORY[0x1E696B618];
  v125 = v92;
  v94 = *MEMORY[0x1E696B638];
  v126 = *MEMORY[0x1E696B630];
  v127 = v94;
  v96 = *MEMORY[0x1E696B650];
  v128 = *MEMORY[0x1E696B640];
  v129 = v96;
  v95 = *MEMORY[0x1E696B660];
  v130 = *MEMORY[0x1E696B658];
  v131 = v95;
  v97 = *MEMORY[0x1E696B678];
  v132 = *MEMORY[0x1E696B668];
  v133 = v97;
  v101 = *MEMORY[0x1E696B698];
  v134 = *MEMORY[0x1E696B690];
  v135 = v101;
  v99 = *MEMORY[0x1E696B6B0];
  v136 = *MEMORY[0x1E696B6A8];
  v137 = v99;
  v138 = *MEMORY[0x1E696B568];
  v104 = v139[0];
  v139[0] = MEMORY[0x1E69E7CC0];
  v29 = v106;
  v30 = v25;
  v31 = v108;
  v32 = v26;
  v33 = v110;
  v34 = v27;
  v35 = v112;
  v36 = v88;
  v37 = v114;
  v38 = v28;
  v39 = v116;
  v40 = v90;
  v41 = v118;
  v42 = v89;
  v43 = v120;
  v44 = v91;
  v45 = v122;
  v46 = v93;
  v47 = v124;
  v48 = v92;
  v49 = v126;
  v50 = v94;
  v51 = v128;
  v52 = v96;
  v53 = v130;
  v54 = v95;
  v55 = v132;
  v56 = v97;
  v57 = v134;
  v58 = v101;
  v59 = v136;
  v60 = v99;
  v61 = v138;
  sub_1DF6F6C1C();
  sub_1DF69EF80(0, &qword_1ECE4DCC0, 0x1E696BF90);
  for (j = 32; j != 296; j += 8)
  {
    MEMORY[0x1E12DBCB0](*&v105[j]);
    sub_1DF6F6BEC();
    v63 = *(v139[0] + 16);
    sub_1DF6F6C2C();
    sub_1DF6F6C3C();
    sub_1DF6F6BFC();
  }

  type metadata accessor for HKCategoryTypeIdentifier(0);
  swift_arrayDestroy();
  v64 = v139[0];
  sub_1DF6B9BF4();
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1DF6FC5A0;
  sub_1DF69EF80(0, &qword_1ECE4DFB0, 0x1E696BFD8);
  *(v65 + 32) = MEMORY[0x1E12DBCC0](*MEMORY[0x1E696B6F8]);
  *(v65 + 40) = MEMORY[0x1E12DBCC0](*MEMORY[0x1E696B700]);
  *(v65 + 48) = MEMORY[0x1E12DBCC0](*MEMORY[0x1E696B708]);
  *(v65 + 56) = MEMORY[0x1E12DBCC0](*MEMORY[0x1E696B710]);
  if ((v104 & 0x8000000000000000) != 0 || (v104 & 0x4000000000000000) != 0)
  {
    sub_1DF69EF80(0, &qword_1EDC03EC8, 0x1E696C2E0);

    v66 = sub_1DF6F6CEC();
  }

  else
  {

    sub_1DF6F6E3C();
    sub_1DF69EF80(0, &qword_1EDC03EC8, 0x1E696C2E0);
    v66 = v104;
  }

  if ((v64 & 0x8000000000000000) != 0 || (v64 & 0x4000000000000000) != 0)
  {
    sub_1DF69EF80(0, &qword_1EDC03EC8, 0x1E696C2E0);

    v67 = sub_1DF6F6CEC();
  }

  else
  {

    sub_1DF6F6E3C();
    sub_1DF69EF80(0, &qword_1EDC03EC8, 0x1E696C2E0);
    v67 = v64;
  }

  sub_1DF6F182C(v67);
  sub_1DF6F182C(v65);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF6FC5B0;
  v69 = objc_opt_self();
  *(inited + 32) = [v69 activitySummaryType];
  *(inited + 40) = [v69 electrocardiogramType];
  sub_1DF6F182C(inited);
  v70 = v66;
  if (v66 >> 62)
  {
    v71 = sub_1DF6F6A8C();
    if (v71)
    {
      goto LABEL_13;
    }

LABEL_23:

    inited = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

  v71 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v71)
  {
    goto LABEL_23;
  }

LABEL_13:
  v139[0] = MEMORY[0x1E69E7CC0];
  v72 = v139;
  sub_1DF6C3948(0, v71 & ~(v71 >> 63), 0);
  if (v71 < 0)
  {
    __break(1u);
LABEL_37:
    inited = sub_1DF6B4F68(0, *(inited + 16) + 1, 1, inited);
    goto LABEL_26;
  }

  v73 = 0;
  inited = v139[0];
  do
  {
    if ((v70 & 0xC000000000000001) != 0)
    {
      v74 = MEMORY[0x1E12DBF80](v73, v70);
    }

    else
    {
      v74 = *(v70 + 8 * v73 + 32);
    }

    v139[0] = inited;
    v76 = *(inited + 16);
    v75 = *(inited + 24);
    if (v76 >= v75 >> 1)
    {
      v78 = v74;
      sub_1DF6C3948((v75 > 1), v76 + 1, 1);
      v74 = v78;
      inited = v139[0];
    }

    *(inited + 16) = v76 + 1;
    v77 = inited + 56 * v76;
    *(v77 + 32) = v74;
    ++v73;
    *(v77 + 40) = 0u;
    *(v77 + 56) = 0u;
    *(v77 + 65) = 0u;
  }

  while (v71 != v73);

LABEL_24:
  v79 = [v69 correlationTypeForIdentifier_];
  if (!v79)
  {
    goto LABEL_29;
  }

  v72 = v79;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_26:
  v81 = *(inited + 16);
  v80 = *(inited + 24);
  if (v81 >= v80 >> 1)
  {
    inited = sub_1DF6B4F68((v80 > 1), v81 + 1, 1, inited);
  }

  *(inited + 16) = v81 + 1;
  v82 = inited + 56 * v81;
  *(v82 + 32) = v72;
  *(v82 + 40) = 0u;
  *(v82 + 56) = 0u;
  *(v82 + 65) = 0u;
LABEL_29:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    inited = sub_1DF6B4F68(0, *(inited + 16) + 1, 1, inited);
  }

  v84 = *(inited + 16);
  v83 = *(inited + 24);
  if (v84 >= v83 >> 1)
  {
    inited = sub_1DF6B4F68((v83 > 1), v84 + 1, 1, inited);
  }

  *(inited + 16) = v84 + 1;
  v85 = inited + 56 * v84;
  *(v85 + 32) = 0u;
  *(v85 + 48) = 0u;
  *(v85 + 64) = 0u;
  *(v85 + 80) = 4;
  return inited;
}

uint64_t sub_1DF6F182C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1DF6F6A8C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_1DF6F6A8C();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1DF6F191C(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1DF6F19BC(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1DF6F191C(uint64_t a1)
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
    sub_1DF6F6A8C();
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
  result = sub_1DF6F6B7C();
  *v1 = result;
  return result;
}

uint64_t sub_1DF6F19BC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1DF6F6A8C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1DF6F6A8C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1DF6F1BC0();
          sub_1DF6F1C28();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1DF6F1B38(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1DF69EF80(0, &qword_1EDC03EC8, 0x1E696C2E0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1DF6F1B38(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E12DBF80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1DF6F1BB8;
  }

  __break(1u);
  return result;
}

void sub_1DF6F1BC0()
{
  if (!qword_1ECE4DFB8)
  {
    sub_1DF69EF80(255, &qword_1EDC03EC8, 0x1E696C2E0);
    v0 = sub_1DF6F663C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4DFB8);
    }
  }
}

unint64_t sub_1DF6F1C28()
{
  result = qword_1ECE4DFC0;
  if (!qword_1ECE4DFC0)
  {
    sub_1DF6F1BC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4DFC0);
  }

  return result;
}

id HKHealthStore.makeStatisticsCollectionPublisher(sampleType:predicate:options:anchorDate:intervalComponents:dateInterval:receivesUpdates:cacheSettings:debugIdentifier:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, void *a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = type metadata accessor for HKHealthStore.StatisticsCollectionPublisher.Configuration(0);
  v19 = v18[7];
  v20 = sub_1DF6F5A7C();
  (*(*(v20 - 8) + 16))(&a9[v19], a4, v20);
  v21 = v18[8];
  v22 = sub_1DF6F590C();
  (*(*(v22 - 8) + 16))(&a9[v21], a5, v22);
  sub_1DF6F1F08(a6, &a9[v18[9]], sub_1DF6F1E2C);
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  a9[v18[10]] = a7;
  *&a9[v18[11]] = a8;
  v23 = &a9[v18[12]];
  *v23 = a10;
  *(v23 + 1) = a11;
  *&a9[*(type metadata accessor for HKHealthStore.StatisticsCollectionPublisher(0) + 20)] = v11;
  v24 = a8;
  v25 = v11;

  v26 = a1;

  return a2;
}

void sub_1DF6F1E2C()
{
  if (!qword_1EDC04658)
  {
    sub_1DF6F584C();
    v0 = sub_1DF6F6A0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC04658);
    }
  }
}

id HKHealthStore.StatisticsCollectionPublisher.Output.updatedStatistics.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_1DF6F1F08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id HKHealthStore.StatisticsCollectionPublisher.healthStore.getter()
{
  v1 = *(v0 + *(type metadata accessor for HKHealthStore.StatisticsCollectionPublisher(0) + 20));

  return v1;
}

void sub_1DF6F1FA8(int a1, void *a2, id a3, void (*a4)(void **), uint64_t a5, char a6)
{
  if (a2)
  {
    v9 = 0;
    v10 = a2;
    v11 = a6 & 1;
    v7 = a2;
    a4(&v9);
  }

  else
  {
    if (!a3)
    {
      return;
    }

    v9 = a3;
    v10 = 0;
    v11 = 2;
    v8 = a3;
    a4(&v9);
  }

  sub_1DF6F29C4(v9, v10, v11);
}

void sub_1DF6F203C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(v11, a3, a4);
}

void sub_1DF6F20DC(int a1, void *a2, void *a3, id a4, void (*a5)(void **), uint64_t a6, char a7)
{
  if (a3)
  {
    v12 = a2;
    v13 = a3;
    v14 = a7 & 1;
    v9 = a2;
    v10 = a3;
    a5(&v12);
  }

  else
  {
    if (!a4)
    {
      return;
    }

    v12 = a4;
    v13 = 0;
    v14 = 2;
    v11 = a4;
    a5(&v12);
  }

  sub_1DF6F29C4(v12, v13, v14);
}

void sub_1DF6F218C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);

  v14 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v10(v14, a3, a4, a5);
}

uint64_t sub_1DF6F228C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DF6F2950(&qword_1EDC03B10);

  return HKQueryPublisher.receive<A>(subscriber:)(a1, a4, a2, v8, a3);
}

id _sSo13HKHealthStoreC18HealthKitAdditionsE29StatisticsCollectionPublisherV9makeQuery4with13outputHandlerSo7HKQueryCAE13ConfigurationV_yAC0nH6ResultOyAE6OutputVGYbctFZ_0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  sub_1DF6F1E2C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HKHealthStore.StatisticsCollectionPublisher.Configuration(0);
  v9 = *(a1 + v8[10]);
  v37 = ~v9;
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = v8[7];
  v14 = v8[8];
  v38 = v8;
  v15 = objc_allocWithZone(MEMORY[0x1E696C4D8]);
  v16 = sub_1DF6F5A4C();
  v17 = v36;
  v18 = sub_1DF6F58CC();
  v19 = [v15 initWithSampleType:v10 samplePredicate:v11 options:v12 anchorDate:v16 intervalComponents:v18];

  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = v17;
  v21 = (v9 & 1) == 0;
  *(v20 + 32) = v21;
  v44 = sub_1DF6F2994;
  v45 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1DF6F203C;
  v43 = &block_descriptor_21;
  v22 = _Block_copy(&aBlock);

  [v19 setInitialResultsHandler_];
  _Block_release(v22);
  if ((v37 & 1) == 0)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = v17;
    *(v23 + 32) = v21;
    v44 = sub_1DF6F29B8;
    v45 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v41 = 1107296256;
    v42 = sub_1DF6F218C;
    v43 = &block_descriptor_22;
    v24 = _Block_copy(&aBlock);

    [v19 setStatisticsUpdateHandler_];
    _Block_release(v24);
  }

  v25 = v38;
  v26 = v39;
  sub_1DF6F1F08(a1 + v38[9], v39, sub_1DF6F1E2C);
  v27 = sub_1DF6F584C();
  v28 = *(v27 - 8);
  v29 = 0;
  if ((*(v28 + 48))(v26, 1, v27) != 1)
  {
    v29 = sub_1DF6F580C();
    (*(v28 + 8))(v26, v27);
  }

  [v19 setDateInterval_];

  [v19 setCacheSettings_];
  v30 = (a1 + v25[12]);
  v31 = v30[1];
  if (v31)
  {
    v32 = *v30;
    v33 = v19;
    v31 = sub_1DF6F63BC();
  }

  else
  {
    v34 = v19;
  }

  [v19 setDebugIdentifier_];

  return v19;
}

uint64_t sub_1DF6F26BC(uint64_t a1)
{
  result = sub_1DF6F2950(qword_1EDC03B18);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DF6F2728()
{
  result = type metadata accessor for HKHealthStore.StatisticsCollectionPublisher.Configuration(319);
  if (v1 <= 0x3F)
  {
    result = sub_1DF69EF80(319, &qword_1EDC03818, 0x1E696C1C0);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1DF6F27F4()
{
  sub_1DF69EF80(319, &qword_1EDC03EB8, 0x1E696C3D0);
  if (v0 <= 0x3F)
  {
    sub_1DF6AE310(319, &qword_1EDC04778, &qword_1EDC04780, 0x1E696AE18);
    if (v1 <= 0x3F)
    {
      type metadata accessor for HKStatisticsOptions(319);
      if (v2 <= 0x3F)
      {
        sub_1DF6F5A7C();
        if (v3 <= 0x3F)
        {
          sub_1DF6F590C();
          if (v4 <= 0x3F)
          {
            sub_1DF6F1E2C();
            if (v5 <= 0x3F)
            {
              sub_1DF6AE310(319, &qword_1EDC03578, &qword_1EDC03580, 0x1E696C4D0);
              if (v6 <= 0x3F)
              {
                sub_1DF6BBED4();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DF6F2950(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HKHealthStore.StatisticsCollectionPublisher(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1DF6F29C4(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  else
  {
    if (a3 > 1u)
    {
      return;
    }

    v3 = a1;

    a1 = v3;
  }
}

uint64_t Calendar.dayIndex(for:)(uint64_t a1)
{
  v3 = sub_1DF6F5B5C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DF6F5A7C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  (*(v11 + 16))(&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  (*(v4 + 16))(v7, v1, v3);
  return sub_1DF6F625C();
}

uint64_t Calendar.numberOfDaysPerWeek.getter()
{
  v0 = sub_1DF6F5B3C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E6969AB0], v0);
  v5 = sub_1DF6F5AEC();
  v7 = v6;
  v9 = v8;
  (*(v1 + 8))(v4, v0);
  if (v9)
  {
    return 7;
  }

  result = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
    __break(1u);
  }

  return result;
}

uint64_t Calendar.numberOfDaysInMonth(containing:)()
{
  v0 = sub_1DF6F5B3C();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - v6;
  v8 = v1[13];
  v8(&v16 - v6, *MEMORY[0x1E6969A48], v0);
  v8(v5, *MEMORY[0x1E6969A78], v0);
  v9 = sub_1DF6F5B2C();
  v11 = v10;
  v13 = v12;
  v14 = v1[1];
  v14(v5, v0);
  v14(v7, v0);
  result = 0;
  if ((v13 & 1) == 0)
  {
    result = v11 - v9;
    if (__OFSUB__(v11, v9))
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t Calendar.endOfDay(_:)@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_1DF6F5B3C();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6F38C8(0, &qword_1EDC05240, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23 - v8;
  v10 = sub_1DF6F5A7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v24 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  v17 = *MEMORY[0x1E6969A48];
  v23 = v2[13];
  v23(v5, v17, v1);
  sub_1DF6F5B1C();
  v18 = v2[1];
  v25 = v1;
  v18(v5, v1);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1DF6C4E78(v9);
    return (*(v11 + 56))(v26, 1, 1, v10);
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    v20 = v24;
    sub_1DF6F5ADC();
    v21 = v25;
    v23(v5, *MEMORY[0x1E6969A98], v25);
    sub_1DF6F5B1C();
    v18(v5, v21);
    v22 = *(v11 + 8);
    v22(v20, v10);
    return (v22)(v16, v10);
  }
}

uint64_t Calendar.firstDateOfTheYear(for:)@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = MEMORY[0x1E69E6720];
  sub_1DF6F38C8(0, &qword_1EDC04638, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v26 = v24 - v5;
  sub_1DF6F38C8(0, &qword_1ECE4DFC8, MEMORY[0x1E6969AE8], v2);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v24 - v8;
  v27 = sub_1DF6F590C();
  v25 = *(v27 - 8);
  v10 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DF6F5B3C();
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x1EEE9AC00](v13);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v14[13];
  v18(v17, *MEMORY[0x1E6969A68], v13);
  v24[1] = sub_1DF6F5B4C();
  v19 = v14[1];
  v19(v17, v13);
  v18(v17, *MEMORY[0x1E6969A50], v13);
  sub_1DF6F5B4C();
  v19(v17, v13);
  v20 = sub_1DF6F5B5C();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v9, v1, v20);
  (*(v21 + 56))(v9, 0, 1, v20);
  v22 = sub_1DF6F5B6C();
  (*(*(v22 - 8) + 56))(v26, 1, 1, v22);
  sub_1DF6F58FC();
  sub_1DF6F58EC();
  return (*(v25 + 8))(v12, v27);
}

uint64_t Calendar.numberOfDaysBetweenInclusive(_:and:)()
{
  result = Calendar.comparisonNumberOfDaysBetweenInclusive(_:and:)();
  if (result < 0)
  {
    v1 = __OFSUB__(0, result);
    result = -result;
    if (v1)
    {
      goto LABEL_6;
    }
  }

  v1 = __OFADD__(result++, 1);
  if (v1)
  {
    __break(1u);
LABEL_6:
    __break(1u);
  }

  return result;
}

uint64_t Calendar.comparisonNumberOfDaysBetweenInclusive(_:and:)()
{
  v0 = sub_1DF6F590C();
  v23 = *(v0 - 8);
  v24 = v0;
  v1 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1DF6F5A7C();
  v4 = *(v22 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v22);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  sub_1DF6F5ADC();
  sub_1DF6F5ADC();
  sub_1DF6F38C8(0, &qword_1ECE4DFD0, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v11 = sub_1DF6F5B3C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1DF6FA080;
  (*(v12 + 104))(v15 + v14, *MEMORY[0x1E6969A48], v11);
  sub_1DF6F392C(v15);
  swift_setDeallocating();
  (*(v12 + 8))(v15 + v14, v11);
  swift_deallocClassInstance();
  sub_1DF6F5AFC();

  v16 = sub_1DF6F58DC();
  LOBYTE(v15) = v17;
  (*(v23 + 8))(v3, v24);
  v18 = *(v4 + 8);
  v19 = v22;
  v18(v8, v22);
  v18(v10, v19);
  if (v15)
  {
    return 0;
  }

  else
  {
    return v16;
  }
}

void sub_1DF6F38C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DF6F392C(uint64_t a1)
{
  v2 = sub_1DF6F5B3C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_1DF6F3C18();
    v10 = sub_1DF6F6AEC();
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
      sub_1DF6F3C98(&qword_1ECE4DFE0);
      v18 = sub_1DF6F62EC();
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
          sub_1DF6F3C98(&unk_1ECE4DFE8);
          v25 = sub_1DF6F63AC();
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

void sub_1DF6F3C18()
{
  if (!qword_1ECE4DFD8)
  {
    sub_1DF6F5B3C();
    sub_1DF6F3C98(&qword_1ECE4DFE0);
    v0 = sub_1DF6F6AFC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4DFD8);
    }
  }
}

uint64_t sub_1DF6F3C98(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DF6F5B3C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1DF6F3D6C(uint64_t a1, void (*a2)(uint64_t), void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v17 = a1;
  v11 = *(v5 + 16);
  os_unfair_lock_lock(v11 + 4);
  if (*(v5 + 25) == 1)
  {
    swift_beginAccess();
    v12 = *(v5 + 40);
    v13 = *(v5 + 48);
    swift_beginAccess();
    v14 = *(v5 + 56);
    *(v5 + 56) = a1;
    sub_1DF6B59B0(v12, v13);

    os_unfair_lock_unlock(v11 + 4);
    MEMORY[0x1EEE9AC00](v15);
    v16[2] = &v17;
    sub_1DF6F42A0(a2, v16, v12, v13, a3, a4, a5);
    sub_1DF6B5A20(v12, v13);
  }

  else
  {

    os_unfair_lock_unlock(v11 + 4);
  }
}

void sub_1DF6F3ECC(void *a1, char a2)
{
  v12 = a1;
  v13 = a2;
  v5 = *(v2 + 16);
  os_unfair_lock_lock(v5 + 4);
  if (*(v2 + 25) == 1)
  {
    swift_beginAccess();
    v6 = *(v2 + 32);
    v7 = *(v2 + 40);
    swift_beginAccess();
    v8 = *(v2 + 48);
    *(v2 + 48) = a1;
    v9 = *(v2 + 56);
    *(v2 + 56) = a2;
    sub_1DF6B59B0(v6, v7);
    sub_1DF6F4D38(a1, a2);
    sub_1DF6F4D5C(v8, v9);
    os_unfair_lock_unlock(v5 + 4);
    MEMORY[0x1EEE9AC00](v10);
    v11[2] = &v12;
    sub_1DF6F42A0(sub_1DF6F4D74, v11, v6, v7, sub_1DF6F4DE4, &qword_1ECE4E070, sub_1DF6F4DE4);
    sub_1DF6B5A20(v6, v7);
  }

  else
  {

    os_unfair_lock_unlock(v5 + 4);
  }
}

uint64_t sub_1DF6F405C()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 64);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    v5 = *(v0 + 64);

    do
    {
      sub_1DF6B5934(v4, v11);
      v6 = v11[4];
      __swift_project_boxed_opaque_existential_0(v11, v11[3]);
      v7 = *(v6 + 8);
      sub_1DF6F5EAC();
      __swift_destroy_boxed_opaque_existential_1(v11);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  v8 = *(v1 + 16);

  sub_1DF6B5A20(*(v1 + 32), *(v1 + 40));
  sub_1DF6F4D5C(*(v1 + 48), *(v1 + 56));
  v9 = *(v1 + 64);

  return v1;
}

uint64_t sub_1DF6F4134()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 64);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    v5 = *(v0 + 64);

    do
    {
      sub_1DF6B5934(v4, v12);
      v6 = v12[4];
      __swift_project_boxed_opaque_existential_0(v12, v12[3]);
      v7 = *(v6 + 8);
      sub_1DF6F5EAC();
      __swift_destroy_boxed_opaque_existential_1(v12);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  v8 = *(v1 + 16);

  sub_1DF6C74E8(*(v1 + 32));
  sub_1DF6B5A20(*(v1 + 40), *(v1 + 48));
  v9 = *(v1 + 56);

  v10 = *(v1 + 64);

  return v1;
}

void (*sub_1DF6F42A0(void (*result)(uint64_t), uint64_t a2, uint64_t a3, char a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t)))(uint64_t)
{
  v8 = v7;
  v9 = a3;
  v25 = result;
  if (!a4)
  {
    return (result)(a3);
  }

  if (a4 == 1)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1DF6F6A7C();
      a5(0);
      sub_1DF6A02A0(a6, a7);
      result = sub_1DF6F677C();
      v9 = v26;
      v13 = v27;
      v14 = v28;
      v15 = v29;
      v16 = v30;
    }

    else
    {
      v17 = -1 << *(a3 + 32);
      v13 = a3 + 56;
      v14 = ~v17;
      v18 = -v17;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      else
      {
        v19 = -1;
      }

      v16 = v19 & *(a3 + 56);

      v15 = 0;
    }

    if (v9 < 0)
    {
      goto LABEL_17;
    }

LABEL_11:
    v20 = v15;
    v21 = v16;
    if (v16)
    {
LABEL_15:
      v22 = (v21 - 1) & v21;
      v23 = *(*(v9 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v21)))));

      if (v23)
      {
        while (1)
        {
          v25(v23);
          if (v8)
          {
            break;
          }

          v16 = v22;
          if ((v9 & 0x8000000000000000) == 0)
          {
            goto LABEL_11;
          }

LABEL_17:
          if (sub_1DF6F6AAC())
          {
            a5(0);
            swift_dynamicCast();
            v23 = v31;
            v22 = v16;
            if (v31)
            {
              continue;
            }
          }

          return sub_1DF6B1D20();
        }

        sub_1DF6B1D20();
      }

      else
      {
        return sub_1DF6B1D20();
      }
    }

    else
    {
      while (1)
      {
        v15 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v15 >= ((v14 + 64) >> 6))
        {
          return sub_1DF6B1D20();
        }

        v21 = *(v13 + 8 * v15);
        ++v20;
        if (v21)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1DF6F4510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[10] = a1;
  v6[11] = 0;
  v6[12] = 0;
  v6[13] = a2;
  v6[14] = a3;
  return sub_1DF6A0228(0, 255);
}

uint64_t HKHealthStore._cloudSyncStatusPublisher<A>(test_observerHook:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CloudSyncStatusPublisherImpl();
  sub_1DF69F164();
  v15[0] = v5;
  swift_getWitnessTable();
  v6 = sub_1DF6F5DFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v15 - v9;
  v11 = swift_allocObject();
  v11[10] = v2;
  v11[11] = 0;
  v11[12] = 0;
  v11[13] = a1;
  v11[14] = a2;
  v15[1] = sub_1DF6A0228(0, 255);
  v12 = v2;
  sub_1DF6F4744(a1);
  sub_1DF6F5FFC();

  swift_getWitnessTable();
  v13 = sub_1DF6F5FEC();
  (*(v7 + 8))(v10, v6);
  return v13;
}

uint64_t sub_1DF6F4744(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1DF6F4754()
{
  if (!v0[11])
  {
    v1 = v0;
    v2 = *(*v0 + 416);
    type metadata accessor for CloudSyncStatusPublisherImpl.CloudDelegate();

    v3 = sub_1DF6F4C54();

    v4 = v1[12];
    v1[12] = v3;
    v10 = v3;

    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithHealthStore:v1[10] delegate:v10];
    v6 = v5;
    v7 = v1[13];
    if (v7)
    {
      v8 = v1[14];
      v7(v5);
    }

    v9 = v1[11];
    v1[11] = v6;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    if (v1[11])
    {
      [swift_unknownObjectRetain() startObservingSyncStatus];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }
}

void sub_1DF6F48A8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1DF6F4C90(v7, 0);
}

void sub_1DF6F4924(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v8 = a4;
  v7 = a1;
  sub_1DF6F4C90(v8, 1);
}

id sub_1DF6F49CC()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v3.receiver = v0;
  v3.super_class = type metadata accessor for CloudSyncStatusPublisherImpl.CloudDelegate();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1DF6F4A38()
{
  v1 = *(v0 + 88);
  swift_unknownObjectRelease();

  v2 = *(v0 + 104);
  v3 = *(v0 + 112);

  return sub_1DF6F4F04(v2);
}

uint64_t sub_1DF6F4A78()
{
  v0 = sub_1DF6F405C();

  v1 = *(v0 + 88);
  swift_unknownObjectRelease();

  v2 = *(v0 + 112);
  sub_1DF6F4F04(*(v0 + 104));
  return v0;
}

uint64_t sub_1DF6F4AC0()
{
  sub_1DF6F4A78();

  return swift_deallocClassInstance();
}

void sub_1DF6F4AF8(uint64_t a1, char *a2)
{
  v4 = *a2;
  v3 = *(v2 + 416);
  sub_1DF6F4ED4();
}

uint64_t sub_1DF6F4B84()
{

  return swift_deallocClassInstance();
}

id sub_1DF6F4BBC()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  swift_weakInit();
  swift_weakAssign();
  v3 = *((v2 & v1) + 0x50);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for CloudSyncStatusPublisherImpl.CloudDelegate();
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1DF6F4C54()
{
  v1 = *(v0 + 80);
  v2 = objc_allocWithZone(type metadata accessor for CloudSyncStatusPublisherImpl.CloudDelegate());
  return sub_1DF6F4BBC();
}

uint64_t sub_1DF6F4C90(void *a1, char a2)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1DF6F3ECC(a1, a2);
  }

  return result;
}

id sub_1DF6F4D38(id a1, char a2)
{
  if (a2 != -1)
  {
    return sub_1DF6F4D50(a1);
  }

  return a1;
}

void sub_1DF6F4D5C(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_1DF6B1F38(a1);
  }
}

uint64_t sub_1DF6F4D74(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  v5 = v3;
  v6 = v2;
  return (*(*a1 + 104))(&v5);
}

void sub_1DF6F4DE4()
{
  if (!qword_1ECE4E060)
  {
    sub_1DF6F4E4C();
    v0 = type metadata accessor for StreamConduitBase();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4E060);
    }
  }
}

void sub_1DF6F4E4C()
{
  if (!qword_1ECE4E068)
  {
    sub_1DF69F164();
    v0 = sub_1DF6F6A0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4E068);
    }
  }
}

uint64_t sub_1DF6F4F04(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1DF6F4F14()
{
  if (!qword_1ECE4E078)
  {
    sub_1DF6F4FA4(255, &qword_1ECE4E080, &qword_1EDC03F10, &qword_1EDC03610, 0x1E696C418);
    sub_1DF69F1E4();
    v0 = type metadata accessor for StreamConduitBase();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4E078);
    }
  }
}

void sub_1DF6F4FA4(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  if (!*a2)
  {
    sub_1DF69EF18(255, a3, a4, a5, MEMORY[0x1E69E62F8]);
    PublisherResult = type metadata accessor for QueryPublisherResult();
    if (!v7)
    {
      atomic_store(PublisherResult, a2);
    }
  }
}

void sub_1DF6F5014()
{
  if (!qword_1ECE4E090)
  {
    sub_1DF6F4FA4(255, &qword_1ECE4E098, &qword_1EDC03F30, &qword_1EDC03800, 0x1E696C400);
    sub_1DF69F1E4();
    v0 = type metadata accessor for StreamConduitBase();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4E090);
    }
  }
}

uint64_t static DayIndex.+/- infix(_:_:)@<X0>(char *a1@<X8>)
{
  v28 = a1;
  sub_1DF6F53EC();
  v27 = v1;
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v27 - v6;
  v8 = sub_1DF6F627C();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v27 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v27 - v17;
  sub_1DF6F624C();
  sub_1DF6F622C();
  sub_1DF6F626C();
  v19 = v9[1];
  v19(v13, v8);
  sub_1DF6C94F0();
  result = sub_1DF6F635C();
  if (result)
  {
    v21 = v9[4];
    v21(v7, v18, v8);
    v22 = v27;
    v21(&v7[*(v27 + 48)], v16, v8);
    sub_1DF6F5454(v7, v5);
    v23 = *(v22 + 48);
    v24 = v28;
    v21(v28, v5, v8);
    v19(&v5[v23], v8);
    sub_1DF6F54B8(v7, v5);
    v25 = *(v22 + 48);
    sub_1DF6F551C();
    v21(&v24[*(v26 + 36)], &v5[v25], v8);
    return (v19)(v5, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DF6F53EC()
{
  if (!qword_1ECE4E0A8)
  {
    sub_1DF6F627C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECE4E0A8);
    }
  }
}

uint64_t sub_1DF6F5454(uint64_t a1, uint64_t a2)
{
  sub_1DF6F53EC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF6F54B8(uint64_t a1, uint64_t a2)
{
  sub_1DF6F53EC();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1DF6F551C()
{
  if (!qword_1ECE4E0B0)
  {
    sub_1DF6F627C();
    sub_1DF6C94F0();
    v0 = sub_1DF6F681C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4E0B0);
    }
  }
}

uint64_t static Range<>.+/- infix(_:_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v28 = a2;
  sub_1DF6F53EC();
  v4 = v3;
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - v9;
  v11 = sub_1DF6F627C();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v27 - v17;
  sub_1DF6F624C();
  sub_1DF6F551C();
  v20 = v19;
  v21 = a1 + *(v19 + 36);
  sub_1DF6F622C();
  sub_1DF6C94F0();
  if (sub_1DF6F635C())
  {
    v22 = v12[4];
    v22(v10, v18, v11);
    v22(&v10[*(v4 + 48)], v16, v11);
    sub_1DF6F5454(v10, v8);
    v23 = *(v4 + 48);
    v27 = v20;
    v24 = v28;
    v22(v28, v8, v11);
    v25 = v12[1];
    v25(&v8[v23], v11);
    sub_1DF6F54B8(v10, v8);
    v22(&v24[*(v27 + 36)], &v8[*(v4 + 48)], v11);
    return (v25)(v8, v11);
  }

  else
  {
    __break(1u);
    return sub_1DF6F57EC();
  }
}