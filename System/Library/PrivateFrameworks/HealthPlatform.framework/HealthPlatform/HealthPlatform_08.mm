uint64_t sub_2284907FC()
{
  v2 = *(v0 + OBJC_IVAR____TtC14HealthPlatform33DaemonHealthExperienceStoreOracle__lastPolledHealthKitDatabaseIdentifier + 8);
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform33DaemonHealthExperienceStoreOracle__lastPolledHealthKitDatabaseIdentifier + 16);
  v3 = *(v0 + OBJC_IVAR____TtC14HealthPlatform33DaemonHealthExperienceStoreOracle__lastPolledHealthKitDatabaseIdentifier + 32);
}

id DaemonHealthExperienceStoreOracle.__deallocating_deinit()
{
  sub_2284549F0();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DaemonHealthExperienceStoreOracle();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void DaemonHealthExperienceStoreOracle.debuggingInfoRequested(note:)()
{
  ObjectType = swift_getObjectType();
  if (qword_280DEEBC8 != -1)
  {
    swift_once();
  }

  v1 = sub_22855CABC();
  __swift_project_value_buffer(v1, qword_280DEEBD0);
  oslog = sub_22855CA8C();
  v2 = sub_22855D6AC();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9[0] = v4;
    v9[1] = ObjectType;
    *v3 = 136315138;
    swift_getMetatypeMetadata();
    v5 = sub_22855D1BC();
    v7 = sub_2283F8938(v5, v6, v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_2283ED000, oslog, v2, "[%s]: debuggingInfoRequested()", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x22AABAD40](v4, -1, -1);
    MEMORY[0x22AABAD40](v3, -1, -1);
  }

  else
  {
  }
}

char *sub_228490BB8(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v22[3] = type metadata accessor for DaemonHealthExperienceStore();
  v22[4] = &protocol witness table for DiskHealthExperienceStore;
  v22[0] = a1;
  v5 = OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_notificationCenter;
  *&a2[v5] = [objc_allocWithZone(MEMORY[0x277CCAB98]) init];
  v6 = OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_protectedState;
  sub_228491194();
  v7 = swift_allocObject();
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0;
  *&a2[v6] = v7;
  sub_2283F9B10(v22, &a2[OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_healthExperienceStore]);
  v21.receiver = a2;
  v21.super_class = type metadata accessor for HealthExperienceStoreOracle();
  v8 = objc_msgSendSuper2(&v21, sel_init);
  v9 = *&v8[OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_protectedState];
  v10 = v8;
  os_unfair_lock_lock(v9 + 16);
  sub_2284911F4(&v9[4], v20);
  os_unfair_lock_unlock(v9 + 16);
  if (LOBYTE(v20[0]) == 1)
  {
    sub_2284FDA94();
  }

  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v11 = sub_22855CABC();
  __swift_project_value_buffer(v11, qword_280DEEC98);
  v12 = sub_22855CA8C();
  v13 = sub_22855D66C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20[0] = v15;
    *v14 = 136315138;
    v16 = sub_2284FF8D0(ObjectType);
    v18 = sub_2283F8938(v16, v17, v20);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_2283ED000, v12, v13, "[%s] init()", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AABAD40](v15, -1, -1);
    MEMORY[0x22AABAD40](v14, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0(v22);
  return v10;
}

id sub_228490E5C()
{
  v14[1] = *MEMORY[0x277D85DE8];
  v0 = sub_22855C1DC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v6 = [objc_allocWithZone(MEMORY[0x277CCD2C0]) initWithHealthStore_];

  v14[0] = 0;
  v7 = [v6 healthDatabaseIdentifierWithError_];
  v8 = v14[0];
  if (v7)
  {
    v9 = v7;
    sub_22855C1BC();
    v10 = v8;

    v8 = sub_22855C17C();
    (*(v1 + 8))(v4, v0);
  }

  else
  {
    v11 = v14[0];
    sub_22855BF3C();

    swift_willThrow();
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t sub_228491018()
{
  result = qword_280DED0B0;
  if (!qword_280DED0B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DED0B0);
  }

  return result;
}

uint64_t sub_228491064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2284910CC()
{
  if (!qword_280DEC178)
  {
    sub_228476B98(255, &qword_280DEE7D0);
    v0 = type metadata accessor for UserDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_280DEC178);
    }
  }
}

uint64_t sub_228491134(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_228491194()
{
  if (!qword_280DE91C8)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22855DCFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE91C8);
    }
  }
}

unint64_t sub_22849123C()
{
  type metadata accessor for HealthPluginHostNotificationBuffer();
  v0 = swift_allocObject();
  result = sub_22847CE50(MEMORY[0x277D84F90]);
  *(v0 + 16) = 0;
  *(v0 + 24) = result;
  off_280DEC798 = v0;
  return result;
}

uint64_t static HealthPluginHostNotificationBuffer.shared.getter()
{
  if (qword_280DEC790 != -1)
  {
    swift_once();
  }
}

void sub_2284912E4()
{
  v1 = sub_22855BE5C();
  v2 = sub_22855D1AC();
  v4 = v3;

  v5 = sub_22855BE7C();
  if (!v5)
  {
    v5 = sub_22847CF80(MEMORY[0x277D84F90]);
  }

  v6 = v5;
  os_unfair_lock_lock((v0 + 16));
  v7 = *(v0 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + 24);
  *(v0 + 24) = 0x8000000000000000;
  sub_22845B318(v6, v2, v4, isUniquelyReferenced_nonNull_native);

  *(v0 + 24) = v9;

  os_unfair_lock_unlock((v0 + 16));
}

uint64_t sub_2284913AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  os_unfair_lock_lock((v2 + 16));
  v6 = sub_22855D1AC();
  v8 = *(v2 + 24);
  if (!*(v8 + 16))
  {

    goto LABEL_6;
  }

  v9 = sub_2283F6D18(v6, v7);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_6:
    os_unfair_lock_unlock(v3 + 4);
    goto LABEL_7;
  }

  v12 = *(*(v8 + 56) + 8 * v9);

  os_unfair_lock_unlock(v3 + 4);
  if (v12)
  {
    v13 = a1;
    sub_22855BE4C();
    v14 = 0;
    goto LABEL_8;
  }

LABEL_7:
  v14 = 1;
LABEL_8:
  v15 = sub_22855BE9C();
  v16 = *(*(v15 - 8) + 56);

  return v16(a2, v14, 1, v15);
}

void sub_2284914CC()
{
  os_unfair_lock_lock((v0 + 16));
  v1 = *(v0 + 24);

  *(v0 + 24) = MEMORY[0x277D84F98];

  os_unfair_lock_unlock((v0 + 16));
}

uint64_t HealthPluginHostNotificationBuffer.__deallocating_deinit()
{
  sub_228491568(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_228491568(uint64_t a1)
{
  sub_2284915C4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2284915C4()
{
  if (!qword_280DE96D8)
  {
    sub_22844C220();
    v0 = sub_22855D12C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE96D8);
    }
  }
}

void sub_2284916D4()
{
  if (!qword_27D83FA38)
  {
    sub_2284915C4();
    v0 = sub_22855C34C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83FA38);
    }
  }
}

void *sub_228491868(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  sub_22855C32C();
  sub_228439BBC();
  sub_22840A70C();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_228560570;
  v8 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v9 = sub_22840A7C8();
  *(v7 + 64) = v9;
  *(v7 + 32) = 0x696669746E656469;
  *(v7 + 40) = 0xEA00000000007265;
  v10 = sub_22855C32C();
  *(v7 + 96) = v8;
  *(v7 + 104) = v9;
  *(v7 + 72) = v10;
  *(v7 + 80) = v11;
  v12 = sub_22855D62C();
  v13 = sub_22843A720(a2, v12, a3);
  if (v3)
  {
  }

  else
  {
    v4 = v13;
    if (!v13)
    {
      v14 = objc_opt_self();
      v15 = sub_22855D17C();
      v16 = [v14 insertNewObjectForEntityForName:v15 inManagedObjectContext:a2];

      type metadata accessor for MeasureIdentifierManagedObject();
      v4 = swift_dynamicCastClassUnconditional();
    }

    v17 = sub_22855D17C();

    [v4 setIdentifier_];
  }

  return v4;
}

uint64_t static DiskHealthExperienceStore.storeVersion.getter()
{
  if (qword_280DEE228 != -1)
  {
    swift_once();
  }

  v0 = xmmword_280DEE230;

  return v0;
}

id DataType.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id DataType.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for DataType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id DataType.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void NSManagedObjectContext.markObjectsForDeletion<A>(entity:predicate:)(uint64_t a1, uint64_t a2)
{
  v3 = [swift_getObjCClassFromMetadata() fetchRequest];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    [v4 setPredicate_];
    [v5 setIncludesPropertyValues_];
    v6 = sub_22855D97C();
    MEMORY[0x28223BE20](v6);
    sub_22855D47C();
    swift_getWitnessTable();
    sub_22855D32C();
  }

  else
  {

    sub_22855DEDC();
    __break(1u);
  }
}

id NSManagedObjectContext.makeAllKeywordsFetchedResultsController()()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v2 = sub_22855D17C();
  v3 = [v1 initWithKey:v2 ascending:1];

  v4 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v5 = sub_22855D17C();
  v6 = [v4 initWithEntityName_];

  sub_2284661F0();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_228560690;
  *(v7 + 32) = v3;
  v8 = v3;
  [v6 setPredicate_];
  sub_2283EF310(0, &unk_280DED180, 0x277CCAC98);
  v9 = sub_22855D39C();

  [v6 setSortDescriptors_];

  v10 = [objc_allocWithZone(MEMORY[0x277CBE430]) initWithFetchRequest:v6 managedObjectContext:v0 sectionNameKeyPath:0 cacheName:0];
  return v10;
}

id NSManagedObjectContext.makeKeywordsWithFeedItemsController()()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v3 = sub_22855D17C();
  v4 = [v2 initWithKey:v3 ascending:1];

  v5 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v6 = sub_22855D17C();
  v7 = [v5 initWithEntityName_];

  sub_2284661F0();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_228560690;
  *(v8 + 32) = v4;
  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  v9 = v4;
  v10 = sub_22855D62C();
  [v7 setPredicate_];
  sub_2283EF310(0, &unk_280DED180, 0x277CCAC98);
  v11 = sub_22855D39C();

  [v7 setSortDescriptors_];

  v12 = [objc_allocWithZone(MEMORY[0x277CBE430]) initWithFetchRequest:v7 managedObjectContext:v1 sectionNameKeyPath:0 cacheName:0];
  return v12;
}

id NSManagedObjectContext.makeFeedItemFetchedResultsController(forFeedItemIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = _s14HealthPlatform8FeedItemC12fetchRequestSo07NSFetchF0CyACGyFZ_0();
  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  sub_22840A70C();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_228560570;
  v8 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v9 = sub_22840A7C8();
  *(v7 + 32) = 0xD000000000000010;
  *(v7 + 40) = 0x800000022856DA90;
  *(v7 + 96) = v8;
  *(v7 + 104) = v9;
  *(v7 + 64) = v9;
  *(v7 + 72) = a1;
  *(v7 + 80) = a2;

  v10 = sub_22855D62C();
  [v6 setPredicate_];

  sub_2284661F0();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_228560690;
  v12 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v13 = sub_22855D17C();
  v14 = [v12 initWithKey:v13 ascending:1];

  *(v11 + 32) = v14;
  sub_2283EF310(0, &unk_280DED180, 0x277CCAC98);
  v15 = sub_22855D39C();

  [v6 setSortDescriptors_];

  v16 = [objc_allocWithZone(MEMORY[0x277CBE430]) initWithFetchRequest:v6 managedObjectContext:v3 sectionNameKeyPath:0 cacheName:0];
  return v16;
}

uint64_t NSManagedObjectContext.deleteEntity<A>(entity:predicates:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = [swift_getObjCClassFromMetadata() fetchRequest];
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    [v8 setIncludesPropertyValues_];
    if (a2)
    {
      sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
      v10 = sub_22855D39C();
      v11 = [objc_opt_self() orPredicateWithSubpredicates_];

      [v9 setPredicate_];
    }

    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v12 = sub_22855CABC();
    __swift_project_value_buffer(v12, qword_280DEEC98);
    v13 = sub_22855CA8C();
    v14 = sub_22855D66C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock[0] = v16;
      *v15 = 136315138;
      v17 = sub_22855E34C();
      v19 = sub_2283F8938(v17, v18, aBlock);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_2283ED000, v13, v14, "Attempting to delete %s from database", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x22AABAD40](v16, -1, -1);
      MEMORY[0x22AABAD40](v15, -1, -1);
    }

    v26 = 0;
    v20 = swift_allocObject();
    v20[2] = a3;
    v20[3] = &v26;
    v20[4] = v4;
    v20[5] = v9;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_228492F88;
    *(v21 + 24) = v20;
    aBlock[4] = sub_228466000;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228417B68;
    aBlock[3] = &block_descriptor_9;
    v22 = _Block_copy(aBlock);
    v23 = v4;
    v7 = v7;

    [v23 performBlockAndWait_];

    _Block_release(v22);
    LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

    if ((v23 & 1) == 0)
    {
    }

    __break(1u);
  }

  result = sub_22855DEDC();
  __break(1u);
  return result;
}

id sub_228492808(uint64_t *a1, void *a2)
{
  v16[3] = *MEMORY[0x277D85DE8];
  v4 = sub_22855D97C();
  v5 = *a1;
  *a1 = v4;

  if (sub_22855D44C())
  {
    v6 = 4;
    do
    {
      v7 = sub_22855D41C();
      sub_22855D3DC();
      if (v7)
      {
        v8 = *(v4 + 8 * v6);
      }

      else
      {
        v8 = sub_22855DC9C();
      }

      v9 = v8;
      v10 = v6 - 3;
      if (__OFADD__(v6 - 4, 1))
      {
        __break(1u);
      }

      [a2 deleteObject_];

      ++v6;
    }

    while (v10 != sub_22855D44C());
  }

  v16[0] = 0;
  v11 = [a2 save_];
  v12 = v16[0];
  if (v11)
  {
    v13 = *MEMORY[0x277D85DE8];

    return v12;
  }

  else
  {
    v15 = v16[0];
    sub_22855BF3C();

    swift_willThrow();
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    sub_22855DC6C();
    MEMORY[0x22AAB92A0](0xD000000000000068, 0x8000000228570740);
    sub_2283F9B94(0, &qword_280DECFE0);
    sub_22855DDDC();
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

uint64_t NSManagedObjectContext.fetchEntity<A>(entity:predicates:sortDescriptors:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  isEscapingClosureAtFileLocation = [swift_getObjCClassFromMetadata() fetchRequest];
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = v10;
  if (a2)
  {
    sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
    v12 = sub_22855D39C();
    v13 = [objc_opt_self() orPredicateWithSubpredicates_];

    [v11 setPredicate_];
  }

  if (a3)
  {
    sub_2283EF310(0, &unk_280DED180, 0x277CCAC98);
    a3 = sub_22855D39C();
  }

  [v11 setSortDescriptors_];

  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v14 = sub_22855CABC();
  __swift_project_value_buffer(v14, qword_280DEEC98);
  v15 = sub_22855CA8C();
  v16 = sub_22855D66C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    v19 = sub_22855E34C();
    v21 = sub_2283F8938(v19, v20, aBlock);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_2283ED000, v15, v16, "Attempting to fetch %s from database", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x22AABAD40](v18, -1, -1);
    MEMORY[0x22AABAD40](v17, -1, -1);
  }

  v30 = 0;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = &v30;
  v22[4] = v5;
  v22[5] = v11;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_228492F94;
  *(v23 + 24) = v22;
  aBlock[4] = sub_228492FA4;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228417B68;
  aBlock[3] = &block_descriptor_13;
  v24 = _Block_copy(aBlock);
  v25 = v5;
  v26 = isEscapingClosureAtFileLocation;

  [v25 performBlockAndWait_];
  _Block_release(v24);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_16:

    result = sub_22855DEDC();
    __break(1u);
    return result;
  }

  v27 = v30;
  if (v30)
  {
  }

  else
  {
    v27 = sub_22855D3FC();
  }

  return v27;
}

uint64_t sub_228492E74(uint64_t *a1)
{
  v2 = sub_22855D97C();
  v3 = *a1;
  *a1 = v2;
}

id sub_228492F88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  return sub_228492808(*(v0 + 24), *(v0 + 32));
}

uint64_t sub_228492F94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  return sub_228492E74(*(v0 + 24));
}

id sub_228492FAC(id result, void (*a2)(id *, id *), uint64_t a3, unint64_t a4)
{
  v13 = result;
  if (a4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; result = v10)
  {
    for (j = 0; ; ++j)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x22AAB9D20](j, a4);
      }

      else
      {
        if (j >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        result = *(a4 + 8 * j + 32);
      }

      v8 = result;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v12 = result;
      a2(&v13, &v12);

      if (v4)
      {
      }

      if (v9 == i)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v10 = result;
    i = sub_22855DB4C();
  }

  return result;
}

uint64_t sub_2284930D4(uint64_t result, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v17 = result;
  v5 = v4;
  v6 = *(a4 + 16);
  if (v6)
  {
    for (i = (a4 + 56); ; i += 4)
    {
      v10 = *(i - 1);
      v9 = *i;
      v11 = *(i - 2);
      v14[0] = *(i - 3);
      v14[1] = v11;
      v15 = v10;
      v16 = v9;

      sub_22842B3E0(v10, v9);
      a2(&v17, v14);
      v12 = v15;
      v13 = v16;

      sub_22842B38C(v12, v13);
      if (v5)
      {
        break;
      }

      if (!--v6)
      {
        return v17;
      }
    }
  }

  return result;
}

