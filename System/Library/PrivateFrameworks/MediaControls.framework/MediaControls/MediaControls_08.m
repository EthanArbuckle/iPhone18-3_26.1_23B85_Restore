uint64_t (*sub_1A2292FE0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A2293044;
}

uint64_t sub_1A2293044(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x130))(result);
  }

  return result;
}

char *sub_1A22930B0(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC13MediaControls7Stepper_value] = 0;
  *&v4[OBJC_IVAR____TtC13MediaControls7Stepper_style] = 0x4020000000000000;
  v9 = OBJC_IVAR____TtC13MediaControls7Stepper_decrementButton;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v10 = OBJC_IVAR____TtC13MediaControls7Stepper_incrementButton;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  *&v4[OBJC_IVAR____TtC13MediaControls7Stepper_symbolConfiguration] = 0;
  *&v4[OBJC_IVAR____TtC13MediaControls7Stepper_decrementImage] = 0;
  *&v4[OBJC_IVAR____TtC13MediaControls7Stepper_incrementImage] = 0;
  *&v4[OBJC_IVAR____TtC13MediaControls7Stepper_visualStylingProvider] = 0;
  v21.receiver = v4;
  v21.super_class = type metadata accessor for Stepper();
  v11 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = OBJC_IVAR____TtC13MediaControls7Stepper_decrementButton;
  v13 = *&v11[OBJC_IVAR____TtC13MediaControls7Stepper_decrementButton];
  v14 = v11;
  v15 = v13;
  sub_1A225C9E8();

  v16 = *&v11[v12];
  sub_1A225CA7C();

  [*&v11[v12] addTarget:v14 action:sel_decreaseTouchUpInsideSender_ forControlEvents:64];
  [v14 addSubview_];
  v17 = OBJC_IVAR____TtC13MediaControls7Stepper_incrementButton;
  v18 = *&v14[OBJC_IVAR____TtC13MediaControls7Stepper_incrementButton];
  sub_1A225C9E8();

  v19 = *&v14[v17];
  sub_1A225CA7C();

  [*&v14[v17] addTarget:v14 action:sel_increaseTouchUpInsideSender_ forControlEvents:64];
  [v14 addSubview_];

  return v14;
}

id sub_1A22932D4()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for Stepper();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  [v0 bounds];
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  CGRectGetWidth(v27);
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA8))();
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  CGRectGetMinX(v28);
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  CGRectGetMinY(v29);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  CGRectGetHeight(v30);
  v5 = *(v0 + OBJC_IVAR____TtC13MediaControls7Stepper_decrementButton);
  [v0 bounds];
  v22 = v6;
  v23 = v7;
  v24 = v8;
  v25 = v9;
  v26 = 0;
  sub_1A22E6BA8();
  [v5 setFrame_];
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  CGRectGetMaxX(v31);
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  CGRectGetMinY(v32);
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  CGRectGetHeight(v33);
  v10 = *(v0 + OBJC_IVAR____TtC13MediaControls7Stepper_incrementButton);
  [v0 bounds];
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  v21 = 0;
  sub_1A22E6BA8();
  return [v10 setFrame_];
}

id sub_1A229352C(uint64_t a1, uint64_t a2)
{
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x98))(a2);

  return [v2 sendActionsForControlEvents_];
}

void sub_1A22935A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x98);
  v6 = a1;
  v5(a4);
  [v6 sendActionsForControlEvents_];
}

void sub_1A2293640()
{
  v1 = v0;
  v2 = [*(v0 + OBJC_IVAR____TtC13MediaControls7Stepper_decrementButton) imageView];
  v3 = MEMORY[0x1E69E7D40];
  if (v2)
  {
    v4 = v2;
    v5 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x108))();
    if (v5)
    {
      v6 = v5;
      v7 = [v1 traitCollection];
      (*(*v6 + 160))(0, v4, v7);
    }
  }

  v8 = [*(v1 + OBJC_IVAR____TtC13MediaControls7Stepper_incrementButton) imageView];
  if (v8)
  {
    v12 = v8;
    v9 = (*((*v3 & *v1) + 0x108))();
    if (v9)
    {
      v10 = v9;
      v11 = [v1 traitCollection];
      (*(*v10 + 160))(0, v12, v11);
    }
  }
}

id sub_1A229382C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Stepper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A22938EC(void *a1)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0896E8);
  v22 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v3 = v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0896F0);
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0896F8);
  v25 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2292624();
  v10 = v26;
  sub_1A22E7308();
  if (v10)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = v4;
  v26 = a1;
  v12 = v23;
  v11 = v24;
  v13 = v9;
  v14 = sub_1A22E7148();
  if (*(v14 + 16) != 1)
  {
    v16 = sub_1A22E6EE8();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089700);
    *v18 = &type metadata for Stepper.AdjustmentType;
    sub_1A22E70C8();
    sub_1A22E6ED8();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6AF8], v16);
    swift_willThrow();
    (*(v25 + 8))(v13, v7);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v20[1] = v14;
  v27 = *(v14 + 32);
  if (v27)
  {
    v29 = 1;
    sub_1A2292678();
    sub_1A22E70B8();
    v15 = v25;
    (*(v22 + 8))(v3, v11);
  }

  else
  {
    v28 = 0;
    sub_1A22926CC();
    sub_1A22E70B8();
    v15 = v25;
    (*(v12 + 8))(v6, v21);
  }

  (*(v15 + 8))(v9, v7);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v26);
  return v27;
}

void sub_1A2293D4C()
{
  *(v0 + OBJC_IVAR____TtC13MediaControls7Stepper_value) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls7Stepper_style) = 0x4020000000000000;
  v1 = OBJC_IVAR____TtC13MediaControls7Stepper_decrementButton;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v2 = OBJC_IVAR____TtC13MediaControls7Stepper_incrementButton;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  *(v0 + OBJC_IVAR____TtC13MediaControls7Stepper_symbolConfiguration) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls7Stepper_decrementImage) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls7Stepper_incrementImage) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls7Stepper_visualStylingProvider) = 0;
  sub_1A22E7028();
  __break(1u);
}

unint64_t sub_1A2293E40()
{
  result = qword_1EB0896E0;
  if (!qword_1EB0896E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0896E0);
  }

  return result;
}

unint64_t sub_1A2293EE8()
{
  result = qword_1EB08F2F0;
  if (!qword_1EB08F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB08F2F0);
  }

  return result;
}

unint64_t sub_1A2293F40()
{
  result = qword_1EB08F400;
  if (!qword_1EB08F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB08F400);
  }

  return result;
}

unint64_t sub_1A2293F98()
{
  result = qword_1EB08F408[0];
  if (!qword_1EB08F408[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB08F408);
  }

  return result;
}

unint64_t sub_1A2293FF0()
{
  result = qword_1EB08F490;
  if (!qword_1EB08F490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB08F490);
  }

  return result;
}

unint64_t sub_1A2294048()
{
  result = qword_1EB08F498[0];
  if (!qword_1EB08F498[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB08F498);
  }

  return result;
}

unint64_t sub_1A22940A0()
{
  result = qword_1EB08F520;
  if (!qword_1EB08F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB08F520);
  }

  return result;
}

unint64_t sub_1A22940F8()
{
  result = qword_1EB08F528[0];
  if (!qword_1EB08F528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB08F528);
  }

  return result;
}

id sub_1A2294158()
{
  type metadata accessor for SessionsView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_1A22941A4()
{
  result = [v0 viewIfLoaded];
  if (result)
  {
    v2 = result;
    type metadata accessor for SessionsView();
    result = swift_dynamicCastClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1A2294200()
{
  v1 = (v0 + OBJC_IVAR____TtC13MediaControls22SessionsViewController_dismissHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_1A2111D40(*v1);
  return v2;
}

uint64_t sub_1A229425C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13MediaControls22SessionsViewController_dismissHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1A210F5C0(v6);
}

uint64_t sub_1A229431C()
{
  v1 = OBJC_IVAR____TtC13MediaControls22SessionsViewController_onScreen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A2294360(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls22SessionsViewController_onScreen;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC13MediaControls22SessionsViewController_sessionsView)) + 0x168))(a1);
}

void (*sub_1A2294408(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC13MediaControls22SessionsViewController_onScreen;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A2294490;
}

void sub_1A2294490(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    (*((*MEMORY[0x1E69E7D40] & **(v3[3] + OBJC_IVAR____TtC13MediaControls22SessionsViewController_sessionsView)) + 0x168))(*(v3[3] + v3[4]));
  }

  free(v3);
}

double sub_1A2294524()
{
  v1 = v0 + OBJC_IVAR____TtC13MediaControls22SessionsViewController_contentAlignmentPoint;
  swift_beginAccess();
  return *v1;
}

void sub_1A229456C(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13MediaControls22SessionsViewController_contentAlignmentPoint);
  v6 = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  v7 = MEMORY[0x1E69E7D40];
  v8 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x88))(v6);
  if (v8)
  {
    v9 = v8;
    (*((*v7 & *v8) + 0x180))(*v5, v5[1]);
  }
}

void (*sub_1A2294644(uint64_t *a1))(uint64_t *a1, char a2)
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
  v4 = OBJC_IVAR____TtC13MediaControls22SessionsViewController_contentAlignmentPoint;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A22946CC;
}

void sub_1A22946CC(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = MEMORY[0x1E69E7D40];
    v6 = (*((*MEMORY[0x1E69E7D40] & **(v3 + 24)) + 0x88))(v4);
    if (v6)
    {
      v7 = v6;
      v8 = (*(v3 + 24) + *(v3 + 32));
      (*((*v5 & *v6) + 0x180))(*v8, v8[1]);
    }
  }

  free(v3);
}

id sub_1A229479C(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1A22976BC(a1, a2);
  swift_unknownObjectRelease();
  return v6;
}

id sub_1A22947F0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A22976BC(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1A2294824@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69AE578];
  v3 = sub_1A22E58F8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1A22948F8()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for SessionsViewController();
  v1 = objc_msgSendSuper2(&v13, sel_viewDidLoad);
  v2 = *(v0 + OBJC_IVAR____TtC13MediaControls22SessionsViewController_sessionsView);
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))(v1);
  (*((*v3 & *v2) + 0x180))(v4);
  [v2 setMaximumContentSizeCategory_];
  v5 = *(v0 + OBJC_IVAR____TtC13MediaControls22SessionsViewController_sessionsPresenter);
  v6 = *(*v5 + 120);
  v7 = swift_unknownObjectRetain();
  v8 = v6(v7, &off_1F14415E0);
  (*(*v5 + 184))(v8);
  v9 = *((*v3 & *v2) + 0x100);
  v10 = swift_unknownObjectRetain();
  v11 = v9(v10, &off_1F1441610);
  (*(*v5 + 144))(v14, v11);
  (*((*v3 & *v0) + 0xF8))(v14);
  return sub_1A2248550(v14);
}

uint64_t sub_1A2294B90(char a1, SEL *a2, uint64_t a3)
{
  v8.receiver = v3;
  v8.super_class = type metadata accessor for SessionsViewController();
  objc_msgSendSuper2(&v8, *a2, a1 & 1);
  return (*((*MEMORY[0x1E69E7D40] & *v3) + 0xB0))(a3);
}

void sub_1A2294C2C(void *a1, uint64_t a2, uint64_t a3, const char **a4, uint64_t a5)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for SessionsViewController();
  v8 = *a4;
  v9 = v10.receiver;
  objc_msgSendSuper2(&v10, v8, a3);
  (*((*MEMORY[0x1E69E7D40] & *v9) + 0xB0))(a5);
}

uint64_t sub_1A2294CD0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13MediaControls22SessionsViewController_routingMode;
  swift_beginAccess();
  v4 = sub_1A22E58F8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1A2294D58(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls22SessionsViewController_routingMode;
  swift_beginAccess();
  v4 = sub_1A22E58F8();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1A2294E48(_OWORD *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = a1[1];
  v34[0] = *a1;
  v34[1] = v4;
  v35[0] = a1[2];
  *(v35 + 9) = *(a1 + 41);
  v5 = sub_1A22E6248();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A2104EA0();
  (*(v6 + 16))(v8, v9, v5);
  sub_1A221CB68(a1, v32);
  v10 = sub_1A22E6238();
  v11 = sub_1A22E6A68();
  sub_1A2248550(a1);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v27 = v1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136315394;
    v15 = sub_1A22E7388();
    v17 = sub_1A2103450(v15, v16, &v31);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = a1[1];
    v28 = *a1;
    v29 = v18;
    v30[0] = a1[2];
    *(v30 + 9) = *(a1 + 41);
    sub_1A221CB68(a1, v32);
    sub_1A2297960();
    v19 = sub_1A22E71D8();
    v21 = v20;
    v32[0] = v28;
    v32[1] = v29;
    v33[0] = v30[0];
    *(v33 + 9) = *(v30 + 9);
    sub_1A2248550(v32);
    v22 = sub_1A2103450(v19, v21, &v31);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1A20FC000, v10, v11, "[%s] update viewModel %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v14, -1, -1);
    v23 = v13;
    v2 = v27;
    MEMORY[0x1A58DCD00](v23, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v24 = *((*MEMORY[0x1E69E7D40] & **(v2 + OBJC_IVAR____TtC13MediaControls22SessionsViewController_sessionsView)) + 0x118);
  sub_1A221CB68(a1, v32);
  return v24(v34);
}

void sub_1A2295178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v66 = a2;
  v4 = sub_1A22E5968();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v64 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v47 - v9;
  v65 = v11;
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v47 - v12;
  sub_1A22E5988();
  v14 = v13;
  sub_1A22E5958();
  v16 = v15;
  if (v14)
  {
    v17 = sub_1A22E6598();

    if (v16)
    {
LABEL_3:
      v18 = sub_1A22E6598();

      goto LABEL_6;
    }
  }

  else
  {
    v17 = 0;
    if (v15)
    {
      goto LABEL_3;
    }
  }

  v18 = 0;
LABEL_6:
  v19 = [objc_opt_self() alertControllerWithTitle:v17 message:v18 preferredStyle:1];

  v20 = sub_1A22E5978();
  v21 = *(v20 + 16);
  if (v21)
  {
    v48 = v19;
    v63 = a3;
    v72 = MEMORY[0x1E69E7CC0];
    sub_1A22E6F38();
    v22 = objc_opt_self();
    v24 = *(v5 + 16);
    v23 = v5 + 16;
    v69 = v24;
    v60 = *(v23 + 64);
    v61 = v22;
    v47 = v20;
    v59 = (v60 + 32) & ~v60;
    v25 = v20 + v59;
    v58 = *(v23 + 56);
    v57 = (v23 + 72);
    v56 = *MEMORY[0x1E69AE5C0];
    v55 = *MEMORY[0x1E69AE5C8];
    v54 = *MEMORY[0x1E69AE5B8];
    v51 = *MEMORY[0x1E69AE5D0];
    v68 = (v23 - 8);
    v50 = (v23 + 80);
    v53 = (v23 + 16);
    v52 = v71;
    v62 = v10;
    v26 = v67;
    do
    {
      v30 = v69;
      v69(v26, v25, v4);
      v30(v10, v26, v4);
      v31 = (*v57)(v10, v4);
      if (v31 == v56 || v31 == v55 || v31 == v54)
      {
        (*v50)(v10, v4);
        v34 = *(v10 + 1);
      }

      else
      {
        if (v31 != v51)
        {
          (*v68)(v10, v4);
        }

        v34 = 0;
      }

      v35 = v64;
      v36 = v23;
      v69(v64, v26, v4);
      v37 = v59;
      v38 = swift_allocObject();
      v39 = v63;
      *(v38 + 16) = v66;
      *(v38 + 24) = v39;
      (*v53)(v38 + v37, v35, v4);

      if (v34)
      {
        v27 = sub_1A22E6598();
      }

      else
      {
        v27 = 0;
      }

      v71[2] = sub_1A22979B4;
      v71[3] = v38;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v71[0] = sub_1A224DB84;
      v71[1] = &block_descriptor_15;
      v28 = _Block_copy(aBlock);

      v29 = [v61 actionWithTitle:v27 style:0 handler:{v28, v47}];
      _Block_release(v28);

      v26 = v67;
      (*v68)(v67, v4);
      sub_1A22E6F08();
      sub_1A22E6F48();
      sub_1A22E6F58();
      sub_1A22E6F18();
      v25 += v58;
      --v21;
      v23 = v36;
      v10 = v62;
    }

    while (v21);

    v40 = v72;
    v19 = v48;
    if (!(v72 >> 62))
    {
      goto LABEL_25;
    }
  }

  else
  {

    v40 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
LABEL_25:
      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_26;
    }
  }

  v41 = sub_1A22E6DE8();
LABEL_26:
  v42 = v19;
  if (v41)
  {
    v43 = 0;
    while (1)
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        v44 = MEMORY[0x1A58DB0F0](v43, v40);
      }

      else
      {
        if (v43 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v44 = *(v40 + 8 * v43 + 32);
      }

      v45 = v44;
      v46 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      [v42 addAction_];

      ++v43;
      if (v46 == v41)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
  }

  else
  {
LABEL_35:

    [v49 presentViewController:v42 animated:1 completion:0];
  }
}

uint64_t sub_1A22957CC()
{
  v1 = v0;
  v2 = sub_1A22E5968();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x1E69AE5C0] || v6 == *MEMORY[0x1E69AE5C8] || v6 == *MEMORY[0x1E69AE5B8])
  {
    (*(v3 + 96))(v5, v2);
    return *v5;
  }

  else
  {
    if (v6 != *MEMORY[0x1E69AE5D0])
    {
      (*(v3 + 8))(v5, v2);
    }

    return 0;
  }
}

void (*sub_1A2295938())(void)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x90))();
  if (result)
  {
    v2 = result;
    result();

    return sub_1A210F5C0(v2);
  }

  return result;
}

void (*sub_1A22959C0())(void)
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1A22E6248();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A2104EA0();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_1A22E6238();
  v8 = sub_1A22E6A98();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v11 = sub_1A22E7388();
    v13 = sub_1A2103450(v11, v12, &v18);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1A20FC000, v7, v8, "[%s] didTapBackground", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1A58DCD00](v10, -1, -1);
    MEMORY[0x1A58DCD00](v9, -1, -1);
  }

  v14 = (*(v3 + 8))(v5, v2);
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))(v14);
  if (result)
  {
    v16 = result;
    result();
    return sub_1A210F5C0(v16);
  }

  return result;
}

uint64_t sub_1A2295BE8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  v7 = sub_1A22E6248();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A2104EA0();
  (*(v8 + 16))(v10, v11, v7);

  v12 = sub_1A22E6238();
  v13 = sub_1A22E6A98();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v29 = v7;
    v15 = v14;
    v28 = swift_slowAlloc();
    v30 = v28;
    *v15 = 136315394;
    v16 = sub_1A22E7388();
    v18 = a3;
    v19 = v4;
    v20 = sub_1A2103450(v16, v17, &v30);

    *(v15 + 4) = v20;
    v4 = v19;
    a3 = v18;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_1A2103450(a2, v18, &v30);
    _os_log_impl(&dword_1A20FC000, v12, v13, "[%s] didTapSession id:%s", v15, 0x16u);
    v21 = v28;
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v21, -1, -1);
    MEMORY[0x1A58DCD00](v15, -1, -1);

    v22 = (*(v8 + 8))(v10, v29);
  }

  else
  {

    v22 = (*(v8 + 8))(v10, v7);
  }

  (*(**(v4 + OBJC_IVAR____TtC13MediaControls22SessionsViewController_sessionsPresenter) + 136))(v22);
  v24 = v23;
  ObjectType = swift_getObjectType();
  (*(v24 + 16))(a2, a3, ObjectType, v24);
  return swift_unknownObjectRelease();
}

uint64_t sub_1A2295EA8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const char *a5)
{
  swift_getObjectType();
  v8 = sub_1A22E6248();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A2104EA0();
  (*(v9 + 16))(v11, v12, v8);

  v13 = sub_1A22E6238();
  v14 = sub_1A22E6A98();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v26 = v17;
    *v16 = 136315394;
    v18 = sub_1A22E7388();
    v20 = sub_1A2103450(v18, v19, &v26);
    v24 = a5;
    v21 = v20;

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1A2103450(v25, a4, &v26);
    _os_log_impl(&dword_1A20FC000, v13, v14, v24, v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v17, -1, -1);
    MEMORY[0x1A58DCD00](v16, -1, -1);
  }

  return (*(v9 + 8))(v11, v8);
}

id sub_1A22960C0(double a1, double a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = sub_1A22E6248();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A2104EA0();
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_1A22E6238();
  v12 = sub_1A22E6A68();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315394;
    v15 = sub_1A22E7388();
    v17 = sub_1A2103450(v15, v16, &v23);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = sub_1A22E6BD8();
    v20 = sub_1A2103450(v18, v19, &v23);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_1A20FC000, v11, v12, "[%s] contentSizeDidChange:%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v14, -1, -1);
    MEMORY[0x1A58DCD00](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  return [v3 setPreferredContentSize_];
}

uint64_t sub_1A22962F8()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1A22E6248();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A2104EA0();
  (*(v3 + 16))(v5, v6, v2);

  v7 = sub_1A22E6238();
  v8 = sub_1A22E6A98();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v22 = v1;
    v10 = v9;
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315394;
    v12 = sub_1A22E7388();
    v14 = sub_1A2103450(v12, v13, &v23);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = sub_1A22E6938();
    v17 = sub_1A2103450(v15, v16, &v23);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_1A20FC000, v7, v8, "[%s] Updating expandedSessionIdentifiers=%s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v11, -1, -1);
    v18 = v10;
    v1 = v22;
    MEMORY[0x1A58DCD00](v18, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v19 = *(**(v1 + OBJC_IVAR____TtC13MediaControls22SessionsViewController_sessionsPresenter) + 216);

  return v19(v20);
}

uint64_t sub_1A2296568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC13MediaControls22SessionsViewController_sessionsController + 8);
  ObjectType = swift_getObjectType();
  return (*(v6 + 48))(a2, a3, ObjectType, v6);
}

