uint64_t sub_214C970A4()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_viewIsVisible);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

void sub_214C9710C(char a1)
{
  v2 = (v1 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_viewIsVisible);
  swift_beginAccess();
  *v2 = a1;
  swift_endAccess();
  sub_214C95F48();
}

void (*sub_214C97184(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_214C971F4;
}

void sub_214C971F4(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_214C95F48();
  }
}

double sub_214C97244()
{
  v5 = (v0 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_hostingScene);
  swift_beginAccess();
  v6 = *v5;
  MEMORY[0x277D82BE0](*v5);
  swift_endAccess();
  if (v6)
  {
    v3 = [objc_opt_self() defaultCenter];
    (MEMORY[0x277D82BE0])();
    v2 = *MEMORY[0x277D76E48];
    MEMORY[0x277D82BE0](*MEMORY[0x277D76E48]);
    [v3 addObserver:v4 selector:sel_hostingSceneDidBecomeActive_ name:v2 object:{v6, MEMORY[0x277D82BE0](v6).n128_f64[0]}];
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v2);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v3);
    *&result = MEMORY[0x277D82BD8](v6).n128_u64[0];
  }

  return result;
}

uint64_t sub_214C973B4()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_hostingScene);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214C97424(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_hostingScene);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  sub_214C97244();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

id sub_214C974C0()
{
  v1 = [*(v0 + 16) highlightedMessagesViewHostingScene];

  return v1;
}

uint64_t type metadata accessor for PriorityMessageListHeaderFooterIdentifier()
{
  v1 = qword_27CA38510;
  if (!qword_27CA38510)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void (*sub_214C9756C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_214C975DC;
}

void sub_214C975DC(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_214C97244();
  }
}

uint64_t sub_214C9762C@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_logger;
  v2 = sub_214CCDA74();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

double sub_214C976A0@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_214C97A94();
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214C9770C(uint64_t *a1, void *a2)
{
  sub_214A75F48(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_214C97AFC(v5);
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

uint64_t sub_214C97784()
{
  v4 = (v0 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_viewModel);
  swift_beginAccess();
  v6 = *v4;

  swift_endAccess();
  sub_214C97914(v6);

  v7 = (v5 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_viewModel);
  swift_beginAccess();
  if (*v7)
  {

    swift_endAccess();
    v2 = sub_214C338C8();

    v3 = v2;
  }

  else
  {
    swift_endAccess();
    v3 = 0;
  }

  if (v3)
  {
    v8 = v3;
  }

  else
  {
    type metadata accessor for MUIHighlightedMessage();
    v8 = sub_214CD03C4();
  }

  sub_214C97A54(v8);
}

uint64_t sub_214C97914(uint64_t a1)
{

  result = a1;
  if (a1)
  {
    v3 = swift_allocObject();
    (MEMORY[0x277D82BE0])();
    swift_unknownObjectWeakInit();
    (MEMORY[0x277D82BD8])();

    v2 = swift_allocObject();
    *(v2 + 16) = v3;
    *(v2 + 24) = a1;
    sub_214C9D238();
  }

  return result;
}

uint64_t sub_214C97A94()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_viewModel);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214C97AFC(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_viewModel);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
  sub_214C97784();
}

uint64_t (*sub_214C97B80(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_214C97BF0;
}

uint64_t sub_214C97BF0(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  return sub_214C97784();
}

uint64_t sub_214C97C40()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_messageByIdentifier);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214C97CA8(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_messageByIdentifier);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_214C97D98()
{
  sub_214C97C40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA38440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37710);
  sub_214C9F7F4();
  v1 = sub_214CCF6F4();
  sub_214A62278();
  return v1;
}

double sub_214C97E68@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v7 = *a1;
  v3 = a1[1];
  MEMORY[0x277D82BE0](*a1);
  v4 = [v3 messageListItem];
  MEMORY[0x277D82BD8](v3);
  swift_getObjectType();
  v6 = [v4 itemID];
  swift_unknownObjectRelease();
  *a2 = v6;
  *&result = MEMORY[0x277D82BD8](v7).n128_u64[0];
  return result;
}

uint64_t sub_214C97F4C()
{
  ObjectType = swift_getObjectType();
  v8 = v0;
  MEMORY[0x277D82BE0](v0);
  v7.receiver = v0;
  v7.super_class = type metadata accessor for PriorityMessageListViewController();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  MEMORY[0x277D82BD8](v0);
  sub_214C9812C();
  sub_214C988F0();
  sub_214C993C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35530);
  sub_214CD03C4();
  v3 = v1;
  *v1 = sub_214CCDCC4();
  v3[1] = MEMORY[0x277D74BF0];
  sub_214A63280();
  v4 = swift_allocObject();
  (MEMORY[0x277D82BE0])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x277D82BD8])();

  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = ObjectType;

  sub_214CCFC04();

  return swift_unknownObjectRelease();
}

double sub_214C9812C()
{
  sub_214A69E94();
  v53 = [v52 view];
  *&v0 = (MEMORY[0x277D82BD8])().n128_u64[0];
  if (v53)
  {
    v51 = v53;
  }

  else
  {
    LOBYTE(v9) = 2;
    v15 = 253;
    LODWORD(v21) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  [v51 bounds];
  v46 = v1;
  v47 = v2;
  v48 = v3;
  v49 = v4;
  MEMORY[0x277D82BD8](v51);
  v5 = sub_214C9C2B4();
  v6 = sub_214A69EF8(v5, v46, v47, v48, v49);
  sub_214C953FC(v6);
  v50 = sub_214C95294();
  if (v50)
  {
    v45 = v50;
  }

  else
  {
    LOBYTE(v10) = 2;
    v16 = 254;
    LODWORD(v22) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  type metadata accessor for AutoresizingMask();
  sub_214CD03C4();
  *v7 = 2;
  v7[1] = 16;
  sub_214A63280();
  sub_214B01B00();
  sub_214CD0084();
  [v45 setAutoresizingMask_];
  MEMORY[0x277D82BD8](v45);
  v44 = sub_214C95294();
  if (v44)
  {
    v43 = v44;
  }

  else
  {
    LOBYTE(v10) = 2;
    v16 = 255;
    LODWORD(v22) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  [v43 setScrollEnabled_];
  MEMORY[0x277D82BD8](v43);
  v42 = sub_214C95294();
  if (v42)
  {
    v41 = v42;
  }

  else
  {
    LOBYTE(v11) = 2;
    v17 = 256;
    LODWORD(v23) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  [v41 _setShouldDeriveVisibleBoundsFromContainingScrollView_];
  MEMORY[0x277D82BD8](v41);
  v40 = sub_214C95294();
  if (v40)
  {
    v39 = v40;
  }

  else
  {
    LOBYTE(v12) = 2;
    v18 = 257;
    LODWORD(v24) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  [v39 setDelegate_];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v39);
  v38 = sub_214C95294();
  if (v38)
  {
    v37 = v38;
  }

  else
  {
    LOBYTE(v12) = 2;
    v18 = 258;
    LODWORD(v24) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  [v37 setSelectionFollowsFocus_];
  MEMORY[0x277D82BD8](v37);
  v36 = sub_214C95294();
  if (v36)
  {
    v35 = v36;
  }

  else
  {
    LOBYTE(v13) = 2;
    v19 = 259;
    LODWORD(v25) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  [v35 setClipsToBounds_];
  MEMORY[0x277D82BD8](v35);
  v34 = sub_214C95294();
  if (v34)
  {
    v33 = v34;
  }

  else
  {
    LOBYTE(v14) = 2;
    v20 = 260;
    LODWORD(v26) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  v30 = *MEMORY[0x277D258E0];
  MEMORY[0x277D82BE0](*MEMORY[0x277D258E0]);
  sub_214CCF564();
  v31 = sub_214CCF544();

  [v33 setAccessibilityIdentifier_];
  MEMORY[0x277D82BD8](v31);
  MEMORY[0x277D82BD8](v33);
  v32 = [v52 view];
  (MEMORY[0x277D82BD8])();
  if (v32)
  {
    v29 = v32;
  }

  else
  {
    LOBYTE(v14) = 2;
    v20 = 261;
    LODWORD(v26) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  v28 = sub_214C95294();
  if (v28)
  {
    v27 = v28;
  }

  else
  {
    LOBYTE(v14) = 2;
    v20 = 261;
    LODWORD(v26) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  [v29 addSubview_];
  MEMORY[0x277D82BD8](v27);
  *&result = MEMORY[0x277D82BD8](v29).n128_u64[0];
  return result;
}

uint64_t sub_214C988F0()
{
  v71 = 0;
  v70 = sub_214C9BB5C;
  v31 = sub_214C9F960;
  v32 = sub_214C9FAEC;
  v33 = "Fatal error";
  v34 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v35 = "MailUI/PriorityMessageListViewController.swift";
  ObjectType = swift_getObjectType();
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38460);
  v39 = *(v37 - 8);
  v38 = v37 - 8;
  v40 = v39;
  v41 = *(v39 + 64);
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37);
  v43 = &v15 - v42;
  v44 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v15 - v42);
  v76 = &v15 - v44;
  v84 = &v15 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38468);
  v47 = *(v45 - 8);
  v46 = v45 - 8;
  v48 = v47;
  v49 = *(v47 + 64);
  v50 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45);
  v51 = &v15 - v50;
  v52 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v15 - v50);
  v75 = &v15 - v52;
  v83 = &v15 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38470);
  v55 = *(v53 - 8);
  v54 = v53 - 8;
  v56 = v55;
  v57 = *(v55 + 64);
  v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v53);
  v59 = &v15 - v58;
  v60 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v15 - v58);
  v74 = &v15 - v60;
  v82 = &v15 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38478);
  v63 = *(v61 - 8);
  v62 = v61 - 8;
  v64 = v63;
  v65 = *(v63 + 64);
  v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v61);
  v67 = &v15 - v66;
  v68 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v15 - v66);
  v69 = &v15 - v68;
  v81 = &v15 - v68;
  v80 = v0;
  v5 = sub_214C94C18();
  v73 = *v5;
  v72 = v5[1];

  sub_214C9F8FC();
  sub_214CCFBD4();
  sub_214C9BB88();
  sub_214C9BC58();
  sub_214C9BD28();
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38488);
  v79 = sub_214C95294();
  if (v79)
  {
    v30 = v79;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v28 = v30;
  v21 = v56;
  (*(v55 + 16))(v59, v74, v53);
  v22 = v48;
  (*(v47 + 16))(v51, v75, v45);
  v23 = v40;
  (*(v39 + 16))(v43, v76, v37);
  v24 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v25 = (v24 + v57 + *(v22 + 80)) & ~*(v22 + 80);
  v26 = (v25 + v49 + *(v23 + 80)) & ~*(v23 + 80);
  v27 = swift_allocObject();
  (*(v55 + 32))(v27 + v24, v59, v53);
  (*(v47 + 32))(v27 + v25, v51, v45);
  (*(v39 + 32))(v27 + v26, v43, v37);
  v6 = sub_214CCDE94();
  sub_214C95570(v6);
  v29 = sub_214C95500();
  if (v29)
  {
    v20 = v29;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v19 = v20;
  v7 = MEMORY[0x277D82BE0](v77);
  v15 = v64;
  (*(v63 + 16))(v67, v69, v61, v7);
  v16 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v17 = (v16 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = swift_allocObject();
  v9 = v16;
  v10 = v67;
  v11 = v63;
  v12 = v61;
  v18 = v8;
  *(v8 + 16) = v77;
  (*(v11 + 32))(v8 + v9, v10, v12);
  *(v18 + v17) = ObjectType;
  sub_214CCDEA4();
  v13 = MEMORY[0x277D82BD8](v19);
  (*(v39 + 8))(v76, v37, v13);
  (*(v47 + 8))(v75, v45);
  (*(v55 + 8))(v74, v53);
  return (*(v63 + 8))(v69, v61);
}

uint64_t sub_214C993C8()
{
  v6 = "Fatal error";
  v7 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v8 = "MailUI/PriorityMessageListViewController.swift";
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38490);
  v9 = *(v18 - 8);
  v10 = v18 - 8;
  v12 = *(v9 + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v13 = v3 - v11;
  v14 = v11;
  MEMORY[0x28223BE20](v3 - v11);
  v15 = v3 - v14;
  v22 = v3 - v14;
  v21 = v0;
  v17 = sub_214C94118();
  v20 = v17;
  v16 = sub_214C9FBBC();
  sub_214C95380();
  sub_214CCDE34();
  sub_214CCDDE4();
  v19 = sub_214C95500();
  if (v19)
  {
    v5 = v19;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v3[0] = v5;
  (*(v9 + 16))(v13, v15, v18);
  sub_214CCDEC4();
  v4 = *(v9 + 8);
  v3[1] = v9 + 8;
  v4(v13, v18);
  v1 = MEMORY[0x277D82BD8](v3[0]);
  (v4)(v15, v18, v1);
}

double sub_214C99658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v13 = a1;
  v12 = a2;
  v11 = a3 + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v10 = Strong;
    v5 = [Strong traitCollection];
    MEMORY[0x277D82BD8](Strong);
    v6 = [v5 hasDifferentColorAppearanceComparedToTraitCollection_];
    MEMORY[0x277D82BD8](a2);
    MEMORY[0x277D82BD8](v5);
    if (v6)
    {
      v9 = sub_214C95C54();
      if (v9)
      {
        v4 = v9;
        MEMORY[0x277D82BE0](v9);
        sub_214A671E8(&v9);
        [v4 updateBorderColor];
        MEMORY[0x277D82BD8](v4);
      }

      else
      {
        sub_214A671E8(&v9);
      }

      *&result = MEMORY[0x277D82BD8](Strong).n128_u64[0];
    }

    else
    {
      *&result = MEMORY[0x277D82BD8](Strong).n128_u64[0];
    }
  }

  return result;
}

void sub_214C9987C(char a1)
{
  v5 = a1 & 1;
  v4 = v1;
  MEMORY[0x277D82BE0](v1);
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PriorityMessageListViewController();
  objc_msgSendSuper2(&v3, sel_viewDidAppear_, a1 & 1);
  MEMORY[0x277D82BD8](v1);
  sub_214C9710C(1);
  sub_214C99930();
}

void sub_214C99930()
{
  v2[2] = 0;
  if ([objc_opt_self() shimmerWhenAppearing])
  {
    v2[1] = sub_214C97D98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36FF0);
    sub_214A80F28();
    v1 = sub_214CCFA94();

    if ((v1 & 1) == 0)
    {
      v2[0] = sub_214C95C54();
      if (v2[0])
      {
        v0 = v2[0];
        MEMORY[0x277D82BE0](v2[0]);
        sub_214A671E8(v2);
        [v0 shimmer];
        MEMORY[0x277D82BD8](v0);
      }

      else
      {
        sub_214A671E8(v2);
      }
    }
  }
}

void sub_214C99AB4(char a1)
{
  v5 = a1 & 1;
  v4 = v1;
  MEMORY[0x277D82BE0](v1);
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PriorityMessageListViewController();
  objc_msgSendSuper2(&v3, sel_viewDidDisappear_, a1 & 1);
  MEMORY[0x277D82BD8](v1);
  sub_214C9710C(0);
}

id PriorityMessageListViewController.__deallocating_deinit()
{
  v4 = v0;
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v2);
  v3.receiver = v0;
  v3.super_class = type metadata accessor for PriorityMessageListViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double sub_214C99E10()
{
  if (sub_214C97A94())
  {

    sub_214A75F80();
    sub_214C3B96C();
    v8 = v0;

    v9 = v8;
    v10 = 0;
  }

  else
  {
    sub_214A75F80();
    v9 = 0.0;
    v10 = 1;
  }

  (MEMORY[0x277D82BE0])();
  if (v10)
  {
    v5 = *&v11[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_sectionInset];
    v6 = [v11 view];
    *&v1 = (MEMORY[0x277D82BD8])().n128_u64[0];
    if (v6)
    {
      [v6 safeAreaInsets];
      v4 = v2;
      MEMORY[0x277D82BD8](v6);
      v7 = v5 + v4;
    }

    else
    {
      sub_214CD01F4();
      __break(1u);
    }
  }

  else
  {
    v7 = v9;
  }

  (MEMORY[0x277D82BD8])();
  return v7;
}

double sub_214C9A060()
{
  if (sub_214C97A94())
  {

    sub_214A75F80();
    sub_214C3B96C();
    v8 = v0;

    v9 = v8;
    v10 = 0;
  }

  else
  {
    sub_214A75F80();
    v9 = 0.0;
    v10 = 1;
  }

  (MEMORY[0x277D82BE0])();
  if (v10)
  {
    v5 = *&v11[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_sectionInset];
    v6 = [v11 view];
    *&v1 = (MEMORY[0x277D82BD8])().n128_u64[0];
    if (v6)
    {
      [v6 safeAreaInsets];
      v4 = v2;
      MEMORY[0x277D82BD8](v6);
      v7 = v5 + v4;
    }

    else
    {
      sub_214CD01F4();
      __break(1u);
    }
  }

  else
  {
    v7 = v9;
  }

  (MEMORY[0x277D82BD8])();
  return v7;
}

id PriorityMessageListViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = sub_214CCF544();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v10 initWithNibName_bundle_];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v7);
  return v5;
}

_BYTE *PriorityMessageListViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = 0;
  v14 = a1;
  v15 = a2;
  v13 = a3;
  swift_unknownObjectWeakInit();
  *OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_collectionView = 0;
  *&v16[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_dataSource] = 0;
  *&v16[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController____lazy_storage___headerIdentifier] = 0;
  *&v16[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController____lazy_storage___footerIdentifier] = 0;
  swift_unknownObjectWeakInit();
  v16[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_hasPendingHighlightsShimmer] = 0;
  v16[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_viewIsVisible] = 0;
  *&v16[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_hostingScene] = 0;
  v8 = type metadata accessor for PriorityMessageListViewController();
  static Logger.mailUILogger<A>(for:)();
  *&v16[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_viewModel] = 0;
  v9 = OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_messageByIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA384A8);
  sub_214CD03C4();
  sub_214B894B8();
  type metadata accessor for MUIHighlightedMessage();
  sub_214C9FC38();
  *&v16[v9] = sub_214CCF344();
  v10 = OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_sectionInset;
  type metadata accessor for MUIPriorityMessageListBackgroundDecorationView();
  *&v16[v10] = sub_214C7AC74();

  if (a2)
  {
    v5 = sub_214CCF544();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v12.receiver = v16;
  v12.super_class = v8;
  v4 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v4);
  v16 = v4;
  MEMORY[0x277D82BD8](a3);

  MEMORY[0x277D82BD8](v16);
  return v4;
}

id PriorityMessageListViewController.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

_BYTE *PriorityMessageListViewController.init(coder:)(uint64_t a1)
{
  v10 = 0;
  v9 = a1;
  swift_unknownObjectWeakInit();
  *OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_collectionView = 0;
  *&v10[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_dataSource] = 0;
  *&v10[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController____lazy_storage___headerIdentifier] = 0;
  *&v10[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController____lazy_storage___footerIdentifier] = 0;
  swift_unknownObjectWeakInit();
  v10[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_hasPendingHighlightsShimmer] = 0;
  v10[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_viewIsVisible] = 0;
  *&v10[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_hostingScene] = 0;
  v5 = type metadata accessor for PriorityMessageListViewController();
  static Logger.mailUILogger<A>(for:)();
  *&v10[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_viewModel] = 0;
  v3 = OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_messageByIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA384A8);
  sub_214CD03C4();
  sub_214B894B8();
  type metadata accessor for MUIHighlightedMessage();
  sub_214C9FC38();
  *&v10[v3] = sub_214CCF344();
  v4 = OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_sectionInset;
  type metadata accessor for MUIPriorityMessageListBackgroundDecorationView();
  *&v10[v4] = sub_214C7AC74();
  v8.receiver = v10;
  v8.super_class = v5;
  v7 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  if (v7)
  {
    MEMORY[0x277D82BE0](v7);
    v10 = v7;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v10);
    return v7;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

uint64_t sub_214C9AA64(uint64_t a1, int a2)
{
  v73 = a1;
  v72 = a2;
  v64 = sub_214C9B5C8;
  v65 = sub_214C9B640;
  v66 = sub_214C9FD40;
  v67 = sub_214C9FE84;
  v68 = "Fatal error";
  v69 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v70 = "MailUI/PriorityMessageListViewController.swift";
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v105 = 0;
  v71 = 0;
  v103 = 0;
  v100 = 0;
  v92 = 0;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA384C0);
  v75 = *(v74 - 8);
  v76 = v74 - 8;
  v77 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v73);
  v78 = v25 - v77;
  v79 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v80 = v25 - v79;
  v113 = v25 - v79;
  v112 = v5;
  v111 = v6 & 1;
  v110 = v2;
  v88 = &v109;
  v89 = sub_214C97D2C();
  v81 = 0;
  v83 = sub_214B894B8();
  v82 = type metadata accessor for MUIHighlightedMessage();
  v84 = sub_214C9FC38();
  v85 = sub_214B28CB0();
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA38440);
  sub_214CCF394();
  v89();
  v107 = sub_214C97A94();
  if (v107)
  {
    v60 = &v107;
    v61 = v107;

    sub_214A75F80();
    v62 = sub_214C407A0();

    v63 = v62;
  }

  else
  {
    sub_214A75F80();
    v63 = 0;
  }

  v106 = v63;
  if (v63)
  {
    v108 = v106;
  }

  else
  {
    v108 = sub_214CD03C4();
    if (v106)
    {
      sub_214A62278();
    }
  }

  v7 = v71;
  v54 = v108;
  v105 = v108;
  v104 = v108;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37690);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA384D0);
  v8 = sub_214C43614();
  v9 = sub_214A6E4F4(v64, 0, v55, v56, MEMORY[0x277D84A98], v8, MEMORY[0x277D84AC0], v57);
  v58 = v7;
  v59 = v9;
  if (v7)
  {
    __break(1u);
    __break(1u);

    __break(1u);
  }

  else
  {
    v50 = v59;
    v103 = v59;
    v102[1] = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA384A8);
    sub_214CD03C4();
    v10 = sub_214CCF344();
    v52 = v102;
    v102[0] = v10;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA384E0);
    sub_214C9FCB8();
    sub_214CCF734();
    v53 = 0;
    sub_214C97CA8(v102[2]);
    v101 = v50;
    KeyPath = swift_getKeyPath();

    v11 = sub_214C9FD74();
    v49 = sub_214A6E4F4(v66, KeyPath, v51, &unk_2826ECEC0, MEMORY[0x277D84A98], v11, MEMORY[0x277D84AC0], v57);
    v46 = v49;

    v100 = v46;
    sub_214C95380();
    sub_214CCDF14();
    v99 = v46;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA384F8);
    sub_214C9FDFC();
    if ((sub_214CCFA94() & 1) == 0)
    {
      v42 = &unk_2826ECEC0;
      v43 = sub_214CD03C4();
      v41 = v12;
      v13 = sub_214C95674();
      v14 = v41;
      v15 = v13;
      v16 = v43;
      *v41 = v15;
      *(v14 + 8) = 0;
      sub_214A63280();
      v44 = v16;
      v97 = 0;
      v45 = 255;
      v98 = -1;
      sub_214CCDF04();

      v95[1] = 0;
      v96 = v45;
      sub_214CCDF04();
      v95[0] = sub_214C97A94();
      if (v95[0])
      {
        v36 = v95;
        v37 = v95[0];

        sub_214A75F80();
        v38 = sub_214C40804();

        v39 = v38;
        v40 = 0;
      }

      else
      {
        sub_214A75F80();
        v39 = 0;
        v40 = 1;
      }

      v93 = v39;
      v94 = v40 & 1;
      v35 = (v40 & 1) != 0 ? 0 : v93;
      v92 = v35 > 0;
      if (v35 > 0)
      {
        v32 = &unk_2826ECEC0;
        v33 = sub_214CD03C4();
        v31 = v17;
        v18 = sub_214C95964();
        v19 = v31;
        v20 = v18;
        v21 = v33;
        *v31 = v20;
        *(v19 + 8) = 2;
        sub_214A63280();
        v34 = v21;
        v90 = 0;
        v91 = -1;
        sub_214CCDF04();
      }
    }

    v30 = sub_214C95500();
    if (v30)
    {
      v29 = v30;
    }

    else
    {
      sub_214CD01F4();
      __break(1u);
    }

    v26 = v29;
    (*(v75 + 16))(v78, v80, v74);
    MEMORY[0x277D82BE0](v87);
    v22 = swift_allocObject();
    *(v22 + 16) = v87;
    v25[1] = v22;
    sub_214CCDED4();
    sub_214A6B584(v67);
    v28 = *(v75 + 8);
    v27 = v75 + 8;
    v28(v78, v74);
    v23 = MEMORY[0x277D82BD8](v26);
    (v28)(v80, v74, v23);
  }

  return result;
}

void sub_214C9B5C8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_214C943F8(v4);
  *(a2 + 8) = v2;
  MEMORY[0x277D82BE0](v4);
  *(a2 + 16) = v4;
}

double sub_214C9B640(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[2];
  MEMORY[0x277D82BE0](*a2);
  MEMORY[0x277D82BE0](v4);
  sub_214C94310(v3);
  MEMORY[0x277D82BE0](v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA38440);
  sub_214CCF3E4();
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

uint64_t sub_214C9B76C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  MEMORY[0x277D82BE0](*a1);
  MEMORY[0x277D82BE0](v4);

  v5 = v2;
  v6 = v3;
  v7 = v4;
  swift_getAtKeyPath();
  sub_214CA0B74(&v5);
}

double sub_214C9B814(uint64_t a1)
{
  v6 = a1;
  v7 = sub_214CA0B08;
  v27 = 0;
  v9 = 0;
  v13 = sub_214CCF224();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v4 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v12 = &v3 - v4;
  v17 = sub_214CCF254();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v5 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v16 = &v3 - v5;
  v27 = v1;
  sub_214B51A38();
  v19 = sub_214CCFC44();
  v8 = swift_allocObject();
  MEMORY[0x277D82BE0](v6);
  swift_unknownObjectWeakInit();
  MEMORY[0x277D82BD8](v6);

  v25 = v7;
  v26 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = 0;
  v23 = sub_214A746A8;
  v24 = &block_descriptor_77;
  v18 = _Block_copy(&aBlock);

  sub_214BC69C4();
  sub_214BC69DC();
  MEMORY[0x21605DF00](v9, v16, v12, v18);
  (*(v10 + 8))(v12, v13);
  (*(v14 + 8))(v16, v17);
  _Block_release(v18);
  *&result = MEMORY[0x277D82BD8](v19).n128_u64[0];
  return result;
}

double sub_214C9BAB0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    sub_214C96020();
    *&result = MEMORY[0x277D82BD8](Strong).n128_u64[0];
  }

  return result;
}

uint64_t sub_214C9BB88()
{
  swift_allocObject();
  (MEMORY[0x277D82BE0])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x277D82BD8])();

  type metadata accessor for PriorityMessageListHeaderCell();
  return sub_214CCFBC4();
}

uint64_t sub_214C9BC58()
{
  swift_allocObject();
  (MEMORY[0x277D82BE0])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x277D82BD8])();

  type metadata accessor for PriorityMessageListCell();
  return sub_214CCFBC4();
}

uint64_t sub_214C9BD28()
{
  swift_allocObject();
  (MEMORY[0x277D82BE0])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x277D82BD8])();

  type metadata accessor for PriorityMessageListFooterCell();
  return sub_214CCFBC4();
}

uint64_t sub_214C9BDF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v26 = a1;
  v25 = a2;
  v12 = *a3;
  v13 = *(a3 + 8);
  v23 = *a3;
  v24 = v13;
  v22 = a4;
  v21 = a5;
  v20 = a6;
  v6 = sub_214CCD364();
  if (sub_214C940DC(v6))
  {
    sub_214CCF614();
    sub_214CD0204();
    __break(1u);
  }

  else if (v13)
  {
    MEMORY[0x277D82BE0](v12);
    if (v13 == 1)
    {
      v16 = v12;
      v17 = 1;
      type metadata accessor for PriorityMessageListCell();
      v9 = sub_214CCFBE4();
      sub_214CA0BBC(&v16);
      return v9;
    }

    else
    {
      v18 = v12;
      v19 = v13;
      type metadata accessor for PriorityMessageListFooterCell();
      v8 = sub_214CCFBE4();
      sub_214CA0BBC(&v18);
      return v8;
    }
  }

  else
  {
    MEMORY[0x277D82BE0](v12);
    v14 = v12;
    v15 = 0;
    type metadata accessor for PriorityMessageListHeaderCell();
    v10 = sub_214CCFBE4();
    sub_214CA0BBC(&v14);
    return v10;
  }

  return v11;
}

uint64_t sub_214C9C090(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3 = sub_214C94C18();
  v8 = *v3;
  v9 = v3[1];

  v12 = MEMORY[0x21605D8D0](v8, v9, a2, a3);
  sub_214A61B48();
  if (v12)
  {

    v7 = sub_214C95294();
    if (v7)
    {
      v6 = v7;
    }

    else
    {
      sub_214CD01F4();
      __break(1u);
    }

    sub_214C9F8FC();
    v5 = sub_214CCFBF4();
    MEMORY[0x277D82BD8](v6);
    return v5;
  }

  else
  {

    sub_214CCF614();
    result = sub_214CD0204();
    __break(1u);
  }

  return result;
}

id sub_214C9C2B4()
{
  ObjectType = swift_getObjectType();
  v2 = swift_allocObject();
  (MEMORY[0x277D82BE0])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x277D82BD8])();

  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = ObjectType;

  sub_214C9FEB0();

  v7 = sub_214C9D110(sub_214C9FEA4, v6);
  type metadata accessor for MUIPriorityMessageListBackgroundDecorationView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() elementKind];
  sub_214CCF564();
  v5 = sub_214CCF544();

  [v7 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:{v5, MEMORY[0x277D82BD8](v3).n128_f64[0]}];
  MEMORY[0x277D82BD8](v5);

  return v7;
}

double sub_214C9C47C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v1 = sub_214C97A94();
    PriorityMessageListHeaderCell.updateViewModel(_:)(v1);

    *&result = MEMORY[0x277D82BD8](Strong).n128_u64[0];
  }

  return result;
}

double sub_214C9C568(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v4 = sub_214C94310(v6);
    sub_214C97C40();
    sub_214B894B8();
    type metadata accessor for MUIHighlightedMessage();
    sub_214C9FC38();
    sub_214CCF3D4();
    MEMORY[0x277D82BD8](v4);

    v5 = sub_214C97A94();
    PriorityMessageListCell.updateMessage(_:andViewModel:)(v8, v5);

    (MEMORY[0x277D82BD8])();
    *&result = MEMORY[0x277D82BD8](Strong).n128_u64[0];
  }

  return result;
}

double sub_214C9C70C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v1 = sub_214C97A94();
    PriorityMessageListFooterCell.updateViewModel(_:)(v1);

    *&result = MEMORY[0x277D82BD8](Strong).n128_u64[0];
  }

  return result;
}