uint64_t sub_22849319C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for ProtectedNotificationContentState(0);
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_22849AEE0(a3 + v16 + v17 * v14, v13, type metadata accessor for ProtectedNotificationContentState);
      v18 = a1(v13);
      if (v3)
      {
        sub_22849C108(v13, type metadata accessor for ProtectedNotificationContentState);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_22849B298(v13, v25, type metadata accessor for ProtectedNotificationContentState);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2284275A0(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_2284275A0(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        result = sub_22849B298(v25, v15 + v16 + v21 * v17, type metadata accessor for ProtectedNotificationContentState);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_22849C108(v13, type metadata accessor for ProtectedNotificationContentState);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
LABEL_15:

    return v15;
  }

  return result;
}

uint64_t sub_228493428(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v23 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22855DB4C())
  {
    v8 = 0;
    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = v4 & 0xC000000000000001;
    v19 = v4;
    while (1)
    {
      if (v21)
      {
        v9 = MEMORY[0x22AAB9D20](v8, v4);
      }

      else
      {
        if (v8 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v22 = v9;
      v12 = a2;
      v13 = a1(&v22);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_22855DD1C();
        v14 = i;
        v15 = a1;
        v16 = a2;
        v17 = *(v23 + 16);
        sub_22855DD5C();
        a2 = v16;
        a1 = v15;
        i = v14;
        v4 = v19;
        sub_22855DD6C();
        sub_22855DD2C();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v23;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:

  return v12;
}

id sub_2284935D4()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CCD128]) initWithHealthStore_];
    v4 = *(v0 + 32);
    *(v0 + 32) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_22849367C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

uint64_t HealthAppNotificationContentStateManager.__allocating_init(healthStore:domain:)(void *a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v19 = a3;
  v17 = a1;
  v16 = sub_22855D81C();
  v4 = *(v16 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v16);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22855D7BC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_22855CFEC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  v20 = v3;
  swift_getMetatypeMetadata();
  sub_22855D1BC();
  sub_22855CFDC();
  v20 = MEMORY[0x277D84F90];
  sub_2283FA100(&unk_280DED140, 255, MEMORY[0x277D85230]);
  sub_2283FA404(0, &qword_280DED250, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_22846B7E8();
  sub_22855DA9C();
  (*(v4 + 104))(v7, *MEMORY[0x277D85260], v16);
  v12 = sub_22855D84C();
  type metadata accessor for HealthAppNotificationContentStateManager();
  swift_allocObject();
  v13 = sub_22849A708(v17, v18, v19, v12);

  return v13;
}

uint64_t HealthAppNotificationContentStateManager.__allocating_init(healthStore:domain:queue:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_allocObject();
  v8 = sub_22849A708(a1, a2, a3, a4);

  return v8;
}

uint64_t HealthAppNotificationContentStateManager.init(healthStore:domain:queue:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_22849A708(a1, a2, a3, a4);

  return v5;
}

uint64_t sub_228493A88()
{
  v1 = v0;
  v37 = MEMORY[0x277D85248];
  v42 = MEMORY[0x277D83D88];
  sub_2283FA404(0, &qword_280DED138, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v33 - v4;
  sub_22849A848();
  v7 = v6;
  v34 = *(v6 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22849A9C4();
  v12 = *(v11 - 8);
  v38 = v11;
  v39 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22849AA94();
  v17 = *(v16 - 8);
  v40 = v16;
  v41 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v0 + 16);
  v22 = sub_22855D95C();
  v23 = *(v1 + 24);
  v43 = sub_22855D95C();
  v44 = v22;
  v35 = v22;
  v36 = v43;
  sub_22849A8EC();
  sub_2283FA100(&qword_280DE98C0, 255, sub_22849A8EC);

  sub_22855CB0C();
  v44 = *(v1 + 48);
  v24 = v44;
  v25 = sub_22855D7EC();
  (*(*(v25 - 8) + 56))(v5, 1, 1, v25);
  sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  sub_2283FA100(&unk_280DE9D30, 255, sub_22849A848);
  sub_2283F22E0();
  v26 = v24;
  sub_22855CF4C();
  sub_22849C400(v5, &qword_280DED138, v37);

  (*(v34 + 8))(v10, v7);
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = sub_22849AB74;
  *(v28 + 24) = v27;
  sub_2283FA404(0, qword_280DEB558, type metadata accessor for NotificationContentState, v42);
  sub_2283FA100(&qword_280DE9970, 255, sub_22849A9C4);
  v29 = v38;
  sub_22855CF0C();

  (*(v39 + 8))(v15, v29);
  sub_2283FA100(&qword_280DE9AA8, 255, sub_22849AA94);
  v30 = v40;
  v31 = sub_22855CE6C();

  (*(v41 + 8))(v20, v30);
  return v31;
}

uint64_t sub_228493FF0@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_2284940C4(a1, a2, a3);
  }

  else
  {
    v7 = type metadata accessor for NotificationContentState(0);
    return (*(*(v7 - 8) + 56))(a3, 1, 1, v7);
  }
}

uint64_t sub_2284940C4@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for UnprotectedNotificationContentState(0);
  v111 = *(v6 - 8);
  v7 = *(v111 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v103 = &v93 - v12;
  MEMORY[0x28223BE20](v11);
  v123 = &v93 - v13;
  v14 = sub_22855C1DC();
  v104 = *(v14 - 8);
  v15 = *(v104 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v120 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v119 = &v93 - v18;
  v19 = type metadata accessor for ProtectedNotificationContentState(0);
  v121 = *(v19 - 8);
  v20 = *(v121 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v93 - v24;
  v26 = sub_228494C8C(a1);
  if (v26)
  {
    v118 = a1;
    v108 = v10;
    v106 = v6;
    v98 = a2;
    v94 = a3;
    v27 = *(v122 + 56);
    v28 = v26;
    v29 = [v26 value];
    v30 = sub_22855C09C();
    v32 = v31;

    sub_2283FA100(&qword_27D83FA40, 255, type metadata accessor for ProtectedNotificationContentState);
    v101 = v27;
    v33 = v97;
    sub_22855BD7C();
    if (v33)
    {

      return sub_22842B38C(v30, v32);
    }

    v36 = v25;
    v93 = v28;
    v37 = sub_22842B38C(v30, v32);
    MEMORY[0x28223BE20](v37);
    *(&v93 - 2) = &v124;
    *(&v93 - 1) = v101;
    v38 = MEMORY[0x277D84F90];
    v39 = sub_228492FAC(MEMORY[0x277D84F90], sub_22849ABC0, (&v93 - 4), v118);
    MEMORY[0x28223BE20](v39);
    *(&v93 - 2) = v25;
    v41 = sub_22849319C(sub_22849AC08, (&v93 - 4), v40);
    v97 = 0;
    v42 = v41[2];
    v107 = v25;
    v113 = v19;
    if (v42)
    {
      v124 = v38;
      sub_228427550(0, v42, 0);
      v38 = v124;
      v43 = (*(v121 + 80) + 32) & ~*(v121 + 80);
      v118 = v41;
      v44 = v41 + v43;
      v45 = *(v121 + 72);
      v46 = (v104 + 16);
      v121 = v104 + 32;
      v122 = v45;
      v47 = v119;
      do
      {
        sub_22849AEE0(v44, v23, type metadata accessor for ProtectedNotificationContentState);
        (*v46)(v47, &v23[*(v113 + 20)], v14);
        sub_22849C108(v23, type metadata accessor for ProtectedNotificationContentState);
        v124 = v38;
        v49 = *(v38 + 16);
        v48 = *(v38 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_228427550(v48 > 1, v49 + 1, 1);
          v38 = v124;
        }

        *(v38 + 16) = v49 + 1;
        (*(v104 + 32))(v38 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v49, v47, v14);
        v44 += v122;
        --v42;
      }

      while (v42);

      v36 = v107;
      v19 = v113;
    }

    else
    {
    }

    v122 = sub_228429D08(v38);

    v50 = v98;
    v51 = v108;
    if (v98 >> 62)
    {
      goto LABEL_52;
    }

    v52 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = 0; v52; i = 0)
    {
      v117 = 0;
      v54 = 0;
      v100 = v50 & 0xC000000000000001;
      v96 = v50 & 0xFFFFFFFFFFFFFF8;
      v95 = v50 + 32;
      v121 = v122 + 56;
      v118 = (v104 + 8);
      v119 = (v104 + 16);
      v99 = v52;
      while (1)
      {
        if (v100)
        {
          v55 = v54;
          v56 = MEMORY[0x22AAB9D20](v54, v98);
        }

        else
        {
          if (v54 >= *(v96 + 16))
          {
            goto LABEL_51;
          }

          v55 = v54;
          v56 = *(v95 + 8 * v54);
        }

        v114 = v56;
        v57 = __OFADD__(v55, 1);
        v50 = v55 + 1;
        if (v57)
        {
          goto LABEL_50;
        }

        v102 = v50;
        v58 = sub_228494E04(v114, v101);
        v112 = v58[2];
        if (v112)
        {
          break;
        }

        v105 = MEMORY[0x277D84F90];
LABEL_39:

        v50 = *(v105 + 16);
        if (v50)
        {
          v76 = v105 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
          v116 = *(v111 + 72);
          v77 = v106;
          while (1)
          {
            sub_22849AEE0(v76, v51, type metadata accessor for UnprotectedNotificationContentState);
            v78 = [v114 deviceContext];
            v79 = [v78 representsLocalDevice];

            if (v79)
            {
              v80 = *(v51 + *(v77 + 24));
              if (i)
              {
                goto LABEL_47;
              }
            }

            else
            {
              v80 = 0;
              if (i)
              {
LABEL_47:
                i = 1;
                goto LABEL_42;
              }
            }

            i = *(v51 + *(v77 + 28));
LABEL_42:
            v117 |= v80;
            sub_22849C108(v51, type metadata accessor for UnprotectedNotificationContentState);
            v76 += v116;
            if (!--v50)
            {

              v19 = v113;
              goto LABEL_16;
            }
          }
        }

LABEL_16:

        v54 = v102;
        if (v102 == v99)
        {
          goto LABEL_54;
        }
      }

      v59 = 0;
      v105 = MEMORY[0x277D84F90];
      v109 = i;
      v110 = v58;
      while (v59 < v58[2])
      {
        v60 = (*(v111 + 80) + 32) & ~*(v111 + 80);
        v115 = *(v111 + 72);
        v116 = v60;
        sub_22849AEE0(v58 + v60 + v115 * v59, v123, type metadata accessor for UnprotectedNotificationContentState);
        if (*(v122 + 16) && (v50 = *(v106 + 20), v61 = v122, v62 = *(v122 + 40), sub_2283FA100(&qword_280DEE378, 255, MEMORY[0x277CC95F0]), v63 = sub_22855D13C(), v64 = -1 << *(v61 + 32), v65 = v63 & ~v64, ((*(v121 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) != 0))
        {
          v66 = ~v64;
          v67 = *(v104 + 72);
          v68 = *(v104 + 16);
          while (1)
          {
            v69 = v120;
            v68(v120, *(v122 + 48) + v67 * v65, v14);
            sub_2283FA100(&qword_280DECD78, 255, MEMORY[0x277CC95F0]);
            v70 = sub_22855D16C();
            (*v118)(v69, v14);
            if (v70)
            {
              break;
            }

            v65 = (v65 + 1) & v66;
            if (((*(v121 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) == 0)
            {
              goto LABEL_24;
            }
          }

          sub_22849B298(v123, v103, type metadata accessor for UnprotectedNotificationContentState);
          v71 = v105;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v73 = v71;
          v124 = v71;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_228427500(0, *(v71 + 16) + 1, 1);
            v73 = v124;
          }

          v36 = v107;
          v51 = v108;
          v19 = v113;
          i = v109;
          v74 = v73;
          v50 = *(v73 + 16);
          v75 = *(v73 + 24);
          if (v50 >= v75 >> 1)
          {
            sub_228427500(v75 > 1, v50 + 1, 1);
            v74 = v124;
          }

          *(v74 + 16) = v50 + 1;
          v105 = v74;
          sub_22849B298(v103, v74 + v116 + v50 * v115, type metadata accessor for UnprotectedNotificationContentState);
        }

        else
        {
LABEL_24:
          sub_22849C108(v123, type metadata accessor for UnprotectedNotificationContentState);
          v36 = v107;
          v51 = v108;
          v19 = v113;
          i = v109;
        }

        ++v59;
        v58 = v110;
        if (v59 == v112)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      v52 = sub_22855DB4C();
    }

    v117 = 0;
LABEL_54:

    v81 = i;
    v82 = v36;
    v83 = *v36;
    v84 = *(v82 + 8);
    v85 = v19;
    v86 = *(v19 + 20);
    v87 = type metadata accessor for NotificationContentState(0);
    v88 = v94;
    (*(v104 + 16))(v94 + v87[5], v82 + v86, v14);
    v89 = (v82 + *(v85 + 24));
    v90 = *v89;
    v91 = v89[1];
    *v88 = v83;
    v88[1] = v84;
    v92 = (v88 + v87[6]);
    *v92 = v90;
    v92[1] = v91;
    *(v88 + v87[7]) = v117 & 1;
    *(v88 + v87[8]) = v81 & 1;
    (*(*(v87 - 1) + 56))(v88, 0, 1, v87);

    return sub_22849C108(v82, type metadata accessor for ProtectedNotificationContentState);
  }

  else
  {
    v35 = type metadata accessor for NotificationContentState(0);
    return (*(*(v35 - 8) + 56))(a3, 1, 1, v35);
  }
}

void (**sub_228494C8C(unint64_t a1))(char *, uint64_t)
{
  v11 = 0;
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22855DB4C())
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = sub_22852B20C(v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v10 = v5;
      sub_228528174(&v11, &v10, &v9);

      v4 = v9;
      v11 = v9;
      ++v3;
      if (v7 == i)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  return 0;
}

uint64_t sub_228494D94(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for ProtectedNotificationContentState(0) + 24);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  else
  {
    return sub_22855E15C() & 1;
  }
}

void *sub_228494E04(void *a1, uint64_t a2)
{
  sub_2283FA404(0, &qword_27D83FB10, type metadata accessor for UnprotectedNotificationContentState, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  v31 = type metadata accessor for UnprotectedNotificationContentState(0);
  v27 = *(v31 - 8);
  v8 = *(v27 + 64);
  v9 = MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v26 = &v25 - v11;
  v12 = [a1 storageEntries];
  sub_2283EF310(0, &qword_27D83FB18, 0x277CCD300);
  v13 = sub_22855D3AC();

  if (v13 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22855DB4C())
  {
    v15 = 0;
    v28 = v13 & 0xFFFFFFFFFFFFFF8;
    v29 = v13 & 0xC000000000000001;
    v16 = (v27 + 48);
    v17 = MEMORY[0x277D84F90];
    v25 = a2;
    while (1)
    {
      if (v29)
      {
        v18 = MEMORY[0x22AAB9D20](v15, v13);
      }

      else
      {
        if (v15 >= *(v28 + 16))
        {
          goto LABEL_18;
        }

        v18 = *(v13 + 8 * v15 + 32);
      }

      v19 = v18;
      v20 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      sub_228498874(v18, v7);

      if ((*v16)(v7, 1, v31) == 1)
      {
        sub_22849C400(v7, &qword_27D83FB10, type metadata accessor for UnprotectedNotificationContentState);
      }

      else
      {
        v21 = v26;
        sub_22849B298(v7, v26, type metadata accessor for UnprotectedNotificationContentState);
        sub_22849B298(v21, v30, type metadata accessor for UnprotectedNotificationContentState);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_228426920(0, v17[2] + 1, 1, v17);
        }

        v23 = v17[2];
        v22 = v17[3];
        if (v23 >= v22 >> 1)
        {
          v17 = sub_228426920(v22 > 1, v23 + 1, 1, v17);
        }

        v17[2] = v23 + 1;
        sub_22849B298(v30, v17 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23, type metadata accessor for UnprotectedNotificationContentState);
        a2 = v25;
      }

      ++v15;
      if (v20 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v17 = MEMORY[0x277D84F90];
LABEL_21:

  return v17;
}

void *sub_22849519C(void *a1, uint64_t a2)
{
  sub_2283FA404(0, &qword_27D83FB28, type metadata accessor for ProtectedNotificationContentState, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  v31 = type metadata accessor for ProtectedNotificationContentState(0);
  v27 = *(v31 - 8);
  v8 = *(v27 + 64);
  v9 = MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v26 = &v25 - v11;
  v12 = [a1 storageEntries];
  sub_2283EF310(0, &qword_27D83FB18, 0x277CCD300);
  v13 = sub_22855D3AC();

  if (v13 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22855DB4C())
  {
    v15 = 0;
    v28 = v13 & 0xFFFFFFFFFFFFFF8;
    v29 = v13 & 0xC000000000000001;
    v16 = (v27 + 48);
    v17 = MEMORY[0x277D84F90];
    v25 = a2;
    while (1)
    {
      if (v29)
      {
        v18 = MEMORY[0x22AAB9D20](v15, v13);
      }

      else
      {
        if (v15 >= *(v28 + 16))
        {
          goto LABEL_18;
        }

        v18 = *(v13 + 8 * v15 + 32);
      }

      v19 = v18;
      v20 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      sub_228498BC8(v18, v7);

      if ((*v16)(v7, 1, v31) == 1)
      {
        sub_22849C400(v7, &qword_27D83FB28, type metadata accessor for ProtectedNotificationContentState);
      }

      else
      {
        v21 = v26;
        sub_22849B298(v7, v26, type metadata accessor for ProtectedNotificationContentState);
        sub_22849B298(v21, v30, type metadata accessor for ProtectedNotificationContentState);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_228426954(0, v17[2] + 1, 1, v17);
        }

        v23 = v17[2];
        v22 = v17[3];
        if (v23 >= v22 >> 1)
        {
          v17 = sub_228426954(v22 > 1, v23 + 1, 1, v17);
        }

        v17[2] = v23 + 1;
        sub_22849B298(v30, v17 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23, type metadata accessor for ProtectedNotificationContentState);
        a2 = v25;
      }

      ++v15;
      if (v20 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v17 = MEMORY[0x277D84F90];
LABEL_21:

  return v17;
}

uint64_t sub_228495534(char *a1)
{
  v2 = type metadata accessor for NotificationContentState(0);
  v3 = v2 - 8;
  v76 = *(v2 - 8);
  v75 = *(v76 + 64);
  MEMORY[0x28223BE20](v2);
  v71 = MEMORY[0x277D85248];
  v72 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283FA404(0, &qword_280DED138, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v67 = &v59 - v7;
  sub_22849AC28();
  v9 = *(v8 - 8);
  v68 = v8;
  v69 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v63 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22849ACF4();
  v13 = *(v12 - 8);
  v73 = v12;
  v74 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v66 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22849ADC4();
  v17 = *(v16 - 8);
  v77 = v16;
  v78 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v70 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for UnprotectedNotificationContentState(0);
  v21 = (v20 - 8);
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ProtectedNotificationContentState(0);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *a1;
  v30 = *(a1 + 1);
  v60 = v3;
  v32 = *(v3 + 28);
  v65 = *(v26 + 28);
  v61 = sub_22855C1DC();
  v64 = *(*(v61 - 8) + 16);
  v64(&v29[v65], &a1[v32], v61);
  v33 = &a1[*(v3 + 32)];
  v34 = *v33;
  v35 = v33[1];
  *v29 = v31;
  *(v29 + 1) = v30;
  v36 = &v29[*(v26 + 32)];
  *v36 = v34;
  *(v36 + 1) = v35;
  swift_bridgeObjectRetain_n();

  v37 = v79;
  v38 = sub_228498084(v29);
  sub_22849C108(v29, type metadata accessor for ProtectedNotificationContentState);
  v64(&v24[v21[7]], &a1[v32], v61);
  v39 = *(v60 + 36);
  v40 = *(v60 + 40);
  v62 = a1;
  LOBYTE(v39) = a1[v39];
  LOBYTE(v40) = a1[v40];
  *v24 = v31;
  *(v24 + 1) = v30;
  v24[v21[8]] = v39;
  v24[v21[9]] = v40;
  v41 = v37;
  v42 = sub_228497BCC(v24);
  sub_22849C108(v24, type metadata accessor for UnprotectedNotificationContentState);
  v64 = v42;
  v65 = v38;
  v80 = v42;
  v81 = v38;
  v43 = MEMORY[0x277CBCD88];
  sub_2283FEFCC(0, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
  sub_2283FEEB0(&qword_280DE9890, &qword_280DE9888, v43);

  v44 = v63;
  sub_22855CB0C();
  v81 = *(v41 + 48);
  v45 = v81;
  v46 = sub_22855D7EC();
  v47 = v67;
  (*(*(v46 - 8) + 56))(v67, 1, 1, v46);
  sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  sub_2283FA100(&qword_27D83FA58, 255, sub_22849AC28);
  sub_2283F22E0();
  v48 = v45;
  v49 = v66;
  v50 = v68;
  sub_22855CF4C();
  sub_22849C400(v47, &qword_280DED138, v71);

  (*(v69 + 8))(v44, v50);
  v51 = v72;
  sub_22849AEE0(v62, v72, type metadata accessor for NotificationContentState);
  v52 = (*(v76 + 80) + 24) & ~*(v76 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = v79;
  sub_22849B298(v51, v53 + v52, type metadata accessor for NotificationContentState);

  sub_22855CCBC();
  sub_2283FA100(&qword_27D83FA68, 255, sub_22849ACF4);
  v54 = v70;
  v55 = v73;
  sub_22855CF2C();

  (*(v74 + 8))(v49, v55);
  sub_2283FA100(&qword_27D83FA70, 255, sub_22849ADC4);
  v56 = v77;
  v57 = sub_22855CE6C();

  (*(v78 + 8))(v54, v56);
  return v57;
}

uint64_t sub_228495D04(uint64_t a1)
{
  v33 = a1;
  v3 = type metadata accessor for ProtectedNotificationContentState(0);
  v38 = *(v3 - 8);
  v37 = *(v38 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = MEMORY[0x277D85248];
  v36 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283FA404(0, &qword_280DED138, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v32 - v7;
  sub_22849AF74();
  v10 = *(v9 - 8);
  v39 = v9;
  v40 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22849B06C();
  v15 = *(v14 - 8);
  v41 = v14;
  v42 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v1;
  v19 = sub_228498084(a1);
  v43 = *(v1 + 48);
  v20 = v43;
  v44 = v19;
  v21 = sub_22855D7EC();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  v22 = MEMORY[0x277CBCD88];
  sub_2283FEFCC(0, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
  v32[1] = v23;
  sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  sub_2283FEEB0(&qword_280DE9890, &qword_280DE9888, v22);
  sub_2283F22E0();
  v24 = v20;
  sub_22855CF4C();
  sub_22849C400(v8, &qword_280DED138, v35);

  v25 = v36;
  sub_22849AEE0(v33, v36, type metadata accessor for ProtectedNotificationContentState);
  v26 = (*(v38 + 80) + 24) & ~*(v38 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v34;
  sub_22849B298(v25, v27 + v26, type metadata accessor for ProtectedNotificationContentState);

  sub_22855CCBC();
  sub_2283FA100(&qword_27D83FA88, 255, sub_22849AF74);
  v28 = v39;
  sub_22855CF2C();

  (*(v40 + 8))(v13, v28);
  sub_2283FA100(&qword_27D83FA90, 255, sub_22849B06C);
  v29 = v41;
  v30 = sub_22855CE6C();
  (*(v42 + 8))(v18, v29);
  return v30;
}

uint64_t sub_2284961F0@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X8>)
{
  v9 = *a1;
  v10 = a1[1];

  MEMORY[0x22AAB92A0](32, 0xE100000000000000);
  v4 = type metadata accessor for ProtectedNotificationContentState(0);
  v5 = *(v4 + 20);
  sub_22855C1DC();
  sub_2283FA100(&qword_280DECD70, 255, MEMORY[0x277CC95F0]);
  v6 = sub_22855E11C();
  MEMORY[0x22AAB92A0](v6);

  MEMORY[0x22AAB92A0](0x203A657461747320, 0xE800000000000000);
  MEMORY[0x22AAB92A0](*(a1 + *(v4 + 24)), *(a1 + *(v4 + 24) + 8));
  v7 = sub_2284972EC(v9, v10);

  *a2 = v7;
  return result;
}

uint64_t sub_228496314(uint64_t a1)
{
  v33 = a1;
  v3 = type metadata accessor for UnprotectedNotificationContentState(0);
  v38 = *(v3 - 8);
  v37 = *(v38 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = MEMORY[0x277D85248];
  v36 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283FA404(0, &qword_280DED138, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v32 - v7;
  sub_22849AF74();
  v10 = *(v9 - 8);
  v39 = v9;
  v40 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22849B06C();
  v15 = *(v14 - 8);
  v41 = v14;
  v42 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v1;
  v19 = sub_228497BCC(a1);
  v43 = *(v1 + 48);
  v20 = v43;
  v44 = v19;
  v21 = sub_22855D7EC();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  v22 = MEMORY[0x277CBCD88];
  sub_2283FEFCC(0, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
  v32[1] = v23;
  sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  sub_2283FEEB0(&qword_280DE9890, &qword_280DE9888, v22);
  sub_2283F22E0();
  v24 = v20;
  sub_22855CF4C();
  sub_22849C400(v8, &qword_280DED138, v35);

  v25 = v36;
  sub_22849AEE0(v33, v36, type metadata accessor for UnprotectedNotificationContentState);
  v26 = (*(v38 + 80) + 24) & ~*(v38 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v34;
  sub_22849B298(v25, v27 + v26, type metadata accessor for UnprotectedNotificationContentState);

  sub_22855CCBC();
  sub_2283FA100(&qword_27D83FA88, 255, sub_22849AF74);
  v28 = v39;
  sub_22855CF2C();

  (*(v40 + 8))(v13, v28);
  sub_2283FA100(&qword_27D83FA90, 255, sub_22849B06C);
  v29 = v41;
  v30 = sub_22855CE6C();
  (*(v42 + 8))(v18, v29);
  return v30;
}

uint64_t sub_228496800(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v51 = MEMORY[0x277D85248];
  sub_2283FA404(0, &qword_280DED138, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v40 - v8;
  sub_22849AC28();
  v48 = v9;
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22849ACF4();
  v14 = *(v13 - 8);
  v52 = v13;
  v53 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v44 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22849ADC4();
  v18 = *(v17 - 8);
  v54 = v17;
  v55 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v49 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v2 + 16);
  v42 = a2;
  v43 = a1;
  v57 = sub_22855D96C();
  v22 = MEMORY[0x277CBCD88];
  sub_2283FEFCC(0, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
  sub_2283FEEB0(&qword_280DE9890, &qword_280DE9888, v22);
  v23 = sub_22855CE6C();

  v41 = v3;
  v24 = *(v3 + 24);
  v57 = sub_22855D96C();
  v25 = sub_22855CE6C();
  v46 = v25;

  v47 = v23;
  v56 = v25;
  v57 = v23;

  sub_22855CB0C();
  v57 = *(v3 + 48);
  v26 = v57;
  v27 = sub_22855D7EC();
  v28 = v45;
  (*(*(v27 - 8) + 56))(v45, 1, 1, v27);
  sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  sub_2283FA100(&qword_27D83FA58, 255, sub_22849AC28);
  sub_2283F22E0();
  v29 = v26;
  v30 = v44;
  v31 = v48;
  sub_22855CF4C();
  sub_22849C400(v28, &qword_280DED138, v51);

  (*(v50 + 8))(v12, v31);
  v32 = swift_allocObject();
  v33 = v42;
  v34 = v43;
  v32[2] = v41;
  v32[3] = v34;
  v32[4] = v33;

  sub_22855CCBC();
  sub_2283FA100(&qword_27D83FA68, 255, sub_22849ACF4);
  v35 = v49;
  v36 = v52;
  sub_22855CF2C();

  (*(v53 + 8))(v30, v36);
  sub_2283FA100(&qword_27D83FA70, 255, sub_22849ADC4);
  v37 = v54;
  v38 = sub_22855CE6C();

  (*(v55 + 8))(v35, v37);
  return v38;
}

uint64_t sub_228496DCC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  MEMORY[0x22AAB92A0](a1, a2);
  v4 = sub_2284972EC(0x676E69766F6D6552, 0xE900000000000020);

  *a3 = v4;
  return result;
}

uint64_t sub_228496E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33[0] = a4;
  v35 = a2;
  v36 = a3;
  v37 = a1;
  v34 = MEMORY[0x277D85248];
  sub_2283FA404(0, &qword_280DED138, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v33 - v7;
  sub_22849B450();
  v10 = *(v9 - 8);
  v38 = v9;
  v39 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22849B5C0();
  v15 = *(v14 - 8);
  v40 = v14;
  v41 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v4 + 48);
  v20 = sub_22855D71C();
  v42 = v19;
  v43 = v20;
  v21 = sub_22855D7EC();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  sub_22849B520();
  sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  sub_2283FA100(&qword_280DE97E0, 255, sub_22849B520);
  sub_2283F22E0();
  sub_22855CF4C();
  sub_22849C400(v8, &qword_280DED138, v34);

  v22 = swift_allocObject();
  v22[2] = v35;
  v23 = v37;
  v22[3] = v36;
  v22[4] = 0xD000000000000048;
  v22[5] = 0x80000002285707B0;
  v22[6] = v23;
  v24 = v33[0];
  v25 = v33[1];
  v22[7] = v19;
  v22[8] = v25;
  v22[9] = v24;

  v26 = v19;

  v27 = v24;
  sub_22855CCBC();
  v28 = MEMORY[0x277CBCD88];
  sub_2283FEFCC(0, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
  sub_2283FA100(&qword_280DE9990, 255, sub_22849B450);
  sub_2283FEEB0(&qword_280DE9890, &qword_280DE9888, v28);
  v29 = v38;
  sub_22855CF2C();

  (*(v39 + 8))(v13, v29);
  sub_2283FA100(&qword_280DE9A18, 255, sub_22849B5C0);
  v30 = v40;
  v31 = sub_22855CE6C();
  (*(v41 + 8))(v18, v30);
  return v31;
}

uint64_t sub_2284972EC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v66 = a1;
  v59[1] = *v2;
  v60 = a2;
  v4 = MEMORY[0x277D84F78];
  sub_22849BD38(0, &qword_280DE9820, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCE78]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v59 - v9;
  sub_2283FEFCC(0, &qword_280DE8EB0, v4 + 8, MEMORY[0x277CBCF38]);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = v59 - v15;
  sub_2283FA404(0, &qword_280DED138, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v62 = v59 - v19;
  sub_22849B9B8();
  v65 = v20;
  v63 = *(v20 - 8);
  v21 = *(v63 + 64);
  MEMORY[0x28223BE20](v20);
  v61 = v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22849BA18();
  v68 = *(v23 - 8);
  v69 = v23;
  v24 = *(v68 + 64);
  MEMORY[0x28223BE20](v23);
  v64 = v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22849BACC();
  v70 = *(v26 - 8);
  v71 = v26;
  v27 = *(v70 + 64);
  MEMORY[0x28223BE20](v26);
  v67 = v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22855CABC();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = v59 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v3 + 72) == 1)
  {
    sub_22855CA7C();
    v34 = v60;

    v35 = sub_22855CA8C();
    v36 = sub_22855D6AC();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v59[0] = swift_slowAlloc();
      v72 = v59[0];
      *v37 = 136315394;
      v38 = sub_22855E34C();
      v40 = sub_2283F8938(v38, v39, &v72);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      v41 = v66;
      *(v37 + 14) = sub_2283F8938(v66, v34, &v72);
      _os_log_impl(&dword_2283ED000, v35, v36, "%s Requesting cloud sync for reason: %s", v37, 0x16u);
      v42 = v59[0];
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v42, -1, -1);
      MEMORY[0x22AABAD40](v37, -1, -1);

      (*(v30 + 8))(v33, v29);
    }

    else
    {

      (*(v30 + 8))(v33, v29);
      v41 = v66;
    }

    v45 = [objc_allocWithZone(MEMORY[0x277CCD220]) initWithPush:1 pull:0];
    v46 = [objc_allocWithZone(MEMORY[0x277CCD140]) initWithContextSyncRequest_];

    v72 = 0;
    v73 = 0xE000000000000000;
    sub_22855DC6C();

    v72 = 0xD000000000000024;
    v73 = 0x80000002285708E0;
    MEMORY[0x22AAB92A0](v41, v34);
    v47 = sub_2284935D4();
    v48 = v61;
    sub_22855D86C();

    v72 = v3[6];
    v49 = v72;
    v50 = sub_22855D7EC();
    v51 = v62;
    (*(*(v50 - 8) + 56))(v62, 1, 1, v50);
    sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
    v52 = v49;
    swift_getOpaqueTypeConformance2();
    sub_2283F22E0();
    v54 = v64;
    v53 = v65;
    sub_22855CF4C();
    sub_22849C400(v51, &qword_280DED138, MEMORY[0x277D85248]);

    (*(v63 + 8))(v48, v53);
    sub_2283FA100(&qword_27D83FAC0, 255, sub_22849BA18);
    v55 = v67;
    v56 = v69;
    sub_22855CE8C();
    (*(v68 + 8))(v54, v56);
    sub_2283FA100(&qword_27D83FAC8, 255, sub_22849BACC);
    v57 = v71;
    v44 = sub_22855CE6C();

    (*(v70 + 8))(v55, v57);
  }

  else
  {
    v43 = MEMORY[0x277D84F78];
    sub_22855CDCC();
    sub_228418D44();
    sub_22855CD9C();
    (*(v7 + 8))(v10, v6);
    sub_22849BB70(&qword_280DE8EB8, &qword_280DE8EB0, v43 + 8);
    v44 = sub_22855CE6C();
    (*(v13 + 8))(v16, v12);
  }

  return v44;
}

uint64_t sub_228497BCC(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for UnprotectedNotificationContentState(0);
  v35 = *(v33 - 8);
  v34 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283FA404(0, &qword_27D83FAD0, type metadata accessor for UnprotectedNotificationContentState, MEMORY[0x277CBCE78]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v32 - v10;
  sub_2283FEFCC(0, &qword_27D83FAD8, MEMORY[0x277CC9318], MEMORY[0x277CBCF38]);
  v13 = *(v12 - 8);
  v36 = v12;
  v37 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  sub_22849C168();
  v18 = *(v17 - 8);
  v38 = v17;
  v39 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v2 + 64);
  v23 = *(v2 + 24);
  sub_22849AEE0(a1, v5, type metadata accessor for UnprotectedNotificationContentState);
  sub_22855CDCC();
  sub_22855CDAC();
  (*(v8 + 8))(v11, v7);
  sub_22849AEE0(a1, v5, type metadata accessor for UnprotectedNotificationContentState);
  v24 = (*(v35 + 80) + 24) & ~*(v35 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  sub_22849B298(v5, v25 + v24, type metadata accessor for UnprotectedNotificationContentState);
  v26 = v23;
  sub_22855CCBC();
  v27 = MEMORY[0x277CBCD88];
  sub_2283FEFCC(0, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
  sub_22849BB70(&qword_27D83FAE8, &qword_27D83FAD8, MEMORY[0x277CC9318]);
  sub_2283FEEB0(&qword_280DE9890, &qword_280DE9888, v27);
  v28 = v36;
  sub_22855CF2C();

  (*(v37 + 8))(v16, v28);
  sub_2283FA100(&qword_27D83FAF0, 255, sub_22849C168);
  v29 = v38;
  v30 = sub_22855CE6C();
  (*(v39 + 8))(v21, v29);
  return v30;
}

uint64_t sub_228498084(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for ProtectedNotificationContentState(0);
  v35 = *(v33 - 8);
  v34 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283FA404(0, &qword_27D83FB00, type metadata accessor for ProtectedNotificationContentState, MEMORY[0x277CBCE78]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v32 - v10;
  sub_2283FEFCC(0, &qword_27D83FAD8, MEMORY[0x277CC9318], MEMORY[0x277CBCF38]);
  v13 = *(v12 - 8);
  v36 = v12;
  v37 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  sub_22849C168();
  v18 = *(v17 - 8);
  v38 = v17;
  v39 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v2 + 64);
  v23 = *(v2 + 16);
  sub_22849AEE0(a1, v5, type metadata accessor for ProtectedNotificationContentState);
  sub_22855CDCC();
  sub_22855CDAC();
  (*(v8 + 8))(v11, v7);
  sub_22849AEE0(a1, v5, type metadata accessor for ProtectedNotificationContentState);
  v24 = (*(v35 + 80) + 24) & ~*(v35 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  sub_22849B298(v5, v25 + v24, type metadata accessor for ProtectedNotificationContentState);
  v26 = v23;
  sub_22855CCBC();
  v27 = MEMORY[0x277CBCD88];
  sub_2283FEFCC(0, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
  sub_22849BB70(&qword_27D83FAE8, &qword_27D83FAD8, MEMORY[0x277CC9318]);
  sub_2283FEEB0(&qword_280DE9890, &qword_280DE9888, v27);
  v28 = v36;
  sub_22855CF2C();

  (*(v37 + 8))(v16, v28);
  sub_2283FA100(&qword_27D83FAF0, 255, sub_22849C168);
  v29 = v38;
  v30 = sub_22855CE6C();
  (*(v39 + 8))(v21, v29);
  return v30;
}

uint64_t sub_22849853C@<X0>(void (*a1)(void)@<X2>, unint64_t *a2@<X3>, void (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  a1(0);
  sub_2283FA100(a2, 255, a3);
  result = sub_22855BDAC();
  if (!v4)
  {
    *a4 = result;
    a4[1] = v9;
  }

  return result;
}

uint64_t sub_2284985D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  sub_22842B3E0(*a1, v9);
  v6 = sub_22855D94C();
  result = sub_22842B378(v8, v9);
  *a3 = v6;
  return result;
}

uint64_t HealthAppNotificationContentStateManager.deinit()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 64);

  return v0;
}

uint64_t HealthAppNotificationContentStateManager.__deallocating_deinit()
{
  HealthAppNotificationContentStateManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_228498730()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 72);
}

uint64_t sub_228498770(char a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 72) = a1;
  return result;
}

uint64_t (*sub_2284987B4())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_228498874@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UnprotectedNotificationContentState(0);
  v6 = [a1 value];
  v7 = sub_22855C09C();
  v9 = v8;

  sub_2283FA100(&qword_27D83FB20, 255, type metadata accessor for UnprotectedNotificationContentState);
  sub_22855BD7C();
  if (v2)
  {
    sub_22842B38C(v7, v9);
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v10 = sub_22855CABC();
    __swift_project_value_buffer(v10, qword_280DEEC98);
    v11 = v2;
    v12 = sub_22855CA8C();
    v13 = sub_22855D68C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315906;
      *(v14 + 4) = sub_2283F8938(0xD000000000000028, 0x8000000228563C90, &v21);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_2283F8938(0xD000000000000017, 0x8000000228570910, &v21);
      *(v14 + 22) = 2080;
      *(v14 + 24) = sub_2283F8938(0xD000000000000023, 0x8000000228570930, &v21);
      *(v14 + 32) = 2082;
      v16 = v2;
      sub_228418D44();
      v17 = sub_22855D1CC();
      v19 = sub_2283F8938(v17, v18, &v21);

      *(v14 + 34) = v19;
      _os_log_impl(&dword_2283ED000, v12, v13, "%s %s %s Error: %{public}s", v14, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v15, -1, -1);
      MEMORY[0x22AABAD40](v14, -1, -1);
    }

    else
    {
    }

    return (*(*(v5 - 8) + 56))(a2, 1, 1, v5);
  }

  else
  {
    sub_22842B38C(v7, v9);
    return (*(*(v5 - 8) + 56))(a2, 0, 1, v5);
  }
}

uint64_t sub_228498BC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ProtectedNotificationContentState(0);
  v6 = [a1 value];
  v7 = sub_22855C09C();
  v9 = v8;

  sub_2283FA100(&qword_27D83FA40, 255, type metadata accessor for ProtectedNotificationContentState);
  sub_22855BD7C();
  if (v2)
  {
    sub_22842B38C(v7, v9);
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v10 = sub_22855CABC();
    __swift_project_value_buffer(v10, qword_280DEEC98);
    v11 = v2;
    v12 = sub_22855CA8C();
    v13 = sub_22855D68C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315906;
      *(v14 + 4) = sub_2283F8938(0xD000000000000028, 0x8000000228563C90, &v21);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_2283F8938(0xD000000000000017, 0x8000000228570910, &v21);
      *(v14 + 22) = 2080;
      *(v14 + 24) = sub_2283F8938(0xD000000000000021, 0x8000000228570960, &v21);
      *(v14 + 32) = 2082;
      v16 = v2;
      sub_228418D44();
      v17 = sub_22855D1CC();
      v19 = sub_2283F8938(v17, v18, &v21);

      *(v14 + 34) = v19;
      _os_log_impl(&dword_2283ED000, v12, v13, "%s %s %s Error: %{public}s", v14, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v15, -1, -1);
      MEMORY[0x22AABAD40](v14, -1, -1);
    }

    else
    {
    }

    return (*(*(v5 - 8) + 56))(a2, 1, 1, v5);
  }

  else
  {
    sub_22842B38C(v7, v9);
    return (*(*(v5 - 8) + 56))(a2, 0, 1, v5);
  }
}

uint64_t sub_228498F1C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9)
{
  v97 = a6;
  v98 = a8;
  v109 = a4;
  v110 = a7;
  v108 = a2;
  v12 = MEMORY[0x277D83D88];
  sub_2283FA404(0, &qword_280DED138, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v90 - v15;
  sub_22849BBD4();
  v100 = *(v17 - 8);
  v101 = v17;
  v18 = *(v100 + 64);
  MEMORY[0x28223BE20](v17);
  v99 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22849BD88();
  v106 = v20;
  v104 = *(v20 - 8);
  v21 = *(v104 + 64);
  MEMORY[0x28223BE20](v20);
  v102 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22849BEA4();
  v107 = v23;
  v105 = *(v23 - 8);
  v24 = *(v105 + 64);
  MEMORY[0x28223BE20](v23);
  v103 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x277D84F78];
  sub_22849BD38(0, &qword_280DE9820, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCE78]);
  v95 = *(v27 - 8);
  v96 = v27;
  v28 = *(v95 + 64);
  MEMORY[0x28223BE20](v27);
  v92 = &v90 - v29;
  sub_2283FEFCC(0, &qword_280DE8EB0, v26 + 8, MEMORY[0x277CBCF38]);
  v93 = *(v30 - 8);
  v94 = v30;
  v31 = *(v93 + 64);
  MEMORY[0x28223BE20](v30);
  v91 = &v90 - v32;
  sub_2283FA404(0, &qword_280DEE380, MEMORY[0x277CC9578], v12);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = &v90 - v35;
  v37 = sub_22855C16C();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v90 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v44 = &v90 - v43;
  sub_2284360F4(a1, v36);
  if ((*(v38 + 48))(v36, 1, v37) == 1)
  {
    v96 = a5;
    sub_22849C400(v36, &qword_280DEE380, MEMORY[0x277CC9578]);
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v95 = a9;
    v45 = sub_22855CABC();
    __swift_project_value_buffer(v45, qword_280DEEC98);
    v46 = a3;

    v47 = sub_22855CA8C();
    v48 = sub_22855D6AC();

    v49 = os_log_type_enabled(v47, v48);
    v50 = v108;
    if (v49)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v112[0] = v52;
      *v51 = 136315394;
      *(v51 + 4) = sub_2283F8938(0xD000000000000028, 0x8000000228563C90, v112);
      *(v51 + 12) = 2080;
      *(v51 + 14) = sub_2283F8938(v50, v46, v112);
      _os_log_impl(&dword_2283ED000, v47, v48, "%s Proceeding with migration for %s", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v52, -1, -1);
      MEMORY[0x22AABAD40](v51, -1, -1);
    }

    v111 = v110;
    v112[0] = v97;
    v53 = sub_22855D7EC();
    (*(*(v53 - 8) + 56))(v16, 1, 1, v53);
    sub_22849BCA4();
    sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
    v97 = MEMORY[0x277CBCD90];
    sub_2283FA100(&qword_280DE9910, 255, sub_22849BCA4);
    sub_2283F22E0();
    v54 = v99;
    sub_22855CF4C();
    sub_22849C400(v16, &qword_280DED138, MEMORY[0x277D85248]);
    v55 = swift_allocObject();
    v55[2] = v50;
    v55[3] = v46;
    v55[4] = v98;

    sub_22855CCBC();
    v56 = MEMORY[0x277CBCD88];
    sub_2283FEFCC(0, &qword_280DE9888, v26 + 8, MEMORY[0x277CBCD88]);
    v98 = v57;
    sub_2283FA100(&qword_280DE99A0, 255, sub_22849BBD4);
    sub_2283FEEB0(&qword_280DE9890, &qword_280DE9888, v56);
    v58 = v101;
    v59 = v102;
    sub_22855CF2C();

    (*(v100 + 8))(v54, v58);
    v60 = swift_allocObject();
    v60[2] = v50;
    v60[3] = v46;
    v61 = v95;
    v62 = v96;
    v63 = v109;
    v64 = v110;
    v60[4] = v95;
    v60[5] = v63;
    v60[6] = v62;
    v60[7] = v64;
    v65 = swift_allocObject();
    *(v65 + 16) = sub_22849BFF8;
    *(v65 + 24) = v60;

    v66 = v61;
    v67 = v64;
    sub_22855CCBC();
    sub_2283FA100(&qword_280DE9A08, 255, sub_22849BD88);
    v68 = v103;
    v69 = v106;
    sub_22855CF2C();

    (*(v104 + 8))(v59, v69);
    sub_2283FA100(&qword_280DE99F8, 255, sub_22849BEA4);
    v70 = v107;
    v71 = sub_22855CE6C();
    (*(v105 + 8))(v68, v70);
  }

  else
  {
    (*(v38 + 32))(v44, v36, v37);
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v72 = sub_22855CABC();
    __swift_project_value_buffer(v72, qword_280DEEC98);
    v73 = *(v38 + 16);
    v110 = v44;
    v73(v42, v44, v37);

    v74 = sub_22855CA8C();
    v75 = sub_22855D66C();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v112[0] = v107;
      *v76 = 136315906;
      *(v76 + 4) = sub_2283F8938(0xD000000000000028, 0x8000000228563C90, v112);
      *(v76 + 12) = 2080;
      *(v76 + 14) = sub_2283F8938(v108, a3, v112);
      *(v76 + 22) = 2080;
      sub_2283FA100(&qword_280DECD88, 255, MEMORY[0x277CC9578]);
      v77 = sub_22855E11C();
      v79 = v78;
      v80 = *(v38 + 8);
      LODWORD(v108) = v75;
      v80(v42, v37);
      v81 = sub_2283F8938(v77, v79, v112);

      *(v76 + 24) = v81;
      *(v76 + 32) = 2080;
      *(v76 + 34) = sub_2283F8938(v109, a5, v112);
      _os_log_impl(&dword_2283ED000, v74, v108, "%s Migration already completed for %s on %s for key %s", v76, 0x2Au);
      v82 = v107;
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v82, -1, -1);
      v83 = v76;
      v26 = MEMORY[0x277D84F78];
      MEMORY[0x22AABAD40](v83, -1, -1);

      v84 = v80;
    }

    else
    {

      v84 = *(v38 + 8);
      v84(v42, v37);
    }

    v85 = v92;
    sub_22855CDCC();
    sub_228418D44();
    v86 = v91;
    v87 = v96;
    sub_22855CD9C();
    (*(v95 + 8))(v85, v87);
    sub_22849BB70(&qword_280DE8EB8, &qword_280DE8EB0, v26 + 8);
    v88 = v94;
    v71 = sub_22855CE6C();
    (*(v93 + 8))(v86, v88);
    v84(v110, v37);
  }

  return v71;
}

uint64_t sub_228499C40(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v55 = a5;
  v9 = MEMORY[0x277D84F78];
  sub_22849BD38(0, &qword_280DE9820, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCE78]);
  v11 = v10;
  v54 = *(v10 - 8);
  v12 = *(v54 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v51 - v13;
  sub_2283FEFCC(0, &qword_280DE8EB0, v9 + 8, MEMORY[0x277CBCF38]);
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  v20 = &v51 - v19;
  v21 = type metadata accessor for NotificationContentState(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v26 = &v25[*(v23 + 20)];
    v27 = v23;
    sub_22855C1CC();
    *v25 = a3;
    *(v25 + 1) = a4;
    v28 = &v25[v27[6]];
    *v28 = a1;
    v28[1] = a2;
    v25[v27[7]] = 1;
    v25[v27[8]] = 0;
    v29 = qword_280DEEC90;

    v30 = a4;
    if (v29 != -1)
    {
      swift_once();
    }

    v31 = sub_22855CABC();
    __swift_project_value_buffer(v31, qword_280DEEC98);

    v32 = sub_22855CA8C();
    v33 = sub_22855D6AC();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v56 = v35;
      *v34 = 136315651;
      *(v34 + 4) = sub_2283F8938(0xD000000000000028, 0x8000000228563C90, &v56);
      *(v34 + 12) = 2080;
      *(v34 + 14) = sub_2283F8938(a3, v30, &v56);
      *(v34 + 22) = 2081;
      *(v34 + 24) = sub_2283F8938(a1, a2, &v56);
      _os_log_impl(&dword_2283ED000, v32, v33, "%s Migrating %s content state: %{private}s", v34, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v35, -1, -1);
      MEMORY[0x22AABAD40](v34, -1, -1);
    }

    v36 = sub_228495534(v25);
    sub_22849C108(v25, type metadata accessor for NotificationContentState);
  }

  else
  {
    v52 = v20;
    v53 = v14;
    v37 = a4;
    v55 = v17;
    v51 = a3;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v38 = sub_22855CABC();
    __swift_project_value_buffer(v38, qword_280DEEC98);

    v39 = sub_22855CA8C();
    v40 = sub_22855D6AC();

    v41 = v11;
    v42 = v16;
    if (os_log_type_enabled(v39, v40))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v56 = v44;
      *v43 = 136315394;
      *(v43 + 4) = sub_2283F8938(0xD000000000000028, 0x8000000228563C90, &v56);
      *(v43 + 12) = 2080;
      *(v43 + 14) = sub_2283F8938(v51, v37, &v56);
      _os_log_impl(&dword_2283ED000, v39, v40, "%s No pre-existing content state for %s", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v44, -1, -1);
      MEMORY[0x22AABAD40](v43, -1, -1);
    }

    v45 = MEMORY[0x277D84F78];
    v46 = v54;
    v47 = v55;
    v49 = v52;
    v48 = v53;
    sub_22855CDCC();
    sub_228418D44();
    sub_22855CD9C();
    (*(v46 + 8))(v48, v41);
    sub_22849BB70(&qword_280DE8EB8, &qword_280DE8EB0, v45 + 8);
    v36 = sub_22855CE6C();
    (*(v47 + 8))(v49, v42);
  }

  return v36;
}

uint64_t sub_22849A200(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a1;
  v41 = a4;
  v9 = MEMORY[0x277D83D88];
  sub_2283FA404(0, &qword_280DED138, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - v12;
  sub_2283FA404(0, &qword_280DEE380, MEMORY[0x277CC9578], v9);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v37 - v16;
  sub_22849C010();
  v42 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v23 = sub_22855CABC();
  __swift_project_value_buffer(v23, qword_280DEEC98);

  v24 = sub_22855CA8C();
  v25 = sub_22855D6AC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v38 = a6;
    v39 = a5;
    v27 = v26;
    v28 = swift_slowAlloc();
    v44 = v28;
    *v27 = 136315394;
    *(v27 + 4) = sub_2283F8938(0xD000000000000028, 0x8000000228563C90, &v44);
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_2283F8938(v40, a2, &v44);
    _os_log_impl(&dword_2283ED000, v24, v25, "%s Marking migration as complete for %s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v28, -1, -1);
    v29 = v27;
    a6 = v38;
    MEMORY[0x22AABAD40](v29, -1, -1);
  }

  sub_22855C15C();
  v30 = sub_22855C16C();
  (*(*(v30 - 8) + 56))(v17, 0, 1, v30);
  v31 = sub_22855D73C();
  sub_22849C400(v17, &qword_280DEE380, MEMORY[0x277CC9578]);
  v43 = a6;
  v44 = v31;
  v32 = sub_22855D7EC();
  (*(*(v32 - 8) + 56))(v13, 1, 1, v32);
  v33 = MEMORY[0x277CBCEA8];
  sub_2283FEFCC(0, &qword_280DE9780, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCEA8]);
  sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  sub_2283FEEB0(&qword_280DE9788, &qword_280DE9780, v33);
  sub_2283F22E0();
  sub_22855CF4C();
  sub_22849C400(v13, &qword_280DED138, MEMORY[0x277D85248]);

  sub_2283FA100(&qword_280DE9980, 255, sub_22849C010);
  v34 = v42;
  v35 = sub_22855CE6C();
  (*(v19 + 8))(v22, v34);
  return v35;
}

uint64_t sub_22849A708(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  *(v4 + 32) = 0;
  v8 = sub_22855BD9C();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(v4 + 56) = sub_22855BD8C();
  v11 = sub_22855BDCC();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v4 + 64) = sub_22855BDBC();
  *(v4 + 72) = 0;
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  v14 = objc_allocWithZone(MEMORY[0x277CCD310]);
  v15 = a1;
  v16 = a4;
  v17 = sub_22855D17C();
  v18 = [v14 initWithProtectionCategory:0 domain:v17 healthStore:v15];

  *(v5 + 16) = v18;
  v19 = objc_allocWithZone(MEMORY[0x277CCD310]);
  v20 = sub_22855D17C();

  v21 = [v19 initWithProtectionCategory:1 domain:v20 healthStore:v15];

  *(v5 + 24) = v21;
  return v5;
}

void sub_22849A848()
{
  if (!qword_280DE9D28)
  {
    sub_22849A8EC();
    sub_2283FA100(&qword_280DE98C0, 255, sub_22849A8EC);
    v0 = sub_22855CAFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9D28);
    }
  }
}

void sub_22849A8EC()
{
  if (!qword_280DE98B8)
  {
    sub_22849A95C();
    sub_228418D44();
    v0 = sub_22855CCCC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE98B8);
    }
  }
}

void sub_22849A95C()
{
  if (!qword_280DE9590)
  {
    sub_2283EF310(255, &qword_280DE9260, 0x277CCD308);
    v0 = sub_22855D47C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9590);
    }
  }
}