uint64_t sub_1A22965D0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1A22E6248();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2298A60(v4);
  v7 = sub_1A22E6238();
  v8 = sub_1A22E6A68();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    v11 = sub_1A22E7388();
    v13 = sub_1A2103450(v11, v12, &v17);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1A20FC000, v7, v8, "[%s] SHMR didSelectAllSpeakers", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1A58DCD00](v10, -1, -1);
    MEMORY[0x1A58DCD00](v9, -1, -1);
  }

  v14 = (*(v3 + 8))(v6, v2);
  return (*(**(v1 + OBJC_IVAR____TtC13MediaControls22SessionsViewController_sessionsPresenter) + 200))(v14);
}

uint64_t sub_1A22967B4()
{
  sub_1A2215570();
  result = sub_1A22E6568();
  if ((result & 1) == 0)
  {
    return (*(**(v0 + OBJC_IVAR____TtC13MediaControls22SessionsViewController_sessionsPresenter) + 192))();
  }

  return result;
}

void sub_1A229684C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_1A2297AF8();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = ObjectType;

  v5 = sub_1A225C800(sub_1A2297B44, v4);

  v6 = objc_opt_self();
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = v5;
  v7[4] = ObjectType;
  v11[4] = sub_1A2297B4C;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1A2262D4C;
  v11[3] = &block_descriptor_17;
  v8 = _Block_copy(v11);
  v9 = v1;
  v10 = v5;

  [v6 requestWithCompletion_];
  _Block_release(v8);
}

void sub_1A22969DC(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v43 = a5;
  v9 = sub_1A22E6248();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A2104EA0();
  (*(v10 + 16))(v12, v13, v9);
  v14 = a2;
  v15 = a3;
  v16 = sub_1A22E6238();
  v17 = sub_1A22E6A58();

  if (os_log_type_enabled(v16, v17))
  {
    v40 = v17;
    v41 = a1;
    v42 = a4;
    v18 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v44[0] = v39;
    *v18 = 136315650;
    v19 = sub_1A22E7388();
    v21 = sub_1A2103450(v19, v20, v44);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    if (a2 && (v22 = [v14 mediaRouteIdentifier]) != 0)
    {
      v23 = v22;
      v24 = sub_1A22E65C8();
      v26 = v25;

      v27 = v41;
    }

    else
    {
      v26 = 0xE300000000000000;
      v27 = v41;
      v24 = 7104878;
    }

    v28 = sub_1A2103450(v24, v26, v44);

    *(v18 + 14) = v28;
    *(v18 + 22) = 2112;
    if (a3)
    {
      v29 = a3;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      v31 = v30;
    }

    else
    {
      v30 = 0;
      v31 = 0;
    }

    a1 = v27;
    *(v18 + 24) = v30;
    v32 = v38;
    *v38 = v31;
    _os_log_impl(&dword_1A20FC000, v16, v40, "[%s] ShareAudio dismissed routeIdentfier:%s error:%@", v18, 0x20u);
    sub_1A226ADE4(v32);
    MEMORY[0x1A58DCD00](v32, -1, -1);
    v33 = v39;
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v33, -1, -1);
    MEMORY[0x1A58DCD00](v18, -1, -1);

    (*(v10 + 8))(v12, v9);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    v36 = sub_1A211A6BC();
    sub_1A22D1D0C(a1, v36 & 1, sub_1A2297C14);
  }
}

id sub_1A2296D38(char a1, uint64_t a2, void *a3)
{
  v6 = sub_1A22E6248();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    MEMORY[0x1EEE9AC00](v8);
    *(&v21 - 2) = a2;
    *(&v21 - 1) = a3;
    v11 = sub_1A211A6BC();
    return sub_1A22D1C68(a3, v11 & 1, sub_1A2297B58);
  }

  else
  {
    v13 = sub_1A2104EA0();
    (*(v7 + 16))(v10, v13, v6);
    v14 = sub_1A22E6238();
    v15 = sub_1A22E6A98();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      v18 = sub_1A22E7388();
      v20 = sub_1A2103450(v18, v19, &v22);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1A20FC000, v14, v15, "[%s] ShareAudio not presented - device not unlocked", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1A58DCD00](v17, -1, -1);
      MEMORY[0x1A58DCD00](v16, -1, -1);
    }

    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_1A2296F68()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1A22E6248();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A2104EA0();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_1A22E6238();
  v8 = sub_1A22E6A98();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    v11 = sub_1A22E7388();
    v13 = sub_1A2103450(v11, v12, &v19);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1A20FC000, v7, v8, "[%s] accessibilityPerformEscape", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1A58DCD00](v10, -1, -1);
    MEMORY[0x1A58DCD00](v9, -1, -1);
  }

  v14 = (*(v3 + 8))(v5, v2);
  v15 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))(v14);
  if (v15)
  {
    v16 = v15;
    v15();
    sub_1A210F5C0(v16);
  }

  return 1;
}

id sub_1A22971C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1A22E6598();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_1A229729C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1A22976BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC13MediaControls22SessionsViewController_sessionsView;
  type metadata accessor for SessionsView();
  *&v3[v6] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = &v3[OBJC_IVAR____TtC13MediaControls22SessionsViewController_dismissHandler];
  *v7 = 0;
  v7[1] = 0;
  v3[OBJC_IVAR____TtC13MediaControls22SessionsViewController_onScreen] = 0;
  *&v3[OBJC_IVAR____TtC13MediaControls22SessionsViewController_contentAlignmentPoint] = xmmword_1A230A760;
  v8 = OBJC_IVAR____TtC13MediaControls22SessionsViewController_routingMode;
  v9 = *MEMORY[0x1E69AE578];
  v10 = sub_1A22E58F8();
  (*(*(v10 - 8) + 104))(&v3[v8], v9, v10);
  v11 = &v3[OBJC_IVAR____TtC13MediaControls22SessionsViewController_sessionsController];
  *v11 = a1;
  v11[1] = a2;
  type metadata accessor for SessionsPresenter();
  v12 = swift_unknownObjectRetain_n();
  *&v3[OBJC_IVAR____TtC13MediaControls22SessionsViewController_sessionsPresenter] = sub_1A22767F8(v12, a2);
  v14.receiver = v3;
  v14.super_class = type metadata accessor for SessionsViewController();
  return objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1A2297808()
{
  v1 = OBJC_IVAR____TtC13MediaControls22SessionsViewController_sessionsView;
  type metadata accessor for SessionsView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = (v0 + OBJC_IVAR____TtC13MediaControls22SessionsViewController_dismissHandler);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls22SessionsViewController_onScreen) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls22SessionsViewController_contentAlignmentPoint) = xmmword_1A230A760;
  v3 = OBJC_IVAR____TtC13MediaControls22SessionsViewController_routingMode;
  v4 = *MEMORY[0x1E69AE578];
  v5 = sub_1A22E58F8();
  (*(*(v5 - 8) + 104))(v0 + v3, v4, v5);
  sub_1A22E7028();
  __break(1u);
}

uint64_t type metadata accessor for SessionsViewController()
{
  result = qword_1EB08F5B0;
  if (!qword_1EB08F5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A2297960()
{
  result = qword_1EB089730;
  if (!qword_1EB089730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB089730);
  }

  return result;
}

uint64_t sub_1A2297A24()
{
  result = sub_1A22E58F8();
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

unint64_t sub_1A2297AF8()
{
  result = qword_1EB089740;
  if (!qword_1EB089740)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB089740);
  }

  return result;
}

id sub_1A2297B58()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC13MediaControls22SessionsViewController_sessionsView);
  result = [v1 view];
  if (result)
  {
    v4 = result;
    v5 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xF0))(v8);
    v7 = *v6;
    *v6 = v4;

    return v5(v8, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A2297C14()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC13MediaControls22SessionsViewController_sessionsView);

    v3 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xF0))(v6);
    v5 = *v4;
    *v4 = 0;

    v3(v6, 0);
  }
}

void (*sub_1A2297D24(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1A2255490;
}

uint64_t sub_1A2297DE8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = (*(*v3 + 88))();
  if (result)
  {
    v9 = v8;
    ObjectType = swift_getObjectType();
    a3(a1, a2, ObjectType, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A2297EAC()
{
  if (!(*(*v0 + 88))())
  {
    return 0;
  }

  swift_getObjectType();
  v1 = sub_1A22E6198();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1A2297F30()
{
  result = (*(*v0 + 88))();
  if (result)
  {
    swift_getObjectType();
    sub_1A22E61D8();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A2297FF0(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t))
{
  result = (*(*v2 + 88))();
  if (result)
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    a2(a1, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A2298088()
{
  result = (*(*v0 + 88))();
  if (result)
  {
    swift_getObjectType();
    sub_1A22E61A8();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A229813C()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t sub_1A2298180()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t *sub_1A22983AC()
{
  if (qword_1ED950D10 != -1)
  {
    swift_once();
  }

  return &qword_1ED950D18;
}

uint64_t *sub_1A2298440()
{
  if (qword_1ED950D40 != -1)
  {
    swift_once();
  }

  return &qword_1ED950D48;
}

uint64_t *sub_1A22984D0()
{
  if (qword_1EB08F5C0 != -1)
  {
    swift_once();
  }

  return &qword_1EB08F5C8;
}

uint64_t sub_1A2298544()
{
  sub_1A2298A14();
  result = sub_1A22E6D48();
  qword_1ED950D28 = result;
  return result;
}

uint64_t *sub_1A22985AC()
{
  if (qword_1ED950D20 != -1)
  {
    swift_once();
  }

  return &qword_1ED950D28;
}

uint64_t sub_1A2298640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1A2298A14();
  result = sub_1A22E6D48();
  *a4 = result;
  return result;
}

uint64_t *sub_1A22986A8()
{
  if (qword_1ED950D30 != -1)
  {
    swift_once();
  }

  return &qword_1ED950D38;
}

id sub_1A229871C(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t sub_1A2298930(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = sub_1A22E6248();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = *a4;
  return sub_1A22E6258();
}

unint64_t sub_1A2298A14()
{
  result = qword_1ED94E930;
  if (!qword_1ED94E930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED94E930);
  }

  return result;
}

uint64_t sub_1A2298A80@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v2 = *v1;
  v3 = sub_1A22E6868();
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - v4;
  v6 = sub_1A22E6898();
  v7 = sub_1A22E6D68();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  v14 = *(v2 + 96);
  swift_beginAccess();
  (*(v8 + 16))(v13, &v1[v14], v7);
  v15 = *(v6 - 8);
  if ((*(v15 + 48))(v13, 1, v6) != 1)
  {
    return (*(v15 + 32))(v21, v13, v6);
  }

  (*(v8 + 8))(v13, v7);
  (*(v19 + 104))(v5, *MEMORY[0x1E69E8650], v20);
  v16 = v21;
  sub_1A22E68A8();
  (*(v15 + 16))(v11, v16, v6);
  (*(v15 + 56))(v11, 0, 1, v6);
  swift_beginAccess();
  (*(v8 + 40))(&v1[v14], v11, v7);
  return swift_endAccess();
}

uint64_t sub_1A2298DA0(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1);
  v16 = sub_1A22E6858();
  v4 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v6 = &v16 - v5;
  v7 = sub_1A22E6888();
  v8 = sub_1A22E6D68();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *(v7 - 8);
  (*(v12 + 16))(&v16 - v10, a1, v7);
  (*(v12 + 56))(v11, 0, 1, v7);
  v13 = *(*a2 + 88);
  swift_beginAccess();
  (*(v9 + 40))(a2 + v13, v11, v8);
  v14 = swift_endAccess();
  (*(*a2 + 160))(v14);
  sub_1A22E6878();
  return (*(v4 + 8))(v6, v16);
}

uint64_t sub_1A229905C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v4 = a2(0, a1);
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 1, 1, v4);
}

uint64_t sub_1A22990D4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v24 = &v22 - v4;
  v5 = sub_1A22E6888();
  v26 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  v8 = sub_1A22E6D68();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  v23 = v3;
  v12 = sub_1A22E6858();
  v27 = sub_1A22E6D68();
  v13 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v15 = &v22 - v14;
  v16 = *(v2 + 88);
  swift_beginAccess();
  v17 = v1 + v16;
  v18 = v26;
  (*(v9 + 16))(v11, v17, v8);
  if ((*(v18 + 48))(v11, 1, v5))
  {
    (*(v9 + 8))(v11, v8);
    v19 = 1;
  }

  else
  {
    (*(v18 + 16))(v7, v11, v5);
    (*(v9 + 8))(v11, v8);
    v20 = *(*v1 + 104);
    swift_beginAccess();
    (*(v25 + 16))(v24, v1 + v20, v23);
    sub_1A22E6878();
    (*(v18 + 8))(v7, v5);
    v19 = 0;
  }

  (*(*(v12 - 8) + 56))(v15, v19, 1, v12);
  return (*(v13 + 8))(v15, v27);
}

uint64_t sub_1A22994A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1A2299548(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v5 - 8);
  (*(v6 + 24))(v1 + v4, a1, v5);
  v7 = swift_endAccess();
  sub_1A22990D4(v7);
  return (*(v6 + 8))(a1, v5);
}

uint64_t (*sub_1A2299630(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A22996A0;
}

uint64_t sub_1A22996A0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A22990D4(result);
  }

  return result;
}

uint64_t sub_1A22996D8(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1A2299718(a1);
  return v2;
}

uint64_t sub_1A2299718(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = sub_1A22E6888();
  (*(*(v5 - 8) + 56))(v1 + v3, 1, 1, v5);
  v6 = *(*v1 + 96);
  v7 = sub_1A22E6898();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  (*(*(v4 - 8) + 32))(v1 + *(*v1 + 104), a1, v4);
  return v1;
}

uint64_t sub_1A2299854()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  sub_1A22E6888();
  v3 = sub_1A22E6D68();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(*v0 + 96);
  sub_1A22E6898();
  v5 = sub_1A22E6D68();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  (*(*(v2 - 8) + 8))(v0 + *(*v0 + 104), v2);
  return v0;
}

uint64_t sub_1A2299990()
{
  sub_1A2299854();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1A22999E8()
{
  sub_1A22E6888();
  result = sub_1A22E6D68();
  if (v1 <= 0x3F)
  {
    sub_1A22E6898();
    result = sub_1A22E6D68();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1A2299B34(uint64_t a1)
{
  if (a1 == 1)
  {
    return 2;
  }

  else
  {
    return a1 == 2;
  }
}

uint64_t UIUserInterfaceStyle.description.getter(uint64_t a1)
{
  v1 = 0x69636570736E752ELL;
  if (a1 == 2)
  {
    v1 = 0x6B7261642ELL;
  }

  if (a1 == 1)
  {
    return 0x746867696C2ELL;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1A2299BA4()
{
  v1 = 0x69636570736E752ELL;
  if (*v0 == 2)
  {
    v1 = 0x6B7261642ELL;
  }

  if (*v0 == 1)
  {
    return 0x746867696C2ELL;
  }

  else
  {
    return v1;
  }
}

void type metadata accessor for UIUserInterfaceStyle()
{
  if (!qword_1EB089748)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB089748);
    }
  }
}

uint64_t sub_1A2299C50@<X0>(uint64_t *a1@<X8>)
{
  v21 = a1;
  v1 = sub_1A22E63A8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A22E63C8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A22E6408();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v20 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v14;
  (*(v2 + 104))(v4, *MEMORY[0x1E69DC358], v1);
  sub_1A22E63B8();
  (*(v2 + 8))(v4, v1);
  sub_1A22E6418();
  sub_1A22E63F8();
  v16 = *(v7 + 8);
  v16(v10, v6);
  sub_1A22E63E8();
  v16(v13, v6);
  v17 = MEMORY[0x1E69DC388];
  v18 = v21;
  v21[3] = v6;
  v18[4] = v17;
  __swift_allocate_boxed_opaque_existential_0Tm(v18);
  sub_1A22E63D8();
  return (v16)(v15, v6);
}

unint64_t sub_1A2299F34@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() blackColor];
  v3 = [v2 colorWithAlphaComponent_];

  result = sub_1A2299FBC();
  v5 = MEMORY[0x1E69DC4E0];
  a1[3] = result;
  a1[4] = v5;
  *a1 = v3;
  return result;
}

unint64_t sub_1A2299FBC()
{
  result = qword_1ED94E968;
  if (!qword_1ED94E968)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED94E968);
  }

  return result;
}

uint64_t sub_1A229A020@<X0>(char a1@<W0>, int a2@<W1>, void (*a3)(uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  v32 = a3;
  v34 = a2;
  v35 = a4;
  v33 = sub_1A22E6408();
  v5 = *(v33 - 8);
  v6 = MEMORY[0x1EEE9AC00](v33);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v30 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - v12;
  v14 = sub_1A22E63C8();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v30 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v30 - v23;
  v32(v22);
  if (a1)
  {
    sub_1A22E6398();
  }

  else
  {
    (*(v15 + 16))(v18, v24, v14);
  }

  v31 = v14;
  (*(v15 + 32))(v21, v18, v14);
  sub_1A22E6418();
  sub_1A22E63F8();
  v25 = *(v5 + 8);
  v26 = v33;
  v25(v8, v33);
  sub_1A22E63E8();
  v25(v11, v26);
  v27 = MEMORY[0x1E69DC388];
  v28 = v35;
  v35[3] = v26;
  v28[4] = v27;
  __swift_allocate_boxed_opaque_existential_0Tm(v28);
  sub_1A22E63D8();

  v25(v13, v26);
  return (*(v15 + 8))(v24, v31);
}

uint64_t sub_1A229A344@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1A22E63C8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v6);
  sub_1A2299C50(a2);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1A229A49C()
{
  v1 = OBJC_IVAR___MRUMediaControlsModuleGradientView_isGradientEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A229A534(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR___MRUMediaControlsModuleGradientView_isGradientEnabled;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v5 != v3)
  {
    v6 = [v1 layer];
    if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x68))())
    {
      v7 = *(v1 + OBJC_IVAR___MRUMediaControlsModuleGradientView_gradientLayer);
    }

    else
    {
      v7 = 0;
    }

    [v6 setMask_];
  }
}

uint64_t sub_1A229A620@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x68))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A229A6D8(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___MRUMediaControlsModuleGradientView_isGradientEnabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1A229A76C;
}

void sub_1A229A76C(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(v4 + v3);
  *(v4 + v3) = v5;
  if (a2)
  {
    if ((v5 ^ v6))
    {
      goto LABEL_5;
    }
  }

  else if ((v5 ^ v6))
  {
LABEL_5:
    v7 = v2[3];
    v8 = [v7 layer];
    if ((*((*MEMORY[0x1E69E7D40] & *v7) + 0x68))())
    {
      v9 = *(v2[3] + OBJC_IVAR___MRUMediaControlsModuleGradientView_gradientLayer);
    }

    else
    {
      v9 = 0;
    }

    [v8 setMask_];
  }

  free(v2);
}

void sub_1A229AA04(void *a1)
{
  (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR___MRUMediaControlsModuleGradientView_backdropImageView)) + 0x78))();
}

uint64_t sub_1A229AA80@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))();
  *a2 = result;
  return result;
}

uint64_t sub_1A229AADC(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x88);
  v4 = *a1;
  return v3(v2);
}

void (*sub_1A229AB44(void *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR___MRUMediaControlsModuleGradientView_backdropImageView);
  a1[1] = v2;
  *a1 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x60))();
  return sub_1A229ABC8;
}

void sub_1A229ABC8(uint64_t a1, char a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **(a1 + 8)) + 0x78);
  v5 = *a1;
  if (a2)
  {
    v3 = v5;
    v2(v5);

    v4 = v3;
  }

  else
  {
    v2(v5);
    v4 = v5;
  }
}

id sub_1A229AC74()
{
  type metadata accessor for CrossfadeImageView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = sub_1A2114DFC();

  return v1;
}

id sub_1A229ACC0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E6979380]);

  return [v0 init];
}

char *sub_1A229ACF8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v4[OBJC_IVAR___MRUMediaControlsModuleGradientView_isGradientEnabled] = 1;
  v10 = OBJC_IVAR___MRUMediaControlsModuleGradientView_backdropImageView;
  type metadata accessor for CrossfadeImageView();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = sub_1A2114DFC();

  *&v5[v10] = v12;
  v13 = OBJC_IVAR___MRUMediaControlsModuleGradientView_gradientLayer;
  *&v5[v13] = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
  v37.receiver = v5;
  v37.super_class = type metadata accessor for MediaControlsModuleGradientView();
  v14 = objc_msgSendSuper2(&v37, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = *&v14[OBJC_IVAR___MRUMediaControlsModuleGradientView_backdropImageView];
  v16 = v14;
  [v16 addSubview_];
  v17 = OBJC_IVAR___MRUMediaControlsModuleGradientView_gradientLayer;
  v18 = *&v16[OBJC_IVAR___MRUMediaControlsModuleGradientView_gradientLayer];
  [v16 bounds];
  [v18 setFrame_];

  v19 = *&v16[v17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0898A0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1A2308C50;
  sub_1A2115288(0, &qword_1ED94E950);
  v21 = v19;
  *(v20 + 32) = sub_1A22E6C78();
  *(v20 + 40) = sub_1A22E6C78();
  v22 = sub_1A22E6738();

  [v21 setLocations_];

  v23 = *&v16[v17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088918);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1A230A140;
  v25 = objc_opt_self();
  v26 = v23;
  v27 = [v25 whiteColor];
  v28 = [v27 CGColor];

  type metadata accessor for CGColor(0);
  v30 = v29;
  *(v24 + 56) = v29;
  *(v24 + 32) = v28;
  v31 = [v25 clearColor];
  v32 = [v31 CGColor];

  *(v24 + 88) = v30;
  *(v24 + 64) = v32;
  v33 = sub_1A22E6738();

  [v26 setColors_];

  [v16 setClipsToBounds_];
  sub_1A229B43C();
  v34 = [v16 layer];
  v35 = 0;
  if ((*((*MEMORY[0x1E69E7D40] & *v16) + 0x68))())
  {
    v35 = *&v16[v17];
  }

  [v34 setMask_];

  return v16;
}

id sub_1A229B110()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for MediaControlsModuleGradientView();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v1 = objc_opt_self();
  [v1 begin];
  [v1 setDisableActions_];
  v2 = *&v0[OBJC_IVAR___MRUMediaControlsModuleGradientView_gradientLayer];
  [v0 bounds];
  [v2 setFrame_];
  return [v1 commit];
}