id sub_214C9C7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a1;
  v59 = a2;
  v58 = a3;
  v87 = 0;
  v86 = 0;
  v85 = 0;
  v84 = 0;
  v82 = 0;
  v81 = 0;
  v79 = 0u;
  v80 = 0u;
  v75 = 0;
  v74 = 0;
  v52 = 0;
  v53 = sub_214CCDF34();
  v54 = *(v53 - 8);
  v55 = v53 - 8;
  v56 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v57 = v19 - v56;
  v61 = sub_214CCDF94();
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  v64 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60);
  v65 = v19 - v64;
  v66 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v67 = v19 - v66;
  v87 = v19 - v66;
  v86 = v5;
  v85 = v6;
  v68 = v7 + 16;
  v84 = v7 + 16;
  v69 = &v83;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (!Strong)
  {
    return 0;
  }

  v51 = Strong;
  v50 = Strong;
  v82 = Strong;
  if (sub_214C940DC(v60))
  {
    MEMORY[0x277D82BD8](v50);
    return 0;
  }

  (*(v54 + 104))(v57, *MEMORY[0x277D74D50], v53);
  sub_214CCDF44();
  v8 = [objc_opt_self() clearColor];
  sub_214CCDF64();
  sub_214C99DB0();
  sub_214CCDF54();
  v35 = sub_214C99E10();
  *&v36 = *(v50 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_sectionInset);
  *(&v36 + 1) = sub_214C9A060();
  v34 = 0.0;
  v79 = __PAIR128__(*&v35, 0);
  v80 = v36;
  v37 = 0;
  sub_214A77548();
  (*(v62 + 16))(v65, v67, v61);
  v48 = sub_214CCFD34();
  v47 = *(v62 + 8);
  v46 = v62 + 8;
  v47(v65, v61);
  MEMORY[0x277D82BE0](v48);
  v81 = v48;
  v33 = 0x1FB05B000uLL;
  v76 = v34;
  v77 = v35;
  v78 = v36;
  [v48 0x1FB05B8F8];
  v26 = sub_214CA0A40();
  sub_214A772E0();
  v19[1] = 0x277CFB000uLL;
  v20 = [objc_opt_self() fractionalWidthDimension_];
  v9 = [objc_opt_self() absoluteDimension_];
  v21 = sub_214A77344(v20, v9);
  v10 = sub_214C94C18();
  v22 = *v10;
  v23 = v10[1];

  v38 = 1;
  v45 = sub_214CA0FCC(v21, v22, v23, 1);
  v75 = v45;
  v25 = sub_214CD03C4();
  v24 = v11;
  MEMORY[0x277D82BE0](v45);
  v12 = v25;
  *v24 = v45;
  sub_214A63280();
  v27 = v12;
  v28 = sub_214CCF7D4();

  [v48 setBoundarySupplementaryItems_];
  MEMORY[0x277D82BD8](v28);
  v31 = objc_opt_self();
  v30 = [objc_opt_self() elementKind];
  sub_214CCF564();
  v29 = v13;
  v32 = sub_214CCF544();

  *&v14 = MEMORY[0x277D82BD8](v30).n128_u64[0];
  v44 = [v31 backgroundDecorationItemWithElementKind_];
  MEMORY[0x277D82BD8](v32);
  v74 = v44;
  MEMORY[0x277D82BE0](v44);
  v71 = v34;
  v72 = v35;
  v73 = v36;
  [v44 (v33 + 2296)];
  MEMORY[0x277D82BD8](v44);
  v41 = sub_214CA0AA4();
  v40 = sub_214CD03C4();
  v39 = v15;
  MEMORY[0x277D82BE0](v44);
  v16 = v40;
  *v39 = v44;
  sub_214A63280();
  v42 = v16;
  v43 = sub_214CCF7D4();

  [v48 setDecorationItems_];
  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](v44);
  v17 = MEMORY[0x277D82BD8](v45);
  (v47)(v67, v61, v17);
  MEMORY[0x277D82BD8](v81);
  MEMORY[0x277D82BD8](v50);
  return v48;
}