void sub_22849A9C4()
{
  if (!qword_280DE9968)
  {
    sub_22849A848();
    sub_2283EF310(255, &qword_280DED120, 0x277D85C78);
    sub_2283FA100(&unk_280DE9D30, 255, sub_22849A848);
    sub_2283F22E0();
    v0 = sub_22855CC3C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9968);
    }
  }
}

void sub_22849AA94()
{
  if (!qword_280DE9AA0)
  {
    sub_22849A9C4();
    sub_2283FA404(255, qword_280DEB558, type metadata accessor for NotificationContentState, MEMORY[0x277D83D88]);
    sub_2283FA100(&qword_280DE9970, 255, sub_22849A9C4);
    v0 = sub_22855CBCC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9AA0);
    }
  }
}

uint64_t sub_22849AB90(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

void sub_22849AC28()
{
  if (!qword_27D83FA48)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_2283FEFCC(255, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
    sub_2283FEEB0(&qword_280DE9890, &qword_280DE9888, v0);
    v1 = sub_22855CAFC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83FA48);
    }
  }
}

void sub_22849ACF4()
{
  if (!qword_27D83FA50)
  {
    sub_22849AC28();
    sub_2283EF310(255, &qword_280DED120, 0x277D85C78);
    sub_2283FA100(&qword_27D83FA58, 255, sub_22849AC28);
    sub_2283F22E0();
    v0 = sub_22855CC3C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83FA50);
    }
  }
}

void sub_22849ADC4()
{
  if (!qword_27D83FA60)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_2283FEFCC(255, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
    sub_22849ACF4();
    sub_2283FEEB0(&qword_280DE9890, &qword_280DE9888, v0);
    sub_2283FA100(&qword_27D83FA68, 255, sub_22849ACF4);
    v1 = sub_22855CBEC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83FA60);
    }
  }
}

uint64_t sub_22849AEE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_22849AF74()
{
  if (!qword_27D83FA78)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_2283FEFCC(255, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
    sub_2283EF310(255, &qword_280DED120, 0x277D85C78);
    sub_2283FEEB0(&qword_280DE9890, &qword_280DE9888, v0);
    sub_2283F22E0();
    v1 = sub_22855CC3C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83FA78);
    }
  }
}

void sub_22849B06C()
{
  if (!qword_27D83FA80)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_2283FEFCC(255, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
    sub_22849AF74();
    sub_2283FEEB0(&qword_280DE9890, &qword_280DE9888, v0);
    sub_2283FA100(&qword_27D83FA88, 255, sub_22849AF74);
    v1 = sub_22855CBEC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83FA80);
    }
  }
}

uint64_t objectdestroy_5Tm_1(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(*v2 + 64);
  v6 = *(v1 + 16);

  v7 = *(v1 + v4 + 8);

  v8 = v2[7];
  v9 = sub_22855C1DC();
  (*(*(v9 - 8) + 8))(v1 + v4 + v8, v9);
  v10 = *(v1 + v4 + v2[8] + 8);

  return MEMORY[0x2821FE8E8](v1, v4 + v5, v3 | 7);
}

uint64_t sub_22849B298(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22849B300@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for ProtectedNotificationContentState(0) - 8);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80)));

  return sub_2284961F0(v5, a1);
}

uint64_t sub_22849B3B0@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t *a3@<X8>)
{
  v6 = *(*(a1(0) - 8) + 80);
  v7 = *(v3 + 16);
  v8 = a2();
  v10 = sub_2284972EC(v8, v9);

  *a3 = v10;
  return result;
}

void sub_22849B450()
{
  if (!qword_280DE9988)
  {
    sub_22849B520();
    sub_2283EF310(255, &qword_280DED120, 0x277D85C78);
    sub_2283FA100(&qword_280DE97E0, 255, sub_22849B520);
    sub_2283F22E0();
    v0 = sub_22855CC3C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9988);
    }
  }
}

void sub_22849B520()
{
  if (!qword_280DE97D8)
  {
    sub_2283FA404(255, &qword_280DEE380, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    sub_228418D44();
    v0 = sub_22855CDFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE97D8);
    }
  }
}