uint64_t sub_1A229B284()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1A22E6A68();
  sub_1A2115288(0, &qword_1ED94E930);
  v3 = sub_1A22E6D38();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v6 = sub_1A22E7388();
    v8 = sub_1A2103450(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1A20FC000, v3, v2, "%s prepareForReuse", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1A58DCD00](v5, -1, -1);
    MEMORY[0x1A58DCD00](v4, -1, -1);
  }

  v9 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x88);

  return v9(0);
}

void sub_1A229B43C()
{
  v1 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0898A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A230E780;
  v3 = *&v0[OBJC_IVAR___MRUMediaControlsModuleGradientView_backdropImageView];
  v4 = [v3 topAnchor];
  v5 = [v0 topAnchor];
  v6 = [v4 constraintEqualToAnchor_];

  *(v2 + 32) = v6;
  v7 = [v3 centerXAnchor];
  v8 = [v0 centerXAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v2 + 40) = v9;
  v10 = [v3 widthAnchor];
  v11 = [v0 widthAnchor];
  v12 = [v10 constraintGreaterThanOrEqualToAnchor_];

  *(v2 + 48) = v12;
  v13 = [v3 widthAnchor];
  v14 = [v3 heightAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v2 + 56) = v15;
  v16 = [v3 bottomAnchor];
  v17 = [v0 bottomAnchor];
  v18 = [v16 constraintGreaterThanOrEqualToAnchor_];

  *(v2 + 64) = v18;
  sub_1A2115288(0, &qword_1ED94EA28);
  v19 = sub_1A22E6738();

  [v1 activateConstraints_];
}

id MediaControlsModuleGradientView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaControlsModuleGradientView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A229B780()
{
  v1 = v0;
  *(v0 + OBJC_IVAR___MRUMediaControlsModuleGradientView_isGradientEnabled) = 1;
  v2 = OBJC_IVAR___MRUMediaControlsModuleGradientView_backdropImageView;
  type metadata accessor for CrossfadeImageView();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = sub_1A2114DFC();

  *(v1 + v2) = v4;
  v5 = OBJC_IVAR___MRUMediaControlsModuleGradientView_gradientLayer;
  *(v1 + v5) = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
  sub_1A22E7028();
  __break(1u);
}

uint64_t sub_1A229B9D8()
{
  v1 = [v0 visibleCells];
  sub_1A229BAA4();
  sub_1A22E6748();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089768);
  sub_1A229BB40();
  v2 = sub_1A22E6708();

  return v2;
}

unint64_t sub_1A229BAA4()
{
  result = qword_1ED94EA80;
  if (!qword_1ED94EA80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED94EA80);
  }

  return result;
}

id sub_1A229BAF0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_dynamicCastUnknownClass();
  v5 = result;
  if (result)
  {
    result = v3;
  }

  *a2 = v5;
  return result;
}

unint64_t sub_1A229BB40()
{
  result = qword_1ED94EAD0;
  if (!qword_1ED94EAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB089768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED94EAD0);
  }

  return result;
}

double sub_1A229BBC8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = v2[1];
  v9 = *v2;
  v10 = v5;
  v11[0] = v2[2];
  *(v11 + 9) = *(v2 + 41);
  (*(v6 + 16))(&v9 - v4);
  sub_1A211A3BC(v2, &v12);
  swift_setAtWritableKeyPath();
  *&v13[9] = *(v11 + 9);
  v7 = v10;
  *v13 = v11[0];
  *a2 = v9;
  a2[1] = v7;
  a2[2] = *v13;
  result = *&v13[9];
  *(a2 + 41) = *&v13[9];
  return result;
}

double sub_1A229BD14@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v14 = *v2;
  v5 = *(v2 + 40);
  v11 = *(v2 + 24);
  v12 = v5;
  v13 = *(v2 + 56);
  if ((a1 & ~v4) != 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 | v4;
  sub_1A211A3BC(v2, &v10);
  *a2 = v14;
  *(a2 + 16) = v7;
  result = *&v11;
  v9 = v12;
  *(a2 + 24) = v11;
  *(a2 + 40) = v9;
  *(a2 + 56) = v13;
  return result;
}

double sub_1A229BD9C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v14 = *v2;
  v5 = *(v2 + 40);
  v11 = *(v2 + 24);
  v12 = v5;
  v13 = *(v2 + 56);
  v6 = -1;
  if ((v4 & a1) != 0)
  {
    v6 = ~a1;
  }

  v7 = v6 & v4;
  sub_1A211A3BC(v2, &v10);
  *a2 = v14;
  *(a2 + 16) = v7;
  result = *&v11;
  v9 = v12;
  *(a2 + 24) = v11;
  *(a2 + 40) = v9;
  *(a2 + 56) = v13;
  return result;
}

__n128 sub_1A229BE28@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v5 = *(a2 + 32);
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a1;
  result = *a2;
  v7 = *(a2 + 16);
  *(a3 + 24) = *a2;
  *(a3 + 40) = v7;
  *(a3 + 56) = v5;
  return result;
}

double sub_1A229BE48@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1A230E820;
  *(a1 + 16) = 6;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 3;
  return result;
}

double sub_1A229BE74@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0x3FD451EB851EB852;
  *(a1 + 24) = xmmword_1A230E830;
  result = 58.1632;
  *(a1 + 40) = xmmword_1A230E840;
  *(a1 + 56) = 1;
  return result;
}

double sub_1A229BEB0@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1A2308720;
  *(a1 + 16) = xmmword_1A230E850;
  result = 288.0;
  *(a1 + 32) = xmmword_1A230E860;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  return result;
}

double sub_1A229BEE0@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1A2308720;
  *(a1 + 16) = xmmword_1A230E870;
  result = 500.0;
  *(a1 + 32) = xmmword_1A230E880;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  return result;
}

id sub_1A229BF10@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_1A230E800;
  *(a2 + 16) = 5242880;
  *(a2 + 24) = a1;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  *(a2 + 56) = 2;
  return a1;
}

uint64_t sub_1A229BF38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088FC8);
  v3 = 0x3FE0000000000000;
  v0 = sub_1A2249D0C();
  v1 = sub_1A211A6BC();
  result = sub_1A2249D84(0xD000000000000027, 0x80000001A2305E60, &v3, v0, v1 & 1);
  qword_1ED950D78 = result;
  return result;
}

uint64_t sub_1A229BFD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089798);
  v3 = 0x3FC999999999999ALL;
  v0 = sub_1A2249D0C();
  v1 = sub_1A211A6BC();
  result = sub_1A2249D84(0xD000000000000025, 0x80000001A2305E30, &v3, v0, v1 & 1);
  qword_1ED950D88 = result;
  return result;
}

uint64_t sub_1A229C070@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED950D70 != -1)
  {
    swift_once();
  }

  v2 = *(*qword_1ED950D78 + 160);

  v2(&v9, v3);

  v4 = v9;
  if (qword_1ED950D80 != -1)
  {
    swift_once();
  }

  v5 = *(*qword_1ED950D88 + 160);

  v5(&v9, v6);

  v8 = v9;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 6;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  return result;
}

uint64_t sub_1A229C1A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089798);
  v3 = 0x3FC3333333333333;
  v0 = sub_1A2249D0C();
  v1 = sub_1A211A6BC();
  result = sub_1A2249D84(0xD000000000000032, 0x80000001A2305DF0, &v3, v0, v1 & 1);
  qword_1EB08F668 = result;
  return result;
}

uint64_t sub_1A229C244()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089798);
  v3 = 0x3FD3333333333333;
  v0 = sub_1A2249D0C();
  v1 = sub_1A211A6BC();
  result = sub_1A2249D84(0xD000000000000031, 0x80000001A2305DB0, &v3, v0, v1 & 1);
  qword_1ED950D68 = result;
  return result;
}

double sub_1A229C328@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    v7 = a2;
    swift_once();
    a2 = v7;
  }

  v4 = *(**a2 + 160);

  v4(&v8, v5);

  *a3 = v8;
  *(a3 + 8) = 0;
  *(a3 + 16) = 36;
  result = 0.0;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 3;
  return result;
}

double sub_1A229C3D8@<D0>(uint64_t a1@<X8>)
{
  result = 0.45;
  *a1 = xmmword_1A230E890;
  *(a1 + 16) = xmmword_1A230E8A0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  return result;
}

double sub_1A229C408()
{
  [swift_getObjCClassFromMetadata() inheritedAnimationDuration];
  v1 = v0;
  UIAnimationDragCoefficient();
  return v1 * v2;
}

BOOL sub_1A229C48C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1A229C4BC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1A229C4E8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1A229C624@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1A229C9DC(a1);

  *a2 = v3;
  return result;
}

id sub_1A229C664()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  result = [v1 alpha];
  if (v5 == v2 && v3 != 0)
  {

    return [v1 setHidden_];
  }

  return result;
}

uint64_t sub_1A229C6E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 57))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 56);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A229C728(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A229C78C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A229C7D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A229C81C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

void type metadata accessor for AnimationOptions()
{
  if (!qword_1EB089770)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB089770);
    }
  }
}

uint64_t sub_1A229C998(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnimationOptions();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A229C9DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_1A229CA3C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x78456C6C616D732ELL;
    v6 = 0x576D756964656D2ELL;
    v7 = 0x656772616C2ELL;
    if (a1 != 3)
    {
      v7 = 0x7845656772616C2ELL;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x6D756964656D2ELL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7473696C2ELL;
    if (a1 != 8)
    {
      v1 = 0xD000000000000010;
    }

    v2 = 0x7845656772616C2ELL;
    v3 = 0x61546574756F722ELL;
    if (a1 != 6)
    {
      v3 = 0x69576574756F722ELL;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

__n128 sub_1A229CBC8@<Q0>(unsigned __int8 a1@<W0>, __n128 *a2@<X8>)
{
  if (a1 <= 5u)
  {
    if (a1 - 1 < 2)
    {
      v3 = sub_1A2220D34();
      v4 = sub_1A21275D0();
      sub_1A2220C34(v3, v45, 0.0, 2.0, 6.0, 0.24, v4);
      v5 = sub_1A221E310();
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v12 = sub_1A223EC78();
      v13 = sub_1A2113050();
      v14 = 14.0;
LABEL_12:
      v29 = v13 & 1;
      v25 = v5;
      v26 = v7;
      v27 = v9;
      v28 = v11;
      v24 = v12;
      goto LABEL_13;
    }

    if (!a1)
    {
      v30 = sub_1A2220D34();
      v31 = sub_1A21275D0();
      v32 = 2.0;
      v33 = 6.0;
LABEL_11:
      sub_1A2220C34(v30, v45, 0.0, v32, v33, 0.24, v31);
      v5 = sub_1A221E310();
      v7 = v39;
      v9 = v40;
      v11 = v41;
      v12 = sub_1A223EC78();
      v13 = sub_1A2113050();
      v14 = 10.0;
      goto LABEL_12;
    }

LABEL_10:
    v30 = sub_1A2220D34();
    v31 = sub_1A21275D0();
    v32 = 8.0;
    v33 = 16.0;
    goto LABEL_11;
  }

  if (a1 == 6)
  {
    v34 = sub_1A2220D34();
    v35 = sub_1A21275D0();
    sub_1A2220C34(v34, v45, 0.0, 2.0, 4.0, 0.3, v35);
    v5 = sub_1A221E310();
    v7 = v36;
    v9 = v37;
    v11 = v38;
    v12 = sub_1A223EC78();
    v13 = sub_1A2113050();
    v14 = 8.0;
    goto LABEL_12;
  }

  if (a1 != 8)
  {
    goto LABEL_10;
  }

  v15 = sub_1A2220D34();
  v16 = sub_1A21275D0();
  sub_1A2220C34(v15, v45, 0.0, 2.0, 4.0, 0.3, v16);
  v17 = sub_1A221E310();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = sub_1A223EC78();
  v14 = 8.0;
  v25 = v17;
  v26 = v19;
  v27 = v21;
  v28 = v23;
  v29 = 1;
LABEL_13:
  sub_1A223ECE4(v45, v29, v46, v14, v25, v26, v27, v28, v24);
  v42 = v46[5];
  a2[4] = v46[4];
  a2[5] = v42;
  a2[6].n128_u8[0] = v47;
  v43 = v46[1];
  *a2 = v46[0];
  a2[1] = v43;
  result = v46[3];
  a2[2] = v46[2];
  a2[3] = result;
  return result;
}

double sub_1A229CE4C@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 - 2 >= 6)
  {
    if (a1 == 1)
    {
      v29 = objc_opt_self();
      v30 = [v29 mru_subheadline2];
      sub_1A211476C();
      v32 = v31;
      v33 = sub_1A21146A4(v31, *MEMORY[0x1E69DB980]);
      v35 = v34;
      v37 = v36;
      v39 = v38;

      v40 = [v29 mru_subheadline2];
    }

    else
    {
      *MEMORY[0x1E69DDD80];
      sub_1A211476C();
      v42 = v41;
      v33 = sub_1A21146A4(v41, *MEMORY[0x1E69DB980]);
      v35 = v43;
      v37 = v44;
      v39 = v45;
    }

    sub_1A211476C();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v54 = sub_1A211A6BC();
    v55 = sub_1A22C8E04();
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v62 = sub_1A22C8E30();
    sub_1A22C8F5C(v54 & 1, v33, v35, v37 | ((HIDWORD(v37) & 1) << 32), v39, v47, v49, v51 | ((HIDWORD(v51) & 1) << 32), v70, v55, v57, v59, v61, v62, v53);
  }

  else
  {
    v3 = *MEMORY[0x1E69DDD80];
    sub_1A211476C();
    v5 = v4;
    v6 = sub_1A21146A4(v4, *MEMORY[0x1E69DB980]);
    v8 = v7;
    v10 = v9;
    v12 = v11;

    sub_1A211476C();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = sub_1A22C8E04();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = sub_1A22C8E30();
    sub_1A22C8F5C(0, v6, v8, v10 | ((HIDWORD(v10) & 1) << 32), v12, v14, v16, v18 | ((HIDWORD(v18) & 1) << 32), v70, v21, v23, v25, v27, v28, v20);
  }

  result = v81;
  v64 = v75;
  v65 = v76;
  v66 = v78;
  v67 = v72;
  v68 = v73 & 1;
  v69 = v77 & 1;
  *a2 = v70[0];
  *(a2 + 8) = v71;
  *(a2 + 24) = v67;
  *(a2 + 28) = v68;
  *(a2 + 32) = v74;
  *(a2 + 48) = v64;
  *(a2 + 56) = v65;
  *(a2 + 60) = v69;
  *(a2 + 64) = v66;
  *(a2 + 72) = v79;
  *(a2 + 88) = v80;
  *(a2 + 104) = result;
  return result;
}

double sub_1A229D174@<D0>(unsigned __int8 a1@<W0>, _OWORD *a2@<X8>)
{
  v3 = 14.0;
  v4 = 10.0;
  if (a1 > 5u)
  {
    if (a1 <= 8u)
    {
      if (a1 == 6)
      {
        v22 = sub_1A224A8BC();
        v23 = sub_1A224A8C8();
        v24 = sub_1A2113050();
        sub_1A224A94C(v24 & 1, v44, v22, v23, -20.0, -20.0, -20.0, -20.0);
        v25 = sub_1A2113050();
        v26 = sub_1A228C398();
        v27 = sub_1A228C3B0();
        v10 = sub_1A229207C();
        v12 = v28;
        v14 = v29;
        v16 = v30 | ((HIDWORD(v30) & 1) << 32);
        v20 = v25 & 1;
        v17 = 30.0;
LABEL_24:
        v18 = 7.0;
        v19 = v26;
        v21 = v27;
        goto LABEL_25;
      }

      v5 = -24.0;
      if (a1 == 7)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a1 > 2u)
  {
LABEL_10:
    v4 = 24.0;
    goto LABEL_11;
  }

  if (!a1)
  {
LABEL_11:
    v5 = -v4;
    if (a1 <= 5u)
    {
      if (a1 - 3 >= 3)
      {
        if (a1 - 1 < 2)
        {
          goto LABEL_23;
        }

LABEL_20:
        v3 = 10.0;
        goto LABEL_23;
      }

LABEL_19:
      v3 = 24.0;
      goto LABEL_23;
    }

    if (a1 > 8u)
    {
      goto LABEL_19;
    }

    if (a1 == 6)
    {
      v3 = 20.0;
      goto LABEL_23;
    }

    if (a1 != 7)
    {
      goto LABEL_20;
    }

LABEL_18:
    v3 = 0.0;
    goto LABEL_23;
  }

  v5 = -14.0;
  if (a1 == 1)
  {
LABEL_23:
    v31 = -v3;
    v32 = sub_1A224A8BC();
    v33 = sub_1A224A8C8();
    v34 = sub_1A2113050();
    sub_1A224A94C(v34 & 1, v44, v32, v33, -20.0, v5, -20.0, v31);
    v35 = sub_1A2113050();
    v26 = sub_1A228C398();
    v27 = sub_1A228C3B0();
    v10 = sub_1A229207C();
    v12 = v36;
    v14 = v37;
    v16 = v38 | ((HIDWORD(v38) & 1) << 32);
    v17 = 44.0;
    v20 = v35 & 1;
    goto LABEL_24;
  }

  v6 = sub_1A224A8BC();
  v7 = sub_1A224A8C8();
  v8 = sub_1A2113050();
  sub_1A224A94C(v8 & 1, v44, v6, v7, -20.0, -14.0, -20.0, -14.0);
  v9 = sub_1A228C3B0();
  v10 = sub_1A229207C();
  v12 = v11;
  v14 = v13;
  v16 = v15 | ((HIDWORD(v15) & 1) << 32);
  v17 = 24.0;
  v18 = 7.0;
  v19 = 4.0;
  v20 = 1;
  v21 = v9;
LABEL_25:
  sub_1A228C550(v20, v44, v10, v12, v16, v14, v45, v17, v18, v19, v21);
  v39 = v49;
  a2[4] = v48;
  a2[5] = v39;
  v40 = v51;
  a2[6] = v50;
  a2[7] = v40;
  v41 = v45[1];
  *a2 = v45[0];
  a2[1] = v41;
  result = *&v46;
  v43 = v47;
  a2[2] = v46;
  a2[3] = v43;
  return result;
}

double sub_1A229D420@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1A22E18E8();
  if (a1 == 2)
  {
    sub_1A22E19A4(1, v4, 3, v39, 20.0, 0.75);
    v24 = sub_1A22E18E8();
    sub_1A22E19A4(1, v24, 1, v40, 20.0, 0.7);
    v7 = sub_1A2220B58();
    v9 = v25;
    v11 = v26;
    v13 = v27;
    v14 = 26.0;
    v15 = 24.0;
    v16 = 1;
    goto LABEL_8;
  }

  if (a1 != 1)
  {
    if (!a1)
    {
      sub_1A22E19A4(1, v4, 3, v39, 20.0, 0.75);
      v5 = sub_1A22E18E8();
      v6 = sub_1A22E18F0();
      sub_1A22E19A4(1, v5, v6, v40, 20.0, 0.7);
      v7 = sub_1A2220B58();
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v14 = 40.0;
      v15 = 14.0;
      v16 = 2;
      v17 = 0x4054000000000000;
      v18 = 0;
LABEL_9:
      v20 = v7;
      v21 = v9;
      v22 = v11;
      v23 = v13;
      goto LABEL_10;
    }

    v28 = sub_1A22E18F0();
    sub_1A22E19A4(1, v4, v28, v39, 40.0, 1.1);
    v29 = sub_1A22E18E8();
    v30 = sub_1A22E18F0();
    sub_1A22E19A4(1, v29, v30, v40, 26.0, 1.1);
    LOBYTE(v29) = sub_1A2113050();
    v7 = sub_1A2220B58();
    v9 = v31;
    v11 = v32;
    v13 = v33;
    v14 = 44.0;
    v15 = 20.0;
    v16 = v29;
LABEL_8:
    v17 = 0;
    v18 = 1;
    goto LABEL_9;
  }

  sub_1A22E19A4(1, v4, 3, v39, 20.0, 0.75);
  v19 = sub_1A22E18E8();
  sub_1A22E19A4(1, v19, 1, v40, 20.0, 0.7);
  v14 = 26.0;
  v20 = 0.0;
  v21 = 7.0;
  v22 = 0.0;
  v23 = 7.0;
  v15 = 21.0;
  v16 = 1;
  v17 = 0;
  v18 = 1;
LABEL_10:
  sub_1A221E454(v16, v17, v18, v39, v40, v41, v14, v20, v21, v22, v23, v15);
  v34 = v41[7];
  *(a2 + 96) = v41[6];
  *(a2 + 112) = v34;
  *(a2 + 128) = v41[8];
  *(a2 + 144) = v42;
  v35 = v41[3];
  *(a2 + 32) = v41[2];
  *(a2 + 48) = v35;
  v36 = v41[5];
  *(a2 + 64) = v41[4];
  *(a2 + 80) = v36;
  result = *v41;
  v38 = v41[1];
  *a2 = v41[0];
  *(a2 + 16) = v38;
  return result;
}

__n128 sub_1A229D6D8@<Q0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v3 = 0.0;
  v4 = -20.0;
  v5 = -14.0;
  v6 = 14.0;
  v7 = 10.0;
  if (a1 > 5u)
  {
    if (a1 <= 8u)
    {
      if (a1 == 6)
      {
        goto LABEL_48;
      }

      if (a1 == 7)
      {
        v7 = 24.0;
        goto LABEL_21;
      }

LABEL_10:
      if (a1 <= 5u)
      {
        if (a1 > 2u)
        {
          goto LABEL_27;
        }

        if (a1)
        {
          v3 = 14.0;
          if (v7 <= 14.0)
          {
            v7 = v7 * 0.5;
            v6 = 14.0;
            goto LABEL_49;
          }

          goto LABEL_21;
        }

LABEL_18:
        v3 = 10.0;
        if (v7 <= 10.0)
        {
          goto LABEL_27;
        }

        goto LABEL_21;
      }

      if (a1 > 8u)
      {
        goto LABEL_27;
      }

      if (a1 == 6)
      {
        v3 = 20.0;
        if (v7 <= 20.0)
        {
          v7 = v7 * 0.5;
          goto LABEL_48;
        }

        goto LABEL_21;
      }

      if (a1 != 7)
      {
        goto LABEL_18;
      }

LABEL_21:
      if ((*&v3 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        v8 = v7;
      }

      else
      {
        v8 = v3;
      }

      if ((~*&v3 & 0x7FF0000000000000) != 0)
      {
        v7 = v3;
      }

      else
      {
        v7 = v8;
      }

LABEL_27:
      v7 = v7 * 0.5;
      v9 = 10.0;
      if (a1 > 5u)
      {
        if (a1 <= 8u)
        {
          if (a1 == 6)
          {
            goto LABEL_48;
          }

          v5 = -24.0;
          if (a1 == 7)
          {
            goto LABEL_43;
          }

          goto LABEL_36;
        }
      }

      else if (a1 - 3 >= 3)
      {
        if (a1 - 1 < 2)
        {
          goto LABEL_49;
        }

        goto LABEL_36;
      }

      v9 = 24.0;
LABEL_36:
      v5 = -v9;
      if (a1 <= 5u)
      {
        if (a1 - 3 >= 3)
        {
          if (a1 - 1 < 2)
          {
            goto LABEL_49;
          }

LABEL_45:
          v6 = 10.0;
          goto LABEL_49;
        }

LABEL_44:
        v6 = 24.0;
        goto LABEL_49;
      }

      if (a1 > 8u)
      {
        goto LABEL_44;
      }

      if (a1 != 6)
      {
        if (a1 != 7)
        {
          goto LABEL_45;
        }

LABEL_43:
        v6 = 0.0;
        goto LABEL_49;
      }

      v4 = -v9;
LABEL_48:
      v6 = 20.0;
      v5 = v4;
      goto LABEL_49;
    }

LABEL_9:
    v7 = 24.0;
    goto LABEL_10;
  }

  if (a1 - 3 < 3)
  {
    goto LABEL_9;
  }

  if (a1 - 1 >= 2)
  {
    goto LABEL_10;
  }

  v7 = 7.0;
LABEL_49:
  v10 = -v6;
  v11 = sub_1A224A8BC();
  v12 = sub_1A2113050();
  sub_1A224A94C(v12 & 1, v15, v11, v7, -20.0, v5, -20.0, v10);
  sub_1A2264354(v15, v16, 44.0, 7.0, 32.0);
  v13 = v17[0];
  *(a2 + 32) = v16[2];
  *(a2 + 48) = v13;
  *(a2 + 57) = *(v17 + 9);
  result = v16[1];
  *a2 = v16[0];
  *(a2 + 16) = result;
  return result;
}

double sub_1A229D930@<D0>(unsigned __int8 a1@<W0>, _OWORD *a2@<X8>)
{
  if (a1 <= 0xAu && ((1 << a1) & 0x4A0) != 0)
  {
    v3 = sub_1A222ED50();
    v4 = 24.0;
    v5 = 24.0;
    v6 = 24.0;
    v7 = 24.0;
    v8 = 0;
    v9 = 3;
    v10 = 3;
  }

  else
  {
    v3 = sub_1A222ED50();
    v4 = 24.0;
    v5 = 24.0;
    v6 = 10.0;
    v7 = 24.0;
    v8 = 1;
    v9 = 2;
    v10 = 2;
  }

  sub_1A22AFEE8(v8, v9, v10, v14, v3, v4, v5, v6, v7);
  v11 = v14[1];
  *a2 = v14[0];
  a2[1] = v11;
  result = *&v15;
  v13 = v16;
  a2[2] = v15;
  a2[3] = v13;
  return result;
}

double sub_1A229D9D8(unsigned __int8 a1)
{
  result = 0.0;
  if ((a1 | 2) == 7)
  {
    return 24.0;
  }

  return result;
}

double sub_1A229DA04(unsigned __int8 a1, double a2)
{
  v3 = a1 > 0xAu || ((1 << a1) & 0x4A0) == 0;
  result = 0.0;
  if (!v3)
  {
    return a2;
  }

  return result;
}

double sub_1A229DA54(char a1, double result, double a3)
{
  if (a1 == 6 || a1 == 3 || a1 == 1)
  {
    sub_1A22E6BF8();
  }

  else
  {
    if ((*&a3 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v3 = result;
    }

    else
    {
      v3 = a3;
    }

    if ((~*&a3 & 0x7FF0000000000000) != 0)
    {
      v3 = a3;
    }

    if (result > a3)
    {
      return v3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaControlsModuleSessionLayout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaControlsModuleSessionLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1A229DCD4(unsigned __int8 a1)
{
  v1 = 0x78456C6C616D732ELL;
  v2 = 0x61546574756F722ELL;
  if (a1 != 6)
  {
    v2 = 0x69576574756F722ELL;
  }

  if (a1 <= 5u)
  {
    v2 = 0x7845656772616C2ELL;
  }

  v3 = 0x576D756964656D2ELL;
  if (a1 != 2)
  {
    v3 = 0x656772616C2ELL;
  }

  if (a1)
  {
    v1 = 0x6D756964656D2ELL;
  }

  if (a1 > 1u)
  {
    v1 = v3;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A229DDF4()
{
  v1 = *v0;
  v2 = 0x78456C6C616D732ELL;
  v3 = 0x61546574756F722ELL;
  if (v1 != 6)
  {
    v3 = 0x69576574756F722ELL;
  }

  if (*v0 <= 5u)
  {
    v3 = 0x7845656772616C2ELL;
  }

  v4 = 0x576D756964656D2ELL;
  if (v1 != 2)
  {
    v4 = 0x656772616C2ELL;
  }

  if (*v0)
  {
    v2 = 0x6D756964656D2ELL;
  }

  if (*v0 > 1u)
  {
    v2 = v4;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A229DF14(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return 1;
  }

  else
  {
    return byte_1A230EF0C[a1];
  }
}

uint64_t getEnumTagSinglePayload for MediaControlsModuleLayout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaControlsModuleLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1A229E0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A220C0E8();
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = v5;

  v12 = v5;
  sub_1A21179EC(a1, sub_1A2215434, v11, a4, a5);
}

uint64_t sub_1A229E184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A229C070(v10);
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x50))(v10, a1, a2, a3, a4);
  return sub_1A2116928(v10);
}

id sub_1A229E220(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for RoutePickerContainerView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_1A229E318(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for RoutePickerContainerView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1A229E3F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoutePickerContainerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A229E4B8(int a1, uint64_t a2, int a3)
{
  if ((a1 ^ a3))
  {
    return 0;
  }

  sub_1A2221998();
  return sub_1A22E6C88() & 1;
}

uint64_t sub_1A229E50C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1A2221998();
  return sub_1A22E6C88() & 1;
}

float sub_1A229E5F8@<S0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 supportsVariableFramerate];
  v5 = [a1 minimumFramerate];
  v6 = [a1 lowPowerModeMaximumFramerate];
  v7 = [a1 maximumFramerate];
  [a1 framerateThreshold];
  v9 = v8;
  v10 = [a1 nonVariableFramerate];

  result = v10;
  *a2 = v4;
  *(a2 + 4) = v5;
  *(a2 + 8) = v6;
  *(a2 + 12) = v7;
  *(a2 + 16) = v9;
  *(a2 + 20) = v10;
  return result;
}

uint64_t sub_1A229E6F4(char a1)
{
  v3 = swift_beginAccess();
  *(v1 + 16) = a1;
  v4 = *(v1 + 88);
  v5 = (*(*v1 + 152))(v3);
  v6 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x88))(v9);
  *(v7 + *(type metadata accessor for WaveformController.Model(0) + 20)) = v5 & 1;
  return v6(v9, 0);
}

void (*sub_1A229E7D8(uint64_t *a1))(void **a1, char a2)
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
  *(v3 + 32) = v1;
  swift_beginAccess();
  return sub_1A229E850;
}