double sub_214C9D158(uint64_t a1, uint64_t a2)
{
  v5[5] = a1 + 16;
  v5[4] = a2;
  swift_beginAccess();
  v5[0] = swift_unknownObjectWeakLoadStrong();
  if (v5[0])
  {
    v4 = v5[0];
    MEMORY[0x277D82BE0](v5[0]);
    sub_214A671E8(v5);
    swift_endAccess();
    v3 = sub_214C338C8();
    sub_214C97A54(v3);

    *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  }

  else
  {
    sub_214A671E8(v5);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_214C9D270()
{
  v3 = sub_214C95500();
  if (v3)
  {
    v2 = v3;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  sub_214CCDEB4();
  MEMORY[0x277D82BD8](v2);
  if (v4 == 255)
  {
    goto LABEL_10;
  }

  (MEMORY[0x277D82BE0])();
  if (v4)
  {
    (MEMORY[0x277D82BD8])();
    (MEMORY[0x277D82BD8])();
LABEL_10:
    v1 = 0;
    return v1 & 1;
  }

  (MEMORY[0x277D82BD8])();
  (MEMORY[0x277D82BD8])();
  v1 = 1;
  return v1 & 1;
}

double sub_214C9D43C(uint64_t a1)
{
  v5[4] = a1 + 16;
  swift_beginAccess();
  v5[0] = swift_unknownObjectWeakLoadStrong();
  if (v5[0])
  {
    v3 = v5[0];
    MEMORY[0x277D82BE0](v5[0]);
    sub_214A671E8(v5);
    swift_endAccess();
    v4 = sub_214C95C54();
    if (v4)
    {
      v2 = v4;
      MEMORY[0x277D82BE0](v4);
      sub_214A671E8(&v4);
      [v2 shimmer];
      *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
    }

    else
    {
      sub_214A671E8(&v4);
      *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
    }
  }

  else
  {
    sub_214A671E8(v5);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_214C9D570(uint64_t a1)
{
  v32 = a1;
  v42 = 0;
  v41 = 0;
  v31 = 0;
  v33 = sub_214CCDA74();
  v34 = *(v33 - 8);
  v35 = v34;
  MEMORY[0x28223BE20](v32);
  v36 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v3;
  v41 = v1;
  if ((sub_214C95E00() & 1) == 0)
  {
    return v31;
  }

  (*(v35 + 16))(v36, v30 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_logger, v33);
  v28 = sub_214CCDA54();
  v25 = v28;
  v27 = sub_214CCFBB4();
  v26 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  v29 = sub_214CD03C4();
  if (os_log_type_enabled(v28, v27))
  {
    v4 = v31;
    v16 = sub_214CCFF24();
    v12 = v16;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v14 = 0;
    v17 = sub_214A632C4(0);
    v15 = v17;
    v18 = sub_214A632C4(v14);
    v40 = v16;
    v39 = v17;
    v38 = v18;
    v19 = 0;
    v20 = &v40;
    sub_214A6627C(0, &v40);
    sub_214A6627C(v19, v20);
    v37 = v29;
    v21 = &v7;
    MEMORY[0x28223BE20](&v7);
    v22 = &v7 - 6;
    *(&v7 - 4) = v5;
    *(&v7 - 3) = &v39;
    *(&v7 - 2) = &v38;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030);
    sub_214A810E0();
    sub_214CCF764();
    v24 = v4;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_214A5E000, v25, v26, "Hosting scene became active and there is a pending shimmer.", v12, 2u);
      v10 = 0;
      sub_214A669DC(v15);
      sub_214A669DC(v18);
      sub_214CCFF04();

      v11 = v24;
    }
  }

  else
  {

    v11 = v31;
  }

  v8 = v11;

  (*(v35 + 8))(v36, v33);
  sub_214C96020();
  return v8;
}

void PriorityMessageListViewController.collectionView(_:didSelectItemAt:)(uint64_t a1, uint64_t a2)
{
  v89 = a1;
  v88 = a2;
  v70 = sub_214B4C014;
  v71 = sub_214A7E51C;
  v72 = sub_214A7E854;
  v73 = sub_214A662DC;
  v74 = sub_214A662DC;
  v75 = sub_214A7E40C;
  v76 = "Fatal error";
  v77 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v78 = "MailUI/PriorityMessageListViewController.swift";
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v79 = 0;
  v102 = 0;
  v103 = 0;
  v100 = 0;
  v97 = 0;
  v80 = 0;
  v81 = sub_214CCD374();
  v83 = *(v81 - 8);
  v82 = v81 - 8;
  v84 = v83;
  v85 = *(v83 + 64);
  v86 = (v85 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v87 = v23 - v86;
  v90 = sub_214CCDA74();
  v91 = *(v90 - 8);
  v92 = v90 - 8;
  v93 = (*(v91 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v89);
  v94 = v23 - v93;
  v112 = v3;
  v111 = v4;
  v110 = v2;
  v95 = sub_214C95500();
  if (v95)
  {
    v68 = v95;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v65 = v68;
  sub_214CCDEB4();
  v5 = MEMORY[0x277D82BD8](v65);
  v66 = v108[1];
  v67 = v109;
  if (v109 == 255)
  {
    (*(v91 + 16))(v94, v69 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_logger, v90, v5);
    v31 = v84;
    (*(v83 + 16))(v87, v88, v81);
    v32 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v36 = 7;
    v33 = swift_allocObject();
    (*(v83 + 32))(v33 + v32, v87, v81);

    v35 = 32;
    v8 = swift_allocObject();
    v9 = v33;
    v37 = v8;
    *(v8 + 16) = v70;
    *(v8 + 24) = v9;

    v45 = sub_214CCDA54();
    v46 = sub_214CCFBA4();
    v34 = 17;
    v39 = swift_allocObject();
    *(v39 + 16) = 34;
    v40 = swift_allocObject();
    *(v40 + 16) = 8;
    v10 = swift_allocObject();
    v11 = v37;
    v38 = v10;
    *(v10 + 16) = v71;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v38;
    v42 = v12;
    *(v12 + 16) = v72;
    *(v12 + 24) = v13;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
    v41 = sub_214CD03C4();
    v43 = v14;

    v15 = v39;
    v16 = v43;
    *v43 = v73;
    v16[1] = v15;

    v17 = v40;
    v18 = v43;
    v43[2] = v74;
    v18[3] = v17;

    v19 = v42;
    v20 = v43;
    v43[4] = v75;
    v20[5] = v19;
    sub_214A63280();

    if (os_log_type_enabled(v45, v46))
    {
      v21 = v79;
      v24 = sub_214CCFF24();
      v23[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
      v25 = sub_214A632C4(0);
      v26 = sub_214A632C4(1);
      v27 = v108;
      v108[0] = v24;
      v28 = &v107;
      v107 = v25;
      v29 = &v106;
      v106 = v26;
      sub_214A6627C(2, v108);
      sub_214A6627C(1, v27);
      v104 = v73;
      v105 = v39;
      sub_214A66290(&v104, v27, v28, v29);
      v30 = v21;
      if (v21)
      {

        __break(1u);
      }

      else
      {
        v104 = v74;
        v105 = v40;
        sub_214A66290(&v104, v108, &v107, &v106);
        v23[1] = 0;
        v104 = v75;
        v105 = v42;
        sub_214A66290(&v104, v108, &v107, &v106);
        _os_log_impl(&dword_214A5E000, v45, v46, "Unable to select item at index path: %{public}s", v24, 0xCu);
        sub_214A669DC(v25);
        sub_214A669DC(v26);
        sub_214CCFF04();
      }
    }

    else
    {
    }

    v22 = MEMORY[0x277D82BD8](v45);
    (*(v91 + 8))(v94, v90, v22);
  }

  else
  {
    v63 = v66;
    v64 = v67;
    v61 = v67;
    v62 = v66;
    v102 = v66;
    v103 = v67;
    if (v67)
    {
      if (v61 == 1)
      {
        v60 = v62;
        v53 = v62;
        MEMORY[0x277D82BE0](v62);
        v100 = v53;
        MEMORY[0x277D82BE0](v53);
        v55 = sub_214C97C40();
        v58 = &v98;
        v98 = v53;
        v54 = 0;
        v56 = sub_214B894B8();
        v57 = type metadata accessor for MUIHighlightedMessage();
        sub_214C9FC38();
        sub_214CCF3D4();
        MEMORY[0x277D82BD8](v98);
        v59 = v99;
        if (v99)
        {
          v52 = v59;
          v51 = v59;
          v97 = v59;

          v6 = sub_214C94F58();
          v96 = v6;
          if (v6)
          {
            v49 = &v96;
            v50 = v96;
            swift_unknownObjectRetain();
            sub_214A759F4();
            swift_getObjectType();
            [v50 highlightedMessagesViewDidSelectMessage_];
            swift_unknownObjectRelease();
          }

          else
          {
            sub_214A759F4();
          }

          MEMORY[0x277D82BD8](v51);
        }

        else
        {
        }

        MEMORY[0x277D82BD8](v53);
      }

      else
      {
        v7 = sub_214C97A94();
        v101 = v7;
        if (v7)
        {
          v47 = &v101;
          v48 = v101;

          sub_214A75F80();
          sub_214C3B6B4();
        }

        else
        {
          sub_214A75F80();
        }
      }
    }

    MEMORY[0x277D82BD8](v62);
  }
}

void PriorityMessageListViewController.collectionView(_:willDisplaySupplementaryView:forElementKind:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v10 = [objc_opt_self() elementKind];
  v12 = sub_214CCF564();
  v11 = MEMORY[0x21605D8D0](v12, v4, a3, a4);
  sub_214A61B48();
  MEMORY[0x277D82BD8](v10);
  if (v11)
  {

    MEMORY[0x277D82BE0](a2);
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      MEMORY[0x277D82BD8](a2);
      v5 = 0;
    }

    sub_214C95CBC(v5);
  }

  else
  {
  }
}

uint64_t sub_214C9F214()
{

  sub_214CCD404();
}

uint64_t sub_214C9F2E4(void (*a1)(void))
{

  a1();
}

uint64_t (*sub_214C9F344(uint64_t a1, uint64_t a2))()
{

  v2 = swift_allocObject();
  result = sub_214CA08EC;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_214C9F3BC(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v17 = a2;
  v16 = MEMORY[0x277D85700];
  v20 = &unk_214CF5FF0;
  v22 = 0;
  v23 = 0;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21);
  v19 = &v14 - v14;
  v22 = v2;
  v23 = v3;
  v18 = 0;
  v4 = sub_214CCF994();
  (*(*(v4 - 8) + 56))(v19, 1);

  sub_214CCF964();
  v15 = sub_214CCF954();
  v5 = swift_allocObject();
  v6 = v16;
  v7 = v17;
  v8 = v18;
  v9 = v19;
  v10 = v20;
  v11 = v5;
  v12 = v21;
  v11[2] = v15;
  v11[3] = v6;
  v11[4] = v12;
  v11[5] = v7;
  sub_214B88C30(v8, v8, v9, v10, v11, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_214C9F54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[5] = a4;
  v5[4] = v5;
  v5[2] = 0;
  v5[3] = 0;
  v5[2] = a4;
  v5[3] = a5;
  sub_214CCF964();
  v5[7] = sub_214CCF954();
  v6 = sub_214CCF924();

  return MEMORY[0x2822009F8](sub_214C9F610, v6);
}

uint64_t sub_214C9F610()
{
  *(v0 + 32) = v0;
  sub_214C9F214();

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

id sub_214C9F6B0(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v12 = a2;
  aBlock = MEMORY[0x277D85DD0];
  v7 = 1107296256;
  v8 = 0;
  v9 = sub_214A7590C;
  v10 = &block_descriptor_73;
  v4 = _Block_copy(&aBlock);
  v5 = [v3 initWithSectionProvider_];
  _Block_release(v4);

  return v5;
}

unint64_t sub_214C9F760()
{
  v2 = qword_27CA38420;
  if (!qword_27CA38420)
  {
    type metadata accessor for ActivationState();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38420);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C9F7F4()
{
  v2 = qword_27CA38450;
  if (!qword_27CA38450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA38440);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38450);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for PriorityMessageListViewController()
{
  v1 = qword_27CA38528;
  if (!qword_27CA38528)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_214C9F8FC()
{
  v2 = qword_27CA38480;
  if (!qword_27CA38480)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA38480);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_214C9F960(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38470) - 8);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v9 = v13 + *(v8 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38468);
  v14 = (v9 + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v10 = v14 + *(*(v4 - 8) + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38460);
  v6 = v3 + ((v10 + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80));

  return sub_214C9BDF8(a1, a2, a3, v3 + v13, v3 + v14, v6);
}

uint64_t sub_214C9FAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38478);

  return sub_214C9C090(a1, a2, a3);
}

unint64_t sub_214C9FBBC()
{
  v2 = qword_27CA38498;
  if (!qword_27CA38498)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38498);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C9FC38()
{
  v2 = qword_27CA384B8;
  if (!qword_27CA384B8)
  {
    sub_214B894B8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA384B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C9FCB8()
{
  v2 = qword_27CA384E8;
  if (!qword_27CA384E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA384E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA384E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C9FD74()
{
  v2 = qword_27CA384F0;
  if (!qword_27CA384F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA384E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA384F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C9FDFC()
{
  v2 = qword_27CA38500;
  if (!qword_27CA38500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA384F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38500);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C9FEB0()
{
  v2 = qword_27CA38508;
  if (!qword_27CA38508)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA38508);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_214C9FF48()
{
  updated = sub_214CCD2B4();
  if (v0 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_214CA0038()
{
  updated = sub_214CCDA74();
  if (v0 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_214CA0404(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFD && *(a1 + 9))
    {
      v4 = *a1 + 253;
    }

    else
    {
      v2 = 255 - *(a1 + 8);
      if (v2 >= 0xFD)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_214CA0528(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = result;
  v4 = (result + 9);
  if (a2 > 0xFD)
  {
    result = 0;
    *(v3 + 8) = 0;
    *v3 = a2 - 254;
    if (a3 >= 0xFE)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_214CA073C()
{
  v2 = qword_27CA38538;
  if (!qword_27CA38538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA38540);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38538);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214CA07DC()
{
  v2 = qword_27CA38548;
  if (!qword_27CA38548)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38548);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214CA0870()
{
  v2 = qword_27CA38550;
  if (!qword_27CA38550)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38550);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214CA08F8(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_214A82860;

  return sub_214C9F54C(a1, v6, v7, v8, v9);
}

uint64_t block_copy_helper_71(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_214CA0A40()
{
  v2 = qword_280C7C610;
  if (!qword_280C7C610)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C610);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214CA0AA4()
{
  v2 = qword_27CA38560;
  if (!qword_27CA38560)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA38560);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper_75(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void *sub_214CA0B74(void *a1)
{
  MEMORY[0x277D82BD8](*a1);
  MEMORY[0x277D82BD8](a1[2]);
  return a1;
}

uint64_t sub_214CA0BBC(uint64_t a1)
{
  if (*(a1 + 8) != 255)
  {
    MEMORY[0x277D82BD8](*a1);
  }

  return a1;
}

id QLThumbnailRepresentation.platformImage.getter()
{
  v1 = [v0 UIImage];

  return v1;
}

uint64_t sub_214CA0C78()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  MEMORY[0x277D82BE0](v2);
  swift_endAccess();
  return v2;
}

double sub_214CA0CDC(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t RichLinkMetadataGenerator.init(messageRepository:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  MEMORY[0x277D82BE0](a1);
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  MEMORY[0x277D82BD8](a1);
  return v5;
}

uint64_t RichLinkMetadataGenerator.retreiveMetadata(for:messageID:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{

  a5(0);
}

id sub_214CA0FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_214CCF544();
  v8 = [swift_getObjCClassFromMetadata() boundarySupplementaryItemWithLayoutSize:a1 elementKind:v6 alignment:a4];
  MEMORY[0x277D82BD8](v6);

  MEMORY[0x277D82BD8](a1);
  return v8;
}

uint64_t static SearchCollectionViewLayoutFactory_iOS.columnCount(forSection:usingLayoutEnvironment:)(char *a1, void *a2)
{
  v13 = *a1;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v11 = [a2 container];
  swift_unknownObjectRelease();
  swift_getObjectType();
  [v11 effectiveContentSize];
  v12 = v2;
  swift_unknownObjectRelease();
  switch(v13)
  {
    case 3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v8 = [a2 traitCollection];
      swift_unknownObjectRelease();
      v9 = [v8 preferredContentSizeCategory];
      MEMORY[0x277D82BD8](v8);
      if (sub_214CCFD14())
      {
        if (v12 <= 800.0)
        {
          v5 = 2;
        }

        else
        {
          v5 = 4;
        }

        MEMORY[0x277D82BD8](v9);
        v6 = v5;
      }

      else
      {
        if (v12 <= 800.0)
        {
          v7 = 4;
        }

        else
        {
          v7 = 6;
        }

        MEMORY[0x277D82BD8](v9);
        v6 = v7;
      }

      break;
    case 4:
    case 8:
      v6 = 3;
      break;
    case 5:
    case 9:
      if (v12 <= 800.0)
      {
        v4 = 2;
      }

      else
      {
        v4 = 3;
      }

      v6 = v4;
      break;
    default:
      v6 = 1;
      break;
  }

  return v6;
}

uint64_t static SearchCollectionViewLayoutFactory_iOS.layout(forSection:layoutEnvironment:)(char *a1, void *a2)
{
  v9 = 0;
  v8 = 0;
  v5 = *a1;
  v9 = v5;
  v8 = a2;
  v7 = v5;
  v6 = static SearchCollectionViewLayoutFactory_iOS.columnCount(forSection:usingLayoutEnvironment:)(&v7, a2);
  switch(v5)
  {
    case 1:
    case 7:
    case 10:
    case 11:
    case 12:
    case 13:
      v3 = static SearchCollectionViewLayoutFactory_iOS.listSectionWithHeaderLayout(_:)(a2);
      break;
    case 2:
      v3 = static SearchCollectionViewLayoutFactory_iOS.listSectionLayout(_:showsSeparators:)(a2, 0);
      break;
    case 3:
      v3 = static SearchCollectionViewLayoutFactory_iOS.contactsSectionLayout(columns:)(v6);
      break;
    case 4:
      v3 = static SearchCollectionViewLayoutFactory_iOS.photosSectionLayout(columns:)(v6);
      break;
    case 5:
      v3 = static SearchCollectionViewLayoutFactory_iOS.locationsSectionLayout(columns:)(v6);
      break;
    case 6:
      v3 = static SearchCollectionViewLayoutFactory_iOS.recentSearchesSectionLayout(_:deletion:)(a2, sub_214CA2E60, 0);
      break;
    case 8:
      v3 = static SearchCollectionViewLayoutFactory_iOS.documentsSectionLayout(columns:)(v6);
      break;
    case 9:
      v3 = static SearchCollectionViewLayoutFactory_iOS.linksSectionLayout(columns:)(v6);
      break;
    default:
      v3 = static SearchCollectionViewLayoutFactory_iOS.indexStatusSectionLayout(_:)(a2);
      break;
  }

  return v3;
}

id static SearchCollectionViewLayoutFactory_iOS.contactsSectionLayout(columns:)(uint64_t a1)
{
  sub_214A772E0();
  v13 = [objc_opt_self() 0x1FAB6B7F8];
  v1 = [objc_opt_self() 0x1FAE0AF13];
  v27 = sub_214A77344(v13, v1);
  sub_214A7727C();
  MEMORY[0x277D82BE0](v27);
  v26 = sub_214A773B8(v27);
  v14 = [objc_opt_self() 0x1FAB6B7F8];
  v2 = [objc_opt_self() 0x1FAE0AF13];
  v25 = sub_214A77344(v14, v2);
  v24 = [objc_opt_self() horizontalGroupWithLayoutSize:v25 subitem:v26 count:a1];
  sub_214A77548();
  MEMORY[0x277D82BE0](v24);
  v21 = sub_214A775AC(v24);
  MEMORY[0x277D82BE0](v21);
  [v21 setInterGroupSpacing_];
  [v21 0x1FB606678];
  [v21 0x1FB05B8F8];
  [v21 0x1FB606678];
  [v21 0x1FB05B8F8];
  [v26 0x1FB05B8F8];
  v16 = [objc_opt_self() 0x1FAB6B7F8];
  v9 = [objc_opt_self() 0x1FAE0AF13];
  v23 = sub_214A77344(v16, v9);
  sub_214CA0A40();
  MEMORY[0x277D82BE0](v23);
  v10 = sub_214CABD1C();
  v17 = *v10;
  v18 = v10[1];

  v22 = sub_214CA0FCC(v23, v17, v18, 5);
  sub_214CD03C4();
  v19 = v11;
  MEMORY[0x277D82BE0](v22);
  *v19 = v22;
  sub_214A63280();
  v20 = sub_214CCF7D4();

  [v21 setBoundarySupplementaryItems_];
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  return v21;
}

id static SearchCollectionViewLayoutFactory_iOS.documentsSectionLayout(columns:)(uint64_t a1)
{
  sub_214A772E0();
  v9 = [objc_opt_self() 0x1FAB6B7F8];
  v1 = [objc_opt_self() 0x1FAE0AF13];
  v28 = sub_214A77344(v9, v1);
  sub_214A7727C();
  MEMORY[0x277D82BE0](v28);
  v27 = sub_214A773B8(v28);
  [v27 0x1FB05B8F8];
  v10 = [objc_opt_self() 0x1FAB6B7F8];
  v2 = [objc_opt_self() 0x1FAE0AF13];
  v26 = sub_214A77344(v10, v2);
  v25 = [objc_opt_self() horizontalGroupWithLayoutSize:v26 subitem:v27 count:a1];
  sub_214A77548();
  MEMORY[0x277D82BE0](v25);
  v20 = sub_214A775AC(v25);
  MEMORY[0x277D82BE0](v20);
  [v20 0x1FB05B8F8];
  v12 = [objc_opt_self() 0x1FAB6B7F8];
  v3 = [objc_opt_self() 0x1FAE0AF13];
  v24 = sub_214A77344(v12, v3);
  sub_214CA0A40();
  MEMORY[0x277D82BE0](v24);
  v4 = sub_214CB5E44();
  v13 = *v4;
  v14 = v4[1];

  v23 = sub_214CA0FCC(v24, v13, v14, 1);
  v15 = [objc_opt_self() 0x1FAB6B7F8];
  v5 = [objc_opt_self() 0x1FAE0AF13];
  v22 = sub_214A77344(v15, v5);
  MEMORY[0x277D82BE0](v22);
  v6 = sub_214CABD1C();
  v16 = *v6;
  v17 = v6[1];

  v21 = sub_214CA0FCC(v22, v16, v17, 5);
  sub_214CD03C4();
  v18 = v7;
  MEMORY[0x277D82BE0](v23);
  *v18 = v23;
  MEMORY[0x277D82BE0](v21);
  v18[1] = v21;
  sub_214A63280();
  v19 = sub_214CCF7D4();

  [v20 setBoundarySupplementaryItems_];
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  return v20;
}

id static SearchCollectionViewLayoutFactory_iOS.linksSectionLayout(columns:)(uint64_t a1)
{
  v28[1] = a1;
  sub_214A772E0();
  v7 = objc_opt_self();
  v28[0] = a1;
  v10 = sub_214A63208();
  v9 = MEMORY[0x277D83B88];
  v8 = [v7 0x1FAB6B7F8];
  v1 = [objc_opt_self() fractionalHeightDimension_];
  v21 = sub_214A77344(v8, v1);
  v27[6] = v21;
  sub_214A7727C();
  MEMORY[0x277D82BE0](v21);
  v20 = sub_214A773B8(v21);
  v27[5] = v20;
  v27[1] = 2.0;
  v27[2] = 2.0;
  v27[3] = 2.0;
  v27[4] = 2.0;
  [v20 0x1FB05B8F8];
  v12 = [objc_opt_self() 0x1FAB6B7F8];
  v11 = objc_opt_self();
  v27[0] = a1;
  v2 = [v11 0x1FAB6B7F8];
  v26 = sub_214A77344(v12, v2);
  v25 = [objc_opt_self() horizontalGroupWithLayoutSize:v26 subitem:v20 count:a1];
  v14 = [objc_opt_self() fixedSpacing_];
  [v25 setInterItemSpacing_];
  MEMORY[0x277D82BD8](v14);
  sub_214A77548();
  MEMORY[0x277D82BE0](v25);
  v24 = sub_214A775AC(v25);
  [v24 0x1FB05B8F8];
  [v24 setInterGroupSpacing_];
  v15 = [objc_opt_self() 0x1FAB6B7F8];
  v3 = [objc_opt_self() estimatedDimension_];
  v23 = sub_214A77344(v15, v3);
  sub_214CA0A40();
  MEMORY[0x277D82BE0](v23);
  v4 = sub_214CB5E44();
  v16 = *v4;
  v17 = v4[1];

  v22 = sub_214CA0FCC(v23, v16, v17, 1);
  sub_214CD03C4();
  v18 = v5;
  MEMORY[0x277D82BE0](v22);
  *v18 = v22;
  sub_214A63280();
  v19 = sub_214CCF7D4();

  [v24 setBoundarySupplementaryItems_];
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  return v24;
}

id static SearchCollectionViewLayoutFactory_iOS.locationsSectionLayout(columns:)(uint64_t a1)
{
  v35[1] = a1;
  sub_214A772E0();
  v9 = objc_opt_self();
  v35[0] = a1;
  v12 = sub_214A63208();
  v11 = MEMORY[0x277D83B88];
  v10 = [v9 0x1FAB6B7F8];
  v1 = [objc_opt_self() fractionalHeightDimension_];
  v26 = sub_214A77344(v10, v1);
  v34[6] = v26;
  sub_214A7727C();
  MEMORY[0x277D82BE0](v26);
  v25 = sub_214A773B8(v26);
  v34[5] = v25;
  v34[1] = 2.0;
  v34[2] = 2.0;
  v34[3] = 2.0;
  v34[4] = 2.0;
  [v25 0x1FB05B8F8];
  v14 = [objc_opt_self() 0x1FAB6B7F8];
  v13 = objc_opt_self();
  v34[0] = a1;
  v2 = [v13 0x1FAB6B7F8];
  v33 = sub_214A77344(v14, v2);
  v32 = [objc_opt_self() horizontalGroupWithLayoutSize:v33 subitem:v25 count:a1];
  v16 = [objc_opt_self() fixedSpacing_];
  [v32 setInterItemSpacing_];
  MEMORY[0x277D82BD8](v16);
  sub_214A77548();
  MEMORY[0x277D82BE0](v32);
  v31 = sub_214A775AC(v32);
  [v31 0x1FB05B8F8];
  [v31 setInterGroupSpacing_];
  v17 = [objc_opt_self() 0x1FAB6B7F8];
  v3 = [objc_opt_self() 0x1FAE0AF13];
  v30 = sub_214A77344(v17, v3);
  sub_214CA0A40();
  MEMORY[0x277D82BE0](v30);
  v4 = sub_214CB5E44();
  v18 = *v4;
  v19 = v4[1];

  v29 = sub_214CA0FCC(v30, v18, v19, 1);
  v20 = [objc_opt_self() 0x1FAB6B7F8];
  v5 = [objc_opt_self() 0x1FAE0AF13];
  v28 = sub_214A77344(v20, v5);
  MEMORY[0x277D82BE0](v28);
  v6 = sub_214CABD1C();
  v21 = *v6;
  v22 = v6[1];

  v27 = sub_214CA0FCC(v28, v21, v22, 5);
  sub_214CD03C4();
  v23 = v7;
  MEMORY[0x277D82BE0](v29);
  *v23 = v29;
  MEMORY[0x277D82BE0](v27);
  v23[1] = v27;
  sub_214A63280();
  v24 = sub_214CCF7D4();

  [v31 setBoundarySupplementaryItems_];
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  return v31;
}

id static SearchCollectionViewLayoutFactory_iOS.photosSectionLayout(columns:)(uint64_t a1)
{
  v35[1] = a1;
  sub_214A772E0();
  v9 = objc_opt_self();
  v35[0] = a1;
  v12 = sub_214A63208();
  v11 = MEMORY[0x277D83B88];
  v10 = [v9 0x1FAB6B7F8];
  v1 = [objc_opt_self() fractionalHeightDimension_];
  v26 = sub_214A77344(v10, v1);
  v34[2] = v26;
  sub_214A7727C();
  MEMORY[0x277D82BE0](v26);
  v25 = sub_214A773B8(v26);
  v34[1] = v25;
  v14 = [objc_opt_self() 0x1FAB6B7F8];
  v13 = objc_opt_self();
  v34[0] = a1;
  v2 = [v13 0x1FAB6B7F8];
  v33 = sub_214A77344(v14, v2);
  v32 = [objc_opt_self() horizontalGroupWithLayoutSize:v33 subitem:v25 count:a1];
  v16 = [objc_opt_self() fixedSpacing_];
  [v32 setInterItemSpacing_];
  MEMORY[0x277D82BD8](v16);
  sub_214A77548();
  MEMORY[0x277D82BE0](v32);
  v27 = sub_214A775AC(v32);
  MEMORY[0x277D82BE0](v27);
  [v27 setContentInsets_];
  [v27 setInterGroupSpacing_];
  v17 = [objc_opt_self() 0x1FAB6B7F8];
  v3 = [objc_opt_self() 0x1FAE0AF13];
  v31 = sub_214A77344(v17, v3);
  sub_214CA0A40();
  MEMORY[0x277D82BE0](v31);
  v4 = sub_214CB5E44();
  v18 = *v4;
  v19 = v4[1];

  v30 = sub_214CA0FCC(v31, v18, v19, 1);
  v20 = [objc_opt_self() 0x1FAB6B7F8];
  v5 = [objc_opt_self() 0x1FAE0AF13];
  v29 = sub_214A77344(v20, v5);
  MEMORY[0x277D82BE0](v29);
  v6 = sub_214CABD1C();
  v21 = *v6;
  v22 = v6[1];

  v28 = sub_214CA0FCC(v29, v21, v22, 5);
  sub_214CD03C4();
  v23 = v7;
  MEMORY[0x277D82BE0](v30);
  *v23 = v30;
  MEMORY[0x277D82BE0](v28);
  v23[1] = v28;
  sub_214A63280();
  v24 = sub_214CCF7D4();

  [v27 setBoundarySupplementaryItems_];
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v31);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  return v27;
}

uint64_t static SearchCollectionViewLayoutFactory_iOS.recentSearchesSectionLayout(_:deletion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v16 = a2;
  v17 = a3;
  v18 = sub_214CA3BE8;
  v19 = sub_214CA3FB4;
  v34 = 0;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v20 = 0;
  v11 = sub_214CCDF34();
  v14 = *(v11 - 8);
  v10[1] = v11 - 8;
  v10[0] = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v15 = v10 - v10[0];
  v26 = sub_214CCDF94();
  v22 = *(v26 - 8);
  v23 = v26 - 8;
  v13 = *(v22 + 64);
  v12 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v24 = v10 - v12;
  v4 = MEMORY[0x28223BE20](v3);
  v25 = v10 - v5;
  v34 = v10 - v5;
  v33 = v21;
  v31 = v6;
  v32 = v17;
  (*(v14 + 104))(v4);
  sub_214CCDF44();

  v7 = swift_allocObject();
  v8 = v17;
  *(v7 + 16) = v16;
  *(v7 + 24) = v8;
  sub_214CCDF24();
  sub_214CCDF84();
  sub_214A77548();
  (*(v22 + 16))(v24, v25, v26);
  v29 = sub_214CCFD34();
  v28 = *(v22 + 8);
  v27 = v22 + 8;
  v28(v24, v26);
  v30 = v29;
  v28(v25, v26);
  return v29;
}

void *static SearchCollectionViewLayoutFactory_iOS.listSectionWithHeaderLayout(_:)(void *a1)
{
  has_malloc_size = _swift_stdlib_has_malloc_size();
  v14 = static SearchCollectionViewLayoutFactory_iOS.listSectionLayout(_:showsSeparators:)(a1, has_malloc_size & 1);
  sub_214A772E0();
  v7 = [objc_opt_self() fractionalWidthDimension_];
  v2 = [objc_opt_self() estimatedDimension_];
  v13 = sub_214A77344(v7, v2);
  sub_214CA0A40();
  MEMORY[0x277D82BE0](v13);
  v3 = sub_214CB88D8();
  v8 = *v3;
  v9 = v3[1];

  v12 = sub_214CA0FCC(v13, v8, v9, 1);
  sub_214CD03C4();
  v10 = v4;
  MEMORY[0x277D82BE0](v12);
  *v10 = v12;
  sub_214A63280();
  v11 = sub_214CCF7D4();

  [v14 setBoundarySupplementaryItems_];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  return v14;
}

uint64_t static SearchCollectionViewLayoutFactory_iOS.listSectionLayout(_:showsSeparators:)(void *a1, int a2)
{
  v25 = a1;
  v17 = a2;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v11 = 0;
  v12 = sub_214CCDF34();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v16 = &v8 - v15;
  v18 = sub_214CCDF94();
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  v21 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v22 = &v8 - v21;
  v23 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v24 = &v8 - v23;
  v31 = &v8 - v23;
  v30 = v4;
  v29 = v5 & 1;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v26 = [v25 traitCollection];
  swift_unknownObjectRelease();
  v27 = [v26 mf_useSplitViewStyling];
  v6 = MEMORY[0x277D82BD8](v26);
  if (v27)
  {
    (*(v13 + 104))(v16, *MEMORY[0x277D74D58], v12, v6);
  }

  else
  {
    (*(v13 + 104))(v16, *MEMORY[0x277D74D60], v12, v6);
  }

  sub_214CCDF44();
  sub_214CCDF74();
  sub_214A77548();
  (*(v19 + 16))(v22, v24, v18);
  v10 = sub_214CCFD34();
  v9 = *(v19 + 8);
  v8 = v19 + 8;
  v9(v22, v18);
  v28 = v10;
  v9(v24, v18);
  return v10;
}

uint64_t static SearchCollectionViewLayoutFactory_iOS.indexStatusSectionLayout(_:)(uint64_t a1)
{
  v14 = a1;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v13 = 0;
  v7 = sub_214CCDF34();
  v11 = *(v7 - 8);
  v6 = v7 - 8;
  v5 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v12 = &v4 - v5;
  v19 = sub_214CCDF94();
  v15 = *(v19 - 8);
  v16 = v19 - 8;
  v9 = *(v15 + 64);
  v8 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v17 = &v4 - v8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v1);
  v18 = &v4 - v10;
  v25 = &v4 - v10;
  v24 = v14;
  (*(v11 + 104))(v2);
  sub_214CCDF44();
  sub_214CCDF74();
  sub_214A77548();
  (*(v15 + 16))(v17, v18, v19);
  v22 = sub_214CCFD34();
  v21 = *(v15 + 8);
  v20 = v15 + 8;
  v21(v17, v19);
  v23 = v22;
  v21(v18, v19);
  return v22;
}

id sub_214CA389C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v30 = a2;
  v31 = a3;
  v39 = sub_214CA4204;
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v48 = 0;
  v41 = 0;
  v36 = sub_214CCD374();
  v32 = *(v36 - 8);
  v33 = v36 - 8;
  v28 = v32;
  v29 = *(v32 + 64);
  v19 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v35 = &v18 - v19;
  v51 = v3;
  v49 = v4;
  v50 = v5;
  v44 = sub_214CA41A0();
  v20 = 1;
  v22 = sub_214CCF614();
  v26 = v6;
  v21 = sub_214CCF614();
  v25 = v7;
  v24 = sub_214CA9BDC();
  sub_214B1C228();
  v23 = v8;
  v37 = sub_214CCCF54();
  v38 = v9;

  MEMORY[0x277D82BD8](v24);

  (*(v32 + 16))(v35, v27, v36);
  v34 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v10 = swift_allocObject();
  v11 = v31;
  v12 = v32;
  v13 = v34;
  v14 = v35;
  v15 = v36;
  v40 = v10;
  *(v10 + 16) = v30;
  *(v10 + 24) = v11;
  (*(v12 + 32))(v10 + v13, v14, v15);
  v42 = 1;
  v46 = sub_214CA3CB8(1, v37, v38, v39, v40);
  v48 = v46;
  sub_214CA429C();
  v45 = sub_214CD03C4();
  v43 = v16;
  MEMORY[0x277D82BE0](v46);
  *v43 = v46;
  sub_214A63280();
  v47 = sub_214CA3F30();
  MEMORY[0x277D82BD8](v46);
  return v47;
}

uint64_t sub_214CA3BF4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{

  v7 = a5(a7);
  a3(v7 & 1);
}

id sub_214CA3CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v8 = sub_214CCF544();

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v18 = a4;
  v19 = a5;
  aBlock = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = 0;
  v16 = sub_214CA3E04;
  v17 = &block_descriptor_27;
  v6 = _Block_copy(&aBlock);
  v7 = [swift_getObjCClassFromMetadata() contextualActionWithStyle:a1 title:v9 handler:v6];
  _Block_release(v6);

  MEMORY[0x277D82BD8](v9);
  return v7;
}

uint64_t sub_214CA3E04(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v7 = *(a1 + 32);

  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  v6 = _Block_copy(a4);
  *(swift_allocObject() + 16) = v6;
  v7(a2, a3, sub_214CA4300);

  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](a2);
}

id sub_214CA3F30()
{
  sub_214CA41A0();
  v1 = sub_214CCF7D4();
  v2 = [swift_getObjCClassFromMetadata() configurationWithActions_];
  MEMORY[0x277D82BD8](v1);

  return v2;
}

uint64_t sub_214CA3FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7[0] = a3;
  v13 = a2;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v7[1] = 0;
  v8 = sub_214CCDE54();
  v9 = *(v8 - 8);
  v10 = v8 - 8;
  v11 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v12 = v7 - v11;
  v14 = sub_214CCDE64();
  v17 = *(v14 - 8);
  v15 = v14 - 8;
  v16 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v14);
  v18 = v7 - v16;
  v21 = v7 - v16;
  v20 = a1;
  v19 = v5;
  (*(v17 + 16))(v4);
  if (!sub_214CCD334())
  {
    (*(v9 + 104))(v12, *MEMORY[0x277D74C98], v8);
    sub_214CCDE44();
  }

  return (*(v17 + 32))(v7[0], v18, v14);
}

unint64_t sub_214CA41A0()
{
  v2 = qword_27CA38570;
  if (!qword_27CA38570)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA38570);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_214CA4204(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = sub_214CCD374();
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = v4 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));

  return sub_214CA3BF4(a1, a2, a3, a4, v6, v7, v8);
}

unint64_t sub_214CA429C()
{
  v2 = qword_27CA38578;
  if (!qword_27CA38578)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA38578);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t SearchItem.section.getter@<X0>(_BYTE *a1@<X8>)
{
  v16 = a1;
  v26 = 0;
  v27 = 0;
  v17 = 0;
  v18 = type metadata accessor for SearchItem.LegacySuggested();
  v19 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v20 = &v14[-v19];
  v27 = &v14[-v19];
  v23 = type metadata accessor for SearchItem();
  v22 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21);
  v24 = &v14[-v22];
  v26 = v1;
  sub_214B9A920(v1, &v14[-v22]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v3 = v24;
        *v16 = 3;
        return sub_214B5BC5C(v3);
      case 2:
        v6 = v24;
        *v16 = 4;
        return sub_214C883D4(v6);
      case 3:
        v5 = v24;
        *v16 = 5;
        return sub_214BB4214(v5);
      case 4:
        v4 = v24;
        *v16 = 8;
        return sub_214B62C28(v4);
      case 5:
        sub_214CA46B0(v24, v20);
        v27 = v20;
        v15 = v20[*(v18 + 36)];
        if (v15)
        {
          v13 = v20;
          if (v15 == 1)
          {
            *v16 = 12;
          }

          else
          {
            *v16 = 13;
          }

          return sub_214BB01BC(v13);
        }

        else
        {
          v12 = v20;
          *v16 = 11;
          return sub_214BB01BC(v12);
        }

      case 6:
        v7 = v24;
        *v16 = 7;
        return sub_214B92DC4(v7);
      case 7:
        v8 = v24;
        *v16 = 6;
        return sub_214B92DC4(v8);
      case 8:
        v9 = v24;
        *v16 = 1;
        return sub_214CA4784(v9);
      default:
        v10 = v24;
        if (EnumCaseMultiPayload == 9)
        {
          *v16 = 2;
          return sub_214BAB488(v10);
        }

        else
        {
          *v16 = 9;
          return sub_214BB22B4(v10);
        }
    }
  }

  else
  {
    v2 = v24;
    *v16 = 10;
    return sub_214B92DC4(v2);
  }
}

uint64_t type metadata accessor for SearchItem()
{
  v1 = qword_280C7E1D0;
  if (!qword_280C7E1D0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

__n128 sub_214CA46B0(uint64_t a1, uint64_t a2)
{
  v2 = sub_214CCD2B4();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = type metadata accessor for SearchItem.LegacySuggested();
  *(a2 + v3[5]) = *(a1 + v3[5]);
  *(a2 + v3[6]) = *(a1 + v3[6]);
  result = *(a1 + v3[7]);
  *(a2 + v3[7]) = result;
  *(a2 + v3[8]) = *(a1 + v3[8]);
  *(a2 + v3[9]) = *(a1 + v3[9]);
  return result;
}

uint64_t sub_214CA4784(uint64_t a1)
{
  v1 = sub_214CCD2B4();
  (*(*(v1 - 8) + 8))(a1);
  v3 = type metadata accessor for SearchItem.TopHit();
  MEMORY[0x277D82BD8](*(a1 + *(v3 + 20)));

  return a1;
}

uint64_t SearchItem.id.getter@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v50 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v49 = 0;
  v48 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v39 = 0;
  v21 = type metadata accessor for SearchItem.Link();
  v22 = (*(*(v21 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v23 = &v14 - v22;
  v59 = &v14 - v22;
  v24 = (*(*(type metadata accessor for SearchItem.InstantAnswer() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v39);
  v25 = &v14 - v24;
  v58 = &v14 - v24;
  v26 = (*(*(type metadata accessor for SearchItem.TopHit() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v39);
  v27 = &v14 - v26;
  v57 = &v14 - v26;
  v28 = (*(*(type metadata accessor for SearchItem.LegacySuggested() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v39);
  v29 = &v14 - v28;
  v56 = &v14 - v28;
  v30 = (*(*(type metadata accessor for SearchItem.Document() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v39);
  v31 = &v14 - v30;
  v55 = &v14 - v30;
  v32 = (*(*(type metadata accessor for SearchItem.Location() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v39);
  v33 = &v14 - v32;
  v54 = &v14 - v32;
  v34 = (*(*(type metadata accessor for SearchItem.Photo() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v39);
  v35 = &v14 - v34;
  v53 = &v14 - v34;
  v36 = type metadata accessor for SearchItem.Contact();
  v37 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v39);
  v38 = &v14 - v37;
  v52 = &v14 - v37;
  v40 = type metadata accessor for SearchItem.Generic();
  v41 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v39);
  v42 = &v14 - v41;
  v51 = &v14 - v41;
  v45 = type metadata accessor for SearchItem();
  v44 = (*(*(v45 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v43);
  v46 = &v14 - v44;
  v50 = v1;
  sub_214B9A920(v1, (&v14 - v44));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    switch(EnumCaseMultiPayload)
    {
      case 1:
        sub_214B5BFEC(v46, v38);
        v52 = v38;
        v18 = &v38[*(v36 + 24)];
        v3 = sub_214CCD2B4();
        (*(*(v3 - 8) + 16))(v20, v18);
        return sub_214B5BC5C(v38);
      case 2:
        sub_214CA5B5C(v46, v35);
        v53 = v35;
        v4 = sub_214CCD2B4();
        (*(*(v4 - 8) + 16))(v20, v35);
        return sub_214C883D4(v35);
      case 3:
        sub_214BB4808(v46, v33);
        v54 = v33;
        v5 = sub_214CCD2B4();
        (*(*(v5 - 8) + 16))(v20, v33);
        return sub_214BB4214(v33);
      case 4:
        sub_214B633A4(v46, v31);
        v55 = v31;
        v6 = sub_214CCD2B4();
        (*(*(v6 - 8) + 16))(v20, v31);
        return sub_214B62C28(v31);
      case 5:
        sub_214CA46B0(v46, v29);
        v56 = v29;
        v7 = sub_214CCD2B4();
        (*(*(v7 - 8) + 16))(v20, v29);
        return sub_214BB01BC(v29);
      case 6:
        v48 = v42;
        sub_214B93174(v46, v42);
        v48 = v42;
        v17 = &v42[*(v40 + 24)];
        v8 = sub_214CCD2B4();
        (*(*(v8 - 8) + 16))(v20, v17);
        return sub_214B92DC4(v42);
      case 7:
        v49 = v42;
        sub_214B93174(v46, v42);
        v49 = v42;
        v16 = &v42[*(v40 + 24)];
        v9 = sub_214CCD2B4();
        (*(*(v9 - 8) + 16))(v20, v16);
        return sub_214B92DC4(v42);
      case 8:
        sub_214CA5AC4(v46, v27);
        v57 = v27;
        v10 = sub_214CCD2B4();
        (*(*(v10 - 8) + 16))(v20, v27);
        return sub_214CA4784(v27);
      case 9:
        sub_214CA5234(v46, v25);
        v58 = v25;
        v11 = sub_214CCD2B4();
        (*(*(v11 - 8) + 16))(v20, v25);
        return sub_214BAB488(v25);
      default:
        sub_214BB2898(v46, v23);
        v59 = v23;
        v15 = &v23[*(v21 + 20)];
        v12 = sub_214CCD2B4();
        (*(*(v12 - 8) + 16))(v20, v15);
        return sub_214BB22B4(v23);
    }
  }

  else
  {
    sub_214B93174(v46, v42);
    v51 = v42;
    v19 = &v42[*(v40 + 24)];
    v2 = sub_214CCD2B4();
    (*(*(v2 - 8) + 16))(v20, v19);
    return sub_214B92DC4(v42);
  }
}

__n128 sub_214CA5234(uint64_t a1, uint64_t a2)
{
  v2 = sub_214CCD2B4();
  (*(*(v2 - 8) + 32))(a2, a1);
  v28 = type metadata accessor for SearchItem.InstantAnswer();
  *(a2 + v28[5]) = *(a1 + v28[5]);
  *(a2 + v28[6]) = *(a1 + v28[6]);
  *(a2 + v28[7]) = *(a1 + v28[7]);
  *(a2 + v28[8]) = *(a1 + v28[8]);
  v23 = v28[9];
  v25 = sub_214CCCEB4();
  v24 = *(v25 - 8);
  v26 = *(v24 + 32);
  v26(a2 + v23, a1 + v23);
  (v26)(a2 + v28[10], a1 + v28[10], v25);
  *(a2 + v28[11]) = *(a1 + v28[11]);
  v29 = v28[12];
  v31 = sub_214CCD154();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  if ((v33)(a1 + v29, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48);
    memcpy((a2 + v29), (a1 + v29), *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v32 + 32))();
    (*(v32 + 56))(a2 + v29, 0, 1, v31);
  }

  __dst = (a2 + v28[13]);
  __src = (a1 + v28[13]);
  v20 = sub_214CCD2F4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if ((v22)(__src, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300);
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v21 + 32))(__dst, __src, v20);
    (*(v21 + 56))(__dst, 0, 1, v20);
  }

  v16 = (a2 + v28[14]);
  v17 = (a1 + v28[14]);
  if (v22())
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300);
    memcpy(v16, v17, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v21 + 32))(v16, v17, v20);
    (*(v21 + 56))(v16, 0, 1, v20);
  }

  v14 = (a2 + v28[15]);
  v15 = (a1 + v28[15]);
  if (v33())
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48);
    memcpy(v14, v15, *(*(v6 - 8) + 64));
  }

  else
  {
    (*(v32 + 32))(v14, v15, v31);
    (*(v32 + 56))(v14, 0, 1, v31);
  }

  *(a2 + v28[16]) = *(a1 + v28[16]);
  *(a2 + v28[17]) = *(a1 + v28[17]);
  *(a2 + v28[18]) = *(a1 + v28[18]);
  *(a2 + v28[19]) = *(a1 + v28[19]);
  (v26)(a2 + v28[20], a1 + v28[20], v25);
  v12 = (a2 + v28[21]);
  v13 = (a1 + v28[21]);
  if ((*(v24 + 48))())
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36308);
    memcpy(v12, v13, *(*(v7 - 8) + 64));
  }

  else
  {
    (v26)(v12, v13, v25);
    (*(v24 + 56))(v12, 0, 1, v25);
  }

  v10 = (a2 + v28[22]);
  v11 = (a1 + v28[22]);
  if (v22())
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300);
    memcpy(v10, v11, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v21 + 32))(v10, v11, v20);
    (*(v21 + 56))(v10, 0, 1, v20);
  }

  *(a2 + v28[23]) = *(a1 + v28[23]);
  *(a2 + v28[24]) = *(a1 + v28[24]);
  *(a2 + v28[25]) = *(a1 + v28[25]);
  result = *(a1 + v28[26]);
  *(a2 + v28[26]) = result;
  return result;
}

uint64_t sub_214CA5AC4(uint64_t a1, uint64_t a2)
{
  v2 = sub_214CCD2B4();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = type metadata accessor for SearchItem.TopHit();
  result = a2;
  *(a2 + *(v3 + 20)) = *(a1 + *(v3 + 20));
  *(a2 + *(v3 + 24)) = *(a1 + *(v3 + 24));
  return result;
}

__n128 sub_214CA5B5C(uint64_t a1, uint64_t a2)
{
  v2 = sub_214CCD2B4();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = type metadata accessor for SearchItem.Photo();
  *(a2 + v3[5]) = *(a1 + v3[5]);
  result = *(a1 + v3[6]);
  *(a2 + v3[6]) = result;
  *(a2 + v3[7]) = *(a1 + v3[7]);
  *(a2 + v3[8]) = *(a1 + v3[8]);
  return result;
}

uint64_t SearchItem.hash(into:)(uint64_t a1)
{
  v5 = a1;
  v11 = 0;
  v10 = 0;
  v9 = sub_214CCD2B4();
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v4 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v8 = &v4 - v4;
  v11 = v2;
  v10 = v1;
  SearchItem.id.getter(&v4 - v4);
  sub_214CCD294();
  return (*(v6 + 8))(v8, v9);
}

uint64_t static SearchItem.== infix(_:_:)(uint64_t a1, void *a2)
{
  v88 = a1;
  v114 = a2;
  v124 = 0;
  v123 = 0;
  v86 = 0;
  v42 = (*(*(type metadata accessor for SearchItem.Link() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v43 = &v40[-v42];
  v44 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v45 = &v40[-v44];
  v46 = (*(*(type metadata accessor for SearchItem.InstantAnswer() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v86);
  v47 = &v40[-v46];
  v48 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v49 = &v40[-v48];
  v50 = (*(*(type metadata accessor for SearchItem.TopHit() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v86);
  v51 = &v40[-v50];
  v52 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v53 = &v40[-v52];
  v54 = (*(*(type metadata accessor for SearchItem.LegacySuggested() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v86);
  v55 = &v40[-v54];
  v56 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v57 = &v40[-v56];
  v58 = (*(*(type metadata accessor for SearchItem.Document() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v86);
  v59 = &v40[-v58];
  v60 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v61 = &v40[-v60];
  v62 = (*(*(type metadata accessor for SearchItem.Location() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v86);
  v63 = &v40[-v62];
  v64 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13);
  v65 = &v40[-v64];
  v66 = (*(*(type metadata accessor for SearchItem.Photo() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v86);
  v67 = &v40[-v66];
  v68 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v69 = &v40[-v68];
  v70 = (*(*(type metadata accessor for SearchItem.Contact() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v86);
  v71 = &v40[-v70];
  v72 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v73 = &v40[-v72];
  v18 = type metadata accessor for SearchItem.Generic();
  v74 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v75 = &v40[-v74];
  v76 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v40[-v74]);
  v77 = &v40[-v76];
  v78 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v40[-v76]);
  v79 = &v40[-v78];
  v80 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v40[-v78]);
  v81 = &v40[-v80];
  v82 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v40[-v80]);
  v83 = &v40[-v82];
  v84 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v40[-v82]);
  v85 = &v40[-v84];
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38580);
  v87 = (*(*(v118 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v86);
  v120 = &v40[-v87];
  v119 = type metadata accessor for SearchItem();
  v112 = *(*(v119 - 8) + 64);
  v89 = (v112 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v88);
  v90 = &v40[-v89];
  v91 = (v112 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24);
  v92 = &v40[-v91];
  v93 = (v112 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v94 = &v40[-v93];
  v95 = (v112 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v96 = &v40[-v95];
  v97 = (v112 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27);
  v98 = &v40[-v97];
  v99 = (v112 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28);
  v100 = &v40[-v99];
  v101 = (v112 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29);
  v102 = &v40[-v101];
  v103 = (v112 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30);
  v104 = &v40[-v103];
  v105 = (v112 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v31);
  v106 = &v40[-v105];
  v107 = (v112 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32);
  v108 = &v40[-v107];
  v109 = (v112 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v33);
  v110 = &v40[-v109];
  v111 = (v112 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34);
  v117 = &v40[-v111];
  v113 = (v112 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35);
  v115 = &v40[-v113];
  v124 = v36;
  v123 = v37;
  sub_214B9A920(v36, &v40[-v113]);
  sub_214B9A920(v114, v117);
  v116 = *(v118 + 48);
  sub_214BA3648(v115, v120);
  sub_214BA3648(v117, &v120[v116]);
  v121 = *(v118 + 48);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    switch(EnumCaseMultiPayload)
    {
      case 1:
        sub_214B9A920(v120, v108);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_214B5BC5C(v108);
          goto LABEL_67;
        }

        sub_214B5BFEC(v108, v73);
        sub_214B5BFEC(&v120[v121], v71);
        if (static SearchItem.Contact.== infix(_:_:)(v73, v71))
        {
          sub_214B5BC5C(v71);
          sub_214B5BC5C(v73);
          sub_214B9C35C(v120);
          v41 = 1;
        }

        else
        {
          sub_214B5BC5C(v71);
          sub_214B5BC5C(v73);
          sub_214B9C35C(v120);
          v41 = 0;
        }

        break;
      case 2:
        sub_214B9A920(v120, v106);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          sub_214C883D4(v106);
          goto LABEL_67;
        }

        sub_214CA5B5C(v106, v69);
        sub_214CA5B5C(&v120[v121], v67);
        if (static SearchItem.Photo.== infix(_:_:)(v69, v67))
        {
          sub_214C883D4(v67);
          sub_214C883D4(v69);
          sub_214B9C35C(v120);
          v41 = 1;
        }

        else
        {
          sub_214C883D4(v67);
          sub_214C883D4(v69);
          sub_214B9C35C(v120);
          v41 = 0;
        }

        break;
      case 3:
        sub_214B9A920(v120, v104);
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          sub_214BB4214(v104);
          goto LABEL_67;
        }

        sub_214BB4808(v104, v65);
        sub_214BB4808(&v120[v121], v63);
        if (static SearchItem.Location.== infix(_:_:)(v65, v63))
        {
          sub_214BB4214(v63);
          sub_214BB4214(v65);
          sub_214B9C35C(v120);
          v41 = 1;
        }

        else
        {
          sub_214BB4214(v63);
          sub_214BB4214(v65);
          sub_214B9C35C(v120);
          v41 = 0;
        }

        break;
      case 4:
        sub_214B9A920(v120, v102);
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          sub_214B62C28(v102);
          goto LABEL_67;
        }

        sub_214B633A4(v102, v61);
        sub_214B633A4(&v120[v121], v59);
        if (static SearchItem.Document.== infix(_:_:)(v61, v59))
        {
          sub_214B62C28(v59);
          sub_214B62C28(v61);
          sub_214B9C35C(v120);
          v41 = 1;
        }

        else
        {
          sub_214B62C28(v59);
          sub_214B62C28(v61);
          sub_214B9C35C(v120);
          v41 = 0;
        }

        break;
      case 5:
        sub_214B9A920(v120, v100);
        if (swift_getEnumCaseMultiPayload() != 5)
        {
          sub_214BB01BC(v100);
          goto LABEL_67;
        }

        sub_214CA46B0(v100, v57);
        sub_214CA46B0(&v120[v121], v55);
        if (static SearchItem.LegacySuggested.== infix(_:_:)(v57, v55))
        {
          sub_214BB01BC(v55);
          sub_214BB01BC(v57);
          sub_214B9C35C(v120);
          v41 = 1;
        }

        else
        {
          sub_214BB01BC(v55);
          sub_214BB01BC(v57);
          sub_214B9C35C(v120);
          v41 = 0;
        }

        break;
      case 6:
        sub_214B9A920(v120, v98);
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          sub_214B92DC4(v98);
          goto LABEL_67;
        }

        sub_214B93174(v98, v81);
        sub_214B93174(&v120[v121], v79);
        if (static SearchItem.Generic.== infix(_:_:)(v81, v79))
        {
          sub_214B92DC4(v79);
          sub_214B92DC4(v81);
          sub_214B9C35C(v120);
          v41 = 1;
        }

        else
        {
          sub_214B92DC4(v79);
          sub_214B92DC4(v81);
          sub_214B9C35C(v120);
          v41 = 0;
        }

        break;
      case 7:
        sub_214B9A920(v120, v96);
        if (swift_getEnumCaseMultiPayload() != 7)
        {
          sub_214B92DC4(v96);
          goto LABEL_67;
        }

        sub_214B93174(v96, v77);
        sub_214B93174(&v120[v121], v75);
        if (static SearchItem.Generic.== infix(_:_:)(v77, v75))
        {
          sub_214B92DC4(v75);
          sub_214B92DC4(v77);
          sub_214B9C35C(v120);
          v41 = 1;
        }

        else
        {
          sub_214B92DC4(v75);
          sub_214B92DC4(v77);
          sub_214B9C35C(v120);
          v41 = 0;
        }

        break;
      case 8:
        sub_214B9A920(v120, v94);
        if (swift_getEnumCaseMultiPayload() != 8)
        {
          sub_214CA4784(v94);
          goto LABEL_67;
        }

        sub_214CA5AC4(v94, v53);
        sub_214CA5AC4(&v120[v121], v51);
        if (static SearchItem.TopHit.== infix(_:_:)(v53, v51))
        {
          sub_214CA4784(v51);
          sub_214CA4784(v53);
          sub_214B9C35C(v120);
          v41 = 1;
        }

        else
        {
          sub_214CA4784(v51);
          sub_214CA4784(v53);
          sub_214B9C35C(v120);
          v41 = 0;
        }

        break;
      case 9:
        sub_214B9A920(v120, v92);
        if (swift_getEnumCaseMultiPayload() != 9)
        {
          sub_214BAB488(v92);
          goto LABEL_67;
        }

        sub_214CA5234(v92, v49);
        sub_214CA5234(&v120[v121], v47);
        if (static SearchItem.InstantAnswer.== infix(_:_:)(v49, v47))
        {
          sub_214BAB488(v47);
          sub_214BAB488(v49);
          sub_214B9C35C(v120);
          v41 = 1;
        }

        else
        {
          sub_214BAB488(v47);
          sub_214BAB488(v49);
          sub_214B9C35C(v120);
          v41 = 0;
        }

        break;
      default:
        sub_214B9A920(v120, v90);
        v38 = swift_getEnumCaseMultiPayload();
        if (v38 == 10)
        {
          sub_214BB2898(v90, v45);
          sub_214BB2898(&v120[v121], v43);
          if (static SearchItem.Link.== infix(_:_:)(v45, v43))
          {
            sub_214BB22B4(v43);
            sub_214BB22B4(v45);
            sub_214B9C35C(v120);
            v41 = 1;
          }

          else
          {
            sub_214BB22B4(v43);
            sub_214BB22B4(v45);
            sub_214B9C35C(v120);
            v41 = 0;
          }

          return v41 & 1;
        }

        sub_214BB22B4(v90);
LABEL_67:
        sub_214CA7274(v120);
        v41 = 0;
        return v41 & 1;
    }
  }

  else
  {
    sub_214B9A920(v120, v110);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_214B92DC4(v110);
      goto LABEL_67;
    }

    sub_214B93174(v110, v85);
    sub_214B93174(&v120[v121], v83);
    if (static SearchItem.Generic.== infix(_:_:)(v85, v83))
    {
      sub_214B92DC4(v83);
      sub_214B92DC4(v85);
      sub_214B9C35C(v120);
      v41 = 1;
    }

    else
    {
      sub_214B92DC4(v83);
      sub_214B92DC4(v85);
      sub_214B9C35C(v120);
      v41 = 0;
    }
  }

  return v41 & 1;
}

uint64_t sub_214CA7274(uint64_t a1)
{
  type metadata accessor for SearchItem();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    switch(EnumCaseMultiPayload)
    {
      case 1:

        v91 = a1 + *(type metadata accessor for SearchItem.Contact() + 24);
        v2 = sub_214CCD2B4();
        (*(*(v2 - 8) + 8))(v91);

        break;
      case 2:
        v3 = sub_214CCD2B4();
        (*(*(v3 - 8) + 8))(a1);
        v90 = type metadata accessor for SearchItem.Photo();

        MEMORY[0x277D82BD8](*(a1 + *(v90 + 28)));

        break;
      case 3:
        v4 = sub_214CCD2B4();
        (*(*(v4 - 8) + 8))(a1);
        type metadata accessor for SearchItem.Location();

        break;
      case 4:
        v5 = sub_214CCD2B4();
        (*(*(v5 - 8) + 8))(a1);
        v89 = type metadata accessor for SearchItem.Document();

        v88 = a1 + *(v89 + 32);
        v6 = sub_214CCD154();
        (*(*(v6 - 8) + 8))(v88);

        break;
      case 5:
        v7 = sub_214CCD2B4();
        (*(*(v7 - 8) + 8))(a1);
        v87 = type metadata accessor for SearchItem.LegacySuggested();
        MEMORY[0x277D82BD8](*(a1 + *(v87 + 20)));

        MEMORY[0x277D82BD8](*(a1 + *(v87 + 32)));
        break;
      case 6:

        v86 = type metadata accessor for SearchItem.Generic();
        v85 = a1 + v86[6];
        v8 = sub_214CCD2B4();
        (*(*(v8 - 8) + 8))(v85);
        MEMORY[0x277D82BD8](*(a1 + v86[7]));
        MEMORY[0x277D82BD8](*(a1 + v86[8]));
        MEMORY[0x277D82BD8](*(a1 + v86[9]));

        break;
      case 7:

        v84 = type metadata accessor for SearchItem.Generic();
        v83 = a1 + v84[6];
        v9 = sub_214CCD2B4();
        (*(*(v9 - 8) + 8))(v83);
        MEMORY[0x277D82BD8](*(a1 + v84[7]));
        MEMORY[0x277D82BD8](*(a1 + v84[8]));
        MEMORY[0x277D82BD8](*(a1 + v84[9]));

        break;
      case 8:
        v10 = sub_214CCD2B4();
        (*(*(v10 - 8) + 8))(a1);
        v82 = type metadata accessor for SearchItem.TopHit();
        MEMORY[0x277D82BD8](*(a1 + *(v82 + 20)));

        break;
      case 9:
        v11 = sub_214CCD2B4();
        (*(*(v11 - 8) + 8))(a1);
        v77 = type metadata accessor for SearchItem.InstantAnswer();

        v73 = a1 + v77[9];
        v75 = sub_214CCCEB4();
        v74 = *(v75 - 8);
        v76 = *(v74 + 8);
        v76(v73);
        (v76)(a1 + v77[10], v75);

        v78 = a1 + v77[12];
        v79 = sub_214CCD154();
        v80 = *(v79 - 8);
        v81 = *(v80 + 48);
        if (!(v81)(v78, 1))
        {
          (*(v80 + 8))(v78, v79);
        }

        v69 = a1 + v77[13];
        v70 = sub_214CCD2F4();
        v71 = *(v70 - 8);
        v72 = *(v71 + 48);
        if (!(v72)(v69, 1))
        {
          (*(v71 + 8))(v69, v70);
        }

        v68 = a1 + v77[14];
        if (!v72())
        {
          (*(v71 + 8))(v68, v70);
        }

        v67 = a1 + v77[15];
        if (!v81())
        {
          (*(v80 + 8))(v67, v79);
        }

        (v76)(a1 + v77[20], v75);
        v66 = a1 + v77[21];
        if (!(*(v74 + 48))())
        {
          (v76)(v66, v75);
        }

        v65 = a1 + v77[22];
        if (!v72())
        {
          (*(v71 + 8))(v65, v70);
        }

        break;
      case 10:

        v64 = type metadata accessor for SearchItem.Link();
        v62 = a1 + *(v64 + 20);
        v12 = sub_214CCD2B4();
        (*(*(v12 - 8) + 8))(v62);
        v63 = a1 + *(v64 + 24);
        v13 = sub_214CCD154();
        (*(*(v13 - 8) + 8))(v63);

        break;
    }
  }

  else
  {

    v93 = type metadata accessor for SearchItem.Generic();
    v92 = a1 + v93[6];
    v1 = sub_214CCD2B4();
    (*(*(v1 - 8) + 8))(v92);
    MEMORY[0x277D82BD8](*(a1 + v93[7]));
    MEMORY[0x277D82BD8](*(a1 + v93[8]));
    MEMORY[0x277D82BD8](*(a1 + v93[9]));
  }

  v60 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38580) + 48);
  v61 = swift_getEnumCaseMultiPayload();
  if (v61)
  {
    switch(v61)
    {
      case 1:

        v57 = v60 + *(type metadata accessor for SearchItem.Contact() + 24);
        v15 = sub_214CCD2B4();
        (*(*(v15 - 8) + 8))(v57);

        break;
      case 2:
        v16 = sub_214CCD2B4();
        (*(*(v16 - 8) + 8))(v60);
        v56 = type metadata accessor for SearchItem.Photo();

        MEMORY[0x277D82BD8](*(v60 + *(v56 + 28)));

        break;
      case 3:
        v17 = sub_214CCD2B4();
        (*(*(v17 - 8) + 8))(v60);
        type metadata accessor for SearchItem.Location();

        break;
      case 4:
        v18 = sub_214CCD2B4();
        (*(*(v18 - 8) + 8))(v60);
        v55 = type metadata accessor for SearchItem.Document();

        v54 = v60 + *(v55 + 32);
        v19 = sub_214CCD154();
        (*(*(v19 - 8) + 8))(v54);

        break;
      case 5:
        v20 = sub_214CCD2B4();
        (*(*(v20 - 8) + 8))(v60);
        v53 = type metadata accessor for SearchItem.LegacySuggested();
        MEMORY[0x277D82BD8](*(v60 + *(v53 + 20)));

        MEMORY[0x277D82BD8](*(v60 + *(v53 + 32)));
        break;
      case 6:

        v52 = type metadata accessor for SearchItem.Generic();
        v51 = v60 + v52[6];
        v21 = sub_214CCD2B4();
        (*(*(v21 - 8) + 8))(v51);
        MEMORY[0x277D82BD8](*(v60 + v52[7]));
        MEMORY[0x277D82BD8](*(v60 + v52[8]));
        MEMORY[0x277D82BD8](*(v60 + v52[9]));

        break;
      case 7:

        v50 = type metadata accessor for SearchItem.Generic();
        v49 = v60 + v50[6];
        v22 = sub_214CCD2B4();
        (*(*(v22 - 8) + 8))(v49);
        MEMORY[0x277D82BD8](*(v60 + v50[7]));
        MEMORY[0x277D82BD8](*(v60 + v50[8]));
        MEMORY[0x277D82BD8](*(v60 + v50[9]));

        break;
      case 8:
        v23 = sub_214CCD2B4();
        (*(*(v23 - 8) + 8))(v60);
        v48 = type metadata accessor for SearchItem.TopHit();
        MEMORY[0x277D82BD8](*(v60 + *(v48 + 20)));

        break;
      case 9:
        v24 = sub_214CCD2B4();
        (*(*(v24 - 8) + 8))(v60);
        v43 = type metadata accessor for SearchItem.InstantAnswer();

        v39 = v60 + v43[9];
        v41 = sub_214CCCEB4();
        v40 = *(v41 - 8);
        v42 = *(v40 + 8);
        v42(v39);
        (v42)(v60 + v43[10], v41);

        v44 = v60 + v43[12];
        v45 = sub_214CCD154();
        v46 = *(v45 - 8);
        v47 = *(v46 + 48);
        if (!(v47)(v44, 1))
        {
          (*(v46 + 8))(v44, v45);
        }

        v35 = v60 + v43[13];
        v36 = sub_214CCD2F4();
        v37 = *(v36 - 8);
        v38 = *(v37 + 48);
        if (!(v38)(v35, 1))
        {
          (*(v37 + 8))(v35, v36);
        }

        v34 = v60 + v43[14];
        if (!v38())
        {
          (*(v37 + 8))(v34, v36);
        }

        v33 = v60 + v43[15];
        if (!v47())
        {
          (*(v46 + 8))(v33, v45);
        }

        (v42)(v60 + v43[20], v41);
        v32 = v60 + v43[21];
        if (!(*(v40 + 48))())
        {
          (v42)(v32, v41);
        }

        v31 = v60 + v43[22];
        if (!v38())
        {
          (*(v37 + 8))(v31, v36);
        }

        break;
      case 10:

        v30 = type metadata accessor for SearchItem.Link();
        v28 = v60 + *(v30 + 20);
        v25 = sub_214CCD2B4();
        (*(*(v25 - 8) + 8))(v28);
        v29 = v60 + *(v30 + 24);
        v26 = sub_214CCD154();
        (*(*(v26 - 8) + 8))(v29);

        break;
    }
  }

  else
  {

    v59 = type metadata accessor for SearchItem.Generic();
    v58 = v60 + v59[6];
    v14 = sub_214CCD2B4();
    (*(*(v14 - 8) + 8))(v58);
    MEMORY[0x277D82BD8](*(v60 + v59[7]));
    MEMORY[0x277D82BD8](*(v60 + v59[8]));
    MEMORY[0x277D82BD8](*(v60 + v59[9]));
  }

  return a1;
}

uint64_t SearchItem.hashValue.getter()
{
  type metadata accessor for SearchItem();
  sub_214CA8DEC();
  return sub_214CD0114();
}

unint64_t sub_214CA8DEC()
{
  v2 = qword_280C7E1E8[0];
  if (!qword_280C7E1E8[0])
  {
    type metadata accessor for SearchItem();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_280C7E1E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t SearchItem.accessibilityDescription.getter()
{
  v94 = 0;
  v93 = 0;
  v96 = 0;
  v95 = 0;
  v78 = 0;
  v76 = (*(*(type metadata accessor for SearchItem.Generic() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v77 = &v27 - v76;
  v96 = &v27 - v76;
  v79 = type metadata accessor for SearchItem.LegacySuggested();
  v80 = (*(*(v79 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v78);
  v81 = &v27 - v80;
  v95 = &v27 - v80;
  v84 = type metadata accessor for SearchItem();
  v83 = (*(*(v84 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v82);
  v85 = &v27 - v83;
  v94 = v0;
  sub_214B9A920(v0, (&v27 - v83));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v73 = sub_214CCF614();
        v72 = v1;
        sub_214B5BC5C(v85);
        v74 = v73;
        v75 = v72;
        break;
      case 2:
        v71 = sub_214CCF614();
        v70 = v2;
        sub_214C883D4(v85);
        v74 = v71;
        v75 = v70;
        break;
      case 3:
        v69 = sub_214CCF614();
        v68 = v3;
        sub_214BB4214(v85);
        v74 = v69;
        v75 = v68;
        break;
      case 4:
        v67 = sub_214CCF614();
        v66 = v4;
        sub_214B62C28(v85);
        v74 = v67;
        v75 = v66;
        break;
      case 5:
        sub_214CA46B0(v85, v81);
        v95 = v81;
        v65 = v81[*(v79 + 36)];
        if (v65)
        {
          if (v65 == 1)
          {
            v62 = sub_214CCF614();
            v61 = v6;
            sub_214BB01BC(v81);
            v74 = v62;
            v75 = v61;
          }

          else
          {
            v60 = sub_214CCF614();
            v59 = v7;
            sub_214BB01BC(v81);
            v74 = v60;
            v75 = v59;
          }
        }

        else
        {
          v64 = sub_214CCF614();
          v63 = v5;
          sub_214BB01BC(v81);
          v74 = v64;
          v75 = v63;
        }

        break;
      case 6:
        sub_214B93174(v85, v77);
        v96 = v77;
        v47 = 11;
        v8 = sub_214CD03B4();
        v54 = &v88;
        v88 = v8;
        v89 = v9;
        v52 = 1;
        v10 = sub_214CCF614();
        v48 = v11;
        MEMORY[0x21605E650](v10);

        v49 = *v77;
        v50 = *(v77 + 1);

        v51 = v87;
        v87[0] = v49;
        v87[1] = v50;
        sub_214CD0394();
        sub_214A61B48();
        v12 = sub_214CCF614();
        v53 = v13;
        MEMORY[0x21605E650](v12);

        v56 = v88;
        v55 = v89;

        sub_214A61B48();
        v58 = sub_214CCF5F4();
        v57 = v14;
        sub_214B92DC4(v77);
        v74 = v58;
        v75 = v57;
        break;
      case 7:
        v93 = v77;
        sub_214B93174(v85, v77);
        v93 = v77;
        v35 = 7;
        v15 = sub_214CD03B4();
        v42 = &v91;
        v91 = v15;
        v92 = v16;
        v40 = 1;
        v17 = sub_214CCF614();
        v36 = v18;
        MEMORY[0x21605E650](v17);

        v37 = *v77;
        v38 = *(v77 + 1);

        v39 = v90;
        v90[0] = v37;
        v90[1] = v38;
        sub_214CD0394();
        sub_214A61B48();
        v19 = sub_214CCF614();
        v41 = v20;
        MEMORY[0x21605E650](v19);

        v44 = v91;
        v43 = v92;

        sub_214A61B48();
        v46 = sub_214CCF5F4();
        v45 = v21;
        sub_214B92DC4(v77);
        v74 = v46;
        v75 = v45;
        break;
      case 8:
        v32 = sub_214CCF614();
        v31 = v23;
        sub_214CA4784(v85);
        v74 = v32;
        v75 = v31;
        break;
      case 9:
        v30 = sub_214CCF614();
        v29 = v24;
        sub_214BAB488(v85);
        v74 = v30;
        v75 = v29;
        break;
      default:
        v28 = sub_214CCF614();
        v27 = v25;
        sub_214BB22B4(v85);
        v74 = v28;
        v75 = v27;
        break;
    }
  }

  else
  {
    v34 = sub_214CCF614();
    v33 = v22;
    sub_214B92DC4(v85);
    v74 = v34;
    v75 = v33;
  }

  return v74;
}

unint64_t sub_214CA9828()
{
  v2 = qword_280C7E1E0;
  if (!qword_280C7E1E0)
  {
    type metadata accessor for SearchItem();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7E1E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214CA99C0()
{
  v10 = type metadata accessor for SearchItem.Generic();
  if (v0 <= 0x3F)
  {
    v10 = type metadata accessor for SearchItem.Contact();
    if (v1 <= 0x3F)
    {
      v10 = type metadata accessor for SearchItem.Photo();
      if (v2 <= 0x3F)
      {
        v10 = type metadata accessor for SearchItem.Location();
        if (v3 <= 0x3F)
        {
          v10 = type metadata accessor for SearchItem.Document();
          if (v4 <= 0x3F)
          {
            v10 = type metadata accessor for SearchItem.LegacySuggested();
            if (v5 <= 0x3F)
            {
              v10 = type metadata accessor for SearchItem.TopHit();
              if (v6 <= 0x3F)
              {
                v10 = type metadata accessor for SearchItem.InstantAnswer();
                if (v7 <= 0x3F)
                {
                  v10 = type metadata accessor for SearchItem.Link();
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v10;
}

id sub_214CA9BDC()
{
  v0 = [objc_opt_self() mainBundle];

  return v0;
}

uint64_t sub_214CA9C48()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI19SearchPreparingView_stackView);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214CA9C90()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI19SearchPreparingView_titleLabel);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214CA9CD8()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI19SearchPreparingView_explanationLabel);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214CA9D20()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI19SearchPreparingView_indexStatus);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214CA9D90(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI19SearchPreparingView_indexStatus);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double sub_214CA9E28()
{
  v3 = *(v0 + OBJC_IVAR____TtC6MailUI19SearchPreparingView_titleLabel);
  MEMORY[0x277D82BE0](v3);
  sub_214CCF614();
  v2 = sub_214CCF544();

  [v3 0x1FB02AAF8];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
  v5 = *(v0 + OBJC_IVAR____TtC6MailUI19SearchPreparingView_explanationLabel);
  MEMORY[0x277D82BE0](v5);
  sub_214CCF614();
  v4 = sub_214CCF544();

  [v5 0x1FB02AAF8];
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  return result;
}

uint64_t sub_214CA9F5C()
{
  sub_214CCF614();
  v56 = v1;
  sub_214CCF614();
  v57 = v2;
  sub_214CCF614();
  v58 = v3;
  v59 = OBJC_IVAR____TtC6MailUI19SearchPreparingView_indexStatus;
  v60 = (v0 + OBJC_IVAR____TtC6MailUI19SearchPreparingView_indexStatus);
  swift_beginAccess();
  if (*v60)
  {
    v51 = *(v55 + v59);
    MEMORY[0x277D82BE0](v51);
    swift_endAccess();
    v52 = [v51 scenario];
    MEMORY[0x277D82BD8](v51);
    v53 = v52;
    v54 = 0;
  }

  else
  {
    swift_endAccess();
    v53 = 0;
    v54 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA385A8);
  if (v54)
  {
LABEL_42:
    sub_214CA9E28();
    goto LABEL_44;
  }

  if (v53)
  {
    if (v53 != 1)
    {
      if (v53 != 2)
      {
        sub_214CD03E4();
        __break(1u);
      }

      goto LABEL_42;
    }

    v28 = *(v55 + OBJC_IVAR____TtC6MailUI19SearchPreparingView_titleLabel);
    MEMORY[0x277D82BE0](v28);
    sub_214CCF614();
    v26 = sub_214CA9BDC();
    sub_214B1C228();
    sub_214CCCF54();

    MEMORY[0x277D82BD8](v26);

    v27 = sub_214CCF544();

    [v28 setText_];
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    v29 = *(v55 + OBJC_IVAR____TtC6MailUI19SearchPreparingView_explanationLabel);
    MEMORY[0x277D82BE0](v29);
    v30 = MobileGestalt_get_current_device();
    if (v30)
    {
      v25 = v30;
    }

    else
    {
      sub_214CD01F4();
      __break(1u);
    }

    wapiCapability = MobileGestalt_get_wapiCapability();
    MEMORY[0x277D82BD8](v25);
    if (wapiCapability)
    {
      v21 = objc_opt_self();
      sub_214CCF614();
      v22 = sub_214CCF544();

      v23 = [v21 modelSpecificLocalizedStringKeyForKey_];
      MEMORY[0x277D82BD8](v22);
      if (v23)
      {
        sub_214CCF564();
        v19 = v6;
        MEMORY[0x277D82BD8](v23);
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      if (!v20)
      {
        sub_214CD01F4();
        __break(1u);
      }

      v18 = sub_214CA9BDC();
      sub_214B1C228();
      v10 = v57;
      sub_214CCCF54();

      MEMORY[0x277D82BD8](v18);
    }

    else
    {
      v15 = objc_opt_self();
      sub_214CCF614();
      v16 = sub_214CCF544();

      v17 = [v15 modelSpecificLocalizedStringKeyForKey_];
      MEMORY[0x277D82BD8](v16);
      if (v17)
      {
        sub_214CCF564();
        v13 = v7;
        MEMORY[0x277D82BD8](v17);
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      if (!v14)
      {
        sub_214CD01F4();
        __break(1u);
      }

      v12 = sub_214CA9BDC();
      sub_214B1C228();
      v10 = v58;
      sub_214CCCF54();

      MEMORY[0x277D82BD8](v12);
    }

    v11 = sub_214CCF544();

    [v29 setText_];
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v29);
  }

  else
  {
    v48 = *(v55 + OBJC_IVAR____TtC6MailUI19SearchPreparingView_titleLabel);
    MEMORY[0x277D82BE0](v48);
    sub_214CCF614();
    v46 = sub_214CA9BDC();
    sub_214B1C228();
    sub_214CCCF54();

    MEMORY[0x277D82BD8](v46);

    v47 = sub_214CCF544();

    [v48 setText_];
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v48);
    v49 = *(v55 + OBJC_IVAR____TtC6MailUI19SearchPreparingView_explanationLabel);
    MEMORY[0x277D82BE0](v49);
    v50 = MobileGestalt_get_current_device();
    if (v50)
    {
      v45 = v50;
    }

    else
    {
      sub_214CD01F4();
      __break(1u);
    }

    v44 = MobileGestalt_get_wapiCapability();
    MEMORY[0x277D82BD8](v45);
    if (v44)
    {
      v41 = objc_opt_self();
      sub_214CCF614();
      v42 = sub_214CCF544();

      v43 = [v41 modelSpecificLocalizedStringKeyForKey_];
      MEMORY[0x277D82BD8](v42);
      if (v43)
      {
        sub_214CCF564();
        v39 = v4;
        MEMORY[0x277D82BD8](v43);
        v40 = v39;
      }

      else
      {
        v40 = 0;
      }

      if (!v40)
      {
        sub_214CD01F4();
        __break(1u);
      }

      v38 = sub_214CA9BDC();
      sub_214B1C228();
      v9 = v57;
      sub_214CCCF54();

      MEMORY[0x277D82BD8](v38);
    }

    else
    {
      v35 = objc_opt_self();
      sub_214CCF614();
      v36 = sub_214CCF544();

      v37 = [v35 modelSpecificLocalizedStringKeyForKey_];
      MEMORY[0x277D82BD8](v36);
      if (v37)
      {
        sub_214CCF564();
        v33 = v5;
        MEMORY[0x277D82BD8](v37);
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      if (!v34)
      {
        sub_214CD01F4();
        __break(1u);
      }

      v32 = sub_214CA9BDC();
      sub_214B1C228();
      v9 = v58;
      sub_214CCCF54();

      MEMORY[0x277D82BD8](v32);
    }

    v31 = sub_214CCF544();

    [v49 setText_];
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v49);
  }

LABEL_44:
}

uint64_t sub_214CAAD84(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI19SearchPreparingView_indexStatus);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return sub_214CA9F5C();
}

char *sub_214CAAE88(double a1, double a2, double a3, double a4)
{
  *&v10 = a1;
  *(&v10 + 1) = a2;
  *&v11 = a3;
  *(&v11 + 1) = a4;
  ObjectType = swift_getObjectType();
  v14 = v10;
  v15 = v11;
  v16 = v4;
  v6 = OBJC_IVAR____TtC6MailUI19SearchPreparingView_stackView;
  sub_214A73FCC();
  *&v4[v6] = sub_214A61730();
  v7 = OBJC_IVAR____TtC6MailUI19SearchPreparingView_titleLabel;
  sub_214A73F68();
  *&v16[v7] = sub_214A61730();
  v8 = OBJC_IVAR____TtC6MailUI19SearchPreparingView_explanationLabel;
  *&v16[v8] = sub_214A61730();
  *&v16[OBJC_IVAR____TtC6MailUI19SearchPreparingView_indexStatus] = 0;
  v13.receiver = v16;
  v13.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v13, sel_initWithFrame_, v10, v11);
  MEMORY[0x277D82BE0](v12);
  v16 = v12;
  sub_214CAB028();
  MEMORY[0x277D82BD8](v16);
  return v12;
}

double sub_214CAB028()
{
  v4 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_titleLabel];
  MEMORY[0x277D82BE0](v4);
  v3 = [objc_opt_self() 0x1FBB7A66ELL];
  [v4 0x1FB30BC78];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  v8 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_titleLabel];
  MEMORY[0x277D82BE0](v8);
  v5 = objc_opt_self();
  v6 = *MEMORY[0x277D769D0];
  MEMORY[0x277D82BE0](*MEMORY[0x277D769D0]);
  v7 = [v5 0x1FBACF65ALL];
  [v8 0x1FAAB1478];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v9 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_titleLabel];
  [v9 0x1FAC2AD78];
  MEMORY[0x277D82BD8](v9);
  v10 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_titleLabel];
  [v10 0x1FAF65978];
  MEMORY[0x277D82BD8](v10);
  v12 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_explanationLabel];
  MEMORY[0x277D82BE0](v12);
  v11 = [objc_opt_self() 0x1FBB7A66ELL];
  [v12 0x1FB30BC78];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  v16 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_explanationLabel];
  MEMORY[0x277D82BE0](v16);
  v13 = objc_opt_self();
  v14 = *MEMORY[0x277D76968];
  MEMORY[0x277D82BE0](*MEMORY[0x277D76968]);
  v15 = [v13 0x1FBACF65ALL];
  [v16 0x1FAAB1478];
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  v17 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_explanationLabel];
  [v17 0x1FAC2AD78];
  MEMORY[0x277D82BD8](v17);
  v18 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_explanationLabel];
  [v18 0x1FAF65978];
  MEMORY[0x277D82BD8](v18);
  v19 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_explanationLabel];
  [v19 setNumberOfLines_];
  MEMORY[0x277D82BD8](v19);
  v21 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_stackView];
  MEMORY[0x277D82BE0](v21);
  v20 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_titleLabel];
  [v21 0x1FBB16380];
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  v23 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_stackView];
  MEMORY[0x277D82BE0](v23);
  v22 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_explanationLabel];
  [v23 0x1FBB16380];
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  v24 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_stackView];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x277D82BD8](v24);
  v25 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_stackView];
  [v25 setAxis_];
  MEMORY[0x277D82BD8](v25);
  v26 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_stackView];
  MEMORY[0x277D82BE0](v26);
  [v26 setSpacing_];
  MEMORY[0x277D82BD8](v26);
  v27 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_stackView];
  [v0 addSubview_];
  MEMORY[0x277D82BD8](v27);
  v46 = objc_opt_self();
  sub_214A6F394();
  sub_214CD03C4();
  v45 = v1;
  v28 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_stackView];
  v30 = [v28 0x1FBBB4950];
  MEMORY[0x277D82BD8](v28);
  v29 = [v0 0x1FBBB4950];
  MEMORY[0x277D82BD8](v0);
  v31 = [v30 0x1FBB28F7ELL];
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  *v45 = v31;
  v32 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_stackView];
  v34 = [v32 0x1FBB20D25];
  MEMORY[0x277D82BD8](v32);
  v33 = [v0 0x1FBB20D25];
  MEMORY[0x277D82BD8](v0);
  v35 = [v34 0x1FBB28F7ELL];
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v34);
  v45[1] = v35;
  v36 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_stackView];
  v38 = [v36 0x1FBB5C529];
  MEMORY[0x277D82BD8](v36);
  v37 = [v0 0x1FBB5C529];
  MEMORY[0x277D82BD8](v0);
  v39 = [v38 0x1FBB28F7ELL];
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](v38);
  v45[2] = v39;
  v40 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_stackView];
  v43 = [v40 0x1FBBB59CCLL];
  MEMORY[0x277D82BD8](v40);
  v42 = [v41 0x1FBBB59CCLL];
  (MEMORY[0x277D82BD8])();
  v44 = [v43 0x1FBB28F7ELL];
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](v43);
  v45[3] = v44;
  sub_214A63280();
  v47 = sub_214CCF7D4();

  [v46 activateConstraints_];
  *&result = MEMORY[0x277D82BD8](v47).n128_u64[0];
  return result;
}

void sub_214CABA7C()
{
  v0 = OBJC_IVAR____TtC6MailUI19SearchPreparingView_stackView;
  sub_214A73FCC();
  *v0 = sub_214A61730();
  v1 = OBJC_IVAR____TtC6MailUI19SearchPreparingView_titleLabel;
  sub_214A73F68();
  *v1 = sub_214A61730();
  v2 = OBJC_IVAR____TtC6MailUI19SearchPreparingView_explanationLabel;
  *v2 = sub_214A61730();
  *OBJC_IVAR____TtC6MailUI19SearchPreparingView_indexStatus = 0;
  sub_214CCF614();
  sub_214CD0204();
  __break(1u);
}

id SearchPreparingView.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t *sub_214CABD1C()
{
  if (qword_280C7D9D8 != -1)
  {
    swift_once();
  }

  return &qword_280C7D9E0;
}

double SeparatorSupplementaryView.separatorLeadingInset.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_separatorLeadingInset);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

double sub_214CABDE0@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v4 = (v3 + OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_separatorLeadingInset);
  swift_beginAccess();
  v6 = *v4;
  swift_endAccess();
  *a2 = v6;
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214CABE7C(double *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  SeparatorSupplementaryView.separatorLeadingInset.setter(v4);
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

void SeparatorSupplementaryView.separatorLeadingInset.setter(double a1)
{
  v2 = (v1 + OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_separatorLeadingInset);
  swift_beginAccess();
  *v2 = a1;
  swift_endAccess();
  sub_214CABF54();
}

void sub_214CABF54()
{
  v5 = OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_leadingConstraint;
  v6 = (v0 + OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_leadingConstraint);
  swift_beginAccess();
  if (*v6)
  {
    v3 = *(v4 + v5);
    MEMORY[0x277D82BE0](v3);
    swift_endAccess();
    v1 = (v4 + OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_separatorLeadingInset);
    swift_beginAccess();
    v2 = *v1;
    swift_endAccess();
    [v3 setConstant_];
    MEMORY[0x277D82BD8](v3);
  }

  else
  {
    swift_endAccess();
  }
}

void (*SeparatorSupplementaryView.separatorLeadingInset.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_214CAC0C0;
}

void sub_214CAC0C0(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_214CABF54();
  }
}

uint64_t sub_214CAC110()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_heightConstraint);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214CAC180(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_heightConstraint);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214CAC218()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_leadingConstraint);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214CAC288(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_leadingConstraint);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214CAC320()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_separator);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214CAC368()
{
  type metadata accessor for SeparatorSupplementaryView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA385D0);
  result = sub_214CCF5B4();
  qword_280C7D9E0 = result;
  qword_280C7D9E8 = v1;
  return result;
}

