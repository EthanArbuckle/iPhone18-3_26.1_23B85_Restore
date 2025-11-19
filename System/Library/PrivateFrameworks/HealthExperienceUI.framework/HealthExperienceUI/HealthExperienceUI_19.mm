uint64_t sub_1BA1019C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_animationConfiguration;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *v3;
  *(a2 + 8) = *(v3 + 8);
  *(a2 + 24) = v4;
}

uint64_t sub_1BA101A2C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *a2 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_animationConfiguration;
  swift_beginAccess();
  *v6 = v3;
  *(v6 + 8) = v2;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
}

uint64_t sub_1BA101AB0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_animationConfiguration;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
}

uint64_t sub_1BA101B18(__int128 *a1)
{
  v6 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  v4 = v1 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_animationConfiguration;
  swift_beginAccess();
  *v4 = v6;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
}

uint64_t StandardSnidgetCurrentValueDataView.ViewModel.__allocating_init(supratitleString:primaryString:subtitleString:animationConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = swift_allocObject();
  v18 = *a4;
  v17 = *(a4 + 2);
  v16 = *(a4 + 24);
  v9 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_supratitleString;
  v10 = sub_1BA4A12C8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v8 + v9, 1, 1, v10);
  v13 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_subtitleString;
  v12(v8 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_subtitleString, 1, 1, v10);
  v14 = v8 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_animationConfiguration;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *v14 = 0;
  *(v14 + 24) = 0;
  swift_beginAccess();
  sub_1B9F426D0(a1, v8 + v9);
  swift_endAccess();
  (*(v11 + 32))(v8 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_primaryString, a2, v10);
  swift_beginAccess();
  sub_1B9F426D0(a3, v8 + v13);
  swift_endAccess();
  swift_beginAccess();
  *v14 = v18;
  *(v14 + 16) = v17;
  *(v14 + 24) = v16;

  return v8;
}

uint64_t StandardSnidgetCurrentValueDataView.ViewModel.init(supratitleString:primaryString:subtitleString:animationConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v17 = *a4;
  v16 = *(a4 + 2);
  v15 = *(a4 + 24);
  v8 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_supratitleString;
  v9 = sub_1BA4A12C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v4 + v8, 1, 1, v9);
  v12 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_subtitleString;
  v11(v4 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_subtitleString, 1, 1, v9);
  v13 = v4 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_animationConfiguration;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *v13 = 0;
  swift_beginAccess();
  sub_1B9F426D0(a1, v4 + v8);
  swift_endAccess();
  (*(v10 + 32))(v4 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_primaryString, a2, v9);
  swift_beginAccess();
  sub_1B9F426D0(a3, v4 + v12);
  swift_endAccess();
  swift_beginAccess();
  *v13 = v17;
  *(v13 + 16) = v16;
  *(v13 + 24) = v15;

  return v4;
}

uint64_t StandardSnidgetCurrentValueDataView.ViewModel.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  StandardSnidgetCurrentValueDataView.ViewModel.init(from:)(a1);
  return v2;
}

uint64_t sub_1BA101FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BA103098(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BA101FE0(uint64_t a1)
{
  v2 = sub_1B9F4372C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA10201C(uint64_t a1)
{
  v2 = sub_1B9F4372C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StandardSnidgetCurrentValueDataView.ViewModel.deinit()
{
  v1 = MEMORY[0x1E6968848];
  v2 = MEMORY[0x1E69E6720];
  sub_1BA103284(v0 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_supratitleString, &unk_1EDC6E290, MEMORY[0x1E6968848], MEMORY[0x1E69E6720], sub_1B9F47BAC);
  v3 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_primaryString;
  v4 = sub_1BA4A12C8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1BA103284(v0 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_subtitleString, &unk_1EDC6E290, v1, v2, sub_1B9F47BAC);

  return v0;
}

uint64_t StandardSnidgetCurrentValueDataView.ViewModel.__deallocating_deinit()
{
  v1 = MEMORY[0x1E6968848];
  v2 = MEMORY[0x1E69E6720];
  sub_1BA103284(v0 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_supratitleString, &unk_1EDC6E290, MEMORY[0x1E6968848], MEMORY[0x1E69E6720], sub_1B9F47BAC);
  v3 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_primaryString;
  v4 = sub_1BA4A12C8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1BA103284(v0 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_subtitleString, &unk_1EDC6E290, v1, v2, sub_1B9F47BAC);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA1022A4(void *a1)
{
  v2 = v1;
  v4 = sub_1BA4A12C8();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E6968848];
  sub_1B9F47BAC(0, &unk_1EDC6E290, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v31 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  sub_1B9F436C8(0, &qword_1EDC5DCF0, MEMORY[0x1E69E6F58]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B9F4372C();
  sub_1BA4A8548();
  v17 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_supratitleString;
  swift_beginAccess();
  v32 = v2;
  sub_1B9F5CC44(v2 + v17, v11, &unk_1EDC6E290, v6);
  LOBYTE(v37) = 0;
  sub_1B9F4D13C(&qword_1EDC6AEB8, MEMORY[0x1E6968848]);
  v18 = v13;
  v19 = v36;
  v20 = v35;
  sub_1BA4A8238();
  if (v19)
  {
    sub_1BA103284(v11, &unk_1EDC6E290, MEMORY[0x1E6968848], MEMORY[0x1E69E6720], sub_1B9F47BAC);
    return (*(v14 + 8))(v16, v18);
  }

  else
  {
    v36 = v14;
    sub_1BA103284(v11, &unk_1EDC6E290, MEMORY[0x1E6968848], MEMORY[0x1E69E6720], sub_1B9F47BAC);
    v22 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_primaryString;
    v23 = v32;
    swift_beginAccess();
    (*(v34 + 16))(v33, v23 + v22, v20);
    LOBYTE(v37) = 1;
    sub_1BA4A8288();
    (*(v34 + 8))(v33, v20);
    v24 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_subtitleString;
    swift_beginAccess();
    v25 = v23 + v24;
    v26 = v31;
    sub_1B9F5CC44(v25, v31, &unk_1EDC6E290, MEMORY[0x1E6968848]);
    LOBYTE(v37) = 2;
    sub_1BA4A8238();
    v27 = v36;
    sub_1BA103284(v26, &unk_1EDC6E290, MEMORY[0x1E6968848], MEMORY[0x1E69E6720], sub_1B9F47BAC);
    v28 = (v23 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_animationConfiguration);
    swift_beginAccess();
    v29 = *(v28 + 24);
    v37 = *v28;
    v38 = *(v28 + 1);
    v39 = v29;
    v40 = 3;
    sub_1BA102B04();

    sub_1BA4A8238();

    return (*(v27 + 8))(0, v18);
  }
}

uint64_t StandardSnidgetCurrentValueDataView.viewModel.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t StandardSnidgetCurrentValueDataView.$viewModel.getter()
{
  type metadata accessor for StandardSnidgetCurrentValueDataView.ViewModel();
  sub_1B9F4D13C(&qword_1EDC61320, type metadata accessor for StandardSnidgetCurrentValueDataView.ViewModel);

  return sub_1BA4A5358();
}

uint64_t StandardSnidgetCurrentValueDataView.previousViewModel.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t StandardSnidgetCurrentValueDataView.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  type metadata accessor for StandardSnidgetCurrentValueDataView.ViewModel();
  sub_1B9F4D13C(&qword_1EDC61320, type metadata accessor for StandardSnidgetCurrentValueDataView.ViewModel);

  *a2 = sub_1BA4A5348();
  *(a2 + 8) = v4;

  *(a2 + 16) = v3;
  return result;
}

uint64_t StandardSnidgetCurrentValueDataView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v6 = *v1;
  v7[0] = v3;
  *(v7 + 9) = *(v1 + 25);
  *a1 = sub_1BA4A5878();
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  sub_1B9F5B6F4();
  return sub_1B9F5B79C(&v6, a1 + *(v4 + 44));
}

uint64_t sub_1BA102AF4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1BA102B04()
{
  result = qword_1EDC63468;
  if (!qword_1EDC63468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC63468);
  }

  return result;
}

uint64_t keypath_get_2Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return sub_1B9F5CC44(v4 + v5, a3, &unk_1EDC6E290, MEMORY[0x1E6968848]);
}

uint64_t sub_1BA102BE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1BA102C30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BA102EC0()
{
  result = qword_1EBBEBF10;
  if (!qword_1EBBEBF10)
  {
    sub_1B9F5305C();
    sub_1B9F4D13C(&qword_1EDC5EBF0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBF10);
  }

  return result;
}

unint64_t sub_1BA102F70()
{
  result = qword_1EDC5E978;
  if (!qword_1EDC5E978)
  {
    sub_1B9F47BAC(255, &qword_1EDC5E970, sub_1B9F528CC, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E978);
  }

  return result;
}

unint64_t sub_1BA103044()
{
  result = qword_1EBBEBF18;
  if (!qword_1EBBEBF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBF18);
  }

  return result;
}

uint64_t sub_1BA103098(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001BA4EAEC0 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x537972616D697270 && a2 == 0xED0000676E697274 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xEE00676E69727453 || (sub_1BA4A8338() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001BA4EAEF0 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_1BA4A8338();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1BA10321C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA103284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1BA1032E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA10334C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MutableArrayDataSourceWithLayout.init(arrangedSections:collapseEmptySections:layoutConstructor:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1B9F1DAFC(a1, a2, a3, a4);

  return v4;
}

uint64_t MutableArrayDataSourceWithLayout.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1BA1034CC()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI32MutableArrayDataSourceWithLayout_layoutSectionProvider);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BA103524(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI32MutableArrayDataSourceWithLayout_layoutSectionProvider);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id (*sub_1BA1035E4())(uint64_t a1, uint64_t a2)
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v4 = sub_1BA4A3E88();
  v5 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = sub_1BA4A85D8();
    v10 = sub_1B9F0B82C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1B9F07000, v4, v5, "[%s]: layoutConstructor is deprecated and will not behave correctly with context-dependent layout providers", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1BFAF43A0](v7, -1, -1);
    MEMORY[0x1BFAF43A0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  swift_allocObject();
  swift_weakInit();
  return sub_1BA1047C8;
}

uint64_t sub_1BA1037F0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v2;
  v6[5] = v5;
  v7 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI32MutableArrayDataSourceWithLayout_layoutSectionProvider);
  swift_beginAccess();
  *v7 = sub_1BA1047D0;
  v7[1] = v6;
}

void (*sub_1BA1038BC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  *(v3 + 72) = *v1;
  sub_1BA1035E4();
  *(v4 + 48) = sub_1BA1047C8;
  *(v4 + 56) = v5;
  return sub_1BA10396C;
}

void sub_1BA10396C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  v5 = *(*a1 + 64);
  v6 = *(*a1 + 72);
  if (a2)
  {
    v7 = swift_allocObject();
    v7[2] = v3;
    v7[3] = v4;
    v7[4] = v5;
    v7[5] = v6;
    v8 = (v5 + OBJC_IVAR____TtC18HealthExperienceUI32MutableArrayDataSourceWithLayout_layoutSectionProvider);
    swift_beginAccess();
    *v8 = sub_1BA104B60;
    v8[1] = v7;
  }

  else
  {
    v9 = swift_allocObject();
    v9[2] = v3;
    v9[3] = v4;
    v9[4] = v5;
    v9[5] = v6;
    v10 = (v5 + OBJC_IVAR____TtC18HealthExperienceUI32MutableArrayDataSourceWithLayout_layoutSectionProvider);
    swift_beginAccess();
    *v10 = sub_1BA104B60;
    v10[1] = v9;
  }

  free(v2);
}

uint64_t sub_1BA103AA8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI32MutableArrayDataSourceWithLayout_collapseEmptySections;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1BA103AEC(char a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI32MutableArrayDataSourceWithLayout_collapseEmptySections;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1BA103B9C(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI32MutableArrayDataSourceWithLayout_layoutSectionProvider);
  swift_beginAccess();
  v4 = *v3;
  v8 = v7;
  v9 = v2;

  v5 = v4(&v8);

  return v5;
}

uint64_t MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:sectionLayout:)(uint64_t a1, int a2, uint64_t a3)
{
  v30 = sub_1BA4A1798();
  v7 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v24 = a3;
    v25 = a2;
    v26 = v3;
    v31 = MEMORY[0x1E69E7CC0];
    sub_1B9F277B0(0, v9, 0);
    v10 = v31;
    v27 = (v7 + 8);
    v28 = a1;
    v11 = 32;
    do
    {
      v12 = *(a1 + v11);

      v13 = v29;
      sub_1BA4A1788();
      v14 = sub_1BA4A1748();
      v16 = v15;
      (*v27)(v13, v30);

      v18 = Array<A>.identifierToIndexDict()(v17);

      v31 = v10;
      v20 = *(v10 + 16);
      v19 = *(v10 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1B9F277B0((v19 > 1), v20 + 1, 1);
        v10 = v31;
      }

      *(v10 + 16) = v20 + 1;
      v21 = (v10 + 48 * v20);
      v21[4] = 0;
      v21[5] = 0;
      v21[6] = v12;
      v21[7] = v18;
      v21[8] = v14;
      v21[9] = v16;
      v11 += 8;
      --v9;
      a1 = v28;
    }

    while (v9);

    v3 = v26;
    LOBYTE(a2) = v25;
    a3 = v24;
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  return (*(v3 + 560))(v10, a2 & 1, sub_1BA104830, v22);
}

uint64_t sub_1BA103E74@<X0>(void *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18HealthExperienceUI32MutableArrayDataSourceWithLayout_layoutSectionProvider);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1BA104B2C;
  a2[1] = v6;
}

uint64_t sub_1BA103F00(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI32MutableArrayDataSourceWithLayout_layoutSectionProvider);
  swift_beginAccess();
  *v6 = sub_1BA104AF4;
  v6[1] = v5;
}

uint64_t sub_1BA103F9C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  return sub_1BA1037F0(sub_1BA104A78, v3);
}

id sub_1BA10400C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = (Strong + OBJC_IVAR____TtC18HealthExperienceUI32MutableArrayDataSourceWithLayout_layoutSectionProvider);
    swift_beginAccess();
    v6 = *v5;

    *&v10 = a1;
    *(&v10 + 1) = a2;
    *&v11 = sub_1BA1BA9D0(a1);
    swift_unknownObjectRetain();
    v7 = v6(&v10);

    swift_unknownObjectRelease();
    return v7;
  }

  else
  {
    if (qword_1EDC6D2F0 != -1)
    {
      swift_once();
    }

    v18[4] = xmmword_1EDC6D338;
    v18[5] = unk_1EDC6D348;
    v18[6] = xmmword_1EDC6D358;
    v18[7] = unk_1EDC6D368;
    v18[0] = xmmword_1EDC6D2F8;
    v18[1] = *&qword_1EDC6D308;
    v18[2] = xmmword_1EDC6D318;
    v18[3] = unk_1EDC6D328;
    sub_1BA0117AC();
    v14 = xmmword_1EDC6D338;
    v15 = unk_1EDC6D348;
    v16 = xmmword_1EDC6D358;
    v17 = unk_1EDC6D368;
    v10 = xmmword_1EDC6D2F8;
    v11 = *&qword_1EDC6D308;
    v12 = xmmword_1EDC6D318;
    v13 = unk_1EDC6D328;
    sub_1B9F1D9A4(v18, v9);
    return sub_1B9F293A8(&v10);
  }
}

uint64_t sub_1BA1041C4(void *a1, uint64_t (*a2)(void, void))
{
  result = a2(*a1, a1[1]);
  if (!result)
  {
    sub_1BA4A7DF8();

    v3 = sub_1BA4A85D8();
    MEMORY[0x1BFAF1350](v3);

    MEMORY[0x1BFAF1350](0xD00000000000002ALL, 0x80000001BA4EB020);
    type metadata accessor for MutableArrayDataSourceWithLayout();

    v4 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v4);

    sub_1B9FF806C();
    swift_allocError();
    *v5 = 91;
    *(v5 + 8) = 0xE100000000000000;
    *(v5 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t MutableArrayDataSourceWithLayout.__allocating_init(arrangedSections:collapseEmptySections:sectionLayout:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  v8 = *(v3 + 560);

  return v8(a1, a2, sub_1BA104B78, v7);
}

id sub_1BA104394(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!a3)
  {
    if (qword_1EDC6D268 != -1)
    {
      swift_once();
    }

    v9[4] = xmmword_1EDC6D2B0;
    v9[5] = unk_1EDC6D2C0;
    v9[6] = xmmword_1EDC6D2D0;
    v9[7] = unk_1EDC6D2E0;
    v9[0] = xmmword_1EDC6D270;
    v9[1] = *&qword_1EDC6D280;
    v9[2] = xmmword_1EDC6D290;
    v9[3] = *&qword_1EDC6D2A0;
    sub_1BA0117AC();
    v8[4] = xmmword_1EDC6D2B0;
    v8[5] = unk_1EDC6D2C0;
    v8[6] = xmmword_1EDC6D2D0;
    v8[7] = unk_1EDC6D2E0;
    v8[0] = xmmword_1EDC6D270;
    v8[1] = *&qword_1EDC6D280;
    v8[2] = xmmword_1EDC6D290;
    v8[3] = *&qword_1EDC6D2A0;
    sub_1B9F1D9A4(v9, &v7);
    v4 = sub_1B9F293A8(v8);
  }

  v5 = a3;
  return v4;
}

uint64_t MutableArrayDataSourceWithLayout.init(arrangedSections:collapseEmptySections:layoutSectionProvider:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1B9F2E074(a1, a2, a3, a4);

  return v4;
}

uint64_t MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutSectionProvider:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v33 = sub_1BA4A1798();
  v9 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (v11)
  {
    v26 = a2;
    v27 = a3;
    v28 = a4;
    v29 = v4;
    v34 = MEMORY[0x1E69E7CC0];
    sub_1B9F277B0(0, v11, 0);
    v12 = v34;
    v30 = (v9 + 8);
    v31 = a1;
    v13 = 32;
    do
    {
      v14 = *(a1 + v13);

      v15 = v32;
      sub_1BA4A1788();
      v16 = sub_1BA4A1748();
      v18 = v17;
      (*v30)(v15, v33);

      v20 = Array<A>.identifierToIndexDict()(v19);

      v34 = v12;
      v22 = *(v12 + 16);
      v21 = *(v12 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1B9F277B0((v21 > 1), v22 + 1, 1);
        v12 = v34;
      }

      *(v12 + 16) = v22 + 1;
      v23 = (v12 + 48 * v22);
      v23[4] = 0;
      v23[5] = 0;
      v23[6] = v14;
      v23[7] = v20;
      v23[8] = v16;
      v23[9] = v18;
      v13 += 8;
      --v11;
      a1 = v31;
    }

    while (v11);

    a4 = v28;
    v4 = v29;
    a3 = v27;
    LOBYTE(a2) = v26;
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  return (*(v4 + 584))(v12, a2 & 1, a3, a4);
}

uint64_t MutableArrayDataSourceWithLayout.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BA104A78(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6 = a2;
  v7 = a1;
  v3(&v5, &v7, &v6);
  return v5;
}

uint64_t sub_1BA104ABC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(v3 + 16))(*a1, *a2);
  *a3 = result;
  return result;
}

void *sub_1BA104AF4()
{
  result = (*(v0 + 16))(&v3);
  if (!v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1BA104B2C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_1BA104B8C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_contentView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
  sub_1BA104BF4(v5);
}

void sub_1BA104BF4(void *a1)
{
  if (!a1)
  {
    goto LABEL_49;
  }

  v3 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_centeredConstraints];
  v112[4] = *&v1[OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_sharedConstraints];
  v112[5] = v3;
  v98 = v1;
  v112[6] = *&v1[OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_scrollingConstraints];

  v96 = a1;

  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
LABEL_3:
  if (v4 <= 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = v4;
  }

  while (v4 != 3)
  {
    if (v6 == v4)
    {
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
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      return;
    }

    v7 = v112[v4++ + 4];
    if (v7)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1BA27FE28(0, v5[2] + 1, 1, v5);
      }

      v9 = v5[2];
      v8 = v5[3];
      if (v9 >= v8 >> 1)
      {
        v5 = sub_1BA27FE28((v8 > 1), v9 + 1, 1, v5);
      }

      v5[2] = v9 + 1;
      v5[v9 + 4] = v7;
      goto LABEL_3;
    }
  }

  sub_1BA10667C(0, &qword_1EBBEBF48, sub_1BA106648, MEMORY[0x1E69E6720]);
  swift_arrayDestroy();
  v10 = v5[2];
  if (!v10)
  {
    goto LABEL_48;
  }

  v11 = 0;
  v106 = v5 + 4;
  v12 = MEMORY[0x1E69E7CC0];
  v100 = v5[2];
  v102 = v5;
  while (1)
  {
    if (v11 >= v5[2])
    {
      goto LABEL_95;
    }

    v13 = v106[v11];
    v14 = v13 >> 62;
    v15 = v13 >> 62 ? sub_1BA4A7CC8() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = v12 >> 62;
    if (v12 >> 62)
    {
      break;
    }

    v17 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = v17 + v15;
    if (__OFADD__(v17, v15))
    {
      goto LABEL_47;
    }

LABEL_23:

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v16)
      {
        v19 = v12 & 0xFFFFFFFFFFFFFF8;
        v110 = v12;
        if (v18 <= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }

LABEL_28:
      sub_1BA4A7CC8();
      goto LABEL_29;
    }

    if (v16)
    {
      goto LABEL_28;
    }

LABEL_29:
    v110 = sub_1BA4A7E38();
    v19 = v110 & 0xFFFFFFFFFFFFFF8;
LABEL_30:
    v20 = *(v19 + 16);
    v21 = *(v19 + 24);
    if (v14)
    {
      v23 = v19;
      v24 = sub_1BA4A7CC8();
      v19 = v23;
      v22 = v24;
      if (!v24)
      {
LABEL_16:

        if (v15 > 0)
        {
          goto LABEL_96;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v22 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v22)
      {
        goto LABEL_16;
      }
    }

    if (((v21 >> 1) - v20) < v15)
    {
      goto LABEL_99;
    }

    v108 = v11;
    v25 = v19 + 8 * v20 + 32;
    v104 = v19;
    if (v14)
    {
      if (v22 < 1)
      {
        goto LABEL_103;
      }

      sub_1BA106648(0);
      sub_1BA1066E0();
      for (i = 0; i != v22; ++i)
      {
        v27 = sub_1BA0CA818(v113, i, v13);
        v29 = *v28;
        (v27)(v113, 0);
        *(v25 + 8 * i) = v29;
      }

      v10 = v100;
      v5 = v102;
    }

    else
    {
      sub_1B9F740B0();
      swift_arrayInitWithCopy();
    }

    v11 = v108;
    if (v15 > 0)
    {
      v30 = *(v104 + 16);
      v31 = __OFADD__(v30, v15);
      v32 = v30 + v15;
      if (v31)
      {
        goto LABEL_101;
      }

      *(v104 + 16) = v32;
    }

LABEL_17:
    ++v11;
    v12 = v110;
    if (v11 == v10)
    {
      goto LABEL_48;
    }
  }

  v33 = sub_1BA4A7CC8();
  v18 = v33 + v15;
  if (!__OFADD__(v33, v15))
  {
    goto LABEL_23;
  }

LABEL_47:
  __break(1u);
LABEL_48:

  v34 = objc_opt_self();
  sub_1B9F740B0();
  v35 = sub_1BA4A6AE8();

  [v34 deactivateConstraints_];

  [v96 removeFromSuperview];
  v1 = v98;
