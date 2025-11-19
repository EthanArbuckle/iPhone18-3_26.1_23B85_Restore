void sub_218F70E4C()
{
  type metadata accessor for SportsDetailModel();
  if (v0 <= 0x3F)
  {
    sub_218F70F20(319, &qword_280E8EFD0, type metadata accessor for TagModel);
    if (v1 <= 0x3F)
    {
      sub_218F70F20(319, &qword_27CC12DC8, type metadata accessor for SportsManagementDetailSection);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_218F70F20(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF5B14();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_218F70F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_218F71868();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E9484();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F71914(a1, v8);
  v14 = *(v11 + 48);
  if (v14(v8, 1, v10) == 1)
  {
    type metadata accessor for SavedFeedServiceConfig();
    sub_2186EE704(&qword_280EC6CF0, type metadata accessor for SavedFeedServiceConfig);
    sub_219BEE974();
    if (v14(v8, 1, v10) != 1)
    {
      sub_218F71978(v8);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v8, v10);
  }

  (*(v11 + 32))(a3, v13, v10);
  if (!a2)
  {
    v16[1] = 6;
    sub_2186F9548();
    swift_allocObject();
    a2 = sub_219BEF534();
  }

  sub_218F71978(a1);
  result = type metadata accessor for ArticleListSavedFeedGroupKnobs();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_218F71228@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v13[0] = a2;
  sub_218F71868();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F719D4(0, &qword_280E8CB58, MEMORY[0x277D844C8]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218F718C0();
  sub_219BF7B34();
  if (!v2)
  {
    sub_2186E9484();
    v15 = 0;
    sub_2186EE704(&qword_280E91A48, sub_2186E9484);
    sub_219BF7674();
    sub_2186F9548();
    v14 = 1;
    sub_2186EE704(&qword_280E913B8, sub_2186F9548);
    sub_219BF7674();
    sub_218F70F9C(v6, v13[1], v13[0]);
    (*(v9 + 8))(v11, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218F7148C(void *a1)
{
  v3 = v1;
  sub_218F719D4(0, &qword_27CC13D00, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218F718C0();
  sub_219BF7B44();
  v13 = 0;
  sub_2186E9484();
  sub_2186EE704(&qword_27CC13D08, sub_2186E9484);
  sub_219BF7834();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for ArticleListSavedFeedGroupKnobs() + 20));
    v11[15] = 1;
    sub_2186F9548();
    sub_2186EE704(&qword_280E913C0, sub_2186F9548);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218F716A4()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x73656C7572;
  }
}

uint64_t sub_218F716E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_219BF78F4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_218F717C0(uint64_t a1)
{
  v2 = sub_218F718C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218F717FC(uint64_t a1)
{
  v2 = sub_218F718C0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_218F71868()
{
  if (!qword_280E91A38)
  {
    sub_2186E9484();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91A38);
    }
  }
}

unint64_t sub_218F718C0()
{
  result = qword_280EADB18[0];
  if (!qword_280EADB18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EADB18);
  }

  return result;
}

uint64_t sub_218F71914(uint64_t a1, uint64_t a2)
{
  sub_218F71868();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218F71978(uint64_t a1)
{
  sub_218F71868();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218F719D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218F718C0();
    v7 = a3(a1, &type metadata for ArticleListSavedFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218F71A4C()
{
  result = qword_27CC13D10;
  if (!qword_27CC13D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13D10);
  }

  return result;
}

unint64_t sub_218F71AA4()
{
  result = qword_280EADB08;
  if (!qword_280EADB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EADB08);
  }

  return result;
}

unint64_t sub_218F71AFC()
{
  result = qword_280EADB10;
  if (!qword_280EADB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EADB10);
  }

  return result;
}

void sub_218F71D04()
{
  v1 = v0;
  v27.receiver = v0;
  v27.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v27, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI230SportsManagementViewController_blueprintViewController];
  [v0 addChildViewController_];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v5 = [v2 view];
  if (!v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v5;
  [v4 addSubview_];

  [v2 didMoveToParentViewController_];
  v7 = [v2 view];
  if (!v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = v7;
  v9 = [v1 view];
  if (!v9)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v10 = v9;
  [v9 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v8 setFrame_];
  v19 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v1 action:sel_dismissVC];
  v20 = sub_219BF65B4();
  [v20 setLeftBarButtonItem_];

  sub_219BE8654();
  sub_219BE8664();
  v21 = sub_219BE7BC4();

  [v21 setAllowsSelectionDuringEditing_];

  sub_219BE8664();
  v22 = sub_219BE7BC4();

  [v22 addSubview_];

  sub_218F71FD4();
  v23 = [v1 traitCollection];
  sub_218F738D0();

  v24 = [*&v1[OBJC_IVAR____TtC7NewsUI230SportsManagementViewController_searchController] searchResultsController];
  if (v24)
  {
    v25 = v24;
    type metadata accessor for SearchViewController();
    if (swift_dynamicCastClass())
    {
      sub_218DA2DEC();
      v26 = v25;
    }

    else
    {
      v26 = v19;
      v19 = v25;
    }
  }
}

void sub_218F71FD4()
{
  v1 = sub_219BF65B4();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v4 = sub_219BF53D4();

  [v1 setTitle_];

  v5 = sub_219BF65B4();
  [v5 setLargeTitleDisplayMode_];

  v6 = sub_219BF65B4();
  [v6 setSearchController_];

  v7 = sub_219BF65B4();
  [v7 setHidesSearchBarWhenScrolling_];

  v8 = sub_219BF65B4();
  [v8 setPreferredSearchBarPlacement_];

  v9 = sub_219BF65B4();
  v10 = [v9 searchController];

  if (v10)
  {
    [v10 setHidesNavigationBarDuringPresentation_];
  }

  v11 = sub_219BF65B4();
  v12 = [v11 searchController];

  if (v12)
  {
    [v12 setObscuresBackgroundDuringPresentation_];
  }

  v13 = sub_219BF65B4();
  v14 = [v13 searchController];

  if (v14)
  {
    v15 = [v14 searchBar];

    [v15 setDelegate_];
  }

  v16 = [v0 navigationController];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 navigationBar];

    [v18 setPrefersLargeTitles_];
  }
}

uint64_t sub_218F72334(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_218747BDC(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.receiver = v2;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, sel_viewWillAppear_, a1 & 1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v8 = sub_219BDC104();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    sub_219BEA2C4();
    swift_unknownObjectRelease();
  }

  sub_219BE8664();
  v9 = sub_219BE7BC4();

  v10 = sub_219BDC104();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_219BF5F84();

  return sub_218A1C0F4(v7);
}

id sub_218F7252C()
{
  v42.receiver = v0;
  v42.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v42, sel_viewWillLayoutSubviews);
  result = [*&v0[OBJC_IVAR____TtC7NewsUI230SportsManagementViewController_blueprintViewController] view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = result;
  result = [v0 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  [result bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 setFrame_];
  v12 = *&v0[OBJC_IVAR____TtC7NewsUI230SportsManagementViewController_overscrollView];
  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = result;
  [result bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v43.origin.x = v15;
  v43.origin.y = v17;
  v43.size.width = v19;
  v43.size.height = v21;
  Height = CGRectGetHeight(v43);
  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v23 = result;
  [result bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v44.origin.x = v25;
  v44.origin.y = v27;
  v44.size.width = v29;
  v44.size.height = v31;
  Width = CGRectGetWidth(v44);
  result = [v0 view];
  if (result)
  {
    v33 = result;
    [result bounds];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;

    v45.origin.x = v35;
    v45.origin.y = v37;
    v45.size.width = v39;
    v45.size.height = v41;
    return [v12 setFrame_];
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_218F728B0()
{
  v19 = sub_219BEB384();
  v0 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BEB394();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  sub_219BE8644();
  sub_2189DA200();
  v10 = &v6[*(v9 + 48)];
  v11 = *(v9 + 64);
  sub_219BE66B4();
  v12 = *MEMORY[0x277D6D9C8];
  v13 = sub_219BE73A4();
  (*(*(v13 - 8) + 104))(&v6[v11], v12, v13);
  v14 = sub_219BE6C74();
  v15 = MEMORY[0x277D6D7C0];
  v10[3] = v14;
  v10[4] = v15;
  __swift_allocate_boxed_opaque_existential_1(v10);
  sub_219BE6C24();
  (*(v4 + 104))(v6, *MEMORY[0x277D6EC90], v3);
  v16 = v19;
  (*(v0 + 104))(v2, *MEMORY[0x277D6ECA8], v19);
  sub_219BE6BD4();

  (*(v0 + 8))(v2, v16);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218F72BC4()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE8644();
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC88], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECA8], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_218F72DA0()
{
  v19 = sub_219BEB384();
  v0 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BEB394();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BE8644();
  if (qword_27CC08A20 != -1)
  {
    swift_once();
  }

  v7 = qword_27CCD9078;
  v8 = sub_219BE9334();
  v9 = MEMORY[0x277D6E550];
  v6[3] = v8;
  v6[4] = v9;
  *v6 = v7;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();

  v12 = [v11 bundleForClass_];
  sub_219BDB5E4();

  v13 = sub_219BF54E4();
  v15 = v14;

  v6[5] = v13;
  v6[6] = v15;
  (*(v4 + 104))(v6, *MEMORY[0x277D6EC80], v3);
  v16 = v19;
  (*(v0 + 104))(v2, *MEMORY[0x277D6ECB0], v19);
  sub_219BE6BD4();

  (*(v0 + 8))(v2, v16);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218F7309C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE9F74();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a3, v5);
  result = (*(v6 + 88))(v8, v5);
  if (result == *MEMORY[0x277D6E950])
  {
    (*(v6 + 8))(v8, v5);
LABEL_3:
    v10 = *(*(v3 + OBJC_IVAR____TtC7NewsUI230SportsManagementViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    return (*(v10 + 40))(ObjectType, v10);
  }

  if (result == *MEMORY[0x277D6E928])
  {
    v12 = *(*(v3 + OBJC_IVAR____TtC7NewsUI230SportsManagementViewController_eventHandler) + 40);
    v13 = swift_getObjectType();
    return (*(v12 + 32))(v13, v12);
  }

  else
  {
    if (result == *MEMORY[0x277D6E948] || result == *MEMORY[0x277D6E930])
    {
      goto LABEL_3;
    }

    if (result != *MEMORY[0x277D6E958])
    {
      if (result == *MEMORY[0x277D6E970])
      {
        goto LABEL_3;
      }

      return (*(v6 + 8))(v8, v5);
    }
  }

  return result;
}

uint64_t sub_218F73290(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC7NewsUI230SportsManagementViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 80))(a2, ObjectType, v4);
}

uint64_t sub_218F732F0(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC7NewsUI230SportsManagementViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 64))(a2, ObjectType, v4);
}

uint64_t sub_218F73430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(v3 + OBJC_IVAR____TtC7NewsUI230SportsManagementViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v6 + 56))(a2, a3, ObjectType, v6);
}

void sub_218F735B0(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC7NewsUI230SportsManagementViewController_searchController) searchResultsController];
  if (v3)
  {
    v4 = v3;
    v5 = swift_dynamicCastObjCProtocolConditional();
    if (v5)
    {
      v6 = v5;
      if ([v5 respondsToSelector_])
      {
        v7 = v4;
        v4 = sub_219BF53D4();
        [v6 searchBar:a1 textDidChange:v4];
      }
    }
  }
}