uint64_t static SeparatorSupplementaryView.reuseIdentifier.getter()
{
  v1 = *sub_214CABD1C();

  return v1;
}

double sub_214CAC438()
{
  v8 = [v0 traitCollection];
  v9 = [v8 preferredContentSizeCategory];
  MEMORY[0x277D82BD8](v8);
  v10 = sub_214CCFD14();
  MEMORY[0x277D82BD8](v9);
  if (v10)
  {
    return 1.0;
  }

  v6 = objc_opt_self();
  v4 = [v0 traitCollection];
  [v4 displayScale];
  v5 = v1;
  MEMORY[0x277D82BD8](v4);
  [v6 uiRoundValue:v0 toViewScale:1.0 / v5];
  return v2;
}

char *SeparatorSupplementaryView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v8 = a1;
  *(&v8 + 1) = a2;
  *&v9 = a3;
  *(&v9 + 1) = a4;
  ObjectType = swift_getObjectType();
  v12 = v8;
  v13 = v9;
  v14 = v4;
  *&v4[OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_separatorLeadingInset] = 0;
  *&v14[OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_heightConstraint] = 0;
  *&v14[OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_leadingConstraint] = 0;
  v6 = OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_separator;
  sub_214A7802C();
  *&v14[v6] = sub_214A61730();
  v11.receiver = v14;
  v11.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v11, sel_initWithFrame_, v8, v9);
  MEMORY[0x277D82BE0](v10);
  v14 = v10;
  SeparatorSupplementaryView.setupLayout()();
  SeparatorSupplementaryView.configureBackground()();
  MEMORY[0x277D82BD8](v14);
  return v10;
}