LABEL_49:
  v36 = OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_contentView;
  swift_beginAccess();
  v37 = *&v1[v36];
  if (v37)
  {
    v38 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView__internalContentView];
    v39 = v37;
    [v38 addSubview_];
    sub_1B9F109F8();
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1BA4B7510;
    v41 = v1;
    v42 = [v39 leadingAnchor];
    v43 = [v38 leadingAnchor];
    v44 = [v42 constraintEqualToAnchor_];

    *(v40 + 32) = v44;
    v45 = [v39 trailingAnchor];
    v46 = [v38 trailingAnchor];
    v47 = [v45 &selRef:v46 numberWithInteger:? + 5];

    *(v40 + 40) = v47;
    v48 = OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_sharedConstraints;
    *&v41[OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_sharedConstraints] = v40;

    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1BA4B7510;
    v50 = [v39 topAnchor];
    v51 = [v38 topAnchor];
    v52 = [v50 &selRef:v51 numberWithInteger:? + 5];

    *(v49 + 32) = v52;
    v53 = [v38 bottomAnchor];
    v54 = [v39 bottomAnchor];
    v55 = [v53 constraintGreaterThanOrEqualToAnchor_];

    *(v49 + 40) = v55;
    v56 = OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_scrollingConstraints;
    *&v41[OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_scrollingConstraints] = v49;

    v57 = [v38 heightAnchor];
    v58 = [v41 heightAnchor];
    v59 = [v57 constraintEqualToAnchor_];

    LODWORD(v60) = 1132068864;
    [v59 setPriority_];
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1BA4B7510;
    *(v61 + 32) = v59;
    v97 = v59;
    v99 = v39;
    v62 = [v39 centerYAnchor];
    v63 = [v38 centerYAnchor];
    v64 = [v62 constraintEqualToAnchor_];

    *(v61 + 40) = v64;
    *&v41[OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_centeredConstraints] = v61;

    v65 = *&v41[v56];
    v114 = *&v41[v48];
    v115 = v65;

    v66 = 0;
    v67 = MEMORY[0x1E69E7CC0];
    while (v66 != 2)
    {
      v68 = *&v113[8 * v66++ + 64];
      if (v68)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = sub_1BA27FE28(0, v67[2] + 1, 1, v67);
        }

        v70 = v67[2];
        v69 = v67[3];
        if (v70 >= v69 >> 1)
        {
          v67 = sub_1BA27FE28((v69 > 1), v70 + 1, 1, v67);
        }

        v67[2] = v70 + 1;
        v67[v70 + 4] = v68;
      }
    }

    sub_1BA10667C(0, &qword_1EBBEBF48, sub_1BA106648, MEMORY[0x1E69E6720]);
    swift_arrayDestroy();
    v71 = v67[2];
    if (!v71)
    {
LABEL_92:

      v94 = objc_opt_self();
      sub_1B9F740B0();
      v95 = sub_1BA4A6AE8();

      [v94 activateConstraints_];

      return;
    }

    v72 = 0;
    v107 = v67 + 4;
    v73 = MEMORY[0x1E69E7CC0];
    v101 = v67[2];
    v103 = v67;
    while (2)
    {
      if (v72 >= v67[2])
      {
        goto LABEL_97;
      }

      v74 = v107[v72];
      v75 = v74 >> 62;
      if (v74 >> 62)
      {
        v76 = sub_1BA4A7CC8();
      }

      else
      {
        v76 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v77 = v73 >> 62;
      if (v73 >> 62)
      {
        v93 = sub_1BA4A7CC8();
        v79 = v93 + v76;
        if (__OFADD__(v93, v76))
        {
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }
      }

      else
      {
        v78 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v79 = v78 + v76;
        if (__OFADD__(v78, v76))
        {
          goto LABEL_91;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v77)
        {
          v80 = v73 & 0xFFFFFFFFFFFFFF8;
          v111 = v73;
          if (v79 > *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_73:
            v111 = sub_1BA4A7E38();
            v80 = v111 & 0xFFFFFFFFFFFFFF8;
          }

          v81 = *(v80 + 16);
          v82 = *(v80 + 24);
          if (v75)
          {
            v84 = v80;
            v85 = sub_1BA4A7CC8();
            v80 = v84;
            v83 = v85;
            if (v85)
            {
              goto LABEL_78;
            }

LABEL_60:

            if (v76 > 0)
            {
              goto LABEL_98;
            }
          }

          else
          {
            v83 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v83)
            {
              goto LABEL_60;
            }

LABEL_78:
            if (((v82 >> 1) - v81) < v76)
            {
              goto LABEL_100;
            }

            v109 = v72;
            v86 = v80 + 8 * v81 + 32;
            v105 = v80;
            if (v75)
            {
              if (v83 < 1)
              {
                goto LABEL_104;
              }

              sub_1BA106648(0);
              sub_1BA1066E0();
              for (j = 0; j != v83; ++j)
              {
                v88 = sub_1BA0CA818(v113, j, v74);
                v90 = *v89;
                (v88)(v113, 0);
                *(v86 + 8 * j) = v90;
              }

              v71 = v101;
              v67 = v103;
            }

            else
            {
              sub_1B9F740B0();
              swift_arrayInitWithCopy();
            }

            v72 = v109;
            if (v76 > 0)
            {
              v91 = *(v105 + 16);
              v31 = __OFADD__(v91, v76);
              v92 = v91 + v76;
              if (v31)
              {
                goto LABEL_102;
              }

              *(v105 + 16) = v92;
            }
          }

          ++v72;
          v73 = v111;
          if (v72 == v71)
          {
            goto LABEL_92;
          }

          continue;
        }
      }

      else if (!v77)
      {
        goto LABEL_73;
      }

      break;
    }

    sub_1BA4A7CC8();
    goto LABEL_73;
  }
}

void *sub_1BA1057A4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_contentView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA1057F0(void *a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_contentView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_1BA104BF4(v4);
}

void (*sub_1BA10585C(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_contentView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1BA1058F8;
}

void sub_1BA1058F8(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v8 = *(v7 + v6);
  *(v7 + v6) = *v5;
  v9 = v4;
  v10 = v9;
  if (a2)
  {
    v11 = v9;
    sub_1BA104BF4(v8);

    v8 = *v5;
  }

  else
  {
    sub_1BA104BF4(v8);
  }

  free(v3);
}

char *sub_1BA105994(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_contentView] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_centeredConstraints] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_scrollingConstraints] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_sharedConstraints] = 0;
  v9 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView__internalContentView] = v9;
  v35.receiver = v4;
  v35.super_class = type metadata accessor for VerticallyCenteredContentScrollView();
  v10 = objc_msgSendSuper2(&v35, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView__internalContentView;
  v12 = *&v10[OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView__internalContentView];
  v13 = v10;
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v14 = *&v10[v11];
  v15 = v13;
  [v15 addSubview_];
  v16 = objc_opt_self();
  sub_1B9F109F8();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BA4B5880;
  v18 = [*&v10[v11] topAnchor];
  v19 = [v15 topAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v17 + 32) = v20;
  v21 = [*&v10[v11] leadingAnchor];
  v22 = [v15 leadingAnchor];

  v23 = [v21 constraintEqualToAnchor_];
  *(v17 + 40) = v23;
  v24 = [*&v10[v11] trailingAnchor];
  v25 = [v15 trailingAnchor];

  v26 = [v24 constraintEqualToAnchor_];
  *(v17 + 48) = v26;
  v27 = [*&v10[v11] widthAnchor];
  v28 = [v15 widthAnchor];

  v29 = [v27 constraintEqualToAnchor_];
  *(v17 + 56) = v29;
  v30 = [*&v10[v11] bottomAnchor];
  v31 = [v15 bottomAnchor];

  v32 = [v30 constraintEqualToAnchor_];
  *(v17 + 64) = v32;
  sub_1B9F740B0();
  v33 = sub_1BA4A6AE8();

  [v16 activateConstraints_];

  return v15;
}

void sub_1BA105DC8()
{
  v1 = v0;
  v51.receiver = v0;
  v51.super_class = type metadata accessor for VerticallyCenteredContentScrollView();
  objc_msgSendSuper2(&v51, sel_layoutSubviews);
  v2 = OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_contentView;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = v3;
    [v0 bounds];
    v6 = v5;
    [v4 frame];
    v8 = v7;
    if (v7 >= v6)
    {
      v9 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_centeredConstraints);
      v10 = MEMORY[0x1E69E7CC0];
      if (v9)
      {
        v47 = MEMORY[0x1E69E7CC0];
        if (v9 >> 62)
        {
          v11 = sub_1BA4A7CC8();
        }

        else
        {
          v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v11)
        {
          v39 = v4;
          v43 = v1;
          v12 = 0;
          v1 = &selRef_createHKUnitPreferenceController;
          while (1)
          {
            if ((v9 & 0xC000000000000001) != 0)
            {
              v13 = MEMORY[0x1BFAF2860](v12, v9);
            }

            else
            {
              if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_43;
              }

              v13 = *(v9 + 8 * v12 + 32);
            }

            v14 = v13;
            v4 = (v12 + 1);
            if (__OFADD__(v12, 1))
            {
              break;
            }

            if ([v13 isActive])
            {
              sub_1BA4A7ED8();
              sub_1BA4A7F18();
              sub_1BA4A7F28();
              sub_1BA4A7EE8();
            }

            else
            {
            }

            ++v12;
            if (v4 == v11)
            {
              v1 = v43;
              v10 = v47;
              v4 = v39;
              goto LABEL_32;
            }
          }

          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

LABEL_32:
      }

      if (!(v10 >> 62))
      {
        if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_46:

LABEL_47:
          v25 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_scrollingConstraints);
          v26 = MEMORY[0x1E69E7CC0];
          if (v25)
          {
            v49 = MEMORY[0x1E69E7CC0];
            if (v25 >> 62)
            {
              v27 = sub_1BA4A7CC8();
            }

            else
            {
              v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v27)
            {
              v41 = v4;
              v45 = v1;
              v28 = 0;
              v1 = &selRef_createHKUnitPreferenceController;
              while (1)
              {
                if ((v25 & 0xC000000000000001) != 0)
                {
                  v29 = MEMORY[0x1BFAF2860](v28, v25);
                }

                else
                {
                  if (v28 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_67;
                  }

                  v29 = *(v25 + 8 * v28 + 32);
                }

                v30 = v29;
                v4 = (v28 + 1);
                if (__OFADD__(v28, 1))
                {
                  break;
                }

                if ([v29 isActive])
                {
                }

                else
                {
                  sub_1BA4A7ED8();
                  sub_1BA4A7F18();
                  sub_1BA4A7F28();
                  sub_1BA4A7EE8();
                }

                ++v28;
                if (v4 == v27)
                {
                  v1 = v45;
                  v26 = v49;
                  v4 = v41;
                  goto LABEL_62;
                }
              }

              __break(1u);
LABEL_67:
              __break(1u);
              goto LABEL_68;
            }

LABEL_62:
          }

          if (v26 >> 62)
          {
            goto LABEL_91;
          }

          if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_88;
          }

          goto LABEL_94;
        }

LABEL_35:
        v21 = objc_opt_self();
        sub_1B9F740B0();
        v22 = sub_1BA4A6AE8();

        [v21 deactivateConstraints_];

        goto LABEL_47;
      }

LABEL_45:
      if (!sub_1BA4A7CC8())
      {
        goto LABEL_46;
      }

      goto LABEL_35;
    }

    v15 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_scrollingConstraints);
    v16 = MEMORY[0x1E69E7CC0];
    if (v15)
    {
      v48 = MEMORY[0x1E69E7CC0];
      if (v15 >> 62)
      {
        v17 = sub_1BA4A7CC8();
      }

      else
      {
        v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v17)
      {
        v40 = v4;
        v44 = v1;
        v18 = 0;
        v1 = &selRef_createHKUnitPreferenceController;
        while (1)
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x1BFAF2860](v18, v15);
          }

          else
          {
            if (v18 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_44;
            }

            v19 = *(v15 + 8 * v18 + 32);
          }

          v20 = v19;
          v4 = (v18 + 1);
          if (__OFADD__(v18, 1))
          {
            goto LABEL_42;
          }

          if ([v19 isActive])
          {
            sub_1BA4A7ED8();
            sub_1BA4A7F18();
            sub_1BA4A7F28();
            sub_1BA4A7EE8();
          }

          else
          {
          }

          ++v18;
          if (v4 == v17)
          {
            v1 = v44;
            v16 = v48;
            v4 = v40;
            break;
          }
        }
      }
    }

    if (!(v16 >> 62))
    {
      if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_69:

        goto LABEL_70;
      }

LABEL_40:
      v23 = objc_opt_self();
      sub_1B9F740B0();
      v24 = sub_1BA4A6AE8();

      [v23 deactivateConstraints_];

LABEL_70:
      v31 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI35VerticallyCenteredContentScrollView_centeredConstraints);
      v32 = MEMORY[0x1E69E7CC0];
      if (v31)
      {
        v50 = MEMORY[0x1E69E7CC0];
        if (v31 >> 62)
        {
          v33 = sub_1BA4A7CC8();
        }

        else
        {
          v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v33)
        {
          v42 = v4;
          v46 = v1;
          v34 = 0;
          v1 = &selRef_createHKUnitPreferenceController;
          while (1)
          {
            if ((v31 & 0xC000000000000001) != 0)
            {
              v35 = MEMORY[0x1BFAF2860](v34, v31);
            }

            else
            {
              if (v34 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_90;
              }

              v35 = *(v31 + 8 * v34 + 32);
            }

            v36 = v35;
            v4 = (v34 + 1);
            if (__OFADD__(v34, 1))
            {
              break;
            }

            if ([v35 isActive])
            {
            }

            else
            {
              sub_1BA4A7ED8();
              sub_1BA4A7F18();
              sub_1BA4A7F28();
              sub_1BA4A7EE8();
            }

            ++v34;
            if (v4 == v33)
            {
              v1 = v46;
              v32 = v50;
              v4 = v42;
              goto LABEL_85;
            }
          }

          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          if (!sub_1BA4A7CC8())
          {
            goto LABEL_94;
          }

LABEL_88:
          v37 = objc_opt_self();
          sub_1B9F740B0();
          v38 = sub_1BA4A6AE8();

          [v37 activateConstraints_];

LABEL_95:
          [v1 setShowsVerticalScrollIndicator_];

          return;
        }

LABEL_85:
      }

      if (v32 >> 62)
      {
        if (sub_1BA4A7CC8())
        {
          goto LABEL_88;
        }
      }

      else if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_88;
      }

LABEL_94:

      goto LABEL_95;
    }

LABEL_68:
    if (!sub_1BA4A7CC8())
    {
      goto LABEL_69;
    }

    goto LABEL_40;
  }
}

id VerticallyCenteredContentScrollView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VerticallyCenteredContentScrollView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA10667C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BA1066E0()
{
  result = qword_1EBBE9A30;
  if (!qword_1EBBE9A30)
  {
    sub_1BA106648(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE9A30);
  }

  return result;
}

uint64_t DataType.uniqueIdentifier.getter()
{
  v0 = sub_1BA4A2508();
  if (!v0)
  {
    return 7104878;
  }

  v1 = v0;
  v2 = [v0 identifier];

  v3 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  return v3;
}

uint64_t DataType.reuseIdentifier.getter()
{
  type metadata accessor for ContentConfigurationCollectionViewListCell();
  sub_1BA1067EC();
  return sub_1BA4A6808();
}

unint64_t sub_1BA1067EC()
{
  result = qword_1EDC601D0;
  if (!qword_1EDC601D0)
  {
    type metadata accessor for ContentConfigurationCollectionViewListCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EDC601D0);
  }

  return result;
}

unint64_t sub_1BA106838()
{
  result = qword_1EBBEBF50;
  if (!qword_1EBBEBF50)
  {
    sub_1BA4A2558();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBF50);
  }

  return result;
}

uint64_t sub_1BA106890()
{
  type metadata accessor for ContentConfigurationCollectionViewListCell();
  sub_1BA1067EC();
  return sub_1BA4A6808();
}

uint64_t sub_1BA1068CC()
{
  v0 = sub_1BA4A2508();
  if (!v0)
  {
    return 7104878;
  }

  v1 = v0;
  v2 = [v0 identifier];

  v3 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  return v3;
}

uint64_t sub_1BA106948(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

void sub_1BA106A08()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for InternalFeedItemDataPropertyViewController();
  objc_msgSendSuper2(&v16, sel_viewDidLoad);
  v1 = sub_1BA4A6758();
  [v0 setTitle_];

  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v4 systemBackgroundColor];
  [v3 setBackgroundColor_];

  v6 = [objc_allocWithZone(MEMORY[0x1E69DD168]) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = [v4 clearColor];
  [v6 setBackgroundColor_];

  v8 = [v4 labelColor];
  [v6 setTextColor_];

  [v6 setBounces_];
  sub_1BA106DA4(*&v0[OBJC_IVAR____TtC18HealthExperienceUI42InternalFeedItemDataPropertyViewController_data], *&v0[OBJC_IVAR____TtC18HealthExperienceUI42InternalFeedItemDataPropertyViewController_data + 8]);
  v9 = sub_1BA4A6758();

  [v6 setText_];

  v10 = [objc_opt_self() preferredFontForTextStyle_];
  [v6 setFont_];

  [v6 setEditable_];
  v11 = [v0 view];
  if (!v11)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v12 = v11;
  [v11 addSubview_];

  v13 = [v0 view];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 layoutMarginsGuide];

    [v6 hk:v15 alignConstraintsWithGuide:?];
    return;
  }

LABEL_7:
  __break(1u);
}

id sub_1BA106D38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InternalFeedItemDataPropertyViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA106DA4(uint64_t a1, unint64_t a2)
{
  v24[4] = *MEMORY[0x1E69E9840];
  v4 = sub_1BA4A67F8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  if (a2 >> 60 == 15)
  {
    return 0x3E6C696E3CLL;
  }

  v6 = objc_opt_self();
  sub_1B9F206D4(a1, a2);
  v7 = sub_1BA4A15F8();
  v23 = 0;
  v8 = [v6 JSONObjectWithData:v7 options:0 error:&v23];

  v9 = v23;
  if (!v8)
  {
    v19 = v9;
    v20 = sub_1BA4A1488();

    swift_willThrow();
LABEL_10:
    sub_1B9F206D4(a1, a2);
    v22 = sub_1BA4A15E8();
    sub_1B9F6AC8C(a1, a2);
    sub_1B9F6AC8C(a1, a2);

    return v22;
  }

  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  v10 = sub_1BA4A8328();
  v23 = 0;
  v11 = [v6 dataWithJSONObject:v10 options:1 error:&v23];
  swift_unknownObjectRelease();
  v12 = v23;
  if (!v11)
  {
    v21 = v12;
    v20 = sub_1BA4A1488();

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v24);
    goto LABEL_10;
  }

  v13 = sub_1BA4A1608();
  v15 = v14;

  sub_1BA4A67E8();
  v16 = sub_1BA4A67A8();
  v18 = v17;
  sub_1B9F2BB4C(v13, v15);
  __swift_destroy_boxed_opaque_existential_1(v24);
  if (!v18)
  {
    sub_1B9F206D4(a1, a2);
    v16 = sub_1BA4A15E8();
    sub_1B9F6AC8C(a1, a2);
  }

  sub_1B9F6AC8C(a1, a2);
  return v16;
}

uint64_t sub_1BA1071B4(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1B9F47ECC(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA107220()
{
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue + 8))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue);
  }
}

uint64_t sub_1BA107240(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue;
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

uint64_t (*sub_1BA107258(void *a1))()
{
  v2 = OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue;
  a1[1] = v1;
  a1[2] = v2;
  v3 = (v1 + v2);
  v4 = *(v3 + 8);
  v5 = *v3;
  if (v4)
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_1BA10A470;
}

uint64_t sub_1BA10729C()
{
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue + 8))
  {
    return 0;
  }

  else
  {
    return *(v0 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue);
  }
}

uint64_t sub_1BA1072BC(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue;
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

void *(*sub_1BA1072D4(void *a1))(void *result)
{
  v2 = OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue;
  a1[1] = v1;
  a1[2] = v2;
  v3 = (v1 + v2);
  v4 = *(v3 + 8);
  v5 = *v3;
  if (v4)
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_1BA107318;
}

void *sub_1BA107318(void *result)
{
  v1 = result[1] + result[2];
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

void sub_1BA107330(void *a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue + 8))
  {
    *a1 = 0;
  }

  else
  {
    *a1 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue);
  }
}

void *sub_1BA107360(void *result)
{
  v2 = v1 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue;
  *v2 = *result;
  *(v2 + 8) = 0;
  return result;
}

uint64_t (*sub_1BA10737C(void *a1))()
{
  v2 = OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue;
  a1[1] = v1;
  a1[2] = v2;
  v3 = (v1 + v2);
  if (v3[1])
  {
    v4 = 0;
  }

  else
  {
    v4 = *v3;
  }

  *a1 = v4;
  return sub_1BA10A470;
}

id ChartContext.__allocating_init(date:preferredOverlay:trendActive:chartOptions:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5)
{
  v29 = a2;
  v30 = a4;
  v28 = a3;
  v27 = a1;
  v7 = MEMORY[0x1E6968130];
  sub_1B9F47ECC(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = MEMORY[0x1E6969530];
  sub_1B9F47ECC(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v25 - v13;
  v26 = *a5;
  sub_1BA1071B4(a1, &v25 - v13, &qword_1EDC6E440, v11);
  v15 = sub_1BA4A0FA8();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = type metadata accessor for ChartContext();
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue];
  *v18 = 0;
  v18[8] = 1;
  v19 = &v17[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue];
  *v19 = 0;
  v19[8] = 1;
  v20 = &v17[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue];
  *v20 = 0;
  v20[8] = 1;
  sub_1BA1071B4(v14, &v17[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_date], &qword_1EDC6E440, v11);
  sub_1BA1071B4(v10, &v17[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_dateInterval], &qword_1EDC6E2A0, v7);
  v21 = v28 & 1;
  v22 = v29;
  if (v28)
  {
    v22 = 0;
  }

  *v18 = v22;
  v18[8] = v21;
  *v19 = v30;
  v19[8] = 0;
  *v20 = v26;
  v20[8] = 0;
  v31.receiver = v17;
  v31.super_class = v16;
  v23 = objc_msgSendSuper2(&v31, sel_init);
  sub_1BA108FEC(v27, &qword_1EDC6E440, v11);
  sub_1BA108FEC(v10, &qword_1EDC6E2A0, v7);
  sub_1BA108FEC(v14, &qword_1EDC6E440, v11);
  return v23;
}

id ChartContext.__allocating_init(dateInterval:preferredOverlay:trendActive:chartOptions:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5)
{
  v29 = a2;
  v30 = a4;
  v28 = a3;
  v26 = a1;
  v7 = MEMORY[0x1E6968130];
  sub_1B9F47ECC(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = MEMORY[0x1E6969530];
  sub_1B9F47ECC(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v25 - v13;
  v27 = *a5;
  v15 = sub_1BA4A1728();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_1BA1071B4(a1, v10, &qword_1EDC6E2A0, v7);
  v16 = type metadata accessor for ChartContext();
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue];
  *v18 = 0;
  v18[8] = 1;
  v19 = &v17[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue];
  *v19 = 0;
  v19[8] = 1;
  v20 = &v17[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue];
  *v20 = 0;
  v20[8] = 1;
  sub_1BA1071B4(v14, &v17[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_date], &qword_1EDC6E440, v11);
  sub_1BA1071B4(v10, &v17[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_dateInterval], &qword_1EDC6E2A0, v7);
  v21 = v28 & 1;
  v22 = v29;
  if (v28)
  {
    v22 = 0;
  }

  *v18 = v22;
  v18[8] = v21;
  *v19 = v30;
  v19[8] = 0;
  *v20 = v27;
  v20[8] = 0;
  v31.receiver = v17;
  v31.super_class = v16;
  v23 = objc_msgSendSuper2(&v31, sel_init);
  sub_1BA108FEC(v26, &qword_1EDC6E2A0, v7);
  sub_1BA108FEC(v10, &qword_1EDC6E2A0, v7);
  sub_1BA108FEC(v14, &qword_1EDC6E440, v11);
  return v23;
}

uint64_t sub_1BA107950()
{
  v1 = MEMORY[0x1E6968130];
  sub_1B9F47ECC(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18 - v3;
  v5 = MEMORY[0x1E6969530];
  sub_1B9F47ECC(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD00000000000001ALL, 0x80000001BA4EB2F0);
  sub_1BA1071B4(v0 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_date, v8, &qword_1EDC6E440, v5);
  v9 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v9);

  MEMORY[0x1BFAF1350](0x746E496574616420, 0xEF203A6C61767265);
  sub_1BA1071B4(v0 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_dateInterval, v4, &qword_1EDC6E2A0, v1);
  v10 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v10);

  MEMORY[0x1BFAF1350](0xD000000000000017, 0x80000001BA4EB310);
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue + 8))
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue);
  }

  v19 = v11;
  type metadata accessor for HKOverlayRoomPreferredOverlay(0);
  v12 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v12);

  MEMORY[0x1BFAF1350](0x6341646E65727420, 0xEE00203A65766974);
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue + 8))
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue);
  }

  v19 = v13;
  type metadata accessor for HKOverlayRoomTrendActive(0);
  v14 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v14);

  MEMORY[0x1BFAF1350](0xD000000000000013, 0x80000001BA4EB330);
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue + 8))
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue);
  }

  v19 = v15;
  v16 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v16);

  return v20;
}

void sub_1BA107C6C(void *a1)
{
  v2 = v1;
  sub_1B9F47ECC(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - v5;
  v7 = MEMORY[0x1E6969530];
  sub_1B9F47ECC(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  sub_1BA1071B4(v2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_date, &v27 - v9, &qword_1EDC6E440, v7);
  v11 = sub_1BA4A1728();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    v13 = sub_1BA4A16B8();
    (*(v12 + 8))(v10, v11);
    v14 = v13;
    v15 = sub_1BA4A6758();
    [a1 encodeObject:v14 forKey:v15];
  }

  sub_1BA1071B4(v2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_dateInterval, v6, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
  v16 = sub_1BA4A0FA8();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v6, 1, v16) != 1)
  {
    v18 = sub_1BA4A0F28();
    (*(v17 + 8))(v6, v16);
    v19 = v18;
    v20 = sub_1BA4A6758();
    [a1 encodeObject:v19 forKey:v20];
  }

  if ((*(v2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue + 8) & 1) == 0)
  {
    v21 = sub_1BA4A6DC8();
    v22 = sub_1BA4A6758();
    [a1 encodeObject:v21 forKey:v22];
  }

  if ((*(v2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue + 8) & 1) == 0)
  {
    v23 = sub_1BA4A6DC8();
    v24 = sub_1BA4A6758();
    [a1 encodeObject:v23 forKey:v24];
  }

  if ((*(v2 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue + 8) & 1) == 0)
  {
    v25 = sub_1BA4A6DC8();
    v26 = sub_1BA4A6758();
    [a1 encodeObject:v25 forKey:v26];
  }
}

