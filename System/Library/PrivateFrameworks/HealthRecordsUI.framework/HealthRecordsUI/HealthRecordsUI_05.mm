uint64_t sub_1D10D4A18()
{
  v1 = v0;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = [v2 collectionView];
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = *(v0 + 48);
  sub_1D10D5E5C(0, &qword_1EC60A098, sub_1D10A5C3C, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D139E710;
  v7 = MEMORY[0x1E69A3698];
  v8 = *(v0 + 16);
  sub_1D139092C();
  type metadata accessor for LabsOnboardingDataSource();
  swift_allocObject();
  if (v5)
  {
    v9 = v4;
    v10 = sub_1D11649F8(v8, v9, v31);

    sub_1D10D5E5C(0, &qword_1EC60A768, sub_1D10D59CC, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D139E700;
    *(inited + 32) = 1;
    v12 = sub_1D10D5F90(&qword_1EC60A778, type metadata accessor for LabsOnboardingDataSource);
    *(inited + 40) = v10;
    *(inited + 48) = v12;
    *(inited + 56) = v7;
    sub_1D109DA60(inited);
    swift_setDeallocating();

    sub_1D10D5A3C(inited + 32);
    sub_1D138E9AC();
    swift_allocObject();
    v13 = sub_1D138E99C();

    v14 = MEMORY[0x1E69A3768];
    *(v6 + 32) = v13;
    *(v6 + 40) = v14;
    v15 = *(v1 + 32);
    v16 = *(v1 + 40);
    v17 = objc_allocWithZone(MEMORY[0x1E696C1C0]);
    v18 = v9;

    v19 = [v17 init];
    type metadata accessor for RecentLabsDataSource();
    *(swift_allocObject() + qword_1EC60BDA8) = v16;

    v20 = sub_1D10D5578;
  }

  else
  {
    v21 = v4;
    v22 = sub_1D11649F8(v8, v21, v31);

    sub_1D10D5E5C(0, &qword_1EC60A768, sub_1D10D59CC, MEMORY[0x1E69E6F90]);
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_1D139E700;
    *(v23 + 32) = 1;
    v24 = sub_1D10D5F90(&qword_1EC60A778, type metadata accessor for LabsOnboardingDataSource);
    *(v23 + 40) = v22;
    *(v23 + 48) = v24;
    *(v23 + 56) = v7;
    sub_1D109DA60(v23);
    swift_setDeallocating();

    sub_1D10D5A3C(v23 + 32);
    sub_1D138E9AC();
    swift_allocObject();
    v25 = sub_1D138E99C();

    v26 = MEMORY[0x1E69A3768];
    *(v6 + 32) = v25;
    *(v6 + 40) = v26;
    v15 = *(v1 + 32);
    v27 = *(v1 + 40);
    v28 = objc_allocWithZone(MEMORY[0x1E696C1C0]);
    v29 = v21;

    v19 = [v28 init];
    type metadata accessor for AlphabeticalLabsDataSource();
    *(swift_allocObject() + qword_1EC60BE90) = v27;

    v20 = sub_1D10D51EC;
  }

  *(v6 + 48) = sub_1D10D4FBC(v15, v19, v4, v20);
  *(v6 + 56) = v7;

  return v6;
}

uint64_t sub_1D10D4EB4()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D10D4F44()
{
  result = qword_1EC60A760;
  if (!qword_1EC60A760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60A760);
  }

  return result;
}

uint64_t sub_1D10D4FBC(uint64_t a1, void *a2, void *a3, void (*a4)(uint64_t))
{
  v20 = a4;
  v5 = v4;
  v9 = sub_1D138D5EC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + qword_1EE06A158) = MEMORY[0x1E69E7CD0];
  swift_unknownObjectWeakInit();
  *(v5 + qword_1EE06A148) = 0;
  *(v5 + qword_1EC60D618) = a1;
  *(v5 + qword_1EE06A160) = a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v21[0] = 0;
  v21[1] = 0xE000000000000000;

  v13 = a2;
  sub_1D13911EC();

  strcpy(v21, "MutableArray<");
  HIWORD(v21[1]) = -4864;
  sub_1D138D5DC();
  v14 = sub_1D138D59C();
  v16 = v15;
  (*(v10 + 8))(v12, v9);
  MEMORY[0x1D3885C10](v14, v16);

  MEMORY[0x1D3885C10](62, 0xE100000000000000);
  v17 = sub_1D138E56C();

  v20(v18);

  return v17;
}

uint64_t sub_1D10D51EC()
{
  sub_1D10D5E5C(0, &qword_1EE06A620, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15 - v2;
  sub_1D10D5A98();
  v16 = v4;
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (*(*v0 + class metadata base offset for UDCListDataSource + 192))(v6);
  sub_1D108310C();
  v9 = sub_1D1390A7C();
  v18 = v9;
  v10 = sub_1D1390A2C();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  sub_1D10D5D78(0, &qword_1EC60A788, &qword_1EC60A790, &qword_1EC60A798, type metadata accessor for UDCAlphabeticalItem);
  sub_1D10D5B80();
  sub_1D10D5F90(&qword_1EE06A610, sub_1D108310C);
  sub_1D138F8BC();
  sub_1D10D5C04(v3);

  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1D10D5FDC;
  *(v12 + 24) = v11;
  sub_1D10D5F90(&qword_1EC60A7A8, sub_1D10D5A98);
  v13 = v16;
  sub_1D138F90C();

  (*(v5 + 8))(v8, v13);
  swift_beginAccess();
  sub_1D138F63C();
  swift_endAccess();
}

uint64_t sub_1D10D5578()
{
  sub_1D10D5E5C(0, &qword_1EE06A620, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15 - v2;
  sub_1D10D5C90();
  v16 = v4;
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (*(*v0 + class metadata base offset for UDCListDataSource + 192))(v6);
  sub_1D108310C();
  v9 = sub_1D1390A7C();
  v18 = v9;
  v10 = sub_1D1390A2C();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  sub_1D10D5D78(0, &qword_1EC60A7B8, &qword_1EC60A7C0, &qword_1EC60A7C8, type metadata accessor for UDCRecentItem);
  sub_1D10D5EC0();
  sub_1D10D5F90(&qword_1EE06A610, sub_1D108310C);
  sub_1D138F8BC();
  sub_1D10D5C04(v3);

  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1D10D5F44;
  *(v12 + 24) = v11;
  sub_1D10D5F90(&qword_1EC60A7D8, sub_1D10D5C90);
  v13 = v16;
  sub_1D138F90C();

  (*(v5 + 8))(v8, v13);
  swift_beginAccess();
  sub_1D138F63C();
  swift_endAccess();
}

void *sub_1D10D5904(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + class metadata base offset for UDCListDataSource + 200))(a1, a2);
    sub_1D138E58C();

    sub_1D138E59C();
  }

  return result;
}

void sub_1D10D59CC()
{
  if (!qword_1EC60A770)
  {
    type metadata accessor for UIUserInterfaceSizeClass(255);
    sub_1D109F43C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC60A770);
    }
  }
}

uint64_t sub_1D10D5A3C(uint64_t a1)
{
  sub_1D10D59CC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D10D5A98()
{
  if (!qword_1EC60A780)
  {
    sub_1D10D5D78(255, &qword_1EC60A788, &qword_1EC60A790, &qword_1EC60A798, type metadata accessor for UDCAlphabeticalItem);
    sub_1D108310C();
    sub_1D10D5B80();
    sub_1D10D5F90(&qword_1EE06A610, sub_1D108310C);
    v0 = sub_1D138F5FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60A780);
    }
  }
}

unint64_t sub_1D10D5B80()
{
  result = qword_1EC60A7A0;
  if (!qword_1EC60A7A0)
  {
    sub_1D10D5D78(255, &qword_1EC60A788, &qword_1EC60A790, &qword_1EC60A798, type metadata accessor for UDCAlphabeticalItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60A7A0);
  }

  return result;
}

uint64_t sub_1D10D5C04(uint64_t a1)
{
  sub_1D10D5E5C(0, &qword_1EE06A620, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D10D5C90()
{
  if (!qword_1EC60A7B0)
  {
    sub_1D10D5D78(255, &qword_1EC60A7B8, &qword_1EC60A7C0, &qword_1EC60A7C8, type metadata accessor for UDCRecentItem);
    sub_1D108310C();
    sub_1D10D5EC0();
    sub_1D10D5F90(&qword_1EE06A610, sub_1D108310C);
    v0 = sub_1D138F5FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60A7B0);
    }
  }
}

void sub_1D10D5D78(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1D10D5DE4(255, a3, a4, a5);
    v6 = sub_1D138F62C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D10D5DE4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D10D5E5C(255, a3, a4, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D10D5E5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D10D5EC0()
{
  result = qword_1EC60A7D0;
  if (!qword_1EC60A7D0)
  {
    sub_1D10D5D78(255, &qword_1EC60A7B8, &qword_1EC60A7C0, &qword_1EC60A7C8, type metadata accessor for UDCRecentItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60A7D0);
  }

  return result;
}

uint64_t sub_1D10D5F90(unint64_t *a1, void (*a2)(uint64_t))
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

id ClinicalSourcesDataProvider.__allocating_init(healthRecordsStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithHealthRecordsStore_];

  return v3;
}

id ClinicalSourcesDataProvider.init(healthRecordsStore:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ClinicalSourcesDataProvider();
  v3 = objc_msgSendSuper2(&v5, sel_initWithHealthRecordsStore_, a1);

  return v3;
}

id ClinicalSourcesDataProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClinicalSourcesDataProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D10D6244()
{
  v1 = [v0 textLabel];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1D139012C();
    [v2 setText_];
  }

  v4 = [v0 detailTextLabel];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1D139012C();
    [v5 setText_];
  }

  v7 = [v0 detailTextLabel];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() secondaryLabelColor];
    [v8 setTextColor_];
  }
}

id sub_1D10D638C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InternalStateViewController.Cell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D10D63C0(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI27InternalStateViewController_sections] = MEMORY[0x1E69E7CC0];
  if (qword_1EE06AF70 != -1)
  {
    a1 = swift_once();
  }

  v15 = *(qword_1EE06BB58 + OBJC_IVAR___HRProfileManager_lock);
  MEMORY[0x1EEE9AC00](a1);
  sub_1D138D96C();
  sub_1D106F934(0, &qword_1EE06B6B0);
  sub_1D10D7DDC(&qword_1EE06B048, MEMORY[0x1E69A3B50]);

  sub_1D138ED0C();

  v4 = v16;
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI27InternalStateViewController_profile] = v16;
  v5 = type metadata accessor for InternalStateProvider();
  v6 = objc_allocWithZone(v5);
  v7 = v4;
  v8 = [v7 conceptStore];
  v9 = [v7 healthRecordsStore];
  v10 = objc_allocWithZone(v5);
  v11 = sub_1D11E0D98(v8, v9);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  *&v2[OBJC_IVAR____TtC15HealthRecordsUI27InternalStateViewController_dataProvider] = v11;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for InternalStateViewController();
  v12 = objc_msgSendSuper2(&v14, sel_initWithCoder_, v3);

  if (v12)
  {
  }

  return v12;
}

id sub_1D10D663C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI27InternalStateViewController_dataProvider];
  v3 = &v2[OBJC_IVAR___HRInternalStateProvider_changeHandler];
  v4 = *&v2[OBJC_IVAR___HRInternalStateProvider_changeHandler];
  *v3 = 0;
  *(v3 + 1) = 0;
  v5 = v2;
  sub_1D102CC60(v4);

  sub_1D138DB0C();

  v7.receiver = v1;
  v7.super_class = type metadata accessor for InternalStateViewController();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_1D10D67C0()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for InternalStateViewController();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  v1 = sub_1D139012C();
  [v0 setTitle_];

  v2 = [v0 tableView];
  if (v2)
  {
    v3 = v2;
    v4 = type metadata accessor for InternalStateViewController.Cell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = v4;
    swift_getMetatypeMetadata();
    sub_1D13901EC();
    v6 = sub_1D139012C();

    [v3 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v6];
  }

  else
  {
    __break(1u);
  }
}

id sub_1D10D690C(char a1)
{
  sub_1D10D7E24(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for InternalStateViewController();
  v22.receiver = v1;
  v22.super_class = v6;
  objc_msgSendSuper2(&v22, sel_viewWillAppear_, a1 & 1);
  v7 = objc_opt_self();
  result = [v7 isMainThread];
  if (result)
  {
    v9 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI27InternalStateViewController_dataProvider];
    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    v11 = &v9[OBJC_IVAR___HRInternalStateProvider_changeHandler];
    v12 = *&v9[OBJC_IVAR___HRInternalStateProvider_changeHandler];
    *v11 = sub_1D10D7A18;
    v11[1] = v10;
    v13 = v1;
    swift_retain_n();
    v14 = v13;
    v15 = v9;
    sub_1D102CC60(v12);

    MEMORY[0x1EEE9AC00](v16);
    *(&v22 - 2) = v15;

    sub_1D138DB0C();

    sub_1D10D7A28(v14);

    result = [v7 isMainThread];
    if (result)
    {
      v17 = sub_1D13905DC();
      (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
      sub_1D13905AC();
      v18 = v14;
      v19 = sub_1D139059C();
      v20 = swift_allocObject();
      v21 = MEMORY[0x1E69E85E0];
      v20[2] = v19;
      v20[3] = v21;
      v20[4] = v18;
      sub_1D107877C(0, 0, v5, &unk_1D13A0740, v20);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1D10D6C1C(void *a1)
{
  sub_1D10D7E24(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  result = [objc_opt_self() isMainThread];
  if (result)
  {
    v6 = sub_1D13905DC();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    sub_1D13905AC();
    v7 = a1;
    v8 = sub_1D139059C();
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E85E0];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v7;
    sub_1D107877C(0, 0, v4, &unk_1D13A0748, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D10D6D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_1D138FECC();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_1D138FF0C();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  sub_1D13905AC();
  v4[16] = sub_1D139059C();
  v8 = sub_1D139055C();
  v4[17] = v8;
  v4[18] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D10D6ED8, v8, v7);
}

uint64_t sub_1D10D6ED8()
{
  v1 = *(v0[9] + OBJC_IVAR____TtC15HealthRecordsUI27InternalStateViewController_dataProvider);
  v0[19] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_1D10D6F88;

  return sub_1D11E3724();
}

uint64_t sub_1D10D6F88(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  *(*v1 + 168) = a1;

  v4 = *(v2 + 144);
  v5 = *(v2 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1D10D70D0, v5, v4);
}

uint64_t sub_1D10D70D0()
{
  v1 = v0[21];
  v2 = v0[15];
  v13 = v0[14];
  v14 = v0[13];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];

  *&v6[OBJC_IVAR____TtC15HealthRecordsUI27InternalStateViewController_sections] = v1;

  sub_1D106F934(0, &qword_1EE06B760);
  v7 = sub_1D1390A7C();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v0[6] = sub_1D10899A4;
  v0[7] = v8;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1D10CBD3C;
  v0[5] = &block_descriptor_11;
  v9 = _Block_copy(v0 + 2);
  v10 = v6;
  sub_1D138FEEC();
  v0[8] = MEMORY[0x1E69E7CC0];
  sub_1D10D7DDC(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
  sub_1D10D7E24(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D1080CD4();
  sub_1D139103C();
  MEMORY[0x1D3886400](0, v2, v3, v9);
  _Block_release(v9);

  (*(v4 + 8))(v3, v5);
  (*(v13 + 8))(v2, v14);

  v11 = v0[1];

  return v11();
}

void sub_1D10D74E4(void *a1)
{
  v2 = v1;
  v16 = type metadata accessor for InternalStateViewController.Cell();
  swift_getMetatypeMetadata();
  sub_1D13901EC();
  v4 = sub_1D139012C();

  v5 = sub_1D138D7DC();
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:{v5, v16}];

  if (swift_dynamicCastClass())
  {
    v7 = sub_1D138D81C();
    v8 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI27InternalStateViewController_sections);
    if ((v8 & 0xC000000000000001) != 0)
    {
      v15 = v7;

      v9 = MEMORY[0x1D3886B70](v15, v8);
    }

    else
    {
      if ((v7 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_15;
      }

      if (v7 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_17;
      }

      v9 = *(v8 + 8 * v7 + 32);
    }

    v10 = sub_1D138D7FC();
    v11 = *(v9 + 32);
    if ((v11 & 0xC000000000000001) == 0)
    {
      if ((v10 & 0x8000000000000000) == 0)
      {
        if (v10 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {

LABEL_10:

          sub_1D10D6244();

          return;
        }

        goto LABEL_18;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_15:
    MEMORY[0x1D3886B70]();
    goto LABEL_10;
  }

  sub_1D13911EC();

  sub_1D138D82C();
  sub_1D10D7DDC(&qword_1EC60A7F8, MEMORY[0x1E6969C28]);
  v12 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v12);

  v13 = sub_1D139012C();

  v14 = HKErrorTableViewCell();

  if (!v14)
  {
LABEL_19:
    __break(1u);
  }
}

uint64_t sub_1D10D7A28(void *a1)
{
  v2 = sub_1D138FECC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D138FF0C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D106F934(0, &qword_1EE06B760);
  v10 = sub_1D1390A7C();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  aBlock[4] = sub_1D10D7E88;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10CBD3C;
  aBlock[3] = &block_descriptor_30;
  v12 = _Block_copy(aBlock);
  v13 = a1;

  sub_1D138FEEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D10D7DDC(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
  sub_1D10D7E24(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D1080CD4();
  sub_1D139103C();
  MEMORY[0x1D3886400](0, v9, v5, v12);
  _Block_release(v12);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D10D7D10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D10819BC;

  return sub_1D10D6D88(a1, v4, v5, v6);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D10D7DDC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D10D7E24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t objectdestroy_18Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D10D7ED0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D108077C;

  return sub_1D10D6D88(a1, v4, v5, v6);
}

id sub_1D10D7F9C()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell____lazy_storage___store;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell____lazy_storage___store);
  if (!v2)
  {
    v4 = OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell_item;
    swift_beginAccess();
    sub_1D10DC624(v0 + v4, v12, &qword_1EC60B620, &qword_1EC60A3D0, MEMORY[0x1E69A3348], sub_1D10DC698);
    if (v13)
    {
      sub_1D1080EA4(0, &qword_1EC60A3D0);
      sub_1D1080EA4(0, &qword_1EC60A868);
      if (swift_dynamicCast())
      {
        v5 = *(&v15 + 1);
        if (*(&v15 + 1))
        {
          v6 = v16;
          __swift_project_boxed_opaque_existential_1Tm(&v14, *(&v15 + 1));
          v7 = (*(v6 + 40))(v5, v6);
          __swift_destroy_boxed_opaque_existential_1Tm(&v14);
          v8 = v7;
LABEL_10:
          v9 = *(v0 + v1);
          *(v0 + v1) = v8;
          v3 = v8;

          v2 = 0;
          goto LABEL_11;
        }
      }

      else
      {
        v16 = 0;
        v14 = 0u;
        v15 = 0u;
      }
    }

    else
    {
      sub_1D10DD0D8(v12, &qword_1EC60B620, &qword_1EC60A3D0, MEMORY[0x1E69A3348], sub_1D10DC698);
      v14 = 0u;
      v15 = 0u;
      v16 = 0;
    }

    sub_1D10DD0D8(&v14, &unk_1EC60A860, &qword_1EC60A868, &protocol descriptor for UDCItem, sub_1D10DC698);
    v8 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
    goto LABEL_10;
  }

  v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell____lazy_storage___store);
LABEL_11:
  v10 = v2;
  return v3;
}

id sub_1D10D81A4()
{
  sub_1D10DC5D0(0, &qword_1EC60A848, MEMORY[0x1E69DC598]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v22 - v2;
  v4 = OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell____lazy_storage___button;
  v5 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell____lazy_storage___button];
  if (v5)
  {
    v6 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell____lazy_storage___button];
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E69DC738]) initWithFrame_];
    sub_1D106F934(0, &unk_1EC60F6B0);
    *(swift_allocObject() + 16) = v0;
    v0;
    v8 = v0;
    v9 = sub_1D1390DCC();
    [v7 addAction:v9 forControlEvents:64];

    sub_1D10D84F0();
    sub_1D11CB89C();
    v10 = sub_1D1390ECC();
    (*(*(v10 - 8) + 56))(v3, 0, 1, v10);
    sub_1D1390EEC();
    v11 = v7;
    [v11 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v12) = 1148846080;
    [v11 setContentHuggingPriority:0 forAxis:v12];
    [v11 setAlpha_];
    sub_1D10DCFE8(0, &qword_1EE06B560, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D139E710;
    *(v13 + 32) = 0xD000000000000013;
    *(v13 + 40) = 0x80000001D13B7440;
    v14 = sub_1D10D84F0();
    v15 = 0x6F747475426E6950;
    if (v14)
    {
      v15 = 0x7475426E69706E55;
    }

    v16 = 0xE90000000000006ELL;
    if (v14)
    {
      v16 = 0xEB000000006E6F74;
    }

    *(v13 + 48) = v15;
    *(v13 + 56) = v16;
    v17 = sub_1D139044C();

    v18 = HKUIJoinStringsForAutomationIdentifier();

    [v11 setAccessibilityIdentifier_];
    v19 = *&v8[v4];
    *&v8[v4] = v11;
    v6 = v11;

    v5 = 0;
  }

  v20 = v5;
  return v6;
}

uint64_t sub_1D10D84F0()
{
  v1 = type metadata accessor for UserDomainConceptViewData();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = (&v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell_item;
  swift_beginAccess();
  sub_1D10DC624(v0 + v4, v14, &qword_1EC60B620, &qword_1EC60A3D0, MEMORY[0x1E69A3348], sub_1D10DC698);
  if (!v14[3])
  {
    sub_1D10DD0D8(v14, &qword_1EC60B620, &qword_1EC60A3D0, MEMORY[0x1E69A3348], sub_1D10DC698);
    goto LABEL_7;
  }

  sub_1D1080EA4(0, &qword_1EC60A3D0);
  type metadata accessor for UDCAlphabeticalItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v10 = 0;
    return v10 & 1;
  }

  sub_1D10DC904(v13 + OBJC_IVAR____TtC15HealthRecordsUI19UDCAlphabeticalItem_viewData, v3);

  v5 = v3[1];
  sub_1D10DD050(v3, type metadata accessor for UserDomainConceptViewData);
  if (qword_1EE06AF70 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE06BB58;
  v7 = sub_1D10D7F9C();
  v8 = [v7 profileIdentifier];

  v13 = *(v6 + OBJC_IVAR___HRProfileManager_lock);
  MEMORY[0x1EEE9AC00](v9);
  *(&v12 - 2) = v6;
  *(&v12 - 1) = v8;
  sub_1D138D96C();
  sub_1D138EF2C();
  sub_1D10DC8AC();

  sub_1D138ED0C();

  v10 = sub_1D138EEFC();

  return v10 & 1;
}

char *sub_1D10D87BC(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell____lazy_storage___store] = 0;
  v9 = OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell_titleView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for ConceptFeedItemBrowseTitleView()) initWithFrame_];
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell____lazy_storage___button] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell_activeConstraints] = MEMORY[0x1E69E7CC0];
  v4[OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell_editMode] = 0;
  v10 = &v4[OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell_item];
  *(v10 + 4) = 0;
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v11 = OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell_sectionContext;
  v12 = sub_1D138DF1C();
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  v18.receiver = v4;
  v18.super_class = type metadata accessor for AlphabeticalUDCCell();
  v13 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = [v13 contentView];
  [v14 addSubview_];

  v15 = [v13 contentView];
  v16 = sub_1D10D81A4();
  [v15 addSubview_];

  sub_1D10D9B44();
  sub_1D10D8CBC();
  [v13 setTintAdjustmentMode_];

  return v13;
}