Swift::Void __swiftcall SeparatorSupplementaryView.setupLayout()()
{
  v5 = *&v0[OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_separator];
  [v0 addSubview_];
  MEMORY[0x277D82BD8](v5);
  v6 = *&v0[OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_separator];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x277D82BD8](v6);
  v7 = *&v0[OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_separator];
  v9 = [v7 heightAnchor];
  MEMORY[0x277D82BD8](v7);
  v11 = [v9 constraintEqualToConstant_];
  MEMORY[0x277D82BD8](v9);
  v10 = &v8[OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_heightConstraint];
  swift_beginAccess();
  v1 = *v10;
  *v10 = v11;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  v12 = *&v8[OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_separator];
  v16 = [v12 0x1FBB5C529];
  MEMORY[0x277D82BD8](v12);
  v15 = [v8 0x1FBB5C529];
  (MEMORY[0x277D82BD8])();
  v13 = &v8[OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_separatorLeadingInset];
  swift_beginAccess();
  v14 = *v13;
  swift_endAccess();
  v18 = [v16 constraintEqualToAnchor:v15 constant:v14];
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  v17 = &v8[OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_leadingConstraint];
  swift_beginAccess();
  v2 = *v17;
  *v17 = v18;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  v19 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36598);
  sub_214CD03C4();
  v34 = v3;
  v20 = *&v8[OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_separator];
  v22 = [v20 0x1FBBB4950];
  MEMORY[0x277D82BD8](v20);
  v21 = [v8 0x1FBBB4950];
  v23 = [v22 0x1FBB28F65];
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  *v34 = v23;
  v24 = *&v8[OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_separator];
  v26 = [v24 0x1FBB20D25];
  MEMORY[0x277D82BD8](v24);
  v25 = [v8 0x1FBB20D25];
  v27 = [v26 0x1FBB28F65];
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  v34[1] = v27;
  v28 = *&v8[OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_separator];
  v30 = [v28 0x1FBBB59CCLL];
  MEMORY[0x277D82BD8](v28);
  v29 = [v8 0x1FBBB59CCLL];
  v31 = [v30 0x1FBB28F65];
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  v34[2] = v31;
  v32 = &v8[OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_heightConstraint];
  swift_beginAccess();
  sub_214A671A8(v32, v34 + 3);
  swift_endAccess();
  v33 = &v8[OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_leadingConstraint];
  swift_beginAccess();
  sub_214A671A8(v33, v34 + 4);
  swift_endAccess();
  sub_214A63280();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA365A0);
  sub_214A6F394();
  sub_214BD01B4();
  sub_214CCF6F4();
  sub_214A62278();
  v4 = sub_214CCF7D4();

  [v19 activateConstraints_];
  MEMORY[0x277D82BD8](v4);
}

Swift::Void __swiftcall SeparatorSupplementaryView.configureBackground()()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_separator);
  MEMORY[0x277D82BE0](v2);
  v1 = [objc_opt_self() separatorColor];
  [v2 setBackgroundColor_];
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v2);
}

void sub_214CACFA0()
{
  *OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_separatorLeadingInset = 0;
  *OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_heightConstraint = 0;
  *OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_leadingConstraint = 0;
  v0 = OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_separator;
  sub_214A7802C();
  *v0 = sub_214A61730();
  sub_214CCF614();
  sub_214CD0204();
  __break(1u);
}

Swift::Void __swiftcall SeparatorSupplementaryView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  ObjectType = swift_getObjectType();
  v14 = isa;
  v13 = v1;
  *&v2 = (MEMORY[0x277D82BE0])().n128_u64[0];
  v12.receiver = v1;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, sel_traitCollectionDidChange_, isa, v2);
  (MEMORY[0x277D82BD8])();
  MEMORY[0x277D82BE0](isa);
  if (isa)
  {
    v6 = [v10 traitCollection];
    v7 = [(objc_class *)isa mf_traitDifferenceAffectsTextLayout:v6, (MEMORY[0x277D82BD8])().n128_f64[0]];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](isa);
    v8 = v7;
  }

  else
  {
    v8 = 2;
  }

  if (v8 == 2)
  {
    v5 = 1;
  }

  else
  {
    v5 = v8;
  }

  if (v5)
  {
    v4 = &v10[OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_heightConstraint];
    swift_beginAccess();
    if (*v4)
    {
      v3 = *v4;
      MEMORY[0x277D82BE0](*v4);
      swift_endAccess();
      [v3 setConstant_];
      MEMORY[0x277D82BD8](v3);
    }

    else
    {
      swift_endAccess();
    }
  }
}

id SeparatorSupplementaryView.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t Sequence<>.joined(by:matchingAttributes:)(uint64_t a1)
{
  sub_214BD299C();
  v3 = sub_214A61730();
  MEMORY[0x277D82BE0](a1);
  sub_214CCF744();
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v3);
  return v4;
}

void sub_214CAD57C(id *a1@<X0>, id *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v13 = *a1;
  v12 = *a2;
  v14 = [*a1 length];
  *&v5 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  if (v14 > 0)
  {
    if (a3)
    {
      [v12 0x1FAD8E6F8];
      v6 = [v12 attributesAtIndex_longestEffectiveRange_inRange_];
      type metadata accessor for Key();
      sub_214B04398();
      sub_214CCF314();
      MEMORY[0x277D82BD8](v6);
      sub_214BD299C();
      MEMORY[0x277D82BE0](a4);
      v15 = sub_214CAD918(a4);
      v7 = [v15 0x1FAD8E6F8];
      MEMORY[0x277D82BD8](v15);

      v8 = sub_214CCF304();

      [v15 addAttributes:v8 range:{0, v7}];
      [v13 appendAttributedString_];
      MEMORY[0x277D82BD8](v15);
    }

    else
    {
      [v13 appendAttributedString_];
    }
  }

  [v13 appendAttributedString_];
  MEMORY[0x277D82BE0](v13);
  *a5 = v13;
}

uint64_t sub_214CAD958()
{
  type metadata accessor for Options();
  sub_214CD03C4();
  *v0 = 1;
  sub_214A63280();
  sub_214B01C30();
  sub_214CD0084();
  return v2;
}

uint64_t sub_214CAD9D4()
{
  type metadata accessor for MatchingOptions();
  sub_214CD03C4();
  sub_214B01D60();
  sub_214CD0084();
  return v1;
}

void sub_214CADA3C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v51 = a3;
  v52 = a2;
  v53 = 0;
  v76._internal = 0;
  v67 = 0;
  v66 = 0;
  v63 = 0;
  v79 = a1;
  v78 = a2;
  *&v76._checkout = a3;
  v77 = a4;
  sub_214CAE100(a2, a1, &v74);
  v54 = v74;
  v55 = v75;
  isa = v76.super.isa;
  pattern = v76._pattern;
  v58._rawValue = v76._options;
  v72 = v74;
  v73 = v75;
  v70 = v76.super.isa;
  v71 = v76._pattern;
  options = v76._options;
  v68 = v76._options;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0);
  sub_214B50C54();
  if (sub_214CCFA94() & 1) != 0 || (sub_214CCF664())
  {
    v13 = v52;

    v17 = v52;
    v18 = 0;
    v19 = v49;
  }

  else
  {
    v45 = v49;
    v42 = 0;
    sub_214BD299C();
    v4 = v52;
    v43 = sub_214CAD918(v52);
    v67 = v43;
    v44 = sub_214CAE668();

    v5 = sub_214CAD958();
    NSRegularExpression.init(tokens:options:)(&v76, v58, v5);
    v46 = v6;
    v47 = v7;
    v48 = v6;
    if (v6)
    {
      v15 = v48;
    }

    else
    {
      v26 = v47;
      v38 = 0;
      v66 = v47;

      v27 = sub_214CCF544();

      v64 = isa;
      v65 = pattern;
      v29 = [v47 matchesInString:v27 options:sub_214CAD9D4() range:{isa, pattern}];

      v33 = 0;
      v28 = sub_214CAE6CC();
      v31 = sub_214CCF7E4();
      v30 = v31;
      v63 = v31;

      v62 = v31;
      KeyPath = swift_getKeyPath();
      v32 = KeyPath;

      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA385D8);
      v34 = v36;
      v37 = type metadata accessor for _NSRange();
      v39 = sub_214CAE868();
      v40 = 0;
      v41 = sub_214A6E4F4(sub_214CAE834, KeyPath, v36, v37, MEMORY[0x277D84A98], v39, MEMORY[0x277D84AC0], v8);
      v20 = v41;
      v24 = 0;

      v61 = v41;
      v9 = v43;
      v21 = &v15;
      MEMORY[0x28223BE20](&v15);
      v22 = v14;
      v14[2] = v51;
      v14[3] = v50;
      v14[4] = v10;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA385E8);
      sub_214CAE9A0();
      v11 = v24;
      sub_214CCF764();
      v25 = v11;

      if (v11)
      {
        __break(1u);
      }

      else
      {
        sub_214A62278();
        v12 = v43;
        v60 = v30;
        v16 = sub_214CCFA94() ^ 1;

        v17 = v43;
        v18 = v16;
        v19 = v25;
      }
    }
  }
}

uint64_t sub_214CAE100@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v41 = a2;
  v42 = a3;
  v43 = 0;
  v67 = 0;
  v44 = 0;
  v51 = 0;
  v69 = a1;
  v68 = a2;
  v45 = [a1 string];
  v48 = sub_214CCF564();
  v49 = v3;
  v46 = v48;
  v47 = v3;
  v65 = v48;
  v66 = v3;

  v50 = sub_214CCF5D4();
  v64 = v50;

  v62 = v48;
  v63 = v47;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA385F8);
  v31 = v33;
  v34 = sub_214CAEA28();
  v32 = v34;
  v35 = sub_214B075A0();
  v36 = sub_214CCFEF4();
  v37 = v4;
  v60 = v36;
  v61 = v4;
  v38 = sub_214CAF7DC();
  v39 = v5;
  v58 = v38;
  v59 = v5;
  v40 = sub_214CCF5D4();
  v57 = v40;

  v55 = v38;
  v56 = v39;
  v29 = MEMORY[0x277D837D0];
  v24 = sub_214CCFEF4();
  v25 = v6;
  v53 = v24;
  v54 = v6;
  v52 = v41;
  v26 = &v18;
  MEMORY[0x28223BE20](&v18);
  v27 = &v16;
  v17 = v7;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0);
  v8 = sub_214B50C54();
  v30 = sub_214A6E4F4(sub_214CB4300, v27, v28, v29, MEMORY[0x277D84A98], v8, MEMORY[0x277D84AC0], v9);
  v23 = v30;
  v51 = v30;
  if (sub_214CCFEE4())
  {

    v18 = v38;
    v19 = v39;
    v20 = v24;
    v21 = v25;
    v22 = v23;
  }

  else
  {

    v18 = v46;
    v19 = v47;
    v20 = v36;
    v21 = v37;
    v22 = v41;
  }

  v11 = v42;
  v12 = v19;
  v13 = v20;
  v14 = v21;
  v15 = v22;
  *v42 = v18;
  v11[1] = v12;
  v11[2] = v13;
  v11[3] = v14;
  v11[4] = v15;
  return result;
}

unint64_t sub_214CAE668()
{
  v2 = qword_280C7CAD8;
  if (!qword_280C7CAD8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CAD8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214CAE6CC()
{
  v2 = qword_280C7CA80;
  if (!qword_280C7CA80)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CA80);
    return ObjCClassMetadata;
  }

  return v2;
}

double sub_214CAE73C@<D0>(id *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  *a2 = [*a1 range];
  a2[1] = v2;
  *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  return result;
}

uint64_t sub_214CAE7BC(void *a1)
{
  v2 = *a1;
  MEMORY[0x277D82BE0](*a1);

  swift_getAtKeyPath();
  MEMORY[0x277D82BD8](v2);
}

unint64_t sub_214CAE868()
{
  v2 = qword_280C7CE10;
  if (!qword_280C7CE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA385D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CE10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214CAE9A0()
{
  v2 = qword_280C7CDB0;
  if (!qword_280C7CDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA385E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CDB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214CAEA28()
{
  v2 = qword_280C7C420;
  if (!qword_280C7C420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA385F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7C420);
    return WitnessTable;
  }

  return v2;
}

uint64_t static SnippetGenerator.highlightingTokens(tokens:in:highlighting:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_214CADA3C(a1, a2, a3, a4);
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t static SnippetGenerator.highlightingTokens(authorTokens:authorEmailTokens:inEmailAttributedString:highlighting:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v77 = 0;
  rawValue = 0;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v70[0] = 0;
  v59 = 0;
  v58 = 0;
  v82 = a1;
  v81 = a2;
  v80 = a3;
  v78 = a4;
  v79 = a5;
  v41 = MEMORY[0x277D837D0];
  v76 = sub_214CCF804();
  v47 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0);
  v44 = sub_214B50C54();
  v45._rawValue = sub_214A6E4F4(sub_214CB4300, v46, v40, v41, MEMORY[0x277D84A98], v44, MEMORY[0x277D84AC0], v43);
  if (v42)
  {
    __break(1u);

    v12 = 0;
    goto LABEL_19;
  }

  sub_214A62278();
  rawValue = v45._rawValue;
  v74 = v45._rawValue;
  if ((sub_214CCFA94() & 1) != 0 || ![a3 length])
  {
    MEMORY[0x277D82BE0](a3);

    v29 = a3;
    v30 = 0;
    v31 = 0;
    goto LABEL_15;
  }

  sub_214CADA3C(v45._rawValue, a3, a4, a5);
  v33 = v5;
  v34 = v6;
  v73 = v5;
  v72 = v6 & 1;
  v70[1] = a1;
  v71 = (sub_214CCFA94() ^ 1) & 1;
  if (v71)
  {
    v32 = v34;
  }

  else
  {
    v32 = 0;
  }

  if (v32)
  {

    v29 = v33;
    v30 = 0;
    v31 = 0;
LABEL_15:
    sub_214A6B584(v30);
    sub_214A6B584(0);
    sub_214A6B584(v31);
    sub_214A6B584(0);
    return v29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38608);
  sub_214CD03C4();
  v70[0] = sub_214CCF344();
  v25 = *MEMORY[0x277D06F28];
  v24 = [v33 length];
  type metadata accessor for EnumerationOptions();
  sub_214CD03C4();
  sub_214B01E90();
  sub_214CD0084();
  v26 = v69;
  v23 = swift_allocObject();
  *(v23 + 16) = v70;

  v22 = swift_allocObject();
  *(v22 + 16) = sub_214CB4334;
  *(v22 + 24) = v23;

  v67 = sub_214CB433C;
  v68 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v63 = 1107296256;
  v64 = 0;
  v65 = sub_214CAFE5C;
  v66 = &block_descriptor_28;
  v27 = _Block_copy(&aBlock);

  v60 = 0;
  v61 = v24;
  [v33 enumerateAttribute:v25 inRange:0 options:v24 usingBlock:{v26, v27}];
  _Block_release(v27);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    MEMORY[0x277D82BD8](v25);
    sub_214BD299C();
    MEMORY[0x277D82BE0](v33);
    v20 = sub_214CAD918(v33);
    v59 = v20;
    sub_214CAE668();

    v8 = sub_214CAD958();
    NSRegularExpression.init(tokens:options:)(v9, v45, v8);
    v21 = v10;
    if (!v11)
    {
      v58 = v10;
      v16 = *MEMORY[0x277D06F28];
      v15 = [v33 length];
      sub_214CD03C4();
      sub_214CD0084();
      v17 = v57;

      MEMORY[0x277D82BE0](v21);
      MEMORY[0x277D82BE0](v20);
      v14 = swift_allocObject();
      v14[2] = v70;
      v14[3] = &v71;
      v14[4] = a1;
      v14[5] = v21;
      v14[6] = a4;
      v14[7] = a5;
      v14[8] = v20;

      v13 = swift_allocObject();
      *(v13 + 16) = sub_214CB4348;
      *(v13 + 24) = v14;

      v55 = sub_214CB433C;
      v56 = v13;
      v50 = MEMORY[0x277D85DD0];
      v51 = 1107296256;
      v52 = 0;
      v53 = sub_214CAFE5C;
      v54 = &block_descriptor_13_2;
      v18 = _Block_copy(&v50);

      v48 = 0;
      v49 = v15;
      [v33 enumerateAttribute:v16 inRange:0 options:v15 usingBlock:{v17, v18}];
      _Block_release(v18);
      v19 = swift_isEscapingClosureAtFileLocation();

      result = v19;
      if ((v19 & 1) == 0)
      {
        MEMORY[0x277D82BD8](v16);
        MEMORY[0x277D82BD8](v21);
        sub_214A62278();
        MEMORY[0x277D82BD8](v33);

        v29 = v20;
        v30 = sub_214CB4334;
        v31 = sub_214CB4348;
        goto LABEL_15;
      }

      goto LABEL_21;
    }

    MEMORY[0x277D82BD8](v20);
    sub_214A62278();
    MEMORY[0x277D82BD8](v33);

    v12 = sub_214CB4334;
LABEL_19:
    sub_214A6B584(v12);
    sub_214A6B584(0);
    return v43;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_214CAF770@<X0>(uint64_t *a1@<X8>)
{
  result = sub_214CAF7DC();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_214CAF7DC()
{
  sub_214CCF614();
  sub_214CCF614();
  sub_214B075A0();
  sub_214B60B9C();
  v2 = sub_214CCFFD4();
  v3 = *MEMORY[0x277CBE760];
  MEMORY[0x277D82BE0](*MEMORY[0x277CBE760]);
  v4 = sub_214CCFFB4();
  v5 = v0;
  MEMORY[0x277D82BD8](v3);

  if (v5)
  {
    v6 = v4;
  }

  else
  {

    v6 = v2;
  }

  return v6;
}

void (*sub_214CAFA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(void)
{
  v25 = a1;
  v23 = a2;
  v24 = a3;
  v22 = a4;
  v21 = a5;
  sub_214C011C8(a1, v19);
  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35CB0);
    if (swift_dynamicCast())
    {
      v16 = v18;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
  }

  else
  {
    sub_214A7D24C(v19);
    v17 = 0;
  }

  if (!v17)
  {
    return sub_214A6B584(0);
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = [v17 emailAddressValue];
  swift_unknownObjectRelease();
  if (v15)
  {
    v5 = [v15 simpleAddress];
    v13 = v5;
    if (v5)
    {
      sub_214CCF564();
      v11 = v6;
      MEMORY[0x277D82BD8](v13);
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    MEMORY[0x277D82BD8](v15);
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  if (!v14)
  {
    swift_unknownObjectRelease();
    return sub_214A6B584(0);
  }

  v10 = swift_allocObject();
  *(v10 + 16) = sub_214A73344;
  *(v10 + 24) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38688);
  result = sub_214CCF3A4();
  if (__OFADD__(*v8, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v8;
    result();

    sub_214A61B48();

    swift_unknownObjectRelease();
    return sub_214A6B584(sub_214B26858);
  }

  return result;
}

uint64_t sub_214CAFE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[4] = a3;
  v9[5] = a4;
  v6 = *(a1 + 32);
  swift_unknownObjectRetain();
  if (a2)
  {
    v8[3] = swift_getObjectType();
    v8[0] = a2;
    v4 = sub_214B11A4C(v8, v9);
  }

  else
  {
    memset(v9, 0, 32);
  }

  v6(v4);
  return sub_214A7D24C(v9);
}

uint64_t sub_214CAFF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, void *a8, void (*a9)(void, void, void, __n128), uint64_t a10, uint64_t a11)
{
  v55 = a1;
  v53 = a2;
  v54 = a3;
  v52 = a4;
  v51 = a5;
  v50 = a6;
  v49 = a7;
  v48 = a8;
  v46 = a9;
  v47 = a10;
  v45 = a11;
  sub_214C011C8(a1, v43);
  if (v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35CB0);
    result = swift_dynamicCast();
    if (result)
    {
      v32 = v38;
    }

    else
    {
      v32 = 0;
    }

    v33 = v32;
  }

  else
  {
    result = sub_214A7D24C(v43);
    v33 = 0;
  }

  if (!v33)
  {
    return result;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  v31 = [v33 emailAddressValue];
  swift_unknownObjectRelease();
  if (v31)
  {
    v12 = [v31 simpleAddress];
    v29 = v12;
    if (v12)
    {
      sub_214CCF564();
      v27 = v13;
      MEMORY[0x277D82BD8](v29);
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    MEMORY[0x277D82BD8](v31);
    v30 = v28;
  }

  else
  {
    v30 = 0;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  v26 = [v33 emailAddressValue];
  swift_unknownObjectRelease();
  if (v26)
  {
    v14 = [v26 displayName];
    v24 = v14;
    if (v14)
    {
      sub_214CCF564();
      v22 = v15;
      MEMORY[0x277D82BD8](v24);
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    MEMORY[0x277D82BD8](v26);
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  if (!v30)
  {
    goto LABEL_31;
  }

  sub_214CCF3D4();
  sub_214A61B48();
  if ((v40 & 1) != 0 || v39 <= 1)
  {

LABEL_31:
    v21 = 0;
    goto LABEL_32;
  }

  v21 = 1;
LABEL_32:

  if (v21)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0);
    sub_214B50C54();
    v20 = sub_214CCFA94() ^ 1;
  }

  else
  {
    LOBYTE(v20) = 0;
  }

  *a6 = v20 & 1;
  if (*a6)
  {

    if (!v25)
    {
      sub_214CCF614();
    }
  }

  else
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v19 = [v33 stringValue];
    sub_214CCF564();
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v19);
  }

  v42 = sub_214CCF644();

  v17 = sub_214CCF544();

  type metadata accessor for MatchingOptions();
  sub_214CD03C4();
  sub_214B01D60();
  sub_214CD0084();
  v18 = [a8 firstMatchInString:v17 options:v41 range:{0, v42}];
  v16 = MEMORY[0x277D82BD8](v17);
  if (v18)
  {
    a9(a11, a2, a3, v16);
  }

  MEMORY[0x277D82BD8](v18);

  return swift_unknownObjectRelease();
}

id static SnippetGenerator.highlightedSnippetUsingTokens(tokens:in:maxNumberOfWordsBeforeOrAfterToken:maxNumberOfRanges:highlighting:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v166 = a6;
  v167 = a5;
  v168 = a3;
  v169 = a2;
  v170 = a1;
  v172 = 0;
  v248 = 0;
  v233 = 0;
  v232 = 0u;
  v231 = 0u;
  v210 = 0;
  v206 = 0;
  v192 = 0;
  v190 = 0;
  v189 = 0;
  v186 = 0;
  v185 = 0;
  v254 = a1;
  v253 = a2;
  v252 = a3;
  v251 = a4;
  v249 = a5;
  v250 = a6;
  v246 = a4;
  v245 = 1;
  sub_214CD0444();
  v171 = v247;
  v244 = v247;
  sub_214CAE100(v169, v170, &v239);
  v173 = v239;
  v174 = v240;
  v175 = v241;
  v176 = v242;
  tokens._rawValue = v243;
  v177 = v243;
  v237 = v239;
  v238 = v240;
  v235 = v241;
  v236 = v242;
  v234 = v243;
  v178 = sub_214CAE668();

  v6 = sub_214CAD958();
  NSRegularExpression.init(tokens:options:)(v7, tokens, v6);
  v180 = v8;
  v181 = v9;
  v182 = v8;
  if (v8)
  {

    result = v182;
    v57 = v182;
    return result;
  }

  v152 = v181;
  v163 = 0;
  v233 = v181;

  v153 = sub_214CCF544();

  v228 = v175;
  v229 = v176;
  v155 = [v181 matchesInString:v153 options:sub_214CAD9D4() range:{v175, v176}];
  v154 = v155;

  v158 = 0;
  v156 = sub_214CAE6CC();
  v227 = sub_214CCF7E4();
  KeyPath = swift_getKeyPath();
  v157 = KeyPath;

  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA385D8);
  v162 = type metadata accessor for _NSRange();
  v159 = v162;
  v10 = sub_214CAE868();
  v164 = 0;
  v165 = sub_214A6E4F4(sub_214CAE834, KeyPath, v161, v162, MEMORY[0x277D84A98], v10, MEMORY[0x277D84AC0], v11);
  v143 = v165;
  v148 = 0;

  sub_214A62278();

  v226 = v165;

  v144 = &v55;
  MEMORY[0x28223BE20](&v55);
  v146 = v54;
  v54[2] = v173;
  v54[3] = v174;
  v54[4] = v12;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA385E8);
  v145 = v147;
  v13 = sub_214CB442C();
  v14 = v148;
  v149 = v13;
  v16 = sub_214A6E4F4(sub_214CB43F8, v146, v147, v159, MEMORY[0x277D84A98], v13, MEMORY[0x277D84AC0], v15);
  v150 = v14;
  v151 = v16;
  if (v14)
  {

    __break(1u);
    goto LABEL_22;
  }

  v138 = v151;
  v139 = 0;

  sub_214A62278();
  v225 = v138;
  v17 = sub_214CAE9A0();
  v18 = v139;
  v140 = v17;
  v19 = sub_214CCF754();
  v141 = v18;
  v142 = v19;
  if (v18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v135 = v142;
  v136 = 0;
  sub_214A62278();
  v224 = v135;
  v20 = sub_214CCF2D4();
  v21 = v136;
  v223 = v20;
  sub_214CCF734();
  v137 = v21;
  if (v21)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v132 = 0;
  sub_214A62278();
  *&v222[1] = v230;
  v130 = &v231;
  sub_214CCFA84();
  v119 = *(&v231 + 1);
  v124 = v231;
  v120 = v232;
  swift_unknownObjectRetain();
  v219 = v124;
  v220 = v119;
  v221 = v120;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA38610);
  v121 = v122;
  v123 = sub_214CB44B4();
  sub_214CCFA04();
  v125 = v217;
  v126 = v218;
  swift_unknownObjectRelease();
  v215 = v125;
  v216 = v126;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38620);
  v127 = v128;
  sub_214CB453C();
  sub_214CCF434();
  v211 = v213;
  v212 = v214;
  v129 = v54;
  MEMORY[0x28223BE20](v54);
  v22 = v175;
  v131 = &v54[-6];
  v54[-4] = v130;
  v54[-3] = v22;
  v54[-2] = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38628);
  v25 = v132;
  v133 = v24;
  sub_214BD123C(sub_214CB45E0, v131, v24, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, v26, v222);
  v134 = v25;
  if (v25)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v116 = 0;
  v115 = sub_214AF7FCC();
  v107 = v115;
  sub_214CCF614();
  v108 = sub_214BC9508();
  v210 = v108;
  v111 = v231;
  v109 = v231;
  v112 = v232;
  v110 = v232;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v208 = v111;
  v209 = v112;
  v27 = v169;
  v113 = v54;
  MEMORY[0x28223BE20](v54);
  v114 = &v54[-4];
  v54[-2] = v28;
  v29 = sub_214CB4640();
  v30 = v116;
  v32 = sub_214A6E4F4(sub_214CB4614, v114, v121, v115, MEMORY[0x277D84A98], v29, MEMORY[0x277D84AC0], v31);
  v117 = v30;
  v118 = v32;
  if (v30)
  {
LABEL_25:

    __break(1u);
    goto LABEL_26;
  }

  v95 = v118;
  v104 = 0;

  sub_214A759F4();
  v207 = v95;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38630);
  v96 = v97;
  v98 = sub_214CB46C8();
  v99 = &v207;
  v101 = Sequence<>.joined(by:matchingAttributes:)(v108);
  v100 = v101;
  sub_214A62278();
  v206 = v101;
  v202 = v109;
  v203 = v110;
  sub_214CCFA04();
  v102 = v200;
  v103 = v201;
  swift_unknownObjectRelease();
  v198 = v102;
  v199 = v103;
  sub_214A8C7F4();
  sub_214CCFA74();
  v33 = v104;
  v194 = v196;
  v195 = v197;
  v105 = v54;
  MEMORY[0x28223BE20](v54);
  v54[-2] = &v231;
  sub_214BD123C(sub_214CB4750, &v54[-4], v34, MEMORY[0x277D84A98], MEMORY[0x277D839B0], v35, &v204);
  v106 = v33;
  if (v33)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v193 = v204;
  if (v204 == 2)
  {
    v94 = 0;
  }

  else
  {
    v94 = v193;
  }

  v192 = v94 & 1;
  if (v94)
  {
    v86 = 0x1FAD8E000uLL;
    v36 = [v100 0x1FAD8E6F8];
    v87 = 0;
    v187 = 0;
    v188 = v36;
    v82 = [v100 attributesAtIndex:0 longestEffectiveRange:0 inRange:{0, v36}];
    v83 = type metadata accessor for Key();
    v85 = sub_214B04398();
    v84 = MEMORY[0x277D84F70] + 8;
    v91 = sub_214CCF314();
    v186 = v91;

    sub_214BD299C();
    v37 = v108;
    v90 = sub_214CAD918(v108);
    v185 = v90;

    v89 = sub_214CCF304();

    v38 = v90;
    v88 = [v90 (v86 + 1784)];

    v183 = v87;
    v184 = v88;
    [v90 addAttributes:v89 range:{v87, v88}];

    v39 = v90;
    v92 = v90;
    v40 = v90;
    v205 = v90;

    v93 = v92;
  }

  else
  {
    v205 = 0;
    v93 = 0;
  }

  v74 = v93;
  v79 = v106;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38638);
  v41 = sub_214CD03C4();
  v42 = v100;
  v77 = v41;
  v75 = v43;
  *v43 = v74;
  v44 = v42;
  v45 = v77;
  v75[1] = v100;
  sub_214A63280();
  v191[1] = v45;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA38640);
  sub_214CB477C();
  v46 = v79;
  v47 = sub_214CCF6F4();
  v80 = v46;
  v81 = v47;
  if (v46)
  {
    goto LABEL_27;
  }

  v65 = v81;
  v70 = 0;
  sub_214A62278();
  v191[0] = v65;
  v66 = sub_214CAD8E0();
  sub_214C666A0();
  v68 = v191;
  v69 = Sequence<>.joined(by:matchingAttributes:)(v66);
  v67 = v69;

  sub_214A62278();
  v48 = v70;
  v190 = v69;
  v49 = static SnippetGenerator.highlightingTokens(tokens:in:highlighting:)(v177, v69, v167, v166);
  v71 = v48;
  v72 = v49;
  v73 = v48;
  if (v48)
  {
LABEL_28:
    v56 = v73;

    sub_214A671E8(&v205);
    sub_214A759F4();

    return v56;
  }

  v61 = v72;
  v189 = v72;
  v63 = [v72 string];
  sub_214CCF564();
  v62 = v50;
  v64 = sub_214CCF664();

  if (v64)
  {
    v51 = v169;
    v60 = v169;
  }

  else
  {
    v52 = v61;
    v60 = v61;
  }

  v58 = v60;
  v59 = v71;

  sub_214A671E8(&v205);
  sub_214A759F4();

  return v58;
}