uint64_t sub_218F73888(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_218F738D0()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC7NewsUI230SportsManagementViewController_styler];
  sub_218718690(&v0[OBJC_IVAR____TtC7NewsUI230SportsManagementViewController_styler], v16);
  v3 = __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    v6 = *(*__swift_project_boxed_opaque_existential_1((*v3 + 16), *(*v3 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme);
    [v5 setBackgroundColor_];

    __swift_destroy_boxed_opaque_existential_1(v16);
    v7 = __swift_project_boxed_opaque_existential_1(v2, *(v2 + 3));
    sub_219BE8664();
    v8 = sub_219BE7BC4();

    [v8 setBackgroundColor_];
    [v8 setSeparatorStyle_];

    v9 = __swift_project_boxed_opaque_existential_1(v2, *(v2 + 3));
    v10 = sub_219BF65B4();
    v11 = *v9;
    if (sub_219BED0C4())
    {
      v12 = [objc_opt_self() clearColor];
    }

    else
    {
      v12 = *(*__swift_project_boxed_opaque_existential_1((v11 + 16), *(v11 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme);
    }

    v13 = v12;
    sub_219BEDA04();

    [v10 setBackButtonDisplayMode_];
    v14 = *&v1[OBJC_IVAR____TtC7NewsUI230SportsManagementViewController_overscrollView];
    v15 = [objc_opt_self() clearColor];
    [v14 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_218F73AF0(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  sub_2187C5110();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_218F73D00();
  (*(v6 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  (*(v6 + 32))(v9 + v8, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_219BE1E14();

  if (v18)
  {
    sub_2186CB1F0(&v17, v19);
    v11 = v20;
    v12 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v13 = (*(v12 + 8))(v16, v11, v12);
    [v13 setModalPresentationStyle_];
    v14 = sub_219BEA784();
    v14(v13);

    __swift_destroy_boxed_opaque_existential_1(v19);
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_218F73D00()
{
  result = qword_280EA0020[0];
  if (!qword_280EA0020[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_280EA0020);
  }

  return result;
}

uint64_t sub_218F73D64(uint64_t a1)
{
  sub_2187C5110();
  v2 = sub_219BEA794();
  v2(a1);
}

uint64_t sub_218F73DBC(uint64_t a1)
{
  sub_2187C5110();

  return sub_218F73D64(a1);
}

uint64_t sub_218F73E2C(void *a1, uint64_t a2, void *a3, void *a4, unsigned __int8 a5)
{
  v67 = *&a2;
  sub_218F74EB0(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v62 - v13;
  v15 = sub_219BDBD34();
  v16 = MEMORY[0x28223BE20](v15);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v62 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v62 - v21;
  MEMORY[0x28223BE20](v20);
  v26 = &v62 - v25;
  if (a5 <= 1u)
  {
    v65 = v24;
    v66 = v12;
    if (a5)
    {
      v48 = [a1 identifier];
      if (!v48)
      {
        sub_219BF5414();
        v48 = sub_219BF53D4();
      }

      v49 = [a3 sourceForIssueID_];

      return v49 == *&v67;
    }

    else
    {
      v64 = v23;
      v36 = [a1 identifier];
      if (!v36)
      {
        sub_219BF5414();
        v36 = sub_219BF53D4();
      }

      v37 = [a3 lastVisitedDateForIssueWithID_];

      if (v37)
      {
        sub_219BDBCA4();

        v38 = v65;
        v39 = *(v65 + 32);
        v39(v14, v22, v15);
        v63 = *(v38 + 56);
        v63(v14, 0, 1, v15);
        v39(v26, v14, v15);
      }

      else
      {
        v38 = v65;
        v63 = *(v65 + 56);
        v63(v14, 1, 1, v15);
        sub_219BDBBB4();
        if ((*(v38 + 48))(v14, 1, v15) != 1)
        {
          sub_2189DD39C(v14);
        }
      }

      v50 = [a1 identifier];
      if (!v50)
      {
        sub_219BF5414();
        v50 = sub_219BF53D4();
      }

      v51 = v67;
      v52 = [a4 dateAddedForIssueID_];

      if (v52)
      {
        sub_219BDBCA4();

        v53 = *(v38 + 32);
        v54 = v66;
        v53(v66, v22, v15);
        v63(v54, 0, 1, v15);
        v53(v19, v54, v15);
      }

      else
      {
        v55 = v66;
        v63(v66, 1, 1, v15);
        sub_219BDBBB4();
        if ((*(v38 + 48))(v55, 1, v15) != 1)
        {
          sub_2189DD39C(v55);
        }
      }

      if (sub_219BDBC14())
      {
        v56 = v26;
      }

      else
      {
        v56 = v19;
      }

      v57 = v64;
      (*(v38 + 16))(v64, v56, v15);
      sub_219BDBC64();
      v59 = fabs(v58);
      v60 = *(v38 + 8);
      v60(v57, v15);
      v60(v19, v15);
      v60(v26, v15);
      return v59 > v51;
    }
  }

  else if (a5 == 2)
  {
    v40 = (*&v67 + 56);
    v41 = *(*&v67 + 16) + 1;
    do
    {
      v29 = --v41 == 0;
      if (!v41)
      {
        break;
      }

      v42 = v40 + 32;
      v44 = *(v40 - 2);
      v43 = *(v40 - 1);
      v45 = *(v40 - 3);
      v46 = *v40;
      sub_218F74F14(v45, v44, v43, *v40);
      v47 = sub_218F73E2C(a1, v45, v44, v43, v46);
      sub_218F74E28(v45, v44, v43, v46);
      v40 = v42;
    }

    while ((v47 & 1) != 0);
  }

  else if (a5 == 3)
  {
    v27 = (*&v67 + 56);
    v28 = *(*&v67 + 16) + 1;
    do
    {
      v29 = --v28 != 0;
      if (!v28)
      {
        break;
      }

      v30 = v27 + 32;
      v32 = *(v27 - 2);
      v31 = *(v27 - 1);
      v33 = *(v27 - 3);
      v34 = *v27;
      sub_218F74F14(v33, v32, v31, *v27);
      v35 = sub_218F73E2C(a1, v33, v32, v31, v34);
      sub_218F74E28(v33, v32, v31, v34);
      v27 = v30;
    }

    while ((v35 & 1) == 0);
  }

  else
  {
    return [a1 isCurrent] ^ 1;
  }

  return v29;
}

uint64_t sub_218F74494()
{

  v0 = sub_219BE2E54();
  sub_219BE21A4();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_218F74510()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_219BE2014();
  }

  return result;
}

uint64_t sub_218F745A8()
{
  sub_2186E330C();
  sub_219BE3204();

  v0 = sub_219BE2E54();
  sub_219BE2F64();

  v1 = sub_219BE2E54();
  v2 = sub_219BE2F64();

  return v2;
}

uint64_t sub_218F74690(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 24), *(a1 + 48));
  v2 = [*(a1 + 16) issueIDs];
  sub_219BF5924();

  v3 = sub_219BF1E44();

  return v3;
}

char *sub_218F74730(unint64_t a1)
{
  v4 = sub_218F74ABC();
  v6 = v5;
  v7 = v3;
  v9 = v8;
  v39 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v3; v10; i = v7)
  {
    v31 = v1;
    v11 = 0;
    v1 = a1 & 0xC000000000000001;
    v36 = v10;
    v37 = a1 & 0xFFFFFFFFFFFFFF8;
    v35 = a1;
    while (1)
    {
      if (v1)
      {
        v12 = MEMORY[0x21CECE0F0](v11, a1);
      }

      else
      {
        if (v11 >= *(v37 + 16))
        {
          goto LABEL_15;
        }

        v12 = *(a1 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (sub_218F73E2C(v12, v4, v6, v7, v9))
      {
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
        a1 = v35;
        v10 = v36;
      }

      else
      {
      }

      ++v11;
      if (v14 == v10)
      {
        v15 = v39;
        v1 = v31;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v10 = sub_219BF7214();
  }

  v15 = MEMORY[0x277D84F90];
LABEL_18:
  v32 = v9;
  v16 = *(v1 + 16);
  v33 = v6;
  if (v15 < 0 || (v15 & 0x4000000000000000) != 0)
  {
    v17 = sub_219BF7214();
  }

  else
  {
    v17 = *(v15 + 16);
  }

  if (!v17)
  {
    goto LABEL_31;
  }

  v40 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v17 & ~(v17 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v38 = v16;
    v19 = 0;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x21CECE0F0](v19, v15);
      }

      else
      {
        v20 = *(v15 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = [v20 identifier];
      v23 = sub_219BF5414();
      v25 = v24;

      v27 = *(v40 + 16);
      v26 = *(v40 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_21870B65C((v26 > 1), v27 + 1, 1);
      }

      ++v19;
      *(v40 + 16) = v27 + 1;
      v28 = v40 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
    }

    while (v17 != v19);
    v16 = v38;
LABEL_31:
    v29 = sub_219BF5904();

    [v16 removeIssueIDs_];

    sub_218F74EB0(0, &qword_280EE6A20, sub_2186E330C, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v30 = sub_219BE3014();
    sub_218F74E28(v4, v33, i, v32);
    return v30;
  }

  __break(1u);
  return result;
}

uint64_t sub_218F74A7C()
{
  sub_21879D924();
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218F74ABC()
{
  __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);

  sub_219BE2CF4();

  sub_219BE2184();

  __swift_project_boxed_opaque_existential_1(v0 + 13, v0[16]);
  result = sub_218D34168();
  v2 = result;
  v3 = *(result + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = 0;
    v6 = result + 64;
    v7 = MEMORY[0x277D84F90];
    v30 = *(result + 16);
    v31 = result;
    v29 = result + 64;
    while (1)
    {
      v8 = *(v2 + 16);
      v9 = v8 >= v5;
      v10 = v8 - v5;
      if (v9)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = v3 - v5;
      v13 = (v6 + 40 * v5++);
      while (1)
      {
        if (!v11)
        {
          __break(1u);
          return result;
        }

        v14 = *(v13 - 32);
        if (v34)
        {
          break;
        }

        if (!*(v13 - 32))
        {
          goto LABEL_13;
        }

LABEL_8:
        --v11;
        v13 += 40;
        ++v5;
        if (!--v12)
        {
          goto LABEL_20;
        }
      }

      if (v34 == 1 && v14 == 2)
      {
        goto LABEL_8;
      }

LABEL_13:
      v15 = *(v13 - 1);
      v16 = *v13;
      v32 = *(v13 - 2);
      v33 = *(v13 - 3);
      sub_218F74F14(v33, v32, v15, *v13);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_218C36318(0, *(v7 + 16) + 1, 1);
      }

      v18 = *(v7 + 16);
      v17 = *(v7 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_218C36318((v17 > 1), v18 + 1, 1);
      }

      *(v7 + 16) = v18 + 1;
      v19 = v7 + 40 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v33;
      *(v19 + 48) = v32;
      *(v19 + 56) = v15;
      *(v19 + 64) = v16;
      v3 = v30;
      v2 = v31;
      v6 = v29;
      if (v12 == 1)
      {
        goto LABEL_20;
      }
    }
  }

  v7 = MEMORY[0x277D84F90];
LABEL_20:

  v20 = *(v7 + 16);
  if (v20)
  {
    sub_218C362E8(0, v20, 0);
    v21 = (v7 + 64);
    do
    {
      v22 = *(v21 - 3);
      v23 = *(v21 - 2);
      v24 = *(v21 - 1);
      v25 = *v21;
      sub_218F74F14(v22, v23, v24, *v21);
      v27 = *(v4 + 16);
      v26 = *(v4 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_218C362E8((v26 > 1), v27 + 1, 1);
      }

      v21 += 40;
      *(v4 + 16) = v27 + 1;
      v28 = v4 + 32 * v27;
      *(v28 + 32) = v22;
      *(v28 + 40) = v23;
      *(v28 + 48) = v24;
      *(v28 + 56) = v25;
      --v20;
    }

    while (v20);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t sub_218F74D78()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 104);

  return swift_deallocClassInstance();
}

void sub_218F74E28(uint64_t a1, void *a2, void *a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 == 2 || a4 == 3)
    {
    }
  }

  else if (a4)
  {
    if (a4 == 1)
    {
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void sub_218F74EB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218F74F14(uint64_t a1, void *a2, void *a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 == 2 || a4 == 3)
    {
    }
  }

  else if (a4)
  {
    if (a4 == 1)
    {

      v5 = a2;
    }
  }

  else
  {
    swift_unknownObjectRetain();

    v6 = a3;
  }
}

uint64_t sub_218F74FFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 25))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 24);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_218F75044(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_218F7508C(uint64_t result, unsigned int a2)
{
  v2 = a2 - 4;
  if (a2 >= 4)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

id sub_218F750BC(void *a1)
{
  v3 = sub_219BE89F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE5F04();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BEB674();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BF6374();
  result = 0;
  if ((v14 & 1) == 0)
  {
    v16 = sub_219BED0C4();
    v73 = v10;
    v74 = v1;
    v72 = v11;
    if (v16)
    {
      sub_2186C6148(0, &qword_280E8E5D0);
      v17 = sub_219BF53D4();
      v18 = [objc_opt_self() systemImageNamed_];

      v19 = sub_219BF6334();
      v20 = sub_219BEB624();
      v22 = v21;
      v23 = sub_218F75C4C();
      v24 = objc_opt_self();
      v25 = swift_allocObject();
      swift_weakInit();
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v27 = swift_allocObject();
      v27[2] = v25;
      v27[3] = v26;
      v27[4] = v20;
      v27[5] = v22;
      v27[6] = a1;
      v27[7] = v23;
      v77 = sub_218F7D1B4;
      v78 = v27;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_218F766F4;
      v76 = &block_descriptor_53_0;
      v28 = _Block_copy(aBlock);
      v71 = v19;
      v29 = v19;

      v30 = a1;

      v31 = [v24 elementWithUncachedProvider_];
      _Block_release(v28);
      sub_2186C6148(0, &qword_280E8DAF0);
      sub_218F7CD04(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_219C146A0;
      *(v32 + 32) = v31;
      v70 = v31;
      v33 = sub_219BF6BF4();
      [v29 setMenu_];

      v34 = [v30 backingTag];
      sub_219BEB664();
      swift_unknownObjectRelease();
      v35 = v29;
      sub_219BE5ED4();
      sub_219BE5F14();
      swift_allocObject();
      sub_219BE5EA4();
      sub_219BE6DA4();
      if (qword_280EE35B8 != -1)
      {
        swift_once();
      }

      v36 = v73;
      v37 = __swift_project_value_buffer(v73, qword_280F62428);
      (*(v72 + 16))(v13, v37, v36);
      swift_allocObject();
      v38 = v35;
      sub_219BE5EB4();
      sub_219BE6DA4();
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v40 = objc_opt_self();
      v41 = v38;
      v42 = [v40 bundleForClass_];
      sub_219BDB5E4();

      v43 = sub_219BF53D4();

      [v41 setAccessibilityLabel_];

      return v71;
    }

    else
    {
      v71 = v9;
      sub_219BE5D04();
      v44 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      if (qword_280E92F08 != -1)
      {
        swift_once();
      }

      v45 = qword_280E92F10;
      v46 = [objc_opt_self() configurationWithPointSize:5 weight:3 scale:22.0];
      v47 = [v45 imageByApplyingSymbolConfiguration_];

      v48 = v44;
      v70 = v47;
      [v48 setImage:v47 forState:0];
      sub_2186C6148(0, &qword_280E8DAF0);
      v49 = sub_219BF6BF4();
      [v48 setMenu_];

      [v48 setShowsMenuAsPrimaryAction_];
      sub_219BEB624();
      (*(v4 + 104))(v6, *MEMORY[0x277D6E118], v3);
      v50 = *(v74 + 32);
      v76 = sub_219BDD274();
      v77 = sub_218F7CDD8(&qword_280EE8EE0, 255, MEMORY[0x277CEAEA8]);
      aBlock[0] = v50;
      v79 = 0u;
      v80 = 0u;
      v81 = 1;
      sub_219BE8314();
      swift_allocObject();
      v51 = v48;

      v52 = sub_219BE82B4();
      sub_219BE82C4();
      v53 = [a1 backingTag];
      sub_219BEB664();
      swift_unknownObjectRelease();
      v54 = v51;
      sub_219BE5ED4();
      sub_219BE5F14();
      swift_allocObject();
      v71 = sub_219BE5EA4();
      sub_219BE6DA4();
      sub_219BE82C4();
      if (qword_280EE35B8 != -1)
      {
        swift_once();
      }

      v55 = v73;
      v56 = __swift_project_value_buffer(v73, qword_280F62428);
      (*(v72 + 16))(v13, v56, v55);
      swift_allocObject();
      v57 = v54;
      sub_219BE5EB4();
      sub_219BE6DA4();
      v58 = sub_219BE5CE4();
      v59 = swift_allocObject();
      swift_weakInit();
      v60 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v61 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v62 = swift_allocObject();
      v62[2] = v59;
      v62[3] = v60;
      v62[4] = v61;
      v62[5] = v52;

      v63 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];

      type metadata accessor for Localized();
      v64 = swift_getObjCClassFromMetadata();
      v65 = objc_opt_self();
      v66 = v63;
      v67 = [v65 bundleForClass_];
      sub_219BDB5E4();

      v68 = sub_219BF53D4();

      [v66 setAccessibilityLabel_];

      return v66;
    }
  }

  return result;
}

uint64_t sub_218F75C4C()
{
  v1 = [v0 feedConfiguration];
  sub_218F7CD74(0, &unk_280E8C008, MEMORY[0x277D31AD0], MEMORY[0x277D84560]);
  v2 = sub_219BE5A04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  if (v1 <= 8)
  {
    if (v1 == 3)
    {
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_219C0EE20;
      v15 = v14 + v5;
      v16 = *(v3 + 104);
      v16(v15, *MEMORY[0x277D31A90], v2);
      v16(v15 + v4, *MEMORY[0x277D31AA0], v2);
      v16(v15 + 2 * v4, *MEMORY[0x277D31A78], v2);
      v16(v15 + 3 * v4, *MEMORY[0x277D31AC8], v2);
      v9 = sub_2194B21CC(v14);
      swift_setDeallocating();
      goto LABEL_11;
    }

    if (v1 == 8)
    {
      goto LABEL_5;
    }
  }

  else
  {
    switch(v1)
    {
      case 9:
        goto LABEL_5;
      case 10:
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_219C09EC0;
        v12 = v11 + v5;
        v13 = *(v3 + 104);
        v13(v12, *MEMORY[0x277D31A90], v2);
        v13(v12 + v4, *MEMORY[0x277D31AC8], v2);
        v9 = sub_2194B21CC(v11);
        swift_setDeallocating();
        goto LABEL_11;
      case 11:
LABEL_5:
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_219C0B8C0;
        v7 = v6 + v5;
        v8 = *(v3 + 104);
        v8(v7, *MEMORY[0x277D31A90], v2);
        v8(v7 + v4, *MEMORY[0x277D31A78], v2);
        v8(v7 + 2 * v4, *MEMORY[0x277D31AC8], v2);
        v9 = sub_2194B21CC(v6);
        swift_setDeallocating();
LABEL_11:
        swift_arrayDestroy();
        goto LABEL_12;
    }
  }

  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09BA0;
  (*(v3 + 104))(v10 + v5, *MEMORY[0x277D31A90], v2);
  v9 = sub_2194B21CC(v10);
  swift_setDeallocating();
  (*(v3 + 8))(v10 + v5, v2);
LABEL_12:
  swift_deallocClassInstance();
  return v9;
}

uint64_t sub_218F75FF4(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v37 = a8;
  v36 = a7;
  v35[2] = a6;
  v35[1] = a5;
  v48 = a2;
  v49 = a1;
  v8 = sub_219BDF074();
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x28223BE20](v8);
  v45 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_219BE1544();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_219BDBD64();
  v38 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_219BE1524();
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BE59F4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_219BE89F4();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return v49(MEMORY[0x277D84F90]);
  }

  v24 = Strong;
  swift_beginAccess();
  v25 = swift_unknownObjectWeakLoadStrong();
  if (!v25)
  {

    return v49(MEMORY[0x277D84F90]);
  }

  v26 = v25;
  v35[0] = v14;
  (*(v20 + 104))(v22, *MEMORY[0x277D6E118], v19);
  v27 = *(v24 + 32);
  v51 = sub_219BDD274();
  v52 = sub_218F7CDD8(&qword_280EE8EE0, 255, MEMORY[0x277CEAEA8]);
  v50 = v27;
  v53 = 0u;
  v54 = 0u;
  v55 = 1;
  sub_219BE8314();
  swift_allocObject();

  v28 = v26;
  sub_219BE82B4();
  sub_219BE5A14();
  v29 = v36;
  *v18 = v36;
  (*(v16 + 104))(v18, *MEMORY[0x277D31A18], v15);
  v30 = v29;
  MEMORY[0x21CEBC780](v18, v37);
  (*(v16 + 8))(v18, v15);
  if (sub_219BE59D4())
  {
    swift_unknownObjectRetain();
    v31 = sub_219BE5994();

    swift_unknownObjectRelease();
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

  v33 = v35[0];
  sub_219BDBD54();
  sub_219BDBD44();
  (*(v38 + 8))(v12, v39);
  (*(v40 + 104))(v41, *MEMORY[0x277D2F3B8], v42);
  (*(v46 + 104))(v45, *MEMORY[0x277D2D800], v47);
  sub_219BE1514();
  sub_218F7CDD8(&qword_280EE7FE0, 255, MEMORY[0x277D2F398]);
  v34 = v44;
  sub_219BDD1F4();
  (*(v43 + 8))(v33, v34);
  v49(v31);
}

uint64_t sub_218F766F4(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_218F7CD6C, v4);
}

void sub_218F76788(uint64_t a1, uint64_t a2)
{
  sub_2186C6148(0, &unk_280E8E710);
  v3 = sub_219BF5904();
  (*(a2 + 16))(a2, v3);
}

void sub_218F76804(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v32[2] = a4;
  v41 = a3;
  v4 = sub_219BE59F4();
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x28223BE20](v4);
  v38 = (v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BDF074();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE1544();
  v34 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDBD64();
  v33 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BE1524();
  v35 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    swift_beginAccess();
    v20 = swift_unknownObjectWeakLoadStrong();
    if (v20)
    {
      v21 = v20;
      swift_beginAccess();
      v22 = swift_unknownObjectWeakLoadStrong();
      if (v22)
      {
        v41 = v21;
        v32[1] = v19;
        v23 = v22;
        sub_219BDBD54();
        sub_219BDBD44();
        v32[0] = v24;
        (*(v33 + 8))(v14, v12);
        (*(v34 + 104))(v11, *MEMORY[0x277D2F3B8], v9);
        (*(v36 + 104))(v8, *MEMORY[0x277D2D800], v37);
        sub_219BE1514();
        sub_218F7CDD8(&qword_280EE7FE0, 255, MEMORY[0x277D2F398]);
        sub_219BDD1F4();
        (*(v35 + 8))(v17, v15);
        sub_219BE5A14();
        v26 = v38;
        v25 = v39;
        *v38 = v23;
        v27 = v40;
        (*(v25 + 104))(v26, *MEMORY[0x277D31A18], v40);
        v28 = v23;
        v29 = sub_218F75C4C();
        MEMORY[0x21CEBC780](v26, v29);

        (*(v25 + 8))(v26, v27);
        if (sub_219BE59D4())
        {
          swift_unknownObjectRetain();
          sub_219BE5994();

          swift_unknownObjectRelease();
        }

        sub_2186C6148(0, &qword_280E8DAF0);
        v30 = v41;
        v31 = sub_219BF6BF4();
        [v30 setMenu_];
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

id sub_218F76D9C(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_219BE5F04();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BEB674();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF6374();
  result = 0;
  if ((v13 & 1) == 0)
  {
    v29[0] = v10;
    v29[1] = v8;
    v15 = sub_219BEB624();
    v17 = v16;
    v18 = sub_218F75C4C();
    v19 = objc_opt_self();
    v20 = swift_allocObject();
    v29[3] = v3;
    swift_weakInit();
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v22[2] = v20;
    v22[3] = v21;
    v29[2] = v15;
    v22[4] = v15;
    v22[5] = v17;
    v22[6] = a1;
    v22[7] = v18;
    aBlock[4] = sub_218F7CD54;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218F766F4;
    aBlock[3] = &block_descriptor_78;
    v23 = _Block_copy(aBlock);

    v24 = a1;

    v25 = [v19 elementWithUncachedProvider_];
    _Block_release(v23);
    if (a2 && [a2 overflowPresentationSource])
    {
      v26 = [sub_219BF6394() isPuzzleHub];
      swift_unknownObjectRelease();
      if (v26)
      {
        if (qword_280EE35B8 != -1)
        {
          swift_once();
        }

        v27 = __swift_project_value_buffer(v9, qword_280F62428);
        (*(v29[0] + 16))(v12, v27, v9);
        swift_unknownObjectRetain();
      }

      else
      {
        v28 = [v24 backingTag];
        sub_219BEB664();
        swift_unknownObjectRelease();
        swift_unknownObjectRetain();
      }

      sub_219BE5ED4();
      sub_219BE5F14();
      swift_allocObject();
      sub_219BE5EA4();
      sub_219BE6DA4();

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return v25;
  }

  return result;
}

uint64_t sub_218F77150(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v37 = a8;
  v36 = a7;
  v35[2] = a6;
  v35[1] = a5;
  v48 = a2;
  v49 = a1;
  v8 = sub_219BDF074();
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x28223BE20](v8);
  v45 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_219BE1544();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_219BDBD64();
  v38 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_219BE1524();
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BE59F4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_219BE89F4();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return v49(MEMORY[0x277D84F90]);
  }

  v24 = Strong;
  v35[0] = v14;
  swift_beginAccess();
  v25 = swift_unknownObjectWeakLoadStrong();
  if (!v25 || (v26 = v25, v27 = [v25 overflowPresentationSource], v26, !v27))
  {

    return v49(MEMORY[0x277D84F90]);
  }

  (*(v20 + 104))(v22, *MEMORY[0x277D6E118], v19);
  v28 = *(v24 + 32);
  v51 = sub_219BDD274();
  v52 = sub_218F7CDD8(&qword_280EE8EE0, 255, MEMORY[0x277CEAEA8]);
  v50 = v28;
  v53 = 0u;
  v54 = 0u;
  v55 = 1;
  sub_219BE8314();
  swift_allocObject();

  swift_unknownObjectRetain();
  sub_219BE82B4();
  sub_219BE5A14();
  v29 = v36;
  *v18 = v36;
  (*(v16 + 104))(v18, *MEMORY[0x277D31A18], v15);
  v30 = v29;
  MEMORY[0x21CEBC780](v18, v37);
  (*(v16 + 8))(v18, v15);
  if (sub_219BE59D4())
  {
    swift_unknownObjectRetain();
    v31 = sub_219BE5994();

    swift_unknownObjectRelease();
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

  sub_219BDBD54();
  sub_219BDBD44();
  (*(v38 + 8))(v12, v39);
  (*(v40 + 104))(v41, *MEMORY[0x277D2F3B8], v42);
  (*(v46 + 104))(v45, *MEMORY[0x277D2D800], v47);
  v33 = v35[0];
  sub_219BE1514();
  sub_218F7CDD8(&qword_280EE7FE0, 255, MEMORY[0x277D2F398]);
  v34 = v44;
  sub_219BDD1F4();
  (*(v43 + 8))(v33, v34);
  v49(v31);

  swift_unknownObjectRelease();
}

id sub_218F77878(void *a1)
{
  v2 = v1;
  sub_218F7CD74(0, &qword_27CC13DC8, sub_218F7CE20, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v85 = v80 - v5;
  v6 = sub_219BE89F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F7CE20();
  v86 = v10;
  v90 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v80 - v14;
  sub_218F7CEFC();
  v88 = *(v16 - 8);
  v89 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v80 - v21;
  MEMORY[0x28223BE20](v20);
  v87 = v80 - v23;
  if (sub_219BED0C4())
  {
    v24 = [objc_msgSend(a1 backingTag)];
    swift_unknownObjectRelease();
    if (v24)
    {
      v25 = [*(v1 + 40) configuration];
      if (v25)
      {
        v26 = a1;
        v27 = [v25 puzzlesConfig];
        swift_unknownObjectRelease();
        v84 = v26;
        v28 = sub_218F75C4C();
        v81 = objc_opt_self();
        v29 = v24;
        v30 = swift_allocObject();
        swift_weakInit();
        v31 = swift_allocObject();
        v31[2] = v30;
        v31[3] = v29;
        v31[4] = v27;
        v31[5] = v28;
        v95 = sub_218F7D008;
        v96 = v31;
        aBlock = MEMORY[0x277D85DD0];
        v92 = 1107296256;
        v93 = sub_218F766F4;
        v94 = &block_descriptor_35;
        v32 = _Block_copy(&aBlock);
        v83 = v29;
        swift_unknownObjectRetain();
        v82 = v27;

        v81 = [v81 elementWithUncachedProvider_];
        _Block_release(v32);
        LOBYTE(aBlock) = 0;
        sub_2186C6148(0, &qword_280E8DA68);
        sub_218731FA0();
        v33 = v87;
        sub_219BE7204();
        LOBYTE(aBlock) = 0;
        sub_218F7CF78(0, &qword_27CC13DD8, MEMORY[0x277D6E368]);
        sub_219BE7204();
        sub_218F7CF78(0, &qword_27CC13E00, MEMORY[0x277D6E370]);
        v80[5] = v34;
        v35 = v2[2];
        v80[3] = v2[3];
        (*(v7 + 104))(v9, *MEMORY[0x277D6E118], v6);
        v36 = v2[4];
        v94 = sub_219BDD274();
        v95 = sub_218F7CDD8(&qword_280EE8EE0, 255, MEMORY[0x277CEAEA8]);
        aBlock = v36;
        v97 = 0u;
        v98 = 0u;
        v99 = 1;
        sub_219BE8314();
        swift_allocObject();
        v80[4] = v35;
        swift_unknownObjectRetain();

        v80[2] = sub_219BE82F4();
        if (qword_280EE3880 != -1)
        {
          swift_once();
        }

        v80[1] = qword_280EE3890;

        v37 = [objc_msgSend(v84 backingTag)];
        swift_unknownObjectRelease();
        v38 = sub_219BF5414();
        v40 = v39;

        aBlock = v38;
        v92 = v40;
        v41 = v88;
        v42 = v33;
        v43 = v89;
        (*(v88 + 16))(v22, v42, v89);
        v44 = v90;
        v45 = v85;
        v46 = v86;
        (*(v90 + 16))(v85, v15, v86);
        (*(v44 + 56))(v45, 0, 1, v46);
        sub_2186C6148(0, &qword_280E8DAF0);
        sub_218F7CD04(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_219C146A0;
        v48 = v81;
        *(v47 + 32) = v81;
        v49 = v48;
        sub_219BF6BF4();
        v50 = [objc_opt_self() configurationWithPointSize:5 weight:3 scale:17.0];
        v51 = sub_219BE8E04();
        swift_unknownObjectRelease();

        (*(v44 + 8))(v15, v46);
        (*(v41 + 8))(v87, v43);
        return v51;
      }

      swift_unknownObjectRelease();
    }

    return 0;
  }

  v84 = a1;
  LOBYTE(aBlock) = 0;
  sub_2186C6148(0, &qword_280E8DA68);
  sub_218731FA0();
  sub_219BE7204();
  LOBYTE(aBlock) = 0;
  sub_218F7CF78(0, &qword_27CC13DD8, MEMORY[0x277D6E368]);
  sub_219BE7204();
  sub_218F7CF78(0, &qword_27CC13E00, MEMORY[0x277D6E370]);
  v82 = *(v1 + 24);
  v83 = v52;
  (*(v7 + 104))(v9, *MEMORY[0x277D6E118], v6);
  v53 = *(v1 + 32);
  v94 = sub_219BDD274();
  v95 = sub_218F7CDD8(&qword_280EE8EE0, 255, MEMORY[0x277CEAEA8]);
  aBlock = v53;
  v97 = 0u;
  v98 = 0u;
  v99 = 1;
  sub_219BE8314();
  swift_allocObject();
  swift_unknownObjectRetain();

  sub_219BE82F4();
  if (qword_280EE3880 != -1)
  {
    swift_once();
  }

  v54 = [objc_msgSend(v84 backingTag)];
  swift_unknownObjectRelease();
  v55 = sub_219BF5414();
  v57 = v56;

  aBlock = v55;
  v92 = v57;
  (*(v88 + 16))(v87, v19, v89);
  v58 = v90;
  v59 = v85;
  v60 = v86;
  (*(v90 + 16))(v85, v13, v86);
  (*(v58 + 56))(v59, 0, 1, v60);
  v61 = sub_219BE8DF4();
  v62 = [*(v1 + 40) configuration];
  if (v62)
  {
    v63 = [v62 puzzlesConfig];
    swift_unknownObjectRelease();
    v64 = [v61 customView];
    if (v64)
    {
      v65 = v64;
      objc_opt_self();
      v66 = swift_dynamicCastObjCClass();
      if (v66)
      {
        v67 = v66;
        sub_2186C6148(0, &qword_280E8DAF0);
        v68 = sub_219BF6BF4();
        [v67 setMenu_];

        v69 = v65;
        [v67 setShowsMenuAsPrimaryAction_];
        [v67 setContextMenuInteractionEnabled_];

        v87 = sub_2186C6148(0, &qword_280E8D9D0);
        v70 = swift_allocObject();
        swift_weakInit();
        v71 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v72 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v73 = swift_allocObject();
        v73[2] = v70;
        v73[3] = v71;
        v73[4] = v72;
        v73[5] = v63;
        v74 = v63;
        v65 = sub_219BF6E14();
        [v67 addAction:v65 forControlEvents:0x4000];

        v63 = v69;
        v60 = v86;
      }

      v63 = v65;
    }
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v76 = objc_opt_self();
  v51 = v61;
  v77 = [v76 bundleForClass_];
  sub_219BDB5E4();

  v78 = sub_219BF53D4();

  [v51 setAccessibilityLabel_];

  (*(v90 + 8))(v13, v60);
  (*(v88 + 8))(v19, v89);
  return v51;
}

id sub_218F786E4(void *a1)
{
  v3 = [*(v1 + 40) configuration];
  if (v3)
  {
    v4 = [v3 puzzlesConfig];
    swift_unknownObjectRelease();
    [v4 puzzleLeaderboardsEnabled];
  }

  sub_219BDC8D4();
  sub_219BDC8B4();
  sub_219BDC794();
  v5 = sub_219BDC8C4();

  if ((v5 & 1) == 0 || [a1 feedConfiguration] - 9 > 1)
  {
    return 0;
  }

  return sub_218F787FC(a1);
}

id sub_218F787FC(void *a1)
{
  v2 = v1;
  v4 = sub_219BEB674();
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x28223BE20](v4);
  v61 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F7CD74(0, &qword_280E93A80, type metadata accessor for PuzzleGameCenterOpenLeaderboardCommandContext, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v58 = &v57 - v7;
  v8 = sub_219BE89F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_219BF4F84();
  v12 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v65 = (&v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = [objc_msgSend(a1 backingTag)];
  swift_unknownObjectRelease();
  v62 = v12;
  v63 = v1;
  if (v14)
  {
    v15 = [*(v1 + 40) configuration];
    if (v15)
    {
      v16 = [v15 puzzlesConfig];
      swift_unknownObjectRelease();
      v17 = [v16 puzzleTypeLeaderboards];

      sub_2186C6148(0, &qword_27CC1EE70);
      v18 = sub_219BF5214();

      v19 = [v14 identifier];
      v20 = sub_219BF5414();
      v22 = v21;

      if (*(v18 + 16))
      {
        sub_21870F700(v20, v22);
        v24 = v23;

        v12 = v62;
        v2 = v63;
        if (v24)
        {
          v25 = [v14 identifier];
          v26 = sub_219BF5414();
          v28 = v27;
          swift_unknownObjectRelease();

          v29 = v65;
          *v65 = v26;
          v29[1] = v28;
          v2 = v63;
          v29[2] = 0;
          *(v29 + 24) = 1;
          v30 = MEMORY[0x277D346C8];
          goto LABEL_10;
        }
      }

      else
      {

        v12 = v62;
        v2 = v63;
      }
    }

    swift_unknownObjectRelease();
  }

  v31 = [objc_msgSend(a1 backingTag)];
  swift_unknownObjectRelease();
  if (!v31)
  {
    return 0;
  }

  v30 = MEMORY[0x277D346D0];
LABEL_10:
  v32 = *(v12 + 104);
  v34 = v64;
  v33 = v65;
  v32(v65, *v30, v64);
  if (qword_280E92EA0 != -1)
  {
    swift_once();
  }

  v57 = qword_280E92EA8;
  v35 = [objc_opt_self() configurationWithPointSize:5 weight:3 scale:22.0];
  (*(v9 + 104))(v11, *MEMORY[0x277D6E118], v8);
  v36 = *(v2 + 32);
  v67 = sub_219BDD274();
  v68 = sub_218F7CDD8(&qword_280EE8EE0, 255, MEMORY[0x277CEAEA8]);
  v66 = v36;
  v69 = 0u;
  v70 = 0u;
  v71 = 1;
  sub_219BE8314();
  swift_allocObject();

  sub_219BE82B4();
  v37 = qword_280EE38B8;
  swift_unknownObjectRetain();

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = v62;
  v39 = v58;
  (*(v62 + 16))(v58, v33, v34);
  v40 = type metadata accessor for PuzzleGameCenterOpenLeaderboardCommandContext();
  (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  sub_218F7CD74(0, &unk_280EE4FD0, type metadata accessor for PuzzleGameCenterOpenLeaderboardCommandContext, MEMORY[0x277D6DBE0]);
  v42 = objc_allocWithZone(v41);

  v43 = v57;
  v57 = v35;
  v44 = sub_219BE7904();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v46 = objc_opt_self();
  v47 = v44;
  v48 = [v46 bundleForClass_];
  sub_219BDB5E4();

  v49 = sub_219BF53D4();

  [v47 setTitle_];

  v50 = v47;
  v51 = [v46 bundleForClass_];
  sub_219BDB5E4();

  v52 = sub_219BF53D4();

  [v50 setAccessibilityLabel_];

  sub_219BE82C4();
  if (qword_280EE35B0 != -1)
  {
    swift_once();
  }

  v53 = v60;
  v54 = __swift_project_value_buffer(v60, qword_280F62410);
  (*(v59 + 16))(v61, v54, v53);
  sub_219BE5F14();
  swift_allocObject();
  v55 = v50;
  sub_219BE5EB4();
  sub_219BE6DA4();

  (*(v38 + 8))(v65, v64);
  return v55;
}

uint64_t sub_218F7915C(void *a1)
{
  v2 = sub_219BF28F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!NFInternalBuild())
  {
    return 0;
  }

  sub_219BDC734();
  sub_218F7CDD8(qword_280EA1690, v6, type metadata accessor for TagFeedViewerBarButtonItemFactory);
  sub_219BDC7D4();

  if ((v9[15] & 1) != 0 || [a1 feedConfiguration] - 9 > 1)
  {
    return 0;
  }

  sub_21965DD14(0, v5);
  v7 = sub_219BF28A4();
  (*(v3 + 8))(v5, v2);
  return v7;
}

id sub_218F79300(void *a1)
{
  v2 = v1;
  v4 = sub_219BE89F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![*(v2 + 104) useFood])
  {
    return 0;
  }

  v8 = [sub_219BF6394() isFoodHub];
  swift_unknownObjectRelease();
  if (!v8 || [a1 feedConfiguration] != 12)
  {
    return 0;
  }

  (*(v5 + 104))(v7, *MEMORY[0x277D6E118], v4);
  v9 = *(v2 + 32);
  v23 = sub_219BDD274();
  v24 = sub_218F7CDD8(&qword_280EE8EE0, 255, MEMORY[0x277CEAEA8]);
  v22 = v9;
  v25 = 0u;
  v26 = 0u;
  v27 = 1;
  sub_219BE8314();
  swift_allocObject();

  sub_219BE82B4();
  v10 = qword_280EE38F8;
  swift_unknownObjectRetain();
  if (v10 != -1)
  {
    swift_once();
  }

  v11 = sub_219BED0C4();
  sub_219BF5114();
  if (v11)
  {
    sub_219BF50B4();
  }

  else
  {
    sub_219BF50E4();
  }

  v13 = [objc_opt_self() configurationWithPointSize:5 weight:3 scale:22.0];
  LOBYTE(v22) = 0;
  sub_218F7CD04(0, &qword_27CC13DC0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6DBE0]);
  objc_allocWithZone(v14);

  v15 = sub_219BE7904();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = objc_opt_self();
  v18 = v15;
  v19 = [v17 bundleForClass_];
  sub_219BDB5E4();

  v20 = sub_219BF53D4();

  [v18 setAccessibilityLabel_];

  return v18;
}

id sub_218F79704(void *a1, uint64_t a2)
{
  v96 = a2;
  v3 = sub_219BE5F04();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEB674();
  MEMORY[0x28223BE20](v6 - 8);
  v81 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_218F7CD74(0, &qword_280EE5340, sub_218F7D014, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v93 = &v75 - v10;
  sub_218F7CD74(0, &unk_280E901B0, MEMORY[0x277D33D70], v8);
  MEMORY[0x28223BE20](v11 - 8);
  v94 = &v75 - v12;
  v91 = sub_219BE89F4();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v92 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_219BDF074();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_219BE1544();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BDBD64();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_219BE1524();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v23 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F7D014();
  v100 = v24;
  v95 = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v24);
  v99 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v89 = &v75 - v27;
  sub_218F7D09C();
  v101 = v28;
  v97 = *(v28 - 8);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v75 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29);
  v78 = &v75 - v33;
  MEMORY[0x28223BE20](v32);
  v98 = &v75 - v34;
  v35 = sub_219BF3344();
  v103 = *(v35 - 8);
  v104 = v35;
  v36 = MEMORY[0x28223BE20](v35);
  v80 = &v75 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v39 = &v75 - v38;
  v40 = [a1 feedConfiguration];
  if ((v40 - 3) >= 0xB || ((0x561u >> (v40 - 3)) & 1) == 0)
  {
    v102 = sub_219BF6394();
    v79 = sub_219BEB624();
    v42 = v41;
    v43 = sub_219BED0C4();
    v82 = v42;
    if (v43)
    {
      swift_unknownObjectRetain();
      sub_219BF3324();
      v44 = v105;
      if (sub_218F7A9E0(v39, v96))
      {
        LOBYTE(v106) = 1;
        sub_2186C6148(0, &qword_280E8DA68);
        sub_218740ED4();
        v76 = v5;
        sub_219BE7204();
        LOBYTE(v106) = 1;
        sub_218F7D118(0, &qword_280EE4740, MEMORY[0x277D6E368]);
        sub_219BE7204();
        v45 = *(v44 + 32);
        sub_219BDBD54();
        sub_219BDBD44();
        (*(v19 + 8))(v21, v18);
        (*(v83 + 104))(v17, *MEMORY[0x277D2F3B8], v84);
        (*(v85 + 104))(v15, *MEMORY[0x277D2D800], v86);
        sub_219BE1514();
        sub_218F7CDD8(&qword_280EE7FE0, 255, MEMORY[0x277D2F398]);
        v46 = v88;
        sub_219BDD1F4();
        (*(v87 + 8))(v23, v46);
        (*(v90 + 104))(v92, *MEMORY[0x277D6E118], v91);
        v107 = sub_219BDD274();
        v108 = sub_218F7CDD8(&qword_280EE8EE0, 255, MEMORY[0x277CEAEA8]);
        v106 = v45;
        v109 = 0u;
        v110 = 0u;
        v111 = 1;
        sub_219BE8314();
        swift_allocObject();

        sub_219BE82B4();
        sub_218F7D118(0, &qword_280EE4728, MEMORY[0x277D6E370]);
        v99 = v47;
        v96 = *(v105 + 24);
        swift_unknownObjectRetain();

        sub_219BEAF14();
        swift_unknownObjectRetain();
        v48 = v94;
        sub_219BF3324();
        v49 = v93;
        (*(v103 + 56))(v48, 0, 1, v104);
        (*(v97 + 16))(v78, v98, v101);
        v50 = v95;
        v51 = v100;
        (*(v95 + 16))(v49, v89, v100);
        (*(v50 + 56))(v49, 0, 1, v51);
        v52 = [objc_opt_self() configurationWithPointSize:5 weight:3 scale:17.0];
        v53 = sub_219BE8E04();
        sub_2186C6148(0, &unk_280E8E710);
        v54 = v53;
        v55 = sub_219BF61B4();
        [v54 setMenuRepresentation_];

        sub_219BE82C4();
        sub_219BEB664();
        v56 = v54;
        sub_219BE5ED4();
        sub_219BE5F14();
        swift_allocObject();
        sub_219BE5EA4();
        sub_219BE6DA4();
        swift_unknownObjectRelease();

        (*(v50 + 8))(v89, v100);
        (*(v97 + 8))(v98, v101);
        (*(v103 + 8))(v39, v104);
        return v56;
      }

      (*(v103 + 8))(v39, v104);

      swift_unknownObjectRelease();
    }

    else
    {
      v76 = v5;
      LOBYTE(v106) = 1;
      sub_2186C6148(0, &qword_280E8DA68);
      sub_218740ED4();
      v77 = v31;
      sub_219BE7204();
      LOBYTE(v106) = 1;
      sub_218F7D118(0, &qword_280EE4740, MEMORY[0x277D6E368]);
      sub_219BE7204();
      v58 = v105;
      v59 = *(v105 + 32);
      sub_219BDBD54();
      sub_219BDBD44();
      (*(v19 + 8))(v21, v18);
      (*(v83 + 104))(v17, *MEMORY[0x277D2F3B8], v84);
      (*(v85 + 104))(v15, *MEMORY[0x277D2D800], v86);
      sub_219BE1514();
      sub_218F7CDD8(&qword_280EE7FE0, 255, MEMORY[0x277D2F398]);
      v60 = v88;
      sub_219BDD1F4();
      (*(v87 + 8))(v23, v60);
      (*(v90 + 104))(v92, *MEMORY[0x277D6E118], v91);
      v107 = sub_219BDD274();
      v108 = sub_218F7CDD8(&qword_280EE8EE0, 255, MEMORY[0x277CEAEA8]);
      v106 = v59;
      v109 = 0u;
      v110 = 0u;
      v111 = 1;
      sub_219BE8314();
      swift_allocObject();

      v61 = sub_219BE82B4();
      sub_218F7D118(0, &qword_280EE4728, MEMORY[0x277D6E370]);
      v91 = v62;
      v92 = *(v58 + 24);
      swift_unknownObjectRetain();

      sub_219BEAF14();
      swift_unknownObjectRetain();
      v63 = v98;
      v64 = v94;
      sub_219BF3324();
      (*(v103 + 56))(v64, 0, 1, v104);
      v65 = v97;
      (*(v97 + 16))(v63, v77, v101);
      v66 = v95;
      v67 = v93;
      v68 = v100;
      (*(v95 + 16))(v93, v99, v100);
      (*(v66 + 56))(v67, 0, 1, v68);
      v92 = v61;
      v69 = sub_219BE8DF4();
      sub_2186C6148(0, &unk_280E8E710);
      v70 = v69;
      v71 = v105;
      v72 = sub_219BF61B4();
      [v70 setMenuRepresentation_];

      swift_unknownObjectRetain();
      v73 = v80;
      sub_219BF3324();
      if (sub_218F7A9E0(v73, v96))
      {
        v105 = *(v71 + 96);
        sub_219BE82C4();
        sub_219BEB664();
        v74 = v70;
        sub_219BE5ED4();
        sub_219BE5F14();
        swift_allocObject();
        sub_219BE5EA4();
        sub_219BE6DA4();

        swift_unknownObjectRelease();

        (*(v103 + 8))(v73, v104);
        (*(v66 + 8))(v99, v100);
        (*(v65 + 8))(v77, v101);
        return v74;
      }

      swift_unknownObjectRelease();

      (*(v103 + 8))(v73, v104);
      (*(v66 + 8))(v99, v100);
      (*(v65 + 8))(v77, v101);
    }
  }

  return 0;
}

uint64_t sub_218F7A9E0(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  sub_218F7CD74(0, &unk_280E901B0, MEMORY[0x277D33D70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - v5;
  v7 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  sub_219BEAF14();
  v9 = sub_219BF3344();
  v10 = *(v9 - 8);
  v11 = *(v10 + 16);
  v16 = a1;
  v15[0] = v11;
  v11(v6, a1, v9);
  v12 = *(v10 + 56);
  v12(v6, 0, 1, v9);
  v15[1] = ObjectType;
  v15[2] = v7;
  LOBYTE(a1) = sub_219BE7074();

  sub_218AD7DC0(v6);
  v13 = 0;
  if (a1)
  {
    if (v17)
    {
      v13 = 1;
    }

    else
    {
      sub_219BEAF14();
      (v15[0])(v6, v16, v9);
      v12(v6, 0, 1, v9);
      sub_218740ED4();
      sub_219BE7034();

      sub_218AD7DC0(v6);
      v13 = v18;
      if (v18 == 2)
      {
        v13 = 0;
      }
    }
  }

  return v13 & 1;
}

void sub_218F7AC08(void *a1@<X8>)
{
  v2 = sub_219BF53D4();
  v3 = [objc_opt_self() systemImageNamed_];

  if (v3)
  {

    *a1 = v3;
  }

  else
  {
    __break(1u);
  }
}

id sub_218F7ACB0@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*a1)
  {
    if (qword_280E92EC0 != -1)
    {
      v5 = a2;
      swift_once();
      a2 = v5;
    }

    v2 = &qword_280F61968;
  }

  else
  {
    if (qword_27CC083A8 != -1)
    {
      v6 = a2;
      swift_once();
      a2 = v6;
    }

    v2 = &qword_27CCD8880;
  }

  v3 = *v2;
  *a2 = *v2;

  return v3;
}

uint64_t sub_218F7AD70(char *a1)
{
  v1 = *a1;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass_];
  sub_219BDB5E4();

  if (v1)
  {
    v5 = [v3 bundleForClass_];
  }

  else
  {
    v5 = [v3 bundleForClass_];
  }

  sub_219BDB5E4();

  sub_219BF3344();
  sub_218E14F94();
  sub_218740ED4();
  return sub_219BE8E24();
}

void sub_218F7AFAC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = sub_219BE89F4();
  v5 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE7F34();
  v77 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE6754();
  MEMORY[0x28223BE20](v11 - 8);
  v76 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BE7854();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v2;
  v17 = [*(v2 + 40) configuration];
  if (v17)
  {
    v73 = v5;
    v74 = v8;
    v72 = v10;
    v18 = [v17 puzzlesConfig];
    swift_unknownObjectRelease();
    v19 = [objc_msgSend(a1 backingTag)];
    swift_unknownObjectRelease();
    if (v19)
    {
      v65 = v18;
      v67 = v7;
      v75 = v16;
      v68 = a1;
      v69 = v14;
      v70 = v13;
      v71 = a2;
      v20 = objc_opt_self();
      v21 = [v20 configurationWithPointSize:5 weight:2 scale:20.0];
      v22 = v79;
      __swift_project_boxed_opaque_existential_1(v79 + 7, v79[10]);
      v66 = v19;
      v23 = [v19 identifier];
      v24 = sub_219BF5414();
      v26 = v25;

      v27 = sub_219579760(v24, v26);

      v28 = *__swift_project_boxed_opaque_existential_1(v22 + 7, v22[10]);
      swift_beginAccess();
      v29 = *(v28 + 24);
      if (v27[2] <= *(v29 + 16) >> 3)
      {
        v80 = *(v28 + 24);
        swift_bridgeObjectRetain_n();
        sub_218EB3E44(v27);
        v30 = v80;
      }

      else
      {
        swift_bridgeObjectRetain_n();
        v30 = sub_218EB51C8(v27, v29);
      }

      v33 = v74;
      v34 = *(v30 + 16);

      sub_218F7CD04(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_219C189F0;
      v36 = objc_opt_self();
      v37 = v36;
      v38 = &selRef_whiteColor;
      if (v34)
      {
        v39 = &selRef_systemPinkColor;
      }

      else
      {
        v38 = &selRef_systemPinkColor;
        v39 = &selRef_systemGray5Color;
      }

      *(v35 + 32) = [v36 *v38];
      *(v35 + 40) = [v37 *v39];
      sub_2186C6148(0, &qword_280E8DA80);
      v40 = sub_219BF5904();

      v41 = [v20 configurationWithPaletteColors_];

      v42 = [v21 configurationByApplyingConfiguration_];
      v43 = qword_27CC082E8;
      v44 = v42;
      if (v43 != -1)
      {
        swift_once();
      }

      v45 = [qword_27CC17850 imageByApplyingSymbolConfiguration_];
      v46 = v44;

      if (v45)
      {

        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v48 = objc_opt_self();
        v49 = [v48 bundleForClass_];
        sub_219BDB5E4();
        v64 = v50;

        v51 = [v48 bundleForClass_];
        sub_219BDB5E4();

        v52 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
        v53 = [v52 UUIDString];

        sub_219BF5414();
        sub_219BE6774();
        swift_allocObject();
        v54 = sub_219BE6764();
        v80 = v54;

        v74 = v45;
        sub_219BE6744();
        (*(v77 + 104))(v72, *MEMORY[0x277D6DDB8], v33);
        sub_218F7CDD8(&unk_280EE59E0, 255, MEMORY[0x277D6D6B0]);
        sub_219BE7804();
        (*(v73 + 104))(v67, *MEMORY[0x277D6E118], v78);
        v55 = v79[4];
        v81 = sub_219BDD274();
        v82 = sub_218F7CDD8(&qword_280EE8EE0, 255, MEMORY[0x277CEAEA8]);
        v80 = v55;
        v83 = 0u;
        v84 = 0u;
        v85 = 1;
        sub_219BE8314();
        swift_allocObject();

        sub_219BE82F4();
        sub_219BE5A14();
        v56 = v65;
        v57 = v66;
        swift_unknownObjectRetain();
        sub_218F75C4C();
        if (sub_2198741C8(v57, v56))
        {
          sub_219BE5994();
        }

        v58 = v69;
        sub_2186C6148(0, &qword_280E8DAF0);
        v59 = sub_219BF6BF4();

        swift_unknownObjectRelease();

        sub_218F7CC98();
        v61 = v60;
        v62 = v71;
        v63 = (v71 + *(v60 + 48));
        (*(v58 + 32))(v71, v75, v70);
        *v63 = v54;
        v63[1] = v59;
        (*(*(v61 - 8) + 56))(v62, 0, 1, v61);
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  sub_218F7CC98();
  v32 = *(*(v31 - 8) + 56);

  v32(a2, 1, 1, v31);
}

uint64_t sub_218F7BA04(void (*a1)(void), uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v36 = a6;
  v33 = a5;
  v35 = a4;
  v8 = sub_219BDF074();
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x28223BE20](v8);
  v42 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_219BE1544();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_219BDBD64();
  v11 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE1524();
  v40 = *(v14 - 8);
  v41 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BE89F4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return (a1)(MEMORY[0x277D84F90]);
  }

  v22 = Strong;
  v31[2] = a2;
  v32 = a1;
  (*(v18 + 104))(v20, *MEMORY[0x277D6E118], v17);
  v23 = *(v22 + 32);
  v46 = sub_219BDD274();
  v47 = sub_218F7CDD8(&qword_280EE8EE0, 255, MEMORY[0x277CEAEA8]);
  v45 = v23;
  v48 = 0u;
  v49 = 0u;
  v50 = 1;
  sub_219BE8314();
  swift_allocObject();

  v24 = sub_219BE82F4();
  sub_219BE5A14();
  v25 = v35;
  swift_unknownObjectRetain();
  v26 = v33;

  v27 = sub_2198741C8(v25, v26);
  v31[1] = v24;
  if (v27)
  {
    swift_unknownObjectRetain();
    v28 = sub_219BE5994();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  sub_219BDBD54();
  sub_219BDBD44();
  (*(v11 + 8))(v13, v34);
  (*(v37 + 104))(v38, *MEMORY[0x277D2F3B8], v39);
  (*(v43 + 104))(v42, *MEMORY[0x277D2D800], v44);
  sub_219BE1514();
  sub_218F7CDD8(&qword_280EE7FE0, 255, MEMORY[0x277D2F398]);
  v30 = v41;
  sub_219BDD1F4();
  (*(v40 + 8))(v16, v30);
  v32(v28);
}

void sub_218F7BFE0(void *a1@<X8>)
{
  v2 = sub_219BF53D4();
  v3 = [objc_opt_self() systemImageNamed_];

  if (v3)
  {
    *a1 = v3;
  }

  else
  {
    __break(1u);
  }
}

void sub_218F7C060(char *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = objc_opt_self();
  v5 = [v4 configurationWithPointSize:5 weight:3 scale:23.0];
  sub_218F7CD04(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  v6[1] = xmmword_219C189F0;
  v7 = objc_opt_self();
  if (v3)
  {
    v8 = v7;
    *(v6 + 4) = [v7 whiteColor];
    *(v6 + 5) = [v8 systemPinkColor];
    sub_2186C6148(0, &qword_280E8DA80);
    v9 = sub_219BF5904();

    v10 = [v4 configurationWithPaletteColors_];

    v6 = [v5 configurationByApplyingConfiguration_];
    v11 = qword_27CC082F0;
    v5 = v6;
    if (v11 != -1)
    {
      swift_once();
    }

    v4 = [qword_27CC17858 imageByApplyingSymbolConfiguration_];

    if (v4)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v12 = v7;
  *(v6 + 4) = [v7 systemPinkColor];
  *(v6 + 5) = [v12 systemGray5Color];
  sub_2186C6148(0, &qword_280E8DA80);
  v13 = sub_219BF5904();

  v14 = [v4 configurationWithPaletteColors_];

  v15 = [v5 configurationByApplyingConfiguration_];
  v16 = qword_27CC082E8;
  v5 = v15;
  if (v16 != -1)
  {
    swift_once();
  }

  v4 = [qword_27CC17850 imageByApplyingSymbolConfiguration_];

  if (v4)
  {
LABEL_9:

    *a2 = v4;
    return;
  }

  __break(1u);
}

uint64_t sub_218F7C364()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  sub_219BDB5E4();

  v3 = [v1 bundleForClass_];
  sub_219BDB5E4();

  sub_218F7CEA8();
  sub_218731FA0();
  return sub_219BE8E24();
}

void sub_218F7C504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v43 = a5;
  v41 = sub_219BE89F4();
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v42 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_219BDF074();
  v38 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE1544();
  v36 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BDBD64();
  v35 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE1524();
  v37 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      swift_beginAccess();
      v21 = swift_unknownObjectWeakLoadStrong();
      if (v21)
      {
        v33 = v20;
        v34 = v21;
        v22 = [objc_msgSend(v21 backingTag)];
        swift_unknownObjectRelease();
        v32 = v22;
        if (v22)
        {
          sub_219BDBD54();
          sub_219BDBD44();
          v31 = v18;
          (*(v35 + 8))(v13, v11);
          (*(v36 + 104))(v10, *MEMORY[0x277D2F3B8], v8);
          (*(v38 + 104))(v7, *MEMORY[0x277D2D800], v39);
          v23 = v31;
          sub_219BE1514();
          sub_218F7CDD8(&qword_280EE7FE0, 255, MEMORY[0x277D2F398]);
          sub_219BDD1F4();
          (*(v37 + 8))(v16, v14);
          (*(v40 + 104))(v42, *MEMORY[0x277D6E118], v41);
          v24 = *(v23 + 32);
          v45 = sub_219BDD274();
          v46 = sub_218F7CDD8(&qword_280EE8EE0, 255, MEMORY[0x277CEAEA8]);
          v44 = v24;
          v47 = 0u;
          v48 = 0u;
          v49 = 1;
          sub_219BE8314();
          swift_allocObject();

          v25 = v33;
          sub_219BE82F4();
          sub_219BE5A14();
          v26 = v43;
          v27 = v32;
          swift_unknownObjectRetain();
          v28 = v34;
          sub_218F75C4C();
          if (sub_2198741C8(v27, v26))
          {
            swift_unknownObjectRetain();
            sub_219BE5994();
            swift_unknownObjectRelease();
          }

          sub_2186C6148(0, &qword_280E8DAF0);
          v29 = sub_219BF6BF4();
          [v25 setMenu_];

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_218F7CBE8()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_218F7CC40()
{
  sub_218F7CBE8();

  return swift_deallocClassInstance();
}

void sub_218F7CC98()
{
  if (!qword_280EE4FF0)
  {
    sub_219BE7854();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE4FF0);
    }
  }
}

void sub_218F7CD04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_218F7CD74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218F7CDD8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_218F7CE20()
{
  if (!qword_27CC13DD0)
  {
    sub_218F7CF78(255, &qword_27CC13DD8, MEMORY[0x277D6E368]);
    sub_218731FA0();
    v0 = sub_219BE7214();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC13DD0);
    }
  }
}

unint64_t sub_218F7CEA8()
{
  result = qword_27CC13DE0;
  if (!qword_27CC13DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13DE0);
  }

  return result;
}

void sub_218F7CEFC()
{
  if (!qword_27CC13DF0)
  {
    sub_2186C6148(255, &qword_280E8DA68);
    sub_218731FA0();
    v0 = sub_219BE7214();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC13DF0);
    }
  }
}

void sub_218F7CF78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for PuzzleArchiveFilterSelectionCommandContext;
    v8[1] = &type metadata for PuzzleArchiveFilterSelectionCommandState;
    v8[2] = sub_218F7CEA8();
    v8[3] = sub_218731FA0();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218F7D014()
{
  if (!qword_280EE5348)
  {
    sub_218F7D118(255, &qword_280EE4740, MEMORY[0x277D6E368]);
    sub_218740ED4();
    v0 = sub_219BE7214();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5348);
    }
  }
}

void sub_218F7D09C()
{
  if (!qword_280EE5330)
  {
    sub_2186C6148(255, &qword_280E8DA68);
    sub_218740ED4();
    v0 = sub_219BE7214();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5330);
    }
  }
}

void sub_218F7D118(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = sub_219BF3344();
    v7 = sub_218E14F94();
    v8 = sub_218740ED4();
    v11[0] = v6;
    v11[1] = MEMORY[0x277D33BD8];
    v11[2] = v7;
    v11[3] = v8;
    v9 = a3(a1, v11);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_218F7D1F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 16))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_218F7D24C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for DislikeButton()
{
  result = qword_27CC13E20;
  if (!qword_27CC13E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_218F7D374()
{
  if (*(v0 + qword_27CC13E18))
  {
    if (qword_27CC08308 != -1)
    {
      swift_once();
    }

    v1 = &qword_27CC17870;
  }

  else
  {
    if (qword_27CC082E0 != -1)
    {
      swift_once();
    }

    v1 = &qword_27CC17848;
  }

  v2 = *v1;
  v3 = *(v0 + qword_27CC13E10);
  *(v0 + qword_27CC13E10) = v2;
  v4 = v2;

  v5 = qword_27CC13E08;
  [*(v0 + qword_27CC13E08) setImage_];
  [*(v0 + v5) setNeedsDisplay];

  v6 = qword_27CC13E08;
  [*(v0 + qword_27CC13E08) setImage_];
  v7 = *(v0 + v6);

  return [v7 setNeedsDisplay];
}

char *sub_218F7D4A8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = qword_27CC13E08;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  *&v4[qword_27CC13E10] = 0;
  v4[qword_27CC13E18] = 1;
  v16.receiver = v4;
  v16.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = qword_27CC13E08;
  v13 = *&v11[qword_27CC13E08];
  v14 = v11;
  [v13 setContentMode_];
  [v14 addSubview_];

  return v14;
}

void sub_218F7D5D0(uint64_t a1)
{
  v2 = qword_27CC13E08;
  *(a1 + v2) = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  *(a1 + qword_27CC13E10) = 0;
  *(a1 + qword_27CC13E18) = 1;
  sub_219BF7514();
  __break(1u);
}

void sub_218F7D678(void *a1)
{
  v3.receiver = a1;
  v3.super_class = swift_getObjectType();
  v1 = v3.receiver;
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v2 = *&v1[qword_27CC13E08];
  [v1 bounds];
  [v2 setFrame_];
}

id sub_218F7D700()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v2 = sub_219BF53D4();

  return v2;
}

id sub_218F7D7F0()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v2 = sub_219BF53D4();

  return v2;
}

BOOL sub_218F7D8E0(void *a1, CGFloat a2, CGFloat a3)
{
  v5 = a1;
  [v5 bounds];
  v10.origin.x = UIEdgeInsetsInsetRect_0(v6);
  v9.x = a2;
  v9.y = a3;
  v7 = CGRectContainsPoint(v10, v9);

  return v7;
}

void sub_218F7D93C()
{
  v1 = *(v0 + qword_27CC13E10);
}

void sub_218F7D97C(uint64_t a1)
{
  v2 = *(a1 + qword_27CC13E10);
}

unint64_t sub_218F7D9E4()
{
  result = qword_27CC13E30;
  if (!qword_27CC13E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13E30);
  }

  return result;
}