id ChartContext.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1BA109074();

  return v4;
}

id ChartContext.init(coder:)(void *a1)
{
  v2 = sub_1BA109074();

  return v2;
}

uint64_t sub_1BA108188()
{
  v1 = v0;
  v23[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v23[0] = 0;
  v7 = [v6 archivedDataWithRootObject:v1 requiringSecureCoding:1 error:v23];
  v8 = v23[0];
  if (v7)
  {
    v9 = sub_1BA4A1608();
  }

  else
  {
    v10 = v8;
    v11 = sub_1BA4A1488();

    swift_willThrow();
    sub_1BA4A3E28();
    v12 = v11;
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23[0] = v16;
      *v15 = 136315138;
      v22 = v11;
      v17 = v11;
      sub_1B9FED358();
      v18 = sub_1BA4A6808();
      v20 = sub_1B9F0B82C(v18, v19, v23);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1B9F07000, v13, v14, "Failed to encode data with error %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  return v9;
}

id ChartContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1BA1084B0()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 0xD000000000000018;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65746E4965746164;
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

uint64_t sub_1BA108554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BA10A2B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BA10857C(uint64_t a1)
{
  v2 = sub_1BA109A48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA1085B8(uint64_t a1)
{
  v2 = sub_1BA109A48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ChartContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChartContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA1086A4(void *a1)
{
  sub_1BA109A9C(0, &qword_1EBBEBF60, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA109A48();
  sub_1BA4A8548();
  v9[15] = 0;
  sub_1BA4A1728();
  sub_1B9F42AAC(&qword_1EDC6AE80, MEMORY[0x1E6969530]);
  sub_1BA4A8238();
  if (!v1)
  {
    v9[14] = 1;
    sub_1BA4A0FA8();
    sub_1B9F42AAC(&qword_1EDC6AF18, MEMORY[0x1E6968130]);
    sub_1BA4A8238();
    v9[13] = 2;
    sub_1BA4A8228();
    v9[12] = 3;
    sub_1BA4A8228();
    v9[11] = 4;
    sub_1BA4A8228();
  }

  return (*(v5 + 8))(v7, v4);
}

id ChartContext.init(from:)(void *a1)
{
  sub_1B9F47ECC(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v32 - v4;
  sub_1B9F47ECC(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v35 = &v32 - v7;
  sub_1BA109A9C(0, &qword_1EBBEBF70, MEMORY[0x1E69E6F48]);
  v36 = v8;
  v34 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  v11 = v1 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v1 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue;
  *v12 = 0;
  *(v12 + 8) = 1;
  v38 = v1;
  v39 = a1;
  v13 = v1 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue;
  *v13 = 0;
  *(v13 + 8) = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA109A48();
  v14 = v10;
  v15 = v37;
  sub_1BA4A8528();
  if (v15)
  {
    v31 = v38;
    __swift_destroy_boxed_opaque_existential_1(v39);
    type metadata accessor for ChartContext();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v37 = v11;
    v32 = v13;
    v33 = v12;
    v16 = v34;
    sub_1BA4A1728();
    v41 = 0;
    sub_1B9F42AAC(&qword_1EDC6AE70, MEMORY[0x1E6969530]);
    v17 = v35;
    v18 = v36;
    sub_1BA4A8178();
    v20 = v38;
    sub_1BA109B00(v17, v38 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_date, &qword_1EDC6E440, MEMORY[0x1E6969530]);
    sub_1BA4A0FA8();
    v41 = 1;
    sub_1B9F42AAC(&qword_1EDC6AF10, MEMORY[0x1E6968130]);
    sub_1BA4A8178();
    sub_1BA109B00(v5, v20 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_dateInterval, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
    v41 = 2;
    v21 = sub_1BA4A8168();
    v22 = v37;
    *v37 = v21;
    *(v22 + 8) = v23 & 1;
    v41 = 3;
    v24 = sub_1BA4A8168();
    v25 = v33;
    *v33 = v24;
    *(v25 + 8) = v26 & 1;
    v41 = 4;
    v27 = sub_1BA4A8168();
    v28 = v32;
    *v32 = v27;
    *(v28 + 8) = v29 & 1;
    v30 = type metadata accessor for ChartContext();
    v40.receiver = v20;
    v40.super_class = v30;
    v31 = objc_msgSendSuper2(&v40, sel_init);
    (*(v16 + 8))(v14, v18);
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  return v31;
}

id sub_1BA108F04@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ChartContext());
  result = ChartContext.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t type metadata accessor for ChartContext()
{
  result = qword_1EDC6DDF0;
  if (!qword_1EDC6DDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA108FEC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B9F47ECC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t ChartContext.interactiveChartOptions.getter()
{
  if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue + 8) & 1) == 0 && (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue))
  {
    return 0x2000;
  }

  else
  {
    return 0;
  }
}

id sub_1BA109074()
{
  v1 = v0;
  sub_1B9F47ECC(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30 - v3;
  sub_1B9F47ECC(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30 - v6;
  v8 = &v0[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue];
  *v8 = 0;
  v8[8] = 1;
  v9 = &v0[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v0[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue];
  *v10 = 0;
  v10[8] = 1;
  sub_1B9F0ADF8(0, &qword_1EDC6B4C0);
  v11 = sub_1BA4A7728();
  if (v11)
  {
    v12 = v11;
    sub_1BA4A16F8();

    v13 = sub_1BA4A1728();
    (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  }

  else
  {
    v14 = sub_1BA4A1728();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  }

  sub_1BA109B00(v7, &v0[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_date], &qword_1EDC6E440, MEMORY[0x1E6969530]);
  sub_1B9F0ADF8(0, qword_1EBBEBFB8);
  v15 = sub_1BA4A7728();
  if (v15)
  {
    v16 = v15;
    sub_1BA4A0F48();

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = sub_1BA4A0FA8();
  (*(*(v18 - 8) + 56))(v4, v17, 1, v18);
  sub_1BA109B00(v4, &v0[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_dateInterval], &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
  sub_1B9F0ADF8(0, &qword_1EDC6E360);
  v19 = sub_1BA4A7728();
  v20 = v19;
  if (v19)
  {
    v21 = [v19 integerValue];
  }

  else
  {
    v21 = 0;
  }

  *v8 = v21;
  v8[8] = v20 == 0;
  v22 = sub_1BA4A7728();
  v23 = v22;
  if (v22)
  {
    v24 = [v22 integerValue];
  }

  else
  {
    v24 = 0;
  }

  *v9 = v24;
  v9[8] = v23 == 0;
  v25 = sub_1BA4A7728();
  v26 = v25;
  if (v25)
  {
    v27 = [v25 integerValue];
  }

  else
  {
    v27 = 0;
  }

  *v10 = v27;
  v10[8] = v26 == 0;
  v28 = type metadata accessor for ChartContext();
  v30.receiver = v1;
  v30.super_class = v28;
  return objc_msgSendSuper2(&v30, sel_init);
}

uint64_t _s18HealthExperienceUI12ChartContextC12archivedDataACSg10Foundation0G0V_tcfC_0(uint64_t a1, unint64_t a2)
{
  v4 = sub_1BA4A3EA8();
  MEMORY[0x1EEE9AC00](v4);
  sub_1B9F47ECC(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24[-v6];
  sub_1B9F47ECC(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24[-v9];
  sub_1B9F0ADF8(0, &unk_1EBBEBFA8);
  v11 = type metadata accessor for ChartContext();
  v12 = sub_1BA4A7268();
  if (v12)
  {
    v31 = a1;
    v33 = a2;
    v13 = v12;
    sub_1BA1071B4(v12 + OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_date, v10, &qword_1EDC6E440, MEMORY[0x1E6969530]);
    sub_1BA1071B4(&v13[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_dateInterval], v7, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
    v30 = *&v13[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue];
    v29 = v13[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue + 8];
    v28 = *&v13[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue];
    v27 = v13[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue + 8];
    v32 = v13;
    v26 = *&v13[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue];
    v25 = v13[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue + 8];
    v14 = objc_allocWithZone(v11);
    v15 = &v14[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue];
    *v15 = 0;
    v15[8] = 1;
    v16 = &v14[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue];
    *v16 = 0;
    v16[8] = 1;
    v17 = &v14[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue];
    *v17 = 0;
    v17[8] = 1;
    v18 = sub_1BA4A1728();
    if ((*(*(v18 - 8) + 48))(v10, 1, v18) == 1 || (v19 = sub_1BA4A0FA8(), result = (*(*(v19 - 8) + 48))(v7, 1, v19), result == 1))
    {
      v21 = MEMORY[0x1E6969530];
      sub_1BA1071B4(v10, &v14[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_date], &qword_1EDC6E440, MEMORY[0x1E6969530]);
      v22 = MEMORY[0x1E6968130];
      sub_1BA1071B4(v7, &v14[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_dateInterval], &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
      *v15 = v30;
      v15[8] = v29;
      *v16 = v28;
      v16[8] = v27;
      *v17 = v26;
      v17[8] = v25;
      v34.receiver = v14;
      v34.super_class = v11;
      v23 = objc_msgSendSuper2(&v34, sel_init);
      sub_1B9F2BB4C(v31, v33);

      sub_1BA108FEC(v7, &qword_1EDC6E2A0, v22);
      sub_1BA108FEC(v10, &qword_1EDC6E440, v21);
      return v23;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1B9F2BB4C(a1, a2);
    return 0;
  }

  return result;
}

unint64_t sub_1BA109A48()
{
  result = qword_1EBBEBF68;
  if (!qword_1EBBEBF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBF68);
  }

  return result;
}

void sub_1BA109A9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BA109A48();
    v7 = a3(a1, &type metadata for ChartContext.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BA109B00(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1B9F47ECC(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1BA109B70()
{
  result = qword_1EBBEBF78;
  if (!qword_1EBBEBF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBF78);
  }

  return result;
}

unint64_t sub_1BA109BC8()
{
  result = qword_1EBBEBF80;
  if (!qword_1EBBEBF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBF80);
  }

  return result;
}

unint64_t sub_1BA109C20()
{
  result = qword_1EDC695F8;
  if (!qword_1EDC695F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC695F8);
  }

  return result;
}

unint64_t sub_1BA109C78()
{
  result = qword_1EDC695F0;
  if (!qword_1EDC695F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC695F0);
  }

  return result;
}

void sub_1BA109D88()
{
  sub_1B9F47ECC(319, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    sub_1B9F47ECC(319, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1BA10A1B0()
{
  result = qword_1EBBEBF90;
  if (!qword_1EBBEBF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBF90);
  }

  return result;
}

unint64_t sub_1BA10A208()
{
  result = qword_1EBBEBF98;
  if (!qword_1EBBEBF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBF98);
  }

  return result;
}

unint64_t sub_1BA10A260()
{
  result = qword_1EBBEBFA0;
  if (!qword_1EBBEBFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEBFA0);
  }

  return result;
}

uint64_t sub_1BA10A2B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746E4965746164 && a2 == 0xEC0000006C617672 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001BA4EB3F0 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BA4EB410 == a2 || (sub_1BA4A8338() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001BA4EB430 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1BA4A8338();

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

uint64_t CollectionDifference<A>.description.getter()
{
  sub_1BA10A7E8();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v28[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1E69E6EF0];
  sub_1BA10AF70(0, &unk_1EBBED8B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6EF0]);
  v6 = v5;
  (*(*(v5 - 8) + 16))(v3, v0, v5);
  sub_1BA10A8A4(&qword_1EBBEAAA0, &unk_1EBBED8B0, v4);
  v7 = sub_1BA4A6E18();
  if (v7)
  {
    v8 = v7;
    v30 = MEMORY[0x1E69E7CC0];
    sub_1B9F1C360(0, v7 & ~(v7 >> 63), 0);
    v9 = v30;
    result = sub_1BA4A6DF8();
    if ((v8 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v12 = *&v31[0];
      v27 = v8;
      while (1)
      {
        v29[4] = v12;
        result = sub_1BA4A6DF8();
        if (v12 < v28[0])
        {
          break;
        }

        result = sub_1BA4A6E38();
        if (v12 >= v28[0])
        {
          goto LABEL_13;
        }

        v13 = sub_1BA4A6E88();
        v15 = *(v14 + 32);
        v16 = *(v14 + 16);
        v31[0] = *v14;
        v31[1] = v16;
        v32 = v15;
        sub_1BA051A74(v31, v28);
        v13(v29, 0);
        v17 = v6;
        v18 = sub_1BA10A904(v11, v31);
        v20 = v19;
        sub_1BA051AF4(v31);
        v30 = v9;
        v21 = v3;
        v23 = *(v9 + 16);
        v22 = *(v9 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1B9F1C360((v22 > 1), v23 + 1, 1);
          v9 = v30;
        }

        ++v11;
        *(v9 + 16) = v23 + 1;
        v24 = v9 + 16 * v23;
        *(v24 + 32) = v18;
        *(v24 + 40) = v20;
        v29[0] = v12;
        sub_1BA4A6E28();
        v12 = v28[0];
        v3 = v21;
        v6 = v17;
        if (v27 == v11)
        {
          sub_1BA10AE04(v3);
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_1BA10AE04(v3);
    v9 = MEMORY[0x1E69E7CC0];
LABEL_11:
    v28[0] = v9;
    v25 = MEMORY[0x1E69E62F8];
    sub_1BA10AF70(0, &qword_1EDC6B670, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1BA10A8A4(&qword_1EDC6B660, &qword_1EDC6B670, v25);
    v26 = sub_1BA4A66D8();

    return v26;
  }

  return result;
}

void sub_1BA10A7E8()
{
  if (!qword_1EBBEAA90)
  {
    v0 = MEMORY[0x1E69E6EF0];
    sub_1BA10AF70(255, &unk_1EBBED8B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6EF0]);
    sub_1BA10A8A4(&qword_1EBBEAA98, &unk_1EBBED8B0, v0);
    v1 = sub_1BA4A8038();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEAA90);
    }
  }
}

uint64_t sub_1BA10A8A4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1BA10AF70(255, a2, MEMORY[0x1E69E6158], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA10A904(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  if (*(a2 + 33))
  {
    sub_1BA4A7DF8();
    v4 = MEMORY[0x1E69E6530];
    v5 = sub_1BA4A82D8();

    v11 = v5;
    v6 = ". remove element ";
  }

  else
  {
    sub_1BA4A7DF8();
    v4 = MEMORY[0x1E69E6530];
    v7 = sub_1BA4A82D8();

    v11 = v7;
    v6 = ". insert element ";
  }

  MEMORY[0x1BFAF1350](0xD000000000000011, (v6 - 32) | 0x8000000000000000);
  MEMORY[0x1BFAF1350](v2, v3);
  MEMORY[0x1BFAF1350](0xD000000000000011, 0x80000001BA4EB470);
  sub_1BA10AF70(0, &qword_1EDC6B640, v4, MEMORY[0x1E69E6720]);
  v8 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v8);

  MEMORY[0x1BFAF1350](544497952, 0xE400000000000000);
  v9 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v9);

  return v11;
}

uint64_t DataSourceSectionTransaction.difference.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_1BA4A80C8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t DataSourceSectionTransaction.difference.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = sub_1BA4A80C8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t DataSourceSectionTransaction.init(sectionIdentifier:difference:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = *(type metadata accessor for DataSourceSectionTransaction() + 52);
  v7 = sub_1BA4A80C8();
  return (*(*(v7 - 8) + 32))(a4 + v6, a2, v7);
}

uint64_t static DataSourceSectionTransaction.== infix(_:_:)()
{
  if (sub_1BA4A6728())
  {
    type metadata accessor for DataSourceSectionTransaction();
    v0 = sub_1BA4A80D8();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_1BA10AE04(uint64_t a1)
{
  sub_1BA10A7E8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA10AEBC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1BA4A80C8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1BA10AF70(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1BA10AFC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1B9F115CC(0, &qword_1EDC6ADE0, sub_1B9F1174C, MEMORY[0x1E69A3C40]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12[-v7];
  v9 = *a1;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__shouldLogApplyingSnapshotWithNumberOfSections;
  swift_beginAccess();
  (*(v6 + 16))(v8, v9 + v10, v5);
  sub_1BA4A1CA8();
  result = (*(v6 + 8))(v8, v5);
  *a2 = v12[7];
  return result;
}

uint64_t sub_1BA10B110()
{
  swift_beginAccess();
  sub_1B9F115CC(0, &qword_1EDC6ADE0, sub_1B9F1174C, MEMORY[0x1E69A3C40]);
  sub_1BA4A1CB8();
  return swift_endAccess();
}

uint64_t sub_1BA10B1AC()
{
  sub_1B9F115CC(0, &qword_1EDC6ADE0, sub_1B9F1174C, MEMORY[0x1E69A3C40]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8[-v4];
  v6 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__shouldLogApplyingSnapshotWithNumberOfSections;
  swift_beginAccess();
  (*(v3 + 16))(v5, v0 + v6, v2);
  sub_1BA4A1CA8();
  (*(v3 + 8))(v5, v2);
  return v8[7];
}

uint64_t sub_1BA10B2EC()
{
  swift_beginAccess();
  sub_1B9F115CC(0, &qword_1EDC6ADE0, sub_1B9F1174C, MEMORY[0x1E69A3C40]);
  sub_1BA4A1CB8();
  return swift_endAccess();
}

void (*sub_1BA10B380(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  swift_beginAccess();
  sub_1B9F115CC(0, &qword_1EDC6ADE0, sub_1B9F1174C, MEMORY[0x1E69A3C40]);
  *(v3 + 56) = sub_1BA4A1C98();
  return sub_1BA10B450;
}

void sub_1BA10B450(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  swift_endAccess();

  free(v1);
}

uint64_t sub_1BA10B4A4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_loaded;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1BA10B4E8(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for DiffableCollectionViewAdaptor.DebugState(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA10C8F0(a1, v6);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__debug_currentSnapshotState;
  swift_beginAccess();
  sub_1B9F8083C(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_1BA10B5A0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__debug_currentSnapshotState;
  swift_beginAccess();
  return sub_1BA10C8F0(v1 + v3, a1);
}

uint64_t sub_1BA10B5F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v4 = *(Strong + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_backingDataSource + 16);
  *&v9[5] = *(Strong + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_backingDataSource);
  v9[7] = v4;
  sub_1BA10CB60();
  sub_1BA10CBC8();
  swift_unknownObjectRetain();
  if (!swift_dynamicCast())
  {

LABEL_5:
    v7 = 0;
    return v7 & 1;
  }

  sub_1B9F1134C(v9, v10);
  v5 = v11;
  v6 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v9[0] = v1;
  v9[1] = v2;
  v7 = (*(v6 + 40))(v9, v5, v6);

  __swift_destroy_boxed_opaque_existential_1(v10);
  return v7 & 1;
}

uint64_t sub_1BA10B724()
{
  sub_1B9F11824(0, &qword_1EBBEC040, MEMORY[0x1E69E6168], MEMORY[0x1E69DC2C8]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v25 - v3;
  sub_1B9F11824(0, &qword_1EBBE98D8, MEMORY[0x1E69E6180], type metadata accessor for DataSourceSectionTransaction);
  v30 = *(v5 - 8);
  *&v31 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v25 - v6);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_1B9F11824(0, &qword_1EBBEC048, MEMORY[0x1E69E6168], MEMORY[0x1E69DC1B0]);
    v10 = sub_1BA4A4688();
    v11 = *(v10 + 16);
    if (v11)
    {
      v26 = v9;
      v32[0] = MEMORY[0x1E69E7CC0];
      sub_1BA067008(0, v11, 0);
      v12 = v32[0];
      v14 = *(v2 + 16);
      v13 = v2 + 16;
      v28 = v14;
      v15 = (*(v13 + 64) + 32) & ~*(v13 + 64);
      v25 = v10;
      v16 = v10 + v15;
      v27 = *(v13 + 56);
      v29 = v13;
      v17 = (v13 - 8);
      do
      {
        v28(v4, v16, v1);
        sub_1BA4A4878();
        v18 = v33[0];
        v19 = v33[1];
        MEMORY[0x1BFAEF2A0](v1);
        (*v17)(v4, v1);
        *v7 = v18;
        v7[1] = v19;
        v32[0] = v12;
        v21 = *(v12 + 16);
        v20 = *(v12 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1BA067008(v20 > 1, v21 + 1, 1);
          v12 = v32[0];
        }

        *(v12 + 16) = v21 + 1;
        sub_1BA10CAD8(v7, v12 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v21);
        v16 += v27;
        --v11;
      }

      while (v11);

      v9 = v26;
    }

    else
    {

      v12 = MEMORY[0x1E69E7CC0];
    }

    v22 = *(v9 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_backingDataSource + 16);
    v31 = *(v9 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_backingDataSource);
    *&v32[5] = v31;
    v32[7] = v22;
    sub_1BA10CB60();
    sub_1BA10CBC8();
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      sub_1B9F1134C(v32, v33);
      v23 = v34;
      v24 = v35;
      __swift_project_boxed_opaque_existential_1(v33, v34);
      (*(v24 + 48))(v12, v23, v24);

      return __swift_destroy_boxed_opaque_existential_1(v33);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1BA10BB30(int a1)
{
  v2 = v1;
  v26 = a1;
  sub_1B9F11824(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25[-v9];
  v11 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_diffableDataSource);
  sub_1BA4A4738();

  v12 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_backingDataSource + 8);
  ObjectType = swift_getObjectType();
  v14 = *(v12 + 16);
  swift_unknownObjectRetain();
  v14(ObjectType, v12);
  swift_unknownObjectRelease();
  v15 = sub_1BA4A4538();
  v16 = sub_1B9F12EB8(v15);

  v17 = sub_1BA4A4538();
  v18 = sub_1B9F12EB8(v17);

  v19 = sub_1BA10C350(v18, v16);

  v20 = *(v19 + 16);
  if (!v20)
  {
    goto LABEL_4;
  }

  v21 = sub_1BA021990(*(v19 + 16), 0);
  v22 = sub_1BA0238B0(&v27, v21 + 4, v20, v19);
  sub_1B9F52E48();
  if (v22 != v20)
  {
    __break(1u);
LABEL_4:
  }

  sub_1BA4A4558();

  (*(*v2 + 296))(v7, v26 & 1, 1, 0, 0);
  v23 = *(v5 + 8);
  v23(v7, v4);
  return (v23)(v10, v4);
}

uint64_t DiffableCollectionViewAdaptor.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__shouldLogApplyingSnapshotWithNumberOfSections;
  sub_1B9F115CC(0, &qword_1EDC6ADE0, sub_1B9F1174C, MEMORY[0x1E69A3C40]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  sub_1B9F5DBCC(v0 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__debug_currentSnapshotState, type metadata accessor for DiffableCollectionViewAdaptor.DebugState);
  return v0;
}

uint64_t DiffableCollectionViewAdaptor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__shouldLogApplyingSnapshotWithNumberOfSections;
  sub_1B9F115CC(0, &qword_1EDC6ADE0, sub_1B9F1174C, MEMORY[0x1E69A3C40]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  sub_1B9F5DBCC(v0 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__debug_currentSnapshotState, type metadata accessor for DiffableCollectionViewAdaptor.DebugState);

  return swift_deallocClassInstance();
}

uint64_t DiffableCollectionViewAdaptor.DebugState.debugDescription.getter()
{
  v1 = v0;
  sub_1B9F11824(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - v5;
  v7 = type metadata accessor for DiffableCollectionViewAdaptor.DebugState(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA10C8F0(v1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      return 0x616974696E696E55;
    }

    (*(v4 + 32))(v6, v9, v3);
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_1BA4A7DF8();

    v11 = 0x80000001BA4EB4B0;
    v12 = 0xD000000000000012;
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v4 + 32))(v6, v9, v3);
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_1BA4A7DF8();

    v11 = 0x80000001BA4EB4D0;
    v12 = 0xD000000000000016;
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_1BA4A7DF8();

    v11 = 0x80000001BA4EB4F0;
    v12 = 0xD00000000000001BLL;
  }

  v16 = v12;
  v17 = v11;
  v13 = NSDiffableDataSourceSnapshot<>.description.getter();
  MEMORY[0x1BFAF1350](v13);

  v14 = v16;
  (*(v4 + 8))(v6, v3);
  return v14;
}

void *sub_1BA10C2C0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_1BA10C514(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1BA10C350(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_1BA10C514(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_1BA10C2C0(v11, v6, a2, a1);

    MEMORY[0x1BFAF43A0](v11, -1, -1);
  }

  return v9;
}

uint64_t sub_1BA10C514(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_1BA4A8488();

      sub_1BA4A68C8();
      v26 = sub_1BA4A84D8();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_1BA4A8338() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_1BA307414(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_1BA4A8488();

      sub_1BA4A68C8();
      v39 = sub_1BA4A84D8();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_1BA4A8338() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA10C8F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiffableCollectionViewAdaptor.DebugState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA10CAD8(uint64_t a1, uint64_t a2)
{
  sub_1B9F11824(0, &qword_1EBBE98D8, MEMORY[0x1E69E6180], type metadata accessor for DataSourceSectionTransaction);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BA10CB60()
{
  result = qword_1EBBEC050;
  if (!qword_1EBBEC050)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBBEC050);
  }

  return result;
}

unint64_t sub_1BA10CBC8()
{
  result = qword_1EBBEC058;
  if (!qword_1EBBEC058)
  {
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, &qword_1EBBEC058);
  }

  return result;
}

uint64_t sub_1BA10CC34()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEC068 = result;
  unk_1EBBEC070 = v1;
  return result;
}

uint64_t sub_1BA10CCE0()
{
  v0 = type metadata accessor for SummarySharingSelectionFlow(0);
  __swift_allocate_value_buffer(v0, qword_1EBBEC078);
  __swift_project_value_buffer(v0, qword_1EBBEC078);

  return swift_storeEnumTagMultiPayload();
}

void sub_1BA10CD3C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_dataTypeSelectionCVC);
    SummarySharingDataTypeSelectionViewController.reloadAllDataSources()();
  }
}

void sub_1BA10CE3C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_selectionFlowContext;
  memset(v21, 0, 32);
  sub_1BA4A6C68();
  v19 = v0;

  sub_1BA1E091C(sub_1BA10E250, &v18);
  v22 = 0uLL;
  *&v23 = 0;
  *(&v23 + 1) = 9;
  sub_1B9FEEC64(ObjectType, v21, 0, &v22);

  sub_1B9FF3BFC(v22, *(&v22 + 1), v23, *(&v23 + 1));
  sub_1B9F0DBB4(v21, &qword_1EDC6E300);
  v4 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_selectedContact + 16];
  v22 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_selectedContact];
  v23 = v4;
  v24 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_selectedContact + 32];
  v5 = v22;
  v6 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_selectedContact + 24];
  v25 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_selectedContact + 8];
  v26 = v6;
  v7 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_selectedContactPhotoPublisher];
  v8 = OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_selectedDataTypesContext;
  swift_beginAccess();
  v9 = *&v1[v8];
  sub_1B9F0A534(&v1[OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_healthExperienceStore], v21);
  v10 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_healthStore];
  v11 = *&v1[v3];
  v12 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingKitSharingConfirmationViewController());
  v13 = v5;

  v14 = v10;

  sub_1B9F87F44(&v25, v20);
  sub_1B9F87F44(&v26, v20);
  v15 = sub_1BA313E58(&v22, v7, v9, v21, v14, v11);

  sub_1B9F0DBB4(&v25, &qword_1EDC6E410);
  sub_1B9F0DBB4(&v26, &qword_1EDC6E410);
  v16 = [v1 navigationController];
  if (v16)
  {
    v17 = v16;
    [v16 pushViewController:v15 animated:1];
  }
}

uint64_t sub_1BA10D13C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_healthExperienceStore);
}

id sub_1BA10D208()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummarySharingOnboardingManualDataTypeSelectionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA10D378(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_selectedDataTypesContext;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

char *sub_1BA10D430(uint64_t a1, char **a2, char *a3, void *a4, void *a5, unint64_t a6)
{
  v13 = *a2;
  v14 = *(a2 + 1);
  v104 = *(a2 + 3);
  v105 = v14;
  v15 = type metadata accessor for SummarySharingSelectionFlow(0);
  MEMORY[0x1EEE9AC00](v15);
  v98 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v97 = &v86 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v86 - v20;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_cancellables] = MEMORY[0x1E69E7CC0];
  sub_1B9F0A534(a1, &v6[OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_healthExperienceStore]);
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_healthStore] = a5;
  v22 = *(a2 + 1);
  v109 = *(a2 + 3);
  v110 = v22;
  v23 = &v6[OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_selectedContact];
  v24 = *(a2 + 1);
  *v23 = *a2;
  *(v23 + 1) = v24;
  *(v23 + 4) = a2[4];
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_selectedContactPhotoPublisher] = a3;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_selectionFlowContext] = a6;
  v99 = v6;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_selectedDataTypesContext] = a4;
  v87 = a1;
  sub_1B9F0A534(a1, v108);
  v25 = a5;
  v26 = v13;
  sub_1B9F87F44(&v110, v107);
  sub_1B9F87F44(&v109, v107);

  v27 = v26;
  sub_1B9F87F44(&v110, v107);
  sub_1B9F87F44(&v109, v107);
  v28 = qword_1EBBE8360;

  v29 = v25;
  v101 = a6;

  if (v28 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v92 = __swift_project_value_buffer(v15, qword_1EBBEC078);
    sub_1B9FF1628(v92, v21);
    v30 = objc_allocWithZone(type metadata accessor for SummarySharingDataTypeSelectionViewController(0));
    *&v30[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v31 = v21;
    v32 = MEMORY[0x1E69E7CC0];
    *&v30[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_cancellables] = MEMORY[0x1E69E7CC0];
    sub_1B9F0A534(v108, &v30[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_healthExperienceStore]);
    *&v30[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedCategories] = 0;
    sub_1B9FF1628(v31, &v30[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectionFlow]);
    v33 = &v30[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedContact];
    *v33 = v13;
    v34 = v105;
    *(v33 + 24) = v104;
    *(v33 + 8) = v34;
    *&v30[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedContactPhotoPublisher] = a3;
    *&v30[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedDataTypesContext] = a4;
    v88 = v27;
    sub_1B9F87F44(&v110, v107);
    sub_1B9F87F44(&v109, v107);

    v35 = v101;

    *&v105 = v29;
    v96 = v31;
    *&v30[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_dataTypeSelectionDataSources] = sub_1BA1E1D2C(v108, v29, 1, 0, v31, v35);

    v37 = sub_1B9FE98D4(v36);

    v107[0] = v37;
    sub_1B9FE20B8(v32);
    v38 = v107[0];
    type metadata accessor for CompoundSectionedDataSource();
    swift_allocObject();
    v39 = CompoundSectionedDataSource.init(_:)(v38);
    v40 = CompoundDataSourceCollectionViewController.init(dataSource:)(v39);
    v107[0] = a4[6];
    v41 = MEMORY[0x1E695BF70];
    sub_1BA10E0E4(0, &qword_1EBBEB1A0, MEMORY[0x1E695BF70]);
    v43 = v42;
    v44 = sub_1BA10E150(&qword_1EBBEB1A8, &qword_1EBBEB1A0, v41);
    v45 = v40;
    v95 = v43;
    v94 = v44;
    v107[0] = sub_1BA4A4F98();
    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = swift_allocObject();
    *(v47 + 16) = sub_1BA10E0DC;
    *(v47 + 24) = v46;
    v48 = MEMORY[0x1E695BED0];
    sub_1BA10E0E4(0, &qword_1EBBEB1B0, MEMORY[0x1E695BED0]);
    v50 = v49;
    v51 = sub_1BA10E150(&qword_1EBBEB1B8, &qword_1EBBEB1B0, v48);
    v93 = v50;
    v91 = v51;
    v27 = sub_1BA4A5148();

    swift_beginAccess();
    sub_1BA10E194();
    v29 = v52;
    v53 = sub_1BA091D04();
    v90 = v29;
    v89 = v53;
    sub_1BA4A4D38();
    swift_endAccess();

    *&v104 = v45;
    v54 = *&v45[OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_dataTypeSelectionDataSources];
    v100 = a4;
    v13 = v54 >> 62 ? sub_1BA4A7CC8() : *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);

    v15 = v105;
    if (!v13)
    {
      break;
    }

    v21 = 0;
    v102 = v54 & 0xFFFFFFFFFFFFFF8;
    v103 = v54 & 0xC000000000000001;
    while (v103)
    {
      v29 = MEMORY[0x1BFAF2860](v21, v54);
      v15 = (v21 + 1);
      if (__OFADD__(v21, 1))
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

LABEL_9:
      *(*(v29 + qword_1EBBF0538) + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_selectedDataTypesDelegate + 8) = &protocol witness table for SummarySharingDataTypeSelectionViewController;
      a4 = v104;
      swift_unknownObjectWeakAssign();
      type metadata accessor for SummarySharingSelectionContextDelegate();
      v55 = a3;
      v56 = swift_allocObject();
      *(v56 + 24) = 0;
      swift_unknownObjectWeakInit();
      *(v56 + 24) = &protocol witness table for SummarySharingDataTypeSelectionViewController;
      swift_unknownObjectWeakAssign();
      v57 = a4;
      v58 = v56;
      a3 = v55;
      sub_1BA29AAC4(v58);
      v27 = v29;
      sub_1BA2FE7FC();

      ++v21;
      v59 = v15 == v13;
      v15 = v105;
      if (v59)
      {
        goto LABEL_15;
      }
    }

    if (v21 < *(v102 + 16))
    {
      v29 = *(v54 + 8 * v21 + 32);

      v15 = (v21 + 1);
      if (__OFADD__(v21, 1))
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
  }

LABEL_15:

  v60 = v104;

  sub_1B9F0DBB4(&v110, &qword_1EDC6E410);
  sub_1B9F0DBB4(&v109, &qword_1EDC6E410);
  sub_1BA10E1EC(v96);
  __swift_destroy_boxed_opaque_existential_1(v108);
  v61 = v99;
  *&v99[OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_dataTypeSelectionCVC] = v60;
  v62 = v92;
  v63 = v97;
  sub_1B9FF1628(v92, v97);
  v64 = v60;
  sub_1BA454A8C();
  sub_1BA10E1EC(v63);
  sub_1B9FF1628(v62, v63);
  sub_1BA454AAC();
  v66 = v65;
  sub_1BA10E1EC(v63);
  v67 = v98;
  sub_1B9FF1628(v62, v98);
  sub_1BA454934();
  v69 = v68;
  sub_1BA10E1EC(v67);
  *&v61[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentViewHeightConstraint] = 0;
  v70 = &v61[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_lastWidthUseForCollectionViewLayout];
  *v70 = 0;
  v70[8] = 1;
  v71 = &v61[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_lastAvailableContentViewHeight];
  *v71 = 0;
  v71[8] = 1;
  *&v61[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_contentSizeObserver] = 0;
  *&v61[OBJC_IVAR____TtC18HealthExperienceUI34OnboardingCollectionViewController_collectionViewController_] = v64;
  v72 = v64;
  a4 = sub_1BA4A6758();

  if (v66)
  {
    v73 = sub_1BA4A6758();
  }

  else
  {
    v73 = 0;
  }

  v21 = &OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_dataTypeSelectionDataSources;
  a3 = v95;
  v74 = type metadata accessor for OnboardingCollectionViewController();
  v106.receiver = v61;
  v106.super_class = v74;
  v75 = objc_msgSendSuper2(&v106, sel_initWithTitle_detailText_icon_contentLayout_, a4, v73, v69, 3);

  v15 = v75;
  v76 = [v15 headerView];
  [v76 setAllowFullWidthIcon_];

  v77 = [v15 navigationItem];
  v78 = sub_1BA35FA28();
  [v77 setTitleView_];

  v108[0] = v100[6];
  v108[0] = sub_1BA4A4F98();
  v79 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v80 = swift_allocObject();
  *(v80 + 16) = sub_1BA10E248;
  *(v80 + 24) = v79;
  v27 = sub_1BA4A5148();

  swift_beginAccess();
  sub_1BA4A4D38();
  swift_endAccess();

  v29 = *(*&v15[OBJC_IVAR____TtC18HealthExperienceUI61SummarySharingOnboardingManualDataTypeSelectionViewController_dataTypeSelectionCVC] + OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_dataTypeSelectionDataSources);
  if (v29 >> 62)
  {
    v13 = sub_1BA4A7CC8();
  }

  else
  {
    v13 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13)
  {
    v81 = 0;
    *&v105 = v29 & 0xC000000000000001;
    *&v104 = v29 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v105)
      {
        a4 = MEMORY[0x1BFAF2860](v81, v29);
        v82 = (v81 + 1);
        if (__OFADD__(v81, 1))
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v81 >= *(v104 + 16))
        {
          goto LABEL_32;
        }

        a4 = *(v29 + 8 * v81 + 32);

        v82 = (v81 + 1);
        if (__OFADD__(v81, 1))
        {
LABEL_29:
          __break(1u);
          break;
        }
      }

      *(*(a4 + qword_1EBBF0538) + OBJC_IVAR____TtCC18HealthExperienceUI41SummarySharingDataTypeSelectionDataSourceP33_90A4BE97C9AD775CAB10EB5F12011C5813Configuration_selectedDataTypesDelegate + 8) = &off_1F3806E28;
      swift_unknownObjectWeakAssign();
      type metadata accessor for SummarySharingSelectionContextDelegate();
      v21 = swift_allocObject();
      *(v21 + 24) = 0;
      swift_unknownObjectWeakInit();
      *(v21 + 24) = &off_1F3806E28;
      swift_unknownObjectWeakAssign();
      a3 = v15;
      sub_1BA29AAC4(v21);
      v27 = a4;
      sub_1BA2FE7FC();

      ++v81;
    }

    while (v82 != v13);
  }

  v83 = sub_1BA4A6758();

  v84 = [v15 hxui_addCancelButton];
  __swift_destroy_boxed_opaque_existential_1(v87);
  return v15;
}

void sub_1BA10E0E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BA10E150(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_1BA10E0E4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA10E194()
{
  if (!qword_1EDC5E6C0)
  {
    sub_1BA4A4D58();
    v0 = sub_1BA4A6BF8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5E6C0);
    }
  }
}

uint64_t sub_1BA10E1EC(uint64_t a1)
{
  v2 = type metadata accessor for SummarySharingSelectionFlow(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NoDataDataSource.init()()
{
  v29 = *v0;
  v30 = v0;
  v1 = sub_1BA4A1798();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBBE8368 != -1)
  {
    swift_once();
  }

  v5 = *algn_1EBBEC0D8;
  v28 = qword_1EBBEC0D0;
  v31 = 0xD000000000000014;
  v32 = 0x80000001BA4EB850;

  sub_1BA4A1788();
  v6 = sub_1BA4A1748();
  v8 = v7;
  v9 = *(v2 + 8);
  v9(v4, v1);
  MEMORY[0x1BFAF1350](v6, v8);

  v27 = v1;
  v10 = v31;
  v11 = v32;
  v31 = type metadata accessor for PlaceholderTextCollectionViewCell();
  sub_1BA10E8A8();
  v12 = sub_1BA4A6808();
  v14 = v13;
  sub_1B9FF6758();
  inited = swift_initStackObject();
  v26 = xmmword_1BA4B5480;
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1B9F28360();
  v16 = swift_allocObject();
  *(v16 + 16) = v26;
  *(v16 + 56) = &type metadata for PlaceholderTextItem;
  *(v16 + 64) = sub_1B9FE9528();
  v17 = swift_allocObject();
  *(v16 + 32) = v17;
  *(v17 + 16) = v10;
  *(v17 + 24) = v11;
  *(v17 + 32) = v12;
  *(v17 + 40) = v14;
  *(v17 + 48) = v28;
  *(v17 + 56) = v5;
  *(v17 + 64) = 0;
  sub_1BA4A1788();
  v18 = sub_1BA4A1748();
  v20 = v19;
  v9(v4, v27);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v22 = Array<A>.identifierToIndexDict()(v21);

  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = v16;
  *(inited + 56) = v22;
  *(inited + 64) = v18;
  *(inited + 72) = v20;
  v23 = swift_allocObject();
  *(v23 + 16) = v29;
  v24 = sub_1B9F1DAFC(inited, 1, sub_1BA10E8F0, v23);

  return v24;
}

uint64_t static NoDataDataSource.makeNoDataDataSource()()
{
  if (qword_1EBBE8368 != -1)
  {
    swift_once();
  }

  v0 = qword_1EBBEC0D0;
  v1 = *algn_1EBBEC0D8;

  return sub_1BA459ADC(v0, v1);
}

uint64_t NoDataDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t NoDataDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA10E7F0()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEC0D0 = result;
  *algn_1EBBEC0D8 = v1;
  return result;
}

unint64_t sub_1BA10E8A8()
{
  result = qword_1EBBE9DE8;
  if (!qword_1EBBE9DE8)
  {
    type metadata accessor for PlaceholderTextCollectionViewCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9DE8);
  }

  return result;
}

uint64_t type metadata accessor for NoDataDataSource()
{
  result = qword_1EBBEC0E0;
  if (!qword_1EBBEC0E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1BA10EB2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BackgroundHighlightableButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static HealthAppAnalyticsManager.submitInteraction(action:viewController:presentation:pinnedContentManager:)(char *a1, void *a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = *a3;
  v11 = *a1;
  v10 = v6;
  sub_1B9F21BB0(qword_1EDC69DC8, a2, type metadata accessor for HealthAppAnalyticsManager);
  v7 = static AnalyticsTransforming.analyticsString(for:)(&v10);
  static HealthAppAnalyticsManager.submitInteraction(action:viewController:analyticProvenance:pinnedContentManager:)(&v11, a2, v7, v8, a4);
}

uint64_t HealthAppAnalyticsManager.__allocating_init(healthStore:pinnedContentManager:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = a1;
  sub_1B9F25598(a2, v4 + 32);
  return v4;
}

void static HealthAppAnalyticsManager.submitInteraction(action:viewController:analyticProvenance:pinnedContentManager:)(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (a2)
  {
    LOBYTE(v28[0]) = *a1;
    v28[0] = HealthAppInteraction.Action.rawValue.getter();
    v28[1] = v15;
    v28[2] = a3;
    v28[3] = a4;
    v16 = a2;

    sub_1BA10F514(v28, v16, a5);
  }

  else
  {
    sub_1BA4A3E58();
    v17 = sub_1BA4A3E88();
    v18 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28[0] = v20;
      *v19 = 136315394;
      v21 = sub_1BA4A85D8();
      v23 = sub_1B9F0B82C(v21, v22, v28);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v29 = v14;
      v24 = HealthAppInteraction.Action.rawValue.getter();
      v26 = sub_1B9F0B82C(v24, v25, v28);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_1B9F07000, v17, v18, "%s Could not submit interaction %s: viewController is nil", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v20, -1, -1);
      MEMORY[0x1BFAF43A0](v19, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
  }
}

void sub_1BA10EF5C(void *a1)
{
  v3 = *v1;
  [v1[2] invalidate];
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v3;
  v10[4] = sub_1BA10F6D0;
  v10[5] = v5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1BA0B06D4;
  v10[3] = &block_descriptor_24;
  v6 = _Block_copy(v10);
  v7 = a1;

  v8 = [v4 scheduledTimerWithTimeInterval:0 repeats:v6 block:1.0];
  _Block_release(v6);
  v9 = v1[2];
  v1[2] = v8;
}

uint64_t sub_1BA10F0A4(uint64_t a1, void *a2)
{
  strcpy(v5, "resizeWindow");
  BYTE5(v5[1]) = 0;
  HIWORD(v5[1]) = -5120;
  v5[2] = 0;
  v5[3] = 0;
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  sub_1BA10F514(v5, a2, v3);
  sub_1BA10F728(v3);
}

uint64_t HealthAppAnalyticsManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t *sub_1BA10F194(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10, uint64_t a11, uint64_t *a12)
{
  v36 = a8;
  v37 = a7;
  v33 = a5;
  v34 = a6;
  v31 = a3;
  v32 = a4;
  v35 = a9;
  v30 = a11;
  v38 = *a12;
  v39 = sub_1BA4A72F8();
  v15 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BA4A7288();
  MEMORY[0x1EEE9AC00](v18);
  v19 = sub_1BA4A64C8();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v43 = &type metadata for HardwareKeyboardAvailability;
  v44 = &protocol witness table for HardwareKeyboardAvailability;
  v41[3] = sub_1B9F0ADF8(0, &qword_1EDC6B5D0);
  v41[4] = &protocol witness table for UIViewController;
  v41[0] = v30;
  a12[27] = MEMORY[0x1E69E7CC8];
  a12[2] = a1;
  a12[3] = a2;
  v20 = v32;
  a12[4] = v31;
  a12[5] = v20;
  v21 = v34;
  a12[6] = v33;
  a12[7] = v21;
  sub_1B9F0A534(a7, (a12 + 8));
  v22 = v35;
  v23 = v36;
  a12[13] = v36;
  a12[14] = v22;
  a12[15] = a10;
  sub_1B9F0A534(v42, (a12 + 16));
  sub_1B9F0A534(v41, (a12 + 21));
  v35 = sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v24 = a1;
  v25 = a2;
  v26 = v23;
  v27 = a10;
  sub_1BA4A85D8();
  sub_1BA4A64A8();
  v40 = MEMORY[0x1E69E7CC0];
  sub_1B9F21BB0(&unk_1EDC5E480, 255, MEMORY[0x1E69E8030]);
  sub_1B9F21BF8(0, &qword_1EDC5E670, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1B9F21B28();
  sub_1BA4A7C38();
  (*(v15 + 104))(v17, *MEMORY[0x1E69E8090], v39);
  v28 = sub_1BA4A7328();
  __swift_destroy_boxed_opaque_existential_1(v37);
  __swift_destroy_boxed_opaque_existential_1(v41);
  __swift_destroy_boxed_opaque_existential_1(v42);
  a12[26] = v28;
  return a12;
}

uint64_t sub_1BA10F514(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = UIViewController.resolvedHealthStore.getter();
  if (!v9)
  {
    v9 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  }

  v10 = v9;
  sub_1BA10F7B4(a3, &v21);
  if (v22)
  {
    sub_1B9F25598(&v21, v23);
  }

  else
  {
    UIViewController.resolvedPinnedContentManager.getter(v23);
    if (v22)
    {
      sub_1BA10F728(&v21);
    }
  }

  sub_1B9F0A534(v23, &v21);
  v11 = objc_allocWithZone(MEMORY[0x1E696C0C0]);

  v12 = v10;

  v13 = [v11 initWithHealthStore_];
  v14 = [objc_allocWithZone(MEMORY[0x1E696BEF8]) init];
  sub_1B9F0A534(&v21, v20);
  type metadata accessor for HealthAppInteractionAnalyticEvent();
  v15 = swift_allocObject();
  v16 = a2;
  v17 = v12;
  v18 = v16;
  sub_1BA10F194(v17, v18, v5, v6, v7, v8, v20, v13, v17, v14, v18, v15);

  __swift_destroy_boxed_opaque_existential_1(&v21);
  sub_1B9F21D90();

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_1BA10F728(uint64_t a1)
{
  sub_1B9F21BF8(0, &unk_1EDC6ADB0, sub_1B9F6ABD4, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA10F7B4(uint64_t a1, uint64_t a2)
{
  sub_1B9F21BF8(0, &unk_1EDC6ADB0, sub_1B9F6ABD4, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA10F848()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEC100 = result;
  *algn_1EBBEC108 = v1;
  return result;
}

id sub_1BA10F908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1BA4A11C8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI52SummarySharingOnboardingInvitationSentViewController_selectedContactPhotoPublisher] = a2;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI52SummarySharingOnboardingInvitationSentViewController_selectionFlowContext] = a3;
  v12 = *a1;

  v26 = v12;
  sub_1BA4A7A18();
  LocalizedGeminiString(_:defaultValue:comment:options:)("ONBOARDING_INVITATION_SENT_SUBTITLE", 35, 2, 0, 0xE000000000000000, "", 0, 2, v11);
  (*(v9 + 8))(v11, v8);
  if (qword_1EBBE8370 != -1)
  {
    swift_once();
  }

  v13 = sub_1BA4A6758();
  sub_1B9F2EAC0();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BA4B5480;
  v15 = sub_1BA1FAFCC();
  v17 = v16;
  *(v14 + 56) = MEMORY[0x1E69E6158];
  *(v14 + 64) = sub_1B9F1BE20();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  sub_1BA4A6768();

  v18 = sub_1BA4A6758();

  v19 = type metadata accessor for SummarySharingOnboardingInvitationSentViewController();
  v27.receiver = v4;
  v27.super_class = v19;
  v20 = objc_msgSendSuper2(&v27, sel_initWithTitle_detailText_icon_contentLayout_, v13, v18, 0, 3);

  v21 = v20;
  sub_1BA10FC44();
  v22 = sub_1BA4A6758();

  v23 = [v21 navigationItem];
  [v23 setHidesBackButton_];

  v29 = *(a1 + 8);
  sub_1B9F0DBB4(&v29, &qword_1EDC6E410);
  v28 = *(a1 + 24);
  sub_1B9F0DBB4(&v28, &qword_1EDC6E410);

  return v21;
}

uint64_t sub_1BA10FC44()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDC84A30;
  v7 = sub_1BA4A6758();
  v8 = [objc_opt_self() imageNamed:v7 inBundle:v6];

  if (v8)
  {
    v19 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI52SummarySharingOnboardingInvitationSentViewController_selectedContactPhotoPublisher];
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = 0x4054000000000000;
    v9[4] = v1;
    sub_1BA1107A8();
    sub_1BA11085C();

    v10 = v8;
    v11 = v1;
    sub_1BA4A4F88();
  }

  else
  {
    sub_1BA4A3DD8();
    v12 = sub_1BA4A3E88();
    v13 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1B9F0B82C(0xD000000000000034, 0x80000001BA4BF200, &v19);
      _os_log_impl(&dword_1B9F07000, v12, v13, "[%s] Failed to create stitched image; using default contact image", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v19 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI52SummarySharingOnboardingInvitationSentViewController_selectedContactPhotoPublisher];
    *(swift_allocObject() + 16) = v1;
    sub_1BA1107A8();
    sub_1BA11085C();
    v16 = v1;

    sub_1BA4A4F88();
  }
}

uint64_t sub_1BA10FFDC()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDC84A30;
  v7 = sub_1BA4A6758();
  v8 = [objc_opt_self() imageNamed:v7 inBundle:v6];

  if (v8)
  {
    v19 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI46SummarySharingInvitationAcceptedViewController_selectedContactPhotoPublisher];
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = 0x4054000000000000;
    v9[4] = v1;
    sub_1BA1107A8();
    sub_1BA11085C();

    v10 = v8;
    v11 = v1;
    sub_1BA4A4F88();
  }

  else
  {
    sub_1BA4A3DD8();
    v12 = sub_1BA4A3E88();
    v13 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1B9F0B82C(0xD00000000000002ELL, 0x80000001BA4EBB70, &v19);
      _os_log_impl(&dword_1B9F07000, v12, v13, "[%s] Failed to create stitched image; using default contact image", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v19 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI46SummarySharingInvitationAcceptedViewController_selectedContactPhotoPublisher];
    *(swift_allocObject() + 16) = v1;
    sub_1BA1107A8();
    sub_1BA11085C();
    v16 = v1;

    sub_1BA4A4F88();
  }
}

id sub_1BA11037C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  memset(v9, 0, sizeof(v9));
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 11;
  v8 = 7;

  sub_1B9FEEC64(ObjectType, v9, 0, &v4);

  sub_1B9FF3BFC(v4, v5, v6, v7);
  sub_1B9F0DBB4(v9, &qword_1EDC6E300);
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 12;
  v8 = 0;

  sub_1B9FEF9F4(v1, &v4);

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

id sub_1BA110520()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummarySharingOnboardingInvitationSentViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA1105C4(void *a1, id a2, void *a3, double a4)
{
  [a2 size];
  v9 = v8;
  [a2 size];
  v11 = v10;
  [a2 size];
  v13 = v12 * 0.5 - a4 * 0.5;
  [a2 size];
  v15 = v14;
  [a2 size];
  v17 = v16;
  [a2 scale];
  v19 = v18;
  v26.width = v9;
  v26.height = v11;
  UIGraphicsBeginImageContextWithOptions(v26, 0, v19);
  [a1 drawInRect_];
  [a2 drawInRect:0 blendMode:0.0 alpha:{0.0, v15, v17, 1.0}];
  v20 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v21 = [a3 headerView];
  v22 = v20;
  if (!v20)
  {
    v22 = a1;
  }

  v23 = v20;
  [v21 setIcon:v22 accessibilityLabel:0];

  v24 = [a3 headerView];
  [v24 setAllowFullWidthIcon_];
}

void sub_1BA1107A8()
{
  if (!qword_1EBBEC120)
  {
    sub_1BA110810();
    v0 = sub_1BA4A4D18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEC120);
    }
  }
}