id sub_1D10D89C0(void *a1)
{
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell____lazy_storage___store] = 0;
  v3 = OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell_titleView;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for ConceptFeedItemBrowseTitleView()) initWithFrame_];
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell____lazy_storage___button] = 0;
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell_activeConstraints] = MEMORY[0x1E69E7CC0];
  v1[OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell_editMode] = 0;
  v4 = &v1[OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell_item];
  *(v4 + 4) = 0;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v5 = OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell_sectionContext;
  v6 = sub_1D138DF1C();
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  v9.receiver = v1;
  v9.super_class = type metadata accessor for AlphabeticalUDCCell();
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id sub_1D10D8B20()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for AlphabeticalUDCCell();
  objc_msgSendSuper2(&v5, sel_awakeFromNib);
  v1 = [v0 contentView];
  [v1 addSubview_];

  v2 = [v0 contentView];
  v3 = sub_1D10D81A4();
  [v2 addSubview_];

  sub_1D10D9B44();
  sub_1D10D8CBC();
  return [v0 setTintAdjustmentMode_];
}

void sub_1D10D8C3C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D10D8CBC();
    v2 = [v1 contentView];
    [v2 layoutIfNeeded];
  }
}

void sub_1D10D8CBC()
{
  v1 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell_editMode);
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell_titleView);
  v3 = OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_hidesChevron;
  if (v1)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  *(v2 + OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_hidesChevron) = v1;
  [*(v2 + OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_chevronView) setHidden_];
  v5 = sub_1D11A71E0();
  [v5 setActive_];

  v6 = sub_1D11A72B8();
  [v6 setActive_];

  v7 = sub_1D10D81A4();
  [v7 setAlpha_];

  sub_1D10D9B44();
}

uint64_t sub_1D10D8DB0()
{
  v1 = v0;
  v2 = sub_1D138F0BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D10DC5D0(0, &qword_1EC60A848, MEMORY[0x1E69DC598]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v61 - v7;
  v9 = sub_1D138D57C();
  v70 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D10DC5D0(0, &qword_1EE06B500, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v61 - v12;
  v14 = type metadata accessor for BrowseCategory();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell_item;
  swift_beginAccess();
  sub_1D10DC624(&v1[v17], v72, &qword_1EC60B620, &qword_1EC60A3D0, MEMORY[0x1E69A3348], sub_1D10DC698);
  if (!v73)
  {
    sub_1D10DD0D8(v72, &qword_1EC60B620, &qword_1EC60A3D0, MEMORY[0x1E69A3348], sub_1D10DC698);
LABEL_10:
    sub_1D138F06C();
    v29 = v1;
    v30 = sub_1D138F0AC();
    v31 = sub_1D13907FC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v70 = v2;
      v71[0] = v33;
      v34 = v33;
      *v32 = 136446210;
      sub_1D10DC624(&v1[v17], v72, &qword_1EC60B620, &qword_1EC60A3D0, MEMORY[0x1E69A3348], sub_1D10DC698);
      sub_1D10DC698(0, &qword_1EC60B620, &qword_1EC60A3D0);
      v35 = sub_1D139020C();
      v37 = sub_1D11DF718(v35, v36, v71);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_1D101F000, v30, v31, "Incorrect view model for AlphabeticalUDCCell: %{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x1D38882F0](v34, -1, -1);
      MEMORY[0x1D38882F0](v32, -1, -1);

      return (*(v3 + 8))(v5, v70);
    }

    else
    {

      return (*(v3 + 8))(v5, v2);
    }
  }

  v67 = v9;
  v18 = v1;
  sub_1D1080EA4(0, &qword_1EC60A3D0);
  type metadata accessor for UDCAlphabeticalItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v66 = v8;
  v65 = v71[0];
  v19 = v71[0] + OBJC_IVAR____TtC15HealthRecordsUI19UDCAlphabeticalItem_viewData;
  *v16 = *(v71[0] + OBJC_IVAR____TtC15HealthRecordsUI19UDCAlphabeticalItem_viewData);
  v68 = v16;
  swift_storeEnumTagMultiPayload();
  if (qword_1EE06AF70 != -1)
  {
    swift_once();
  }

  v20 = qword_1EE06BB58;
  v64 = v18;
  v21 = sub_1D10D7F9C();
  v71[0] = *(v20 + OBJC_IVAR___HRProfileManager_lock);
  MEMORY[0x1EEE9AC00](v21);
  sub_1D138D96C();
  sub_1D106F934(0, &qword_1EE06B6B0);
  sub_1D10DC8AC();

  sub_1D138ED0C();

  v22 = v72[0];
  v23 = type metadata accessor for UserDomainConceptViewData();
  sub_1D10DC9E0(v19 + *(v23 + 36), v13, &qword_1EE06B500, MEMORY[0x1E6969530]);
  v24 = v70;
  v25 = v67;
  v26 = (*(v70 + 48))(v13, 1, v67);
  v63 = v22;
  if (v26 == 1)
  {
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    v27 = sub_1D138D1CC();
    v61 = v28;
    v62 = v27;
  }

  else
  {
    v39 = v69;
    (*(v24 + 32))(v69, v13, v25);
    v40 = [v22 utcDateFormatter];
    v41 = sub_1D138D4EC();
    v42 = [v40 relativeStringFromDate_];

    v43 = sub_1D139016C();
    v61 = v44;
    v62 = v43;

    (*(v24 + 8))(v39, v25);
  }

  v45 = v64;
  v46 = *&v64[OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell_titleView];
  v47 = *(v19 + 32);
  v70 = *(v19 + 24);

  v48 = BrowseCategory.image.getter();
  v49 = BrowseCategory.tintColorForTemplateImage.getter();
  v50 = (v19 + *(v23 + 44));
  v51 = *v50;
  v52 = v50[1];
  v53 = v45[OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell_editMode];

  v54 = sub_1D10D84F0();
  v73 = &type metadata for UserDomainConceptFeedItemViewData;
  v74 = &protocol witness table for UserDomainConceptFeedItemViewData;
  v55 = swift_allocObject();
  v72[0] = v55;
  LOBYTE(v71[0]) = 1;
  *(v55 + 16) = v70;
  *(v55 + 24) = v47;
  v56 = v61;
  *(v55 + 32) = v62;
  *(v55 + 40) = v56;
  *(v55 + 48) = v48;
  *(v55 + 56) = v49;
  *(v55 + 64) = 0;
  *(v55 + 72) = v51;
  *(v55 + 80) = v52;
  *(v55 + 88) = 0;
  *(v55 + 96) = 0;
  *(v55 + 104) = 0;
  *(v55 + 112) = 1;
  *(v55 + 113) = v53;
  *(v55 + 114) = v54 & 1;
  *(v55 + 115) = 256;
  v57 = OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_viewData;
  swift_beginAccess();
  sub_1D10DC970(v72, v46 + v57, &qword_1EC60A4D0, &qword_1EC60A4D8);
  swift_endAccess();
  sub_1D11A73D0();
  sub_1D10DD0D8(v72, &qword_1EC60A4D0, &qword_1EC60A4D8, &protocol descriptor for ConceptTitleViewContentProviding, sub_1D10DC698);
  v58 = sub_1D10D81A4();
  sub_1D10D84F0();
  v59 = v66;
  sub_1D11CB89C();
  v60 = sub_1D1390ECC();
  (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
  sub_1D1390EEC();

  return sub_1D10DD050(v68, type metadata accessor for BrowseCategory);
}

uint64_t sub_1D10D96E4()
{
  v1 = v0;
  v2 = sub_1D138D82C();
  v30 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69A3588];
  sub_1D10DC5D0(0, &qword_1EC60A840, MEMORY[0x1E69A3588]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - v7;
  v9 = sub_1D138DF1C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell_sectionContext;
  swift_beginAccess();
  sub_1D10DC9E0(&v1[v13], v8, &qword_1EC60A840, v5);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1D10DCA4C(v8);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_1D138DF0C();
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1D13911EC();
  v15 = sub_1D139016C();
  v17 = v16;

  v32 = v15;
  v33 = v17;
  MEMORY[0x1D3885C10](0xD00000000000001DLL, 0x80000001D13BB640);
  v31 = sub_1D138D81C();
  v18 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v18);

  MEMORY[0x1D3885C10](0x2E6D6574492ELL, 0xE600000000000000);
  v31 = sub_1D138D80C();
  v19 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v19);

  v21 = v32;
  v20 = v33;
  v22 = sub_1D139012C();
  [v1 setAccessibilityIdentifier_];

  v29 = v2;
  v23 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell_titleView];
  v24 = (v23 + OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_baseAccessibilityIdentifier);
  *v24 = v21;
  v24[1] = v20;

  v25 = *(v23 + OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_titleLabel);
  v32 = v21;
  v33 = v20;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1D3885C10](0x656C7469542ELL, 0xE600000000000000);
  v26 = sub_1D139012C();

  [v25 setAccessibilityIdentifier_];

  v27 = *(v23 + OBJC_IVAR____TtC15HealthRecordsUI30ConceptFeedItemBrowseTitleView_dateLabel);
  v32 = v21;
  v33 = v20;

  MEMORY[0x1D3885C10](0x657461442ELL, 0xE500000000000000);

  v28 = sub_1D139012C();

  [v27 setAccessibilityIdentifier_];

  (*(v30 + 8))(v4, v29);
  return (*(v10 + 8))(v12, v9);
}

void sub_1D10D9B44()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell_activeConstraints;
  swift_beginAccess();
  sub_1D106F934(0, &qword_1EC609690);

  v4 = sub_1D139044C();

  v52 = v2;
  [v2 deactivateConstraints_];

  sub_1D10DCFE8(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v51 = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D13A0750;
  v7 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell_titleView];
  v8 = [v7 leadingAnchor];
  v9 = [v1 contentView];
  v10 = [v9 leadingAnchor];

  v11 = [v8 constraintEqualToAnchor_];
  *(v6 + 32) = v11;
  v12 = [v7 trailingAnchor];
  v13 = sub_1D10D81A4();
  v14 = [v13 leadingAnchor];

  v15 = [v12 constraintEqualToAnchor:v14 constant:-7.0];
  *(v6 + 40) = v15;
  v16 = [v7 topAnchor];
  v17 = [v1 contentView];
  v18 = [v17 topAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  *(v6 + 48) = v19;
  v20 = [v7 bottomAnchor];
  v21 = [v1 contentView];
  v22 = [v21 bottomAnchor];

  v23 = [v20 constraintEqualToAnchor_];
  *(v6 + 56) = v23;
  v24 = OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell____lazy_storage___button;
  v25 = [*&v1[OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell____lazy_storage___button] centerYAnchor];
  v26 = [v1 contentView];
  v27 = [v26 centerYAnchor];

  v28 = [v25 constraintEqualToAnchor_];
  *(v6 + 64) = v28;
  v29 = [*&v1[v24] heightAnchor];
  v30 = [*&v1[v24] widthAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 multiplier:1.0];

  *(v6 + 72) = v31;
  v32 = [*&v1[v24] widthAnchor];
  v33 = [v1 traitCollection];
  v34 = [v33 preferredContentSizeCategory];
  LOBYTE(v18) = sub_1D1390B5C();

  v35 = 32.0;
  if (v18)
  {
    v35 = 64.0;
  }

  v36 = [v32 constraintEqualToConstant_];

  *(v6 + 80) = v36;
  *&v1[v3] = v6;

  if (v1[OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell_editMode] == 1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D139E810;
    v38 = [*&v1[v24] trailingAnchor];
    v39 = [v1 contentView];
    v40 = [v39 trailingAnchor];

    v41 = [v38 constraintEqualToAnchor:v40 constant:-16.0];
    *(inited + 32) = v41;
  }

  else
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D139E810;
    v42 = [*&v1[v24] trailingAnchor];
    v43 = [v1 contentView];
    v44 = [v43 trailingAnchor];

    v45 = [v1 &selRef_setDismissHandler_];
    v46 = [v45 preferredContentSizeCategory];
    v47 = sub_1D1390B5C();

    v48 = 56.0;
    if ((v47 & 1) == 0)
    {
      v48 = 24.0;
    }

    v49 = [v42 constraintEqualToAnchor:v44 constant:v48];

    *(inited + 32) = v49;
  }

  swift_beginAccess();
  sub_1D1121F80(inited);
  swift_endAccess();

  v50 = sub_1D139044C();

  [v52 activateConstraints_];
}