void sub_22849B5C0()
{
  if (!qword_280DE9A10)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_2283FEFCC(255, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
    sub_22849B450();
    sub_2283FEEB0(&qword_280DE9890, &qword_280DE9888, v0);
    sub_2283FA100(&qword_280DE9990, 255, sub_22849B450);
    v1 = sub_22855CBEC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9A10);
    }
  }
}

uint64_t sub_22849B6DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_228498F1C(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72));
  *a2 = result;
  return result;
}

uint64_t sub_22849B720(uint64_t a1, uint64_t a2)
{
  result = sub_2283FA100(&unk_280DEC5A8, a2, type metadata accessor for HealthAppNotificationContentStateManager);
  *(a1 + 8) = result;
  return result;
}

void sub_22849B9B8()
{
  if (!qword_27D83FAA8)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27D83FAA8);
    }
  }
}

void sub_22849BA18()
{
  if (!qword_27D83FAB0)
  {
    sub_22849B9B8();
    sub_2283EF310(255, &qword_280DED120, 0x277D85C78);
    swift_getOpaqueTypeConformance2();
    sub_2283F22E0();
    v0 = sub_22855CC3C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83FAB0);
    }
  }
}

void sub_22849BACC()
{
  if (!qword_27D83FAB8)
  {
    sub_22849BA18();
    sub_2283FA100(&qword_27D83FAC0, 255, sub_22849BA18);
    v0 = sub_22855CB6C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83FAB8);
    }
  }
}

uint64_t sub_22849BB70(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2283FEFCC(255, a2, a3, MEMORY[0x277CBCF38]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22849BBD4()
{
  if (!qword_280DE9998)
  {
    sub_22849BCA4();
    sub_2283EF310(255, &qword_280DED120, 0x277D85C78);
    sub_2283FA100(&qword_280DE9910, 255, sub_22849BCA4);
    sub_2283F22E0();
    v0 = sub_22855CC3C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9998);
    }
  }
}

void sub_22849BCA4()
{
  if (!qword_280DE9908)
  {
    sub_22849BD38(255, &qword_280DEE7D0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    sub_228418D44();
    v0 = sub_22855CCCC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9908);
    }
  }
}

void sub_22849BD38(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_22849BD88()
{
  if (!qword_280DE9A00)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_2283FEFCC(255, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
    sub_22849BBD4();
    sub_2283FEEB0(&qword_280DE9890, &qword_280DE9888, v0);
    sub_2283FA100(&qword_280DE99A0, 255, sub_22849BBD4);
    v1 = sub_22855CBEC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9A00);
    }
  }
}

void sub_22849BEA4()
{
  if (!qword_280DE99F0)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_2283FEFCC(255, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
    sub_22849BD88();
    sub_2283FEEB0(&qword_280DE9890, &qword_280DE9888, v0);
    sub_2283FA100(&qword_280DE9A08, 255, sub_22849BD88);
    v1 = sub_22855CBEC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE99F0);
    }
  }
}

uint64_t sub_22849BFC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_228499C40(*a1, *(a1 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32));
  *a2 = result;
  return result;
}

void sub_22849C010()
{
  if (!qword_280DE9978)
  {
    v0 = MEMORY[0x277CBCEA8];
    sub_2283FEFCC(255, &qword_280DE9780, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCEA8]);
    sub_2283EF310(255, &qword_280DED120, 0x277D85C78);
    sub_2283FEEB0(&qword_280DE9788, &qword_280DE9780, v0);
    sub_2283F22E0();
    v1 = sub_22855CC3C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9978);
    }
  }
}

uint64_t sub_22849C108(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_22849C168()
{
  if (!qword_27D83FAE0)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_2283FEFCC(255, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
    v1 = MEMORY[0x277CC9318];
    sub_2283FEFCC(255, &qword_27D83FAD8, MEMORY[0x277CC9318], MEMORY[0x277CBCF38]);
    sub_2283FEEB0(&qword_280DE9890, &qword_280DE9888, v0);
    sub_22849BB70(&qword_27D83FAE8, &qword_27D83FAD8, v1);
    v2 = sub_22855CBEC();
    if (!v3)
    {
      atomic_store(v2, &qword_27D83FAE0);
    }
  }
}

uint64_t sub_22849C384@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2(0) - 8);
  v7 = *(v3 + 16);
  return sub_2284985D0(a1, (v3 + ((*(v6 + 80) + 24) & ~*(v6 + 80))), a3);
}

uint64_t sub_22849C400(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2283FA404(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t DatabaseAccessibilityDispatchTarget.__allocating_init(target:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  DatabaseAccessibilityDispatchTarget.init(target:)(a1);
  return v2;
}

void *DatabaseAccessibilityDispatchTarget.init(target:)(uint64_t *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_22855D81C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22855CFEC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_22855D7BC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  sub_2283F9B10(a1, (v2 + 2));
  v14 = MEMORY[0x277D84F90];
  v15 = sub_22847D0CC(MEMORY[0x277D84F90]);
  v16 = sub_22847D0F8(v14);
  sub_22849D208();
  v17 = swift_allocObject();
  *(v17 + 32) = 0;
  *(v17 + 16) = v15;
  *(v17 + 24) = v16;
  v2[8] = v17;
  sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  v20[1] = v4;
  swift_getMetatypeMetadata();
  sub_22855D1BC();
  sub_22855D7AC();
  sub_22855CFDC();
  (*(v6 + 104))(v9, *MEMORY[0x277D85260], v5);
  v18 = sub_22855D84C();
  __swift_destroy_boxed_opaque_existential_0(a1);
  v2[7] = v18;
  return v2;
}

uint64_t sub_22849C714(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22855CFBC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22855CFEC();
  v11 = *(v27 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v27);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v3 + 64);
  v29 = a1;
  v30 = a2;
  os_unfair_lock_lock(v15 + 8);
  sub_22849D5F0(&v15[4], aBlock);
  os_unfair_lock_unlock(v15 + 8);
  v23 = aBlock[0];
  v16 = *(aBlock[0] + 16);
  if (v16)
  {
    v26 = *(v3 + 56);
    v17 = (v23 + 32);
    v24 = (v7 + 8);
    v25 = v33;
    do
    {
      v18 = swift_allocObject();
      v19 = *v17++;
      v28 = v19;
      *(v18 + 16) = v19;
      v33[2] = sub_22849D60C;
      v33[3] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v33[0] = sub_228401F54;
      v33[1] = &block_descriptor_11;
      v20 = _Block_copy(aBlock);

      sub_22855CFDC();
      v31 = MEMORY[0x277D84F90];
      sub_22849D614(&qword_280DED2D0, MEMORY[0x277D85198]);
      sub_22849D65C(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
      sub_2284392FC();
      sub_22855DA9C();
      MEMORY[0x22AAB98B0](0, v14, v10, v20);
      _Block_release(v20);

      (*v24)(v10, v6);
      (*(v11 + 8))(v14, v27);

      --v16;
    }

    while (v16);
  }
}

unint64_t sub_22849CA84@<X0>(unint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v5 = result;
  if (a2)
  {
    v7 = *result;
    if ((*result & 0xC000000000000001) != 0)
    {
      if (v7 < 0)
      {
        v8 = *result;
      }

      else
      {
        v8 = v7 & 0xFFFFFFFFFFFFFF8;
      }

      v9 = a2;
      result = sub_22855DB4C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
        return result;
      }

      *v5 = sub_22849CFCC(v8, result + 1);
    }

    else
    {
      v10 = *result;
      v9 = a2;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v5;
    result = sub_22845B460(v9, a3, isUniquelyReferenced_nonNull_native);
    *v5 = v15;
  }

  v12 = v5[1];
  if (*(v12 + 16) && (result = sub_2283FB154(a3), (v13 & 1) != 0))
  {
    v14 = *(*(v12 + 56) + 8 * result);

    sub_22845AB24(a3);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  *a4 = v14;
  return result;
}

uint64_t sub_22849CB94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = sub_22855CABC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v30 = a1;
    swift_getObjectType();
    v16 = a2;
    v17 = *(a4 + 8);
    sub_22855C59C();
    v18 = a2;
    v19 = a5;
    v20 = sub_22855CA8C();
    v21 = sub_22855D68C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v29 = a6;
      v24 = v23;
      *v22 = 138412546;
      *(v22 + 4) = v19;
      *v23 = v19;
      *(v22 + 12) = 2112;
      v25 = a2;
      v26 = v19;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v27;
      v24[1] = v27;
      _os_log_impl(&dword_2283ED000, v20, v21, "Failed to retrieve database accessibility assertion for %@: %@", v22, 0x16u);
      sub_22841DCF4();
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v24, -1, -1);
      MEMORY[0x22AABAD40](v22, -1, -1);
    }

    else
    {
    }

    (*(v12 + 8))(v15, v11);
    a1 = v30;
  }

  return sub_22849C714(a1, a5);
}

uint64_t DatabaseAccessibilityDispatchTarget.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 64);

  return v0;
}

uint64_t DatabaseAccessibilityDispatchTarget.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_22849CE50(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v10 = sub_22855D17C();
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_22842F0A4;
  v13[3] = &block_descriptor_10;
  v11 = _Block_copy(v13);

  [v9 requestDatabaseAccessibilityAssertion:v10 timeout:v11 completion:a1];
  _Block_release(v11);
}

id HealthPlatformContextProvider.Context.databaseAccessibilityProvider.getter@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  a1[3] = sub_2283EF310(0, &qword_280DE94D8, 0x277CCD4D8);
  a1[4] = &protocol witness table for HKHealthStore;
  *a1 = v4;

  return v4;
}

id HealthPlatformContextProvider.Context.profileIdentifier.getter()
{
  v1 = [*(v0 + 16) profileIdentifier];

  return v1;
}

uint64_t sub_22849CFCC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_22844C088();
    v2 = sub_22855DF5C();
    v20 = v2;
    sub_22855DDFC();
    v3 = sub_22855DEAC();
    if (v3)
    {
      v4 = v3;
      sub_2283EF310(0, &qword_280DEE7B0, 0x277CCD7C8);
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        sub_2283EF310(0, &qword_280DE9258, 0x277CCD2B8);
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_228446000(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_22855D99C();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_22855DEAC();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

void sub_22849D208()
{
  if (!qword_280DE90F8)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22855DCFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE90F8);
    }
  }
}

uint64_t sub_22849D268(uint64_t a1)
{
  sub_22849D65C(0, &qword_27D83FB30, sub_22849D2F4, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22849D2F4()
{
  result = qword_27D83FB38;
  if (!qword_27D83FB38)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D83FB38);
  }

  return result;
}

uint64_t sub_22849D358()
{
  v1 = *(sub_22855C8CC() - 8);
  v2 = (*(v1 + 64) + ((*(v1 + 80) + 96) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = (v2 + 23) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v0 + v2);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v0 + v3);
  v8 = *(v0 + v3 + 8);
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v10 = *(v6 + 8);
  return sub_22855C60C();
}

unint64_t sub_22849D440(void *a1)
{
  sub_22855DC6C();

  v2 = [a1 description];
  v3 = sub_22855D1AC();
  v5 = v4;

  MEMORY[0x22AAB92A0](v3, v5);

  return 0xD000000000000024;
}

uint64_t sub_22849D4FC(uint64_t a1)
{
  result = sub_22849D614(&qword_280DEC390, type metadata accessor for HealthPlatformContextProvider.Context);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22849D614(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22849D65C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t static NSPredicate.feedItemStoragePredicate(for:)()
{
  v0 = sub_22855C73C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  sub_22840A70C();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_228560580;
  swift_getObjectType();
  sub_22855CA1C();
  v6 = sub_22855C72C();
  v8 = v7;
  (*(v1 + 8))(v4, v0);
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_22840A7C8();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  return sub_22855D62C();
}

uint64_t FeedItemStorageErrors.hashValue.getter()
{
  sub_22855E22C();
  MEMORY[0x22AABA2B0](0);
  return sub_22855E27C();
}

uint64_t FeedItemStorage.updateOrCreate(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22849D8D8, 0, 0);
}

uint64_t sub_22849D8D8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_22849D9D8;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000012, 0x8000000228570A70, sub_2284A5E3C, v3, v6);
}

uint64_t sub_22849D9D8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_22849DB0C;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_22849DAF4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22849DB0C()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_22849DB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2284A6958();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  (*(v11 + 16))(&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  (*(v11 + 32))(v14 + v13, &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  (*(a5 + 8))(a3, sub_2284A6AC8, v14, a4, a5);
}

uint64_t FeedItemStorage.replaceExisting(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22849DD00, 0, 0);
}

uint64_t sub_22849DD00()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_22849DE00;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000016, 0x8000000228570A90, sub_2284A5E48, v3, v6);
}

uint64_t sub_22849DE00()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_2284A6B10;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_2284A6AEC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22849DF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2284A6958();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  (*(v11 + 16))(&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  (*(v11 + 32))(v14 + v13, &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  (*(a5 + 16))(a3, sub_2284A6B0C, v14, a4, a5);
}

uint64_t FeedItemStorage.delete(feedItemIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22849E0AC, 0, 0);
}

uint64_t sub_22849E0AC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_22849DE00;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD00000000000001CLL, 0x8000000228570AB0, sub_2284A5E54, v3, v6);
}

uint64_t sub_22849E1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2284A6958();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  (*(v11 + 16))(&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  (*(v11 + 32))(v14 + v13, &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  (*(a5 + 24))(a3, sub_2284A6B0C, v14, a4, a5);
}

uint64_t sub_22849E318(void *a1)
{
  if (a1)
  {
    v1 = a1;
    sub_2284A6958();
    return sub_22855D4AC();
  }

  else
  {
    sub_2284A6958();
    return sub_22855D4BC();
  }
}

uint64_t FeedItemStorage.fetch(matching:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = v6;
  *(v7 + 96) = a4;
  *(v7 + 40) = a3;
  *(v7 + 48) = a5;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  return MEMORY[0x2822009F8](sub_22849E39C, 0, 0);
}

uint64_t sub_22849E39C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 96);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *(v6 + 16) = *(v0 + 48);
  *(v6 + 32) = v1;
  *(v6 + 40) = v5;
  *(v6 + 48) = v4;
  *(v6 + 56) = v3;
  *(v6 + 64) = v2;
  v7 = *(MEMORY[0x277D85A40] + 4);
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  sub_2284A5E74(0, &qword_280DE9630, type metadata accessor for PluginFeedItem, MEMORY[0x277D83940]);
  *v8 = v0;
  v8[1] = sub_22849E4F4;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000010, 0x8000000228570AD0, sub_2284A5E60, v6, v9);
}

uint64_t sub_22849E4F4()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_22849E62C;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_22849E610;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22849E62C()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_22849E690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v22 = a7;
  v21 = a6;
  v20[1] = a2;
  sub_2284A6828();
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  (*(v15 + 16))(v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14);
  v17 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v18 = swift_allocObject();
  (*(v15 + 32))(v18 + v17, v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  (*(a8 + 32))(a3, a4, a5, v21, sub_2284A68D8, v18, v22, a8);
}

uint64_t sub_22849E81C(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    sub_2284A6828();
    return sub_22855D4AC();
  }

  else
  {
    sub_2284A6828();

    return sub_22855D4BC();
  }
}

uint64_t PluginFeedItemStorage.updateOrCreate(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[1];
  v22[0] = *v3;
  v22[1] = v7;
  v8 = v3[3];
  v22[2] = v3[2];
  v22[3] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = swift_allocObject();
  v11 = v3[1];
  *(v10 + 16) = *v3;
  *(v10 + 32) = v11;
  v12 = v3[3];
  *(v10 + 48) = v3[2];
  *(v10 + 64) = v12;
  *(v10 + 80) = sub_22841B56C;
  *(v10 + 88) = v9;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2284A5ED8;
  *(v13 + 24) = v10;
  v14 = *&v22[0];
  v15 = swift_allocObject();
  v16 = v3[1];
  *(v15 + 16) = *v3;
  *(v15 + 32) = v16;
  v17 = v3[3];
  *(v15 + 48) = v3[2];
  *(v15 + 64) = v17;
  *(v15 + 80) = a1;
  *(v15 + 88) = sub_2284A5EE8;
  *(v15 + 96) = v13;
  aBlock[4] = sub_2284A5F20;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228401F54;
  aBlock[3] = &block_descriptor_11;
  v18 = _Block_copy(aBlock);
  sub_2284A5F30(v22, v20);
  sub_2284A5F30(v22, v20);

  [v14 performBlock_];
  _Block_release(v18);
}

void sub_22849EAD4(__int128 *a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v39 = a4;
  v40 = a3;
  v46 = *MEMORY[0x277D85DE8];
  v6 = sub_22855CFBC();
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22855CFEC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[1];
  aBlock = *a1;
  v43 = v15;
  v16 = a1[3];
  v44 = a1[2];
  v45 = v16;
  v17 = sub_22849EEDC(a2);
  v33 = v9;
  v34 = v11;
  v35 = v10;
  v36 = a2;
  v37 = v18;
  v19 = *a1;
  *&aBlock = 0;
  v20 = [v19 save_];
  v21 = aBlock;
  if (v20)
  {
    v32[1] = *(a1 + 7);
    v22 = swift_allocObject();
    v23 = v37;
    *(v22 + 16) = v17;
    *(v22 + 24) = v23;
    *&v44 = sub_2284186F8;
    *(&v44 + 1) = v22;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v43 = sub_228401F54;
    *(&v43 + 1) = &block_descriptor_93;
    v24 = _Block_copy(&aBlock);
    v25 = v21;

    sub_22855CFDC();
    v41 = MEMORY[0x277D84F90];
    sub_2284A6594(&qword_280DED2D0, MEMORY[0x277D85198]);
    sub_2284A5E74(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_2284392FC();
    v26 = v33;
    sub_22855DA9C();
    MEMORY[0x22AAB98B0](0, v14, v26, v24);
    _Block_release(v24);
    (*(v38 + 8))(v26, v6);
    (*(v34 + 8))(v14, v35);

    PluginFeedItemStorage.changeDomain(from:)(v36, &aBlock);
    PluginFeedItemStorage.notifyFeedPopulationListener(of:)(&aBlock);

    v40(0);
  }

  else
  {
    v27 = aBlock;
    v28 = sub_22855BF3C();

    swift_willThrow();

    v29 = v40;
    v30 = v28;
    v29(v28);
  }

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t (*sub_22849EEDC(uint64_t a1))()
{
  v3 = v2;
  v48 = sub_22855C16C();
  v5 = *(v48 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for PluginFeedItem();
  v8 = *(*(v46 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v46);
  v43 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v14 = (&v40 - v13);
  v15 = v1[1];
  v51 = *v1;
  v50 = v15;
  v62 = *(v1 + 1);
  v63 = v1[4];
  v60 = *(v1 + 5);
  v61 = v1[7];
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = *(v11 + 80);
    v18 = a1 + ((v17 + 32) & ~v17);
    v45 = (v5 + 8);
    v42 = v17;
    v41 = (v17 + 16) & ~v17;
    v40 = (v12 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = *(v11 + 72);
    v52 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_2284A63A8(v18, v14, type metadata accessor for PluginFeedItem);
      v54 = v51;
      v55 = v50;
      v56 = v62;
      v57 = v63;
      v58 = v60;
      v59 = v61;
      v19 = sub_2284A23F8(v14);
      FeedItem.update(with:)(v14);
      if (v3)
      {
        break;
      }

      v20 = v47;
      sub_22855C15C();
      v21 = sub_22855C10C();
      (*v45)(v20, v48);
      [v19 setDateSubmitted_];

      v22 = [v19 pinnedContentDomain];
      if (v22)
      {
        v23 = v22;
        sub_22855D1AC();

        v24 = sub_22855BCFC();
        if (v24 != 2)
        {
          v25 = v50;
          (*(*v50 + 104))(v53, v24 & 1);
          v54 = v51;
          v55 = v25;
          v56 = v62;
          v57 = v63;
          v58 = v60;
          v59 = v61;
          sub_2284A42F0(v53, v19);
          __swift_destroy_boxed_opaque_existential_0(v53);
        }
      }

      if (![v63 evaluateWithObject_])
      {
        sub_2284A6014();
        swift_allocError();
        swift_willThrow();
        break;
      }

      v26 = (v14 + *(v46 + 112));
      v27 = *v26;
      if (*v26)
      {
        v28 = v26[1];
        v29 = v43;
        sub_2284A63A8(v14, v43, type metadata accessor for PluginFeedItem);
        v30 = v40;
        v31 = swift_allocObject();
        sub_2284A6780(v29, v31 + v41, type metadata accessor for PluginFeedItem);
        v32 = (v31 + v30);
        *v32 = v27;
        v32[1] = v28;
        v33 = swift_allocObject();
        *(v33 + 16) = sub_2284A65DC;
        *(v33 + 24) = v31;
        sub_22845DF64(v27);
        sub_22845DF64(v27);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v49 = 0;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v52 = sub_228426988(0, v52[2] + 1, 1, v52);
        }

        v36 = v52[2];
        v35 = v52[3];
        if (v36 >= v35 >> 1)
        {
          v52 = sub_228426988((v35 > 1), v36 + 1, 1, v52);
        }

        sub_228416CF8(v27);
        sub_2284A61D4(v14, type metadata accessor for PluginFeedItem);
        v37 = v52;
        v52[2] = v36 + 1;
        v38 = &v37[2 * v36];
        v38[4] = sub_228466000;
        v38[5] = v33;
        v3 = v49;
      }

      else
      {
        sub_2284A61D4(v14, type metadata accessor for PluginFeedItem);
      }

      v18 += v44;
      if (!--v16)
      {
        goto LABEL_17;
      }
    }

    sub_2284A61D4(v14, type metadata accessor for PluginFeedItem);
  }

  else
  {
    v52 = MEMORY[0x277D84F90];
LABEL_17:
    *(swift_allocObject() + 16) = v52;
    return sub_2284A666C;
  }
}

uint64_t PluginFeedItemStorage.changeDomain(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PluginFeedItem();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D84F90];
  v10 = sub_228429B98(MEMORY[0x277D84F90]);
  result = sub_228429EA4(v9);
  v21 = v10;
  v22 = result;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v4 + 48);
    v14 = *(v4 + 76);
    v15 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v16 = *(v5 + 72);
    do
    {
      sub_2284A63A8(v15, v8, type metadata accessor for PluginFeedItem);
      sub_228483930(&v20, v8[v13]);
      v17 = *&v8[v14];
      v18 = v17;
      sub_228484978(&v20, v17);

      sub_2284A61D4(v8, type metadata accessor for PluginFeedItem);
      v15 += v16;
      --v12;
    }

    while (v12);
    v10 = v21;
    result = v22;
  }

  *a2 = v10;
  a2[1] = result;
  return result;
}

uint64_t PluginFeedItemStorage.notifyFeedPopulationListener(of:)(uint64_t *a1)
{
  v3 = sub_22855BE9C();
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x28223BE20](v3);
  v9 = *a1;
  v8 = a1[1];
  v11 = *v1;
  v10 = *(v1 + 8);
  v12 = *(v1 + 24);
  v13 = *(v1 + 32);
  v15 = *(v1 + 48);
  v14 = *(v1 + 56);
  if (*(v9 + 16) || *(v8 + 16))
  {
    v38 = *(v1 + 16);
    v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = v7;
    v41 = result;
    if (qword_280DEECB8 != -1)
    {
      swift_once();
    }

    v16 = sub_22855CABC();
    __swift_project_value_buffer(v16, qword_280DEECC0);

    v17 = v14;

    v18 = v11;

    v19 = v13;
    v20 = sub_22855CA8C();
    v21 = sub_22855D67C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v42 = v23;
      *v22 = 136446722;
      *&v43 = &type metadata for PluginFeedItemStorage;
      sub_2284A5FCC();
      v24 = sub_22855D1BC();
      v25 = v21;
      v27 = sub_2283F8938(v24, v26, &v42);

      *(v22 + 4) = v27;
      *(v22 + 12) = 2082;

      v28 = sub_2283F8938(v38, v12, &v42);

      *(v22 + 14) = v28;
      *(v22 + 22) = 2080;
      *&v43 = v9;
      *(&v43 + 1) = v8;

      v29 = FeedItemChangeDomain.description.getter();
      v31 = v30;

      v32 = sub_2283F8938(v29, v31, &v42);

      *(v22 + 24) = v32;
      _os_log_impl(&dword_2283ED000, v20, v25, "[%{public}s][%{public}s] Posting feedItemSubmissionOccurred notification for change domain: %s, privacy: .public)", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v23, -1, -1);
      MEMORY[0x22AABAD40](v22, -1, -1);
    }

    if (qword_280DE93B0 != -1)
    {
      swift_once();
    }

    v43 = 0u;
    v44 = 0u;
    v33 = qword_280DE93B8;
    v34 = v39;
    sub_22855BE4C();
    sub_2284A5E74(0, &qword_280DE8EE0, sub_2284A5F68, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_228560580;
    *&v43 = 0xD000000000000014;
    *(&v43 + 1) = 0x8000000228570AF0;
    sub_22855DBEC();
    *(inited + 96) = &type metadata for FeedItemChangeDomain;
    *(inited + 72) = v9;
    *(inited + 80) = v8;

    sub_22847CF80(inited);
    swift_setDeallocating();
    sub_2284A61D4(inited + 32, sub_2284A5F68);
    sub_22855BE8C();
    v36 = [objc_opt_self() defaultCenter];
    v37 = sub_22855BE2C();
    [v36 postNotification_];

    return (*(v40 + 8))(v34, v41);
  }

  return result;
}