unint64_t sub_1BA110810()
{
  result = qword_1EDC6E370;
  if (!qword_1EDC6E370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC6E370);
  }

  return result;
}

unint64_t sub_1BA11085C()
{
  result = qword_1EBBEE650;
  if (!qword_1EBBEE650)
  {
    sub_1BA1107A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE650);
  }

  return result;
}

uint64_t sub_1BA1108BC()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v4 = sub_1BA4A3E88();
  v5 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1B9F0B82C(0xD000000000000034, 0x80000001BA4BF200, &v10);
    _os_log_impl(&dword_1B9F07000, v4, v5, "[%s] Finished createInvitationSentIcon stream", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1BFAF43A0](v7, -1, -1);
    MEMORY[0x1BFAF43A0](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1BA110A88()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v4 = sub_1BA4A3E88();
  v5 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1B9F0B82C(0xD00000000000002ELL, 0x80000001BA4EBB70, &v10);
    _os_log_impl(&dword_1B9F07000, v4, v5, "[%s] Finished createInvitationSentIcon stream", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1BFAF43A0](v7, -1, -1);
    MEMORY[0x1BFAF43A0](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t StackedItemModel.baseIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t StackedItemModel.baseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void __swiftcall StackedItemModel.init(title:body:accessibilityIdentifierPrefix:)(HealthExperienceUI::StackedItemModel *__return_ptr retstr, Swift::String title, Swift::String_optional body, Swift::String_optional accessibilityIdentifierPrefix)
{
  object = accessibilityIdentifierPrefix.value._object;
  countAndFlagsBits = accessibilityIdentifierPrefix.value._countAndFlagsBits;
  v6 = body.value._object;
  v7 = body.value._countAndFlagsBits;
  v8 = title._object;
  v9 = title._countAndFlagsBits;
  sub_1B9F1C048(0, &qword_1EDC6E330);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BA4B5480;
  v12 = 0x4964656B63617453;
  if (object)
  {
    v12 = countAndFlagsBits;
  }

  v13 = 0xEB000000006D6574;
  if (object)
  {
    v13 = object;
  }

  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  v14 = sub_1BA4A6AE8();

  v15 = HKUIJoinStringsForAutomationIdentifier();

  if (v15)
  {
    v16 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  retstr->title._countAndFlagsBits = v9;
  retstr->title._object = v8;
  retstr->body.value._countAndFlagsBits = v7;
  retstr->body.value._object = v6;
  retstr->baseIdentifier.value._countAndFlagsBits = v16;
  retstr->baseIdentifier.value._object = v18;
}

uint64_t sub_1BA110DC4(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void *OnboardingStackedItemViewController.__allocating_init(title:detailText:stackedItems:initiallyVisibleNumberOfItems:shouldNextButtonDisplayContinueOnLastItem:shouldUseDynamicHorizontalMargins:icon:)(int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, void *a9)
{
  v15 = objc_allocWithZone(v9);
  v16 = v15;
  v17 = OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_nextIndexToAnimate;
  *&v15[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_nextIndexToAnimate] = 1;
  v15[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_isAnimating] = 0;
  v18 = MEMORY[0x1E69E7CC0];
  *&v15[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_backgroundViews] = MEMORY[0x1E69E7CC0];
  *&v15[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_contentViewBottomConstraint] = 0;
  *&v15[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_titleToItemsTopConstraint] = 0;
  *&v15[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_horizontalConstraints] = v18;
  *&v15[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_stackedItems] = a5;
  v15[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_shouldNextButtonDisplayContinueOnLastItem] = a7;
  v15[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_shouldUseDynamicHorizontalMargins] = a8;
  v19 = *(a5 + 16);
  if (v19 >= a6)
  {
    v20 = a6;
  }

  else
  {
    v20 = *(a5 + 16);
  }

  if (a6 >= 0)
  {
    v19 = v20;
  }

  *&v15[v17] = v19;
  *&v15[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_nextButton] = 0;
  *&v15[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_doneButton] = 0;
  *&v15[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_cancelButton] = 0;
  v21 = sub_1BA4A6758();

  if (a4)
  {
    v22 = sub_1BA4A6758();
  }

  else
  {
    v22 = 0;
  }

  v28.receiver = v16;
  v28.super_class = type metadata accessor for OnboardingViewControllerWithNextButton();
  v23 = objc_msgSendSuper2(&v28, sel_initWithTitle_detailText_icon_contentLayout_, v21, v22, a9, 3);

  v24 = v23;
  v25 = [v24 headerView];
  LODWORD(v26) = 1036831949;
  [v25 setTitleHyphenationFactor_];

  (*((*MEMORY[0x1E69E7D40] & *v24) + 0xB8))(0);
  return v24;
}

void *OnboardingStackedItemViewController.init(title:detailText:stackedItems:initiallyVisibleNumberOfItems:shouldNextButtonDisplayContinueOnLastItem:shouldUseDynamicHorizontalMargins:icon:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, void *a9)
{
  v11 = OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_nextIndexToAnimate;
  *&v9[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_nextIndexToAnimate] = 1;
  v9[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_isAnimating] = 0;
  v12 = MEMORY[0x1E69E7CC0];
  *&v9[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_backgroundViews] = MEMORY[0x1E69E7CC0];
  *&v9[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_contentViewBottomConstraint] = 0;
  *&v9[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_titleToItemsTopConstraint] = 0;
  *&v9[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_horizontalConstraints] = v12;
  *&v9[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_stackedItems] = a5;
  v9[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_shouldNextButtonDisplayContinueOnLastItem] = a7;
  v9[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_shouldUseDynamicHorizontalMargins] = a8;
  v13 = *(a5 + 16);
  if (v13 >= a6)
  {
    v14 = a6;
  }

  else
  {
    v14 = *(a5 + 16);
  }

  if (a6 >= 0)
  {
    v13 = v14;
  }

  *&v9[v11] = v13;
  *&v9[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_nextButton] = 0;
  *&v9[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_doneButton] = 0;
  *&v9[OBJC_IVAR____TtC18HealthExperienceUI38OnboardingViewControllerWithNextButton_cancelButton] = 0;
  v15 = sub_1BA4A6758();

  if (a4)
  {
    v16 = sub_1BA4A6758();
  }

  else
  {
    v16 = 0;
  }

  v22.receiver = v9;
  v22.super_class = type metadata accessor for OnboardingViewControllerWithNextButton();
  v17 = objc_msgSendSuper2(&v22, sel_initWithTitle_detailText_icon_contentLayout_, v15, v16, a9, 3);

  v18 = v17;
  v19 = [v18 headerView];
  LODWORD(v20) = 1036831949;
  [v19 setTitleHyphenationFactor_];

  (*((*MEMORY[0x1E69E7D40] & *v18) + 0xB8))(0);
  return v18;
}

void sub_1BA111214()
{
  v69.receiver = v0;
  v69.super_class = type metadata accessor for OnboardingStackedItemViewController();
  objc_msgSendSuper2(&v69, sel_viewDidLoad);
  v1 = [v0 headerView];
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_stackedItems];
  v67 = 0;
  v68 = 0;
  v66 = v2;
  v54 = OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_backgroundViews;
  v55 = v0;
  v53 = OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_shouldUseDynamicHorizontalMargins;
  v52 = OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_titleToItemsTopConstraint;
  v56 = OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_nextIndexToAnimate;

  sub_1BA09EB20(&v61);
  v3 = v63;
  if (v63)
  {
    v4 = v62;
    v60 = v61;
    v5 = v64;
    v6 = v65;
    while (1)
    {
      v58 = sub_1BA4A6758();
      if (v6)
      {
        v61 = 0x656C7469542ELL;
        v62 = 0xE600000000000000;

        sub_1BA4A69D8();
        sub_1BA4A6908();
        v12 = sub_1BA4A6758();

        v59 = v1;
        if (v5)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v12 = 0;
        v59 = v1;
        if (v5)
        {
LABEL_11:

          v57 = sub_1BA4A6758();

          if (v6)
          {
            goto LABEL_12;
          }

          goto LABEL_15;
        }
      }

      v57 = 0;
      if (v6)
      {
LABEL_12:
        v61 = 0x79646F422ELL;
        v62 = 0xE500000000000000;

        sub_1BA4A69D8();
        sub_1BA4A6908();
        v13 = v60;
        sub_1BA1127AC(v60, v4, v3);
        v6 = sub_1BA4A6758();

        goto LABEL_16;
      }

LABEL_15:
      v13 = v60;
      sub_1BA1127AC(v60, v4, v3);
LABEL_16:
      v14 = objc_opt_self();
      v15 = v13 + 1;
      v16 = v55;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      if (v15 < 0xFFFFFFFF80000000)
      {
        goto LABEL_46;
      }

      if (v15 > 0x7FFFFFFF)
      {
        goto LABEL_47;
      }

      v17 = v13;
      v18 = [v14 createTitledListItem:v58 titleAccessibilityIdentifier:v12 listBody:v57 bodyAccessibilityIdentifier:v6 itemNumber:?];

      swift_beginAccess();
      v1 = v18;
      MEMORY[0x1BFAF1510]();
      if (*((*(v55 + v54) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v55 + v54) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
      swift_endAccess();
      v19 = [v55 contentView];
      [v19 addSubview_];

      v20 = [v55 contentView];
      v21 = *(v55 + v53);
      if (v21 == 1 && (v22 = [v55 traitCollection], v23 = sub_1BA4A7368(), v22, (v23 - 1) > 1))
      {
        v25 = 88.0;
      }

      else
      {
        HKHealthUIBuddyDirectionalEdgeInsets();
        v25 = v24;
      }

      v28 = sub_1BA111BEC(v20, v25);

      swift_beginAccess();
      sub_1B9F73B50(v28);
      swift_endAccess();
      v29 = v21 ^ 1;
      v30 = 10.0;
      if (v17)
      {
        v29 = 1;
      }

      if ((v29 & 1) == 0)
      {
        v31 = [v55 traitCollection];
        v32 = sub_1BA4A7368();

        if ((v32 - 1) >= 2)
        {
          v30 = 20.0;
        }

        else
        {
          v30 = 10.0;
        }
      }

      v7 = [v1 topAnchor];
      v8 = [v59 bottomAnchor];
      v9 = [v7 constraintEqualToAnchor:v8 constant:v30];

      [v9 setActive_];
      if (!v17)
      {
        v26 = *(v55 + v52);
        *(v55 + v52) = v9;
        v27 = v9;
      }

      if (v17 >= *(v55 + v56))
      {
        v10 = 0.0;
      }

      else
      {
        v10 = 1.0;
      }

      [v1 setAlpha_];

      sub_1BA09EB20(&v61);
      v11 = v1;
      v4 = v62;
      v60 = v61;
      v3 = v63;
      v5 = v64;
      v6 = v65;
      if (!v63)
      {
        goto LABEL_32;
      }
    }
  }

  v11 = v1;
LABEL_32:

  v12 = v54;
  v16 = v55;
  v13 = v11;
  if (*(v55 + OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_shouldNextButtonDisplayContinueOnLastItem) != 1)
  {
    goto LABEL_37;
  }

  v33 = *(v55 + v56);
  swift_beginAccess();
  v34 = *(v55 + v54);
  if (v34 >> 62)
  {
    if (v33 < sub_1BA4A7CC8())
    {
      goto LABEL_37;
    }
  }

  else if (v33 < *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_37;
  }

  if (qword_1EDC5E100 != -1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    v51 = 0xE000000000000000;
    v35 = sub_1BA4A1318();
    (*((*MEMORY[0x1E69E7D40] & *v16) + 0xD0))(v35);

LABEL_37:
    v36 = *(v16 + v56);
    v6 = v36 - 1;
    if (__OFSUB__(v36, 1))
    {
      break;
    }

    swift_beginAccess();
    v37 = *&v12[v16];
    if (v37 >> 62)
    {
      goto LABEL_49;
    }

    if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_50;
    }

LABEL_40:
    if ((v6 & 0x8000000000000000) != 0)
    {
      goto LABEL_50;
    }

    v38 = *&v12[v16];
    if ((v38 & 0xC000000000000001) != 0)
    {

      v39 = MEMORY[0x1BFAF2860](v6, v38);

      goto LABEL_44;
    }

    if (v6 < *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v39 = *(v38 + 8 * v6 + 32);
LABEL_44:
      v40 = [v16 contentView];
      v41 = [v40 bottomAnchor];

      v42 = [v39 bottomAnchor];
      v43 = [v41 constraintEqualToAnchor_];

      goto LABEL_51;
    }

    __break(1u);
LABEL_59:
    swift_once();
  }

LABEL_48:
  __break(1u);
LABEL_49:
  if (sub_1BA4A7CC8())
  {
    goto LABEL_40;
  }

LABEL_50:
  v44 = [v16 contentView];
  v42 = [v44 bottomAnchor];

  v45 = [v16 headerView];
  v39 = [v45 bottomAnchor];

  v43 = [v42 constraintEqualToAnchor_];
LABEL_51:

  v46 = *(v16 + OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_contentViewBottomConstraint);
  *(v16 + OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_contentViewBottomConstraint) = v43;
  v47 = v43;

  if (v47)
  {
    [v47 setActive_];

    if (*(v16 + v53) == 1)
    {
      sub_1B9F7A684();
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1BA4B5480;
      v49 = sub_1BA4A6588();
      v50 = sub_1BA111B94();
      *(v48 + 32) = v49;
      *(v48 + 40) = v50;
      MEMORY[0x1BFAF1C40](v48, sel_widthDesignationDidChangeWithTraitEnvironment_previousTraitCollection_);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1BA111B94()
{
  result = qword_1EDC5E8D0;
  if (!qword_1EDC5E8D0)
  {
    sub_1BA4A6588();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E8D0);
  }

  return result;
}

uint64_t sub_1BA111BEC(void *a1, double a2)
{
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B7510;
  v6 = [v2 leadingAnchor];
  v7 = [a1 safeAreaLayoutGuide];
  v8 = [v7 leadingAnchor];

  v9 = [v6 constraintEqualToAnchor:v8 constant:a2];
  *(v5 + 32) = v9;
  v10 = [a1 safeAreaLayoutGuide];
  v11 = [v10 trailingAnchor];

  v12 = [v2 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:a2];

  *(v5 + 40) = v13;
  v14 = objc_opt_self();
  sub_1B9F740B0();
  v15 = sub_1BA4A6AE8();
  [v14 activateConstraints_];

  return v5;
}

void sub_1BA111DEC()
{
  v2 = OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_nextIndexToAnimate;
  v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_nextIndexToAnimate);
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_backgroundViews;
  swift_beginAccess();
  v5 = *(v4 + v0);
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = v6 - 1;
    if (!__OFSUB__(v6, 1))
    {
      goto LABEL_3;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v34 = sub_1BA4A7CC8();
  v7 = v34 - 1;
  if (__OFSUB__(v34, 1))
  {
    goto LABEL_23;
  }

LABEL_3:
  if (v7 < v3)
  {
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1E8))();
    return;
  }

  if ((*(v0 + OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_isAnimating) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_isAnimating) = 1;
    v3 = *(v0 + v2);
    v1 = *(v4 + v0);
    v35 = v4;
    if ((v1 & 0xC000000000000001) == 0)
    {
      if (v3 < 0)
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v3 = *(v1 + v3 + 4);
LABEL_10:
      v8 = swift_allocObject();
      *(v8 + 16) = v3;
      v9 = objc_allocWithZone(MEMORY[0x1E69DD278]);
      v42 = sub_1BA1127FC;
      v43 = v8;
      aBlock = MEMORY[0x1E69E9820];
      v39 = 1107296256;
      v40 = sub_1B9F0B040;
      v41 = &block_descriptor_25;
      v10 = _Block_copy(&aBlock);
      v37 = v3;

      v1 = [v9 initWithDuration:0 curve:v10 animations:0.5];
      _Block_release(v10);
      v11 = swift_allocObject();
      *(v11 + 16) = v0;
      v42 = sub_1BA112810;
      v43 = v11;
      aBlock = MEMORY[0x1E69E9820];
      v39 = 1107296256;
      v40 = sub_1BA11239C;
      v41 = &block_descriptor_6_1;
      v12 = _Block_copy(&aBlock);
      v4 = v0;

      [v1 addCompletion_];
      _Block_release(v12);
      [v1 startAnimation];
      v13 = *(v0 + v2);
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (!v14)
      {
        v36 = v2;
        *(v0 + v2) = v15;
        sub_1B9F1C048(0, &qword_1EDC6B400);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_1BA4B5470;
        v17 = OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_contentViewBottomConstraint;
        v18 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_contentViewBottomConstraint);
        if (v18)
        {
          v19 = v16;
          v20 = objc_opt_self();
          *(v19 + 32) = v18;
          sub_1B9F740B0();
          v21 = v18;
          v22 = sub_1BA4A6AE8();

          [v20 deactivateConstraints_];

          v23 = [v4 contentView];
          v24 = [v23 bottomAnchor];

          v25 = [v37 bottomAnchor];
          v26 = [v24 constraintEqualToAnchor_];

          v27 = *(v4 + v17);
          *(v4 + v17) = v26;

          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_1BA4B5470;
          v29 = *(v4 + v17);
          if (v29)
          {
            *(v28 + 32) = v29;
            v30 = v29;
            v31 = sub_1BA4A6AE8();

            [v20 activateConstraints_];

            if (*(v4 + OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_shouldNextButtonDisplayContinueOnLastItem) != 1)
            {
              goto LABEL_19;
            }

            v3 = *(v0 + v36);
            v32 = *(v35 + v0);
            if (!(v32 >> 62))
            {
              if (v3 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
LABEL_16:
                if (qword_1EDC5E100 != -1)
                {
                  swift_once();
                }

                v33 = sub_1BA4A1318();
                (*((*MEMORY[0x1E69E7D40] & *v4) + 0xD0))(v33);
              }

LABEL_19:
              sub_1BA112450(v37);

              return;
            }

LABEL_28:
            if (v3 >= sub_1BA4A7CC8())
            {
              goto LABEL_16;
            }

            goto LABEL_19;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }

      goto LABEL_26;
    }

LABEL_24:

    v3 = MEMORY[0x1BFAF2860](v3, v1);

    goto LABEL_10;
  }
}

uint64_t sub_1BA11239C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1BA112450(void *a1)
{
  v3 = [a1 superview];
  if (v3)
  {
    v18 = v3;
    v4 = [v3 superview];
    if (v4)
    {
      v5 = v4;
      v6 = [v1 buttonTray];
      [v6 frame];
      v8 = v7;

      [a1 frame];
      [v18 convertPoint:v5 toCoordinateSpace:?];
      v10 = v9;
      [a1 frame];
      v12 = v10 + v11;
      v13 = [v1 scrollView];
      [v13 bounds];
      v15 = v14;

      v16 = v12 - (v15 - v8);
      if (v16 > 0.0)
      {
        v17 = [v1 scrollView];
        [v17 setContentOffset:1 animated:{0.0, v16}];
      }
    }
  }
}

uint64_t sub_1BA11268C()
{
}

id OnboardingStackedItemViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingStackedItemViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA1127AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_1BA1128A4()
{
  v1 = [v0 traitCollection];
  v2 = sub_1BA4A7368();

  if (v2 != sub_1BA4A7368())
  {
    v3 = OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_horizontalConstraints;
    swift_beginAccess();
    v4 = *&v30[v3];
    if (v4 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BA4A7CC8())
    {
      v6 = OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_shouldUseDynamicHorizontalMargins;

      v7 = &selRef_preferredContentSizeCategory;
      if (!i)
      {
        break;
      }

      v8 = 0;
      v9 = v4 & 0xC000000000000001;
      v10 = v4 & 0xFFFFFFFFFFFFFF8;
      v29 = v4 & 0xC000000000000001;
      while (1)
      {
        if (v9)
        {
          v13 = MEMORY[0x1BFAF2860](v8, v4);
        }

        else
        {
          if (v8 >= *(v10 + 16))
          {
            goto LABEL_23;
          }

          v13 = *(v4 + 8 * v8 + 32);
        }

        v14 = v13;
        v15 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v30[v6] == 1 && (v16 = v6, v17 = [v30 traitCollection], v18 = v4, v19 = i, v20 = v7, v21 = sub_1BA4A7368(), v17, v6 = v16, v9 = v29, v22 = v21 - 1, v7 = v20, i = v19, v4 = v18, v22 > 1))
        {
          v12 = 88.0;
        }

        else
        {
          HKHealthUIBuddyDirectionalEdgeInsets();
          v12 = v11;
        }

        [v14 v7[69]];

        ++v8;
        if (v15 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_16:

    v23 = *&v30[OBJC_IVAR____TtC18HealthExperienceUI35OnboardingStackedItemViewController_titleToItemsTopConstraint];
    if (v23)
    {
      v24 = v30[v6];
      v25 = v23;
      v26 = 10.0;
      if (v24 == 1)
      {
        v27 = [v30 traitCollection];
        v28 = sub_1BA4A7368();

        v26 = 20.0;
        if ((v28 - 1) < 2)
        {
          v26 = 10.0;
        }
      }

      [v25 v7[69]];
    }
  }
}

id sub_1BA112B14()
{
  type metadata accessor for PublisherImageView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 clearColor];
  [v2 setBackgroundColor_];

  [v2 setContentMode_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [v2 layer];
  v5 = [v1 blackColor];
  v6 = [v5 CGColor];

  [v4 setShadowColor_];
  v7 = [v2 layer];
  LODWORD(v8) = 1041865114;
  [v7 setShadowOpacity_];

  v9 = [v2 layer];
  [v9 setShadowOffset_];

  v10 = [v2 layer];
  [v10 setShadowRadius_];

  return v2;
}

id sub_1BA112CE0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_1BA112CEC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1B9F0ADF8(0, &qword_1EBBEB060);
    v4 = sub_1BA4A6B08();
  }

  v6 = a3;
  v5(v4, a3);
}

double sub_1BA112D90@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EBBE8848 != -1)
  {
    swift_once();
  }

  v9[4] = xmmword_1EDC67D78;
  v9[5] = *&qword_1EDC67D88;
  v9[6] = xmmword_1EDC67D98;
  v9[7] = unk_1EDC67DA8;
  v9[0] = xmmword_1EDC67D38;
  v9[1] = *&qword_1EDC67D48;
  v9[2] = xmmword_1EDC67D58;
  v9[3] = *&qword_1EDC67D68;
  v16 = qword_1EDC67D48;
  v15 = xmmword_1EDC67D38;
  v2 = unk_1EDC67D50;
  v4 = xmmword_1EDC67D58;
  v3 = qword_1EDC67D68;
  v14 = qword_1EDC67DB0;
  v12 = unk_1EDC67D90;
  v13 = *(&xmmword_1EDC67D98 + 8);
  v10 = unk_1EDC67D70;
  v11 = *(&xmmword_1EDC67D78 + 8);
  sub_1B9F1D9A4(v9, &v8);
  sub_1B9F1DA18(v2, v4, *(&v4 + 1), v3);
  *a1 = v15;
  *(a1 + 16) = v16;
  v5 = v11;
  *(a1 + 56) = v10;
  *(a1 + 72) = v5;
  v6 = v13;
  *(a1 + 88) = v12;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 104) = v6;
  *(a1 + 120) = v14;
  sub_1B9F1DA18(*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 96) = 0x4050800000000000;
  return result;
}

uint64_t sub_1BA112ED4(void *a1, void *a2)
{
  v3 = v2;
  v41 = a1;
  v39 = *v3;
  v5 = sub_1BA4A1798();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI26SettingUpSharingDataSource_sharingAuthorizationCancellable) = 0;
  v9 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  v10 = objc_allocWithZone(MEMORY[0x1E696C430]);
  v38 = v9;
  v42 = a2;
  v11 = [v10 initWithHealthStore:v9 recipientIdentifier:a2];
  v40 = v3;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI26SettingUpSharingDataSource_sharingAuthorizationStore) = v11;
  if (qword_1EBBE8380 != -1)
  {
    swift_once();
  }

  v12 = *algn_1EBBEC188;
  v37 = qword_1EBBEC180;
  v43 = 0xD000000000000014;
  v44 = 0x80000001BA4EB850;

  sub_1BA4A1788();
  v13 = sub_1BA4A1748();
  v15 = v14;
  v16 = *(v6 + 8);
  v16(v8, v5);
  MEMORY[0x1BFAF1350](v13, v15);

  v17 = v43;
  v36 = v44;
  v43 = type metadata accessor for PlaceholderTextCollectionViewCell();
  sub_1BA10E8A8();
  v18 = sub_1BA4A6808();
  v19 = v5;
  v21 = v20;
  sub_1B9FF6758();
  inited = swift_initStackObject();
  v35 = xmmword_1BA4B5480;
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1B9F28360();
  v23 = swift_allocObject();
  *(v23 + 16) = v35;
  *(v23 + 56) = &type metadata for PlaceholderTextItem;
  *(v23 + 64) = sub_1B9FE9528();
  v24 = swift_allocObject();
  *(v23 + 32) = v24;
  v26 = v36;
  v25 = v37;
  *(v24 + 16) = v17;
  *(v24 + 24) = v26;
  *(v24 + 32) = v18;
  *(v24 + 40) = v21;
  *(v24 + 48) = v25;
  *(v24 + 56) = v12;
  *(v24 + 64) = 0;
  sub_1BA4A1788();
  v27 = sub_1BA4A1748();
  v29 = v28;
  v16(v8, v19);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v31 = Array<A>.identifierToIndexDict()(v30);

  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = v23;
  *(inited + 56) = v31;
  *(inited + 64) = v27;
  *(inited + 72) = v29;
  v32 = swift_allocObject();
  *(v32 + 16) = v39;
  v33 = sub_1B9F1DAFC(inited, 1, sub_1BA10E8F0, v32);

  sub_1BA113270();

  return v33;
}

