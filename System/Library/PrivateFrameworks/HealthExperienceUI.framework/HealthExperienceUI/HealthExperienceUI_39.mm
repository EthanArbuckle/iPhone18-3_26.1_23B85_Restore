uint64_t sub_1BA327D6C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_chartImageProvider;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BA327DD8(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_chartImageProvider;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BA30AD60;
}

uint64_t sub_1BA327E78@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  swift_beginAccess();
  return sub_1B9F0A534(v1 + v3, a1);
}

uint64_t sub_1BA327ED0(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);
  sub_1B9F1134C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1BA327FE0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_cancellables;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *sub_1BA328098()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_restorationUserActivity;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA3280E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_restorationUserActivity;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1BA32819C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController____lazy_storage___personalizedFeedTrainer;
  if (*&v0[OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController____lazy_storage___personalizedFeedTrainer])
  {
    v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController____lazy_storage___personalizedFeedTrainer];
  }

  else
  {
    type metadata accessor for PersonalizedFeedTrainer();
    v3 = swift_allocObject();
    v4 = v0;
    v2 = sub_1BA32AAEC(2.5, 0.5, 1.2, v4, v3);

    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t (*sub_1BA328254(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = sub_1BA32819C();
  return sub_1BA32829C;
}

uint64_t sub_1BA3282B4()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  return sub_1BA4A1318();
}

id sub_1BA328364()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController____lazy_storage___addDataButton;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController____lazy_storage___addDataButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController____lazy_storage___addDataButton);
  }

  else
  {
    v4 = sub_1BA1BFCB8();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1BA3283C4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  swift_beginAccess();
  sub_1B9F0A534(v1 + v2, v19);
  v3 = v20;
  v4 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v5 = (*(v4 + 8))(v3, v4);
  v7 = v6;
  __swift_destroy_boxed_opaque_existential_1(v19);
  v8 = v1 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context;
  swift_beginAccess();
  sub_1BA114D9C(v8, v19);
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v9 = sub_1BA4A1B68();
  v10 = *(v8 + 40);
  v11 = [v10 profileIdentifier];
  v12 = *(v8 + 48);
  if (v12 == 1)
  {
    v13 = [v1 navigationItem];
    v14 = sub_1BA4A6758();
    [v13 setTitle_];

    sub_1BA114E30(v19);
  }

  else
  {
    sub_1BA37C4A8(v9, v10, v11, v12, v5, v7);

    sub_1BA114E30(v19);
    swift_beginAccess();
    sub_1BA4A4D28();
    swift_endAccess();
  }

  v15 = [v1 navigationItem];
  [v15 setLargeTitleDisplayMode_];

  v16 = sub_1BA1BF3E4();
  if (v16 >> 62)
  {
    if (sub_1BA4A7CC8())
    {
      goto LABEL_6;
    }
  }

  else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_6:
    v17 = [v1 navigationItem];
    sub_1B9F0ADF8(0, &qword_1EDC6B600);
    v18 = sub_1BA4A6AE8();

    [v17 setRightBarButtonItems_];

    return;
  }
}

uint64_t sub_1BA3286A8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  swift_beginAccess();
  sub_1B9F0A534(v0 + v1, v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v3 + 88))(v0, v2, v3);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_1BA32873C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  swift_beginAccess();
  sub_1B9F0A534(v2 + v4, v8);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 96))(v2, a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

void sub_1BA3287D8()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    sub_1BA243838(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1BA4B9FD0;
    strcpy((v3 + 32), "DataTypeDetail");
    *(v3 + 47) = -18;
    v4 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
    swift_beginAccess();
    sub_1B9F0A534(v0 + v4, v10);
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    *(v3 + 48) = (*(v6 + 16))(v5, v6);
    *(v3 + 56) = v7;
    strcpy((v3 + 64), "CollectionView");
    *(v3 + 79) = -18;
    __swift_destroy_boxed_opaque_existential_1(v10);
    v8 = sub_1BA4A6AE8();

    v9 = HKUIJoinStringsForAutomationIdentifier();

    [v2 setAccessibilityIdentifier_];
  }

  else
  {
    __break(1u);
  }
}

id sub_1BA328974()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  swift_beginAccess();
  sub_1B9F0A534(v1 + v2, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  LOBYTE(v2) = (*(v4 + 32))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v6);
  result = 0;
  if (v2)
  {
    return sub_1B9F0F724();
  }

  return result;
}

uint64_t sub_1BA328A18(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = MEMORY[0x1E69695A8];
  sub_1BA32AFE0(0, &unk_1EDC6AE50, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v36[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36[-v8];
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA4A3E28();
  sub_1BA32AF74(a1, v9, &unk_1EDC6AE50, v3);
  v14 = v1;
  v15 = sub_1BA4A3E88();
  v16 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v43 = v38;
    *v17 = 136446722;
    v18 = sub_1BA4A85D8();
    v37 = v16;
    v20 = sub_1B9F0B82C(v18, v19, &v43);
    ObjectType = v10;
    v21 = v20;

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    v22 = MEMORY[0x1E69695A8];
    sub_1BA32AF74(v9, v6, &unk_1EDC6AE50, MEMORY[0x1E69695A8]);
    v23 = sub_1BA4A6808();
    v25 = v24;
    sub_1BA32B098(v9, &unk_1EDC6AE50, v22);
    v26 = sub_1B9F0B82C(v23, v25, &v43);

    *(v17 + 14) = v26;
    *(v17 + 22) = 2080;
    v27 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
    swift_beginAccess();
    sub_1B9F0A534(v14 + v27, v40);
    v28 = v41;
    v29 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v30 = (*(v29 + 8))(v28, v29);
    v32 = v31;
    __swift_destroy_boxed_opaque_existential_1(v40);
    v33 = sub_1B9F0B82C(v30, v32, &v43);

    *(v17 + 24) = v33;
    _os_log_impl(&dword_1B9F07000, v15, v37, "[%{public}s] Unexpected request to navigate to sample details with UUID: %{public}s for view model: %s", v17, 0x20u);
    v34 = v38;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v34, -1, -1);
    MEMORY[0x1BFAF43A0](v17, -1, -1);

    return (*(v11 + 8))(v13, ObjectType);
  }

  else
  {

    sub_1BA32B098(v9, &unk_1EDC6AE50, MEMORY[0x1E69695A8]);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_1BA328DE4(uint64_t a1, uint64_t *a2)
{
  sub_1BA114D9C(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context;
  swift_beginAccess();
  sub_1BA32B860(v6, v3 + v4);
  return swift_endAccess();
}

void sub_1BA328E48(void **a1, void *a2)
{
  v2 = *a1;
  v3 = *a2 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context;
  swift_beginAccess();
  v4 = *(v3 + 104);
  *(v3 + 104) = v2;
  v5 = v2;
}

uint64_t sub_1BA328EAC(uint64_t a1, uint64_t *a2)
{
  sub_1B9F0A534(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v3 + v4);
  sub_1B9F1134C(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1BA328F18(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_cancellables;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

void sub_1BA328F80(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_restorationUserActivity;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

char *DataTypeDetailViewController.__allocating_init(dataSource:context:viewModel:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1BA32AC20(a1, a2, a3);

  return v8;
}

uint64_t DataTypeDetailViewController.__allocating_init(dataSource:context:hkType:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  sub_1BA32A8A0(a1, a2, a3);
  v9 = v8;

  return v9;
}

uint64_t DataTypeDetailViewController.__allocating_init(dataSource:context:measure:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BA114D9C(a2, v16);
  sub_1B9F0A534(a3, v13);
  v15[3] = &type metadata for DataTypeDetailViewController.MeasureViewModel;
  v15[4] = &protocol witness table for DataTypeDetailViewController.MeasureViewModel;
  v7 = swift_allocObject();
  v15[0] = v7;
  *(v7 + 32) = 0;
  sub_1B9F0A534(v13, v7 + 40);
  __swift_project_boxed_opaque_existential_1(v13, v14);
  *(v7 + 16) = sub_1BA4A1A98();
  *(v7 + 24) = v8;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  *(v7 + 80) = sub_1BA4A1A98();
  *(v7 + 88) = v9;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  *(v7 + 96) = sub_1BA4A1A98();
  *(v7 + 104) = v10;
  __swift_destroy_boxed_opaque_existential_1(v13);
  v11 = (*(v3 + 592))(a1, v16, v15);
  __swift_destroy_boxed_opaque_existential_1(a3);
  sub_1BA114E30(a2);
  return v11;
}

id DataTypeDetailViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_1BA32927C()
{
  v1 = v0;
  sub_1BA3283C4();
  sub_1BA3287D8();
  v10.receiver = v0;
  v10.super_class = type metadata accessor for DataTypeDetailViewController();
  objc_msgSendSuper2(&v10, sel_viewDidLoad);
  v2 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  swift_beginAccess();
  sub_1B9F0A534(v1 + v2, &v7);
  v3 = *(&v8 + 1);
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(&v7, *(&v8 + 1));
  LOBYTE(v2) = (*(v4 + 72))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(&v7);
  if (v2)
  {
    sub_1B9F0ADF8(0, &qword_1EDC5E558);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x230))();
    v7 = 0u;
    v8 = 0u;
    v6 = MEMORY[0x1E69E7CC0];
    v5 = sub_1BA4A6F28();
    [v1 addKeyCommand_];
  }
}

uint64_t sub_1BA329460(char a1)
{
  v3 = sub_1BA4A4018();
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v3);
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x168))(v9, v4);
  v5 = v9[0];
  sub_1BA4A71E8();
  v11 = v5;
  sub_1B9F3AEE8();
  sub_1BA4A4008();
  sub_1BA4A71F8();
  v6 = type metadata accessor for DataTypeDetailViewController();
  v10.receiver = v1;
  v10.super_class = v6;
  objc_msgSendSuper2(&v10, sel_viewIsAppearing_, a1 & 1);
  v7 = v1 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(v7, *(v7 + 24));
  DataTypeDetailViewController.ViewModel.sendRoomEntryAnalyticsEvent()();
  return swift_endAccess();
}

uint64_t sub_1BA3296C8(void *a1, uint64_t a2, uint64_t a3, const char **a4, void (*a5)(char *))
{
  v9 = sub_1BA4A1728();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DataTypeDetailViewController();
  v17.receiver = a1;
  v17.super_class = v13;
  v14 = *a4;
  v15 = a1;
  objc_msgSendSuper2(&v17, v14, a3);
  sub_1BA32819C();
  sub_1BA4A1718();
  a5(v12);

  return (*(v10 + 8))(v12, v9);
}

id DataTypeDetailViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

void sub_1BA3299E4()
{
  sub_1BA114E30(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context);
  sub_1B9FAB600(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_chartImageProvider);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel);

  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController____lazy_storage___addDataButton);
}

id DataTypeDetailViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataTypeDetailViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BA329BC4()
{
  v1 = *v0 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context;
  swift_beginAccess();
  v2 = *(v1 + 40);

  return v2;
}

id sub_1BA329C20()
{
  v1 = *v0;
  v2 = objc_opt_self();
  v3 = v1 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context;
  swift_beginAccess();
  v4 = [v2 sharedInstanceForHealthStore_];

  return v4;
}

void *sub_1BA329CA0()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_restorationUserActivity;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1BA329CF0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context;
  swift_beginAccess();
  return sub_1B9F0A534(v3 + 64, a1);
}

void *sub_1BA329D48()
{
  v1 = *v0 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context;
  swift_beginAccess();
  v2 = *(v1 + 104);
  v3 = v2;
  return v2;
}

void sub_1BA329D9C(uint64_t a1)
{
  v3 = *v1 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context;
  swift_beginAccess();
  v4 = *(v3 + 104);
  *(v3 + 104) = a1;
}

uint64_t (*sub_1BA329DF4(uint64_t *a1))()
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
  v5 = *v1;
  v6 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context;
  *(v3 + 32) = *v1;
  *(v3 + 40) = v6;
  v7 = v5 + v6;
  swift_beginAccess();
  v8 = *(v7 + 104);
  *(v4 + 24) = v8;
  v9 = v8;
  return sub_1BA32B8BC;
}

void sub_1BA329E98(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v5 = *(*a1 + 32) + *(*a1 + 40);
  v6 = *(v5 + 104);
  *(v5 + 104) = *v4;
  if (a2)
  {
    v7 = v3;

    v6 = *v4;
  }

  free(v2);
}

uint64_t sub_1BA329F54(uint64_t a1, uint64_t a2)
{
  v4 = *v2 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_chartImageProvider;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BA329FC4(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_chartImageProvider;
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = v5 + v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v9;
  return sub_1BA30D77C;
}

void DataTypeDetailViewController.updateChartOverlayVersionProvider(provider:)(void *a1)
{
  v2 = [a1 chartOverlayVersion];
  v3 = v1 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 104))(v2, v4, v5);
  swift_endAccess();
}

void sub_1BA32A148(void *a1)
{
  v2 = *v1;
  v3 = [a1 chartOverlayVersion];
  v4 = v2 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 104))(v3, v5, v6);
  swift_endAccess();
}

Swift::Void __swiftcall DataTypeDetailViewController.onInternalSettingsGesture()()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  swift_beginAccess();
  sub_1B9F0A534(v0 + v1, v4);
  v2 = v5;
  v3 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v3 + 64))(v0, v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t DataTypeDetailViewController.description.getter()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceProvider;
  swift_beginAccess();
  sub_1BA32AF74(v1 + v6, &ObjectType, &qword_1EDC6BAD0, sub_1BA32B034);
  v7 = v24;
  sub_1BA32B098(&ObjectType, &qword_1EDC6BAD0, sub_1BA32B034);
  if (v7)
  {
    ObjectType = 0;
    v23 = 0xE000000000000000;
    sub_1BA4A7DF8();
    v21[0] = ObjectType;
    v21[1] = v23;
    MEMORY[0x1BFAF1350](60, 0xE100000000000000);
    ObjectType = swift_getObjectType();
    sub_1BA32B0F4();
    v8 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v8);

    MEMORY[0x1BFAF1350](32, 0xE100000000000000);
    ObjectType = v1;
    sub_1BA4A7FB8();
    MEMORY[0x1BFAF1350](0xD000000000000015, 0x80000001BA500430);
    sub_1BA32AF74(v1 + v6, &ObjectType, &qword_1EDC6BAD0, sub_1BA32B034);
    sub_1BA32AFE0(0, &qword_1EDC6BAD0, sub_1BA32B034);
    v9 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v9);

    MEMORY[0x1BFAF1350](0x6F5361746164202CLL, 0xEE00203A65637275);
    ObjectType = sub_1B9F23FB0();
    type metadata accessor for CompoundSectionedDataSource();
    sub_1BA32B138();
    v10 = sub_1BA4A82D8();
    v12 = v11;

    MEMORY[0x1BFAF1350](v10, v12);

    MEMORY[0x1BFAF1350](62, 0xE100000000000000);
    return v21[0];
  }

  else
  {
    ObjectType = swift_getObjectType();
    sub_1BA32B0F4();
    v13 = sub_1BA4A6808();
    v15 = v14;
    sub_1BA4A3E28();

    v16 = sub_1BA4A3E88();
    v17 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      ObjectType = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_1B9F0B82C(v13, v15, &ObjectType);
      _os_log_impl(&dword_1B9F07000, v16, v17, "Found nil dataSource while trying to print description of %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1BFAF43A0](v19, -1, -1);
      MEMORY[0x1BFAF43A0](v18, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  return v13;
}

Swift::Void __swiftcall DataTypeDetailViewController.ttrButtonTapped()()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  swift_beginAccess();
  sub_1B9F0A534(v0 + v1, v4);
  v2 = v5;
  v3 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v3 + 40))(v0, v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v4);
}

void sub_1BA32A8A0(uint64_t a1, uint64_t a2, void *a3)
{
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_chartImageProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_cancellables) = MEMORY[0x1E69E7CD0];
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_restorationUserActivity) = 0;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController____lazy_storage___personalizedFeedTrainer) = 0;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController____lazy_storage___addDataButton) = 0;
  sub_1BA114D9C(a2, v3 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context);
  sub_1BA114D9C(a2, v27);
  v30 = &type metadata for DataTypeDetailViewController.HealthKitTypeViewModel;
  v31 = &protocol witness table for DataTypeDetailViewController.HealthKitTypeViewModel;
  v6 = swift_allocObject();
  *&v29 = v6;
  v21[120] = 0;
  v23 = 0;
  v24 = 0;
  v7 = v28;
  v20[0] = v28;
  v20[1] = a3;
  sub_1BA114D9C(v27, v21);
  v22 = 0;
  v8 = a3;
  v9 = [v7 displayTypeController];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 displayTypeForObjectType_];

    if (v11)
    {
      v12 = [v11 localization];

      v13 = [v12 displayName];
      v14 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v16 = v15;

      v25 = v14;
      v26 = v16;
      sub_1BA114DF8(v20, v6 + 16);
      sub_1BA114E30(v27);
      sub_1BA114E84(v20);
      sub_1B9F1134C(&v29, v3 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel);

      v18 = CompoundDataSourceCollectionViewController.init(dataSource:)(v17);
      v19 = [v18 navigationItem];
      [v19 setLargeTitleDisplayMode_];

      sub_1BA114E30(a2);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BA32AAEC(double a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 40) = 0;
  v9 = MEMORY[0x1E69E7CC8];
  *(a5 + 16) = MEMORY[0x1E69E7CC8];
  *(a5 + 24) = v9;
  *(a5 + 32) = MEMORY[0x1E69E7CC0];
  *(a5 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(a5 + 56) = &protocol witness table for DataTypeDetailViewController;
  swift_unknownObjectWeakAssign();
  *(a5 + 64) = a1;
  *(a5 + 72) = a2;
  *(a5 + 80) = a3;
  v10 = objc_opt_self();
  v11 = [v10 defaultCenter];
  [v11 addObserver:a5 selector:sel_appDidBecomeActive name:*MEMORY[0x1E69DDAB0] object:0];

  v12 = [v10 defaultCenter];
  [v12 addObserver:a5 selector:sel_appDidEnterBackground name:*MEMORY[0x1E69DDAC8] object:0];

  return a5;
}

char *sub_1BA32AC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_chartImageProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_cancellables) = MEMORY[0x1E69E7CD0];
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_restorationUserActivity) = 0;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController____lazy_storage___personalizedFeedTrainer) = 0;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController____lazy_storage___addDataButton) = 0;
  sub_1BA114D9C(a2, v3 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_context);
  sub_1B9F0A534(a3, v3 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel);

  v7 = CompoundDataSourceCollectionViewController.init(dataSource:)(v6);
  v8 = [v7 navigationItem];
  [v8 setLargeTitleDisplayMode_];

  __swift_destroy_boxed_opaque_existential_1(a3);
  sub_1BA114E30(a2);
  return v7;
}

void _s18HealthExperienceUI28DataTypeDetailViewControllerC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_chartImageProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_cancellables) = MEMORY[0x1E69E7CD0];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_restorationUserActivity) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController____lazy_storage___personalizedFeedTrainer) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController____lazy_storage___addDataButton) = 0;
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA32ADF4()
{
  v0 = sub_1BA4A1728();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BA32819C();
  sub_1BA4A1718();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 56);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 16))(ObjectType, v5);
    swift_unknownObjectRelease();
    sub_1B9F51E70(v7, v3);

    return (*(v1 + 8))(v3, v0);
  }

  else
  {
    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA32AF74(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1BA32AFE0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1BA32AFE0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BA32B034()
{
  result = qword_1EDC6BAE0[0];
  if (!qword_1EDC6BAE0[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDC6BAE0);
  }

  return result;
}

uint64_t sub_1BA32B098(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1BA32AFE0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1BA32B0F4()
{
  result = qword_1EDC646D8;
  if (!qword_1EDC646D8)
  {
    type metadata accessor for DataTypeDetailViewController();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EDC646D8);
  }

  return result;
}

unint64_t sub_1BA32B138()
{
  result = qword_1EBBF09F0;
  if (!qword_1EBBF09F0)
  {
    type metadata accessor for CompoundSectionedDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF09F0);
  }

  return result;
}

uint64_t static PluginFeedItem.categoryItem(for:sourceProfile:)@<X0>(_OWORD *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[1];
  v11[0] = *a1;
  v11[1] = v6;
  v11[2] = a1[2];
  sub_1BA4A0EE8();
  swift_allocObject();
  sub_1BA4A0ED8();
  sub_1BA32B9B8();
  v7 = sub_1BA4A0EC8();
  v9 = v8;

  if (!v3)
  {
    sub_1BA32BA0C(v11, a2, v7, v9, a3);
    return sub_1B9F2BB4C(v7, v9);
  }

  return result;
}

unint64_t sub_1BA32B9B8()
{
  result = qword_1EDC62AB0[0];
  if (!qword_1EDC62AB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC62AB0);
  }

  return result;
}

uint64_t sub_1BA32BA0C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v63 = a4;
  v62 = a3;
  v65 = a5;
  v67 = sub_1BA4A1C68();
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v60 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v51 - v9;
  v10 = sub_1BA4A1F38();
  v64 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v14 = a1[4];
  *&v69[0] = 0;
  *(&v69[0] + 1) = 0xE000000000000000;
  sub_1BA4A7DF8();

  *&v69[0] = 0xD00000000000001DLL;
  *(&v69[0] + 1) = 0x80000001BA500610;
  MEMORY[0x1BFAF1350](v13, v14);
  v15 = v69[0];
  *&v69[0] = 0x656C69666F72705FLL;
  *(&v69[0] + 1) = 0xE90000000000005FLL;
  v61 = a2;
  v16 = sub_1BA4A1D48();
  MEMORY[0x1BFAF1350](v16);

  v70 = v15;
  *&v70 = sub_1BA4A69D8();
  *(&v70 + 1) = v17;
  sub_1BA4A6908();

  *&v69[0] = 0x525F6573776F7242;
  *(&v69[0] + 1) = 0xEF5F72616C756765;
  MEMORY[0x1BFAF1350](v70, *(&v70 + 1));

  v18 = *&v69[0];
  v20 = *a1;
  v19 = a1[1];

  v21 = v20;
  v22 = v75;
  HKTypeGroupCategoryTileViewModel.init(hkTypeGroupIdentifier:)(v21, v19, v69);
  if (v22)
  {
  }

  v53 = v18;
  v75 = 0;
  v24 = v66;
  v25 = v67;
  v56 = v14;
  v57 = v13;
  v58 = v12;
  v55 = v10;
  v71 = v69[0];
  v72 = v69[1];
  v73 = v69[2];
  v74 = v69[3];
  v54 = a1[2];
  v26 = HKDisplayCategoryIdentifierToString();
  if (v26)
  {
    v27 = v26;
    v52 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v59 = v28;
  }

  else
  {
    v52 = 0;
    v59 = 0;
  }

  v29 = v25;
  v30 = v68;
  (*(v24 + 104))(v68, *MEMORY[0x1E69A3BE8], v25);
  v66 = type metadata accessor for HKTypeGroupCategoryActionHandler();
  sub_1BA32CB84();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v32 = NSStringFromClass(ObjCClassFromMetadata);
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  v33 = v75;
  v34 = sub_1BA2E1A2C();
  if (v33)
  {

    (*(v24 + 8))(v30, v25);
    return sub_1BA32C710(&v71);
  }

  else
  {
    v36 = v34;
    v37 = v35;
    (*(v24 + 16))(v60, v30, v29);
    v38 = v36;
    v75 = v37;
    sub_1B9F206D4(v36, v37);
    v39 = v61;
    sub_1BA4A1E28();
    v40 = swift_getObjCClassFromMetadata();
    v41 = NSStringFromClass(v40);
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    sub_1BA4A1EB8();
    sub_1B9F6AD84(v62, v63);
    sub_1BA4A1E78();
    sub_1BA4A1ED8();
    sub_1B9F2BB4C(v38, v75);
    (*(v24 + 8))(v68, v67);
    v42 = v59;
    if (v59)
    {
      v43 = v55;
      v44 = v64;
      v45 = v52;
    }

    else
    {
      v45 = *(&v72 + 1);
      v42 = v73;

      v43 = v55;
      v44 = v64;
    }

    sub_1B9F25350();
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1BA4B5460;
    *(v46 + 32) = 0x686372616553;
    *(v46 + 40) = 0xE600000000000000;
    *(v46 + 48) = v45;
    *(v46 + 56) = v42;
    v47 = sub_1BA4A6AE8();

    v48 = HKUIJoinStringsForAutomationIdentifier();

    if (v48)
    {
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    }

    v49 = v58;
    sub_1BA4A1ED8();

    sub_1BA4A1E18();
    (*(v44 + 32))(v65, v49, v43);
    result = sub_1BA32C710(&v71);
    if (v54 == 14)
    {
      v50 = sub_1BA4A1F08();
      sub_1BA4A6DE8();
      return v50(v69, 0);
    }
  }

  return result;
}

