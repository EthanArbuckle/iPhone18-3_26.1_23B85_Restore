int main(int argc, const char **argv, const char **envp)
{
  v3 = *(*(sub_100001560() - 8) + 64);
  __chkstk_darwin();
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000015C0();
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  __chkstk_darwin();
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(sub_1000015B0() - 8) + 64);
  __chkstk_darwin();
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(sub_100001580() - 8) + 64);
  __chkstk_darwin();
  v14 = sub_100001470();
  sub_100001410();
  sub_100001460();
  sub_100001450();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  qword_100008048 = sub_100001420();
  sub_100001440();
  v36[4] = v12;
  v37 = v9;
  v17 = v39;
  v38 = v5;
  sub_1000012A4();
  v36[3] = sub_100001430();
  v18 = sub_100001360(0, &qword_100008018, OS_dispatch_queue_ptr);
  v36[1] = "lugins from disk: ";
  v36[2] = v18;
  sub_100001570();
  v40 = &_swiftEmptyArrayStorage;
  sub_1000013A8(&qword_100008020, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100001308();
  sub_1000013A8(&qword_100008030, sub_100001308);
  sub_1000015E0();
  (*(v17 + 104))(v37, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v6);
  sub_1000015D0();
  v19 = sub_100001510();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  qword_100008050 = sub_100001500();
  sub_100001400();
  qword_100008058 = sub_1000013F0();
  v22 = [objc_allocWithZone(HKHealthStore) init];
  qword_100008060 = v22;
  v23 = sub_1000014D0();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = v22;
  qword_100008068 = sub_1000014C0();
  sub_100001490();
  qword_100008070 = sub_100001480();
  sub_1000014F0();
  qword_100008078 = sub_1000014E0();
  v27 = [objc_allocWithZone(HKProfileStore) initWithHealthStore:qword_100008060];
  v41 = sub_100001360(0, &qword_100008038, HKProfileStore_ptr);
  v42 = &protocol witness table for HKProfileStore;
  v40 = v27;
  v28 = qword_100008058;

  sub_100001550();
  [objc_allocWithZone(HKHealthStore) init];
  v29 = sub_1000014B0();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  qword_100008080 = sub_1000014A0();
  qword_100008088 = sub_100001430();
  sub_1000013A8(&qword_100008040, &type metadata accessor for HealthPlatformContextProvider);
  v32 = sub_100001540();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();

  qword_100008090 = sub_100001520();
  result = sub_100001530();
  __break(1u);
  return result;
}

unint64_t sub_1000012A4()
{
  result = qword_100008010;
  if (!qword_100008010)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100008010);
  }

  return result;
}

void sub_100001308()
{
  if (!qword_100008028)
  {
    sub_1000015B0();
    v0 = sub_1000015A0();
    if (!v1)
    {
      atomic_store(v0, &qword_100008028);
    }
  }
}

uint64_t sub_100001360(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1000013A8(unint64_t *a1, void (*a2)(uint64_t))
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