uint64_t sub_1BA113270()
{
  v1 = v0;
  v22 = *v0;
  sub_1B9F3E26C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1145D8();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA114738();
  v21 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1E695BED0];
  sub_1BA11488C(0, &qword_1EBBEC1A8, MEMORY[0x1E695BED0]);
  sub_1BA1146F4(&qword_1EBBEC1B8, &qword_1EBBEC1A8, v14);

  sub_1BA4A4EC8();
  sub_1BA11482C(&qword_1EBBEC1C8, sub_1BA1145D8);
  v15 = sub_1BA4A4F98();
  (*(v7 + 8))(v9, v6);
  v24 = v15;
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v16 = sub_1BA4A7308();
  v23 = v16;
  v17 = sub_1BA4A72A8();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  sub_1B9F3DC80();
  sub_1BA4A50A8();
  sub_1B9F3E2C4(v4);

  *(swift_allocObject() + 16) = v22;
  swift_allocObject();
  swift_weakInit();
  sub_1BA11482C(&qword_1EBBEC1D0, sub_1BA114738);
  v18 = v21;
  v19 = sub_1BA4A5008();

  (*(v11 + 8))(v13, v18);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI26SettingUpSharingDataSource_sharingAuthorizationCancellable) = v19;
}

uint64_t sub_1BA1136A4(void **a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - v7;
  v9 = *a1;
  if (*a1)
  {
    sub_1BA4A3DD8();
    v10 = v9;
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v31 = v14;
      *v13 = 136315394;
      v15 = sub_1BA4A85D8();
      v17 = sub_1B9F0B82C(v15, v16, &v31);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      v30 = v9;
      v18 = v9;
      sub_1B9F0D950(0, &qword_1EDC6E310);
      v19 = sub_1BA4A6828();
      v21 = sub_1B9F0B82C(v19, v20, &v31);

      *(v13 + 14) = v21;
      _os_log_impl(&dword_1B9F07000, v11, v12, "%s Failed to update placeholder text: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v14, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    return (*(v3 + 8))(v8, v2);
  }

  else
  {
    sub_1BA4A3DD8();
    v23 = sub_1BA4A3E88();
    v24 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31 = v26;
      *v25 = 136315138;
      v27 = sub_1BA4A85D8();
      v29 = sub_1B9F0B82C(v27, v28, &v31);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_1B9F07000, v23, v24, "%s Successfully updated placeholder text", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1BFAF43A0](v26, -1, -1);
      MEMORY[0x1BFAF43A0](v25, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1BA1139CC(void *a1)
{
  v2 = sub_1BA4A1798();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 >> 62)
  {
    if (sub_1BA4A7CC8())
    {
      goto LABEL_3;
    }
  }

  else if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v38 = result;
    if (qword_1EBBE8380 != -1)
    {
      swift_once();
    }

    v7 = *algn_1EBBEC188;
    v36 = qword_1EBBEC180;
    v39 = 0xD000000000000014;
    v40 = 0x80000001BA4EB850;

    sub_1BA4A1788();
    v8 = sub_1BA4A1748();
    v10 = v9;
    v11 = *(v3 + 8);
    v11(v5, v2);
    MEMORY[0x1BFAF1350](v8, v10);

    v37 = v2;
    v12 = v39;
    v13 = v40;
    v39 = type metadata accessor for PlaceholderTextCollectionViewCell();
    sub_1BA10E8A8();
    v14 = sub_1BA4A6808();
    v16 = v15;
    sub_1B9FF6758();
    inited = swift_initStackObject();
    v35 = xmmword_1BA4B5480;
    *(inited + 16) = xmmword_1BA4B5480;
    sub_1B9F28360();
    v18 = swift_allocObject();
    *(v18 + 16) = v35;
    *(v18 + 56) = &type metadata for PlaceholderTextItem;
    *(v18 + 64) = sub_1B9FE9528();
    v19 = swift_allocObject();
    *(v18 + 32) = v19;
    *(v19 + 16) = v12;
    *(v19 + 24) = v13;
    *(v19 + 32) = v14;
    *(v19 + 40) = v16;
    *(v19 + 48) = v36;
    *(v19 + 56) = v7;
    *(v19 + 64) = 1;
    goto LABEL_12;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v38 = result;
  if (qword_1EBBE8378 != -1)
  {
    swift_once();
  }

  v20 = *algn_1EBBEC178;
  v36 = qword_1EBBEC170;
  v39 = 0xD000000000000014;
  v40 = 0x80000001BA4EB850;

  sub_1BA4A1788();
  v21 = sub_1BA4A1748();
  v23 = v22;
  v11 = *(v3 + 8);
  v11(v5, v2);
  MEMORY[0x1BFAF1350](v21, v23);

  v37 = v2;
  v24 = v39;
  v25 = v40;
  v39 = type metadata accessor for PlaceholderTextCollectionViewCell();
  sub_1BA10E8A8();
  v26 = sub_1BA4A6808();
  v28 = v27;
  sub_1B9FF6758();
  inited = swift_initStackObject();
  v35 = xmmword_1BA4B5480;
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1B9F28360();
  v18 = swift_allocObject();
  *(v18 + 16) = v35;
  *(v18 + 56) = &type metadata for PlaceholderTextItem;
  *(v18 + 64) = sub_1B9FE9528();
  v29 = swift_allocObject();
  *(v18 + 32) = v29;
  *(v29 + 16) = v24;
  *(v29 + 24) = v25;
  *(v29 + 32) = v26;
  *(v29 + 40) = v28;
  *(v29 + 48) = v36;
  *(v29 + 56) = v20;
  *(v29 + 64) = 0;
LABEL_12:
  sub_1BA4A1788();
  v30 = sub_1BA4A1748();
  v32 = v31;
  v11(v5, v37);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v34 = Array<A>.identifierToIndexDict()(v33);

  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = v18;
  *(inited + 56) = v34;
  *(inited + 64) = v30;
  *(inited + 72) = v32;
  sub_1BA0E7F10(inited, 1);

  swift_setDeallocating();
  return sub_1B9FF7224(inited + 32);
}

uint64_t sub_1BA113E9C@<X0>(uint64_t *a1@<X8>)
{
  swift_allocObject();
  swift_weakInit();
  v2 = MEMORY[0x1E695C028];
  sub_1BA11488C(0, &qword_1EBBEC1D8, MEMORY[0x1E695C028]);
  swift_allocObject();
  sub_1BA4A4EA8();
  sub_1BA1146F4(&qword_1EBBEC1E0, &qword_1EBBEC1D8, v2);
  v3 = sub_1BA4A4F98();

  *a1 = v3;
  return result;
}

void sub_1BA113FA8(void (*a1)(void **), uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC18HealthExperienceUI26SettingUpSharingDataSource_sharingAuthorizationStore);
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1BA00CD30;
    *(v7 + 24) = v4;
    v15 = sub_1BA114968;
    v16 = v7;
    aBlock = MEMORY[0x1E69E9820];
    v12 = 1107296256;
    v13 = sub_1BA112CEC;
    v14 = &block_descriptor_26;
    v8 = _Block_copy(&aBlock);

    v9 = v6;

    [v9 fetchSharingAuthorizationsWithCompletion_];
    _Block_release(v8);
  }

  else
  {

    sub_1BA114914();
    v10 = swift_allocError();
    aBlock = v10;
    LOBYTE(v12) = 1;
    a1(&aBlock);
  }
}