uint64_t sub_218F7DA48(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v41 = a3;
  v42 = a2;
  v40 = sub_219BE6DF4();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218849AB8(0, &unk_280EE4B30, MEMORY[0x277D6DF88]);
  v39 = v7;
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  sub_2187FAC34();
  MEMORY[0x28223BE20](v10 - 8);
  sub_218849AB8(0, &qword_280EE3720, MEMORY[0x277D6EC60]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  v36 = v4;
  v44 = v4;
  v16 = sub_218F8F3CC(sub_218F7E2E0, v43);
  sub_2187FAD00();
  v18 = v17;
  v19 = sub_2186EFA14(&qword_280EE58E0, sub_2187FAD00);
  v20 = sub_2186EFA14(&qword_280EE58F0, sub_2187FAD00);
  MEMORY[0x21CEB9170](v16, v18, v19, v20);
  type metadata accessor for TodayModel(0);
  sub_2186EB3E8();
  sub_2186EFA14(&qword_280EDF9E0, type metadata accessor for TodayModel);
  sub_219BEB2D4();
  v35 = a1;
  v21 = sub_218827310();
  sub_219BEEFF4();
  sub_219BEEFE4();
  type metadata accessor for TodayFeedServiceConfig();
  sub_2186EFA14(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
  v22 = sub_219BEEFC4();

  v23 = 0;
  if (v22)
  {
    v23 = sub_219BEDC74();
  }

  else
  {
    v46 = 0;
    v47 = 0;
  }

  v45 = v22;
  v48 = v23;
  sub_219BEB2C4();
  sub_21885AB78(v21);
  if (v36[8] != 2)
  {
    v29 = *(sub_2194AF2AC(MEMORY[0x277D84F90]) + 16);

    if (v29)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_218859B24();
    v31 = *(v30 + 48);
    (*(v13 + 16))(v9, v15, v12);
    (*(v38 + 104))(&v9[v31], *MEMORY[0x277D6D850], v40);
    v28 = v37;
    v27 = v39;
    (*(v37 + 104))(v9, *MEMORY[0x277D6DF48], v39);
    goto LABEL_9;
  }

  if (!*(*v36 + 16))
  {
    goto LABEL_8;
  }

LABEL_6:
  v24 = v38;
  v25 = v34;
  v26 = v40;
  (*(v38 + 104))(v34, *MEMORY[0x277D6D868], v40);
  sub_2188552DC();
  sub_219BE85A4();
  (*(v24 + 8))(v25, v26);
  v27 = v39;
  v28 = v37;
LABEL_9:
  v42(v9);
  (*(v28 + 8))(v9, v27);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_218F7DFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
  sub_218DE31CC(a1, *a2, *(a2 + 8), a3);
  if (v3)
  {
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_219C09EC0;
    sub_2187FAD00();
    v9 = v8;
    v10 = sub_219BE6944();
    v12 = v11;
    v13 = MEMORY[0x277D837D0];
    *(v7 + 56) = MEMORY[0x277D837D0];
    v14 = sub_2186FC3BC();
    *(v7 + 64) = v14;
    *(v7 + 32) = v10;
    *(v7 + 40) = v12;
    sub_2186CFDE4(0, &qword_280E8B580);
    sub_219BF7484();
    *(v7 + 96) = v13;
    *(v7 + 104) = v14;
    *(v7 + 72) = 0;
    *(v7 + 80) = 0xE000000000000000;
    sub_219BF6214();
    sub_219BE5314();

    return (*(*(v9 - 8) + 56))(a3, 1, 1, v9);
  }

  else
  {
    sub_2187FAD00();
    return (*(*(v16 - 8) + 56))(a3, 0, 1, v16);
  }
}

uint64_t sub_218F7E204(uint64_t a1)
{
  v2 = sub_218CD37D4();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_218F7E244()
{
  result = qword_280EB1980;
  if (!qword_280EB1980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB1980);
  }

  return result;
}

uint64_t sub_218F7E318@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_219BE27F4();
  MEMORY[0x28223BE20](v2);
  ContextManager = type metadata accessor for PegasusQueryContextManager();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  sub_218F80F1C(&qword_280EE73D0, MEMORY[0x277D6CD10]);
  sub_218F80EC4();
  sub_218F80F1C(&qword_280E8F5D0, sub_218F80EC4);
  sub_219BF7164();
  sub_218F80F64();
  swift_allocObject();
  result = sub_219BE2004();
  *(v4 + 24) = result;
  a1[3] = ContextManager;
  a1[4] = &off_282A3FFC0;
  *a1 = v4;
  return result;
}

uint64_t sub_218F7E498@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &unk_280E8E6D0);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for SearchTagFactory();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_282A991C0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218F7E530@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &unk_280E8E6D0);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE9E40);
    result = sub_219BE1E34();
    if (v21)
    {
      v6 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
      MEMORY[0x28223BE20](v6);
      v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8);
      v10 = *v8;
      v11 = type metadata accessor for SearchTagFactory();
      v19[3] = v11;
      v19[4] = &off_282A991C0;
      v19[0] = v10;
      v12 = type metadata accessor for SearchArticleFactory();
      v13 = swift_allocObject();
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v19, v11);
      MEMORY[0x28223BE20](v14);
      v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16);
      v18 = *v16;
      v13[6] = v11;
      v13[7] = &off_282A991C0;
      v13[2] = v5;
      v13[3] = v18;
      __swift_destroy_boxed_opaque_existential_1(v19);
      result = __swift_destroy_boxed_opaque_existential_1(v20);
      a2[3] = v12;
      a2[4] = &off_282A5AC48;
      *a2 = v13;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218F7E7B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &unk_280E8E6D0);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE9E40);
    result = sub_219BE1E34();
    if (v21)
    {
      v6 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
      MEMORY[0x28223BE20](v6);
      v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8);
      v10 = *v8;
      v11 = type metadata accessor for SearchTagFactory();
      v19[3] = v11;
      v19[4] = &off_282A991C0;
      v19[0] = v10;
      v12 = type metadata accessor for SearchRecipeFactory();
      v13 = swift_allocObject();
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v19, v11);
      MEMORY[0x28223BE20](v14);
      v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16);
      v18 = *v16;
      *(v13 + 48) = v11;
      *(v13 + 56) = &off_282A991C0;
      *(v13 + 16) = v5;
      *(v13 + 24) = v18;
      *(v13 + 64) = 0u;
      *(v13 + 80) = 0u;
      *(v13 + 96) = 0;
      __swift_destroy_boxed_opaque_existential_1(v19);
      result = __swift_destroy_boxed_opaque_existential_1(v20);
      a2[3] = v12;
      a2[4] = &off_282A75DA8;
      *a2 = v13;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218F7EA3C()
{
  type metadata accessor for WidgetSearchModelFactory();

  return swift_allocObject();
}