Swift::Int sub_214CB1854@<X0>(__C::_NSRange *a1@<X0>, Swift::Int a2@<X3>, __C::_NSRange *a3@<X8>)
{
  range = *a1;

  v7 = sub_214CCF544();
  v3 = NSString.rangeByAdding(maxNumberOfWordsBefore:maxNumberOfWordsAfter:range:)(a2, a2, range);
  MEMORY[0x277D82BD8](v7);

  result = v3.location;
  *a3 = v3;
  return result;
}

uint64_t sub_214CB1964(uint64_t *a1, NSRange *a2)
{
  v24 = a1;
  v25 = 0;
  v56.length = 0;
  v56.location = 0;
  v51.length = 0;
  v51.location = 0;
  v47.length = 0;
  v47.location = 0;
  v42.length = 0;
  v42.location = 0;
  v57 = a1;
  v26 = *a2;
  v56 = v26;
  v28 = *a1;
  v27 = v28;

  v55 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA385E8);
  v29 = v30;
  sub_214CB49DC();
  sub_214CCF434();
  v31 = v53;
  if (v54)
  {

    v52 = v26;
    result = sub_214CCF884();
    v21 = v23;
  }

  else
  {
    v22 = v31;
    v20 = v31;
    v51 = v31;

    v50 = v31;
    v49 = v26;
    v3 = NSIntersectionRange(v31, v26);
    v48 = v3;
    v47 = v3;
    if (v3.length)
    {
      v18 = v23;
      v45 = v20;
      v44 = v26;
      v43 = NSUnionRange(v20, v26);
      length = v43.length;
      location = v43.location;
      v42 = v43;
      v10 = *v24;

      v40 = v10;
      sub_214CB4A64();
      sub_214CCFA04();
      v11 = v38;
      v12 = v39;

      v36 = v38;
      v37 = v39;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38620);
      sub_214CB453C();
      sub_214CCF434();
      v32 = v34;
      v33 = v35;
      v15 = &v9;
      MEMORY[0x28223BE20](&v9);
      v17 = v8;
      v8[2] = v24;
      v8[3] = location;
      v8[4] = v4;
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38628);
      v6 = v18;
      sub_214BD123C(sub_214CB4AEC, v17, v5, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, v7, &v41);
      v19 = v6;
      result = 0;
      if (v6)
      {
        __break(1u);
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v46 = v26;
      sub_214CCF884();
      result = v23;
      v21 = v23;
    }
  }

  return result;
}

uint64_t sub_214CB1D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA385E8);
  v4 = sub_214CCF904();
  *v5 = a3;
  v5[1] = a4;
  return v4();
}

uint64_t sub_214CB1DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _NSRange();
  result = sub_214CD0074();
  if (__OFSUB__(a4, v10.location + v10.length))
  {
    __break(1u);
  }

  else
  {
    v11.location = v10.location + v10.length;
    v11.length = a4 - (v10.location + v10.length);
    v6 = NSUnionRange(v10, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA38610);
    v7 = sub_214CD0064();
    *v8 = v6;
    return v7();
  }

  return result;
}

id sub_214CB1FAC@<X0>(id a1@<X1>, void *a2@<X0>, void *a3@<X8>)
{
  result = [a1 attributedSubstringFromRange_];
  *a3 = result;
  return result;
}

uint64_t sub_214CB202C@<X0>(BOOL *a1@<X8>)
{
  type metadata accessor for _NSRange();
  result = sub_214CD0074();
  *a1 = v3 != 0;
  return result;
}

void *static SnippetGenerator.highlightedSnippetUsingTokens(tokens:in:inside:highlighting:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v101 = 0;
  v100 = 0;
  v94 = 0;
  v95 = 0;
  v90 = 0;
  v91 = 0;
  v88 = 0;
  v89 = 0;
  v82 = 0;
  v83 = 0;
  v81 = 0;
  v69 = 0;
  v70 = 0;
  v66 = 0;
  v65 = 0;
  v120 = a1;
  v119 = a2;
  v115 = a5;
  v116 = a6;
  v117 = a7;
  v118 = a8;
  v113 = a3;
  v114 = a4;
  v112 = v8;
  sub_214CAE100(a2, a1, v108);
  v59 = v109;
  v60 = v110;
  tokens = v111;
  v106 = v108[0];
  v107 = v108[1];
  v104 = v109;
  v105 = v110;
  v103 = v111;
  v102 = v111;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0);
  sub_214B50C54();
  if (sub_214CCFA94() & 1) != 0 || (sub_214CCF664())
  {
    MEMORY[0x277D82BE0](a2);

    return a2;
  }

  sub_214AF7FCC();
  sub_214CCF614();
  v49 = sub_214BC9508();
  v101 = v49;
  sub_214CAE668();

  v9 = sub_214CAD958();
  NSRegularExpression.init(tokens:options:)(v10, tokens, v9);
  v50 = v11;
  if (v12)
  {
    MEMORY[0x277D82BD8](v49);

    return v47;
  }

  v100 = v11;

  v42 = sub_214CCF544();

  v96[2] = v59;
  v96[3] = v60;
  v43 = [v50 matchesInString:v42 options:sub_214CAD9D4() range:{v59, v60}];
  MEMORY[0x277D82BD8](v42);
  sub_214CAE6CC();
  v96[1] = sub_214CCF7E4();
  KeyPath = swift_getKeyPath();

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA385D8);
  v46 = type metadata accessor for _NSRange();
  v13 = sub_214CAE868();
  v48 = sub_214A6E4F4(sub_214CAE834, KeyPath, v45, v46, MEMORY[0x277D84A98], v13, MEMORY[0x277D84AC0], v47);

  sub_214A62278();
  MEMORY[0x277D82BD8](v43);
  v96[0] = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA385E8);
  sub_214CAE9A0();
  sub_214CCF714();
  result = v96;
  sub_214A62278();
  v40 = v97;
  v41 = v98;
  if (v99)
  {
    MEMORY[0x277D82BE0](a2);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v49);

    return a2;
  }

  v94 = v97;
  v95 = v98;
  v92 = v97;
  v93 = v98;
  v125 = v97;
  v126 = v98;
  v39 = v97 + v98;
  v90 = 0;
  v91 = v97 + v98;
  if (__OFSUB__(v60, v97))
  {
    __break(1u);
  }

  else
  {
    v88 = v97;
    v89 = v60 - v97;
    v86 = v97;
    v87 = v98;
    v123 = v97;
    v124 = v98;
    v84 = v97;
    v85 = v98;
    v121 = v97;
    v122 = v98;
    if (!__OFSUB__(v60, v97 + v98))
    {
      v82 = v97 + v98;
      v83 = v60 - (v97 + v98);
      v37 = swift_allocObject();
      v81 = v37 + 16;
      *(v37 + 16) = v40;
      v38 = [a2 string];
      if (v38)
      {
        v36 = v38;
      }

      else
      {
        sub_214CD01F4();
        __break(1u);
      }

      _s3__C18EnumerationOptionsVMa_0();
      sub_214CD03C4();
      *v17 = 3;
      v17[1] = 256;
      sub_214A63280();
      sub_214B01640();
      sub_214CD0084();
      v33 = v80;
      MEMORY[0x277D82BE0](a2);
      MEMORY[0x277D82BE0](v49);

      v32 = swift_allocObject();
      *(v32 + 16) = v40;
      *(v32 + 24) = v41;
      *(v32 + 32) = v40 + v41;
      *(v32 + 40) = v60 - (v40 + v41);
      *(v32 + 48) = a2;
      *(v32 + 56) = v58;
      *(v32 + 64) = v49;
      *(v32 + 72) = a5;
      *(v32 + 80) = a6;
      *(v32 + 88) = a7;
      *(v32 + 96) = a8;
      *(v32 + 104) = v37;
      v78 = sub_214CB4804;
      v79 = v32;
      aBlock = MEMORY[0x277D85DD0];
      v74 = 1107296256;
      v75 = 0;
      v76 = sub_214C806A0;
      v77 = &block_descriptor_24_0;
      v34 = _Block_copy(&aBlock);

      v71 = 0;
      v72 = v39;
      [v36 enumerateSubstringsInRange:0 options:v39 usingBlock:{v33, v34}];
      _Block_release(v34);
      MEMORY[0x277D82BD8](v36);
      swift_beginAccess();
      v35 = *(v37 + 16);
      swift_endAccess();
      swift_beginAccess();
      result = swift_endAccess();
      if (!__OFSUB__(v60, v35))
      {
        v69 = v35;
        v70 = v60 - v35;
        v67 = v35;
        v68 = v60 - v35;
        v31 = [a2 attributedSubstringFromRange_];
        v66 = v31;
        v65 = v35 != 0;
        if (v35)
        {
          [v31 0x1FAD8E6F8];
          v28 = [v31 attributesAtIndex_longestEffectiveRange_inRange_];
          type metadata accessor for Key();
          sub_214B04398();
          sub_214CCF314();
          MEMORY[0x277D82BD8](v28);
          sub_214BD299C();
          MEMORY[0x277D82BE0](v49);
          v63 = sub_214CAD918(v49);

          v29 = sub_214CCF304();

          v62 = [v63 0x1FAD8E6F8];
          [v63 addAttributes:v29 range:{0, v62, MEMORY[0x277D82BD8](v63).n128_f64[0]}];
          MEMORY[0x277D82BD8](v29);
          MEMORY[0x277D82BE0](v63);
          MEMORY[0x277D82BE0](v63);
          v64 = v63;
          MEMORY[0x277D82BD8](v63);

          v30 = v63;
        }

        else
        {
          v64 = 0;
          v30 = 0;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38638);
        sub_214CD03C4();
        v27 = v19;
        *v19 = v30;
        MEMORY[0x277D82BE0](v31);
        v27[1] = v31;
        sub_214A63280();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA38640);
        sub_214CB477C();
        sub_214CCF6F4();
        sub_214A62278();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38630);
        sub_214CB46C8();
        v24 = sub_214CAD8E0();
        sub_214C666A0();
        v25 = Sequence<>.joined(by:matchingAttributes:)(v24);
        MEMORY[0x277D82BD8](v24);
        sub_214A62278();
        v26 = static SnippetGenerator.highlightingTokens(tokens:in:highlighting:)(tokens, v25, a3, a4);
        v22 = [v26 string];
        sub_214CCF564();
        v23 = sub_214CCF664();

        MEMORY[0x277D82BD8](v22);
        if (v23)
        {
          MEMORY[0x277D82BE0](a2);
          v21 = a2;
        }

        else
        {
          MEMORY[0x277D82BE0](v26);
          v21 = v26;
        }

        MEMORY[0x277D82BD8](v26);
        MEMORY[0x277D82BD8](v25);
        sub_214A671E8(&v64);
        MEMORY[0x277D82BD8](v31);

        MEMORY[0x277D82BD8](v50);
        MEMORY[0x277D82BD8](v49);

        return v21;
      }

      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

double sub_214CB3134(uint64_t a1, uint64_t a2, NSUInteger a3, NSUInteger a4, uint64_t a5, uint64_t a6, uint64_t a7, NSUInteger a8, double a9, double a10, double a11, long double a12, NSUInteger a13, NSUInteger a14, NSUInteger a15, void *a16, uint64_t a17, void *a18, uint64_t a19)
{
  v66 = a1;
  v67 = a2;
  v64 = a3;
  v65 = a4;
  v62 = a5;
  v63 = a6;
  v61 = a7;
  v59 = a8;
  v60 = a13;
  v57 = a14;
  v58 = a15;
  v56 = a16;
  v55 = a17;
  v54 = a18;
  v50 = a9;
  v51 = a10;
  v52 = a11;
  v53 = a12;
  v49 = a19 + 16;
  v47 = a3;
  v48 = a4;
  v68.location = a3;
  v68.length = a4;
  v45 = a8;
  v46 = a13;
  v69.location = a8;
  v69.length = a13;
  v44 = NSUnionRange(v68, v69);
  v43 = v44;
  v42 = v44;
  v40 = a14;
  v41 = a15;
  v70.location = a14;
  v70.length = a15;
  v39 = NSUnionRange(v44, v70);
  v38 = v39;
  v24 = a3 != 0;
  v37 = a3 != 0;
  v36 = v44;
  v23 = [a16 0x1FB7C103ALL];
  v35 = v23;
  v34 = v39;
  v29 = [a16 0x1FB7C103ALL];
  v33 = v29;
  v32 = sub_214CB34E0(v23, a18, v24, 0, a9, a10, a11, a12) & 1;
  v30 = sub_214CB34E0(v29, a18, v24, 1, a9, a10, a11, a12);
  v31[25] = v30 & 1;
  if (v32)
  {
    v20 = 0;
  }

  else
  {
    v20 = v30 ^ 1;
  }

  if (v20)
  {
    v31[0] = 1;
    sub_214CAD888(v31, a7, MEMORY[0x277D85368]);
    MEMORY[0x277D82BD8](v29);
    *&result = MEMORY[0x277D82BD8](v23).n128_u64[0];
  }

  else
  {
    swift_beginAccess();
    *(a19 + 16) = v44.location;
    swift_endAccess();
    MEMORY[0x277D82BD8](v29);
    *&result = MEMORY[0x277D82BD8](v23).n128_u64[0];
  }

  return result;
}

uint64_t sub_214CB34E0(uint64_t a1, void *a2, int a3, int a4, double a5, double a6, double a7, long double a8)
{
  v60 = a1;
  v51 = a2;
  v59 = a3;
  v46 = a5;
  v47 = a6;
  v48 = a7;
  v49 = a8;
  v50 = a4;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v69 = 0u;
  v70 = 0u;
  v68 = 0.0;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v62 = 0;
  v61 = 0;
  v52 = sub_214CD0364();
  v53 = *(v52 - 8);
  v54 = v52 - 8;
  v55 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60);
  v56 = &v32 - v55;
  v57 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x28223BE20](v10);
  v58 = &v32 - v57;
  v80 = v12;
  v79 = v13;
  v78 = v14 & 1;
  *&v76 = v11;
  *(&v76 + 1) = v15;
  *&v77 = v16;
  *(&v77 + 1) = v17;
  v75 = v18 & 1;
  v74 = v8;
  v19 = MEMORY[0x277D82BE0](v12).n128_u64[0];
  v73 = v60;
  if (v59)
  {
    v44 = 0;
    sub_214BD299C();
    MEMORY[0x277D82BE0](v60);
    v45 = sub_214CAD918(v60);
    v61 = v45;
    [v45 insertAttributedString:v51 atIndex:v44];
    MEMORY[0x277D82BE0](v45);
    v20 = v73;
    v73 = v45;
    MEMORY[0x277D82BD8](v20);
    v19 = MEMORY[0x277D82BD8](v45).n128_u64[0];
  }

  [v51 size];
  v71 = v21;
  v72 = v22;
  sub_214CB41C8(v51, v48, v22);
  v42 = v23;
  *&v69 = v24;
  *(&v69 + 1) = v25;
  *&v70 = v26;
  *(&v70 + 1) = v23;
  v68 = sub_214CB3FF8(v50 & 1);
  v41 = v48 * v68;
  (*(v53 + 104))(v58, *MEMORY[0x277D84680], v52);
  v67 = v42;
  (*(v53 + 16))(v56, v58, v52);
  result = (*(v53 + 88))(v56, v52);
  v43 = result;
  if (result == *MEMORY[0x277D84678])
  {
    v67 = round(v42);
    goto LABEL_17;
  }

  if (v43 == *MEMORY[0x277D84670])
  {
    v67 = rint(v42);
    goto LABEL_17;
  }

  if (v43 == *MEMORY[0x277D84680])
  {
    goto LABEL_15;
  }

  if (v43 == *MEMORY[0x277D84688])
  {
LABEL_16:
    v67 = floor(v42);
    goto LABEL_17;
  }

  if (v43 == *MEMORY[0x277D84660])
  {
    v67 = trunc(v42);
    goto LABEL_17;
  }

  if (v43 != *MEMORY[0x277D84668])
  {
    sub_214CCF9C4();
    (*(v53 + 8))(v56, v52);
LABEL_17:
    v33 = v67;
    (*(v53 + 8))(v58, v52);
    v38 = fmax(v49, v33);
    v37 = 0.0;
    v65 = 0uLL;
    *&v66 = v41;
    *(&v66 + 1) = v38;
    v34 = v73;
    MEMORY[0x277D82BE0](v73);
    sub_214CB41C8(v34, v41, v38);
    *&v35 = v28;
    *(&v35 + 1) = v29;
    *&v36 = v30;
    *(&v36 + 1) = v31;
    MEMORY[0x277D82BD8](v34);
    v63 = v35;
    v64 = v36;
    v39 = sub_214B2F92C(*&v35, *(&v35 + 1), *&v36, *(&v36 + 1), v37, v37, v41, v38);
    v62 = v39;
    MEMORY[0x277D82BD8](v73);
    return v39;
  }

  v40 = *&v42 >> 63;
  if (v42 >= 0.0)
  {
LABEL_15:
    v67 = ceil(v42);
    goto LABEL_17;
  }

  if (v40 == 1)
  {
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id SnippetGenerator.init()()
{
  v4 = v0;
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  v2 = objc_msgSendSuper2(&v3, sel_init);
  MEMORY[0x277D82BE0](v2);
  v4 = v2;
  MEMORY[0x277D82BD8](v2);
  return v2;
}

id SnippetGenerator.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_214CB3F78(double a1)
{
  if (0.5 == a1)
  {
    return 0;
  }

  if (1.0 == a1)
  {
    return 1;
  }

  return 2;
}

double sub_214CB3FF8(char a1)
{
  if (a1)
  {
    return 1.0;
  }

  else
  {
    return 0.5;
  }
}

uint64_t sub_214CB4038()
{
  sub_214CB4890();
  sub_214C2F894();
  return sub_214CD03F4() & 1;
}

uint64_t sub_214CB4088()
{
  sub_214CB4890();
  sub_214B5D4E4();
  return sub_214CCF7A4();
}

uint64_t sub_214CB40CC()
{
  sub_214CB4890();
  sub_214B5D4E4();
  return sub_214CCF7C4();
}

uint64_t sub_214CB4118()
{
  sub_214CB4890();
  sub_214B5D4E4();
  return sub_214CCF7B4();
}

uint64_t sub_214CB4164@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214CB3F78(*a1);
  *a2 = result;
  return result;
}

id sub_214CB41C8(void *a1, double a2, double a3)
{
  v6 = a2 * 2.0;
  v7 = a3 * 2.0;
  type metadata accessor for NSStringDrawingOptions();
  sub_214CD03C4();
  *v3 = 1;
  v3[1] = 2;
  sub_214A63280();
  sub_214B01FC0();
  sub_214CD0084();
  return [a1 boundingRectWithSize:v9 options:0 context:{v6, v7, *&a2}];
}

uint64_t block_copy_helper_11_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_214CB442C()
{
  v2 = qword_280C7CDA8;
  if (!qword_280C7CDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA385E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CDA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214CB44B4()
{
  v2 = qword_280C7C448;
  if (!qword_280C7C448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA38610);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7C448);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214CB453C()
{
  v2 = qword_280C7CD78;
  if (!qword_280C7CD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA38620);
    sub_214A8C138();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CD78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214CB4640()
{
  v2 = qword_280C7C438;
  if (!qword_280C7C438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA38610);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7C438);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214CB46C8()
{
  v2 = qword_280C7CE48;
  if (!qword_280C7CE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA38630);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CE48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214CB477C()
{
  v2 = qword_280C7CE38;
  if (!qword_280C7CE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA38640);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CE38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214CB4890()
{
  v2 = qword_27CA38650;
  if (!qword_27CA38650)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38650);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214CB4960()
{
  v2 = qword_27CA38668;
  if (!qword_27CA38668)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38668);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214CB49DC()
{
  v2 = qword_280C7CDC0;
  if (!qword_280C7CDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA385E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CDC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214CB4A64()
{
  v2 = qword_27CA38678;
  if (!qword_27CA38678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA385E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38678);
    return WitnessTable;
  }

  return v2;
}

id sub_214CB4B20(uint64_t a1)
{
  v4 = [v1 initWithAttributedString_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

uint64_t Optional<A>.capitalizedIfDesirable(locale:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = &v62;
  v42 = a1;
  v37 = a2;
  v44 = a3;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  v63 = 0;
  v64 = 0;
  v58 = 0;
  v59 = 0;
  v38 = sub_214CCD2D4();
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v44);
  v43 = &v12 - v41;
  v3[6] = v42;
  v3[4] = v4;
  v3[5] = v5;

  if (!v44)
  {
    goto LABEL_17;
  }

  v34 = v37;
  v35 = v44;
  v6 = v36;
  v7 = v37;
  v8 = v44;
  v29 = v44;
  v30 = v37;
  v36[2] = v37;
  v6[3] = v8;
  *v6 = v7;
  v6[1] = v8;
  v31 = sub_214B60F8C();
  sub_214CCFA74();
  v32 = v60;
  v33 = v61;
  if (!v61)
  {

LABEL_17:

    v14 = v37;
    v15 = v44;
    return v14;
  }

  v27 = v32;
  v28 = v33;
  v26 = v33;
  v58 = v32;
  v59 = v33;
  v9 = sub_214CCF414();
  if (v9 & 1) == 0 || ((, v52 = v30, v53 = v29, v22 = MEMORY[0x277D837D0], sub_214B61150(), sub_214CCFAA4(), v23 = v57, v48 = v54, v49 = v55, v50 = v56, v51 = v57, sub_214CB5040(), sub_214CCFA74(), v24 = v46, v25 = v47, , !v25) ? (v19 = 2) : (v20 = v24, v21 = v25, v17 = v25, v18 = sub_214CCF424(), , v19 = v18 & 1), (v45 = v19, v19 == 2) ? (v16 = 0) : (v16 = v45), (v16))
  {

    goto LABEL_17;
  }

  sub_214B1CFBC();
  v12 = String.capitalizingFirstLetter(locale:)(v43, v30, v29);
  v13 = v10;
  (*(v39 + 8))(v43, v38);

  v14 = v12;
  v15 = v13;
  return v14;
}

unint64_t sub_214CB5040()
{
  v2 = qword_27CA38690;
  if (!qword_27CA38690)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38690);
    return WitnessTable;
  }

  return v2;
}

uint64_t String.capitalizingFirstLetter(locale:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[1] = a1;
  v15 = a2;
  v16 = a3;
  v28 = 0;
  v26 = 0;
  v27 = 0;
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35978) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  v11 = v9 - v10;
  v28 = v3;
  v26 = v4;
  v27 = v5;

  v25[4] = v15;
  v25[5] = v16;
  v17 = sub_214B60F8C();
  v18 = MEMORY[0x277D837D0];
  sub_214CCFA84();
  v12 = v25;
  v25[0] = v25[6];
  v25[1] = v25[7];
  v25[2] = v25[8];
  v25[3] = v25[9];
  sub_214CCD2C4();
  v6 = sub_214CCD2D4();
  (*(*(v6 - 8) + 56))(v11, 0, 1);
  sub_214B61004();
  v19 = MEMORY[0x277D83E40];
  v13 = sub_214CCFFA4();
  v14 = v7;
  sub_214B6107C(v11);
  sub_214B61124();
  v22 = v24;
  v24[0] = v13;
  v24[1] = v14;

  v23[4] = v15;
  v23[5] = v16;
  sub_214B61150();
  sub_214CCFAA4();
  v21 = v23;
  v23[0] = v23[6];
  v23[1] = v23[7];
  v23[2] = v23[8];
  v23[3] = v23[9];
  v20 = sub_214B61168();
  sub_214B611E0();
  sub_214CCFAE4();
  sub_214B61124();
  sub_214A61B48();
  return v25[10];
}

uint64_t Array.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{

  v4 = (a1 & 0x8000000000000000) == 0 && a1 < sub_214CCF854();

  if (!v4)
  {
    return (*(*(a2 - 8) + 56))(a3, 1);
  }

  sub_214CCF914();
  return (*(*(a2 - 8) + 56))(a3, 0, 1);
}

uint64_t String.height(width:font:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v36 = a4;
  v26 = a1;
  v25 = a2;
  v41 = a3;
  v65 = 0.0;
  v64 = 0;
  v62 = 0;
  v63 = 0;
  v60 = 0.0;
  v61 = 0;
  v52 = 0u;
  v53 = 0u;
  v30 = 0;
  v48 = sub_214CD0364();
  v46 = *(v48 - 8);
  v47 = v48 - 8;
  v23 = *(v46 + 64);
  v22 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41);
  v49 = &v20 - v22;
  v24 = v22;
  v5 = MEMORY[0x28223BE20](v4);
  v45 = &v20 - v24;
  v65 = v5;
  v64 = v6;
  v62 = v7;
  v63 = v8;
  v60 = v5;
  v37 = 1.79769313e308;
  v61 = 0x7FEFFFFFFFFFFFFFLL;

  v40 = sub_214CCF544();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA365F0);
  v38 = 1;
  v29 = sub_214CD03C4();
  v27 = v9;
  sub_214A671A8(MEMORY[0x277D740A8], v9);
  MEMORY[0x277D82BE0](v26);
  v10 = sub_214BD1F48();
  v11 = v26;
  v12 = v27;
  v13 = v10;
  v14 = v29;
  v27[4] = v13;
  v12[1] = v11;
  sub_214A63280();
  v31 = v14;
  v32 = type metadata accessor for Key();
  v34 = sub_214B04398();
  v33 = MEMORY[0x277D84F70] + 8;
  v35 = sub_214CCF344();
  v39 = sub_214CCF304();

  v58 = v36;
  v59 = v37;
  [v40 boundingRectWithSize:v38 options:v39 attributes:0 context:{v36, v37}];
  v54 = v15;
  v55 = v16;
  v56 = v17;
  v57 = v18;
  *&v42 = v15;
  *(&v42 + 1) = v16;
  *&v43 = v17;
  *(&v43 + 1) = v18;
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](v40);

  v52 = v42;
  v53 = v43;
  v44 = sub_214B2F8EC(*&v42, *(&v42 + 1), *&v43, *(&v43 + 1));
  (*(v46 + 104))(v45, *MEMORY[0x277D84680], v48);
  v51 = v44;
  (*(v46 + 16))(v49, v45, v48);
  result = (*(v46 + 88))(v49, v48);
  v50 = result;
  if (result == *MEMORY[0x277D84678])
  {
    v51 = round(v44);
    goto LABEL_15;
  }

  if (v50 == *MEMORY[0x277D84670])
  {
    v51 = rint(v44);
    goto LABEL_15;
  }

  if (v50 == *MEMORY[0x277D84680])
  {
    goto LABEL_13;
  }

  if (v50 == *MEMORY[0x277D84688])
  {
LABEL_14:
    v51 = floor(v44);
    goto LABEL_15;
  }

  if (v50 == *MEMORY[0x277D84660])
  {
    v51 = trunc(v44);
    goto LABEL_15;
  }

  if (v50 != *MEMORY[0x277D84668])
  {
    sub_214CCF9C4();
    (*(v46 + 8))(v49, v48);
LABEL_15:
    v20 = v51;
    return (*(v46 + 8))(v45, v48);
  }

  v21 = *&v44 >> 63;
  if (v44 >= 0.0)
  {
LABEL_13:
    v51 = ceil(v44);
    goto LABEL_15;
  }

  if (v21 == 1)
  {
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t String.partiallyRedactedString.getter()
{
  v1 = objc_opt_self();

  v2 = sub_214CCF544();

  v3 = [v1 partiallyRedactedStringForString_];
  MEMORY[0x277D82BD8](v2);
  v4 = sub_214CCF564();
  MEMORY[0x277D82BD8](v3);
  return v4;
}

uint64_t String.partiallyRedactedSubjectOrSummary.getter()
{
  v1 = objc_opt_self();

  v2 = sub_214CCF544();

  v3 = [v1 ec:v2 partiallyRedactedStringForSubjectOrSummary:?];
  MEMORY[0x277D82BD8](v2);
  v4 = sub_214CCF564();
  MEMORY[0x277D82BD8](v3);
  return v4;
}

uint64_t String.redactedQueryString.getter()
{
  v1 = objc_opt_self();

  v2 = sub_214CCF544();

  v3 = [v1 redactedQueryStringForQueryString_];
  MEMORY[0x277D82BD8](v2);
  v4 = sub_214CCF564();
  MEMORY[0x277D82BD8](v3);
  return v4;
}

uint64_t String.partiallyRedactedAddress.getter()
{
  v3 = objc_opt_self();

  v4 = sub_214CCF544();

  v5 = [v3 ec:v4 partiallyRedactedStringForAddress:0 localPart:? domain:?];
  MEMORY[0x277D82BD8](v4);
  if (!v5)
  {
    return 0;
  }

  v1 = sub_214CCF564();
  MEMORY[0x277D82BD8](v5);
  return v1;
}

uint64_t *sub_214CB5E44()
{
  if (qword_280C7D210 != -1)
  {
    swift_once();
  }

  return &qword_280C7D218;
}

uint64_t TitleAndButtonSupplementaryView_iOS.Model.title.getter()
{
  v2 = *v0;

  return v2;
}

uint64_t TitleAndButtonSupplementaryView_iOS.Model.buttonConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for TitleAndButtonSupplementaryView_iOS.Model() + 20);
  v2 = sub_214CCFEA4();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t TitleAndButtonSupplementaryView_iOS.Model.buttonAction.getter()
{
  v2 = *(v0 + *(type metadata accessor for TitleAndButtonSupplementaryView_iOS.Model() + 24));
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t TitleAndButtonSupplementaryView_iOS.Model.init(title:buttonConfiguration:buttonAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v25 = a5;
  v22 = a1;
  v31 = a2;
  v29 = a3;
  v26 = a4;
  v37 = 0;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v33 = 0;
  v19[1] = 0;
  v30 = sub_214CCFEA4();
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v20 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v23 = v19 - v20;
  v24 = type metadata accessor for TitleAndButtonSupplementaryView_iOS.Model();
  v21 = (*(*(v24 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v31);
  v32 = (v19 - v21);
  v37 = v19 - v21;
  v35 = v5;
  v36 = v6;
  v34 = v7;
  v33 = v8;

  v9 = v23;
  v10 = v27;
  v11 = v29;
  v12 = v30;
  v13 = v31;
  v14 = v32;
  *v32 = v22;
  v14[1] = v13;
  (*(v10 + 16))(v9, v11, v12);
  (*(v27 + 32))(v32 + *(v24 + 20), v23, v30);
  MEMORY[0x277D82BE0](v26);
  v15 = v25;
  v16 = v32;
  *(v32 + *(v24 + 24)) = v26;
  sub_214CB6CC4(v16, v15);
  v17 = MEMORY[0x277D82BD8](v26);
  (*(v27 + 8))(v29, v30, v17);

  return sub_214CB6DB0(v32);
}

uint64_t TitleAndButtonSupplementaryView_iOS.model.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_model);
  swift_beginAccess();
  sub_214CB6E54(v3, a1);
  return swift_endAccess();
}

double sub_214CB624C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v10 = a2;
  v4 = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38698) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v9 = (&v4 - v5);
  v6 = *v2;
  MEMORY[0x277D82BE0](v6);
  v13 = v6;
  v11 = v6;
  v7 = (v6 + OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_model);
  v8 = &v12;
  swift_beginAccess();
  sub_214CB6E54(v7, v9);
  swift_endAccess();
  sub_214CB8768(v9, v10);
  *&result = MEMORY[0x277D82BD8](v11).n128_u64[0];
  return result;
}

double sub_214CB6354(uint64_t a1, uint64_t *a2)
{
  v5 = a1;
  v7 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38698) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v9 = &v4 - v6;
  sub_214CB6E54(v2, (&v4 - v6));
  v8 = *v7;
  MEMORY[0x277D82BE0](v8);
  v11 = v8;
  v10 = v8;
  TitleAndButtonSupplementaryView_iOS.model.setter(v9);
  *&result = MEMORY[0x277D82BD8](v10).n128_u64[0];
  return result;
}