uint64_t static PluginFeedItem.categoryItem<A>(for:sourceProfile:actionHandlerType:actionHandlerUserData:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[3];
  v32 = a1[2];
  v12 = a1[4];
  sub_1BA4A7DF8();

  MEMORY[0x1BFAF1350](v11, v12);
  v13 = sub_1BA4A1D48();
  MEMORY[0x1BFAF1350](v13);

  *&v35 = sub_1BA4A69D8();
  *(&v35 + 1) = v14;
  sub_1BA4A6908();

  *&v39[0] = 0x525F6573776F7242;
  *(&v39[0] + 1) = 0xEF5F72616C756765;
  MEMORY[0x1BFAF1350](v35, *(&v35 + 1));

  v15 = v39[0];

  v16 = v40;
  HKTypeGroupCategoryTileViewModel.init(hkTypeGroupIdentifier:)(v9, v10, v39);
  if (v16)
  {
  }

  v25 = v12;
  v40 = v11;
  v35 = v39[0];
  v36 = v39[1];
  v37 = v39[2];
  v38 = v39[3];
  v18 = HKDisplayCategoryIdentifierToString();
  if (v18)
  {
    v19 = v18;
    v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = sub_1BA32C6BC();
  static PluginFeedItem.categoryItem<A, B>(uniqueIdentifier:viewModel:actionHandlerType:actionHandlerUserData:sourceProfile:localizedTitle:automationTitle:)(v15, *(&v15 + 1), &v35, a3, a4, a5, a2, v40, a8, v25, v20, v22, a6, &type metadata for HKTypeGroupCategoryTileViewModel, a7, v23);
  v34[0] = v35;
  v34[1] = v36;
  v34[2] = v37;
  v34[3] = v38;
  sub_1BA32C710(v34);

  if (v32 == 14)
  {
    v24 = sub_1BA4A1F08();
    sub_1BA4A6DE8();
    return v24(v33, 0);
  }

  return result;
}

uint64_t static PluginFeedItem.categoryItem<A, B>(uniqueIdentifier:viewModel:actionHandlerType:actionHandlerUserData:sourceProfile:localizedTitle:automationTitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16)
{
  v36 = a6;
  v30[1] = a8;
  v30[2] = a3;
  v31 = a7;
  v32 = a4;
  v34 = a5;
  v35 = a2;
  v33 = a1;
  v17 = sub_1BA4A1C68();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = 1;
  v21 = *(a15 + 8);
  v38 = a14;
  v39 = a13;
  v40 = a16;
  v41 = v21;
  type metadata accessor for CategoryTileConfigurationProvider();
  (*(v18 + 104))(v20, *MEMORY[0x1E69A3BE8], v17);
  swift_getWitnessTable();
  v22 = v37;
  static PluginFeedItem.makeContentConfigurationFeedItem<A, B>(cellType:configurationProvider:viewModel:actionHandlerType:actionHandlerUserData:uniqueIdentifier:contentKind:sourceProfile:baseAutomationIdentifier:)(&v42, v32, v34, v36, v33, v35, a9, v20, v31, 0);
  if (v22)
  {
    return (*(v18 + 8))(v20, v17);
  }

  v36 = a14;
  v37 = a10;
  (*(v18 + 8))(v20, v17);
  if (a12)
  {
    v25 = a12;
  }

  else
  {
    a11 = (*(a16 + 16))(v36, a16);
    v25 = v26;
  }

  sub_1B9F25350();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1BA4B5460;
  *(v27 + 32) = 0x686372616553;
  *(v27 + 40) = 0xE600000000000000;
  *(v27 + 48) = a11;
  *(v27 + 56) = v25;

  v28 = sub_1BA4A6AE8();

  v29 = HKUIJoinStringsForAutomationIdentifier();

  if (v29)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  sub_1BA4A1ED8();

  return sub_1BA4A1E18();
}

unint64_t sub_1BA32C6BC()
{
  result = qword_1EDC62AA0;
  if (!qword_1EDC62AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC62AA0);
  }

  return result;
}

uint64_t static PluginFeedItem.categoryItem<A>(uniqueIdentifier:title:imageRepresentation:colorRepresentation:actionHandlerType:actionHandlerUserData:sourceProfile:automationTitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, unint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v38 = a3;
  v46 = a1;
  v47 = a2;
  v45 = a8;
  v49 = a9;
  v50 = a7;
  v48 = a10;
  v43 = a12;
  v44 = a11;
  v42 = a13;
  v40 = a4;
  v41 = a14;
  v39 = MEMORY[0x1E69A3260];
  sub_1B9F20680(0, &qword_1EDC6E1D0, MEMORY[0x1E69A3260]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v37 - v17;
  v19 = MEMORY[0x1E69A32A0];
  sub_1B9F20680(0, &qword_1EDC6E1C8, MEMORY[0x1E69A32A0]);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v37 - v21;
  v23 = type metadata accessor for StandardCategoryTileViewModel();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BA4A2BF8();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v22, a5, v26);
  v28 = *(v27 + 56);
  v28(v22, 0, 1, v26);
  sub_1BA2E1FDC(a6, v18);
  v29 = v23[5];
  v28(&v25[v29], 1, 1, v26);
  v30 = v23[6];
  v31 = sub_1BA4A2B98();
  (*(*(v31 - 8) + 56))(&v25[v30], 1, 1, v31);
  v32 = v38;
  v33 = v40;
  *v25 = v38;
  *(v25 + 1) = v33;
  v34 = v33;

  sub_1BA32CABC(v22, &v25[v29], &qword_1EDC6E1C8, v19);
  sub_1BA32CABC(v18, &v25[v30], &qword_1EDC6E1D0, v39);
  *&v25[v23[7]] = xmmword_1BA4D1B60;
  v25[v23[8]] = 1;
  v35 = sub_1BA32CC98(&qword_1EBBF0A68, type metadata accessor for StandardCategoryTileViewModel);
  static PluginFeedItem.categoryItem<A, B>(uniqueIdentifier:viewModel:actionHandlerType:actionHandlerUserData:sourceProfile:localizedTitle:automationTitle:)(v46, v47, v25, v42, v50, v49, v48, v32, v45, v34, v44, v43, v42, v23, v41, v35);
  return sub_1BA32CB28(v25);
}

uint64_t sub_1BA32CABC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1B9F20680(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA32CB28(uint64_t a1)
{
  v2 = type metadata accessor for StandardCategoryTileViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA32CB84()
{
  if (!qword_1EDC63CA8)
  {
    sub_1BA32CC18();
    sub_1BA32CC98(&qword_1EDC62268, sub_1BA32CC18);
    v0 = type metadata accessor for PlatformConfigurationProvider();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC63CA8);
    }
  }
}

void sub_1BA32CC18()
{
  if (!qword_1EDC62260)
  {
    type metadata accessor for HKTypeGroupCategoryActionHandler();
    sub_1BA32C6BC();
    v0 = type metadata accessor for CategoryTileConfigurationProvider();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC62260);
    }
  }
}

uint64_t sub_1BA32CC98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BA32CD38()
{
  v0 = sub_1BA4A1798();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ProfileContactOptionsItem();
  v5 = [objc_allocWithZone(v4) init];
  sub_1B9FF6758();
  inited = swift_initStackObject();
  v16 = xmmword_1BA4B5480;
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1B9F28360();
  v7 = swift_allocObject();
  *(v7 + 16) = v16;
  *(v7 + 56) = v4;
  *(v7 + 64) = sub_1BA1AAEE4();
  *(v7 + 32) = v5;
  v8 = v5;
  sub_1BA4A1788();
  v9 = sub_1BA4A1748();
  v11 = v10;
  (*(v1 + 8))(v3, v0);
  v12 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = sub_1B9F1C5F0(v12);
  *(inited + 32) = 0;
  *(inited + 40) = 0;

  *(inited + 48) = v7;
  v13 = Array<A>.identifierToIndexDict()(v7);

  *(inited + 56) = v13;
  *(inited + 64) = v9;
  *(inited + 72) = v11;
  v14 = sub_1B9F1DAFC(inited, 1, sub_1B9F5AEA0, 0);

  return v14;
}

uint64_t ImageStyle.init(contentMode:backgroundColor:tintColor:borderColor:borderWidth:cornerRadius:cornerCurve:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 44) = BYTE4(a6) & 1;
  *(a9 + 48) = a7;
  *(a9 + 52) = BYTE4(a7) & 1;
  *(a9 + 56) = a8;
  return result;
}

void *ImageStyle.backgroundColor.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *ImageStyle.tintColor.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *ImageStyle.borderColor.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *ImageStyle.cornerCurve.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

uint64_t _s18HealthExperienceUI10ImageStyleV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 44);
  v7 = *(a1 + 48);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 44);
  v14 = *(a2 + 48);
  v15 = *(a2 + 52);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!v9)
    {
      return 0;
    }

    v36 = *(a1 + 52);
    v37 = *(a1 + 56);
    v38 = *(a2 + 56);
    sub_1B9F0F360();
    v16 = v9;
    v17 = v3;
    v18 = sub_1BA4A7798();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v36 = *(a1 + 52);
    v37 = *(a1 + 56);
    v38 = *(a2 + 56);
    if (v9)
    {
      return 0;
    }
  }

  if (v2)
  {
    if (!v10)
    {
      return 0;
    }

    sub_1B9F0F360();
    v19 = v10;
    v20 = v2;
    v21 = sub_1BA4A7798();

    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v4)
  {
    if (!v11)
    {
      return 0;
    }

    sub_1B9F0F360();
    v22 = v11;
    v23 = v4;
    v24 = sub_1BA4A7798();

    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v6)
  {
    v25 = v37;
    v26 = v38;
    v27 = v36;
    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == v12)
    {
      v28 = v13;
    }

    else
    {
      v28 = 1;
    }

    v25 = v37;
    v26 = v38;
    v27 = v36;
    if (v28)
    {
      return 0;
    }
  }

  if (v27)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (v7 == v14)
    {
      v29 = v15;
    }

    else
    {
      v29 = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  if (!v25)
  {
    return !v26;
  }

  if (!v26)
  {
    return 0;
  }

  v30 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v32 = v31;
  if (v30 != _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() || v32 != v33)
  {
    v35 = sub_1BA4A8338();

    return (v35 & 1) != 0;
  }

  return 1;
}