uint64_t sub_1BA11415C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

void sub_1BA11419C(void *a1, id a2, void (*a3)(id, uint64_t))
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

uint64_t sub_1BA114274()
{
}

uint64_t sub_1BA1142B4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1BA114394()
{
  sub_1BA1142B4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SettingUpSharingDataSource()
{
  result = qword_1EBBEC190;
  if (!qword_1EBBEC190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA114490()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEC170 = result;
  *algn_1EBBEC178 = v1;
  return result;
}

uint64_t sub_1BA11452C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEC180 = result;
  *algn_1EBBEC188 = v1;
  return result;
}

void sub_1BA1145D8()
{
  if (!qword_1EBBEC1A0)
  {
    v0 = MEMORY[0x1E695BED0];
    sub_1BA11488C(255, &qword_1EBBEC1A8, MEMORY[0x1E695BED0]);
    sub_1BA1146F4(&qword_1EBBEC1B8, &qword_1EBBEC1A8, v0);
    v1 = sub_1BA4A4ED8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEC1A0);
    }
  }
}

void sub_1BA11468C()
{
  if (!qword_1EBBEC1B0)
  {
    sub_1B9F0ADF8(255, &qword_1EBBEB060);
    v0 = sub_1BA4A6BF8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEC1B0);
    }
  }
}

uint64_t sub_1BA1146F4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_1BA11488C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA114738()
{
  if (!qword_1EBBEC1C0)
  {
    v0 = MEMORY[0x1E695BED0];
    sub_1BA11488C(255, &qword_1EBBEC1A8, MEMORY[0x1E695BED0]);
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0);
    sub_1BA1146F4(&qword_1EBBEC1B8, &qword_1EBBEC1A8, v0);
    sub_1B9F3DC80();
    v1 = sub_1BA4A4CC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEC1C0);
    }
  }
}

uint64_t sub_1BA11482C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BA11488C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_1BA11468C();
    v7 = v6;
    v8 = sub_1B9F0D950(255, &qword_1EDC6E310);
    v9 = a3(a1, v7, v8, MEMORY[0x1E69E7288]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1BA114914()
{
  result = qword_1EBBEC1E8;
  if (!qword_1EBBEC1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC1E8);
  }

  return result;
}

unint64_t sub_1BA114984()
{
  result = qword_1EBBEC1F0;
  if (!qword_1EBBEC1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC1F0);
  }

  return result;
}

uint64_t DataTypeDetailViewController.HealthKitTypeViewModel.showTapToRadarButton.getter()
{
  sub_1B9F0ADF8(0, &qword_1EDC6E350);
  sub_1B9F0ADF8(0, &qword_1EDC5E538);
  v0 = MEMORY[0x1BFAF1AC0](*MEMORY[0x1E696BD38]);
  v1 = sub_1BA4A7798();

  return v1 & 1;
}

uint64_t sub_1BA114A94()
{
  v1 = [*(v0 + 8) identifier];
  v2 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  return v2;
}

uint64_t DataTypeDetailViewController.HealthKitTypeViewModel.chartOverlayVersionProvider.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 144) = a1;
  return result;
}

uint64_t DataTypeDetailViewController.HealthKitTypeViewModel.chartImageProvider.setter(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectRelease();
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return result;
}

uint64_t DataTypeDetailViewController.HealthKitTypeViewModel.title.getter()
{
  v1 = *(v0 + 168);

  return v1;
}

uint64_t DataTypeDetailViewController.HealthKitTypeViewModel.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 168) = a1;
  *(v2 + 176) = a2;
  return result;
}

void DataTypeDetailViewController.HealthKitTypeViewModel.init(context:hkType:chartOverlayVersionProvider:title:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23[120] = 0;
  v25 = 0;
  v26 = 0;
  v12 = *(a1 + 40);
  v22[0] = v12;
  v22[1] = a2;
  sub_1BA114D9C(a1, v23);
  v24 = a3;
  if (a5)
  {
    v13 = v12;
LABEL_6:
    v27 = a4;
    v28 = a5;
    sub_1BA114DF8(v22, a6);
    sub_1BA114E30(a1);
    sub_1BA114E84(v22);
    return;
  }

  v14 = v12;
  v15 = a2;
  v16 = [v14 displayTypeController];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 displayTypeForObjectType_];

    if (v18)
    {
      v19 = [v18 localization];

      v20 = [v19 displayName];
      a4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      a5 = v21;

      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t DataTypeDetailViewController.HealthKitTypeViewModel.shouldShowAddData.getter()
{
  result = [*v0 displayTypeController];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = [result displayTypeForObjectType_];

  if (!v3)
  {
    return 0;
  }

  if (![v3 allowsManualEntry])
  {

    return 0;
  }

  if (*(v0 + 64) <= 1u && *(v0 + 64))
  {

    return 1;
  }

  else
  {
    v4 = sub_1BA4A8338();

    return v4 & 1;
  }
}

uint64_t DataTypeDetailViewController.HealthKitTypeViewModel.restoreUserActivity(activity:vc:)(void *a1, void *a2)
{
  sub_1BA118F78(0, &qword_1EBBED070, MEMORY[0x1E69A2C78], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v26 - v8;
  v10 = sub_1BA4A35F8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_restorationUserActivity;
  swift_beginAccess();
  v15 = *(a2 + v14);
  *(a2 + v14) = a1;
  v16 = a1;

  (*(v11 + 104))(v13, *MEMORY[0x1E69A2B80], v10);
  sub_1BA119048(&qword_1EDC6ACD8);
  sub_1BA4A70C8();
  (*(v11 + 8))(v13, v10);
  if (v28)
  {
    if (swift_dynamicCast())
    {
      v17 = _s18HealthExperienceUI12ChartContextC12archivedDataACSg10Foundation0G0V_tcfC_0(v26[1], v26[2]);
      if (v17)
      {
        v18 = v17;
        v19 = a2 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context;
        swift_beginAccess();
        v20 = *(v19 + 13);
        *(v19 + 13) = v18;
      }
    }
  }

  else
  {
    sub_1B9F0DC10(v27, &qword_1EDC6E300, MEMORY[0x1E69E7CA0] + 8);
  }

  v21 = [v16 activityType];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A3688();
  v22 = sub_1BA4A3678();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v9, 1, v22) == 1)
  {
    goto LABEL_10;
  }

  sub_1BA118F04(v9, v6, &qword_1EBBED070, MEMORY[0x1E69A2C78], MEMORY[0x1E69E6720], sub_1BA118F78);
  if ((*(v23 + 88))(v6, v22) != *MEMORY[0x1E69A2C08])
  {
    (*(v23 + 8))(v6, v22);
LABEL_10:
    v24 = 0;
    goto LABEL_11;
  }

  v24 = 1;
  (*((*MEMORY[0x1E69E7D40] & *a2) + 0x268))(1);
LABEL_11:
  sub_1BA118E78(v9);
  return v24;
}

NSUserActivity_optional __swiftcall DataTypeDetailViewController.HealthKitTypeViewModel.userActivity()()
{
  v1 = sub_1BA4A3678();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = [*v0 displayTypeController];
  if (v7)
  {
    v9 = v7;
    v10 = *(v0 + 8);
    v11 = [v7 displayTypeForObjectType_];

    if (v11)
    {
      v12 = *(v0 + 64);
      v36 = v10;
      v37 = v6;
      if (v12 > 1 || !v12)
      {
        sub_1BA4A8338();
      }

      v14 = [v11 localization];
      v15 = [v14 displayName];

      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      (*(v2 + 104))(v5, *MEMORY[0x1E69A2C00], v1);
      v34 = sub_1BA4A35B8();

      (*(v2 + 8))(v5, v1);
      sub_1BA118F78(0, &qword_1EDC5DC98, sub_1BA118FDC, MEMORY[0x1E69E6F90]);
      sub_1BA118FDC();
      v17 = v16;
      v18 = *(*(v16 - 8) + 72);
      v19 = (*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1BA4B5460;
      v21 = v20 + v19;
      v22 = (v20 + v19 + *(v17 + 48));
      v23 = *MEMORY[0x1E69A2B98];
      v24 = sub_1BA4A35F8();
      v25 = *(v24 - 8);
      v26 = v11;
      v35 = v11;
      v27 = *(v25 + 104);
      (v27)(v21, v23, v24);
      v28 = [v26 displayCategory];
      v29 = [v28 categoryID];

      v22[3] = MEMORY[0x1E69E6530];
      *v22 = v29;
      v30 = (v21 + v18 + *(v17 + 48));
      v27();
      v13 = v34;
      v31 = [v36 code];
      v32 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v30[3] = sub_1B9F0ADF8(0, &qword_1EDC6E360);
      *v30 = v32;
      sub_1B9FDBD0C(v20);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1BA119048(&qword_1EDC6ACE8);
      sub_1BA119048(&qword_1EDC6ACD8);
      sub_1BA4A70B8();

      v33 = [v37 profileIdentifier];
      sub_1BA4A7098();
    }

    else
    {
      v13 = 0;
    }

    v7 = v13;
  }

  else
  {
    __break(1u);
  }

  result.value.super.isa = v7;
  result.is_nil = v8;
  return result;
}

void DataTypeDetailViewController.HealthKitTypeViewModel.addData(vc:)(void *a1)
{
  v2 = sub_1BA115A2C();
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
    [v4 setModalInPresentation_];
    [v4 setModalPresentationStyle_];
    [a1 presentViewController:v4 animated:1 completion:0];
  }
}

