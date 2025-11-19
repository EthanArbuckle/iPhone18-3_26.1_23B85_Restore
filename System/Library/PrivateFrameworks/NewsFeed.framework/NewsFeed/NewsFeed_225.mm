uint64_t sub_1D6F953B8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(*(result + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler) + 56);
    v2 = result;
    ObjectType = swift_getObjectType();
    v4 = *(v1 + 56);
    swift_unknownObjectRetain();
    v4(ObjectType, v1);

    return swift_unknownObjectRelease();
  }

  return result;
}

id FormatViewController.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();

  v2 = v0;
  sub_1D725CAAC();

  v4.receiver = v2;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id FormatViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D726203C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void sub_1D6F95748(uint64_t a1, uint64_t a2)
{
  sub_1D6F9A7C8(&qword_1EC898FD0, a2, type metadata accessor for FormatViewController);

  JUMPOUT(0x1DA6F6FC0);
}

Swift::Void __swiftcall FormatViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1D7259D1C();
  v4 = *(v3 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v3, v5).n128_u64[0];
  v8 = &v54[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55.receiver = v0;
  v55.super_class = ObjectType;
  objc_msgSendSuper2(&v55, sel_viewDidLoad, v6);
  v9 = *&v0[OBJC_IVAR____TtC8NewsFeed20FormatViewController_blueprintViewController];
  [v1 addChildViewController_];
  v10 = [v1 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = v10;
  v12 = [v9 view];
  if (!v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12;
  [v11 addSubview_];

  [v9 didMoveToParentViewController_];
  v14 = [v9 view];
  if (!v14)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = v14;
  v16 = [v1 view];
  if (!v16)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = v16;
  [v16 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [v15 setFrame_];
  sub_1D725F10C();
  v9;
  v26 = sub_1D725F0FC();
  if (!v26)
  {
    goto LABEL_8;
  }

  v27 = v26;
  v28 = [v1 view];
  if (!v28)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v29 = v28;
  [v28 addSubview_];

  v30 = *&v1[OBJC_IVAR____TtC8NewsFeed20FormatViewController_blueprintHorizontalShimView];
  *&v1[OBJC_IVAR____TtC8NewsFeed20FormatViewController_blueprintHorizontalShimView] = v27;

LABEL_8:
  sub_1D725E51C();
  v31 = sub_1D725E05C();

  v32 = [objc_opt_self() clearColor];
  [v31 setBackgroundColor_];

  sub_1D725E51C();
  v33 = sub_1D725E05C();

  [v33 setShowsHorizontalScrollIndicator_];

  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v4 + 104))(v8, *MEMORY[0x1E69D7110], v3);
  v35 = objc_allocWithZone(sub_1D725A03C());

  v36 = sub_1D725A01C();
  if (qword_1EDF3C2D0 != -1)
  {
    swift_once();
  }

  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = swift_allocObject();
  v38[2] = v37;
  v38[3] = v36;
  v38[4] = sub_1D6F95DC0;
  v38[5] = v34;
  sub_1D6F9A7C8(&qword_1EDF0EB08, v39, type metadata accessor for FormatViewController);
  v40 = v36;

  sub_1D725965C();

  if (v54[15] != 1)
  {

    goto LABEL_15;
  }

  v41 = v40;
  v42 = [v1 view];
  if (!v42)
  {
    goto LABEL_21;
  }

  v43 = v42;
  [v42 bounds];
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;

  [v41 setFrame_];
  [v41 setAutoresizingMask_];

  v52 = [v1 view];
  if (v52)
  {
    v53 = v52;
    [v52 addSubview_];

LABEL_15:
    return;
  }

LABEL_22:
  __break(1u);
}

void sub_1D6F95D28()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC8NewsFeed20FormatViewController_blueprintViewController);

    sub_1D725E51C();
    v3 = sub_1D725E05C();

    [v3 reloadData];
  }
}

Swift::Void __swiftcall FormatViewController.viewWillLayoutSubviews()()
{
  v1 = v0;
  v26.receiver = v0;
  v26.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v26, sel_viewWillLayoutSubviews);
  v2 = [*&v0[OBJC_IVAR____TtC8NewsFeed20FormatViewController_blueprintViewController] view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  v4 = [v0 view];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v3 setFrame_];
  sub_1D6F9488C();
  v14 = *&v0[OBJC_IVAR____TtC8NewsFeed20FormatViewController_blueprintHorizontalShimView];
  if (!v14)
  {
    return;
  }

  v15 = v14;
  v16 = [v1 view];
  if (!v16)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v17 = v16;
  [v16 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [v15 setFrame_];
}

Swift::Void __swiftcall FormatViewController.viewDidLayoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_viewDidLayoutSubviews);
  sub_1D725E51C();
  v1 = sub_1D725E05C();

  [v1 layoutIfNeeded];

  sub_1D725AA0C();
}

Swift::Void __swiftcall FormatViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_1D6F9A774(0, &qword_1EDF3C370, MEMORY[0x1E6969C28]);
  *&v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6).n128_u64[0];
  v9 = &v13 - v8;
  v14.receiver = v2;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, sel_viewWillAppear_, a1, v7);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v10 = sub_1D7258DBC();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    sub_1D725F46C();
    swift_unknownObjectRelease();
  }

  sub_1D725E51C();
  v11 = sub_1D725E05C();

  v12 = sub_1D7258DBC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  sub_1D7262F4C();

  sub_1D6F99C70(v9, &qword_1EDF3C370, MEMORY[0x1E6969C28]);
  if (qword_1EDF16990 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D725D6BC();
}

Swift::Void __swiftcall FormatViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidAppear_, a1);
  sub_1D725CAEC();
}

Swift::Void __swiftcall FormatViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_viewWillDisappear_, a1);
  sub_1D725D6CC();
  sub_1D725CABC();
}

Swift::Void __swiftcall FormatViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_traitCollectionDidChange_, isa);

  sub_1D725E51C();
  v3 = sub_1D725E05C();

  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor_];

  sub_1D725E51C();
  v5 = sub_1D725E05C();

  [v5 setShowsHorizontalScrollIndicator_];
}

double FormatViewController.pluginLayoutTransitionManager.getter@<D0>(uint64_t a1@<X8>)
{
  sub_1D725E57C();
  v2 = v8;
  if (v8)
  {
    v3 = v9;
    v4 = __swift_project_boxed_opaque_existential_1(v7, v8);
    *(a1 + 24) = v2;
    *(a1 + 32) = *(v3 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v4, v2);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_1D6F99C70(v7, &qword_1EC898F98, sub_1D6F99CCC);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t FormatViewController.pluginVisibleItemCount.getter()
{
  sub_1D6F99E2C(0, &qword_1EDF17238, MEMORY[0x1E69D7840]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = v9 - v5;
  v9[1] = *(v0 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_blueprintLayoutProvider);
  sub_1D6F99E2C(0, &qword_1EDF439B0, MEMORY[0x1E69D7EA0]);
  sub_1D69113D8();
  sub_1D725EBEC();
  v7 = sub_1D725D31C();
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t sub_1D6F96978(uint64_t (*a1)(uint64_t))
{
  sub_1D6F99D30(0, &qword_1EDF16960, MEMORY[0x1E69D87F8]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = v10 - v6;
  sub_1D725E53C();
  v10[0] = v10[1];
  sub_1D6087E88(0);
  sub_1D6F9A7C8(&unk_1EDF171E0, 255, sub_1D6087E88);
  sub_1D725E03C();

  v8 = a1(v3);
  (*(v4 + 8))(v7, v3);
  return v8;
}

uint64_t FormatViewController.initialize(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;
  v8 = *(v5 + 56);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 32);

  v10(sub_1D6F99EB0, v7, ObjectType, v8);
}

void sub_1D6F96BF0(uint64_t a1, void (*a2)(double, double), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = a2;
    v7[4] = a3;
    v8 = v6;

    sub_1D725BFFC();

    sub_1D725AA0C();
  }

  else
  {
    a2(0.0, 0.0);
  }
}

uint64_t FormatViewController.relayout(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;
  v8 = *(v5 + 56);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 48);

  v10(sub_1D6F99EBC, v7, ObjectType, v8);
}

uint64_t sub_1D6F96DCC(uint64_t a1, uint64_t (*a2)(double, double), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a2(0.0, 0.0);
  }

  v6 = Strong;
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a2;
  v7[4] = a3;
  v8 = v6;

  sub_1D725BFFC();
}

uint64_t sub_1D6F96E94(uint64_t a1, uint64_t (*a2)(double, double))
{
  v4 = sub_1D725E23C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725E55C();
  swift_getObjectType();
  sub_1D725F1DC();
  swift_unknownObjectRelease();
  sub_1D725E22C();
  v10 = v9;
  (*(v5 + 8))(v8, v4);
  sub_1D725E51C();
  v11 = sub_1D725E05C();

  v12 = [v11 collectionViewLayout];

  [v12 collectionViewContentSize];
  v14 = v13;

  result = a2(v10, v14);
  v16 = a1 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_lastComputedSize;
  *v16 = v10;
  *(v16 + 8) = v14;
  *(v16 + 16) = 0;
  return result;
}

uint64_t sub_1D6F97088(uint64_t a1, uint64_t a2)
{
  v4 = *v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluggableDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1D6F970F8(uint64_t *a1))(uint64_t, char)
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
  v6 = OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluggableDelegate;
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = v5 + v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v9;
  return sub_1D6F9A810;
}

uint64_t sub_1D6F9719C()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC8NewsFeed20FormatViewController_isBeingUsedAsPlugin;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_1D6F971E4(char a1)
{
  v3 = sub_1D725EB7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = OBJC_IVAR____TtC8NewsFeed20FormatViewController_isBeingUsedAsPlugin;
  swift_beginAccess();
  *(v8 + v9) = a1;
  v10 = MEMORY[0x1E69D81C8];
  if ((a1 & 1) == 0)
  {
    v10 = MEMORY[0x1E69D81C0];
  }

  (*(v4 + 104))(v7, *v10, v3);
  return sub_1D725E54C();
}

void (*sub_1D6F97300(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = sub_1D725EB7C();
  v5[3] = v6;
  v7 = *(v6 - 8);
  v5[4] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[5] = v8;
  v9 = OBJC_IVAR____TtC8NewsFeed20FormatViewController_isBeingUsedAsPlugin;
  v5[6] = *v1;
  v5[7] = v9;
  swift_beginAccess();
  return sub_1D6F973F4;
}

void sub_1D6F973F4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2)
  {
    v4 = v3[5];
  }

  else
  {
    v4 = v3[5];
    if (*(v3[6] + v3[7]))
    {
      v5 = MEMORY[0x1E69D81C8];
    }

    else
    {
      v5 = MEMORY[0x1E69D81C0];
    }

    (*(v3[4] + 104))(v3[5], *v5, v3[3]);
    sub_1D725E54C();
  }

  free(v4);

  free(v3);
}

uint64_t sub_1D6F974BC()
{
  sub_1D6F99E2C(0, &qword_1EDF17238, MEMORY[0x1E69D7840]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = v9 - v5;
  v9[1] = *(*v0 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_blueprintLayoutProvider);
  sub_1D6F99E2C(0, &qword_1EDF439B0, MEMORY[0x1E69D7EA0]);
  sub_1D69113D8();
  sub_1D725EBEC();
  v7 = sub_1D725D31C();
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t sub_1D6F97618(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_1D6F99D30(0, &qword_1EDF16960, MEMORY[0x1E69D87F8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v12 - v8;
  sub_1D725E53C();
  v12[0] = v12[1];
  sub_1D6087E88(0);
  sub_1D6F9A7C8(&unk_1EDF171E0, 255, sub_1D6087E88);
  sub_1D725E03C();

  v10 = a3(v5);
  (*(v6 + 8))(v9, v5);
  return v10;
}

double sub_1D6F97798@<D0>(uint64_t a1@<X8>)
{
  sub_1D725E57C();
  v2 = v8;
  if (v8)
  {
    v3 = v9;
    v4 = __swift_project_boxed_opaque_existential_1(v7, v8);
    *(a1 + 24) = v2;
    *(a1 + 32) = *(v3 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v4, v2);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_1D6F99C70(v7, &qword_1EC898F98, sub_1D6F99CCC);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1D6F97884(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;
  v8 = *(v5 + 56);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 32);

  v10(sub_1D6F9A818, v7, ObjectType, v8);
}

uint64_t sub_1D6F97984(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;
  v8 = *(v5 + 56);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 48);

  v10(sub_1D6F9A814, v7, ObjectType, v8);
}

uint64_t sub_1D6F97A84(uint64_t result, double a2, double a3)
{
  v3 = (result + OBJC_IVAR____TtC8NewsFeed20FormatViewController_lastComputedSize);
  if ((*(result + OBJC_IVAR____TtC8NewsFeed20FormatViewController_lastComputedSize + 16) & 1) != 0 || *v3 != a2 || v3[1] != a3)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      swift_getObjectType();
      sub_1D6F9A7C8(&qword_1EDF0EAF8, v4, type metadata accessor for FormatViewController);
      sub_1D725EFBC();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1D6F97B84()
{
  sub_1D725E51C();
  v0 = sub_1D725E05C();

  [v0 reloadData];
}

Swift::Void __swiftcall FormatViewController.blueprintReadableContentGuideDidChange(_:)(UILayoutGuide a1)
{
  v2 = [v1 navigationController];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 navigationBar];

    sub_1D726347C();
  }
}

uint64_t FormatViewController.blueprint(_:didSelect:at:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for FormatBlueprintItemSelectionContext.Action(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FormatBlueprintItemSelectionContext(0);
  *&v13 = MEMORY[0x1EEE9AC00](v11, v12).n128_u64[0];
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [v4 tabBarSplitViewFocusable];
  if (v16)
  {
    [v16 toggleSplitViewFocusTo_];
    swift_unknownObjectRelease();
  }

  v17 = *&v4[OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler];
  v18 = sub_1D725E9FC();
  (*(*(v18 - 8) + 16))(v10, a4, v18);
  sub_1D6F9A330();
  (*(*(v19 - 8) + 56))(v10, 0, 2, v19);
  v20 = &v4[OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluginIdentifier];
  result = swift_beginAccess();
  v22 = *(v20 + 1);
  if (v22)
  {
    v23 = *v20;
    v24 = *&v4[OBJC_IVAR____TtC8NewsFeed20FormatViewController_tracker];
    sub_1D6F9A378(v10, v15);
    v25 = &v15[*(v11 + 20)];
    *v25 = v23;
    *(v25 + 1) = v22;
    *&v15[*(v11 + 24)] = v24;
    v26 = *(v17 + 112);
    ObjectType = swift_getObjectType();
    v28 = *(v26 + 40);

    v28(a2, v15, ObjectType, v26);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v29 = *(v17 + 40);
      v30 = swift_getObjectType();
      (*(v29 + 8))(a2, v15, v30, v29);
      swift_unknownObjectRelease();
    }

    return sub_1D6F9A3DC(v15, type metadata accessor for FormatBlueprintItemSelectionContext);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FormatViewController.blueprint(_:previewViewControllerFor:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler);
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluginIdentifier);
  result = swift_beginAccess();
  v7 = v5[1];
  if (v7)
  {
    v8 = *v5;
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return 0;
    }

    v9 = *(v4 + 40);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 16);

    v12 = v11(a2, v8, v7, ObjectType, v9);
    swift_unknownObjectRelease();

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FormatViewController.blueprint(_:didStartImpression:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler);
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluginIdentifier);
  result = swift_beginAccess();
  v7 = v5[1];
  if (v7)
  {
    v8 = *v5;
    v9 = *(v4 + 112);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 8);

    v11(a2, v8, v7, ObjectType, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FormatViewController.blueprint(_:createdImpression:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler);
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluginIdentifier);
  result = swift_beginAccess();
  v7 = v5[1];
  if (v7)
  {
    v8 = *v5;
    v9 = *(v4 + 112);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 16);

    v11(a2, v8, v7, ObjectType, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FormatViewController.blueprint(_:cancelledImpression:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler);
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluginIdentifier);
  result = swift_beginAccess();
  v7 = v5[1];
  if (v7)
  {
    v8 = *v5;
    v9 = *(v4 + 112);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 32);

    v11(a2, v8, v7, ObjectType, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FormatViewController.blueprint(_:createdImpressionSection:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler);
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluginIdentifier);
  result = swift_beginAccess();
  v7 = v5[1];
  if (v7)
  {
    v8 = *v5;
    v9 = *(v4 + 112);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 24);

    v11(a2, v8, v7, ObjectType, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void FormatViewController.blueprint(_:layoutOptionsDidChange:triggeredBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D725F26C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a3, v5, v8);
  v11 = (*(v6 + 88))(v10, v5);
  if (v11 == *MEMORY[0x1E69D8630])
  {
    (*(v6 + 8))(v10, v5);
LABEL_3:
    v12 = OBJC_IVAR____TtC8NewsFeed20FormatViewController_isBeingUsedAsPlugin;
    swift_beginAccess();
    if ((*(v3 + v12) & 1) == 0)
    {
      v13 = *(*(v3 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler) + 56);
      ObjectType = swift_getObjectType();
      (*(v13 + 48))(nullsub_1, 0, ObjectType, v13);
    }

    return;
  }

  if (v11 == *MEMORY[0x1E69D8608])
  {
    v15 = OBJC_IVAR____TtC8NewsFeed20FormatViewController_isBeingUsedAsPlugin;
    swift_beginAccess();
    if ((*(v3 + v15) & 1) == 0)
    {
      v16 = *(*(v3 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler) + 56);
      v17 = swift_getObjectType();
      (*(v16 + 32))(nullsub_1, 0, v17, v16);
    }
  }

  else
  {
    if (v11 == *MEMORY[0x1E69D8628])
    {
      goto LABEL_3;
    }

    if (v11 == *MEMORY[0x1E69D8658])
    {
      return;
    }

    if (v11 == *MEMORY[0x1E69D8610])
    {
      goto LABEL_3;
    }

    if (v11 != *MEMORY[0x1E69D8638])
    {
      if (v11 == *MEMORY[0x1E69D8650])
      {
        sub_1D725E51C();
        v18 = sub_1D725E05C();

        [v18 reloadData];
      }

      else
      {
        (*(v6 + 8))(v10, v5);
      }
    }
  }
}

void sub_1D6F98624()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 navigationBar];

    sub_1D726347C();
  }
}

uint64_t sub_1D6F986C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47E20](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_1D6F98734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DA0](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_1D6F9879C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47D90](a1, a2, ObjectType, a4);
}

uint64_t sub_1D6F987F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DD0](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_1D6F98860(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler);
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluginIdentifier);
  result = swift_beginAccess();
  v7 = v5[1];
  if (v7)
  {
    v8 = *v5;
    v9 = *(v4 + 112);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 16);

    v11(a2, v8, v7, ObjectType, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6F98928(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler);
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluginIdentifier);
  result = swift_beginAccess();
  v7 = v5[1];
  if (v7)
  {
    v8 = *v5;
    v9 = *(v4 + 112);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 24);

    v11(a2, v8, v7, ObjectType, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6F989F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DE8](a1, a2, ObjectType, a4);
}

uint64_t sub_1D6F98A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DA8](a1, a2, ObjectType, a4);
}

uint64_t sub_1D6F98AA0(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler);
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluginIdentifier);
  result = swift_beginAccess();
  v7 = v5[1];
  if (v7)
  {
    v8 = *v5;
    v9 = *(v4 + 112);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 8);

    v11(a2, v8, v7, ObjectType, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6F98B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DF0](a1, a2, ObjectType, a4);
}

uint64_t sub_1D6F98BC0(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler);
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluginIdentifier);
  result = swift_beginAccess();
  v7 = v5[1];
  if (v7)
  {
    v8 = *v5;
    v9 = *(v4 + 112);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 32);

    v11(a2, v8, v7, ObjectType, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6F98C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47E00](a1, a2, ObjectType, a4);
}

uint64_t sub_1D6F98CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47E10](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_1D6F98D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DB8](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_1D6F98DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47D78](a1, ObjectType, a3);
}

uint64_t sub_1D6F98E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47D68](a1, ObjectType, a3);
}

uint64_t sub_1D6F98E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47D88](a1, ObjectType, a3);
}

uint64_t sub_1D6F98EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47D60](a1, ObjectType, a3);
}

uint64_t sub_1D6F98EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47D58](a1, ObjectType, a3);
}

uint64_t sub_1D6F98F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DF8](a1, a2, ObjectType, a4);
}

uint64_t sub_1D6F98F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47E08](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_1D6F99004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47D80](a1, a2, ObjectType, a4);
}

uint64_t sub_1D6F9905C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47D70](a1, a2, ObjectType, a4);
}

uint64_t sub_1D6F990B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47DD8](a1, a2, ObjectType, a4);
}

uint64_t sub_1D6F9928C(void (*a1)(void))
{
  v3 = OBJC_IVAR____TtC8NewsFeed20FormatViewController_isBeingUsedAsPlugin;
  result = swift_beginAccess();
  if (*(v1 + v3) == 1)
  {
    sub_1D725E51C();
    a1();
  }

  return result;
}

uint64_t sub_1D6F993BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = *v3;
  v6 = OBJC_IVAR____TtC8NewsFeed20FormatViewController_isBeingUsedAsPlugin;
  result = swift_beginAccess();
  if (*(v5 + v6) == 1)
  {
    sub_1D725E51C();
    a3();
  }

  return result;
}

uint64_t FormatViewController.shouldMonitorScroll.getter()
{
  sub_1D725E51C();
  v0 = sub_1D725E05C();

  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = 0;
  }

  else
  {
    swift_getObjectType();
    v2 = sub_1D725F01C();
  }

  return v2 & 1;
}

void FormatViewController.blueprintViewportMonitor(_:viewportScrollDataDidChange:)()
{
  sub_1D725E51C();
  v1 = sub_1D725E05C();

  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v0 = v1 == 0;
  }

  else
  {
    v0 = 1;
  }

  if (!v0)
  {
    swift_getObjectType();
    sub_1D725F02C();
  }
}

uint64_t sub_1D6F9959C()
{
  sub_1D725E51C();
  v0 = sub_1D725E05C();

  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = 0;
  }

  else
  {
    swift_getObjectType();
    v2 = sub_1D725F01C();
  }

  return v2 & 1;
}

void sub_1D6F99634()
{
  sub_1D725E51C();
  v1 = sub_1D725E05C();

  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v0 = v1 == 0;
  }

  else
  {
    v0 = 1;
  }

  if (!v0)
  {
    swift_getObjectType();
    sub_1D725F02C();
  }
}