uint64_t TitleAndButtonSupplementaryView_iOS.model.setter(uint64_t a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38698) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v5 = (&v4 - v4);
  v11 = v2;
  v10 = v1;
  sub_214CB6E54(v2, (&v4 - v4));
  v6 = (v1 + OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_model);
  v7 = &v9;
  swift_beginAccess();
  sub_214CB7000(v5, v6);
  swift_endAccess();
  sub_214CB6514();
  return sub_214CB72C4(v8);
}

Swift::Void __swiftcall TitleAndButtonSupplementaryView_iOS.configure()()
{
  v41 = 0;
  v40 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA365A8);
  v28 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v29 = &v4 - v28;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38698);
  v30 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v37 = &v4 - v30;
  v38 = type metadata accessor for TitleAndButtonSupplementaryView_iOS.Model();
  v35 = *(v38 - 8);
  v36 = v38 - 8;
  v31 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38);
  v32 = &v4 - v31;
  v41 = &v4 - v31;
  v40 = v0;
  v33 = (v0 + OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_model);
  v34 = &v39;
  swift_beginAccess();
  sub_214CB6E54(v33, v37);
  swift_endAccess();
  if ((*(v35 + 48))(v37, 1, v38) == 1)
  {
    sub_214CB72C4(v37);
  }

  else
  {
    sub_214CB73A8(v37, v32);
    v24 = *&v27[OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_label];
    MEMORY[0x277D82BE0](v24);
    v25 = *v32;
    v26 = *(v32 + 1);

    if (v26)
    {
      v22 = v25;
      v23 = v26;
      v19 = v26;
      v20 = sub_214CCF544();

      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v18 = v21;
    [v24 setText_];
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BE0](v27);
    if (v26)
    {
      v16 = v25;
      v17 = v26;
      v13 = v26;
      v14 = sub_214CCF544();

      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    [v27 setAccessibilityLabel_];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v27);
    v10 = &qword_280C7D000;
    v9 = *&v27[OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_button];
    MEMORY[0x277D82BE0](v9);
    v5 = &v32[*(v38 + 20)];
    v8 = sub_214CCFEA4();
    v6 = *(v8 - 8);
    v7 = v8 - 8;
    (*(v6 + 16))(v29, v5);
    (*(v6 + 56))(v29, 0, 1, v8);
    sub_214CCFED4();
    MEMORY[0x277D82BD8](v9);
    v12 = *&v27[v10[44]];
    MEMORY[0x277D82BE0](v12);
    v11 = *&v32[*(v38 + 24)];
    *&v3 = MEMORY[0x277D82BE0](v11).n128_u64[0];
    [v12 addAction:v11 forControlEvents:{64, v3}];
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    sub_214CB6DB0(v32);
  }
}

void (*TitleAndButtonSupplementaryView_iOS.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_214CB6AC4;
}

void sub_214CB6AC4(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_214CB6514();
  }
}

uint64_t sub_214CB6B14()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_label);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214CB6B5C()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_button);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214CB6BA4()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_stackView);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214CB6BEC()
{
  type metadata accessor for TitleAndButtonSupplementaryView_iOS();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA386A0);
  result = sub_214CCF5B4();
  qword_280C7D218 = result;
  qword_280C7D220 = v1;
  return result;
}

uint64_t type metadata accessor for TitleAndButtonSupplementaryView_iOS.Model()
{
  v1 = qword_280C7D200;
  if (!qword_280C7D200)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

char *sub_214CB6CC4(char *a1, char *a2)
{
  *a2 = *a1;
  v4 = *(a1 + 1);

  *(a2 + 1) = v4;
  v6 = type metadata accessor for TitleAndButtonSupplementaryView_iOS.Model();
  v5 = *(v6 + 20);
  v2 = sub_214CCFEA4();
  (*(*(v2 - 8) + 16))(&a2[v5], &a1[v5]);
  v8 = *(v6 + 24);
  v9 = *&a1[v8];
  MEMORY[0x277D82BE0](v9);
  result = a2;
  *&a2[v8] = v9;
  return result;
}

uint64_t sub_214CB6DB0(uint64_t a1)
{

  v4 = type metadata accessor for TitleAndButtonSupplementaryView_iOS.Model();
  v3 = *(v4 + 20);
  v1 = sub_214CCFEA4();
  (*(*(v1 - 8) + 8))(a1 + v3);
  MEMORY[0x277D82BD8](*(a1 + *(v4 + 24)));
  return a1;
}

void *sub_214CB6E54(void *a1, void *a2)
{
  v13 = type metadata accessor for TitleAndButtonSupplementaryView_iOS.Model();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(a1, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38698);
    memcpy(a2, a1, *(*(v4 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v6 = a1[1];

    a2[1] = v6;
    v8 = a2 + *(v13 + 20);
    v7 = a1 + *(v13 + 20);
    v2 = sub_214CCFEA4();
    (*(*(v2 - 8) + 16))(v8, v7);
    v9 = *(v13 + 24);
    v10 = *(a1 + v9);
    v3 = MEMORY[0x277D82BE0](v10);
    *(a2 + v9) = v10;
    (*(v14 + 56))(v3);
  }

  return a2;
}

void *sub_214CB7000(void *a1, void *a2)
{
  v15 = type metadata accessor for TitleAndButtonSupplementaryView_iOS.Model();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if ((v17)(a2, 1))
  {
    if (v17(a1, 1, v15))
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38698);
      memcpy(a2, a1, *(*(v7 - 8) + 64));
    }

    else
    {
      *a2 = *a1;
      v10 = a2 + *(v15 + 20);
      v9 = a1 + *(v15 + 20);
      v6 = sub_214CCFEA4();
      (*(*(v6 - 8) + 32))(v10, v9);
      *(a2 + *(v15 + 24)) = *(a1 + *(v15 + 24));
      (*(v16 + 56))();
    }
  }

  else if (v17(a1, 1, v15))
  {
    sub_214CB6DB0(a2);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38698);
    memcpy(a2, a1, *(*(v5 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    a2[1] = a1[1];

    v12 = a2 + *(v15 + 20);
    v11 = a1 + *(v15 + 20);
    v2 = sub_214CCFEA4();
    (*(*(v2 - 8) + 40))(v12, v11);
    v3 = *(v15 + 24);
    v4 = *(a2 + v3);
    *(a2 + v3) = *(a1 + v3);
    MEMORY[0x277D82BD8](v4);
  }

  return a2;
}

uint64_t sub_214CB72C4(uint64_t a1)
{
  v5 = type metadata accessor for TitleAndButtonSupplementaryView_iOS.Model();
  if (!(*(*(v5 - 8) + 48))(a1, 1))
  {

    v3 = a1 + *(v5 + 20);
    v1 = sub_214CCFEA4();
    (*(*(v1 - 8) + 8))(v3);
    MEMORY[0x277D82BD8](*(a1 + *(v5 + 24)));
  }

  return a1;
}

char *sub_214CB73A8(char *a1, char *a2)
{
  *a2 = *a1;
  v5 = type metadata accessor for TitleAndButtonSupplementaryView_iOS.Model();
  v4 = *(v5 + 20);
  v2 = sub_214CCFEA4();
  (*(*(v2 - 8) + 32))(&a2[v4], &a1[v4]);
  result = a2;
  *&a2[*(v5 + 24)] = *&a1[*(v5 + 24)];
  return result;
}

uint64_t type metadata accessor for TitleAndButtonSupplementaryView_iOS()
{
  v1 = qword_280C7D150;
  if (!qword_280C7D150)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t static TitleAndButtonSupplementaryView_iOS.reuseIdentifier.getter()
{
  v1 = *sub_214CB5E44();

  return v1;
}

char *TitleAndButtonSupplementaryView_iOS.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v13 = a1;
  *(&v13 + 1) = a2;
  *&v14 = a3;
  *(&v14 + 1) = a4;
  ObjectType = swift_getObjectType();
  v20 = v13;
  v21 = v14;
  v22 = v4;
  v8 = OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_model;
  v5 = type metadata accessor for TitleAndButtonSupplementaryView_iOS.Model();
  (*(*(v5 - 8) + 56))(&v4[v8], 1);
  v9 = OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_label;
  sub_214A73F68();
  *&v4[v9] = sub_214A61730();
  v10 = OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_button;
  sub_214BD2A6C();
  *&v22[v10] = sub_214A61730();
  v11 = OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_stackView;
  sub_214A73FCC();
  *&v22[v11] = sub_214A61730();
  v19.receiver = v22;
  v19.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v19, sel_initWithFrame_, v13, v14);
  MEMORY[0x277D82BE0](v17);
  v22 = v17;
  TitleAndButtonSupplementaryView_iOS.setupLayout()();
  MEMORY[0x277D82BE0](v17);
  v15 = *MEMORY[0x277D258F8];
  MEMORY[0x277D82BE0](*MEMORY[0x277D258F8]);
  sub_214CCF564();
  v16 = sub_214CCF544();

  [v17 setAccessibilityIdentifier_];
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BE0](v17);
  type metadata accessor for UIAccessibilityTraits();
  sub_214CD03C4();
  *v6 = *MEMORY[0x277D76558];
  sub_214A63280();
  sub_214CB80E4();
  sub_214CD0084();
  [v17 setAccessibilityTraits_];
  MEMORY[0x277D82BD8](v17);
  [v17 setIsAccessibilityElement_];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v22);
  return v17;
}

Swift::Void __swiftcall TitleAndButtonSupplementaryView_iOS.setupLayout()()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_stackView);
  [v31 addSubview_];
  MEMORY[0x277D82BD8](v2);
  sub_214A7802C();
  v39 = sub_214A61730();
  v4 = *&v31[OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_stackView];
  MEMORY[0x277D82BE0](v4);
  v3 = *&v31[OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_label];
  [v4 0x1FBB16380];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  v5 = *&v31[OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_stackView];
  [v5 0x1FBB16380];
  MEMORY[0x277D82BD8](v5);
  v6 = *&v31[OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_stackView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x277D82BD8](v6);
  v7 = *&v31[OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_stackView];
  [v7 setAxis_];
  MEMORY[0x277D82BD8](v7);
  v8 = *&v31[OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_stackView];
  [v8 setDistribution_];
  MEMORY[0x277D82BD8](v8);
  v9 = *&v31[OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_stackView];
  [v9 setAlignment_];
  MEMORY[0x277D82BD8](v9);
  v10 = *&v31[OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_stackView];
  MEMORY[0x277D82BE0](v10);
  [v10 setSpacing_];
  MEMORY[0x277D82BD8](v10);
  v14 = *&v31[OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_label];
  MEMORY[0x277D82BE0](v14);
  v11 = objc_opt_self();
  v12 = *MEMORY[0x277D76988];
  v13 = [v11 preferredFontForTextStyle_];
  MEMORY[0x277D82BD8](v12);
  UILabel.contentSizeAdjustingFont(_:)(v13);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  v37 = objc_opt_self();
  sub_214A6F394();
  sub_214CD03C4();
  v36 = v1;
  v15 = *&v31[OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_stackView];
  v18 = [v15 0x1FBBB4950];
  MEMORY[0x277D82BD8](v15);
  v16 = [v31 0x1FBB5C2A9];
  v17 = [v16 0x1FBBB4950];
  v19 = [v18 0x1FBB28F65];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  *v36 = v19;
  v20 = *&v31[OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_stackView];
  v23 = [v20 0x1FBB20D25];
  MEMORY[0x277D82BD8](v20);
  v21 = [v31 0x1FBB5C2A9];
  v22 = [v21 0x1FBB20D25];
  v24 = [v23 0x1FBB28F65];
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  v36[1] = v24;
  v25 = *&v31[OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_stackView];
  v28 = [v25 0x1FBB5C529];
  MEMORY[0x277D82BD8](v25);
  v26 = [v31 0x1FBB78132];
  v27 = [v26 0x1FBB5C529];
  v29 = [v28 0x1FBB28F65];
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  v36[2] = v29;
  v30 = *&v31[OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_stackView];
  v34 = [v30 0x1FBBB59CCLL];
  MEMORY[0x277D82BD8](v30);
  v32 = [v31 0x1FBB78132];
  v33 = [v32 0x1FBBB59CCLL];
  v35 = [v34 0x1FBB28F65];
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v34);
  v36[3] = v35;
  sub_214A63280();
  v38 = sub_214CCF7D4();

  [v37 activateConstraints_];
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v39);
}

unint64_t sub_214CB80E4()
{
  v2 = qword_280C7CA10;
  if (!qword_280C7CA10)
  {
    type metadata accessor for UIAccessibilityTraits();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CA10);
    return WitnessTable;
  }

  return v2;
}

void sub_214CB81B0()
{
  v1 = OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_model;
  v0 = type metadata accessor for TitleAndButtonSupplementaryView_iOS.Model();
  (*(*(v0 - 8) + 56))(v1, 1);
  v2 = OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_label;
  sub_214A73F68();
  *v2 = sub_214A61730();
  v3 = OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_button;
  sub_214BD2A6C();
  *v3 = sub_214A61730();
  v4 = OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_stackView;
  sub_214A73FCC();
  *v4 = sub_214A61730();
  sub_214CCF614();
  sub_214CD0204();
  __break(1u);
}

id TitleAndButtonSupplementaryView_iOS.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_214CB8484()
{
  updated = sub_214CB8578();
  if (v0 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_214CB8578()
{
  v4 = qword_280C7D1C8[0];
  if (!qword_280C7D1C8[0])
  {
    type metadata accessor for TitleAndButtonSupplementaryView_iOS.Model();
    v3 = sub_214CCFF34();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, qword_280C7D1C8);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_214CB8664()
{
  v4 = sub_214B5CC3C();
  if (v0 <= 0x3F)
  {
    v4 = sub_214CCFEA4();
    if (v1 <= 0x3F)
    {
      v4 = sub_214BD1DB0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

_OWORD *sub_214CB8768(_OWORD *a1, _OWORD *a2)
{
  v9 = type metadata accessor for TitleAndButtonSupplementaryView_iOS.Model();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38698);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v6 = a2 + *(v9 + 20);
    v5 = a1 + *(v9 + 20);
    v2 = sub_214CCFEA4();
    (*(*(v2 - 8) + 32))(v6, v5);
    *(a2 + *(v9 + 24)) = *(a1 + *(v9 + 24));
    (*(v10 + 56))();
  }

  return a2;
}

uint64_t *sub_214CB88D8()
{
  if (qword_280C7DCB8 != -1)
  {
    swift_once();
  }

  return &qword_280C7DCC0;
}

uint64_t TitleSupplementaryView.title.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_title);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

double sub_214CB89AC@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v4 = (v3 + OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_title);
  swift_beginAccess();
  v5 = *v4;
  v7 = v4[1];

  swift_endAccess();
  *a2 = v5;
  a2[1] = v7;
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214CB8A5C(void *a1, void *a2)
{
  sub_214A61AD0(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  TitleSupplementaryView.title.setter(v6, v5);
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

uint64_t TitleSupplementaryView.title.setter(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_title);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
  sub_214CB8B80();
}

uint64_t sub_214CB8B80()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_title);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  swift_endAccess();
  sub_214CB8C00(v3, v4);
}

double sub_214CB8C00(uint64_t a1, uint64_t a2)
{
  v9 = *(v2 + OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_label);
  MEMORY[0x277D82BE0](v9);

  if (a2)
  {
    v6 = sub_214CCF544();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  [v9 setText_];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v9);
  (MEMORY[0x277D82BE0])();

  if (a2)
  {
    v4 = sub_214CCF544();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  [v8 setAccessibilityLabel_];
  MEMORY[0x277D82BD8](v5);
  *&result = (MEMORY[0x277D82BD8])().n128_u64[0];
  return result;
}

uint64_t (*TitleSupplementaryView.title.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_214CB8E10;
}

uint64_t sub_214CB8E10(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  return sub_214CB8B80();
}

double TitleSupplementaryView.horizontalPadding.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_horizontalPadding);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

double sub_214CB8EC4@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v4 = (v3 + OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_horizontalPadding);
  swift_beginAccess();
  v6 = *v4;
  swift_endAccess();
  *a2 = v6;
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214CB8F60(double *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  TitleSupplementaryView.horizontalPadding.setter(v4);
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

void TitleSupplementaryView.horizontalPadding.setter(double a1)
{
  v2 = (v1 + OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_horizontalPadding);
  swift_beginAccess();
  *v2 = a1;
  swift_endAccess();
  sub_214CB9038();
}

void sub_214CB9064()
{
  v9 = OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_leadingConstraint;
  v10 = (v0 + OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_leadingConstraint);
  swift_beginAccess();
  if (*v10)
  {
    v7 = *(v8 + v9);
    MEMORY[0x277D82BE0](v7);
    swift_endAccess();
    v5 = (v8 + OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_horizontalPadding);
    swift_beginAccess();
    v6 = *v5;
    swift_endAccess();
    [v7 setConstant_];
    MEMORY[0x277D82BD8](v7);
  }

  else
  {
    swift_endAccess();
  }

  v4 = (v8 + OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_trailingConstraint);
  swift_beginAccess();
  if (*v4)
  {
    v3 = *v4;
    MEMORY[0x277D82BE0](*v4);
    swift_endAccess();
    v1 = (v8 + OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_horizontalPadding);
    swift_beginAccess();
    v2 = *v1;
    swift_endAccess();
    [v3 setConstant_];
    MEMORY[0x277D82BD8](v3);
  }

  else
  {
    swift_endAccess();
  }
}

void (*TitleSupplementaryView.horizontalPadding.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_214CB929C;
}

void sub_214CB929C(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_214CB9038();
  }
}

uint64_t sub_214CB92EC()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_label);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214CB9334()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_leadingConstraint);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214CB93A4(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_leadingConstraint);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214CB943C()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_trailingConstraint);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214CB94AC(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_trailingConstraint);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214CB9544()
{
  type metadata accessor for TitleSupplementaryView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA386D0);
  result = sub_214CCF5B4();
  qword_280C7DCC0 = result;
  qword_280C7DCC8 = v1;
  return result;
}

uint64_t static TitleSupplementaryView.reuseIdentifier.getter()
{
  v1 = *sub_214CB88D8();

  return v1;
}

char *TitleSupplementaryView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v10 = a1;
  *(&v10 + 1) = a2;
  *&v11 = a3;
  *(&v11 + 1) = a4;
  ObjectType = swift_getObjectType();
  v17 = v10;
  v18 = v11;
  v19 = v4;
  v5 = &v4[OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_title];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v19[OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_horizontalPadding] = 0;
  v8 = OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_label;
  sub_214A73F68();
  *&v19[v8] = sub_214A61730();
  *&v19[OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_leadingConstraint] = 0;
  *&v19[OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_trailingConstraint] = 0;
  v16.receiver = v19;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_initWithFrame_, v10, v11);
  MEMORY[0x277D82BE0](v14);
  v19 = v14;
  sub_214CB994C();
  MEMORY[0x277D82BE0](v14);
  v12 = *MEMORY[0x277D258F8];
  MEMORY[0x277D82BE0](*MEMORY[0x277D258F8]);
  sub_214CCF564();
  v13 = sub_214CCF544();

  [v14 setAccessibilityIdentifier_];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BE0](v14);
  type metadata accessor for UIAccessibilityTraits();
  sub_214CD03C4();
  *v6 = *MEMORY[0x277D76558];
  sub_214A63280();
  sub_214CB80E4();
  sub_214CD0084();
  [v14 setAccessibilityTraits_];
  MEMORY[0x277D82BD8](v14);
  [v14 setIsAccessibilityElement_];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v19);
  return v14;
}

double sub_214CB994C()
{
  v6 = *&v0[OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_label];
  [v0 addSubview_];
  MEMORY[0x277D82BD8](v6);
  v7 = *&v0[OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_label];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x277D82BD8](v7);
  v12 = *&v0[OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_label];
  MEMORY[0x277D82BE0](v12);
  v8 = objc_opt_self();
  v9 = *MEMORY[0x277D76988];
  v11 = [v8 preferredFontForTextStyle_];
  MEMORY[0x277D82BD8](v9);
  UILabel.contentSizeAdjustingFont(_:)(v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  v13 = *&v10[OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_label];
  v18 = [v13 0x1FBB5C529];
  MEMORY[0x277D82BD8](v13);
  v14 = [v10 0x1FBB78132];
  v17 = [v14 0x1FBB5C529];
  MEMORY[0x277D82BD8](v14);
  v15 = &v10[OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_horizontalPadding];
  swift_beginAccess();
  v16 = *v15;
  swift_endAccess();
  v20 = [v18 0x1FBB28F7ELL];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  v19 = &v10[OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_leadingConstraint];
  swift_beginAccess();
  v1 = *v19;
  *v19 = v20;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  v21 = *&v10[OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_label];
  v26 = [v21 0x1FBBB59CCLL];
  MEMORY[0x277D82BD8](v21);
  v22 = [v10 0x1FBB78132];
  v25 = [v22 0x1FBBB59CCLL];
  MEMORY[0x277D82BD8](v22);
  v23 = &v10[OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_horizontalPadding];
  swift_beginAccess();
  v24 = *v23;
  swift_endAccess();
  v28 = [v26 0x1FBB28F7ELL];
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  v27 = &v10[OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_trailingConstraint];
  swift_beginAccess();
  v2 = *v27;
  *v27 = v28;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  v29 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36598);
  sub_214CD03C4();
  v42 = v3;
  v30 = *&v10[OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_label];
  v33 = [v30 0x1FBBB4950];
  MEMORY[0x277D82BD8](v30);
  v31 = [v10 0x1FBB5C2A9];
  v32 = [v31 0x1FBBB4950];
  MEMORY[0x277D82BD8](v31);
  v34 = [v33 0x1FBB28F7ELL];
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  *v42 = v34;
  v35 = *&v10[OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_label];
  v38 = [v35 0x1FBB20D25];
  MEMORY[0x277D82BD8](v35);
  v36 = [v10 0x1FBB5C2A9];
  v37 = [v36 0x1FBB20D25];
  MEMORY[0x277D82BD8](v36);
  v39 = [v38 0x1FBB28F7ELL];
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](v38);
  v42[1] = v39;
  v40 = &v10[OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_leadingConstraint];
  swift_beginAccess();
  sub_214A671A8(v40, v42 + 2);
  swift_endAccess();
  v41 = &v10[OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_trailingConstraint];
  swift_beginAccess();
  sub_214A671A8(v41, v42 + 3);
  swift_endAccess();
  sub_214A63280();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA365A0);
  sub_214A6F394();
  sub_214BD01B4();
  sub_214CCF6F4();
  sub_214A62278();
  v5 = sub_214CCF7D4();

  [v29 activateConstraints_];
  *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  return result;
}

void sub_214CBA1F4()
{
  v0 = OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_title;
  *OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_title = 0;
  *(v0 + 8) = 0;
  *OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_horizontalPadding = 0;
  v1 = OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_label;
  sub_214A73F68();
  *v1 = sub_214A61730();
  *OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_leadingConstraint = 0;
  *OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_trailingConstraint = 0;
  sub_214CCF614();
  sub_214CD0204();
  __break(1u);
}