uint64_t sub_1D10DA1CC(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for UserDomainConceptViewData();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell_item;
  swift_beginAccess();
  sub_1D10DC624(v2 + v8, v26, &qword_1EC60B620, &qword_1EC60A3D0, MEMORY[0x1E69A3348], sub_1D10DC698);
  if (!v27)
  {
    return sub_1D10DD0D8(v26, &qword_1EC60B620, &qword_1EC60A3D0, MEMORY[0x1E69A3348], sub_1D10DC698);
  }

  sub_1D1080EA4(0, &qword_1EC60A3D0);
  type metadata accessor for UDCAlphabeticalItem();
  result = swift_dynamicCast();
  if (result)
  {
    v24 = a2;
    sub_1D10DC904(v25 + OBJC_IVAR____TtC15HealthRecordsUI19UDCAlphabeticalItem_viewData, v7);

    v10 = v7[1];
    sub_1D10DD050(v7, type metadata accessor for UserDomainConceptViewData);
    if (qword_1EE06AF70 != -1)
    {
      swift_once();
    }

    v11 = qword_1EE06BB58;
    v12 = sub_1D10D7F9C();
    v25 = *&v11[OBJC_IVAR___HRProfileManager_lock];
    *(&v24 - 2) = MEMORY[0x1EEE9AC00](v12);
    *(&v24 - 1) = v11;
    sub_1D138D96C();
    sub_1D106F934(0, &qword_1EE06B6B0);
    sub_1D10DC8AC();

    sub_1D138ED0C();

    v13 = v26[0];
    if (qword_1EE069ED0 != -1)
    {
      swift_once();
    }

    v14 = objc_allocWithZone(type metadata accessor for UserDomainConceptDetailViewController());
    v15 = v10;
    v16 = v13;
    v17 = sub_1D12288FC(v15, v16);

    sub_1D10DC624(a1, v26, &qword_1EE06A4A8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D10DCFE8);
    v18 = v27;
    if (v27)
    {
      v19 = __swift_project_boxed_opaque_existential_1Tm(v26, v27);
      v20 = *(v18 - 8);
      MEMORY[0x1EEE9AC00](v19);
      v22 = &v24 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v22);
      v23 = sub_1D139161C();
      (*(v20 + 8))(v22, v18);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
    }

    else
    {
      v23 = 0;
    }

    [v24 showViewController:v17 sender:v23];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D10DA6F8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D138EF8C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OnboardingViewIdentifier();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UserDomainConceptViewData();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell_item;
  swift_beginAccess();
  sub_1D10DC624(v2 + v14, aBlock, &qword_1EC60B620, &qword_1EC60A3D0, MEMORY[0x1E69A3348], sub_1D10DC698);
  if (v60)
  {
    v15 = sub_1D1080EA4(0, &qword_1EC60A3D0);
    v58 = type metadata accessor for UDCAlphabeticalItem();
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    v56 = v15;
    v50 = v8;
    v51 = v10;
    v53 = v7;
    v54 = v5;
    v55 = v4;
    v52 = a1;
    sub_1D10DC904(v63 + OBJC_IVAR____TtC15HealthRecordsUI19UDCAlphabeticalItem_viewData, v13);

    v57 = v13[1];
    sub_1D10DD050(v13, type metadata accessor for UserDomainConceptViewData);
    if (qword_1EE06AF70 != -1)
    {
      swift_once();
    }

    v17 = qword_1EE06BB58;
    v18 = sub_1D10D7F9C();
    v19 = [v18 profileIdentifier];

    v63 = *(v17 + OBJC_IVAR___HRProfileManager_lock);
    MEMORY[0x1EEE9AC00](v20);
    *(&v50 - 2) = v17;
    *(&v50 - 1) = v19;
    sub_1D138D96C();
    sub_1D138EF2C();
    sub_1D10DC8AC();

    sub_1D138ED0C();

    v21 = sub_1D10D81A4();
    sub_1D10DCFE8(0, &qword_1EE06B560, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1D139E710;
    *(v22 + 32) = 0xD000000000000013;
    *(v22 + 40) = 0x80000001D13B7440;
    v23 = sub_1D10D84F0();
    v24 = 0x6F747475426E6950;
    if (v23)
    {
      v24 = 0x7475426E69706E55;
    }

    v25 = 0xE90000000000006ELL;
    if (v23)
    {
      v25 = 0xEB000000006E6F74;
    }

    *(v22 + 48) = v24;
    *(v22 + 56) = v25;
    v26 = sub_1D139044C();

    v27 = HKUIJoinStringsForAutomationIdentifier();

    [v21 setAccessibilityIdentifier_];
    sub_1D10DC624(v2 + v14, aBlock, &qword_1EC60B620, &qword_1EC60A3D0, MEMORY[0x1E69A3348], sub_1D10DC698);
    if (v60)
    {
      v28 = swift_dynamicCast();
      v29 = v57;
      if ((v28 & 1) == 0)
      {
LABEL_18:
      }

      v30 = *(v63 + OBJC_IVAR____TtC15HealthRecordsUI19UDCAlphabeticalItem_listConfiguration);

      v31 = sub_1D138EECC();
      if (v31 >> 62)
      {
        v49 = sub_1D13910DC();

        if (v49)
        {
LABEL_14:
          v41 = v53;
          ListConceptManager.togglePinState(for:onCommitHandler:)(v29, 0, 0, v53);
          (*(v54 + 8))(v41, v55);
          if (qword_1EE06A170 != -1)
          {
            swift_once();
          }

          v42 = qword_1EE06AEB8;
          if (sub_1D138EEFC())
          {
            v43 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v44 = swift_allocObject();
            v45 = v52;
            *(v44 + 16) = v43;
            *(v44 + 24) = v45;
            *(v44 + 32) = 0;
            *(v44 + 40) = v30;
            *(v44 + 48) = 0;
            v46 = *(v42 + OBJC_IVAR___CHRAnalyticsManager_healthRecordsStore);
            v47 = swift_allocObject();
            *(v47 + 16) = sub_1D10DD038;
            *(v47 + 24) = v44;
            v61 = sub_1D10DD048;
            v62 = v47;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1D1226920;
            v60 = &block_descriptor_58;
            v48 = _Block_copy(aBlock);

            [v46 fetchIsImproveHealthRecordsDataSubmissionAllowedWithCompletion_];

            _Block_release(v48);
          }

          goto LABEL_18;
        }
      }

      else
      {
        v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v32)
        {
          goto LABEL_14;
        }
      }

      v33 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell____lazy_storage___store);
      type metadata accessor for OnboardingTileAppearanceManager();
      inited = swift_initStackObject();
      *(inited + 16) = v33;
      v35 = objc_allocWithZone(MEMORY[0x1E696C210]);
      v36 = v33;
      v37 = sub_1D139012C();
      v38 = [v35 initWithCategory:0 domainName:v37 healthStore:v36];

      *(inited + 24) = v38;
      v39 = v51;
      swift_storeEnumTagMultiPayload();
      sub_1D1096F38(1, v39);
      swift_setDeallocating();

      v40 = *(inited + 24);

      sub_1D10DD050(v39, type metadata accessor for OnboardingViewIdentifier);
      goto LABEL_14;
    }
  }

  return sub_1D10DD0D8(aBlock, &qword_1EC60B620, &qword_1EC60A3D0, MEMORY[0x1E69A3348], sub_1D10DC698);
}

id sub_1D10DAF24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlphabeticalUDCCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AlphabeticalUDCCell()
{
  result = qword_1EC60A830;
  if (!qword_1EC60A830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D10DB068()
{
  sub_1D10DC5D0(319, &qword_1EC60A840, MEMORY[0x1E69A3588]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D10DB150@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell_item;
  swift_beginAccess();
  return sub_1D10DC624(v1 + v3, a1, &qword_1EC60B620, &qword_1EC60A3D0, MEMORY[0x1E69A3348], sub_1D10DC698);
}

uint64_t sub_1D10DB1D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell_item;
  swift_beginAccess();
  v4 = MEMORY[0x1E69A3348];
  sub_1D10DC970(a1, v1 + v3, &qword_1EC60B620, &qword_1EC60A3D0);
  swift_endAccess();
  sub_1D10D8DB0();
  return sub_1D10DD0D8(a1, &qword_1EC60B620, &qword_1EC60A3D0, v4, sub_1D10DC698);
}

uint64_t (*sub_1D10DB28C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D10DB2F0;
}

uint64_t sub_1D10DB308(void *a1, void *a2)
{
  v6[3] = sub_1D106F934(0, &qword_1EC609680);
  v6[0] = a1;
  v4 = a1;
  sub_1D10DA1CC(v6, a2);
  return sub_1D10DD0D8(v6, &qword_1EE06A4A8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D10DCFE8);
}

uint64_t sub_1D10DB3B4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell_sectionContext;
  swift_beginAccess();
  return sub_1D10DC9E0(v1 + v3, a1, &qword_1EC60A840, MEMORY[0x1E69A3588]);
}

uint64_t sub_1D10DB428(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell_sectionContext;
  swift_beginAccess();
  sub_1D10DCAC4(a1, v1 + v3);
  swift_endAccess();
  sub_1D10D96E4();
  return sub_1D10DCA4C(a1);
}

uint64_t (*sub_1D10DB494(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D10DB4F8;
}

uint64_t sub_1D10DB510(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

id sub_1D10DB554()
{
  v1 = type metadata accessor for UserDomainConceptViewData();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = (v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell_item;
  swift_beginAccess();
  sub_1D10DC624(v0 + v4, v8, &qword_1EC60B620, &qword_1EC60A3D0, MEMORY[0x1E69A3348], sub_1D10DC698);
  if (v9)
  {
    sub_1D1080EA4(0, &qword_1EC60A3D0);
    type metadata accessor for UDCAlphabeticalItem();
    if (swift_dynamicCast())
    {
      sub_1D10DC904(v7[1] + OBJC_IVAR____TtC15HealthRecordsUI19UDCAlphabeticalItem_viewData, v3);

      v5 = v3[1];
      sub_1D10DD050(v3, type metadata accessor for UserDomainConceptViewData);
      return v5;
    }
  }

  else
  {
    sub_1D10DD0D8(v8, &qword_1EC60B620, &qword_1EC60A3D0, MEMORY[0x1E69A3348], sub_1D10DC698);
  }

  return 0;
}

double sub_1D10DB710()
{
  [*v0 frame];

  return CGRectGetWidth(*&v1);
}

id sub_1D10DB76C(uint64_t *a1, void (*a2)(void), void *a3)
{
  v7 = type metadata accessor for UserDomainConceptViewData();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  swift_beginAccess();
  sub_1D10DC624(v3 + v10, v20, &qword_1EC60B620, &qword_1EC60A3D0, MEMORY[0x1E69A3348], sub_1D10DC698);
  if (v21)
  {
    sub_1D1080EA4(0, &qword_1EC60A3D0);
    a2(0);
    if (swift_dynamicCast())
    {
      sub_1D10DC904(v19[1] + *a3, v9);

      v11 = v9[1];
      sub_1D10DD050(v9, type metadata accessor for UserDomainConceptViewData);
      v12 = [v11 educationContent];
      if (v12)
      {
        v13 = v3;
        v14 = v12;
        v15 = sub_1D13868C0();

        if (v15)
        {
          [v13 frame];
          Width = CGRectGetWidth(v22);
          v17 = objc_allocWithZone(type metadata accessor for EducationPreviewViewController());
          return sub_1D1386F9C(v11, Width);
        }
      }
    }
  }

  else
  {
    sub_1D10DD0D8(v20, &qword_1EC60B620, &qword_1EC60A3D0, MEMORY[0x1E69A3348], sub_1D10DC698);
  }

  return 0;
}

void sub_1D10DB988(char a1, char a2)
{
  v3 = v2;
  v5 = a1 & 1;
  sub_1D10DC5D0(0, &qword_1EC60A848, MEMORY[0x1E69DC598]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = aBlock - v7;
  if (*(v3 + OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell_editMode) != v5)
  {
    *(v3 + OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell_editMode) = v5;
    v9 = sub_1D10D81A4();
    sub_1D10D84F0();
    sub_1D11CB89C();
    v10 = sub_1D1390ECC();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
    sub_1D1390EEC();

    if (a2)
    {
      v11 = objc_opt_self();
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1D10DCB44;
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D10CBD3C;
      aBlock[3] = &block_descriptor_12;
      v13 = _Block_copy(aBlock);

      [v11 animateWithDuration:v13 animations:0.25];
      _Block_release(v13);
    }

    else
    {
      sub_1D10D8CBC();
    }
  }
}

id sub_1D10DBB9C()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (sub_1D10D84F0())
  {
    v1 = sub_1D10DCB6C(sub_1D10DCB64, v0);
  }

  else
  {
    v1 = sub_1D10DCD78(sub_1D10DCB64, v0);
  }

  v2 = v1;
  v3 = sub_1D139044C();
  v4 = HKUIJoinStringsForAutomationIdentifier();

  [v2 setAccessibilityIdentifier_];
  sub_1D10DCFE8(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D139E810;
  *(v5 + 32) = v2;
  sub_1D106F934(0, &qword_1EC60A850);
  v6 = v2;
  v7 = sub_1D139044C();

  v8 = [objc_opt_self() configurationWithActions_];

  return v8;
}

void sub_1D10DBD40(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1D10DA6F8(2);
    (a3)(1);
  }

  else
  {
    a3();
  }
}

uint64_t sub_1D10DBDF0()
{
  if (sub_1D10D84F0())
  {
    if (qword_1EE06AD00 == -1)
    {
      return sub_1D138D1CC();
    }

    goto LABEL_6;
  }

  if (qword_1EE06AD00 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_1D138D1CC();
}

uint64_t sub_1D10DBEEC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = OBJC_IVAR____TtC15HealthRecordsUI19AlphabeticalUDCCell_item;
    swift_beginAccess();
    sub_1D10DC624(v1 + v2, v21, &qword_1EC60B620, &qword_1EC60A3D0, MEMORY[0x1E69A3348], sub_1D10DC698);
    if (v22)
    {
      sub_1D1080EA4(0, &qword_1EC60A3D0);
      type metadata accessor for UDCAlphabeticalItem();
      if ((swift_dynamicCast() & 1) == 0 || ((v3 = *(v20 + OBJC_IVAR____TtC15HealthRecordsUI19UDCAlphabeticalItem_listConfiguration), , v3 <= 4) ? (v4 = ((1 << v3) & 0x13) == 0) : (v4 = 1), v4))
      {

        return 0;
      }

      else
      {
        sub_1D10DBDF0();
        sub_1D10D84F0();
        v5 = sub_1D139012C();
        v6 = [objc_opt_self() systemImageNamed_];

        sub_1D106F934(0, &unk_1EC60F6B0);
        v7 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v19 = v7;
        v8 = sub_1D1390DCC();
        v9 = MEMORY[0x1E69E6F90];
        sub_1D10DCFE8(0, &qword_1EE06B560, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_1D139EAB0;
        *(v10 + 32) = 0xD000000000000013;
        *(v10 + 40) = 0x80000001D13B7440;
        *(v10 + 48) = 0x73657250676E6F4CLL;
        *(v10 + 56) = 0xE900000000000073;
        v11 = v8;
        v12 = sub_1D10D84F0();
        v13 = 0x6F697463416E6950;
        if (v12)
        {
          v13 = 0x7463416E69706E55;
        }

        v14 = 0xE90000000000006ELL;
        if (v12)
        {
          v14 = 0xEB000000006E6F69;
        }

        *(v10 + 64) = v13;
        *(v10 + 72) = v14;
        v15 = sub_1D139044C();

        v16 = HKUIJoinStringsForAutomationIdentifier();

        [v11 setAccessibilityIdentifier_];
        sub_1D106F934(0, &unk_1EC60CF20);
        sub_1D10DCFE8(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, v9);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1D139E810;
        *(v17 + 32) = v11;
        v18 = sub_1D1390C7C();

        return v18;
      }
    }

    else
    {

      sub_1D10DD0D8(v21, &qword_1EC60B620, &qword_1EC60A3D0, MEMORY[0x1E69A3348], sub_1D10DC698);
      return 0;
    }
  }

  return result;
}

void sub_1D10DC318()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D10DA6F8(1);
  }
}

id sub_1D10DC370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v17 = a2;
  v18 = a3;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1D10DC7C4;
  v16 = &block_descriptor_44;
  v9 = _Block_copy(&v13);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = a4;
  v18 = a5;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1D10DC814;
  v16 = &block_descriptor_41;
  v10 = _Block_copy(&v13);

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v9 actionProvider:v10];
  sub_1D102CC60(a4);
  sub_1D102CC60(a2);
  swift_unknownObjectRelease();
  _Block_release(v10);
  _Block_release(v9);
  return v11;
}

id sub_1D10DC510()
{
  v1 = *v0;
  sub_1D106F934(0, &qword_1EC60A858);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = v1;
  return sub_1D10DC370(0, sub_1D10DCF90, v2, sub_1D10DCFD8, v3);
}

void sub_1D10DC5D0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D1390F3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D10DC624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1D10DC698(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D1080EA4(255, a3);
    v4 = sub_1D1390F3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D10DC6F0(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_1D10DCF78, v8);
}

id sub_1D10DC7C4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_1D10DC814(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1D106F934(0, &unk_1EC60CF10);
  v2 = sub_1D139045C();

  v3 = v1(v2);

  return v3;
}

unint64_t sub_1D10DC8AC()
{
  result = qword_1EE06B048;
  if (!qword_1EE06B048)
  {
    sub_1D138D96C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06B048);
  }

  return result;
}