uint64_t sub_218F7EA70@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE9E20);
  result = sub_219BE1E34();
  if (!v36)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E6C0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20);
  result = sub_219BE1E34();
  v7 = v33;
  if (!v33)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8DF40);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = result;
  v27 = v34;
  v28 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9E400);
  result = sub_219BE1E34();
  if (v32)
  {
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
    v26 = &v26;
    MEMORY[0x28223BE20](v9);
    v11 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v14 = type metadata accessor for HeadlineModelFactory();
    v30[3] = v14;
    v30[4] = &off_282A8B8E8;
    v30[0] = v13;
    v15 = type metadata accessor for HeadlineService();
    v16 = swift_allocObject();
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v30, v14);
    MEMORY[0x28223BE20](v17);
    v19 = (&v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = *v19;
    v29[3] = v14;
    v29[4] = &off_282A8B8E8;
    v29[0] = v21;
    sub_218718690(v29, (v16 + 2));
    v16[7] = v5;
    v16[8] = v6;
    v22 = objc_allocWithZone(MEMORY[0x277CCABD8]);
    v23 = [v22 init];
    [v23 setQualityOfService_];
    v24 = sub_219BF53D4();
    [v23 setName_];

    __swift_destroy_boxed_opaque_existential_1(v29);
    v16[9] = v23;
    v16[10] = v7;
    v16[11] = v27;
    v16[12] = v8;
    sub_2186CB1F0(&v31, (v16 + 13));
    __swift_destroy_boxed_opaque_existential_1(v30);
    result = __swift_destroy_boxed_opaque_existential_1(v35);
    v25 = v28;
    v28[3] = v15;
    v25[4] = &off_282A7FE28;
    *v25 = v16;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_218F7EEEC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &unk_280E8E5E0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8DE40);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E010);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E1C0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EAFB10);
  result = sub_219BE1E34();
  if (v11)
  {
    type metadata accessor for TagService();
    v9 = swift_allocObject();
    v9[2] = v5;
    v9[3] = v7;
    v9[4] = v6;
    v9[5] = v8;
    result = sub_2186CB1F0(&v10, (v9 + 6));
    v9[11] = 0;
    *a2 = v9;
    a2[1] = &off_282A4D6F8;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_218F7F0E0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &unk_280E8E6D0);
  if (!sub_219BE1E24())
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E6C0);
  v4 = sub_219BE1E24();
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [v4 recipeAccessChecker];

  if (!v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (!sub_219BE1E24())
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &unk_280E8E5E0);
  if (sub_219BE1E24())
  {
    v7 = sub_219BF1964();
    swift_allocObject();
    v8 = sub_219BF1954();
    v9 = MEMORY[0x277D334A0];
    a2[3] = v7;
    a2[4] = v9;
    *a2 = v8;
    return;
  }

LABEL_11:
  __break(1u);
}