uint64_t sub_22849FB90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22855CFBC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22855CFEC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 56);
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = a1;
  aBlock[4] = sub_2284A67E8;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228401F54;
  aBlock[3] = &block_descriptor_99;
  v20 = _Block_copy(aBlock);

  v21 = a1;
  sub_22855CFDC();
  v23[1] = MEMORY[0x277D84F90];
  sub_2284A6594(&qword_280DED2D0, MEMORY[0x277D85198]);
  sub_2284A5E74(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_2284392FC();
  sub_22855DA9C();
  MEMORY[0x22AAB98B0](0, v17, v12, v20);
  _Block_release(v20);
  (*(v9 + 8))(v12, v8);
  (*(v14 + 8))(v17, v13);
}

uint64_t sub_22849FE6C(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22855CFBC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22855CFEC();
  v15 = *(v24 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v24);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a3 + 56);
  a2 &= 1u;
  v27 = a2;
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  *(v20 + 32) = a1;
  *(v20 + 40) = v27;
  aBlock[4] = sub_2284A6540;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228401F54;
  aBlock[3] = &block_descriptor_78;
  v21 = _Block_copy(aBlock);

  sub_2284A6588(a1, a2);
  sub_22855CFDC();
  v25 = MEMORY[0x277D84F90];
  sub_2284A6594(&qword_280DED2D0, MEMORY[0x277D85198]);
  sub_2284A5E74(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_2284392FC();
  sub_22855DA9C();
  MEMORY[0x22AAB98B0](0, v18, v14, v21);
  _Block_release(v21);
  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v24);
}

void PluginFeedItemStorage.updateOrCreate(_:)(uint64_t *a1)
{
  v4 = sub_22855C16C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v9 = v1[1];
  v29 = *(v1 + 1);
  v11 = v1[4];
  v27 = *(v1 + 5);
  v28 = v1[7];
  v21 = v10;
  v22 = v9;
  v23 = *(v1 + 1);
  v24 = v11;
  v25 = *(v1 + 5);
  v26 = v1[7];
  v12 = sub_2284A23F8(a1);
  v13 = a1;
  v14 = v12;
  FeedItem.update(with:)(v13);
  if (!v2)
  {
    sub_22855C15C();
    v15 = sub_22855C10C();
    (*(v5 + 8))(v8, v4);
    [v14 setDateSubmitted_];

    v16 = [v14 pinnedContentDomain];
    if (v16)
    {
      v17 = v16;
      sub_22855D1AC();

      v18 = sub_22855BCFC();
      if (v18 != 2)
      {
        (*(*v9 + 104))(v20, v18 & 1);
        v21 = v10;
        v22 = v9;
        v23 = v29;
        v24 = v11;
        v25 = v27;
        v26 = v28;
        sub_2284A42F0(v20, v14);
        __swift_destroy_boxed_opaque_existential_0(v20);
      }
    }

    if (([v11 evaluateWithObject_] & 1) == 0)
    {
      sub_2284A6014();
      swift_allocError();
      swift_willThrow();
    }
  }
}

uint64_t sub_2284A03E4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for PluginFeedItem();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_280DEEBE8 != -1)
  {
    swift_once();
  }

  v8 = sub_22855CABC();
  __swift_project_value_buffer(v8, qword_280DEEBF0);
  sub_2284A63A8(a1, v7, type metadata accessor for PluginFeedItem);
  v9 = sub_22855CA8C();
  v10 = sub_22855D6AC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    v13 = *v7;
    v14 = v7[1];

    sub_2284A61D4(v7, type metadata accessor for PluginFeedItem);
    v15 = sub_2283F8938(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_2283ED000, v9, v10, "Running afterCommit block for %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AABAD40](v12, -1, -1);
    MEMORY[0x22AABAD40](v11, -1, -1);
  }

  else
  {

    sub_2284A61D4(v7, type metadata accessor for PluginFeedItem);
  }

  return a2(a1);
}

uint64_t sub_2284A05FC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      v4(v5);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t PluginFeedItemStorage.replaceExisting(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[1];
  v22[0] = *v3;
  v22[1] = v7;
  v8 = v3[3];
  v22[2] = v3[2];
  v22[3] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = swift_allocObject();
  v11 = v3[1];
  *(v10 + 16) = *v3;
  *(v10 + 32) = v11;
  v12 = v3[3];
  *(v10 + 48) = v3[2];
  *(v10 + 64) = v12;
  *(v10 + 80) = sub_22841C0F4;
  *(v10 + 88) = v9;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2284A6B08;
  *(v13 + 24) = v10;
  v14 = *&v22[0];
  v15 = swift_allocObject();
  v16 = v3[1];
  *(v15 + 24) = *v3;
  *(v15 + 40) = v16;
  v17 = v3[3];
  *(v15 + 56) = v3[2];
  *(v15 + 16) = a1;
  *(v15 + 72) = v17;
  *(v15 + 88) = sub_2284A6ACC;
  *(v15 + 96) = v13;
  aBlock[4] = sub_2284A6068;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228401F54;
  aBlock[3] = &block_descriptor_35;
  v18 = _Block_copy(aBlock);
  sub_2284A5F30(v22, v20);
  sub_2284A5F30(v22, v20);

  [v14 performBlock_];
  _Block_release(v18);
}

void sub_2284A0834(uint64_t a1, _OWORD *a2, void (*a3)(void), uint64_t a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = type metadata accessor for PluginFeedItem();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  v38 = a1;
  if (v13)
  {
    v35 = a2;
    v36 = a4;
    v37 = a3;
    *&v39[0] = MEMORY[0x277D84F90];
    sub_2284272C0(0, v13, 0);
    v14 = *&v39[0];
    v15 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v16 = *(v9 + 72);
    do
    {
      sub_2284A63A8(v15, v12, type metadata accessor for PluginFeedItem);
      v17 = *v12;
      v18 = v12[1];

      sub_2284A61D4(v12, type metadata accessor for PluginFeedItem);
      *&v39[0] = v14;
      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_2284272C0((v19 > 1), v20 + 1, 1);
        v14 = *&v39[0];
      }

      *(v14 + 16) = v20 + 1;
      v21 = v14 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
      v15 += v16;
      --v13;
    }

    while (v13);
    a3 = v37;
    a2 = v35;
  }

  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  sub_22840A70C();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_228560580;
  sub_22840CC38(0, &qword_280DEE7C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  *(v22 + 56) = v23;
  *(v22 + 64) = sub_2284A64CC(&qword_280DE95C8);
  *(v22 + 32) = v14;
  v24 = sub_22855D62C();
  PluginFeedItemStorage.deleteFeedItems(matching:)(v24, v39);

  v25 = a2[1];
  v39[0] = *a2;
  v39[1] = v25;
  v26 = a2[3];
  v39[2] = a2[2];
  v39[3] = v26;
  v27 = v38;
  v28 = sub_22849EEDC(v38);
  v29 = *a2;
  *&v39[0] = 0;
  if ([v29 save_])
  {
    (v28)(*&v39[0]);
    PluginFeedItemStorage.changeDomain(from:)(v27, v39);
    PluginFeedItemStorage.notifyFeedPopulationListener(of:)(v39);

    a3(0);
  }

  else
  {
    v30 = *&v39[0];
    v31 = sub_22855BF3C();

    swift_willThrow();

    v32 = v31;
    a3(v31);
  }

  v33 = *MEMORY[0x277D85DE8];
}

void PluginFeedItemStorage.deleteFeedItems(matching:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = v2[1];
  v50 = *v2;
  v51 = v5;
  v6 = v2[3];
  v52 = v2[2];
  v53 = v6;
  v7 = _s14HealthPlatform8FeedItemC12fetchRequestSo07NSFetchF0CyACGyFZ_0();
  v8 = v52;
  sub_22840CC38(0, &qword_280DED000, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_228563E50;
  *(v9 + 32) = v8;
  *(v9 + 40) = a1;
  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  v10 = v8;
  v11 = a1;
  v12 = sub_22855D39C();

  v13 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v7 setPredicate_];
  v14 = MEMORY[0x277D84F90];
  *&v49 = sub_228429B98(MEMORY[0x277D84F90]);
  *(&v49 + 1) = sub_228429EA4(v14);
  type metadata accessor for FeedItem();
  v15 = sub_22855D97C();
  sub_2284A5F30(&v50, v47);
  sub_2284A56B8(v15, &v49, &v50);
  sub_2284A6078(&v50);
  v16 = (v15 >> 62);
  if (!(v15 >> 62))
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_21:

    goto LABEL_22;
  }

  if (!sub_22855DB4C())
  {
    goto LABEL_21;
  }

LABEL_3:
  if (qword_280DEEBE8 != -1)
  {
    swift_once();
  }

  v17 = sub_22855CABC();
  __swift_project_value_buffer(v17, qword_280DEEBF0);
  sub_2284A5F30(&v50, v47);

  v18 = sub_22855CA8C();
  v19 = sub_22855D6AC();
  sub_2284A6078(&v50);

  if (!os_log_type_enabled(v18, v19))
  {

LABEL_22:
    goto LABEL_23;
  }

  v44 = v19;
  v45 = v7;
  v46 = a2;
  v20 = swift_slowAlloc();
  v42 = swift_slowAlloc();
  v47[0] = v42;
  *v20 = 136446722;
  v48 = &type metadata for PluginFeedItemStorage;
  sub_2284A5FCC();
  v21 = sub_22855D1BC();
  v23 = sub_2283F8938(v21, v22, v47);

  *(v20 + 4) = v23;
  *(v20 + 12) = 2082;
  v24 = v51;

  v25 = sub_2283F8938(v24, *(&v24 + 1), v47);

  *(v20 + 14) = v25;
  buf = v20;
  *(v20 + 22) = 2080;
  if (!v16)
  {
    v26 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_8;
    }

LABEL_19:

    v48 = v14;
    sub_22840CC38(0, &qword_280DEE7C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_2284A64CC(&qword_280DEE7C0);
    v37 = sub_22855D15C();
    v39 = v38;

    v40 = sub_2283F8938(v37, v39, v47);

    *(buf + 3) = v40;
    _os_log_impl(&dword_2283ED000, v18, v44, "[%{public}s][%{public}s] Successfully deleted all feedItems: %s", buf, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v42, -1, -1);
    MEMORY[0x22AABAD40](buf, -1, -1);

    a2 = v46;
LABEL_23:
    *a2 = v49;
    return;
  }

  v26 = sub_22855DB4C();
  if (!v26)
  {
    goto LABEL_19;
  }

LABEL_8:
  v48 = v14;
  sub_2284272C0(0, v26 & ~(v26 >> 63), 0);
  if ((v26 & 0x8000000000000000) == 0)
  {
    v27 = 0;
    v14 = v48;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x22AAB9D20](v27, v15);
      }

      else
      {
        v28 = *(v15 + 8 * v27 + 32);
      }

      v29 = v28;
      v30 = [v28 uniqueIdentifier];
      v31 = sub_22855D1AC();
      v33 = v32;

      v48 = v14;
      v35 = *(v14 + 16);
      v34 = *(v14 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_2284272C0((v34 > 1), v35 + 1, 1);
        v14 = v48;
      }

      ++v27;
      *(v14 + 16) = v35 + 1;
      v36 = v14 + 16 * v35;
      *(v36 + 32) = v31;
      *(v36 + 40) = v33;
    }

    while (v26 != v27);
    goto LABEL_19;
  }

  __break(1u);

  v47[0] = 0;
  v47[1] = 0xE000000000000000;
  sub_22855DC6C();
  MEMORY[0x22AAB92A0](91, 0xE100000000000000);
  v48 = &type metadata for PluginFeedItemStorage;
  sub_2284A5FCC();
  v41 = sub_22855D1BC();
  MEMORY[0x22AAB92A0](v41);

  MEMORY[0x22AAB92A0](23389, 0xE200000000000000);
  MEMORY[0x22AAB92A0](v51, *(&v51 + 1));
  MEMORY[0x22AAB92A0](0xD00000000000002FLL, 0x8000000228570B40);
  sub_22855DEDC();
  __break(1u);
}

uint64_t PluginFeedItemStorage.delete(feedItemIdentifiers:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[1];
  v22[0] = *v3;
  v22[1] = v7;
  v8 = v3[3];
  v22[2] = v3[2];
  v22[3] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = swift_allocObject();
  v11 = v3[1];
  *(v10 + 16) = *v3;
  *(v10 + 32) = v11;
  v12 = v3[3];
  *(v10 + 48) = v3[2];
  *(v10 + 64) = v12;
  *(v10 + 80) = sub_22841C0F4;
  *(v10 + 88) = v9;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2284A6B08;
  *(v13 + 24) = v10;
  v14 = *&v22[0];
  v15 = swift_allocObject();
  v16 = v3[1];
  *(v15 + 24) = *v3;
  *(v15 + 40) = v16;
  v17 = v3[3];
  *(v15 + 56) = v3[2];
  *(v15 + 16) = a1;
  *(v15 + 72) = v17;
  *(v15 + 88) = sub_2284A6ACC;
  *(v15 + 96) = v13;
  aBlock[4] = sub_2284A6118;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228401F54;
  aBlock[3] = &block_descriptor_53_0;
  v18 = _Block_copy(aBlock);
  sub_2284A5F30(v22, v20);
  sub_2284A5F30(v22, v20);

  [v14 performBlock_];
  _Block_release(v18);
}

void sub_2284A1408(uint64_t a1, void **a2, void (*a3)(void *))
{
  v19 = *MEMORY[0x277D85DE8];
  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  sub_22840A70C();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_228560580;
  sub_22840CC38(0, &qword_280DEE7C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  *(v6 + 56) = v7;
  *(v6 + 64) = sub_2284A64CC(&qword_280DE95C8);
  *(v6 + 32) = a1;

  v8 = sub_22855D62C();
  PluginFeedItemStorage.deleteFeedItems(matching:)(v8, &v18);
  v9 = v18;
  v10 = *a2;
  *&v18 = 0;
  v11 = [v10 save_];
  v12 = v18;
  if (v11)
  {
    v18 = v9;
    v13 = v12;
    PluginFeedItemStorage.notifyFeedPopulationListener(of:)(&v18);

    a3(0);
  }

  else
  {
    v14 = v18;

    v15 = sub_22855BF3C();

    swift_willThrow();
    v16 = v15;
    a3(v15);
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t PluginFeedItemStorage.fetch(matching:completion:)(void *a1, void *a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v13 = v6[1];
  v28[0] = *v6;
  v28[1] = v13;
  v14 = v6[3];
  v28[2] = v6[2];
  v28[3] = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;
  v16 = swift_allocObject();
  v17 = v6[1];
  *(v16 + 16) = *v6;
  *(v16 + 32) = v17;
  v18 = v6[3];
  *(v16 + 48) = v6[2];
  *(v16 + 64) = v18;
  *(v16 + 80) = sub_22841C0AC;
  *(v16 + 88) = v15;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_2284A6190;
  *(v19 + 24) = v16;
  v20 = *&v28[0];
  v21 = swift_allocObject();
  v22 = v6[1];
  *(v21 + 16) = *v6;
  *(v21 + 32) = v22;
  v23 = v6[3];
  *(v21 + 48) = v6[2];
  *(v21 + 64) = v23;
  *(v21 + 80) = a1;
  *(v21 + 88) = a2;
  *(v21 + 96) = a3;
  *(v21 + 104) = a4;
  *(v21 + 112) = sub_228476D24;
  *(v21 + 120) = v19;
  aBlock[4] = sub_2284A61A8;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228401F54;
  aBlock[3] = &block_descriptor_68;
  v24 = _Block_copy(aBlock);
  sub_2284A5F30(v28, v26);
  sub_2284A5F30(v28, v26);

  sub_2284A61C0(a1, a2, a3, a4);

  [v20 performBlock_];
  _Block_release(v24);
}

size_t sub_2284A1818(uint64_t *a1, uint64_t *a2, void *a3, void *a4, char a5, void (*a6)(uint64_t, void), uint64_t a7)
{
  v14 = type metadata accessor for PluginFeedItem();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _s14HealthPlatform8FeedItemC12fetchRequestSo07NSFetchF0CyACGyFZ_0();
  v20 = sub_2284A1AF4(a2, a3, a4, a5);
  [v19 setPredicate_];

  v21 = *a1;
  type metadata accessor for FeedItem();
  v22 = sub_22855D97C();
  v23 = v22;
  if (!(v22 >> 62))
  {
    v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_3;
    }

LABEL_13:

    a6(MEMORY[0x277D84F90], 0);
LABEL_14:
  }

  v24 = sub_22855DB4C();
  if (!v24)
  {
    goto LABEL_13;
  }

LABEL_3:
  v32 = v19;
  v33 = a7;
  v34 = a6;
  v35 = MEMORY[0x277D84F90];
  result = sub_228427640(0, v24 & ~(v24 >> 63), 0);
  if ((v24 & 0x8000000000000000) == 0)
  {
    v26 = 0;
    v27 = v35;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x22AAB9D20](v26, v23);
      }

      else
      {
        v28 = *(v23 + 8 * v26 + 32);
      }

      PluginFeedItem.init(feedItem:)(v28, v18);
      v35 = v27;
      v30 = *(v27 + 16);
      v29 = *(v27 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_228427640(v29 > 1, v30 + 1, 1);
        v27 = v35;
      }

      ++v26;
      *(v27 + 16) = v30 + 1;
      sub_2284A6780(v18, v27 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v30, type metadata accessor for PluginFeedItem);
    }

    while (v24 != v26);

    v19 = v32;
    v34(v27, 0);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_2284A1AF4(uint64_t *a1, void *a2, void *a3, char a4)
{
  v6 = *(v4 + 32);
  if (a4 != -1)
  {
    v37 = *(v4 + 32);
    sub_22840CC38(0, &qword_280DED000, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_228560690;
    *(v10 + 32) = v37;
    v39 = v10;
    if (a4)
    {
      if (a4 == 1)
      {
        if (a3 == 1)
        {
          v11 = v37;
          sub_2284A61C0(a1, a2, 1, 1);
        }

        else
        {
          sub_22840CC38(0, &qword_27D83F430, &type metadata for SourceProfile, MEMORY[0x277D84560]);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_228560580;
          *(inited + 32) = a3;
          sub_2284506A4(a3);
          v16 = v37;
          sub_2284A61C0(a1, a2, a3, 1);

          sub_2284506A4(a3);
          _s14HealthPlatform8FeedItemC9predicate11matchingAnySo11NSPredicateCSayAA13SourceProfileOG_tFZ_0(inited);
          swift_setDeallocating();
          v17 = sub_2284A6478(inited + 32);
          MEMORY[0x22AAB9400](v17);
          if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v35 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_22855D3EC();
          }

          sub_22855D43C();
          sub_228451F7C(a3);
        }

        sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
        sub_22840A70C();
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_228560570;
        v19 = MEMORY[0x277D837D0];
        *(v18 + 56) = MEMORY[0x277D837D0];
        v20 = sub_22840A7C8();
        *(v18 + 32) = 0xD000000000000010;
        *(v18 + 40) = 0x800000022856DA90;
        *(v18 + 96) = v19;
        *(v18 + 104) = v20;
        *(v18 + 64) = v20;
        *(v18 + 72) = a1;
        *(v18 + 80) = a2;
        goto LABEL_26;
      }

      if (a1 == 1)
      {
        v14 = v37;
LABEL_30:
        sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
        v32 = sub_22855D39C();

        v33 = [objc_opt_self() andPredicateWithSubpredicates_];

        sub_2284A6464(a1, a2, a3, a4);
        return v33;
      }

LABEL_23:
      sub_22840CC38(0, &qword_27D83F430, &type metadata for SourceProfile, MEMORY[0x277D84560]);
      v28 = swift_initStackObject();
      *(v28 + 16) = xmmword_228560580;
      *(v28 + 32) = a1;
      sub_2284A61C0(a1, a2, a3, 2);
      v29 = v37;
      sub_2284A61C0(a1, a2, a3, 2);
      _s14HealthPlatform8FeedItemC9predicate11matchingAnySo11NSPredicateCSayAA13SourceProfileOG_tFZ_0(v28);
      swift_setDeallocating();
      v30 = sub_2284A6478(v28 + 32);
LABEL_27:
      MEMORY[0x22AAB9400](v30);
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v34 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22855D3EC();
      }

      sub_22855D43C();
      goto LABEL_30;
    }

    if (a2 == 1)
    {
      v13 = v37;
      sub_2284A61C0(a1, 1, a3, 0);
    }

    else
    {
      sub_22840CC38(0, &qword_27D83F430, &type metadata for SourceProfile, MEMORY[0x277D84560]);
      v21 = swift_initStackObject();
      *(v21 + 16) = xmmword_228560580;
      *(v21 + 32) = a2;
      sub_2284506A4(a2);
      v22 = v37;
      sub_2284A61C0(a1, a2, a3, 0);

      sub_2284506A4(a2);
      _s14HealthPlatform8FeedItemC9predicate11matchingAnySo11NSPredicateCSayAA13SourceProfileOG_tFZ_0(v21);
      swift_setDeallocating();
      v23 = sub_2284A6478(v21 + 32);
      MEMORY[0x22AAB9400](v23);
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v36 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22855D3EC();
      }

      sub_22855D43C();
      sub_228451F7C(a2);
    }

    sub_22840A70C();
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_228560570;
    *(v24 + 56) = MEMORY[0x277D837D0];
    *(v24 + 64) = sub_22840A7C8();
    *(v24 + 32) = 0xD000000000000010;
    *(v24 + 40) = 0x800000022856DA90;
    v25 = a1[2];
    if (v25)
    {
      v26 = sub_22840770C(a1[2], 0);
      v27 = sub_2284077A8(&v38, v26 + 4, v25, a1);
      sub_228407958();
      if (v27 != v25)
      {
        __break(1u);
        goto LABEL_23;
      }
    }

    else
    {

      v26 = MEMORY[0x277D84F90];
    }

    sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
    sub_22840CC38(0, &qword_280DEE7C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    *(v24 + 96) = v31;
    *(v24 + 104) = sub_2284A64CC(&qword_280DE95C8);
    *(v24 + 72) = v26;
LABEL_26:
    v30 = sub_22855D62C();
    goto LABEL_27;
  }

  return v6;
}