void sub_1A229E850(void **a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[4];
    v6 = v5[11];
    v7 = (*(*v5 + 152))(v4);
    v8 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x88))(v3);
    *(v9 + *(type metadata accessor for WaveformController.Model(0) + 20)) = v7 & 1;
    v8(v3, 0);
  }

  free(v3);
}

uint64_t sub_1A229E984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  *(v3 + 20) = a1;
  *(v3 + 28) = a2;
  *(v3 + 36) = a3;
  return result;
}

uint64_t sub_1A229EA68(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v2[7] = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = v2[7];
      swift_getObjectType();
      (*(*v2 + 224))();
      v6 = v5;
      (*(v4 + 8))(v7 & 1, *MEMORY[0x1E69792B8], *(MEMORY[0x1E69792B8] + 4), *(MEMORY[0x1E69792B8] + 8));

      swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(*v2 + 160))();
  }

  return swift_unknownObjectRelease();
}

void (*sub_1A229EB90(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 56);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1A229EC24;
}

void sub_1A229EC24(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 56) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v4 = v3[5];
        v5 = v4[7];
        swift_getObjectType();
        (*(*v4 + 224))();
        v7 = v6;
        (*(v5 + 8))(v8 & 1, *MEMORY[0x1E69792B8], *(MEMORY[0x1E69792B8] + 4), *(MEMORY[0x1E69792B8] + 8));

        swift_unknownObjectRelease();
      }
    }

    else
    {
      (*(*v3[5] + 160))();
    }
  }

  free(v3);
}

uint64_t sub_1A229EDCC()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  return v1;
}

void sub_1A229EE18(char a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

void *sub_1A229EE70()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

void sub_1A229EEB4(void *a1)
{
  swift_beginAccess();
  v3 = v1[10];
  v1[10] = a1;
  v4 = a1;

  if ((*(*v1 + 200))())
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    v8 = v1[10];
    v9 = *(v6 + 16);
    v10 = v8;
    v9(v8, ObjectType, v6);

    swift_unknownObjectRelease();
  }
}

void (*sub_1A229EF94(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A229EFE8;
}

void sub_1A229EFE8(uint64_t a1, char a2)
{
  v4 = swift_endAccess();
  if ((a2 & 1) == 0 && (*(**(a1 + 24) + 200))(v4))
  {
    v6 = v5;
    v7 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 80);
    v10 = *(v6 + 16);
    v11 = v9;
    v10(v9, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

id sub_1A229F0CC()
{
  v0 = [objc_opt_self() defaultCenter];

  return v0;
}

uint64_t sub_1A229F10C(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_1A22E6248();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 112) != v3)
  {
    sub_1A2298A64(result);
    swift_retain_n();
    v9 = sub_1A22E6238();
    v10 = sub_1A22E6A98();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315394;
      v13 = sub_1A22E7388();
      v15 = sub_1A2103450(v13, v14, &v18);

      *(v11 + 4) = v15;
      *(v11 + 12) = 1024;
      v16 = *(v2 + 112);

      *(v11 + 14) = v16;

      _os_log_impl(&dword_1A20FC000, v9, v10, "[%s] isLowPowerModeEnabled changed: %{BOOL}d", v11, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1A58DCD00](v12, -1, -1);
      MEMORY[0x1A58DCD00](v11, -1, -1);
    }

    else
    {
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_1A229F32C(void *a1)
{
  v2 = swift_allocObject();
  sub_1A229F36C(a1);
  return v2;
}

uint64_t sub_1A229F36C(void *a1)
{
  v2 = v1;
  *(v2 + 16) = 0;
  *(v2 + 20) = 2;
  *(v2 + 56) = 0;
  *(v2 + 36) = 0;
  *(v2 + 28) = 0;
  swift_unknownObjectWeakInit();
  v4 = [objc_opt_self() zero];
  *(v2 + 64) = 0;
  *(v2 + 72) = v4;
  *(v2 + 80) = 0;
  *(v2 + 96) = [objc_opt_self() defaultCenter];
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 88) = a1;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xF8);
  v7 = a1;

  v6(v8, &off_1F1441E58);

  v10 = *(v2 + 88);
  v11 = (*(*v2 + 152))(v9);
  v12 = (*((*v5 & *v10) + 0x88))(v23);
  *(v13 + *(type metadata accessor for WaveformController.Model(0) + 20)) = v11 & 1;
  v12(v23, 0);
  v14 = *(v2 + 96);
  v15 = *MEMORY[0x1E696A7D8];
  v16 = objc_opt_self();
  v17 = v14;
  v18 = [v16 mainQueue];
  v19 = swift_allocObject();
  swift_weakInit();
  v23[4] = sub_1A229F638;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1A228A5BC;
  v23[3] = &block_descriptor_17;
  v20 = _Block_copy(v23);

  v21 = [v17 addObserverForName:v15 object:0 queue:v18 usingBlock:v20];

  _Block_release(v20);
  *(v2 + 104) = v21;
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1A229F638()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [objc_opt_self() processInfo];
    v3 = [v2 isLowPowerModeEnabled];

    v4 = *(v1 + 112);
    *(v1 + 112) = v3;
    sub_1A229F10C(v4);
  }

  return result;
}

uint64_t sub_1A229F6D4()
{
  if (*(v0 + 104))
  {
    [*(v0 + 96) removeObserver_];
  }

  sub_1A210DA3C(v0 + 48);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1A229F734()
{
  if (*(v0 + 104))
  {
    [*(v0 + 96) removeObserver_];
  }

  sub_1A210DA3C(v0 + 48);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 113, 7);
}

void sub_1A229F7AC(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 224);
  v8 = v7();
  v10 = v9;
  v11 = v8 & 1;
  swift_beginAccess();
  v12 = v3[9];
  v4[9] = a2;
  v13 = a2;

  v14 = v7();
  v16 = v15;
  if (v11 == (v14 & 1))
  {
    sub_1A2221998();
    v17 = sub_1A22E6C88();

    if (v17)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  if ((*(*v4 + 200))())
  {
    v19 = v18;
    ObjectType = swift_getObjectType();
    v29 = v7();
    v21 = v20;
    v22 = *(*v4 + 360);
    v23 = v10;
    v24 = v22();
    v26 = v25;
    v28 = v27;

    (*(v19 + 8))(v29 & 1, v21, a3 & 1, ObjectType, v19, v24, v26, v28);
    swift_unknownObjectRelease();
  }

LABEL_6:
}

void sub_1A229F99C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *(*v2 + 224);
  v6 = v5();
  v8 = v7;
  v9 = v6 & 1;
  v10 = swift_beginAccess();
  v2[64] = a2;
  v11 = (v5)(v10);
  v13 = v12;
  if (v9 == (v11 & 1))
  {
    sub_1A2221998();
    v14 = sub_1A22E6C88();

    if (v14)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  if ((*(*v3 + 200))())
  {
    v16 = v15;
    ObjectType = swift_getObjectType();
    v17 = v5();
    v19 = v18;
    v20 = *(*v3 + 360);
    v21 = v8;
    v22 = v20();
    v24 = v23;
    v26 = v25;

    (*(v16 + 8))(v17 & 1, v19, 0, ObjectType, v16, v22, v24, v26);
    swift_unknownObjectRelease();
  }

LABEL_6:
}

uint64_t sub_1A229FB70(void *a1)
{
  result = (*(*v1 + 176))();
  if (result != 2)
  {
    if (result)
    {
      (*(*v1 + 224))();
      v5 = v4;
      [a1 maxAbsoluteDifferenceFrom_];
    }

    return sub_1A22E6AC8();
  }

  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WaveformPresenter.AnimationSettings(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for WaveformPresenter.AnimationSettings(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1A229FE74(void *a1)
{
  v2 = v1;
  v4 = swift_beginAccess();
  v5 = v1[2];
  v1[2] = a1;
  if (a1)
  {
    if (v5)
    {
      sub_1A22531C4();
      v6 = a1;
      v7 = v5;
      v8 = sub_1A22E6C88();

      if (v8)
      {

LABEL_11:
        return;
      }
    }

    else
    {
      v4 = a1;
    }

LABEL_8:
    if ((*(*v2 + 144))(v4))
    {
      v10 = v9;
      ObjectType = swift_getObjectType();
      v12 = v2[2];
      v13 = *(v10 + 8);
      v14 = v12;
      v13(v2, v12, ObjectType, v10);

      swift_unknownObjectRelease();
    }

    v7 = a1;
    goto LABEL_11;
  }

  if (v5)
  {
    goto LABEL_8;
  }
}

uint64_t sub_1A229FFEC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A22A004C(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1A22A00E0;
}

void sub_1A22A00E0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *sub_1A22A0164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[5] = 0;
  swift_unknownObjectWeakInit();
  v8[6] = a1;
  v8[7] = a2;
  sub_1A210B6BC(a3, v8 + OBJC_IVAR____TtC13MediaControls24SessionArtworkController_model);
  v8[3] = a4;
  v9 = sub_1A22A10DC(&qword_1ED94F0F0, type metadata accessor for SessionArtworkController);
  v10 = *(*a4 + 240);

  v10(v11, v9);

  sub_1A2129CA8(a3);
  return v8;
}

void *sub_1A22A0274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v5[2] = 0;
  v5[5] = 0;
  swift_unknownObjectWeakInit();
  v5[6] = a1;
  v5[7] = a2;
  sub_1A210B6BC(a3, v5 + OBJC_IVAR____TtC13MediaControls24SessionArtworkController_model);
  v5[3] = a4;
  v10 = sub_1A22A10DC(&qword_1ED94F0F0, type metadata accessor for SessionArtworkController);
  v11 = *(*a4 + 240);

  v11(v12, v10);

  sub_1A2129CA8(a3);
  return v5;
}

uint64_t type metadata accessor for SessionArtworkController()
{
  result = qword_1ED9515C0;
  if (!qword_1ED9515C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A22A03BC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A22E5C88();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SessionArtworkPresentationModel();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A22E59B8();
  v20 = v11;
  MEMORY[0x1A58DA8D0](58, 0xE100000000000000);
  v12 = sub_1A22C6C20(4);
  MEMORY[0x1A58DA8D0](v12);

  v13 = v19;
  v14 = v20;
  (*(v5 + 16))(v7, a1, v4);
  sub_1A22AD378(v7, 0, 0, v10);
  v15 = *sub_1A22B6DB8();
  v16 = *(v2 + 168);

  v17 = v16(v13, v14, v10, v15);
  (*(v5 + 8))(a1, v4);
  return v17;
}

uint64_t sub_1A22A0588()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088B60);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_1A22E6848();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = *(v0 + 24);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v5;
  v8[5] = v7;
  v8[6] = v6;

  sub_1A222B5A0(0, 0, v3, &unk_1A230F0D0, v8);

  sub_1A210DA3C(v0 + 32);

  sub_1A2129CA8(v0 + OBJC_IVAR____TtC13MediaControls24SessionArtworkController_model);
  return v0;
}

uint64_t sub_1A22A06E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1A22A0704, 0, 0);
}

uint64_t sub_1A22A0704()
{
  v1 = **(v0 + 16) + 256;
  *(v0 + 40) = *v1;
  *(v0 + 48) = v1 & 0xFFFFFFFFFFFFLL | 0xB8FC000000000000;
  sub_1A22E6828();
  *(v0 + 56) = sub_1A22E6818();
  v3 = sub_1A22E6808();

  return MEMORY[0x1EEE6DFA0](sub_1A22A07C0, v3, v2);
}

uint64_t sub_1A22A07C0()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];

  v2(v3, v1);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1A22A0844()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A222D660;

  return sub_1A22A06E0(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1A22A08EC()
{
  sub_1A22A0588();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1A22A0944@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13MediaControls24SessionArtworkController_model;
  swift_beginAccess();
  return sub_1A210B6BC(v1 + v3, a1);
}

uint64_t sub_1A22A099C(uint64_t a1)
{
  v3 = type metadata accessor for SessionArtworkPresentationModel();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC13MediaControls24SessionArtworkController_model;
  swift_beginAccess();
  sub_1A210B6BC(v1 + v6, v5);
  swift_beginAccess();
  sub_1A210B82C(a1, v1 + v6);
  swift_endAccess();
  sub_1A212826C(v5);
  sub_1A2129CA8(a1);
  return sub_1A2129CA8(v5);
}

void sub_1A22A0A78(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = type metadata accessor for SessionArtworkPresentationModel();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A22E6248();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A22987F8();
  (*(v9 + 16))(v11, v12, v8);

  v13 = sub_1A22E6238();
  v14 = sub_1A22E6A98();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v43 = v5;
    v16 = v15;
    v45 = swift_slowAlloc();
    v48[0] = v45;
    *v16 = 136315906;
    v17 = sub_1A22E7388();
    v44 = v14;
    v19 = sub_1A2103450(v17, v18, v48);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1A2103450(v3[6], v3[7], v48);
    *(v16 + 22) = 2080;
    v20 = (*(*v3 + 120))();
    v47 = v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0897A0);
    v22 = sub_1A2259178(v21);
    v46 = a2;
    v24 = v23;

    v25 = sub_1A2103450(v22, v24, v48);

    *(v16 + 24) = v25;
    *(v16 + 32) = 2080;
    (*(*v3 + 176))(v26);
    sub_1A22A10DC(&qword_1ED94EC58, type metadata accessor for SessionArtworkPresentationModel);
    v27 = sub_1A22E71D8();
    v29 = v28;
    sub_1A2129CA8(v7);
    v30 = sub_1A2103450(v27, v29, v48);
    a2 = v46;

    *(v16 + 34) = v30;
    _os_log_impl(&dword_1A20FC000, v13, v44, "[%s]<%s> Did update image(%s) for model:%s", v16, 0x2Au);
    v31 = v45;
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v31, -1, -1);
    MEMORY[0x1A58DCD00](v16, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  v32 = swift_beginAccess();
  v33 = v3[2];
  v3[2] = a2;
  if (a2)
  {
    if (v33)
    {
      sub_1A22531C4();
      v34 = a2;
      v35 = v33;
      v36 = sub_1A22E6C88();

      if (v36)
      {
LABEL_13:

        return;
      }
    }

    else
    {
      v32 = a2;
    }

LABEL_10:
    if ((*(*v3 + 144))(v32))
    {
      v38 = v37;
      ObjectType = swift_getObjectType();
      v40 = v3[2];
      v41 = *(v38 + 8);
      v42 = v40;
      v41(v3, v40, ObjectType, v38);

      swift_unknownObjectRelease();
    }

    v35 = v33;
    goto LABEL_13;
  }

  if (v33)
  {
    goto LABEL_10;
  }
}