void *sub_218F7F290@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E6C0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = result;
  v6 = [result networkBehaviorMonitor];

  v7 = [objc_allocWithZone(MEMORY[0x277D30F80]) initWithNetworkBehaviorMonitor_];
  result = swift_unknownObjectRelease();
  if (!v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8E020);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v10 = result;
  v11 = [objc_opt_self() currentDevice];
  v12 = [v11 userInterfaceIdiom];

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8E6E0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v13 = [result contentStoreFrontID];
  swift_unknownObjectRelease();
  if (v13)
  {
    v14 = sub_219BF5414();
    v33 = v15;
    v34 = v14;
  }

  else
  {
    v33 = 0;
    v34 = 0;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9E08);
  result = sub_219BE1E34();
  if (!v38)
  {
    goto LABEL_21;
  }

  v32 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8E1D0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v16 = result;
  v31 = v9;
  v17 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v18 = result;
  v30 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA8210);
  result = sub_219BE1E34();
  if (v36)
  {
    v19 = type metadata accessor for SearchFetcher();
    ObjectType = swift_getObjectType();
    v21 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
    MEMORY[0x28223BE20](v21);
    v23 = &v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v23);
    v25 = sub_2186C6148(0, &qword_280E8E200);
    ContextManager = type metadata accessor for PegasusQueryContextManager();
    v27 = sub_21979F9A4(v7, v17, v31, v10, v32, v34, v33, v23, v16, v18, v35, v19, v25, ContextManager, ObjectType, &off_282A3FFC0);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    result = __swift_destroy_boxed_opaque_existential_1(v37);
    v28 = v30;
    v30[3] = v19;
    v28[4] = &off_282A875E0;
    *v28 = v27;
    return result;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_218F7F7A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F18);
  result = sub_219BE1E34();
  if (!v167)
  {
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = type metadata accessor for WidgetSearchModelFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v164 = v5;
  v165 = &off_282A42288;
  *&v163 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20);
  result = sub_219BE1E34();
  if (!v161)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EE9E50);
  result = sub_219BE1E34();
  if (!v160)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9E00);
  result = sub_219BE1E34();
  if (!v158)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E91730);
  result = sub_219BE1E34();
  v6 = v155;
  if (!v155)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v107 = v156;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90620);
  result = sub_219BE1E34();
  if (!v154)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v104 = v162;
  v105 = v161;
  v106 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE9E30);
  result = sub_219BE1E34();
  if (!v152)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v7 = __swift_mutable_project_boxed_opaque_existential_1(v151, v152);
  MEMORY[0x28223BE20](v7);
  v9 = (v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  v12 = type metadata accessor for SearchRecipeFactory();
  v150 = &off_282A75DA8;
  v149 = v12;
  v148[0] = v11;
  type metadata accessor for SearchResultsInflaterFactory();
  v13 = swift_allocObject();
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v148, v12);
  MEMORY[0x28223BE20](v14);
  v16 = (v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v108 = v12;
  v13[10] = v12;
  v13[11] = &off_282A75DA8;
  v13[7] = v18;
  v103 = v13;
  sub_2186CB1F0(&v153, (v13 + 2));
  __swift_destroy_boxed_opaque_existential_1(v148);
  __swift_destroy_boxed_opaque_existential_1(v151);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE9E40);
  result = sub_219BE1E34();
  if (!v154)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE9E10);
  result = sub_219BE1E34();
  if (!v152)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E34();
  if (!v149)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE9E20);
  result = sub_219BE1E34();
  if (!v147)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v102 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  v101 = result;
  if (!result)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E900F0);
  sub_219BE1E34();
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v166, v167);
  v99 = v86;
  MEMORY[0x28223BE20](v19);
  v21 = (v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v159, v160);
  v98 = v86;
  MEMORY[0x28223BE20](v23);
  v25 = (v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = __swift_mutable_project_boxed_opaque_existential_1(&v153, v154);
  v97 = v86;
  MEMORY[0x28223BE20](v27);
  v29 = (v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v151, v152);
  v96 = v86;
  MEMORY[0x28223BE20](v31);
  v33 = (v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33);
  v35 = __swift_mutable_project_boxed_opaque_existential_1(v148, v149);
  v95 = v86;
  MEMORY[0x28223BE20](v35);
  v37 = (v86 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v38 + 16))(v37);
  v39 = __swift_mutable_project_boxed_opaque_existential_1(v146, v147);
  v94 = v86;
  MEMORY[0x28223BE20](v39);
  v41 = (v86 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v42 + 16))(v41);
  v43 = *v21;
  v44 = *v25;
  v45 = *v29;
  v46 = *v33;
  v47 = *v37;
  v48 = *v41;
  v49 = type metadata accessor for SearchFetcher();
  v142[4] = &off_282A875E0;
  v142[3] = v49;
  v142[0] = v43;
  v91 = type metadata accessor for HeadlineService();
  v141 = &off_282A7FE28;
  v140 = v91;
  v139[0] = v44;
  v89 = type metadata accessor for SearchTagFactory();
  v138 = &off_282A991C0;
  v137 = v89;
  v136[0] = v45;
  v88 = type metadata accessor for SearchArticleFactory();
  v135 = &off_282A5AC48;
  v134 = v88;
  v133[0] = v46;
  v132 = &off_282A75DA8;
  v131 = v108;
  v130[0] = v47;
  v87 = type metadata accessor for HeadlineModelFactory();
  v128 = v87;
  v129 = &off_282A8B8E8;
  v127[0] = v48;
  v100 = type metadata accessor for SearchService(0);
  v50 = swift_allocObject();
  v51 = __swift_mutable_project_boxed_opaque_existential_1(v142, v49);
  v93 = v86;
  MEMORY[0x28223BE20](v51);
  v53 = (v86 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v54 + 16))(v53);
  v55 = __swift_mutable_project_boxed_opaque_existential_1(v139, v140);
  v92 = v86;
  MEMORY[0x28223BE20](v55);
  v57 = (v86 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v58 + 16))(v57);
  v59 = __swift_mutable_project_boxed_opaque_existential_1(v136, v137);
  v90 = v86;
  MEMORY[0x28223BE20](v59);
  v61 = (v86 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v62 + 16))(v61);
  v63 = __swift_mutable_project_boxed_opaque_existential_1(v133, v134);
  v86[3] = v86;
  MEMORY[0x28223BE20](v63);
  v65 = (v86 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v66 + 16))(v65);
  v67 = __swift_mutable_project_boxed_opaque_existential_1(v130, v131);
  v86[2] = v86;
  MEMORY[0x28223BE20](v67);
  v69 = (v86 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v70 + 16))(v69);
  v71 = __swift_mutable_project_boxed_opaque_existential_1(v127, v128);
  v86[1] = v86;
  MEMORY[0x28223BE20](v71);
  v73 = (v86 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v74 + 16))(v73);
  v75 = *v53;
  v76 = *v57;
  v77 = *v61;
  v78 = *v65;
  v79 = *v69;
  v80 = *v73;
  v125 = v49;
  v126 = &off_282A875E0;
  *&v124 = v75;
  v123 = &off_282A7FE28;
  v122 = v91;
  *&v121 = v76;
  v119 = v89;
  v120 = &off_282A991C0;
  *&v118 = v77;
  v116 = v88;
  v117 = &off_282A5AC48;
  *&v115 = v78;
  v113 = v108;
  v114 = &off_282A75DA8;
  *&v112 = v79;
  v110 = v87;
  v111 = &off_282A8B8E8;
  *&v109 = v80;
  if (qword_280E8D828 != -1)
  {
    swift_once();
  }

  v81 = qword_280F61720;
  sub_219BE5444();
  sub_2186CB1F0(&v124, v50 + 16);
  sub_2186CB1F0(&v163, v50 + 56);
  v82 = v104;
  *(v50 + 96) = v105;
  *(v50 + 104) = v82;
  sub_2186CB1F0(&v121, v50 + 112);
  sub_2186CB1F0(&v157, v50 + 152);
  *(v50 + 192) = 0;
  *(v50 + 200) = 0;
  v83 = v107;
  *(v50 + 208) = v102;
  *(v50 + 216) = v83;
  *(v50 + 224) = v103;
  sub_2186CB1F0(&v115, v50 + 272);
  sub_2186CB1F0(&v112, v50 + 312);
  sub_2186CB1F0(&v118, v50 + 232);
  sub_2186CB1F0(&v109, v50 + 352);
  *(v50 + 392) = v101;
  v84 = v144;
  *(v50 + 400) = v143;
  *(v50 + 416) = v84;
  *(v50 + 432) = v145;
  __swift_destroy_boxed_opaque_existential_1(v127);
  __swift_destroy_boxed_opaque_existential_1(v130);
  __swift_destroy_boxed_opaque_existential_1(v133);
  __swift_destroy_boxed_opaque_existential_1(v136);
  __swift_destroy_boxed_opaque_existential_1(v139);
  __swift_destroy_boxed_opaque_existential_1(v142);
  __swift_destroy_boxed_opaque_existential_1(v146);
  __swift_destroy_boxed_opaque_existential_1(v148);
  __swift_destroy_boxed_opaque_existential_1(v151);
  __swift_destroy_boxed_opaque_existential_1(&v153);
  __swift_destroy_boxed_opaque_existential_1(v159);
  result = __swift_destroy_boxed_opaque_existential_1(v166);
  v85 = v106;
  v106[3] = v100;
  v85[4] = &off_282A8A588;
  *v85 = v50;
  return result;
}

uint64_t _s7NewsUI221SearchServiceAssemblyC4load2iny13TeaFoundation14ProxyContainerC_tF_0()
{
  v0 = sub_219BE2DF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE2044();
  sub_2186C709C(0, &qword_280EE9E08);
  sub_219BE2914();

  sub_219BE2054();
  sub_2186C709C(0, &unk_280EE9E20);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &unk_280EE9E40);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &unk_280EE9E10);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &unk_280EE9E30);
  sub_219BE2914();

  sub_219BE2044();
  type metadata accessor for WidgetSearchModelFactory();
  sub_219BE2904();

  sub_219BE2044();
  sub_2186C709C(0, qword_280EE9E50);
  sub_219BE2914();

  v4 = *MEMORY[0x277D6CF10];
  v5 = *(v1 + 104);
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6 = *(v1 + 8);
  v6(v3, v0);
  sub_219BE2044();
  sub_2186C709C(0, &qword_280EE9F20);
  sub_219BE2914();

  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  sub_219BE2044();
  sub_2186C709C(0, &qword_280EE9E00);
  sub_219BE2914();

  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  sub_219BE2044();
  sub_2186C709C(0, &qword_280EE9F18);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280EE9F10);
  sub_219BE2914();

  v5(v3, *MEMORY[0x277D6CF08], v0);
  sub_219BE19F4();

  return (v6)(v3, v0);
}

void sub_218F80EC4()
{
  if (!qword_280E8F5E0)
  {
    sub_219BE27F4();
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8F5E0);
    }
  }
}

uint64_t sub_218F80F1C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_218F80F64()
{
  if (!qword_280EE7C00)
  {
    sub_218C8E2EC();
    v0 = sub_219BE2034();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7C00);
    }
  }
}