void PluginFeedItemStorage.init(storageContext:pluginPackage:scope:executorIdentifier:pinnedContentManagerProvider:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v27 = a6;
  v28 = a7;
  v14 = sub_22855CFCC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  (*(v15 + 104))(v18, *MEMORY[0x277D851B0], v14);
  v19 = sub_22855D85C();
  (*(v15 + 8))(v18, v14);
  a8[7] = v19;
  *a8 = a1;
  a8[2] = a2;
  a8[3] = a3;
  sub_22840CC38(0, &qword_280DED000, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_228563E50;
  *(v20 + 32) = a4;
  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  sub_22840A70C();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_228560580;
  *(v21 + 56) = MEMORY[0x277D837D0];
  *(v21 + 64) = sub_22840A7C8();
  *(v21 + 32) = a2;
  *(v21 + 40) = a3;
  v22 = a1;

  v23 = a4;
  *(v20 + 40) = sub_22855D62C();
  v24 = sub_22855D39C();

  v25 = [objc_opt_self() andPredicateWithSubpredicates_];

  a8[4] = v25;
  a8[5] = a5;
  v26 = v28;
  a8[6] = v27;
  a8[1] = v26;
}

uint64_t sub_2284A23F8(uint64_t *a1)
{
  v155 = type metadata accessor for RelevantDateInterval();
  v154 = *(v155 - 8);
  v3 = *(v154 + 64);
  MEMORY[0x28223BE20](v155);
  v151 = &v148 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_22855BE1C();
  v162 = *(v163 - 8);
  v5 = *(v162 + 64);
  MEMORY[0x28223BE20](v163);
  v153 = &v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_2284A5E74(0, &qword_280DEE798, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v152 = &v148 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v166 = &v148 - v12;
  v157 = sub_22855C16C();
  v156 = *(v157 - 8);
  v13 = *(v156 + 64);
  MEMORY[0x28223BE20](v157);
  v15 = &v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284A5E74(0, &qword_280DEEC28, type metadata accessor for RelevantDateInterval, v7);
  v158 = v16;
  v17 = *(*(v16 - 1) + 64);
  MEMORY[0x28223BE20](v16);
  v164 = &v148 - v18;
  v165 = type metadata accessor for PluginFeedItem();
  v19 = *(*(v165 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v165);
  v22 = &v148 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v148 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v148 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v148 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v161 = &v148 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v160 = &v148 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v159 = &v148 - v37;
  MEMORY[0x28223BE20](v36);
  v39 = (&v148 - v38);
  v40 = v1[1];
  v170 = *v1;
  v171 = v40;
  v41 = v1[3];
  v172 = v1[2];
  v173 = v41;
  v42 = a1;
  v43 = *a1;
  v44 = a1[1];
  v45 = sub_2284A47E4(v43, v44);
  if (v45)
  {
    v166 = v45;
    if (qword_280DEEBE8 != -1)
    {
      swift_once();
    }

    v46 = sub_22855CABC();
    __swift_project_value_buffer(v46, qword_280DEEBF0);
    sub_2284A63A8(v42, v39, type metadata accessor for PluginFeedItem);
    v47 = v159;
    sub_2284A63A8(v42, v159, type metadata accessor for PluginFeedItem);
    v48 = v160;
    sub_2284A63A8(v42, v160, type metadata accessor for PluginFeedItem);
    v49 = v42;
    v50 = v161;
    sub_2284A63A8(v49, v161, type metadata accessor for PluginFeedItem);
    sub_2284A5F30(&v170, &v168);
    v51 = sub_22855CA8C();
    v52 = sub_22855D6AC();
    sub_2284A6078(&v170);
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v162 = v54;
      *v53 = 136447490;
      v167 = v54;
      *&v168 = &type metadata for PluginFeedItemStorage;
      sub_2284A5FCC();
      v55 = sub_22855D1BC();
      LODWORD(v163) = v52;
      v57 = sub_2283F8938(v55, v56, &v167);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2082;
      v58 = v171;

      v59 = sub_2283F8938(v58, *(&v58 + 1), &v167);

      *(v53 + 14) = v59;
      *(v53 + 22) = 2080;
      v60 = *v39;
      v61 = v39[1];

      sub_2284A61D4(v39, type metadata accessor for PluginFeedItem);
      v62 = sub_2283F8938(v60, v61, &v167);

      *(v53 + 24) = v62;
      *(v53 + 32) = 2082;
      v63 = v165;
      sub_2284A6674(v47 + *(v165 + 44), v164, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
      v64 = sub_22855D1BC();
      v66 = v65;
      sub_2284A61D4(v47, type metadata accessor for PluginFeedItem);
      v67 = sub_2283F8938(v64, v66, &v167);

      *(v53 + 34) = v67;
      *(v53 + 42) = 2082;
      v68 = v48 + *(v63 + 108);
      v69 = *(v68 + 16);
      v168 = *v68;
      v169 = v69;
      sub_22840CC38(0, &qword_280DED6B0, &type metadata for PinnedContentIdentifier, MEMORY[0x277D83D88]);

      v70 = sub_22855D1BC();
      v72 = v71;
      sub_2284A61D4(v48, type metadata accessor for PluginFeedItem);
      v73 = sub_2283F8938(v70, v72, &v167);

      *(v53 + 44) = v73;
      *(v53 + 52) = 2082;
      LOBYTE(v168) = *(v50 + *(v63 + 48));
      v74 = ContentKind.rawValue.getter();
      v76 = v75;
      sub_2284A61D4(v50, type metadata accessor for PluginFeedItem);
      v77 = sub_2283F8938(v74, v76, &v167);

      *(v53 + 54) = v77;
      _os_log_impl(&dword_2283ED000, v51, v163, "[%{public}s][%{public}s] fetchOrCreate Updating feedItem with unique identifier %s, relevant date %{public}s, pinned content identifier %{public}s and contentkind %{public}s ", v53, 0x3Eu);
      v78 = v162;
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v78, -1, -1);
      MEMORY[0x22AABAD40](v53, -1, -1);
    }

    else
    {

      sub_2284A61D4(v50, type metadata accessor for PluginFeedItem);
      sub_2284A61D4(v48, type metadata accessor for PluginFeedItem);
      sub_2284A61D4(v47, type metadata accessor for PluginFeedItem);
      sub_2284A61D4(v39, type metadata accessor for PluginFeedItem);
    }

    return v166;
  }

  v159 = v44;
  v160 = v43;
  v161 = v15;
  if (qword_280DEEBE8 != -1)
  {
    swift_once();
  }

  v80 = sub_22855CABC();
  __swift_project_value_buffer(v80, qword_280DEEBF0);
  v81 = v42;
  v82 = v31;
  sub_2284A63A8(v42, v31, type metadata accessor for PluginFeedItem);
  v83 = v28;
  sub_2284A63A8(v42, v28, type metadata accessor for PluginFeedItem);
  sub_2284A63A8(v42, v25, type metadata accessor for PluginFeedItem);
  v84 = v22;
  sub_2284A63A8(v42, v22, type metadata accessor for PluginFeedItem);
  sub_2284A5F30(&v170, &v168);
  v85 = sub_22855CA8C();
  v86 = sub_22855D6AC();
  sub_2284A6078(&v170);
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v149 = v86;
    v88 = v82;
    v89 = v87;
    v90 = swift_slowAlloc();
    v150 = v90;
    *v89 = 136447490;
    v167 = v90;
    *&v168 = &type metadata for PluginFeedItemStorage;
    sub_2284A5FCC();
    v91 = sub_22855D1BC();
    v93 = sub_2283F8938(v91, v92, &v167);

    *(v89 + 4) = v93;
    *(v89 + 12) = 2082;
    v94 = v171;

    v95 = sub_2283F8938(v94, *(&v94 + 1), &v167);

    *(v89 + 14) = v95;
    *(v89 + 22) = 2080;
    v96 = *v88;
    v97 = v88[1];

    sub_2284A61D4(v88, type metadata accessor for PluginFeedItem);
    v98 = sub_2283F8938(v96, v97, &v167);

    *(v89 + 24) = v98;
    *(v89 + 32) = 2082;
    v99 = v165;
    sub_2284A6674(v83 + *(v165 + 44), v164, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
    v100 = sub_22855D1BC();
    v102 = v101;
    sub_2284A61D4(v83, type metadata accessor for PluginFeedItem);
    v103 = sub_2283F8938(v100, v102, &v167);

    *(v89 + 34) = v103;
    *(v89 + 42) = 2082;
    v104 = &v25[v99[27]];
    v105 = *(v104 + 2);
    v168 = *v104;
    v169 = v105;
    sub_22840CC38(0, &qword_280DED6B0, &type metadata for PinnedContentIdentifier, MEMORY[0x277D83D88]);

    v106 = sub_22855D1BC();
    v108 = v107;
    sub_2284A61D4(v25, type metadata accessor for PluginFeedItem);
    v109 = sub_2283F8938(v106, v108, &v167);

    *(v89 + 44) = v109;
    *(v89 + 52) = 2082;
    LOBYTE(v168) = *(v84 + v99[12]);
    v110 = ContentKind.rawValue.getter();
    v112 = v111;
    sub_2284A61D4(v84, type metadata accessor for PluginFeedItem);
    v113 = sub_2283F8938(v110, v112, &v167);

    *(v89 + 54) = v113;
    _os_log_impl(&dword_2283ED000, v85, v149, "[%{public}s][%{public}s] fetchOrCreate Creating feedItem with unique identifier %s, relevant date %{public}s, pinned content identifier %{public}s and contentkind %{public}s ", v89, 0x3Eu);
    v114 = v150;
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v114, -1, -1);
    MEMORY[0x22AABAD40](v89, -1, -1);
  }

  else
  {

    sub_2284A61D4(v22, type metadata accessor for PluginFeedItem);
    sub_2284A61D4(v25, type metadata accessor for PluginFeedItem);
    sub_2284A61D4(v83, type metadata accessor for PluginFeedItem);
    sub_2284A61D4(v82, type metadata accessor for PluginFeedItem);
    v99 = v165;
  }

  v115 = *(v81 + 16);
  v116 = *(v81 + 24);
  v117 = *(v81 + 32);
  v118 = v170;
  v119 = *(v81 + 96);
  v148 = *(v81 + 88);
  sub_22840A934(v115, v116, v117);
  sub_22855C15C();
  (*(v162 + 56))(v166, 1, 1, v163);
  v149 = *(v81 + v99[12]);
  LODWORD(v150) = *(v81 + v99[24]);
  v120 = objc_opt_self();
  v121 = sub_22855D17C();
  v122 = [v120 entityForName:v121 inManagedObjectContext:v118];

  if (v122)
  {
    v123 = objc_allocWithZone(type metadata accessor for FeedItem());
    v158 = v122;
    v124 = [v123 initWithEntity:v122 insertIntoManagedObjectContext:v118];
    v125 = sub_22855D17C();
    [v124 setUniqueIdentifier_];

    v126 = v124;
    FeedItem.userInterface.setter(v115, v116, v117);
    v127 = sub_22855D17C();
    [v124 setPluginPackage_];

    v128 = 0;
    v129 = v152;
    if (v119 >> 60 != 15)
    {
      v128 = sub_22855C08C();
    }

    [v126 setUserData_];

    v130 = sub_22855C10C();
    [v126 setDateSubmitted_];

    sub_2284A6674(v166, v129, &qword_280DEE798, MEMORY[0x277CC88A8]);
    v131 = v162;
    v132 = v163;
    v133 = (*(v162 + 48))(v129, 1, v163);
    v134 = v164;
    v135 = v156;
    v136 = v155;
    v79 = v126;
    v137 = v154;
    v138 = v153;
    if (v133 == 1)
    {
      sub_2284A66F4(v129);
    }

    else
    {
      (*(v131 + 32))(v153, v129, v132);
      v139 = v138;
      v140 = v151;
      (*(v131 + 16))(v151, v139, v132);
      *(v140 + *(v136 + 20)) = 0;
      *(v140 + *(v136 + 24)) = 0;
      sub_2284A6780(v140, v134, type metadata accessor for RelevantDateInterval);
      (*(v137 + 56))(v134, 0, 1, v136);
      FeedItem.relevantDateInterval.setter(v134);
      (*(v131 + 8))(v139, v132);
    }

    v141 = v165;
    LOBYTE(v168) = v149;
    ContentKind.rawValue.getter();
    v142 = sub_22855D17C();

    [v79 setContentKindRawValue_];

    sub_22841E13C();
    if (v150 == 13)
    {
      v143 = 0xFFFFFFFFLL;
    }

    else
    {
      v143 = v150;
    }

    [v79 setSearchSectionHintRawValue_];
    sub_22841E13C();
    v144 = sub_22855D17C();
    [v79 setFavoriteStatusRawValue_];

    v145 = sub_22855D17C();
    [v79 setHostViewStyleRawValue_];

    sub_2284A66F4(v166);
    (*(v135 + 8))(v161, v157);
    sub_2284A6674(v81 + *(v141 + 44), v134, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
    FeedItem.relevantDateInterval.setter(v134);
    if (v173)
    {
      v146 = sub_22855D17C();
    }

    else
    {
      v146 = 0;
    }

    [v79 setExecutorIdentifier_];

    return v79;
  }

  result = sub_22855DEDC();
  __break(1u);
  return result;
}

void FeedItem.update(with:)(uint64_t a1)
{
  v3 = v1;
  sub_2284A5E74(0, &qword_280DEEC28, type metadata accessor for RelevantDateInterval, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v93 - v7;
  v9 = [v1 managedObjectContext];
  if (!v9)
  {
    v97[0] = 0;
    v97[1] = 0xE000000000000000;
    sub_22855DC6C();
    MEMORY[0x22AAB92A0](0xD00000000000003ELL, 0x8000000228570B90);
    v89 = [v1 description];
    v90 = sub_22855D1AC();
    v92 = v91;

    MEMORY[0x22AAB92A0](v90, v92);

LABEL_46:
    sub_22855DEDC();
    __break(1u);
    return;
  }

  v10 = v9;
  v95 = v8;
  v96 = type metadata accessor for PluginFeedItem();
  v11 = *(v96 + 76);
  v98 = a1;
  v12 = *(a1 + v11);
  if (v12)
  {
    sub_2284A5E74(0, &qword_280DED028, type metadata accessor for UserProfile, MEMORY[0x277D84560]);
    v13 = (type metadata accessor for UserProfile() - 8);
    v14 = *(*v13 + 72);
    v15 = (*(*v13 + 80) + 32) & ~*(*v13 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_228560580;
    v17 = v16 + v15;
    v18 = v12;
    v19 = [v18 identifier];
    sub_22855C1BC();

    *(v17 + v13[7]) = v18;
    v20 = sub_22845F998(v16);
    swift_setDeallocating();
    sub_2284A61D4(v17, type metadata accessor for UserProfile);
    swift_deallocClassInstance();
  }

  else
  {
    v20 = MEMORY[0x277D84FA0];
  }

  v21 = v12;
  v22 = v10;
  v23 = sub_2284A534C(v20, v22, v12);

  if (v2)
  {

    return;
  }

  v94 = v22;

  sub_228429908(v23);

  type metadata accessor for Profile();
  sub_2284A6594(&qword_280DED540, type metadata accessor for Profile);
  v24 = sub_22855D50C();

  [v3 setProfiles_];

  v25 = v98;
  [v3 setUsesPlatformView_];
  if (*(v25 + 48))
  {
    v26 = *(v25 + 40);
    v27 = sub_22855D17C();
  }

  else
  {
    v27 = 0;
  }

  v28 = v96;
  [v3 setActionHandlerClassName_];

  if (*(v25 + 64) >> 60 == 15)
  {
    v29 = 0;
  }

  else
  {
    v30 = *(v25 + 56);
    v29 = sub_22855C08C();
  }

  [v3 setActionHandlerUserData_];

  v31 = *(v25 + 16);
  v32 = *(v25 + 24);
  v33 = *(v25 + 32);
  sub_22840A934(v31, v32, v33);
  FeedItem.userInterface.setter(v31, v32, v33);
  if (*(v25 + 96) >> 60 == 15)
  {
    v34 = 0;
  }

  else
  {
    v35 = *(v25 + 88);
    v34 = sub_22855C08C();
  }

  v36 = v95;
  [v3 setUserData_];

  sub_2284A6674(v25 + v28[11], v36, &qword_280DEEC28, type metadata accessor for RelevantDateInterval);
  FeedItem.relevantDateInterval.setter(v36);
  v37 = v28[12];
  LOBYTE(v97[0]) = *(v25 + v37);
  ContentKind.rawValue.getter();
  v38 = sub_22855D17C();

  [v3 setContentKindRawValue_];

  sub_22841E13C();
  v39 = (v25 + v28[16]);
  if (v39[1])
  {
    v40 = *v39;
    v41 = sub_22855D17C();
  }

  else
  {
    v41 = 0;
  }

  [v3 setCategoryIdentifier_];

  LOBYTE(v97[0]) = *(v25 + v37);
  v95 = *(v25 + v28[18]);
  [v3 setSearchSectionRawValue_];
  v42 = [v3 keywords];
  type metadata accessor for Keyword();
  sub_2284A6594(qword_280DED548, type metadata accessor for Keyword);
  v43 = sub_22855D51C();

  sub_22841F558(v43);
  v45 = v44;

  sub_228406280(v45);

  v46 = [v3 managedObjectContext];
  if (!v46)
  {
    goto LABEL_46;
  }

  v47 = v46;
  v48 = sub_22842A4E8(MEMORY[0x277D84FA0], v47);

  sub_2284293D4(v48);

  v49 = sub_22855D50C();

  [v3 setKeywords_];

  sub_22841E13C();
  v50 = [v3 managedObjectContext];
  if (!v50)
  {
    goto LABEL_46;
  }

  v51 = v50;
  v52 = sub_22842A4E8(v95, v51);
  v95 = v2;

  sub_2284293D4(v52);

  v53 = sub_22855D50C();

  [v3 setKeywords_];

  sub_22841E13C();
  v54 = v96;
  v55 = v98;
  v56 = (v98 + *(v96 + 80));
  if (v56[1])
  {
    v57 = *v56;
    v58 = sub_22855D17C();
  }

  else
  {
    v58 = 0;
  }

  [v3 setLocalizedCategoryName_];

  v59 = (v55 + v54[21]);
  if (v59[1])
  {
    v60 = *v59;
    v61 = sub_22855D17C();
  }

  else
  {
    v61 = 0;
  }

  [v3 setLocalizedTitle_];

  v62 = (v55 + v54[22]);
  if (v62[1])
  {
    v63 = *v62;
    v64 = sub_22855D17C();
  }

  else
  {
    v64 = 0;
  }

  [v3 setLocalizedDescription_];

  v65 = *(v55 + v54[13]);
  v66 = [v3 managedObjectContext];
  if (!v66)
  {
    goto LABEL_46;
  }

  v67 = v66;
  v68 = sub_228428C28(v65, v67);

  sub_2284291A8(v68);

  type metadata accessor for DataType();
  sub_2284A6594(&qword_280DED538, type metadata accessor for DataType);
  v69 = sub_22855D50C();

  [v3 setDataTypes_];

  v70 = *(v55 + v54[14]);
  v71 = [v3 managedObjectContext];
  if (!v71)
  {
    goto LABEL_46;
  }

  v72 = v71;
  v73 = sub_22842A0C4(v70, v72);

  sub_22842938C(v73);

  type metadata accessor for MeasureIdentifierManagedObject();
  sub_2284A6594(qword_280DED5F8, type metadata accessor for MeasureIdentifierManagedObject);
  v74 = sub_22855D50C();

  [v3 setMeasureIdentifiers_];

  sub_2284C2DAC(v55);
  v75 = *(v55 + v54[15]);
  v76 = [v3 byte_2785F7378];
  if (!v76)
  {
    goto LABEL_46;
  }

  v77 = v76;
  v78 = v3;
  v79 = sub_22842AFCC(v75, v77, v78);

  sub_228429B50(v79);

  type metadata accessor for SharableModelReference();
  sub_2284A6594(&qword_280DED6B8, type metadata accessor for SharableModelReference);
  v80 = sub_22855D50C();

  [v78 setSharableModelReferences_];

  [v78 setSortHint_];
  [v78 setIndexForSearch_];
  v81 = *(v55 + v54[26]);
  if (v81 == 2)
  {
    LOBYTE(v81) = [v78 hideInDiscover];
  }

  [v78 setHideInDiscover_];
  v82 = v55 + v54[27];
  if (*(v82 + 16))
  {
    *v82;
    v83 = sub_22855D17C();
  }

  else
  {
    v83 = 0;
  }

  [v78 setPinnedContentDomain_];

  if (*(v82 + 16))
  {
    v84 = *(v82 + 8);
    v85 = sub_22855D17C();
  }

  else
  {
    v85 = 0;
  }

  [v78 setPinnedContentIdentifier_];

  *(v55 + v54[29]);
  *(v55 + v54[29]);
  v86 = sub_22855D17C();

  [v78 setHostViewStyleRawValue_];

  if (*(v55 + 80))
  {
    v87 = *(v55 + 72);
    v88 = sub_22855D17C();
  }

  else
  {
    v88 = 0;
  }

  [v78 setBaseAutomationIdentifier_];
}

uint64_t sub_2284A42F0(void *a1, id a2)
{
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v51 = *v2;
  v53 = v2[3];
  v9 = v2[4];
  v11 = v2[6];
  v10 = v2[7];
  v12 = [a2 pinnedContentIdentifier];
  if (v12)
  {
    v13 = v12;
    v48 = v8;
    v49 = v9;
    v14 = sub_22855D1AC();
    v16 = v15;

    v17 = a1[3];
    v18 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v17);
    v19 = (*(v18 + 32))(v17, v18);
    if (v3)
    {

      if (qword_280DEEBE8 != -1)
      {
        swift_once();
      }

      v20 = sub_22855CABC();
      __swift_project_value_buffer(v20, qword_280DEEBF0);

      v21 = v10;
      v22 = a2;
      v52 = v51;

      v23 = v49;
      v24 = v3;
      v25 = sub_22855CA8C();
      v26 = sub_22855D68C();
      v50 = v22;

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v54 = v28;
        *v27 = 136446978;
        *(v27 + 4) = sub_2283F8938(0xD000000000000015, 0x8000000228563FB0, &v54);
        *(v27 + 12) = 2082;

        v29 = sub_2283F8938(v48, v53, &v54);

        *(v27 + 14) = v29;
        *(v27 + 22) = 2080;
        v30 = [v50 uniqueIdentifier];
        v31 = sub_22855D1AC();
        v33 = v32;

        v34 = sub_2283F8938(v31, v33, &v54);

        *(v27 + 24) = v34;
        *(v27 + 32) = 2080;
        v35 = v3;
        sub_2283F9B94(0, &qword_280DECFE0);
        v36 = sub_22855D1BC();
        v38 = sub_2283F8938(v36, v37, &v54);

        *(v27 + 34) = v38;
        _os_log_impl(&dword_2283ED000, v25, v26, "[%{public}s][%{public}s] Failing update of %s since pinned content cannot be fetched: %s", v27, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v28, -1, -1);
        MEMORY[0x22AABAD40](v27, -1, -1);
      }

      else
      {
      }

      return swift_willThrow();
    }

    v40 = v19;
    v41 = sub_22855BC9C();
    v42 = *(v41 + 16);
    if (v42)
    {
      v43 = 0;
      v44 = (v41 + 40);
      while (1)
      {
        v45 = *(v44 - 1) == v14 && *v44 == v16;
        if (v45 || (sub_22855E15C() & 1) != 0)
        {
          break;
        }

        ++v43;
        v44 += 2;
        if (v42 == v43)
        {
          goto LABEL_16;
        }
      }

      if (sub_22855BCAC())
      {
        v46 = v43;
      }

      else
      {
        v46 = 0;
      }

      [a2 setSortOrder_];
    }

    else
    {
LABEL_16:

      [a2 setSortOrder_];
    }

    v39 = sub_22855D17C();
    [a2 setFavoriteStatusRawValue_];

    v9 = v49;
  }

  else
  {
    v39 = sub_22855D17C();
    [a2 setFavoriteStatusRawValue_];
  }

  result = [v9 evaluateWithObject_];
  if (result)
  {
    return result;
  }

  sub_2284A6014();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_2284A47E4(uint64_t a1, unint64_t a2)
{
  v62 = sub_22855C16C();
  v5 = *(v62 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v62);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2[1];
  v65 = *v2;
  v66 = v9;
  v10 = v2[3];
  v67 = v2[2];
  v68 = v10;
  v11 = sub_2284A4F8C(a1, a2);
  sub_22840CC38(0, &qword_280DED000, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_228560690;
  v13 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v14 = sub_22855D17C();
  v15 = [v13 initWithKey:v14 ascending:0];

  *(v12 + 32) = v15;
  sub_2283EF310(0, &unk_280DED180, 0x277CCAC98);
  v16 = sub_22855D39C();

  [v11 setSortDescriptors_];

  v17 = v65;
  type metadata accessor for FeedItem();
  v61 = v17;
  v18 = sub_22855D97C();
  v19 = v18;
  v20 = v18 >> 62;
  if (v18 >> 62)
  {
    v21 = sub_22855DB4C();
    if (v21 >= 2)
    {
      goto LABEL_3;
    }

    v21 = sub_22855DB4C();
  }

  else
  {
    v21 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21 > 1)
    {
LABEL_3:
      v60 = v20;
      if (qword_280DEEBE8 != -1)
      {
        swift_once();
      }

      v22 = sub_22855CABC();
      __swift_project_value_buffer(v22, qword_280DEEBF0);
      sub_2284A5F30(&v65, v63);

      v23 = sub_22855CA8C();
      v24 = sub_22855D69C();
      sub_2284A6078(&v65);

      if (os_log_type_enabled(v23, v24))
      {
        v57 = v24;
        v58 = v23;
        v59 = v11;
        v25 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v63[0] = v55;
        *v25 = 136446978;
        v64 = &type metadata for PluginFeedItemStorage;
        sub_2284A5FCC();
        v26 = sub_22855D1BC();
        v28 = sub_2283F8938(v26, v27, v63);

        *(v25 + 4) = v28;
        *(v25 + 12) = 2082;
        v30 = *(&v66 + 1);
        v29 = v66;

        v31 = sub_2283F8938(v29, v30, v63);

        *(v25 + 14) = v31;
        *(v25 + 22) = 2080;
        *(v25 + 24) = sub_2283F8938(a1, a2, v63);
        v56 = v25;
        *(v25 + 32) = 2080;
        v64 = MEMORY[0x277D84F90];
        sub_2284275F0(0, v21, 0);
        v32 = 0;
        v33 = v64;
        do
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v34 = MEMORY[0x22AAB9D20](v32, v19);
          }

          else
          {
            v34 = *(v19 + 8 * v32 + 32);
          }

          v35 = v34;
          v36 = [v34 dateSubmitted];
          sub_22855C13C();

          v64 = v33;
          Kind = v33[1].Kind;
          Description = v33[1].Description;
          if (Kind >= Description >> 1)
          {
            sub_2284275F0(Description > 1, Kind + 1, 1);
            v33 = v64;
          }

          ++v32;
          v33[1].Kind = Kind + 1;
          (*(v5 + 32))(v33 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * Kind, v8, v62);
        }

        while (v21 != v32);
        v39 = MEMORY[0x22AAB9430](v33, v62);
        v41 = v40;

        v42 = sub_2283F8938(v39, v41, v63);

        v43 = v56;
        *(v56 + 34) = v42;
        v44 = v58;
        _os_log_impl(&dword_2283ED000, v58, v57, "[%{public}s][%{public}s] One or more feedItems with unique identifier %s, submitted on %s, attempting cleanup to prevent Health App crashes", v43, 0x2Au);
        v45 = v55;
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v45, -1, -1);
        MEMORY[0x22AABAD40](v43, -1, -1);

        v11 = v59;
      }

      else
      {
      }

      v46 = v61;
      if (!v60)
      {
        v47 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v47)
        {
          goto LABEL_33;
        }

        goto LABEL_19;
      }

      v47 = sub_22855DB4C();
      if (v47)
      {
LABEL_19:
        if (v47 >= 1)
        {
          for (i = 0; i != v47; ++i)
          {
            if ((v19 & 0xC000000000000001) != 0)
            {
              v49 = MEMORY[0x22AAB9D20](i, v19);
            }

            else
            {
              v49 = *(v19 + 8 * i + 32);
            }

            v50 = v49;
            [v46 deleteObject_];
          }

          goto LABEL_33;
        }

        __break(1u);
        goto LABEL_35;
      }

LABEL_33:

      return 0;
    }
  }

  if (!v21)
  {
    goto LABEL_33;
  }

  if ((v19 & 0xC000000000000001) != 0)
  {
LABEL_35:
    v51 = MEMORY[0x22AAB9D20](0, v19);
    goto LABEL_32;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v51 = *(v19 + 32);
LABEL_32:
    v52 = v51;

    return v52;
  }

  __break(1u);
  v63[0] = 0;
  v63[1] = 0xE000000000000000;
  sub_22855DC6C();
  MEMORY[0x22AAB92A0](91, 0xE100000000000000);
  v64 = &type metadata for PluginFeedItemStorage;
  sub_2284A5FCC();
  v54 = sub_22855D1BC();
  MEMORY[0x22AAB92A0](v54);

  MEMORY[0x22AAB92A0](23389, 0xE200000000000000);
  MEMORY[0x22AAB92A0](v66, *(&v66 + 1));
  MEMORY[0x22AAB92A0](0xD00000000000004BLL, 0x8000000228570C30);
  MEMORY[0x22AAB92A0](a1, a2);
  MEMORY[0x22AAB92A0](8250, 0xE200000000000000);
  v64 = v21;
  sub_2283F9B94(0, &qword_280DECFE0);
  sub_22855DDDC();
  result = sub_22855DEDC();
  __break(1u);
  return result;
}