uint64_t sub_1BA32D360(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1BA32D3BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t DateOfBirthItem.init(dateOfBirthComponents:dateGenerator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1BA018958(a1, a4);
  v8 = type metadata accessor for DateOfBirthItem();
  v9 = (a4 + v8[5]);
  *v9 = a2;
  v9[1] = a3;
  v10 = qword_1EDC5E100;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = sub_1BA4A1318();
  v12 = (a4 + v8[6]);
  *v12 = v11;
  v12[1] = v13;
  v14 = sub_1BA4A1318();
  v16 = v15;

  result = sub_1BA32E9B8(a1, &qword_1EBBEA478, MEMORY[0x1E6968278]);
  v18 = (a4 + v8[7]);
  *v18 = v14;
  v18[1] = v16;
  return result;
}

uint64_t type metadata accessor for DateOfBirthItem()
{
  result = qword_1EBBF0AC8;
  if (!qword_1EBBF0AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1BA32D5E4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v0 setTimeStyle_];
  result = [v0 setDateStyle_];
  qword_1EBBF0A90 = v0;
  return result;
}

id sub_1BA32D648()
{
  result = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  qword_1EBBF0A98 = result;
  return result;
}

uint64_t sub_1BA32D67C()
{
  v0 = sub_1BA4A17D8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BA4A18A8();
  __swift_allocate_value_buffer(v4, qword_1EBBF0AA0);
  __swift_project_value_buffer(v4, qword_1EBBF0AA0);
  (*(v1 + 104))(v3, *MEMORY[0x1E6969868], v0);
  sub_1BA4A17E8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t DateOfBirthItem.reuseIdentifier.getter()
{
  type metadata accessor for TitleValueTableViewCell();
  sub_1BA32D934(0, &qword_1EBBE9718, type metadata accessor for TitleValueTableViewCell);
  return sub_1BA4A6808();
}

uint64_t DateOfBirthItem.uniqueIdentifier.getter()
{
  sub_1BA32EA70(0, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v11 - v2;
  v11[0] = type metadata accessor for DateOfBirthItem();
  sub_1BA32D934(0, &qword_1EBBF0AB8, type metadata accessor for DateOfBirthItem);
  v4 = sub_1BA4A6808();
  v6 = v5;
  sub_1BA018958(v0, v3);
  v7 = sub_1BA4A6808();
  v9 = v8;
  v11[0] = v4;
  v11[1] = v6;

  MEMORY[0x1BFAF1350](v7, v9);

  return v11[0];
}

uint64_t sub_1BA32D934(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1BA32D980()
{
  type metadata accessor for TitleValueTableViewCell();
  sub_1BA32D934(0, &qword_1EBBE9718, type metadata accessor for TitleValueTableViewCell);
  return sub_1BA4A6808();
}

uint64_t sub_1BA32D9D8(uint64_t a1)
{
  sub_1BA32EA70(0, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v13 - v4;
  v13[0] = a1;
  sub_1BA32D934(0, &qword_1EBBF0AB8, type metadata accessor for DateOfBirthItem);
  v6 = sub_1BA4A6808();
  v8 = v7;
  sub_1BA018958(v1, v5);
  v9 = sub_1BA4A6808();
  v11 = v10;
  v13[0] = v6;
  v13[1] = v8;

  MEMORY[0x1BFAF1350](v9, v11);

  return v13[0];
}

uint64_t sub_1BA32DB14(uint64_t a1)
{
  v2 = sub_1BA32EA28(&qword_1EBBEC290, type metadata accessor for DateOfBirthItem);

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t DateOfBirthItem.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for DateOfBirthItem() + 24));

  return v1;
}

uint64_t DateOfBirthItem.value.getter()
{
  v1 = sub_1BA4A1148();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA32EA70(0, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1BA018958(v0, &v10 - v6);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    v8 = *(v0 + *(type metadata accessor for DateOfBirthItem() + 28));
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    v8 = sub_1BA32DD8C(v4);
    (*(v2 + 8))(v4, v1);
  }

  return v8;
}

uint64_t sub_1BA32DD8C(uint64_t a1)
{
  v2 = sub_1BA4A1148();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A3EA8();
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v56[0] = v56 - v10;
  sub_1BA32EA70(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v56 - v12;
  v14 = sub_1BA4A1728();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v59 = v56 - v19;
  if (qword_1EBBE8828 != -1)
  {
    swift_once();
  }

  v20 = sub_1BA4A18A8();
  __swift_project_value_buffer(v20, qword_1EBBF0AA0);
  sub_1BA4A1838();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1BA32E9B8(v13, &qword_1EDC6E440, MEMORY[0x1E6969530]);
    sub_1BA4A3DE8();
    (*(v3 + 16))(v5, a1, v2);
    v21 = sub_1BA4A3E88();
    v22 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v60 = v24;
      *v23 = 136446722;
      *(v23 + 4) = sub_1B9F0B82C(0x6942664F65746144, 0xEF6D657449687472, &v60);
      *(v23 + 12) = 2082;
      *(v23 + 14) = sub_1B9F0B82C(0xD000000000000020, 0x80000001BA500770, &v60);
      *(v23 + 22) = 2080;
      sub_1BA32EA28(&qword_1EBBEBC50, MEMORY[0x1E6968278]);
      v25 = sub_1BA4A82D8();
      v27 = v26;
      (*(v3 + 8))(v5, v2);
      v28 = sub_1B9F0B82C(v25, v27, &v60);

      *(v23 + 24) = v28;
      _os_log_impl(&dword_1B9F07000, v21, v22, "[%{public}s.%{public}s]: Unable to create date from birth day components: %s", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v24, -1, -1);
      MEMORY[0x1BFAF43A0](v23, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    (*(v57 + 8))(v8, v58);
    return 0;
  }

  (*(v15 + 32))(v59, v13, v14);
  v29 = sub_1BA4A10F8();
  v30 = type metadata accessor for DateOfBirthItem();
  (*(v56[1] + *(v30 + 20)))();
  v31 = sub_1BA4A16B8();
  v32 = *(v15 + 8);
  v32(v17, v14);
  v33 = [v29 hk:v31 ageWithCurrentDate:?];

  if (qword_1EBBE8820 != -1)
  {
    swift_once();
  }

  v34 = qword_1EBBF0A98;
  sub_1BA0B5A7C();
  v35 = sub_1BA4A7768();
  v36 = [v34 stringFromNumber_];

  if (!v36)
  {
    v51 = v56[0];
    sub_1BA4A3DE8();
    v52 = sub_1BA4A3E88();
    v53 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v60 = v55;
      *v54 = 136446723;
      *(v54 + 4) = sub_1B9F0B82C(0x6942664F65746144, 0xEF6D657449687472, &v60);
      *(v54 + 12) = 2082;
      *(v54 + 14) = sub_1B9F0B82C(0xD000000000000020, 0x80000001BA500770, &v60);
      *(v54 + 22) = 2049;
      *(v54 + 24) = v33;
      _os_log_impl(&dword_1B9F07000, v52, v53, "[%{public}s.%{public}s]: Unable to create age string from age: %{private}ld", v54, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v55, -1, -1);
      MEMORY[0x1BFAF43A0](v54, -1, -1);
    }

    (*(v57 + 8))(v51, v58);
    v32(v59, v14);
    return 0;
  }

  v37 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v57 = v38;

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v58 = v32;
  sub_1BA4A1318();
  sub_1BA32EA70(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1BA4B5460;
  if (qword_1EBBE8818 != -1)
  {
    swift_once();
  }

  v40 = qword_1EBBF0A90;
  v41 = v59;
  v42 = sub_1BA4A16B8();
  v43 = [v40 stringFromDate_];

  v44 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v46 = v45;

  v47 = MEMORY[0x1E69E6158];
  *(v39 + 56) = MEMORY[0x1E69E6158];
  v48 = sub_1B9F1BE20();
  *(v39 + 32) = v44;
  *(v39 + 40) = v46;
  *(v39 + 96) = v47;
  *(v39 + 104) = v48;
  *(v39 + 64) = v48;
  *(v39 + 72) = v37;
  *(v39 + 80) = v57;
  v49 = sub_1BA4A67D8();

  v58(v41, v14);
  return v49;
}

uint64_t sub_1BA32E714(uint64_t a1)
{
  v3 = sub_1BA4A1148();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA32EA70(0, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - v8;
  sub_1BA018958(v1, &v12 - v8);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    v10 = *(v1 + *(a1 + 28));
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    v10 = sub_1BA32DD8C(v6);
    (*(v4 + 8))(v6, v3);
  }

  return v10;
}

void sub_1BA32E8F4()
{
  sub_1BA32EA70(319, &qword_1EBBEA478, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B9F37BB8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BA32E9B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA32EA70(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BA32EA28(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BA32EA70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

CGFloat sub_1BA32EAD4(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  Width = CGRectGetWidth(v22);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  v11 = Width / CGRectGetHeight(v23);
  v12 = v11 < a1;
  Height = a5;
  v14 = a4;
  if (v11 != a1)
  {
    v15 = a2;
    v16 = a3;
    v17 = a4;
    v18 = a5;
    if (v12)
    {
      v14 = CGRectGetWidth(*&v15);
      v24.origin.x = a2;
      v24.origin.y = a3;
      v24.size.width = a4;
      v24.size.height = a5;
      Height = CGRectGetWidth(v24) / a1;
    }

    else
    {
      Height = CGRectGetHeight(*&v15);
      v25.origin.x = a2;
      v25.origin.y = a3;
      v25.size.width = a4;
      v25.size.height = a5;
      v14 = CGRectGetHeight(v25) * a1;
    }
  }

  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  v19 = CGRectGetWidth(v26);
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = v14;
  v27.size.height = Height;
  v20 = floor((v19 - CGRectGetWidth(v27)) * 0.5) + a2;
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  CGRectGetHeight(v28);
  v29.origin.x = v20;
  v29.origin.y = a3;
  v29.size.width = v14;
  v29.size.height = Height;
  CGRectGetHeight(v29);
  return v20;
}

uint64_t static SharingProfileDeepLinkRouter.isProfileIdentifierValid(_:context:)(uint64_t a1, uint64_t a2)
{
  sub_1BA4A6C68();
  v5[2] = a2;
  v5[3] = a1;
  return sub_1BA1E0C2C(sub_1BA32EE50, v5, "HealthExperienceUI/SharingProfileDeepLinkRouter.swift") & 1;
}

uint64_t sub_1BA32ECBC@<X0>(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = MEMORY[0x1E69A3108];
  sub_1BA3304E4(0, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  type metadata accessor for HealthKitProfileInformationDataSource();
  swift_allocObject();
  v10 = *sub_1BA2B8F0C(a1, a2, 0, 0, 0, 0);
  (*(v10 + 760))();

  v11 = sub_1BA4A2888();
  LOBYTE(a2) = (*(*(v11 - 8) + 48))(v9, 1, v11) != 1;
  result = sub_1BA330538(v9, &qword_1EDC6E200, v6);
  *a3 = a2;
  return result;
}

uint64_t static SharingProfileDeepLinkRouter.configureAppForSharingActivity(_:rootViewController:)(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 32);
  ObjectType = swift_getObjectType();
  [v3 restoreUserActivityState_];
  return (*(v4 + 24))(ObjectType, v4);
}

uint64_t static SharingProfileDeepLinkRouter.handleUserActivity(_:rootViewController:profileIdentifier:)(void *a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  v7 = v3;
  return sub_1BA32FD64(a1, v6, a3) & 1;
}

uint64_t static SharingProfileDeepLinkRouter.handleURL(_:rootViewController:profileIdentifier:)(uint64_t a1, void **a2, void *a3)
{
  v56 = a1;
  v4 = *a2;
  v59 = a2[1];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  sub_1BA3304E4(0, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v51 = &v46 - v9;
  v54 = sub_1BA4A3678();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A35A8();
  v55 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BA4A15D8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1BA4A3878();
  v57 = *(v58 - 8);
  v18 = MEMORY[0x1EEE9AC00](v58);
  v60 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a3 type] == 1 || (v47 = v6, v48 = v5, v49 = v7, v50 = v4, UIViewController.resolvedHealthExperienceStore.getter(v65), __swift_project_boxed_opaque_existential_1(v65, v65[3]), v20 = sub_1BA4A1B68(), v21 = sub_1BA4A6C68(), MEMORY[0x1EEE9AC00](v21), *(&v46 - 2) = v20, *(&v46 - 1) = a3, v46 = a3, v22 = sub_1BA1E0C2C(sub_1BA330594, (&v46 - 4), "HealthExperienceUI/SharingProfileDeepLinkRouter.swift"), v20, __swift_destroy_boxed_opaque_existential_1(v65), (v22 & 1) == 0))
  {
    v31 = 0;
  }

  else
  {
    v23 = v56;
    (*(v15 + 16))(v17, v56, v14);
    v24 = v60;
    sub_1BA4A3828();
    sub_1BA4A37E8();
    if (v25)
    {
      type metadata accessor for PluginDeepLinkRouter();
      inited = swift_initStackObject();
      v27 = v50;
      v28 = v59;
      *(inited + 16) = v50;
      *(inited + 24) = v28;
      v29 = v48;
      *(inited + 32) = v47;
      *(inited + 40) = v29;
      *(inited + 48) = v49;
      v30 = v27;
      sub_1BA4A3598();
      PluginDeepLinkRouter.launchPluginFromURL(_:pluginType:)(v23, v13);
      swift_setDeallocating();

      (*(v55 + 8))(v13, v11);
      (*(v57 + 8))(v24, v58);
      v31 = 1;
    }

    else
    {
      v33 = v51;
      sub_1BA32F5D4(v51);
      v34 = v53;
      v35 = *(v53 + 48);
      v36 = v54;
      v37 = v35(v33, 1, v54);
      v38 = v49;
      v39 = v48;
      v40 = v47;
      if (v37 == 1)
      {
        v41 = v52;
        (*(v34 + 104))(v52, *MEMORY[0x1E69A2C30], v36);
        v42 = v35(v33, 1, v36);
        v43 = v46;
        if (v42 != 1)
        {
          sub_1BA330538(v33, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
        }
      }

      else
      {
        v41 = v52;
        (*(v34 + 32))(v52, v33, v36);
        v43 = v46;
      }

      v44 = sub_1BA4A35B8();
      if (sub_1BA4A3808())
      {
        v45 = sub_1BA4A6618();

        [v44 addUserInfoEntriesFromDictionary_];
      }

      *&v61 = v50;
      *(&v61 + 1) = v59;
      v62 = v40;
      v63 = v39;
      v64 = v38;
      v31 = sub_1BA32FD64(v44, &v61, v43);

      (*(v34 + 8))(v41, v36);
      (*(v57 + 8))(v60, v58);
    }
  }

  return v31 & 1;
}

uint64_t sub_1BA32F5D4@<X0>(char *a1@<X8>)
{
  sub_1BA3304E4(0, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = sub_1BA4A3678();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  sub_1BA4A15A8();
  if (v15)
  {
    sub_1BA4A3668();
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      v19 = *(v9 + 32);
      v19(v14, v7, v8);
      v19(a1, v14, v8);
      goto LABEL_11;
    }

    sub_1BA330538(v7, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
  }

  v16 = *(sub_1BA4A1528() + 16);

  if (v16 < 2)
  {
LABEL_8:
    v18 = 1;
    return (*(v9 + 56))(a1, v18, 1, v8);
  }

  result = sub_1BA4A1528();
  if (*(result + 16) >= 2uLL)
  {

    sub_1BA4A3668();
    if ((*(v9 + 48))(v4, 1, v8) == 1)
    {
      sub_1BA330538(v4, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
      goto LABEL_8;
    }

    v20 = *(v9 + 32);
    v20(v11, v4, v8);
    v20(a1, v11, v8);
LABEL_11:
    v18 = 0;
    return (*(v9 + 56))(a1, v18, 1, v8);
  }

  __break(1u);
  return result;
}

id _s18HealthExperienceUI28SharingProfileDeepLinkRouterV35migrateLegacyProfilesPluginActivityySo06NSUserM0CAFFZ_0(void *a1)
{
  v41 = a1;
  v1 = sub_1BA4A3678();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A35D8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - v11;
  v13 = [v41 userInfo];
  if (v13)
  {
    v38 = v4;
    v39 = v2;
    v40 = v1;
    v14 = v13;
    v15 = sub_1BA4A6628();

    v46 = v15;
    v16 = *MEMORY[0x1E69A2B78];
    v37 = *(v6 + 104);
    v37(v12, v16, v5);
    v17 = sub_1BA4A35C8();
    v19 = v18;
    v20 = *(v6 + 8);
    v20(v12, v5);
    v42 = v17;
    v43 = v19;
    sub_1BA4A7D58();
    if (*(v15 + 16) && (v21 = sub_1B9FDA8E4(v44), (v22 & 1) != 0))
    {
      sub_1B9F0AD9C(*(v15 + 56) + 32 * v21, v45);
      sub_1B9FDC768(v44);
      if (swift_dynamicCast())
      {
        if (v42 == 0xD000000000000019 && 0x80000001BA500820 == v43)
        {

LABEL_14:
          v37(v8, v16, v5);
          v26 = sub_1BA4A35C8();
          v28 = v27;
          v20(v8, v5);
          *&v45[0] = v26;
          *(&v45[0] + 1) = v28;
          sub_1BA4A7D58();
          sub_1BA0F6614(v44, v45);
          sub_1B9F0DF20(v45, sub_1BA01E3E8);
          sub_1B9FDC768(v44);
          v29 = [v41 title];
          if (v29)
          {
            v30 = v29;
            _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          }

          v32 = v39;
          v31 = v40;
          v33 = v38;
          (*(v39 + 104))(v38, *MEMORY[0x1E69A2C30], v40);
          v34 = sub_1BA4A35B8();

          (*(v32 + 8))(v33, v31);
          v35 = sub_1BA4A6618();
          [v34 addUserInfoEntriesFromDictionary_];

          return v34;
        }

        v25 = sub_1BA4A8338();

        if (v25)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_1B9FDC768(v44);
    }
  }

  v23 = v41;

  return v23;
}

uint64_t sub_1BA32FD64(void *a1, __int128 *a2, void *a3)
{
  v51 = a1;
  v4 = a2[1];
  v52 = *a2;
  v50 = v4;
  v5 = *(a2 + 4);
  v6 = sub_1BA4A3678();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA33038C();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3304E4(0, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v44 - v22;
  if ([a3 type] == 1)
  {
    return 0;
  }

  v48 = v23;
  v49 = v7;
  v47 = v5;
  v24 = v52;
  ObjectType = swift_getObjectType();
  v46 = v24;
  UIViewController.resolvedHealthExperienceStore.getter(v53);
  __swift_project_boxed_opaque_existential_1(v53, v53[3]);
  v25 = sub_1BA4A1B68();
  v26 = sub_1BA4A6C68();
  MEMORY[0x1EEE9AC00](v26);
  *(&v44 - 2) = v25;
  *(&v44 - 1) = a3;
  LOBYTE(v24) = sub_1BA1E0C2C(sub_1BA330594, (&v44 - 4), "HealthExperienceUI/SharingProfileDeepLinkRouter.swift");

  __swift_destroy_boxed_opaque_existential_1(v53);
  if ((v24 & 1) == 0)
  {
    return 0;
  }

  v27 = _s18HealthExperienceUI28SharingProfileDeepLinkRouterV35migrateLegacyProfilesPluginActivityySo06NSUserM0CAFFZ_0(v51);
  v28 = [v27 activityType];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  v29 = v48;
  sub_1BA4A3688();
  v30 = v49;
  (*(v49 + 104))(v19, *MEMORY[0x1E69A2C50], v6);
  (*(v30 + 56))(v19, 0, 1, v6);
  v31 = *(v11 + 48);
  sub_1BA33040C(v29, v13);
  sub_1BA33040C(v19, &v13[v31]);
  v32 = *(v30 + 48);
  if (v32(v13, 1, v6) == 1)
  {
    sub_1BA330538(v19, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
    v33 = v32(&v13[v31], 1, v6);
    v34 = v47;
    if (v33 == 1)
    {
      sub_1BA330538(v13, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
LABEL_12:
      type metadata accessor for PluginDeepLinkRouter();
      inited = swift_initStackObject();
      v42 = v50;
      *(inited + 16) = v52;
      *(inited + 32) = v42;
      *(inited + 48) = v34;
      v43 = v46;
      PluginDeepLinkRouter.launchPluginForSharingActivity(activity:)(v27);

      swift_setDeallocating();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_1BA33040C(v13, v16);
  if (v32(&v13[v31], 1, v6) == 1)
  {
    sub_1BA330538(v19, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
    (*(v49 + 8))(v16, v6);
    v34 = v47;
LABEL_9:
    sub_1B9F0DF20(v13, sub_1BA33038C);
    goto LABEL_10;
  }

  v51 = v27;
  v37 = v49;
  (*(v49 + 32))(v9, &v13[v31], v6);
  sub_1BA33048C();
  v38 = sub_1BA4A6728();
  v39 = *(v37 + 8);
  v39(v9, v6);
  v40 = MEMORY[0x1E69A2C78];
  sub_1BA330538(v19, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
  v39(v16, v6);
  v27 = v51;
  v29 = v48;
  sub_1BA330538(v13, &qword_1EBBED070, v40);
  v34 = v47;
  if (v38)
  {
    goto LABEL_12;
  }

LABEL_10:
  v36 = v46;
  [v46 restoreUserActivityState_];
  v53[0] = v36;

LABEL_13:
  sub_1BA330538(v29, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
  return 1;
}

void sub_1BA33038C()
{
  if (!qword_1EBBF0AD8)
  {
    sub_1BA3304E4(255, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBF0AD8);
    }
  }
}

uint64_t sub_1BA33040C(uint64_t a1, uint64_t a2)
{
  sub_1BA3304E4(0, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BA33048C()
{
  result = qword_1EBBF0AE0;
  if (!qword_1EBBF0AE0)
  {
    sub_1BA4A3678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF0AE0);
  }

  return result;
}

void sub_1BA3304E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BA330538(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1BA3304E4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void (*sub_1BA3305FC(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI24PluginNotificationRouter_sceneProvider;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BA04A958;
}

id PluginNotificationRouter.init()()
{
  sub_1BA4A3C48();
  v0 = sub_1BA4A3C38();
  type metadata accessor for PlatformNotificationHandlerPluginProvider();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = v0;
  v2 = sub_1B9F0A388(v1);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v2;
}

id PluginNotificationRouter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PluginNotificationRouter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PluginNotificationRouter.userNotificationCenter(_:willPresent:withCompletionHandler:)(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v8 = sub_1BA3308D8(a2);
  if ((v9 & 1) == 0)
  {
    v10 = sub_1BA330E40(v8);
    if (v10)
    {
      v11 = v10;
      if (sub_1BA3311D8(v10, sel_userNotificationCenter_willPresentNotification_withCompletionHandler_))
      {
        v12 = swift_allocObject();
        *(v12 + 16) = a3;
        *(v12 + 24) = a4;
        v15[4] = sub_1BA332CE0;
        v15[5] = v12;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 1107296256;
        v15[2] = sub_1BA331738;
        v15[3] = &block_descriptor_88;
        v13 = _Block_copy(v15);

        [v11 userNotificationCenter:a1 willPresentNotification:a2 withCompletionHandler:v13];
        _Block_release(v13);
        return swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }

  return a3(27);
}

id sub_1BA3308D8(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - v9;
  v11 = [a1 request];
  v12 = [v11 content];

  v13 = [v12 userInfo];
  v14 = sub_1BA4A6628();

  v46[0] = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v46[1] = v15;
  sub_1BA4A7D58();
  if (*(v14 + 16) && (v16 = sub_1B9FDA8E4(v48), (v17 & 1) != 0))
  {
    sub_1B9F0AD9C(*(v14 + 56) + 32 * v16, v49);
    sub_1B9FDC768(v48);

    sub_1B9F0AD9C(v49, v48);
    sub_1B9F0ADF8(0, &qword_1EDC6E360);
    if (swift_dynamicCast())
    {
      v18 = v46[0];
      v19 = [v46[0] integerValue];

      __swift_destroy_boxed_opaque_existential_1(v49);
      return v19;
    }

    sub_1BA4A3E08();
    sub_1B9F0AD9C(v49, v48);
    v33 = sub_1BA4A3E88();
    v34 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v47 = v36;
      *v35 = 136446466;
      v46[0] = ObjectType;
      swift_getMetatypeMetadata();
      v37 = sub_1BA4A6808();
      v39 = sub_1B9F0B82C(v37, v38, &v47);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      sub_1B9F0AD9C(v48, v46);
      v40 = sub_1BA4A6808();
      v42 = v41;
      __swift_destroy_boxed_opaque_existential_1(v48);
      v43 = sub_1B9F0B82C(v40, v42, &v47);

      *(v35 + 14) = v43;
      _os_log_impl(&dword_1B9F07000, v33, v34, "[%{public}s]: Unhandled notification due to unexpected object in domain key: %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v36, -1, -1);
      MEMORY[0x1BFAF43A0](v35, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v48);
    }

    (*(v4 + 8))(v10, v3);
    __swift_destroy_boxed_opaque_existential_1(v49);
  }

  else
  {
    sub_1B9FDC768(v48);
    sub_1BA4A3E08();

    v21 = sub_1BA4A3E88();
    v22 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v49[0] = v24;
      *v23 = 136446466;
      v48[0] = ObjectType;
      swift_getMetatypeMetadata();
      v25 = sub_1BA4A6808();
      v27 = sub_1B9F0B82C(v25, v26, v49);
      v45 = v3;
      v28 = v27;

      *(v23 + 4) = v28;
      *(v23 + 12) = 2080;
      v29 = sub_1BA4A6638();
      v31 = v30;

      v32 = sub_1B9F0B82C(v29, v31, v49);

      *(v23 + 14) = v32;
      _os_log_impl(&dword_1B9F07000, v21, v22, "[%{public}s]: Unhandled notification due to missing domain key in userInfo: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v24, -1, -1);
      MEMORY[0x1BFAF43A0](v23, -1, -1);

      (*(v4 + 8))(v6, v45);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }
  }

  return 0;
}

uint64_t sub_1BA330E40(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC18HealthExperienceUI24PluginNotificationRouter_pluginProviding), *(v1 + OBJC_IVAR____TtC18HealthExperienceUI24PluginNotificationRouter_pluginProviding + 24));
  result = sub_1BA332B08();
  v6 = result;
  v7 = *(result + 16);
  if (v7)
  {
    v8 = 0;
    while (1)
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
        return result;
      }

      v36 = *(v6 + 16 * v8 + 32);
      v9 = swift_getObjectType();
      v10 = *(&v36 + 1);
      v11 = *(*(&v36 + 1) + 16);
      swift_unknownObjectRetain();
      v12 = v11(a1, v9, v10);
      if (v12)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      if (v7 == ++v8)
      {
        goto LABEL_6;
      }
    }

    v13 = v12;

    v14 = v33;
    sub_1BA4A3E08();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v15 = sub_1BA4A3E88();
    v16 = sub_1BA4A6FC8();
    v17 = v13;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v15, v16))
    {
      v18 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38 = v31;
      *v18 = 136446978;
      *&v37 = ObjectType;
      swift_getMetatypeMetadata();
      v19 = sub_1BA4A6808();
      v21 = sub_1B9F0B82C(v19, v20, &v38);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2082;
      v37 = v36;
      sub_1BA333414();
      swift_unknownObjectRetain();
      v22 = sub_1BA4A6808();
      v24 = sub_1B9F0B82C(v22, v23, &v38);

      *(v18 + 14) = v24;
      *(v18 + 22) = 2082;
      v25 = v17;
      *&v37 = v17;
      sub_1BA3333B0();
      swift_unknownObjectRetain();
      v26 = sub_1BA4A6808();
      v28 = sub_1B9F0B82C(v26, v27, &v38);

      *(v18 + 24) = v28;
      *(v18 + 32) = 2048;
      *(v18 + 34) = a1;
      _os_log_impl(&dword_1B9F07000, v15, v16, "[%{public}s]: %{public}s plugin provided delegate %{public}s for domain raw value: %ld", v18, 0x2Au);
      v29 = v31;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      MEMORY[0x1BFAF43A0](v18, -1, -1);
      swift_unknownObjectRelease();

      (*(v34 + 8))(v14, v35);
      return v25;
    }

    else
    {

      swift_unknownObjectRelease();
      (*(v34 + 8))(v14, v35);
      return v13;
    }
  }

  else
  {
LABEL_6:

    return 0;
  }
}

id sub_1BA3311D8(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 respondsToSelector_];
  if ((result & 1) == 0)
  {
    v25 = result;
    sub_1BA4A3E08();
    swift_unknownObjectRetain();
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FC8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v26 = v24;
      v27 = ObjectType;
      *v13 = 136446722;
      swift_getMetatypeMetadata();
      v14 = sub_1BA4A6808();
      v16 = sub_1B9F0B82C(v14, v15, &v26);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2082;
      v27 = a1;
      sub_1BA3333B0();
      swift_unknownObjectRetain();
      v17 = sub_1BA4A6808();
      v19 = sub_1B9F0B82C(v17, v18, &v26);

      *(v13 + 14) = v19;
      *(v13 + 22) = 2082;
      v20 = sub_1BA4A19A8();
      v22 = sub_1B9F0B82C(v20, v21, &v26);

      *(v13 + 24) = v22;
      _os_log_impl(&dword_1B9F07000, v11, v12, "[%{public}s]: delegate %{public}s does not respond to: %{public}s", v13, 0x20u);
      v23 = v24;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v23, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    return v25;
  }

  return result;
}

uint64_t sub_1BA33144C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BA4A6478();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BA4A64C8();
  v10 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v13 = sub_1BA4A7308();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a1;
  aBlock[4] = sub_1BA333380;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_51;
  v15 = _Block_copy(aBlock);

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7F60];
  sub_1BA3332D4(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
  sub_1BA33331C(0, &qword_1EDC5E6B0, v16, MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v12, v9, v15);
  _Block_release(v15);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v19);
}

uint64_t sub_1BA331738(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t PluginNotificationRouter.userNotificationCenter(_:didReceive:withCompletionHandler:)(uint64_t a1, id a2, uint64_t (*a3)(void *), uint64_t a4)
{
  v8 = [a2 notification];
  v9 = sub_1BA3308D8(v8);
  v11 = v10;

  if (v11)
  {
    return a3(v12);
  }

  v12 = sub_1BA330E40(v9);
  if (!v12)
  {
    return a3(v12);
  }

  v13 = v12;
  if ((sub_1BA3311D8(v12, sel_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler_) & 1) == 0)
  {
    v12 = swift_unknownObjectRelease();
    return a3(v12);
  }

  if ([v13 respondsToSelector_])
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a4;
    v17[4] = sub_1BA332CE8;
    v17[5] = v14;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1B9F0B040;
    v17[3] = &block_descriptor_6_7;
    v15 = _Block_copy(v17);
    swift_unknownObjectRetain();

    [v13 userNotificationCenter:a1 didReceiveNotificationResponse:a2 withCompletionHandler:v15];
    _Block_release(v15);

    swift_unknownObjectRelease_n();
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1BA331978(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BA4A6478();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A64C8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v12 = sub_1BA4A7308();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  aBlock[4] = sub_1B9F7B0D4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_45;
  v14 = _Block_copy(aBlock);

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7F60];
  sub_1BA3332D4(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
  sub_1BA33331C(0, &qword_1EDC5E6B0, v15, MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v11, v7, v14);
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

void sub_1BA331C74(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(id, id, id, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(v11, v12, v13, v10);
  _Block_release(v10);
  _Block_release(v10);
}

Swift::Void __swiftcall PluginNotificationRouter.userNotificationCenter(_:openSettingsFor:)(UNUserNotificationCenter _, UNNotification_optional openSettingsFor)
{
  isa = openSettingsFor.value.super.isa;
  sub_1BA33331C(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  if (isa)
  {
    v10 = sub_1BA3308D8(isa);
    if ((v11 & 1) == 0)
    {
      v12 = sub_1BA330E40(v10);
      if (v12)
      {
        v13 = v12;
        if (sub_1BA3311D8(v12, sel_userNotificationCenter_openSettingsForNotification_))
        {
          [v13 userNotificationCenter:_.super.isa openSettingsForNotification:isa];

          swift_unknownObjectRelease();
          return;
        }

        swift_unknownObjectRelease();
      }
    }
  }

  v14 = [objc_allocWithZone(MEMORY[0x1E69A2D88]) init];
  v15 = [v14 URLForNotificationSettings];
  if (v15)
  {
    v16 = v15;
    sub_1BA4A1588();

    v17 = sub_1BA4A15D8();
    (*(*(v17 - 8) + 56))(v6, 0, 1, v17);
  }

  else
  {
    v18 = sub_1BA4A15D8();
    (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  }

  sub_1BA12BCA4(v6, v9);
  sub_1BA331F48(v9);

  sub_1BA0B17A4(v9);
}

uint64_t sub_1BA331F48(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v78 = *(v3 - 8);
  v79 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v66[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v66[-v7];
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v66[-v10];
  sub_1BA33331C(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v66[-v12];
  v14 = sub_1BA4A15D8();
  v76 = *(v14 - 8);
  v15 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v74 = &v66[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v66[-v17];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v66[-v20];
  v22 = v1 + OBJC_IVAR____TtC18HealthExperienceUI24PluginNotificationRouter_sceneProvider;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v24 = Strong, v25 = *(v22 + 8), v26 = swift_getObjectType(), v27 = (*(v25 + 8))(v26, v25), v24, v27))
  {
    sub_1BA3331A4(a1, v13);
    v28 = v76;
    if ((*(v76 + 48))(v13, 1, v14) == 1)
    {
      sub_1BA0B17A4(v13);
      sub_1BA4A3E28();
      v29 = sub_1BA4A3E88();
      v30 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        aBlock[0] = v32;
        *v31 = 136446210;
        v33 = sub_1BA4A85D8();
        v35 = v27;
        v36 = sub_1B9F0B82C(v33, v34, aBlock);

        *(v31 + 4) = v36;
        _os_log_impl(&dword_1B9F07000, v29, v30, "%{public}s Invalid URL. Something is really wrong!", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v32);
        MEMORY[0x1BFAF43A0](v32, -1, -1);
        MEMORY[0x1BFAF43A0](v31, -1, -1);
      }

      else
      {
      }

      return (*(v78 + 8))(v8, v79);
    }

    else
    {
      v45 = *(v28 + 32);
      v72 = v28 + 32;
      v73 = v27;
      v71 = v45;
      v45(v21, v13, v14);
      v46 = v75;
      sub_1BA4A3E28();
      v70 = *(v28 + 16);
      v70(v18, v21, v14);
      v47 = sub_1BA4A3E88();
      v48 = sub_1BA4A6FC8();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        aBlock[0] = v68;
        *v49 = 136446466;
        v50 = sub_1BA4A85D8();
        v52 = sub_1B9F0B82C(v50, v51, aBlock);

        *(v49 + 4) = v52;
        *(v49 + 12) = 2082;
        sub_1BA3332D4(&qword_1EBBF0B10, MEMORY[0x1E6968FB0]);
        v53 = sub_1BA4A82D8();
        v55 = v54;
        v56 = *(v76 + 8);
        v67 = v48;
        v69 = v56;
        v56(v18, v14);
        v57 = sub_1B9F0B82C(v53, v55, aBlock);

        *(v49 + 14) = v57;
        _os_log_impl(&dword_1B9F07000, v47, v67, "%{public}s Opening %{public}s", v49, 0x16u);
        v58 = v68;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v58, -1, -1);
        v59 = v49;
        v28 = v76;
        MEMORY[0x1BFAF43A0](v59, -1, -1);

        (*(v78 + 8))(v75, v79);
      }

      else
      {

        v69 = *(v28 + 8);
        v69(v18, v14);
        (*(v78 + 8))(v46, v79);
      }

      v60 = sub_1BA4A1548();
      v61 = v74;
      v70(v74, v21, v14);
      v62 = (*(v28 + 80) + 16) & ~*(v28 + 80);
      v63 = swift_allocObject();
      v71(v63 + v62, v61, v14);
      *(v63 + ((v15 + v62 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
      aBlock[4] = sub_1BA333238;
      aBlock[5] = v63;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BA40695C;
      aBlock[3] = &block_descriptor_39;
      v64 = _Block_copy(aBlock);

      v65 = v73;
      [v73 openURL:v60 options:0 completionHandler:v64];
      _Block_release(v64);

      return (v69)(v21, v14);
    }
  }

  else
  {
    sub_1BA4A3E28();
    v37 = sub_1BA4A3E88();
    v38 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock[0] = v40;
      *v39 = 136446210;
      v41 = sub_1BA4A85D8();
      v43 = sub_1B9F0B82C(v41, v42, aBlock);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_1B9F07000, v37, v38, "%{public}s Can not find connected scene. Something is really wrong!", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x1BFAF43A0](v40, -1, -1);
      MEMORY[0x1BFAF43A0](v39, -1, -1);
    }

    return (*(v78 + 8))(v5, v79);
  }
}

void sub_1BA3327F4(char a1, uint64_t a2)
{
  v4 = sub_1BA4A15D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a1 & 1) == 0)
  {
    sub_1BA4A3E28();
    (*(v5 + 16))(v7, a2, v4);
    v12 = sub_1BA4A3E88();
    v13 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v25;
      *v14 = 136446466;
      v15 = sub_1BA4A85D8();
      v24 = v13;
      v17 = sub_1B9F0B82C(v15, v16, &v26);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2082;
      sub_1BA3332D4(&qword_1EBBF0B10, MEMORY[0x1E6968FB0]);
      v18 = sub_1BA4A82D8();
      v20 = v19;
      (*(v5 + 8))(v7, v4);
      v21 = sub_1B9F0B82C(v18, v20, &v26);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_1B9F07000, v12, v24, "%{public}s Could not open %{public}s", v14, 0x16u);
      v22 = v25;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v22, -1, -1);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    (*(v9 + 8))(v11, v8);
  }
}

void *sub_1BA332B08()
{
  v1 = *(v0 + 16);
  if (v1)
  {
  }

  else
  {
    v17 = v0;
    v2 = sub_1BA4A3B68();
    v3 = v2;
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
LABEL_22:
      v5 = sub_1BA4A7CC8();
    }

    else
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    v1 = MEMORY[0x1E69E7CC0];
    while (v5 != v6)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1BFAF2860](v6, v3);
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          goto LABEL_21;
        }

        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v10 = sub_1BA2FE0E0();
      v12 = v11;

      ++v6;
      if (v10)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_1BA280B28(0, v1[2] + 1, 1, v1);
        }

        v14 = v1[2];
        v13 = v1[3];
        if (v14 >= v13 >> 1)
        {
          v1 = sub_1BA280B28((v13 > 1), v14 + 1, 1, v1);
        }

        v1[2] = v14 + 1;
        v15 = &v1[2 * v14];
        v15[4] = v10;
        v15[5] = v12;
        v6 = v9;
      }
    }

    *(v17 + 16) = v1;
  }

  return v1;
}

uint64_t sub_1BA332CA0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BA332D98(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  _Block_copy(a4);
  v8 = sub_1BA3308D8(a2);
  if ((v9 & 1) == 0)
  {
    v10 = sub_1BA330E40(v8);
    if (v10)
    {
      v11 = v10;
      if (sub_1BA3311D8(v10, sel_userNotificationCenter_willPresentNotification_withCompletionHandler_))
      {
        v12 = swift_allocObject();
        *(v12 + 16) = sub_1BA204DF0;
        *(v12 + 24) = v7;
        v15[4] = sub_1BA3334A0;
        v15[5] = v12;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 1107296256;
        v15[2] = sub_1BA331738;
        v15[3] = &block_descriptor_33_1;
        v13 = _Block_copy(v15);

        [v11 userNotificationCenter:a1 willPresentNotification:a2 withCompletionHandler:v13];
        _Block_release(v13);

        return swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }

  a4[2](a4, 27);
}

uint64_t sub_1BA332F4C(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void))
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  _Block_copy(a4);
  v8 = [a2 notification];
  v9 = sub_1BA3308D8(v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    v12 = sub_1BA330E40(v9);
    if (v12)
    {
      v13 = v12;
      if (sub_1BA3311D8(v12, sel_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler_))
      {
        if ([v13 respondsToSelector_])
        {
          v14 = swift_allocObject();
          *(v14 + 16) = sub_1BA333194;
          *(v14 + 24) = v7;
          v17[4] = sub_1BA333484;
          v17[5] = v14;
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 1107296256;
          v17[2] = sub_1B9F0B040;
          v17[3] = &block_descriptor_23_0;
          v15 = _Block_copy(v17);
          swift_unknownObjectRetain();

          [v13 userNotificationCenter:a1 didReceiveNotificationResponse:a2 withCompletionHandler:v15];
          _Block_release(v15);

          swift_unknownObjectRelease_n();
        }

        else
        {

          return swift_unknownObjectRelease();
        }
      }

      swift_unknownObjectRelease();
    }
  }

  a4[2](a4);
}

uint64_t sub_1BA3331A4(uint64_t a1, uint64_t a2)
{
  sub_1BA33331C(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA333238(char a1)
{
  v3 = *(sub_1BA4A15D8() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1BA3327F4(a1, v4);
}

uint64_t sub_1BA3332D4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BA33331C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BA3333B0()
{
  result = qword_1EDC5E238;
  if (!qword_1EDC5E238)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC5E238);
  }

  return result;
}

unint64_t sub_1BA333414()
{
  result = qword_1EDC603E0;
  if (!qword_1EDC603E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC603E0);
  }

  return result;
}

id LayoutConfiguration.layoutSection.getter()
{
  v1 = v0[5];
  v7[4] = v0[4];
  v7[5] = v1;
  v2 = v0[7];
  v7[6] = v0[6];
  v7[7] = v2;
  v3 = v0[1];
  v7[0] = *v0;
  v7[1] = v3;
  v4 = v0[3];
  v7[2] = v0[2];
  v7[3] = v4;
  sub_1B9F0ADF8(0, &qword_1EDC6B530);
  sub_1B9F1D9A4(v7, &v6);
  return sub_1B9F293A8(v0);
}

double static LayoutConfiguration.chart(for:respectsSystemLayoutMargins:)@<D0>(char a1@<W1>, uint64_t a2@<X8>)
{
  sub_1B9F292B4(a2);
  v4 = [objc_opt_self() estimatedDimension_];

  *(a2 + 8) = v4;
  v5 = 2;
  if (a1)
  {
    v5 = 3;
  }

  *(a2 + 88) = v5;
  sub_1B9F1DA18(*(a2 + 24), *(a2 + 32), *(a2 + 40), *(a2 + 48));
  result = 0.0;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  return result;
}

double LayoutConfiguration.withoutHeader.getter@<D0>(uint64_t a1@<X8>)
{
  v4 = v1[5];
  v19 = v1[4];
  v3 = v19;
  v20 = v4;
  v6 = v1[7];
  v21 = v1[6];
  v5 = v21;
  v22 = v6;
  v7 = v1[1];
  v16[0] = *v1;
  v16[1] = v7;
  v9 = v1[3];
  v17 = v1[2];
  v8 = v17;
  v18 = v9;
  *a1 = v16[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v3;
  *(a1 + 80) = v4;
  *(a1 + 96) = v5;
  *(a1 + 112) = v6;
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  sub_1B9F1D9A4(v16, &v15);
  sub_1B9F1DA18(v10, v11, v12, v13);
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

double LayoutConfiguration.withoutFooter.getter@<D0>(uint64_t a1@<X8>)
{
  v4 = v1[5];
  v19 = v1[4];
  v3 = v19;
  v20 = v4;
  v6 = v1[7];
  v21 = v1[6];
  v5 = v21;
  v22 = v6;
  v7 = v1[1];
  v16[0] = *v1;
  v16[1] = v7;
  v9 = v1[3];
  v17 = v1[2];
  v8 = v17;
  v18 = v9;
  *a1 = v16[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v3;
  *(a1 + 80) = v4;
  *(a1 + 96) = v5;
  *(a1 + 112) = v6;
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  sub_1B9F1D9A4(v16, &v15);
  sub_1B9F1DA18(v10, v11, v12, v13);
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

uint64_t LayoutConfiguration.BoundarySupplementaryItem.subscript.setter(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  sub_1BA33572C(a1);

  v4 = *(*(*(v3 + *MEMORY[0x1E69E6CE8] + 8) - 8) + 8);

  return v4(a1);
}

uint64_t ListLayoutConfiguration.withFooter.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ListLayoutConfiguration();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F37E38(v2, v6);
  *(v6 + 8) = 0;
  v7 = *(v2 + 24);
  if (!v7 || !*(v2 + 32))
  {
    if (qword_1EDC6D4A0 != -1)
    {
      swift_once();
    }

    v8 = qword_1EDC6D4B0;
    v9 = v7;
    if (!v7)
    {
      v9 = qword_1EDC6D4A8;
      v10 = qword_1EDC6D4A8;
    }

    v11 = *(v6 + 3);
    v12 = v7;

    *(v6 + 3) = v9;
    v13 = *(v2 + 32);
    v14 = v13;
    if (!v13)
    {
      v15 = v8;
      v14 = v8;
    }

    v16 = *(v6 + 4);
    v17 = v13;

    *(v6 + 4) = v14;
    v18 = *(v4 + 92);
    v19 = sub_1BA4A47C8();
    v20 = *(v19 - 8);
    (*(v20 + 8))(&v6[v18], v19);
    (*(v20 + 104))(&v6[v18], *MEMORY[0x1E69DC270], v19);
  }

  return sub_1BA2AFC5C(v6, a1);
}

id static UICollectionViewCompositionalLayout.respectingLayoutMargins(sectionProvider:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() defaultConfiguration];
  [v4 setContentInsetsReference_];
  v5 = objc_allocWithZone(MEMORY[0x1E69DC808]);
  v9[4] = a1;
  v9[5] = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1B9F54940;
  v9[3] = &block_descriptor_89;
  v6 = _Block_copy(v9);

  v7 = [v5 initWithSectionProvider:v6 configuration:v4];

  _Block_release(v6);

  return v7;
}

__n128 static LayoutConfiguration.pill(environment:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EDC6D380 != -1)
  {
    swift_once();
  }

  v20[4] = xmmword_1EDC6D3C8;
  v20[5] = unk_1EDC6D3D8;
  v20[6] = xmmword_1EDC6D3E8;
  v20[7] = unk_1EDC6D3F8;
  v20[0] = xmmword_1EDC6D388;
  v20[1] = xmmword_1EDC6D398;
  v20[2] = xmmword_1EDC6D3A8;
  v20[3] = xmmword_1EDC6D3B8;
  v17 = unk_1EDC6D3D8;
  v18 = xmmword_1EDC6D3E8;
  v19 = unk_1EDC6D3F8;
  v13 = xmmword_1EDC6D398;
  v14 = xmmword_1EDC6D3A8;
  v4 = *(&xmmword_1EDC6D388 + 1);
  v5 = xmmword_1EDC6D388;
  v15 = xmmword_1EDC6D3B8;
  v16 = xmmword_1EDC6D3C8;
  sub_1B9F1D9A4(v20, &v12);
  v6 = [a1 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  LOBYTE(v6) = sub_1BA4A7528();
  if (v6)
  {
    v8 = *(&v20[0] + 1);
    v4 = [objc_opt_self() estimatedDimension_];
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  v9 = v18;
  *(a2 + 80) = v17;
  *(a2 + 96) = v9;
  *(a2 + 112) = v19;
  v10 = v14;
  *(a2 + 16) = v13;
  *(a2 + 32) = v10;
  result = v16;
  *(a2 + 48) = v15;
  *(a2 + 64) = result;
  return result;
}

uint64_t ListLayoutConfiguration.withItemSeparationHandler(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B9F37E38(v3, a3);
  v7 = *(a3 + 128);

  result = sub_1B9F0E310(v7);
  *(a3 + 128) = a1;
  *(a3 + 136) = a2;
  return result;
}

uint64_t LayoutConfigurationProviding.respectsSystemLayoutMargins.setter(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return (*(a3 + 16))(3);
  }

  else
  {
    return (*(a3 + 16))(2);
  }
}

uint64_t (*LayoutConfigurationProviding.respectsSystemLayoutMargins.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  *(a1 + 24) = ((*(a3 + 8))(a2, a3) - 3) < 2;
  return sub_1BA333D00;
}

uint64_t sub_1BA333D00(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1[1] + 16);
  if (*(a1 + 24))
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  return v2(v3, v1);
}

void LayoutConfiguration.header.getter(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_1B9F29940(v2, v3, v4, v5);
}

__n128 LayoutConfiguration.header.setter(uint64_t a1)
{
  sub_1B9F1DA18(*(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  result = *a1;
  *(v1 + 40) = *(a1 + 16);
  *(v1 + 24) = result;
  return result;
}

void LayoutConfiguration.footer.getter(uint64_t *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_1B9F29940(v2, v3, v4, v5);
}

__n128 LayoutConfiguration.footer.setter(uint64_t a1)
{
  sub_1B9F1DA18(*(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80));
  result = *a1;
  *(v1 + 72) = *(a1 + 16);
  *(v1 + 56) = result;
  return result;
}

void LayoutConfiguration.additionalContentInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[12] = a1;
  v4[13] = a2;
  v4[14] = a3;
  v4[15] = a4;
}

id LayoutConfiguration.itemSize.getter()
{
  v1 = [objc_opt_self() sizeWithWidthDimension:*(v0 + 16) heightDimension:*(v0 + 8)];

  return v1;
}

Swift::Void __swiftcall LayoutConfiguration.setContentInsets(_:relativeToLayoutMargins:)(NSDirectionalEdgeInsets _, Swift::Bool relativeToLayoutMargins)
{
  v3 = 2;
  if (relativeToLayoutMargins)
  {
    v3 = 3;
  }

  *(v2 + 88) = v3;
  *(v2 + 96) = _;
}

void LayoutConfiguration.BoundarySupplementaryItem.subscript.getter()
{
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v1 = v3;
  v2 = v4;
  swift_getAtKeyPath();
}

void (*LayoutConfiguration.BoundarySupplementaryItem.subscript.modify(void *a1, void *a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*a2 + *MEMORY[0x1E69E6CE8] + 8);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  LayoutConfiguration.BoundarySupplementaryItem.subscript.getter();
  return sub_1BA334250;
}

void sub_1BA334250(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 16);
  v6 = *(*a1 + 24);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 32), v4, v5);

    sub_1BA33572C(v3);

    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {

    sub_1BA33572C(v4);

    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

id static LayoutConfiguration.BoundarySupplementaryItem.topAligned(width:height:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 2;
  *(a3 + 8) = 1;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  v3 = a1;

  return a2;
}

uint64_t LayoutConfiguration.BoundarySupplementaryItem.init(width:height:alignment:followsContentInsets:pinToVisibleBounds:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = a3;
  *(a6 + 8) = a4;
  *(a6 + 9) = a5;
  *(a6 + 16) = result;
  *(a6 + 24) = a2;
  return result;
}

__n128 LayoutConfiguration.BoundarySupplementaryItem.init(size:alignment:followsContentInsets:pinToVisibleBounds:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, unsigned __int8 a4@<W3>, __n128 *a5@<X8>)
{
  result = *a1;
  a5[1] = *a1;
  a5->n128_u64[0] = a2;
  a5->n128_u8[8] = a3;
  a5->n128_u8[9] = a4;
  return result;
}

id static LayoutConfiguration.BoundarySupplementaryItem.bottomAligned(width:height:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 4;
  *(a3 + 8) = 1;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  v3 = a1;

  return a2;
}

id sub_1BA334428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v6 = *(a1 + 8);
  *(a3 + 16) = *a1;
  *(a3 + 24) = v6;
  *a3 = a2;
  *(a3 + 8) = 1;
  v4 = v3;

  return v6;
}

HealthExperienceUI::LayoutConfiguration::Size __swiftcall LayoutConfiguration.Size.init(width:height:)(NSCollectionLayoutDimension width, NSCollectionLayoutDimension height)
{
  v2->super.isa = width.super.isa;
  v2[1].super.isa = height.super.isa;
  result.height = height;
  result.width = width;
  return result;
}

NSCollectionLayoutBoundarySupplementaryItem __swiftcall LayoutConfiguration.BoundarySupplementaryItem.collectionLayoutItem(forElementKind:)(Swift::String forElementKind)
{
  v2 = *v1;
  v3 = *(v1 + 9);
  v4 = [objc_opt_self() sizeWithWidthDimension:v1[2] heightDimension:v1[3]];
  v5 = sub_1BA4A6758();
  v6 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v4 elementKind:v5 alignment:v2];

  [v6 setPinToVisibleBounds_];
  v7 = v6;
  [v7 contentInsets];
  [v7 setContentInsets_];
  [v7 contentInsets];
  [v7 setContentInsets_];

  return v7;
}

id static LayoutConfiguration.Size.supplementaryItemDefault.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDC6D4A0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_1EDC6D4A8;
  v1 = qword_1EDC6D4B0;
  v6 = qword_1EDC6D4B0;
  *a1 = qword_1EDC6D4A8;
  a1[1] = v1;
  v3 = v2;

  return v6;
}

uint64_t static LayoutConfiguration.short.getter@<X0>(_OWORD *a1@<X8>)
{
  if (qword_1EBBE8838 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = xmmword_1EBBF0B58;
  v2 = unk_1EBBF0B68;
  v11[4] = xmmword_1EBBF0B58;
  v11[5] = unk_1EBBF0B68;
  v3 = xmmword_1EBBF0B78;
  v4 = unk_1EBBF0B88;
  v11[6] = xmmword_1EBBF0B78;
  v11[7] = unk_1EBBF0B88;
  v5 = unk_1EBBF0B28;
  v11[0] = xmmword_1EBBF0B18;
  v11[1] = unk_1EBBF0B28;
  v6 = xmmword_1EBBF0B38;
  v7 = unk_1EBBF0B48;
  v11[2] = xmmword_1EBBF0B38;
  v11[3] = unk_1EBBF0B48;
  *a1 = xmmword_1EBBF0B18;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v1;
  a1[5] = v2;
  a1[6] = v3;
  a1[7] = v4;
  return sub_1B9F1D9A4(v11, &v10);
}

uint64_t static LayoutConfiguration.pill.getter@<X0>(_OWORD *a1@<X8>)
{
  if (qword_1EDC6D380 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = xmmword_1EDC6D3C8;
  v2 = unk_1EDC6D3D8;
  v11[4] = xmmword_1EDC6D3C8;
  v11[5] = unk_1EDC6D3D8;
  v3 = xmmword_1EDC6D3E8;
  v4 = unk_1EDC6D3F8;
  v11[6] = xmmword_1EDC6D3E8;
  v11[7] = unk_1EDC6D3F8;
  v5 = xmmword_1EDC6D398;
  v11[0] = xmmword_1EDC6D388;
  v11[1] = xmmword_1EDC6D398;
  v6 = xmmword_1EDC6D3A8;
  v7 = xmmword_1EDC6D3B8;
  v11[2] = xmmword_1EDC6D3A8;
  v11[3] = xmmword_1EDC6D3B8;
  *a1 = xmmword_1EDC6D388;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v1;
  a1[5] = v2;
  a1[6] = v3;
  a1[7] = v4;
  return sub_1B9F1D9A4(v11, &v10);
}

void sub_1BA334814()
{
  sub_1B9F292B4(&xmmword_1EDC67D38);
  v0 = [objc_opt_self() estimatedDimension_];
  v1 = *(&xmmword_1EDC67D38 + 1);
  *(&xmmword_1EDC67D38 + 1) = v0;

  *&xmmword_1EDC67D38 = 0;
}

uint64_t static LayoutConfiguration.table.getter@<X0>(_OWORD *a1@<X8>)
{
  if (qword_1EBBE8848 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = xmmword_1EDC67D78;
  v2 = *&qword_1EDC67D88;
  v11[4] = xmmword_1EDC67D78;
  v11[5] = *&qword_1EDC67D88;
  v3 = xmmword_1EDC67D98;
  v4 = unk_1EDC67DA8;
  v11[6] = xmmword_1EDC67D98;
  v11[7] = unk_1EDC67DA8;
  v5 = *&qword_1EDC67D48;
  v11[0] = xmmword_1EDC67D38;
  v11[1] = *&qword_1EDC67D48;
  v6 = xmmword_1EDC67D58;
  v7 = *&qword_1EDC67D68;
  v11[2] = xmmword_1EDC67D58;
  v11[3] = *&qword_1EDC67D68;
  *a1 = xmmword_1EDC67D38;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v1;
  a1[5] = v2;
  a1[6] = v3;
  a1[7] = v4;
  return sub_1B9F1D9A4(v11, &v10);
}

uint64_t static LayoutConfiguration.empty.getter@<X0>(_OWORD *a1@<X8>)
{
  if (qword_1EDC6D2F0 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = xmmword_1EDC6D338;
  v2 = unk_1EDC6D348;
  v11[4] = xmmword_1EDC6D338;
  v11[5] = unk_1EDC6D348;
  v3 = xmmword_1EDC6D358;
  v4 = unk_1EDC6D368;
  v11[6] = xmmword_1EDC6D358;
  v11[7] = unk_1EDC6D368;
  v5 = *&qword_1EDC6D308;
  v11[0] = xmmword_1EDC6D2F8;
  v11[1] = *&qword_1EDC6D308;
  v6 = xmmword_1EDC6D318;
  v7 = unk_1EDC6D328;
  v11[2] = xmmword_1EDC6D318;
  v11[3] = unk_1EDC6D328;
  *a1 = xmmword_1EDC6D2F8;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v1;
  a1[5] = v2;
  a1[6] = v3;
  a1[7] = v4;
  return sub_1B9F1D9A4(v11, &v10);
}

id ListLayoutConfiguration.headerWidth.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *ListLayoutConfiguration.headerHeight.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *ListLayoutConfiguration.footerWidth.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *ListLayoutConfiguration.footerHeight.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void ListLayoutConfiguration.additionalContentInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[6] = a1;
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = a4;
}

__n128 ListLayoutConfiguration.separatorInsets.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  result = *(v1 + 88);
  v4 = *(v1 + 104);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 ListLayoutConfiguration.separatorInsets.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 88) = *a1;
  *(v1 + 104) = v3;
  *(v1 + 120) = *(a1 + 32);
  return result;
}

uint64_t ListLayoutConfiguration.itemSeparatorHandler.getter()
{
  v1 = *(v0 + 128);
  sub_1B9F0F1B8(v1);
  return v1;
}

uint64_t ListLayoutConfiguration.itemSeparatorHandler.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B9F0E310(*(v2 + 128));
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t sub_1BA334D88@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *@<X8>)@<X8>)
{
  v3 = *(a1 + 160);
  v4 = *(a1 + 168);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA335A2C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_1B9F0F1B8(v3);
}

uint64_t sub_1BA334E08(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA335A28;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 160);
  sub_1B9F0F1B8(v3);
  result = sub_1B9F0E310(v7);
  *(a2 + 160) = v6;
  *(a2 + 168) = v5;
  return result;
}

uint64_t ListLayoutConfiguration.leadingSwipeActionsConfigurationProvider.getter()
{
  v1 = *(v0 + 160);
  sub_1B9F0F1B8(v1);
  return v1;
}

uint64_t ListLayoutConfiguration.leadingSwipeActionsConfigurationProvider.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B9F0E310(*(v2 + 160));
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return result;
}

uint64_t sub_1BA334F30@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = *(a1 + 176);
  v4 = *(a1 + 184);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA3359F8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_1B9F0F1B8(v3);
}

uint64_t sub_1BA334FB0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BA1F2B54;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 176);
  sub_1B9F0F1B8(v3);
  result = sub_1B9F0E310(v7);
  *(a2 + 176) = v6;
  *(a2 + 184) = v5;
  return result;
}

uint64_t ListLayoutConfiguration.trailingSwipeActionsConfigurationProvider.getter()
{
  v1 = *(v0 + 176);
  sub_1B9F0F1B8(v1);
  return v1;
}

uint64_t ListLayoutConfiguration.trailingSwipeActionsConfigurationProvider.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B9F0E310(*(v2 + 176));
  *(v2 + 176) = a1;
  *(v2 + 184) = a2;
  return result;
}