void sub_218F80FDC(void *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1[1];
  *a3 = *a1;
  v30 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    goto LABEL_32;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  swift_unknownObjectRetain();
  if (!v4)
  {
LABEL_33:
    v21 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

  while (1)
  {
    v5 = 0;
    v26 = v3 & 0xFFFFFFFFFFFFFF8;
    v27 = v3 & 0xC000000000000001;
    v25 = v3 + 32;
    v23 = v4;
    v24 = v3;
LABEL_6:
    if (v27)
    {
      v6 = MEMORY[0x21CECE0F0](v5, v3);
    }

    else
    {
      if (v5 >= *(v26 + 16))
      {
        goto LABEL_31;
      }

      v6 = *(v25 + 8 * v5);
    }

    v7 = v6;
    v8 = __OFADD__(v5, 1);
    v9 = v5 + 1;
    if (!v8)
    {
      break;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v4 = sub_219BF7214();
    swift_unknownObjectRetain();
    if (!v4)
    {
      goto LABEL_33;
    }
  }

  v28 = v9;
  if (a2 >> 62)
  {
    v3 = sub_219BF7214();
  }

  else
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = 0;
  do
  {
    if (v3 == v10)
    {
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      goto LABEL_5;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x21CECE0F0](v10, a2);
      if (__OFADD__(v10, 1))
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v10 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v12 = *(a2 + 8 * v10 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v10, 1))
      {
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    v13 = [v12 identifier];
    v14 = sub_219BF5414();
    v16 = v15;

    v17 = [v7 identifier];
    v18 = sub_219BF5414();
    v20 = v19;

    if (v14 == v18 && v16 == v20)
    {

      swift_unknownObjectRelease();

      goto LABEL_5;
    }

    v11 = sub_219BF78F4();
    swift_unknownObjectRelease();

    ++v10;
  }

  while ((v11 & 1) == 0);

LABEL_5:
  v3 = v24;
  v5 = v28;
  if (v28 != v23)
  {
    goto LABEL_6;
  }

  v21 = v30;
LABEL_34:
  a3[1] = v21;
}

uint64_t type metadata accessor for MyMagazinesSectionHeaderViewLayoutOptions()
{
  result = qword_27CC13E38;
  if (!qword_27CC13E38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218F81330()
{
  sub_219BE8164();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UIEdgeInsets(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for SportsScoresTagFeedGroupConfigData()
{
  result = qword_280E9E940;
  if (!qword_280E9E940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218F81428@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F81958(0, &qword_280E8C900, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218F81904();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 14;
    v13 = type metadata accessor for SportsScoresTagFeedGroupConfigData();
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218F81690(void *a1)
{
  v3 = v1;
  sub_218F81958(0, &qword_27CC13E48, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218F81904();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for SportsScoresTagFeedGroupConfigData();
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218F8185C(uint64_t a1)
{
  v2 = sub_218F81904();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218F81898(uint64_t a1)
{
  v2 = sub_218F81904();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218F81904()
{
  result = qword_280E9E978;
  if (!qword_280E9E978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9E978);
  }

  return result;
}

void sub_218F81958(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218F81904();
    v7 = a3(a1, &type metadata for SportsScoresTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218F819D0()
{
  result = qword_27CC13E50;
  if (!qword_27CC13E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13E50);
  }

  return result;
}

unint64_t sub_218F81A28()
{
  result = qword_280E9E968;
  if (!qword_280E9E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9E968);
  }

  return result;
}

unint64_t sub_218F81A80()
{
  result = qword_280E9E970;
  if (!qword_280E9E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9E970);
  }

  return result;
}

uint64_t sub_218F81AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v27 = a2;
  v28 = a4;
  sub_218F8264C(0, &qword_280E91B80, MEMORY[0x277D32028]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25[-v6];
  sub_218F8264C(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25[-v9];
  sub_218F8264C(0, &qword_27CC13E68, type metadata accessor for SearchMoreFeedConfig);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25[-v12];
  v14 = type metadata accessor for SearchMoreFeedConfig();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21872AB08(a1, v13, &qword_27CC13E68, type metadata accessor for SearchMoreFeedConfig);
  v18 = *(v15 + 48);
  if (v18(v13, 1, v14) == 1)
  {
    v19 = sub_219BDBD34();
    (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
    v20 = sub_219BEE5B4();
    (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
    v21 = MEMORY[0x277CC9578];
    sub_21872AB08(v10, v17, &qword_280EE9C40, MEMORY[0x277CC9578]);
    sub_218F826A0(a1, &qword_27CC13E68, type metadata accessor for SearchMoreFeedConfig);
    sub_218F826A0(v10, &qword_280EE9C40, v21);
    *&v17[*(v14 + 20)] = MEMORY[0x277D84F90];
    sub_2189A1E30(v7, &v17[*(v14 + 24)]);
    if (v18(v13, 1, v14) != 1)
    {
      sub_218F826A0(v13, &qword_27CC13E68, type metadata accessor for SearchMoreFeedConfig);
    }
  }

  else
  {
    sub_218F826A0(a1, &qword_27CC13E68, type metadata accessor for SearchMoreFeedConfig);
    sub_218F826FC(v13, v17);
  }

  v22 = v28;
  sub_218F826FC(v17, v28);
  if (v26)
  {
    v23 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v23 = v27;
  }

  result = type metadata accessor for SearchMoreFeedContentConfig();
  *(v22 + *(result + 20)) = v23;
  return result;
}

uint64_t sub_218F81EC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  sub_218F8264C(0, &qword_27CC13E68, type metadata accessor for SearchMoreFeedConfig);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  sub_218F82808(0, &qword_27CC13E70, MEMORY[0x277D844C8]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218F82760();
  sub_219BF7B34();
  if (!v2)
  {
    type metadata accessor for SearchMoreFeedConfig();
    v18 = 0;
    sub_218F8286C(&qword_27CC13E80);
    sub_219BF7674();
    v17 = 1;
    sub_218F827B4();
    sub_219BF7674();
    sub_218F81AFC(v6, v15, v16, v14);
    (*(v9 + 8))(v11, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218F820F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x666E6F4364656566 && a2 == 0xEA00000000006769;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F4373626F6E6BLL && a2 == 0xEB00000000676966)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_219BF78F4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_218F821E0(uint64_t a1)
{
  v2 = sub_218F82760();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218F8221C(uint64_t a1)
{
  v2 = sub_218F82760();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218F82258(void *a1)
{
  v3 = v1;
  sub_218F82808(0, &qword_27CC13E90, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218F82760();
  sub_219BF7B44();
  v13 = 0;
  type metadata accessor for SearchMoreFeedConfig();
  sub_218F8286C(&qword_27CC13E98);
  sub_219BF7834();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for SearchMoreFeedContentConfig() + 20));
    v11[15] = 1;
    sub_218F828B0();
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218F82430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_218F8264C(0, &qword_27CC13E68, type metadata accessor for SearchMoreFeedConfig);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - v8;
  sub_218F825E8(a1, &v12 - v8);
  v10 = type metadata accessor for SearchMoreFeedConfig();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  return sub_218F81AFC(v9, *(v3 + *(a2 + 20)), 0, a3);
}

unint64_t sub_218F82594()
{
  result = qword_27CC13E60;
  if (!qword_27CC13E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13E60);
  }

  return result;
}

uint64_t sub_218F825E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchMoreFeedConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_218F8264C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_218F826A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_218F8264C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218F826FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchMoreFeedConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_218F82760()
{
  result = qword_27CC13E78;
  if (!qword_27CC13E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13E78);
  }

  return result;
}

unint64_t sub_218F827B4()
{
  result = qword_27CC13E88;
  if (!qword_27CC13E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13E88);
  }

  return result;
}

void sub_218F82808(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218F82760();
    v7 = a3(a1, &type metadata for SearchMoreFeedContentConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218F8286C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SearchMoreFeedConfig();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_218F828B0()
{
  result = qword_27CC13EA0;
  if (!qword_27CC13EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13EA0);
  }

  return result;
}

unint64_t sub_218F82918()
{
  result = qword_27CC13EA8;
  if (!qword_27CC13EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13EA8);
  }

  return result;
}

unint64_t sub_218F82970()
{
  result = qword_27CC13EB0;
  if (!qword_27CC13EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13EB0);
  }

  return result;
}

unint64_t sub_218F829C8()
{
  result = qword_27CC13EB8;
  if (!qword_27CC13EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13EB8);
  }

  return result;
}

uint64_t sub_218F82A1C(uint64_t *a1, int a2)
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

uint64_t sub_218F82A64(uint64_t result, int a2, int a3)
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

void sub_218F82AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_218F83D60(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &aBlock[-1] - v12;
  v14 = *(v3 + 16);
  (*(v10 + 16))(&aBlock[-1] - v12, a1, v9);
  sub_218B12CE8(v4, v25);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = (v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v10 + 32))(v17 + v15, v13, v9);
  v18 = v17 + v16;
  v19 = v25[3];
  *(v18 + 32) = v25[2];
  *(v18 + 48) = v19;
  *(v18 + 64) = v26;
  v20 = v25[1];
  *v18 = v25[0];
  *(v18 + 16) = v20;
  v21 = (v17 + ((v16 + 79) & 0xFFFFFFFFFFFFFFF8));
  *v21 = a2;
  v21[1] = a3;
  aBlock[4] = sub_218F83CA8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_79;
  v22 = _Block_copy(aBlock);

  [v14 prepareForUseWithCompletionHandler_];
  _Block_release(v22);
}

uint64_t sub_218F82CF0(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v60 = a4;
  v61 = a3;
  sub_218F83D60(0, &qword_280EE4B40, MEMORY[0x277D6DF88]);
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x28223BE20](v5);
  v57 = &v50 - v6;
  sub_218950928();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7);
  v51 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v50 = &v50 - v13;
  MEMORY[0x28223BE20](v12);
  v62 = &v50 - v14;
  sub_218A2D984(0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v50 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v50 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v50 - v25;
  sub_218F83D60(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v28 = v27;
  MEMORY[0x28223BE20](v27);
  v30 = &v50 - v29;
  v54 = v31;
  v52 = *(v31 + 16);
  v53 = v31 + 16;
  v52(&v50 - v29, a1, v28);
  v55 = v28;
  v56 = a1;
  sub_219BEB354();
  sub_218E93A34();
  sub_218F8343C(v32, v24);

  v33 = *(v9 + 48);
  if (v33(v24, 1, v8) == 1)
  {
    sub_218B062D0(v24);
    sub_218F83E20(v26, v21);
    if (v33(v21, 1, v8) == 1)
    {
      sub_218B062D0(v21);
      v34 = v57;
      v35 = v55;
    }

    else
    {
      v37 = v50;
      (*(v9 + 32))(v50, v21, v8);
      sub_219BE6944();
      v35 = v55;
      sub_219BEB214();

      (*(v9 + 8))(v37, v8);
      v34 = v57;
    }
  }

  else
  {
    v36 = *(v9 + 32);
    v36(v62, v24, v8);
    v50 = v26;
    sub_218F83E20(v26, v18);
    if (v33(v18, 1, v8) == 1)
    {
      sub_218B062D0(v18);
      sub_2186D572C(&qword_280EE5760, sub_218950928);
      sub_219BF5DF4();
      sub_219BF5E84();
      v34 = v57;
      v35 = v55;
      if (v64[0] != v63)
      {
        sub_218B0632C();
        sub_219BEB324();
      }

      (*(v9 + 8))(v62, v8);
    }

    else
    {
      v38 = v51;
      v36(v51, v18, v8);
      v39 = v62;
      v35 = v55;
      sub_219BEB234();
      v40 = *(v9 + 8);
      v40(v38, v8);
      v40(v39, v8);
      v34 = v57;
    }

    v26 = v50;
  }

  type metadata accessor for FollowingModel();
  sub_218A7BAF8();
  sub_2187490E4();
  sub_2186D572C(&qword_280EDC630, type metadata accessor for FollowingModel);
  sub_219BE78F4();
  __swift_project_boxed_opaque_existential_1(v64, v64[3]);
  if (sub_219BE6E54())
  {
    v41 = MEMORY[0x277D6DF80];
  }

  else
  {
    sub_218A7BB4C();
    v43 = *(v42 + 48);
    v44 = *(v42 + 64);
    v52(v34, v30, v35);
    sub_218718690(v64, &v34[v43]);
    v45 = *MEMORY[0x277D6D868];
    v46 = sub_219BE6DF4();
    (*(*(v46 - 8) + 104))(&v34[v44], v45, v46);
    v41 = MEMORY[0x277D6DF78];
  }

  v48 = v58;
  v47 = v59;
  (*(v58 + 104))(v34, *v41, v59);
  v61(v34);
  (*(v48 + 8))(v34, v47);
  sub_218B062D0(v26);
  (*(v54 + 8))(v30, v35);
  return __swift_destroy_boxed_opaque_existential_1(v64);
}

uint64_t sub_218F8343C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  sub_218B061E4();
  MEMORY[0x28223BE20](v4 - 8);
  sub_218950928();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v2;
  sub_218860300(sub_218F83E84, &v33, a1);

  *&v36[0] = sub_219758FD4(v10);
  sub_218A24FC0(v36);

  v11 = *&v36[0];
  if ([*(v2 + 24) isOptedInToSiriSuggestions])
  {
    sub_2197ECAA4(&v42);
  }

  else
  {
    sub_2197ECBE4(&v42);
  }

  v40[0] = v42;
  v40[1] = v43;
  v40[2] = v44;
  v40[3] = v45;
  v41 = v46;
  v36[2] = v44;
  v36[3] = v45;
  v36[0] = v42;
  v36[1] = v43;
  v37 = v46;
  v38 = v11;
  v39 = 8;
  sub_218967C1C(v40, &v35);
  sub_218950B84();
  v13 = v12;
  v14 = sub_2186D572C(&unk_280EE5C80, sub_218950B84);
  v15 = sub_2186D572C(&unk_280EE5C90, sub_218950B84);

  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v13, v14, v15);
  type metadata accessor for FollowingModel();
  sub_2187490E4();
  sub_2186D572C(&qword_280EDC630, type metadata accessor for FollowingModel);
  sub_219BE6924();
  if ((v11 & 0x8000000000000000) != 0 || (v11 & 0x4000000000000000) != 0)
  {
    goto LABEL_33;
  }

  for (i = *(v11 + 16); ; i = sub_219BF7214())
  {
    v17 = i >= 13 ? 13 : i;
    v2 = *(v2 + 16);
    swift_getObjectType();
    v18 = sub_218BE0128(v11);

    if ((i & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_33:
    ;
  }

  v19 = (v18 >> 62);
  if (!(v18 >> 62))
  {
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v17)
    {
LABEL_13:
      if ((v18 & 0xC000000000000001) != 0 && i)
      {
        type metadata accessor for FollowingTagModel();

        v20 = 0;
        do
        {
          v21 = v20 + 1;
          sub_219BF7334();
          v20 = v21;
        }

        while (v17 != v21);
      }

      else
      {
      }

      if (v19)
      {
        v2 = sub_219BF7564();
        i = v22;
        v19 = v23;
        v17 = v24;

        if (v17)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v2 = v18 & 0xFFFFFFFFFFFFFF8;
        i = (v18 & 0xFFFFFFFFFFFFFF8) + 32;
        v17 = (2 * v17) | 1;
        if (v17)
        {
LABEL_24:
          sub_219BF7934();
          swift_unknownObjectRetain_n();
          v27 = swift_dynamicCastClass();
          if (!v27)
          {
            swift_unknownObjectRelease();
            v27 = MEMORY[0x277D84F90];
          }

          v28 = *(v27 + 16);

          if (!__OFSUB__(v17 >> 1, v19))
          {
            if (v28 == (v17 >> 1) - v19)
            {
              v26 = swift_dynamicCastClass();
              swift_unknownObjectRelease_n();
              if (v26)
              {
LABEL_31:
                sub_218BDFF40(v26);

                sub_219BE6984();
                sub_218967CDC(v40);

                v29 = v32;
                (*(v7 + 32))(v32, v9, v6);
                return (*(v7 + 56))(v29, 0, 1, v6);
              }

              v26 = MEMORY[0x277D84F90];
LABEL_30:
              swift_unknownObjectRelease();
              goto LABEL_31;
            }

            goto LABEL_41;
          }

LABEL_40:
          __break(1u);
LABEL_41:
          swift_unknownObjectRelease_n();
        }
      }

      sub_218B6717C(v2, i, v19, v17);
      v26 = v25;
      goto LABEL_30;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v18 < 0)
  {
    v2 = v18;
  }

  else
  {
    v2 = v18 & 0xFFFFFFFFFFFFFF8;
  }

  if ((sub_219BF7214() & 0x8000000000000000) == 0)
  {
    if (sub_219BF7214() >= v17)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_218F839A4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v18 = a3;
  v5 = sub_219BF2CB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_219BF2634();
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a2[7];
  v16[1] = a2[8];
  __swift_project_boxed_opaque_existential_1(a2 + 4, v13);
  *v8 = *(v12 + 16);
  (*(v6 + 104))(v8, *MEMORY[0x277D33B98], v5);
  swift_unknownObjectRetain();
  sub_219BF4794();
  (*(v6 + 8))(v8, v5);
  LOBYTE(v5) = sub_219BF2614();
  (*(v9 + 8))(v11, v17);
  type metadata accessor for FollowingTagModel();
  v14 = swift_allocObject();
  *(v14 + 16) = 1;
  *(v14 + 24) = v12;
  *(v14 + 32) = v5 & 1;
  *v18 = v14;
}

uint64_t sub_218F83BCC(uint64_t a1)
{
  v2 = sub_218B12D44();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_218F83C0C()
{
  result = qword_280E9D8B0;
  if (!qword_280E9D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9D8B0);
  }

  return result;
}

uint64_t sub_218F83CA8()
{
  sub_218F83D60(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + ((v4 + 79) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_218F82CF0(v0 + v3, v0 + v4, v6, v7);
}

void sub_218F83D60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingDescriptor;
    v8[1] = type metadata accessor for FollowingModel();
    v8[2] = sub_2187490E4();
    v8[3] = sub_2186D572C(&qword_280EDC630, type metadata accessor for FollowingModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_218F83E20(uint64_t a1, uint64_t a2)
{
  sub_218A2D984(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218F83EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v33 = a1;
  v31 = type metadata accessor for PaywallMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v31);
  v3 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_219BEF874();
  v4 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187680E0(0, &qword_280EE68E0, MEMORY[0x277D6CF38]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v28 - v10;
  v12 = sub_219BEF554();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BDBD64();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDBD54();
  v20 = sub_219BDBD44();
  v28[1] = v21;
  v28[2] = v20;
  (*(v17 + 8))(v19, v16);
  (*(v13 + 104))(v15, *MEMORY[0x277D32638], v12);
  v22 = sub_219BE3184();
  v23 = *(*(v22 - 8) + 56);
  v23(v11, 1, 1, v22);
  v23(v9, 1, 1, v22);
  (*(v4 + 104))(v29, *MEMORY[0x277D32750], v30);
  v24 = *(v31 + 28);
  v25 = *MEMORY[0x277D34EF0];
  v26 = sub_219BE4034();
  (*(*(v26 - 8) + 104))(&v3[v24], v25, v26);
  *v3 = 7;
  v3[2] = 1;
  sub_218F850A4(&unk_280E9F9B0, type metadata accessor for PaywallMagazineFeedGroupConfigData);
  sub_218F850A4(&qword_280E9F9C0, type metadata accessor for PaywallMagazineFeedGroupConfigData);
  return sub_219BEDD34();
}

uint64_t type metadata accessor for PaywallMagazineFeedGroupConfigData()
{
  result = qword_280E9F998;
  if (!qword_280E9F998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218F84354@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v36 = type metadata accessor for PaywallMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v36);
  v37 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187680E0(0, &qword_280EE6438, MEMORY[0x277D34EF8]);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v34 - v6;
  v7 = sub_219BE4034();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F85040(0, &qword_280E8C930, MEMORY[0x277D844C8]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218F84F10();
  sub_219BF7B34();
  if (v2)
  {
    v20 = a1;
  }

  else
  {
    v15 = v12;
    v34 = v9;
    v35 = a1;
    v16 = v38;
    v17 = v40;
    v44 = 1;
    sub_219BF7674();
    v18 = v45;
    v43 = 2;
    sub_218F850A4(&qword_280EE6440, MEMORY[0x277D34EF8]);
    v19 = v39;
    sub_219BF76E4();
    v42 = v18;
    (*(v15 + 8))(v14, v11);
    v22 = v16;
    v23 = v16[6];
    if (v23(v41, 1, v19) == 1)
    {
      v24 = v16[13];
      v25 = v34;
      v24(v34, *MEMORY[0x277D34EF0], v19);
      v26 = v23(v41, 1, v19);
      v27 = v17;
      v29 = v36;
      v28 = v37;
      v30 = v22;
      v31 = v35;
      v32 = v42;
      if (v26 != 1)
      {
        sub_218F84F64(v41);
      }
    }

    else
    {
      v33 = v16[4];
      v25 = v34;
      v33(v34, v41, v19);
      v27 = v17;
      v29 = v36;
      v28 = v37;
      v30 = v22;
      v31 = v35;
      v32 = v42;
    }

    *v28 = 7;
    *(v28 + 2) = (v32 == 2) | v32 & 1;
    (v30[4])(v28 + *(v29 + 28), v25, v19);
    sub_218F84FDC(v28, v27);
    v20 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_218F847AC(void *a1)
{
  v3 = v1;
  sub_218F85040(0, &qword_27CC13EC0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218F84F10();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218CD67F4();
  sub_219BF7834();
  if (!v2)
  {
    v11[13] = 1;
    sub_219BF7804();
    type metadata accessor for PaywallMagazineFeedGroupConfigData();
    v11[12] = 2;
    sub_219BE4034();
    sub_218F850A4(&qword_27CC13EC8, MEMORY[0x277D34EF8]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218F849B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000017;
  v4 = 0x8000000219CD7500;
  if (v2 == 1)
  {
    v5 = 0x8000000219CD7500;
  }

  else
  {
    v3 = 0x54746E65746E6F63;
    v5 = 0xEB00000000657079;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 1701869940;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 0xD000000000000017;
  if (*a2 != 1)
  {
    v8 = 0x54746E65746E6F63;
    v4 = 0xEB00000000657079;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701869940;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_218F84AB8()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218F84B60()
{
  sub_219BF5524();
}

uint64_t sub_218F84BF4()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218F84C98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218F85204();
  *a1 = result;
  return result;
}

void sub_218F84CC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0x8000000219CD7500;
  v5 = 0xD000000000000017;
  if (v2 != 1)
  {
    v5 = 0x54746E65746E6F63;
    v4 = 0xEB00000000657079;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701869940;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_218F84D2C()
{
  v1 = 0xD000000000000017;
  if (*v0 != 1)
  {
    v1 = 0x54746E65746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_218F84D8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218F85204();
  *a1 = result;
  return result;
}

uint64_t sub_218F84DB4(uint64_t a1)
{
  v2 = sub_218F84F10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218F84DF0(uint64_t a1)
{
  v2 = sub_218F84F10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218F84E84()
{
  result = sub_219BE4034();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_218F84F10()
{
  result = qword_280E9F9D8;
  if (!qword_280E9F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9F9D8);
  }

  return result;
}

uint64_t sub_218F84F64(uint64_t a1)
{
  sub_2187680E0(0, &qword_280EE6438, MEMORY[0x277D34EF8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218F84FDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaywallMagazineFeedGroupConfigData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218F85040(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218F84F10();
    v7 = a3(a1, &type metadata for PaywallMagazineFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218F850A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218F85100()
{
  result = qword_27CC13ED0;
  if (!qword_27CC13ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13ED0);
  }

  return result;
}

unint64_t sub_218F85158()
{
  result = qword_280E9F9C8;
  if (!qword_280E9F9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9F9C8);
  }

  return result;
}

unint64_t sub_218F851B0()
{
  result = qword_280E9F9D0;
  if (!qword_280E9F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9F9D0);
  }

  return result;
}

uint64_t sub_218F85204()
{
  v0 = sub_219BF7614();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_218F85250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a3;
  v53 = a2;
  sub_218747EAC(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v57 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v59 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v7;
  MEMORY[0x28223BE20](v6);
  v60 = v50 - v8;
  v9 = sub_219BDE294();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218747EAC(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v50 - v14;
  v56 = sub_219BDD534();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v17 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BDAEB4();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = (v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v21, a1, v18);
  if ((*(v19 + 88))(v21, v18) != *MEMORY[0x277CFCD10])
  {
    return (*(v19 + 8))(v21, v18);
  }

  (*(v19 + 96))(v21, v18);
  v22 = v21[1];
  v50[2] = *v21;
  v50[1] = v22;
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  v54 = sub_219BDE7F4();
  v53 = v3[2];
  sub_2187B2C48();
  v24 = v23;
  v25 = swift_allocBox();
  v27 = v26;
  v52 = *(v24 + 48);
  sub_2187B2DA0();
  v51 = *(v28 + 48);
  v29 = sub_219BDB954();
  v30 = *(*(v29 - 8) + 56);
  v30(v15, 1, 1, v29);
  sub_219BDD514();
  v30(v15, 1, 1, v29);
  (*(v10 + 104))(v12, *MEMORY[0x277D2FF08], v9);
  sub_219BDD894();
  (*(v10 + 8))(v12, v9);
  sub_2187BC574(v15, &unk_280EE9D00, MEMORY[0x277CC9260]);
  (*(v55 + 8))(v17, v56);
  v31 = MEMORY[0x277D84F90];
  *(v27 + v51) = MEMORY[0x277D84F90];
  *(v27 + v52) = v31;
  v55 = v25;
  v32 = sub_219BDFA44();
  v33 = v60;
  (*(*(v32 - 8) + 56))(v60, 1, 1, v32);
  v71 = 0;
  memset(v70, 0, sizeof(v70));
  v69 = 0;
  memset(v68, 0, sizeof(v68));
  v67 = v53;
  sub_2187B14CC(v68, &v62, &unk_280EE7DB0, &qword_280EE7DC0);
  if (v64)
  {
    sub_21875F93C(&v62, v65);
    *&v62 = v25 | 2;
    v53 = sub_2194DA78C(v65);
    v35 = v34;
    v37 = v36;
    __swift_destroy_boxed_opaque_existential_1(v65);
  }

  else
  {
    sub_218744BD0(&v62, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v35 = qword_280ED32E0;
    v37 = qword_280ED32E8;
    v53 = qword_280ED32D8;

    sub_2188202A8(v35);
  }

  v39 = v54;
  v61 = v25 | 2;
  if (v54)
  {
    v40 = sub_219BDD274();
    v56 = v39;
  }

  else
  {
    v56 = 0;
    v40 = 0;
    v63 = 0;
    *(&v62 + 1) = 0;
  }

  *&v62 = v56;
  v64 = v40;
  v41 = v59;
  sub_2189B4E2C(v33, v59);
  sub_2187B14CC(v70, v65, &qword_280EE33A0, &qword_280EE33B0);
  v42 = (*(v57 + 80) + 24) & ~*(v57 + 80);
  v43 = (v58 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v43 + 47) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  *(v45 + 16) = v39;
  sub_2189B4EAC(v41, v45 + v42);
  v46 = v45 + v43;
  v47 = v65[1];
  *v46 = v65[0];
  *(v46 + 16) = v47;
  *(v46 + 32) = v66;
  v48 = (v45 + v44);
  v49 = (v45 + ((v44 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v48 = 0;
  v48[1] = 0;
  *v49 = v53;
  v49[1] = v35;
  v49[2] = v37;
  swift_retain_n();

  sub_2188202A8(v35);
  sub_2186CF94C();
  sub_2189B4DD4();
  sub_219BEB464();

  sub_2187FABEC(v35);

  sub_218744BD0(v68, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_218744BD0(v70, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_2187BC574(v60, &qword_280EE8610, MEMORY[0x277D2DED0]);
  sub_218744BD0(&v62, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);
}

uint64_t sub_218F85D20()
{
  v1 = [*(v0 + 24) appConfiguration];
  if (([v1 respondsToSelector_] & 1) != 0 && (v2 = objc_msgSend(v1, sel_searchMoreFeedConfigurationResourceId)) != 0)
  {
    v3 = v2;
    sub_219BF5414();

    MEMORY[0x28223BE20](v4);
    sub_2186E9518();
    sub_219BE3204();

    v5 = sub_219BE2E54();
    type metadata accessor for SearchMoreFeedConfigFetchResult();
    sub_219BE2F84();

    v6 = sub_219BE2E54();
    v7 = sub_219BE2FD4();
    swift_unknownObjectRelease();

    return v7;
  }

  else
  {
    sub_218F869AC();
    swift_allocError();
    *v9 = 1;
    sub_218F86AE8(0, &qword_27CC13EF0, type metadata accessor for SearchMoreFeedConfigFetchResult, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v10 = sub_219BE2FF4();
    swift_unknownObjectRelease();
    return v10;
  }
}

uint64_t sub_218F85F64(uint64_t a1)
{
  sub_218F86AE8(0, &qword_280EE7E80, MEMORY[0x277D6CA50], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v11 - v3);
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_219BF5CE4();
  *v4 = v5;
  v6 = *MEMORY[0x277D6CA48];
  v7 = sub_219BE1B34();
  v8 = *(v7 - 8);
  (*(v8 + 104))(v4, v6, v7);
  (*(v8 + 56))(v4, 0, 1, v7);
  v9 = sub_219BF2944();
  sub_21897DAD8(v4);
  return v9;
}

char *sub_218F86100(id *a1, unint64_t a2)
{
  v32 = a2;
  v4 = type metadata accessor for SearchMoreFeedConfigFetchResult();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v31 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  v9 = type metadata accessor for SearchMoreFeedContentConfig();
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDB954();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = [*a1 fileURL];
  if (v19)
  {
    v20 = v19;
    sub_219BDB8B4();

    (*(v13 + 32))(v18, v16, v12);
    v21 = sub_219BDB974();
    if (!v2)
    {
      v29 = v8;
      v24 = v22;
      v25 = v21;
      sub_218F868F0();
      v30 = v25;
      v32 = v24;
      sub_219BE1974();
      v27 = v29;
      sub_218F86A20(v11, v29, type metadata accessor for SearchMoreFeedContentConfig);
      sub_218F86A20(v27, v31, type metadata accessor for SearchMoreFeedConfigFetchResult);
      sub_218F86AE8(0, &qword_27CC13EF0, type metadata accessor for SearchMoreFeedConfigFetchResult, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v16 = sub_219BE3014();
      sub_2186C6190(v30, v32);
      sub_218F86A88(v27, type metadata accessor for SearchMoreFeedConfigFetchResult);
      sub_218F86A88(v11, type metadata accessor for SearchMoreFeedContentConfig);
    }

    (*(v13 + 8))(v18, v12);
  }

  else
  {
    sub_218F869AC();
    swift_allocError();
    *v23 = 2;
    swift_willThrow();
  }

  return v16;
}

uint64_t sub_218F864C0()
{
  if (qword_27CC08540 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_2186FC3BC();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_219BE5314();
}

uint64_t sub_218F865EC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SearchMoreFeedContentConfig();
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F868F0();
  result = sub_219BE1974();
  if (!v1)
  {
    return sub_218F86948(v5, a1);
  }

  return result;
}

uint64_t sub_218F866E8(uint64_t a1)
{
  v2 = sub_219BDB954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_219BDAF64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 16))(v5, a1, v2);
  sub_219BDAF44();
  v14 = v9;
  sub_219BE3204();
  v10 = sub_219BE2E54();
  type metadata accessor for SearchMoreFeedConfigFetchResult();
  v11 = sub_219BE2F94();

  (*(v7 + 8))(v9, v6);
  return v11;
}

unint64_t sub_218F868F0()
{
  result = qword_27CC13EE0;
  if (!qword_27CC13EE0)
  {
    type metadata accessor for SearchMoreFeedContentConfig();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13EE0);
  }

  return result;
}

uint64_t sub_218F86948(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchMoreFeedContentConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_218F869AC()
{
  result = qword_27CC13EE8;
  if (!qword_27CC13EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13EE8);
  }

  return result;
}

uint64_t sub_218F86A20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218F86A88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218F86AE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_218F86B60()
{
  result = qword_27CC13EF8;
  if (!qword_27CC13EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13EF8);
  }

  return result;
}

void sub_218F86BB4()
{
  sub_218F86C10();
  if (v0)
  {
    v1 = v0;
    sub_219BE5A24();
  }
}

void sub_218F86C10()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  v2 = sub_2186C6148(0, &qword_280E8DA50);
  sub_218F86FB4();
  v3 = sub_219BF5D44();

  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_219BF71C4();
    sub_219BF5D94();
    v3 = v29;
    v4 = v30;
    v5 = v31;
    v6 = v32;
    v7 = v33;
  }

  else
  {
    v6 = 0;
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 56);
  }

  v11 = (v5 + 64) >> 6;
  if ((v3 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_16:
  if (!sub_219BF7244() || (swift_dynamicCast(), v15 = v28, v14 = v6, v27 = v7, !v28))
  {
LABEL_35:
    sub_21892DE98();
    return;
  }

  while (1)
  {
    if ([v15 activationState] || (objc_opt_self(), (v16 = swift_dynamicCastObjCClass()) == 0))
    {

      v6 = v14;
      v7 = v27;
      if (v3 < 0)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

    v24 = v11;
    v17 = [v16 windows];
    sub_2186C6148(0, &unk_280E8D980);
    v18 = sub_219BF5924();

    v25 = v2;
    v26 = v5;
    if (!(v18 >> 62))
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        break;
      }

      goto LABEL_33;
    }

    v19 = sub_219BF7214();
    if (v19)
    {
      break;
    }

LABEL_33:

    v6 = v14;
    v7 = v27;
    v2 = v25;
    v5 = v26;
    v11 = v24;
    if (v3 < 0)
    {
      goto LABEL_16;
    }

LABEL_10:
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v11)
        {
          goto LABEL_35;
        }

        v13 = *(v4 + 8 * v14);
        ++v12;
        if (v13)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_38;
    }

LABEL_14:
    v27 = (v13 - 1) & v13;
    v15 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v15)
    {
      goto LABEL_35;
    }
  }

  v20 = 0;
  while (1)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x21CECE0F0](v20, v18);
    }

    else
    {
      if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v21 = *(v18 + 8 * v20 + 32);
    }

    v22 = v21;
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    sub_219BE5A54();
    if (swift_dynamicCastClass())
    {
      sub_21892DE98();

      return;
    }

    ++v20;
    if (v23 == v19)
    {
      goto LABEL_33;
    }
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

unint64_t sub_218F86FB4()
{
  result = qword_280E8DA40;
  if (!qword_280E8DA40)
  {
    sub_2186C6148(255, &qword_280E8DA50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8DA40);
  }

  return result;
}

uint64_t sub_218F87044()
{
  v5 = type metadata accessor for RecipesSearchFeedGroupConfigData();
  MEMORY[0x28223BE20](v5);
  v0 = sub_219BEF874();
  MEMORY[0x28223BE20](v0 - 8);
  sub_2187089D4(0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  MEMORY[0x28223BE20](v2);
  v3 = sub_219BEF554();
  MEMORY[0x28223BE20](v3 - 8);
  sub_2186FEF84();
  sub_219BEDD44();
  sub_219BEDCA4();

  sub_219BEDCC4();
  sub_219BEDC94();
  sub_219BEDC84();
  sub_219BEDCF4();
  sub_219BEDD04();
  sub_219BEDCD4();
  sub_219BEDCE4();
  sub_219BEDD74();
  sub_219BEDD14();
  sub_218F87B2C(&unk_280EA51F0, type metadata accessor for RecipesSearchFeedGroupConfigData);
  sub_218F87B2C(&unk_280EA5200, type metadata accessor for RecipesSearchFeedGroupConfigData);
  return sub_219BEDD34();
}

uint64_t sub_218F87308@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v20 = type metadata accessor for RecipesSearchFeedGroupConfigData();
  MEMORY[0x28223BE20](v20);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BF1934();
  v18 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v22 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F87A74(0, &qword_280E8CA18, MEMORY[0x277D844C8]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218F87968();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v9;
    v13 = v20;
    v25 = 0;
    sub_218F87B2C(&qword_280E90808, MEMORY[0x277D33478]);
    v14 = v21;
    sub_219BF7734();
    v23 = 2;
    sub_218F879BC();
    sub_219BF7674();
    (*(v12 + 8))(v11, v8);
    v15 = v24;
    v5[*(v13 + 20)] = 4;
    (*(v18 + 32))(v5, v22, v14);
    v5[*(v13 + 24)] = v15 & 1;
    sub_218F87A10(v5, v19);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218F87618(void *a1)
{
  v3 = v1;
  sub_218F87A74(0, &qword_27CC13F00, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218F87968();
  sub_219BF7B44();
  v12[15] = 0;
  sub_219BF1934();
  sub_218F87B2C(&qword_280E90810, MEMORY[0x277D33478]);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for RecipesSearchFeedGroupConfigData();
    v12[14] = *(v3 + *(v10 + 20));
    v12[13] = 1;
    sub_218C94574();
    sub_219BF7834();
    v12[12] = *(v3 + *(v10 + 24));
    v12[11] = 2;
    sub_218F87AD8();
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218F87840()
{
  v1 = 1684957547;
  if (*v0 != 1)
  {
    v1 = 0x6F4D686372616573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

uint64_t sub_218F87898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218F87C8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218F878C0(uint64_t a1)
{
  v2 = sub_218F87968();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218F878FC(uint64_t a1)
{
  v2 = sub_218F87968();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218F87968()
{
  result = qword_280EA5220;
  if (!qword_280EA5220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA5220);
  }

  return result;
}

unint64_t sub_218F879BC()
{
  result = qword_280EE2EC8;
  if (!qword_280EE2EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE2EC8);
  }

  return result;
}

uint64_t sub_218F87A10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipesSearchFeedGroupConfigData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218F87A74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218F87968();
    v7 = a3(a1, &type metadata for RecipesSearchFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218F87AD8()
{
  result = qword_27CC13F08;
  if (!qword_27CC13F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13F08);
  }

  return result;
}

uint64_t sub_218F87B2C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218F87B88()
{
  result = qword_27CC13F10;
  if (!qword_27CC13F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13F10);
  }

  return result;
}

unint64_t sub_218F87BE0()
{
  result = qword_280EA5210;
  if (!qword_280EA5210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA5210);
  }

  return result;
}

unint64_t sub_218F87C38()
{
  result = qword_280EA5218;
  if (!qword_280EA5218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA5218);
  }

  return result;
}

uint64_t sub_218F87C8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F4D686372616573 && a2 == 0xEA00000000006564)
  {

    return 2;
  }

  else
  {
    v6 = sub_219BF78F4();

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

void sub_218F87DAC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() feedTitleViewUpdateCheckingForNewStoriesForType_];
    [*(*&v1[OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_mastheadView] + qword_280EDEE98) applyFeedTitleViewUpdate:v2 animation:2 force:1];
  }
}

void sub_218F87E5C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() feedTitleViewUpdateEmptyStateForType_];
    [*(*&v1[OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_mastheadView] + qword_280EDEE98) applyFeedTitleViewUpdate:v2 animation:2];
  }
}

id sub_218F880A0()
{
  sub_218718690(*(v0 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_titleViewStyler) + OBJC_IVAR____TtC7NewsUI2P33_40459F828962B2D00232170432F6EDA023MastheadTitleViewStyler_renderer, v12);
  v1 = __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_model);

  sub_218A6DED8(v2);

  [*(v0 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_mastheadView) bounds];
  v4 = v3;
  v6 = v5;
  v7 = __swift_project_boxed_opaque_existential_1((*v1 + 16), *(*v1 + 40));
  v8 = [objc_allocWithZone(MEMORY[0x277D355E8]) initWithTextColor_];
  v9 = sub_219BF53D4();
  v10 = [v8 styleTitleText:v9 styleType:0 boundingSize:{v4, v6}];

  __swift_destroy_boxed_opaque_existential_1(v12);
  return v10;
}

double sub_218F88230(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_model;
  v5 = 0.0;
  if (!(*(v2 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_model) >> 60))
  {
    v6 = *(v2 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_engagementBanner);
    if (v6)
    {
      v7 = v6;
      sub_219BE8DA4();
      Width = CGRectGetWidth(v17);
      sub_219BE8D24();
      sub_219BF6034();
      [v7 sizeThatFits_];
      v5 = v10;
    }
  }

  v11 = *(v2 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_layoutAttributesFactory + 24);
  v12 = *(v2 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_layoutAttributesFactory + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_layoutAttributesFactory), v11);
  v13 = *(v2 + v4);
  v14 = *(v12 + 8);

  v15 = v14(v13, a1, v11, v12, v5);

  return v15;
}

void sub_218F88364()
{
  v1 = type metadata accessor for MastheadModelSupplementaryInfo();
  MEMORY[0x28223BE20](v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218802370(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  sub_219BE1D04();
  v7 = *(v0 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_model) >> 60;
  if ((v7 - 2) < 7)
  {
    v8 = sub_219BEC004();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
LABEL_3:
    sub_2188174B8(v6, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
    return;
  }

  if (v7)
  {
    sub_218A6E454();
    v13 = v12;
    v14 = swift_projectBox();
    sub_218812294(v14 + *(v13 + 48), v6, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  }

  else
  {
    sub_2187FF18C();
    v10 = v9;
    v11 = swift_projectBox();
    sub_21881CF74(v11 + *(v10 + 64), v3, type metadata accessor for MastheadModelSupplementaryInfo);
    sub_218812294(&v3[*(v1 + 24)], v6, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
    sub_218819144(v3, type metadata accessor for MastheadModelSupplementaryInfo);
  }

  v15 = sub_219BEC004();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v6, 1, v15) == 1)
  {
    goto LABEL_3;
  }

  v17 = sub_219BEBFF4();
  (*(v16 + 8))(v6, v15);
  if (v17)
  {
    swift_getObjectType();
    sub_219BEBE74();
  }
}

void sub_218F88660()
{
  v1 = type metadata accessor for MastheadModelSupplementaryInfo();
  MEMORY[0x28223BE20](v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218802370(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = *(v0 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_model) >> 60;
  if ((v7 - 2) < 7)
  {
    v8 = sub_219BEC004();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
LABEL_3:
    sub_2188174B8(v6, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
    return;
  }

  if (v7)
  {
    sub_218A6E454();
    v13 = v12;
    v14 = swift_projectBox();
    sub_218812294(v14 + *(v13 + 48), v6, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  }

  else
  {
    sub_2187FF18C();
    v10 = v9;
    v11 = swift_projectBox();
    sub_21881CF74(v11 + *(v10 + 64), v3, type metadata accessor for MastheadModelSupplementaryInfo);
    sub_218812294(&v3[*(v1 + 24)], v6, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
    sub_218819144(v3, type metadata accessor for MastheadModelSupplementaryInfo);
  }

  v15 = sub_219BEC004();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v6, 1, v15) == 1)
  {
    goto LABEL_3;
  }

  v17 = sub_219BEBFF4();
  (*(v16 + 8))(v6, v15);
  if (v17)
  {
    swift_getObjectType();
    sub_219BEBE74();
  }
}

id sub_218F88A24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MastheadTitleViewStyler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_218F88AB8(void *a1)
{
  v62 = a1;
  sub_21875D3C8();
  v63 = *(v2 - 1);
  v64 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218802370(0, &qword_280EE4768, MEMORY[0x277D6E2A8], MEMORY[0x277D83D88]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v58 - v9;
  v11 = sub_219BE8DB4();
  v65 = *(v11 - 8);
  v66 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v58 - v15;
  v17 = type metadata accessor for MastheadModelSupplementaryInfo();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for MastheadModelContext();
  result = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_model;
  v25 = *(v1 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_model);
  if (((1 << (v25 >> 60)) & 0x1DE) == 0)
  {
    if (v25 >> 60)
    {
      sub_218A6E4C8();
      v41 = v40;
      v61 = v25 & 0xFFFFFFFFFFFFFFFLL;
      v42 = swift_projectBox();
      LODWORD(v60) = *(v42 + *(v41 + 64));
      v43 = v64;
      v44 = *(v63 + 2);
      v44(v4, v42, v64);
      v45 = swift_allocBox();
      v47 = v46;
      v58 = &v46[*(v41 + 48)];
      v59 = v45;
      v44(v46, v4, v43);
      v48 = v62[1];
      if (v48)
      {
        v49 = *v62;
      }

      else
      {
        v49 = 0;
      }

      v52 = v58;
      *v58 = v49;
      v52[1] = v48;
      v47[*(v41 + 64)] = v60;
      *(v1 + v24) = v59 | 0x5000000000000000;
      v53 = OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_lastLayoutOptions;
      swift_beginAccess();
      sub_218812294(v1 + v53, v8, &qword_280EE4768, MEMORY[0x277D6E2A8]);
      v54 = v65;
      v55 = v66;
      if ((*(v65 + 48))(v8, 1, v66) == 1)
      {
        (*(v63 + 1))(v4, v64);
        sub_2188174B8(v8, &qword_280EE4768, MEMORY[0x277D6E2A8]);
      }

      else
      {
        (*(v54 + 32))(v14, v8, v55);
        v56 = v1 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_mastheadable;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          sub_218812E9C(v14, Strong, *(v56 + 8));
          swift_unknownObjectRelease();
        }

        (*(v54 + 8))(v14, v55);
        (*(v63 + 1))(v4, v64);
      }
    }

    else
    {
      sub_2187FF18C();
      v27 = v26;
      v28 = swift_projectBox();
      v29 = *(v27 + 48);
      v30 = *(v27 + 64);
      v60 = *v28;
      v61 = v30;
      v64 = type metadata accessor for MastheadModelContext;
      sub_21881CF74(v28 + v29, v23, type metadata accessor for MastheadModelContext);
      v63 = type metadata accessor for MastheadModelSupplementaryInfo;
      sub_21881CF74(v28 + v61, v19, type metadata accessor for MastheadModelSupplementaryInfo);
      v61 = v25 & 0xFFFFFFFFFFFFFFFLL;

      v31 = v62;
      sub_218A6E6F4(v62, v67);
      sub_2195C9258(v31);
      v32 = swift_allocBox();
      v34 = v33;
      v35 = *(v27 + 48);
      v36 = *(v27 + 64);
      *v33 = v60;
      sub_21881CF74(v23, v33 + v35, v64);
      sub_21881CF74(v19, v34 + v36, v63);
      *(v1 + v24) = v32;

      v37 = OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_lastLayoutOptions;
      swift_beginAccess();
      sub_218812294(v1 + v37, v10, &qword_280EE4768, MEMORY[0x277D6E2A8]);
      v38 = v65;
      v39 = v66;
      if ((*(v65 + 48))(v10, 1, v66) == 1)
      {

        sub_218819144(v19, type metadata accessor for MastheadModelSupplementaryInfo);
        sub_218819144(v23, type metadata accessor for MastheadModelContext);
        sub_2188174B8(v10, &qword_280EE4768, MEMORY[0x277D6E2A8]);
      }

      else
      {
        (*(v38 + 32))(v16, v10, v39);
        v50 = v1 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_mastheadable;
        v51 = swift_unknownObjectWeakLoadStrong();
        if (v51)
        {
          sub_218812E9C(v16, v51, *(v50 + 8));

          swift_unknownObjectRelease();
        }

        else
        {
        }

        (*(v38 + 8))(v16, v39);
        sub_218819144(v19, type metadata accessor for MastheadModelSupplementaryInfo);
        sub_218819144(v23, type metadata accessor for MastheadModelContext);
      }
    }
  }

  return result;
}

void sub_218F891E0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for MastheadModelSupplementaryInfo();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MastheadModelContext();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_engagementBanner;
  v11 = *(v1 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_engagementBanner);
  if (a1)
  {
    if (v11)
    {
      sub_2186C6148(0, &qword_280E8DAE0);
      v12 = v11;
      v13 = a1;
      v14 = sub_219BF6DD4();

      if (v14)
      {
        return;
      }

      v11 = *(v2 + v10);
    }

    else
    {
      v13 = a1;
    }

    *(v2 + v10) = a1;
    v19 = v13;

    [*(*(v2 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_mastheadView) + qword_280EDEE88) addSubview_];
    goto LABEL_14;
  }

  if (!v11)
  {
    return;
  }

  *(v1 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_engagementBanner) = 0;

  v15 = [*(*(v1 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_mastheadView) + qword_280EDEE88) subviews];
  sub_2186C6148(0, &qword_280E8DAE0);
  v16 = sub_219BF5924();

  if (v16 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_8;
    }
  }

  else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_8:
    if ((v16 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x21CECE0F0](0, v16);
    }

    else
    {
      if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v17 = *(v16 + 32);
    }

    v18 = v17;

    [v18 removeFromSuperview];

    goto LABEL_14;
  }

LABEL_14:
  v20 = OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_model;
  if (!(*(v2 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_model) >> 60))
  {
    sub_2187FF18C();
    v22 = v21;
    v23 = swift_projectBox();
    v33 = *v23;
    v24 = v6;
    v25 = *(v22 + 64);
    sub_21881CF74(v23 + *(v22 + 48), v9, type metadata accessor for MastheadModelContext);
    v32 = v9;
    sub_21881CF74(v23 + v25, v24, type metadata accessor for MastheadModelSupplementaryInfo);
    *v24 = *(v2 + v10) == 0;
    v26 = swift_allocBox();
    v28 = v27;
    v29 = *(v22 + 48);
    v30 = *(v22 + 64);
    v31 = v32;
    *v27 = v33;
    sub_218F89674(v31, v27 + v29, type metadata accessor for MastheadModelContext);
    sub_218F89674(v24, v28 + v30, type metadata accessor for MastheadModelSupplementaryInfo);
    *(v2 + v20) = v26;
  }
}

uint64_t sub_218F8953C(uint64_t result)
{
  v2 = OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_model;
  if (*(v1 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_model) >> 60 == 5)
  {
    v3 = result;
    sub_218A6E4C8();
    v5 = v4;
    v6 = swift_projectBox();
    v7 = (v6 + *(v5 + 48));
    v8 = v7[1];
    v16 = *v7;
    v9 = *(v6 + *(v5 + 64));
    v10 = swift_allocBox();
    v12 = v11;
    v13 = (v11 + *(v5 + 48));
    v14 = *(v5 + 64);
    sub_21875D3C8();
    (*(*(v15 - 8) + 16))(v12, v3, v15);
    *v13 = v16;
    v13[1] = v8;
    *(v12 + v14) = v9;
    *(v1 + v2) = v10 | 0x5000000000000000;
  }

  return result;
}

uint64_t sub_218F89674(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218F896DC()
{
  v1 = MEMORY[0x277D6E2A8];
  sub_218802370(0, &qword_280EE4768, MEMORY[0x277D6E2A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_219BE8DB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_lastLayoutOptions;
  swift_beginAccess();
  sub_218812294(v0 + v9, v4, &qword_280EE4768, v1);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_2188174B8(v4, &qword_280EE4768, MEMORY[0x277D6E2A8]);
  }

  (*(v6 + 32))(v8, v4, v5);
  v11 = v0 + OBJC_IVAR____TtC7NewsUI220MastheadViewProvider_mastheadable;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_218812E9C(v8, Strong, *(v11 + 8));
    swift_unknownObjectRelease();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_218F89910()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_218F89B58()
{
  sub_218EF7D18();
  sub_219BF54D4();

  v0 = sub_219BF5494();
  v2 = v1;

  sub_218EF7D18();
  sub_219BF54D4();

  v3 = sub_219BF5494();
  v5 = v4;

  if (v0 == v3 && v2 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_219BF78F4();
  }

  return v6 & 1;
}

uint64_t sub_218F89C50()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218F89D14()
{
  sub_219BF5524();
}

uint64_t sub_218F89DC4()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218F89E84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218F8A098();
  *a1 = result;
  return result;
}

void sub_218F89EB4(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701667182;
  v4 = 0xE800000000000000;
  v5 = 0x7974697669746361;
  if (*v1 != 2)
  {
    v5 = 0x446873696C627570;
    v4 = 0xEB00000000657461;
  }

  if (*v1)
  {
    v3 = 0x6465727574616566;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_218F89F34(uint64_t a1)
{
  v2 = sub_218F8A0E4();
  v3 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A30](a1, v2, v3);
}

uint64_t sub_218F89F88(uint64_t a1, uint64_t a2)
{
  v4 = sub_218F8A0E4();
  v5 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A28](a1, a2, v4, v5);
}

uint64_t sub_218F89FE4(uint64_t a1)
{
  v2 = sub_218F8A0E4();
  v3 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A20](a1, v2, v3);
}

unint64_t sub_218F8A044()
{
  result = qword_27CC13F50;
  if (!qword_27CC13F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13F50);
  }

  return result;
}

uint64_t sub_218F8A098()
{
  v0 = sub_219BF7614();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_218F8A0E4()
{
  result = qword_27CC13F58;
  if (!qword_27CC13F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13F58);
  }

  return result;
}

void sub_218F8A13C(void *a1, void *a2, void (*a3)(uint64_t))
{
  v4 = v3;
  v8 = sub_218F8A9C4();
  v9 = *(v3 + 24);
  type metadata accessor for SearchHomeCoordinatingController();
  v10 = sub_219BF6584();
  v11 = v26[0];
  v12 = *(v3 + 32);
  if (v12 && (*(v12 + 16) & 1) != 0 || a2 && (type metadata accessor for FloatingTabBarNavigationController(), v13 = v9, v14 = a2, v15 = sub_219BF6DD4(), v13, v14, (v15 & 1) != 0))
  {
    v16 = 1;
    v17 = 1;
    if (!v8)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v20 = [*(v4 + 16) viewControllers];
  sub_218805E54();
  v21 = sub_219BF5924();

  if (v21 >> 62)
  {
    v22 = sub_219BF7214();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = 0;
  v16 = v22 == 1;
  if (v8)
  {
LABEL_6:
    v18 = v8;
    sub_21903F2DC(v26[0]);
  }

LABEL_7:
  if (v16)
  {
    sub_218F8B1F8(v9, *(v4 + 16));
  }

  a3(v10);
  if (v17 && ([a1 setSelectedViewController_], !*(v4 + 32)))
  {
    v19 = [objc_opt_self() sharedApplication];
    v23 = swift_allocObject();
    *(v23 + 16) = v8;
    v26[4] = sub_218F8B478;
    v26[5] = v23;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 1107296256;
    v26[2] = sub_218793E0C;
    v26[3] = &block_descriptor_58_0;
    v24 = _Block_copy(v26);
    v25 = v8;

    [v19 ts:v24 installCACommitCompletionBlock:?];

    _Block_release(v24);
  }

  else
  {

    v19 = v26[0];
  }
}

void sub_218F8A3C4(void *a1, id a2, void (*a3)(void))
{
  v4 = v3;
  v8 = sub_218F8A9C4();
  v9 = v3[3];
  type metadata accessor for SearchHomeCoordinatingController();
  Strong = sub_219BF6584();
  v11 = v22[0];
  v12 = v3[4];
  if (v12 && (*(v12 + 16) & 1) != 0)
  {
    LODWORD(a2) = 1;
    if (!v22[0])
    {
      goto LABEL_12;
    }

LABEL_11:
    v17 = v22[0];
    sub_21903F2DC(v8);

    goto LABEL_12;
  }

  if (!a2 || (v13 = v3[2], type metadata accessor for FloatingTabBarNavigationController(), v14 = v13, a2 = a2, v15 = sub_219BF6DD4(), v14, a2, LODWORD(a2) = 0, (v15 & 1) == 0) || !v8)
  {
LABEL_10:
    if (!v22[0])
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    LODWORD(a2) = [Strong isActive];

    goto LABEL_10;
  }

  LODWORD(a2) = 0;
  if (v22[0])
  {
    goto LABEL_11;
  }

LABEL_12:
  if (!a2)
  {
    (a3)(Strong);
    goto LABEL_16;
  }

  sub_218F8B1F8(v4[2], v9);
  a3();
  [a1 setSelectedViewController_];
  if (v4[4])
  {
LABEL_16:

    v18 = v22[0];
    goto LABEL_17;
  }

  v18 = [objc_opt_self() sharedApplication];
  v19 = swift_allocObject();
  v19[2] = v22[0];
  v22[4] = sub_218F8B49C;
  v22[5] = v19;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 1107296256;
  v22[2] = sub_218793E0C;
  v22[3] = &block_descriptor_74;
  v20 = _Block_copy(v22);
  v21 = v11;

  [v18 ts:v20 installCACommitCompletionBlock:?];

  _Block_release(v20);
LABEL_17:
}

uint64_t sub_218F8A624(char a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (a1)
  {
    return a2();
  }

  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_218807CE0;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_218807CE4;
  v9[3] = &block_descriptor_52_0;
  v8 = _Block_copy(v9);

  [v6 performWithoutAnimation_];
  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

void sub_218F8A75C(void *a1, void *a2)
{
  v3 = v2;
  v5 = [a1 traitCollection];
  v6 = [v5 horizontalSizeClass];

  if (v6 == 2)
  {
    v15 = v3[3];
    type metadata accessor for SearchHomeCoordinatingController();
    sub_219BF6584();
    if (a2)
    {
      type metadata accessor for FloatingTabBarNavigationController();
      v16 = a2;
      v17 = v15;
      v18 = sub_219BF6DD4();

      if (!v28)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v18 = 0;
      if (!v28)
      {
        goto LABEL_15;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v20 = Strong;
      v21 = [Strong isActive];

LABEL_16:
      type metadata accessor for MainTabBarLayoutCoordinator.BackgroundState();
      v22 = swift_allocObject();

      v23 = MEMORY[0x277D84F90];
      *(v22 + 16) = v18 & 1;
      *(v22 + 17) = v21;
      *(v22 + 24) = a2;
      *(v22 + 32) = v23;
      v3[4] = v22;
      v24 = a2;

      return;
    }

LABEL_15:
    v21 = 0;
    goto LABEL_16;
  }

  if (v6 == 1)
  {
    v7 = sub_218F8A9C4();
    if (a2)
    {
      v8 = v3[2];
      type metadata accessor for FloatingTabBarNavigationController();
      v9 = v8;
      v10 = a2;
      v11 = sub_219BF6DD4();

      v12 = 0;
      if ((v11 & 1) != 0 && v7)
      {
        v13 = swift_unknownObjectWeakLoadStrong();
        if (v13)
        {
          v14 = v13;
          v12 = [v13 isActive];
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 0;
      v10 = 0;
    }

    type metadata accessor for MainTabBarLayoutCoordinator.BackgroundState();
    v25 = swift_allocObject();

    v26 = MEMORY[0x277D84F90];
    *(v25 + 16) = v12;
    *(v25 + 17) = v12;
    *(v25 + 24) = a2;
    *(v25 + 32) = v26;
    v3[4] = v25;
    v27 = v10;
  }
}

uint64_t sub_218F8A9C4()
{
  type metadata accessor for FollowingViewController();
  sub_219BF6584();
  if (v5)
  {
    v0 = v5;
    v1 = sub_219BF65B4();

    v2 = [v1 searchController];
    if (v2)
    {
      v3 = [v2 searchResultsController];

      if (v3)
      {
        type metadata accessor for SearchHomeCoordinatingController();
        result = swift_dynamicCastClass();
        if (result)
        {
          return result;
        }
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_218F8AA98(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_218F8B45C;
  *(v4 + 24) = v3;
  v8[4] = sub_218807CE0;
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_218807CE4;
  v8[3] = &block_descriptor_35_0;
  v5 = _Block_copy(v8);
  v6 = a1;

  [v2 performWithoutAnimation_];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218F8ABFC(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_218F8B4C4;
  *(v4 + 24) = v3;
  v8[4] = sub_218807CE0;
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_218807CE4;
  v8[3] = &block_descriptor_45_1;
  v5 = _Block_copy(v8);
  v6 = a1;

  [v2 performWithoutAnimation_];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

void sub_218F8AD60()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong searchBar];

    [v2 becomeFirstResponder];
  }
}

uint64_t sub_218F8ADF0(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_218F8B4DC;
  *(v4 + 24) = v3;
  v8[4] = sub_218807CE0;
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_218807CE4;
  v8[3] = &block_descriptor_84;
  v5 = _Block_copy(v8);
  v6 = a1;

  [v2 performWithoutAnimation_];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218F8AF54(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_218F8B480;
  *(v4 + 24) = v3;
  v8[4] = sub_218807CE0;
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_218807CE4;
  v8[3] = &block_descriptor_68_0;
  v5 = _Block_copy(v8);
  v6 = a1;

  [v2 performWithoutAnimation_];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

void sub_218F8B0B8(uint64_t a1)
{
  if (a1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = [Strong searchBar];

      [v3 becomeFirstResponder];
    }
  }
}

uint64_t sub_218F8B14C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_218F8B18C()
{

  return swift_deallocClassInstance();
}

void sub_218F8B1F8(void *a1, char *a2)
{
  v3 = [a1 viewControllers];
  sub_218805E54();
  v4 = sub_219BF5924();

  if (v4 >> 62)
  {
    v18 = sub_219BF7214();
    if (v18 < 0)
    {
LABEL_20:
      __break(1u);
      return;
    }

    v5 = v18;
    v6 = v18 != 0;
    if (sub_219BF7214() >= v6)
    {
      if (sub_219BF7214() >= v5)
      {
        goto LABEL_3;
      }

      __break(1u);
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6 = v5 != 0;
  if (v5 < v6)
  {
    goto LABEL_19;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {

    if (v5 >= 2)
    {
      v7 = v6;
      do
      {
        v8 = v7 + 1;
        sub_219BF7334();
        v7 = v8;
      }

      while (v5 != v8);
    }
  }

  else
  {
  }

  if (v4 >> 62)
  {
    sub_219BF7564();
    v9 = v11;
    v6 = v12;
    v10 = v13;
  }

  else
  {
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    v10 = (2 * v5) | 1;
  }

  sub_219798754(0);

  sub_219798754(0);

  sub_218725F94();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_219C146A0;
  v15 = *&a2[qword_280EA07F0];
  *(v14 + 32) = v15;
  v16 = v15;
  v17 = swift_unknownObjectRetain();
  sub_2191FCF78(v17, v9, v6, v10);
  swift_unknownObjectRelease();
  v19 = sub_219BF5904();

  [a2 setViewControllers_];
  swift_unknownObjectRelease();
}

char *sub_218F8B4E4(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = (a3 + 40);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = *v5;
    v16[0] = *(v5 - 1);
    v16[1] = v8;

    v17(&v14, v16);
    if (v3)
    {
      break;
    }

    v9 = v15;
    if (v15)
    {
      v10 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_218840D24(0, *(v6 + 2) + 1, 1, v6);
      }

      v12 = *(v6 + 2);
      v11 = *(v6 + 3);
      if (v12 >= v11 >> 1)
      {
        v6 = sub_218840D24((v11 > 1), v12 + 1, 1, v6);
      }

      *(v6 + 2) = v12 + 1;
      v7 = &v6[16 * v12];
      *(v7 + 4) = v10;
      *(v7 + 5) = v9;
    }

    v5 += 2;
    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

char *sub_218F8B68C(void (*a1)(void), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v46 = a1;
  v47 = a2;
  sub_218A12934(0);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BF70();
  v9 = v8;
  v39 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v45 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v36 = &v36 - v13;
  MEMORY[0x28223BE20](v12);
  v37 = &v36 - v14;
  sub_218954350();
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898C06C();
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, v5, v16);
  sub_2186D5774(&unk_280EE5860, sub_218954350);
  sub_219BF56A4();
  v24 = *(v21 + 44);
  sub_2186D5774(&unk_280EE5850, sub_218954350);
  sub_219BF5E84();
  if (*&v23[v24] == v48)
  {
    v49 = MEMORY[0x277D84F90];
LABEL_3:
    sub_218F93498(v23, sub_21898C06C);
  }

  else
  {
    v25 = v38;
    v43 = (v39 + 16);
    v44 = (v39 + 8);
    v41 = (v39 + 32);
    v42 = (v39 + 48);
    v49 = MEMORY[0x277D84F90];
    v26 = v37;
    while (1)
    {
      v27 = sub_219BF5EC4();
      (*v43)(v26);
      v27(&v48, 0);
      sub_219BF5E94();
      v46(v26);
      if (v4)
      {
        break;
      }

      (*v44)(v26, v9);
      if ((*v42)(v25, 1, v9) == 1)
      {
        sub_218F93498(v25, sub_218A12934);
      }

      else
      {
        v40 = 0;
        v28 = *v41;
        v29 = v36;
        (*v41)(v36, v25, v9);
        v28(v45, v29, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_2191F70F8(0, *(v49 + 2) + 1, 1, v49);
        }

        v31 = *(v49 + 2);
        v30 = *(v49 + 3);
        v32 = v39;
        if (v31 >= v30 >> 1)
        {
          v34 = sub_2191F70F8(v30 > 1, v31 + 1, 1, v49);
          v32 = v39;
          v49 = v34;
        }

        v33 = v49;
        *(v49 + 2) = v31 + 1;
        v4 = v40;
        v28(&v33[((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v31], v45, v9);
        v26 = v37;
        v25 = v38;
      }

      sub_219BF5E84();
      if (*&v23[v24] == v48)
      {
        goto LABEL_3;
      }
    }

    (*v44)(v26, v9);
    sub_218F93498(v23, sub_21898C06C);
  }

  return v49;
}

uint64_t sub_218F8BC60(void (*a1)(void), uint64_t a2, unint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), unint64_t a6, uint64_t (*a7)(void))
{
  v36 = a7;
  v12 = a4(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v32 - v13;
  v15 = a5(0);
  v37 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v43 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v35 = &v32 - v19;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v18 = v30)
  {
    v32 = a6;
    a6 = 0;
    v41 = a3 & 0xFFFFFFFFFFFFFF8;
    v42 = a3 & 0xC000000000000001;
    v38 = (v37 + 32);
    v39 = (v37 + 48);
    v44 = v18;
    v45 = MEMORY[0x277D84F90];
    v33 = a1;
    v34 = a3;
    v40 = i;
    while (1)
    {
      if (v42)
      {
        v18 = MEMORY[0x21CECE0F0](a6, a3);
      }

      else
      {
        if (a6 >= *(v41 + 16))
        {
          goto LABEL_20;
        }

        v18 = *(a3 + 8 * a6 + 32);
      }

      v21 = v18;
      v22 = (a6 + 1);
      if (__OFADD__(a6, 1))
      {
        break;
      }

      v46 = v18;
      a1(&v46);
      if (v7)
      {

        return v45;
      }

      v23 = v44;
      if ((*v39)(v14, 1, v44) == 1)
      {
        v18 = sub_218F93498(v14, v36);
      }

      else
      {
        v24 = *v38;
        v25 = v35;
        (*v38)(v35, v14, v23);
        v24(v43, v25, v23);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = (v32)(0, *(v45 + 16) + 1, 1);
        }

        v27 = *(v45 + 16);
        v26 = *(v45 + 24);
        if (v27 >= v26 >> 1)
        {
          v45 = v32(v26 > 1, v27 + 1, 1, v45);
        }

        v28 = v44;
        v29 = v45;
        *(v45 + 16) = v27 + 1;
        v18 = (v24)(v29 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v27, v43, v28);
        a1 = v33;
        a3 = v34;
      }

      ++a6;
      if (v22 == v40)
      {
        return v45;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v30 = v18;
    i = sub_219BF7214();
  }

  return MEMORY[0x277D84F90];
}

void *sub_218F8BFD8(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  v6 = *(a3 + 16);
  if (v6)
  {
    v8 = 0;
    do
    {
      v13 = result;
      for (i = v8; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v10 = sub_219BEDC04();
        v12 = *(v10 - 8);
        result = (v10 - 8);
        v11 = v12;
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v14, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
        if (v3)
        {

          return v13;
        }

        if (v14)
        {
          break;
        }

        if (v8 == v6)
        {
          return v13;
        }
      }

      MEMORY[0x21CECC690](result);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      result = v15;
    }

    while (v8 != v6);
  }

  return result;
}

char *sub_218F8C158(void (*a1)(void), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v46 = a1;
  v47 = a2;
  sub_218F93C2C(0);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A6C984(0);
  v9 = v8;
  v39 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v45 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v36 = &v36 - v13;
  MEMORY[0x28223BE20](v12);
  v37 = &v36 - v14;
  sub_218A6C9A4(0);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B7F074();
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, v5, v16);
  sub_2186D5774(&qword_27CC13FC0, sub_218A6C9A4);
  sub_219BF56A4();
  v24 = *(v21 + 44);
  sub_2186D5774(&qword_27CC0D310, sub_218A6C9A4);
  sub_219BF5E84();
  if (*&v23[v24] == v48)
  {
    v49 = MEMORY[0x277D84F90];
LABEL_3:
    sub_218F93498(v23, sub_218B7F074);
  }

  else
  {
    v25 = v38;
    v43 = (v39 + 16);
    v44 = (v39 + 8);
    v41 = (v39 + 32);
    v42 = (v39 + 48);
    v49 = MEMORY[0x277D84F90];
    v26 = v37;
    while (1)
    {
      v27 = sub_219BF5EC4();
      (*v43)(v26);
      v27(&v48, 0);
      sub_219BF5E94();
      v46(v26);
      if (v4)
      {
        break;
      }

      (*v44)(v26, v9);
      if ((*v42)(v25, 1, v9) == 1)
      {
        sub_218F93498(v25, sub_218F93C2C);
      }

      else
      {
        v40 = 0;
        v28 = *v41;
        v29 = v36;
        (*v41)(v36, v25, v9);
        v28(v45, v29, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_2191F7498(0, *(v49 + 2) + 1, 1, v49);
        }

        v31 = *(v49 + 2);
        v30 = *(v49 + 3);
        v32 = v39;
        if (v31 >= v30 >> 1)
        {
          v34 = sub_2191F7498(v30 > 1, v31 + 1, 1, v49);
          v32 = v39;
          v49 = v34;
        }

        v33 = v49;
        *(v49 + 2) = v31 + 1;
        v4 = v40;
        v28(&v33[((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v31], v45, v9);
        v26 = v37;
        v25 = v38;
      }

      sub_219BF5E84();
      if (*&v23[v24] == v48)
      {
        goto LABEL_3;
      }
    }

    (*v44)(v26, v9);
    sub_218F93498(v23, sub_218B7F074);
  }

  return v49;
}

char *sub_218F8C6C4(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v6 = 0;
    v18 = v4 & 0xFFFFFFFFFFFFFF8;
    v19 = v4 & 0xC000000000000001;
    v7 = MEMORY[0x277D84F90];
    v17 = v4;
    while (v19)
    {
      v9 = MEMORY[0x21CECE0F0](v6, v4);
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_19;
      }

LABEL_9:
      v23 = v9;
      a1(&v21, &v23);
      if (v3)
      {

        swift_unknownObjectRelease();
        return v7;
      }

      swift_unknownObjectRelease();
      v11 = v22;
      if (v22)
      {
        v12 = i;
        v13 = v21;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_218840D24(0, *(v7 + 2) + 1, 1, v7);
        }

        v15 = *(v7 + 2);
        v14 = *(v7 + 3);
        if (v15 >= v14 >> 1)
        {
          v7 = sub_218840D24((v14 > 1), v15 + 1, 1, v7);
        }

        *(v7 + 2) = v15 + 1;
        v8 = &v7[16 * v15];
        *(v8 + 4) = v13;
        *(v8 + 5) = v11;
        v4 = v17;
        i = v12;
      }

      ++v6;
      if (v10 == i)
      {
        return v7;
      }
    }

    if (v6 >= *(v18 + 16))
    {
      goto LABEL_20;
    }

    v9 = *(v4 + 8 * v6 + 32);
    swift_unknownObjectRetain();
    v10 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_9;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_218F8C890(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = a3 + 56;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 56);
  v8 = (v5 + 63) >> 6;
  v24 = a3;

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (v7)
  {
LABEL_11:
    v14 = (*(v24 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
    v15 = v14[1];
    v23[0] = *v14;
    v23[1] = v15;

    a1(&v21, v23);
    if (v3)
    {

      return v11;
    }

    v16 = v22;
    if (v22)
    {
      v19 = v21;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_218840D24(0, *(v11 + 16) + 1, 1, v11);
        v11 = result;
      }

      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_218840D24((v17 > 1), v18 + 1, 1, v11);
        v11 = result;
      }

      *(v11 + 16) = v18 + 1;
      v12 = v11 + 16 * v18;
      *(v12 + 32) = v19;
      *(v12 + 40) = v16;
    }

    v7 &= v7 - 1;
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v8)
    {

      return v11;
    }

    v7 = *(v4 + 8 * v13);
    ++v10;
    if (v7)
    {
      v10 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

char *sub_218F8CA54(void (*a1)(void), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v46 = a1;
  v47 = a2;
  sub_218A75210(0);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953D48();
  v9 = v8;
  v39 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v45 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v36 = &v36 - v13;
  MEMORY[0x28223BE20](v12);
  v37 = &v36 - v14;
  sub_218953E34();
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F93A50();
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, v5, v16);
  sub_2186D5774(&qword_280EE3678, sub_218953E34);
  sub_219BF56A4();
  v24 = *(v21 + 44);
  sub_2186D5774(&qword_280EE3670, sub_218953E34);
  sub_219BF5E84();
  if (*&v23[v24] == v48)
  {
    v49 = MEMORY[0x277D84F90];
LABEL_3:
    sub_218F93498(v23, sub_218F93A50);
  }

  else
  {
    v25 = v38;
    v43 = (v39 + 16);
    v44 = (v39 + 8);
    v41 = (v39 + 32);
    v42 = (v39 + 48);
    v49 = MEMORY[0x277D84F90];
    v26 = v37;
    while (1)
    {
      v27 = sub_219BF5EC4();
      (*v43)(v26);
      v27(&v48, 0);
      sub_219BF5E94();
      v46(v26);
      if (v4)
      {
        break;
      }

      (*v44)(v26, v9);
      if ((*v42)(v25, 1, v9) == 1)
      {
        sub_218F93498(v25, sub_218A75210);
      }

      else
      {
        v40 = 0;
        v28 = *v41;
        v29 = v36;
        (*v41)(v36, v25, v9);
        v28(v45, v29, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_2191F84D4(0, *(v49 + 2) + 1, 1, v49);
        }

        v31 = *(v49 + 2);
        v30 = *(v49 + 3);
        v32 = v39;
        if (v31 >= v30 >> 1)
        {
          v34 = sub_2191F84D4(v30 > 1, v31 + 1, 1, v49);
          v32 = v39;
          v49 = v34;
        }

        v33 = v49;
        *(v49 + 2) = v31 + 1;
        v4 = v40;
        v28(&v33[((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v31], v45, v9);
        v26 = v37;
        v25 = v38;
      }

      sub_219BF5E84();
      if (*&v23[v24] == v48)
      {
        goto LABEL_3;
      }
    }

    (*v44)(v26, v9);
    sub_218F93498(v23, sub_218F93A50);
  }

  return v49;
}

void *sub_218F8CFC0(void (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v31 = a1;
  sub_218BF0C34();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ChannelPickerElementModel();
  v25 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v24 = &v22 - v11;
  if (a3 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v13 = 0;
    v27 = a3 & 0xFFFFFFFFFFFFFF8;
    v28 = a3 & 0xC000000000000001;
    v14 = (v25 + 48);
    v15 = MEMORY[0x277D84F90];
    v23 = a3;
    v26 = i;
    while (v28)
    {
      v16 = MEMORY[0x21CECE0F0](v13, a3, v10);
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      v32 = v16;
      v31(&v32);
      if (v3)
      {

        return v15;
      }

      if ((*v14)(v7, 1, v30) == 1)
      {
        sub_218F93498(v7, sub_218BF0C34);
      }

      else
      {
        v18 = v24;
        sub_21872D044(v7, v24, type metadata accessor for ChannelPickerElementModel);
        sub_21872D044(v18, v29, type metadata accessor for ChannelPickerElementModel);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_2191F8584(0, v15[2] + 1, 1, v15);
        }

        v20 = v15[2];
        v19 = v15[3];
        if (v20 >= v19 >> 1)
        {
          v15 = sub_2191F8584(v19 > 1, v20 + 1, 1, v15);
        }

        v15[2] = v20 + 1;
        sub_21872D044(v29, v15 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v20, type metadata accessor for ChannelPickerElementModel);
        a3 = v23;
      }

      ++v13;
      if (v17 == v26)
      {
        return v15;
      }
    }

    if (v13 >= *(v27 + 16))
    {
      goto LABEL_21;
    }

    v16 = *(a3 + 8 * v13 + 32);

    v17 = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  return MEMORY[0x277D84F90];
}

void *sub_218F8D318(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v30 = a2;
  sub_218F934F8(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SearchModel(0);
  v10 = MEMORY[0x28223BE20](v9);
  v26 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v24 = &v21 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v15 = (a3 + 32);
  v22 = v12;
  v25 = (v12 + 48);
  v16 = MEMORY[0x277D84F90];
  v23 = a1;
  while (1)
  {
    memcpy(v29, v15, 0x212uLL);
    memcpy(v28, v15, 0x212uLL);
    sub_218AD8210(v29, v27);
    a1(v28);
    if (v3)
    {
      break;
    }

    memcpy(v27, v28, 0x212uLL);
    sub_218F93518(v27);
    if ((*v25)(v8, 1, v9) == 1)
    {
      sub_218F93498(v8, sub_218F934F8);
    }

    else
    {
      v17 = v24;
      sub_21872D044(v8, v24, type metadata accessor for SearchModel);
      sub_21872D044(v17, v26, type metadata accessor for SearchModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_2191F85B8(0, v16[2] + 1, 1, v16);
      }

      v19 = v16[2];
      v18 = v16[3];
      if (v19 >= v18 >> 1)
      {
        v16 = sub_2191F85B8(v18 > 1, v19 + 1, 1, v16);
      }

      v16[2] = v19 + 1;
      sub_21872D044(v26, v16 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v19, type metadata accessor for SearchModel);
      a1 = v23;
    }

    v15 += 536;
    if (!--v14)
    {
      return v16;
    }
  }

  memcpy(v27, v28, 0x212uLL);
  sub_218F93518(v27);

  return v16;
}

void *sub_218F8D638(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v31 = a1;
  sub_218F93A30(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ChannelSectionsGroupSectionModel();
  v25 = *(v30 - 8);
  v8 = MEMORY[0x28223BE20](v30);
  v29 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v24 = &v22 - v10;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v12 = 0;
    v27 = a3 & 0xFFFFFFFFFFFFFF8;
    v28 = a3 & 0xC000000000000001;
    v13 = (v25 + 48);
    v14 = MEMORY[0x277D84F90];
    v23 = a3;
    v26 = i;
    while (1)
    {
      if (v28)
      {
        v15 = MEMORY[0x21CECE0F0](v12, a3);
      }

      else
      {
        if (v12 >= *(v27 + 16))
        {
          goto LABEL_20;
        }

        v15 = *(a3 + 8 * v12 + 32);
      }

      v16 = v15;
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v32 = v15;
      v31(&v32);
      if (v3)
      {

        return v14;
      }

      if ((*v13)(v7, 1, v30) == 1)
      {
        sub_218F93498(v7, sub_218F93A30);
      }

      else
      {
        v18 = v24;
        sub_21872D044(v7, v24, type metadata accessor for ChannelSectionsGroupSectionModel);
        sub_21872D044(v18, v29, type metadata accessor for ChannelSectionsGroupSectionModel);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_2191F85EC(0, v14[2] + 1, 1, v14);
        }

        v20 = v14[2];
        v19 = v14[3];
        if (v20 >= v19 >> 1)
        {
          v14 = sub_2191F85EC(v19 > 1, v20 + 1, 1, v14);
        }

        v14[2] = v20 + 1;
        sub_21872D044(v29, v14 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v20, type metadata accessor for ChannelSectionsGroupSectionModel);
        a3 = v23;
      }

      ++v12;
      if (v17 == v26)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x277D84F90];
}