uint64_t sub_1A22A0FAC(uint64_t a1)
{
  result = sub_1A22A10DC(qword_1ED94F0F8, type metadata accessor for SessionArtworkController);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A22A100C()
{
  result = type metadata accessor for SessionArtworkPresentationModel();
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

uint64_t sub_1A22A10DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A22A1124(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088B60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A22A1194(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A22A11FC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A22E5C88();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1A22A1268@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13MediaControls23SessionHapticController_routingSession;
  swift_beginAccess();
  return sub_1A2214CF8(v1 + v3, a1, &qword_1EB088C30);
}

uint64_t (*sub_1A22A12D0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A22A1334;
}

uint64_t sub_1A22A1334(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A212F904();
  }

  return result;
}

uint64_t sub_1A22A1368()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C30);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v13 - v3;
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1A0))(v2);
  v5 = sub_1A22E5C88();
  v6 = 0;
  v7 = 0;
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    v6 = sub_1A22E59B8();
    v7 = v8;
  }

  sub_1A210D9B0(v4, &qword_1EB088C30);
  v9 = sub_1A22E59A8();
  if (v7)
  {
    if (v6 == v9 && v7 == v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_1A22E71E8();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1A22A14F4()
{
  v1 = (v0 + OBJC_IVAR____TtC13MediaControls23SessionHapticController_nowPlayingBundleIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void (*sub_1A22A154C(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC13MediaControls23SessionHapticController_nowPlayingBundleIdentifier;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_1A22A15EC;
}

void sub_1A22A15EC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v6 = *(*a1 + 32);
  v7 = (v5 + v4);
  v9 = *v7;
  v8 = v7[1];
  *v7 = v3;
  v7[1] = v6;
  if (a2)
  {

    sub_1A21300C4(v9, v8);
  }

  else
  {
    sub_1A21300C4(v9, v8);
  }

  free(v2);
}

uint64_t sub_1A22A1680()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1A22E6248();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088B60);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v29 - v9;
  v11 = MEMORY[0x1E69E7D40];
  v12 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1C0))(v8);
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    v16 = sub_1A22E6848();
    (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v17;
    v18[5] = v14;
    v18[6] = v15;
    v18[7] = ObjectType;
    sub_1A222B5A0(0, 0, v10, &unk_1A230F268, v18);
  }

  else
  {
    sub_1A2298A60(v12);
    v20 = sub_1A22E6238();
    v21 = sub_1A22E6A68();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136315138;
      v24 = sub_1A22E7388();
      v26 = sub_1A2103450(v24, v25, &v30);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1A20FC000, v20, v21, "[%s] updateApplicationSupport bundleID is nil", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      v27 = v23;
      v11 = MEMORY[0x1E69E7D40];
      MEMORY[0x1A58DCD00](v27, -1, -1);
      MEMORY[0x1A58DCD00](v22, -1, -1);
    }

    result = (*(v4 + 8))(v6, v3);
    v28 = *(v1 + OBJC_IVAR____TtC13MediaControls23SessionHapticController_applicationSupportsHaptics);
    *(v1 + OBJC_IVAR____TtC13MediaControls23SessionHapticController_applicationSupportsHaptics) = 0;
    if (v28 == 1)
    {
      return (*((*v11 & *v1) + 0x178))(result);
    }
  }

  return result;
}

uint64_t sub_1A22A19E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v8 = sub_1A22E6248();
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A22A1AB4, 0, 0);
}

uint64_t sub_1A22A1AB4()
{
  v27 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 136) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 80);
    v3 = *(v0 + 88);
    objc_allocWithZone(MEMORY[0x1E69635F8]);

    v6 = sub_1A22A2280(v2, v3, 0);
    v7 = AXApplicationSupportsHapticMusic();
    v8 = v7;
    sub_1A2298A60(v7);

    v9 = sub_1A22E6238();
    v10 = sub_1A22E6A98();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 128);
    v14 = *(v0 + 104);
    v13 = *(v0 + 112);
    if (v11)
    {
      v22 = *(v0 + 80);
      v23 = *(v0 + 88);
      v25 = *(v0 + 104);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26[0] = v16;
      *v15 = 136315650;
      v17 = sub_1A22E7388();
      v24 = v12;
      v19 = sub_1A2103450(v17, v18, v26);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_1A2103450(v22, v23, v26);
      *(v15 + 22) = 1024;
      *(v15 + 24) = v8;
      _os_log_impl(&dword_1A20FC000, v9, v10, "[%s] updateApplicationSupport for %s: %{BOOL}d", v15, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1A58DCD00](v16, -1, -1);
      MEMORY[0x1A58DCD00](v15, -1, -1);

      (*(v13 + 8))(v24, v25);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

    *(v0 + 152) = v8;
    sub_1A22E6828();
    *(v0 + 144) = sub_1A22E6818();
    v21 = sub_1A22E6808();

    return MEMORY[0x1EEE6DFA0](sub_1A22A1F14, v21, v20);
  }

  else
  {

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1A22A1F14()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);

  v4 = *(v2 + OBJC_IVAR____TtC13MediaControls23SessionHapticController_applicationSupportsHaptics);
  *(v2 + OBJC_IVAR____TtC13MediaControls23SessionHapticController_applicationSupportsHaptics) = v1;
  if (v1 != v4)
  {
    (*((*MEMORY[0x1E69E7D40] & **(v0 + 136)) + 0x178))(v3);
  }

  return MEMORY[0x1EEE6DFA0](sub_1A22A1FD8, 0, 0);
}

uint64_t sub_1A22A1FD8()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1A22A2048()
{
  v1 = OBJC_IVAR____TtC13MediaControls23SessionHapticController_routingSession;
  v2 = sub_1A22E5C88();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v3 = &v0[OBJC_IVAR____TtC13MediaControls23SessionHapticController_nowPlayingBundleIdentifier];
  *v3 = 0;
  v3[1] = 0;
  v0[OBJC_IVAR____TtC13MediaControls23SessionHapticController_applicationSupportsHaptics] = 0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SessionHapticController();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1A22A2194()
{
  sub_1A210D9B0(v0 + OBJC_IVAR____TtC13MediaControls23SessionHapticController_routingSession, &qword_1EB088C30);
}

id sub_1A22A21E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionHapticController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1A22A2280(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1A22E6598();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1A22E54E8();

    swift_willThrow();
  }

  return v6;
}

uint64_t type metadata accessor for SessionHapticController()
{
  result = qword_1ED951690;
  if (!qword_1ED951690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A22A23B0()
{
  sub_1A22A2454();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A22A2454()
{
  if (!qword_1ED950738)
  {
    sub_1A22E5C88();
    v0 = sub_1A22E6D68();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED950738);
    }
  }
}

uint64_t sub_1A22A24AC()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A222D660;

  return sub_1A22A19E4(v6, v7, v8, v2, v3, v5, v4);
}

void sub_1A22A2558()
{
  v0 = *MEMORY[0x1E69DDD10];
  sub_1A211476C();
  v2 = v1;
  v3 = sub_1A21146A4(v1, *MEMORY[0x1E69DB980]);
  v5 = v4;
  v7 = v6;
  v9 = v8;

  qword_1ED9535C8 = v3;
  unk_1ED9535D0 = v5;
  dword_1ED9535D8 = v7;
  byte_1ED9535DC = BYTE4(v7) & 1;
  qword_1ED9535E0 = v9;
}

uint64_t *sub_1A22A2610()
{
  if (qword_1ED952438 != -1)
  {
    swift_once();
  }

  return &qword_1ED9535C8;
}

id sub_1A22A2660()
{
  if (qword_1ED952438 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED9535C8;

  return v0;
}

void sub_1A22A270C()
{
  v0 = *MEMORY[0x1E69DDD10];
  sub_1A211476C();
  qword_1ED9535A8 = v1;
  unk_1ED9535B0 = v2;
  dword_1ED9535B8 = v3;
  byte_1ED9535BC = v4 & 1;
  qword_1ED9535C0 = v5;
}

uint64_t *sub_1A22A2750()
{
  if (qword_1ED952430 != -1)
  {
    swift_once();
  }

  return &qword_1ED9535A8;
}

id sub_1A22A27A0()
{
  if (qword_1ED952430 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED9535A8;

  return v0;
}

double sub_1A22A2860()
{
  v0 = [objc_opt_self() blackColor];
  sub_1A2220C34(v0, v11, 0.0, 2.0, 6.0, 0.24, 1.0);
  v1 = sub_1A221E310();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1A223EC78();
  v9 = sub_1A2113050();
  sub_1A223ECE4(v11, v9 & 1, v12, 7.0, v1, v3, v5, v7, v8);
  xmmword_1EB091700 = v14;
  unk_1EB091710 = v15;
  byte_1EB091720 = v16;
  xmmword_1EB0916C0 = v12[0];
  *algn_1EB0916D0 = v12[1];
  result = *&v13;
  xmmword_1EB0916E0 = v12[2];
  unk_1EB0916F0 = v13;
  return result;
}

__int128 *sub_1A22A2958()
{
  if (qword_1EB08FB70 != -1)
  {
    swift_once();
  }

  return &xmmword_1EB0916C0;
}

uint64_t sub_1A22A29A8@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1EB08FB70 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1A211C42C(&xmmword_1EB0916C0, v2);
}

void *sub_1A22A2A18()
{
  v1 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_artwork;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A22A2A64(void *a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_artwork;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_artworkView)) + 0xB0))(v9);
  v8 = *(v7 + 16);
  *(v7 + 16) = a1;

  v6(v9, 0);
}

void (*sub_1A22A2B38(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_artwork;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  swift_beginAccess();
  return sub_1A22A2BC0;
}

void sub_1A22A2BC0(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[4];
    v5 = *(v4 + v3[5]);
    v6 = *((*MEMORY[0x1E69E7D40] & **(v4 + OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_artworkView)) + 0xB0);
    v7 = v5;
    v8 = v6(v3);
    v10 = *(v9 + 16);
    *(v9 + 16) = v5;

    v8(v3, 0);
  }

  free(v3);
}

void *sub_1A22A2C88()
{
  v1 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_icon;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1A22A2CD4(void *a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_icon;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  return (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_artworkView)) + 0x120))(a1);
}

void (*sub_1A22A2D88(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_icon;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A22A2E10;
}

void sub_1A22A2E10(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + v3[4]);
    v6 = *((*MEMORY[0x1E69E7D40] & **(v4 + OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_artworkView)) + 0x120);
    v7 = v5;
    v6(v5);
  }

  free(v3);
}

void (*sub_1A22A2EDC(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_title;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A22A2F64;
}

id sub_1A22A2F90(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = &v4[*a3];
  swift_beginAccess();
  *v8 = a1;
  *(v8 + 1) = a2;

  v9 = *&v4[*a4];
  if (a2)
  {
    v10 = sub_1A22E6598();
  }

  else
  {
    v10 = 0;
  }

  [v9 setText_];

  return [v4 setNeedsLayout];
}

void (*sub_1A22A3058(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_subtitle;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A22A30E0;
}

void sub_1A22A30EC(void **a1, char a2, void *a3)
{
  v5 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v6 = v5[3];
    v7 = *&v6[*a3];
    if (*&v6[v5[4] + 8])
    {

      v8 = sub_1A22E6598();

      v6 = v5[3];
    }

    else
    {
      v8 = 0;
    }

    [v7 setText_];

    [v6 setNeedsLayout];
  }

  free(v5);
}

uint64_t sub_1A22A31FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_visualStylingProvider;
  swift_beginAccess();
  *(v1 + v3) = a1;

  sub_1A22A3F04();
}

void (*sub_1A22A326C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A22A32D0;
}

void sub_1A22A32D0(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1A22A3F04();
  }
}

id sub_1A22A3304()
{
  type metadata accessor for MediaSuggestionArtworkView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_1A22A3340()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC638]);

  return [v0 initWithActivityIndicatorStyle_];
}

id sub_1A22A33B8(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for MediaSuggestionCollectionViewCell();
  return objc_msgSendSuper2(&v5, *a3);
}

id sub_1A22A3404(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for MediaSuggestionCollectionViewCell();
  return objc_msgSendSuper2(&v4, *a1);
}

void sub_1A22A344C(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for MediaSuggestionCollectionViewCell();
  v6 = *a4;
  v7 = v8.receiver;
  objc_msgSendSuper2(&v8, v6, a3);
  sub_1A22A4124();
}

id sub_1A22A34C0(char a1, SEL *a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for MediaSuggestionCollectionViewCell();
  objc_msgSendSuper2(&v6, *a2, a1 & 1);
  return sub_1A22A4124();
}

char *sub_1A22A3510(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_artwork] = 0;
  *&v4[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_icon] = 0;
  v9 = &v4[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_title];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v4[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_subtitle];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v4[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_visualStylingProvider] = 0;
  v11 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_artworkView;
  type metadata accessor for MediaSuggestionArtworkView();
  *&v4[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_activityView;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  v13 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_titleLabel;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v14 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_subtitleLabel;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v33.receiver = v4;
  v33.super_class = type metadata accessor for MediaSuggestionCollectionViewCell();
  v15 = objc_msgSendSuper2(&v33, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_artworkView;
  v17 = *&v15[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_artworkView];
  v18 = v15;
  [v17 setUserInteractionEnabled_];
  v19 = qword_1EB08FB70;
  v20 = *&v15[v16];
  if (v19 != -1)
  {
    swift_once();
  }

  v34[3] = unk_1EB0916F0;
  v34[4] = xmmword_1EB091700;
  v34[5] = unk_1EB091710;
  v34[0] = xmmword_1EB0916C0;
  v35 = byte_1EB091720;
  v34[1] = *algn_1EB0916D0;
  v34[2] = xmmword_1EB0916E0;
  v21 = *((*MEMORY[0x1E69E7D40] & *v20) + 0x90);
  sub_1A211C42C(v34, v32);
  v21(v34);

  v22 = [v18 contentView];
  [v22 addSubview_];

  v23 = [v18 contentView];
  [v23 addSubview_];

  v24 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_titleLabel;
  [*&v18[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_titleLabel] setNumberOfLines_];
  [*&v18[v24] setTextAlignment_];
  [*&v18[v24] setUserInteractionEnabled_];
  v25 = [v18 contentView];
  [v25 addSubview_];

  v26 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_subtitleLabel;
  [*&v18[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_subtitleLabel] setNumberOfLines_];
  [*&v18[v26] setTextAlignment_];
  [*&v18[v26] setUserInteractionEnabled_];
  v27 = [v18 contentView];

  [v27 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088D20);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1A2308E80;
  v29 = sub_1A22E6378();
  v30 = MEMORY[0x1E69DC2B0];
  *(v28 + 32) = v29;
  *(v28 + 40) = v30;
  MEMORY[0x1A58DAE60](v28, sel_updateContentSizeCategory);
  swift_unknownObjectRelease();

  sub_1A22A3CFC();

  return v18;
}

id sub_1A22A3930()
{
  v44.receiver = v0;
  v44.super_class = type metadata accessor for MediaSuggestionCollectionViewCell();
  objc_msgSendSuper2(&v44, sel_layoutSubviews);
  [v0 bounds];
  x = v45.origin.x;
  y = v45.origin.y;
  width = v45.size.width;
  height = v45.size.height;
  v5 = CGRectGetWidth(v45);
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  v6 = CGRectGetHeight(v46);
  if ((*&v6 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if ((~*&v6 & 0x7FF0000000000000) != 0)
  {
    v7 = v6;
  }

  if (v5 > v6)
  {
    v5 = v7;
  }

  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = width;
  v47.size.height = height;
  v8 = CGRectGetWidth(v47);
  v48.origin.x = x;
  v48.origin.y = y;
  v48.size.width = width;
  v48.size.height = height;
  v9 = CGRectGetHeight(v48);
  if ((*&v9 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  if ((~*&v9 & 0x7FF0000000000000) != 0)
  {
    v10 = v9;
  }

  if (v8 > v9)
  {
    v8 = v10;
  }

  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  MinX = CGRectGetMinX(v49);
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  MinY = CGRectGetMinY(v50);
  [*&v0[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_artworkView] setFrame_];
  v13 = *&v0[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_activityView];
  [v13 sizeThatFits_];
  sub_1A2128200(MinX, MinY, v5, v8, 0.0, 0.0, v14, v15);
  [v13 setFrame_];
  v51.origin.x = MinX;
  v51.origin.y = MinY;
  v51.size.width = v5;
  v51.size.height = v8;
  CGRectGetHeight(v51);
  sub_1A2209D24();
  sub_1A2209D24();
  sub_1A2209D24();
  sub_1A2127EF0();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = *&v0[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_titleLabel];
  [v24 sizeThatFits_];
  v26 = v25;
  v52.origin.x = v17;
  v52.origin.y = v19;
  v52.size.width = v21;
  v52.size.height = v23;
  v27 = CGRectGetMinX(v52);
  v53.origin.x = v17;
  v53.origin.y = v19;
  v53.size.width = v21;
  v53.size.height = v23;
  v28 = CGRectGetMinY(v53);
  v54.origin.x = v17;
  v54.origin.y = v19;
  v54.size.width = v21;
  v54.size.height = v23;
  v29 = CGRectGetWidth(v54);
  [v24 setFrame_];
  v55.origin.x = v27;
  v55.origin.y = v28;
  v55.size.width = v29;
  v55.size.height = v26;
  CGRectGetHeight(v55);
  sub_1A2209D24();
  sub_1A2209D24();
  sub_1A2209D24();
  sub_1A2127EF0();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = *&v0[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_subtitleLabel];
  [v38 sizeThatFits_];
  v40 = v39;
  v56.origin.x = v31;
  v56.origin.y = v33;
  v56.size.width = v35;
  v56.size.height = v37;
  v41 = CGRectGetMinX(v56);
  v57.origin.x = v31;
  v57.origin.y = v33;
  v57.size.width = v35;
  v57.size.height = v37;
  v42 = CGRectGetMinY(v57);
  v58.origin.x = v31;
  v58.origin.y = v33;
  v58.size.width = v35;
  v58.size.height = v37;
  return [v38 setFrame_];
}

id sub_1A22A3CFC()
{
  v1 = *&v0[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_titleLabel];
  if (qword_1ED952438 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED9535C8;
  v3 = unk_1ED9535D0;
  v4 = dword_1ED9535D8;
  v5 = byte_1ED9535DC;
  v6 = qword_1ED9535E0;
  v7 = [v0 traitCollection];
  v8 = sub_1A21275D0();
  v9 = sub_1A21275D8(v7, v2, v3, v4 | (v5 << 32), v6, v8);

  [v1 setFont_];
  v10 = *&v0[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_subtitleLabel];
  if (qword_1ED952430 != -1)
  {
    swift_once();
  }

  v11 = qword_1ED9535A8;
  v12 = unk_1ED9535B0;
  v13 = dword_1ED9535B8;
  v14 = byte_1ED9535BC;
  v15 = qword_1ED9535C0;
  v16 = [v0 traitCollection];
  v17 = sub_1A21275D0();
  v18 = sub_1A21275D8(v16, v11, v12, v13 | (v14 << 32), v15, v17);

  [v10 setFont_];

  return [v0 setNeedsLayout];
}

void sub_1A22A3F04()
{
  v1 = v0;
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xF8);
  v3 = v2();
  if (v3)
  {
    v4 = v3;
    v5 = *&v1[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_titleLabel];
    v6 = [v1 traitCollection];
    (*(*v4 + 160))(0, v5, v6);
  }

  v7 = v2();
  if (v7)
  {
    v8 = v7;
    v9 = *&v1[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_subtitleLabel];
    v10 = [v1 traitCollection];
    (*(*v8 + 160))(1, v9, v10);
  }

  v11 = v2();
  if (v11)
  {
    v12 = v11;
    v13 = *&v1[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_activityView];
    v14 = [v1 traitCollection];
    (*(*v12 + 160))(0, v13, v14);
  }
}

id sub_1A22A4124()
{
  v1 = &selRef_stopAnimating;
  if ([v0 isHighlighted])
  {
    v2 = 0.2;
  }

  else if ([v0 isSelected])
  {
    v1 = &selRef_startAnimating;
    v2 = 0.2;
  }

  else
  {
    v2 = 1.0;
  }

  [*&v0[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_activityView] *v1];
  v3 = *&v0[OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_artworkView];

  return [v3 setAlpha_];
}

id sub_1A22A41E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaSuggestionCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A22A42D8()
{
  *(v0 + OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_artwork) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_icon) = 0;
  v1 = (v0 + OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_title);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_subtitle);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_visualStylingProvider) = 0;
  v3 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_artworkView;
  type metadata accessor for MediaSuggestionArtworkView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_activityView;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  v5 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_titleLabel;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v6 = OBJC_IVAR____TtC13MediaControls33MediaSuggestionCollectionViewCell_subtitleLabel;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  sub_1A22E7028();
  __break(1u);
}

uint64_t sub_1A22A4430()
{
  v1 = OBJC_IVAR___MRUMediaControlsModuleViewController_isExpanded;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A22A4474(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR___MRUMediaControlsModuleViewController_isExpanded;
  v5 = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    v7 = MEMORY[0x1E69E7D40];
    v8 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x158))(v5);
    v9 = *(v1 + v4);
    v10 = (*((*v7 & *v8) + 0xD0))(v12);
    *(v11 + 1) = v9;
    v10(v12, 0);
  }
}

void (*sub_1A22A4570(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR___MRUMediaControlsModuleViewController_isExpanded;
  *(v3 + 56) = v1;
  *(v3 + 64) = v5;
  swift_beginAccess();
  *(v4 + 72) = *(v1 + v5);
  return sub_1A22A4604;
}

void sub_1A22A4604(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 56);
  v2 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    v6 = v1[7];
    v7 = v1[8];
    v8 = MEMORY[0x1E69E7D40];
    v9 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x158))();
    LOBYTE(v7) = *(v6 + v7);
    v10 = (*((*v8 & *v9) + 0xD0))(v1);
    *(v11 + 1) = v7;
    v10(v1, 0);
  }

  free(v1);
}