uint64_t ListLayoutConfiguration.headerMode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListLayoutConfiguration() + 88);
  v4 = sub_1BA4A47D8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ListLayoutConfiguration.headerMode.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ListLayoutConfiguration() + 88);
  v4 = sub_1BA4A47D8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ListLayoutConfiguration.footerMode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ListLayoutConfiguration() + 92);
  v4 = sub_1BA4A47C8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ListLayoutConfiguration.footerMode.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ListLayoutConfiguration() + 92);
  v4 = sub_1BA4A47C8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1BA335448()
{
  v0 = type metadata accessor for ListLayoutConfiguration();
  __swift_allocate_value_buffer(v0, qword_1EDC6CB70);
  v1 = __swift_project_value_buffer(v0, qword_1EDC6CB70);
  if (qword_1EDC6CBB0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EDC6CBB8);

  return sub_1B9F37E38(v2, v1);
}

void ListLayoutConfiguration.withoutHeader.getter(id *a1@<X8>)
{
  sub_1B9F37E38(v1, a1);
  v3 = *(type metadata accessor for ListLayoutConfiguration() + 88);
  v4 = sub_1BA4A47D8();
  v5 = *(v4 - 8);
  (*(v5 + 8))(a1 + v3, v4);
  (*(v5 + 104))(a1 + v3, *MEMORY[0x1E69DC290], v4);

  a1[1] = 0;
  *a1 = 0;
}

void sub_1BA3355E0(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for ListLayoutConfiguration();
  __swift_allocate_value_buffer(v3, a2);
  v4 = __swift_project_value_buffer(v3, a2);
  _s18HealthExperienceUI23ListLayoutConfigurationV16withLeadingInset5insetAC12CoreGraphics7CGFloatV_tFZ_0(v4);
  v5 = *(v3 + 88);
  v6 = sub_1BA4A47D8();
  v7 = *(v6 - 8);
  (*(v7 + 8))(v4 + v5, v6);
  (*(v7 + 104))(v4 + v5, *MEMORY[0x1E69DC290], v6);
  v8 = v4[1];
  v4[1] = 0;

  v9 = *v4;
  *v4 = 0;
}

uint64_t ListLayoutConfiguration.withAbsoluteLayoutMargins.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B9F37E38(v1, a1);
  *(a1 + 144) = 2;
  return result;
}

uint64_t sub_1BA33572C(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - v2, v1);
  return swift_setAtWritableKeyPath();
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1BA335880(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1BA3358C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BA335928(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1BA335970(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BA3359F8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t HealthDataSecurityMessagingVariant.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

uint64_t HealthDataSecurityMessagingVariantProvider.__allocating_init(healthStore:)(void *a1)
{
  v2 = swift_allocObject();
  HealthDataSecurityMessagingVariantProvider.init(healthStore:)(a1);
  return v2;
}

uint64_t HealthDataSecurityMessagingVariantProvider.init(healthStore:)(void *a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  sub_1BA335CF0(0, &qword_1EBBF0BB0, sub_1B9F1174C, MEMORY[0x1E695BF98]);
  swift_allocObject();
  *(v1 + 24) = sub_1BA4A4DF8();
  sub_1B9F0ADF8(0, &unk_1EDC5E3E0);
  sub_1BA4A7428();
  swift_allocObject();
  swift_weakInit();
  sub_1BA335CF0(0, &qword_1EDC5F470, sub_1B9F113DC, MEMORY[0x1E695BED0]);
  sub_1BA335D64();
  v4 = sub_1BA4A5148();

  *(v2 + 16) = v4;

  return v2;
}

uint64_t sub_1BA335C74(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BA335DEC(v1, v2);
  }

  return result;
}

void sub_1BA335CF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1BA335D64()
{
  result = qword_1EDC5F478;
  if (!qword_1EDC5F478)
  {
    sub_1BA335CF0(255, &qword_1EDC5F470, sub_1B9F113DC, MEMORY[0x1E695BED0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F478);
  }

  return result;
}

uint64_t sub_1BA335DEC(void *a1, char a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_1BA4A3E28();
    v9 = a1;
    v10 = sub_1BA4A3E88();
    v11 = sub_1BA4A6FA8();
    sub_1BA336520(a1);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v25 = v23;
      *v12 = 136446466;
      v13 = sub_1BA4A85D8();
      v15 = sub_1B9F0B82C(v13, v14, &v25);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      v24 = a1;
      v16 = a1;
      sub_1B9FED358();
      v17 = sub_1BA4A6808();
      v19 = sub_1B9F0B82C(v17, v18, &v25);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_1B9F07000, v10, v11, "[%{public}s] Error retrieving cloud sync status: %s", v12, 0x16u);
      v20 = v23;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v20, -1, -1);
      MEMORY[0x1BFAF43A0](v12, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    LOBYTE(v25) = 2;
  }

  else
  {
    LOBYTE(v25) = [a1 accountSupportsSecureContainer];
  }

  return sub_1BA4A4DC8();
}

uint64_t sub_1BA336064()
{
  sub_1BA3361DC();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = *(v0 + 24);
  sub_1BA335CF0(0, &qword_1EBBF0BB0, sub_1B9F1174C, MEMORY[0x1E695BF98]);
  sub_1BA336278();

  sub_1BA4A4FE8();

  sub_1BA336384();
  v6 = sub_1BA4A4F98();
  (*(v3 + 8))(v5, v2);
  return v6;
}

void sub_1BA3361DC()
{
  if (!qword_1EBBF0BB8)
  {
    sub_1BA335CF0(255, &qword_1EBBF0BB0, sub_1B9F1174C, MEMORY[0x1E695BF98]);
    sub_1BA336278();
    v0 = sub_1BA4A4B78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBF0BB8);
    }
  }
}