void sub_1D6F996F4(uint64_t *a1)
{
  v2 = type metadata accessor for FormatBlueprintItemSelectionContext.Action(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v45 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for FormatBlueprintItemSelectionContext(0);
  MEMORY[0x1EEE9AC00](v44, v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6F9A774(0, &qword_1EC881E00, sub_1D5E2C2C8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v42 - v10;
  sub_1D5E2C2C8();
  v47 = *(v12 - 8);
  v48 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6F99D30(0, &qword_1EDF16960, MEMORY[0x1E69D87F8]);
  v17 = v16;
  v46 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v42 - v19;
  v21 = *a1;
  v22 = a1[2];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    if (v21 && v22)
    {
      v43 = v7;
      sub_1D725E53C();
      v50 = v49;
      sub_1D6087E88(0);
      sub_1D6F9A7C8(&unk_1EDF171E0, 255, sub_1D6087E88);
      sub_1D725E03C();

      sub_1D725FA3C();
      v26 = v47;
      v25 = v48;
      if ((*(v47 + 48))(v11, 1, v48) == 1)
      {
        (*(v46 + 8))(v20, v17);

        sub_1D6F99C70(v11, &qword_1EC881E00, sub_1D5E2C2C8);
        return;
      }

      (*(v26 + 32))(v15, v11, v25);
      v27 = *&v24[OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler];
      v28 = v45;
      sub_1D725E9EC();
      sub_1D6F9A330();
      (*(*(v29 - 8) + 56))(v28, 0, 2, v29);
      v30 = &v24[OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluginIdentifier];
      swift_beginAccess();
      v31 = *(v30 + 1);
      if (!v31)
      {
        __break(1u);
        return;
      }

      v32 = *v30;
      v33 = *&v24[OBJC_IVAR____TtC8NewsFeed20FormatViewController_tracker];
      v34 = v43;
      sub_1D6F9A378(v28, v43);
      v35 = v44;
      v36 = (v34 + *(v44 + 20));
      *v36 = v32;
      v36[1] = v31;
      *(v34 + *(v35 + 24)) = v33;
      v42 = v31;
      v37 = v27;
      v38 = *(v27 + 112);
      ObjectType = swift_getObjectType();
      v44 = *(v38 + 40);
      v45 = ObjectType;

      (v44)(v15, v34, v45, v38);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v40 = *(v37 + 40);
        v41 = swift_getObjectType();
        (*(v40 + 8))(v15, v34, v41, v40);
        swift_unknownObjectRelease();
      }

      sub_1D6F9A3DC(v34, type metadata accessor for FormatBlueprintItemSelectionContext);
      (*(v47 + 8))(v15, v48);
      (*(v46 + 8))(v20, v17);
    }
  }
}

uint64_t sub_1D6F99C70(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D6F9A774(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D6F99CCC()
{
  result = qword_1EC898FA0;
  if (!qword_1EC898FA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC898FA0);
  }

  return result;
}

void sub_1D6F99D30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for FormatSectionDescriptor();
    v8[1] = type metadata accessor for FormatModel();
    v8[2] = sub_1D6F9A7C8(&qword_1EDF0D410, 255, type metadata accessor for FormatSectionDescriptor);
    v8[3] = sub_1D6F9A7C8(&qword_1EDF128E0, 255, type metadata accessor for FormatModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6F99E2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FormatLayoutSectionDescriptor;
    v8[1] = &type metadata for FormatLayoutModel;
    v8[2] = sub_1D5B4E1A4();
    v8[3] = sub_1D5B53E88();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D6F99EC8(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v4 = type metadata accessor for FormatBlueprintItemSelectionContext.Action(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v55 - v10;
  v12 = type metadata accessor for FormatBlueprintItemSelectionContext(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v55 - v18;
  v20 = type metadata accessor for FeedAction(0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v55 - v26;
  sub_1D6E4FAE0(a1, &v55 - v26);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_1D6F9A3DC(v27, type metadata accessor for FeedAction);
  }

  sub_1D6E4FAE0(v27, v23);
  if (*v23)
  {
    if (*v23 == 1)
    {
      return sub_1D6F9A3DC(v27, type metadata accessor for FeedAction);
    }

    v28 = *(v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler);
    sub_1D6F9A330();
    (*(*(v29 - 8) + 56))(v7, 2, 2, v29);
    v30 = (v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluginIdentifier);
    result = swift_beginAccess();
    v32 = v30[1];
    if (v32)
    {
      v33 = *v30;
      v34 = *(v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_tracker);
      sub_1D6F9A378(v7, v15);
      v35 = &v15[*(v12 + 20)];
      *v35 = v33;
      *(v35 + 1) = v32;
      *&v15[*(v12 + 24)] = v34;
      v36 = *(v28 + 112);
      ObjectType = swift_getObjectType();
      v38 = *(v36 + 40);

      v39 = v55;
      v38(v55, v15, ObjectType, v36);
      if (!swift_unknownObjectWeakLoadStrong())
      {
LABEL_12:
        sub_1D6F9A3DC(v15, type metadata accessor for FormatBlueprintItemSelectionContext);
        return sub_1D6F9A3DC(v27, type metadata accessor for FeedAction);
      }

      v40 = *(v28 + 40);
      v41 = swift_getObjectType();
      (*(v40 + 8))(v39, v15, v41, v40);
LABEL_10:
      swift_unknownObjectRelease();
      goto LABEL_12;
    }
  }

  else
  {
    v42 = *(v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler);
    sub_1D6F9A330();
    (*(*(v43 - 8) + 56))(v11, 1, 2, v43);
    v44 = (v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluginIdentifier);
    result = swift_beginAccess();
    v45 = v44[1];
    if (v45)
    {
      v46 = *v44;
      v47 = *(v2 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_tracker);
      sub_1D6F9A378(v11, v19);
      v48 = &v19[*(v12 + 20)];
      *v48 = v46;
      *(v48 + 1) = v45;
      *&v19[*(v12 + 24)] = v47;
      v49 = *(v42 + 112);
      v50 = swift_getObjectType();
      v51 = *(v49 + 40);

      v52 = v55;
      v51(v55, v19, v50, v49);
      if (!swift_unknownObjectWeakLoadStrong())
      {
        v15 = v19;
        goto LABEL_12;
      }

      v53 = *(v42 + 40);
      v54 = swift_getObjectType();
      (*(v53 + 8))(v52, v19, v54, v53);
      v15 = v19;
      goto LABEL_10;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D6F9A330()
{
  if (!qword_1EC898FB0)
  {
    v0 = sub_1D725E9FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC898FB0);
    }
  }
}

uint64_t sub_1D6F9A378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatBlueprintItemSelectionContext.Action(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6F9A3DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D6F9A548()
{
  result = qword_1EDF0EB10;
  if (!qword_1EDF0EB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EB10);
  }

  return result;
}

void sub_1D6F9A59C()
{
  *(v0 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_isBeingUsedAsPlugin) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluggableDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluginIdentifier);
  *v1 = 0;
  v1[1] = 0;
  v2 = v0 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_lastComputedSize;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_selectionProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventManager;
  sub_1D69124E0();
  swift_allocObject();
  *(v0 + v3) = sub_1D725AA2C();
  *(v0 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_blueprintHorizontalShimView) = 0;
  sub_1D726402C();
  __break(1u);
}

uint64_t sub_1D6F9A69C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_eventHandler);
  v4 = (v1 + OBJC_IVAR____TtC8NewsFeed20FormatViewController_pluginIdentifier);
  result = swift_beginAccess();
  v6 = v4[1];
  if (v6)
  {
    v7 = *v4;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8 = *(v3 + 40);
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 24);

      v10(a1, v7, v6, ObjectType, v8);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D6F9A774(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D6F9A7C8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t FormatDismissAction.dismissingIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 48);
  *(a1 + 48) = v8;
  return sub_1D5E1DA6C(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t static FormatDismissAction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a1 + 48);
  v14 = *(a2 + 48);
  v23 = *a1;
  v24 = v2;
  v25 = v3;
  v26 = v4;
  v27 = v5;
  v28 = v6;
  v29 = v13;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = v14;
  sub_1D5E1DA6C(v23, v2, v3, v4, v5, v6, v13);
  sub_1D5E1DA6C(v7, v8, v9, v10, v11, v12, v14);
  LOBYTE(v7) = _s8NewsFeed12FormatStringO2eeoiySbAC_ACtFZ_0(&v23, &v16);
  sub_1D5E1DE98(v16, v17, v18, v19, v20, v21, v22);
  sub_1D5E1DE98(v23, v24, v25, v26, v27, v28, v29);
  return v7 & 1;
}

uint64_t sub_1D6F9A924(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a1 + 48);
  v14 = *(a2 + 48);
  v23 = *a1;
  v24 = v2;
  v25 = v3;
  v26 = v4;
  v27 = v5;
  v28 = v6;
  v29 = v13;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = v14;
  sub_1D5E1DA6C(v23, v2, v3, v4, v5, v6, v13);
  sub_1D5E1DA6C(v7, v8, v9, v10, v11, v12, v14);
  LOBYTE(v7) = _s8NewsFeed12FormatStringO2eeoiySbAC_ACtFZ_0(&v23, &v16);
  sub_1D5E1DE98(v16, v17, v18, v19, v20, v21, v22);
  sub_1D5E1DE98(v23, v24, v25, v26, v27, v28, v29);
  return v7 & 1;
}

unint64_t sub_1D6F9AA38(uint64_t a1)
{
  result = sub_1D6F9AA60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6F9AA60()
{
  result = qword_1EC898FD8;
  if (!qword_1EC898FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898FD8);
  }

  return result;
}

unint64_t sub_1D6F9AAB4(void *a1)
{
  a1[1] = sub_1D667CF98();
  a1[2] = sub_1D6700ABC();
  result = sub_1D6F9AAEC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6F9AAEC()
{
  result = qword_1EC898FE0;
  if (!qword_1EC898FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898FE0);
  }

  return result;
}

uint64_t FormatDismissActionData.dismissingIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SharingChannelActivity.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6F9AC1C()
{
  result = qword_1EC898FE8[0];
  if (!qword_1EC898FE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC898FE8);
  }

  return result;
}

uint64_t static CoverIssueViewLayout.makeLayoutForChannelFeed(context:factories:options:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v11 = a1;
  v12 = a2;
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D7378], v6);
  sub_1D6076C70(0, &qword_1EDF17FC8, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  return sub_1D725A4CC();
}

uint64_t sub_1D6F9ADAC(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1D69C62E0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v39 - v10;
  v12 = a2[40];
  v13 = a2[41];
  __swift_project_boxed_opaque_existential_1(a2 + 37, v12);
  v14 = (*(v13 + 16))(v12, v13);
  if (qword_1EDF05CE0 != -1)
  {
    swift_once();
  }

  [qword_1EDFFC540 size];
  v17 = v14 * (v15 / v16);
  v18 = a2[40];
  v19 = a2[41];
  __swift_project_boxed_opaque_existential_1(a2 + 37, v18);
  v20 = (*(v19 + 48))(v18, v19);
  v21 = a2[40];
  v22 = a2[41];
  __swift_project_boxed_opaque_existential_1(a2 + 37, v21);
  v23 = (*(v22 + 56))(v21, v22);
  v24 = v20 + v23 + v23;
  v41 = a1;
  v25 = *MEMORY[0x1E69D74A8];
  v40 = a1;
  v26 = *(v8 + 104);
  v27 = v26(v11, v25, v7);
  v39[1] = v39;
  MEMORY[0x1EEE9AC00](v27, v28);
  v39[-6] = a3;
  v39[-5] = a2;
  v35 = 0x4030000000000000;
  v36 = v17;
  v38 = v24;
  v29 = MEMORY[0x1E69D7150];
  sub_1D6076C70(0, &qword_1EDF18070, MEMORY[0x1E69D7150]);
  v31 = v30;
  v32 = sub_1D6076CF4(&qword_1EDF18078, &qword_1EDF18070, v29);
  v37 = v32;
  sub_1D7259A2C();
  v33 = *(v8 + 8);
  v33(v11, v7);
  v41 = v40;
  v26(v11, *MEMORY[0x1E69D7460], v7);
  v37 = v31;
  v38 = *&v32;
  v35 = sub_1D6F9D510;
  v36 = 0.0;
  sub_1D7259B2C();
  return (v33)(v11, v7);
}

uint64_t sub_1D6F9B15C(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v57 = a2;
  v70 = a1;
  sub_1D69C61CC();
  v62 = v7;
  v61 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v60 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D69C62E0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v56 - v18);
  *&v76 = a1;
  v20 = swift_allocObject();
  *(v20 + 16) = 0x4024000000000000;
  *v19 = v20;
  v21 = *(v12 + 104);
  v68 = *MEMORY[0x1E69D7488];
  v21(v19);
  v22 = MEMORY[0x1E69D6F38];
  sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  v24 = v23;
  v25 = sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v22);
  v66 = v24;
  v64 = v25;
  sub_1D7259A9C();
  v26 = *(v12 + 8);
  v63 = v12 + 8;
  v65 = v26;
  v26(v19, v11);
  v83 = v70;
  KeyPath = swift_getKeyPath();
  v27 = *MEMORY[0x1E69D74A8];
  v69 = v12 + 104;
  v67 = v21;
  (v21)(v15, v27, v11);
  v82 = *(v57 + 24);
  v28 = a3[1];
  if (a3[11] == 1 || (v29 = a3[14]) == 0)
  {

    FCIssue.issueCoverModel.getter(&v79);
  }

  else
  {
    v30 = a3[15];
    *&v79 = a3[1];
    *(&v79 + 1) = v30;
    *&v80 = v29;
    v81[24] = 0;

    v31 = v29;
    v32 = v28;
  }

  v76 = v79;
  v77 = v80;
  v78[0] = *v81;
  *(v78 + 9) = *&v81[9];
  v33 = a3;
  v59 = a3;
  v34 = a3[40];
  v35 = a3[41];
  __swift_project_boxed_opaque_existential_1(v33 + 37, v34);
  v36 = (*(v35 + 64))(v34, v35);
  v71 = 0;
  v72 = 0x4010000000000000;
  v73 = v36;
  v74 = -1;
  v75 = 0x3FE0000000000000;
  sub_1D69C62E0(0, &qword_1EDF180F8, sub_1D5EA52B8, &type metadata for IssueCoverViewLayoutAttributes, MEMORY[0x1E69D6F58]);
  type metadata accessor for IssueCoverViewLayoutAttributesFactory();
  sub_1D5EF9538();
  sub_1D69C6348();
  sub_1D69C6184(qword_1EDF06B60, type metadata accessor for IssueCoverViewLayoutAttributesFactory);
  v37 = v60;
  sub_1D7259D2C();
  sub_1D7259A5C();

  (*(v61 + 8))(v37, v62);
  v38 = v65;
  v65(v15, v11);
  v39 = v70;
  *&v76 = v70;
  v40 = swift_allocObject();
  *(v40 + 16) = a4;
  *v19 = v40;
  (v67)(v19, v68, v11);
  sub_1D7259A9C();
  v38(v19, v11);
  *&v76 = v39;
  sub_1D5EF9444();
  v42 = v41;
  v43 = swift_allocBox();
  v45 = v44;
  v46 = *(v42 + 48);
  v47 = *MEMORY[0x1E69D71E8];
  v48 = sub_1D725A09C();
  v49 = *(*(v48 - 8) + 104);
  v49(v45, v47, v48);
  v49(v45 + v46, *MEMORY[0x1E69D7208], v48);
  *v19 = v43;
  v50 = v67;
  v51 = (v67)(v19, *MEMORY[0x1E69D7468], v11);
  MEMORY[0x1EEE9AC00](v51, v52);
  sub_1D72599EC();
  v53 = v65;
  v65(v19, v11);
  *&v76 = v70;
  v54 = swift_allocObject();
  *(v54 + 16) = 0x4024000000000000;
  *v19 = v54;
  (v50)(v19, v68, v11);
  sub_1D7259A9C();
  return v53(v19, v11);
}

uint64_t sub_1D6F9B974(char *a1, uint64_t a2, double a3, double a4, double a5)
{
  sub_1D69C62E0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = (&v95 - v13);
  v15 = *(a2 + 56) & 9;
  v104 = v11;
  v105 = a2;
  v101 = v14;
  v102 = a1;
  if (v15 == 1)
  {
    v106 = a1;
    sub_1D5EF9444();
    v17 = v16;
    v100 = swift_allocBox();
    KeyPath = v10;
    v19 = v18;
    v20 = *(v17 + 48);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    *v19 = v21;
    v22 = *MEMORY[0x1E69D71F0];
    v23 = sub_1D725A09C();
    v24 = *(*(v23 - 8) + 104);
    v24(v19, v22, v23);
    v25 = swift_allocObject();
    v26 = *(a2 + 320);
    v27 = *(v105 + 328);
    __swift_project_boxed_opaque_existential_1((v105 + 296), v26);
    *(v25 + 16) = (*(v27 + 8))(v26, v27);
    *(v19 + v20) = v25;
    v28 = v19 + v20;
    v14 = v101;
    v24(v28, v22, v23);
    v29 = KeyPath;
    v11 = v104;
    *v14 = v100;
    v30 = *(v11 + 104);
    v31 = v30(v14, *MEMORY[0x1E69D7468], v29);
    MEMORY[0x1EEE9AC00](v31, v32);
    *(&v95 - 4) = v105;
    *(&v95 - 3) = a3;
    v33 = MEMORY[0x1E69D6F38];
    sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
    v94 = sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v33);
    sub_1D7259A2C();
    a1 = v102;
    v34 = *(v11 + 8);
    v34(v14, KeyPath);
    v106 = a1;
    v35 = swift_allocObject();
    *(v35 + 16) = 0x4010000000000000;
    *v14 = v35;
    v30(v14, *MEMORY[0x1E69D7480], KeyPath);
    v10 = KeyPath;
    sub_1D7259A9C();
    v34(v14, v10);
    a2 = v105;
  }

  if (*(a2 + 32))
  {
    v106 = a1;
    sub_1D5EF9444();
    v37 = v36;
    v38 = swift_allocBox();
    v40 = v39;
    v100 = v37;
    v41 = *(v37 + 48);
    v42 = sub_1D725A09C();
    v43 = swift_allocBox();
    v45 = v44;
    v46 = swift_allocObject();
    *(v46 + 16) = a5;
    *v45 = v46;
    v47 = *(*(v42 - 8) + 104);
    v99 = *MEMORY[0x1E69D71F0];
    v47(v45);
    *v40 = v43;
    (v47)(v40, *MEMORY[0x1E69D71F8], v42);
    (v47)(v40 + v41, *MEMORY[0x1E69D7208], v42);
    v48 = v101;
    *v101 = v38;
    v49 = *MEMORY[0x1E69D7468];
    v50 = v104;
    v51 = *(v104 + 104);
    v96 = (v104 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v97 = v51;
    LODWORD(v98) = v49;
    v52 = v51(v48);
    MEMORY[0x1EEE9AC00](v52, v53);
    v54 = MEMORY[0x1E69D6F38];
    sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
    v56 = v55;
    v94 = sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v54);
    v105 = v56;
    sub_1D72599EC();
    v75 = *(v50 + 8);
    v95 = (v50 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  else
  {
    v106 = a1;
    sub_1D5EF9444();
    v58 = v57;
    v98 = swift_allocBox();
    KeyPath = v10;
    v60 = v59;
    v100 = v58;
    v61 = *(v58 + 48);
    v42 = sub_1D725A09C();
    v62 = swift_allocBox();
    v64 = v63;
    v65 = swift_allocObject();
    *(v65 + 16) = a5;
    *v64 = v65;
    v66 = v11;
    v67 = *(*(v42 - 8) + 104);
    v48 = v14;
    v99 = *MEMORY[0x1E69D71F0];
    v67(v64);
    *v60 = v62;
    (v67)(v60, *MEMORY[0x1E69D71F8], v42);
    (v67)(v60 + v61, *MEMORY[0x1E69D7208], v42);
    *v14 = v98;
    v68 = *MEMORY[0x1E69D7468];
    v69 = *(v66 + 104);
    v96 = (v66 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v97 = v69;
    LODWORD(v98) = v68;
    v10 = KeyPath;
    v70 = v69(v14);
    MEMORY[0x1EEE9AC00](v70, v71);
    v72 = MEMORY[0x1E69D6F38];
    sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
    v74 = v73;
    v94 = sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v72);
    v105 = v74;
    sub_1D72599EC();
    v75 = *(v66 + 8);
    v95 = (v66 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  v75(v48, v10);
  v106 = v102;
  v102 = "ms inside items";
  KeyPath = swift_getKeyPath();
  sub_1D5EF9444();
  v76 = v100;
  v77 = swift_allocBox();
  v79 = v78;
  v80 = *(v76 + 48);
  v81 = swift_allocObject();
  *(v81 + 16) = a5;
  *v79 = v81;
  sub_1D725A09C();
  v82 = *(*(v42 - 8) + 104);
  v83 = v99;
  v82(v79, v99, v42);
  v84 = swift_allocObject();
  *(v84 + 16) = a5;
  *(v79 + v80) = v84;
  v82((v79 + v80), v83, v42);
  *v48 = v77;
  v97(v48, v98, v10);
  sub_1D6076D50();
  sub_1D69C62E0(0, &qword_1EDF180C8, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D70D8]);
  v86 = v85;
  v87 = *(v85 - 8);
  v88 = (*(v87 + 80) + 32) & ~*(v87 + 80);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_1D7273AE0;
  v90 = *MEMORY[0x1E69D7070];
  sub_1D69C62E0(0, &qword_1EDF180E0, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D7078]);
  (*(*(v91 - 8) + 104))(v89 + v88, v90, v91);
  (*(v87 + 104))(v89 + v88, *MEMORY[0x1E69D7080], v86);
  v92 = MEMORY[0x1E69D6F38];
  sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v92);
  sub_1D69C6184(&qword_1EDF3C140, sub_1D5BEDFF4);
  sub_1D7259A7C();

  return (*(v104 + 8))(v48, v10);
}

uint64_t sub_1D6F9C680(uint64_t a1, void *a2, double a3, double a4)
{
  sub_1D69C62E0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (v37 - v12);
  v41 = a1;
  v14 = swift_allocObject();
  v15 = a2[40];
  v16 = a2[41];
  __swift_project_boxed_opaque_existential_1(a2 + 37, v15);
  v17 = (*(v16 + 8))(v15, v16);
  v18 = a2[40];
  v19 = a2[41];
  __swift_project_boxed_opaque_existential_1(a2 + 37, v18);
  *(v14 + 16) = (v17 - (*(v19 + 16))(v18, v19)) * 0.5;
  *v13 = v14;
  v20 = *MEMORY[0x1E69D7488];
  v38 = *(v10 + 104);
  v37[0] = v9;
  v38(v13, v20, v9);
  v21 = MEMORY[0x1E69D6F38];
  sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  v37[3] = v22;
  v37[2] = sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v21);
  sub_1D7259A9C();
  v23 = *(v10 + 8);
  v39 = v10 + 8;
  v40 = v23;
  v23(v13, v9);
  v41 = a1;
  v37[1] = swift_getKeyPath();
  sub_1D5EF9444();
  v25 = v24;
  v26 = swift_allocBox();
  v28 = v27;
  v29 = *(v25 + 48);
  v30 = swift_allocObject();
  *(v30 + 16) = a3;
  *v28 = v30;
  v31 = *MEMORY[0x1E69D71F0];
  v32 = sub_1D725A09C();
  v33 = *(*(v32 - 8) + 104);
  v33(v28, v31, v32);
  v34 = swift_allocObject();
  *(v34 + 16) = a4;
  *(v28 + v29) = v34;
  v33((v28 + v29), v31, v32);
  *v13 = v26;
  v35 = v37[0];
  v38(v13, *MEMORY[0x1E69D7468], v37[0]);
  sub_1D69C6184(&qword_1EDF3C140, sub_1D5BEDFF4);
  sub_1D7259A7C();

  return v40(v13, v35);
}

uint64_t sub_1D6F9CA64(uint64_t a1, void *a2)
{
  sub_1D69C62E0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v23 - v6);
  v28 = a1;
  KeyPath = swift_getKeyPath();
  sub_1D5EF9444();
  v9 = v8;
  v24 = swift_allocBox();
  v11 = v10;
  v12 = *(v9 + 48);
  v13 = sub_1D725A09C();
  v14 = swift_allocBox();
  sub_1D725A08C();
  *v11 = v14;
  v15 = *(*(v13 - 8) + 104);
  v15(v11, *MEMORY[0x1E69D71F8], v13);
  v16 = swift_allocObject();
  v17 = a2[40];
  v18 = a2[41];
  __swift_project_boxed_opaque_existential_1(a2 + 37, v17);
  *(v16 + 16) = (*(v18 + 8))(v17, v18);
  *(v11 + v12) = v16;
  v15((v11 + v12), *MEMORY[0x1E69D71F0], v13);
  v19 = v25;
  *v7 = v24;
  v20 = v26;
  (*(v19 + 104))(v7, *MEMORY[0x1E69D7468], v26);
  v21 = MEMORY[0x1E69D6F38];
  sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v21);
  sub_1D69C6184(&qword_1EDF3C140, sub_1D5BEDFF4);
  sub_1D7259A7C();

  return (*(v19 + 8))(v7, v20);
}

uint64_t sub_1D6F9CD70(uint64_t a1, uint64_t a2)
{
  sub_1D69C62E0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (v22 - v8);
  v10 = sub_1D7261B9C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22[1] = a1;
  swift_getKeyPath();
  v15 = *(a2 + 360);
  if (*(v15 + qword_1EDF347F8) & 1) != 0 || (sub_1D5B5DA7C(), *v14 = sub_1D726308C(), (*(v11 + 104))(v14, *MEMORY[0x1E69E8018], v10), v16 = sub_1D7261BBC(), result = (*(v11 + 8))(v14, v10), (v16))
  {
    v18 = swift_allocObject();
    v19 = *(v15 + *(*v15 + 136));
    *(v18 + 16) = v19;
    *v9 = v18;
    (*(v6 + 104))(v9, *MEMORY[0x1E69D7440], v5);
    v20 = MEMORY[0x1E69D6F38];
    sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
    sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v20);
    sub_1D69C6184(&qword_1EDF3C140, sub_1D5BEDFF4);
    v21 = v19;
    sub_1D7259A7C();

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6F9D0B0(uint64_t a1, uint64_t a2)
{
  sub_1D69C62E0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (v30 - v8);
  v10 = sub_1D7261B9C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30[1] = a1;
  swift_getKeyPath();
  v15 = *(a2 + 360);
  if (*(v15 + qword_1EDF347F8) & 1) != 0 || (sub_1D5B5DA7C(), *v14 = sub_1D726308C(), (*(v11 + 104))(v14, *MEMORY[0x1E69E8018], v10), v16 = sub_1D7261BBC(), result = (*(v11 + 8))(v14, v10), (v16))
  {
    v18 = swift_allocObject();
    v19 = *(v15 + *(*v15 + 136));
    *(v18 + 16) = v19;
    *v9 = v18;
    (*(v6 + 104))(v9, *MEMORY[0x1E69D7440], v5);
    sub_1D6076D50();
    sub_1D69C62E0(0, &qword_1EDF180C8, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D70D8]);
    v21 = v20;
    v22 = *(v20 - 8);
    v23 = *(v22 + 72);
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D7270C10;
    v26 = v25 + v24;
    v27 = v19;
    sub_1D725A28C();
    v28 = *(v22 + 104);
    v28(v26, *MEMORY[0x1E69D6FC0], v21);
    sub_1D725A28C();
    v28(v26 + v23, *MEMORY[0x1E69D6FD0], v21);
    v29 = MEMORY[0x1E69D6F38];
    sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
    sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v29);
    sub_1D69C6184(&qword_1EDF3C140, sub_1D5BEDFF4);
    sub_1D7259A7C();

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6F9D510(void *a1)
{
  v26[2] = *a1;
  sub_1D69C62E0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v26[0] = v2;
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (v26 - v5);
  v26[3] = a1;
  v26[1] = swift_getKeyPath();
  sub_1D5EF9444();
  v8 = v7;
  v9 = swift_allocBox();
  v11 = v10;
  v12 = *(v8 + 48);
  v13 = *MEMORY[0x1E69D71E8];
  v14 = sub_1D725A09C();
  v15 = *(*(v14 - 8) + 104);
  v15(v11, v13, v14);
  v16 = swift_allocObject();
  *(v16 + 16) = 0x4000000000000000;
  *(v11 + v12) = v16;
  v15(v11 + v12, *MEMORY[0x1E69D71F0], v14);
  *v6 = v9;
  v17 = v26[0];
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7468], v26[0]);
  sub_1D6076D50();
  sub_1D69C62E0(0, &qword_1EDF180C8, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D70D8]);
  v19 = v18;
  v20 = *(v18 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D7273AE0;
  v23 = *MEMORY[0x1E69D7050];
  sub_1D69C62E0(0, &qword_1EDF180E0, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D7078]);
  (*(*(v24 - 8) + 104))(v22 + v21, v23, v24);
  (*(v20 + 104))(v22 + v21, *MEMORY[0x1E69D7080], v19);
  sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  sub_1D69C6184(&qword_1EDF3C140, sub_1D5BEDFF4);
  sub_1D7259A7C();

  return (*(v3 + 8))(v6, v17);
}

BOOL static FormatCodingEmptyArrayStrategy.shouldEncode(wrappedValue:)()
{
  sub_1D72627FC();
  swift_getWitnessTable();
  return (sub_1D7262CCC() & 1) == 0;
}

uint64_t sub_1D6F9DA48@<X0>(uint64_t *a1@<X8>)
{
  result = static FormatCodingNilArrayStrategy.decode(rawValue:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D6F9DA80(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6F9DABC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_1D6F9DC6C()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v0 blackColor];
  v3 = [v0 ts:v1 dynamicColor:v2 withDarkStyleVariant:?];

  v4 = [v0 blackColor];
  v5 = [v0 whiteColor];
  v6 = [v0 ts:v4 dynamicColor:v5 withDarkStyleVariant:?];

  v7 = [v0 secondaryLabelColor];
  v8 = [v0 whiteColor];
  v9 = [v0 redColor];
  v10 = [v0 grayColor];
  v11 = [v0 grayColor];
  v12 = [v0 grayColor];
  v13 = [v12 colorWithAlphaComponent_];

  result = [v0 systemPinkColor];
  *&xmmword_1EC899070 = v3;
  *(&xmmword_1EC899070 + 1) = v6;
  qword_1EC899080 = v7;
  unk_1EC899088 = v8;
  *&xmmword_1EC899090 = v9;
  *(&xmmword_1EC899090 + 1) = v10;
  qword_1EC8990A0 = v11;
  unk_1EC8990A8 = v13;
  qword_1EC8990B0 = result;
  return result;
}

void __swiftcall CoverIssueColorPalette.init(backgroundColor:titleColor:dateFgColor:badgeFgColor:badgeNewBgColor:badgeSuggestedBgColor:downloadProgressTintColor:downloadTrackTintColor:followButtonBackgroundColor:)(NewsFeed::CoverIssueColorPalette *__return_ptr retstr, UIColor backgroundColor, UIColor titleColor, UIColor dateFgColor, UIColor badgeFgColor, UIColor badgeNewBgColor, UIColor badgeSuggestedBgColor, UIColor downloadProgressTintColor, UIColor downloadTrackTintColor, UIColor followButtonBackgroundColor)
{
  retstr->backgroundColor = backgroundColor;
  retstr->titleColor = titleColor;
  retstr->dateFgColor = dateFgColor;
  retstr->badgeFgColor = badgeFgColor;
  retstr->badgeNewBgColor = badgeNewBgColor;
  retstr->badgeSuggestedBgColor = badgeSuggestedBgColor;
  retstr->downloadProgressTintColor = downloadProgressTintColor;
  retstr->downloadTrackTintColor = downloadTrackTintColor;
  retstr->followButtonBackgroundColor = followButtonBackgroundColor;
}

uint64_t static CoverIssueColorPalette.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC87DCF0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *&qword_1EC8990A0;
  v8[2] = xmmword_1EC899090;
  v8[3] = *&qword_1EC8990A0;
  v2 = qword_1EC8990B0;
  v9 = qword_1EC8990B0;
  v4 = xmmword_1EC899070;
  v3 = *&qword_1EC899080;
  v8[0] = xmmword_1EC899070;
  v8[1] = *&qword_1EC899080;
  *(a1 + 32) = xmmword_1EC899090;
  *(a1 + 48) = v1;
  *(a1 + 64) = v2;
  *a1 = v4;
  *(a1 + 16) = v3;
  return sub_1D6F9DF18(v8, v7);
}