uint64_t sub_1A22A46FC()
{
  v1 = OBJC_IVAR___MRUMediaControlsModuleViewController_collapseToControlCenter;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A22A4740(char a1)
{
  v3 = OBJC_IVAR___MRUMediaControlsModuleViewController_collapseToControlCenter;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A22A47F8()
{
  v1 = OBJC_IVAR___MRUMediaControlsModuleViewController_expandedLayout;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A22A483C(char a1)
{
  v3 = OBJC_IVAR___MRUMediaControlsModuleViewController_expandedLayout;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_1A22A48EC(char a1)
{
  v3 = OBJC_IVAR___MRUMediaControlsModuleViewController_layout;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_1A22A88E0();
}

uint64_t (*sub_1A22A4940(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A22A49A4;
}

void (*sub_1A22A49D0(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1A2111BAC();
  return sub_1A22A4A18;
}

void sub_1A22A4A18(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___MRUMediaControlsModuleViewController____lazy_storage___contentView);
  *(v1 + OBJC_IVAR___MRUMediaControlsModuleViewController____lazy_storage___contentView) = v2;
}

uint64_t sub_1A22A4A30()
{
  v1 = OBJC_IVAR___MRUMediaControlsModuleViewController_onScreen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A22A4A74(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR___MRUMediaControlsModuleViewController_onScreen;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    v7 = MEMORY[0x1E69E7D40];
    v8 = v1;
    v9 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x158))(result);
    v10 = *(v8 + v4);
    v11 = (*((*v7 & *v9) + 0xD0))(v14);
    *v12 = v10;
    v11(v14, 0);

    v13 = *(v8 + OBJC_IVAR___MRUMediaControlsModuleViewController_presenter);
    result = (*(*v13 + 256))();
    if (*(v8 + v4) != 1)
    {
      return (*(*v13 + 264))(result);
    }
  }

  return result;
}

void (*sub_1A22A4BF4(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR___MRUMediaControlsModuleViewController_onScreen;
  *(v3 + 56) = v1;
  *(v3 + 64) = v5;
  swift_beginAccess();
  *(v4 + 72) = *(v1 + v5);
  return sub_1A22A4C88;
}

void sub_1A22A4C88(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 56);
  v2 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if ((v4 ^ v5))
  {
    v6 = v1[7];
    v7 = v1[8];
    v8 = MEMORY[0x1E69E7D40];
    v9 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x158))();
    v10 = *(v6 + v7);
    v11 = (*((*v8 & *v9) + 0xD0))(v1);
    *v12 = v10;
    v11(v1, 0);

    v13 = *(v6 + OBJC_IVAR___MRUMediaControlsModuleViewController_presenter);
    v14 = (*(*v13 + 256))();
    if ((*(v6 + v7) & 1) == 0)
    {
      (*(*v13 + 264))(v14);
    }
  }

  free(v1);
}

uint64_t sub_1A22A4DF8()
{
  type metadata accessor for VisualStylingProvider();
  sub_1A22E0878(v2);
  v0 = sub_1A211A6BC();
  return sub_1A22DF9B0(v2, 0, 1, 4, 0, v0);
}

id sub_1A22A4E50()
{
  v1 = OBJC_IVAR___MRUMediaControlsModuleViewController____lazy_storage___dismissGestureRecognizer;
  v2 = *(v0 + OBJC_IVAR___MRUMediaControlsModuleViewController____lazy_storage___dismissGestureRecognizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___MRUMediaControlsModuleViewController____lazy_storage___dismissGestureRecognizer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v0 action:sel_dismissModule];
    [v4 setDelegate_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1A22A4F1C(uint64_t a1)
{
  v1[OBJC_IVAR___MRUMediaControlsModuleViewController_isExpanded] = 0;
  v1[OBJC_IVAR___MRUMediaControlsModuleViewController_collapseToControlCenter] = 0;
  v1[OBJC_IVAR___MRUMediaControlsModuleViewController_expandedLayout] = 8;
  v1[OBJC_IVAR___MRUMediaControlsModuleViewController_layout] = 1;
  *&v1[OBJC_IVAR___MRUMediaControlsModuleViewController____lazy_storage___contentView] = 0;
  v1[OBJC_IVAR___MRUMediaControlsModuleViewController_onScreen] = 0;
  v3 = OBJC_IVAR___MRUMediaControlsModuleViewController_visualStylingProvider;
  type metadata accessor for VisualStylingProvider();
  sub_1A22E0878(v10);
  v4 = sub_1A211A6BC();
  *&v1[v3] = sub_1A22DF9B0(v10, 0, 1, 4, 0, v4);
  *&v1[OBJC_IVAR___MRUMediaControlsModuleViewController____lazy_storage___dismissGestureRecognizer] = 0;
  *&v1[OBJC_IVAR___MRUMediaControlsModuleViewController_shareAudioViewController] = 0;
  v5 = &v1[OBJC_IVAR___MRUMediaControlsModuleViewController_dismissModuleBlock];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v1[OBJC_IVAR___MRUMediaControlsModuleViewController_expandModuleBlock];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v1[OBJC_IVAR___MRUMediaControlsModuleViewController_invalidateContainerViewsBlock];
  *v7 = 0;
  v7[1] = 0;
  *&v1[OBJC_IVAR___MRUMediaControlsModuleViewController_gridSizeClass] = 4;
  *&v1[OBJC_IVAR___MRUMediaControlsModuleViewController_compactContinuousCornerRadius] = 0;
  *&v1[OBJC_IVAR___MRUMediaControlsModuleViewController_contentMetrics] = 0;
  *&v1[OBJC_IVAR___MRUMediaControlsModuleViewController_contentRenderingMode] = 0;
  v1[OBJC_IVAR___MRUMediaControlsModuleViewController_isResizing] = 0;
  v1[OBJC_IVAR___MRUMediaControlsModuleViewController_providesOwnPlatter] = 1;
  v1[OBJC_IVAR___MRUMediaControlsModuleViewController_shouldPerformHoverInteraction] = 0;
  *&v1[OBJC_IVAR___MRUMediaControlsModuleViewController_implicitlyExpandedGridSizeClasses] = 1536;
  *&v1[OBJC_IVAR___MRUMediaControlsModuleViewController_presenter] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for MediaControlsModuleViewController();
  return objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_1A22A50CC(char *a1)
{
  v3 = objc_allocWithZone(v1);
  ObjectType = swift_getObjectType();
  type metadata accessor for MediaControlsModulePresenter();
  v5 = *&a1[OBJC_IVAR___MRUMediaControlsModuleController_sessionsController + 8];
  v6 = swift_unknownObjectRetain();
  v7 = sub_1A2255888(v6, v5);
  v8 = (*(ObjectType + 440))(v7);

  swift_deallocPartialClassInstance();
  return v8;
}

uint64_t sub_1A22A5174(char *a1)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for MediaControlsModulePresenter();
  v3 = *&a1[OBJC_IVAR___MRUMediaControlsModuleController_sessionsController + 8];
  v4 = swift_unknownObjectRetain();
  v5 = sub_1A2255888(v4, v3);
  v6 = (*(ObjectType + 440))(v5);

  swift_deallocPartialClassInstance();
  return v6;
}

void sub_1A22A52F0()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x158))();
  [v0 setView_];
}

void sub_1A22A5418()
{
  v19.receiver = v0;
  v19.super_class = type metadata accessor for MediaControlsModuleViewController();
  objc_msgSendSuper2(&v19, sel_viewDidLoad);
  v1 = *(v0 + OBJC_IVAR___MRUMediaControlsModuleViewController_presenter);
  v2 = *(*v1 + 144);
  v3 = swift_unknownObjectRetain();
  v4 = v2(v3, &off_1F1442310);
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x158);
  v7 = (v6)(v4);
  v8 = *&v7[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView];

  v9 = *((*v5 & *v8) + 0x188);
  v10 = swift_unknownObjectRetain();
  v9(v10, &off_1EE63F0D8);

  v11 = v6();
  [v11 setMaximumContentSizeCategory_];

  v12 = v6();
  v13 = sub_1A22A4E50();
  [v12 addGestureRecognizer_];

  v14 = v6();
  v15 = *&v14[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_allSpeakersButton];

  sub_1A2115288(0, &qword_1ED94E940);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = sub_1A22E6C98();
  [v15 addAction:v17 forControlEvents:{64, 0, 0, 0, sub_1A22ABBA4, v16}];

  v18 = v6();
  (*(*v1 + 224))(v20);
  (*((*v5 & *v18) + 0xB0))(v20);

  sub_1A22A9680();
}

uint64_t sub_1A22A57B4(char a1, SEL *a2, uint64_t a3)
{
  v8.receiver = v3;
  v8.super_class = type metadata accessor for MediaControlsModuleViewController();
  objc_msgSendSuper2(&v8, *a2, a1 & 1);
  return (*((*MEMORY[0x1E69E7D40] & *v3) + 0x178))(a3);
}

void sub_1A22A5860(void *a1, uint64_t a2, uint64_t a3, const char **a4, uint64_t a5)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for MediaControlsModuleViewController();
  v8 = *a4;
  v9 = v10.receiver;
  objc_msgSendSuper2(&v10, v8, a3);
  (*((*MEMORY[0x1E69E7D40] & *v9) + 0x178))(a5);
}

void sub_1A22A5914()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for MediaControlsModuleViewController();
  objc_msgSendSuper2(&v1, sel_viewDidLayoutSubviews);
  sub_1A211C9D0();
}

void sub_1A22A594C(void *a1, double a2, double a3)
{
  v19.receiver = v3;
  v19.super_class = type metadata accessor for MediaControlsModuleViewController();
  objc_msgSendSuper2(&v19, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v17 = sub_1A22ABCF8;
  v18 = v7;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A22A5AEC;
  v16 = &block_descriptor_18;
  v8 = _Block_copy(&v13);
  v9 = v3;

  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v17 = sub_1A22ABD84;
  v18 = v10;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A22A5AEC;
  v16 = &block_descriptor_11;
  v11 = _Block_copy(&v13);
  v12 = v9;

  [a1 animateAlongsideTransition:v8 completion:v11];
  _Block_release(v11);
  _Block_release(v8);
}

uint64_t sub_1A22A5AEC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1A22A5CD0(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  if (v3)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v3 = sub_1A22ACD80;
  }

  else
  {
    v4 = 0;
  }

  v2(v3, v4);
  sub_1A210F5C0(v3);
}

void sub_1A22A5E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1A210E3F0;
    v5[3] = &block_descriptor_68;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
  }

  (*(a3 + 16))(a3, v4);
  _Block_release(v4);
}

id sub_1A22A6104(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = (a1 + *a3);
  swift_beginAccess();
  v6 = *v5;
  if (*v5)
  {
    v7 = v5[1];
    aBlock[4] = v6;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A210E3F0;
    aBlock[3] = a4;
    v8 = _Block_copy(aBlock);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1A22A62B8(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t sub_1A22A63C4()
{
  v1 = OBJC_IVAR___MRUMediaControlsModuleViewController_gridSizeClass;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A22A64B8(uint64_t a1)
{
  v3 = OBJC_IVAR___MRUMediaControlsModuleViewController_gridSizeClass;
  swift_beginAccess();
  *(v1 + v3) = a1;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x130))(8);
  return sub_1A22A8B1C();
}

uint64_t (*sub_1A22A6558(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A22A65BC;
}

uint64_t sub_1A22A65BC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x130))(8);
    return sub_1A22A8B1C();
  }

  return result;
}

void sub_1A22A66DC(double a1)
{
  v3 = OBJC_IVAR___MRUMediaControlsModuleViewController_compactContinuousCornerRadius;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_1A211C9D0();
}

uint64_t (*sub_1A22A6730(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A22A6794;
}

uint64_t sub_1A22A67AC(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

void *sub_1A22A683C()
{
  v1 = OBJC_IVAR___MRUMediaControlsModuleViewController_contentMetrics;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A22A69A8(void *a1)
{
  v3 = OBJC_IVAR___MRUMediaControlsModuleViewController_contentMetrics;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = MEMORY[0x1E69E7D40];
  v7 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x158))();
  v8 = *(v1 + v3);
  v9 = *((*v6 & *v7) + 0x158);
  v10 = v8;
  v9(v8);
}

void (*sub_1A22A6AB4(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR___MRUMediaControlsModuleViewController_contentMetrics;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A22A6B3C;
}

void sub_1A22A6B3C(void **a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v6 = v3[4];
    v7 = MEMORY[0x1E69E7D40];
    v8 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x158))(v4);
    v9 = *(v5 + v6);
    v10 = *((*v7 & *v8) + 0x158);
    v11 = v9;
    v10(v9);
  }

  free(v3);
}

uint64_t sub_1A22A6C70()
{
  v1 = OBJC_IVAR___MRUMediaControlsModuleViewController_contentRenderingMode;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A22A6D08(uint64_t a1)
{
  v3 = OBJC_IVAR___MRUMediaControlsModuleViewController_contentRenderingMode;
  v4 = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v5 != a1)
  {
    v6 = MEMORY[0x1E69E7D40];
    v7 = v1;
    v8 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x158))(v4);
    (*((*v6 & *v8) + 0x140))(*(v7 + v3));

    (*(**(v7 + OBJC_IVAR___MRUMediaControlsModuleViewController_presenter) + 256))();
    sub_1A22A9680();
  }
}

void (*sub_1A22A6E3C(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR___MRUMediaControlsModuleViewController_contentRenderingMode;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_1A22A6ED0;
}

void sub_1A22A6ED0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (v2 != v5)
  {
    v6 = v1[4];
    v7 = v1[5];
    v8 = MEMORY[0x1E69E7D40];
    v9 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x158))();
    (*((*v8 & *v9) + 0x140))(*(v6 + v7));

    (*(**(v6 + OBJC_IVAR___MRUMediaControlsModuleViewController_presenter) + 256))();
    sub_1A22A9680();
  }

  free(v1);
}

uint64_t sub_1A22A7054()
{
  v1 = OBJC_IVAR___MRUMediaControlsModuleViewController_isResizing;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A22A70EC(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR___MRUMediaControlsModuleViewController_isResizing;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v5 != v3)
  {
    sub_1A22A9680();
    v6 = MEMORY[0x1E69E7D40];
    v7 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x158))();
    v8 = *(v1 + v4);
    v9 = (*((*v6 & *v7) + 0xD0))(v11);
    *(v10 + 2) = v8;
    v9(v11, 0);
  }
}

void (*sub_1A22A71EC(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR___MRUMediaControlsModuleViewController_isResizing;
  *(v3 + 56) = v1;
  *(v3 + 64) = v5;
  swift_beginAccess();
  *(v4 + 72) = *(v1 + v5);
  return sub_1A22A7280;
}

void sub_1A22A7280(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 56);
  v2 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    v6 = v1[7];
    v7 = v1[8];
    sub_1A22A9680();
    v8 = MEMORY[0x1E69E7D40];
    v9 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x158))();
    LOBYTE(v7) = *(v6 + v7);
    v10 = (*((*v8 & *v9) + 0xD0))(v1);
    *(v11 + 2) = v7;
    v10(v1, 0);
  }

  free(v1);
}

double sub_1A22A73C4()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x158);
  v4 = v3();
  v5 = (*((*v2 & *v4) + 0x190))();

  if ((v5 & 1) == 0)
  {
    v21 = (*((*v2 & *v1) + 0x238))();
    sub_1A211313C(v21, 1, 5);
    v23 = v22;

    return v23;
  }

  v6 = v3();
  v7 = [v6 window];

  if (!v7)
  {
    return 0.0;
  }

  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;

  return CGRectGetHeight(*&v16);
}

double sub_1A22A76B8()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x158))();
  v4 = (*((*v2 & *v3) + 0x190))();

  v5 = (*((*v2 & *v1) + 0x238))();
  v6 = v5;
  if (v4)
  {
    v7 = 4;
  }

  else
  {
    v7 = 5;
  }

  v8 = sub_1A211313C(v5, 1, v7);

  return v8;
}

uint64_t sub_1A22A7820()
{
  v1 = OBJC_IVAR___MRUMediaControlsModuleViewController_providesOwnPlatter;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A22A78B8(char a1)
{
  v3 = OBJC_IVAR___MRUMediaControlsModuleViewController_providesOwnPlatter;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A22A79E8()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x158);
  v4 = v3();
  v5 = (*((*v2 & *v4) + 0x108))();

  if (v5)
  {
    if ((*((*v2 & *v1) + 0x250))() == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0898A0);
      result = swift_allocObject();
      *(result + 16) = xmmword_1A230DE30;
      *(result + 32) = v5;
      return result;
    }
  }

  if (((*((*v2 & *v1) + 0x268))() & 1) == 0)
  {
    v7 = v3();
    v8 = *&v7[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView];

    LOBYTE(v7) = (*((*v2 & *v8) + 0xC8))();
    if (!sub_1A210E438(v7, 2))
    {
      return 0;
    }
  }

  v9 = v3();
  v10 = *&v9[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView];

  v11 = (*((*v2 & *v10) + 0x140))();
  v12 = *(v11 + 16);
  if (v12)
  {
    v16 = MEMORY[0x1E69E7CC0];
    result = sub_1A22E6F38();
    v13 = 0;
    v14 = 48;
    while (v13 < *(v11 + 16))
    {
      ++v13;
      v15 = *(v11 + v14);
      sub_1A22E6F08();
      sub_1A22E6F48();
      sub_1A22E6F58();
      result = sub_1A22E6F18();
      v14 += 24;
      if (v12 == v13)
      {

        return v16;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1A22A7D48()
{
  v1 = OBJC_IVAR___MRUMediaControlsModuleViewController_shouldPerformHoverInteraction;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A22A7DE0(char a1)
{
  v3 = OBJC_IVAR___MRUMediaControlsModuleViewController_shouldPerformHoverInteraction;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A22A7E90(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  if (((*((*MEMORY[0x1E69E7D40] & *v1) + 0x140))() - 3) < 3u)
  {
    return 0;
  }

  v5 = (*((*v3 & *v1) + 0x158))();
  v6 = (*((*v3 & *v5) + 0x188))(a1);

  return v6 & 1;
}

BOOL sub_1A22A80CC()
{
  v1 = MEMORY[0x1E69E7D40];
  if (((*((*MEMORY[0x1E69E7D40] & *v0) + 0x140))() - 3) > 2u || (*((*v1 & *v0) + 0x128))() != 8)
  {
    return 1;
  }

  v2 = (*((*v1 & *v0) + 0x158))();
  v3 = *&v2[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView];

  v4 = (*((*v1 & *v3) + 0xC8))();

  return sub_1A210E438(v4, 1);
}

uint64_t sub_1A22A83C8()
{
  v1 = OBJC_IVAR___MRUMediaControlsModuleViewController_implicitlyExpandedGridSizeClasses;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A22A8460(uint64_t a1)
{
  v3 = OBJC_IVAR___MRUMediaControlsModuleViewController_implicitlyExpandedGridSizeClasses;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

BOOL sub_1A22A8510()
{
  v1 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x110))())
  {
    return 0;
  }

  v3 = *((*v1 & *v0) + 0x140);
  v4 = v3();
  if (sub_1A210E438(v4, 6))
  {
    return 1;
  }

  v5 = v3();
  if (sub_1A210E438(v5, 7))
  {
    return 1;
  }

  v6 = *((*v1 & *v0) + 0x158);
  v7 = v6();
  v8 = (*((*v1 & *v7) + 0xD8))();

  if (v8)
  {

    return 1;
  }

  v9 = v6();
  v10 = *&v9[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView];

  v11 = (*((*v1 & *v10) + 0xC8))();

  return sub_1A210E438(v11, 1);
}

void sub_1A22A8738(void *a1)
{
  if (*(a1 + OBJC_IVAR___MRUMediaControlsModuleViewController_shareAudioViewController))
  {
    MEMORY[0x1EEE9AC00](a1);
    v3 = v2;
    v4 = sub_1A211A6BC();
    sub_1A22D1D0C(v3, v4 & 1, sub_1A22ACDB0);
  }

  v5 = sub_1A22A8B1C();
  v6 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x158))(v5);
  [v6 layoutIfNeeded];
}

void sub_1A22A88E0()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x158);
  v3 = v2();
  v4 = *((*v1 & *v0) + 0x140);
  v5 = v4();
  (*((*v1 & *v3) + 0x128))(v5);

  v6 = v4();
  v7 = sub_1A229DF4C(v6);
  if (!v7 && *(v0 + OBJC_IVAR___MRUMediaControlsModuleViewController_shareAudioViewController))
  {
    MEMORY[0x1EEE9AC00](v7);
    v9 = v8;
    v10 = sub_1A211A6BC();
    sub_1A22D1D0C(v9, v10 & 1, sub_1A22ACDB0);
  }

  sub_1A22A8D04();
  v11 = (*(**(v0 + OBJC_IVAR___MRUMediaControlsModuleViewController_presenter) + 256))();
  if ((*((*v1 & *v0) + 0x268))(v11))
  {
    v12 = v2();
    [v12 layoutIfNeeded];
  }
}

uint64_t sub_1A22A8B1C()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))();
  if (v3 == 8)
  {
    if ((*((*v2 & *v0) + 0xF8))())
    {
      v4 = (*((*v2 & *v0) + 0x158))();
      v5 = (*((*v2 & *v4) + 0x190))();

      if (v5)
      {
        v3 = 4;
      }

      else
      {
        v3 = 5;
      }
    }

    else
    {
      v6 = (*((*v2 & *v0) + 0x208))();
      v3 = sub_1A229DF14(v6);
    }
  }

  (*((*v2 & *v1) + 0x148))(v3);
  v7 = *((*v2 & *v1) + 0x130);

  return v7(8);
}