unint64_t sub_1BA336278()
{
  result = qword_1EBBF0BC0;
  if (!qword_1EBBF0BC0)
  {
    sub_1BA335CF0(255, &qword_1EBBF0BB0, sub_1B9F1174C, MEMORY[0x1E695BF98]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF0BC0);
  }

  return result;
}

void sub_1BA336300(char *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = [objc_opt_self() sharedConnection];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 isPasscodeSet];

    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    if (v3)
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1BA336384()
{
  result = qword_1EBBF0BC8;
  if (!qword_1EBBF0BC8)
  {
    sub_1BA3361DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF0BC8);
  }

  return result;
}

uint64_t HealthDataSecurityMessagingVariantProvider.deinit()
{

  return v0;
}

uint64_t HealthDataSecurityMessagingVariantProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1BA336448()
{
  result = qword_1EBBF0BD0;
  if (!qword_1EBBF0BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF0BD0);
  }

  return result;
}

void sub_1BA33655C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v24[1] = a2;
  v6 = sub_1BA4A6478();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A64C8();
  v27 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A6488();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v4 + *a1;
  v18 = *(v17 + 8);
  if (v18 <= 1)
  {
    v24[0] = v10;
    v19 = *v17;
    sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
    (*(v14 + 104))(v16, *MEMORY[0x1E69E7F88], v13);
    sub_1BA02040C(v19, v18);
    v20 = sub_1BA4A7338();
    (*(v14 + 8))(v16, v13);
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    aBlock[4] = v25;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F0B040;
    aBlock[3] = v26;
    v22 = _Block_copy(aBlock);
    sub_1BA4A64A8();
    v28 = MEMORY[0x1E69E7CC0];
    sub_1B9F0AFA8(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
    v23 = MEMORY[0x1E69E7F60];
    sub_1B9F3E8C4(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60]);
    sub_1BA33AAD0(&qword_1EDC5E6A0, &qword_1EDC5E6B0, v23);
    sub_1BA4A7C38();
    MEMORY[0x1BFAF1D50](0, v12, v9, v22);
    _Block_release(v22);

    (*(v7 + 8))(v9, v6);
    (*(v27 + 8))(v12, v24[0]);
  }
}

id sub_1BA336920()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1BA4A72F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A7288();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1BA4A64C8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___queue;
  v9 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___queue);
  if (v9)
  {
    v10 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___queue);
  }

  else
  {
    v21 = sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
    v22 = 0;
    v23 = 0xE000000000000000;
    v20 = v2;
    sub_1BA4A7DF8();
    v11 = sub_1BA4A85D8();
    v13 = v12;

    v22 = v11;
    v23 = v13;
    MEMORY[0x1BFAF1350](0xD000000000000013, 0x80000001BA500DD0);
    v19[2] = v23;
    v19[3] = v22;
    sub_1BA4A64A8();
    v22 = MEMORY[0x1E69E7CC0];
    v19[1] = sub_1B9F0AFA8(&unk_1EDC5E480, MEMORY[0x1E69E8030]);
    v14 = MEMORY[0x1E69E8030];
    sub_1B9F3E8C4(0, &qword_1EDC5E670, MEMORY[0x1E69E8030]);
    sub_1BA33AAD0(&qword_1EDC5E660, &qword_1EDC5E670, v14);
    sub_1BA4A7C38();
    (*(v3 + 104))(v5, *MEMORY[0x1E69E8090], v20);
    v15 = sub_1BA4A7328();
    v16 = *(v1 + v8);
    *(v1 + v8) = v15;
    v10 = v15;

    v9 = 0;
  }

  v17 = v9;
  return v10;
}

void (*sub_1BA336C24(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1BA336920();
  return sub_1BA336C6C;
}

void sub_1BA336C6C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___queue);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___queue) = v2;
}

uint64_t sub_1BA336C84()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___isStewieSupported;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___isStewieSupported);
  if (v2 == 2)
  {
    if (HAFeatureFlagStewieEnabled())
    {
      v3 = v0 + OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController_emergencyStatus;
      LOBYTE(v2) = *(v3 + *(type metadata accessor for EmergencyAccessUserStatus() + 20));
    }

    else
    {
      LOBYTE(v2) = 0;
    }

    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

id sub_1BA336CF0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___stewieTryOutModeBullet;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___stewieTryOutModeBullet];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___stewieTryOutModeBullet];
  }

  else
  {
    sub_1BA336D54(v0);
    v4 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1BA336D54(void *a1)
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v21 = sub_1BA4A1318();
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = objc_opt_self();
  v6 = *MEMORY[0x1E69DDDB8];
  v7 = a1;
  v8 = [v5 preferredFontForTextStyle_];
  v9 = [objc_opt_self() configurationWithFont_];
  v10 = sub_1BA4A6758();
  v11 = objc_opt_self();
  v12 = [v11 _systemImageNamed_withConfiguration_];

  v13 = v12;
  if (v12 || (type metadata accessor for EmergencyAccessBuddyStartViewController(), ObjCClassFromMetadata = swift_getObjCClassFromMetadata(), v15 = [objc_opt_self() bundleForClass_], v16 = sub_1BA4A6758(), v13 = objc_msgSend(v11, sel_imageNamed_inBundle_, v16, v15), v16, v15, v13))
  {
    v17 = v12;
    v18 = sub_1BA4A1318();
    v20 = v19;
    v22[0] = v21;
    v22[1] = v3;
    v22[2] = sub_1BA33A714;
    v22[3] = v4;
    objc_allocWithZone(type metadata accessor for OBKStyleBulletListItemView());

    [OBKStyleBulletListItemView.init(image:title:description:buttonConfiguration:)(v13 v18];
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA33709C(void *a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1BA338C60())
  {

    sub_1BA339220();
  }

  else
  {
    sub_1BA4A3DD8();
    v6 = sub_1BA4A3E88();
    v7 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1B9F0B82C(0xD000000000000026, 0x80000001BA4D2150, &v11);
      _os_log_impl(&dword_1B9F07000, v6, v7, "[%s] User is not currently eligible to launch the demo flow", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1BFAF43A0](v9, -1, -1);
      MEMORY[0x1BFAF43A0](v8, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    sub_1BA339490(a1);
  }
}

Swift::Void __swiftcall StewieDemoFlowProviding.launchStewieDemoFlowIfEligible(on:)(UIViewController_optional *on)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (StewieDemoFlowProviding.canLaunchStewieDemoFlow()())
  {

    StewieDemoFlowProviding.launchStewieDemoFlow()();
  }

  else
  {
    sub_1BA4A3DD8();
    v10 = sub_1BA4A3E88();
    v11 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v20 = v12;
      v21 = swift_slowAlloc();
      v23 = v21;
      *v12 = 136315138;
      v13 = sub_1BA4A85D8();
      v22 = on;
      v15 = sub_1B9F0B82C(v13, v14, &v23);
      on = v22;

      v16 = v20;
      *(v20 + 1) = v15;
      v17 = v11;
      v18 = v16;
      _os_log_impl(&dword_1B9F07000, v10, v17, "[%s] User is not currently eligible to launch the demo flow", v16, 0xCu);
      v19 = v21;
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1BFAF43A0](v19, -1, -1);
      MEMORY[0x1BFAF43A0](v18, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    sub_1BA339978(on, v4, v3);
  }
}

id sub_1BA3374B4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___stewieTryOutModeView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___stewieTryOutModeView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___stewieTryOutModeView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *MEMORY[0x1E69796E8];
    v6 = [v4 layer];
    [v6 setCornerCurve_];

    v7 = [v4 layer];
    [v7 setCornerRadius_];

    v8 = [v4 layer];
    [v8 setMaskedCorners_];

    [v4 setClipsToBounds_];
    v9 = [objc_opt_self() systemGray5Color];
    [v4 setBackgroundColor_];

    v10 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_1BA337638()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___stewieTryOutFootnote;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___stewieTryOutFootnote);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___stewieTryOutFootnote);
  }

  else
  {
    v4 = sub_1BA337698();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA337698()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setNumberOfLines_];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  [v0 setAdjustsFontForContentSizeCategory_];
  v2 = [objc_opt_self() systemGrayColor];
  [v0 setTextColor_];

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v3 = sub_1BA4A6758();

  [v0 setText_];

  return v0;
}

void sub_1BA337850(void *a1, uint64_t *a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController_stewieStateMonitor] = 0;
  v6 = *a2;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___queue] = 0;
  v3[OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___isStewieSupported] = 2;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___stewieTryOutModeBullet] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___stewieTryOutModeView] = 0;
  v7 = *(a2 + 8);
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___stewieTryOutFootnote] = 0;
  v8 = &v3[OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController_flow];
  *v8 = v6;
  v8[8] = v7;
  sub_1BA020470(a3, &v3[OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController_emergencyStatus]);
  type metadata accessor for EmergencyAccessBuddyStartViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_1BA4A6758();
  v12 = [objc_opt_self() imageNamed:v11 inBundle:v10];

  if (v12)
  {
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    sub_1BA4A1318();
    sub_1B9F2EAC0();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1BA4B5480;
    v14 = MEMORY[0x1E69E65A8];
    *(v13 + 56) = MEMORY[0x1E69E6530];
    *(v13 + 64) = v14;
    *(v13 + 32) = 6;
    sub_1BA4A6768();

    v15 = sub_1BA4A6758();

    v16 = sub_1BA4A6758();

    v24.receiver = v3;
    v24.super_class = type metadata accessor for EmergencyAccessBuddyDoneViewController();
    v17 = objc_msgSendSuper2(&v24, sel_initWithTitle_detailText_icon_contentLayout_, v15, v16, v12, 2, 0xE000000000000000);

    v18 = v17;
    v19 = sub_1BA336920();
    v20 = [objc_allocWithZone(MEMORY[0x1E6965080]) initWithDelegate:v18 queue:v19];

    v21 = OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController_stewieStateMonitor;
    swift_beginAccess();
    v22 = *&v18[v21];
    *&v18[v21] = v20;

    v23 = *&v18[v21];
    if (v23)
    {
      [v23 start];
    }

    sub_1BA338438(a1);

    sub_1BA0204E8(a3);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA337C38()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v1 = [objc_opt_self() boldButton];
  v2 = sub_1BA4A6758();

  [v1 setTitle:v2 forState:0];

  [v1 addTarget:v0 action:sel_didTapDone_ forControlEvents:64];
  v3 = [v0 buttonTray];
  [v3 addButton_];
}

void sub_1BA337D8C()
{
  if (sub_1BA336C84())
  {
    v1 = [v0 contentView];
    v2 = sub_1BA3374B4();
    [v1 addSubview_];

    v3 = OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___stewieTryOutModeView;
    v4 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___stewieTryOutModeView];
    v5 = sub_1BA336CF0();
    [v4 addSubview_];

    v6 = [v0 &selRef_fetchSources];
    v7 = sub_1BA337638();
    [v6 addSubview_];

    v52 = objc_opt_self();
    sub_1B9F109F8();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BA4B79D0;
    v9 = OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___stewieTryOutModeBullet;
    v10 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___stewieTryOutModeBullet] topAnchor];
    v11 = [v0 &selRef_fetchSources];
    v12 = [v11 topAnchor];

    v13 = [v10 constraintEqualToAnchor:v12 constant:22.0];
    *(v8 + 32) = v13;
    v14 = [*&v0[v9] leadingAnchor];
    v15 = [v0 &selRef_fetchSources];
    v16 = [v15 leadingAnchor];

    v17 = [v14 constraintEqualToAnchor_];
    *(v8 + 40) = v17;
    v18 = [*&v0[v9] trailingAnchor];
    v19 = [v0 &selRef_fetchSources];
    v20 = [v19 &selRef_cloudSyncObserverSyncCompleted_ + 4];

    v21 = [v18 constraintEqualToAnchor_];
    *(v8 + 48) = v21;
    v22 = [*&v0[v3] topAnchor];
    v23 = [*&v0[v9] topAnchor];
    v24 = [v22 constraintEqualToAnchor:v23 constant:-16.0];

    *(v8 + 56) = v24;
    v25 = [*&v0[v3] leadingAnchor];
    v26 = [v0 contentView];
    v27 = [v26 &selRef__totalDistance + 1];

    v28 = [v25 constraintEqualToAnchor:v27 constant:-16.0];
    *(v8 + 64) = v28;
    v29 = [*&v0[v3] trailingAnchor];
    v30 = [v0 contentView];
    v31 = [v30 trailingAnchor];

    v32 = [v29 &selRef:v31 objectAtIndex:16.0 + 6];
    *(v8 + 72) = v32;
    v33 = [*&v0[v3] bottomAnchor];
    v34 = [*&v0[v9] bottomAnchor];
    v35 = [v33 &selRef:v34 objectAtIndex:16.0 + 6];

    *(v8 + 80) = v35;
    v36 = OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___stewieTryOutFootnote;
    v37 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___stewieTryOutFootnote] topAnchor];
    v38 = [*&v0[v3] bottomAnchor];
    v39 = [v37 &selRef:v38 objectAtIndex:5.0 + 6];

    *(v8 + 88) = v39;
    v40 = [*&v0[v36] leadingAnchor];
    v41 = [v0 contentView];
    v42 = [v41 leadingAnchor];

    v43 = [v40 constraintEqualToAnchor_];
    *(v8 + 96) = v43;
    v44 = [*&v0[v36] trailingAnchor];
    v45 = [v0 contentView];
    v46 = [v45 trailingAnchor];

    v47 = [v44 constraintEqualToAnchor_];
    *(v8 + 104) = v47;
    v48 = [*&v0[v36] bottomAnchor];
    v49 = [v0 contentView];
    v50 = [v49 bottomAnchor];

    v51 = [v48 constraintEqualToAnchor_];
    *(v8 + 112) = v51;
    sub_1B9F0ADF8(0, &qword_1EDC6B570);
    v53 = sub_1BA4A6AE8();

    [v52 activateConstraints_];
  }
}

void sub_1BA338438(uint64_t a1)
{
  v2 = sub_1BA336C84();
  sub_1B9F0ADF8(0, &qword_1EDC5E500);
  if (v2)
  {
    v3 = 3;
  }

  else
  {
    v3 = 1;
  }

  static HKKeyValueDomain.saveOnboardingStatus(_:healthStore:)(v3, a1);
  if (qword_1EDC5E450 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDC5E458;
  v5 = objc_allocWithZone(sub_1BA4A34C8());
  v6 = v4;
  v7 = sub_1BA4A34B8();
  sub_1B9F0ADF8(0, &qword_1EDC6B5F0);
  v8 = sub_1BA4A7198();
  [v8 addOperation_];
}

void sub_1BA338540()
{
  ObjectType = swift_getObjectType();
  [v0 dismissViewControllerAnimated:1 completion:0];
  sub_1BA33655C(&OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController_flow, &unk_1F3817B60, sub_1BA020420, &block_descriptor_27_1);
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v2 = objc_allocWithZone(MEMORY[0x1E6997AC8]);
  v3 = sub_1BA4A6758();

  v4 = [v2 initWithClientIdentifier_];

  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = ObjectType;
    v7[4] = sub_1BA33A6B0;
    v7[5] = v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1BA454240;
    v7[3] = &block_descriptor_21_1;
    v6 = _Block_copy(v7);

    [v4 clearPendingFollowUpItemsWithCompletion_];
    _Block_release(v6);
  }
}

uint64_t sub_1BA3386CC(char a1, void *a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v8 = a2;
  v9 = sub_1BA4A3E88();
  v10 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v23 = v4;
    v12 = v11;
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136315650;
    v14 = sub_1BA4A85D8();
    v16 = sub_1B9F0B82C(v14, v15, &v25);

    *(v12 + 4) = v16;
    *(v12 + 12) = 1024;
    *(v12 + 14) = a1 & 1;
    *(v12 + 18) = 2080;
    v24 = a2;
    v17 = a2;
    sub_1BA33A6B8(0, &qword_1EDC6B3E0, &qword_1EDC6E310, MEMORY[0x1E69E7280], sub_1B9F0D950);
    v18 = sub_1BA4A6828();
    v20 = sub_1B9F0B82C(v18, v19, &v25);

    *(v12 + 20) = v20;
    _os_log_impl(&dword_1B9F07000, v9, v10, "[%s] Cleared pending followup items with success %{BOOL}d and error %s", v12, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v13, -1, -1);
    MEMORY[0x1BFAF43A0](v12, -1, -1);

    return (*(v5 + 8))(v7, v23);
  }

  else
  {

    return (*(v5 + 8))(v7, v4);
  }
}

id sub_1BA3389F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmergencyAccessBuddyDoneViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1BA338AD4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController_stewieStateMonitor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA338B20(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController_stewieStateMonitor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1BA338BDC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___queue);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController____lazy_storage___queue) = a1;
}

void (*sub_1BA338BF0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1BA336C24(v2);
  return sub_1B9FCDD98;
}

uint64_t sub_1BA338C60()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController_stewieStateMonitor;
  swift_beginAccess();
  v7 = *&v1[v6];
  if (v7 && (v8 = [v7 getState]) != 0)
  {
    v9 = v8;
    v10 = [v8 allowedServices];
    v11 = [v9 activeServices];

    return (v11 != 1) & (v10 >> 1);
  }

  else
  {
    sub_1BA4A3DD8();
    v13 = v1;
    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_1B9F0B82C(0xD000000000000026, 0x80000001BA4D2150, &v24);
      *(v16 + 12) = 2080;
      v18 = *&v1[v6];
      v23[1] = v18;
      sub_1BA33A6B8(0, &qword_1EBBF0BE0, &unk_1EBBF0BE8, 0x1E6965080, sub_1B9F0ADF8);
      v19 = v18;
      v20 = sub_1BA4A6808();
      v22 = sub_1B9F0B82C(v20, v21, &v24);

      *(v16 + 14) = v22;
      _os_log_impl(&dword_1B9F07000, v14, v15, "[%s] Stewie state monitor did not provide a state for us to determine if flow can be launched: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v17, -1, -1);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }
}

Swift::Bool __swiftcall StewieDemoFlowProviding.canLaunchStewieDemoFlow()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 8);
  v10 = v9(v3, v2, v6);
  if (v10 && (v11 = v10, v12 = [v10 getState], v11, v12))
  {
    v13 = [v12 allowedServices];
    v14 = [v12 activeServices];

    return (v14 != 1) & (v13 >> 1);
  }

  else
  {
    sub_1BA4A3DD8();
    swift_unknownObjectRetain();
    v16 = sub_1BA4A3E88();
    v17 = sub_1BA4A6FA8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v32 = v4;
      v19 = v18;
      v31 = swift_slowAlloc();
      v34 = v31;
      *v19 = 136315394;
      v20 = sub_1BA4A85D8();
      HIDWORD(v29) = v17;
      v22 = sub_1B9F0B82C(v20, v21, &v34);
      v30 = v5;
      v23 = v22;

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v33 = (v9)(v3, v2);
      sub_1BA33A6B8(0, &qword_1EBBF0BE0, &unk_1EBBF0BE8, 0x1E6965080, sub_1B9F0ADF8);
      v24 = sub_1BA4A6808();
      v26 = sub_1B9F0B82C(v24, v25, &v34);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_1B9F07000, v16, BYTE4(v29), "[%s] Stewie state monitor did not provide a state for us to determine if flow can be launched: %s", v19, 0x16u);
      v27 = v31;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v27, -1, -1);
      MEMORY[0x1BFAF43A0](v19, -1, -1);

      (*(v30 + 8))(v8, v32);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    LOBYTE(v15) = 0;
  }

  return v15;
}

void sub_1BA339220()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6965078]) init];
  [v0 setReason_];
  v1 = sub_1BA336920();
  v2 = [objc_allocWithZone(MEMORY[0x1E69650A0]) initWithQueue_];

  v4[4] = sub_1BA339E3C;
  v4[5] = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1BA33A4B8;
  v4[3] = &block_descriptor_33_2;
  v3 = _Block_copy(v4);

  [v2 requestStewieWithContext:v0 completion:v3];
  _Block_release(v3);
}

Swift::Void __swiftcall StewieDemoFlowProviding.launchStewieDemoFlow()()
{
  v2 = v1;
  v3 = v0;
  v4 = [objc_allocWithZone(MEMORY[0x1E6965078]) init];
  [v4 setReason_];
  v5 = (*(v2 + 32))(v3, v2);
  v6 = [objc_allocWithZone(MEMORY[0x1E69650A0]) initWithQueue_];

  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v2;
  v9[4] = sub_1BA33A524;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1BA33A4B8;
  v9[3] = &block_descriptor_90;
  v8 = _Block_copy(v9);

  [v6 requestStewieWithContext:v4 completion:v8];
  _Block_release(v8);
}

void sub_1BA339490(void *a1)
{
  v2 = v1;
  v30 = sub_1BA4A3EA8();
  v4 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDC84A30;
  v31 = sub_1BA4A1318();
  v8 = OBJC_IVAR____TtC18HealthExperienceUI38EmergencyAccessBuddyDoneViewController_stewieStateMonitor;
  swift_beginAccess();
  v9 = *&v2[v8];
  if (v9 && (v10 = [v9 getState]) != 0)
  {
    v11 = v10;
    sub_1BA33A738([v10 statusReasonForService_]);
  }

  else
  {
    v29[1] = v7;
    v29[2] = "eview_medical_id_later_button";
    sub_1BA4A3DD8();
    v12 = v2;
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v29[0] = a1;
      v16 = v15;
      v17 = swift_slowAlloc();
      v33 = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_1B9F0B82C(0xD000000000000026, 0x80000001BA4D2150, &v33);
      *(v16 + 12) = 2080;
      v18 = *&v2[v8];
      v32 = v18;
      sub_1BA33A6B8(0, &qword_1EBBF0BE0, &unk_1EBBF0BE8, 0x1E6965080, sub_1B9F0ADF8);
      v19 = v18;
      v20 = sub_1BA4A6808();
      v22 = sub_1B9F0B82C(v20, v21, &v33);

      *(v16 + 14) = v22;
      _os_log_impl(&dword_1B9F07000, v13, v14, "[%s] Error retrieving Stewie state monitor. Displaying generic error message. %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v17, -1, -1);
      v23 = v16;
      a1 = v29[0];
      MEMORY[0x1BFAF43A0](v23, -1, -1);
    }

    (*(v4 + 8))(v6, v30);
    sub_1BA4A1318();
  }

  v24 = sub_1BA4A6758();

  v25 = sub_1BA4A6758();

  v26 = [objc_opt_self() alertControllerWithTitle:v24 message:v25 preferredStyle:1];

  sub_1BA4A1318();
  v27 = sub_1BA4A6758();

  v28 = [objc_opt_self() actionWithTitle:v27 style:1 handler:0];

  [v26 addAction_];
  if (a1)
  {
    [a1 presentViewController:v26 animated:1 completion:0];
  }
}