uint64_t sub_1D6F9DF50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1D6F9DF98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D6F9DFF8(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = sub_1D7259EBC();
  type metadata accessor for FormatImageNodeContext();
  v7 = swift_allocObject();
  __asm { FMOV            V0.2D, #1.0 }

  *(v7 + 16) = _Q0;
  *(v7 + 32) = 0x3FF0000000000000;
  *(v7 + 40) = v6;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 128) = 0;
  v13 = a3[1];
  v18 = *a3;
  *v19 = v13;
  *&v19[9] = *(a3 + 25);
  sub_1D6F9E580(a3, &v16);
  sub_1D6B7C580(a1, a2, v7, &v20);
  sub_1D62B4C5C(v18, *(&v18 + 1), *v19, *&v19[8], *&v19[16], v19[24]);
  v14 = a3[1];
  v16 = *a3;
  v17[0] = v14;
  *(v17 + 10) = *(a3 + 26);
  *&v18 = v20;
  LOBYTE(a1) = sub_1D6F9E138(a1, &v18);

  return a1 & 1;
}

uint64_t sub_1D6F9E138(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(v2 + 41);
  v6 = *a2 >> 61;
  if (v6 > 3)
  {
    v16 = *v2;
    v15 = v2[1];
    v18 = v2[2];
    v17 = v2[3];
    v19 = v2[4];
    v20 = *(v2 + 40);
    if (v6 == 4)
    {
      v30 = a1;
      v41 = v3;
      v23 = v4 & 0x1FFFFFFFFFFFFFFFLL;
      v28 = *(v23 + 24);
      v29 = *(v23 + 16);
      v24 = [objc_opt_self() currentTraitCollection];
      v25 = [v24 userInterfaceStyle];

      if (v25 < 2)
      {
        *&v32 = v16;
        *(&v32 + 1) = v15;
        *&v33 = v18;
        *(&v33 + 1) = v17;
        *&v34 = v19;
        BYTE8(v34) = v20;
        BYTE9(v34) = v5;
        v31[0] = v29;
        v26 = v41;
        v22 = sub_1D6F9E138(v30, v31);
        if (v26)
        {
          return v5 & 1;
        }

LABEL_15:
        v5 = v22;
        return v5 & 1;
      }

      v21 = v29;
      a1 = v30;
      v3 = v41;
      if (v25 == 2)
      {
        *&v32 = v16;
        *(&v32 + 1) = v15;
        *&v33 = v18;
        *(&v33 + 1) = v17;
        *&v34 = v19;
        BYTE8(v34) = v20;
        BYTE9(v34) = v5;
        v21 = v28;
LABEL_11:
        v31[0] = v21;
        v22 = sub_1D6F9E138(a1, v31);
        if (v3)
        {
          return v5 & 1;
        }

        goto LABEL_15;
      }
    }

    else
    {
      if (v6 != 5)
      {
        v5 ^= 1u;
        return v5 & 1;
      }

      v21 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    }

    *&v32 = v16;
    *(&v32 + 1) = v15;
    *&v33 = v18;
    *(&v33 + 1) = v17;
    *&v34 = v19;
    BYTE8(v34) = v20;
    BYTE9(v34) = v5;
    goto LABEL_11;
  }

  if ((v6 - 2) >= 2 && v6 != 0)
  {
    v8 = (v4 & 0x1FFFFFFFFFFFFFFFLL);
    v9 = v8[7];
    v37 = v8[6];
    v38 = v9;
    v10 = v8[9];
    v39 = v8[8];
    v40 = v10;
    v11 = v8[3];
    v33 = v8[2];
    v34 = v11;
    v12 = v8[5];
    v35 = v8[4];
    v36 = v12;
    v32 = v8[1];
    v13 = objc_opt_self();
    sub_1D61CAA58(&v32, v31);
    v14 = [v13 currentTraitCollection];
    (v40)(v31);

    sub_1D61CAAB4(&v32);
    v5 ^= v31[3] == 0;
    sub_1D5EED418(v31);
  }

  return v5 & 1;
}

uint64_t _s8NewsFeed28FormatBindingImageExpressionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 41);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 41);
  v13 = *(a1 + 40);
  v14 = *(a2 + 40);
  v22 = *a1;
  v23 = v2;
  v24 = v3;
  v25 = v4;
  v26 = v5;
  v27 = v13;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v14;
  sub_1D62B4B68(v22, v2, v3, v4, v5, v13);
  sub_1D62B4B68(v7, v8, v9, v10, v11, v14);
  LODWORD(v7) = _s8NewsFeed22FormatImageNodeBindingO2eeoiySbAC_ACtFZ_0(&v22, &v16);
  sub_1D62B4C5C(v16, v17, v18, v19, v20, v21);
  sub_1D62B4C5C(v22, v23, v24, v25, v26, v27);
  return v7 & ~(v6 ^ v12) & 1;
}

unint64_t sub_1D6F9E468(uint64_t a1)
{
  result = sub_1D6F9E490();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6F9E490()
{
  result = qword_1EC8990B8;
  if (!qword_1EC8990B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8990B8);
  }

  return result;
}

unint64_t sub_1D6F9E4E4(void *a1)
{
  a1[1] = sub_1D5CBD498();
  a1[2] = sub_1D6700FCC();
  result = sub_1D6F9E51C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6F9E51C()
{
  result = qword_1EC8990C0;
  if (!qword_1EC8990C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8990C0);
  }

  return result;
}

uint64_t static FormatGrayscaleColor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_1D6F9E5FC(uint64_t a1)
{
  result = sub_1D6F9E624();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6F9E624()
{
  result = qword_1EC8990C8;
  if (!qword_1EC8990C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8990C8);
  }

  return result;
}

uint64_t sub_1D6F9E678(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 16);
    if (*(a1 + 16))
    {
      if (*(a2 + 16))
      {
        return 1;
      }
    }

    else
    {
      if (*(a1 + 8) != *(a2 + 8))
      {
        v2 = 1;
      }

      if ((v2 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_1D6F9E6BC(void *a1)
{
  a1[1] = sub_1D667E1C8();
  a1[2] = sub_1D6700318();
  result = sub_1D6F9E6F4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6F9E6F4()
{
  result = qword_1EC8990D0;
  if (!qword_1EC8990D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8990D0);
  }

  return result;
}

uint64_t FormatAdMetricsData.nativeAdInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D726045C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for FormatAdMetricsData()
{
  result = qword_1EDF2CE50;
  if (!qword_1EDF2CE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6F9E864()
{
  result = sub_1D726045C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t FeedCursorTracker.snapshot()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v6);
  v8 = &v15 - v7;
  sub_1D725A76C();
  (*(v5 + 16))(v8, v2 + *(*v2 + 96), AssociatedTypeWitness);
  v9 = *(*v1 + 104);
  swift_beginAccess();
  v10 = *(v2 + v9);
  v11 = *(*v2 + 120);
  swift_beginAccess();
  v12 = *(v2 + v11);
  v13 = *(*v2 + 112);
  swift_beginAccess();
  sub_1D6F9FAD8(v8, v10, v12, *(v2 + v13), a1);

  return sub_1D725A77C();
}

uint64_t sub_1D6F9EB9C()
{
  type metadata accessor for FeedCursorTrackerGroup();
  sub_1D7261E1C();

  swift_getWitnessTable();
  v0 = sub_1D726242C();

  return v0;
}

uint64_t FeedCursorTracker.context.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a1, v1 + v3, AssociatedTypeWitness);
}

uint64_t *FeedCursorTracker.init(context:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v6 = MEMORY[0x1E69E7CD0];
  *(v1 + *(v3 + 104)) = MEMORY[0x1E69E7CD0];
  *(v1 + *(*v1 + 112)) = v6;
  v7 = *(*v1 + 120);
  type metadata accessor for FeedCursorTrackerGroup();
  *(v1 + v7) = sub_1D7261CEC();
  v8 = *(*v1 + 128);
  sub_1D725A78C();
  sub_1D725A7BC();
  swift_allocObject();
  *(v1 + v8) = sub_1D725A7AC();
  v9 = *(*v1 + 96);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(v1 + v9, a1, AssociatedTypeWitness);
  return v1;
}

char *FeedCursorTracker.markSeen(group:sessionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v57 = a2;
  v58 = a3;
  v62 = a1;
  v5 = *(*v3 + 80);
  v6 = type metadata accessor for FeedCursorTrackerGroup();
  v7 = sub_1D726393C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v59 = &v53 - v9;
  v10 = sub_1D725891C();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v54 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v56 = v5;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v14);
  v16 = &v53 - v15;
  v61 = v6;
  v60 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v63 = (&v53 - v19);
  sub_1D725A76C();
  v20 = *(*v3 + 104);
  swift_beginAccess();
  v21 = *(v3 + v20);
  v55 = *(swift_getAssociatedConformanceWitness() + 8);

  v22 = v62;
  v23 = sub_1D725AA4C();
  LOBYTE(v5) = sub_1D5BE240C(v23, v24, v21);

  if (v5)
  {
    return sub_1D725A77C();
  }

  (*(v53 + 16))(v16, v22, AssociatedTypeWitness);
  v25 = v58;

  v26 = v54;
  sub_1D725890C();
  sub_1D6F9F6CC(v16, v57, v25, v26, v63);
  v27 = sub_1D725AA4C();
  v29 = v28;
  swift_beginAccess();
  sub_1D5B860D0(v65, v27, v29);
  swift_endAccess();

  v30 = sub_1D725AA4C();
  v32 = v31;
  v33 = v59;
  v34 = v60;
  v35 = v63;
  v36 = v61;
  (*(v60 + 16))(v59, v63, v61);
  (*(v34 + 56))(v33, 0, 1, v36);
  v65[0] = v30;
  v65[1] = v32;
  swift_beginAccess();
  sub_1D7261E1C();
  sub_1D7261E4C();
  swift_endAccess();
  v37 = (*(v55 + 32))(AssociatedTypeWitness);
  v38 = v37;
  v39 = v36;
  v40 = v34;
  if (!(v37 >> 62))
  {
    v41 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v41)
    {
      goto LABEL_4;
    }

LABEL_14:

    v44 = MEMORY[0x1E69E7CC0];
LABEL_15:
    swift_beginAccess();
    sub_1D5B87D50(v44);
    swift_endAccess();

    (*(v40 + 8))(v35, v39);
    return sub_1D725A77C();
  }

  v41 = sub_1D7263BFC();
  if (!v41)
  {
    goto LABEL_14;
  }

LABEL_4:
  v64 = MEMORY[0x1E69E7CC0];
  result = sub_1D5BFC364(0, v41 & ~(v41 >> 63), 0);
  if ((v41 & 0x8000000000000000) == 0)
  {
    v62 = v4;
    v43 = 0;
    v44 = v64;
    do
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x1DA6FB460](v43, v38);
      }

      else
      {
        v45 = *(v38 + 8 * v43 + 32);
        swift_unknownObjectRetain();
      }

      v46 = [v45 itemID];
      v47 = sub_1D726207C();
      v49 = v48;
      swift_unknownObjectRelease();

      v64 = v44;
      v51 = *(v44 + 16);
      v50 = *(v44 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_1D5BFC364((v50 > 1), v51 + 1, 1);
        v44 = v64;
      }

      ++v43;
      *(v44 + 16) = v51 + 1;
      v52 = v44 + 16 * v51;
      *(v52 + 32) = v47;
      *(v52 + 40) = v49;
    }

    while (v41 != v43);

    v39 = v61;
    v40 = v60;
    v35 = v63;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

char *sub_1D6F9F6CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = *(AssociatedConformanceWitness + 8);
  *a5 = sub_1D725AA4C();
  a5[1] = v11;
  v12 = *(AssociatedConformanceWitness + 64);
  v13 = type metadata accessor for FeedCursorTrackerGroup();
  v12(AssociatedTypeWitness, AssociatedConformanceWitness);
  v14 = *(v13 + 40);
  v15 = sub_1D725891C();
  v37 = *(v15 - 8);
  v38 = v15;
  v41 = a4;
  (*(v37 + 16))(a5 + v14, a4);
  v16 = (*(AssociatedConformanceWitness + 104))(AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v16)
  {
    v17 = [v16 identifier];
    swift_unknownObjectRelease();
    v18 = sub_1D726207C();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v42 = a1;
  v43 = a5;
  v21 = (a5 + *(v13 + 44));
  *v21 = v18;
  v21[1] = v20;
  v40 = AssociatedTypeWitness;
  v22 = (*(v10 + 32))(AssociatedTypeWitness, v10);
  v23 = v22;
  if (!(v22 >> 62))
  {
    v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v39 = v13;
    if (v24)
    {
      goto LABEL_6;
    }

LABEL_16:

    (*(v37 + 8))(a4, v38);
    result = (*(*(v40 - 8) + 8))(a1);
    v27 = MEMORY[0x1E69E7CC0];
LABEL_17:
    *(v43 + *(v39 + 48)) = v27;
    v36 = (v43 + *(v39 + 52));
    *v36 = a2;
    v36[1] = a3;
    return result;
  }

  v24 = sub_1D7263BFC();
  v39 = v13;
  if (!v24)
  {
    goto LABEL_16;
  }

LABEL_6:
  v46 = MEMORY[0x1E69E7CC0];
  result = sub_1D5BFC364(0, v24 & ~(v24 >> 63), 0);
  if ((v24 & 0x8000000000000000) == 0)
  {
    v26 = 0;
    v27 = v46;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x1DA6FB460](v26, v23);
      }

      else
      {
        v28 = *(v23 + 8 * v26 + 32);
        swift_unknownObjectRetain();
      }

      v29 = [v28 itemID];
      v30 = sub_1D726207C();
      v32 = v31;
      swift_unknownObjectRelease();

      v34 = *(v46 + 16);
      v33 = *(v46 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1D5BFC364((v33 > 1), v34 + 1, 1);
      }

      ++v26;
      *(v46 + 16) = v34 + 1;
      v35 = v46 + 16 * v34;
      *(v35 + 32) = v30;
      *(v35 + 40) = v32;
    }

    while (v24 != v26);

    (*(v37 + 8))(v41, v38);
    result = (*(*(v40 - 8) + 8))(v42);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

int *sub_1D6F9FAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a5, a1, AssociatedTypeWitness);
  result = type metadata accessor for FeedCursorTrackerSnapshot();
  *(a5 + result[9]) = a2;
  *(a5 + result[11]) = a3;
  *(a5 + result[10]) = a4;
  return result;
}

uint64_t FeedCursorTracker.deinit()
{
  v1 = *(*v0 + 96);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);

  return v0;
}

uint64_t FeedCursorTracker.__deallocating_deinit()
{
  FeedCursorTracker.deinit();

  return swift_deallocClassInstance();
}

uint64_t FeedCursorTrackerSnapshot.context.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 16);

  return v4(a1, v1, AssociatedTypeWitness);
}

uint64_t FeedCursorTrackerSnapshot.date(identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FeedCursorTrackerGroup();
  v7 = sub_1D726393C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v18 - v10;
  v18[0] = a1;
  v18[1] = a2;

  sub_1D7261E3C();

  v12 = *(v6 - 8);
  if ((*(v12 + 48))(v11, 1, v6) == 1)
  {
    (*(v8 + 8))(v11, v7);
    v13 = sub_1D725891C();
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }

  else
  {
    v15 = *(v6 + 40);
    v16 = sub_1D725891C();
    v17 = *(v16 - 8);
    (*(v17 + 16))(a3, &v11[v15], v16);
    (*(v12 + 8))(v11, v6);
    return (*(v17 + 56))(a3, 0, 1, v16);
  }
}

uint64_t FeedCursorTrackerSnapshot.groups(for:)()
{
  type metadata accessor for FeedCursorTrackerGroup();
  nullsub_1();
  sub_1D7261DEC();

  swift_getWitnessTable();
  return sub_1D726247C();
}

uint64_t sub_1D6FA02FC()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  type metadata accessor for FeedCursorTrackerGroup();
  swift_getAssociatedConformanceWitness();
  return sub_1D7261FBC() & 1;
}

uint64_t sub_1D6FA0470@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, _OWORD *a5@<X8>)
{
  result = sub_1D5BE240C(*a1, a1[1], a2);
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  if (result)
  {
    result = sub_1D691E424(a1, a3, a4, v13);
    v10 = v13[0];
    v11 = v13[1];
    v12 = v13[2];
  }

  *a5 = v10;
  a5[1] = v11;
  a5[2] = v12;
  return result;
}

double sub_1D6FA04EC@<D0>(char *a1@<X0>, void (*a2)(_OWORD *__return_ptr, uint64_t, uint64_t, char *)@<X1>, _OWORD *a3@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 1);
  type metadata accessor for FeedCursorTrackerGroup();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  a2(v11, v6, v7, &a1[*(TupleTypeMetadata2 + 48)]);
  v9 = v11[1];
  *a3 = v11[0];
  a3[1] = v9;
  result = *&v12;
  a3[2] = v12;
  return result;
}

uint64_t FeedCursorTrackerGroup.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedCursorTrackerGroup.kind.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t FeedCursorTrackerGroup.seenDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1D725891C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t FeedCursorTrackerGroup.tagIdentifier.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));

  return v2;
}

uint64_t FeedCursorTrackerGroup.sessionIdentifier.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));

  return v2;
}

uint64_t sub_1D6FA088C(void *a1)
{
  v3 = v1;
  sub_1D6FA0FC4(0, &qword_1EC8990D8, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6FA0C4C();
  sub_1D7264B5C();
  v15 = 0;
  sub_1D72643FC();
  if (!v2)
  {
    v14 = 1;
    sub_1D726437C();
    v13 = *(v3 + 32);
    v12[15] = 2;
    sub_1D6B49204();
    sub_1D6B49488(&qword_1EC884850, sub_1D618D3A4);
    sub_1D726443C();
    v12[14] = 3;
    sub_1D726440C();
    v12[13] = 4;
    sub_1D726440C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6FA0AB8()
{
  v1 = *v0;
  v2 = 0x6449676174;
  v3 = 0x6E6572646C696863;
  v4 = 0x6E65646469487369;
  if (v1 != 3)
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6449636D75;
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

uint64_t sub_1D6FA0B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6FA1140(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6FA0B78(uint64_t a1)
{
  v2 = sub_1D6FA0C4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6FA0BB4(uint64_t a1)
{
  v2 = sub_1D6FA0C4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6FA0BF0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D6FA0CA0(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 10);
    *(a2 + 26) = *(v7 + 10);
  }

  return result;
}

unint64_t sub_1D6FA0C4C()
{
  result = qword_1EDF06958[0];
  if (!qword_1EDF06958[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF06958);
  }

  return result;
}

uint64_t sub_1D6FA0CA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6FA0FC4(0, &qword_1EDF03870, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6FA0C4C();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = 0;
  v11 = sub_1D72642BC();
  v13 = v12;
  v24 = v11;
  v29 = 1;
  v14 = sub_1D726422C();
  v16 = v15;
  v23 = v14;
  v28 = 3;
  v22 = sub_1D726423C();
  sub_1D6B49204();
  v27 = 2;
  sub_1D6B49488(&qword_1EDF04B00, sub_1D6B494F4);
  sub_1D726431C();
  v21 = v25;
  v26 = 4;
  v17 = sub_1D726423C();
  (*(v7 + 8))(v10, v6);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v19 = v23;
  *a2 = v24;
  *(a2 + 8) = v13;
  *(a2 + 16) = v19;
  *(a2 + 24) = v16;
  *(a2 + 32) = v21;
  *(a2 + 40) = v22 & 1;
  *(a2 + 41) = v17 & 1;
  return result;
}

void sub_1D6FA0FC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6FA0C4C();
    v7 = a3(a1, &type metadata for SportsTaxonomyGraphResourceEntityNode.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6FA103C()
{
  result = qword_1EC8990E0;
  if (!qword_1EC8990E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8990E0);
  }

  return result;
}

unint64_t sub_1D6FA1094()
{
  result = qword_1EDF06948;
  if (!qword_1EDF06948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06948);
  }

  return result;
}

unint64_t sub_1D6FA10EC()
{
  result = qword_1EDF06950;
  if (!qword_1EDF06950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06950);
  }

  return result;
}

uint64_t sub_1D6FA1140(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449676174 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449636D75 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6572646C696863 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E65646469487369 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D73D2E20 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t SportsTaxonomyGraphRootNode.childrenTagIds()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);

  if (v2)
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v6 = *(v1 + 16);
      if (v4 > v6)
      {
        v6 = v4;
      }

      v7 = v4;
      while (1)
      {
        if (v6 == v7)
        {
          __break(1u);
          return result;
        }

        v8 = *(v1 + 32 + 8 * v7);
        v4 = v7 + 1;
        if ((v8 >> 62) - 1 < 2)
        {
          break;
        }

        ++v7;
        if (v2 == v4)
        {
          goto LABEL_17;
        }
      }

      v9 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *(v9 + 16);
      v10 = *(v9 + 24);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D5B858EC(0, *(v5 + 16) + 1, 1, v5);
        v5 = result;
      }

      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_1D5B858EC((v12 > 1), v13 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
    }

    while (v2 - 1 != v7);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

LABEL_17:

  return v5;
}

uint64_t SportsTaxonomyGraphRootNode.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D6FA1524(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_1D6FA1580(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t sub_1D6FA1608()
{
  result = qword_1EC8990E8;
  if (!qword_1EC8990E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8990E8);
  }

  return result;
}

uint64_t FormatSupplementaryNodeDataLayoutAttributes.identifier.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 48);

  return v1;
}

double FormatSupplementaryNodeDataLayoutAttributes.frame.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes);
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t FormatSupplementaryNodeDataLayoutAttributes.data.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes);
  v4 = v2[12];
  v14 = v2[11];
  v3 = v14;
  v15[0] = v4;
  *(v15 + 9) = *(v2 + 201);
  v5 = *(v15 + 9);
  v6 = v2[8];
  v11[0] = v2[7];
  v11[1] = v6;
  v7 = v2[10];
  v12 = v2[9];
  v8 = v12;
  v13 = v7;
  *a1 = v11[0];
  a1[1] = v6;
  *(a1 + 89) = v5;
  a1[4] = v3;
  a1[5] = v4;
  a1[2] = v8;
  a1[3] = v7;
  return sub_1D62E340C(v11, &v10);
}

uint64_t FormatSupplementaryNodeDataLayoutAttributes.layoutIdentifier.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 64);

  return v1;
}

uint64_t FormatSupplementaryNodeDataLayoutAttributes.nodeIdentifier.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 80);

  return v1;
}

uint64_t FormatSupplementaryNodeDataLayoutAttributes.renderKeyIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatSupplementaryNodeDataLayoutAttributes.reuseIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_reuseIdentifier);

  return v1;
}

uint64_t FormatSupplementaryNodeDataLayoutAttributes.deinit()
{

  sub_1D6872B14(v0 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_pinTrait, &unk_1EDF439A0, MEMORY[0x1E69D8558]);
  sub_1D6872B14(v0 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_rubberbandTrait, &qword_1EDF43998, MEMORY[0x1E69D86D0]);

  sub_1D5EBC358(*(v0 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_sourceItemData), *(v0 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_sourceItemData + 8));

  return v0;
}