void sub_1A22A8D04()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1A22E6248();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x158);
  v9 = (v8)(v4);
  v10 = *&v9[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView];

  v11 = v8();
  v12 = *&v11[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView];

  v13 = *v7;
  v14 = ObjectType;
  v15 = (*((v13 & *v12) + 0x230))();

  v16 = v10;
  v17 = sub_1A22AB738(v15, v16, v14);

  v18 = sub_1A2104EA0();
  v33 = v3;
  (*(v3 + 16))(v6, v18, v2);

  v19 = sub_1A22E6238();
  v20 = sub_1A22E6A68();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v31 = v2;
    v23 = v22;
    v34[0] = v22;
    *v21 = 136315394;
    v24 = sub_1A22E7388();
    v26 = sub_1A2103450(v24, v25, v34);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    v27 = sub_1A22E6938();
    v29 = sub_1A2103450(v27, v28, v34);

    *(v21 + 14) = v29;
    _os_log_impl(&dword_1A20FC000, v19, v20, "[%s] updateExpandedSessionIdentifiers - will update expandedSessionIdentifiers:%s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v23, -1, -1);
    MEMORY[0x1A58DCD00](v21, -1, -1);

    (*(v33 + 8))(v6, v31);
  }

  else
  {

    (*(v33 + 8))(v6, v2);
  }

  (*(**(v1 + OBJC_IVAR___MRUMediaControlsModuleViewController_presenter) + 312))(v17);
}

BOOL sub_1A22A9098(uint64_t *a1, void *a2)
{
  v4 = sub_1A22E6248();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v46[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v46[-v10];
  v12 = *a1;
  v13 = a1[1];
  v14 = MEMORY[0x1E69E7D40];
  v15 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x118))(v9);
  if (*(v15 + 16) && (v16 = sub_1A210FF30(v12, v13), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);

    v20 = *v14 & *v18;
    v49 = *(v20 + 0x130);
    v50 = v20 + 304;
    v21 = (v49)(v19);
    v22 = sub_1A229DADC(v21);
    v23 = sub_1A2104EA0();
    (*(v5 + 16))(v11, v23, v4);
    v24 = v18;

    v25 = sub_1A22E6238();
    v26 = sub_1A22E6A68();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v51 = v4;
      v28 = v27;
      v48 = swift_slowAlloc();
      v53 = v48;
      *v28 = 136315906;
      v29 = sub_1A22E7388();
      v47 = v26;
      v31 = sub_1A2103450(v29, v30, &v53);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_1A2103450(v12, v13, &v53);
      *(v28 + 22) = 2080;
      v52 = v49();
      sub_1A22ACBF0();
      v32 = sub_1A22E71D8();
      v34 = sub_1A2103450(v32, v33, &v53);

      *(v28 + 24) = v34;
      *(v28 + 32) = 1024;
      *(v28 + 34) = v22;
      _os_log_impl(&dword_1A20FC000, v25, v47, "[%s] updateExpandedSessionIdentifiers - SessionView for sessionIdentifier:%s layout:%s isShowingRoutingItems:%{BOOL}d", v28, 0x26u);
      v35 = v48;
      swift_arrayDestroy();
      MEMORY[0x1A58DCD00](v35, -1, -1);
      MEMORY[0x1A58DCD00](v28, -1, -1);

      (*(v5 + 8))(v11, v51);
    }

    else
    {

      (*(v5 + 8))(v11, v4);
    }
  }

  else
  {

    v36 = sub_1A2104EA0();
    (*(v5 + 16))(v8, v36, v4);

    v37 = sub_1A22E6238();
    v38 = sub_1A22E6A88();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v53 = v40;
      *v39 = 136315394;
      v41 = sub_1A22E7388();
      v43 = sub_1A2103450(v41, v42, &v53);
      v51 = v4;
      v44 = v43;

      *(v39 + 4) = v44;
      *(v39 + 12) = 2080;
      *(v39 + 14) = sub_1A2103450(v12, v13, &v53);
      _os_log_impl(&dword_1A20FC000, v37, v38, "[%s] updateExpandedSessionIdentifiers - SessionView not found for sessionIdentifier:%s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1A58DCD00](v40, -1, -1);
      MEMORY[0x1A58DCD00](v39, -1, -1);

      (*(v5 + 8))(v8, v51);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    return 0;
  }

  return v22;
}

void sub_1A22A9680()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1F0))();
  if (v2)
  {
    v3 = v2;
    v2();
    v2 = sub_1A210F5C0(v3);
  }

  v4 = (*((*v1 & *v0) + 0x158))(v2);
  v5 = *&v4[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView];

  v6 = (*((*v1 & *v5) + 0x138))();
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = (v6 + 48);
    while (v8 < *(v6 + 16))
    {
      ++v8;
      v10 = *v9;
      v11 = *((*v1 & **v9) + 0x1E8);

      v12 = v10;
      v11(2);

      v9 += 3;
      if (v7 == v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
  }
}

void sub_1A22A9858(void *a1)
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x158))();
  (*((*v1 & *v2) + 0xE0))(0);
}

id sub_1A22A996C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaControlsModuleViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A22A9A68@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A22E58F8();
  v14 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x250))(v4) || ((*((*v7 & *v1) + 0x170))() & 1) == 0)
  {
    v11 = *MEMORY[0x1E69AE580];
    v12 = *(v14 + 104);

    return v12(a1, v11, v3);
  }

  else
  {
    v8 = (*((*v7 & *v1) + 0x140))();
    v9 = MEMORY[0x1E69AE578];
    if ((v8 & 0xFC) != 4)
    {
      v9 = MEMORY[0x1E69AE570];
    }

    (*(v14 + 104))(v6, *v9, v3);
    return (*(v14 + 32))(a1, v6, v3);
  }
}

void sub_1A22A9C78()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x158))();
  (*(**(v0 + OBJC_IVAR___MRUMediaControlsModuleViewController_presenter) + 224))(v3);
  (*((*v1 & *v2) + 0xB0))(v3);

  sub_1A22A9680();
}

void sub_1A22A9D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = a2;
  v5 = sub_1A22E5968();
  v60 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v57 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v45 - v9;
  v11 = MEMORY[0x1E69E7D40];
  v12 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x140);
  v13 = (v12)(v8);
  if (!sub_1A210E438(v13, 6))
  {
    v14 = v12();
    if (!sub_1A210E438(v14, 7))
    {
      return;
    }
  }

  if (((*((*v11 & *v3) + 0x170))() & 1) == 0)
  {
    return;
  }

  v47 = v3;
  sub_1A22E5988();
  v16 = v15;
  sub_1A22E5958();
  v18 = v17;
  if (v16)
  {
    v19 = sub_1A22E6598();

    if (v18)
    {
LABEL_6:
      v20 = sub_1A22E6598();

      goto LABEL_9;
    }
  }

  else
  {
    v19 = 0;
    if (v17)
    {
      goto LABEL_6;
    }
  }

  v20 = 0;
LABEL_9:
  v21 = [objc_opt_self() alertControllerWithTitle:v19 message:v20 preferredStyle:1];

  v22 = sub_1A22E5978();
  v23 = *(v22 + 16);
  if (v23)
  {
    v46 = v21;
    v56 = a3;
    v63 = MEMORY[0x1E69E7CC0];
    sub_1A22E6F38();
    v24 = objc_opt_self();
    v54 = *(v60 + 16);
    v55 = v24;
    v53 = *(v60 + 80);
    v45 = v22;
    v52 = (v53 + 32) & ~v53;
    v25 = v22 + v52;
    v26 = *(v60 + 72);
    v50 = (v60 + 32);
    v51 = v26;
    v49 = v62;
    v60 += 16;
    v48 = (v60 - 8);
    do
    {
      v30 = v54;
      v54(v10, v25, v5);
      sub_1A22957CC();
      v32 = v31;
      v33 = v57;
      v30(v57, v10, v5);
      v34 = v5;
      v35 = v52;
      v36 = swift_allocObject();
      v37 = v56;
      *(v36 + 16) = v59;
      *(v36 + 24) = v37;
      v38 = v36 + v35;
      v5 = v34;
      (*v50)(v38, v33, v34);

      if (v32)
      {
        v27 = sub_1A22E6598();
      }

      else
      {
        v27 = 0;
      }

      v62[2] = sub_1A22979B4;
      v62[3] = v36;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v62[0] = sub_1A224DB84;
      v62[1] = &block_descriptor_21_1;
      v28 = _Block_copy(aBlock);

      v29 = [v55 actionWithTitle:v27 style:0 handler:{v28, v45}];
      _Block_release(v28);

      (*v48)(v10, v34);
      sub_1A22E6F08();
      sub_1A22E6F48();
      sub_1A22E6F58();
      sub_1A22E6F18();
      v25 += v51;
      --v23;
    }

    while (v23);

    v39 = v63;
    v21 = v46;
    if (!(v63 >> 62))
    {
LABEL_16:
      v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v40)
      {
        goto LABEL_17;
      }

LABEL_27:

      [v47 presentViewController:v21 animated:1 completion:0];

      return;
    }
  }

  else
  {

    v39 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_16;
    }
  }

  v40 = sub_1A22E6DE8();
  if (!v40)
  {
    goto LABEL_27;
  }

LABEL_17:
  v41 = 0;
  while (1)
  {
    if ((v39 & 0xC000000000000001) != 0)
    {
      v42 = MEMORY[0x1A58DB0F0](v41, v39);
    }

    else
    {
      if (v41 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v42 = *(v39 + 8 * v41 + 32);
    }

    v43 = v42;
    v44 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    [v21 addAction_];

    ++v41;
    if (v44 == v40)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

void sub_1A22AA308()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x140))();
  if (sub_1A229DF4C(v4) && ((*((*v3 & *v0) + 0x170))() & 1) != 0)
  {
    sub_1A2115288(0, &qword_1EB089740);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = ObjectType;

    v7 = sub_1A225C800(sub_1A22AC108, v6);

    v8 = *&v1[OBJC_IVAR___MRUMediaControlsModuleViewController_shareAudioViewController];
    *&v1[OBJC_IVAR___MRUMediaControlsModuleViewController_shareAudioViewController] = v7;
    v9 = v7;

    v10 = objc_opt_self();
    v11 = swift_allocObject();
    v11[2] = v1;
    v11[3] = v9;
    v11[4] = ObjectType;
    v15[4] = sub_1A22AC11C;
    v15[5] = v11;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_1A2262D4C;
    v15[3] = &block_descriptor_31;
    v12 = _Block_copy(v15);
    v13 = v9;
    v14 = v1;

    [v10 requestWithCompletion_];
    _Block_release(v12);
  }
}

void sub_1A22AA544(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_1A22E6248();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A2104EA0();
  (*(v7 + 16))(v9, v10, v6);
  v11 = a1;
  v12 = a2;
  v13 = sub_1A22E6238();
  v14 = sub_1A22E6A58();

  if (os_log_type_enabled(v13, v14))
  {
    v40 = v14;
    v41 = a3;
    v15 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42[0] = v39;
    *v15 = 136315650;
    v16 = sub_1A22E7388();
    v18 = sub_1A2103450(v16, v17, v42);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    if (a1 && (v19 = [v11 mediaRouteIdentifier]) != 0)
    {
      v20 = v19;
      v21 = sub_1A22E65C8();
      v23 = v22;

      v24 = v21;
    }

    else
    {
      v23 = 0xE300000000000000;
      v24 = 7104878;
    }

    v25 = sub_1A2103450(v24, v23, v42);

    *(v15 + 14) = v25;
    *(v15 + 22) = 2112;
    if (a2)
    {
      v26 = a2;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      v28 = v27;
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }

    v29 = v40;
    *(v15 + 24) = v27;
    v30 = v38;
    *v38 = v28;
    _os_log_impl(&dword_1A20FC000, v13, v29, "[%s] ShareAudio dismissed routeIdentfier:%s error:%@", v15, 0x20u);
    sub_1A226ADE4(v30);
    MEMORY[0x1A58DCD00](v30, -1, -1);
    v31 = v39;
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v31, -1, -1);
    MEMORY[0x1A58DCD00](v15, -1, -1);

    (*(v7 + 8))(v9, v6);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v33 = Strong;
    if (*&Strong[OBJC_IVAR___MRUMediaControlsModuleViewController_shareAudioViewController])
    {
      MEMORY[0x1EEE9AC00](Strong);
      *(&v37 - 2) = v33;
      v35 = v34;
      v36 = sub_1A211A6BC();
      sub_1A22D1D0C(v35, v36 & 1, sub_1A22ACD1C);
    }

    else
    {
    }
  }
}

id sub_1A22AA8E0(char a1, uint64_t a2, void *a3)
{
  v6 = sub_1A22E6248();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    MEMORY[0x1EEE9AC00](v8);
    *(&v21 - 2) = a2;
    *(&v21 - 1) = a3;
    v11 = sub_1A211A6BC();
    return sub_1A22D1C68(a3, v11 & 1, sub_1A22ACC48);
  }

  else
  {
    v13 = sub_1A2104EA0();
    (*(v7 + 16))(v10, v13, v6);
    v14 = sub_1A22E6238();
    v15 = sub_1A22E6A98();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      v18 = sub_1A22E7388();
      v20 = sub_1A2103450(v18, v19, &v22);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1A20FC000, v14, v15, "[%s] ShareAudio not presented - device not unlocked", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1A58DCD00](v17, -1, -1);
      MEMORY[0x1A58DCD00](v16, -1, -1);
    }

    return (*(v7 + 8))(v10, v6);
  }
}

BOOL sub_1A22AAB24()
{
  v1 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x268))())
  {
    return 0;
  }

  else
  {
    v3 = (*((*v1 & *v0) + 0x158))();
    v4 = *&v3[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView];

    LOBYTE(v3) = (*((*v1 & *v4) + 0xC8))();
    return !sub_1A210E438(v3, 2);
  }
}

void sub_1A22AAC44(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x158))();
  (*((*v4 & *v5) + 0x198))(a2);
}

uint64_t sub_1A22AAD14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1A2115288(0, &qword_1ED94E980);
  memset(v15, 0, sizeof(v15));
  v16 = 3;
  v8 = sub_1A2209D24();
  v9 = sub_1A2216D08();
  sub_1A229BE28(v9, v15, v14, 0.25, v8);
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = v4;
  v10[4] = a3;
  v10[5] = a4;
  v11 = a2;
  v12 = v4;

  sub_1A21179EC(v14, sub_1A22ACA38, v10, 0, 0);

  return sub_1A2116928(v14);
}

uint64_t sub_1A22AAE14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(**(a2 + OBJC_IVAR___MRUMediaControlsModuleViewController_presenter) + 192))();
  if (*(v7 + 16) && (v8 = sub_1A210FF30(a3, a4), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {
    v10 = 0;
  }

  return (*((*MEMORY[0x1E69E7D40] & *a1) + 0xF0))(v10);
}

uint64_t sub_1A22AAEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(**(v4 + OBJC_IVAR___MRUMediaControlsModuleViewController_presenter) + 128))();
  v8 = v7;
  ObjectType = swift_getObjectType();
  (*(v8 + 16))(a3, a4, ObjectType, v8);

  return swift_unknownObjectRelease();
}

uint64_t sub_1A22AAF90(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1A2115288(0, &qword_1ED94E980);
  memset(v15, 0, sizeof(v15));
  v16 = 3;
  v8 = sub_1A2209D24();
  v9 = sub_1A2216D08();
  sub_1A229BE28(v9, v15, v14, 0.25, v8);
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = v4;
  v10[4] = a3;
  v10[5] = a4;
  v11 = a2;
  v12 = v4;

  sub_1A21179EC(v14, sub_1A22ACDB4, v10, 0, 0);

  return sub_1A2116928(v14);
}

uint64_t sub_1A22AB090(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MediaControlsModuleViewController();

  return nullsub_1(a1, a2);
}

void sub_1A22AB0E4(void *a1)
{
  v3 = MEMORY[0x1E69E7D40];
  if (((*((*MEMORY[0x1E69E7D40] & *v1) + 0xF8))() & 1) == 0)
  {
    v4 = (*((*v3 & *v1) + 0x140))();
    if (!sub_1A229DF4C(v4))
    {
      return;
    }
  }

  v5 = *((*v3 & *v1) + 0x158);
  v6 = v5();
  v7 = *&v6[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView];

  [a1 locationInView_];
  v9 = v8;
  v11 = v10;

  v12 = v5();
  v13 = *&v12[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView];

  v14 = (*((*v3 & *v13) + 0x140))();
  v15 = *(v14 + 16);
  if (v15)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1A22E6F38();
    v16 = 0;
    v17 = 48;
    do
    {
      if (v16 >= *(v14 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      ++v16;
      v18 = *(v14 + v17);
      sub_1A22E6F08();
      sub_1A22E6F48();
      sub_1A22E6F58();
      sub_1A22E6F18();
      v17 += 24;
    }

    while (v15 != v16);

    v19 = v26;
    if (v26 >> 62)
    {
      goto LABEL_20;
    }
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
    if (MEMORY[0x1E69E7CC0] >> 62)
    {
LABEL_20:
      v20 = sub_1A22E6DE8();
      if (v20)
      {
        goto LABEL_9;
      }

LABEL_21:

      return;
    }
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
    goto LABEL_21;
  }

LABEL_9:
  v21 = 0;
  while (1)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x1A58DB0F0](v21, v19);
    }

    else
    {
      if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v22 = *(v19 + 8 * v21 + 32);
    }

    v23 = v22;
    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    [v22 frame];
    v27.x = v9;
    v27.y = v11;
    v25 = CGRectContainsPoint(v28, v27);

    if (!v25)
    {
      ++v21;
      if (v24 != v20)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_1A22AB454(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = sub_1A22AB5D4(a1, a2, a3, a4, a5);

  return v6;
}

void *sub_1A22AB494(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v11 = a4;
    sub_1A22AB54C(v10, a2, a3, v11, a5, &v12);

    if (!v5)
    {
      a3 = v12;
    }

    return a3;
  }

  return result;
}

void sub_1A22AB54C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = a4;
  v13 = sub_1A22AB454(a1, a2, a3, v12, a5);

  if (!v6)
  {
    *a6 = v13;
  }
}

uint64_t sub_1A22AB5D4(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v25[3] = a5;
  v23 = 0;
  v22 = result;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v17 = (*(a3 + 48) + 16 * v16);
    v18 = v17[1];
    v25[0] = *v17;
    v25[1] = v18;

    v19 = sub_1A22A9098(v25, a4);

    if (v5)
    {
      return result;
    }

    if (v19)
    {
      *(v22 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_1A2124D10(v22, a2, v23, a3);
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_16;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A22AB738(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = a3;
  v33[2] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;
  v8 = a2;
  v31 = v8;
  if (v5 > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v27 = v6;
    v28 = &v26;
    MEMORY[0x1EEE9AC00](v8);
    v9 = &v26 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v7);
    v29 = 0;
    v7 = 0;
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v6 = v14 | (v7 << 6);
      v17 = (*(a1 + 48) + 16 * v6);
      v18 = v17[1];
      v33[0] = *v17;
      v33[1] = v18;

      v19 = sub_1A22A9098(v33, v31);
      if (v32)
      {

        swift_willThrow();
        goto LABEL_20;
      }

      v20 = v19;

      if (v20)
      {
        *&v9[(v6 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v6;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_17:
          v12 = sub_1A2124D10(v9, v27, v29, a1);

          return v12;
        }
      }
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v13)
      {
        goto LABEL_17;
      }

      v16 = *(a1 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v23 = swift_slowAlloc();
  v24 = v31;
  v25 = v32;
  v12 = sub_1A22AB494(v23, v6, a1, v24, v30);

  MEMORY[0x1A58DCD00](v23, -1, -1);
  v32 = v25;
  if (v25)
  {
LABEL_20:
  }

  else
  {
  }

  return v12;
}

void sub_1A22AB9F8()
{
  *(v0 + OBJC_IVAR___MRUMediaControlsModuleViewController_isExpanded) = 0;
  *(v0 + OBJC_IVAR___MRUMediaControlsModuleViewController_collapseToControlCenter) = 0;
  *(v0 + OBJC_IVAR___MRUMediaControlsModuleViewController_expandedLayout) = 8;
  *(v0 + OBJC_IVAR___MRUMediaControlsModuleViewController_layout) = 1;
  *(v0 + OBJC_IVAR___MRUMediaControlsModuleViewController____lazy_storage___contentView) = 0;
  *(v0 + OBJC_IVAR___MRUMediaControlsModuleViewController_onScreen) = 0;
  v1 = OBJC_IVAR___MRUMediaControlsModuleViewController_visualStylingProvider;
  type metadata accessor for VisualStylingProvider();
  sub_1A22E0878(v6);
  v2 = sub_1A211A6BC();
  *(v0 + v1) = sub_1A22DF9B0(v6, 0, 1, 4, 0, v2);
  *(v0 + OBJC_IVAR___MRUMediaControlsModuleViewController____lazy_storage___dismissGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR___MRUMediaControlsModuleViewController_shareAudioViewController) = 0;
  v3 = (v0 + OBJC_IVAR___MRUMediaControlsModuleViewController_dismissModuleBlock);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR___MRUMediaControlsModuleViewController_expandModuleBlock);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR___MRUMediaControlsModuleViewController_invalidateContainerViewsBlock);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR___MRUMediaControlsModuleViewController_gridSizeClass) = 4;
  *(v0 + OBJC_IVAR___MRUMediaControlsModuleViewController_compactContinuousCornerRadius) = 0;
  *(v0 + OBJC_IVAR___MRUMediaControlsModuleViewController_contentMetrics) = 0;
  *(v0 + OBJC_IVAR___MRUMediaControlsModuleViewController_contentRenderingMode) = 0;
  *(v0 + OBJC_IVAR___MRUMediaControlsModuleViewController_isResizing) = 0;
  *(v0 + OBJC_IVAR___MRUMediaControlsModuleViewController_providesOwnPlatter) = 1;
  *(v0 + OBJC_IVAR___MRUMediaControlsModuleViewController_shouldPerformHoverInteraction) = 0;
  *(v0 + OBJC_IVAR___MRUMediaControlsModuleViewController_implicitlyExpandedGridSizeClasses) = 1536;
  sub_1A22E7028();
  __break(1u);
}

void sub_1A22ABBA4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = MEMORY[0x1E69E7D40];
    v2 = Strong;
    v3 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x158))();
    v4 = *&v3[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView];

    type metadata accessor for MediaControlsModuleSessionView();
    v5 = sub_1A211A6BC();
    (*((*v1 & *v4) + 0xE0))(1, v5 & 1);

    v6 = *(**&v2[OBJC_IVAR___MRUMediaControlsModuleViewController_presenter] + 272);

    v6(v7);
  }
}

void sub_1A22ABCF8()
{
  v1 = *(v0 + 16);
  v2 = sub_1A22A8B1C();
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x158))(v2);
  [v3 layoutIfNeeded];
}