void sub_1BA339978(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BA4A3EA8();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v40 = qword_1EDC84A30;
  v38 = sub_1BA4A1318();
  v39 = v9;
  v10 = *(a3 + 8);
  v11 = v10(a2, a3);
  if (v11 && (v12 = v11, v13 = [v11 getState], v12, v13))
  {
    sub_1BA33AB20([v13 statusReasonForService_]);
  }

  else
  {
    sub_1BA4A3DD8();
    swift_unknownObjectRetain();
    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6FB8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v34 = "eview_medical_id_later_button";
      v17 = v16;
      v33 = swift_slowAlloc();
      v42 = v33;
      *v17 = 136315394;
      v18 = sub_1BA4A85D8();
      v32 = v15;
      v20 = sub_1B9F0B82C(v18, v19, &v42);
      v35 = a1;
      v21 = v20;

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      v41 = v10(a2, a3);
      sub_1BA33A6B8(0, &qword_1EBBF0BE0, &unk_1EBBF0BE8, 0x1E6965080, sub_1B9F0ADF8);
      v22 = sub_1BA4A6808();
      v24 = sub_1B9F0B82C(v22, v23, &v42);

      *(v17 + 14) = v24;
      a1 = v35;
      _os_log_impl(&dword_1B9F07000, v14, v32, "[%s] Error retrieving Stewie state monitor. Displaying generic error message. %s", v17, 0x16u);
      v25 = v33;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
    }

    (*(v36 + 8))(v8, v37);
    sub_1BA33AB20(0);
  }

  v26 = sub_1BA4A6758();

  v27 = sub_1BA4A6758();

  v28 = [objc_opt_self() alertControllerWithTitle:v26 message:v27 preferredStyle:1];

  sub_1BA4A1318();
  v29 = sub_1BA4A6758();

  v30 = [objc_opt_self() actionWithTitle:v29 style:1 handler:0];

  [v28 addAction_];
  if (a1)
  {
    [a1 presentViewController:v28 animated:1 completion:0];
  }
}

uint64_t sub_1BA339E3C(void *a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  if (a1)
  {
    v9 = a1;
    sub_1BA4A3DD8();
    v10 = a1;
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_1B9F0B82C(0xD000000000000026, 0x80000001BA4D2150, &v25);
      *(v13 + 12) = 2080;
      v24 = a1;
      v15 = a1;
      sub_1B9F0D950(0, &qword_1EDC6E310);
      v16 = sub_1BA4A6828();
      v18 = sub_1B9F0B82C(v16, v17, &v25);

      *(v13 + 14) = v18;
      _os_log_impl(&dword_1B9F07000, v11, v12, "[%s] User was unable to complete Stewie demo: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v14, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    else
    {
    }

    return (*(v3 + 8))(v8, v2);
  }

  else
  {
    sub_1BA4A3DD8();
    v19 = sub_1BA4A3E88();
    v20 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1B9F0B82C(0xD000000000000026, 0x80000001BA4D2150, &v25);
      _os_log_impl(&dword_1B9F07000, v19, v20, "[%s] User successfully completed Stewie demo", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1BFAF43A0](v22, -1, -1);
      MEMORY[0x1BFAF43A0](v21, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1BA33A174(void *a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - v7;
  if (a1)
  {
    v9 = a1;
    sub_1BA4A3DD8();
    v10 = a1;
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
      v30 = a1;
      v18 = a1;
      sub_1B9F0D950(0, &qword_1EDC6E310);
      v19 = sub_1BA4A6828();
      v21 = sub_1B9F0B82C(v19, v20, &v31);

      *(v13 + 14) = v21;
      _os_log_impl(&dword_1B9F07000, v11, v12, "[%s] User was unable to complete Stewie demo: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v14, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    else
    {
    }

    return (*(v3 + 8))(v8, v2);
  }

  else
  {
    sub_1BA4A3DD8();
    v22 = sub_1BA4A3E88();
    v23 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136315138;
      v26 = sub_1BA4A85D8();
      v28 = sub_1B9F0B82C(v26, v27, &v31);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_1B9F07000, v22, v23, "[%s] User successfully completed Stewie demo", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      MEMORY[0x1BFAF43A0](v24, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }
}

void sub_1BA33A4B8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t type metadata accessor for EmergencyAccessBuddyDoneViewController()
{
  result = qword_1EBBF0C28;
  if (!qword_1EBBF0C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA33A580()
{
  result = type metadata accessor for EmergencyAccessUserStatus();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1BA33A6B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1BA4A7AA8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1BA33A738(uint64_t a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 4)
  {
    if ((a1 - 6) >= 6)
    {
      if (a1 == 5)
      {
        if (qword_1EDC5E100 == -1)
        {
          return sub_1BA4A1318();
        }

        goto LABEL_15;
      }

LABEL_12:
      v8 = v4;
      sub_1BA4A3DD8();
      v9 = sub_1BA4A3E88();
      v10 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v14 = v12;
        *v11 = 136315138;
        *(v11 + 4) = sub_1B9F0B82C(0xD000000000000026, 0x80000001BA4D2150, &v14);
        _os_log_impl(&dword_1B9F07000, v9, v10, "[%s] Received an error we do not handle. Returning the generic message.", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v12);
        MEMORY[0x1BFAF43A0](v12, -1, -1);
        MEMORY[0x1BFAF43A0](v11, -1, -1);
      }

      (*(v3 + 8))(v6, v8);
      if (qword_1EDC5E100 != -1)
      {
        goto LABEL_15;
      }

      return sub_1BA4A1318();
    }
  }

  else if (a1 >= 4)
  {
    if (a1 == 4)
    {
      if (qword_1EDC5E100 == -1)
      {
        return sub_1BA4A1318();
      }

      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (qword_1EDC5E100 != -1)
  {
LABEL_15:
    swift_once();
  }

  return sub_1BA4A1318();
}

uint64_t sub_1BA33AAD0(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1B9F3E8C4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA33AB20(uint64_t a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 4)
  {
    if ((a1 - 6) < 6)
    {
      goto LABEL_7;
    }

    if (a1 == 5)
    {
      if (qword_1EDC5E100 == -1)
      {
        return sub_1BA4A1318();
      }

      goto LABEL_15;
    }
  }

  else
  {
    if (a1 < 4)
    {
      goto LABEL_7;
    }

    if (a1 == 4)
    {
      if (qword_1EDC5E100 == -1)
      {
        return sub_1BA4A1318();
      }

      goto LABEL_15;
    }
  }

  v8 = v4;
  sub_1BA4A3DD8();
  v9 = sub_1BA4A3E88();
  v10 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    v13 = sub_1BA4A85D8();
    v15 = sub_1B9F0B82C(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1B9F07000, v9, v10, "[%s] Received an error we do not handle. Returning the generic message.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1BFAF43A0](v12, -1, -1);
    MEMORY[0x1BFAF43A0](v11, -1, -1);
  }

  (*(v3 + 8))(v6, v8);
LABEL_7:
  if (qword_1EDC5E100 != -1)
  {
LABEL_15:
    swift_once();
  }

  return sub_1BA4A1318();
}

void HealthSharingInternalSettingsViewController.init()()
{
  type metadata accessor for HealthSharingInternalSettingsDataSource(0);
  swift_allocObject();
  sub_1BA33B2C8();

  v1 = CompoundDataSourceCollectionViewController.init(dataSource:)(v0);
  v2 = sub_1BA4A6758();
  [v1 setTitle_];

  v3 = [v1 collectionView];
  if (v3)
  {
    v4 = [objc_opt_self() systemGroupedBackgroundColor];
    [v3 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

id HealthSharingInternalSettingsViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id HealthSharingInternalSettingsViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id HealthSharingInternalSettingsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthSharingInternalSettingsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA33B2C8()
{
  v0 = sub_1BA4A1798();
  v1 = *(v0 - 8);
  v91 = v0;
  v92 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v90 = &v82 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA243838(0, &qword_1EDC6ADF0, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v82 - v4;
  v6 = sub_1BA4A28B8();
  v89 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA33CC50(0, &qword_1EBBF0D40, sub_1BA33CBB4, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BA4C9870;
  *(v10 + 32) = 0x6C61626F6C47;
  *(v10 + 40) = 0xE600000000000000;
  sub_1BA243838(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v86 = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B5470;
  v13 = *MEMORY[0x1E69A3160];
  v94 = *(v7 + 104);
  v88 = (v7 + 104);
  v94(v9, v13, v6);
  type metadata accessor for HealthSharingUserDefaultSwitchItem(0);
  v14 = swift_allocObject();
  sub_1BA4A28A8();
  sub_1BA33C23C(0x2065727574616546, 0xEF64656C62616E45, 0, 0, v5);
  v15 = *(v7 + 8);
  v87 = v7 + 8;
  v95 = v15;
  v16 = v89;
  v15(v9, v89);
  *(v12 + 32) = v14;
  v93 = v10;
  *(v10 + 48) = v12;
  *(v10 + 56) = 0x6D726F6674616C50;
  *(v10 + 64) = 0xE800000000000000;
  v17 = swift_allocObject();
  v84 = xmmword_1BA4B7510;
  *(v17 + 16) = xmmword_1BA4B7510;
  v18 = v16;
  v19 = v16;
  v20 = v94;
  v94(v9, *MEMORY[0x1E69A3148], v18);
  v21 = swift_allocObject();
  sub_1BA4A28A8();
  sub_1BA33C23C(0xD000000000000014, 0x80000001BA5010C0, 0, 0, v5);
  v22 = v19;
  v23 = v19;
  v24 = v95;
  v95(v9, v23);
  *(v17 + 32) = v21;
  v20(v9, *MEMORY[0x1E69A3130], v22);
  v25 = swift_allocObject();
  sub_1BA4A28A8();
  sub_1BA33C23C(0x4420262067617244, 0xEB00000000706F72, 0, 0, v5);
  v26 = v89;
  v24(v9, v89);
  *(v17 + 40) = v25;
  v27 = v93;
  *(v93 + 72) = v17;
  *(v27 + 80) = 0xD000000000000010;
  *(v27 + 88) = 0x80000001BA5010E0;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BA4B5890;
  v29 = v28;
  v85 = v28;
  v30 = v94;
  v94(v9, *MEMORY[0x1E69A3140], v26);
  v31 = swift_allocObject();
  sub_1BA4A28A8();
  sub_1BA33C23C(0xD000000000000014, 0x80000001BA501100, 0, 0, v5);
  v32 = v95;
  v95(v9, v26);
  *(v29 + 32) = v31;
  v30(v9, *MEMORY[0x1E69A3150], v26);
  v33 = swift_allocObject();
  sub_1BA4A28A8();
  sub_1BA33C23C(0xD000000000000017, 0x80000001BA501120, 0, 0, v5);
  v34 = v89;
  v32(v9, v89);
  v35 = v85;
  *(v85 + 40) = v33;
  v36 = v94;
  v94(v9, *MEMORY[0x1E69A3138], v34);
  v37 = swift_allocObject();
  sub_1BA4A28A8();
  sub_1BA33C23C(0x20747865746E6F43, 0xEC000000756E654DLL, 0, 0, v5);
  v95(v9, v34);
  *(v35 + 48) = v37;
  v36(v9, *MEMORY[0x1E69A3158], v34);
  v38 = swift_allocObject();
  v83 = v5;
  sub_1BA4A28A8();
  sub_1BA33C23C(0xD00000000000001FLL, 0x80000001BA501140, 0, 0, v5);
  v39 = v95;
  v95(v9, v34);
  v40 = v85;
  *(v85 + 56) = v38;
  v41 = v93;
  *(v93 + 96) = v40;
  strcpy((v41 + 104), "Health Sharing");
  *(v41 + 119) = -18;
  v42 = swift_allocObject();
  *(v42 + 16) = v84;
  v86 = "Share Menu Default Debug Action";
  v43 = v94;
  v94(v9, *MEMORY[0x1E69A3120], v34);
  v44 = swift_allocObject();
  v45 = v83;
  sub_1BA4A28A8();
  sub_1BA33C23C(0xD00000000000001ELL, v86 | 0x8000000000000000, 0, 0, v45);
  v46 = v89;
  v39(v9, v89);
  *(v42 + 32) = v44;
  v43(v9, *MEMORY[0x1E69A3128], v46);
  v47 = swift_allocObject();
  sub_1BA4A28A8();
  sub_1BA33C23C(0xD000000000000022, 0x80000001BA501180, 0, 0, v45);
  v48 = v93;
  v95(v9, v46);
  *(v42 + 40) = v47;
  *(v48 + 120) = v42;
  v49 = *(v48 + 16);
  v50 = MEMORY[0x1E69E7CC0];
  if (v49)
  {
    v96 = MEMORY[0x1E69E7CC0];
    result = sub_1B9F277B0(0, v49, 0);
    v52 = 0;
    v50 = v96;
    v88 = (v92 + 8);
    v89 = v49;
    v53 = v48 + 48;
    while (v52 < *(v48 + 16))
    {
      v54 = *(v53 - 8);
      v95 = *(v53 - 16);

      v56 = sub_1B9FE681C(v55);
      v57 = v90;
      sub_1BA4A1788();
      v94 = sub_1BA4A1748();
      v59 = v58;
      (*v88)(v57, v91);

      v61 = Array<A>.identifierToIndexDict()(v60);

      v96 = v50;
      v63 = *(v50 + 16);
      v62 = *(v50 + 24);
      if (v63 >= v62 >> 1)
      {
        result = sub_1B9F277B0((v62 > 1), v63 + 1, 1);
        v50 = v96;
      }

      ++v52;
      *(v50 + 16) = v63 + 1;
      v64 = (v50 + 48 * v63);
      v65 = v94;
      v64[4] = v95;
      v64[5] = v54;
      v64[6] = v56;
      v64[7] = v61;
      v64[8] = v65;
      v64[9] = v59;
      v53 += 24;
      v66 = v92;
      v48 = v93;
      if (v89 == v52)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v66 = v92;
LABEL_9:
    v96 = 0x3C53447961727241;
    v97 = 0xE800000000000000;
    v67 = v90;
    sub_1BA4A1788();
    v68 = sub_1BA4A1748();
    v70 = v69;
    (*(v66 + 8))(v67, v91);
    MEMORY[0x1BFAF1350](v68, v70);

    MEMORY[0x1BFAF1350](62, 0xE100000000000000);
    v71 = v96;
    v72 = v97;
    type metadata accessor for ArrayDataSource();
    swift_allocObject();
    v73 = sub_1B9F348D8(v50, v71, v72);

    sub_1BA243890(0);
    v74 = swift_allocObject();
    v74[4] = v73;
    v74[5] = sub_1BA33BF58;
    v74[6] = 0;
    v76 = v73[5];
    v75 = v73[6];
    v74[2] = v76;
    v74[3] = v75;
    v77 = swift_allocObject();
    v77[2] = sub_1BA33BF7C;
    v77[3] = 0;
    v77[4] = v74;
    sub_1BA33CCD4(0);
    v78 = swift_allocObject();
    *(v78 + 16) = v74;
    *(v78 + 24) = v76;
    *(v78 + 32) = v75;
    *(v78 + 40) = 0;
    *(v78 + 48) = sub_1BA33CCB4;
    *(v78 + 56) = v77;
    v79 = swift_allocObject();
    *(v79 + 16) = v48;
    sub_1BA33CD18(0, &unk_1EBBF0D70, sub_1BA33CCD4, &protocol witness table for DataSourceWithLayout<A>, type metadata accessor for Supplementary);
    v80 = swift_allocObject();
    v80[4] = v78;
    v80[5] = sub_1BA33CD10;
    v80[6] = v79;
    v80[2] = v76;
    v80[3] = v75;
    sub_1BA33CC50(0, &qword_1EDC5DC70, sub_1BA03A7DC, MEMORY[0x1E69E6F90]);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_1BA4B5480;
    *(v81 + 32) = v80;
    *(v81 + 40) = &protocol witness table for Supplementary<A>;
    swift_bridgeObjectRetain_n();

    return CompoundSectionedDataSource.init(_:)(v81);
  }

  return result;
}

void *sub_1BA33BF7C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for ListLayoutConfiguration();
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EDC6CB88 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v3, qword_1EDC6CB90);
  sub_1B9F37E38(v6, v5);
  v7 = *(v3 + 88);
  v8 = sub_1BA4A47D8();
  v9 = *(v8 - 8);
  (*(v9 + 8))(v5 + v7, v8);
  (*(v9 + 104))(v5 + v7, *MEMORY[0x1E69DC290], v8);

  v5[1] = 0;
  *v5 = 0;
  v10 = ListLayoutConfiguration.layout(for:)(a2);
  sub_1BA047354(v5);
  return v10;
}

unint64_t sub_1BA33C0EC@<X0>(uint64_t a1@<X3>, void *a2@<X8>)
{
  v4 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1BA4A1968();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(a1 + 16))
  {
    v8 = a1 + 24 * result;
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);

    _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
    v11 = type metadata accessor for HeaderItem();
    swift_allocObject();
    HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v9, v10, 0, 0, 0, 0, v6, 0, 0);
    v13 = v12;
    a2[3] = v11;
    result = sub_1BA011754();
    a2[4] = result;
    *a2 = v13;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA33C23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  *(v6 + 88) = a1;
  *(v6 + 96) = a2;
  v12 = OBJC_IVAR____TtC18HealthExperienceUI21UserDefaultSwitchItem_userDefault;
  sub_1BA243838(0, &qword_1EDC6ADF0, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  v14 = v13;
  v15 = *(v13 - 8);
  (*(v15 + 16))(v6 + v12, a5, v13);

  sub_1BA4A1CA8();
  *(v6 + 81) = v21;
  type metadata accessor for SwitchCollectionViewCell();
  sub_1BA04DA88();
  v16 = sub_1BA4A6808();
  v18 = v17;
  (*(v15 + 8))(a5, v14);
  *(v6 + 16) = v16;
  *(v6 + 24) = v18;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0;
  *(v6 + 32) = 0u;
  swift_beginAccess();
  *(v6 + 32) = 0;
  swift_beginAccess();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  swift_beginAccess();
  *(v6 + 56) = a3;
  *(v6 + 64) = a4;

  swift_beginAccess();
  v19 = *(v6 + 72);
  *(v6 + 72) = 0;

  return v6;
}

uint64_t sub_1BA33C434()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI21UserDefaultSwitchItem_userDefault;
  sub_1BA243838(0, &qword_1EDC6ADF0, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_1BA33C4C8()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI21UserDefaultSwitchItem_userDefault;
  sub_1BA243838(0, &qword_1EDC6ADF0, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1BA33C5F4()
{
  sub_1BA243838(319, &qword_1EDC6ADF0, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1BA33C6C8()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI21UserDefaultSwitchItem_userDefault;
  sub_1BA243838(0, &qword_1EDC6ADF0, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA33C818(int a1)
{
  v2 = v1;
  v32 = *v2;
  sub_1BA243838(0, &qword_1EDC6ADF0, MEMORY[0x1E69E6370], MEMORY[0x1E69A3C40]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28[-v7];
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = a1;
  v35 = a1;
  v13 = OBJC_IVAR____TtC18HealthExperienceUI21UserDefaultSwitchItem_userDefault;
  swift_beginAccess();
  sub_1BA4A1CB8();
  swift_endAccess();
  sub_1BA4A3DD8();

  v14 = sub_1BA4A3E88();
  v15 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = v10;
    v17 = v16;
    v30 = swift_slowAlloc();
    v34[0] = v30;
    *v17 = 136315906;
    v18 = sub_1BA4A85D8();
    v29 = v15;
    v20 = sub_1B9F0B82C(v18, v19, v34);
    v32 = v9;
    v21 = v20;

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_1B9F0B82C(v2[11], v2[12], v34);
    *(v17 + 22) = 2080;
    (*(v6 + 16))(v8, v2 + v13, v5);
    v22 = sub_1BA4A1CD8();
    v24 = v23;
    (*(v6 + 8))(v8, v5);
    v25 = sub_1B9F0B82C(v22, v24, v34);

    *(v17 + 24) = v25;
    *(v17 + 32) = 1024;
    *(v17 + 34) = v33 & 1;
    _os_log_impl(&dword_1B9F07000, v14, v29, "[%s] %s switch with default key %s set to %{BOOL}d", v17, 0x26u);
    v26 = v30;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v26, -1, -1);
    MEMORY[0x1BFAF43A0](v17, -1, -1);

    return (*(v31 + 8))(v12, v32);
  }

  else
  {

    return (*(v10 + 8))(v12, v9);
  }
}

void sub_1BA33CBB4()
{
  if (!qword_1EBBF0D48)
  {
    sub_1BA33CC50(255, &unk_1EBBF0D50, type metadata accessor for HealthSharingUserDefaultSwitchItem, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBF0D48);
    }
  }
}

void sub_1BA33CC50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BA33CD18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1BA33CD94()
{
  v2 = sub_1BA4A85D8();
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  v0 = sub_1BA4A1748();
  MEMORY[0x1BFAF1350](v0);

  return v2;
}

void sub_1BA33CE28(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI9ImageItem_image;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1BA33CE88()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI9ImageItem_image;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1BA33CEDC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI9ImageItem_image;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t ImageItem.__allocating_init(image:cell:)(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1BA4A1788();
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI9ImageItem_image) = a1;
  sub_1BA33D088();
  *(v2 + 16) = sub_1BA4A6808();
  *(v2 + 24) = v3;
  return v2;
}

uint64_t ImageItem.init(image:cell:)(uint64_t a1)
{
  sub_1BA4A1788();
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI9ImageItem_image) = a1;
  sub_1BA33D088();
  *(v1 + 16) = sub_1BA4A6808();
  *(v1 + 24) = v3;
  return v1;
}

unint64_t sub_1BA33D088()
{
  result = qword_1EBBF0D98;
  if (!qword_1EBBF0D98)
  {
    type metadata accessor for ImageCollectionViewCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBF0D98);
  }

  return result;
}

uint64_t static ImageItem.roundedImageItem(image:)(void *a1)
{
  type metadata accessor for RoundedImageCollectionViewCell();
  type metadata accessor for ImageItem();
  v2 = swift_allocObject();
  sub_1BA4A1788();
  *(v2 + OBJC_IVAR____TtC18HealthExperienceUI9ImageItem_image) = a1;
  sub_1BA33D088();
  v3 = a1;
  *(v2 + 16) = sub_1BA4A6808();
  *(v2 + 24) = v4;
  return v2;
}

uint64_t type metadata accessor for ImageItem()
{
  result = qword_1EBBF0DC0;
  if (!qword_1EBBF0DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ImageItem.deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI9ImageItem_uuid;
  v2 = sub_1BA4A1798();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ImageItem.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI9ImageItem_uuid;
  v2 = sub_1BA4A1798();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA33D324(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA33D388(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI23ImageCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA33D824();
  return sub_1B9F7B644(v6);
}

uint64_t sub_1BA33D3F8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI23ImageCollectionViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA33D450(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI23ImageCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA33D824();
  return sub_1B9F7B644(a1);
}

uint64_t (*sub_1BA33D4BC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA33D520;
}

uint64_t sub_1BA33D520(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA33D824();
  }

  return result;
}

id ImageCollectionViewCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *ImageCollectionViewCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI23ImageCollectionViewCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI23ImageCollectionViewCell_imageView;
  v11 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setContentMode_];

  *&v4[v10] = v11;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI23ImageCollectionViewCell_heightConstraint] = 0;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for ImageCollectionViewCell();
  v12 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC18HealthExperienceUI23ImageCollectionViewCell_imageView;
  v14 = *&v12[OBJC_IVAR____TtC18HealthExperienceUI23ImageCollectionViewCell_imageView];
  v15 = v12;
  [v15 addSubview_];
  [v15 hk:*&v12[v13] alignConstraintsWithView:?];

  return v15;
}

id ImageCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_1BA33D77C(void *a1)
{
  v2 = OBJC_IVAR____TtC18HealthExperienceUI23ImageCollectionViewCell_heightConstraint;
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI23ImageCollectionViewCell_heightConstraint);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI23ImageCollectionViewCell_heightConstraint) = a1;
  if (v3)
  {
    v4 = a1;
    [v3 setActive_];
    v5 = *(v1 + v2);
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = v5;
    [v6 setActive_];
  }

LABEL_4:
}

uint64_t sub_1BA33D824()
{
  swift_getObjectType();
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC18HealthExperienceUI23ImageCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(&v0[v5], v30);
  if (v30[3])
  {
    sub_1B9FCD918();
    type metadata accessor for ImageItem();
    if (swift_dynamicCast())
    {
      v6 = v29[1];
      v7 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI23ImageCollectionViewCell_imageView];
      v8 = OBJC_IVAR____TtC18HealthExperienceUI9ImageItem_image;
      swift_beginAccess();
      [v7 setImage_];
      v9 = [v7 image];
      if (v9 && (v10 = v9, [v9 size], v12 = v11, v14 = v13, v10, v12 > 0.0))
      {
        v15 = [v0 heightAnchor];
        v16 = [v0 widthAnchor];
        v17 = [v15 constraintEqualToAnchor:v16 multiplier:v14 / v12];

        v18 = v17;
      }

      else
      {
        v27 = [v0 heightAnchor];
        v28 = [v27 constraintEqualToConstant_];

        v18 = v28;
      }

      sub_1BA33D77C(v18);
    }
  }

  else
  {
    sub_1B9F7B644(v30);
  }

  sub_1BA4A3DD8();
  v19 = sub_1BA4A3E88();
  v20 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30[0] = v22;
    *v21 = 136315138;
    v23 = sub_1BA4A85D8();
    v25 = sub_1B9F0B82C(v23, v24, v30);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_1B9F07000, v19, v20, "[%s] item is not ImageItem", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1BFAF43A0](v22, -1, -1);
    MEMORY[0x1BFAF43A0](v21, -1, -1);
  }

  return (*(v2 + 8))(v4, v1);
}

id ImageCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImageCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _s18HealthExperienceUI23ImageCollectionViewCellC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI23ImageCollectionViewCell_item;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI23ImageCollectionViewCell_imageView;
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setContentMode_];

  *(v0 + v2) = v3;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI23ImageCollectionViewCell_heightConstraint) = 0;
  sub_1BA4A8018();
  __break(1u);
}

unint64_t sub_1BA33DCFC()
{
  result = qword_1EBBF0DB8;
  if (!qword_1EBBF0DB8)
  {
    type metadata accessor for ImageItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF0DB8);
  }

  return result;
}

uint64_t sub_1BA33DD5C()
{
  result = sub_1BA4A1798();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BA33DFE0()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBC098C8 = result;
  unk_1EBC098D0 = v1;
  return result;
}

uint64_t sub_1BA33E08C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBC098D8 = result;
  unk_1EBC098E0 = v1;
  return result;
}

uint64_t sub_1BA33E138()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBC098E8 = result;
  unk_1EBC098F0 = v1;
  return result;
}

uint64_t sub_1BA33E1E4()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBC098F8 = result;
  unk_1EBC09900 = v1;
  return result;
}

void sub_1BA33E32C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for SummarySharingSelectionFlow(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA17294C(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectionFlowContext;
  v10 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectionFlowContext];
  swift_beginAccess();
  if (([*(*(v10 + 32) + 64) BOOLValue] & 1) == 0)
  {

    sub_1B9FF0E2C();
  }

  memset(v36, 0, 32);
  v37 = 0uLL;
  *&v38 = 0;
  *(&v38 + 1) = 7;
  LOBYTE(v39) = 7;

  sub_1B9FEEC64(ObjectType, v36, 0, &v37);

  sub_1B9FF3BFC(v37, *(&v37 + 1), v38, *(&v38 + 1));
  sub_1B9F0DBB4(v36, &qword_1EDC6E300);
  v11 = *&v1[v9];
  swift_beginAccess();
  v12 = *(v11 + 32);
  sub_1BA0B5A7C();

  v13 = sub_1BA4A7758();
  v14 = *(v12 + 64);
  *(v12 + 64) = v13;

  v33 = v9;
  v15 = *&v1[v9];
  swift_beginAccess();
  v16 = *(v15 + 40);
  if (*(v16 + 16))
  {
    v17 = *(v16 + 32);
  }

  else
  {
    v17 = 0x80;
  }

  sub_1B9F0A534(&v1[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_healthExperienceStore], v36);
  v18 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_healthStore];
  v19 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedContact + 16];
  v37 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedContact];
  v38 = v19;
  v39 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedContact + 32];
  v20 = v37;
  v21 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedContact + 24];
  v22 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedContactPhotoPublisher];
  v40 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedContact + 8];
  v41[0] = v21;
  v23 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedItems];
  *v8 = v17;
  swift_storeEnumTagMultiPayload();
  (*(v4 + 56))(v8, 0, 1, v3);
  type metadata accessor for SummarySharingSelectedDataTypesContext();
  swift_allocObject();
  v24 = v18;
  v25 = v20;

  sub_1B9F87F44(&v40, v35);
  sub_1B9F87F44(v41, v35);
  v26 = SummarySharingSelectedDataTypesContext.init(selectedItems:selectionFlow:)(v23, v8);
  v27 = v34;
  *v34 = v17;
  swift_storeEnumTagMultiPayload();
  v28 = *&v1[v33];
  v29 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingAlertsSelectionViewController());

  v30 = sub_1BA360B94(v36, v24, &v37, v22, v26, v27, v28);

  sub_1B9F0DBB4(&v40, &qword_1EDC6E410);
  sub_1B9F0DBB4(v41, &qword_1EDC6E410);

  v31 = [v1 navigationController];
  if (v31)
  {
    v32 = v31;
    [v31 pushViewController:v30 animated:1];
  }
}