uint64_t FormatSupplementaryNodeDataLayoutAttributes.__deallocating_deinit()
{
  FormatSupplementaryNodeDataLayoutAttributes.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6FA1A5C()
{
  v1 = *(*(*v0 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) + 48);

  return v1;
}

id EmptyView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id EmptyView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id EmptyView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id EmptyView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id EmptyView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D6FA1D54()
{
  sub_1D5BBBC18(&qword_1EDF1BB08);

  JUMPOUT(0x1DA6F6FC0);
}

uint64_t sub_1D6FA1DAC(void *a1)
{
  sub_1D6FA24D8(0, &qword_1EC899100, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6FA2484();
  sub_1D7264B5C();
  v10[15] = 0;
  sub_1D72643FC();
  if (!v1)
  {
    v10[14] = 1;
    sub_1D72643FC();
    v10[13] = 2;
    sub_1D72643FC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D6FA1F38()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 0x726F727265;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1D6FA1F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6FA2654(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6FA1FB4(uint64_t a1)
{
  v2 = sub_1D6FA2484();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6FA1FF0(uint64_t a1)
{
  v2 = sub_1D6FA2484();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6FA202C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D6FA2224(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1D6FA2088@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  sub_1D6939CDC(0, &qword_1EC88C020, sub_1D60F41F0, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v14 = v1[1];
  sub_1D5BF4D9C();
  v5 = MEMORY[0x1E69E6158];
  v6 = sub_1D7263A0C();
  v8 = v7;
  sub_1D5F3D224();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D7270C10;
  *(v9 + 32) = 0x696669746E656449;
  *(v9 + 40) = 0xEA00000000007265;
  v11 = MEMORY[0x1E69E61C8];
  v16 = *v2;
  v10 = v16;
  *(v9 + 72) = v5;
  *(v9 + 80) = v11;
  *(v9 + 48) = v10;
  *(v9 + 88) = 0;
  *(v9 + 96) = 0x726F727245;
  *(v9 + 104) = 0xE500000000000000;
  v15 = v2[2];
  v12 = v15;
  *(v9 + 136) = v5;
  *(v9 + 144) = v11;
  *(v9 + 112) = v12;
  *(v9 + 152) = 0;
  *(inited + 56) = &type metadata for DebugInspectionDataSection;
  *(inited + 64) = &off_1F5132800;
  *(inited + 32) = v6;
  *(inited + 40) = v8;
  *(inited + 48) = v9;
  sub_1D5E422A8(&v16, &v14);
  sub_1D5E422A8(&v15, &v14);
  result = sub_1D60F3E18(inited);
  a1[3] = &type metadata for DebugInspectionDataSource;
  a1[4] = &off_1F51328C8;
  *a1 = result;
  return result;
}

uint64_t sub_1D6FA2224@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D6FA24D8(0, &qword_1EC8990F0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v23 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6FA2484();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = 0;
  v11 = sub_1D72642BC();
  v13 = v12;
  v25 = a2;
  v26 = v11;
  v28 = 1;
  v14 = sub_1D72642BC();
  v24 = v15;
  v27 = 2;
  v16 = sub_1D72642BC();
  v17 = v10;
  v19 = v18;
  (*(v7 + 8))(v17, v6);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v21 = v25;
  *v25 = v26;
  v21[1] = v13;
  v22 = v24;
  v21[2] = v14;
  v21[3] = v22;
  v21[4] = v16;
  v21[5] = v19;
  return result;
}

unint64_t sub_1D6FA2484()
{
  result = qword_1EC8990F8;
  if (!qword_1EC8990F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8990F8);
  }

  return result;
}

void sub_1D6FA24D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6FA2484();
    v7 = a3(a1, &type metadata for DebugInspectionError.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6FA2550()
{
  result = qword_1EC899108;
  if (!qword_1EC899108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899108);
  }

  return result;
}

unint64_t sub_1D6FA25A8()
{
  result = qword_1EC899110;
  if (!qword_1EC899110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899110);
  }

  return result;
}

unint64_t sub_1D6FA2600()
{
  result = qword_1EC899118;
  if (!qword_1EC899118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899118);
  }

  return result;
}

uint64_t sub_1D6FA2654(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D6FA2770@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (result + 32);
    do
    {
      v5 = *v4++;
      v6 = qword_1D737E3D8[v5];
      if ((v6 & ~v3) == 0)
      {
        v6 = 0;
      }

      v3 |= v6;
      --v2;
    }

    while (v2);
    *a2 = v3;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

unint64_t FormatItemTrait.rawValue.getter()
{
  result = 1835365481;
  switch(*v0)
  {
    case 1:
      result = 7364967;
      break;
    case 2:
      result = 0x69616E626D756874;
      break;
    case 3:
      result = 0x6F65646976;
      break;
    case 4:
      result = 0x656E696C66666FLL;
      break;
    case 5:
      result = 0x6465727574616566;
      break;
    case 6:
      result = 0x7265766F63;
      break;
    case 7:
      result = 0x656E696C64616568;
      break;
    case 8:
      result = 0x7469617274726F70;
      break;
    case 9:
      result = 0x70616373646E616CLL;
      break;
    case 0xA:
      result = 0x657261757173;
      break;
    case 0xB:
      result = 6448503;
      break;
    case 0xC:
      result = 0x7373656363416F6ELL;
      break;
    case 0xD:
      result = 25697;
      break;
    case 0xE:
      result = 0xD000000000000011;
      break;
    case 0xF:
      result = 0xD000000000000012;
      break;
    case 0x10:
      result = 0x6854657261757173;
      break;
    case 0x11:
    case 0x2C:
    case 0x31:
      result = 0xD000000000000014;
      break;
    case 0x12:
      result = 0xD000000000000015;
      break;
    case 0x13:
      result = 0xD000000000000012;
      break;
    case 0x14:
      result = 0x79726F6765746163;
      break;
    case 0x15:
      result = 0xD000000000000010;
      break;
    case 0x16:
      result = 0x6172546F69647561;
      break;
    case 0x17:
      result = 0x63537374726F7073;
      break;
    case 0x18:
      result = 0x74537374726F7073;
      break;
    case 0x19:
      result = 0x74726F7053676174;
      break;
    case 0x1A:
      result = 0x6C61636F4C676174;
      break;
    case 0x1B:
      result = 0x707377654E676174;
      break;
    case 0x1C:
      result = 0x6369706F54676174;
      break;
    case 0x1D:
      result = 0x6E6E616843676174;
      break;
    case 0x1E:
      result = 0x72427374726F7073;
      break;
    case 0x1F:
      result = 0x6F427374726F7073;
      break;
    case 0x20:
      result = 0x694C7374726F7073;
      break;
    case 0x21:
      result = 0xD000000000000012;
      break;
    case 0x22:
      result = 0x654B7374726F7073;
      break;
    case 0x23:
      result = 0x76457374726F7073;
      break;
    case 0x24:
      result = 0x7463657269646572;
      break;
    case 0x25:
      result = 0x64656B636F6C62;
      break;
    case 0x26:
      result = 0x6B636F6C42746F6ELL;
      break;
    case 0x27:
      result = 0x6C69787541736168;
      break;
    case 0x28:
      result = 0x656C7A7A7570;
      break;
    case 0x29:
      result = 0x7954656C7A7A7570;
      break;
    case 0x2A:
      result = 0x6554656C7A7A7570;
      break;
    case 0x2B:
      result = 0x7453656C7A7A7570;
      break;
    case 0x2D:
      result = 0xD00000000000001ALL;
      break;
    case 0x2E:
      result = 0x756854656772616CLL;
      break;
    case 0x2F:
      result = 0xD000000000000013;
      break;
    case 0x30:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D6FA2D34()
{
  v0 = FormatItemTrait.rawValue.getter();
  v2 = v1;
  if (v0 == FormatItemTrait.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

unint64_t sub_1D6FA2DD4()
{
  result = qword_1EDF118B8;
  if (!qword_1EDF118B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF118B8);
  }

  return result;
}

uint64_t sub_1D6FA2E28()
{
  sub_1D7264A0C();
  FormatItemTrait.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6FA2E90()
{
  FormatItemTrait.rawValue.getter();
  sub_1D72621EC();
}

uint64_t sub_1D6FA2EF4()
{
  sub_1D7264A0C();
  FormatItemTrait.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6FA2F58@<X0>(unint64_t *a1@<X8>)
{
  result = FormatItemTrait.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D6FA2F80(uint64_t a1)
{
  *(a1 + 8) = sub_1D6FA2FB0();
  result = sub_1D5CD0C58();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6FA2FB0()
{
  result = qword_1EC899120;
  if (!qword_1EC899120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899120);
  }

  return result;
}

unint64_t sub_1D6FA3004(uint64_t a1)
{
  result = sub_1D66B94C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6FA302C(void *a1)
{
  a1[1] = sub_1D5C50AA0();
  a1[2] = sub_1D5C50AF4();
  result = sub_1D6FA2DD4();
  a1[3] = result;
  return result;
}

uint64_t sub_1D6FA30B4()
{
  if ((*v0 >> 62) - 1 >= 2)
  {
    return sub_1D7264A2C();
  }

  sub_1D7264A2C();
  sub_1D72621EC();
}

uint64_t sub_1D6FA3150()
{
  v1 = *v0;
  sub_1D7264A0C();
  if ((v1 >> 62) - 1 >= 2)
  {
    sub_1D7264A2C();
  }

  else
  {

    sub_1D7264A2C();
    sub_1D72621EC();
  }

  return sub_1D7264A5C();
}

uint64_t sub_1D6FA31F4()
{
  v1 = *v0;
  sub_1D7264A0C();
  if ((v1 >> 62) - 1 >= 2)
  {
    sub_1D7264A2C();
  }

  else
  {

    sub_1D7264A2C();
    sub_1D72621EC();
  }

  return sub_1D7264A5C();
}

uint64_t sub_1D6FA3290(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  type metadata accessor for SportsTaxonomyGraphRootNode();
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  v2[2] = v4;
  v80 = sub_1D605A3B0(v5);
  v6 = swift_allocObject();
  *(v6 + 16) = v2[2];
  v79[0] = v6;

  v7 = MEMORY[0x1E69E7CD0];
  v8 = sub_1D6FA3918(v3, v79, &v80, MEMORY[0x1E69E7CD0]);

  swift_beginAccess();

  sub_1D698532C(v8);
  swift_endAccess();

  v78 = v7;
  v9 = v2[2];
  swift_beginAccess();
  v10 = *(v9 + 16);
  v76 = v7;
  v11 = *(v10 + 2);
  if (v11)
  {

    do
    {
      v12 = *(v10 + 4);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v11 - 1) > *(v10 + 3) >> 1)
      {
        v10 = sub_1D698BF5C(isUniquelyReferenced_nonNull_native, v11, 1, v10);
      }

      sub_1D6FA493C((v10 + 32));
      v14 = *(v10 + 2);
      memmove(v10 + 32, v10 + 40, 8 * v14 - 8);
      *(v10 + 2) = v14 - 1;
      v77 = v10;
      if ((v12 >> 62) >= 2)
      {
        swift_beginAccess();

        sub_1D698532C(v15);
      }

      sub_1D5FE925C(&v75, v12);

      if ((v12 >> 62) - 1 >= 2)
      {
      }

      else
      {
        v16 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v18 = *(v16 + 16);
        v17 = *(v16 + 24);

        sub_1D5B860D0(&v75, v18, v17);
      }

      v10 = v77;
      v11 = *(v77 + 2);
    }

    while (v11);
    v19 = v78;
  }

  else
  {

    v19 = MEMORY[0x1E69E7CD0];
  }

  v20 = MEMORY[0x1E69E7CC0];
  v21 = sub_1D605A3B0(MEMORY[0x1E69E7CC0]);
  v72 = sub_1D605A3B0(v20);
  v22 = 1 << *(v19 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v19 + 56);
  v25 = (v22 + 63) >> 6;

  v26 = 0;
  while (v24)
  {
LABEL_17:
    v27 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v28 = *(*(v19 + 48) + ((v26 << 9) | (8 * v27)));
    if ((v28 >> 62) - 1 <= 1)
    {
      v66 = v2;
      v30 = *((v28 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v31 = *(v30 + 24);
      v71 = *(v30 + 16);

      swift_retain_n();
      v62 = swift_isUniquelyReferenced_nonNull_native();
      v75 = v21;
      v69 = v31;
      v33 = sub_1D5B69D90(v71, v31);
      v34 = v21[2];
      v35 = (v32 & 1) == 0;
      v36 = v34 + v35;
      if (__OFADD__(v34, v35))
      {
        goto LABEL_49;
      }

      if (v21[3] >= v36)
      {
        v2 = v66;
        if ((v62 & 1) == 0)
        {
          v65 = v33;
          v61 = v32;
          sub_1D6D7D550();
          v32 = v61;
          v33 = v65;
        }
      }

      else
      {
        v37 = v32;
        sub_1D6D66058(v36, v62);
        v38 = sub_1D5B69D90(v71, v69);
        v40 = v39 & 1;
        v32 = v37;
        v41 = v37 & 1;
        v2 = v66;
        if (v41 != v40)
        {
          goto LABEL_53;
        }

        v33 = v38;
      }

      if (v32)
      {
        v63 = v33;

        v21 = v75;
        *(v75[7] + 8 * v63) = v28;
      }

      else
      {
        v21 = v75;
        v75[(v33 >> 6) + 8] |= 1 << v33;
        v42 = (v21[6] + 16 * v33);
        *v42 = v71;
        v42[1] = v69;
        *(v21[7] + 8 * v33) = v28;
        v43 = v21[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_50;
        }

        v21[2] = v45;
      }

      v46 = *((v28 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v47 = *(v46 + 40);
      if (v47)
      {
        v64 = v21;
        v70 = *(v46 + 32);

        v67 = swift_isUniquelyReferenced_nonNull_native();
        v75 = v72;
        v48 = sub_1D5B69D90(v70, v47);
        v50 = *(v72 + 16);
        v51 = (v49 & 1) == 0;
        v44 = __OFADD__(v50, v51);
        v52 = v50 + v51;
        if (v44)
        {
          goto LABEL_51;
        }

        if (*(v72 + 24) >= v52)
        {
          if (v67)
          {
            v54 = v47;
            if (v49)
            {
              goto LABEL_42;
            }
          }

          else
          {
            v68 = v48;
            v74 = v49;
            sub_1D6D7D550();
            v48 = v68;
            v54 = v47;
            if (v74)
            {
              goto LABEL_42;
            }
          }
        }

        else
        {
          v73 = v49;
          sub_1D6D66058(v52, v67);
          v48 = sub_1D5B69D90(v70, v47);
          if ((v73 & 1) != (v53 & 1))
          {
            goto LABEL_53;
          }

          v54 = v47;
          if (v73)
          {
LABEL_42:
            v55 = v48;

            v72 = v75;
            *(v75[7] + 8 * v55) = v28;

            goto LABEL_46;
          }
        }

        v56 = v75;
        v75[(v48 >> 6) + 8] |= 1 << v48;
        v57 = (v56[6] + 16 * v48);
        *v57 = v70;
        v57[1] = v54;
        *(v56[7] + 8 * v48) = v28;
        v58 = v56[2];
        v44 = __OFADD__(v58, 1);
        v59 = v58 + 1;
        if (v44)
        {
          goto LABEL_52;
        }

        v72 = v56;
        v56[2] = v59;
LABEL_46:

        v21 = v64;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v29 >= v25)
    {

      v2[3] = v21;
      v2[4] = v72;
      v2[5] = v76;
      return v2;
    }

    v24 = *(v19 + 56 + 8 * v29);
    ++v26;
    if (v24)
    {
      v26 = v29;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

char *sub_1D6FA3918(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a4;
    v6 = 0;
    v68 = *a2;
    v7 = a1 + 32;
    v8 = a4 + 56;
    v70 = MEMORY[0x1E69E7CC0];
    v64 = a1 + 32;
    v65 = *(a1 + 16);
    v66 = a4 + 56;
    while (1)
    {
      v9 = *(v7 + 8 * v6);
      v10 = v9 >> 62;
      if ((v9 >> 62) > 1)
      {
        if (v10 != 2)
        {
          v25 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v26 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v27 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x19);
          if (*((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x1A))
          {
            v28 = 2;
          }

          else
          {
            v28 = 1;
          }

          type metadata accessor for SportsTaxonomyGraphSectionNode();
          v29 = swift_allocObject();
          v30 = MEMORY[0x1E69E7CC0];
          *(v29 + 40) = MEMORY[0x1E69E7CC0];
          *(v29 + 48) = v30;
          *(v29 + 16) = v26;
          *(v29 + 24) = 0;
          *(v29 + 32) = v28;
          *(v29 + 17) = v27;
          v31 = swift_allocObject();
          *(v31 + 16) = v29;
          v73[0] = v68;
          type metadata accessor for SportsTaxonomyGraphNodeWeakReference();
          swift_allocObject();

          sub_1D613DCC8(v73);
          v32 = swift_beginAccess();
          MEMORY[0x1DA6F9CE0](v32);
          if (*((*(v29 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v29 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
          }

          v33 = v31 | 0xC000000000000000;
          sub_1D726278C();
          swift_endAccess();
          v73[0] = v33;
          v5 = a4;
          v34 = sub_1D6FA3918(v25, v73, a3, a4);
          swift_beginAccess();
          sub_1D698532C(v34);
          swift_endAccess();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v70 = sub_1D698BF5C(0, *(v70 + 2) + 1, 1, v70);
          }

          v7 = v64;
          v8 = v66;
          v36 = *(v70 + 2);
          v35 = *(v70 + 3);
          if (v36 >= v35 >> 1)
          {
            v70 = sub_1D698BF5C((v35 > 1), v36 + 1, 1, v70);
          }

          *(v70 + 2) = v36 + 1;
          *&v70[8 * v36 + 32] = v33;

          v4 = v65;
          goto LABEL_4;
        }

        v21 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        v74 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v75[0] = v21;
        *(v75 + 10) = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x2A);
        v71 = v68;

        sub_1D618D150(&v74, v73);
        sub_1D6FA4570(&v74, &v71, a3, v5, &v72);
        sub_1D618D1AC(&v74);
        v22 = v72;
        if ((~v72 & 0xF000000000000007) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v70 = sub_1D698BF5C(0, *(v70 + 2) + 1, 1, v70);
          }

          v24 = *(v70 + 2);
          v23 = *(v70 + 3);
          if (v24 >= v23 >> 1)
          {
            v70 = sub_1D698BF5C((v23 > 1), v24 + 1, 1, v70);
          }

          *(v70 + 2) = v24 + 1;
          *&v70[8 * v24 + 32] = v22;

          v8 = v66;
          goto LABEL_4;
        }

        goto LABEL_3;
      }

      if (!v10)
      {
        goto LABEL_4;
      }

      v11 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v13 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v14 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v67 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      if (*(v5 + 16))
      {
        sub_1D7264A0C();

        swift_bridgeObjectRetain_n();

        sub_1D72621EC();
        v15 = sub_1D7264A5C();
        v16 = -1 << *(v5 + 32);
        v17 = v15 & ~v16;
        if ((*(v8 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
        {
          v18 = ~v16;
          while (1)
          {
            v19 = (*(v5 + 48) + 16 * v17);
            v20 = *v19 == v11 && v19[1] == v12;
            if (v20 || (sub_1D72646CC() & 1) != 0)
            {
              break;
            }

            v17 = (v17 + 1) & v18;
            if (((*(v8 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          if (qword_1EDF17590 != -1)
          {
            swift_once();
          }

          v48 = sub_1D725C42C();
          __swift_project_value_buffer(v48, qword_1EDF17598);

          v49 = sub_1D725C3FC();
          v50 = sub_1D7262EBC();

          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            v73[0] = v52;
            *v51 = 136446210;
            *(v51 + 4) = sub_1D5BC5100(v11, v12, v73);
            _os_log_impl(&dword_1D5B42000, v49, v50, "Taxonomy graph contains loop. Node with tagId=%{public}s is it's own ancestor. Ignoring descendent node.", v51, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v52);
            v53 = v52;
            v8 = v66;
            MEMORY[0x1DA6FD500](v53, -1, -1);
            MEMORY[0x1DA6FD500](v51, -1, -1);
          }

          v7 = v64;
          v4 = v65;
          goto LABEL_4;
        }
      }

      else
      {

        swift_bridgeObjectRetain_n();
      }

LABEL_35:
      v37 = *a3;
      if (!*(*a3 + 16) || (v38 = sub_1D5B69D90(v11, v12), (v39 & 1) == 0))
      {
        type metadata accessor for SportsTaxonomyGraphLeafEntityNode();
        v43 = swift_allocObject();
        *(v43 + 56) = MEMORY[0x1E69E7CC0];
        *(v43 + 16) = v11;
        *(v43 + 24) = v12;
        *(v43 + 32) = v13;
        *(v43 + 40) = v67;
        *(v43 + 48) = v14;
        v44 = swift_allocObject();
        *(v44 + 16) = v43;
        v45 = v44 | 0x4000000000000000;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v73[0] = *a3;
        sub_1D6D769CC(v45, v11, v12, isUniquelyReferenced_nonNull_native);

        *a3 = v73[0];
        v73[0] = v68;
        type metadata accessor for SportsTaxonomyGraphNodeWeakReference();
        swift_allocObject();

        sub_1D613DCC8(v73);
        v47 = swift_beginAccess();
        MEMORY[0x1DA6F9CE0](v47);
        if (*((*(v43 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v43 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        swift_endAccess();

        v4 = v65;
        v8 = v66;
        v41 = v45;
        goto LABEL_58;
      }

      v40 = v38;

      v41 = *(*(v37 + 56) + 8 * v40);
      v42 = v41 >> 62;
      if ((v41 >> 62) > 1)
      {
        break;
      }

      v4 = v65;
      if (v42)
      {
        v56 = *((v41 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v73[0] = v68;
        type metadata accessor for SportsTaxonomyGraphNodeWeakReference();
        swift_allocObject();

        sub_1D613DCC8(v73);
        v57 = swift_beginAccess();
        MEMORY[0x1DA6F9CE0](v57);
        if (*((*(v56 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v56 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

LABEL_57:
        sub_1D726278C();
        swift_endAccess();

        v8 = v66;
        goto LABEL_58;
      }

LABEL_58:
      v7 = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = sub_1D698BF5C(0, *(v70 + 2) + 1, 1, v70);
      }

      v5 = a4;
      v61 = *(v70 + 2);
      v60 = *(v70 + 3);
      if (v61 >= v60 >> 1)
      {
        v70 = sub_1D698BF5C((v60 > 1), v61 + 1, 1, v70);
      }

      *(v70 + 2) = v61 + 1;
      *&v70[8 * v61 + 32] = v41;
LABEL_3:

LABEL_4:
      if (++v6 == v4)
      {
        return v70;
      }
    }

    v4 = v65;
    if (v42 == 3)
    {
      v54 = *((v41 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v73[0] = v68;
      type metadata accessor for SportsTaxonomyGraphNodeWeakReference();
      swift_allocObject();

      sub_1D613DCC8(v73);
      v55 = swift_beginAccess();
      MEMORY[0x1DA6F9CE0](v55);
      if (*((*(v54 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v54 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }
    }

    else
    {
      v58 = *((v41 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v73[0] = v68;
      type metadata accessor for SportsTaxonomyGraphNodeWeakReference();
      swift_allocObject();

      sub_1D613DCC8(v73);
      v59 = swift_beginAccess();
      MEMORY[0x1DA6F9CE0](v59);
      if (*((*(v58 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v58 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }
    }

    goto LABEL_57;
  }

  return MEMORY[0x1E69E7CC0];
}

Swift::String_optional __swiftcall SportsTaxonomyGraph.tagId(for:)(Swift::String a1)
{
  v2 = *(v1 + 32);
  if (*(v2 + 16) && (v3 = sub_1D5B69D90(a1._countAndFlagsBits, a1._object), (v4 & 1) != 0) && (v5 = *(*(v2 + 56) + 8 * v3), (v5 >> 62) - 1 <= 1))
  {
    v6 = *(*((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) + 16);

    v8 = v6;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  result.value._object = v7;
  result.value._countAndFlagsBits = v8;
  return result;
}

Swift::String_optional __swiftcall SportsTaxonomyGraph.umcCanonicalId(for:)(Swift::String a1)
{
  v2 = *(v1 + 24);
  if (*(v2 + 16) && (v3 = sub_1D5B69D90(a1._countAndFlagsBits, a1._object), (v4 & 1) != 0) && (v5 = *(*(v2 + 56) + 8 * v3), (v5 >> 62) - 1 <= 1))
  {
    v6 = *(*((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) + 32);

    v8 = v6;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  result.value._object = v7;
  result.value._countAndFlagsBits = v8;
  return result;
}

unint64_t SportsTaxonomyGraph.node(for:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 24);
  if (*(v5 + 16) && (result = sub_1D5B69D90(result, a2), (v6 & 1) != 0))
  {
    *a3 = *(*(v5 + 56) + 8 * result);
  }

  else
  {
    *a3 = 0xF000000000000007;
  }

  return result;
}

uint64_t SportsTaxonomyGraph.deinit()
{

  return v0;
}

uint64_t SportsTaxonomyGraph.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1D6FA4570(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v9 = *a2;
  v11 = *a1;
  v10 = *(a1 + 8);

  if (sub_1D5BE240C(v11, v10, a4))
  {

    if (qword_1EDF17590 != -1)
    {
      swift_once();
    }

    v12 = sub_1D725C42C();
    __swift_project_value_buffer(v12, qword_1EDF17598);
    sub_1D618D150(a1, v34);
    v13 = sub_1D725C3FC();
    v14 = sub_1D7262EDC();
    sub_1D618D1AC(a1);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v34[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1D5BC5100(v11, v10, v34);
      _os_log_impl(&dword_1D5B42000, v13, v14, "Taxonomy graph contains loop. Node with tagId=%s is it's own ancestor. Ignoring descendent node.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1DA6FD500](v16, -1, -1);
      MEMORY[0x1DA6FD500](v15, -1, -1);
    }

    v17 = 0xF000000000000007;
  }

  else
  {
    v18 = *a3;
    if (*(*a3 + 16) && (v19 = sub_1D5B69D90(v11, v10), (v20 & 1) != 0))
    {
      v21 = v19;

      v17 = *(*(v18 + 56) + 8 * v21);
      v34[0] = v17;
      *&v35 = v9;

      sub_1D6C4BFF4(&v35);
    }

    else
    {
      v35 = *(a1 + 16);
      v22 = *(a1 + 40);
      type metadata accessor for SportsTaxonomyGraphEntityNode();
      v33 = a5;
      v23 = swift_allocObject();
      v24 = MEMORY[0x1E69E7CC0];
      *(v23 + 56) = MEMORY[0x1E69E7CC0];
      *(v23 + 64) = v24;
      *(v23 + 16) = v11;
      *(v23 + 24) = v10;
      *(v23 + 32) = *(a1 + 16);
      *(v23 + 48) = v22;
      v25 = swift_allocObject();
      *(v25 + 16) = v23;
      v17 = v25 | 0x8000000000000000;
      sub_1D5B5D494(0, &qword_1EDF195B0, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7273AE0;
      *(inited + 32) = v11;
      *(inited + 40) = v10;

      sub_1D618D200(&v35, v34);

      v27 = sub_1D5BA8750(inited, a4);
      swift_setDeallocating();
      sub_1D5BFB68C(inited + 32);
      v28 = *(v23 + 16);
      v29 = *(v23 + 24);
      swift_retain_n();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34[0] = *a3;
      sub_1D6D769CC(v17, v28, v29, isUniquelyReferenced_nonNull_native);

      *a3 = v34[0];
      v34[0] = v9;
      sub_1D71F1DCC(v34);
      v31 = *(a1 + 32);
      v34[0] = v17;
      v32 = sub_1D6FA3918(v31, v34, a3, v27);

      swift_beginAccess();
      sub_1D698532C(v32);
      swift_endAccess();

      a5 = v33;
    }
  }

  *a5 = v17;
}

uint64_t sub_1D6FA4990(void *a1, unint64_t *a2)
{
  v2 = *a2;
  if ((*a1 >> 62) - 1 > 1)
  {
    v5 = 0;
    v4 = 0;
  }

  else
  {
    v3 = *((*a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v5 = *(v3 + 16);
    v4 = *(v3 + 24);
  }

  if ((v2 >> 62) - 1 > 1)
  {
    v8 = 0;
    v7 = 0;
    if (v4)
    {
LABEL_6:
      if (v7)
      {
        if (v5 == v8 && v4 == v7)
        {

          v9 = 1;
        }

        else
        {
          v9 = sub_1D72646CC();
        }
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v8 = *(v6 + 16);
    v7 = *(v6 + 24);

    if (v4)
    {
      goto LABEL_6;
    }
  }

  if (!v7)
  {
    v9 = 1;
    return v9 & 1;
  }

  v9 = 0;
LABEL_15:

  return v9 & 1;
}

unint64_t sub_1D6FA4AA8()
{
  result = qword_1EDF0F6D8;
  if (!qword_1EDF0F6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F6D8);
  }

  return result;
}

uint64_t EngagementBannerViewRenderer.render(for:with:in:)(uint64_t a1, double *a2, char *a3)
{
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  v9 = OBJC_IVAR____TtC8NewsFeed20EngagementBannerView_engagementView;
  swift_beginAccess();
  v10 = *&a3[v9];
  if (v10)
  {
    [v10 setFrame_];
    v11 = *&a3[v9];
    if (v11)
    {
      v12 = v11;
      v16.origin.x = v5;
      v16.origin.y = v6;
      v16.size.width = v7;
      v16.size.height = v8;
      [v12 setHidden_];
    }
  }

  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  type metadata accessor for FeedEngagementBanner();
  v13 = sub_1D725C04C();
  sub_1D69388DC(a3, v13, v14);
}

uint64_t EngagementBannerViewRenderer.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t FeedItemRendererPipelineProcessor.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  sub_1D6FA879C(v0 + OBJC_IVAR____TtC8NewsFeed33FeedItemRendererPipelineProcessor_lastRendererOptions, &qword_1EDF439E8, MEMORY[0x1E69D7978]);
  return v0;
}

uint64_t FeedItemRendererPipelineProcessor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  sub_1D6FA879C(v0 + OBJC_IVAR____TtC8NewsFeed33FeedItemRendererPipelineProcessor_lastRendererOptions, &qword_1EDF439E8, MEMORY[0x1E69D7978]);

  return swift_deallocClassInstance();
}

uint64_t sub_1D6FA4E0C()
{
  v0 = sub_1D725D58C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v49 - v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v49 - v11;
  sub_1D725E13C();
  v13 = sub_1D725D56C();
  v14 = *(v1 + 8);
  v14(v12, v0);
  sub_1D725E13C();
  if (v13)
  {
    sub_1D725D57C();
    y = v16;
    x = v15;
    v14(v12, v0);
    sub_1D725E13C();
    sub_1D725D54C();
    v14(v8, v0);
    sub_1D725E13C();
    sub_1D725D53C();
    v14(v4, v0);
    return sub_1D725E9BC();
  }

  else
  {
    sub_1D725D54C();
    y = v19;
    x = v18;
    v14(v12, v0);
    sub_1D725E13C();
    sub_1D725D53C();
    v14(v8, v0);
    v20 = sub_1D725E9BC();
    v21 = MEMORY[0x1E69E7CC0];
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = MEMORY[0x1E69E7CC0];
    }

    sub_1D725E13C();
    sub_1D725D57C();
    x = v23;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v14(v12, v0);
    sub_1D725E13C();
    sub_1D725D57C();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v14(v8, v0);
    v53.origin.x = v31;
    v53.origin.y = v33;
    v53.size.width = v35;
    v53.size.height = v37;
    v38 = -CGRectGetWidth(v53);
    sub_1D725E13C();
    sub_1D725D57C();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v14(v8, v0);
    v54.origin.x = v40;
    v54.origin.y = v42;
    v54.size.width = v44;
    v54.size.height = v46;
    v47 = -CGRectGetHeight(v54);
    v55.origin.x = x;
    v55.origin.y = v25;
    v55.size.width = v27;
    v55.size.height = v29;
    v56 = CGRectInset(v55, v38, v47);
    y = v56.origin.y;
    x = v56.origin.x;
    sub_1D725E13C();
    sub_1D725D54C();
    v14(v12, v0);
    sub_1D725E13C();
    sub_1D725D53C();
    v14(v8, v0);
    v48 = sub_1D725E9BC();
    if (!v48)
    {
      v48 = v21;
    }

    v52 = v22;
    sub_1D6988D60(v48);
    return v52;
  }
}

void sub_1D6FA5278(uint64_t a1, uint64_t a2)
{
  sub_1D5B76B10(a1, v25);
  sub_1D5B49474(0, &qword_1EDF1FE30);
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(&v26, v29);
    v5 = v30;
    v6 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    (*(v6 + 8))(&v26, a2 + OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_imageRequestOptions, v5, v6);
    sub_1D6FA5748(v2 + 2, &v26);
    sub_1D6FA883C(&v26, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    sub_1D6FA883C(&v26, &qword_1EDF1FE28, &qword_1EDF1FE30, &protocol descriptor for ThumbnailImageRequestProviding);
  }

  sub_1D5B76B10(a1, v25);
  sub_1D5B49474(0, qword_1EDF1DC08);
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(&v26, v29);
    v7 = v30;
    v8 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    (*(v8 + 8))(&v26, a2 + OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_imageRequestOptions, v7, v8);
    sub_1D6FA5748(v2 + 7, &v26);
    sub_1D6FA883C(&v26, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    sub_1D6FA883C(&v26, &qword_1EDF1DC00, qword_1EDF1DC08, &protocol descriptor for PublisherLogoImageRequestProviding);
  }

  sub_1D5B76B10(a1, v25);
  sub_1D5B49474(0, qword_1EDF1F768);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    sub_1D6FA883C(&v26, &qword_1EDF1F760, qword_1EDF1F768, &protocol descriptor for IssueCoverImageRequestProviding);
    return;
  }

  sub_1D5B63F14(&v26, v29);
  v9 = v30;
  v10 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v11 = (*(v10 + 8))(a2 + OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_imageRequestOptions, v9, v10);
  if (v11)
  {
    v12 = *(v11 + 16);
    if (v12)
    {
      v22 = OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_isLiveResizing;
      v21 = OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_loadingGroup;
      v13 = OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_prewarmedRequestCount;
      v14 = v11 + 32;
      do
      {
        sub_1D5B68374(v14, &v26);
        sub_1D5BFED1C(&v26, &v23);
        if (v24)
        {
          sub_1D5B63F14(&v23, v25);
          if (*(a2 + v22) & 1) != 0 && (__swift_project_boxed_opaque_existential_1(v25, v25[3]), (ProcessedImageRequestType.isDownloaded.getter()))
          {
            dispatch_group_enter(*(a2 + v21));
            v16 = 1;
          }

          else
          {
            v16 = 0;
          }

          v17 = *(a2 + v13);
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            __break(1u);
            return;
          }

          *(a2 + v13) = v19;
          __swift_project_boxed_opaque_existential_1(v2 + 17, v2[20]);
          v20 = swift_allocObject();
          *(v20 + 16) = v16;
          *(v20 + 24) = a2;

          sub_1D725D0DC();

          sub_1D6FA883C(&v26, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
          __swift_destroy_boxed_opaque_existential_1(v25);
        }

        else
        {
          v15 = MEMORY[0x1E69D8160];
          sub_1D6FA883C(&v26, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
          sub_1D6FA883C(&v23, &qword_1EDF3B4D0, &qword_1EDF3B4D8, v15);
        }

        v14 += 40;
        --v12;
      }

      while (v12);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v29);
}

void sub_1D6FA5748(void *a1, uint64_t a2)
{
  sub_1D5BFED1C(a2, &v9);
  if (v10)
  {
    sub_1D5B63F14(&v9, v11);
    if (*(v2 + OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_isLiveResizing) == 1)
    {
      __swift_project_boxed_opaque_existential_1(v11, v11[3]);
      if (ProcessedImageRequestType.isDownloaded.getter())
      {
        dispatch_group_enter(*(v2 + OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_loadingGroup));
        v4 = 1;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }

    v5 = *(v2 + OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_prewarmedRequestCount);
    v6 = __OFADD__(v5, 1);
    v7 = v5 + 1;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      *(v2 + OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_prewarmedRequestCount) = v7;
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v8 = swift_allocObject();
      *(v8 + 16) = v4;
      *(v8 + 24) = v2;

      sub_1D725D0DC();

      __swift_destroy_boxed_opaque_existential_1(v11);
    }
  }

  else
  {
    sub_1D6FA883C(&v9, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
  }
}

uint64_t sub_1D6FA58DC()
{
  sub_1D6081448(v0 + OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_imageRequestOptions);

  return swift_deallocClassInstance();
}

uint64_t (*sub_1D6FA59D0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11))()
{
  v351 = a3;
  v345 = a2;
  v337 = a1;
  v13 = sub_1D7261B5C();
  v317 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v316 = &v287 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v342 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v334 = &v287 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D725DDFC();
  v340 = *(v19 - 8);
  v341 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v333 = &v287 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v315 = &v287 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v346 = &v287 - v27;
  v368 = a6;
  v338 = a7;
  v369 = a7;
  v335 = a10;
  v336 = a11;
  v370 = a10;
  v371 = a11;
  v28 = sub_1D725E28C();
  v320 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v29);
  v323 = &v287 - v30;
  v327 = a6;
  v319 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v31, v32);
  v322 = (&v287 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34, v35);
  v324 = &v287 - v36;
  v347 = sub_1D7258DBC();
  v321 = *(v347 - 8);
  MEMORY[0x1EEE9AC00](v347, v37);
  v314 = &v287 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v330 = &v287 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v343 = &v287 - v44;
  sub_1D5B53BE4(0, &qword_1EDF3B4B8, MEMORY[0x1E69D8468]);
  MEMORY[0x1EEE9AC00](v45 - 8, v46);
  v352 = &v287 - v47;
  v354 = sub_1D725EF6C();
  v318 = *(v354 - 8);
  MEMORY[0x1EEE9AC00](v354, v48);
  v328 = &v287 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50, v51);
  v332 = &v287 - v52;
  v331 = type metadata accessor for ImageRequestOptions();
  MEMORY[0x1EEE9AC00](v331, v53);
  v339 = &v287 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B53BE4(0, &qword_1EDF439E8, MEMORY[0x1E69D7978]);
  MEMORY[0x1EEE9AC00](v55 - 8, v56);
  v58 = &v287 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59, v60);
  v62 = &v287 - v61;
  v63 = sub_1D725D58C();
  v348 = *(v63 - 8);
  v349 = v63;
  MEMORY[0x1EEE9AC00](v63, v64);
  v344 = (&v287 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v66, v67);
  v350 = (&v287 - v68);
  MEMORY[0x1EEE9AC00](v69, v70);
  v72 = &v287 - v71;
  v73 = sub_1D725EB5C();
  v74 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v75);
  v77 = &v287 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v78, v79);
  v81 = &v287 - v80;
  if (([objc_opt_self() isMainThread] & 1) == 0)
  {
    v307 = v13;
    v308 = v28;
    sub_1D725E20C();
    (*(v74 + 104))(v77, *MEMORY[0x1E69D81B0], v73);
    v82 = sub_1D725EB4C();
    v83 = *(v74 + 8);
    v83(v77, v73);
    v83(v81, v73);
    if (v82)
    {
      v84 = OBJC_IVAR____TtC8NewsFeed33FeedItemRendererPipelineProcessor_lastRendererOptions;
      v85 = v353;
      swift_beginAccess();
      sub_1D6FA869C(v85 + v84, v62);
      v87 = v348;
      v86 = v349;
      if (v348[6](v62, 1, v349) == 1)
      {
        sub_1D6FA879C(v62, &qword_1EDF439E8, MEMORY[0x1E69D7978]);
      }

      else
      {
        v87[4](v72, v62, v86);
        v88 = v350;
        sub_1D725E13C();
        sub_1D725D57C();
        v90 = v89;
        v92 = v91;
        v94 = v93;
        v96 = v95;
        v97 = v87[1];
        (v97)(v88, v86);
        v372.origin.x = v90;
        v372.origin.y = v92;
        v372.size.width = v94;
        v372.size.height = v96;
        Width = CGRectGetWidth(v372);
        sub_1D725D57C();
        if (Width != CGRectGetWidth(v373))
        {
          v99 = v353;
          v100 = v353[5];
          v329 = v353[6];
          __swift_project_boxed_opaque_existential_1(v353 + 2, v100);
          sub_1D725D0CC();
          v101 = v99[10];
          v329 = v99[11];
          __swift_project_boxed_opaque_existential_1(v99 + 7, v101);
          sub_1D725D0CC();
          v102 = v99[15];
          v329 = v99[16];
          v103 = v99 + 12;
          v86 = v349;
          __swift_project_boxed_opaque_existential_1(v103, v102);
          sub_1D725D0CC();
        }

        (v97)(v72, v86);
        v87 = v348;
      }

      sub_1D725E13C();
      (v87[7])(v58, 0, 1, v86);
      v104 = v353;
      swift_beginAccess();
      sub_1D6FA871C(v58, v104 + v84);
      swift_endAccess();
      v105 = v350;
      sub_1D725E13C();
      sub_1D725D57C();
      v107 = v106;
      v109 = v108;
      v111 = v110;
      v113 = v112;
      v114 = v87[1];
      (v114)(v105, v86);
      v374.origin.x = v107;
      v374.origin.y = v109;
      v374.size.width = v111;
      v374.size.height = v113;
      v115 = CGRectGetWidth(v374);
      v116 = v344;
      sub_1D725E13C();
      sub_1D725D57C();
      v118 = v117;
      v120 = v119;
      v122 = v121;
      v124 = v123;
      (v114)(v116, v86);
      v375.origin.x = v118;
      v375.origin.y = v120;
      v375.size.width = v122;
      v375.size.height = v124;
      Height = CGRectGetHeight(v375);
      v126 = sub_1D6FA4E0C();
      v127 = &qword_1EDF1B000;
      v128 = &unk_1EDFFC000;
      if (v126)
      {
        v129 = v126 >> 62;
        if (v126 >> 62)
        {
          goto LABEL_153;
        }

        v130 = v126;
        for (i = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
        {
          v344 = i;
          v132 = CACurrentMediaTime();
          v133 = v130;
          if (v127[362] != -1)
          {
            goto LABEL_161;
          }

          while (1)
          {
            v134 = v128[261];
            sub_1D7262EAC();
            sub_1D5C166FC(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
            v291 = v135;
            v136 = swift_allocObject();
            *(v136 + 16) = xmmword_1D7273AE0;
            v326 = v133 & 0xFFFFFFFFFFFFFF8;
            v137 = v129 ? sub_1D7263BFC() : *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v138 = MEMORY[0x1E69E65A8];
            *(v136 + 56) = MEMORY[0x1E69E6530];
            *(v136 + 64) = v138;
            v290 = v137;
            *(v136 + 32) = v137;
            v292 = v134;
            sub_1D725C30C();

            v139 = v350;
            sub_1D725E13C();
            v140 = sub_1D725D56C();
            (v114)(v139, v349);
            sub_1D725E15C();
            v142 = v141;
            v143 = sub_1D725E1AC();
            v144 = *(v331 + 24);
            v145 = sub_1D725CB5C();
            v146 = v339;
            (*(*(v145 - 8) + 56))(&v339[v144], 1, 1, v145);
            *v146 = v142;
            v146[1] = v143;
            type metadata accessor for FeedItemRendererPipelineProcessor.Context(0);
            v127 = swift_allocObject();
            v128 = &unk_1EDF35000;
            *(v127 + OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_prewarmedRequestCount) = 0;
            v147 = OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_loadingGroup;
            *(v127 + v147) = dispatch_group_create();
            v148 = MEMORY[0x1E69E7CD0];
            *(v127 + OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_supplementaryIndicesSeen) = MEMORY[0x1E69E7CD0];
            *(v127 + OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_supplementaryIndexPathsSeen) = v148;
            *(v127 + OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_isLiveResizing) = v140 & 1;
            sub_1D6E8B158(v146, v127 + OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_imageRequestOptions);
            v149 = OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_supplementaryIndexPathsSeen;
            v339 = OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_imageRequestOptions;
            v349 = OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_isLiveResizing;
            v329 = OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_loadingGroup;
            v351 = OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_prewarmedRequestCount;
            v345 = v133 & 0xC000000000000001;
            v300 = OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_supplementaryIndicesSeen;
            swift_beginAccess();
            v298 = v149;
            swift_beginAccess();
            v126 = 0;
            v325 = v133 + 32;
            v331 = v321 + 8;
            v313 = (v340 + 8);
            v312 = (v342 + 16);
            v311 = (v342 + 8);
            v310 = (v318 + 6);
            v305 = (v318 + 2);
            v306 = (v318 + 4);
            v304 = (v318 + 11);
            v303 = *MEMORY[0x1E69D8460];
            v299 = *MEMORY[0x1E69D8458];
            v301 = (v318 + 1);
            v293 = (v321 + 32);
            v294 = (v318 + 12);
            v318 = (v321 + 16);
            v289 = (v340 + 16);
            v296 = (v319 + 16);
            v297 = (v320 + 8);
            v295 = (v319 + 8);
            v129 = v327;
            v150 = v346;
            v151 = v352;
            v114 = v354;
            v152 = v341;
            v302 = v133;
LABEL_18:
            if (v345)
            {
              break;
            }

            if (v126 >= *(v326 + 16))
            {
              goto LABEL_148;
            }

            v155 = v126;
            v126 = *(v325 + 8 * v126);
            v154 = __OFADD__(v155, 1);
            v128 = (v155 + 1);
            if (v154)
            {
              goto LABEL_146;
            }

LABEL_24:
            v350 = v128;
            v156 = v126;
            v157 = [v156 representedElementCategory];
            if (!v157)
            {
              v158 = [v156 indexPath];
              v159 = v343;
              sub_1D7258D6C();

              v368 = v129;
              v160 = v338;
              v369 = v338;
              v370 = v335;
              v371 = v336;
              sub_1D725D34C();
              v161 = v333;
              sub_1D725D35C();
              (*v331)(v159, v347);
              v162 = v334;
              sub_1D725DDEC();
              v163 = v161;
              v151 = v352;
              (*v313)(v163, v152);
              v371 = v160;
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v368);
              (*v312)(boxed_opaque_existential_1, v162, v160);
              [v156 frame];
              v166 = v165;
              v168 = v167;
              v170 = v169;
              v172 = v171;

              v376.origin.x = 0.0;
              v376.origin.y = 0.0;
              v376.size.width = v115;
              v376.size.height = Height;
              v380.origin.x = v166;
              v380.origin.y = v168;
              v380.size.width = v170;
              v380.size.height = v172;
              CGRectIntersectsRect(v376, v380);
              v128 = v353;
              sub_1D6FA5278(&v368, v127);

              v173 = v162;
              v150 = v346;
              v174 = v160;
              v114 = v354;
              (*v311)(v173, v174);
              __swift_destroy_boxed_opaque_existential_1(&v368);
              goto LABEL_17;
            }

            if (v157 != 1)
            {

LABEL_17:
              v126 = v350;
              if (v350 == v344)
              {

                v279 = v316;
                sub_1D7261B3C();
                sub_1D726301C();
                (*(v317 + 8))(v279, v307);
                v280 = CACurrentMediaTime();
                sub_1D7262EAC();
                v281 = swift_allocObject();
                *(v281 + 16) = xmmword_1D7279970;
                v282 = MEMORY[0x1E69E6530];
                *(v281 + 56) = MEMORY[0x1E69E6530];
                v283 = MEMORY[0x1E69E65A8];
                *(v281 + 32) = v290;
                v284 = *(v127 + v351);
                *(v281 + 96) = v282;
                *(v281 + 104) = v283;
                *(v281 + 64) = v283;
                *(v281 + 72) = v284;
                v285 = MEMORY[0x1E69E6438];
                *(v281 + 136) = MEMORY[0x1E69E63B0];
                *(v281 + 144) = v285;
                *(v281 + 112) = (v280 - v132) * 1000.0;
                sub_1D725C30C();

                return nullsub_1;
              }

              goto LABEL_18;
            }

            v128 = v156;
            sub_1D725C99C();
            if ((*v310)(v151, 1, v114) == 1)
            {

              sub_1D6FA879C(v151, &qword_1EDF3B4B8, MEMORY[0x1E69D8468]);
              goto LABEL_17;
            }

            v340 = v156;
            v175 = v332;
            (*v306)(v332, v151, v114);
            v176 = v328;
            (*v305)(v328, v175, v114);
            v177 = (*v304)(v176, v114);
            v178 = v347;
            if (v177 == v303)
            {
              v179 = v340;
              v180 = [v340 indexPath];
              v181 = v343;
              sub_1D7258D6C();

              v182 = sub_1D7258DAC();
              v183 = v181;
              v114 = v354;
              (*v331)(v183, v178);
              v128 = *(v127 + v300);
              v151 = v352;
              if (v128[2])
              {
                v184 = sub_1D72649FC();
                v185 = -1 << *(v128 + 32);
                v186 = v184 & ~v185;
                if ((*(v128 + ((v186 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v186))
                {
                  v187 = ~v185;
                  while (*(v128[6] + 8 * v186) != v182)
                  {
                    v186 = (v186 + 1) & v187;
                    if (((*(v128 + ((v186 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v186) & 1) == 0)
                    {
                      goto LABEL_35;
                    }
                  }

                  (*v301)(v332, v114);
                  v129 = v327;
                  goto LABEL_17;
                }
              }

LABEL_35:
              swift_beginAccess();
              sub_1D5FE917C(&v365, v182);
              swift_endAccess();
              v188 = v327;
              v368 = v327;
              v369 = v338;
              v370 = v335;
              v371 = v336;
              sub_1D725D34C();
              v189 = v323;
              v129 = v188;
              sub_1D725D36C();
              v190 = v324;
              v191 = v308;
              sub_1D725E24C();
              (*v297)(v189, v191);
              v371 = v188;
              v192 = __swift_allocate_boxed_opaque_existential_1(&v368);
              v193 = *v296;
              (*v296)(v192, v190, v188);
              [v179 frame];
              v381.origin.x = v194;
              v381.origin.y = v195;
              v381.size.width = v196;
              v381.size.height = v197;
              v377.origin.x = 0.0;
              v377.origin.y = 0.0;
              v377.size.width = v115;
              v377.size.height = Height;
              CGRectIntersectsRect(v377, v381);
              sub_1D6FA5278(&v368, v127);
              __swift_destroy_boxed_opaque_existential_1(&v368);
              v128 = v322;
              v193(v322, v190, v129);
              v198 = MEMORY[0x1E69D8728];
              sub_1D5B49474(0, &qword_1EDF3B468);
              if ((swift_dynamicCast() & 1) == 0)
              {

                (*v295)(v190, v129);
                v114 = v354;
                (*v301)(v332, v354);
                v367 = 0;
                v365 = 0u;
                v366 = 0u;
                sub_1D6FA883C(&v365, &unk_1EDF16E58, &qword_1EDF3B468, v198);
                v151 = v352;
LABEL_138:
                v152 = v341;
                goto LABEL_17;
              }

              sub_1D5B63F14(&v365, &v368);
              v128 = __swift_project_boxed_opaque_existential_1(&v368, v371);
              v126 = sub_1D725F56C();
              v151 = v352;
              if (!v126)
              {

                v129 = v327;
                (*v295)(v190, v327);
                v114 = v354;
                (*v301)(v332, v354);
                __swift_destroy_boxed_opaque_existential_1(&v368);
                goto LABEL_138;
              }

              v114 = v354;
              v152 = v341;
              v342 = *(v126 + 16);
              if (!v342)
              {
LABEL_134:

                v128 = v340;

                v129 = v327;
                (*v295)(v324, v327);
                (*v301)(v332, v114);
                __swift_destroy_boxed_opaque_existential_1(&v368);
                goto LABEL_17;
              }

              v129 = 0;
              v319 = v126;
              v320 = v126 + 32;
              while (2)
              {
                if (v129 >= *(v126 + 16))
                {
                  goto LABEL_149;
                }

                v199 = (v320 + 40 * v129);
                v200 = v199[3];
                v201 = __swift_project_boxed_opaque_existential_1(v199, v200);
                v364 = v200;
                v202 = __swift_allocate_boxed_opaque_existential_1(v363);
                (*(*(v200 - 8) + 16))(v202, v201, v200);
                [v340 frame];
                v382.origin.x = v203;
                v382.origin.y = v204;
                v382.size.width = v205;
                v382.size.height = v206;
                v378.origin.x = 0.0;
                v378.origin.y = 0.0;
                v378.size.width = v115;
                v378.size.height = Height;
                LODWORD(v348) = CGRectIntersectsRect(v378, v382);
                sub_1D5B76B10(v363, v357);
                sub_1D5B49474(0, &qword_1EDF1FE30);
                if (swift_dynamicCast())
                {
                  sub_1D5B63F14(&v360, &v365);
                  v114 = *(&v366 + 1);
                  v207 = v367;
                  v128 = __swift_project_boxed_opaque_existential_1(&v365, *(&v366 + 1));
                  (*(v207 + 8))(&v360, &v339[v127], v114, v207);
                  sub_1D5BFED1C(&v360, &v355);
                  if (v356)
                  {
                    v126 = sub_1D5B63F14(&v355, v357);
                    if (*(v127 + v349) & 1) != 0 && (v114 = v359, v128 = __swift_project_boxed_opaque_existential_1(v357, v358), v126 = ProcessedImageRequestType.isDownloaded.getter(), (v126))
                    {
                      dispatch_group_enter(*(v127 + v329));
                      v208 = 1;
                    }

                    else
                    {
                      v208 = 0;
                    }

                    v209 = *(v127 + v351);
                    v154 = __OFADD__(v209, 1);
                    v210 = v209 + 1;
                    if (v154)
                    {
                      goto LABEL_151;
                    }

                    *(v127 + v351) = v210;
                    __swift_project_boxed_opaque_existential_1(v353 + 2, v353[5]);
                    v211 = swift_allocObject();
                    *(v211 + 16) = v208;
                    *(v211 + 24) = v127;

                    sub_1D725D0DC();
                    v152 = v341;

                    sub_1D6FA883C(&v360, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
                    __swift_destroy_boxed_opaque_existential_1(v357);
                    v151 = v352;
                  }

                  else
                  {
                    v212 = MEMORY[0x1E69D8160];
                    sub_1D6FA883C(&v360, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
                    sub_1D6FA883C(&v355, &qword_1EDF3B4D0, &qword_1EDF3B4D8, v212);
                  }

                  __swift_destroy_boxed_opaque_existential_1(&v365);
                  v150 = v346;
                }

                else
                {
                  v362 = 0;
                  v360 = 0u;
                  v361 = 0u;
                  sub_1D6FA883C(&v360, &qword_1EDF1FE28, &qword_1EDF1FE30, &protocol descriptor for ThumbnailImageRequestProviding);
                }

                sub_1D5B76B10(v363, v357);
                sub_1D5B49474(0, qword_1EDF1DC08);
                if (swift_dynamicCast())
                {
                  sub_1D5B63F14(&v360, &v365);
                  v114 = *(&v366 + 1);
                  v213 = v367;
                  v128 = __swift_project_boxed_opaque_existential_1(&v365, *(&v366 + 1));
                  (*(v213 + 8))(&v360, &v339[v127], v114, v213);
                  sub_1D5BFED1C(&v360, &v355);
                  if (v356)
                  {
                    v126 = sub_1D5B63F14(&v355, v357);
                    if (*(v127 + v349) & 1) != 0 && (v114 = v359, v128 = __swift_project_boxed_opaque_existential_1(v357, v358), v126 = ProcessedImageRequestType.isDownloaded.getter(), (v126))
                    {
                      dispatch_group_enter(*(v127 + v329));
                      v214 = 1;
                    }

                    else
                    {
                      v214 = 0;
                    }

                    v215 = *(v127 + v351);
                    v154 = __OFADD__(v215, 1);
                    v216 = v215 + 1;
                    if (v154)
                    {
                      goto LABEL_152;
                    }

                    *(v127 + v351) = v216;
                    __swift_project_boxed_opaque_existential_1(v353 + 7, v353[10]);
                    v217 = swift_allocObject();
                    *(v217 + 16) = v214;
                    *(v217 + 24) = v127;

                    sub_1D725D0DC();
                    v152 = v341;

                    sub_1D6FA883C(&v360, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
                    __swift_destroy_boxed_opaque_existential_1(v357);
                    v150 = v346;
                    v151 = v352;
                  }

                  else
                  {
                    v218 = MEMORY[0x1E69D8160];
                    sub_1D6FA883C(&v360, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
                    sub_1D6FA883C(&v355, &qword_1EDF3B4D0, &qword_1EDF3B4D8, v218);
                    v150 = v346;
                  }

                  __swift_destroy_boxed_opaque_existential_1(&v365);
                }

                else
                {
                  v362 = 0;
                  v360 = 0u;
                  v361 = 0u;
                  sub_1D6FA883C(&v360, &qword_1EDF1DC00, qword_1EDF1DC08, &protocol descriptor for PublisherLogoImageRequestProviding);
                }

                v128 = qword_1EDF1F768;
                sub_1D5B76B10(v363, v357);
                sub_1D5B49474(0, qword_1EDF1F768);
                if (swift_dynamicCast())
                {
                  sub_1D5B63F14(&v360, &v365);
                  v219 = *(&v366 + 1);
                  v220 = v367;
                  v128 = __swift_project_boxed_opaque_existential_1(&v365, *(&v366 + 1));
                  v221 = (*(v220 + 8))(&v339[v127], v219, v220);
                  if (v221)
                  {
                    v309 = v221;
                    v222 = *(v221 + 16);
                    v114 = v354;
                    if (v222)
                    {
                      v223 = v309 + 32;
                      do
                      {
                        sub_1D5B68374(v223, &v360);
                        sub_1D5BFED1C(&v360, &v355);
                        if (v356)
                        {
                          v126 = sub_1D5B63F14(&v355, v357);
                          if (*(v127 + v349) & 1) != 0 && (v114 = v359, v128 = __swift_project_boxed_opaque_existential_1(v357, v358), v126 = ProcessedImageRequestType.isDownloaded.getter(), (v126))
                          {
                            dispatch_group_enter(*(v127 + v329));
                            v225 = 1;
                          }

                          else
                          {
                            v225 = 0;
                          }

                          v226 = *(v127 + v351);
                          v154 = __OFADD__(v226, 1);
                          v227 = v226 + 1;
                          if (v154)
                          {
                            __break(1u);
                            goto LABEL_146;
                          }

                          *(v127 + v351) = v227;
                          v228 = __swift_project_boxed_opaque_existential_1(v353 + 17, v353[20]);
                          v229 = swift_allocObject();
                          *(v229 + 16) = v225;
                          *(v229 + 24) = v127;

                          v114 = v354;
                          v128 = v228;
                          sub_1D725D0DC();
                          v151 = v352;

                          sub_1D6FA883C(&v360, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
                          __swift_destroy_boxed_opaque_existential_1(v357);
                        }

                        else
                        {
                          v128 = &qword_1EDF3B4D0;
                          v224 = MEMORY[0x1E69D8160];
                          sub_1D6FA883C(&v360, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
                          sub_1D6FA883C(&v355, &qword_1EDF3B4D0, &qword_1EDF3B4D8, v224);
                        }

                        v223 += 40;
                        --v222;
                      }

                      while (v222);
                    }

                    __swift_destroy_boxed_opaque_existential_1(&v365);
                    v152 = v341;
                    v150 = v346;
LABEL_40:
                    ++v129;
                    __swift_destroy_boxed_opaque_existential_1(v363);
                    v126 = v319;
                    if (v129 == v342)
                    {
                      goto LABEL_134;
                    }

                    continue;
                  }

                  __swift_destroy_boxed_opaque_existential_1(&v365);
                  v150 = v346;
                }

                else
                {
                  v362 = 0;
                  v360 = 0u;
                  v361 = 0u;
                  sub_1D6FA883C(&v360, &qword_1EDF1F760, qword_1EDF1F768, &protocol descriptor for IssueCoverImageRequestProviding);
                }

                break;
              }

              v114 = v354;
              goto LABEL_40;
            }

            if (v177 != v299)
            {
              v278 = v340;

              v128 = *v301;
              (*v301)(v332, v114);
              (v128)(v328, v114);
              goto LABEL_143;
            }

            v230 = v328;
            (*v294)(v328, v114);
            sub_1D6149C2C();
            v232 = v330;
            (*v293)(v330, &v230[*(v231 + 48)], v178);
            v233 = *(v127 + v298);
            if (*(v233 + 16))
            {
              sub_1D6FA87F8(&qword_1EDF18A30);

              v234 = sub_1D7261E7C();
              v235 = -1 << *(v233 + 32);
              v236 = v234 & ~v235;
              v348 = (v233 + 56);
              if ((*(v233 + 56 + ((v236 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v236))
              {
                v342 = ~v235;
                v237 = *(v321 + 72);
                v238 = *(v321 + 16);
                while (1)
                {
                  v239 = v343;
                  v240 = v347;
                  v238(v343, *(v233 + 48) + v237 * v236, v347);
                  sub_1D6FA87F8(&qword_1EDF3C378);
                  v241 = sub_1D7261FBC();
                  v242 = *v331;
                  (*v331)(v239, v240);
                  if (v241)
                  {
                    break;
                  }

                  v236 = (v236 + 1) & v342;
                  v232 = v330;
                  if (((*(v348 + ((v236 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v236) & 1) == 0)
                  {
                    goto LABEL_86;
                  }
                }

                v128 = v340;

                (v242)(v330, v347);
                v114 = v354;
                (*v301)(v332, v354);
                v129 = v327;
                v152 = v341;
                v150 = v346;
                goto LABEL_143;
              }

LABEL_86:

              v152 = v341;
              v150 = v346;
              v178 = v347;
            }

            v243 = v314;
            (*v318)(v314, v232, v178);
            swift_beginAccess();
            v244 = v343;
            sub_1D5FF0FA8(v343, v243);
            swift_endAccess();
            v245 = *v331;
            (*v331)(v244, v178);
            v129 = v327;
            v368 = v327;
            v369 = v338;
            v370 = v335;
            v371 = v336;
            sub_1D725D34C();
            sub_1D725D35C();
            (*v289)(v315, v150, v152);
            sub_1D5B49474(0, &qword_1EDF3B468);
            if ((swift_dynamicCast() & 1) == 0)
            {
              v128 = v340;

              (*v313)(v150, v152);
              (v245)(v232, v178);
              v114 = v354;
              (*v301)(v332, v354);
              v367 = 0;
              v365 = 0u;
              v366 = 0u;
              sub_1D6FA883C(&v365, &unk_1EDF16E58, &qword_1EDF3B468, MEMORY[0x1E69D8728]);
              goto LABEL_143;
            }

            v348 = v245;
            sub_1D5B63F14(&v365, &v368);
            v128 = __swift_project_boxed_opaque_existential_1(&v368, v371);
            v126 = sub_1D725F56C();
            if (!v126)
            {
              v128 = v340;

              (*v313)(v150, v152);
              (v348)(v330, v178);
              v114 = v354;
              (*v301)(v332, v354);
LABEL_142:
              __swift_destroy_boxed_opaque_existential_1(&v368);
              v129 = v327;
LABEL_143:
              v151 = v352;
              goto LABEL_17;
            }

            v133 = v126;
            v114 = v354;
            v246 = v348;
            v320 = *(v126 + 16);
            if (!v320)
            {
LABEL_139:

              v128 = v340;

              (*v313)(v150, v152);
              (v246)(v330, v178);
              (*v301)(v332, v114);
              goto LABEL_142;
            }

            v129 = 0;
            v319 = v126 + 32;
            v288 = v126;
            while (2)
            {
              if (v129 >= *(v133 + 16))
              {
                goto LABEL_150;
              }

              v247 = (v319 + 40 * v129);
              v248 = v247[3];
              v249 = __swift_project_boxed_opaque_existential_1(v247, v248);
              v364 = v248;
              v250 = __swift_allocate_boxed_opaque_existential_1(v363);
              (*(*(v248 - 8) + 16))(v250, v249, v248);
              [v340 frame];
              v383.origin.x = v251;
              v383.origin.y = v252;
              v383.size.width = v253;
              v383.size.height = v254;
              v379.origin.x = 0.0;
              v379.origin.y = 0.0;
              v379.size.width = v115;
              v379.size.height = Height;
              LODWORD(v342) = CGRectIntersectsRect(v379, v383);
              sub_1D5B76B10(v363, v357);
              sub_1D5B49474(0, &qword_1EDF1FE30);
              if (!swift_dynamicCast())
              {
                v362 = 0;
                v360 = 0u;
                v361 = 0u;
                sub_1D6FA883C(&v360, &qword_1EDF1FE28, &qword_1EDF1FE30, &protocol descriptor for ThumbnailImageRequestProviding);
                v114 = v354;
                goto LABEL_105;
              }

              sub_1D5B63F14(&v360, &v365);
              v114 = *(&v366 + 1);
              v255 = v367;
              v128 = __swift_project_boxed_opaque_existential_1(&v365, *(&v366 + 1));
              (*(v255 + 8))(&v360, &v339[v127], v114, v255);
              sub_1D5BFED1C(&v360, &v355);
              if (!v356)
              {
                v260 = MEMORY[0x1E69D8160];
                sub_1D6FA883C(&v360, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
                sub_1D6FA883C(&v355, &qword_1EDF3B4D0, &qword_1EDF3B4D8, v260);
LABEL_104:
                v114 = v354;
                __swift_destroy_boxed_opaque_existential_1(&v365);
                v150 = v346;
LABEL_105:
                sub_1D5B76B10(v363, v357);
                sub_1D5B49474(0, qword_1EDF1DC08);
                if (swift_dynamicCast())
                {
                  sub_1D5B63F14(&v360, &v365);
                  v114 = *(&v366 + 1);
                  v261 = v367;
                  v128 = __swift_project_boxed_opaque_existential_1(&v365, *(&v366 + 1));
                  (*(v261 + 8))(&v360, &v339[v127], v114, v261);
                  sub_1D5BFED1C(&v360, &v355);
                  if (v356)
                  {
                    sub_1D5B63F14(&v355, v357);
                    if (*(v127 + v349) & 1) != 0 && (v114 = v359, v128 = __swift_project_boxed_opaque_existential_1(v357, v358), (ProcessedImageRequestType.isDownloaded.getter()))
                    {
                      dispatch_group_enter(*(v127 + v329));
                      v262 = 1;
                    }

                    else
                    {
                      v262 = 0;
                    }

                    v263 = *(v127 + v351);
                    v154 = __OFADD__(v263, 1);
                    v264 = v263 + 1;
                    if (v154)
                    {
                      goto LABEL_160;
                    }

                    *(v127 + v351) = v264;
                    __swift_project_boxed_opaque_existential_1(v353 + 7, v353[10]);
                    v265 = swift_allocObject();
                    *(v265 + 16) = v262;
                    *(v265 + 24) = v127;

                    sub_1D725D0DC();

                    sub_1D6FA883C(&v360, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
                    __swift_destroy_boxed_opaque_existential_1(v357);
                    v150 = v346;
                    v178 = v347;
                  }

                  else
                  {
                    v266 = MEMORY[0x1E69D8160];
                    sub_1D6FA883C(&v360, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
                    sub_1D6FA883C(&v355, &qword_1EDF3B4D0, &qword_1EDF3B4D8, v266);
                    v150 = v346;
                  }

                  v114 = v354;
                  __swift_destroy_boxed_opaque_existential_1(&v365);
                }

                else
                {
                  v362 = 0;
                  v360 = 0u;
                  v361 = 0u;
                  sub_1D6FA883C(&v360, &qword_1EDF1DC00, qword_1EDF1DC08, &protocol descriptor for PublisherLogoImageRequestProviding);
                }

                sub_1D5B76B10(v363, v357);
                v128 = qword_1EDF1F768;
                sub_1D5B49474(0, qword_1EDF1F768);
                if (swift_dynamicCast())
                {
                  sub_1D5B63F14(&v360, &v365);
                  v267 = *(&v366 + 1);
                  v268 = v367;
                  v128 = __swift_project_boxed_opaque_existential_1(&v365, *(&v366 + 1));
                  v269 = (*(v268 + 8))(&v339[v127], v267, v268);
                  if (v269)
                  {
                    v309 = v269;
                    v270 = *(v269 + 16);
                    v114 = v354;
                    v246 = v348;
                    if (v270)
                    {
                      v271 = v309 + 32;
                      do
                      {
                        sub_1D5B68374(v271, &v360);
                        sub_1D5BFED1C(&v360, &v355);
                        if (v356)
                        {
                          v126 = sub_1D5B63F14(&v355, v357);
                          if (*(v127 + v349) & 1) != 0 && (v114 = v359, v128 = __swift_project_boxed_opaque_existential_1(v357, v358), v126 = ProcessedImageRequestType.isDownloaded.getter(), (v126))
                          {
                            dispatch_group_enter(*(v127 + v329));
                            v273 = 1;
                          }

                          else
                          {
                            v273 = 0;
                          }

                          v274 = *(v127 + v351);
                          v154 = __OFADD__(v274, 1);
                          v275 = v274 + 1;
                          if (v154)
                          {
                            goto LABEL_147;
                          }

                          *(v127 + v351) = v275;
                          v276 = __swift_project_boxed_opaque_existential_1(v353 + 17, v353[20]);
                          v277 = swift_allocObject();
                          *(v277 + 16) = v273;
                          *(v277 + 24) = v127;

                          v114 = v354;
                          v128 = v276;
                          v178 = v347;
                          sub_1D725D0DC();

                          sub_1D6FA883C(&v360, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
                          __swift_destroy_boxed_opaque_existential_1(v357);
                        }

                        else
                        {
                          v128 = &qword_1EDF3B4D0;
                          v272 = MEMORY[0x1E69D8160];
                          sub_1D6FA883C(&v360, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
                          sub_1D6FA883C(&v355, &qword_1EDF3B4D0, &qword_1EDF3B4D8, v272);
                        }

                        v271 += 40;
                        --v270;
                        v246 = v348;
                      }

                      while (v270);
                    }

                    __swift_destroy_boxed_opaque_existential_1(&v365);
                    v152 = v341;
                    v150 = v346;
                    v133 = v288;
LABEL_92:
                    ++v129;
                    v126 = __swift_destroy_boxed_opaque_existential_1(v363);
                    if (v129 == v320)
                    {
                      goto LABEL_139;
                    }

                    continue;
                  }

                  __swift_destroy_boxed_opaque_existential_1(&v365);
                  v150 = v346;
                  v114 = v354;
                }

                else
                {
                  v362 = 0;
                  v360 = 0u;
                  v361 = 0u;
                  sub_1D6FA883C(&v360, &qword_1EDF1F760, qword_1EDF1F768, &protocol descriptor for IssueCoverImageRequestProviding);
                }

                v246 = v348;
                goto LABEL_92;
              }

              break;
            }

            sub_1D5B63F14(&v355, v357);
            if (*(v127 + v349) & 1) != 0 && (v114 = v359, v128 = __swift_project_boxed_opaque_existential_1(v357, v358), (ProcessedImageRequestType.isDownloaded.getter()))
            {
              dispatch_group_enter(*(v127 + v329));
              v256 = 1;
            }

            else
            {
              v256 = 0;
            }

            v257 = *(v127 + v351);
            v154 = __OFADD__(v257, 1);
            v258 = v257 + 1;
            if (!v154)
            {
              *(v127 + v351) = v258;
              __swift_project_boxed_opaque_existential_1(v353 + 2, v353[5]);
              v259 = swift_allocObject();
              *(v259 + 16) = v256;
              *(v259 + 24) = v127;

              sub_1D725D0DC();

              sub_1D6FA883C(&v360, &qword_1EDF3B4D0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
              __swift_destroy_boxed_opaque_existential_1(v357);
              v178 = v347;
              goto LABEL_104;
            }

            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            swift_once();
          }

          v153 = v126;
          v126 = MEMORY[0x1DA6FB460]();
          v154 = __OFADD__(v153, 1);
          v128 = (v153 + 1);
          if (!v154)
          {
            goto LABEL_24;
          }

LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          v130 = v126;
        }
      }

      if (v127[362] != -1)
      {
        swift_once();
      }

      sub_1D7262EAC();
      sub_1D725C30C();
    }
  }

  return nullsub_1;
}

uint64_t sub_1D6FA85D8()
{
  result = type metadata accessor for ImageRequestOptions();
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

uint64_t sub_1D6FA869C(uint64_t a1, uint64_t a2)
{
  sub_1D5B53BE4(0, &qword_1EDF439E8, MEMORY[0x1E69D7978]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6FA871C(uint64_t a1, uint64_t a2)
{
  sub_1D5B53BE4(0, &qword_1EDF439E8, MEMORY[0x1E69D7978]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6FA879C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5B53BE4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6FA87F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D7258DBC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6FA883C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D5C166FC(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1D6FA88B0()
{
  if (*(v0 + 16) == 1)
  {
    dispatch_group_leave(*(*(v0 + 24) + OBJC_IVAR____TtCC8NewsFeed33FeedItemRendererPipelineProcessorP33_D1D725D6BA23D5C832E553645D2883FA7Context_loadingGroup));
  }
}

uint64_t dispatch thunk of TagFeedHeadlineServiceType.fetchTagFeed(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D5B64684;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1D6FA8A0C(uint64_t a1, _OWORD *a2)
{
  *(v3 + 216) = a2;
  *(v3 + 224) = v2;
  *(v3 + 208) = a1;
  v4 = a2[3];
  *(v3 + 48) = a2[2];
  *(v3 + 64) = v4;
  v5 = a2[5];
  *(v3 + 80) = a2[4];
  *(v3 + 96) = v5;
  v6 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v6;
  return MEMORY[0x1EEE6DFA0](sub_1D6FA8A48, 0, 0);
}

uint64_t sub_1D6FA8A48()
{
  v1 = *(v0 + 216);
  sub_1D5C384A0();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D7273AE0;
  v33 = v1[2];
  v34 = v1[3];
  v35 = v1[4];
  v36 = v1[5];
  v31 = *v1;
  v32 = v1[1];
  v3 = TagFeedHeadlineRequest.description.getter();
  v5 = v4;
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1D5B7E2C0();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  sub_1D7262EDC();
  sub_1D725C30C();

  v7 = (v0 + 16);
  v6 = *(v0 + 16);
  if (*(v0 + 32))
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E69B55D8]) initWithContext:*(*(v0 + 224) + 16) tag:v6 feedConfiguration:{*(v0 + 24), v31, v32, v33, v34, v35, v36}];
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;
  *(v0 + 232) = v8;
  v10 = [*(*(v0 + 224) + 16) subscriptionController];
  if (v10)
  {
    v18 = v10;
    v19 = [v10 subscribedTagIDs];

    if (v19)
    {
      v20 = sub_1D726267C();
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
    }

    v21 = *(v0 + 224);
    v22 = sub_1D5B86020(v20);

    v23 = swift_allocObject();
    *(v0 + 240) = v23;
    v24 = *(v0 + 64);
    *(v23 + 48) = *(v0 + 48);
    *(v23 + 64) = v24;
    v25 = *(v0 + 96);
    *(v23 + 80) = *(v0 + 80);
    *(v23 + 96) = v25;
    v26 = *v7;
    v27 = *(v0 + 32);
    *(v23 + 112) = v22;
    *(v23 + 16) = v26;
    *(v23 + 32) = v27;
    v28 = swift_task_alloc();
    *(v0 + 248) = v28;
    v28[2] = v7;
    v28[3] = v21;
    v28[4] = v9;
    v28[5] = sub_1D6FAA7C8;
    v28[6] = v23;
    sub_1D6FAA7E4(v0 + 16, v0 + 112);
    v29 = swift_task_alloc();
    *(v0 + 256) = v29;
    *v29 = v0;
    v29[1] = sub_1D6FA8D1C;
    v10 = *(v0 + 208);
    v17 = &type metadata for TagFeedHeadlineResult;
    v15 = sub_1D6FAA7D4;
    v14 = 0x80000001D73FA000;
    v11 = 0;
    v12 = 0;
    v13 = 0xD000000000000016;
    v16 = v28;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DE38](v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1D6FA8D1C()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1D6FA8EA0;
  }

  else
  {

    v2 = sub_1D6FA8E38;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6FA8E38()
{
  v1 = *(v0 + 232);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D6FA8EA0()
{
  v1 = *(v0 + 232);

  v2 = *(v0 + 8);

  return v2();
}

id sub_1D6FA8F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a5;
  v40 = a6;
  v36 = a1;
  sub_1D6FAA840();
  v38 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v37 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D725891C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 24);
  v35[1] = a3;
  v19 = [objc_allocWithZone(MEMORY[0x1E69B5638]) initWithConfiguration:v18 cloudContext:*(a3 + 16) feedDescriptor:a4 personalizer:*(a3 + 24)];
  [v19 setPurpose_];
  result = [*(a2 + 32) laterDate];
  if (result)
  {
    v21 = result;
    sub_1D72588BC();

    v22 = sub_1D725881C();
    (*(v14 + 8))(v17, v13);
    [v19 setTopOfFeedDate_];

    [v19 setFreeFeedRange_];
    [v19 setPaidFeedRange_];
    [v19 setMaxFetchCount_];
    sub_1D5B5534C(0, &qword_1EDF3C720);
    v23 = sub_1D726265C();
    [v19 setPrecedingHeadlines_];

    v24 = swift_allocObject();
    swift_weakInit();
    v25 = v37;
    v26 = v38;
    (*(v10 + 16))(v37, v36, v38);
    v27 = (*(v10 + 80) + 120) & ~*(v10 + 80);
    v28 = swift_allocObject();
    v29 = *(a2 + 48);
    *(v28 + 56) = *(a2 + 32);
    *(v28 + 72) = v29;
    v30 = *(a2 + 80);
    *(v28 + 88) = *(a2 + 64);
    *(v28 + 104) = v30;
    v31 = *(a2 + 16);
    *(v28 + 24) = *a2;
    *(v28 + 16) = v24;
    *(v28 + 40) = v31;
    (*(v10 + 32))(v28 + v27, v25, v26);
    v32 = (v28 + ((v11 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
    v33 = v40;
    *v32 = v39;
    v32[1] = v33;
    aBlock[4] = sub_1D6FAA8B8;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D6FA9FB8;
    aBlock[3] = &block_descriptor_123;
    v34 = _Block_copy(aBlock);
    sub_1D6FAA7E4(a2, v41);

    [v19 setFetchCompletionHandler_];
    _Block_release(v34);
    sub_1D725AC4C();
    sub_1D725AC0C();
    if ([objc_opt_self() isMainThread])
    {
      sub_1D725AC2C();
    }

    else
    {
      [v19 start];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FA936C(unint64_t a1, void *a2, void *a3, char a4, void *a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t (*a9)(id), uint64_t *a10)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_6;
  }

  if (!a1)
  {

LABEL_6:
    if (a5)
    {
      v16 = a5;
    }

    else
    {
      sub_1D6F05064();
      v16 = swift_allocError();
      *v17 = 0;
      *(v17 + 8) = 0;
      *(v17 + 16) = 2;
    }

    goto LABEL_9;
  }

  if (a5)
  {

    v16 = a5;
LABEL_9:
    v18 = a5;
    sub_1D7262EBC();
    sub_1D5C384A0();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1D7270C10;
    v20 = a7[3];
    v59 = a7[2];
    v60 = v20;
    v21 = a7[5];
    v61 = a7[4];
    v62 = v21;
    v22 = a7[1];
    v57 = *a7;
    v58 = v22;
    v23 = TagFeedHeadlineRequest.description.getter();
    v25 = v24;
    v26 = MEMORY[0x1E69E6158];
    *(v19 + 56) = MEMORY[0x1E69E6158];
    v27 = sub_1D5B7E2C0();
    *(v19 + 64) = v27;
    *(v19 + 32) = v23;
    *(v19 + 40) = v25;
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    sub_1D7263F9C();
    *(v19 + 96) = v26;
    *(v19 + 104) = v27;
    *(v19 + 72) = 0;
    *(v19 + 80) = 0xE000000000000000;
    sub_1D725C30C();

    *&v57 = v16;
    sub_1D6FAA840();
    return sub_1D726286C();
  }

  v29 = a7[3];
  v59 = a7[2];
  v60 = v29;
  v30 = a7[5];
  v61 = a7[4];
  v62 = v30;
  v31 = a7[1];
  v57 = *a7;
  v58 = v31;
  v32 = sub_1D6FA9798(&v57, a9, a10);
  v33 = a7[3];
  v59 = a7[2];
  v60 = v33;
  v34 = a7[5];
  v61 = a7[4];
  v62 = v34;
  v35 = a7[1];
  v57 = *a7;
  v58 = v35;
  v36 = sub_1D6FA9B08(&v57, a9);
  sub_1D5C384A0();
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1D7274590;
  if (a1 >> 62)
  {
    v54 = v37;
    v38 = sub_1D7263BFC();
    v37 = v54;
  }

  else
  {
    v38 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = MEMORY[0x1E69E6530];
  v40 = MEMORY[0x1E69E65A8];
  *(v37 + 56) = MEMORY[0x1E69E6530];
  *(v37 + 64) = v40;
  *(v37 + 32) = v38;
  if (v36 >> 62)
  {
    v55 = v37;
    v41 = sub_1D7263BFC();
    v37 = v55;
  }

  else
  {
    v41 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v37 + 96) = v39;
  *(v37 + 104) = v40;
  *(v37 + 72) = v41;
  if (v32 >> 62)
  {
    v56 = v37;
    v42 = sub_1D7263BFC();
    v37 = v56;
  }

  else
  {
    v42 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v37 + 136) = v39;
  *(v37 + 144) = v40;
  *(v37 + 112) = v42;
  v43 = a7[3];
  v59 = a7[2];
  v60 = v43;
  v44 = a7[5];
  v61 = a7[4];
  v62 = v44;
  v45 = a7[1];
  v57 = *a7;
  v58 = v45;
  v46 = v37;
  v47 = TagFeedHeadlineRequest.description.getter();
  v49 = v48;
  v46[22] = MEMORY[0x1E69E6158];
  v46[23] = sub_1D5B7E2C0();
  v46[19] = v47;
  v46[20] = v49;
  sub_1D7262EDC();
  sub_1D725C30C();

  *&v57 = v36;
  *(&v57 + 1) = v32;
  *&v58 = a2;
  *(&v58 + 1) = a3;
  LOBYTE(v59) = a4 & 1;
  sub_1D6FAA840();
  v50 = a2;
  v51 = a3;

  v52 = v50;
  v53 = v51;
  sub_1D726287C();
}

uint64_t sub_1D6FA9798(uint64_t a1, uint64_t (*a2)(id), uint64_t *a3)
{
  v5 = *a1;
  v6 = *(a1 + 24);
  v7 = *(a1 + 80);
  v8 = v3[4];
  if (*(a1 + 16) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    v5 = [*a1 backingTag];
  }

  v9 = [v5 identifier];
  swift_unknownObjectRelease();
  if (!v9)
  {
    sub_1D726207C();
    v9 = sub_1D726203C();
  }

  v10 = [v8 allFeedItemsWithTopic_];

  sub_1D5B5A498(0, &qword_1EDF1AC10);
  v11 = sub_1D726267C();

  v29 = MEMORY[0x1E69E7CC0];
  if (v11 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {
    v13 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v25 = v7;
    v26 = v6;
    v27 = v3;
    v14 = 0;
    v7 = v11 & 0xC000000000000001;
    while (1)
    {
      if (v7)
      {
        v15 = MEMORY[0x1DA6FB460](v14, v11);
      }

      else
      {
        if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v15 = *(v11 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v3 = a3;
      if (a2(v15))
      {
        sub_1D7263E9C();
        v6 = *(v29 + 16);
        sub_1D7263EDC();
        sub_1D7263EEC();
        v3 = &v29;
        sub_1D7263EAC();
      }

      else
      {
      }

      ++v14;
      if (v17 == i)
      {
        v18 = v29;
        v6 = v26;
        v3 = v27;
        v7 = v25;
        v13 = MEMORY[0x1E69E7CC0];
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_21:

  v19 = [objc_opt_self() transformationWithFilterOptions:v7 configuration:v6 context:v3[2]];
  if (v18 < 0 || (v18 & 0x4000000000000000) != 0)
  {
    sub_1D5B5534C(0, &qword_1EDF04430);

    sub_1D726403C();
  }

  else
  {

    sub_1D726479C();
    sub_1D5B5534C(0, &qword_1EDF04430);
  }

  sub_1D5B5534C(0, &qword_1EDF04430);
  v20 = sub_1D726265C();

  v21 = [v19 transformFeedItems_];

  v22 = sub_1D726267C();
  v23 = sub_1D7150548(v22);

  if (v23)
  {
    return v23;
  }

  else
  {
    return v13;
  }
}

char *sub_1D6FA9B08(void *a1, uint64_t (*a2)(void *))
{
  v3 = a1[3];
  v35 = a1[10];
  v4 = a1[11];
  v5 = *(v2 + 16);
  if (v4 >> 62)
  {
LABEL_33:
    v6 = sub_1D7263BFC();
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x1E69E7CC0];
  v36 = v5;
  if (v6)
  {
    v37 = MEMORY[0x1E69E7CC0];
    result = sub_1D5BFC364(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v9 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1DA6FB460](v9, v4);
      }

      else
      {
        v10 = *(v4 + 8 * v9 + 32);
        swift_unknownObjectRetain();
      }

      v11 = [v10 identifier];
      v12 = sub_1D726207C();
      v14 = v13;
      swift_unknownObjectRelease();

      v16 = *(v37 + 16);
      v15 = *(v37 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1D5BFC364((v15 > 1), v16 + 1, 1);
      }

      ++v9;
      *(v37 + 16) = v16 + 1;
      v17 = v37 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
    }

    while (v6 != v9);
    v7 = MEMORY[0x1E69E7CC0];
  }

  v18 = objc_opt_self();
  v19 = sub_1D726265C();

  v3 = [v18 transformationWithFilterOptions:v35 | 2 configuration:v3 context:v36 otherArticleIDs:v19];

  v5 = sub_1D5B5534C(0, &qword_1EDF3C720);
  v20 = sub_1D726265C();
  v21 = [v3 transformHeadlines_];

  v22 = sub_1D726267C();
  v38 = v7;
  if (v22 >> 62)
  {
    v23 = sub_1D7263BFC();
    if (v23)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
LABEL_15:
      v33 = v3;
      v24 = 0;
      v35 = 1;
      while (1)
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1DA6FB460](v24, v22);
          v28 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
LABEL_30:
            __break(1u);
LABEL_31:
            v32 = v38;
            v3 = v33;
            goto LABEL_36;
          }
        }

        else
        {
          if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_33;
          }

          v5 = *(v22 + 8 * v24 + 32);
          swift_unknownObjectRetain();
          v28 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_30;
          }
        }

        if ([v5 isDeleted])
        {
          break;
        }

        if ([v5 isHiddenFromFeeds])
        {
          sub_1D5C384A0();
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_1D7273AE0;
          v3 = [v5 identifier];
          v4 = sub_1D726207C();
          v31 = v30;

          *(v29 + 56) = MEMORY[0x1E69E6158];
          *(v29 + 64) = sub_1D5B7E2C0();
          *(v29 + 32) = v4;
          *(v29 + 40) = v31;
          sub_1D7262EDC();
          goto LABEL_17;
        }

        if (a2(v5))
        {
          sub_1D7263E9C();
          v3 = *(v38 + 16);
          sub_1D7263EDC();
          sub_1D7263EEC();
          sub_1D7263EAC();
          goto LABEL_19;
        }

LABEL_18:
        swift_unknownObjectRelease();
LABEL_19:
        ++v24;
        if (v28 == v23)
        {
          goto LABEL_31;
        }
      }

      sub_1D5C384A0();
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1D7273AE0;
      v3 = [v5 identifier];
      v26 = sub_1D726207C();
      v4 = v27;

      *(v25 + 56) = MEMORY[0x1E69E6158];
      *(v25 + 64) = sub_1D5B7E2C0();
      *(v25 + 32) = v26;
      *(v25 + 40) = v4;
      sub_1D7262EDC();
LABEL_17:
      sub_1D725C30C();

      goto LABEL_18;
    }
  }

  v32 = MEMORY[0x1E69E7CC0];
LABEL_36:

  return v32;
}

uint64_t sub_1D6FA9FB8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v10 = a2;
  v11 = *(a1 + 32);
  if (a2)
  {
    sub_1D5B5534C(0, &qword_1EDF3C720);
    v10 = sub_1D726267C();
  }

  v12 = a3;
  v13 = a4;
  v14 = a6;
  v11(v10, a3, a4, a5, a6);
}

uint64_t sub_1D6FAA0A0(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = [a1 topics];
  if (v4)
  {
    v5 = v4;
    sub_1D5B5A498(0, &unk_1EDF04550);
    v6 = sub_1D726267C();

    v7 = v6;
    if (v6 >> 62)
    {
      goto LABEL_52;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
    {
      v9 = 0;
      v59 = v7 + 32;
      v60 = v7 & 0xFFFFFFFFFFFFFF8;
      v63 = a3 + 56;
      v64 = v7 & 0xC000000000000001;
      v57 = a3;
      while (1)
      {
        if (v64)
        {
          v10 = MEMORY[0x1DA6FB460](v9, v7);
        }

        else
        {
          if (v9 >= *(v60 + 16))
          {
            goto LABEL_51;
          }

          v10 = *(v59 + 8 * v9);
        }

        v11 = v10;
        if (__OFADD__(v9++, 1))
        {
          break;
        }

        if (![v10 hasTagID])
        {
          goto LABEL_7;
        }

        v13 = i;
        v14 = v7;
        v15 = [v11 tagID];
        if (v15)
        {
          v16 = v15;
          v17 = sub_1D726207C();
          v19 = v18;
        }

        else
        {
          v17 = 0;
          v19 = 0;
        }

        v20 = *a2;
        v61 = *(a2 + 16);
        if (v61 == 1)
        {
          swift_unknownObjectRetain();
          v21 = v20;
        }

        else
        {
          v21 = [v20 backingTag];
        }

        v22 = [v21 identifier];
        swift_unknownObjectRelease();
        a3 = sub_1D726207C();
        v24 = v23;

        if (!v19)
        {
          goto LABEL_5;
        }

        if (v17 == a3 && v19 == v24)
        {

          v7 = v14;
          i = v13;
        }

        else
        {
          a3 = sub_1D72646CC();

          v7 = v14;
          i = v13;
          if ((a3 & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        if ([v11 isDisallowedFromGrouping])
        {

          sub_1D5C384A0();
          v45 = swift_allocObject();
          *(v45 + 16) = xmmword_1D7270C10;
          if (v61)
          {
            swift_unknownObjectRetain();
          }

          else
          {
            v20 = [v20 backingTag];
          }

          v46 = [v20 identifier];
          swift_unknownObjectRelease();
          v47 = sub_1D726207C();
          v49 = v48;

          v50 = MEMORY[0x1E69E6158];
          *(v45 + 56) = MEMORY[0x1E69E6158];
          v51 = sub_1D5B7E2C0();
          *(v45 + 64) = v51;
          *(v45 + 32) = v47;
          *(v45 + 40) = v49;
          v52 = [a1 articleID];
          if (v52)
          {
            v53 = v52;
            sub_1D726207C();
          }

          sub_1D5B58D88();
          v54 = sub_1D72620FC();
          *(v45 + 96) = v50;
          *(v45 + 104) = v51;
          *(v45 + 72) = v54;
          *(v45 + 80) = v55;
          sub_1D7262EDC();
          goto LABEL_49;
        }

        v25 = [a1 publisherID];
        if (v25)
        {
          a3 = v25;
          v26 = sub_1D726207C();
          v28 = v27;

          if ([v11 hardFollowRequiredForGrouping])
          {
            if (!*(v57 + 16) || (sub_1D7264A0C(), sub_1D72621EC(), v29 = sub_1D7264A5C(), v30 = -1 << *(v57 + 32), a3 = v29 & ~v30, ((*(v63 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0))
            {
LABEL_37:

              sub_1D5C384A0();
              v34 = swift_allocObject();
              *(v34 + 16) = xmmword_1D7279970;
              if (v61)
              {
                swift_unknownObjectRetain();
              }

              else
              {
                v20 = [v20 backingTag];
              }

              v35 = [v20 identifier];
              swift_unknownObjectRelease();
              v36 = sub_1D726207C();
              v38 = v37;

              v39 = MEMORY[0x1E69E6158];
              *(v34 + 56) = MEMORY[0x1E69E6158];
              v40 = sub_1D5B7E2C0();
              *(v34 + 32) = v36;
              *(v34 + 40) = v38;
              *(v34 + 96) = v39;
              *(v34 + 104) = v40;
              *(v34 + 64) = v40;
              *(v34 + 72) = v26;
              *(v34 + 80) = v28;
              v41 = [a1 articleID];
              if (v41)
              {
                v42 = v41;
                sub_1D726207C();
              }

              sub_1D5B58D88();
              v43 = sub_1D72620FC();
              *(v34 + 136) = v39;
              *(v34 + 144) = v40;
              *(v34 + 112) = v43;
              *(v34 + 120) = v44;
              sub_1D7262EDC();
LABEL_49:
              sub_1D725C30C();

              return 0;
            }

            v31 = ~v30;
            while (1)
            {
              v32 = (*(v57 + 48) + 16 * a3);
              v33 = *v32 == v26 && v32[1] == v28;
              if (v33 || (sub_1D72646CC() & 1) != 0)
              {
                break;
              }

              a3 = (a3 + 1) & v31;
              if (((*(v63 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
              {
                goto LABEL_37;
              }
            }

LABEL_5:
            v7 = v14;
          }

          i = v13;
        }

LABEL_7:

        if (v9 == i)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      ;
    }

LABEL_53:
  }

  return 1;
}

uint64_t sub_1D6FAA6C8()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6FAA710(uint64_t a1, _OWORD *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64684;

  return sub_1D6FA8A0C(a1, a2);
}

void sub_1D6FAA7BC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1D6FAA840()
{
  if (!qword_1EDF04908)
  {
    sub_1D5B49474(255, &qword_1EDF3C5D0);
    v0 = sub_1D726288C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04908);
    }
  }
}

uint64_t sub_1D6FAA8B8(unint64_t a1, void *a2, void *a3, char a4, void *a5)
{
  sub_1D6FAA840();
  v12 = (*(*(v11 - 8) + 80) + 120) & ~*(*(v11 - 8) + 80);
  v13 = v5 + ((*(*(v11 - 8) + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1D6FA936C(a1, a2, a3, a4, a5, *(v5 + 16), (v5 + 24), v5 + v12, *v13, *(v13 + 8));
}

id TagActivityItemsConfiguration.__allocating_init(tag:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_1D6FAAF50(a1, v1);
}

id TagActivityItemsConfiguration.init(tag:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_1D6FAAF98(a1, v1);
}

id sub_1D6FAAB04(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t), SEL *a5)
{
  v10 = objc_allocWithZone(v5);
  a4(0, a2, a3);
  v11 = sub_1D726265C();

  v12 = [v10 *a5];

  return v12;
}

id sub_1D6FAABC8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t), SEL *a5)
{
  ObjectType = swift_getObjectType();
  a4(0, a2, a3);
  v11 = sub_1D726265C();

  v14.receiver = v5;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, *a5, v11);

  return v12;
}

id TagActivityItemsConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D6FAACB4(uint64_t a1@<X0>, Class *a2@<X1>, SEL *a3@<X2>, void *a4@<X8>)
{
  v8 = [objc_allocWithZone(type metadata accessor for TagImageShareAttributeProvider()) init];
  v9 = objc_allocWithZone(*a2);
  swift_unknownObjectRetain();
  v10 = [v9 *a3];
  swift_unknownObjectRelease();

  *a4 = v10;
}

uint64_t sub_1D6FAAD48@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1D72585BC();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v8 = [swift_unknownObjectRetain() nameForSharing];
  v9 = sub_1D726207C();
  v11 = v10;

  v12 = [a1 identifier];
  if (!v12)
  {
    sub_1D726207C();
    v12 = sub_1D726203C();
  }

  sub_1D5B5A498(0, &unk_1EC899130);
  v13 = [objc_opt_self() nss:v12 NewsURLForTagID:?];

  sub_1D72584EC();
  v14 = sub_1D6FAB620(a1, v9, v11, v7);
  result = swift_unknownObjectRelease();
  *a2 = v14;
  return result;
}

void sub_1D6FAAECC(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_allocWithZone(type metadata accessor for TagImageShareAttributeProvider()) init];
  v5 = _s8NewsFeed30TagImageShareAttributeProviderC05shareD03forSo7UIImageCSo14FCTagProviding_p_tF_0(a1);

  v6 = [objc_allocWithZone(NETagLinkPresentationSource) initWithTag:a1 image:v5];
  *a2 = v6;
}

id sub_1D6FAAF50(uint64_t a1, Class a2)
{
  v3 = objc_allocWithZone(a2);

  return sub_1D6FAAF98(a1, v3);
}

id sub_1D6FAAF98(uint64_t a1, void *a2)
{
  sub_1D5E42B34();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D72816D0;
  v5 = type metadata accessor for SharingTagTextActivityItemSource();
  v6 = swift_unknownObjectRetain();
  *(v4 + 32) = sub_1D70566C4(v6, v5);
  v7 = type metadata accessor for SharingTagURLActivityItemSource();
  v8 = swift_unknownObjectRetain();
  v9 = sub_1D6FAB0CC(v8);
  swift_unknownObjectRelease();
  *(v4 + 40) = sub_1D69B989C(a1, v9, v7);
  sub_1D5B5534C(0, &unk_1EC88CA50);
  v10 = sub_1D726265C();

  v11 = [a2 initNAWithActivityItemSources_];

  return v11;
}

uint64_t sub_1D6FAB0CC(void *a1)
{
  v2 = sub_1D725A93C();
  v4 = [a1 asSportsEvent];
  if (v4 || (v4 = [a1 asSports]) != 0 || (v4 = objc_msgSend(a1, sel_asPuzzleType)) != 0)
  {
    *(swift_allocObject() + 16) = v4;
    sub_1D5B64898(&qword_1EDF3BDB0, MEMORY[0x1E69D6420]);
    sub_1D5B5F3E0();
    sub_1D5B64898(&qword_1EDF1B5A0, sub_1D5B5F3E0);
    swift_unknownObjectRetain();
    sub_1D7263B6C();
    sub_1D673FC74();
    swift_allocObject();
    v5 = sub_1D725B7AC();
    swift_unknownObjectRelease();
  }

  else
  {
    *(swift_allocObject() + 16) = a1;
    sub_1D5B64898(&qword_1EDF3BDB0, MEMORY[0x1E69D6420]);
    sub_1D5B5F3E0();
    sub_1D5B64898(&qword_1EDF1B5A0, sub_1D5B5F3E0);
    swift_unknownObjectRetain();
    sub_1D7263B6C();
    sub_1D673FC74();
    swift_allocObject();
    return sub_1D725B7AC();
  }

  return v5;
}

id sub_1D6FAB620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_1D726203C();

  v8 = sub_1D725844C();
  v9 = [v6 initWithTag:a1 title:v7 url:v8];

  v10 = sub_1D72585BC();
  (*(*(v10 - 8) + 8))(a4, v10);
  return v9;
}

uint64_t FormatImageNodeStyle.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D6FAB7EC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B4BFC8(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v257 - v7;
  swift_beginAccess();
  v9 = v2[2];
  v10 = v2[3];
  v11 = v2[5];
  v279 = v2[4];
  swift_beginAccess();
  v280 = v2;
  v12 = v2[6];
  swift_beginAccess();
  v278 = a1;
  v13 = *(a1 + 48);
  v305 = MEMORY[0x1E69E7CC8];
  v14 = *(v12 + 16);
  if (__OFADD__(v14, *(v13 + 16)))
  {
    goto LABEL_106;
  }

  v286 = *(v13 + 16);
  v275 = v9;
  v276 = v4;
  v277 = v8;
  sub_1D6FAFA14();
  v274 = v10;

  sub_1D7261DAC();
  v287 = sub_1D698F4BC(0, v14, 0, MEMORY[0x1E69E7CC0]);
  v15 = *(v12 + 16);
  v273 = v11;
  v284 = v13;
  if (!v15)
  {
    goto LABEL_20;
  }

  v16 = 0;
  v17 = v12;
  v18 = v12 + 32;
  v19 = v15 - 1;
  while (1)
  {
    v20 = *v18;
    v363 = *(v18 + 16);
    v362 = v20;
    v21 = *(v18 + 32);
    v22 = *(v18 + 48);
    v23 = *(v18 + 64);
    v367 = *(v18 + 80);
    v366 = v23;
    v365 = v22;
    v364 = v21;
    v24 = *(v18 + 96);
    v25 = *(v18 + 112);
    v26 = *(v18 + 128);
    v371 = *(v18 + 144);
    v370 = v26;
    v369 = v25;
    v368 = v24;
    v27 = *(v18 + 160);
    v28 = *(v18 + 176);
    v29 = *(v18 + 192);
    v375 = *(v18 + 208);
    v374 = v29;
    v373 = v28;
    v372 = v27;
    v30 = v362;
    sub_1D5D0B0E4(&v362, &v348);
    sub_1D5D0B0E4(&v362, &v348);
    v31 = v305;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v334 = v31;
    v33 = sub_1D6D8CB60(v30, *(&v30 + 1));
    v35 = v31[2];
    v36 = (v34 & 1) == 0;
    v37 = __OFADD__(v35, v36);
    v38 = v35 + v36;
    if (v37)
    {
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
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      result = sub_1D726493C();
      __break(1u);
      return result;
    }

    v39 = v34;
    if (v31[3] < v38)
    {
      sub_1D6D7161C(v38, isUniquelyReferenced_nonNull_native);
      v33 = sub_1D6D8CB60(v30, *(&v30 + 1));
      if ((v39 & 1) != (v40 & 1))
      {
        goto LABEL_107;
      }

LABEL_9:
      if (v39)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v63 = v33;
    sub_1D6D84230();
    v33 = v63;
    if (v39)
    {
LABEL_10:
      v41 = v334;
      v42 = *(v334 + 56) + 216 * v33;
      v43 = *(v42 + 16);
      v348 = *v42;
      v349 = v43;
      v44 = *(v42 + 64);
      v46 = *(v42 + 32);
      v45 = *(v42 + 48);
      v353 = *(v42 + 80);
      v352 = v44;
      v350 = v46;
      v351 = v45;
      v47 = *(v42 + 128);
      v49 = *(v42 + 96);
      v48 = *(v42 + 112);
      v357 = *(v42 + 144);
      v356 = v47;
      v354 = v49;
      v355 = v48;
      v51 = *(v42 + 176);
      v50 = *(v42 + 192);
      v52 = *(v42 + 160);
      v361 = *(v42 + 208);
      v360 = v50;
      v358 = v52;
      v359 = v51;
      v53 = v363;
      *v42 = v362;
      *(v42 + 16) = v53;
      v54 = v364;
      v55 = v365;
      v56 = v367;
      *(v42 + 64) = v366;
      *(v42 + 80) = v56;
      *(v42 + 32) = v54;
      *(v42 + 48) = v55;
      v57 = v368;
      v58 = v369;
      v59 = v371;
      *(v42 + 128) = v370;
      *(v42 + 144) = v59;
      *(v42 + 96) = v57;
      *(v42 + 112) = v58;
      v60 = v372;
      v61 = v373;
      v62 = v374;
      *(v42 + 208) = v375;
      *(v42 + 176) = v61;
      *(v42 + 192) = v62;
      *(v42 + 160) = v60;
      sub_1D5D0B1AC(&v348);
      goto LABEL_14;
    }

LABEL_12:
    v41 = v334;
    *(v334 + 8 * (v33 >> 6) + 64) |= 1 << v33;
    *(v41[6] + 16 * v33) = v30;
    v64 = v41[7] + 216 * v33;
    v65 = v375;
    v66 = v374;
    v67 = v373;
    *(v64 + 160) = v372;
    *(v64 + 176) = v67;
    *(v64 + 192) = v66;
    *(v64 + 208) = v65;
    v68 = v371;
    v69 = v370;
    v70 = v369;
    *(v64 + 96) = v368;
    *(v64 + 112) = v70;
    *(v64 + 128) = v69;
    *(v64 + 144) = v68;
    v71 = v367;
    v72 = v366;
    v73 = v365;
    *(v64 + 32) = v364;
    *(v64 + 48) = v73;
    *(v64 + 64) = v72;
    *(v64 + 80) = v71;
    v74 = v363;
    *v64 = v362;
    *(v64 + 16) = v74;
    v75 = v41[2];
    v37 = __OFADD__(v75, 1);
    v76 = v75 + 1;
    if (v37)
    {
      goto LABEL_102;
    }

    v41[2] = v76;

LABEL_14:
    v305 = v41;

    sub_1D5D0B1AC(&v362);
    v78 = *(v287 + 2);
    v77 = *(v287 + 3);
    if (v78 >= v77 >> 1)
    {
      v287 = sub_1D698F4BC((v77 > 1), v78 + 1, 1, v287);
    }

    v79 = v287;
    *(v287 + 2) = v78 + 1;
    *&v79[16 * v78 + 32] = v30;
    if (v19 == v16)
    {
      break;
    }

    ++v16;
    v18 += 216;
    if (v16 >= *(v17 + 16))
    {
      goto LABEL_98;
    }
  }

  v12 = v17;
  v13 = v284;
LABEL_20:
  v286 = sub_1D698F4BC(0, v286, 0, MEMORY[0x1E69E7CC0]);
  v80 = *(v13 + 16);
  if (!v80)
  {
    goto LABEL_53;
  }

  v283 = v12;
  v81 = 0;
  v285 = (v80 - 1);
  v82 = 32;
  while (2)
  {
    v83 = *(v13 + v82);
    v363 = *(v13 + v82 + 16);
    v362 = v83;
    v84 = *(v13 + v82 + 32);
    v85 = *(v13 + v82 + 48);
    v86 = *(v13 + v82 + 64);
    v367 = *(v13 + v82 + 80);
    v366 = v86;
    v365 = v85;
    v364 = v84;
    v87 = *(v13 + v82 + 96);
    v88 = *(v13 + v82 + 112);
    v89 = *(v13 + v82 + 128);
    v371 = *(v13 + v82 + 144);
    v370 = v89;
    v369 = v88;
    v368 = v87;
    v90 = *(v13 + v82 + 160);
    v91 = *(v13 + v82 + 176);
    v92 = *(v13 + v82 + 192);
    v375 = *(v13 + v82 + 208);
    v374 = v92;
    v373 = v91;
    v372 = v90;
    v358 = *(v13 + v82 + 160);
    v359 = *(v13 + v82 + 176);
    v360 = *(v13 + v82 + 192);
    v361 = *(v13 + v82 + 208);
    v354 = *(v13 + v82 + 96);
    v355 = *(v13 + v82 + 112);
    v356 = *(v13 + v82 + 128);
    v357 = *(v13 + v82 + 144);
    v350 = *(v13 + v82 + 32);
    v351 = *(v13 + v82 + 48);
    v352 = *(v13 + v82 + 64);
    v353 = *(v13 + v82 + 80);
    v348 = *(v13 + v82);
    v349 = *(v13 + v82 + 16);
    v93 = v305;
    if (!v305[2])
    {
      sub_1D5D0B0E4(&v362, &v320);
      v94 = *(&v348 + 1);
      v95 = v348;
LABEL_30:
      v330 = v358;
      v331 = v359;
      v332 = v360;
      v333 = v361;
      v326 = v354;
      v327 = v355;
      v328 = v356;
      v329 = v357;
      v322 = v350;
      v323 = v351;
      v324 = v352;
      v325 = v353;
      v320 = v348;
      v321 = v349;
      sub_1D5D0B0E4(&v320, &v306);
      v119 = swift_isUniquelyReferenced_nonNull_native();
      *&v290 = v93;
      v120 = sub_1D6D8CB60(v95, v94);
      v122 = v93[2];
      v123 = (v121 & 1) == 0;
      v37 = __OFADD__(v122, v123);
      v124 = v122 + v123;
      if (v37)
      {
        goto LABEL_101;
      }

      v125 = v121;
      if (v93[3] >= v124)
      {
        if ((v119 & 1) == 0)
        {
          v161 = v120;
          sub_1D6D84230();
          v120 = v161;
          if (v125)
          {
            goto LABEL_36;
          }

          goto LABEL_41;
        }
      }

      else
      {
        sub_1D6D7161C(v124, v119);
        v120 = sub_1D6D8CB60(v95, v94);
        if ((v125 & 1) != (v126 & 1))
        {
          goto LABEL_107;
        }
      }

      if (v125)
      {
LABEL_36:
        v127 = v290;
        v128 = *(v290 + 56) + 216 * v120;
        v129 = *(v128 + 16);
        v306 = *v128;
        v307 = v129;
        v130 = *(v128 + 80);
        v132 = *(v128 + 32);
        v131 = *(v128 + 48);
        v310 = *(v128 + 64);
        v311 = v130;
        v308 = v132;
        v309 = v131;
        v133 = *(v128 + 144);
        v135 = *(v128 + 96);
        v134 = *(v128 + 112);
        v314 = *(v128 + 128);
        v315 = v133;
        v312 = v135;
        v313 = v134;
        v137 = *(v128 + 176);
        v136 = *(v128 + 192);
        v138 = *(v128 + 160);
        v319 = *(v128 + 208);
        v317 = v137;
        v318 = v136;
        v316 = v138;
        v139 = v321;
        *v128 = v320;
        *(v128 + 16) = v139;
        v140 = v322;
        v141 = v323;
        v142 = v325;
        *(v128 + 64) = v324;
        *(v128 + 80) = v142;
        *(v128 + 32) = v140;
        *(v128 + 48) = v141;
        v143 = v326;
        v144 = v327;
        v145 = v329;
        *(v128 + 128) = v328;
        *(v128 + 144) = v145;
        *(v128 + 96) = v143;
        *(v128 + 112) = v144;
        v146 = v330;
        v147 = v331;
        v148 = v332;
        *(v128 + 208) = v333;
        *(v128 + 176) = v147;
        *(v128 + 192) = v148;
        *(v128 + 160) = v146;
        sub_1D5D0B1AC(&v306);
LABEL_43:
        v305 = v127;
        v176 = *(v286 + 2);
        v177 = *(v286 + 3);

        if (v176 >= v177 >> 1)
        {
          v286 = sub_1D698F4BC((v177 > 1), v176 + 1, 1, v286);
        }

        v316 = v358;
        v317 = v359;
        v318 = v360;
        v319 = v361;
        v312 = v354;
        v313 = v355;
        v314 = v356;
        v315 = v357;
        v308 = v350;
        v309 = v351;
        v310 = v352;
        v311 = v353;
        v306 = v348;
        v307 = v349;
        sub_1D5D0B1AC(&v306);
        v178 = v286;
        *(v286 + 2) = v176 + 1;
        v179 = &v178[16 * v176];
        *(v179 + 4) = v95;
        *(v179 + 5) = v94;
        goto LABEL_50;
      }

LABEL_41:
      v127 = v290;
      *(v290 + 8 * (v120 >> 6) + 64) |= 1 << v120;
      v162 = (v127[6] + 16 * v120);
      *v162 = v95;
      v162[1] = v94;
      v163 = v127[7] + 216 * v120;
      v164 = v333;
      v165 = v332;
      v166 = v331;
      *(v163 + 160) = v330;
      *(v163 + 176) = v166;
      *(v163 + 192) = v165;
      *(v163 + 208) = v164;
      v167 = v329;
      v168 = v328;
      v169 = v327;
      *(v163 + 96) = v326;
      *(v163 + 112) = v169;
      *(v163 + 128) = v168;
      *(v163 + 144) = v167;
      v170 = v325;
      v171 = v324;
      v172 = v323;
      *(v163 + 32) = v322;
      *(v163 + 48) = v172;
      *(v163 + 64) = v171;
      *(v163 + 80) = v170;
      v173 = v321;
      *v163 = v320;
      *(v163 + 16) = v173;
      v174 = v127[2];
      v37 = __OFADD__(v174, 1);
      v175 = v174 + 1;
      if (v37)
      {
        goto LABEL_103;
      }

      v127[2] = v175;

      goto LABEL_43;
    }

    v94 = *(&v348 + 1);
    v95 = v348;
    sub_1D5D0B0E4(&v362, &v320);
    v96 = sub_1D6D8CB60(v95, v94);
    if ((v97 & 1) == 0)
    {
      goto LABEL_30;
    }

    v98 = v93[7] + 216 * v96;
    v99 = *(v98 + 16);
    v306 = *v98;
    v307 = v99;
    v100 = *(v98 + 80);
    v102 = *(v98 + 32);
    v101 = *(v98 + 48);
    v310 = *(v98 + 64);
    v311 = v100;
    v308 = v102;
    v309 = v101;
    v103 = *(v98 + 96);
    v104 = *(v98 + 112);
    v105 = *(v98 + 144);
    v314 = *(v98 + 128);
    v315 = v105;
    v312 = v103;
    v313 = v104;
    v106 = *(v98 + 160);
    v107 = *(v98 + 176);
    v108 = *(v98 + 192);
    v319 = *(v98 + 208);
    v317 = v107;
    v318 = v108;
    v316 = v106;
    v344 = *(v98 + 160);
    v345 = *(v98 + 176);
    v346 = *(v98 + 192);
    v347 = *(v98 + 208);
    v340 = *(v98 + 96);
    v341 = *(v98 + 112);
    v342 = *(v98 + 128);
    v343 = *(v98 + 144);
    v336 = *(v98 + 32);
    v337 = *(v98 + 48);
    v338 = *(v98 + 64);
    v339 = *(v98 + 80);
    v334 = *v98;
    v335 = *(v98 + 16);
    v109 = v334;
    sub_1D6FAE41C(&v348, &v320);
    sub_1D5D0B0E4(&v306, &v290);
    v110 = swift_isUniquelyReferenced_nonNull_native();
    v304 = v93;
    v112 = sub_1D6D8CB60(v109, *(&v109 + 1));
    v113 = v93[2];
    v114 = (v111 & 1) == 0;
    v115 = v113 + v114;
    if (__OFADD__(v113, v114))
    {
      goto LABEL_104;
    }

    v116 = v111;
    if (v93[3] >= v115)
    {
      if (v110)
      {
        if ((v111 & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      else
      {
        sub_1D6D84230();
        if ((v116 & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_39;
    }

    sub_1D6D7161C(v115, v110);
    v117 = sub_1D6D8CB60(v109, *(&v109 + 1));
    if ((v116 & 1) != (v118 & 1))
    {
      goto LABEL_107;
    }

    v112 = v117;
    if (v116)
    {
LABEL_39:
      v149 = v304;
      v150 = v304[7] + 216 * v112;
      v151 = *(v150 + 16);
      v290 = *v150;
      v291 = v151;
      v152 = *(v150 + 80);
      v154 = *(v150 + 32);
      v153 = *(v150 + 48);
      v294 = *(v150 + 64);
      v295 = v152;
      v292 = v154;
      v293 = v153;
      v155 = *(v150 + 144);
      v157 = *(v150 + 96);
      v156 = *(v150 + 112);
      v298 = *(v150 + 128);
      v299 = v155;
      v296 = v157;
      v297 = v156;
      v159 = *(v150 + 176);
      v158 = *(v150 + 192);
      v160 = *(v150 + 160);
      v303 = *(v150 + 208);
      v301 = v159;
      v302 = v158;
      v300 = v160;
      *(v150 + 160) = v330;
      *(v150 + 176) = v331;
      *(v150 + 192) = v332;
      *(v150 + 208) = v333;
      *(v150 + 96) = v326;
      *(v150 + 112) = v327;
      *(v150 + 128) = v328;
      *(v150 + 144) = v329;
      *(v150 + 32) = v322;
      *(v150 + 48) = v323;
      *(v150 + 64) = v324;
      *(v150 + 80) = v325;
      *v150 = v320;
      *(v150 + 16) = v321;
      sub_1D5D0B1AC(&v290);
      goto LABEL_49;
    }

LABEL_47:
    v149 = v304;
    v304[(v112 >> 6) + 8] |= 1 << v112;
    *(v149[6] + 16 * v112) = v109;
    v180 = v149[7] + 216 * v112;
    *v180 = v320;
    *(v180 + 16) = v321;
    *(v180 + 80) = v325;
    *(v180 + 64) = v324;
    *(v180 + 48) = v323;
    *(v180 + 32) = v322;
    *(v180 + 144) = v329;
    *(v180 + 128) = v328;
    *(v180 + 112) = v327;
    *(v180 + 96) = v326;
    *(v180 + 208) = v333;
    *(v180 + 192) = v332;
    *(v180 + 176) = v331;
    *(v180 + 160) = v330;
    v181 = v149[2];
    v37 = __OFADD__(v181, 1);
    v182 = v181 + 1;
    if (v37)
    {
      goto LABEL_105;
    }

    v149[2] = v182;

LABEL_49:
    v288[10] = v344;
    v288[11] = v345;
    v288[12] = v346;
    v289 = v347;
    v288[6] = v340;
    v288[7] = v341;
    v288[8] = v342;
    v288[9] = v343;
    v288[2] = v336;
    v288[3] = v337;
    v288[4] = v338;
    v288[5] = v339;
    v288[0] = v334;
    v288[1] = v335;
    sub_1D5D0B1AC(v288);
    v300 = v358;
    v301 = v359;
    v302 = v360;
    v303 = v361;
    v296 = v354;
    v297 = v355;
    v298 = v356;
    v299 = v357;
    v292 = v350;
    v293 = v351;
    v294 = v352;
    v295 = v353;
    v290 = v348;
    v291 = v349;
    sub_1D5D0B1AC(&v290);
    v305 = v149;
    v13 = v284;
LABEL_50:
    if (v285 == v81)
    {
      goto LABEL_53;
    }

    ++v81;
    v82 += 216;
    if (v81 < *(v13 + 16))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_53:

  *&v362 = v286;

  sub_1D6985DAC(v183);
  v184 = v362;
  v185 = *(v362 + 16);
  if (v185)
  {
    v186 = 0;
    v285 = MEMORY[0x1E69E7CC0];
LABEL_55:
    v187 = v305;
    v188 = (v184 + 40 + 16 * v186);
    v189 = v186;
    while (v189 < v185)
    {
      v186 = v189 + 1;
      if (__OFADD__(v189, 1))
      {
        goto LABEL_100;
      }

      if (v187[2])
      {
        v191 = *(v188 - 1);
        v190 = *v188;

        v192 = sub_1D6D8CB60(v191, v190);
        if (v193)
        {
          v194 = v187[7] + 216 * v192;
          v195 = *(v194 + 16);
          v362 = *v194;
          v363 = v195;
          v196 = *(v194 + 64);
          v198 = *(v194 + 32);
          v197 = *(v194 + 48);
          v367 = *(v194 + 80);
          v366 = v196;
          v364 = v198;
          v365 = v197;
          v199 = *(v194 + 96);
          v200 = *(v194 + 112);
          v201 = *(v194 + 128);
          v371 = *(v194 + 144);
          v370 = v201;
          v369 = v200;
          v368 = v199;
          v202 = *(v194 + 160);
          v203 = *(v194 + 176);
          v204 = *(v194 + 192);
          v375 = *(v194 + 208);
          v374 = v204;
          v373 = v203;
          v372 = v202;
          sub_1D5D0B0E4(&v362, &v348);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v285 = sub_1D698D3B0(0, *(v285 + 2) + 1, 1, v285);
          }

          v206 = *(v285 + 2);
          v205 = *(v285 + 3);
          if (v206 >= v205 >> 1)
          {
            v285 = sub_1D698D3B0((v205 > 1), v206 + 1, 1, v285);
          }

          v207 = v285;
          *(v285 + 2) = v206 + 1;
          v208 = &v207[216 * v206];
          v209 = v363;
          *(v208 + 2) = v362;
          *(v208 + 3) = v209;
          v210 = v364;
          v211 = v365;
          v212 = v367;
          *(v208 + 6) = v366;
          *(v208 + 7) = v212;
          *(v208 + 4) = v210;
          *(v208 + 5) = v211;
          v213 = v368;
          v214 = v369;
          v215 = v371;
          *(v208 + 10) = v370;
          *(v208 + 11) = v215;
          *(v208 + 8) = v213;
          *(v208 + 9) = v214;
          v216 = v372;
          v217 = v373;
          v218 = v374;
          *(v208 + 30) = v375;
          *(v208 + 13) = v217;
          *(v208 + 14) = v218;
          *(v208 + 12) = v216;
          if (v186 != v185)
          {
            goto LABEL_55;
          }

          goto LABEL_69;
        }
      }

      ++v189;
      v188 += 2;
      if (v186 == v185)
      {
        goto LABEL_69;
      }
    }

    goto LABEL_99;
  }

  v285 = MEMORY[0x1E69E7CC0];
LABEL_69:

  v219 = v280;
  v220 = v280[7];
  v221 = v220;
  v222 = v278;
  if (!v220)
  {
    v221 = *(v278 + 56);
  }

  swift_beginAccess();
  v223 = v219[8];
  v282 = v223;
  if (!v223)
  {
    swift_beginAccess();
    v282 = *(v222 + 64);
  }

  v224 = v219[9];
  v225 = v224;
  if ((~v224 & 0xF000000000000007) == 0)
  {
    v225 = *(v222 + 72);
    sub_1D5D04BD4(v225);
  }

  v265 = v219[10];
  v226 = v265;
  if (!v265)
  {
    v226 = *(v222 + 80);
  }

  v227 = *(v219 + 88);
  if (v227 == 9)
  {
    v227 = *(v222 + 88);
  }

  v228 = v219[12];
  v229 = *(v219 + 112);
  v263 = v219[13];
  v264 = v228;
  v286 = v263;
  v287 = v228;
  LODWORD(v284) = v229;
  v262 = v229;
  if (v229 >= 0xFE)
  {
    v230 = *(v222 + 96);
    v231 = *(v222 + 112);
    v286 = *(v222 + 104);
    v287 = v230;
    LODWORD(v284) = v231;
    sub_1D5ED34B0(v230, v286, v231);
  }

  v283 = v219[15];
  v260 = v283;
  if (v283 == 3)
  {
    v283 = *(v222 + 120);
    sub_1D5D0AF9C(v283);
  }

  v232 = *(v219 + 128);
  if (v232 == 4)
  {
    v232 = *(v222 + 128);
  }

  v261 = v232;
  swift_beginAccess();
  v281 = v219[17];
  v259 = v281;
  if (!v281)
  {
    swift_beginAccess();
    v281 = *(v222 + 136);
  }

  LOBYTE(v367) = *(v219 + 224);
  v233 = *(v219 + 12);
  v364 = *(v219 + 11);
  v365 = v233;
  v366 = *(v219 + 13);
  v234 = *(v219 + 10);
  v362 = *(v219 + 9);
  v363 = v234;
  v271 = v225;
  v272 = v220;
  v269 = v221;
  v270 = v226;
  v268 = v223;
  v267 = v227;
  v266 = v224;
  if (v367 == 254)
  {
    v235 = *(v222 + 192);
    v336 = *(v222 + 176);
    v337 = v235;
    v338 = *(v222 + 208);
    LOBYTE(v339) = *(v222 + 224);
    v236 = *(v222 + 160);
    v334 = *(v222 + 144);
    v335 = v236;
    sub_1D6FAFAD4(&v334, &v348, sub_1D615C3A4);
    v350 = v336;
    v351 = v337;
    v352 = v338;
    LOBYTE(v353) = v339;
    v237 = v334;
    v238 = v335;
  }

  else
  {
    v239 = *(v219 + 12);
    v350 = *(v219 + 11);
    v351 = v239;
    v352 = *(v219 + 13);
    LOBYTE(v353) = *(v219 + 224);
    v237 = *(v219 + 9);
    v238 = *(v219 + 10);
  }

  v348 = v237;
  v349 = v238;
  v240 = v219[29];
  v241 = v240;
  if ((~v240 & 0xF000000000000007) == 0)
  {
    v241 = *(v222 + 232);
    sub_1D5CFCFAC(v241);
  }

  v258 = v241;
  v242 = *(v219 + 240);
  if (v242 == 2)
  {
    LOBYTE(v242) = *(v222 + 240);
  }

  v243 = v219[31];
  v244 = v243;
  v245 = v219[32];
  if (v243 == 1)
  {
    v244 = *(v222 + 248);
    v245 = *(v222 + 256);
    sub_1D62B5D88(v244);
  }

  v257 = v245;
  v278 = v244;
  v246 = v277;
  sub_1D6FADCB0(v219 + OBJC_IVAR____TtC8NewsFeed20FormatImageNodeStyle_imageMask, v277, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B4BFC8);
  v247 = swift_allocObject();
  *(v247 + 64) = 0;
  *(v247 + 136) = 0;
  swift_beginAccess();
  v248 = v274;
  *(v247 + 16) = v275;
  *(v247 + 24) = v248;
  v249 = v273;
  *(v247 + 32) = v279;
  *(v247 + 40) = v249;
  swift_beginAccess();
  v250 = v269;
  *(v247 + 48) = v285;
  *(v247 + 56) = v250;
  swift_beginAccess();

  sub_1D5D04BD4(v266);

  sub_1D5ED34B0(v264, v263, v262);
  sub_1D5D0AF9C(v260);

  sub_1D6FAFAD4(&v362, &v334, sub_1D615C3A4);
  sub_1D5CFCFAC(v240);
  sub_1D62B5D88(v243);
  *(v247 + 64) = v282;

  v251 = v270;
  *(v247 + 72) = v271;
  *(v247 + 80) = v251;
  *(v247 + 88) = v267;
  v252 = v286;
  *(v247 + 96) = v287;
  *(v247 + 104) = v252;
  *(v247 + 112) = v284;
  *(v247 + 120) = v283;
  *(v247 + 128) = v261;
  swift_beginAccess();
  *(v247 + 136) = v281;

  v253 = v351;
  *(v247 + 176) = v350;
  *(v247 + 192) = v253;
  *(v247 + 208) = v352;
  *(v247 + 224) = v353;
  v254 = v349;
  *(v247 + 144) = v348;
  *(v247 + 160) = v254;
  *(v247 + 232) = v258;
  *(v247 + 240) = v242;
  v255 = v257;
  *(v247 + 248) = v278;
  *(v247 + 256) = v255;
  sub_1D5FC55FC(v246, v247 + OBJC_IVAR____TtC8NewsFeed20FormatImageNodeStyle_imageMask);
  return v247;
}

uint64_t sub_1D6FACC10(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 48);
  v5 = *(v4 + 16);

  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1D698D3B0(0, v5, 0, MEMORY[0x1E69E7CC0]);
  v99 = sub_1D698D240(0, v5, 0, v6);
  v103 = *(v4 + 16);
  if (v103)
  {
    v8 = 0;
    v101 = v2;
    v102 = v4 + 32;
    v100 = v4;
    while (1)
    {
      v9 = v7;
      v10 = v102 + 216 * v8;
      v11 = *(v10 + 16);
      v119 = *v10;
      v120 = v11;
      v12 = *(v10 + 32);
      v13 = *(v10 + 48);
      v14 = *(v10 + 80);
      v123 = *(v10 + 64);
      v124 = v14;
      v121 = v12;
      v122 = v13;
      v15 = *(v10 + 96);
      v16 = *(v10 + 112);
      v17 = *(v10 + 144);
      v127 = *(v10 + 128);
      v128 = v17;
      v125 = v15;
      v126 = v16;
      v18 = *(v10 + 160);
      v19 = *(v10 + 176);
      v20 = *(v10 + 192);
      *&v132 = *(v10 + 208);
      v130 = v19;
      v131 = v20;
      v129 = v18;
      v21 = v119;
      sub_1D5D0B0E4(&v119, &v105);
      if (qword_1EDF2AB18 != -1)
      {
        swift_once();
      }

      v105 = v21;

      v22 = sub_1D6844380(&v105);

      v24 = *(v22 + 16);
      if (v24)
      {
        v25 = 0;
        v26 = 32;
        while (1)
        {
          if (v25 >= *(v22 + 16))
          {
            __break(1u);
            goto LABEL_35;
          }

          v28 = *(v22 + v26 + 16);
          v27 = *(v22 + v26 + 32);
          v29 = *(v22 + v26);
          v134 = *(v22 + v26 + 48);
          v133[1] = v28;
          v133[2] = v27;
          v133[0] = v29;
          v30 = v28;
          sub_1D5E3B610(v133, &v105);
          if (sub_1D68444DC(a1))
          {
            break;
          }

          ++v25;
          result = sub_1D5E3B66C(v133);
          v26 += 56;
          if (v24 == v25)
          {
            goto LABEL_10;
          }
        }

        result = sub_1D5E3B66C(v133);
        if (v30 <= 1)
        {
          v7 = v9;
          v46 = *(v9 + 2);
          v45 = *(v9 + 3);
          v2 = v101;
          if (v46 >= v45 >> 1)
          {
            result = sub_1D698D3B0((v45 > 1), v46 + 1, 1, v9);
            v7 = result;
          }

          v31 = v100;
          *(v7 + 2) = v46 + 1;
          v47 = &v7[216 * v46];
          v48 = v120;
          *(v47 + 2) = v119;
          *(v47 + 3) = v48;
          v49 = v121;
          v50 = v122;
          v51 = v124;
          *(v47 + 6) = v123;
          *(v47 + 7) = v51;
          *(v47 + 4) = v49;
          *(v47 + 5) = v50;
          v52 = v125;
          v53 = v126;
          v54 = v128;
          *(v47 + 10) = v127;
          *(v47 + 11) = v54;
          *(v47 + 8) = v52;
          *(v47 + 9) = v53;
          v55 = v129;
          v56 = v130;
          v57 = v131;
          *(v47 + 30) = v132;
          *(v47 + 13) = v56;
          *(v47 + 14) = v57;
          *(v47 + 12) = v55;
        }

        else
        {
          v115 = v129;
          v116 = v130;
          v117 = v131;
          v118 = v132;
          v111 = v125;
          v112 = v126;
          v113 = v127;
          v114 = v128;
          v107 = v121;
          v108 = v122;
          v109 = v123;
          v110 = v124;
          v105 = v119;
          v106 = v120;
          sub_1D5D0B0E4(&v119, v104);
          v33 = v99[2];
          v32 = v99[3];
          v2 = v101;
          v7 = v9;
          if (v33 >= v32 >> 1)
          {
            v99 = sub_1D698D240((v32 > 1), v33 + 1, 1, v99);
          }

          v31 = v100;
          result = sub_1D5D0B1AC(&v119);
          v99[2] = v33 + 1;
          v34 = &v99[28 * v33];
          v35 = v106;
          *(v34 + 2) = v105;
          *(v34 + 3) = v35;
          v36 = v107;
          v37 = v108;
          v38 = v110;
          *(v34 + 6) = v109;
          *(v34 + 7) = v38;
          *(v34 + 4) = v36;
          *(v34 + 5) = v37;
          v39 = v111;
          v40 = v112;
          v41 = v114;
          *(v34 + 10) = v113;
          *(v34 + 11) = v41;
          *(v34 + 8) = v39;
          *(v34 + 9) = v40;
          v42 = v115;
          v43 = v117;
          v44 = v118;
          *(v34 + 13) = v116;
          *(v34 + 14) = v43;
          *(v34 + 12) = v42;
          v34[30] = v44;
          v34[31] = v30;
        }
      }

      else
      {
LABEL_10:
        sub_1D5D0B1AC(&v119);

        v7 = v9;
        v31 = v100;
        v2 = v101;
      }

      if (++v8 == v103)
      {
        break;
      }

      if (v8 >= *(v31 + 16))
      {
        goto LABEL_36;
      }
    }
  }

  sub_1D6FAFA78();
  v58 = sub_1D72626AC();

  v59 = *(v58 + 16);
  if (v59)
  {
    v60 = v59 - 1;
    for (i = 32; ; i += 224)
    {
      v62 = *(v58 + i + 16);
      v119 = *(v58 + i);
      v120 = v62;
      v63 = *(v58 + i + 32);
      v64 = *(v58 + i + 48);
      v65 = *(v58 + i + 80);
      v123 = *(v58 + i + 64);
      v124 = v65;
      v121 = v63;
      v122 = v64;
      v66 = *(v58 + i + 96);
      v67 = *(v58 + i + 112);
      v68 = *(v58 + i + 144);
      v127 = *(v58 + i + 128);
      v128 = v68;
      v125 = v66;
      v126 = v67;
      v69 = *(v58 + i + 160);
      v70 = *(v58 + i + 176);
      v71 = *(v58 + i + 208);
      v131 = *(v58 + i + 192);
      v132 = v71;
      v129 = v69;
      v130 = v70;
      sub_1D6FAFAD4(&v119, &v105, sub_1D6FAFA78);
      v73 = *(v7 + 2);
      v72 = *(v7 + 3);
      if (v73 >= v72 >> 1)
      {
        v7 = sub_1D698D3B0((v72 > 1), v73 + 1, 1, v7);
      }

      *(v7 + 2) = v73 + 1;
      v74 = &v7[216 * v73];
      v75 = v120;
      *(v74 + 2) = v119;
      *(v74 + 3) = v75;
      v76 = v121;
      v77 = v122;
      v78 = v124;
      *(v74 + 6) = v123;
      *(v74 + 7) = v78;
      *(v74 + 4) = v76;
      *(v74 + 5) = v77;
      v79 = v125;
      v80 = v126;
      v81 = v128;
      *(v74 + 10) = v127;
      *(v74 + 11) = v81;
      *(v74 + 8) = v79;
      *(v74 + 9) = v80;
      v82 = v129;
      v83 = v130;
      v84 = v131;
      *(v74 + 30) = v132;
      *(v74 + 13) = v83;
      *(v74 + 14) = v84;
      *(v74 + 12) = v82;
      if (!v60)
      {
        break;
      }

      --v60;
    }
  }

  v85 = *(v7 + 2);

  if (v85)
  {
    v86 = 0;
    v87 = v7 + 32;
    while (v86 < *(v7 + 2))
    {
      v88 = *(v87 + 1);
      v119 = *v87;
      v120 = v88;
      v89 = *(v87 + 2);
      v90 = *(v87 + 3);
      v91 = *(v87 + 5);
      v123 = *(v87 + 4);
      v124 = v91;
      v121 = v89;
      v122 = v90;
      v92 = *(v87 + 6);
      v93 = *(v87 + 7);
      v94 = *(v87 + 9);
      v127 = *(v87 + 8);
      v128 = v94;
      v125 = v92;
      v126 = v93;
      v95 = *(v87 + 10);
      v96 = *(v87 + 11);
      v97 = *(v87 + 12);
      *&v132 = *(v87 + 26);
      v130 = v96;
      v131 = v97;
      v129 = v95;
      ++v86;
      v115 = v95;
      v116 = v96;
      v117 = v97;
      v118 = v132;
      v111 = v125;
      v112 = v126;
      v113 = v127;
      v114 = v94;
      v107 = v121;
      v108 = v122;
      v109 = v123;
      v110 = v124;
      v105 = v119;
      v106 = v120;
      swift_allocObject();
      sub_1D5D0B0E4(&v119, v104);
      v98 = sub_1D6FAFB3C(v2, &v105);

      v87 += 216;
      v2 = v98;
      if (v85 == v86)
      {
        goto LABEL_33;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
    v98 = v2;
LABEL_33:

    return v98;
  }

  return result;
}