uint64_t sub_1D10DC904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserDomainConceptViewData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D10DC970(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  sub_1D10DC698(0, a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D10DC9E0(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D10DC5D0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D10DCA4C(uint64_t a1)
{
  sub_1D10DC5D0(0, &qword_1EC60A840, MEMORY[0x1E69A3588]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D10DCAC4(uint64_t a1, uint64_t a2)
{
  sub_1D10DC5D0(0, &qword_1EC60A840, MEMORY[0x1E69A3588]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1D10DCB6C(uint64_t a1, uint64_t a2)
{
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v4 = sub_1D139012C();

  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10DC6F0;
  aBlock[3] = &block_descriptor_28;
  v5 = _Block_copy(aBlock);
  v6 = objc_opt_self();

  v7 = [v6 contextualActionWithStyle:0 title:v4 handler:{v5, 0xE000000000000000}];

  _Block_release(v5);

  v8 = sub_1D139012C();
  v9 = [objc_opt_self() systemImageNamed_];

  [v7 setImage_];
  v10 = [objc_opt_self() systemYellowColor];
  [v7 setBackgroundColor_];

  return v7;
}

id sub_1D10DCD78(uint64_t a1, uint64_t a2)
{
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v4 = sub_1D139012C();

  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10DC6F0;
  aBlock[3] = &block_descriptor_34;
  v5 = _Block_copy(aBlock);
  v6 = objc_opt_self();

  v7 = [v6 contextualActionWithStyle:0 title:v4 handler:{v5, 0xE000000000000000}];

  _Block_release(v5);

  v8 = sub_1D139012C();
  v9 = [objc_opt_self() systemImageNamed_];

  [v7 setImage_];
  v10 = [objc_opt_self() systemYellowColor];
  [v7 setBackgroundColor_];

  return v7;
}

void sub_1D10DCFE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D10DD050(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D10DD0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D10DD168(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = 0;
  v13 = 1;
  v14 = 0;
  v6 = swift_allocObject();
  v6[2] = &v12;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = &v14;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1D10DD6A4;
  *(v7 + 24) = v6;
  v11[4] = sub_1D1096C3C;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D10DD3BC;
  v11[3] = &block_descriptor_13;
  v8 = _Block_copy(v11);

  v9 = a3;

  [v9 performBlockAndWait_];
  _Block_release(v8);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    if (v14)
    {
      swift_willThrow();

      return v7;
    }

    if ((v13 & 1) == 0)
    {
      v7 = v12;

      return v7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D10DD334(uint64_t a1, void *(*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3, uint64_t a4)
{
  result = a2(&v6, a4);
  *a1 = v6;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_1D10DD3E4(uint64_t a1, uint64_t a2)
{
  if ([objc_opt_self() isMainThread])
  {

    return sub_1D138D8BC();
  }

  else
  {

    return MEMORY[0x1EEE0ED98](a1, a2);
  }
}

uint64_t sub_1D10DD46C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  sub_1D138DB9C();
  v7 = MEMORY[0x1D38834C0]();
  v17 = v6;
  v8 = sub_1D138D99C();
  v9 = static FeedItem.predicateForHealthRecordsData(categoryKind:sourceProfile:)(&v17, v8);

  [v7 setPredicate_];
  v10 = sub_1D10DD3E4(a2, a3);
  v16[2] = v7;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1D10DD644;
  *(v11 + 24) = v16;
  v12 = sub_1D10DD168(sub_1D10DD660, v11, v10);

  if (v3)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (!isEscapingClosureAtFileLocation)
    {
      return v12;
    }

    __break(1u);
  }

  v14 = swift_isEscapingClosureAtFileLocation();

  if ((v14 & 1) == 0)
  {
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D10DD5EC@<X0>(uint64_t *a1@<X8>)
{
  sub_1D138DB9C();
  result = sub_1D1390B7C();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void *sub_1D10DD660@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D10DD700()
{
  v1 = v0;
  v27 = *v0;
  v2 = MEMORY[0x1E69E6720];
  sub_1D10E248C(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - v4;
  sub_1D1080C34();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  sub_1D10E248C(0, &qword_1EE06B500, MEMORY[0x1E6969530], v2);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v27 - v15;
  swift_beginAccess();
  *(v1 + 2) = MEMORY[0x1E69E7CD0];

  swift_beginAccess();
  *(v1 + 3) = MEMORY[0x1E69E7CC8];

  *(v1 + 4) = 0;

  v17 = sub_1D138D57C();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_oldestSampleDate;
  swift_beginAccess();
  sub_1D10E3A1C(v16, &v1[v18]);
  swift_endAccess();
  sub_1D1309BC0();
  sub_1D138F48C();
  v19 = OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_snapshot;
  swift_beginAccess();
  v20 = *(v8 + 40);
  v20(&v1[v19], v13, v7);
  swift_endAccess();
  sub_1D10EBC74(&qword_1EC609A40, type metadata accessor for TimelinePagingDataSource);
  sub_1D138E1DC();
  (*(v8 + 16))(v11, &v1[v19], v7);
  sub_1D138F45C();
  (*(v8 + 8))(v11, v7);
  swift_beginAccess();
  v20(&v1[v19], v13, v7);
  swift_endAccess();
  v21 = sub_1D13905DC();
  (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
  v22 = swift_allocObject();
  swift_weakInit();
  sub_1D13905AC();

  v23 = sub_1D139059C();
  v24 = swift_allocObject();
  v25 = MEMORY[0x1E69E85E0];
  v24[2] = v23;
  v24[3] = v25;
  v24[4] = v22;

  sub_1D107877C(0, 0, v5, &unk_1D13A0B90, v24);
}

uint64_t sub_1D10DDBBC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_1D10E248C(0, &qword_1EC60A900, MEMORY[0x1E69A3690], MEMORY[0x1E69E6720]);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v86 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v85 = &v85 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v89 = &v85 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v88 = &v85 - v15;
  sub_1D10E24F0();
  v93 = *(v16 - 8);
  v94 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v91 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v92 = &v85 - v19;
  v20 = type metadata accessor for TimelineRecord();
  v90 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1080C34();
  v24 = v23;
  v25 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_snapshot;
  swift_beginAccess();
  (*(v25 + 16))(v27, v4 + v28, v24);
  v87 = a1;
  v97 = a1;
  v98 = a2;
  sub_1D138F44C();
  v30 = *(v25 + 8);
  v29 = v25 + 8;
  result = v30(v27, v24);
  v32 = v96;
  if (!v96)
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v33 = a3;
  v34 = v95;
  if ((v95 != 0x526465766F6D6552 || v96 != 0xEE007364726F6365) && (sub_1D139162C() & 1) == 0)
  {
    v95 = v34;
    v96 = v32;
    v97 = 0x888CE2A588E2;
    v98 = 0xA600000000000000;
    sub_1D10940C8();
    v51 = sub_1D1390F7C();
    if (v51[2] < 2uLL)
    {
      __break(1u);
    }

    else
    {
      a3 = v51[6];
      v29 = v51[7];

      if (qword_1EE06AD00 == -1)
      {
LABEL_18:
        if (a3 == sub_1D138D1CC() && v29 == v52)
        {

LABEL_22:

          v54 = *(v4 + 32);
          v55 = v33;
          if (v54)
          {
            v56 = *(v54 + 88);
            v58 = v88;
            v57 = v89;
            if (*(v56 + 16) && (, v59 = sub_1D11362EC(v34, v32), v61 = v60, , (v61 & 1) != 0))
            {
              v62 = *(v56 + 56);
              v63 = sub_1D138E52C();
              v64 = *(v63 - 8);
              (*(v64 + 16))(v58, v62 + *(v64 + 72) * v59, v63);

              (*(v64 + 56))(v58, 0, 1, v63);
            }

            else
            {

              v63 = sub_1D138E52C();
              (*(*(v63 - 8) + 56))(v58, 1, 1, v63);
            }
          }

          else
          {

            v63 = sub_1D138E52C();
            v58 = v88;
            (*(*(v63 - 8) + 56))(v88, 1, 1, v63);
            v57 = v89;
          }

          sub_1D10EB7D4(v58, v57, &qword_1EC60A900, MEMORY[0x1E69A3690]);
          sub_1D138E52C();
          v84 = *(v63 - 8);
          if ((*(v84 + 48))(v57, 1, v63) != 1)
          {
            sub_1D138E4FC();
            sub_1D10E3DC8(v58, &qword_1EC60A900, MEMORY[0x1E69A3690]);
            return (*(v84 + 8))(v57, v63);
          }

          v82 = MEMORY[0x1E69A3690];
          sub_1D10E3DC8(v58, &qword_1EC60A900, MEMORY[0x1E69A3690]);
          v83 = v57;
          goto LABEL_40;
        }

        v53 = sub_1D139162C();

        if (v53)
        {
          goto LABEL_22;
        }

        swift_beginAccess();
        v65 = *(v4 + 24);
        if (*(v65 + 16) && (v66 = sub_1D11362EC(a3, v29), (v67 & 1) != 0))
        {
          v68 = *(*(v65 + 56) + 8 * v66);
          swift_endAccess();

          v69 = *(v68 + 88);

          if (*(v69 + 16))
          {
            v70 = sub_1D11362EC(v34, v32);
            v72 = v71;

            v55 = v33;
            if (v72)
            {
              v73 = *(v69 + 56);
              v74 = sub_1D138E52C();
              v75 = *(v74 - 8);
              v76 = v75;
              v77 = v73 + *(v75 + 72) * v70;
              v78 = v85;
              (*(v75 + 16))(v85, v77, v74);

              (*(v76 + 56))(v78, 0, 1, v74);
              v79 = v78;
            }

            else
            {

              v74 = sub_1D138E52C();
              v79 = v85;
              (*(*(v74 - 8) + 56))(v85, 1, 1, v74);
            }

            goto LABEL_35;
          }
        }

        else
        {
          swift_endAccess();
        }

        v74 = sub_1D138E52C();
        v79 = v85;
        (*(*(v74 - 8) + 56))(v85, 1, 1, v74);
        v55 = v33;
LABEL_35:
        v80 = v86;
        sub_1D10EB7D4(v79, v86, &qword_1EC60A900, MEMORY[0x1E69A3690]);
        sub_1D138E52C();
        v81 = *(v74 - 8);
        if ((*(v81 + 48))(v80, 1, v74) != 1)
        {
          sub_1D138E4FC();
          sub_1D10E3DC8(v79, &qword_1EC60A900, MEMORY[0x1E69A3690]);
          return (*(v81 + 8))(v80, v74);
        }

        v82 = MEMORY[0x1E69A3690];
        sub_1D10E3DC8(v79, &qword_1EC60A900, MEMORY[0x1E69A3690]);
        v83 = v80;
LABEL_40:
        result = sub_1D10E3DC8(v83, &qword_1EC60A900, v82);
        *v55 = 0u;
        *(v55 + 1) = 0u;
        v55[4] = 0;
        return result;
      }
    }

    swift_once();
    goto LABEL_18;
  }

  v35 = OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_removedRecords;
  swift_beginAccess();
  v36 = *(v4 + v35);
  v37 = MEMORY[0x1E69E7CC0];
  v97 = MEMORY[0x1E69E7CC0];
  v38 = *(v36 + 16);
  if (v38)
  {
    v89 = a3;
    v39 = *(v20 + 20);
    v40 = v36 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
    v41 = *(v90 + 72);

    do
    {
      sub_1D10EBA1C(v40, v22, type metadata accessor for TimelineRecord);
      v42 = *&v22[v39];
      sub_1D10EBA84(v22, type metadata accessor for TimelineRecord);
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        MEMORY[0x1D3885D90]();
        if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D13904BC();
        }

        sub_1D13904FC();
        v37 = v97;
      }

      else
      {
      }

      v40 += v41;
      --v38;
    }

    while (v38);

    v33 = v89;
  }

  v43 = type metadata accessor for MedicalRecordTimelineRemovedRecordItem();
  v44 = swift_allocObject();
  v45 = (v44 + OBJC_IVAR____TtC15HealthRecordsUI38MedicalRecordTimelineRemovedRecordItem_reuseIdentifier);
  type metadata accessor for MedicalRecordTimelineRemovedRecordItemCell();
  sub_1D10EBC74(&qword_1EC60A910, type metadata accessor for MedicalRecordTimelineRemovedRecordItemCell);
  *v45 = sub_1D138DECC();
  v45[1] = v46;
  *(v44 + OBJC_IVAR____TtC15HealthRecordsUI38MedicalRecordTimelineRemovedRecordItem_removedRecords) = v37;
  v47 = v92;
  sub_1D13908EC();
  v49 = v93;
  v48 = v94;
  (*(v93 + 16))(v91, v47, v94);
  v50 = sub_1D10EBC74(&qword_1EC60A918, type metadata accessor for MedicalRecordTimelineRemovedRecordItem);
  sub_1D138DCAC();
  (*(v49 + 8))(v47, v48);
  sub_1D138DC8C();
  result = swift_storeEnumTagMultiPayload();
  v33[3] = v43;
  v33[4] = v50;
  *v33 = v44;
  return result;
}

uint64_t sub_1D10DE8FC(uint64_t a1)
{
  sub_1D10E248C(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  result = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17 - v5;
  v7 = OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_perTypeFilter;
  if (!*(v1 + OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_perTypeFilter))
  {
    if (!a1)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (!a1 || (v8 = , sub_1D10E3678(v8, a1), v10 = v9, result = , (v10 & 1) == 0))
  {
LABEL_6:
    *(v1 + v7) = a1;

    sub_1D1309B3C(v11);
    sub_1D10DD700();
    v12 = sub_1D13905DC();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    v13 = swift_allocObject();
    swift_weakInit();
    sub_1D13905AC();

    v14 = sub_1D139059C();
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E85E0];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v13;

    sub_1D107877C(0, 0, v6, &unk_1D139EAA8, v15);
  }

  return result;
}

unint64_t sub_1D10DEAFC(uint64_t a1)
{
  v2 = sub_1D138E6BC();
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1080C34();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D138DFEC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138DFCC();
  v27 = a1;
  v14 = v28;
  v15 = sub_1D138DFBC();
  if (v14)
  {
    return (*(v11 + 8))(v13, v10);
  }

  v23 = v4;
  v24 = v2;
  v28 = v15;
  (*(v11 + 8))(v13, v10);
  v17 = OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_snapshot;
  v18 = v26;
  swift_beginAccess();
  (*(v7 + 16))(v9, v18 + v17, v6);
  v19 = sub_1D138F46C();
  (*(v7 + 8))(v9, v6);
  result = sub_1D138E80C();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result >= *(v19 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v20 = sub_1D139032C();

  if ((v20 & 1) == 0)
  {
    return v28;
  }

  v21 = v23;
  sub_1D138E65C();
  sub_1D138E67C();
  sub_1D138E7EC();
  v22 = sub_1D138E6AC();

  swift_unknownObjectRelease();
  (*(v25 + 8))(v21, v24);
  return v22;
}

uint64_t sub_1D10DEE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = sub_1D138F0BC();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  sub_1D13905AC();
  v4[14] = sub_1D139059C();
  v7 = sub_1D139055C();
  v4[15] = v7;
  v4[16] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D10DEF48, v7, v6);
}

uint64_t sub_1D10DEF48()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[18] = v2;
    *v2 = v0;
    v2[1] = sub_1D10DF040;

    return sub_1D10DF40C();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1D10DF040()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_1D10DF1C4;
  }

  else
  {

    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_1D10DF15C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D10DF15C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D10DF1C4()
{
  v22 = v0;
  v1 = *(v0 + 152);

  sub_1D138F06C();
  v2 = v1;
  v3 = sub_1D138F0AC();
  v4 = sub_1D13907FC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 152);
    v6 = *(v0 + 96);
    v19 = *(v0 + 88);
    v20 = *(v0 + 104);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *(v0 + 72) = v5;
    v21 = v8;
    *v7 = 136315138;
    v9 = v5;
    sub_1D1080EA4(0, &qword_1EE06B690);
    sub_1D13916AC();
    v10 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_1D139101C();
    swift_unknownObjectRelease();
    v11 = sub_1D13901EC();
    v13 = sub_1D11DF718(v11, v12, &v21);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_1D101F000, v3, v4, "Failed to load initial samples: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1D38882F0](v8, -1, -1);
    MEMORY[0x1D38882F0](v7, -1, -1);

    (*(v6 + 8))(v20, v19);
  }

  else
  {
    v15 = *(v0 + 96);
    v14 = *(v0 + 104);
    v16 = *(v0 + 88);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1D10DF40C()
{
  v1[11] = v0;
  v1[12] = *v0;
  sub_1D1080C34();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  sub_1D10E248C(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v1[17] = swift_task_alloc();
  sub_1D13905AC();
  v1[18] = sub_1D139059C();
  v4 = sub_1D139055C();
  v1[19] = v4;
  v1[20] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D10DF590, v4, v3);
}

uint64_t sub_1D10DF590()
{
  v1 = v0[11];
  v2 = OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_fetching;
  v0[21] = OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_fetching;
  if (*(v1 + v2))
  {

    v3 = v0[1];

    return v3();
  }

  else
  {
    *(v1 + v2) = 1;
    v5 = swift_task_alloc();
    v0[22] = v5;
    *v5 = v0;
    v5[1] = sub_1D10DF6A0;

    return sub_1D130A29C();
  }
}

uint64_t sub_1D10DF6A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 184) = a1;
  *(v4 + 192) = v1;

  v5 = *(v3 + 160);
  v6 = *(v3 + 152);
  if (v1)
  {
    v7 = sub_1D10ECC5C;
  }

  else
  {
    v7 = sub_1D10DF7E4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D10DF7E4()
{
  v1 = v0[23];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[17];
    v4 = v0[11];
    v5 = v2 - 1;
    v6 = *(type metadata accessor for TimelineRecord() - 8);
    v7 = v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    v8 = sub_1D138D57C();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v3, v7, v8);
    (*(v9 + 56))(v3, 0, 1, v8);
    v10 = OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_oldestSampleDate;
    swift_beginAccess();
    sub_1D10E3A1C(v3, v4 + v10);
    swift_endAccess();
    v1 = v0[23];
  }

  v11 = v0[11];
  v12 = sub_1D10DFEC4(v1);
  v0[25] = v12;

  v13 = swift_allocObject();
  v0[26] = v13;
  *(v13 + 16) = &unk_1D13A0B50;
  *(v13 + 24) = v11;

  v14 = swift_task_alloc();
  v0[27] = v14;
  v15 = type metadata accessor for TimelineRecord();
  sub_1D10E3C10();
  *v14 = v0;
  v14[1] = sub_1D10DFA38;

  return MEMORY[0x1EEE0DDB0](&unk_1D13A0B60, v13, v12, v15, v16);
}

uint64_t sub_1D10DFA38(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 224) = a1;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1D10DFBA0, v4, v3);
}

void *sub_1D10DFBA0()
{
  v1 = *(v0 + 224);

  v3 = *(v1 + 16);
  if (!v3)
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v15 = *(v0 + 168);
    v16 = *(v0 + 88);

    *(v16 + v15) = 0;
    v17 = sub_1D10E05F0(v5);

    sub_1D10E0C68(v17);

    sub_1D138F6CC();
    if ((*(v0 + 232) & 1) == 0)
    {
      *(v0 + 233) = 1;
      sub_1D138F6BC();
    }

    v19 = *(v0 + 120);
    v18 = *(v0 + 128);
    v20 = *(v0 + 104);
    v21 = *(v0 + 112);
    v22 = *(v0 + 88);
    sub_1D10EBC74(&qword_1EC609A40, type metadata accessor for TimelinePagingDataSource);
    sub_1D138E1DC();
    v23 = OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_snapshot;
    swift_beginAccess();
    (*(v21 + 16))(v19, v22 + v23, v20);
    sub_1D138F45C();
    (*(v21 + 8))(v19, v20);
    swift_beginAccess();
    (*(v21 + 40))(v22 + v23, v18, v20);
    swift_endAccess();

    v24 = *(v0 + 8);

    return v24();
  }

  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = *(v0 + 224) + 32;
  while (v4 < *(v1 + 16))
  {
    v7 = *(v6 + 8 * v4);
    v8 = *(v7 + 16);
    v9 = v5[2];
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      goto LABEL_26;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v10 <= v5[3] >> 1)
    {
      if (*(v7 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v9 <= v10)
      {
        v11 = v9 + v8;
      }

      else
      {
        v11 = v9;
      }

      result = sub_1D10F7434(result, v11, 1, v5);
      v5 = result;
      if (*(v7 + 16))
      {
LABEL_15:
        if ((v5[3] >> 1) - v5[2] < v8)
        {
          goto LABEL_28;
        }

        sub_1D1080EA4(0, &qword_1EC609E28);
        swift_arrayInitWithCopy();

        if (v8)
        {
          v12 = v5[2];
          v13 = __OFADD__(v12, v8);
          v14 = v12 + v8;
          if (v13)
          {
            goto LABEL_29;
          }

          v5[2] = v14;
        }

        goto LABEL_4;
      }
    }

    if (v8)
    {
      goto LABEL_27;
    }

LABEL_4:
    if (v3 == ++v4)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1D10DFEC4(uint64_t a1)
{
  v35 = type metadata accessor for TimelineRecord();
  v3 = MEMORY[0x1EEE9AC00](v35);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v12 = &v31 - v11;
  if (*(v1 + OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_showRemovedRecordsOnTimeline))
  {
  }

  else
  {
    v13 = *(a1 + 16);
    if (v13)
    {
      v32 = v10;
      v33 = v9;
      v34 = v1;
      v37 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v14 = a1 + v37;
      a1 = MEMORY[0x1E69E7CC0];
      v15 = *(v8 + 72);
      v16 = v14;
      v17 = v13;
      v36 = v7;
      do
      {
        sub_1D10EBA1C(v16, v12, type metadata accessor for TimelineRecord);
        objc_opt_self();
        v18 = swift_dynamicCastObjCClass();
        if (v18 && ([v18 isRemovedFromRemote] & 1) != 0)
        {
          sub_1D10EBA84(v12, type metadata accessor for TimelineRecord);
        }

        else
        {
          sub_1D10EBAE4(v12, v7, type metadata accessor for TimelineRecord);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v38 = a1;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D10FD89C(0, *(a1 + 16) + 1, 1);
            a1 = v38;
          }

          v21 = *(a1 + 16);
          v20 = *(a1 + 24);
          if (v21 >= v20 >> 1)
          {
            sub_1D10FD89C(v20 > 1, v21 + 1, 1);
            a1 = v38;
          }

          *(a1 + 16) = v21 + 1;
          v22 = a1 + v37 + v21 * v15;
          v7 = v36;
          sub_1D10EBAE4(v36, v22, type metadata accessor for TimelineRecord);
        }

        v16 += v15;
        --v17;
      }

      while (v17);
      v23 = MEMORY[0x1E69E7CC0];
      v25 = v32;
      v24 = v33;
      do
      {
        sub_1D10EBA1C(v14, v25, type metadata accessor for TimelineRecord);
        objc_opt_self();
        v26 = swift_dynamicCastObjCClass();
        if (v26 && [v26 isRemovedFromRemote])
        {
          sub_1D10EBAE4(v25, v24, type metadata accessor for TimelineRecord);
          v27 = swift_isUniquelyReferenced_nonNull_native();
          v38 = v23;
          if ((v27 & 1) == 0)
          {
            sub_1D10FD89C(0, *(v23 + 16) + 1, 1);
            v23 = v38;
          }

          v29 = *(v23 + 16);
          v28 = *(v23 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_1D10FD89C(v28 > 1, v29 + 1, 1);
            v23 = v38;
          }

          *(v23 + 16) = v29 + 1;
          sub_1D10EBAE4(v24, v23 + v37 + v29 * v15, type metadata accessor for TimelineRecord);
        }

        else
        {
          sub_1D10EBA84(v25, type metadata accessor for TimelineRecord);
        }

        v14 += v15;
        --v13;
      }

      while (v13);
    }

    else
    {
      a1 = MEMORY[0x1E69E7CC0];
      v23 = MEMORY[0x1E69E7CC0];
    }

    swift_beginAccess();
    sub_1D1121F98(v23);
    swift_endAccess();
  }

  return a1;
}

uint64_t sub_1D10E0300(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D10E0320, 0, 0);
}

uint64_t sub_1D10E0320()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v1 + *(type metadata accessor for TimelineRecord() + 20));
  v4 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_timelineStyle);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1D10ECC60;

  return sub_1D12B5BAC(v3, v4);
}

uint64_t sub_1D10E03E8(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1D10E04E0;

  return v7(a2);
}

uint64_t sub_1D10E04E0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_1D10E05F0(uint64_t a1)
{
  v2 = v1;
  sub_1D10E248C(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v41 - v5;
  v50 = MEMORY[0x1E69E7CC0];
  v44 = *(a1 + 16);
  if (v44)
  {
    v41 = OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_timelineStyle;
    v43 = a1 + 32;
    swift_beginAccess();
    v7 = 0;
    v42 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1D1072E70(v43 + 40 * v7, v47);
      v8 = v48;
      v9 = v49;
      __swift_project_boxed_opaque_existential_1Tm(v47, v48);
      v10 = sub_1D12B62C4(v8, v9);
      v12 = v11;
      v13 = v2[2];
      if (*(v13 + 16))
      {
        sub_1D139177C();

        sub_1D139027C();
        v14 = sub_1D13917CC();
        v15 = -1 << *(v13 + 32);
        v16 = v14 & ~v15;
        if ((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
        {
          v17 = ~v15;
          while (1)
          {
            v18 = (*(v13 + 48) + 16 * v16);
            v19 = *v18 == v10 && v18[1] == v12;
            if (v19 || (sub_1D139162C() & 1) != 0)
            {
              break;
            }

            v16 = (v16 + 1) & v17;
            if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          goto LABEL_4;
        }

LABEL_14:
      }

      swift_beginAccess();
      sub_1D10E3C78(&v45, v10, v12);
      swift_endAccess();

      v20 = v48;
      v21 = v49;
      __swift_project_boxed_opaque_existential_1Tm(v47, v48);
      v22 = sub_1D12B6444(1, 0, v20, v21);
      v24 = v23;
      v25 = v48;
      v26 = v49;
      __swift_project_boxed_opaque_existential_1Tm(v47, v48);
      sub_1D12B6584(v25, v26, v6);
      v27 = sub_1D138D57C();
      LODWORD(v25) = (*(*(v27 - 8) + 48))(v6, 1, v27);
      sub_1D10E3DC8(v6, &qword_1EE06B500, MEMORY[0x1E6969530]);
      if (v25 != 1)
      {
        break;
      }

      if (v2[4])
      {

        if (!v2[4])
        {
          goto LABEL_4;
        }

LABEL_26:

        sub_1D11415B4(v47);
LABEL_27:

        goto LABEL_4;
      }

      v37 = *(v2 + v41);
      type metadata accessor for TimelineViewDataDayCollection();
      swift_allocObject();
      v2[4] = sub_1D114145C(v22, v24, v37);

      if (v2[4])
      {
        goto LABEL_26;
      }

LABEL_4:
      ++v7;
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      if (v7 == v44)
      {
        return v42;
      }
    }

    swift_beginAccess();
    v28 = v2[3];
    if (*(v28 + 16) && (v29 = sub_1D11362EC(v22, v24), (v30 & 1) != 0))
    {
      v31 = *(*(v28 + 56) + 8 * v29);
      swift_endAccess();

      sub_1D11415B4(v47);
      v46[0] = v31;
      MEMORY[0x1EEE9AC00](v32);
      *(&v41 - 2) = v46;
      if ((sub_1D10F1C08(sub_1D10ECC40, (&v41 - 4), v42) & 1) == 0)
      {

        MEMORY[0x1D3885D90](v39);
        if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D13904BC();
        }

LABEL_33:
        sub_1D13904FC();

        v42 = v50;
        goto LABEL_4;
      }
    }

    else
    {
      swift_endAccess();
      v33 = *(v2 + v41);
      type metadata accessor for TimelineViewDataDayCollection();
      swift_allocObject();

      v34 = sub_1D114145C(v22, v24, v33);
      sub_1D11415B4(v47);
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = v2[3];
      v2[3] = 0x8000000000000000;
      sub_1D11DA01C(v34, v22, v24, isUniquelyReferenced_nonNull_native);

      v2[3] = v45;
      v36 = swift_endAccess();
      v46[0] = v34;
      MEMORY[0x1EEE9AC00](v36);
      *(&v41 - 2) = v46;
      if ((sub_1D10F1C08(sub_1D10EB63C, (&v41 - 4), v42) & 1) == 0)
      {

        MEMORY[0x1D3885D90](v38);
        if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D13904BC();
        }

        goto LABEL_33;
      }
    }

    goto LABEL_27;
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1D10E0C68(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(v1 + 32);
  if (v4)
  {
    v5 = *(v4 + 80);
    v6 = *(v5 + 16);
    if (v6)
    {

      v7 = (v5 + 40);
      do
      {
        if (*(*(v4 + 96) + 16))
        {
          v8 = *(v7 - 1);
          v9 = *v7;

          sub_1D11362EC(v8, v9);
          v11 = v10;

          if (v11)
          {

            swift_beginAccess();
            sub_1D1080C34();
            sub_1D138F41C();
            swift_endAccess();
          }
        }

        v7 += 2;
        --v6;
      }

      while (v6);
    }

    else
    {
    }

    swift_beginAccess();
    sub_1D1080C34();

    sub_1D138F43C();
    swift_endAccess();

    v3 = a1;
  }

  if (v3 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D13910DC())
  {
    v13 = 0;
    v35 = v3 & 0xC000000000000001;
    v32 = v3 + 32;
    v33 = v3 & 0xFFFFFFFFFFFFFF8;
    while (v35)
    {
      v14 = MEMORY[0x1D3886B70](v13, v3);
      v15 = __OFADD__(v13++, 1);
      if (v15)
      {
        goto LABEL_42;
      }

LABEL_24:
      if (*(sub_1D1141060() + 2))
      {
        swift_beginAccess();
        sub_1D1080C34();
        sub_1D138F41C();
        swift_endAccess();

        swift_beginAccess();

        sub_1D138F43C();
        swift_endAccess();

        sub_1D1142090();
        swift_beginAccess();

        sub_1D138F42C();
        swift_endAccess();

        v16 = *(*(v14 + 80) + 16);
        if (!v16)
        {
          goto LABEL_41;
        }

        v17 = ( + 40);
        do
        {
          if (*(*(v14 + 96) + 16))
          {
            v19 = *(v17 - 1);
            v18 = *v17;

            sub_1D11362EC(v19, v18);
            if (v20)
            {

              swift_beginAccess();
              sub_1D138F40C();
              swift_endAccess();
            }
          }

          v17 += 2;
          --v16;
        }

        while (v16);
      }

      else
      {

        sub_1D1142090();
        swift_beginAccess();
        sub_1D1080C34();

        sub_1D138F42C();
        swift_endAccess();

        v21 = *(*(v14 + 80) + 16);
        if (!v21)
        {
LABEL_41:

          goto LABEL_17;
        }

        v22 = ( + 40);
        do
        {
          if (*(*(v14 + 96) + 16))
          {
            v24 = *(v22 - 1);
            v23 = *v22;

            sub_1D11362EC(v24, v23);
            if (v25)
            {

              swift_beginAccess();
              sub_1D138F40C();
              swift_endAccess();
            }
          }

          v22 += 2;
          --v21;
        }

        while (v21);
      }

      v3 = a1;
LABEL_17:
      if (v13 == i)
      {
        goto LABEL_45;
      }
    }

    if (v13 >= *(v33 + 16))
    {
      goto LABEL_43;
    }

    v14 = *(v32 + 8 * v13);

    v15 = __OFADD__(v13++, 1);
    if (!v15)
    {
      goto LABEL_24;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

LABEL_45:
  v26 = *(v2 + 32);
  if (v26)
  {

    sub_1D1142090();
    swift_beginAccess();
    sub_1D1080C34();

    sub_1D138F42C();
    swift_endAccess();

    v27 = *(*(v26 + 80) + 16);
    if (v27)
    {
      v28 = ( + 40);
      do
      {
        if (*(*(v26 + 96) + 16))
        {
          v30 = *(v28 - 1);
          v29 = *v28;

          sub_1D11362EC(v30, v29);
          if (v31)
          {

            swift_beginAccess();
            sub_1D138F40C();
            swift_endAccess();
          }
        }

        v28 += 2;
        --v27;
      }

      while (v27);
    }

    else
    {
    }
  }

  sub_1D10E12DC();
}

void sub_1D10E12DC()
{
  if ((*(v0 + OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_showRemovedRecordsOnTimeline) & 1) == 0)
  {
    v1 = OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_removedRecords;
    swift_beginAccess();
    if (*(*(v0 + v1) + 16))
    {
      sub_1D1086E1C();
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1D139E700;
      type metadata accessor for MedicalRecordTimelineRemovedRecordItemCell();
      sub_1D10EBC74(&qword_1EC60A910, type metadata accessor for MedicalRecordTimelineRemovedRecordItemCell);
      *(v2 + 32) = sub_1D138DECC();
      *(v2 + 40) = v3;
      swift_beginAccess();
      sub_1D1080C34();
      sub_1D138F41C();
      swift_endAccess();

      swift_beginAccess();
      sub_1D138F43C();
      sub_1D138F42C();
      swift_endAccess();
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D139E700;
      *(v4 + 32) = sub_1D138DECC();
      *(v4 + 40) = v5;
      swift_beginAccess();
      sub_1D138F40C();
      swift_endAccess();
    }
  }
}

uint64_t sub_1D10E14D8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D10E14F8, 0, 0);
}

uint64_t sub_1D10E14F8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v1 + *(type metadata accessor for TimelineRecord() + 20));
  v4 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_timelineStyle);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1D10E15C0;

  return sub_1D12B5BAC(v3, v4);
}

uint64_t sub_1D10E15C0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1D10E16BC()
{

  sub_1D10E3DC8(v0 + OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_oldestSampleDate, &qword_1EE06B500, MEMORY[0x1E6969530]);

  v1 = OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_snapshot;
  sub_1D1080C34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1D10E1834()
{
  sub_1D10E16BC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TimelinePagingDataSource()
{
  result = qword_1EC60A8E8;
  if (!qword_1EC60A8E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D10E18E0()
{
  sub_1D10E248C(319, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D1080C34();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1D10E1A54()
{
  v1 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_identifier);

  return v1;
}

uint64_t sub_1D10E1A90@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_snapshot;
  swift_beginAccess();
  sub_1D1080C34();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1D10E1B80()
{
  sub_1D138E71C();
  sub_1D13908CC();
  type metadata accessor for MedicalRecordTimelineUnknownItemCell(0);
  sub_1D10EBC74(&qword_1EC60A920, type metadata accessor for MedicalRecordTimelineUnknownItemCell);
  return sub_1D13908AC();
}

void sub_1D10E1C08(uint64_t a1)
{
  sub_1D10E248C(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &aBlock[-1] - v4;
  v6 = sub_1D138D57C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_reloadTrigger;
  v11 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_reloadTrigger);
  if (!v11 || ([v11 isValid] & 1) == 0)
  {
    v12 = OBJC_IVAR____TtC15HealthRecordsUI24TimelinePagingDataSource_oldestSampleDate;
    swift_beginAccess();
    sub_1D10EB7D4(v1 + v12, v5, &qword_1EE06B500, MEMORY[0x1E6969530]);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1D10E3DC8(v5, &qword_1EE06B500, MEMORY[0x1E6969530]);
    }

    else
    {
      v13 = (*(v7 + 32))(v9, v5, v6);
      MEMORY[0x1EEE9AC00](v13);
      *(&v21 - 2) = v9;
      sub_1D10E25EC(sub_1D10EB874, (&v21 - 4), a1);
      v15 = v14;
      (*(v7 + 8))(v9, v6);
      if (v15)
      {
        return;
      }
    }

    v16 = objc_opt_self();
    v17 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1D10EB854;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D10CB11C;
    aBlock[3] = &block_descriptor_14;
    v18 = _Block_copy(aBlock);

    v19 = [v16 scheduledTimerWithTimeInterval:0 repeats:v18 block:0.45];
    _Block_release(v18);
    v20 = *(v1 + v10);
    *(v1 + v10) = v19;
  }
}

uint64_t sub_1D10E1F50(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D138FECC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D138FF0C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D106F934(0, &qword_1EE06B760);
  v11 = sub_1D1390A7C();
  aBlock[4] = sub_1D10EB894;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10CBD3C;
  aBlock[3] = &block_descriptor_27;
  v12 = _Block_copy(aBlock);

  sub_1D138FEEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D10EBC74(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
  sub_1D10E248C(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D1080CD4();
  sub_1D139103C();
  MEMORY[0x1D3886400](0, v10, v6, v12);
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1D10E2224()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D10DD700();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RecordRangeView.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RecordRangeView.State(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D10E2438()
{
  result = qword_1EC60A8F8;
  if (!qword_1EC60A8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60A8F8);
  }

  return result;
}

void sub_1D10E248C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D10E24F0()
{
  if (!qword_1EC60A908)
  {
    type metadata accessor for MedicalRecordTimelineRemovedRecordItemCell();
    type metadata accessor for MedicalRecordTimelineRemovedRecordItem();
    v0 = sub_1D13908FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60A908);
    }
  }
}

BOOL sub_1D10E2558()
{
  sub_1D138D57C();
  sub_1D10EBC74(&qword_1EC60D430, MEMORY[0x1E6969530]);
  return (sub_1D13900AC() & 1) == 0;
}

uint64_t sub_1D10E25EC(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(sub_1D138D57C() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_1D10E26D8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1D11362EC(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1D139162C();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D10E287C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = v9 | (v4 << 6);
    v13 = *(v3 + 48) + 48 * v12;
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    v17 = *(v13 + 32);
    v16 = *(v13 + 40);
    v18 = *(*(v3 + 56) + 8 * v12);
    v28 = *v13;
    v29 = v14;
    v30 = v15;
    v31 = v17;
    v32 = v16;

    v19 = sub_1D129DE20(&v28);
    v21 = v20;
    result = sub_1D10ECBE8(&v28);
    if ((v21 & 1) == 0 || (v22 = *(*(a2 + 56) + 8 * v19), v23 = *(v22 + 16), v23 != *(v18 + 16)))
    {
LABEL_28:

      return 0;
    }

    if (v23)
    {
      v24 = v22 == v18;
    }

    else
    {
      v24 = 1;
    }

    if (!v24)
    {
      v25 = (v22 + 40);
      v26 = (v18 + 40);
      while (v23)
      {
        result = *(v25 - 1);
        if (result != *(v26 - 1) || *v25 != *v26)
        {
          result = sub_1D139162C();
          if ((result & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        v25 += 2;
        v26 += 2;
        if (!--v23)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

LABEL_6:
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1D10E2A40(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v39 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  v40 = v7;
  v41 = result;
  if (v6)
  {
    while (1)
    {
      v8 = __clz(__rbit64(v6));
      v43 = (v6 - 1) & v6;
LABEL_12:
      v11 = v8 | (v3 << 6);
      v12 = *(result + 56);
      v13 = *(result + 48) + 48 * v11;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      v17 = *(v13 + 32);
      v16 = *(v13 + 40);
      v18 = *(v12 + 8 * v11);
      v47 = *v13;
      v48 = v14;
      v49 = v15;
      v50 = v17;
      v51 = v16;

      v19 = sub_1D129DE20(&v47);
      v21 = v20;
      result = sub_1D10ECBE8(&v47);
      if ((v21 & 1) == 0 || (v22 = *(*(v2 + 56) + 8 * v19), v23 = *(v22 + 16), v23 != *(v18 + 16)))
      {
LABEL_40:

        return 0;
      }

      if (v23 && v22 != v18)
      {
        break;
      }

LABEL_19:

      result = v41;
      v2 = a2;
      v7 = v40;
      v6 = v43;
      if (!v43)
      {
        goto LABEL_7;
      }
    }

    v25 = 0;
    v44 = v22;
    v45 = v18;
    while (v23)
    {
      v26 = *(v22 + v25 + 48);
      v27 = *(v22 + v25 + 56);
      v28 = *(v22 + v25 + 72);
      v46 = *(v22 + v25 + 64);
      v29 = v18 + v25;
      v30 = *(v18 + v25 + 32);
      v31 = *(v18 + v25 + 40);
      v33 = *(v18 + v25 + 48);
      v32 = *(v18 + v25 + 56);
      v34 = *(v18 + v25 + 64);
      v35 = *(v29 + 72);
      v36 = *(v22 + v25 + 32) == v30 && *(v22 + v25 + 40) == v31;
      if (!v36 && (sub_1D139162C() & 1) == 0)
      {
        goto LABEL_40;
      }

      v37 = v26 == v33 && v27 == v32;
      if (!v37 && (sub_1D139162C() & 1) == 0)
      {
        goto LABEL_40;
      }

      result = v46;
      if (v46 != v34 || v28 != v35)
      {
        result = sub_1D139162C();
        if ((result & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v25 += 48;
      --v23;
      v22 = v44;
      v18 = v45;
      if (!v23)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_7:
    v9 = v3;
    while (1)
    {
      v3 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v3 >= v7)
      {
        return 1;
      }

      v10 = *(v39 + 8 * v3);
      ++v9;
      if (v10)
      {
        v8 = __clz(__rbit64(v10));
        v43 = (v10 - 1) & v10;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D10E2CA0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = *(result + 64);
  v38 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v40 = result;
  v39 = v9;
  if ((v7 & v5) != 0)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v8));
      v11 = (v8 - 1) & v8;
LABEL_12:
      v14 = v10 | (v4 << 6);
      v15 = *(v3 + 48) + 48 * v14;
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      v19 = *(v15 + 32);
      v18 = *(v15 + 40);
      v20 = *(*(v3 + 56) + 8 * v14);
      v52 = *v15;
      v53 = v16;
      v54 = v17;
      v55 = v19;
      v56 = v18;

      v21 = sub_1D129DE20(&v52);
      v23 = v22;
      result = sub_1D10ECBE8(&v52);
      if ((v23 & 1) == 0 || (v24 = *(*(v2 + 56) + 8 * v21), v25 = *(v24 + 16), v25 != *(v20 + 16)))
      {
LABEL_38:

        return 0;
      }

      v42 = v11;
      if (v25 && v24 != v20)
      {
        break;
      }

LABEL_19:

      v3 = v40;
      v2 = a2;
      v9 = v39;
      v8 = v42;
      if (!v42)
      {
        goto LABEL_7;
      }
    }

    v27 = 0;
    v43 = *(*(v2 + 56) + 8 * v21);
    v44 = v20;
    while (v25)
    {
      v28 = *(v24 + v27 + 48);
      v29 = *(v24 + v27 + 56);
      v30 = *(v24 + v27 + 64);
      v50 = *(v24 + v27 + 80);
      v51 = *(v24 + v27 + 72);
      v49 = *(v24 + v27 + 88);
      v31 = v20 + v27;
      v32 = *(v20 + v27 + 32);
      v33 = *(v20 + v27 + 40);
      v34 = *(v20 + v27 + 48);
      v35 = *(v20 + v27 + 56);
      v37 = *(v20 + v27 + 64);
      v36 = *(v31 + 72);
      v47 = *(v31 + 88);
      v48 = *(v31 + 80);
      v45 = *(v31 + 96);
      v46 = *(v24 + v27 + 96);
      if ((*(v24 + v27 + 32) != v32 || *(v24 + v27 + 40) != v33) && (sub_1D139162C() & 1) == 0)
      {
        goto LABEL_38;
      }

      if ((v28 != v34 || v29 != v35) && (sub_1D139162C() & 1) == 0)
      {
        goto LABEL_38;
      }

      if ((v30 != v37 || v51 != v36) && (sub_1D139162C() & 1) == 0)
      {
        goto LABEL_38;
      }

      result = v50;
      if (v50 != v48 || v49 != v47)
      {
        result = sub_1D139162C();
        if ((result & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      v20 = v44;
      if (v46 != v45)
      {
        goto LABEL_38;
      }

      v27 += 72;
      --v25;
      v24 = v43;
      if (!v25)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_7:
    v12 = v4;
    while (1)
    {
      v4 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v4 >= v9)
      {
        return 1;
      }

      v13 = *(v38 + 8 * v4);
      ++v12;
      if (v13)
      {
        v10 = __clz(__rbit64(v13));
        v11 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D10E2F5C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = *(result + 64);
  v35 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v37 = result;
  v36 = v9;
  if ((v7 & v5) != 0)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v8));
      v11 = (v8 - 1) & v8;
LABEL_12:
      v14 = v10 | (v4 << 6);
      v15 = *(v3 + 48) + 48 * v14;
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      v19 = *(v15 + 32);
      v18 = *(v15 + 40);
      v20 = *(*(v3 + 56) + 8 * v14);
      v50 = *v15;
      v51 = v16;
      v52 = v17;
      v53 = v19;
      v54 = v18;

      v21 = sub_1D129DE20(&v50);
      v23 = v22;
      result = sub_1D10ECBE8(&v50);
      if ((v23 & 1) == 0 || (v24 = *(*(v2 + 56) + 8 * v21), v25 = *(v24 + 16), v25 != *(v20 + 16)))
      {
LABEL_41:

        return 0;
      }

      v39 = v11;
      if (v25 && v24 != v20)
      {
        break;
      }

LABEL_19:

      v3 = v37;
      v2 = a2;
      v9 = v36;
      v8 = v39;
      if (!v39)
      {
        goto LABEL_7;
      }
    }

    v27 = (v24 + 56);
    v28 = (v20 + 56);
    while (v25)
    {
      v29 = *(v27 - 1);
      v30 = *v27;
      v48 = v27[1];
      v49 = v27[2];
      v46 = v27[4];
      v47 = v27[3];
      v32 = *(v28 - 1);
      v31 = *v28;
      v34 = v28[1];
      v33 = v28[2];
      v45 = v28[3];
      v43 = v27[6];
      v44 = v28[4];
      v40 = v28[5];
      v41 = v27[5];
      v42 = v28[6];
      if ((*(v27 - 3) != *(v28 - 3) || *(v27 - 2) != *(v28 - 2)) && (sub_1D139162C() & 1) == 0)
      {
        goto LABEL_41;
      }

      if ((v29 != v32 || v30 != v31) && (sub_1D139162C() & 1) == 0)
      {
        goto LABEL_41;
      }

      if ((v48 != v34 || v49 != v33) && (sub_1D139162C() & 1) == 0)
      {
        goto LABEL_41;
      }

      result = v47;
      if (v47 != v45 || v46 != v44)
      {
        result = sub_1D139162C();
        if ((result & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      if (v43)
      {
        if (!v42)
        {
          goto LABEL_41;
        }

        result = v41;
        if (v41 != v40 || v43 != v42)
        {
          result = sub_1D139162C();
          if ((result & 1) == 0)
          {
            goto LABEL_41;
          }
        }
      }

      else if (v42)
      {
        goto LABEL_41;
      }

      v27 += 10;
      v28 += 10;
      if (!--v25)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_7:
    v12 = v4;
    while (1)
    {
      v4 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v4 >= v9)
      {
        return 1;
      }

      v13 = *(v35 + 8 * v4);
      ++v12;
      if (v13)
      {
        v10 = __clz(__rbit64(v13));
        v11 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D10E3240(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v56 = result + 64;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  v57 = v7;
  v58 = result;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v63 = (v6 - 1) & v6;
LABEL_16:
    v64 = v3;
    v11 = v8 | (v3 << 6);
    v12 = *(result + 56);
    v13 = *(result + 48) + 48 * v11;
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    v17 = *(v13 + 32);
    v16 = *(v13 + 40);
    v18 = *(v12 + 8 * v11);
    v69 = *v13;
    v70 = v14;
    v71 = v15;
    v72 = v17;
    v73 = v16;

    v19 = sub_1D129DE20(&v69);
    v21 = v20;
    sub_1D10ECBE8(&v69);
    if ((v21 & 1) == 0 || (v22 = *(*(v2 + 56) + 8 * v19), v23 = *(v22 + 16), v23 != *(v18 + 16)))
    {
LABEL_55:

      return 0;
    }

    if (v23 && v22 != v18)
    {
      v24 = v22 + 32;
      v25 = v18 + 32;

      v26 = 0;
      v61 = v23;
      v62 = v2;
      v65 = v22;
      v66 = v18;
      v59 = v18 + 32;
      v60 = v22 + 32;
      while (v26 < *(v22 + 16))
      {
        if (v26 >= *(v18 + 16))
        {
          goto LABEL_61;
        }

        v27 = (v24 + 24 * v26);
        result = *v27;
        v28 = v27[1];
        v29 = v27[2];
        v67 = v26;
        v30 = (v25 + 24 * v26);
        v31 = v30[2];
        if (result != *v30 || v28 != v30[1])
        {
          result = sub_1D139162C();
          if ((result & 1) == 0)
          {
            goto LABEL_54;
          }
        }

        if (v29 != v31)
        {
          if (*(v29 + 16) != *(v31 + 16))
          {
LABEL_54:

            goto LABEL_55;
          }

          v33 = v29 + 64;
          v34 = 1 << *(v29 + 32);
          if (v34 < 64)
          {
            v35 = ~(-1 << v34);
          }

          else
          {
            v35 = -1;
          }

          v36 = v35 & *(v29 + 64);
          v37 = (v34 + 63) >> 6;

          v38 = 0;
          while (v36)
          {
            v39 = __clz(__rbit64(v36));
            v68 = (v36 - 1) & v36;
LABEL_44:
            v42 = 16 * (v39 | (v38 << 6));
            v43 = v29;
            v44 = (*(v29 + 48) + v42);
            v45 = *v44;
            v46 = v44[1];
            v47 = (*(v29 + 56) + v42);
            v49 = *v47;
            v48 = v47[1];

            v50 = sub_1D11362EC(v45, v46);
            v52 = v51;

            if ((v52 & 1) == 0)
            {

              goto LABEL_53;
            }

            v53 = (*(v31 + 56) + 16 * v50);
            if (*v53 == v49 && v53[1] == v48)
            {

              v29 = v43;
              v36 = v68;
            }

            else
            {
              v55 = sub_1D139162C();

              v29 = v43;
              v36 = v68;
              if ((v55 & 1) == 0)
              {

LABEL_53:

                goto LABEL_55;
              }
            }
          }

          v40 = v38;
          while (1)
          {
            v38 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              break;
            }

            if (v38 >= v37)
            {

              v23 = v61;
              v2 = v62;
              v22 = v65;
              v18 = v66;
              v25 = v59;
              v24 = v60;
              goto LABEL_22;
            }

            v41 = *(v33 + 8 * v38);
            ++v40;
            if (v41)
            {
              v39 = __clz(__rbit64(v41));
              v68 = (v41 - 1) & v41;
              goto LABEL_44;
            }
          }

          __break(1u);
          goto LABEL_59;
        }

LABEL_22:
        v26 = v67 + 1;
        if (v67 + 1 == v23)
        {

          goto LABEL_8;
        }
      }

      goto LABEL_60;
    }

LABEL_8:

    v7 = v57;
    result = v58;
    v6 = v63;
    v3 = v64;
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v56 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v63 = (v10 - 1) & v10;
      goto LABEL_16;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

void sub_1D10E3678(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v4 = a1;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        a1 = a2;
      }

      else
      {
        a1 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      a2 = v4;

LABEL_39:
      MEMORY[0x1EEE6A970](a1, a2);
      return;
    }

    v5 = v4;
    goto LABEL_17;
  }

  if (v3)
  {
    if (a2 < 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    a2 = v2;
LABEL_17:

    sub_1D10E388C(v5, a2);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v6 = a2;
    v7 = 0;
    v8 = 1 << *(a1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a1 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_32:
      v15 = v12 | (v7 << 6);
      v16 = *(*(v2 + 56) + 8 * v15);
      v17 = *(*(v2 + 48) + 8 * v15);
      v18 = v16;
      v19 = sub_1D129DF14(v17);
      v21 = v20;

      if ((v21 & 1) == 0)
      {

        return;
      }

      sub_1D106F934(0, &qword_1EE06B790);
      v22 = *(*(v6 + 56) + 8 * v19);
      v23 = sub_1D1390D8C();

      if ((v23 & 1) == 0)
      {
        return;
      }
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        return;
      }

      v14 = *(v2 + 64 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_39;
  }
}

void sub_1D10E388C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_1D13910DC())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = v9 | (v4 << 6);
      v13 = *(*(a2 + 56) + 8 * v12);
      v14 = *(*(a2 + 48) + 8 * v12);
      v15 = v13;
      v16 = sub_1D139137C();

      if (!v16)
      {

        return;
      }

      sub_1D106F934(0, &qword_1EE06B790);
      swift_dynamicCast();
      v17 = sub_1D1390D8C();

      if ((v17 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D10E3A1C(uint64_t a1, uint64_t a2)
{
  sub_1D10E248C(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D10E3AB0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D10ECC64;

  return sub_1D10E0300(a1, v1);
}

uint64_t sub_1D10E3B48(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D10819BC;

  return sub_1D10E03E8(a1, a2, v6);
}

void sub_1D10E3C10()
{
  if (!qword_1EC609E20)
  {
    sub_1D1080EA4(255, &qword_1EC609E28);
    v0 = sub_1D139052C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609E20);
    }
  }
}

uint64_t sub_1D10E3C78(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1D139177C();
  sub_1D139027C();
  v8 = sub_1D13917CC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1D139162C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1D10E6BB4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1D10E3DC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D10E248C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D10E3E38(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *v2;
  sub_1D139177C();
  v6 = *a2;
  v7 = *(a2 + 2);
  v8 = *(a2 + 3);
  MEMORY[0x1D38870E0](*a2);
  sub_1D1390D9C();
  v31 = v2;
  v32 = a1;
  sub_1D139179C();
  if (v8)
  {
    sub_1D139027C();
  }

  v9 = *(a2 + 6);
  v10 = *(a2 + 7);
  *&v34 = *(a2 + 5);
  *(&v34 + 1) = *(a2 + 4);
  sub_1D139027C();
  sub_1D123F520(&v38, v9);
  v30 = v10;
  sub_1D123F520(&v38, v10);
  sub_1D1390D9C();
  v11 = sub_1D13917CC();
  v12 = -1 << *(v5 + 32);
  v13 = v11 & ~v12;
  if ((*(v5 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v33 = v7;
    v14 = ~v12;
    while (1)
    {
      v15 = *(v5 + 48) + 72 * v13;
      v38 = *v15;
      v17 = *(v15 + 32);
      v16 = *(v15 + 48);
      v18 = *(v15 + 64);
      v39 = *(v15 + 16);
      v40 = v17;
      v42 = v18;
      v41 = v16;
      if (v38 != v6)
      {
        goto LABEL_7;
      }

      sub_1D106F934(0, &qword_1EE06B0C0);
      sub_1D1082914(&v38, v36);
      if ((sub_1D1390D8C() & 1) == 0)
      {
        break;
      }

      if (*(&v39 + 1))
      {
        if (!v8 || v39 != __PAIR128__(v8, v33) && (sub_1D139162C() & 1) == 0)
        {
          break;
        }
      }

      else if (v8)
      {
        break;
      }

      if (__PAIR128__(v40, *(&v40 + 1)) != v34 && (sub_1D139162C() & 1) == 0 || (sub_1D1335054(v41, v9) & 1) == 0 || (sub_1D1335054(*(&v41 + 1), v30) & 1) == 0)
      {
        break;
      }

      v19 = sub_1D1390D8C();
      sub_1D1080D98(&v38);
      if (v19)
      {
        sub_1D1080D98(a2);
        v20 = *(v5 + 48) + 72 * v13;
        v22 = *(v20 + 16);
        v21 = *(v20 + 32);
        v23 = *(v20 + 64);
        v36[3] = *(v20 + 48);
        v37 = v23;
        v36[0] = *v20;
        v36[1] = v22;
        v36[2] = v21;
        v24 = *(v20 + 48);
        *(v32 + 32) = *(v20 + 32);
        *(v32 + 48) = v24;
        *(v32 + 64) = *(v20 + 64);
        v25 = *(v20 + 16);
        *v32 = *v20;
        *(v32 + 16) = v25;
        sub_1D1082914(v36, v35);
        return 0;
      }

LABEL_7:
      v13 = (v13 + 1) & v14;
      if (((*(v5 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    sub_1D1080D98(&v38);
    goto LABEL_7;
  }

LABEL_20:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v36[0] = *v31;
  sub_1D1082914(a2, &v38);
  sub_1D10E6D34(a2, v13, isUniquelyReferenced_nonNull_native);
  *v31 = *&v36[0];
  v28 = *(a2 + 3);
  *(v32 + 32) = *(a2 + 2);
  *(v32 + 48) = v28;
  *(v32 + 64) = *(a2 + 8);
  v29 = *(a2 + 1);
  result = 1;
  *v32 = *a2;
  *(v32 + 16) = v29;
  return result;
}

uint64_t sub_1D10E4184(uint64_t a1, void *a2)
{
  v32 = a1;
  v4 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v29 = (&v28 - v9);
  v30 = v2;
  v10 = *v2;
  sub_1D139177C();
  v11 = a2[2];
  v12 = a2[3];
  sub_1D139027C();
  v31 = a2;
  v14 = *a2;
  v13 = a2[1];
  sub_1D139027C();
  v15 = sub_1D13917CC();
  v33 = v10 + 56;
  v34 = v10;
  v16 = -1 << *(v10 + 32);
  v17 = v15 & ~v16;
  if (((*(v10 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
  {
LABEL_16:
    v23 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v31;
    v26 = v29;
    sub_1D10EBA1C(v31, v29, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
    v35 = *v23;
    sub_1D10E7068(v26, v17, isUniquelyReferenced_nonNull_native);
    *v23 = v35;
    sub_1D10EBAE4(v25, v32, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
    return 1;
  }

  v18 = ~v16;
  v19 = *(v5 + 72);
  while (1)
  {
    sub_1D10EBA1C(*(v34 + 48) + v19 * v17, v8, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
    v20 = v8[2] == v11 && v8[3] == v12;
    if (!v20 && (sub_1D139162C() & 1) == 0)
    {
      sub_1D10EBA84(v8, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
      goto LABEL_4;
    }

    if (*v8 == v14 && v8[1] == v13)
    {
      break;
    }

    v22 = sub_1D139162C();
    sub_1D10EBA84(v8, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
    if (v22)
    {
      goto LABEL_18;
    }

LABEL_4:
    v17 = (v17 + 1) & v18;
    if (((*(v33 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  sub_1D10EBA84(v8, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
LABEL_18:
  sub_1D10EBA84(v31, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
  sub_1D10EBA1C(*(v34 + 48) + v19 * v17, v32, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
  return 0;
}

uint64_t sub_1D10E4484(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1D138ED5C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1D10EBC74(&qword_1EC60A930, MEMORY[0x1E69A3910]);
  v33 = a2;
  v11 = sub_1D139006C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1D10EBC74(&qword_1EC60A938, MEMORY[0x1E69A3910]);
      v21 = sub_1D139011C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1D10E7380(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1D10E4764(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1D138D75C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1D10EBC74(&qword_1EC60A9C0, MEMORY[0x1E6969AD0]);
  v33 = a2;
  v11 = sub_1D139006C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1D10EBC74(&qword_1EC60A9C8, MEMORY[0x1E6969AD0]);
      v21 = sub_1D139011C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1D10E764C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1D10E4A44(void *a1, void *a2)
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

    v9 = sub_1D13910EC();

    if (v9)
    {

      sub_1D106F934(0, &qword_1EC609A00);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1D13910DC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1D10E5F78(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1D1102388(v20 + 1);
    }

    v18 = v8;
    sub_1D1105074();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1D106F934(0, &qword_1EC609A00);
  v11 = sub_1D1390D7C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1D10E7918(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1D1390D8C();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1D10E4C7C(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1D139176C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1D10E7AC8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D10E4D5C(void *a1, void *a2)
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

    v9 = sub_1D13910EC();

    if (v9)
    {

      sub_1D106F934(0, &qword_1EE06B780);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1D13910DC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1D10E6178(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1D11025D0(v20 + 1);
    }

    v18 = v8;
    sub_1D1105074();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1D106F934(0, &qword_1EE06B780);
  v11 = sub_1D1390D7C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1D10E7BE8(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1D1390D8C();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1D10E4F94(void *a1, void *a2)
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

    v9 = sub_1D13910EC();

    if (v9)
    {

      sub_1D106F934(0, &qword_1EC60A9A8);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1D13910DC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1D10E6378(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1D11025E8(v20 + 1);
    }

    v18 = v8;
    sub_1D1105074();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1D106F934(0, &qword_1EC60A9A8);
  v11 = sub_1D1390D7C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1D10E7D98(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1D1390D8C();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1D10E51CC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    sub_1D139177C();
    BrowseCategory.rawValue.getter();
    sub_1D139027C();

    sub_1D1390D9C();
    v10 = sub_1D13917CC();
    v11 = -1 << *(v6 + 32);
    v12 = v10 & ~v11;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
LABEL_20:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = *v2;

      sub_1D10E7F48(v22, v12, isUniquelyReferenced_nonNull_native);
      *v2 = v27;
      *a1 = a2;
      return 1;
    }

    v13 = ~v11;
    while (1)
    {

      v14 = BrowseCategory.rawValue.getter();
      v16 = v15;
      if (v14 == BrowseCategory.rawValue.getter() && v16 == v17)
      {
      }

      else
      {
        v19 = sub_1D139162C();

        if ((v19 & 1) == 0)
        {

          goto LABEL_10;
        }
      }

      sub_1D106F934(0, &qword_1EE06B0C0);
      v20 = sub_1D1390D8C();

      if (v20)
      {

        *a1 = *(*(v6 + 48) + 8 * v12);

        return 0;
      }

LABEL_10:
      v12 = (v12 + 1) & v13;
      if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  if (v6 < 0)
  {
    v7 = *v2;
  }

  else
  {
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  v8 = sub_1D13910EC();

  if (v8)
  {

    type metadata accessor for CategoryRecordQueryDescription();
    swift_dynamicCast();
    result = 0;
    *a1 = v26;
    return result;
  }

  result = sub_1D13910DC();
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v23 = sub_1D10E6578(v7, result + 1);
  if (*(v23 + 24) <= *(v23 + 16))
  {
    sub_1D1102600();
  }

  sub_1D11032F0(v24, v23);

  *v3 = v23;
  *a1 = a2;
  return 1;
}

uint64_t sub_1D10E5504(void *a1, void *a2)
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

    v9 = sub_1D13910EC();

    if (v9)
    {

      sub_1D106F934(0, &qword_1EE06A630);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1D13910DC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1D10E67B4(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1D1102890(v20 + 1);
    }

    v18 = v8;
    sub_1D1105074();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1D106F934(0, &qword_1EE06A630);
  v11 = sub_1D1390D7C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1D10E81C4(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1D1390D8C();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1D10E573C(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v4 = type metadata accessor for BrowseCategory();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v27 = &v26 - v9;
  v28 = v2;
  v10 = *v2;
  sub_1D139177C();
  v30 = a2;
  BrowseCategory.rawValue.getter();
  sub_1D139027C();

  v11 = sub_1D13917CC();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v5 + 72);
    while (1)
    {
      sub_1D10EBA1C(*(v10 + 48) + v15 * v13, v8, type metadata accessor for BrowseCategory);
      v16 = BrowseCategory.rawValue.getter();
      v18 = v17;
      if (v16 == BrowseCategory.rawValue.getter() && v18 == v19)
      {
        break;
      }

      v20 = sub_1D139162C();

      sub_1D10EBA84(v8, type metadata accessor for BrowseCategory);
      if (v20)
      {
        goto LABEL_9;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    sub_1D10EBA84(v8, type metadata accessor for BrowseCategory);
LABEL_9:
    sub_1D10EBA84(v30, type metadata accessor for BrowseCategory);
    sub_1D10EBA1C(*(v10 + 48) + v15 * v13, v29, type metadata accessor for BrowseCategory);
    return 0;
  }

  else
  {
LABEL_7:
    v21 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v30;
    v24 = v27;
    sub_1D10EBA1C(v30, v27, type metadata accessor for BrowseCategory);
    v31 = *v21;
    sub_1D10E8374(v24, v13, isUniquelyReferenced_nonNull_native);
    *v21 = v31;
    sub_1D10EBAE4(v23, v29, type metadata accessor for BrowseCategory);
    return 1;
  }
}

uint64_t sub_1D10E5A28(void *a1, void *a2)
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

    v9 = sub_1D13910EC();

    if (v9)
    {

      sub_1D106F934(0, &qword_1EE06B6C0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1D13910DC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1D10E69B4(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1D1102BC0(v20 + 1);
    }

    v18 = v8;
    sub_1D1105074();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1D106F934(0, &qword_1EE06B6C0);
  v11 = sub_1D1390D7C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1D10E8680(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1D1390D8C();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1D10E5C60(uint64_t a1, void *a2)
{
  v21 = a1;
  v4 = type metadata accessor for UserDomainConceptViewData();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = v2;
  v8 = *v2;
  sub_1D139177C();
  UserDomainConceptViewData.hash(into:)();
  v9 = sub_1D13917CC();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v5 + 72);
    while (1)
    {
      sub_1D10EBA1C(*(v8 + 48) + v13 * v11, v7, type metadata accessor for UserDomainConceptViewData);
      v14 = _s15HealthRecordsUI25UserDomainConceptViewDataV2eeoiySbAC_ACtFZ_0(v7, a2);
      sub_1D10EBA84(v7, type metadata accessor for UserDomainConceptViewData);
      if (v14)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D10EBA84(a2, type metadata accessor for UserDomainConceptViewData);
    sub_1D10EBA1C(*(v8 + 48) + v13 * v11, v21, type metadata accessor for UserDomainConceptViewData);
    return 0;
  }

  else
  {
LABEL_5:
    v15 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D10EBA1C(a2, v7, type metadata accessor for UserDomainConceptViewData);
    v22 = *v15;
    sub_1D10E8830(v7, v11, isUniquelyReferenced_nonNull_native);
    v17 = v21;
    *v15 = v22;
    sub_1D10EBAE4(a2, v17, type metadata accessor for UserDomainConceptViewData);
    return 1;
  }
}

uint64_t sub_1D10E5E80(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1D139177C();
  MEMORY[0x1D38870E0](a2);
  v6 = sub_1D13917CC();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1D10E8AAC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D10E5F78(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D10EB8FC(0, &qword_1EC60A948, &qword_1EC609A00, 0x1E69A3F00, &qword_1EC60A950);
    v2 = sub_1D139119C();
    v15 = v2;
    sub_1D139108C();
    if (sub_1D139110C())
    {
      sub_1D106F934(0, &qword_1EC609A00);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1D1102388(v9 + 1);
        }

        v2 = v15;
        result = sub_1D1390D7C();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1D139110C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D10E6178(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D10EB8FC(0, &qword_1EE069520, &qword_1EE06B780, 0x1E696C3D0, &qword_1EE06B778);
    v2 = sub_1D139119C();
    v15 = v2;
    sub_1D139108C();
    if (sub_1D139110C())
    {
      sub_1D106F934(0, &qword_1EE06B780);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1D11025D0(v9 + 1);
        }

        v2 = v15;
        result = sub_1D1390D7C();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1D139110C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D10E6378(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D10EB8FC(0, &qword_1EC60A9B0, &qword_1EC60A9A8, 0x1E696BFD8, &qword_1EC60A9B8);
    v2 = sub_1D139119C();
    v15 = v2;
    sub_1D139108C();
    if (sub_1D139110C())
    {
      sub_1D106F934(0, &qword_1EC60A9A8);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1D11025E8(v9 + 1);
        }

        v2 = v15;
        result = sub_1D1390D7C();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1D139110C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D10E6578(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D10EBBE0();
    v2 = sub_1D139119C();
    v15 = v2;
    sub_1D139108C();
    if (sub_1D139110C())
    {
      type metadata accessor for CategoryRecordQueryDescription();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1D1102600();
        }

        v2 = v15;
        sub_1D139177C();
        BrowseCategory.rawValue.getter();
        sub_1D139027C();

        v3 = *(v14 + OBJC_IVAR____TtC15HealthRecordsUI30CategoryRecordQueryDescription_queryDescriptor);
        sub_1D1390D9C();

        result = sub_1D13917CC();
        v5 = v15 + 56;
        v6 = -1 << *(v15 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v8 == v11;
            if (v8 == v11)
            {
              v8 = 0;
            }

            v10 |= v12;
            v13 = *(v5 + 8 * v8);
          }

          while (v13 == -1);
          v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v15 + 48) + 8 * v9) = v14;
        ++*(v15 + 16);
      }

      while (sub_1D139110C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D10E67B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D10EB8FC(0, &qword_1EE06A508, &qword_1EE06A630, 0x1E696C388, &qword_1EE06A628);
    v2 = sub_1D139119C();
    v15 = v2;
    sub_1D139108C();
    if (sub_1D139110C())
    {
      sub_1D106F934(0, &qword_1EE06A630);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1D1102890(v9 + 1);
        }

        v2 = v15;
        result = sub_1D1390D7C();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1D139110C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D10E69B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D10EB8FC(0, &qword_1EC60A980, &qword_1EE06B6C0, 0x1E696AD98, &qword_1EE06B0C8);
    v2 = sub_1D139119C();
    v15 = v2;
    sub_1D139108C();
    if (sub_1D139110C())
    {
      sub_1D106F934(0, &qword_1EE06B6C0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1D1102BC0(v9 + 1);
        }

        v2 = v15;
        result = sub_1D1390D7C();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1D139110C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D10E6BB4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1D1101314();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1D10E8BF8();
      goto LABEL_16;
    }

    sub_1D10E98CC();
  }

  v10 = *v4;
  sub_1D139177C();
  sub_1D139027C();
  result = sub_1D13917CC();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1D139162C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1D13916BC();
  __break(1u);
  return result;
}

uint64_t sub_1D10E6D34(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_27;
  }

  if (a3)
  {
    sub_1D1101580();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1D10E8D60();
      goto LABEL_27;
    }

    sub_1D10E9B10();
  }

  v8 = *v3;
  sub_1D139177C();
  v9 = *v5;
  v10 = *(v5 + 2);
  v11 = *(v5 + 3);
  MEMORY[0x1D38870E0](*v5);
  sub_1D1390D9C();
  v32 = v11;
  sub_1D139179C();
  if (v11)
  {
    sub_1D139027C();
  }

  v13 = *(v5 + 6);
  v12 = *(v5 + 7);
  *&v30 = *(v5 + 5);
  *(&v30 + 1) = *(v5 + 4);
  sub_1D139027C();
  v29 = v13;
  sub_1D123F520(&v34, v13);
  v28 = v12;
  sub_1D123F520(&v34, v12);
  sub_1D1390D9C();
  result = sub_1D13917CC();
  v14 = -1 << *(v8 + 32);
  a2 = result & ~v14;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    while (1)
    {
      v16 = *(v8 + 48) + 72 * a2;
      v34 = *v16;
      v18 = *(v16 + 32);
      v17 = *(v16 + 48);
      v19 = *(v16 + 64);
      v35 = *(v16 + 16);
      v36 = v18;
      v38 = v19;
      v37 = v17;
      if (v34 != v9)
      {
        goto LABEL_14;
      }

      sub_1D106F934(0, &qword_1EE06B0C0);
      sub_1D1082914(&v34, v33);
      if ((sub_1D1390D8C() & 1) == 0)
      {
        break;
      }

      if (*(&v35 + 1))
      {
        if (!v32 || v35 != __PAIR128__(v32, v10) && (sub_1D139162C() & 1) == 0)
        {
          break;
        }
      }

      else if (v32)
      {
        break;
      }

      if (__PAIR128__(v36, *(&v36 + 1)) != v30 && (sub_1D139162C() & 1) == 0 || (sub_1D1335054(v37, v29) & 1) == 0 || (sub_1D1335054(*(&v37 + 1), v28) & 1) == 0)
      {
        break;
      }

      v20 = sub_1D1390D8C();
      result = sub_1D1080D98(&v34);
      if (v20)
      {
        result = sub_1D13916BC();
        __break(1u);
        goto LABEL_27;
      }

LABEL_14:
      a2 = (a2 + 1) & v15;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    result = sub_1D1080D98(&v34);
    goto LABEL_14;
  }

LABEL_27:
  v21 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v22 = *(v21 + 48) + 72 * a2;
  *(v22 + 64) = *(v5 + 8);
  v23 = *(v5 + 3);
  *(v22 + 32) = *(v5 + 2);
  *(v22 + 48) = v23;
  v24 = *(v5 + 1);
  *v22 = *v5;
  *(v22 + 16) = v24;
  v25 = *(v21 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v27;
  }

  return result;
}

uint64_t sub_1D10E7068(void *a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v35 = v3;
  v36 = a1;
  v34 = v8;
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v33 = v9;
      sub_1D11019E0();
    }

    else
    {
      if (v13 > v12)
      {
        sub_1D10E9570(type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem, sub_1D10EB740, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
        goto LABEL_23;
      }

      v33 = v9;
      sub_1D10E9F08();
    }

    v14 = *v3;
    sub_1D139177C();
    v15 = a1[2];
    v16 = a1[3];
    sub_1D139027C();
    v18 = *a1;
    v17 = a1[1];
    sub_1D139027C();
    v19 = sub_1D13917CC();
    v20 = v14 + 56;
    v37 = v14;
    v21 = -1 << *(v14 + 32);
    a2 = v19 & ~v21;
    if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v22 = ~v21;
      v23 = *(v8 + 72);
      do
      {
        sub_1D10EBA1C(*(v37 + 48) + v23 * a2, v11, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
        v24 = v11[2] == v15 && v11[3] == v16;
        if (v24 || (sub_1D139162C() & 1) != 0)
        {
          if (*v11 == v18 && v11[1] == v17)
          {
            goto LABEL_26;
          }

          v26 = sub_1D139162C();
          sub_1D10EBA84(v11, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
          if (v26)
          {
            goto LABEL_27;
          }
        }

        else
        {
          sub_1D10EBA84(v11, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
        }

        a2 = (a2 + 1) & v22;
      }

      while (((*(v20 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_23:
  v27 = v36;
  v28 = *v35;
  *(*v35 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D10EBAE4(v27, *(v28 + 48) + *(v34 + 72) * a2, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
  v30 = *(v28 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (v31)
  {
    __break(1u);
LABEL_26:
    sub_1D10EBA84(v11, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
LABEL_27:
    result = sub_1D13916BC();
    __break(1u);
  }

  else
  {
    *(v28 + 16) = v32;
  }

  return result;
}

uint64_t sub_1D10E7380(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1D138ED5C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D1101CE8();
  }

  else
  {
    if (v11 > v10)
    {
      sub_1D10E8F34(MEMORY[0x1E69A3910], sub_1D10EB65C);
      goto LABEL_12;
    }

    sub_1D10EA1E0();
  }

  v12 = *v3;
  sub_1D10EBC74(&qword_1EC60A930, MEMORY[0x1E69A3910]);
  v13 = sub_1D139006C();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1D10EBC74(&qword_1EC60A938, MEMORY[0x1E69A3910]);
      v21 = sub_1D139011C();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D13916BC();
  __break(1u);
  return result;
}

uint64_t sub_1D10E764C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1D138D75C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D1102038();
  }

  else
  {
    if (v12 > v11)
    {
      sub_1D10E8F34(MEMORY[0x1E6969AD0], sub_1D10EBCBC);
      goto LABEL_12;
    }

    sub_1D10EA4F0();
  }

  v13 = *v3;
  sub_1D10EBC74(&qword_1EC60A9C0, MEMORY[0x1E6969AD0]);
  v14 = sub_1D139006C();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1D10EBC74(&qword_1EC60A9C8, MEMORY[0x1E6969AD0]);
      v22 = sub_1D139011C();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D13916BC();
  __break(1u);
  return result;
}

void sub_1D10E7918(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D1102388(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1D10E92D8(&qword_1EC60A948, &qword_1EC609A00, 0x1E69A3F00, &qword_1EC60A950);
      goto LABEL_12;
    }

    sub_1D10EA9FC(v6 + 1, &qword_1EC60A948, &qword_1EC609A00, 0x1E69A3F00, &qword_1EC60A950);
  }

  v8 = *v3;
  v9 = sub_1D1390D7C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1D106F934(0, &qword_1EC609A00);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1D1390D8C();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1D13916BC();
  __break(1u);
}

uint64_t sub_1D10E7AC8(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D11023A0();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1D10E918C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1D10EA800();
  }

  v8 = *v3;
  result = sub_1D139176C();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D13916BC();
  __break(1u);
  return result;
}

void sub_1D10E7BE8(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D11025D0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1D10E92D8(&qword_1EE069520, &qword_1EE06B780, 0x1E696C3D0, &qword_1EE06B778);
      goto LABEL_12;
    }

    sub_1D10EA9FC(v6 + 1, &qword_1EE069520, &qword_1EE06B780, 0x1E696C3D0, &qword_1EE06B778);
  }

  v8 = *v3;
  v9 = sub_1D1390D7C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1D106F934(0, &qword_1EE06B780);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1D1390D8C();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1D13916BC();
  __break(1u);
}

void sub_1D10E7D98(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D11025E8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1D10E92D8(&qword_1EC60A9B0, &qword_1EC60A9A8, 0x1E696BFD8, &qword_1EC60A9B8);
      goto LABEL_12;
    }

    sub_1D10EA9FC(v6 + 1, &qword_1EC60A9B0, &qword_1EC60A9A8, 0x1E696BFD8, &qword_1EC60A9B8);
  }

  v8 = *v3;
  v9 = sub_1D1390D7C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1D106F934(0, &qword_1EC60A9A8);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1D1390D8C();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1D13916BC();
  __break(1u);
}

uint64_t sub_1D10E7F48(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a3)
  {
    sub_1D1102600();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1D10E942C();
      goto LABEL_21;
    }

    sub_1D10EAC04();
  }

  v8 = *v3;
  sub_1D139177C();
  BrowseCategory.rawValue.getter();
  sub_1D139027C();

  v9 = *(v5 + OBJC_IVAR____TtC15HealthRecordsUI30CategoryRecordQueryDescription_queryDescriptor);
  sub_1D1390D9C();

  result = sub_1D13917CC();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for CategoryRecordQueryDescription();
    do
    {

      v12 = BrowseCategory.rawValue.getter();
      v14 = v13;
      if (v12 == BrowseCategory.rawValue.getter() && v14 == v15)
      {
      }

      else
      {
        v17 = sub_1D139162C();

        if ((v17 & 1) == 0)
        {

          goto LABEL_11;
        }
      }

      sub_1D106F934(0, &qword_1EE06B0C0);
      v18 = sub_1D1390D8C();

      if (v18)
      {
        result = sub_1D13916BC();
        __break(1u);
        break;
      }

LABEL_11:
      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_21:
  v19 = *v23;
  *(*v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v5;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v22;
  }

  return result;
}

void sub_1D10E81C4(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D1102890(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1D10E92D8(&qword_1EE06A508, &qword_1EE06A630, 0x1E696C388, &qword_1EE06A628);
      goto LABEL_12;
    }

    sub_1D10EA9FC(v6 + 1, &qword_1EE06A508, &qword_1EE06A630, 0x1E696C388, &qword_1EE06A628);
  }

  v8 = *v3;
  v9 = sub_1D1390D7C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1D106F934(0, &qword_1EE06A630);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1D1390D8C();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1D13916BC();
  __break(1u);
}

uint64_t sub_1D10E8374(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for BrowseCategory();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v8;
  v31 = v3;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_14;
  }

  if (a3)
  {
    v29 = v9;
    sub_1D11028A8();
  }

  else
  {
    if (v13 > v12)
    {
      sub_1D10E9570(type metadata accessor for BrowseCategory, sub_1D10EBB4C, type metadata accessor for BrowseCategory);
      goto LABEL_14;
    }

    v29 = v9;
    sub_1D10EAE6C();
  }

  v14 = *v3;
  sub_1D139177C();
  BrowseCategory.rawValue.getter();
  sub_1D139027C();

  v15 = sub_1D13917CC();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v18 = *(v8 + 72);
    do
    {
      sub_1D10EBA1C(*(v14 + 48) + v18 * a2, v11, type metadata accessor for BrowseCategory);
      v19 = BrowseCategory.rawValue.getter();
      v21 = v20;
      if (v19 == BrowseCategory.rawValue.getter() && v21 == v22)
      {
        goto LABEL_17;
      }

      v23 = sub_1D139162C();

      sub_1D10EBA84(v11, type metadata accessor for BrowseCategory);
      if (v23)
      {
        goto LABEL_18;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_14:
  v24 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D10EBAE4(a1, *(v24 + 48) + *(v30 + 72) * a2, type metadata accessor for BrowseCategory);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_17:

  sub_1D10EBA84(v11, type metadata accessor for BrowseCategory);
LABEL_18:
  result = sub_1D13916BC();
  __break(1u);
  return result;
}

void sub_1D10E8680(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D1102BC0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1D10E92D8(&qword_1EC60A980, &qword_1EE06B6C0, 0x1E696AD98, &qword_1EE06B0C8);
      goto LABEL_12;
    }

    sub_1D10EA9FC(v6 + 1, &qword_1EC60A980, &qword_1EE06B6C0, 0x1E696AD98, &qword_1EE06B0C8);
  }

  v8 = *v3;
  v9 = sub_1D1390D7C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1D106F934(0, &qword_1EE06B6C0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1D1390D8C();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1D13916BC();
  __break(1u);
}

uint64_t sub_1D10E8830(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UserDomainConceptViewData();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  v28 = v9;
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v27 = v10;
    sub_1D1102DF8();
  }

  else
  {
    if (v14 > v13)
    {
      sub_1D10E9570(type metadata accessor for UserDomainConceptViewData, sub_1D10EB988, type metadata accessor for UserDomainConceptViewData);
      goto LABEL_12;
    }

    v27 = v10;
    sub_1D10EB154();
  }

  v15 = *v4;
  sub_1D139177C();
  UserDomainConceptViewData.hash(into:)();
  v16 = sub_1D13917CC();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_1D10EBA1C(*(v15 + 48) + v19 * a2, v12, type metadata accessor for UserDomainConceptViewData);
      v20 = _s15HealthRecordsUI25UserDomainConceptViewDataV2eeoiySbAC_ACtFZ_0(v12, a1);
      sub_1D10EBA84(v12, type metadata accessor for UserDomainConceptViewData);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D10EBAE4(a1, *(v21 + 48) + *(v28 + 72) * a2, type metadata accessor for UserDomainConceptViewData);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D13916BC();
  __break(1u);
  return result;
}

uint64_t sub_1D10E8AAC(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D1103088();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1D10E9774();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1D10EB3B0();
  }

  v8 = *v3;
  sub_1D139177C();
  MEMORY[0x1D38870E0](v4);
  result = sub_1D13917CC();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D13916BC();
  __break(1u);
  return result;
}

void *sub_1D10E8BF8()
{
  v1 = v0;
  sub_1D10EB6F0(0, &qword_1EC60A928);
  v2 = *v0;
  v3 = sub_1D139117C();
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

void *sub_1D10E8D60()
{
  v1 = v0;
  sub_1D10EB89C(0, &qword_1EC60A960, sub_1D109D220);
  v2 = *v0;
  v3 = sub_1D139117C();
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
        v17 = 72 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = v18[1];
        v19 = v18[2];
        v21 = v18[3];
        v24 = *(v18 + 8);
        v23[3] = v21;
        v23[0] = *v18;
        v23[1] = v20;
        v23[2] = v19;
        memmove((*(v4 + 48) + v17), v18, 0x48uLL);
        result = sub_1D1082914(v23, v22);
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

void *sub_1D10E8F34(uint64_t (*a1)(void), void (*a2)(void))
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  a2(0);
  v9 = *v2;
  v10 = sub_1D139117C();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v4;
    result = (v10 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 56 + 8 * v13)
    {
      result = memmove(result, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v26 = v6 + 32;
    for (i = v6 + 16; v18; result = (*(v6 + 32))(*(v11 + 48) + v23, v8, v5))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v23 = *(v6 + 72) * (v20 | (v15 << 6));
      (*(v6 + 16))(v8, *(v9 + 48) + v23, v5);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v4 = v25;
        goto LABEL_21;
      }

      v22 = *(v9 + 56 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v11;
  }

  return result;
}

void *sub_1D10E918C()
{
  v1 = v0;
  sub_1D10EB6F0(0, &qword_1EC60A958);
  v2 = *v0;
  v3 = sub_1D139117C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

id sub_1D10E92D8(unint64_t *a1, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v5 = v4;
  sub_1D10EB8FC(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_1D139117C();
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

void *sub_1D10E942C()
{
  v1 = v0;
  sub_1D10EBBE0();
  v2 = *v0;
  v3 = sub_1D139117C();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void *sub_1D10E9570(uint64_t (*a1)(void), void (*a2)(void), uint64_t (*a3)(void))
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v27 - v9;
  a2(0);
  v11 = *v3;
  v12 = sub_1D139117C();
  v13 = v12;
  if (*(v11 + 16))
  {
    v28 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = *(v11 + 56);
    v20 = -1;
    if (v18 < 64)
    {
      v20 = ~(-1 << v18);
    }

    v21 = v20 & v19;
    v22 = (v18 + 63) >> 6;
    if ((v20 & v19) != 0)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
LABEL_17:
        v26 = *(v8 + 72) * (v23 | (v17 << 6));
        sub_1D10EBA1C(*(v11 + 48) + v26, v10, a3);
        result = sub_1D10EBAE4(v10, *(v13 + 48) + v26, a3);
      }

      while (v21);
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v11 + 56 + 8 * v17);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

void *sub_1D10E9774()
{
  v1 = v0;
  sub_1D10EB89C(0, &qword_1EC60A978, sub_1D109F238);
  v2 = *v0;
  v3 = sub_1D139117C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_1D10E98CC()
{
  v1 = v0;
  v2 = *v0;
  sub_1D10EB6F0(0, &qword_1EC60A928);
  result = sub_1D139118C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1D139177C();

      sub_1D139027C();
      result = sub_1D13917CC();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_1D10E9B10()
{
  v1 = v0;
  v2 = *v0;
  sub_1D10EB89C(0, &qword_1EC60A960, sub_1D109D220);
  result = sub_1D139118C();
  v4 = result;
  if (!*(v2 + 16))
  {

LABEL_41:
    *v1 = v4;
    return result;
  }

  v38 = v0;
  v39 = v2;
  v5 = 0;
  v6 = v2 + 56;
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  while (v9)
  {
    v16 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_14:
    v19 = *(v2 + 48) + 72 * (v16 | (v5 << 6));
    v21 = *(v19 + 32);
    v20 = *(v19 + 48);
    v22 = *(v19 + 16);
    v45 = *(v19 + 64);
    v43 = v21;
    v44 = v20;
    v41 = *v19;
    v42 = v22;
    sub_1D139177C();
    v23 = *(&v42 + 1);
    MEMORY[0x1D38870E0](v41);
    sub_1D1082914(&v41, v40);
    sub_1D1390D9C();
    sub_1D139179C();
    if (v23)
    {
      sub_1D139027C();
    }

    v24 = v44;
    sub_1D139027C();
    if (v24 >> 62)
    {
      v36 = sub_1D13910DC();
      MEMORY[0x1D38870E0](v36);
      result = sub_1D13910DC();
      v25 = result;
      if (!result)
      {
        goto LABEL_25;
      }
    }

    else
    {
      result = MEMORY[0x1D38870E0](*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10));
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v25)
      {
        goto LABEL_25;
      }
    }

    if (v25 < 1)
    {
      goto LABEL_43;
    }

    if ((v24 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v25; ++i)
      {
        MEMORY[0x1D3886B70](i, v24);
        sub_1D1390D9C();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v27 = (v24 + 32);
      do
      {
        v28 = *v27++;
        v29 = v28;
        sub_1D1390D9C();

        --v25;
      }

      while (v25);
    }

LABEL_25:
    v30 = *(&v44 + 1);
    if (*(&v44 + 1) >> 62)
    {
      v37 = sub_1D13910DC();
      MEMORY[0x1D38870E0](v37);
      result = sub_1D13910DC();
      v31 = result;
      if (!result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      result = MEMORY[0x1D38870E0](*((*(&v44 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10));
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v31)
      {
        goto LABEL_6;
      }
    }

    if (v31 < 1)
    {
      goto LABEL_44;
    }

    if ((v30 & 0xC000000000000001) != 0)
    {
      for (j = 0; j != v31; ++j)
      {
        MEMORY[0x1D3886B70](j, v30);
        sub_1D1390D9C();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v33 = (v30 + 32);
      do
      {
        v34 = *v33++;
        v35 = v34;
        sub_1D1390D9C();

        --v31;
      }

      while (v31);
    }

LABEL_6:
    sub_1D1390D9C();
    sub_1D13917CC();
    result = sub_1D139106C();
    *(v11 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v12 = *(v4 + 48) + 72 * result;
    *v12 = v41;
    v13 = v42;
    v14 = v43;
    v15 = v44;
    *(v12 + 64) = v45;
    *(v12 + 32) = v14;
    *(v12 + 48) = v15;
    *(v12 + 16) = v13;
    ++*(v4 + 16);
    v2 = v39;
  }

  v17 = v5;
  while (1)
  {
    v5 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v5 >= v10)
    {

      v1 = v38;
      goto LABEL_41;
    }

    v18 = *(v6 + 8 * v5);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v9 = (v18 - 1) & v18;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_1D10E9F08()
{
  v1 = v0;
  v2 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem();
  v28 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1D10EB740();
  result = sub_1D139118C();
  v7 = result;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v28 + 72);
      sub_1D10EBA1C(*(v5 + 48) + v18 * (v15 | (v8 << 6)), v4, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
      sub_1D139177C();
      sub_1D139027C();
      sub_1D139027C();
      result = sub_1D13917CC();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = sub_1D10EBAE4(v4, *(v7 + 48) + v14 * v18, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1D10EA1E0()
{
  v1 = v0;
  v32 = sub_1D138ED5C();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1D10EB65C();
  v6 = sub_1D139118C();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
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
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1D10EBC74(&qword_1EC60A930, MEMORY[0x1E69A3910]);
      result = sub_1D139006C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}