uint64_t sub_1A22ABDA8()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x158))();
  v4 = *&v3[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView];

  LOBYTE(v3) = (*((*v2 & *v4) + 0xC8))();
  result = sub_1A210E438(v3, 2);
  if (result)
  {
    result = (*((*v2 & *v1) + 0xF8))();
    if ((result & 1) == 0)
    {
      return (*(**(v1 + OBJC_IVAR___MRUMediaControlsModuleViewController_presenter) + 264))();
    }
  }

  return result;
}

void sub_1A22ABEE0(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x158);
  v8 = v7();
  v9 = *&v8[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView];

  LOBYTE(v8) = (*((*v6 & *v9) + 0xC8))();
  if (sub_1A210E438(v8, 1))
  {
    v10 = v7();
    v11 = *&v10[OBJC_IVAR____TtC13MediaControls23MediaControlsModuleView_sessionsView];

    (*((*v6 & *v11) + 0xE0))(0, 1);
    if (a1)
    {
      a1();
    }
  }

  else
  {
    sub_1A2115288(0, &qword_1ED94E980);
    sub_1A229C070(v15);
    v12 = swift_allocObject();
    *(v12 + 16) = v3;
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    v14 = v3;
    sub_1A2111D40(a1);
    sub_1A21179EC(v15, sub_1A22ACD24, v12, sub_1A22ACD2C, v13);

    sub_1A2116928(v15);
  }
}

uint64_t sub_1A22AC128()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x140))();
  if (v3 == 6)
  {
    v4 = 4;
  }

  else if (v3 == 7)
  {
    v4 = 5;
  }

  else
  {
    v5 = (*((*v2 & *v0) + 0x158))();
    v6 = (*((*v2 & *v5) + 0x190))();

    if (v6)
    {
      v4 = 4;
    }

    else
    {
      v4 = 5;
    }
  }

  (*((*v2 & *v1) + 0x130))(v4);
  sub_1A2115288(0, &qword_1ED94E980);
  sub_1A229C070(v10);
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v8 = v1;
  sub_1A21179EC(v10, sub_1A22ACD78, v7, 0, 0);

  return sub_1A2116928(v10);
}

void sub_1A22AC2FC()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x140))();
  if (v3 == 4)
  {
    v4 = 6;
  }

  else if (v3 == 5)
  {
    v4 = 7;
  }

  else
  {
    v5 = (*((*v2 & *v0) + 0x158))();
    v6 = (*((*v2 & *v5) + 0x190))();

    if (v6)
    {
      v4 = 6;
    }

    else
    {
      v4 = 7;
    }
  }

  v7 = (*((*v2 & *v1) + 0x130))(v4);
  v8 = *((*v2 & *v1) + 0xF8);
  v9 = v8(v7);
  v10 = (*((*v2 & *v1) + 0x118))((v9 & 1) == 0);
  if (v8(v10))
  {
    sub_1A2115288(0, &qword_1ED94E980);
    sub_1A229C070(v15);
    v11 = swift_allocObject();
    *(v11 + 16) = v1;
    v12 = v1;
    sub_1A21179EC(v15, sub_1A22ACC44, v11, 0, 0);

    sub_1A2116928(v15);
  }

  else
  {
    v13 = (*((*v2 & *v1) + 0x1D8))();
    if (v13)
    {
      v14 = v13;
      v13();
      sub_1A210F5C0(v14);
    }
  }

  UIAccessibilityPostNotification(*MEMORY[0x1E69DD930], 0);
}

void *sub_1A22AC5CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for MediaControlsModuleSessionView();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = (*(**(v2 + OBJC_IVAR___MRUMediaControlsModuleViewController_presenter) + 192))();
  if (*(v7 + 16) && (v8 = sub_1A210FF30(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {
    v10 = 0;
  }

  v11 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v6) + 0xF0))(v10);
  v12 = *((*v11 & *v6) + 0xD8);
  v13 = swift_unknownObjectRetain();
  v14 = v12(v13, &off_1F1442338);
  v15 = (*((*v11 & *v3) + 0x238))(v14);
  v16 = (*((*v11 & *v6) + 0x168))(v15);
  v17 = (*((*v11 & *v3) + 0x140))(v16);
  (*((*v11 & *v6) + 0x120))(v17);
  v18 = *((*v11 & *v6) + 0x150);

  v18(v19);
  return v6;
}

uint64_t sub_1A22AC86C(char a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x158))();
  (*((*v4 & *v5) + 0x1C8))();

  sub_1A22A9680();
  if (sub_1A210E438(a1, 1) && ((*((*v4 & *v2) + 0xF8))() & 1) == 0)
  {
    v6 = (*((*v4 & *v2) + 0x1D8))();
    if (v6)
    {
      v7 = v6;
      v6();
      sub_1A210F5C0(v7);
    }
  }

  sub_1A2215570();
  result = sub_1A22E6568();
  if ((result & 1) == 0)
  {
    return (*(**(v2 + OBJC_IVAR___MRUMediaControlsModuleViewController_presenter) + 264))();
  }

  return result;
}

uint64_t sub_1A22ACAF4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CCUIGridSizeClassMask(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_33Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

unint64_t sub_1A22ACBF0()
{
  result = qword_1EB0899B8;
  if (!qword_1EB0899B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0899B8);
  }

  return result;
}

void sub_1A22ACC48()
{
  v1 = *(v0 + 24);
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0x158))();
  (*((*v2 & *v3) + 0xE0))([v1 view]);
}

uint64_t sub_1A22ACD2C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1A22ACDB8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A22E5C88();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1A22ACE20(uint64_t a1)
{
  v3 = sub_1A22E5C88();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1A22ACEAC(uint64_t a1)
{
  result = type metadata accessor for SessionArtworkPresentationModel();
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_1A22ACF48(char a1)
{
  result = type metadata accessor for SessionArtworkPresentationModel();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_1A22ACFC0()
{
  v1 = 7104878;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB089440);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v13 - v3;
  v14 = 40;
  v15 = 0xE100000000000000;
  v5 = sub_1A22E59B8();
  MEMORY[0x1A58DA8D0](v5);

  MEMORY[0x1A58DA8D0](58, 0xE100000000000000);
  v13[1] = *(v0 + *(type metadata accessor for SessionArtworkPresentationModel() + 20));
  v6 = sub_1A22E71D8();
  MEMORY[0x1A58DA8D0](v6);

  MEMORY[0x1A58DA8D0](58, 0xE100000000000000);
  sub_1A22E5B48();
  v7 = sub_1A22E5B38();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v4, 1, v7) == 1)
  {
    sub_1A2105394(v4);
LABEL_5:
    v11 = 0xE300000000000000;
    goto LABEL_6;
  }

  v9 = sub_1A22E5AE8();
  (*(v8 + 8))(v4, v7);
  if (!v9)
  {
    goto LABEL_5;
  }

  v1 = sub_1A22E5908();
  v11 = v10;

LABEL_6:
  MEMORY[0x1A58DA8D0](v1, v11);

  MEMORY[0x1A58DA8D0](41, 0xE100000000000000);
  return v14;
}

uint64_t sub_1A22AD1AC(uint64_t a1, uint64_t a2)
{
  if ((sub_1A22E5B98() & 1) != 0 && (v4 = type metadata accessor for SessionArtworkPresentationModel(), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))))
  {
    v5 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1A22AD214()
{
  sub_1A22E5C88();
  sub_1A22AD974(&qword_1EB0899C0, MEMORY[0x1E69AE600]);
  sub_1A22E6548();
  v1 = type metadata accessor for SessionArtworkPresentationModel();
  MEMORY[0x1A58DB4F0](*(v0 + *(v1 + 20)));
  return sub_1A22E72C8();
}

uint64_t sub_1A22AD2B8()
{
  sub_1A22E72A8();
  sub_1A22E5C88();
  sub_1A22AD974(&qword_1EB0899C0, MEMORY[0x1E69AE600]);
  sub_1A22E6548();
  v1 = type metadata accessor for SessionArtworkPresentationModel();
  MEMORY[0x1A58DB4F0](*(v0 + *(v1 + 20)));
  sub_1A22E72C8();
  return sub_1A22E72F8();
}

uint64_t sub_1A22AD378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_1A22E5C88();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for SessionArtworkPresentationModel();
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t sub_1A22AD400(uint64_t a1)
{
  sub_1A22E72A8();
  sub_1A22E5C88();
  sub_1A22AD974(&qword_1EB0899C0, MEMORY[0x1E69AE600]);
  sub_1A22E6548();
  MEMORY[0x1A58DB4F0](*(v1 + *(a1 + 20)));
  sub_1A22E72C8();
  return sub_1A22E72F8();
}

uint64_t sub_1A22AD4B8(uint64_t a1, uint64_t a2)
{
  sub_1A22E5C88();
  sub_1A22AD974(&qword_1EB0899C0, MEMORY[0x1E69AE600]);
  sub_1A22E6548();
  MEMORY[0x1A58DB4F0](*(v2 + *(a2 + 20)));
  return sub_1A22E72C8();
}

uint64_t sub_1A22AD55C(uint64_t a1, uint64_t a2)
{
  sub_1A22E72A8();
  sub_1A22E5C88();
  sub_1A22AD974(&qword_1EB0899C0, MEMORY[0x1E69AE600]);
  sub_1A22E6548();
  MEMORY[0x1A58DB4F0](*(v2 + *(a2 + 20)));
  sub_1A22E72C8();
  return sub_1A22E72F8();
}

uint64_t sub_1A22AD614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1A22E5B98() & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)))
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1A22AD680(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB089440);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for SessionArtworkPresentationModel();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 24))(a1, a2);
  sub_1A22E5B48();
  v10 = sub_1A22E5B38();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v6, 1, v10) == 1)
  {
    sub_1A2129CA8(v9);
    sub_1A2105394(v6);
    return 0;
  }

  else
  {
    v13 = sub_1A22E5AE8();
    sub_1A2129CA8(v9);
    (*(v11 + 8))(v6, v10);
    return v13;
  }
}

uint64_t sub_1A22AD828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionArtworkPresentationModel();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[0] = (*(a2 + 16))(a1, a2);
  v10[1] = v7;
  MEMORY[0x1A58DA8D0](2108704, 0xE300000000000000);
  (*(a2 + 24))(a1, a2);
  v8 = sub_1A22ACFC0();
  MEMORY[0x1A58DA8D0](v8);

  sub_1A2129CA8(v6);
  return v10[0];
}

uint64_t sub_1A22AD974(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A22AD9E4()
{
  result = sub_1A22E5C88();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_1A22ADB30()
{
  v0 = *MEMORY[0x1E69DDCF8];
  sub_1A211476C();
  v2 = v1;
  v3 = sub_1A21146A4(v1, *MEMORY[0x1E69DB970]);

  return v3;
}

void sub_1A22ADC34(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x1E69DDCF8];
  sub_1A211476C();
  v6 = v5;
  v7 = sub_1A21146A4(v5, *MEMORY[0x1E69DB970]);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = *MEMORY[0x1E69DDD10];
  sub_1A211476C();
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v11;
  *(a2 + 20) = BYTE4(v11) & 1;
  *(a2 + 24) = v13;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;
  *(a2 + 48) = v18;
  *(a2 + 52) = v15 & 1;
  *(a2 + 56) = v19;
  *(a2 + 64) = a1;
}

void sub_1A22ADD30(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69DDCF8];
  sub_1A211476C();
  v4 = v3;
  v5 = sub_1A21146A4(v3, *MEMORY[0x1E69DB970]);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = *MEMORY[0x1E69DDD10];
  sub_1A211476C();
  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9;
  *(a1 + 20) = BYTE4(v9) & 1;
  *(a1 + 24) = v11;
  *(a1 + 32) = v14;
  *(a1 + 40) = v15;
  *(a1 + 48) = v16;
  *(a1 + 52) = v13 & 1;
  *(a1 + 56) = v17;
  *(a1 + 64) = 0;
}

__n128 sub_1A22ADE20@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_style);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  sub_1A22ADEA4(&v9, &v8);
  v6 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v6;
  *(a1 + 64) = v13;
  result = v10;
  *a1 = v9;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A22ADEDC(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_style;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 32);
  v6 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v6;
  *(v3 + 64) = *(a1 + 64);
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v7;
  sub_1A22ADEA4(a1, &v10);

  sub_1A22AE9F0(v8);
  return sub_1A22AEC0C(a1);
}

void (*sub_1A22ADFAC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A22AE010;
}

void sub_1A22AE010(uint64_t a1, char a2)
{
  v3 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1A22AE9F0(v3);
  }
}

uint64_t sub_1A22AE044()
{
  v1 = OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_state;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A22AE088(char a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_state;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (!sub_1A2229988(a1, v4))
  {
    sub_1A22AEE6C();
  }
}

void (*sub_1A22AE0EC(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_state;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1A22AE180;
}

void sub_1A22AE180(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v4 = v1[3];
  v3 = v1[4];
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (!sub_1A2229988(v2, v5))
  {
    sub_1A22AEE6C();
  }

  free(v1);
}

id sub_1A22AE210(Class *a1)
{
  v1 = [objc_allocWithZone(*a1) init];
  v2 = sub_1A2114DFC();

  return v2;
}

id sub_1A22AE264()
{
  type metadata accessor for RoutePickerItemAccessoryView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = sub_1A2114DFC();

  return v1;
}

id sub_1A22AE2C0()
{
  v1 = OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView____lazy_storage___stackView);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0898A0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1A2308C50;
    v5 = *(v0 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_titleLabel);
    v6 = *(v0 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_subtitleLabel);
    *(v4 + 32) = v5;
    *(v4 + 40) = v6;
    v7 = objc_allocWithZone(MEMORY[0x1E69DCF90]);
    sub_1A2115288(0, &qword_1ED94E980);
    v8 = v5;
    v9 = v6;
    v10 = sub_1A22E6738();

    v11 = [v7 initWithArrangedSubviews_];

    v12 = v0;
    v13 = sub_1A2114DFC();

    v14 = *(v12 + v1);
    *(v12 + v1) = v13;
    v3 = v13;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

void (*sub_1A22AE408(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1A22AE2C0();
  return sub_1A22AE450;
}

void sub_1A22AE450(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView____lazy_storage___stackView);
  *(v1 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView____lazy_storage___stackView) = v2;
}

void *sub_1A22AE468(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_style];
  v11 = *MEMORY[0x1E69DDCF8];
  sub_1A211476C();
  v13 = v12;
  v14 = sub_1A21146A4(v12, *MEMORY[0x1E69DB970]);
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v58 = BYTE4(v18) & 1;
  v21 = *MEMORY[0x1E69DDD10];
  sub_1A211476C();
  v57 = v22 & 1;
  *v10 = v14;
  *(v10 + 1) = v16;
  *(v10 + 4) = v18;
  v10[20] = BYTE4(v18) & 1;
  *(v10 + 3) = v20;
  *(v10 + 4) = v23;
  *(v10 + 5) = v24;
  *(v10 + 12) = v25;
  v10[52] = v22 & 1;
  *(v10 + 7) = v26;
  v10[64] = 0;
  v5[OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_state] = 0;
  v27 = OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_imageView;
  v28 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v29 = sub_1A2114DFC();

  *&v5[v27] = v29;
  v30 = OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_titleLabel;
  v31 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v32 = sub_1A2114DFC();

  *&v5[v30] = v32;
  v33 = OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_subtitleLabel;
  v34 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v35 = sub_1A2114DFC();

  *&v5[v33] = v35;
  v36 = OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_accessoryView;
  type metadata accessor for RoutePickerItemAccessoryView();
  v37 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v38 = sub_1A2114DFC();

  *&v5[v36] = v38;
  *&v5[OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView____lazy_storage___stackView] = 0;
  *&v5[OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_defaultTitleConstraints] = 0;
  *&v5[OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_centerAlignedTitleConstraints] = 0;
  v56.receiver = v5;
  v56.super_class = type metadata accessor for RoutePickerItemContentView();
  v39 = objc_msgSendSuper2(&v56, sel_initWithFrame_, a1, a2, a3, a4);
  [v39 setUserInteractionEnabled_];
  v40 = OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_imageView;
  [*(v39 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_imageView) setContentMode_];
  v41 = *(v39 + v40);
  v42 = objc_opt_self();
  v43 = v41;
  v44 = [v42 configurationWithPointSize_];
  [v43 setSymbolConfiguration_];

  v45 = [v39 addSubview_];
  v46 = *((*MEMORY[0x1E69E7D40] & *v39) + 0xC8);
  v47 = (v46)(v45);
  [v47 setAxis_];

  v48 = v46();
  [v48 setDistribution_];

  v49 = v46();
  [v49 setSpacing_];

  v50 = v46();
  [v39 addSubview_];

  [v39 addSubview_];
  sub_1A22AE930();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088D20);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1A2308E80;
  v52 = sub_1A22E6378();
  v53 = MEMORY[0x1E69DC2B0];
  *(v51 + 32) = v52;
  *(v51 + 40) = v53;
  MEMORY[0x1A58DAE60](v51, sel_updateContentSizeCategory);
  swift_unknownObjectRelease();

  sub_1A2115288(0, &qword_1ED94EA40);
  sub_1A22E6B58();
  MEMORY[0x1A58DAE60]();
  swift_unknownObjectRelease();

  sub_1A22AEC3C();
  sub_1A22AEE6C();
  sub_1A22AE9F0(v54);

  return v39;
}

uint64_t sub_1A22AE930()
{
  v1 = sub_1A211A6BC();
  sub_1A211A6C4(v1 & 1, sub_1A22AF544);

  *(v0 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_defaultTitleConstraints) = sub_1A211A6C4(0, sub_1A22AF9D4);

  *(v0 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_centerAlignedTitleConstraints) = sub_1A211A6C4(0, sub_1A22AFC20);
}

void sub_1A22AE9F0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_defaultTitleConstraints);
  v3 = MEMORY[0x1E69E7D40];
  if (v2)
  {
    v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x98);

    v4(v11, v5);
    sub_1A22AEC0C(v11);
    (*(*v2 + 384))((v12 & 1) == 0);
  }

  v6 = *(v1 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_centerAlignedTitleConstraints);
  if (v6)
  {
    v7 = *((*v3 & *v1) + 0x98);

    v7(v13, v8);
    sub_1A22AEC0C(v13);
    (*(*v6 + 384))(v14);
  }

  v9 = (*((*v3 & *v1) + 0xC8))(a1);
  (*((*v3 & *v1) + 0x98))(v15);
  sub_1A22AEC0C(v15);
  if (v16)
  {
    v10 = 3;
  }

  else
  {
    v10 = 1;
  }

  [v9 setAlignment_];
}

void sub_1A22AEC3C()
{
  v1 = *(v0 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_titleLabel);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x98);
  v2(v19);
  v3 = v19[1];
  v4 = v20;
  v5 = v21;
  v6 = v22;
  v7 = v19[0];

  sub_1A22AEC0C(v19);
  v8 = [v0 traitCollection];
  v9 = sub_1A21275D0();
  LOBYTE(v23[0]) = v5;
  v10 = sub_1A21275D8(v8, v7, v3, v4 | (v5 << 32), v6, v9);

  [v1 setFont_];
  v11 = *(v0 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_subtitleLabel);
  v2(v23);
  v12 = v23[5];
  v13 = v24;
  LOBYTE(v10) = v25;
  v14 = v26;
  v15 = v23[4];

  sub_1A22AEC0C(v23);
  v16 = [v0 traitCollection];
  v17 = sub_1A21275D0();
  v18 = sub_1A21275D8(v16, v15, v12, v13 | (v10 << 32), v14, v17);

  [v11 setFont_];
}

void sub_1A22AEE6C()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xB0);
  LODWORD(v1) = v2 == 2;
  LODWORD(v2) = v3() == 0;
  v4 = objc_opt_self();
  v5 = &selRef_systemBlackColor;
  if (v2 == v1)
  {
    v5 = &selRef_systemWhiteColor;
  }

  v6 = [v4 *v5];
  v7 = *(v0 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_imageView);
  v8 = v6;
  [v7 setTintColor_];
  [*(v0 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_titleLabel) setTextColor_];
  [*(v0 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_subtitleLabel) setTextColor_];
  [*(v0 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_accessoryView) setTintColor_];

  v9 = [v0 layer];
  v10 = [v0 traitCollection];
  v3();
  sub_1A226FA58();
  v11 = sub_1A22E6568();
  v12 = sub_1A228BAA0(v10, (v11 & 1) == 0);

  if (v12)
  {
    sub_1A224DFDC(v12);

    v12 = sub_1A22E6738();
  }

  [v9 setFilters_];
}

id sub_1A22AF110()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoutePickerItemContentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A22AF230()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_style;
  v3 = *MEMORY[0x1E69DDCF8];
  sub_1A211476C();
  v5 = v4;
  v6 = sub_1A21146A4(v4, *MEMORY[0x1E69DB970]);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = *MEMORY[0x1E69DDD10];
  sub_1A211476C();
  *v2 = v6;
  *(v2 + 8) = v8;
  *(v2 + 16) = v10;
  *(v2 + 20) = BYTE4(v10) & 1;
  *(v2 + 24) = v12;
  *(v2 + 32) = v15;
  *(v2 + 40) = v16;
  *(v2 + 48) = v17;
  *(v2 + 52) = v14 & 1;
  *(v2 + 56) = v18;
  *(v2 + 64) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_state) = 0;
  v19 = OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_imageView;
  v20 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v21 = sub_1A2114DFC();

  *(v1 + v19) = v21;
  v22 = OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_titleLabel;
  v23 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v24 = sub_1A2114DFC();

  *(v1 + v22) = v24;
  v25 = OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_subtitleLabel;
  v26 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v27 = sub_1A2114DFC();

  *(v1 + v25) = v27;
  v28 = OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_accessoryView;
  type metadata accessor for RoutePickerItemAccessoryView();
  v29 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v30 = sub_1A2114DFC();

  *(v1 + v28) = v30;
  *(v1 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView____lazy_storage___stackView) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_defaultTitleConstraints) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls26RoutePickerItemContentView_centerAlignedTitleConstraints) = 0;
  sub_1A22E7028();
  __break(1u);
}