void sub_1BA33E7C0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for SummarySharingSelectionFlow(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA17294C(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectionFlowContext;
  v10 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectionFlowContext];
  swift_beginAccess();
  if ([*(*(v10 + 32) + 64) BOOLValue])
  {

    sub_1B9FF0E2C();
  }

  memset(v29, 0, sizeof(v29));
  v30 = 0uLL;
  *&v31 = 0;
  *(&v31 + 1) = 7;
  LOBYTE(v32) = 7;

  sub_1B9FEEC64(ObjectType, v29, 0, &v30);

  sub_1B9FF3BFC(v30, *(&v30 + 1), v31, *(&v31 + 1));
  sub_1B9F0DBB4(v29, &qword_1EDC6E300);
  sub_1B9F0A534(&v1[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_healthExperienceStore], v29);
  v11 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_healthStore];
  v12 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedContact + 16];
  v30 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedContact];
  v31 = v12;
  v32 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedContact + 32];
  v13 = v30;
  v14 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedContact + 24];
  v33 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedContact + 8];
  v34[0] = v14;
  v15 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedContactPhotoPublisher];
  v16 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedItems];
  swift_storeEnumTagMultiPayload();
  (*(v4 + 56))(v8, 0, 1, v3);
  type metadata accessor for SummarySharingSelectedDataTypesContext();
  swift_allocObject();
  v17 = v11;
  v18 = v13;

  sub_1B9F87F44(&v33, v28);
  sub_1B9F87F44(v34, v28);
  v19 = SummarySharingSelectedDataTypesContext.init(selectedItems:selectionFlow:)(v16, v8);
  v20 = v27;
  swift_storeEnumTagMultiPayload();
  v21 = *&v1[v9];
  v22 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingAlertsSelectionViewController());

  v23 = sub_1BA360B94(v29, v17, &v30, v15, v19, v20, v21);

  sub_1B9F0DBB4(&v33, &qword_1EDC6E410);
  sub_1B9F0DBB4(v34, &qword_1EDC6E410);

  v24 = [v1 navigationController];
  if (v24)
  {
    v25 = v24;
    [v24 pushViewController:v23 animated:1];
  }
}

id sub_1BA33ECA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummarySharingOnboardingChooseSelectionFlowViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA33EDB0@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_item);
  swift_beginAccess();
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

void sub_1BA33EE04(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = &v1[OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_item];
  swift_beginAccess();
  *v4 = v2;
  *(v4 + 1) = v3;

  v5 = sub_1BA33F1EC();
  if (*(v4 + 1))
  {
    v6 = v5;

    v7 = sub_1BA4A6758();

    [v6 setText_];

    v8 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView____lazy_storage___textLabel] text];
    [v1 setAccessibilityLabel_];
  }

  else
  {
    __break(1u);
  }
}

void (*sub_1BA33EEF0(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_item;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1BA33EF78;
}

void sub_1BA33EF78(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3] + v3[4];
    v5 = sub_1BA33F1EC();
    if (!*(v4 + 8))
    {
      __break(1u);
      return;
    }

    v6 = v5;
    v7 = v3[3];

    v8 = sub_1BA4A6758();

    [v6 setText_];

    v9 = [*&v7[OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView____lazy_storage___textLabel] text];
    [v7 setAccessibilityLabel_];
  }

  free(v3);
}

uint64_t sub_1BA33F068(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_baseIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1BA33F0D4()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BA33F12C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id sub_1BA33F1EC()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView____lazy_storage___textLabel;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView____lazy_storage___textLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView____lazy_storage___textLabel);
  }

  else
  {
    v4 = sub_1BA33F24C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA33F24C()
{
  v0 = [objc_allocWithZone(type metadata accessor for DynamicFontLabel()) initWithFrame_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = v0;
  [v1 setUserInteractionEnabled_];
  [v1 setAdjustsFontForContentSizeCategory_];
  v2 = sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB978], 0, 0x8000, 0, 0, 1);
  [v1 setFont_];

  v3 = [objc_opt_self() labelColor];
  [v1 setTextColor_];

  [v1 setLineBreakMode_];
  [v1 setNumberOfLines_];
  LODWORD(v4) = 1132068864;
  [v1 setContentHuggingPriority:0 forAxis:v4];
  LODWORD(v5) = 1132068864;
  [v1 setContentCompressionResistancePriority:0 forAxis:v5];

  return v1;
}

char *sub_1BA33F3C8(id a1)
{
  v2 = a1;
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_item];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v1[OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_baseIdentifier];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView____lazy_storage___textLabel] = 0;
  if (!a1)
  {
    a1 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  }

  *&v1[OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_accessoryView] = a1;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CellWithAccessoryView();
  v5 = v2;
  v6 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v7 = sub_1BA33F1EC();
  [v6 addSubview_];

  v8 = OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_accessoryView;
  [v6 addSubview_];
  [*&v6[v8] setTranslatesAutoresizingMaskIntoConstraints_];
  sub_1BA33F628();

  return v6;
}

id sub_1BA33F4F4(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_item];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v1[OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_baseIdentifier];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView____lazy_storage___textLabel] = 0;
  v5 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_accessoryView] = v5;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for CellWithAccessoryView();
  v6 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    v9 = sub_1BA33F1EC();
    [v8 addSubview_];

    v10 = OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_accessoryView;
    [v8 addSubview_];
    [*&v8[v10] setTranslatesAutoresizingMaskIntoConstraints_];
    sub_1BA33F628();
  }

  return v7;
}

id sub_1BA33F628()
{
  v1 = v0;
  sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5470;
  v3 = [v0 heightAnchor];
  v4 = [v3 constraintGreaterThanOrEqualToConstant_];

  *(inited + 32) = v4;
  sub_1B9F73B50(inited);
  v5 = sub_1BA33F77C();
  sub_1B9F73B50(v5);
  v6 = sub_1BA33F994();
  sub_1B9F73B50(v6);
  v7 = objc_opt_self();
  sub_1B9F740B0();
  v8 = sub_1BA4A6AE8();

  [v7 activateConstraints_];

  return [v1 setNeedsLayout];
}

uint64_t sub_1BA33F77C()
{
  sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B5890;
  v2 = sub_1BA33F1EC();
  v3 = [v2 topAnchor];

  v4 = [v0 topAnchor];
  v5 = [v3 constraintEqualToAnchor:v4 constant:8.0];

  *(v1 + 32) = v5;
  v6 = OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView____lazy_storage___textLabel;
  v7 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView____lazy_storage___textLabel] bottomAnchor];
  v8 = [v0 bottomAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:-8.0];

  *(v1 + 40) = v9;
  v10 = [*&v0[v6] leadingAnchor];
  v11 = [v0 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:16.0];

  *(v1 + 48) = v12;
  v13 = [*&v0[v6] centerYAnchor];
  v14 = [v0 centerYAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v1 + 56) = v15;
  return v1;
}

uint64_t sub_1BA33F994()
{
  sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B8B60;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_accessoryView;
  v3 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_accessoryView] leadingAnchor];
  v4 = sub_1BA33F1EC();
  v5 = [v4 trailingAnchor];

  v6 = [v3 constraintGreaterThanOrEqualToAnchor:v5 constant:8.0];
  *(v1 + 32) = v6;
  v7 = [*&v0[v2] trailingAnchor];
  v8 = [v0 trailingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:-16.0];

  *(v1 + 40) = v9;
  v10 = [*&v0[v2] centerYAnchor];
  v11 = [v0 centerYAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v1 + 48) = v12;
  return v1;
}

uint64_t sub_1BA33FB50(void *a1)
{
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 8))(v7, v8);
  if (v10 >> 60 == 15)
  {
    sub_1BA4A3DD8();
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24[0] = v14;
      *v13 = 136446210;
      v15 = sub_1BA4A85D8();
      v17 = sub_1B9F0B82C(v15, v16, v24);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1B9F07000, v11, v12, "%{public}s No User Data!", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    v18 = v9;
    v19 = v10;
    sub_1BA4A0EB8();
    swift_allocObject();
    sub_1B9F206D4(v18, v19);
    sub_1BA4A0EA8();
    sub_1BA18F124();
    sub_1BA4A0E98();

    sub_1B9F6AC8C(v18, v19);
    v20 = v24[2];
    v21 = v24[3];

    v24[0] = v20;
    v24[1] = v21;
    sub_1BA33EE04(v24);
    return sub_1B9F6AC8C(v18, v19);
  }
}

uint64_t sub_1BA33FFA8()
{
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](60, 0xE100000000000000);
  swift_getObjectType();
  sub_1BA34018C();
  v1 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v1);

  MEMORY[0x1BFAF1350](32, 0xE100000000000000);
  sub_1BA4A7FB8();
  MEMORY[0x1BFAF1350](0x203A7478655420, 0xE700000000000000);
  v2 = sub_1BA33F1EC();
  v3 = [v2 text];

  if (v3)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  sub_1B9F23348(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v4 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v4);

  MEMORY[0x1BFAF1350](0x6F73736563634120, 0xEC000000203A7972);
  swift_getObjectType();
  v5 = sub_1BA4A85D8();
  MEMORY[0x1BFAF1350](v5);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  return 0;
}

unint64_t sub_1BA34018C()
{
  result = qword_1EBBF0E18;
  if (!qword_1EBBF0E18)
  {
    type metadata accessor for CellWithAccessoryView();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBF0E18);
  }

  return result;
}

id CellWithAccessoryView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CellWithAccessoryView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CellWithAccessoryView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall CellWithAccessoryView.updateAutomationIdentifiers(with:)(Swift::String_optional with)
{
  v2 = v1;
  if (with.value._object)
  {
    v3 = sub_1BA33F1EC();

    MEMORY[0x1BFAF1350](0x656C7469542ELL, 0xE600000000000000);
    v4 = sub_1BA4A6758();

    [v3 setAccessibilityIdentifier_];

    v5 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_accessoryView);

    v6 = v5;
    MEMORY[0x1BFAF1350](0x6F7373656363412ELL, 0xEA00000000007972);
    v9 = sub_1BA4A6758();

    [v6 setAccessibilityIdentifier_];
  }

  else
  {
    v7 = sub_1BA33F1EC();
    [v7 setAccessibilityIdentifier_];

    v8 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_accessoryView);

    [v8 setAccessibilityIdentifier_];
  }
}