id sub_2284A4F8C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v6 = _s14HealthPlatform8FeedItemC12fetchRequestSo07NSFetchF0CyACGyFZ_0();
  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  sub_22840A70C();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_228560580;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_22840A7C8();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_22855D62C();
  sub_22840CC38(0, &qword_280DED000, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_228563E50;
  *(v9 + 32) = v5;
  *(v9 + 40) = v8;
  v10 = v5;
  v11 = v8;
  v12 = sub_22855D39C();

  v13 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v6 setPredicate_];
  return v6;
}

uint64_t sub_2284A5128()
{
  result = sub_22855D17C();
  qword_280DE93B8 = result;
  return result;
}

id static NSNotificationName.feedItemSubmissionOccurred.getter()
{
  if (qword_280DE93B0 != -1)
  {
    swift_once();
  }

  v1 = qword_280DE93B8;

  return v1;
}

uint64_t (*sub_2284A51BC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AAB9D20](a2, a3);
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
    return sub_2284A6AE8;
  }

  __break(1u);
  return result;
}

void (*sub_2284A523C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AAB9D20](a2, a3);
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
    return sub_2284A52BC;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2284A52C4(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x22AAB9D20](a2, a3);
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
    *v3 = v5;
    return sub_2284A5344;
  }

  __break(1u);
  return result;
}