id sub_1BA115A2C()
{
  v1 = sub_1BA4A1728();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*v0 displayTypeController];
  if (result)
  {
    v7 = result;
    v8 = [result displayTypeForObjectType_];

    if (!v8)
    {
      return 0;
    }

    v9 = *(v0 + 56);
    v10 = [objc_opt_self() sharedInstanceForHealthStore_];
    sub_1BA4A1718();
    v11 = sub_1BA4A16B8();
    (*(v2 + 8))(v5, v1);
    v12 = [v8 wd:v9 addDataViewControllerWithHealthStore:v10 healthToolBox:v11 initialStartDate:?];

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void DataTypeDetailViewController.HealthKitTypeViewModel.addData(vc:sender:)(void *a1, uint64_t a2)
{
  v4 = sub_1BA115A2C();
  if (v4)
  {
    v5 = v4;
    v6 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
    v9 = v6;
    if (a2)
    {
      swift_unknownObjectRetain();
      [v9 setModalPresentationStyle_];
      v7 = [v9 presentationController];
      if (v7)
      {
        v8 = v7;
        [v7 setSourceItem_];
      }

      swift_unknownObjectRelease();
      v6 = v9;
    }

    [a1 presentViewController:v6 animated:1 completion:0];
  }
}

void sub_1BA115CC4(uint64_t a1, char a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
  v9 = v6;
  if (a3)
  {
    swift_unknownObjectRetain();
    [v9 setModalPresentationStyle_];
    v7 = [v9 presentationController];
    if (v7)
    {
      v8 = v7;
      [v7 setSourceItem_];
    }

    swift_unknownObjectRelease();
    v6 = v9;
  }

  [v3 presentViewController:v6 animated:a2 & 1 completion:0];
}

void DataTypeDetailViewController.HealthKitTypeViewModel.share(vc:)(void *a1)
{
  v2 = v1;
  v62 = a1;
  v64 = sub_1BA4A3EA8();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v4 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v60 - v6;
  sub_1BA118F78(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v60 - v9;
  v11 = sub_1BA4A15D8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 152))
  {
    v15 = *(v1 + 160);
    ObjectType = swift_getObjectType();
    v17 = (*(v15 + 8))(ObjectType, v15);
    if (v17)
    {
      v18 = v17;
      v19 = [*(v1 + 56) displayTypeController];
      if (v19)
      {
        v20 = v19;
        v21 = [v19 displayTypeForObjectType_];

        if (!v21)
        {
          sub_1BA4A3DD8();
          sub_1BA114DF8(v2, v67);
          v54 = sub_1BA4A3E88();
          v55 = sub_1BA4A6FA8();
          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            v58 = swift_slowAlloc();
            v66 = v58;
            *v56 = 136315394;
            *(v56 + 4) = sub_1B9F0B82C(0xD000000000000016, 0x80000001BA4BF430, &v66);
            *(v56 + 12) = 2112;
            v59 = v67[1];
            sub_1BA114E84(v67);
            *(v56 + 14) = v59;
            *v57 = v59;
            _os_log_impl(&dword_1B9F07000, v54, v55, "%s Cannot create displayType for %@", v56, 0x16u);
            sub_1B9F8C6C8(v57);
            MEMORY[0x1BFAF43A0](v57, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v58);
            MEMORY[0x1BFAF43A0](v58, -1, -1);
            MEMORY[0x1BFAF43A0](v56, -1, -1);
          }

          else
          {

            sub_1BA114E84(v67);
          }

          (v63)[1](v7, v64);
          return;
        }

        v22 = v18;
        v23 = [v21 listIcon];
        v63 = v21;
        v24 = sub_1BA11660C(v21);
        v64 = v25;
        if (qword_1EBBE88B8 != -1)
        {
          swift_once();
        }

        v26 = qword_1EBBF13B0;
        v27 = *algn_1EBBF13B8;
        v61 = type metadata accessor for HealthImageActivityItemProvider();
        v28 = objc_allocWithZone(v61);
        *&v28[OBJC_IVAR____TtC18HealthExperienceUI31HealthImageActivityItemProvider_image] = v22;
        *&v28[OBJC_IVAR____TtC18HealthExperienceUI31HealthImageActivityItemProvider_thumbnailImage] = v23;
        v29 = &v28[OBJC_IVAR____TtC18HealthExperienceUI31HealthImageActivityItemProvider_title];
        v30 = v64;
        *v29 = v24;
        v29[1] = v30;
        v31 = &v28[OBJC_IVAR____TtC18HealthExperienceUI31HealthImageActivityItemProvider_subtitle];
        *v31 = v26;
        v31[1] = v27;
        v32 = v22;

        v33 = v23;
        sub_1BA4A15C8();
        if ((*(v12 + 48))(v10, 1, v11) != 1)
        {
          (*(v12 + 32))(v14, v10, v11);
          v34 = sub_1BA4A1548();
          (*(v12 + 8))(v14, v11);
          v65.receiver = v28;
          v35 = v61;
          v65.super_class = v61;
          v36 = objc_msgSendSuper2(&v65, sel_initWithPlaceholderItem_, v34);

          v37 = v32;
          sub_1B9F233E4(0, &unk_1EDC6B3F0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
          v38 = swift_allocObject();
          *(v38 + 16) = xmmword_1BA4B5480;
          *(v38 + 56) = v35;
          *(v38 + 32) = v36;
          v39 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
          v40 = v36;
          v41 = sub_1BA4A6AE8();

          v42 = [v39 initWithActivityItems:v41 applicationActivities:0];

          v43 = [v42 popoverPresentationController];
          v44 = v62;
          if (v43)
          {
            v45 = v43;
            sub_1B9F0ADF8(0, &qword_1EDC6B600);
            if (qword_1EBBE84C8 != -1)
            {
              swift_once();
            }

            v46 = qword_1EBC09650;
            v47 = v44;
            v48 = sub_1BA4A7138();
            [v45 setSourceItem_];
          }

          sub_1BA2593F4();
          type metadata accessor for ActivityType(0);
          v49 = sub_1BA4A6AE8();

          [v42 setExcludedActivityTypes_];

          [v44 presentViewController:v42 animated:1 completion:0];
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }
  }

  sub_1BA4A3DD8();
  v50 = sub_1BA4A3E88();
  v51 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v67[0] = v53;
    *v52 = 136315138;
    *(v52 + 4) = sub_1B9F0B82C(0xD000000000000016, 0x80000001BA4BF430, v67);
    _os_log_impl(&dword_1B9F07000, v50, v51, "%s Chart image not available, we have nothing to share!", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v53);
    MEMORY[0x1BFAF43A0](v53, -1, -1);
    MEMORY[0x1BFAF43A0](v52, -1, -1);
  }

  (v63)[1](v4, v64);
}

uint64_t sub_1BA11660C(void *a1)
{
  v1 = [a1 localization];
  v2 = [v1 titleEmbeddedDisplayName];

  v3 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v5 = v4;

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1B9F1B3E0(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B5480;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1B9F1BE20();
  *(v6 + 32) = v3;
  *(v6 + 40) = v5;
  v7 = sub_1BA4A6768();

  return v7;
}

uint64_t DataTypeDetailViewController.HealthKitTypeViewModel.tapToRadar(vc:)()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA116A88(v25);
  v5 = v26;
  if (v26)
  {
    v7 = v25[0];
    v6 = v25[1];
    sub_1BA114DF8(v0, v23);
    v29 = v27;
    v8 = swift_allocObject();
    v9 = v23[9];
    *(v8 + 144) = v23[8];
    *(v8 + 160) = v9;
    *(v8 + 176) = v23[10];
    v10 = v24;
    v11 = v23[5];
    *(v8 + 80) = v23[4];
    *(v8 + 96) = v11;
    v12 = v23[7];
    *(v8 + 112) = v23[6];
    *(v8 + 128) = v12;
    v13 = v23[1];
    *(v8 + 16) = v23[0];
    *(v8 + 32) = v13;
    v14 = v23[3];
    *(v8 + 48) = v23[2];
    *(v8 + 64) = v14;
    *(v8 + 192) = v10;
    *(v8 + 200) = v7;
    *(v8 + 208) = v6;
    *(v8 + 216) = v5;
    *(v8 + 224) = v27;
    *(v8 + 240) = v28;

    v15 = MEMORY[0x1E69E6158];
    sub_1BA118F04(&v29, &v22, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720], sub_1B9F233E4);
    sub_1BA1170A0(v6, v5, sub_1BA11908C, v8);

    sub_1B9F0DC10(&v29, &qword_1EDC6E410, v15);
  }

  else
  {
    sub_1BA4A3DD8();
    v17 = sub_1BA4A3E88();
    v18 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v23[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1B9F0B82C(0xD000000000000016, 0x80000001BA4BF430, v23);
      _os_log_impl(&dword_1B9F07000, v17, v18, "[%s] Unable to make tap to radar components, ignoring tap.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1BFAF43A0](v20, -1, -1);
      MEMORY[0x1BFAF43A0](v19, -1, -1);
    }

    return (*(v2 + 8))(v4, v1);
  }
}

void sub_1BA116A88(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 8);
  sub_1B9F0ADF8(0, &qword_1EDC5E538);
  v9 = MEMORY[0x1BFAF1AC0](*MEMORY[0x1E696BD38]);
  sub_1B9F0ADF8(0, &qword_1EDC6E920);
  v10 = sub_1BA4A7798();

  if ((v10 & 1) == 0)
  {
    sub_1BA4A3DD8();
    sub_1BA114DF8(v2, v33);
    v21 = sub_1BA4A3E88();
    v22 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32 = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_1B9F0B82C(0xD000000000000016, 0x80000001BA4BF430, &v32);
      *(v23 + 12) = 2080;
      v25 = [v34 identifier];
      v31 = v4;
      v26 = v25;
      v27 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v29 = v28;

      sub_1BA114E84(v33);
      v30 = sub_1B9F0B82C(v27, v29, &v32);

      *(v23 + 14) = v30;
      _os_log_impl(&dword_1B9F07000, v21, v22, "[%s] No tap to radar components specified for object type with identifier %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v24, -1, -1);
      MEMORY[0x1BFAF43A0](v23, -1, -1);

      (*(v5 + 8))(v7, v31);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
      sub_1BA114E84(v33);
    }

    v20 = 0;
    v16 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_9;
  }

  v11 = [*v2 displayTypeController];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 displayTypeForObjectType_];

    if (v13)
    {
      v14 = [v13 localization];

      v15 = [v14 displayName];
      v16 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v18 = v17;

      v19 = 3;
      v20 = 1318138;
LABEL_9:
      *a1 = v20;
      a1[1] = v16;
      a1[2] = v18;
      a1[3] = 0;
      a1[4] = 0;
      a1[5] = v19;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BA116E20(uint64_t *a1)
{
  v2 = sub_1BA4A15D8();
  v20 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 91;
  v22 = 0xE100000000000000;
  MEMORY[0x1BFAF1350](a1[1], a1[2], v3);
  MEMORY[0x1BFAF1350](2112093, 0xE300000000000000);
  v6 = sub_1BA4A6758();

  if (a1[4])
  {
    v7 = sub_1BA4A6758();
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_opt_self();
  v9 = *a1;
  sub_1B9F0ADF8(0, &qword_1EDC6E360);
  v10 = sub_1BA4A6AE8();
  v11 = a1[5];
  v12 = sub_1BA4A6AE8();
  v13 = [v8 hk:v9 tapToHealthRadarURLForComponent:v6 title:v7 description:0 classification:0 reproducibility:v10 keywords:v11 autoDiagnostics:v12 attachments:?];

  sub_1BA4A1588();
  v14 = [objc_opt_self() defaultWorkspace];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1BA4A1548();
    sub_1B9FDB798(MEMORY[0x1E69E7CC0]);
    v17 = sub_1BA4A6618();

    [v15 openSensitiveURL:v16 withOptions:v17];
  }

  return (*(v20 + 8))(v5, v2);
}

void sub_1BA1170A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD000000000000016, 0x80000001BA4EBE50);
  MEMORY[0x1BFAF1350](a1, a2);
  MEMORY[0x1BFAF1350](0xD00000000000001CLL, 0x80000001BA4EBE70);
  v8 = sub_1BA4A6758();
  v9 = sub_1BA4A6758();

  v10 = [objc_opt_self() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;

  v12 = sub_1BA4A6758();
  v29 = sub_1BA10E26C;
  v30 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1BA0B06D4;
  v28 = &block_descriptor_47;
  v13 = _Block_copy(&aBlock);

  v14 = objc_opt_self();
  v15 = [v14 actionWithTitle:v12 style:0 handler:v13];
  _Block_release(v13);

  [v10 addAction_];
  v16 = sub_1BA4A6758();
  v29 = sub_1BA157770;
  v30 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1BA0B06D4;
  v28 = &block_descriptor_50;
  v17 = _Block_copy(&aBlock);

  v18 = [v14 actionWithTitle:v16 style:0 handler:v17];
  _Block_release(v17);

  [v10 addAction_];
  v19 = sub_1BA4A6758();
  v29 = sub_1BA157958;
  v30 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1BA0B06D4;
  v28 = &block_descriptor_53;
  v20 = _Block_copy(&aBlock);

  v21 = [v14 actionWithTitle:v19 style:0 handler:v20];
  _Block_release(v20);

  [v10 addAction_];
  v22 = sub_1BA4A6758();
  v23 = [v14 actionWithTitle:v22 style:1 handler:0];

  [v10 addAction_];
  [v24 presentViewController:v10 animated:1 completion:0];
}

void sub_1BA1174D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD000000000000016, 0x80000001BA4EBE50);
  MEMORY[0x1BFAF1350](a1, a2);
  MEMORY[0x1BFAF1350](0xD00000000000001CLL, 0x80000001BA4EBE70);
  v8 = sub_1BA4A6758();
  v9 = sub_1BA4A6758();

  v10 = [objc_opt_self() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;

  v12 = sub_1BA4A6758();
  v29 = sub_1BA10E26C;
  v30 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1BA0B06D4;
  v28 = &block_descriptor_34_1;
  v13 = _Block_copy(&aBlock);

  v14 = objc_opt_self();
  v15 = [v14 actionWithTitle:v12 style:0 handler:v13];
  _Block_release(v13);

  [v10 addAction_];
  v16 = sub_1BA4A6758();
  v29 = sub_1BA157770;
  v30 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1BA0B06D4;
  v28 = &block_descriptor_37;
  v17 = _Block_copy(&aBlock);

  v18 = [v14 actionWithTitle:v16 style:0 handler:v17];
  _Block_release(v17);

  [v10 addAction_];
  v19 = sub_1BA4A6758();
  v29 = sub_1BA157958;
  v30 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1BA0B06D4;
  v28 = &block_descriptor_40_2;
  v20 = _Block_copy(&aBlock);

  v21 = [v14 actionWithTitle:v19 style:0 handler:v20];
  _Block_release(v20);

  [v10 addAction_];
  v22 = sub_1BA4A6758();
  v23 = [v14 actionWithTitle:v22 style:1 handler:0];

  [v10 addAction_];
  [v24 presentViewController:v10 animated:1 completion:0];
}

void sub_1BA117908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD000000000000016, 0x80000001BA4EBE50);
  MEMORY[0x1BFAF1350](a1, a2);
  MEMORY[0x1BFAF1350](0xD00000000000001CLL, 0x80000001BA4EBE70);
  v8 = sub_1BA4A6758();
  v9 = sub_1BA4A6758();

  v10 = [objc_opt_self() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;

  v12 = sub_1BA4A6758();
  v29 = sub_1BA10E26C;
  v30 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1BA0B06D4;
  v28 = &block_descriptor_21_0;
  v13 = _Block_copy(&aBlock);

  v14 = objc_opt_self();
  v15 = [v14 actionWithTitle:v12 style:0 handler:v13];
  _Block_release(v13);

  [v10 addAction_];
  v16 = sub_1BA4A6758();
  v29 = sub_1BA157770;
  v30 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1BA0B06D4;
  v28 = &block_descriptor_24_0;
  v17 = _Block_copy(&aBlock);

  v18 = [v14 actionWithTitle:v16 style:0 handler:v17];
  _Block_release(v17);

  [v10 addAction_];
  v19 = sub_1BA4A6758();
  v29 = sub_1BA157958;
  v30 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1BA0B06D4;
  v28 = &block_descriptor_27;
  v20 = _Block_copy(&aBlock);

  v21 = [v14 actionWithTitle:v19 style:0 handler:v20];
  _Block_release(v20);

  [v10 addAction_];
  v22 = sub_1BA4A6758();
  v23 = [v14 actionWithTitle:v22 style:1 handler:0];

  [v10 addAction_];
  [v24 presentViewController:v10 animated:1 completion:0];
}

void sub_1BA117D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD000000000000016, 0x80000001BA4EBE50);
  MEMORY[0x1BFAF1350](a1, a2);
  MEMORY[0x1BFAF1350](0xD00000000000001CLL, 0x80000001BA4EBE70);
  v8 = sub_1BA4A6758();
  v9 = sub_1BA4A6758();

  v10 = [objc_opt_self() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;

  v12 = sub_1BA4A6758();
  v29 = sub_1BA091C30;
  v30 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1BA0B06D4;
  v28 = &block_descriptor_27;
  v13 = _Block_copy(&aBlock);

  v14 = objc_opt_self();
  v15 = [v14 actionWithTitle:v12 style:0 handler:v13];
  _Block_release(v13);

  [v10 addAction_];
  v16 = sub_1BA4A6758();
  v29 = sub_1BA157770;
  v30 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1BA0B06D4;
  v28 = &block_descriptor_11_1;
  v17 = _Block_copy(&aBlock);

  v18 = [v14 actionWithTitle:v16 style:0 handler:v17];
  _Block_release(v17);

  [v10 addAction_];
  v19 = sub_1BA4A6758();
  v29 = sub_1BA157958;
  v30 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1BA0B06D4;
  v28 = &block_descriptor_14_1;
  v20 = _Block_copy(&aBlock);

  v21 = [v14 actionWithTitle:v19 style:0 handler:v20];
  _Block_release(v20);

  [v10 addAction_];
  v22 = sub_1BA4A6758();
  v23 = [v14 actionWithTitle:v22 style:1 handler:0];

  [v10 addAction_];
  [v24 presentViewController:v10 animated:1 completion:0];
}

Swift::Void __swiftcall DataTypeDetailViewController.HealthKitTypeViewModel.sendRoomEntryAnalyticsEvent(chartOverlayVersion:)(__C::HKChartOverlayVersion_optional chartOverlayVersion)
{
  v2 = v1;
  rawValue = chartOverlayVersion.value._rawValue;
  v4 = *(v2 + 144);
  if (!v4 || (v5 = [*(v2 + 144) chartOverlayVersion]) == 0)
  {
    v6 = rawValue;
    v5 = rawValue;
  }

  v24 = v5;
  sub_1BA4A2F48();
  sub_1BA4A2F38();
  v7 = sub_1BA4A2F28();

  if ((v7 & 1) == 0)
  {
    v8 = v24;
    goto LABEL_11;
  }

  v8 = v24;
  if (*(v2 + 136))
  {
LABEL_11:

    return;
  }

  if (v24)
  {
    v9 = v24;
  }

  else
  {
    if (!v4)
    {
      return;
    }

    v23 = [v4 chartOverlayVersion];
    if (!v23)
    {
      return;
    }

    v9 = v23;
    v24 = 0;
  }

  sub_1BA114DF8(v2, v26);
  v10 = v27;
  v11 = v24;
  v12 = [v10 identifier];
  v13 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v15 = v14;

  sub_1BA114E84(v26);
  v16 = *v2;
  sub_1BA4A2F38();
  v17 = sub_1BA4A2F28();

  if (v17)
  {

    v18 = [v16 profileIdentifier];
    v19 = [v18 type];

    v25[5] = v13;
    v25[6] = v15;
    v25[7] = v9;
    v25[8] = v19;
    v20 = sub_1BA4A29B8();
    v21 = v9;
    v22 = sub_1BA4A29A8();
    v25[3] = v20;
    v25[4] = MEMORY[0x1E69A3198];
    v25[0] = v22;
    sub_1BA1190B4();
    sub_1BA4A2B58();
    __swift_destroy_boxed_opaque_existential_1(v25);

    swift_bridgeObjectRelease_n();
  }

  else
  {
  }

  *(v2 + 136) = 1;
}

void DataTypeDetailViewController.HealthKitTypeViewModel.internalSettingsGestureTriggered(vc:)(void *a1)
{
  v3 = sub_1BA4A28B8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1BA4A3EA8();
  v7 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  sub_1BA2683D8(*(v1 + 8), &v47);
  if (*(&v48 + 1))
  {
    sub_1B9F1134C(&v47, v50);
    sub_1BA4A3E28();
    v19 = sub_1BA4A3E88();
    v20 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v47 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1B9F0B82C(0xD000000000000016, 0x80000001BA4BF430, &v47);
      _os_log_impl(&dword_1B9F07000, v19, v20, "[%s]: Debug action gesture recognized, using HealthKitType debug action provider", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1BFAF43A0](v22, -1, -1);
      MEMORY[0x1BFAF43A0](v21, -1, -1);
    }

    (*(v7 + 8))(v18, v44);
LABEL_5:
    v23 = v51;
    v24 = v52;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    (*(v24 + 8))(a1, v23, v24);
    __swift_destroy_boxed_opaque_existential_1(v50);
    return;
  }

  sub_1BA119108(&v47, &qword_1EDC6B8A8, qword_1EDC6B8B0, &protocol descriptor for DataTypeDetailViewControllerDebugActionProviding);
  v25 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceProvider;
  swift_beginAccess();
  sub_1BA119178(a1 + v25, v45);
  if (v46)
  {
    sub_1B9F0D950(0, qword_1EDC6BAE0);
    sub_1B9F0D950(0, qword_1EDC6B8B0);
    if (swift_dynamicCast())
    {
      if (*(&v48 + 1))
      {
        sub_1B9F1134C(&v47, v50);
        sub_1BA4A3E28();
        v26 = sub_1BA4A3E88();
        v27 = sub_1BA4A6FC8();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          *&v47 = v29;
          *v28 = 136315138;
          *(v28 + 4) = sub_1B9F0B82C(0xD000000000000016, 0x80000001BA4BF430, &v47);
          _os_log_impl(&dword_1B9F07000, v26, v27, "[%s]: Debug action gesture recognized, using dataSourceProvider", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v29);
          MEMORY[0x1BFAF43A0](v29, -1, -1);
          MEMORY[0x1BFAF43A0](v28, -1, -1);
        }

        (*(v7 + 8))(v15, v44);
        goto LABEL_5;
      }
    }

    else
    {
      v49 = 0;
      v47 = 0u;
      v48 = 0u;
    }
  }

  else
  {
    sub_1BA119108(v45, &qword_1EDC6BAD0, qword_1EDC6BAE0, &protocol descriptor for CompoundSectionedDataSourceProvider);
    v47 = 0u;
    v48 = 0u;
    v49 = 0;
  }

  sub_1BA119108(&v47, &qword_1EDC6B8A8, qword_1EDC6B8B0, &protocol descriptor for DataTypeDetailViewControllerDebugActionProviding);
  (*(v4 + 104))(v6, *MEMORY[0x1E69A3158], v3);
  v30 = sub_1BA4A2898();
  (*(v4 + 8))(v6, v3);
  if (v30)
  {
    v31 = objc_allocWithZone(type metadata accessor for HealthSharingInternalSettingsViewController());
    HealthSharingInternalSettingsViewController.init()();
    v33 = v32;
    sub_1BA4A3E28();
    v34 = sub_1BA4A3E88();
    v35 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v50[0] = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_1B9F0B82C(0xD000000000000016, 0x80000001BA4BF430, v50);
      _os_log_impl(&dword_1B9F07000, v34, v35, "[%s]: Debug action gesture recognized, presenting sharing settings menu", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1BFAF43A0](v37, -1, -1);
      MEMORY[0x1BFAF43A0](v36, -1, -1);
    }

    (*(v7 + 8))(v12, v44);
    v38 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
    [a1 presentViewController:v38 animated:1 completion:0];
  }

  else
  {
    sub_1BA4A3E28();
    v39 = sub_1BA4A3E88();
    v40 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v50[0] = v42;
      *v41 = 136446210;
      *(v41 + 4) = sub_1B9F0B82C(0xD000000000000016, 0x80000001BA4BF430, v50);
      _os_log_impl(&dword_1B9F07000, v39, v40, "[%{public}s]: Debug action gesture recognized but data source provider does not provide debug action", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x1BFAF43A0](v42, -1, -1);
      MEMORY[0x1BFAF43A0](v41, -1, -1);
    }

    (*(v7 + 8))(v9, v44);
  }
}

uint64_t sub_1BA118B10()
{
  v1 = *(v0 + 168);

  return v1;
}

uint64_t sub_1BA118B40()
{
  sub_1B9F0ADF8(0, &qword_1EDC6E350);
  sub_1B9F0ADF8(0, &qword_1EDC5E538);
  v0 = MEMORY[0x1BFAF1AC0](*MEMORY[0x1E696BD38]);
  v1 = sub_1BA4A7798();

  return v1 & 1;
}

void sub_1BA118C04(void *a1)
{
  v2 = sub_1BA115A2C();
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
    [v4 setModalInPresentation_];
    [v4 setModalPresentationStyle_];
    [a1 presentViewController:v4 animated:1 completion:0];
  }
}

void sub_1BA118CCC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BA115A2C();
  if (v3)
  {
    v4 = v3;
    sub_1BA115CC4(v3, 1, a2);
  }
}

uint64_t DataTypeDetailViewController.MeasureViewModel.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DataTypeDetailViewController.MeasureViewModel.axidIdentifier.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t DataTypeDetailViewController.MeasureViewModel.analyticsIdentifier.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

NSUserActivity_optional __swiftcall DataTypeDetailViewController.MeasureViewModel.userActivity()()
{
  v0 = 0;
  result.value.super.isa = v0;
  return result;
}

uint64_t sub_1BA118E10()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_1BA118E40()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_1BA118E78(uint64_t a1)
{
  sub_1BA118F78(0, &qword_1EBBED070, MEMORY[0x1E69A2C78], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA118F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1BA118F78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BA118FDC()
{
  if (!qword_1EDC6ACD0)
  {
    sub_1BA4A35F8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC6ACD0);
    }
  }
}

uint64_t sub_1BA119048(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1BA4A35F8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BA1190B4()
{
  result = qword_1EBBEC1F8;
  if (!qword_1EBBEC1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEC1F8);
  }

  return result;
}