uint64_t sub_1BA340514()
{
  v1 = (*v0 + OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BA340570(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC18HealthExperienceUI21CellWithAccessoryView_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t keypath_getTm_3@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

HealthExperienceUI::PDFFileNameGenerator::Options_optional __swiftcall PDFFileNameGenerator.Options.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1BA340808(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x1E69E9840];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_1BA3409A8(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_1BA341D00(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x1BFAF43A0](v14, -1, -1);
  }

  return v10;
}

uint64_t sub_1BA3409A8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = 0;
  v7 = 0;
  v8 = a4 + 56;
  v9 = a3 + 32;
  while (1)
  {
    v11 = *(v9 + v7);
    sub_1BA4A8488();
    MEMORY[0x1BFAF2ED0](v11);
    v12 = sub_1BA4A84D8();
    v13 = -1 << *(a4 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    v16 = 1 << v14;
    if (((1 << v14) & *(v8 + 8 * (v14 >> 6))) != 0)
    {
      v17 = *(a4 + 48);
      if (*(v17 + v14) != v11)
      {
        v18 = ~v13;
        do
        {
          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = 1 << v14;
          if (((1 << v14) & *(v8 + 8 * (v14 >> 6))) == 0)
          {
            goto LABEL_4;
          }
        }

        while (*(v17 + v14) != v11);
      }

      v10 = a1[v15];
      a1[v15] = v10 | v16;
      if ((v10 & v16) == 0 && __OFADD__(v6++, 1))
      {
        break;
      }
    }

LABEL_4:
    if (++v7 == v5)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_14:
  v6 = 0;
LABEL_15:

  return sub_1BA306EC4(a1, a2, v6, a4);
}

uint64_t _s18HealthExperienceUI20PDFFileNameGeneratorV10dateString0G09showsTime8calendarSS10Foundation4DateV_SbAH8CalendarVtFZ_0(uint64_t a1, char a2)
{
  v4 = sub_1BA4A18C8();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA1F6640(0, &qword_1EDC6AE40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v40 - v8;
  v10 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v11 = sub_1BA4A6758();
  [v10 setDateFormat_];

  v12 = sub_1BA4A1818();
  [v10 setCalendar_];

  v44 = a1;
  v13 = sub_1BA4A16B8();
  v45 = v10;
  v14 = [v10 stringFromDate_];

  v15 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v17 = v16;

  v18 = MEMORY[0x1E69E6158];
  if (a2)
  {
    v41 = v15;
    v19 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v20 = sub_1BA4A1818();
    [v19 setCalendar_];

    sub_1BA4A1868();
    v21 = sub_1BA4A17C8();
    v22 = *(v21 - 8);
    v23 = 0;
    if ((*(v22 + 48))(v9, 1, v21) != 1)
    {
      v23 = sub_1BA4A17A8();
      (*(v22 + 8))(v9, v21);
    }

    [v19 setLocale_];

    sub_1BA4A1888();
    v24 = sub_1BA4A18B8();
    (*(v42 + 8))(v6, v43);
    [v19 setTimeZone_];

    [v19 setDateStyle_];
    [v19 setTimeStyle_];
    v25 = sub_1BA4A16B8();
    v26 = [v19 stringFromDate_];

    v27 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v29 = v28;

    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    sub_1BA1F6640(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1BA4B5460;
    *(v30 + 56) = v18;
    v31 = sub_1B9F1BE20();
    *(v30 + 32) = v41;
    *(v30 + 40) = v17;
    *(v30 + 96) = v18;
    *(v30 + 104) = v31;
    *(v30 + 64) = v31;
    *(v30 + 72) = v27;
    *(v30 + 80) = v29;
    v15 = sub_1BA4A67D8();
    v17 = v32;
  }

  v50 = v15;
  v51 = v17;
  v48 = 47;
  v49 = 0xE100000000000000;
  v46 = 45;
  v47 = 0xE100000000000000;
  sub_1B9F252FC();
  v33 = sub_1BA4A7B58();
  v35 = v34;

  v50 = v33;
  v51 = v35;
  v48 = 58;
  v49 = 0xE100000000000000;
  v46 = 46;
  v47 = 0xE100000000000000;
  sub_1BA4A7B58();

  v36 = sub_1BA4A6758();

  v37 = [v36 hk_stringByNormalizingSpaces];

  v38 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  return v38;
}

uint64_t sub_1BA3410BC(uint64_t a1, uint64_t a2, uint64_t *a3, char a4, uint64_t a5)
{
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a3[1];
  if (v14)
  {
    v15 = *a3;
    v16 = qword_1EDC5E100;

    if (v16 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    v17 = type metadata accessor for PDFCharacteristicsProvider.Content();
    v18 = _s18HealthExperienceUI20PDFFileNameGeneratorV10dateString0G09showsTime8calendarSS10Foundation4DateV_SbAH8CalendarVtFZ_0(a3 + *(v17 + 24), a4 & 1);
    v20 = v19;
    sub_1BA1F6640(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1BA4B9FD0;
    v22 = MEMORY[0x1E69E6158];
    *(v21 + 56) = MEMORY[0x1E69E6158];
    v23 = sub_1B9F1BE20();
    *(v21 + 32) = v15;
    *(v21 + 40) = v14;
    *(v21 + 96) = v22;
    *(v21 + 104) = v23;
    *(v21 + 64) = v23;
    *(v21 + 72) = a1;
    *(v21 + 80) = a2;
    *(v21 + 136) = v22;
    *(v21 + 144) = v23;
    *(v21 + 112) = v18;
    *(v21 + 120) = v20;
  }

  else
  {
    v41 = a5;
    sub_1BA4A3DD8();
    v24 = sub_1BA4A3E88();
    v25 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v40 = a1;
      v27 = v26;
      v28 = swift_slowAlloc();
      v42 = v28;
      *v27 = 136446210;
      *(v27 + 4) = sub_1B9F0B82C(0xD000000000000014, 0x80000001BA4D2560, &v42);
      _os_log_impl(&dword_1B9F07000, v24, v25, "%{public}s Can not create file name with name, defaulting to only date time.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1BFAF43A0](v28, -1, -1);
      v29 = v27;
      a1 = v40;
      MEMORY[0x1BFAF43A0](v29, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    v30 = type metadata accessor for PDFCharacteristicsProvider.Content();
    v31 = _s18HealthExperienceUI20PDFFileNameGeneratorV10dateString0G09showsTime8calendarSS10Foundation4DateV_SbAH8CalendarVtFZ_0(a3 + *(v30 + 24), a4 & 1);
    v33 = v32;
    sub_1BA1F6640(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1BA4B5460;
    v35 = MEMORY[0x1E69E6158];
    *(v34 + 56) = MEMORY[0x1E69E6158];
    v36 = sub_1B9F1BE20();
    *(v34 + 32) = a1;
    *(v34 + 40) = a2;
    *(v34 + 96) = v35;
    *(v34 + 104) = v36;
    *(v34 + 64) = v36;
    *(v34 + 72) = v31;
    *(v34 + 80) = v33;
  }

  v37 = sub_1BA4A67D8();

  return v37;
}

uint64_t sub_1BA341514(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3[1];
  if (v10)
  {
    v11 = *a3;
    v12 = qword_1EDC5E100;

    if (v12 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    sub_1BA1F6640(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1BA4B5460;
    v14 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    v15 = sub_1B9F1BE20();
    *(v13 + 32) = v11;
    *(v13 + 40) = v10;
    *(v13 + 96) = v14;
    *(v13 + 104) = v15;
    *(v13 + 64) = v15;
    *(v13 + 72) = a1;
    *(v13 + 80) = a2;
  }

  else
  {
    sub_1BA4A3DD8();
    v16 = sub_1BA4A3E88();
    v17 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_1B9F0B82C(0xD000000000000014, 0x80000001BA4D2560, &v24);
      _os_log_impl(&dword_1B9F07000, v16, v17, "%{public}s Can not create file name with name, defaulting to standard name.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1BFAF43A0](v19, -1, -1);
      MEMORY[0x1BFAF43A0](v18, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    sub_1BA1F6640(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1BA4B5480;
    *(v20 + 56) = MEMORY[0x1E69E6158];
    *(v20 + 64) = sub_1B9F1BE20();
    *(v20 + 32) = a1;
    *(v20 + 40) = a2;
  }

  v21 = sub_1BA4A67D8();

  return v21;
}

uint64_t _s18HealthExperienceUI20PDFFileNameGeneratorV04fileE015characteristics016localizedFeatureE07options16calendarOverrideSSAA26PDFCharacteristicsProviderC7ContentV_SSShyAC7OptionsOG10Foundation8CalendarVtFZ_0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v10 = *(sub_1BA340808(&unk_1F37FBF20, a4) + 16);

  v11 = *(sub_1BA340808(&unk_1F37FBF48, a4) + 16);

  v12 = *(sub_1BA340808(&unk_1F37FBF70, a4) + 16);

  if (v10)
  {
    if (v12)
    {

      return sub_1BA3410BC(a2, a3, a1, v11 != 0, a5);
    }

    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    v14 = type metadata accessor for PDFCharacteristicsProvider.Content();
    v15 = _s18HealthExperienceUI20PDFFileNameGeneratorV10dateString0G09showsTime8calendarSS10Foundation4DateV_SbAH8CalendarVtFZ_0(a1 + *(v14 + 24), v11 != 0);
    v17 = v16;
    sub_1BA1F6640(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1BA4B5460;
    v19 = MEMORY[0x1E69E6158];
    *(v18 + 56) = MEMORY[0x1E69E6158];
    v20 = sub_1B9F1BE20();
    *(v18 + 32) = a2;
    *(v18 + 40) = a3;
    *(v18 + 96) = v19;
    *(v18 + 104) = v20;
    *(v18 + 64) = v20;
    *(v18 + 72) = v15;
    *(v18 + 80) = v17;

    v21 = sub_1BA4A67D8();
LABEL_16:

    return v21;
  }

  if (!v12)
  {
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    sub_1BA1F6640(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1BA4B5480;
    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = sub_1B9F1BE20();
    *(v22 + 32) = a2;
    *(v22 + 40) = a3;

    v21 = sub_1BA4A67D8();
    goto LABEL_16;
  }

  return sub_1BA341514(a2, a3, a1);
}

unint64_t sub_1BA341C8C()
{
  result = qword_1EBBF0E28;
  if (!qword_1EBBF0E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF0E28);
  }

  return result;
}

uint64_t sub_1BA341D00@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1BA3409A8(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1BA341D5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  return v1;
}

void sub_1BA341DC8(uint64_t a1, void (*a2)(uint64_t))
{
  v32[4] = *MEMORY[0x1E69E9840];
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = OBJC_IVAR____TtC18HealthExperienceUI49SummarySharingProfileTileEscalatedDetailsProvider_frc;
    v10 = *(Strong + OBJC_IVAR____TtC18HealthExperienceUI49SummarySharingProfileTileEscalatedDetailsProvider_frc);
    v32[0] = 0;
    if ([v10 performFetch_])
    {
      v11 = *&v8[v9];
      v12 = v32[0];
      v13 = [v11 sections];
      if (v13)
      {
        v14 = v13;
        sub_1BA024D28();
        v15 = sub_1BA4A6B08();
      }

      else
      {
        v15 = 0;
      }

      sub_1BA342230(v15);

      if (a2)
      {
        a2(v30);
      }
    }

    else
    {
      v16 = v32[0];
      v17 = sub_1BA4A1488();

      swift_willThrow();
      sub_1BA4A3E28();
      v18 = v17;
      v19 = sub_1BA4A3E88();
      v20 = sub_1BA4A6FA8();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v31[0] = swift_slowAlloc();
        v32[0] = v31[0];
        *v21 = 136315394;
        v22 = sub_1BA4A85D8();
        v24 = sub_1B9F0B82C(v22, v23, v32);

        *(v21 + 4) = v24;
        *(v21 + 12) = 2080;
        v31[1] = v17;
        v25 = v17;
        sub_1B9FED358();
        v26 = sub_1BA4A6808();
        v28 = sub_1B9F0B82C(v26, v27, v32);

        *(v21 + 14) = v28;
        _os_log_impl(&dword_1B9F07000, v19, v20, "[%s] Error occurred while trying to perform fetch: %s", v21, 0x16u);
        v29 = v31[0];
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v29, -1, -1);
        MEMORY[0x1BFAF43A0](v21, -1, -1);
      }

      else
      {
      }

      (*(v4 + 8))(v6, v3);
    }
  }
}

uint64_t sub_1BA342114(int a1, id a2)
{
  v2 = [a2 sections];
  if (v2)
  {
    v3 = v2;
    sub_1BA024D28();
    v4 = sub_1BA4A6B08();
  }

  else
  {
    v4 = 0;
  }

  sub_1BA342230(v4);
}

uint64_t sub_1BA342230(unint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  if (a1)
  {
    v42 = v6;
    v43 = v10;
    v47 = 0;
    v48 = 0;
    v41 = &v41 - v11;
    if (a1 >> 62)
    {
      goto LABEL_17;
    }

    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      while (1)
      {
        v14 = 0;
        v8 = 0;
        while ((a1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1BFAF2860](v14, a1, v12);
          v6 = v10;
          v15 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
LABEL_12:
            __break(1u);
            goto LABEL_13;
          }

LABEL_8:
          v46[0] = v6;
          sub_1BA3427C8(v46, &v47, &v48, ObjectType);
          swift_unknownObjectRelease();
          ++v14;
          if (v15 == v13)
          {
            goto LABEL_18;
          }
        }

        if (v14 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_17:
        v13 = sub_1BA4A7CC8();
        if (!v13)
        {
          goto LABEL_18;
        }
      }

      v6 = *(a1 + 8 * v14 + 32);
      v10 = swift_unknownObjectRetain();
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }

LABEL_18:
    v25 = v41;
    sub_1BA4A3E28();
    v26 = v2;
    v27 = sub_1BA4A3E88();
    v28 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v46[0] = v30;
      *v29 = 136316418;
      v31 = sub_1BA4A85D8();
      v33 = sub_1B9F0B82C(v31, v32, v46);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2048;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BA4A4F28();

      *(v29 + 14) = v45;

      *(v29 + 22) = 2048;
      swift_beginAccess();
      *(v29 + 24) = v47;
      *(v29 + 32) = 2048;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BA4A4F28();

      *(v29 + 34) = v45;

      *(v29 + 42) = 2048;
      swift_beginAccess();
      *(v29 + 44) = v48;
      *(v29 + 52) = 2080;
      v34 = sub_1BA4A1D48();
      v36 = sub_1B9F0B82C(v34, v35, v46);

      *(v29 + 54) = v36;
      _os_log_impl(&dword_1B9F07000, v27, v28, "[%s] updating the # of alerts from %ld to %ld and # of changes from %ld to %ld for profile %s", v29, 0x3Eu);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v30, -1, -1);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
    }

    else
    {
    }

    (v42)[1](v25, v43);
    swift_beginAccess();
    v37 = v47;
    swift_getKeyPath();
    swift_getKeyPath();
    v45 = v37;
    v38 = v26;
    sub_1BA4A4F38();
    swift_beginAccess();
    v39 = v48;
    swift_getKeyPath();
    swift_getKeyPath();
    v44 = v39;
    v40 = v38;
    return sub_1BA4A4F38();
  }

  else
  {
LABEL_13:
    v16 = v10;
    sub_1BA4A3E28();
    v17 = sub_1BA4A3E88();
    v18 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v46[0] = v20;
      *v19 = 136315138;
      v21 = sub_1BA4A85D8();
      v23 = sub_1B9F0B82C(v21, v22, v46);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1B9F07000, v17, v18, "[%s] Unable to find sections from fetchedResultsController", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1BFAF43A0](v20, -1, -1);
      MEMORY[0x1BFAF43A0](v19, -1, -1);
    }

    return (v6)[1](v8, v16);
  }
}

void sub_1BA3427C8(void **a1, void *a2, void *a3, NSObject *a4)
{
  v61 = a4;
  v57 = a3;
  v58 = a2;
  v62 = sub_1BA4A3EA8();
  v6 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v55 - v10;
  v12 = sub_1BA4A1C68();
  v59 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v55 - v17;
  v19 = *a1;
  v20 = [v19 objects];
  if (!v20)
  {
    goto LABEL_7;
  }

  v21 = v20;
  v56 = v11;
  v60 = v4;
  v22 = sub_1BA4A6B08();

  if (!*(v22 + 16))
  {

    goto LABEL_7;
  }

  sub_1B9F0AD9C(v22 + 32, v63);

  sub_1BA4A27B8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    sub_1BA4A3E28();
    v26 = sub_1BA4A3E88();
    v27 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v63[0] = v29;
      *v28 = 136315138;
      v30 = sub_1BA4A85D8();
      v32 = sub_1B9F0B82C(v30, v31, v63);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_1B9F07000, v26, v27, "[%s] unable to determine feeditem or feeditem's contentKind for section", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      MEMORY[0x1BFAF43A0](v28, -1, -1);
    }

    (*(v6 + 8))(v8, v62);
    return;
  }

  v23 = v63[5];
  sub_1BA4A26B8();
  v24 = (v59)[11](v18, v12);
  if (v24 == *MEMORY[0x1E69A3B90])
  {
    v25 = [v19 numberOfObjects];

    *v58 = v25;
    return;
  }

  if (v24 == *MEMORY[0x1E69A3BA0])
  {
    v33 = [v19 numberOfObjects];

    v34 = v57;
    v35 = &v33[*v57];
    if (!__OFADD__(*v57, v33))
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  if (v24 == *MEMORY[0x1E69A3BC8])
  {
    v36 = [v19 numberOfObjects];

    v34 = v57;
    v35 = &v36[*v57];
    if (!__OFADD__(*v57, v36))
    {
LABEL_16:
      *v34 = v35;
      return;
    }

    __break(1u);
  }

  else
  {
    v37 = v56;
    sub_1BA4A3E28();
    v38 = v23;
    v39 = sub_1BA4A3E88();
    v40 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      LODWORD(v57) = v40;
      v42 = v41;
      v58 = swift_slowAlloc();
      v63[0] = v58;
      *v42 = 136315394;
      v43 = sub_1BA4A85D8();
      v61 = v39;
      v45 = sub_1B9F0B82C(v43, v44, v63);

      *(v42 + 4) = v45;
      *(v42 + 12) = 2080;
      sub_1BA4A26B8();
      v46 = sub_1BA4A1C58();
      v48 = v47;
      v49 = v59[1];
      v59 = v38;
      v50 = v14;
      v51 = v49;
      v49(v50, v12);
      v52 = sub_1B9F0B82C(v46, v48, v63);

      *(v42 + 14) = v52;
      v53 = v61;
      _os_log_impl(&dword_1B9F07000, v61, v57, "[%s] Unsupported content kind %s for tile details", v42, 0x16u);
      v54 = v58;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v54, -1, -1);
      MEMORY[0x1BFAF43A0](v42, -1, -1);

      (*(v6 + 8))(v37, v62);
    }

    else
    {

      (*(v6 + 8))(v37, v62);
      v51 = v59[1];
    }

    v51(v18, v12);
  }
}

id sub_1BA342DC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummarySharingProfileTileEscalatedDetailsProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SummarySharingProfileTileEscalatedDetailsProvider()
{
  result = qword_1EBBF0E58;
  if (!qword_1EBBF0E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA342F2C()
{
  sub_1BA34384C(319, &qword_1EBBF0E68, MEMORY[0x1E69E6530], MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1BA342FF8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SummarySharingProfileTileEscalatedDetailsProvider();
  result = sub_1BA4A4D78();
  *a1 = result;
  return result;
}

uint64_t sub_1BA343038@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  *a1 = v3;
  return result;
}

uint64_t sub_1BA3430B4(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1BA4A4F38();
}

char *sub_1BA343120(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v61 = a4;
  ObjectType = swift_getObjectType();
  v63 = sub_1BA4A6478();
  v66 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A64C8();
  v64 = *(v10 - 8);
  v65 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA34384C(0, &qword_1EBBF0E68, MEMORY[0x1E69E6530], MEMORY[0x1E695C070]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v54 - v15;
  v17 = OBJC_IVAR____TtC18HealthExperienceUI49SummarySharingProfileTileEscalatedDetailsProvider__alertsCount;
  aBlock[0] = 0;
  sub_1BA4A4EE8();
  v18 = *(v14 + 32);
  v18(&v5[v17], v16, v13);
  v19 = OBJC_IVAR____TtC18HealthExperienceUI49SummarySharingProfileTileEscalatedDetailsProvider__changesCount;
  aBlock[0] = 0;
  sub_1BA4A4EE8();
  v18(&v5[v19], v16, v13);
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI49SummarySharingProfileTileEscalatedDetailsProvider_sourceProfile] = a2;
  v20 = a2;
  v21 = MEMORY[0x1E69E7CC0];
  v22 = _s18HealthExperienceUI27SignificantTrendsDataSourceC9predicate7context13sourceProfile20additionalPredicatesSo11NSPredicateCSo22NSManagedObjectContextC_0A8Platform0gK0OSayAIGtFZ_0();
  v23 = sub_1BA26CB64(a2, v21);
  sub_1BA34384C(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1BA4B7510;
  *(v24 + 32) = v22;
  *(v24 + 40) = v23;
  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  v58 = v22;
  v57 = v23;
  v25 = sub_1BA4A6AE8();

  v26 = [objc_opt_self() orPredicateWithSubpredicates_];

  sub_1BA4A27B8();
  v27 = v26;
  v56 = v27;
  v28 = sub_1BA4A26C8();

  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1BA4B5470;
  v30 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v31 = sub_1BA4A6758();
  v32 = [v30 initWithKey:v31 ascending:0];

  *(v29 + 32) = v32;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v33 = sub_1BA4A6AE8();

  [v28 setSortDescriptors_];

  v34 = objc_allocWithZone(MEMORY[0x1E695D600]);
  v35 = v28;
  v55 = v35;
  v36 = a1;
  v54 = v36;
  v37 = sub_1BA4A6758();
  v38 = [v34 initWithFetchRequest:v35 managedObjectContext:v36 sectionNameKeyPath:v37 cacheName:0];

  *&v5[OBJC_IVAR____TtC18HealthExperienceUI49SummarySharingProfileTileEscalatedDetailsProvider_frc] = v38;
  v39 = type metadata accessor for SummarySharingProfileTileEscalatedDetailsProvider();
  v68.receiver = v5;
  v68.super_class = v39;
  v40 = objc_msgSendSuper2(&v68, sel_init);
  v41 = *&v40[OBJC_IVAR____TtC18HealthExperienceUI49SummarySharingProfileTileEscalatedDetailsProvider_frc];
  v42 = v40;
  [v41 setDelegate_];
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v43 = sub_1BA4A7308();
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = swift_allocObject();
  v45[2] = v44;
  v45[3] = a3;
  v46 = a3;
  v47 = ObjectType;
  v48 = v61;
  v45[4] = v61;
  v45[5] = v47;
  aBlock[4] = sub_1BA34389C;
  aBlock[5] = v45;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_91;
  v49 = _Block_copy(aBlock);
  sub_1B9F0F1B4(v46, v48);

  v50 = v59;
  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F0AF18(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
  sub_1B9F3F378();
  sub_1B9F0AF18(&qword_1EDC5E6A0, sub_1B9F3F378);
  v52 = v62;
  v51 = v63;
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v50, v52, v49);
  _Block_release(v49);

  sub_1B9F0E310(v46);
  (*(v66 + 8))(v52, v51);
  (*(v64 + 8))(v50, v65);
  return v42;
}

void sub_1BA34384C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double PDFSeparatedContent.separator.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EBBE8468 != -1)
  {
    swift_once();
  }

  v2 = [qword_1EBBED280 CGColor];
  result = 0.5;
  *a1 = xmmword_1BA4D26E0;
  *(a1 + 16) = 0x402E000000000000;
  *(a1 + 24) = v2;
  return result;
}

uint64_t PDFSeparatedContent.init(showSeparator:_:)@<X0>(char a1@<W0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = a1;
  result = a2();
  *a3 = result;
  return result;
}

void PDFSeparatedContent.render(context:document:)(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  *&v30 = *v2;
  BYTE8(v30) = v6;
  v7 = PDFSeparatedContent.minimumBoundingRectForContent(in:)(a2);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v34.origin.x = PDFBuilder.Document.drawingContext.getter();
  v39.origin.x = v7;
  v39.origin.y = v9;
  v39.size.width = v11;
  v39.size.height = v13;
  if (!CGRectContainsRect(v34, v39))
  {
    PDFBuilder.Document.moveToNextDrawableRegion(in:)(a1);
  }

  PDFBuilder.Document.bodyBox.getter();
  if (((v14 != *(a2 + 176)) & v6) == 1)
  {
    if (qword_1EBBE8468 != -1)
    {
      swift_once();
    }

    v15 = [qword_1EBBED280 CGColor];
    v30 = xmmword_1BA4D26E0;
    v31 = 0x402E000000000000;
    v32 = v15;
    PDFHorizontalSeparator.render(context:document:)(a1, a2);
  }

  else
  {
    PDFBuilder.Document.bodyBox.getter();
    if (v16 != *(a2 + 176))
    {
      if (qword_1EBBE8468 != -1)
      {
        swift_once();
      }

      v17 = qword_1EBBED280;

      v18 = *(a2 + 168);
      v19 = *(a2 + 176);
      v20 = *(a2 + 184);
      v21 = *(a2 + 192);
      v35.origin.x = v18;
      v35.origin.y = v19;
      v35.size.width = v20;
      v35.size.height = v21;
      v22 = CGRectGetMinX(v35) + 0.0;
      v36.origin.x = v18;
      v36.origin.y = v19;
      v36.size.width = v20;
      v36.size.height = v21;
      v23 = CGRectGetMinY(v36) + 30.0;
      v37.origin.x = v18;
      v37.origin.y = v19;
      v37.size.width = v20;
      v37.size.height = v21;
      Width = CGRectGetWidth(v37);
      v38.origin.x = v18;
      v38.origin.y = v19;
      v38.size.width = v20;
      v38.size.height = v21;
      Height = CGRectGetHeight(v38);
      *(a2 + 168) = v22;
      *(a2 + 176) = v23;
      *(a2 + 184) = Width;
      *(a2 + 192) = Height + -30.0;
      *(a2 + 200) = 0;
    }
  }

  v26 = *(v5 + 16);
  if (v26)
  {
    v27 = v5 + 32;
    do
    {
      sub_1B9F0A534(v27, &v30);
      v28 = v32;
      v29 = v33;
      __swift_project_boxed_opaque_existential_1(&v30, v32);
      (*(v29 + 16))(a1, a2, v28, v29);
      __swift_destroy_boxed_opaque_existential_1(&v30);
      v27 += 40;
      --v26;
    }

    while (v26);
  }
}

double PDFSeparatedContent.minimumBoundingRectForContent(in:)(CGFloat *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  PDFBuilder.Document.bodyBox.getter();
  v6 = v5;
  PDFBuilder.Document.drawingContext.getter();
  if (v6 == v7 || v4 == 0)
  {
    PDFBuilder.Document.bodyBox.getter();
    v9 = 0.0;
    if (v10 != a1[22])
    {
      if (qword_1EBBE8468 != -1)
      {
        swift_once();
      }

      v11 = qword_1EBBED280;

      v9 = 30.0;
    }
  }

  else
  {
    if (qword_1EBBE8468 != -1)
    {
      swift_once();
    }

    v12 = [qword_1EBBED280 CGColor];
    v13 = a1[21];
    v14 = a1[22];
    v15 = a1[23];

    v32.size.height = 30.5;
    v32.origin.x = v13;
    v32.origin.y = v14;
    v32.size.width = v15;
    v9 = CGRectGetHeight(v32) + 0.0;
  }

  v16 = *(v3 + 16);
  if (v16)
  {
    v17 = v3 + 32;
    do
    {
      sub_1B9F0A534(v17, v29);
      v18 = v30;
      v19 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      v20 = (*(v19 + 32))(a1, v18, v19);
      v22 = v21;
      v24 = v23;
      v26 = v25;
      __swift_destroy_boxed_opaque_existential_1(v29);
      v33.origin.x = v20;
      v33.origin.y = v22;
      v33.size.width = v24;
      v33.size.height = v26;
      v9 = v9 + CGRectGetHeight(v33);
      v17 += 40;
      --v16;
    }

    while (v16);
  }

  v27 = a1[21];
  v34.size.width = a1[23];
  v34.size.height = a1[24];
  v34.origin.x = v27;
  v34.origin.y = a1[22];
  CGRectGetWidth(v34);
  return v27;
}

BOOL PDFSeparatedContent.isFirstItem(in:)()
{
  PDFBuilder.Document.bodyBox.getter();
  v1 = v0;
  PDFBuilder.Document.drawingContext.getter();
  return v1 == v2;
}

double PDFSeparatedContent.boundingRectForContent(in:)(CGFloat *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  PDFBuilder.Document.bodyBox.getter();
  v6 = v5;
  PDFBuilder.Document.drawingContext.getter();
  if (v6 == v7 || v4 == 0)
  {
    PDFBuilder.Document.bodyBox.getter();
    v9 = 0.0;
    if (v10 != a1[22])
    {
      if (qword_1EBBE8468 != -1)
      {
        swift_once();
      }

      v11 = qword_1EBBED280;

      v9 = 30.0;
    }
  }

  else
  {
    if (qword_1EBBE8468 != -1)
    {
      swift_once();
    }

    v12 = [qword_1EBBED280 CGColor];
    v13 = a1[21];
    v14 = a1[22];
    v15 = a1[23];

    v32.size.height = 30.5;
    v32.origin.x = v13;
    v32.origin.y = v14;
    v32.size.width = v15;
    v9 = CGRectGetHeight(v32) + 0.0;
  }

  v16 = *(v3 + 16);
  if (v16)
  {
    v17 = v3 + 32;
    do
    {
      sub_1B9F0A534(v17, v29);
      v18 = v30;
      v19 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      v20 = (*(v19 + 24))(a1, v18, v19);
      v22 = v21;
      v24 = v23;
      v26 = v25;
      __swift_destroy_boxed_opaque_existential_1(v29);
      v33.origin.x = v20;
      v33.origin.y = v22;
      v33.size.width = v24;
      v33.size.height = v26;
      v9 = v9 + CGRectGetHeight(v33);
      v17 += 40;
      --v16;
    }

    while (v16);
  }

  v27 = a1[21];
  v34.size.width = a1[23];
  v34.size.height = a1[24];
  v34.origin.x = v27;
  v34.origin.y = a1[22];
  CGRectGetWidth(v34);
  return v27;
}

void *NonAnimatingDiffableCollectionViewAdaptor.__allocating_init(collectionView:backingDataSource:prefetchCellsWhenPerformingReloadData:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  ObjectType = swift_getObjectType();

  return sub_1BA344934(a1, a2, a5, v5, ObjectType, a3, a4);
}

void *NonAnimatingDiffableCollectionViewAdaptor.init(collectionView:backingDataSource:prefetchCellsWhenPerformingReloadData:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  ObjectType = swift_getObjectType();

  return sub_1BA3449F4(a1, a2, a5, v5, ObjectType, a3, a4);
}

double sub_1BA344204@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  (*(a3 + 24))(&v19, a1, a2, ObjectType, a3);
  if (v20)
  {
    sub_1B9F25598(&v19, a4);
  }

  else
  {
    sub_1B9F5DC2C(&v19, sub_1B9FCD694);
    sub_1BA4A3D88();

    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v19 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1B9F0B82C(a1, a2, &v19);
      _os_log_impl(&dword_1B9F07000, v14, v15, "The CellProvider block called us back with an item that no longer exists. Item Identifier: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1BA34442C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1BA344604() & 1;

  return sub_1B9F53D84(a1, v9, a3, a4, a5);
}

uint64_t sub_1BA344490()
{
  v1 = v0;
  sub_1B9F12538();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA344604();
  v7 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_loaded;
  swift_beginAccess();
  *(v1 + v7) = 1;
  v8 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_backingDataSource + 8);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 16);
  swift_unknownObjectRetain();
  v10(ObjectType, v8);
  swift_unknownObjectRelease();
  v11 = sub_1BA344604();
  sub_1B9F53D84(v6, v11 & 1, 1, 0, 0);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1BA344604()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1BA4A6758();
  v2 = [v0 valueForKey_];

  if (v2)
  {
    sub_1BA4A7BF8();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1B9F23224(v7);
  }

  return 0;
}

uint64_t NonAnimatingDiffableCollectionViewAdaptor.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__shouldLogApplyingSnapshotWithNumberOfSections;
  sub_1BA215A6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  sub_1B9F5DC2C(v0 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__debug_currentSnapshotState, type metadata accessor for DiffableCollectionViewAdaptor.DebugState);

  return v0;
}

uint64_t NonAnimatingDiffableCollectionViewAdaptor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__shouldLogApplyingSnapshotWithNumberOfSections;
  sub_1BA215A6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  sub_1B9F5DC2C(v0 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__debug_currentSnapshotState, type metadata accessor for DiffableCollectionViewAdaptor.DebugState);

  return swift_deallocClassInstance();
}

void *sub_1BA344934(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for NonAnimatingDiffableCollectionViewAdaptor();
  v13 = swift_allocObject();
  v14 = (v13 + OBJC_IVAR____TtC18HealthExperienceUI41NonAnimatingDiffableCollectionViewAdaptor_shouldAnimateDiffableCollectionViewAdaptorKey);
  *v14 = 0xD000000000000036;
  v14[1] = 0x80000001BA4E7DE0;
  return sub_1B9F3B090(a1, a2, a3, sub_1BA344204, 0, v13, a5, a6, a7);
}

void *sub_1BA3449F4(void *a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = (a4 + OBJC_IVAR____TtC18HealthExperienceUI41NonAnimatingDiffableCollectionViewAdaptor_shouldAnimateDiffableCollectionViewAdaptorKey);
  *v7 = 0xD000000000000036;
  v7[1] = 0x80000001BA4E7DE0;
  return sub_1B9F3B090(a1, a2, a3, sub_1BA344204, 0, a4, a5, a6, a7);
}

uint64_t type metadata accessor for NonAnimatingDiffableCollectionViewAdaptor()
{
  result = qword_1EDC60588;
  if (!qword_1EDC60588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id DefaultHeaderCollectionReusableView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DefaultHeaderCollectionReusableView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_1BA344BF0(uint64_t a1)
{
  v2 = [objc_opt_self() buttonWithType_];
  v3 = [v2 titleLabel];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() preferredFontForTextStyle_];
    [v4 setFont_];
  }

  v6 = [v2 titleLabel];
  if (v6)
  {
    v7 = v6;
    [v6 setAdjustsFontForContentSizeCategory_];
  }

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 addTarget:a1 action:sel_detailButtonTapped_ forControlEvents:64];
  return v2;
}

uint64_t sub_1BA344D18(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1B9F7A7A4();
  return sub_1B9F7B644(v6);
}

uint64_t sub_1BA344D88@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA344DE0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1B9F7A7A4();
  return sub_1B9F7B644(a1);
}

uint64_t (*sub_1BA344E4C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA344EB0;
}

uint64_t sub_1BA344EB0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1B9F7A7A4();
  }

  return result;
}