uint64_t sub_2284A534C(uint64_t a1, unint64_t a2, void *a3)
{
  v40 = a2;
  v6 = type metadata accessor for UserProfile();
  v38 = *(v6 - 8);
  v39 = v6;
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v31[1] = v3;
    v32 = a3;
    v42 = MEMORY[0x277D84F90];
    sub_22855DD4C();
    v12 = a1 + 56;
    v13 = -1 << *(a1 + 32);
    v14 = sub_22855DAAC();
    v15 = *(a1 + 36);
    result = type metadata accessor for Profile();
    v36 = v15;
    v37 = result;
    v16 = 0;
    v33 = a1 + 64;
    v34 = v9;
    v35 = v10;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
    {
      v19 = v14 >> 6;
      if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_23;
      }

      if (v15 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v41 = v16;
      sub_2284A63A8(*(a1 + 48) + *(v38 + 72) * v14, v9, type metadata accessor for UserProfile);
      if (!static Profile.find(_:in:)(*&v9[*(v39 + 20)], v40))
      {
        sub_2284A6410();
        swift_allocError();
        v28 = v32;
        *v29 = v32;
        *(v29 + 8) = 1;
        swift_willThrow();
        v30 = v28;
        sub_2284A61D4(v9, type metadata accessor for UserProfile);
      }

      sub_2284A61D4(v9, type metadata accessor for UserProfile);
      sub_22855DD1C();
      v20 = *(v42 + 16);
      sub_22855DD5C();
      sub_22855DD6C();
      result = sub_22855DD2C();
      v17 = 1 << *(a1 + 32);
      if (v14 >= v17)
      {
        goto LABEL_25;
      }

      v21 = *(v12 + 8 * v19);
      if ((v21 & (1 << v14)) == 0)
      {
        goto LABEL_26;
      }

      LODWORD(v15) = v36;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v22 = v21 & (-2 << (v14 & 0x3F));
      if (v22)
      {
        v17 = __clz(__rbit64(v22)) | v14 & 0x7FFFFFFFFFFFFFC0;
        v9 = v34;
        v18 = v35;
      }

      else
      {
        v23 = v19 << 6;
        v24 = v19 + 1;
        v9 = v34;
        v25 = (v33 + 8 * v19);
        v18 = v35;
        while (v24 < (v17 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_228416CB8(v14, v36, 0);
            v17 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = sub_228416CB8(v14, v36, 0);
      }

LABEL_4:
      v16 = v41 + 1;
      v14 = v17;
      if (v41 + 1 == v18)
      {
        return v42;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

void sub_2284A56B8(unint64_t a1, uint64_t a2, id *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22855DB4C())
  {
    v5 = 0;
    v14 = i;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x22AAB9D20](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      FeedItem.contentKind.getter(&v17);
      sub_228483930(&v18, v17);
      v9 = [v7 profiles];
      type metadata accessor for Profile();
      sub_2284A6594(&qword_280DED540, type metadata accessor for Profile);
      v10 = sub_22855D51C();

      v11 = sub_22841FCB4(v10);

      v12 = sub_22842941C(v11);

      v13 = sub_2284C2B70(v12);

      sub_228484978(&v16, v13);

      [*a3 deleteObject_];
      ++v5;
      if (v8 == v14)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

id _sSo11NSPredicateC14HealthPlatformE24feedItemStoragePredicate3for17profileIdentifierAB0B13Orchestration8Executor_p_So09HKProfileJ0CtFZ_0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_22855C73C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  sub_22840A70C();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_228560580;
  swift_getObjectType();
  sub_22855CA1C();
  v10 = sub_22855C72C();
  v12 = v11;
  (*(v5 + 8))(v8, v4);
  v13 = MEMORY[0x277D837D0];
  *(v9 + 56) = MEMORY[0x277D837D0];
  v14 = sub_22840A7C8();
  *(v9 + 64) = v14;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v15 = sub_22855D62C();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_228560570;
  *(v16 + 56) = v13;
  *(v16 + 64) = v14;
  *(v16 + 32) = 0x73656C69666F7270;
  *(v16 + 40) = 0xE800000000000000;
  result = [a3 identifier];
  if (result)
  {
    v18 = result;
    *(v16 + 96) = sub_2283EF310(0, &unk_280DED0C0, 0x277CCAD78);
    *(v16 + 104) = sub_22840A81C();
    *(v16 + 72) = v18;
    v19 = sub_22855D62C();
    sub_22840CC38(0, &qword_280DED000, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_228563E50;
    *(v20 + 32) = v15;
    *(v20 + 40) = v19;
    v21 = v15;
    v22 = v19;
    v23 = sub_22855D39C();

    v24 = [objc_opt_self() andPredicateWithSubpredicates_];

    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id _sSo11NSPredicateC14HealthPlatformE42feedItemStoragePredicateForAgnosticProfile3forAB0B13Orchestration8Executor_p_tFZ_0()
{
  v0 = sub_22855C73C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  sub_22840A70C();
  v5 = swift_allocObject();
  v20 = xmmword_228560580;
  *(v5 + 16) = xmmword_228560580;
  swift_getObjectType();
  sub_22855CA1C();
  v6 = sub_22855C72C();
  v8 = v7;
  (*(v1 + 8))(v4, v0);
  v9 = MEMORY[0x277D837D0];
  *(v5 + 56) = MEMORY[0x277D837D0];
  v10 = sub_22840A7C8();
  *(v5 + 64) = v10;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  v11 = sub_22855D62C();
  v12 = swift_allocObject();
  *(v12 + 16) = v20;
  *(v12 + 56) = v9;
  *(v12 + 64) = v10;
  *(v12 + 32) = 0x73656C69666F7270;
  *(v12 + 40) = 0xE800000000000000;
  v13 = sub_22855D62C();
  sub_22840CC38(0, &qword_280DED000, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_228563E50;
  *(v14 + 32) = v11;
  *(v14 + 40) = v13;
  v15 = v11;
  v16 = v13;
  v17 = sub_22855D39C();

  v18 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v18;
}

void sub_2284A5E74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2284A5EE8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

void sub_2284A5F68()
{
  if (!qword_280DE9230)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE9230);
    }
  }
}

unint64_t sub_2284A5FCC()
{
  result = qword_280DEBBF8;
  if (!qword_280DEBBF8)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280DEBBF8);
  }

  return result;
}

unint64_t sub_2284A6014()
{
  result = qword_27D83FB40;
  if (!qword_27D83FB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FB40);
  }

  return result;
}

uint64_t objectdestroy_31Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 72);

  v5 = *(v0 + 96);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t objectdestroy_10Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  v4 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

id sub_2284A61C0(id result, void *a2, void *a3, char a4)
{
  if (a4 != -1)
  {
    return sub_22845063C(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_2284A61D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2284A6238()
{
  result = qword_27D83FB48;
  if (!qword_27D83FB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FB48);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2284A6300(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2284A6348(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2284A63A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2284A6410()
{
  result = qword_27D83FB50;
  if (!qword_27D83FB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FB50);
  }

  return result;
}

void sub_2284A6464(void *a1, void *a2, void *a3, char a4)
{
  if (a4 != -1)
  {
    sub_228451F14(a1, a2, a3, a4);
  }
}

uint64_t sub_2284A64CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22840CC38(255, &qword_280DEE7C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2284A6534(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_2284A6540()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 40);
  v5 = *(v0 + 32);
  v6 = v3;
  return v2(&v5);
}

id sub_2284A6588(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_2284A6594(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2284A65DC()
{
  v1 = *(type metadata accessor for PluginFeedItem() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(v3 + 8);

  return sub_2284A03E4(v0 + v2, v4);
}

uint64_t sub_2284A6674(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2284A5E74(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2284A66F4(uint64_t a1)
{
  sub_2284A5E74(0, &qword_280DEE798, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2284A6780(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2284A67E8()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[4];
  return v2(&v4);
}

void sub_2284A6828()
{
  if (!qword_280DE9570)
  {
    sub_2284A5E74(255, &qword_280DE9630, type metadata accessor for PluginFeedItem, MEMORY[0x277D83940]);
    sub_2283F9B94(255, &qword_280DECFE0);
    v0 = sub_22855D4CC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9570);
    }
  }
}

uint64_t sub_2284A68D8(void *a1, char a2)
{
  sub_2284A6828();
  v5 = *(*(v4 - 8) + 80);

  return sub_22849E81C(a1, a2 & 1);
}

void sub_2284A6958()
{
  if (!qword_280DE9560)
  {
    sub_2283F9B94(255, &qword_280DECFE0);
    v0 = sub_22855D4CC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9560);
    }
  }
}

uint64_t sub_2284A69D4(void *a1)
{
  sub_2284A6958();
  v3 = *(*(v2 - 8) + 80);
  return sub_22849E318(a1);
}

uint64_t objectdestroy_101Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

void sub_2284A6B14(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 96))(Strong);
  }

  else
  {
    if (qword_280DEEBC8 != -1)
    {
      swift_once();
    }

    v4 = sub_22855CABC();
    __swift_project_value_buffer(v4, qword_280DEEBD0);
    v5 = sub_22855CA8C();
    v6 = sub_22855D6AC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12[0] = v8;
      *v7 = 136315138;
      v12[4] = a2;
      swift_getMetatypeMetadata();
      v9 = sub_22855D1BC();
      v11 = sub_2283F8938(v9, v10, v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_2283ED000, v5, v6, "[%s]: init()", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x22AABAD40](v8, -1, -1);
      MEMORY[0x22AABAD40](v7, -1, -1);
    }
  }
}

void sub_2284A6CC0()
{
  v1 = *v0;
  if (qword_280DEEBC8 != -1)
  {
    swift_once();
  }

  v2 = sub_22855CABC();
  __swift_project_value_buffer(v2, qword_280DEEBD0);
  oslog = sub_22855CA8C();
  v3 = sub_22855D6AC();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10[0] = v5;
    v10[1] = v1;
    *v4 = 136315138;
    swift_getMetatypeMetadata();
    v6 = sub_22855D1BC();
    v8 = sub_2283F8938(v6, v7, v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_2283ED000, oslog, v3, "[%s]: sourceNotification() default implementation :(", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x22AABAD40](v5, -1, -1);
    MEMORY[0x22AABAD40](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t SignalListener.deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_22855D8FC();
  swift_unknownObjectRelease();
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t SignalListener.__deallocating_deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_22855D8FC();
  swift_unknownObjectRelease();
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *sub_2284A6F94(int a1)
{
  v2 = v1;
  v20 = a1;
  v3 = *v1;
  v21 = sub_22855CFBC();
  v4 = *(v21 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v21);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_22855CFEC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2284A7288();
  v1[2] = sub_22855D8AC();
  swift_getObjectType();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v3;
  aBlock[4] = sub_2284A72D4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228401F54;
  aBlock[3] = &block_descriptor_12;
  v15 = _Block_copy(aBlock);

  sub_2284AED00();
  sub_2284AED04();
  sub_22855D8CC();
  _Block_release(v15);
  (*(v4 + 8))(v7, v21);
  (*(v9 + 8))(v12, v8);

  v16 = sub_22855CADC();
  signal(v20, v16);
  v17 = v1[2];
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_22855D91C();
  swift_unknownObjectRelease();
  return v2;
}

unint64_t sub_2284A7288()
{
  result = qword_280DED118;
  if (!qword_280DED118)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DED118);
  }

  return result;
}

void sub_2284A72DC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_2284A7354(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = result + 32;
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 16);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    v8 = *v2;

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 24) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v9 = v6 + v5;
      }

      else
      {
        v9 = v6;
      }

      result = sub_2284267E0(result, v9, 1, v3);
      v3 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v10 = *(v3 + 16);
          v11 = __OFADD__(v10, v5);
          v12 = v10 + v5;
          if (v11)
          {
            goto LABEL_23;
          }

          *(v3 + 16) = v12;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 8;
    if (!--v1)
    {
      return v3;
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

uint64_t sub_2284A7494(uint64_t a1)
{
  v7 = v1;
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = sub_22855DB4C();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  v10 = *v1;
  if (!(*v1 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = __OFADD__(v11, v9);
    result = v11 + v9;
    if (!v12)
    {
      goto LABEL_6;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v10 < 0)
  {
    v18 = *v1;
  }

  v19 = sub_22855DB4C();
  v12 = __OFADD__(v19, v9);
  result = v19 + v9;
  if (v12)
  {
    goto LABEL_16;
  }

LABEL_6:
  sub_2284FD948();
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v14 = *(v3 + 0x10);
  v15 = ((*(v3 + 0x18) >> 1) - v14);
  result = sub_2284626A4(&v36, (v3 + 8 * v14 + 32), v15, v8);
  if (result < v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (result >= 1)
  {
    v16 = *(v3 + 16);
    v12 = __OFADD__(v16, result);
    v17 = v16 + result;
    if (v12)
    {
      __break(1u);
      goto LABEL_22;
    }

    *(v3 + 16) = v17;
  }

  if (result != v15)
  {
LABEL_11:
    result = sub_228407958();
    *v7 = v2;
    return result;
  }

LABEL_18:
  v4 = *(v3 + 16);
  v3 = v36;
  v5 = v37;
  v8 = v39;
  v33 = v38;
  v6 = v40;
  if (v36 < 0)
  {
LABEL_22:
    if (!sub_22855DB8C())
    {
      goto LABEL_11;
    }

    sub_2283EF310(0, &qword_280DEE7B8, 0x277CCD720);
    result = swift_dynamicCast();
    v21 = v35;
    goto LABEL_33;
  }

  if (!v40)
  {
    v22 = (v38 + 64) >> 6;
    if (v22 <= v39 + 1)
    {
      v23 = v39 + 1;
    }

    else
    {
      v23 = (v38 + 64) >> 6;
    }

    v24 = v23 - 1;
    while (1)
    {
      v20 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_61;
      }

      if (v20 >= v22)
      {
        v21 = 0;
        v6 = 0;
        goto LABEL_32;
      }

      v6 = *(v37 + 8 * v20);
      ++v8;
      if (v6)
      {
        goto LABEL_31;
      }
    }
  }

  v20 = v39;
LABEL_31:
  v25 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v21 = *(*(v36 + 48) + ((v20 << 9) | (8 * v25)));
  result = v21;
  v24 = v20;
LABEL_32:
  v39 = v24;
  v40 = v6;
  v8 = v24;
LABEL_33:
  if (!v21)
  {
    goto LABEL_11;
  }

  v26 = (v33 + 64) >> 6;
LABEL_35:
  if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = sub_22855D3EC();
  }

  v2 = *v7;
  v27 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v32 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v4 > v27)
  {
    v27 = v4;
  }

  v34 = v27;
  while (1)
  {
    while (1)
    {
      if (v4 == v34)
      {
        v4 = v34;
        *(v32 + 16) = v34;
        goto LABEL_35;
      }

      *(v32 + 32 + 8 * v4++) = v21;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_22855DB8C())
      {
        sub_2283EF310(0, &qword_280DEE7B8, 0x277CCD720);
        result = swift_dynamicCast();
        v21 = v35;
        if (v35)
        {
          continue;
        }
      }

      goto LABEL_58;
    }

    if (!v6)
    {
      break;
    }

    v28 = v8;
LABEL_56:
    v31 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v21 = *(*(v3 + 48) + ((v28 << 9) | (8 * v31)));
    result = v21;
    v30 = v28;
LABEL_41:
    v36 = v3;
    v37 = v5;
    v38 = v33;
    v39 = v30;
    v8 = v30;
    v40 = v6;
    if (!v21)
    {
LABEL_58:
      *(v32 + 16) = v4;
      goto LABEL_11;
    }
  }

  if (v26 <= v8 + 1)
  {
    v29 = v8 + 1;
  }

  else
  {
    v29 = (v33 + 64) >> 6;
  }

  v30 = v29 - 1;
  while (1)
  {
    v28 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v28 >= v26)
    {
      v21 = 0;
      v6 = 0;
      goto LABEL_41;
    }

    v6 = *(v5 + 8 * v28);
    ++v8;
    if (v6)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_2284A781C(uint64_t result)
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

  result = sub_228409BF8(result, v11, 1, v3);
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

void *sub_2284A7914(void *result)
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

  result = sub_2284267C0(result, v11, 1, v3);
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

  sub_2283FBB5C();
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

uint64_t sub_2284A7A0C(uint64_t result)
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

  result = sub_2284267E0(result, v11, 1, v3);
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

uint64_t sub_2284A7B04(uint64_t result)
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

  v3 = sub_228426954(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  result = type metadata accessor for ProtectedNotificationContentState(0);
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

uint64_t sub_2284A7C30(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  v6 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = sub_22855DCBC();
  v3 = result;
  if (!*(v5 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_2284ADF84(0, &qword_280DE9958, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277CBCD88]);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2284A7D4C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_22855DB4C();
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

  v15 = sub_22855DB4C();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_2284FD948();
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2284ACB8C(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
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

void *sub_2284A7E3C(void *result)
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

  result = sub_228427160(result, v11, 1, v3);
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

  sub_2283F9B94(0, &qword_280DE9F60);
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

uint64_t HealthAppNotificationManager.__allocating_init(notificationCenter:notificationManagerStore:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *(a2 + 32);
  type metadata accessor for UnfairLock();
  v6 = swift_allocObject();
  v7 = swift_slowAlloc();
  *(v6 + 16) = v7;
  *v7 = 0;
  *(v4 + 64) = v6;
  *(v4 + 72) = sub_22840C148(MEMORY[0x277D84F90]);
  *(v4 + 16) = a1;
  v8 = *(a2 + 16);
  *(v4 + 24) = *a2;
  *(v4 + 40) = v8;
  *(v4 + 56) = v5;
  return v4;
}

uint64_t HealthAppNotificationManager.init(notificationCenter:notificationManagerStore:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  type metadata accessor for UnfairLock();
  v6 = swift_allocObject();
  v7 = swift_slowAlloc();
  *(v6 + 16) = v7;
  *v7 = 0;
  *(v2 + 64) = v6;
  *(v2 + 72) = sub_22840C148(MEMORY[0x277D84F90]);
  *(v2 + 16) = a1;
  v8 = *(a2 + 16);
  *(v2 + 24) = *a2;
  *(v2 + 40) = v8;
  *(v2 + 56) = v5;
  return v2;
}

void sub_2284A8088(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = &qword_280DEDFB0[10];
  if (a1)
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v9 = sub_22855CABC();
    __swift_project_value_buffer(v9, qword_280DEEC98);
    v10 = sub_22855CA8C();
    v11 = sub_22855D6AC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      aBlock[0] = v13;
      *v12 = 136315138;
      v14 = sub_22855E34C();
      v16 = v7;
      v17 = sub_2283F8938(v14, v15, aBlock);

      *(v12 + 4) = v17;
      v7 = v16;
      v8 = qword_280DEDFB0 + 80;
      _os_log_impl(&dword_2283ED000, v10, v11, "%s [TCC] requestAuthorization adding .criticalAlert as an authorization option.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x22AABAD40](v13, -1, -1);
      MEMORY[0x22AABAD40](v12, -1, -1);
    }

    v18 = 55;
  }

  else
  {
    v18 = 39;
  }

  if (v8[402] != -1)
  {
    swift_once();
  }

  v19 = sub_22855CABC();
  __swift_project_value_buffer(v19, qword_280DEEC98);
  v20 = sub_22855CA8C();
  v21 = sub_22855D6AC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v32 = a2;
    aBlock[0] = swift_slowAlloc();
    v23 = a3;
    v24 = aBlock[0];
    *v22 = 136315138;
    v25 = sub_22855E34C();
    v27 = sub_2283F8938(v25, v26, aBlock);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_2283ED000, v20, v21, "%s [TCC] requestAuthorization initiating", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    v28 = v24;
    a3 = v23;
    a2 = v32;
    MEMORY[0x22AABAD40](v28, -1, -1);
    MEMORY[0x22AABAD40](v22, -1, -1);
  }

  v29 = v4[2];
  v30 = swift_allocObject();
  v30[2] = a2;
  v30[3] = a3;
  v30[4] = v7;
  aBlock[4] = sub_2284ACDEC;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2284A72DC;
  aBlock[3] = &block_descriptor_13;
  v31 = _Block_copy(aBlock);
  sub_22840FE74(a2);

  [v29 requestAuthorizationWithOptions:v18 completionHandler:v31];
  _Block_release(v31);
}

void sub_2284A8428(char a1, id a2, void (*a3)(void, id))
{
  v6 = &qword_280DEDFB0[10];
  if (a2)
  {
    v7 = a2;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v8 = sub_22855CABC();
    __swift_project_value_buffer(v8, qword_280DEEC98);
    v9 = a2;
    v10 = sub_22855CA8C();
    v11 = sub_22855D68C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v29 = v13;
      *v12 = 136315394;
      v14 = sub_22855E34C();
      v16 = sub_2283F8938(v14, v15, &v29);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      v17 = a2;
      sub_2283F9B94(0, &qword_280DECFE0);
      v18 = sub_22855D1CC();
      v20 = sub_2283F8938(v18, v19, &v29);
      v6 = qword_280DEDFB0 + 80;

      *(v12 + 14) = v20;
      _os_log_impl(&dword_2283ED000, v10, v11, "%s [TCC] requestAuthorization error: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v13, -1, -1);
      MEMORY[0x22AABAD40](v12, -1, -1);
    }

    else
    {
    }
  }

  if (v6[402] != -1)
  {
    swift_once();
  }

  v21 = sub_22855CABC();
  __swift_project_value_buffer(v21, qword_280DEEC98);
  v22 = sub_22855CA8C();
  v23 = sub_22855D6AC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v29 = v25;
    *v24 = 136315394;
    v26 = sub_22855E34C();
    v28 = sub_2283F8938(v26, v27, &v29);

    *(v24 + 4) = v28;
    *(v24 + 12) = 1024;
    *(v24 + 14) = a1 & 1;
    _os_log_impl(&dword_2283ED000, v22, v23, "%s [TCC] requestAuthorization success: %{BOOL}d", v24, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x22AABAD40](v25, -1, -1);
    MEMORY[0x22AABAD40](v24, -1, -1);
  }

  if (a3)
  {
    a3(a1 & 1, a2);
  }
}

uint64_t sub_2284A8780()
{
  sub_2283FCFBC(0, &qword_280DE9790, &qword_280DE92D8, 0x277CE1FD0, MEMORY[0x277CBCEA8]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();

  return sub_22855CE0C();
}

uint64_t sub_2284A8808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2284AEB88;
  *(v7 + 24) = v6;
  v8 = *(a3 + 16);
  v11[4] = sub_2284AEA94;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_22847BF78;
  v11[3] = &block_descriptor_112_0;
  v9 = _Block_copy(v11);

  [v8 getNotificationSettingsWithCompletionHandler_];
  _Block_release(v9);
}

void sub_2284A8938(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_22847BF78;
  v5[3] = &block_descriptor_3;
  v4 = _Block_copy(v5);

  [v3 getNotificationSettingsWithCompletionHandler_];
  _Block_release(v4);
}

BOOL sub_2284A8A14(NSObject *a1, char a2, NSObject *a3)
{
  v4 = v3;
  v8 = *v4;
  isa = a3[-1].isa;
  v10 = *(isa + 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v17 = &v39 - v16;
  if (v18)
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v21 = sub_22855CABC();
    __swift_project_value_buffer(v21, qword_280DEEC98);
    v22 = *(isa + 2);
    v22(v17, a1, a3);
    v23 = sub_22855CA8C();
    v24 = sub_22855D6AC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v40 = v24;
      v26 = v25;
      v41 = swift_slowAlloc();
      v42 = v41;
      *v26 = 136315394;
      v27 = sub_22855E34C();
      v29 = sub_2283F8938(v27, v28, &v42);
      v39 = v23;
      v30 = a2;
      v31 = v29;

      *(v26 + 4) = v31;
      a2 = v30;
      *(v26 + 12) = 2080;
      v22(v13, v17, a3);
      v32 = sub_22855D1BC();
      v34 = v33;
      (*(isa + 1))(v17, a3);
      v35 = sub_2283F8938(v32, v34, &v42);

      *(v26 + 14) = v35;
      v36 = v39;
      _os_log_impl(&dword_2283ED000, v39, v40, "%s Preventing notification coalescing in non-background mode for %s", v26, 0x16u);
      v37 = v41;
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v37, -1, -1);
      MEMORY[0x22AABAD40](v26, -1, -1);
    }

    else
    {

      (*(isa + 1))(v17, a3);
    }
  }

  else
  {
    v42 = *(v15 + 64);
    MEMORY[0x28223BE20](v14);
    *(&v39 - 4) = a3;
    *(&v39 - 3) = v19;
    *(&v39 - 2) = v20;
    *(&v39 - 1) = a1;
    type metadata accessor for UnfairLock();
    sub_2283FD034(&qword_280DEDC00, type metadata accessor for UnfairLock);

    sub_22855C3CC();
  }

  return (a2 & 1) == 0;
}

uint64_t sub_2284A8DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_22855DA2C();
  v35 = *(v37 - 8);
  v8 = *(v35 + 64);
  v9 = MEMORY[0x28223BE20](v37);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  v14 = a2;
  v34 = *(a4 + 16);
  v15 = v34(a3, a4);
  v17 = v16;
  swift_beginAccess();
  v36 = a1;
  v18 = *(a1 + 72);
  if (*(v18 + 16) && (v19 = *(a1 + 72), , v20 = sub_2283F6D18(v15, v17), v22 = v21, , (v22 & 1) != 0))
  {
    sub_2283F9B10(*(v18 + 56) + 40 * v20, &v39);
  }

  else
  {

    v41 = 0;
    v39 = 0u;
    v40 = 0u;
  }

  v23 = v37;
  v24 = v14;
  sub_2284AEA2C();
  v25 = swift_dynamicCast();
  v26 = *(a3 - 8);
  (*(v26 + 56))(v13, v25 ^ 1u, 1, a3);
  v27 = v35;
  (*(v35 + 16))(v11, v13, v23);
  if ((*(v26 + 48))(v11, 1, a3) == 1)
  {
    (*(v27 + 8))(v11, v23);
    *(&v40 + 1) = a3;
    v41 = a4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v39);
    (*(v26 + 16))(boxed_opaque_existential_1, v24, a3);
  }

  else
  {
    *(&v40 + 1) = a3;
    v41 = a4;
    v29 = __swift_allocate_boxed_opaque_existential_1(&v39);
    (*(v26 + 16))(v29, v24, a3);
    (*(a4 + 32))(v38, &v39, a3, a4);
    __swift_destroy_boxed_opaque_existential_0(&v39);
    (*(v26 + 8))(v11, a3);
    sub_22844C570(v38, &v39);
  }

  v30 = v34(a3, a4);
  v32 = v31;
  sub_2283F9B10(&v39, v38);
  swift_beginAccess();
  sub_2284D2138(v38, v30, v32);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0(&v39);
  return (*(v27 + 8))(v13, v23);
}

uint64_t sub_2284A9170(uint64_t a1)
{
  v2 = v1;
  sub_2284ACE50();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = swift_allocObject();
  v11[2] = sub_2284AD0DC;
  v11[3] = v2;
  v11[4] = sub_2284AD0E4;
  v11[5] = v10;
  sub_2284ACEE4();
  sub_2283FD034(&qword_27D83FB98, sub_2284ACEE4);
  swift_retain_n();

  sub_22855CE2C();
  sub_2283FD034(&qword_27D83FBA0, sub_2284ACE50);
  v12 = sub_22855CE6C();

  (*(v6 + 8))(v9, v5);
  return v12;
}

void sub_2284A9384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2284A943C;
  v5[3] = &block_descriptor_103;
  v4 = _Block_copy(v5);

  [v3 getPendingNotificationRequestsWithCompletionHandler_];
  _Block_release(v4);
}

unint64_t sub_2284A9450(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  v18 = a2;
  if (*(a2 + 16))
  {
    v20 = MEMORY[0x277D84F90];
    if (a1 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22855DB4C())
    {
      v4 = 0;
      v16 = v2 & 0xFFFFFFFFFFFFFF8;
      v17 = v2 & 0xC000000000000001;
      while (1)
      {
        if (v17)
        {
          v5 = MEMORY[0x22AAB9D20](v4, v2);
        }

        else
        {
          if (v4 >= *(v16 + 16))
          {
            goto LABEL_17;
          }

          v5 = *(v2 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v8 = [v5 identifier];
        v9 = sub_22855D1AC();
        v11 = v10;

        v19[0] = v9;
        v19[1] = v11;
        MEMORY[0x28223BE20](v12);
        v15[2] = v19;
        LOBYTE(v8) = sub_2284C6D9C(sub_228435468, v15, v18);

        if (v8)
        {
          sub_22855DD1C();
          v13 = *(v20 + 16);
          sub_22855DD5C();
          sub_22855DD6C();
          sub_22855DD2C();
        }

        else
        {
        }

        ++v4;
        if (v7 == i)
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

    return MEMORY[0x277D84F90];
  }

  else
  {
  }

  return v2;
}

uint64_t sub_2284A9624(uint64_t a1)
{
  v2 = v1;
  sub_2284AD0F8();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = swift_allocObject();
  v11[2] = sub_2284AD2C0;
  v11[3] = v2;
  v11[4] = sub_2284AD2C8;
  v11[5] = v10;
  sub_2284AD18C();
  sub_2283FD034(&qword_27D83FBD0, sub_2284AD18C);
  swift_retain_n();

  sub_22855CE2C();
  sub_2283FD034(&qword_27D83FBD8, sub_2284AD0F8);
  v12 = sub_22855CE6C();

  (*(v6 + 8))(v9, v5);
  return v12;
}

void sub_2284A9838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2284A98F0;
  v5[3] = &block_descriptor_87;
  v4 = _Block_copy(v5);

  [v3 getDeliveredNotificationsWithCompletionHandler_];
  _Block_release(v4);
}

uint64_t sub_2284A9904(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_2283EF310(0, a3, a4);
  v6 = sub_22855D3AC();

  v5(v6);
}

unint64_t sub_2284A9980(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  v18 = a2;
  if (*(a2 + 16))
  {
    v20 = MEMORY[0x277D84F90];
    if (a1 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22855DB4C())
    {
      v4 = 0;
      v17 = v2 & 0xC000000000000001;
      while (1)
      {
        if (v17)
        {
          v5 = MEMORY[0x22AAB9D20](v4, v2);
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v5 = *(v2 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v8 = [v5 request];
        v9 = [v8 identifier];

        v10 = sub_22855D1AC();
        v12 = v11;

        v19[0] = v10;
        v19[1] = v12;
        MEMORY[0x28223BE20](v13);
        v16[2] = v19;
        LOBYTE(v10) = sub_2284C6D9C(sub_228434EDC, v16, v18);

        if (v10)
        {
          sub_22855DD1C();
          v14 = *(v20 + 16);
          sub_22855DD5C();
          sub_22855DD6C();
          sub_22855DD2C();
        }

        else
        {
        }

        ++v4;
        if (v7 == i)
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

    return MEMORY[0x277D84F90];
  }

  else
  {
  }

  return v2;
}

uint64_t sub_2284A9B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_2284ACFA0(0, &qword_27D83FB80, &qword_27D83FB88, &qword_280DE92E8, 0x277CE1FC0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();

  sub_22855CE0C();
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  sub_2284AD00C(0, &qword_27D83FB88, &qword_280DE92E8, 0x277CE1FC0);
  sub_2284AD064();

  sub_22855CE8C();
}

uint64_t sub_2284A9CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_2284ACFA0(0, &qword_27D83FBB8, &qword_27D83FBC0, &qword_27D83F918, 0x277CE1F78);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();

  sub_22855CE0C();
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  sub_2284AD00C(0, &qword_27D83FBC0, &qword_27D83F918, 0x277CE1F78);
  sub_2284AD248();

  sub_22855CE8C();
}

uint64_t sub_2284A9E50(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = a7;
  *(v14 + 24) = v13;

  a3(a8, v14);
}

void sub_2284A9F18(uint64_t a1, SEL *a2)
{
  v4 = *(v2 + 16);
  v5 = sub_22855D39C();
  [v4 *a2];
}

uint64_t sub_2284A9F78()
{
  sub_2284AD2DC();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284AD490();
  v8 = *(v7 - 8);
  v19 = v7;
  v20 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 40);
  v23 = *(v0 + 24);
  v24 = v12;
  v25 = *(v0 + 56);
  sub_2284AD5D4(&v23, v22);
  v21 = sub_22855D6DC();
  v13 = swift_allocObject();
  v14 = v24;
  *(v13 + 16) = v23;
  *(v13 + 32) = v14;
  *(v13 + 48) = v25;
  sub_2284AD5D4(&v23, v22);
  sub_2284AD3AC();
  sub_2284AE260(0, &qword_280DE9638, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277D83940]);
  sub_2283FD034(&qword_280DE97C0, sub_2284AD3AC);
  sub_22855CF0C();

  sub_2283FD034(&qword_280DE9AB8, sub_2284AD2DC);
  v15 = sub_22855CE6C();
  sub_2284AD64C(&v23);
  (*(v3 + 8))(v6, v2);
  v22[0] = v15;

  sub_22855CCBC();
  sub_2284AD530();
  sub_2283FD034(&qword_280DE9900, sub_2284AD530);
  sub_22855CF2C();

  sub_2283FD034(&qword_280DE9A38, sub_2284AD490);
  v16 = v19;
  v17 = sub_22855CE6C();
  (*(v20 + 8))(v11, v16);
  return v17;
}

uint64_t sub_2284AA330@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_2284AE75C(*a1);
  v4 = sub_2284AA9DC(v3, 0);

  *a2 = v4;
  return result;
}

uint64_t sub_2284AA380(uint64_t a1)
{
  v22 = a1;
  sub_2284AD2DC();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284AD490();
  v9 = *(v8 - 8);
  v23 = v8;
  v24 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 40);
  v27 = *(v1 + 24);
  v28 = v13;
  v29 = *(v1 + 56);
  sub_2284AD5D4(&v27, v26);
  v25 = sub_22855D6DC();
  v14 = swift_allocObject();
  v15 = v28;
  *(v14 + 16) = v27;
  *(v14 + 32) = v15;
  *(v14 + 48) = v29;
  sub_2284AD5D4(&v27, v26);
  sub_2284AD3AC();
  sub_2284AE260(0, &qword_280DE9638, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277D83940]);
  sub_2283FD034(&qword_280DE97C0, sub_2284AD3AC);
  sub_22855CF0C();

  sub_2283FD034(&qword_280DE9AB8, sub_2284AD2DC);
  v16 = sub_22855CE6C();
  sub_2284AD64C(&v27);
  (*(v4 + 8))(v7, v3);
  v26[0] = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = v22;
  *(v17 + 24) = v1;

  sub_22855CCBC();
  sub_2284AD530();
  sub_2283FD034(&qword_280DE9900, sub_2284AD530);
  sub_22855CF2C();

  sub_2283FD034(&qword_280DE9A38, sub_2284AD490);
  v18 = v23;
  v19 = sub_22855CE6C();
  (*(v24 + 8))(v12, v18);
  return v19;
}

void sub_2284AA760(uint64_t isUniquelyReferenced_nonNull_native@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v33 = a3;
  v34 = a4;
  v41 = a2;
  v4 = *isUniquelyReferenced_nonNull_native;
  v5 = *(*isUniquelyReferenced_nonNull_native + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v4 + 80;
    v36 = *(*isUniquelyReferenced_nonNull_native + 16);
    v31 = (v5 - 1);
    v8 = MEMORY[0x277D84F90];
    v40 = v4;
    v32 = v4 + 80;
    do
    {
      v35 = v8;
      v9 = (v7 + 56 * v6);
      while (1)
      {
        if (v6 >= *(v4 + 16))
        {
          __break(1u);
          return;
        }

        v42 = &v30;
        v11 = *(v9 - 6);
        v10 = *(v9 - 5);
        v12 = *(v9 - 4);
        v39 = *(v9 - 3);
        v14 = *(v9 - 2);
        v13 = *(v9 - 1);
        v37 = v10;
        v38 = v13;
        v15 = *v9;
        v16 = (v6 + 1);
        v43 = v11;
        MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
        v29[2] = &v43;
        v17 = v11;

        v18 = v17;
        v19 = sub_2284C6E48(sub_2284AE3B0, v29, v41);

        if ((v19 & 1) == 0)
        {
          break;
        }

        v9 += 7;
        ++v6;
        v4 = v40;
        if (v36 == v16)
        {
          v8 = v35;
          goto LABEL_15;
        }
      }

      v42 = v6;
      v20 = v37;
      v8 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_2284276B0(0, *(v8 + 16) + 1, 1);
        v8 = v44;
      }

      v21 = v20;
      v23 = v38;
      v22 = v39;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_2284276B0((v24 > 1), v25 + 1, 1);
        v23 = v38;
        v22 = v39;
        v21 = v20;
        v8 = v44;
      }

      *(v8 + 16) = v25 + 1;
      v26 = (v8 + 56 * v25);
      v26[4] = v11;
      v26[5] = v21;
      v26[6] = v12;
      v26[7] = v22;
      v26[8] = v14;
      v26[9] = v23;
      v26[10] = v15;
      v7 = v32;
      v4 = v40;
      v6 = v16;
    }

    while (v31 != v42);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

LABEL_15:
  v27 = sub_2284AE75C(v8);

  v28 = sub_2284AA9DC(v27, 1);

  *v34 = v28;
}

uint64_t sub_2284AA9DC(uint64_t a1, int a2)
{
  v148 = a2;
  sub_2284AD908();
  v130 = v3;
  v128 = *(v3 - 8);
  v4 = *(v128 + 64);
  MEMORY[0x28223BE20](v3);
  v125 = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284ADA30();
  v131 = v6;
  v129 = *(v6 - 8);
  v7 = *(v129 + 64);
  MEMORY[0x28223BE20](v6);
  v127 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284AD99C();
  v126 = v9;
  v124 = *(v9 - 8);
  v10 = *(v124 + 64);
  MEMORY[0x28223BE20](v9);
  v123 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284ADB00();
  v147 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v146 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284ADB7C();
  v145 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v144 = &v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284ADD48();
  v143 = v20;
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v142 = &v123 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x277D84F90];
  v25 = *(a1 + 64);
  v134 = a1 + 64;
  v26 = 1 << *(a1 + 32);
  v163 = MEMORY[0x277D84F90];
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & v25;
  v133 = (v26 + 63) >> 6;
  v141 = 0x8000000228570E10;
  v140 = "otificationManagerContentState_";
  v139 = (v13 + 8);
  v138 = (v17 + 8);
  v137 = (v22 + 8);
  v132 = a1;

  v29 = 0;
  v153 = xmmword_228560580;
  while (v28)
  {
    v30 = v29;
LABEL_11:
    v136 = v24;
    v152 = v28;
    v135 = v30;
    v31 = (v30 << 9) | (8 * __clz(__rbit64(v28)));
    v32 = *(*(v132 + 56) + v31);
    v33 = *(v32 + 2);
    v151 = *(*(v132 + 48) + v31);

    v155 = v33;
    if (v33)
    {
      v34 = 0;
      v35 = (v32 + 80);
      v36 = MEMORY[0x277D84F98];
      v154 = v32;
      while (1)
      {
        if (v34 >= *(v32 + 2))
        {
          goto LABEL_58;
        }

        v39 = *(v35 - 6);
        v40 = *(v35 - 5);
        v41 = v36;
        v42 = *(v35 - 4);
        v43 = *(v35 - 3);
        v44 = *(v35 - 2);
        v157 = *(v35 - 1);
        v45 = *v35;
        v46 = v41[2];
        v156 = v39;

        v160 = v44;

        v159 = v45;

        i = v41;
        if (v46)
        {
          v47 = sub_2283F6D18(v40, v42);
          v48 = v40;
          if (v49)
          {
            v50 = *(v41[7] + 8 * v47);
          }

          else
          {
            v50 = MEMORY[0x277D84F90];
          }
        }

        else
        {
          v50 = MEMORY[0x277D84F90];
          v48 = v40;
        }

        sub_2284AE260(0, &qword_27D83F400, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277D84560]);
        inited = swift_initStackObject();
        *(inited + 16) = v153;
        *(inited + 32) = v39;
        v52 = v48;
        *(inited + 40) = v48;
        *(inited + 48) = v42;
        v53 = v160;
        *(inited + 56) = v43;
        *(inited + 64) = v53;
        v54 = v156;
        v55 = v159;
        *(inited + 72) = v157;
        *(inited + 80) = v55;
        v56 = *(v50 + 2);
        v157 = v54;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v58 = *(v50 + 3) >> 1, v58 <= v56))
        {
          v50 = sub_2284267E0(isUniquelyReferenced_nonNull_native, v56 + 1, 1, v50);
          v58 = *(v50 + 3) >> 1;
        }

        v59 = i;
        if (v58 <= *(v50 + 2))
        {
          goto LABEL_59;
        }

        swift_arrayInitWithCopy();

        ++*(v50 + 2);
        v60 = swift_isUniquelyReferenced_nonNull_native();
        v161 = v59;
        v61 = sub_2283F6D18(v52, v42);
        v63 = v59[2];
        v64 = (v62 & 1) == 0;
        v65 = __OFADD__(v63, v64);
        v66 = v63 + v64;
        if (v65)
        {
          goto LABEL_60;
        }

        v67 = v62;
        if (v59[3] >= v66)
        {
          if ((v60 & 1) == 0)
          {
            v73 = v61;
            sub_228449090();
            v61 = v73;
          }

          v68 = v52;
          v36 = v161;
          if ((v67 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        else
        {
          sub_2284462D0(v66, v60);
          v68 = v52;
          v61 = sub_2283F6D18(v52, v42);
          if ((v67 & 1) != (v69 & 1))
          {
            goto LABEL_63;
          }

          v36 = v161;
          if ((v67 & 1) == 0)
          {
LABEL_33:
            v36[(v61 >> 6) + 8] |= 1 << v61;
            v70 = (v36[6] + 16 * v61);
            *v70 = v68;
            v70[1] = v42;
            *(v36[7] + 8 * v61) = v50;

            v71 = v36[2];
            v65 = __OFADD__(v71, 1);
            v72 = v71 + 1;
            if (v65)
            {
              goto LABEL_61;
            }

            v36[2] = v72;
            goto LABEL_14;
          }
        }

        v37 = v36[7];
        v38 = *(v37 + 8 * v61);
        *(v37 + 8 * v61) = v50;

LABEL_14:
        v34 = (v34 + 1);
        v35 += 7;
        v32 = v154;
        if (v155 == v34)
        {
          goto LABEL_36;
        }
      }
    }

    v36 = MEMORY[0x277D84F98];
LABEL_36:
    v28 = (v152 - 1) & v152;

    v74 = 0;
    v75 = (v36 + 8);
    v76 = 1 << *(v36 + 32);
    if (v76 < 64)
    {
      v77 = ~(-1 << v76);
    }

    else
    {
      v77 = -1;
    }

    v78 = v77 & v36[8];
    v79 = (v76 + 63) >> 6;
    v154 = (v36 + 8);
    v150 = v79;
    v24 = v136;
    v152 = v28;
    for (i = v36; v78; v79 = v150)
    {
LABEL_44:
      v81 = __clz(__rbit64(v78)) | (v74 << 6);
      v82 = (v36[6] + 16 * v81);
      v84 = *v82;
      v83 = v82[1];
      v85 = *(v36[7] + 8 * v81);
      v161 = 0;
      v162 = 0xE000000000000000;

      sub_22855DC6C();

      v161 = 0xD00000000000002FLL;
      v162 = v141;
      MEMORY[0x22AAB92A0](v84, v83);
      v86 = v162;
      v160 = v161;
      v161 = 0;
      v162 = 0xE000000000000000;
      sub_22855DC6C();
      MEMORY[0x22AAB92A0](0xD00000000000003BLL, v140 | 0x8000000000000000);
      MEMORY[0x22AAB92A0](v84, v83);

      v156 = v162;
      v157 = v161;
      if (v148)
      {

        v160 = 0;
        v86 = 0;
      }

      v159 = v86;
      v87 = v85[2];
      if (v87)
      {
        v161 = MEMORY[0x277D84F90];
        sub_2284272C0(0, v87, 0);
        v88 = v161;
        v155 = v85;
        v89 = v85 + 10;
        do
        {
          v90 = *(v89 - 1);
          v91 = *v89;
          v161 = v88;
          v93 = v88[2];
          v92 = v88[3];

          if (v93 >= v92 >> 1)
          {
            sub_2284272C0((v92 > 1), v93 + 1, 1);
            v88 = v161;
          }

          v88[2] = v93 + 1;
          v94 = &v88[2 * v93];
          v94[4] = v90;
          v94[5] = v91;
          v89 += 7;
          --v87;
        }

        while (v87);
        v36 = i;
        v85 = v155;
      }

      type metadata accessor for HealthAppNotificationManager();
      v95 = v149;
      v96 = *(v149 + 16);
      v97 = sub_22855D39C();
      [v96 removePendingNotificationRequestsWithIdentifiers_];

      v98 = *(v95 + 16);
      v99 = sub_22855D39C();
      [v98 removeDeliveredNotificationsWithIdentifiers_];

      v161 = v85;
      sub_2284AE260(0, &qword_280DE9638, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277D83940]);
      v100 = v146;
      sub_22855CDCC();
      v101 = swift_allocObject();
      v102 = v159;
      v101[2] = v160;
      v101[3] = v102;
      v103 = v151;
      v104 = v156;
      v105 = v157;
      v101[4] = v151;
      v101[5] = v105;
      v101[6] = v104;
      v101[7] = v95;
      v106 = v103;

      sub_22855CCBC();
      sub_2284ADF84(0, &qword_280DE9958, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277CBCD88]);
      sub_2283FD034(&qword_280DE9850, sub_2284ADB00);
      sub_2284AE004(&qword_280DE9960, &qword_280DE9958, &type metadata for PluginFeedItem.NotificationIdentifier);
      v107 = v144;
      v108 = v147;
      sub_22855CF9C();

      (*v139)(v100, v108);
      sub_2283FD034(&qword_280DE9A58, sub_2284ADB7C);
      v109 = v142;
      v110 = v145;
      sub_22855CF1C();
      (*v138)(v107, v110);
      sub_2283FD034(&qword_280DE9A88, sub_2284ADD48);
      v111 = v143;
      sub_22855CE6C();
      (*v137)(v109, v111);

      MEMORY[0x22AAB9400](v112);
      if (v163[2] >= v163[3] >> 1)
      {
        v113 = v163[2];
        sub_22855D3EC();
      }

      v78 &= v78 - 1;
      sub_22855D43C();

      v24 = v163;
      v28 = v152;
      v75 = v154;
    }

    while (1)
    {
      v80 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        result = sub_22855E1BC();
        __break(1u);
        return result;
      }

      if (v80 >= v79)
      {
        break;
      }

      v78 = *&v75[8 * v80];
      ++v74;
      if (v78)
      {
        v74 = v80;
        goto LABEL_44;
      }
    }

    v29 = v135;
  }

  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      goto LABEL_62;
    }

    if (v30 >= v133)
    {
      break;
    }

    v28 = *(v134 + 8 * v30);
    ++v29;
    if (v28)
    {
      goto LABEL_11;
    }
  }

  v161 = v24;
  sub_2284AD530();
  sub_2284AE35C(0, &qword_280DE95D8, sub_2284AD530);
  sub_2283FD034(&qword_280DE9900, sub_2284AD530);
  sub_2284ACE0C(&qword_280DE95D0, &qword_280DE95D8, sub_2284AD530);
  v114 = v123;
  sub_22855CC2C();
  sub_2283FD034(&qword_280DE99C8, sub_2284AD99C);
  v115 = v125;
  v116 = v126;
  sub_22855CF1C();
  sub_2284AE260(0, &qword_280DE9638, &type metadata for PluginFeedItem.NotificationIdentifier, MEMORY[0x277D83940]);
  sub_2283FD034(&qword_280DE9A78, sub_2284AD908);
  v117 = v127;
  v118 = v130;
  sub_22855CE8C();
  (*(v128 + 8))(v115, v118);
  sub_2283FD034(&qword_280DE9B28, sub_2284ADA30);
  v119 = v131;
  v120 = sub_22855CE6C();
  (*(v129 + 8))(v117, v119);
  (*(v124 + 8))(v114, v116);
  v161 = v120;
  v121 = sub_22855CE6C();

  return v121;
}