id TitleSupplementaryView.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ToolboxErrors.localizedStringResource.getter@<X0>(uint64_t a1@<X8>)
{
  v71 = v128;
  v72 = a1;
  v73 = "Dialog to show and say when we encountered an unexpected MailMessageEntityID version.";
  v74 = "Invalid_Message_Entity_Dialog";
  v75 = "Dialog to show and say when the user has asked to summarize one or more mail messages, but we have nothing to summarize.";
  v76 = "Nothing_To_Summarize_Dialog";
  v77 = "Dialog to show and say when the user has asked to unsubscribe to a non-mailing list email, which we won't be able to do.";
  v78 = "Cannot_Unsubscribe_Dialog";
  v79 = "Dialog to show and say when the user has asked to do something with Mail, but they haven't set up an account yet.";
  v80 = "No_Active_Accounts_Dialog";
  v81 = "Dialog to show and say when the user has asked to do something with emails, but we did not find any matching results.";
  v82 = "No_Messages_Found_Dialog";
  v83 = "Dialog to show and say when the user has asked to undo the email they just sent, but we cannot.";
  v84 = "Undo_Send_Delay_Elapsed_Dialog";
  v85 = "Undo_Send_Failed_Dialog";
  v86 = "Dialog to show and say when the user has asked to save an email message as a draft, but attachments are not done loading onto the message.";
  v87 = "Incomplete_Attachments_Dialog";
  v88 = "Dialog to show and say when the user has asked to make edits to an email message draft, but is not actively composing an email message draft.";
  v89 = "Active_Draft_Not_Found_Dialog";
  v146 = 0;
  v123 = 0;
  v101 = 0;
  v90 = sub_214CCF514();
  v91 = *(v90 - 8);
  v92 = v90 - 8;
  v93 = (*(v91 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v94 = v22 - v93;
  v95 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v96 = v22 - v95;
  v97 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v98 = v22 - v97;
  v99 = (*(*(sub_214CCD094() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v101);
  v100 = v22 - v99;
  v102 = (*(*(sub_214CCD2D4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v101);
  v103 = v22 - v102;
  v6 = sub_214CCF534();
  v104 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v105 = v22 - v104;
  v106 = *v1;
  v146 = v106;
  if (v106)
  {
    if (v106 == 1)
    {
      v65 = 1;
      sub_214CCF614();
      sub_214CCF4C4();
      v66 = sub_214CCF614();
      v67 = v8;
      sub_214B1CFBC();
      sub_214B1CFD4(v100);
      v111 = v86;
      v112 = 138;
      v113 = 2;
      v114 = 0;
      return sub_214CCD0B4();
    }

    else if (v106 == 2)
    {
      v64 = [objc_opt_self() em_userDefaults];
      if (v64)
      {
        v63 = v64;
        v61 = v64;
        v58 = *MEMORY[0x277D06D10];
        MEMORY[0x277D82BE0](v58);
        sub_214AFD2F4(v58);
        v59 = v9;
        v60 = sub_214CCF544();
        MEMORY[0x277D82BD8](v58);

        v62 = [v61 objectForKey_];
        MEMORY[0x277D82BD8](v60);
        MEMORY[0x277D82BD8](v61);
        if (v62)
        {
          v57 = v62;
          v56 = v62;
          v55 = &v115;
          sub_214CD0054();
          sub_214B11A4C(v55, &v116);
          swift_unknownObjectRelease();
        }

        else
        {
          v116 = 0uLL;
          v117 = 0uLL;
        }

        v10 = v71;
        *v71 = v116;
        v10[1] = v117;
      }

      else
      {
        memset(v128, 0, sizeof(v128));
        v129 = 0;
      }

      if (v129)
      {
        if (swift_dynamicCast())
        {
          v53 = v118;
          v54 = 0;
        }

        else
        {
          v53 = 0;
          v54 = 1;
        }

        v51 = v53;
        v52 = v54;
      }

      else
      {
        sub_214A7D24C(v128);
        v51 = 0;
        v52 = 1;
      }

      v50 = v51;
      if ((v52 & 1) != 0 || (v49 = v50, v48 = v49, v123 = v49, v49 <= 0))
      {
        v39 = 0;
        v38 = 1;
        sub_214CCF614();
        sub_214CCF4C4();
        v40 = sub_214CCF614();
        v41 = v15;
        sub_214B1CFBC();
        sub_214B1CFD4(v100);
        v124 = v83;
        v125 = 95;
        v126 = 2;
        v127 = v39 & 1;
        return sub_214CCD0B4();
      }

      else
      {
        sub_214CCF504();
        v45 = 1;
        sub_214CCF614();
        v42 = v11;
        sub_214CCF4F4();

        v122 = v48;
        sub_214CCF5C4();
        v43 = v12;
        sub_214CCF4E4();

        sub_214CCF614();
        v44 = v13;
        sub_214CCF4F4();

        (*(v91 + 16))(v96, v98, v90);
        (*(v91 + 32))(v94, v96, v90);
        (*(v91 + 8))(v98, v90);
        sub_214CCF524();
        v46 = sub_214CCF614();
        v47 = v14;
        sub_214B1CFBC();
        sub_214B1CFD4(v100);
        v119 = v83;
        v120 = 95;
        v121 = 2;
        return sub_214CCD0B4();
      }
    }

    else if (v106 == 3)
    {
      v35 = 1;
      sub_214CCF614();
      sub_214CCF4C4();
      v36 = sub_214CCF614();
      v37 = v16;
      sub_214B1CFBC();
      sub_214B1CFD4(v100);
      v130 = v81;
      v131 = 117;
      v132 = 2;
      return sub_214CCD0B4();
    }

    else if (v106 == 4)
    {
      v32 = 0;
      v31 = 1;
      sub_214CCF614();
      sub_214CCF4C4();
      v33 = sub_214CCF614();
      v34 = v17;
      sub_214B1CFBC();
      sub_214B1CFD4(v100);
      v133 = v79;
      v134 = 113;
      v135 = 2;
      v136 = v32 & 1;
      return sub_214CCD0B4();
    }

    else if (v106 == 5)
    {
      v28 = 1;
      sub_214CCF614();
      sub_214CCF4C4();
      v29 = sub_214CCF614();
      v30 = v18;
      sub_214B1CFBC();
      sub_214B1CFD4(v100);
      v137 = v77;
      v138 = 120;
      v139 = 2;
      return sub_214CCD0B4();
    }

    else
    {
      if (v106 == 6)
      {
        v25 = 1;
        sub_214CCF614();
        sub_214CCF4C4();
        v26 = sub_214CCF614();
        v27 = v19;
        sub_214B1CFBC();
        sub_214B1CFD4(v100);
        v140 = v75;
        v141 = 120;
        v142 = 2;
      }

      else
      {
        v22[1] = 1;
        sub_214CCF614();
        sub_214CCF4C4();
        v23 = sub_214CCF614();
        v24 = v20;
        sub_214B1CFBC();
        sub_214B1CFD4(v100);
        v143 = v73;
        v144 = 85;
        v145 = 2;
      }

      return sub_214CCD0B4();
    }
  }

  else
  {
    v68 = 1;
    sub_214CCF614();
    sub_214CCF4C4();
    v69 = sub_214CCF614();
    v70 = v7;
    sub_214B1CFBC();
    sub_214B1CFD4(v100);
    v107 = v88;
    v108 = 141;
    v109 = 2;
    v110 = 0;
    return sub_214CCD0B4();
  }
}

BOOL static ToolboxErrors.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v5 = *a1;
  v6 = *a2;
  if (*a1)
  {
    switch(v5)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      case 4:
        v4 = 4;
        break;
      case 5:
        v4 = 5;
        break;
      case 6:
        v4 = 6;
        break;
      default:
        v4 = 7;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    switch(v6)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      case 4:
        v3 = 4;
        break;
      case 5:
        v3 = 5;
        break;
      case 6:
        v3 = 6;
        break;
      default:
        v3 = 7;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_214CBB690()
{
  v2 = qword_27CA386D8;
  if (!qword_27CA386D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA386D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214CBB788()
{
  v2 = qword_27CA386E0;
  if (!qword_27CA386E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA386E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for ToolboxErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF8)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 7) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 248;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 8;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ToolboxErrors(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF8)
  {
    v5 = ((a3 + 7) >> 8) + 1;
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

  if (a2 > 0xF8)
  {
    v4 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
      *result = a2 + 7;
    }
  }

  return result;
}

uint64_t static SearchItem.TopHit.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5[1] = a1;
  v9 = a2;
  v21 = 0;
  v20 = 0;
  v16 = sub_214CCD2B4();
  v12 = *(v16 - 8);
  v13 = v16 - 8;
  v7 = v12[8];
  v6 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  v14 = v5 - v6;
  v8 = v6;
  v2 = MEMORY[0x28223BE20](v5 - v6);
  v15 = v5 - v8;
  v21 = v3;
  v20 = v9;
  v11 = v12[2];
  v10 = v12 + 2;
  v11(v2);
  (v11)(v14, v9, v16);
  v19 = sub_214CCD284();
  v18 = v12[1];
  v17 = v12 + 1;
  v18(v14, v16);
  v18(v15, v16);
  return v19 & 1;
}

uint64_t SearchItem.TopHit.id.setter(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v11 = sub_214CCD2B4();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v11);
  v7 = &v5 - v6;
  v14 = v3;
  v13 = v1;
  (*(v9 + 16))(v2);
  (*(v9 + 40))(v8, v7, v11);
  return (*(v9 + 8))(v12, v11);
}

uint64_t SearchItem.TopHit.message.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.TopHit() + 20));
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t type metadata accessor for SearchItem.TopHit()
{
  v1 = qword_280C7E4F8;
  if (!qword_280C7E4F8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

double SearchItem.TopHit.message.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v2 = (v1 + *(type metadata accessor for SearchItem.TopHit() + 20));
  v3 = *v2;
  *v2 = a1;
  MEMORY[0x277D82BD8](v3);
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t SearchItem.TopHit.matchingHintsByGlobalMessageID.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.TopHit() + 24));

  return v2;
}

uint64_t SearchItem.TopHit.matchingHintsByGlobalMessageID.setter(uint64_t a1)
{

  *(v1 + *(type metadata accessor for SearchItem.TopHit() + 24)) = a1;
}

uint64_t SearchItem.TopHit.init(id:message:matchingHintsByGlobalMessageID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = a4;
  v21 = a1;
  v18 = a2;
  v17 = a3;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v13 = 0;
  v22 = sub_214CCD2B4();
  v19 = *(v22 - 8);
  v20 = v22 - 8;
  v12 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v14 = &v12 - v12;
  v15 = type metadata accessor for SearchItem.TopHit();
  v4 = MEMORY[0x28223BE20](v14);
  v5 = v19;
  v23 = &v12 - v6;
  v27 = &v12 - v6;
  v26 = v7;
  v25 = v8;
  v24 = v9;
  *(&v12 + *(v15 + 24) - v6) = v13;
  (*(v5 + 16))(v4);
  (*(v19 + 32))(v23, v14, v22);
  MEMORY[0x277D82BE0](v18);
  *(v23 + *(v15 + 20)) = v18;

  *(v23 + *(v15 + 24)) = v17;

  sub_214CBC3A8(v23, v16);

  v10 = MEMORY[0x277D82BD8](v18);
  (*(v19 + 8))(v21, v22, v10);
  return sub_214CA4784(v23);
}

uint64_t sub_214CBC3A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_214CCD2B4();
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = type metadata accessor for SearchItem.TopHit();
  v4 = *(v6 + 20);
  v5 = *(a1 + v4);
  MEMORY[0x277D82BE0](v5);
  *(a2 + v4) = v5;
  v9 = *(v6 + 24);
  v10 = *(a1 + v9);

  result = a2;
  *(a2 + v9) = v10;
  return result;
}

uint64_t SearchItem.TopHit.hash(into:)(uint64_t a1)
{
  v6 = a1;
  v7 = v1;
  v14 = 0;
  v13 = 0;
  v12 = sub_214CCD2B4();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v8 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v12);
  v11 = &v5 - v8;
  v14 = v6;
  v13 = v3;
  (*(v9 + 16))(v2);
  sub_214B5C87C();
  sub_214CD0554();
  return (*(v9 + 8))(v11, v12);
}

uint64_t SearchItem.TopHit.hashValue.getter()
{
  type metadata accessor for SearchItem.TopHit();
  sub_214CBC5FC();
  return sub_214CD0114();
}

unint64_t sub_214CBC5FC()
{
  v2 = qword_27CA386E8;
  if (!qword_27CA386E8)
  {
    type metadata accessor for SearchItem.TopHit();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA386E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214CBC6E0()
{
  v2 = qword_27CA386F0;
  if (!qword_27CA386F0)
  {
    type metadata accessor for SearchItem.TopHit();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA386F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214CBC7B0()
{
  v4 = sub_214CCD2B4();
  if (v0 <= 0x3F)
  {
    v4 = sub_214CBC8B4();
    if (v1 <= 0x3F)
    {
      v4 = sub_214CBC918();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

unint64_t sub_214CBC8B4()
{
  v2 = qword_280C7C558;
  if (!qword_280C7C558)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C558);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_214CBC918()
{
  v4 = qword_280C7CFE0;
  if (!qword_280C7CFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA386F8);
    v3 = sub_214CCFF34();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_280C7CFE0);
      return v1;
    }
  }

  return v4;
}

BOOL static MUIBackgroundConfigurationStyle.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v5 = *a1;
  v6 = *a2;
  if (*a1)
  {
    switch(v5)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      case 4:
        v4 = 4;
        break;
      case 5:
        v4 = 5;
        break;
      case 6:
        v4 = 6;
        break;
      default:
        v4 = 7;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    switch(v6)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      case 4:
        v3 = 4;
        break;
      case 5:
        v3 = 5;
        break;
      case 6:
        v3 = 6;
        break;
      default:
        v3 = 7;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_214CBCD7C()
{
  v2 = qword_27CA38700;
  if (!qword_27CA38700)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38700);
    return WitnessTable;
  }

  return v2;
}

uint64_t static UIBackgroundConfiguration.withStyle(_:configuration:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = a4;
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v26 = 0;
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v15 = sub_214CCDCB4();
  v16 = *(v15 - 8);
  v17 = v15 - 8;
  v18 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14);
  v19 = v10 - v18;
  v20 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v21 = v10 - v20;
  v26 = v10 - v20;
  v22 = *v6;
  v25 = v22;
  v23 = v7;
  v24 = v8;
  if (v22)
  {
    if (v22 == 1)
    {
      sub_214CCDBF4();
      (*(v16 + 32))(v21, v19, v15);
    }

    else if (v22 == 2)
    {
      sub_214CCDC44();
      (*(v16 + 32))(v21, v19, v15);
    }

    else if (v22 == 3)
    {
      sub_214CCDC14();
      (*(v16 + 32))(v21, v19, v15);
    }

    else if (v22 == 4)
    {
      sub_214CCDC54();
      (*(v16 + 32))(v21, v19, v15);
    }

    else if (v22 == 5)
    {
      sub_214CCDC34();
      (*(v16 + 32))(v21, v19, v15);
    }

    else
    {
      if (v22 == 6)
      {
        sub_214CCDC24();
      }

      else
      {
        sub_214CCDC74();
      }

      (*(v16 + 32))(v21, v19, v15);
    }
  }

  else
  {
    sub_214CCDC84();
    (*(v16 + 32))(v21, v19, v15);
  }

  sub_214B5188C(v13);
  if (v13)
  {
    v10[2] = v13;
    v10[3] = v12;
    v10[1] = v12;
    v13(v21);
  }

  return (*(v16 + 32))(v11, v21, v15);
}

unint64_t sub_214CBD250()
{
  v2 = qword_27CA38708;
  if (!qword_27CA38708)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38708);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_214CBD2E0()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38710);
  v1 = sub_214CCF4A4();

  return (v1 & 1) != 0;
}

void sub_214CBD404()
{

  sub_214BD24A8();
  sub_214CCD064();
  __break(1u);
}

void sub_214CBD438(uint64_t a1)
{
  v3[1] = a1;
  v1 = sub_214CCCEE4();
  v5 = *(v1 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v1);
  (*(v5 + 16))(v3 - v4, v2);
  sub_214CCCED4();
  __break(1u);
}

uint64_t static UIButton.Configuration.bucketButton(title:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v11 = a3;
  v27 = a1;
  v38 = a2;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v43 = 0;
  v44 = 0;
  v40 = 0;
  v41 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34250);
  v12 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v13 = v10 - v12;
  v19 = 0;
  v14 = sub_214CCCF24();
  v15 = *(v14 - 8);
  v16 = v14 - 8;
  v17 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v18 = v10 - v17;
  v47 = v10 - v17;
  v20 = sub_214CCCFA4();
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v24 = v10 - v23;
  v25 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v26 = v10 - v25;
  v46 = v10 - v25;
  v28 = sub_214CCFEA4();
  v29 = *(v28 - 8);
  v30 = v28 - 8;
  v31 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27);
  v32 = v10 - v31;
  v45 = v10 - v31;
  v43 = v6;
  v44 = v7;
  sub_214CCFE94();
  sub_214CCCF94();
  KeyPath = swift_getKeyPath();
  v36 = swift_getKeyPath();
  v33 = objc_opt_self();
  v34 = *MEMORY[0x277D76968];
  *&v8 = MEMORY[0x277D82BE0](v34).n128_u64[0];
  v35 = [v33 preferredFontForTextStyle_];
  MEMORY[0x277D82BD8](v34);
  v37 = &v42;
  v42 = v35;
  sub_214BD24A8();
  sub_214CCCF64();

  if (v38)
  {
    v10[3] = v27;
    v10[4] = v38;
    v10[1] = v38;
    v10[2] = v27;
    v40 = v27;
    v41 = v38;
    (*(v21 + 16))(v24, v26, v20);
    sub_214CCCF34();
    (*(v15 + 16))(v13, v18, v14);
    (*(v15 + 56))(v13, 0, 1, v14);
    sub_214CCFE04();
    (*(v15 + 8))(v18, v14);
  }

  (*(v29 + 16))(v11, v32, v28);
  (*(v21 + 8))(v26, v20);
  return (*(v29 + 8))(v32, v28);
}

double UIFontTextStyle.pointSize(maxCategory:)(uint64_t a1, uint64_t a2)
{
  v15[6] = a1;
  v15[5] = a2;
  v13 = MEMORY[0x277D76620];
  swift_beginAccess();
  v14 = *v13;
  MEMORY[0x277D82BE0](*v13);
  swift_endAccess();
  if (v14)
  {
    v11 = v14;
  }

  else
  {
    LOBYTE(v4) = 2;
    v5 = 14;
    LODWORD(v6) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  v7 = [v11 preferredContentSizeCategory];
  MEMORY[0x277D82BD8](v11);
  v15[0] = v7;
  type metadata accessor for UIContentSizeCategory();
  sub_214CBDCB4();
  sub_214CD0464();
  sub_214A671E8(v15);
  v9 = v15[4];
  MEMORY[0x277D82BE0](a2);
  type metadata accessor for TextStyle();
  sub_214B04518();
  sub_214B04128();
  v8 = sub_214CD0334();
  MEMORY[0x277D82BE0](v9);
  sub_214B04618();
  sub_214CD0334();
  CTFontDescriptorGetTextStyleSize();
  v10 = v2;
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](v9);
  return v10;
}

unint64_t sub_214CBDCB4()
{
  v2 = qword_280C7CA00;
  if (!qword_280C7CA00)
  {
    type metadata accessor for UIContentSizeCategory();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CA00);
    return WitnessTable;
  }

  return v2;
}

uint64_t ZeroKeywordResultModel.title.getter()
{
  v2 = *v0;

  return v2;
}

uint64_t ZeroKeywordResultModel.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t ZeroKeywordResultModel.subtitle.getter()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t ZeroKeywordResultModel.subtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t ZeroKeywordResultModel.image.getter()
{
  v2 = *(v0 + 32);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t ZeroKeywordResultModel.image.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
  MEMORY[0x277D82BD8](v2);
  return MEMORY[0x277D82BD8](a1);
}

void __swiftcall ZeroKeywordResultModel.init(title:subtitle:image:)(MailUI::ZeroKeywordResultModel *__return_ptr retstr, Swift::String title, Swift::String_optional subtitle, UIImage_optional image)
{
  isa = image.value.super.isa;
  __b = 0;
  v10 = 0;
  v11 = 0;

  __b = title;

  v10 = subtitle;

  MEMORY[0x277D82BE0](isa);
  v4 = v11;
  v11 = isa;
  MEMORY[0x277D82BD8](v4);
  sub_214CBE17C(&__b, retstr);
  MEMORY[0x277D82BD8](isa);

  sub_214CBE208(&__b);
}

void *sub_214CBE17C(void *a1, void *a2)
{
  *a2 = *a1;
  v3 = a1[1];

  a2[1] = v3;
  a2[2] = a1[2];
  v5 = a1[3];

  a2[3] = v5;
  v6 = a1[4];
  MEMORY[0x277D82BE0](v6);
  result = a2;
  a2[4] = v6;
  return result;
}

uint64_t sub_214CBE208(uint64_t a1)
{

  MEMORY[0x277D82BD8](*(a1 + 32));
  return a1;
}

void __swiftcall ZeroKeywordResultModel.init(title:subtitle:)(MailUI::ZeroKeywordResultModel *__return_ptr retstr, Swift::String title, Swift::String_optional subtitle)
{
  __b = 0;
  v7 = 0;
  v8 = 0;

  __b = title;

  v7 = subtitle;

  sub_214CBE17C(&__b, retstr);

  sub_214CBE208(&__b);
}

BOOL static ZeroKeywordResultModel.== infix(_:_:)(void *a1, __int128 *a2)
{
  v32 = 0;
  v31 = 0;
  v15 = *a1;
  v16 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v12 = a1[4];
  v32 = a1;
  v17 = *a2;
  v13 = a2[1];
  v14 = *(a2 + 4);
  v31 = a2;

  v29[0] = v15;
  v29[1] = v16;
  v30 = v17;
  if (v16)
  {
    sub_214A61AD0(v29, v18);
    if (*(&v30 + 1))
    {
      v8 = MEMORY[0x21605D8D0](v18[0], v18[1], v30, *(&v30 + 1));
      sub_214A61B48();
      sub_214A61B48();
      sub_214A61B48();
      v9 = v8;
      goto LABEL_7;
    }

    sub_214A61B48();
    goto LABEL_9;
  }

  if (*(&v30 + 1))
  {
LABEL_9:
    sub_214A76610();
    v9 = 0;
    goto LABEL_7;
  }

  sub_214A61B48();
  v9 = 1;
LABEL_7:

  if (v9)
  {

    v27[0] = v10;
    v27[1] = v11;
    v28 = v13;
    if (v11)
    {
      sub_214A61AD0(v27, &v21);
      if (*(&v28 + 1))
      {
        v20 = v21;
        v19 = v28;
        v6 = MEMORY[0x21605D8D0](v21, *(&v21 + 1), v28, *(&v28 + 1));
        sub_214A61B48();
        sub_214A61B48();
        sub_214A61B48();
        v7 = v6;
        goto LABEL_17;
      }

      sub_214A61B48();
    }

    else if (!*(&v28 + 1))
    {
      sub_214A61B48();
      v7 = 1;
LABEL_17:

      if ((v7 & 1) == 0)
      {
        return 0;
      }

      MEMORY[0x277D82BE0](v12);
      MEMORY[0x277D82BE0](v12);
      MEMORY[0x277D82BE0](v14);
      MEMORY[0x277D82BE0](v14);
      v25 = v12;
      v26 = v14;
      if (v12)
      {
        sub_214A671A8(&v25, &v24);
        if (v26)
        {
          v23 = v24;
          v22 = v26;
          sub_214A731BC();
          v4 = sub_214CCFD64();
          MEMORY[0x277D82BD8](v22);
          MEMORY[0x277D82BD8](v23);
          sub_214A671E8(&v25);
          v5 = v4;
LABEL_27:
          MEMORY[0x277D82BD8](v14);
          MEMORY[0x277D82BD8](v12);
          return (v5 & 1) != 0;
        }

        MEMORY[0x277D82BD8](v24);
      }

      else if (!v26)
      {
        sub_214A671E8(&v25);
        v5 = 1;
        goto LABEL_27;
      }

      sub_214A68120(&v25);
      v5 = 0;
      goto LABEL_27;
    }

    sub_214A76610();
    v7 = 0;
    goto LABEL_17;
  }

  return 0;
}

void *ZeroKeywordResultModel.hash(into:)(uint64_t a1)
{
  v9 = 0;
  v10 = a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v9 = v1;

  v8[3] = v3;
  v8[4] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA352F0);
  sub_214A75068();
  sub_214CD0554();
  sub_214A61B48();

  v8[1] = v5;
  v8[2] = v6;
  sub_214CD0554();
  sub_214A61B48();
  MEMORY[0x277D82BE0](v7);
  v8[0] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA352E8);
  sub_214A74F50();
  sub_214CD0554();
  return sub_214A671E8(v8);
}

uint64_t ZeroKeywordResultModel.hashValue.getter()
{
  memset(__b, 0, sizeof(__b));
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  __b[0] = *v0;
  __b[1] = v1;
  __b[2] = v2;
  __b[3] = v3;
  __b[4] = v4;
  sub_214CBE990();
  return sub_214CD0114();
}

unint64_t sub_214CBE990()
{
  v2 = qword_27CA38718;
  if (!qword_27CA38718)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38718);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214CBEA54()
{
  v2 = qword_27CA38720;
  if (!qword_27CA38720)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38720);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214CBEAEC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v4 = *(a1 + 8);
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_214CBEC1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_214CBEE08()
{
  if (qword_280C7EA90 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_280C836B8);
}

id sub_214CBEEB4()
{
  sub_214A6E0F4();
  type metadata accessor for ResourceBundleClass();
  result = sub_214CBEEFC();
  qword_280C7E098 = result;
  return result;
}

id sub_214CBEEFC()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0 = [swift_getObjCClassFromMetadata() bundleForClass_];

  return v0;
}

uint64_t *sub_214CBEF54()
{
  if (qword_280C7E090 != -1)
  {
    swift_once();
  }

  return &qword_280C7E098;
}

uint64_t sub_214CBEFB4()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3EFE8);
  __swift_project_value_buffer(v2, qword_27CA3EFE8);
  sub_214CCF614();
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CBF04C()
{
  if (qword_27CA340E8 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3EFE8);
}

uint64_t sub_214CBF0B8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CBF04C();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CBF11C()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F000);
  __swift_project_value_buffer(v2, qword_27CA3F000);
  sub_214CCF614();
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CBF1B4()
{
  if (qword_27CA340F0 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F000);
}

uint64_t sub_214CBF220@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CBF1B4();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CBF284()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F018);
  __swift_project_value_buffer(v2, qword_27CA3F018);
  sub_214CCF614();
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CBF31C()
{
  if (qword_27CA340F8 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F018);
}

uint64_t sub_214CBF388@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CBF31C();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CBF3EC()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F030);
  __swift_project_value_buffer(v2, qword_27CA3F030);
  sub_214CCF614();
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CBF484()
{
  if (qword_27CA34100 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F030);
}

uint64_t sub_214CBF4F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CBF484();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CBF554()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F048);
  __swift_project_value_buffer(v2, qword_27CA3F048);
  sub_214CCF614();
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CBF5EC()
{
  if (qword_27CA34108 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F048);
}

uint64_t sub_214CBF658@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CBF5EC();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CBF6BC()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F060);
  __swift_project_value_buffer(v2, qword_27CA3F060);
  sub_214CCF614();
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CBF754()
{
  if (qword_27CA34110 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F060);
}

uint64_t sub_214CBF7C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CBF754();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CBF824()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F078);
  __swift_project_value_buffer(v2, qword_27CA3F078);
  sub_214CCF614();
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CBF8BC()
{
  if (qword_27CA34118 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F078);
}

uint64_t sub_214CBF928@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CBF8BC();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CBF98C()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_280C836B8);
  __swift_project_value_buffer(v2, qword_280C836B8);
  sub_214CCF614();
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CBFA24@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CBEE08();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CBFA88()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F090);
  __swift_project_value_buffer(v2, qword_27CA3F090);
  sub_214CCF614();
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CBFB20()
{
  if (qword_27CA34128 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F090);
}

uint64_t sub_214CBFB8C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CBFB20();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CBFBF0()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F0A8);
  __swift_project_value_buffer(v2, qword_27CA3F0A8);
  sub_214CCF614();
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CBFC88()
{
  if (qword_27CA34130 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F0A8);
}

uint64_t sub_214CBFCF4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CBFC88();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CBFD58()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F0C0);
  __swift_project_value_buffer(v2, qword_27CA3F0C0);
  sub_214CCF614();
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CBFDF0()
{
  if (qword_27CA34138 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F0C0);
}

uint64_t sub_214CBFE5C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CBFDF0();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CBFEC0()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F0D8);
  __swift_project_value_buffer(v2, qword_27CA3F0D8);
  sub_214CCF614();
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CBFF58()
{
  if (qword_27CA34140 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F0D8);
}

uint64_t sub_214CBFFC4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CBFF58();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC0028()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F0F0);
  __swift_project_value_buffer(v2, qword_27CA3F0F0);
  sub_214CCF614();
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC00C0()
{
  if (qword_27CA34148 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F0F0);
}

uint64_t sub_214CC012C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC00C0();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC0190()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F108);
  __swift_project_value_buffer(v2, qword_27CA3F108);
  sub_214CCF614();
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC0228()
{
  if (qword_27CA34150 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F108);
}

uint64_t sub_214CC0294@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC0228();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC02F8()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F120);
  __swift_project_value_buffer(v2, qword_27CA3F120);
  sub_214CCF614();
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC0390()
{
  if (qword_27CA34158 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F120);
}

uint64_t sub_214CC03FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC0390();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC0460()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F138);
  __swift_project_value_buffer(v2, qword_27CA3F138);
  sub_214CCF614();
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC04F8()
{
  if (qword_27CA34160 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F138);
}

uint64_t sub_214CC0564@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC04F8();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC05C8()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F150);
  __swift_project_value_buffer(v2, qword_27CA3F150);
  sub_214CCF614();
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC0660()
{
  if (qword_27CA34168 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F150);
}

uint64_t sub_214CC06CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC0660();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC0730()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F168);
  __swift_project_value_buffer(v2, qword_27CA3F168);
  sub_214CCF614();
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC07C8()
{
  if (qword_27CA34170 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F168);
}

uint64_t sub_214CC0834@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC07C8();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC0898()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F180);
  __swift_project_value_buffer(v2, qword_27CA3F180);
  sub_214CCF614();
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC0930()
{
  if (qword_27CA34178 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F180);
}

uint64_t sub_214CC099C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC0930();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC0A00()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F198);
  __swift_project_value_buffer(v2, qword_27CA3F198);
  sub_214CCF614();
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC0A98()
{
  if (qword_27CA34180 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F198);
}

uint64_t sub_214CC0B04@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC0A98();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC0B68()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F1B0);
  __swift_project_value_buffer(v2, qword_27CA3F1B0);
  sub_214CCF614();
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC0C00()
{
  if (qword_27CA34188 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F1B0);
}

uint64_t sub_214CC0C6C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC0C00();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC0CD0()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F1C8);
  __swift_project_value_buffer(v2, qword_27CA3F1C8);
  sub_214CCF614();
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC0D68()
{
  if (qword_27CA34190 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F1C8);
}

uint64_t sub_214CC0DD4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC0D68();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC0E38()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F1E0);
  __swift_project_value_buffer(v2, qword_27CA3F1E0);
  sub_214CCF614();
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC0ED0()
{
  if (qword_27CA34198 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F1E0);
}

uint64_t sub_214CC0F3C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC0ED0();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC0FA0()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F1F8);
  __swift_project_value_buffer(v2, qword_27CA3F1F8);
  sub_214CCF614();
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC1038()
{
  if (qword_27CA341A0 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F1F8);
}

uint64_t sub_214CC10A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC1038();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC1108()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F210);
  __swift_project_value_buffer(v2, qword_27CA3F210);
  sub_214CCF614();
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC11A0()
{
  if (qword_27CA341A8 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F210);
}

uint64_t sub_214CC120C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC11A0();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC1270()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F228);
  __swift_project_value_buffer(v2, qword_27CA3F228);
  sub_214CCF614();
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC1308()
{
  if (qword_27CA341B0 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F228);
}

uint64_t sub_214CC1374@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC1308();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC13D8()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F240);
  __swift_project_value_buffer(v2, qword_27CA3F240);
  sub_214CCF614();
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC1470()
{
  if (qword_27CA341B8 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F240);
}

uint64_t sub_214CC14DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC1470();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC1540()
{
  v2 = sub_214CCD764();
  __swift_allocate_value_buffer(v2, qword_27CA3F258);
  __swift_project_value_buffer(v2, qword_27CA3F258);
  sub_214CCF614();
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC15D8()
{
  if (qword_27CA341C0 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD764();
  return __swift_project_value_buffer(v0, qword_27CA3F258);
}

uint64_t sub_214CC1644@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC15D8();
  v1 = sub_214CCD764();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC16A8()
{
  v2 = sub_214CCD764();
  __swift_allocate_value_buffer(v2, qword_27CA3F270);
  __swift_project_value_buffer(v2, qword_27CA3F270);
  sub_214CCF614();
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC1740()
{
  if (qword_27CA341C8 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD764();
  return __swift_project_value_buffer(v0, qword_27CA3F270);
}

uint64_t sub_214CC17AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC1740();
  v1 = sub_214CCD764();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC1810()
{
  v2 = sub_214CCD764();
  __swift_allocate_value_buffer(v2, qword_27CA3F288);
  __swift_project_value_buffer(v2, qword_27CA3F288);
  sub_214CCF614();
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC18A8()
{
  if (qword_27CA341D0 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD764();
  return __swift_project_value_buffer(v0, qword_27CA3F288);
}

uint64_t sub_214CC1914@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC18A8();
  v1 = sub_214CCD764();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC1978()
{
  v2 = sub_214CCD764();
  __swift_allocate_value_buffer(v2, qword_27CA3F2A0);
  __swift_project_value_buffer(v2, qword_27CA3F2A0);
  sub_214CCF614();
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC1A10()
{
  if (qword_27CA341D8 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD764();
  return __swift_project_value_buffer(v0, qword_27CA3F2A0);
}

uint64_t sub_214CC1A7C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC1A10();
  v1 = sub_214CCD764();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC1AE0()
{
  v2 = sub_214CCD764();
  __swift_allocate_value_buffer(v2, qword_27CA3F2B8);
  __swift_project_value_buffer(v2, qword_27CA3F2B8);
  sub_214CCF614();
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC1B78()
{
  if (qword_27CA341E0 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD764();
  return __swift_project_value_buffer(v0, qword_27CA3F2B8);
}

uint64_t sub_214CC1BE4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC1B78();
  v1 = sub_214CCD764();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC1C48()
{
  v2 = sub_214CCD764();
  __swift_allocate_value_buffer(v2, qword_27CA3F2D0);
  __swift_project_value_buffer(v2, qword_27CA3F2D0);
  sub_214CCF614();
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC1CE0()
{
  if (qword_27CA341E8 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD764();
  return __swift_project_value_buffer(v0, qword_27CA3F2D0);
}

uint64_t sub_214CC1D4C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC1CE0();
  v1 = sub_214CCD764();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC1DB0()
{
  v2 = sub_214CCD764();
  __swift_allocate_value_buffer(v2, qword_27CA3F2E8);
  __swift_project_value_buffer(v2, qword_27CA3F2E8);
  sub_214CCF614();
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC1E48()
{
  if (qword_27CA341F0 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD764();
  return __swift_project_value_buffer(v0, qword_27CA3F2E8);
}

uint64_t sub_214CC1EB4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC1E48();
  v1 = sub_214CCD764();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC1F18()
{
  v2 = sub_214CCD764();
  __swift_allocate_value_buffer(v2, qword_27CA3F300);
  __swift_project_value_buffer(v2, qword_27CA3F300);
  sub_214CCF614();
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC1FB0()
{
  if (qword_27CA341F8 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD764();
  return __swift_project_value_buffer(v0, qword_27CA3F300);
}

uint64_t sub_214CC201C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC1FB0();
  v1 = sub_214CCD764();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_280C7EFC0 == -1)
  {
    if (qword_280C7EFC8)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_280C7EFC8)
    {
      return _availability_version_check();
    }
  }

  if (qword_280C7EFB8 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals_0 < v11;
    if (_MergedGlobals_0 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_280C7EFAC > a3)
      {
        return 1;
      }

      if (dword_280C7EFAC >= a3)
      {
        return dword_280C7EFB0 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals_0 < a2;
  if (_MergedGlobals_0 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_280C7EFC8;
  if (qword_280C7EFC8)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_280C7EFC8 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x21605F0A0](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals_0, &dword_280C7EFAC, &dword_280C7EFB0);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void __getMCCSecretAgentControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMCCSecretAgentControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MUIGenericAvatarProvider.m" lineNumber:26 description:{@"Unable to find class %s", "MCCSecretAgentController"}];

  __break(1u);
}

void __getMCCSecretAgentControllerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *icloudMCCKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MUIGenericAvatarProvider.m" lineNumber:25 description:{@"%s", *a1}];

  __break(1u);
}

void __getPKMapsIconForMerchantCategorySymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PassKitUIFoundationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MUIGenericAvatarProvider.m" lineNumber:21 description:{@"%s", *a1}];

  __break(1u);
}

void MUICGRectFromNSDictionary_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = [a1 objectForKeyedSubscript:a2];
  v5 = [v4 description];
  v6 = 138412290;
  v7 = v5;
  _os_log_error_impl(&dword_214A5E000, a3, OS_LOG_TYPE_ERROR, "ERROR converting dictionary keys/values to CGRect, %@", &v6, 0xCu);
}

void signpostEndRunInterval_cold_1(void *a1)
{
  v1 = a1;
  v13 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    a1 = a1[4];
  }

  v2 = [a1 phraseKind];
  v3 = signpostLog();
  if (v2)
  {
    if (v1)
    {
      v4 = v1[4];
    }

    else
    {
      v4 = 0;
    }

    [v4 signpostID];
    OUTLINED_FUNCTION_5_0();
    if (!(!v7 & v6))
    {
      v8 = v5;
      if (os_signpost_enabled(v3))
      {
        OUTLINED_FUNCTION_9();
        v9 = "com.apple.mail.search.suggestion.zkw.run";
LABEL_14:
        _os_signpost_emit_with_name_impl(&dword_214A5E000, v3, OS_SIGNPOST_INTERVAL_END, v8, v9, "cancelled=%d", v12, 8u);
      }
    }
  }

  else
  {
    if (v1)
    {
      v10 = v1[4];
    }

    else
    {
      v10 = 0;
    }

    [v10 signpostID];
    OUTLINED_FUNCTION_5_0();
    if (!(!v7 & v6))
    {
      v8 = v11;
      if (os_signpost_enabled(v3))
      {
        OUTLINED_FUNCTION_9();
        v9 = "com.apple.mail.search.suggestion.ayt.run";
        goto LABEL_14;
      }
    }
  }
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

MKCoordinateRegion MKCoordinateRegionMakeWithDistance(CLLocationCoordinate2D centerCoordinate, CLLocationDistance latitudinalMeters, CLLocationDistance longitudinalMeters)
{
  MEMORY[0x282123648](centerCoordinate, *&centerCoordinate.longitude, latitudinalMeters, longitudinalMeters);
  result.span.longitudeDelta = v6;
  result.span.latitudeDelta = v5;
  result.center.longitude = v4;
  result.center.latitude = v3;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F910](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}