uint64_t sub_1BA119108(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1B9F1B3E0(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1BA119178(uint64_t a1, uint64_t a2)
{
  sub_1B9F1B3E0(0, &qword_1EDC6BAD0, qword_1EDC6BAE0, &protocol descriptor for CompoundSectionedDataSourceProvider, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1BA119348(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_1BA119390(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1BA119428(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1BA119470(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BA119590@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A1728();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A1898();
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v27 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA11E82C(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  v15 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel____lazy_storage___defaultDateOfBirth;
  swift_beginAccess();
  sub_1BA120D48(v1 + v15, v14, sub_1BA11E82C);
  sub_1B9F7B6A0();
  v17 = v16;
  v18 = *(v16 - 8);
  if ((*(v18 + 48))(v14, 1, v16) != 1)
  {
    return sub_1BA120E18(v14, a1, sub_1B9F7B6A0);
  }

  sub_1BA11FEE8(v14, sub_1BA11E82C);
  v26 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_calendar;
  result = (*(v28 + 104))(v27, *MEMORY[0x1E6969A68], v29);
  if (__OFSUB__(0, *(v1 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_defaultAge)))
  {
    __break(1u);
  }

  else
  {
    sub_1BA4A1718();
    v25 = v11;
    v20 = v1;
    v26 = v15;
    v21 = v27;
    sub_1BA4A1848();
    (*(v4 + 8))(v6, v3);
    (*(v28 + 8))(v21, v29);
    v22 = v25;
    sub_1BA120D48(a1, v25, sub_1B9F7B6A0);
    (*(v18 + 56))(v22, 0, 1, v17);
    v23 = v26;
    swift_beginAccess();
    sub_1BA120DB0(v22, v20 + v23, sub_1BA11E82C);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1BA11993C(uint64_t a1)
{
  sub_1BA11E7F8(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA120D48(a1, v5, type metadata accessor for ConfirmDetailsProvider.Details);
  v6 = type metadata accessor for ConfirmDetailsProvider.Details();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  sub_1BA120DB0(v5, v1 + v8, sub_1BA11E7F8);
  swift_endAccess();
  sub_1BA11F15C();
  sub_1BA120D48(a1, v5, type metadata accessor for ConfirmDetailsProvider.Details);
  v7(v5, 0, 1, v6);
  v9 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_visibleRows;
  swift_beginAccess();
  v10 = *(v1 + v9);
  v17 = v1;
  v18 = v5;

  v11 = sub_1BA24A778(sub_1BA120EF8, v16, v10);

  sub_1BA11FEE8(v5, sub_1BA11E7F8);
  v12 = v1 + OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v13 = *(v12 + 8);
  ObjectType = swift_getObjectType();
  (*(v13 + 24))(v11, ObjectType, v13);

  return swift_unknownObjectRelease();
}

uint64_t sub_1BA119B74(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    *&v72[0] = MEMORY[0x1E69E7CC0];
    sub_1BA066D88(0, v2, 0);
    v3 = *&v72[0];
    v4 = (a1 + 32);
    v5 = v2;
    do
    {
      v6 = *v4;
      *&v72[0] = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);

      if (v8 >= v7 >> 1)
      {
        sub_1BA066D88((v7 > 1), v8 + 1, 1);
        v3 = *&v72[0];
      }

      *(v3 + 16) = v8 + 1;
      *(v3 + 8 * v8 + 32) = v6;
      ++v4;
      --v5;
    }

    while (v5);
  }

  v9 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_visibleRows;
  swift_beginAccess();
  *(v71 + v9) = v3;

  v10 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_multiselectValues;
  swift_beginAccess();
  v69 = v10;
  *(v71 + v10) = MEMORY[0x1E69E7CC8];

  if (!v2)
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_24:
    v22 = *(v12 + 2);
    if (!v22)
    {
    }

    v23 = 0;
    v24 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_correlatedItemsMapping;
    v25 = (v12 + 32);
    v68 = *(v12 + 2);
    v66 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_correlatedItemsMapping;
    while (1)
    {
      if (v23 >= *(v12 + 2))
      {
        goto LABEL_57;
      }

      v27 = v25[3];
      v26 = v25[4];
      v28 = v25[1];
      v73 = v25[2];
      v74 = v27;
      v29 = *v25;
      v75 = v26;
      v72[0] = v29;
      v72[1] = v28;
      v30 = BYTE8(v74);
      if (*(&v74 + 1) >> 62 == 3)
      {
        break;
      }

LABEL_28:
      ++v23;
      v25 += 5;
      if (v22 == v23)
      {
      }
    }

    v31 = *(&v73 + 1);
    v32 = v74;
    v33 = v73;
    v70 = v73;
    if (BYTE8(v74) == 2)
    {

      v34 = v31;
      goto LABEL_44;
    }

    v67 = v74;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(v71 + v69);
    *(v71 + v69) = 0x8000000000000000;
    v37 = v31;
    v38 = sub_1B9F24A34(v33, v31);
    v40 = v36[2];
    v41 = (v39 & 1) == 0;
    v20 = __OFADD__(v40, v41);
    v42 = v40 + v41;
    if (v20)
    {
      goto LABEL_61;
    }

    v43 = v39;
    if (v36[3] >= v42)
    {
      v24 = v66;
      v44 = v70;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v46 = v38;
        sub_1BA0F1B08();
        v38 = v46;
        if (v43)
        {
          goto LABEL_39;
        }

        goto LABEL_41;
      }
    }

    else
    {
      sub_1BA0F3C84(v42, isUniquelyReferenced_nonNull_native);
      v44 = v70;
      v38 = sub_1B9F24A34(v70, v37);
      v24 = v66;
      if ((v43 & 1) != (v45 & 1))
      {
        goto LABEL_64;
      }
    }

    if (v43)
    {
LABEL_39:
      *(v36[7] + v38) = v30 & 1;
LABEL_43:
      v34 = v37;
      *(v71 + v69) = v36;
      swift_endAccess();
      v32 = v67;
LABEL_44:
      swift_beginAccess();

      v50 = swift_isUniquelyReferenced_nonNull_native();
      v51 = *(v71 + v24);
      *(v71 + v24) = 0x8000000000000000;
      v52 = v70;
      v53 = sub_1B9F24A34(v70, v34);
      v55 = v51[2];
      v56 = (v54 & 1) == 0;
      v20 = __OFADD__(v55, v56);
      v57 = v55 + v56;
      if (v20)
      {
        goto LABEL_59;
      }

      v58 = v54;
      if (v51[3] >= v57)
      {
        if ((v50 & 1) == 0)
        {
          v63 = v34;
          v64 = v53;
          sub_1BA0F1C84();
          v53 = v64;
          v34 = v63;
          v52 = v70;
          if ((v58 & 1) == 0)
          {
            goto LABEL_50;
          }

          goto LABEL_26;
        }
      }

      else
      {
        sub_1BA0F3F38(v57, v50);
        v53 = sub_1B9F24A34(v70, v34);
        if ((v58 & 1) != (v59 & 1))
        {
          goto LABEL_64;
        }
      }

      if ((v58 & 1) == 0)
      {
LABEL_50:
        v51[(v53 >> 6) + 8] |= 1 << v53;
        v60 = (v51[6] + 16 * v53);
        *v60 = v52;
        v60[1] = v34;
        *(v51[7] + 8 * v53) = v32;
        v61 = v51[2];
        v20 = __OFADD__(v61, 1);
        v62 = v61 + 1;
        if (v20)
        {
          goto LABEL_62;
        }

        v51[2] = v62;

        goto LABEL_27;
      }

LABEL_26:
      *(v51[7] + 8 * v53) = v32;

LABEL_27:
      *(v71 + v24) = v51;
      swift_endAccess();
      sub_1B9FF3768(v72);
      v22 = v68;
      goto LABEL_28;
    }

LABEL_41:
    v36[(v38 >> 6) + 8] |= 1 << v38;
    v47 = (v36[6] + 16 * v38);
    *v47 = v44;
    v47[1] = v37;
    *(v36[7] + v38) = v30 & 1;
    v48 = v36[2];
    v20 = __OFADD__(v48, 1);
    v49 = v48 + 1;
    if (v20)
    {
      goto LABEL_63;
    }

    v36[2] = v49;

    goto LABEL_43;
  }

  v11 = (a1 + 32);
  v12 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v13 = *v11;
    v14 = *(*v11 + 16);
    v15 = *(v12 + 2);
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      break;
    }

    v17 = swift_isUniquelyReferenced_nonNull_native();
    if (v17 && v16 <= *(v12 + 3) >> 1)
    {
      if (!*(v13 + 16))
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (v15 <= v16)
      {
        v18 = v15 + v14;
      }

      else
      {
        v18 = v15;
      }

      v12 = sub_1BA27F490(v17, v18, 1, v12);
      if (!*(v13 + 16))
      {
LABEL_8:

        if (v14)
        {
          goto LABEL_56;
        }

        goto LABEL_9;
      }
    }

    if ((*(v12 + 3) >> 1) - *(v12 + 2) < v14)
    {
      goto LABEL_58;
    }

    swift_arrayInitWithCopy();

    if (v14)
    {
      v19 = *(v12 + 2);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (v20)
      {
        goto LABEL_60;
      }

      *(v12 + 2) = v21;
    }

LABEL_9:
    ++v11;
    if (!--v2)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
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
  __break(1u);
LABEL_64:
  result = sub_1BA4A83B8();
  __break(1u);
  return result;
}

uint64_t sub_1BA11A17C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7[3] = a3;
  v5 = *a1;
  v7[2] = a2;
  result = sub_1BA24AAD8(sub_1BA120EC8, v7, v5);
  *a4 = result;
  return result;
}

uint64_t sub_1BA11A1D0(char *a1)
{
  v2 = v1;
  *&v152 = *v1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  *&v154 = v4;
  *(&v154 + 1) = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v153 = &v139 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v147 = &v139 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v143 = &v139 - v13;
  sub_1BA11FEB4(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v146 = &v139 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BA4A1998();
  v17 = *(v16 - 8);
  v150 = v16;
  *&v151 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v149 = &v139 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v145 = &v139 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v148 = &v139 - v25;
  sub_1BA11E7F8(0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v144 = &v139 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v139 - v29;
  v31 = type metadata accessor for ConfirmDetailsProvider.Details();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v139 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_mostRecentDetails;
  swift_beginAccess();
  v142 = v35;
  sub_1BA120D48(&v2[v35], v30, sub_1BA11E7F8);
  v36 = v32;
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_1BA11FEE8(v30, sub_1BA11E7F8);
    sub_1BA4A3DD8();
    v37 = sub_1BA4A3E88();
    v38 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v167 = v40;
      *v39 = 136446466;
      v41 = sub_1BA4A85D8();
      v43 = sub_1B9F0B82C(v41, v42, &v167);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2082;
      *(v39 + 14) = sub_1B9F0B82C(0xD000000000000014, 0x80000001BA4EC220, &v167);
      _os_log_impl(&dword_1B9F07000, v37, v38, "[%{public}s.%{public}s]: Attempted to change details before we received them.", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v40, -1, -1);
      MEMORY[0x1BFAF43A0](v39, -1, -1);
    }

    return (*(*(&v154 + 1) + 8))(v7, v154);
  }

  v140 = v31;
  sub_1BA120E18(v30, v34, type metadata accessor for ConfirmDetailsProvider.Details);
  v45 = sub_1BA4A1968();
  v46 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_visibleRows;
  swift_beginAccess();
  v141 = v46;
  v47 = *(*&v2[v46] + 16);
  v48 = v34;
  v49 = v2;
  v50 = v153;
  if (v45 >= v47)
  {
    goto LABEL_20;
  }

  v51 = a1;
  v48 = sub_1BA4A1938();
  v52 = sub_1BA4A1968();
  if ((v52 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_59;
  }

  v53 = *&v49[v141];
  if (v52 >= *(v53 + 16))
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v54 = v48 < *(*(v53 + 8 * v52 + 32) + 16);
  v48 = v34;
  if (!v54)
  {
LABEL_20:
    sub_1BA4A3DD8();
    v67 = v150;
    v66 = v151;
    (*(v151 + 16))(v19, a1, v150);
    v68 = sub_1BA4A3E88();
    v69 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      *&v167 = v149;
      *v70 = 136446722;
      v71 = sub_1BA4A85D8();
      v73 = sub_1B9F0B82C(v71, v72, &v167);
      *&v152 = v48;
      v74 = v73;

      *(v70 + 4) = v74;
      *(v70 + 12) = 2082;
      *(v70 + 14) = sub_1B9F0B82C(0xD000000000000014, 0x80000001BA4EC220, &v167);
      *(v70 + 22) = 2082;
      sub_1BA120E80(&unk_1EBBED850, MEMORY[0x1E6969C28]);
      v75 = sub_1BA4A82D8();
      v77 = v76;
      (*(v66 + 8))(v19, v67);
      v78 = sub_1B9F0B82C(v75, v77, &v167);

      *(v70 + 24) = v78;
      _os_log_impl(&dword_1B9F07000, v68, v69, "[%{public}s.%{public}s]: Unable to determine row for index path %{public}s", v70, 0x20u);
      v79 = v149;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v79, -1, -1);
      MEMORY[0x1BFAF43A0](v70, -1, -1);

      (*(*(&v154 + 1) + 8))(v50, v154);
      v80 = v152;
      return sub_1BA11FEE8(v80, type metadata accessor for ConfirmDetailsProvider.Details);
    }

    (*(v66 + 8))(v19, v67);
    (*(*(&v154 + 1) + 8))(v50, v154);
LABEL_23:
    v80 = v48;
    return sub_1BA11FEE8(v80, type metadata accessor for ConfirmDetailsProvider.Details);
  }

  v51 = a1;
  v55 = sub_1BA4A1968();
  if ((v55 & 0x8000000000000000) != 0)
  {
    goto LABEL_60;
  }

  v56 = *&v49[v141];
  if (v55 >= *(v56 + 16))
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v19 = *(v56 + 8 * v55 + 32);

  v51 = a1;
  v57 = sub_1BA4A1938();
  if ((v57 & 0x8000000000000000) != 0)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v58 = *(v19 + 16);
  if (v57 >= v58)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v59 = (v19 + 80 * v57);
  v164[0] = v59[2];
  v60 = v59[3];
  v61 = v59[4];
  v62 = v59[6];
  v165 = v59[5];
  v166 = v62;
  v164[1] = v60;
  v164[2] = v61;
  a1 = LOBYTE(v164[0]);
  v63 = *(&v165 + 1) >> 62;
  if ((*(&v165 + 1) >> 62) > 1)
  {
    v153 = LOBYTE(v164[0]);
    if (v63 != 2)
    {
      v154 = v166;
      v95 = *(&v164[2] + 1);
      v94 = v165;
      v96 = *(v164 + 5);
      v97 = *(v164 + 1);
      v98 = v48;
      v99 = BYTE7(v164[0]);
      v100 = *(&v165 + 1) & 0x3FFFFFFFFFFFFFFFLL;
      v151 = *(&v164[1] + 8);
      v152 = *(v164 + 8);
      v161 = v164[2];
      *&v162 = v165;
      v163 = v166;
      v159 = v164[0];
      v160 = v164[1];
      *(&v162 + 1) = *(&v165 + 1) & 0x3FFFFFFFFFFFFFFFLL;
      sub_1BA0AEED4(&v159, &v167);

      LOBYTE(v156[0]) = v153;
      BYTE7(v156[0]) = v99;
      *(v156 + 5) = v96;
      *(v156 + 1) = v97;
      *(&v156[1] + 8) = v151;
      *(v156 + 8) = v152;
      *(&v156[2] + 1) = v95;
      *&v157 = v94;
      *(&v157 + 1) = v100;
      v158 = v154;
      v169 = v164[2];
      *&v170 = v165;
      v171 = v166;
      v167 = v164[0];
      v168 = v164[1];
      *(&v170 + 1) = *(&v165 + 1) & 0x3FFFFFFFFFFFFFFFLL;
      sub_1BA0AEED4(&v167, &v155);
      sub_1BA11BA3C(v156, v98);
      sub_1B9FF3768(v164);
      sub_1BA11FEE8(v98, type metadata accessor for ConfirmDetailsProvider.Details);
      return sub_1B9FF3768(v164);
    }

    v81 = v147;
    sub_1BA4A3DD8();
    v82 = sub_1BA4A3E88();
    v83 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *&v167 = v85;
      *v84 = 136446722;
      v86 = sub_1BA4A85D8();
      v88 = sub_1B9F0B82C(v86, v87, &v167);

      *(v84 + 4) = v88;
      *(v84 + 12) = 2082;
      *(v84 + 14) = sub_1B9F0B82C(0xD000000000000014, 0x80000001BA4EC220, &v167);
      *(v84 + 22) = 2082;
      LOBYTE(v159) = v153;
      v89 = sub_1BA4A6808();
      v91 = sub_1B9F0B82C(v89, v90, &v167);

      *(v84 + 24) = v91;
      _os_log_impl(&dword_1B9F07000, v82, v83, "[%{public}s.%{public}s]: Should not be able to tap on picker %{public}s", v84, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v85, -1, -1);
      MEMORY[0x1BFAF43A0](v84, -1, -1);
    }

    goto LABEL_29;
  }

  if (!v63)
  {
    v34 = 0;
    v64 = v19 + 88;
    while (*v64 >> 62 != 2)
    {
      ++v34;
      v64 += 80;
      if (v58 == v34)
      {
        v153 = v49;

        v34 = v149;
        v65 = v150;
        goto LABEL_43;
      }
    }

    v167 = *(v64 - 56);
    v101 = *(v64 - 40);
    v102 = *(v64 - 24);
    v103 = *(v64 + 8);
    v170 = *(v64 - 8);
    v171 = v103;
    v168 = v101;
    v169 = v102;
    sub_1B9FF3650(&v167, &v159);

    v104 = sub_1BA4A1968();
    MEMORY[0x1BFAEC360](v34, v104);
    v51 = sub_1BA4A1968();
    v105 = v141;
    swift_beginAccess();
    v19 = *&v49[v105];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v49[v105] = v19;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v51 & 0x8000000000000000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_65;
    }

LABEL_64:
    v19 = sub_1BA2F6838(v19);
    *&v49[v141] = v19;
    if ((v51 & 0x8000000000000000) == 0)
    {
LABEL_36:
      if (v51 < *(v19 + 16))
      {
        sub_1BA0F0AFC(v34, &v159);
        *&v49[v141] = v19;
        swift_endAccess();
        v156[2] = v161;
        v157 = v162;
        v158 = v163;
        v156[0] = v159;
        v156[1] = v160;
        sub_1B9FF3768(v156);
        v107 = &v49[OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_delegate];
        Strong = swift_unknownObjectWeakLoadStrong();
        v109 = v148;
        if (Strong)
        {
          v110 = *(v107 + 1);
          ObjectType = swift_getObjectType();
          (*(v110 + 40))(v109, ObjectType, v110);
          swift_unknownObjectRelease();
        }

        v65 = v150;
        (*(v151 + 8))(v109, v150);
        v34 = v149;
        if (*(&v170 + 1) >> 62 == 2)
        {
          if (a1 == v167)
          {
LABEL_44:
            sub_1B9FF3768(v164);
            goto LABEL_23;
          }

          v153 = v49;
        }

        else
        {
          v153 = v49;
          sub_1B9FF3768(&v167);
        }

LABEL_43:
        v49 = v151;
        v112 = v146;
        if (a1 == 1)
        {
          goto LABEL_44;
        }

        *&v167 = a1;
        *(&v170 + 1) = 0;
        sub_1BA11B40C(&v167, v146);
        if ((*(v49 + 6))(v112, 1, v65) == 1)
        {
          v113 = a1;
          sub_1BA11FEE8(v112, sub_1BA11FEB4);
          v81 = v143;
          sub_1BA4A3DD8();
          v114 = sub_1BA4A3E88();
          v115 = sub_1BA4A6FA8();
          if (os_log_type_enabled(v114, v115))
          {
            v116 = swift_slowAlloc();
            v117 = swift_slowAlloc();
            *&v167 = v117;
            *v116 = 136446722;
            v118 = sub_1BA4A85D8();
            v120 = sub_1B9F0B82C(v118, v119, &v167);

            *(v116 + 4) = v120;
            *(v116 + 12) = 2082;
            *(v116 + 14) = sub_1B9F0B82C(0xD000000000000014, 0x80000001BA4EC220, &v167);
            *(v116 + 22) = 2082;
            LOBYTE(v159) = v113;
            v121 = sub_1BA4A6808();
            v123 = sub_1B9F0B82C(v121, v122, &v167);

            *(v116 + 24) = v123;
            _os_log_impl(&dword_1B9F07000, v114, v115, "[%{public}s.%{public}s]: Can't find index of detail %{public}s", v116, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1BFAF43A0](v117, -1, -1);
            MEMORY[0x1BFAF43A0](v116, -1, -1);
          }

          sub_1B9FF3768(v164);
LABEL_29:
          (*(*(&v154 + 1) + 8))(v81, v154);
          goto LABEL_23;
        }

        v51 = v145;
        (*(v49 + 4))(v145, v112, v65);
        v124 = sub_1BA4A1938();
        v19 = v124 + 1;
        if (!__OFADD__(v124, 1))
        {
          v125 = sub_1BA4A1968();
          MEMORY[0x1BFAEC360](v19, v125);
          v34 = a1;
          *&v167 = a1;
          *(&v170 + 1) = 0x8000000000000000;
          v126 = v144;
          sub_1BA120D48(v48, v144, type metadata accessor for ConfirmDetailsProvider.Details);
          a1 = v36[7];
          *(&v154 + 1) = v36 + 7;
          (a1)(v126, 0, 1, v140);
          v127 = v153;
          sub_1BA11CC0C(&v167, v126, &v159);
          v128 = v126;
          v49 = v127;
          sub_1BA11FEE8(v128, sub_1BA11E7F8);
          v51 = sub_1BA4A1968();
          v129 = v141;
          swift_beginAccess();
          v36 = *&v49[v129];
          result = swift_isUniquelyReferenced_nonNull_native();
          *&v49[v129] = v36;
          if (result)
          {
            if ((v51 & 0x8000000000000000) == 0)
            {
              goto LABEL_52;
            }

            goto LABEL_69;
          }

LABEL_68:
          result = sub_1BA2F6838(v36);
          v36 = result;
          *&v49[v141] = result;
          if ((v51 & 0x8000000000000000) == 0)
          {
LABEL_52:
            if (v51 < v36[2])
            {
              if (*(v36[v51 + 4] + 16) >= v19)
              {
                if ((v19 & 0x8000000000000000) == 0)
                {
                  *&v167 = v34;
                  *(&v170 + 1) = 0x8000000000000000;
                  sub_1BA0FBD0C(v19, v19, &v167);
                  *&v49[v141] = v36;
                  swift_endAccess();
                  v130 = &v49[OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_delegate];
                  v131 = swift_unknownObjectWeakLoadStrong();
                  v132 = v149;
                  if (v131)
                  {
                    v133 = *(v130 + 1);
                    v134 = swift_getObjectType();
                    (*(v133 + 32))(&v159, v132, v134, v133);
                    swift_unknownObjectRelease();
                  }

                  sub_1B9FF3768(v164);
                  __swift_destroy_boxed_opaque_existential_1(&v159);
                  v135 = v150;
                  v136 = *(v151 + 8);
                  v136(v132, v150);
                  v136(v145, v135);
                  v137 = v144;
                  sub_1BA120E18(v48, v144, type metadata accessor for ConfirmDetailsProvider.Details);
                  (a1)(v137, 0, 1, v140);
                  v138 = v142;
                  swift_beginAccess();
                  sub_1BA120DB0(v137, &v49[v138], sub_1BA11E7F8);
                  return swift_endAccess();
                }

LABEL_72:
                __break(1u);
                return result;
              }

LABEL_71:
              __break(1u);
              goto LABEL_72;
            }

LABEL_70:
            __break(1u);
            goto LABEL_71;
          }

LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v92 = 0x80000001BA4E14F0;
  v93 = 0xD000000000000016;
  if (a1)
  {
    v93 = 0x636F6C4261746562;
    v92 = 0xEC0000007372656BLL;
  }

  *&v167 = 0;
  *(&v167 + 1) = 0xE000000000000000;
  v168 = 0uLL;
  *&v169 = v93;
  *(&v169 + 1) = v92;
  *&v170 = MEMORY[0x1E69E7CC0];
  WORD4(v170) = 258;
  v171 = 0uLL;
  v161 = v169;
  v162 = v170;
  v163 = 0uLL;
  v159 = v167;
  v160 = 0uLL;
  sub_1BA11BA3C(&v159, v34);
  sub_1BA11FEE8(v34, type metadata accessor for ConfirmDetailsProvider.Details);
  return sub_1BA120A78(&v167);
}

uint64_t sub_1BA11B40C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v55 = *v2;
  v4 = sub_1BA4A3EA8();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v52 - v7;
  v8 = a1[3];
  v69 = a1[2];
  v70 = v8;
  v71 = a1[4];
  v9 = a1[1];
  v67 = *a1;
  v68 = v9;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI19ConfirmDetailsModel_visibleRows;
  swift_beginAccess();
  v53 = v10;
  v54 = v2;
  v11 = *(v2 + v10);
  v12 = *(v11 + 16);

  if (v12)
  {
    v14 = -v12;
    v15 = 4;
    while (1)
    {
      v16 = v15 - 4;
      if ((v15 - 4) >= *(v11 + 16))
      {
        break;
      }

      v17 = *(v11 + 8 * v15);
      v64 = v69;
      v65 = v70;
      v66 = v71;
      v62 = v67;
      v63 = v68;
      MEMORY[0x1EEE9AC00](result);
      *(&v52 - 2) = &v62;

      v18 = sub_1BA011920(sub_1BA120C84, (&v52 - 4), v17);

      if (v18)
      {

        v33 = *(v54 + v53);
        if (v16 < *(v33 + 16))
        {
          v34 = *(v33 + 8 * v15);

          v35 = sub_1B9FEE580(&v67, v34);
          v37 = v36;

          if ((v37 & 1) == 0)
          {
            v31 = v59;
            MEMORY[0x1BFAEC360](v35, v15 - 4);
            v30 = 0;
            goto LABEL_10;
          }

          v38 = v52;
          sub_1BA4A3DD8();
          sub_1B9FF3650(&v67, &v62);
          v39 = sub_1BA4A3E88();
          v40 = sub_1BA4A6FA8();
          sub_1B9FF3768(&v67);
          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v61[0] = v42;
            *v41 = 136446978;
            v43 = sub_1BA4A85D8();
            v45 = sub_1B9F0B82C(v43, v44, v61);

            *(v41 + 4) = v45;
            *(v41 + 12) = 2082;
            *(v41 + 14) = sub_1B9F0B82C(0xD000000000000018, 0x80000001BA4EC200, v61);
            *(v41 + 22) = 2080;
            v64 = v69;
            v65 = v70;
            v66 = v71;
            v62 = v67;
            v63 = v68;
            sub_1B9FF3650(&v67, v60);
            v46 = sub_1BA4A6808();
            v48 = sub_1B9F0B82C(v46, v47, v61);

            *(v41 + 24) = v48;
            *(v41 + 32) = 2080;
            *&v62 = v16;
            v49 = sub_1BA4A82D8();
            v51 = sub_1B9F0B82C(v49, v50, v61);

            *(v41 + 34) = v51;
            _os_log_impl(&dword_1B9F07000, v39, v40, "[%{public}s.%{public}s]: No row %s in section %s", v41, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x1BFAF43A0](v42, -1, -1);
            MEMORY[0x1BFAF43A0](v41, -1, -1);
          }

          (*(v57 + 8))(v38, v58);
          goto LABEL_9;
        }

LABEL_18:
        __break(1u);
        return result;
      }

      ++v15;
      if (v14 + v15 == 4)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_6:

  v19 = v56;
  sub_1BA4A3DD8();
  sub_1B9FF3650(&v67, &v62);
  v20 = sub_1BA4A3E88();
  v21 = sub_1BA4A6FA8();
  sub_1B9FF3768(&v67);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v61[0] = v23;
    *v22 = 136446722;
    v24 = sub_1BA4A85D8();
    v26 = sub_1B9F0B82C(v24, v25, v61);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_1B9F0B82C(0xD000000000000018, 0x80000001BA4EC200, v61);
    *(v22 + 22) = 2080;
    v64 = v69;
    v65 = v70;
    v66 = v71;
    v62 = v67;
    v63 = v68;
    sub_1B9FF3650(&v67, v60);
    v27 = sub_1BA4A6808();
    v29 = sub_1B9F0B82C(v27, v28, v61);

    *(v22 + 24) = v29;
    _os_log_impl(&dword_1B9F07000, v20, v21, "[%{public}s.%{public}s]: No section with row %s", v22, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v23, -1, -1);
    MEMORY[0x1BFAF43A0](v22, -1, -1);
  }

  (*(v57 + 8))(v19, v58);
LABEL_9:
  v30 = 1;
  v31 = v59;
LABEL_10:
  v32 = sub_1BA4A1998();
  return (*(*(v32 - 8) + 56))(v31, v30, 1, v32);
}