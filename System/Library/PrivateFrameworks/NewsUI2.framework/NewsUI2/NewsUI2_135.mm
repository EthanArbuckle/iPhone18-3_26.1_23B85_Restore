uint64_t sub_2195C3324@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_2195C3384@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_2195C33E8(uint64_t a1)
{
  v2 = sub_2195C3660();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2195C3424(uint64_t a1)
{
  v2 = sub_2195C3660();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2195C3494()
{
  result = qword_280ED75E0;
  if (!qword_280ED75E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED75E0);
  }

  return result;
}

unint64_t sub_2195C34F0()
{
  result = qword_280ED7600;
  if (!qword_280ED7600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED7600);
  }

  return result;
}

unint64_t sub_2195C3548()
{
  result = qword_280ED75E8;
  if (!qword_280ED75E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED75E8);
  }

  return result;
}

uint64_t sub_2195C359C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2195C35FC()
{
  result = qword_280E8DF60;
  if (!qword_280E8DF60)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E8DF60);
  }

  return result;
}

unint64_t sub_2195C3660()
{
  result = qword_27CC1C6C0;
  if (!qword_27CC1C6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1C6C0);
  }

  return result;
}

uint64_t sub_2195C36B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2195C371C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2195C3660();
    v7 = a3(a1, &type metadata for TagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2195C3794()
{
  result = qword_27CC1C8E0;
  if (!qword_27CC1C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1C8E0);
  }

  return result;
}

unint64_t sub_2195C37EC()
{
  result = qword_27CC1C8E8;
  if (!qword_27CC1C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1C8E8);
  }

  return result;
}

unint64_t sub_2195C3844()
{
  result = qword_27CC1C8F0;
  if (!qword_27CC1C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1C8F0);
  }

  return result;
}

void sub_2195C3A2C()
{
  v1 = v0;
  v26.receiver = v0;
  v26.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v26, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI227ChannelIssuesViewController_blueprintViewController];
  [v1 addChildViewController_];
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [v2 view];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  [v4 addSubview_];

  [v2 didMoveToParentViewController_];
  v7 = [v2 view];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = v7;
  v9 = [v1 view];
  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  [v9 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v8 setFrame_];
  sub_219BE9BB4();
  v19 = v2;
  v20 = sub_219BE9BA4();
  if (!v20)
  {
LABEL_8:
    v25 = [v1 traitCollection];
    sub_2195C5164();

    return;
  }

  v21 = v20;
  v22 = [v1 view];
  if (v22)
  {
    v23 = v22;
    [v22 addSubview_];

    v24 = *&v1[OBJC_IVAR____TtC7NewsUI227ChannelIssuesViewController_blueprintHorizontalShimView];
    *&v1[OBJC_IVAR____TtC7NewsUI227ChannelIssuesViewController_blueprintHorizontalShimView] = v21;

    goto LABEL_8;
  }

LABEL_13:
  __break(1u);
}

void sub_2195C3C7C()
{
  v1 = v0;
  v26.receiver = v0;
  v26.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v26, sel_viewWillLayoutSubviews);
  v2 = [*&v0[OBJC_IVAR____TtC7NewsUI227ChannelIssuesViewController_blueprintViewController] view];
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
  sub_219BE8734();
  v14 = *&v0[OBJC_IVAR____TtC7NewsUI227ChannelIssuesViewController_blueprintHorizontalShimView];
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

uint64_t sub_2195C3EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = a2;
    v7[4] = a3;
    v8 = v6;

    sub_219BE3494();
  }

  return result;
}

uint64_t sub_2195C3F74(uint64_t a1, uint64_t (*a2)(double, double))
{
  v3 = sub_219BE8164();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE86E4();
  swift_getObjectType();
  sub_219BE9E04();
  swift_unknownObjectRelease();
  sub_219BE8154();
  v8 = v7;
  (*(v4 + 8))(v6, v3);
  sub_219BE8664();
  v9 = sub_219BE7BC4();

  v10 = [v9 collectionViewLayout];

  [v10 collectionViewContentSize];
  v12 = v11;

  return a2(v8, v12 + 15.0);
}

uint64_t sub_2195C4150(uint64_t a1, uint64_t a2)
{
  v4 = *v2 + OBJC_IVAR____TtC7NewsUI227ChannelIssuesViewController_pluggableDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2195C41C0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  v6 = OBJC_IVAR____TtC7NewsUI227ChannelIssuesViewController_pluggableDelegate;
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = v5 + v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v9;
  return sub_218A5FF2C;
}

uint64_t sub_2195C4264()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC7NewsUI227ChannelIssuesViewController_isBeingUsedAsPlugin;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_2195C42AC(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI227ChannelIssuesViewController_isBeingUsedAsPlugin;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

uint64_t sub_2195C437C()
{
  sub_2195C5084(0, &qword_27CC1C958, MEMORY[0x277D6D618]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = v8 - v4;
  v8[1] = *(*v0 + OBJC_IVAR____TtC7NewsUI227ChannelIssuesViewController_blueprintLayoutProvider);
  sub_2195C5144(0);
  sub_2186E4458(&qword_27CC1C968, sub_2195C5144);
  sub_219BE91E4();
  v6 = sub_219BE6534();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_2195C44EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_2195C4FC4(0, &qword_27CC0B0C0, MEMORY[0x277D6EC60]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  sub_219BE86A4();
  v11[0] = v11[1];
  sub_2195C4FA4(0);
  sub_2186E4458(&qword_27CC1C950, sub_2195C4FA4);
  sub_219BE7B94();

  v9 = a3(v5);
  (*(v6 + 8))(v8, v5);
  return v9;
}

double sub_2195C4668@<D0>(uint64_t a1@<X8>)
{
  sub_219BE8714();
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
    sub_218AE1530(v7);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2195C4730(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + OBJC_IVAR____TtC7NewsUI227ChannelIssuesViewController_eventHandler);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;
  v8 = *(v5 + 40);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 32);

  v10(sub_2195C4F68, v7, ObjectType, v8);
}

uint64_t sub_2195C4830(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + OBJC_IVAR____TtC7NewsUI227ChannelIssuesViewController_eventHandler);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;
  v8 = *(v5 + 40);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 40);

  v10(sub_2195C4F20, v7, ObjectType, v8);
}

void sub_2195C4A80()
{
  sub_219BE8664();
  v0 = sub_219BE7BC4();

  [v0 reloadData];
}

void sub_2195C4AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE9F74();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a3, v5);
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 == *MEMORY[0x277D6E950])
  {
    (*(v6 + 8))(v8, v5);
LABEL_3:
    v10 = OBJC_IVAR____TtC7NewsUI227ChannelIssuesViewController_isBeingUsedAsPlugin;
    swift_beginAccess();
    if ((*(v3 + v10) & 1) == 0)
    {
      v11 = *(*(v3 + OBJC_IVAR____TtC7NewsUI227ChannelIssuesViewController_eventHandler) + 40);
      ObjectType = swift_getObjectType();
      (*(v11 + 40))(0, 0, ObjectType, v11);
    }

    return;
  }

  if (v9 == *MEMORY[0x277D6E928])
  {
    v13 = OBJC_IVAR____TtC7NewsUI227ChannelIssuesViewController_isBeingUsedAsPlugin;
    swift_beginAccess();
    if ((*(v3 + v13) & 1) == 0)
    {
      v14 = *(*(v3 + OBJC_IVAR____TtC7NewsUI227ChannelIssuesViewController_eventHandler) + 40);
      v15 = swift_getObjectType();
      (*(v14 + 32))(0, 0, v15, v14);
    }
  }

  else
  {
    if (v9 == *MEMORY[0x277D6E948])
    {
      goto LABEL_3;
    }

    if (v9 == *MEMORY[0x277D6E978])
    {
      return;
    }

    if (v9 == *MEMORY[0x277D6E930])
    {
      goto LABEL_3;
    }

    if (v9 != *MEMORY[0x277D6E958])
    {
      if (v9 == *MEMORY[0x277D6E970])
      {
        sub_219BE8664();
        v16 = sub_219BE7BC4();

        [v16 reloadData];
      }

      else
      {
        sub_219BF7514();
        __break(1u);
      }
    }
  }
}

uint64_t sub_2195C4E5C(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC7NewsUI227ChannelIssuesViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 56))(a2, ObjectType, v4);
}

uint64_t sub_2195C4EBC(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC7NewsUI227ChannelIssuesViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 48))(a2, ObjectType, v4);
}

void sub_2195C4FC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for ChannelIssuesSectionDescriptor;
    v8[1] = type metadata accessor for ChannelIssuesModel();
    v8[2] = sub_218953004();
    v8[3] = sub_2186E4458(&qword_27CC0B0A0, type metadata accessor for ChannelIssuesModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2195C5084(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for ChannelIssuesLayoutSectionDescriptor;
    v8[1] = type metadata accessor for ChannelIssuesLayoutModel();
    v8[2] = sub_218953110();
    v8[3] = sub_2186E4458(&qword_27CC0F860, type metadata accessor for ChannelIssuesLayoutModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2195C5164()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = objc_opt_self();
    v4 = [v3 clearColor];
    [v2 setBackgroundColor_];

    sub_219BE8664();
    v6 = sub_219BE7BC4();

    v5 = [v3 clearColor];
    [v6 setBackgroundColor_];

    [v6 setShowsHorizontalScrollIndicator_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2195C527C()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_2186C66AC();
  v2 = sub_219BF6F74();
  sub_219BF6214();
  sub_219BE5314();

  sub_219BE3204();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2195C53F0;
  *(v3 + 24) = v1;

  v4 = sub_219BE2E54();
  sub_2187E7248();
  v5 = sub_219BE2F64();

  return v5;
}

uint64_t sub_2195C53A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2195C527C();
  *a1 = result;
  return result;
}

uint64_t sub_2195C53F8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecipeBoxEngagementBlueprintModifier()
{
  result = qword_27CC1C970;
  if (!qword_27CC1C970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2195C54D0()
{
  sub_2195C6604(319, &qword_280E918A8, MEMORY[0x277D322C0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_2195C556C(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v56 = a3;
  v57 = a2;
  v4 = sub_219BE6DF4();
  v55 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v52 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195C6394(0, &qword_27CC0B708, MEMORY[0x277D6DF88]);
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x28223BE20](v6);
  v51 = &v44 - v7;
  sub_21897ED8C(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  sub_2195C6394(0, &qword_27CC0FA50, MEMORY[0x277D6D710]);
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v58 = &v44 - v20;
  sub_2195C6394(0, &qword_27CC0B150, MEMORY[0x277D6EC60]);
  v22 = v21;
  MEMORY[0x28223BE20](v21);
  v24 = &v44 - v23;
  v50 = v25;
  v26 = *(v25 + 16);
  v59 = a1;
  v26(&v44 - v23, a1, v22);
  sub_2195C5D0C(v13);
  v27 = v16;
  v28 = *(v16 + 48);
  if (v28(v13, 1, v15) == 1)
  {
    sub_2195C6488(v13);
    swift_bridgeObjectRelease_n();

    sub_219BEB214();

    v29 = v55;
    v30 = v52;
    (*(v55 + 104))(v52, *MEMORY[0x277D6D868], v4);
    type metadata accessor for RecipeBoxSectionDescriptor();
    type metadata accessor for RecipeBoxModel(0);
    v31 = v4;
    sub_2195C6668(qword_280EBA6F0, type metadata accessor for RecipeBoxSectionDescriptor);
    sub_2195C6668(&qword_280EDBED0, type metadata accessor for RecipeBoxModel);
    sub_2195C6668(&qword_27CC0B740, type metadata accessor for RecipeBoxSectionDescriptor);
    v32 = v51;
    sub_219BE85E4();
    (*(v29 + 8))(v30, v31);
    v57(v32);
    (*(v53 + 8))(v32, v54);
    v33 = v22;
    v34 = v24;
  }

  else
  {
    v45 = v19;
    v46 = v24;
    v48 = v4;
    v35 = *(v27 + 32);
    v35(v58, v13, v15);
    v49 = v27;
    sub_219BE6944();
    sub_219BEB354();

    v36 = v28(v11, 1, v15);
    v47 = v22;
    if (v36 == 1)
    {
      sub_2195C6488(v11);
      v37 = v46;
      sub_219BEB224();
    }

    else
    {
      v38 = v45;
      v35(v45, v11, v15);
      v37 = v46;
      sub_219BEB234();
      (*(v49 + 8))(v38, v15);
    }

    v39 = v55;
    v40 = v52;
    v41 = v48;
    (*(v55 + 104))(v52, *MEMORY[0x277D6D868], v48);
    type metadata accessor for RecipeBoxSectionDescriptor();
    type metadata accessor for RecipeBoxModel(0);
    sub_2195C6668(qword_280EBA6F0, type metadata accessor for RecipeBoxSectionDescriptor);
    sub_2195C6668(&qword_280EDBED0, type metadata accessor for RecipeBoxModel);
    sub_2195C6668(&qword_27CC0B740, type metadata accessor for RecipeBoxSectionDescriptor);
    v42 = v51;
    sub_219BE85A4();
    (*(v39 + 8))(v40, v41);
    v57(v42);
    (*(v53 + 8))(v42, v54);
    (*(v49 + 8))(v58, v15);
    v33 = v47;
    v34 = v37;
  }

  return (*(v50 + 8))(v34, v33);
}

uint64_t sub_2195C5D0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RecipeBoxModel(0);
  MEMORY[0x28223BE20](v4);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21897EB38();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for RecipeBoxSectionDescriptor();
  MEMORY[0x28223BE20](v31);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195C6604(0, &qword_280E918A8, MEMORY[0x277D322C0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v29 - v13;
  v15 = sub_219BEEC14();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195C64E4(v2, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_2195C6578(v14);
    v19 = 1;
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    *v11 = 0x656D656761676E65;
    *(v11 + 1) = 0xEA0000000000746ELL;
    *(v11 + 2) = 0;
    *(v11 + 3) = 0xE000000000000000;
    *(v11 + 2) = 0u;
    *(v11 + 3) = 0u;
    *(v11 + 8) = 0;
    swift_storeEnumTagMultiPayload();
    sub_2195C6604(0, &qword_27CC0B738, sub_21897EC04, MEMORY[0x277D84560]);
    sub_21897EC04();
    v21 = v20;
    v30 = a1;
    v22 = swift_allocObject();
    v29[1] = v9;
    v23 = v22;
    *(v22 + 16) = xmmword_219C09BA0;
    (*(v16 + 16))(v6, v18, v15);
    swift_storeEnumTagMultiPayload();
    sub_2195C6668(&qword_280EDBED0, type metadata accessor for RecipeBoxModel);
    sub_219BE5FB4();
    v24 = sub_2195C6668(&qword_27CC0B718, sub_21897EC04);
    v25 = sub_2195C6668(&qword_27CC0B720, sub_21897EC04);
    v26 = v24;
    a1 = v30;
    MEMORY[0x21CEB9170](v23, v21, v26, v25);
    sub_2195C6668(qword_280EBA6F0, type metadata accessor for RecipeBoxSectionDescriptor);
    sub_219BE6924();
    (*(v16 + 8))(v18, v15);
    v19 = 0;
  }

  sub_2195C6394(0, &qword_27CC0FA50, MEMORY[0x277D6D710]);
  return (*(*(v27 - 8) + 56))(a1, v19, 1, v27);
}

uint64_t sub_2195C6250(uint64_t a1)
{
  v2 = sub_2195C6668(&qword_27CC16C40, type metadata accessor for RecipeBoxEngagementBlueprintModifier);

  return MEMORY[0x2821D4040](a1, v2);
}

void sub_2195C6394(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for RecipeBoxSectionDescriptor();
    v8[1] = type metadata accessor for RecipeBoxModel(255);
    v8[2] = sub_2195C6668(qword_280EBA6F0, type metadata accessor for RecipeBoxSectionDescriptor);
    v8[3] = sub_2195C6668(&qword_280EDBED0, type metadata accessor for RecipeBoxModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2195C6488(uint64_t a1)
{
  sub_21897ED8C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2195C64E4(uint64_t a1, uint64_t a2)
{
  sub_2195C6604(0, &qword_280E918A8, MEMORY[0x277D322C0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2195C6578(uint64_t a1)
{
  sub_2195C6604(0, &qword_280E918A8, MEMORY[0x277D322C0], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2195C6604(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2195C6668(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2195C6A2C(uint64_t a1, uint64_t a2)
{
  sub_218985EAC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2195C6A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218985EAC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t type metadata accessor for AudioPlaylistFeedModel()
{
  result = qword_27CC1C988;
  if (!qword_27CC1C988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2195C6B60(uint64_t a1)
{
  sub_218985EAC();
  if (v3 <= 0x3F)
  {
    v4 = v2;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
  }
}

uint64_t sub_2195C6C04()
{
  sub_218985EAC();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195C8E68(v0, v8);
  (*(v3 + 32))(v6, v8, v2);
  v9 = sub_219BF07B4();
  (*(v3 + 8))(v6, v2);
  return v9;
}

uint64_t sub_2195C6D4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2195C8E20(&qword_27CC1C9B0, type metadata accessor for AudioPlaylistFeedModel);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_2195C6DC8(uint64_t a1, uint64_t a2)
{
  sub_218985EAC();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  sub_2195C8ECC();
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 56);
  sub_2195C8E68(a1, v15);
  sub_2195C8E68(a2, &v15[v16]);
  v17 = *(v6 + 32);
  v17(v11, v15, v5);
  v17(v9, &v15[v16], v5);
  type metadata accessor for HeadlineModel(0);
  sub_2195C8E20(&qword_280EDE358, type metadata accessor for HeadlineModel);
  sub_2195C8E20(&qword_280EDE360, type metadata accessor for HeadlineModel);
  LOBYTE(a2) = sub_219BF07C4();
  v18 = *(v6 + 8);
  v18(v9, v5);
  v18(v11, v5);
  return a2 & 1;
}

uint64_t sub_2195C7164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v30[0] = a2;
  v30[1] = a3;
  v30[2] = a4;
  v30[3] = a5;
  v30[4] = a6;
  v30[5] = a7;
  v30[6] = a8;
  v30[7] = a9;
  v12 = sub_219BE57D4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v30 - v14;
  sub_218985EAC();
  v17 = v16;
  v18 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v30 - v22;
  v24 = type metadata accessor for AudioPlaylistFeedModel();
  MEMORY[0x28223BE20](v24 - 8);
  v26 = v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195C8E68(v10, v26);
  (*(v18 + 32))(v23, v26, v17);
  (*(v18 + 16))(v21, v23, v17);
  (*(v13 + 16))(v15, a1, v12);
  WitnessTable = swift_getWitnessTable();
  v28 = sub_219878D0C(v21, v15, MEMORY[0x277D84FA0], v12, WitnessTable);
  (*(v18 + 8))(v23, v17);
  return v28;
}

uint64_t sub_2195C73D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v38 = a6;
  v39 = a8;
  v37 = a7;
  v46 = a2;
  v47 = a3;
  v48 = a6;
  v49 = a7;
  v14 = sub_219BEB334();
  v41 = *(v14 - 8);
  v42 = v14;
  MEMORY[0x28223BE20](v14);
  v40 = &v36 - v15;
  sub_2195C8DBC(0, &qword_27CC110C0, sub_218973CC4, MEMORY[0x277D84560]);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_219C09BA0;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_219C0B8C0;
  v17 = sub_219BE6684();
  v44 = a5;
  v45 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v22 = v38;
  v21 = v39;
  v23 = v37;
  v24 = sub_219BE6654();
  if (v24)
  {
    v25 = MEMORY[0x277D6D630];
    v26 = v17;
  }

  else
  {
    v26 = 0;
    v25 = 0;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
  }

  *(v16 + 32) = v24;
  *(v16 + 56) = v26;
  *(v16 + 64) = v25;
  v27 = sub_219BE6634();
  if (v27)
  {
    v28 = MEMORY[0x277D6D630];
    v29 = v17;
  }

  else
  {
    v29 = 0;
    v28 = 0;
    *(v16 + 80) = 0;
    *(v16 + 88) = 0;
  }

  *(v16 + 72) = v27;
  *(v16 + 96) = v29;
  *(v16 + 104) = v28;
  v46 = v18;
  v47 = v19;
  v48 = v20;
  v49 = v44;
  v50 = v22;
  v51 = v23;
  v52 = v21;
  v53 = a9;
  sub_219BE57D4();
  v30 = v40;
  sub_219BE57C4();
  type metadata accessor for AudioPlaylistFeedServiceConfig();
  sub_2195C8E20(&qword_280EAD5D0, type metadata accessor for AudioPlaylistFeedServiceConfig);
  v31 = v42;
  v32 = sub_219BEB284();
  (*(v41 + 8))(v30, v31);
  sub_219BE57B4();
  v33 = sub_219BE6624();

  sub_21885AB78(v32);
  if (v33)
  {
    v34 = MEMORY[0x277D6D630];
  }

  else
  {
    v17 = 0;
    v34 = 0;
    *(v16 + 120) = 0;
    *(v16 + 128) = 0;
  }

  *(v16 + 112) = v33;
  *(v16 + 136) = v17;
  *(v16 + 144) = v34;
  sub_219BE5A14();
  sub_219BE6B74();
  sub_219BE6B44();

  return sub_219BE59D4();
}

uint64_t sub_2195C7794@<X0>(uint64_t a1@<X8>)
{
  sub_218985EAC();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195C8E68(v1, v10);
  (*(v5 + 32))(v8, v10, v4);
  sub_219BF07D4();
  sub_21912D94C(a1);

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2195C78EC@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = MEMORY[0x277D83D88];
  sub_2195C8DBC(0, &unk_280E92500, MEMORY[0x277D31DC8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v46 = v39 - v4;
  sub_2195C8DBC(0, &qword_280E91C10, MEMORY[0x277D32010], v2);
  MEMORY[0x28223BE20](v5 - 8);
  v45 = v39 - v6;
  v7 = sub_219BF0EE4();
  MEMORY[0x28223BE20](v7 - 8);
  v44 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195C8DBC(0, &unk_280EE34A0, MEMORY[0x277D2D148], v2);
  MEMORY[0x28223BE20](v9 - 8);
  v43 = v39 - v10;
  v11 = sub_219BF0BD4();
  v41 = *(v11 - 8);
  v42 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BF0574();
  MEMORY[0x28223BE20](v14 - 8);
  v39[1] = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985EAC();
  v17 = v16;
  v18 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v39 - v22;
  v24 = type metadata accessor for AudioPlaylistFeedModel();
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = v39 - v28;
  sub_2195C8E68(v1, v39 - v28);
  v30 = *(v18 + 32);
  v30(v23, v29, v17);
  sub_2195C8E68(v1, v27);
  v30(v21, v27, v17);
  v31 = sub_219BF07B4();
  v39[2] = v32;
  v39[3] = v31;
  v40 = *(v18 + 8);
  v40(v21, v17);
  sub_219BF07D4();
  swift_unknownObjectRetain();

  sub_219BF07D4();
  v39[0] = v49;
  sub_219BF07E4();
  sub_219BF07D4();
  swift_unknownObjectRetain();

  sub_219BF07D4();

  sub_219BF0B94();
  swift_unknownObjectRelease();
  (*(v41 + 8))(v13, v42);
  v33 = sub_219BEBD44();
  (*(*(v33 - 8) + 56))(v43, 1, 1, v33);
  sub_219BF07D4();
  sub_21912D31C(v44);

  sub_219BF07D4();
  sub_218ED9B0C(v48 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_audioTrack, v45);

  v34 = sub_219BEDB44();
  (*(*(v34 - 8) + 56))(v46, 1, 1, v34);
  v35 = v47;
  sub_219BF0E34();
  v40(v23, v17);
  v36 = *MEMORY[0x277D32E10];
  v37 = sub_219BF0614();
  return (*(*(v37 - 8) + 104))(v35, v36, v37);
}

uint64_t sub_2195C7F60()
{
  v1 = v0;
  v37 = sub_219BF2B34();
  v39 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v35 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985EAC();
  v4 = v3;
  v38 = *(v3 - 8);
  v5 = v38;
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v28 - v9;
  v36 = v28 - v9;
  v11 = type metadata accessor for AudioPlaylistFeedModel();
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v31 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v28 - v14;
  v30 = v0;
  sub_2195C8E68(v0, v28 - v14);
  v16 = *(v5 + 32);
  v16(v10, v15, v4);
  v29 = v16;
  sub_219BF07D4();
  swift_unknownObjectRetain();

  sub_2195C8DBC(0, &qword_280E8BF50, MEMORY[0x277D6D5B8], MEMORY[0x277D84560]);
  v17 = *(sub_219BE6364() - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v32 = *(v17 + 72);
  v33 = 2 * v32;
  v19 = swift_allocObject();
  v34 = v19;
  *(v19 + 16) = xmmword_219C0B8C0;
  v28[1] = v19 + v18;
  v20 = v1;
  v21 = v31;
  sub_2195C8E68(v20, v31);
  v16(v8, v21, v4);
  swift_unknownObjectRetain();
  sub_219BF07B4();
  v22 = *(v38 + 8);
  v38 += 8;
  v28[0] = v22;
  v22(v8, v4);
  v23 = v35;
  sub_219BF2B14();
  sub_219BE62F4();
  v24 = *(v39 + 8);
  v39 += 8;
  v25 = v37;
  v24(v23, v37);
  sub_2195C8E68(v30, v21);
  v29(v8, v21, v4);
  swift_unknownObjectRetain();
  sub_219BF07B4();
  v26 = v28[0];
  (v28[0])(v8, v4);
  sub_219BF2B14();
  sub_219BE6344();
  v24(v23, v25);
  sub_219BE6314();
  swift_unknownObjectRelease();
  v26(v36, v4);
  return v34;
}

uint64_t sub_2195C83EC@<X0>(unsigned int *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t sub_2195C845C@<X0>(uint64_t a1@<X8>)
{
  v45 = sub_219BF2B34();
  v42 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v41 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985EAC();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v12 = type metadata accessor for AudioPlaylistFeedModel();
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  v44 = v1;
  sub_2195C8E68(v1, &v31 - v16);
  v43 = *(v6 + 32);
  v43(v11, v17, v5);
  sub_219BF07D4();
  LODWORD(v17) = *(v46 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_accessLevel);

  if (v17)
  {
    (*(v6 + 8))(v11, v5);
    v18 = 1;
  }

  else
  {
    sub_219BF07D4();
    swift_unknownObjectRetain();

    sub_2195C8DBC(0, &qword_280E8C000, sub_218C3F224, MEMORY[0x277D84560]);
    sub_218C3F224(0);
    v20 = *(v19 - 8);
    v37 = *(v20 + 72);
    v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v22 = swift_allocObject();
    v38 = v22;
    *(v22 + 16) = xmmword_219C09EC0;
    v40 = v22 + v21;
    sub_2195C8E68(v44, v15);
    v43(v9, v15, v5);
    swift_unknownObjectRetain();
    sub_219BF07B4();
    v39 = a1;
    v23 = v41;
    v35 = *(v6 + 8);
    v36 = v6 + 8;
    v35(v9, v5);
    sub_219BF2B14();
    v24 = v40;
    sub_219BE5C34();
    v42 = *(v42 + 8);
    (v42)(v23, v45);
    v33 = sub_219BE5C44();
    v25 = *(v33 - 8);
    v32 = *(v25 + 56);
    v34 = v25 + 56;
    v32(v24, 0, 1, v33);
    sub_2195C8E68(v44, v15);
    v43(v9, v15, v5);
    swift_unknownObjectRetain();
    sub_219BF07B4();
    v26 = v35;
    v35(v9, v5);
    sub_219BF2B14();
    v27 = v37;
    v28 = v40;
    sub_219BE5C04();
    (v42)(v23, v45);
    a1 = v39;
    v32(v28 + v27, 0, 1, v33);
    sub_219BE68A4();
    swift_unknownObjectRelease();
    v26(v11, v5);
    v18 = 0;
  }

  v29 = sub_219BE6894();
  return (*(*(v29 - 8) + 56))(a1, v18, 1, v29);
}

uint64_t sub_2195C89B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_218985EAC();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = type metadata accessor for AudioPlaylistFeedModel();
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  sub_2195C8E68(v2, &v32 - v16);
  v18 = *(v6 + 32);
  v18(v11, v17, v5);
  sub_219BF07D4();
  LODWORD(v17) = *(v37 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_accessLevel);

  if (v17)
  {
    (*(v6 + 8))(v11, v5);
    v19 = 1;
  }

  else
  {
    sub_219BF07D4();
    v35 = *(v37 + 16);
    swift_unknownObjectRetain();

    sub_2195C8DBC(0, &qword_280E8C000, sub_218C3F224, MEMORY[0x277D84560]);
    sub_218C3F224(0);
    v21 = *(v20 - 8);
    v34 = *(v21 + 72);
    v22 = *(v21 + 80);
    v36 = a1;
    v23 = (v22 + 32) & ~v22;
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_219C09EC0;
    v25 = v24 + v23;
    sub_2195C8E68(v2, v15);
    v18(v9, v15, v5);
    sub_219BF07B4();
    v33 = *(v6 + 8);
    v33(v9, v5);
    sub_219BE5C24();

    v26 = sub_219BE5C44();
    v27 = *(*(v26 - 8) + 56);
    v27(v25, 0, 1, v26);
    v28 = v34;
    sub_219BE5BD4();
    v29 = v25 + v28;
    a1 = v36;
    v27(v29, 0, 1, v26);
    sub_219BE68A4();
    swift_unknownObjectRelease();
    v33(v11, v5);
    v19 = 0;
  }

  v30 = sub_219BE6894();
  return (*(*(v30 - 8) + 56))(a1, v19, 1, v30);
}

void sub_2195C8DBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2195C8E20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2195C8E68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioPlaylistFeedModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2195C8ECC()
{
  if (!qword_27CC1C9C0)
  {
    type metadata accessor for AudioPlaylistFeedModel();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1C9C0);
    }
  }
}

unint64_t sub_2195C8F30(uint64_t a1)
{
  sub_219BF74C4();
  v2 = sub_219BF52E4();

  return sub_2195C8F94(a1, v2);
}

unint64_t sub_2195C8F94(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_219BF74C4();
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = sub_219BF53A4();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_2195C912C()
{
  result = qword_280E8E290;
  if (!qword_280E8E290)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E8E290);
  }

  return result;
}

uint64_t sub_2195C9190(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2195C91F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2195C9258(uint64_t a1)
{
  v3 = sub_219BEC004();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FE720();
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  v14 = *(a1 + 8);
  if (v14)
  {
    v30 = v6;
    v32 = *a1;
    v15 = *(a1 + 32);
    v36 = *(a1 + 16);
    v37 = v15;
    v38 = *(a1 + 48);
    v39 = *(a1 + 64);
    v16 = type metadata accessor for MastheadModelSupplementaryInfo();
    v17 = *(v16 + 24);
    v33 = v1;
    sub_21881AC1C(v1 + v17, v13);
    v31 = v4;
    v18 = *(v4 + 48);
    if (v18(v13, 1, v3) == 1)
    {
      sub_218817664(v13, sub_2186FE720);
      v19 = v33 + *(v16 + 28);
      v20 = *(v19 + 48);
      v34[2] = *(v19 + 32);
      v34[3] = v20;
      v35 = *(v19 + 64);
      v21 = *(v19 + 16);
      v34[0] = *v19;
      v34[1] = v21;
      result = sub_218817664(v34, sub_2187FF3EC);
      *v19 = v32;
      *(v19 + 8) = v14;
      v22 = v37;
      *(v19 + 16) = v36;
      *(v19 + 32) = v22;
      *(v19 + 48) = v38;
      *(v19 + 64) = v39;
      return result;
    }

    v23 = v16;
    sub_218817664(v13, sub_2186FE720);
    sub_21881AC1C(v33 + v17, v10);
    if (v18(v10, 1, v3) == 1)
    {
      sub_218817664(a1, sub_2187FF3EC);
      v24 = sub_2186FE720;
      v25 = v10;
      return sub_218817664(v25, v24);
    }

    v26 = v33;
    v27 = v30;
    v28 = v31;
    (*(v31 + 32))(v30, v10, v3);
    v29 = sub_219BEBFE4();
    (*(v28 + 8))(v27, v3);
    if (v29)
    {
      v24 = sub_2187FF3EC;
      v25 = a1;
      return sub_218817664(v25, v24);
    }

    return sub_2195C9574(a1, v26 + *(v23 + 28));
  }

  return result;
}

uint64_t sub_2195C9574(uint64_t a1, uint64_t a2)
{
  sub_2187FF3EC();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_2195C9600(void *a1, char a2)
{
  v3 = v2;
  sub_219BF6394();
  swift_getObjectType();
  v6 = FCTagProviding.forceBasicTagMasthead.getter();
  swift_unknownObjectRelease();
  if ((v6 & 1) == 0)
  {
    if ((a2 & 1) == 0 || (v11 = [sub_219BF6394() isSportsEvent], swift_unknownObjectRelease(), !v11))
    {
      v12 = [a1 backingChannel];
      if (v12 && (v13 = [v12 theme], swift_unknownObjectRelease(), v13) || (v14 = objc_msgSend(objc_msgSend(a1, sel_backingTag), sel_theme), swift_unknownObjectRelease(), v14))
      {
        swift_unknownObjectRetain();
        swift_getObjectType();
        v15 = *(*__swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
        v16 = sub_219BF6164();

        swift_unknownObjectRelease();
        if (v16)
        {
          swift_unknownObjectRelease();
          return v16;
        }

        swift_getObjectType();
        swift_unknownObjectRetain();
        v17 = sub_219BF6154();
        swift_unknownObjectRelease();
        if (v17)
        {
          swift_unknownObjectRelease();
          v7 = *__swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
          v8 = OBJC_IVAR____TtC7NewsUI210BaseStyler_theme;
          goto LABEL_3;
        }
      }

      v18 = [objc_msgSend(a1 backingTag)];
      swift_unknownObjectRelease();
      if (v18)
      {
        swift_getObjectType();
        v19 = sub_219BF6614();
LABEL_21:
        v23 = v19;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v23;
      }

      v20 = [a1 backingChannel];
      if (v20 && (v21 = [v20 theme], swift_unknownObjectRelease(), v21) || (v22 = objc_msgSend(objc_msgSend(a1, sel_backingTag), sel_theme), swift_unknownObjectRelease(), v22))
      {
        swift_getObjectType();
        v19 = sub_219BF6124();
        goto LABEL_21;
      }

      swift_unknownObjectRelease();
    }
  }

  v7 = *__swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v8 = OBJC_IVAR____TtC7NewsUI210BaseStyler_theme;
LABEL_3:
  v9 = *(v7 + v8 + 24);

  return v9;
}

id sub_2195C990C(void *a1, char a2)
{
  sub_219BF6394();
  swift_getObjectType();
  v5 = FCTagProviding.forceBasicTagMasthead.getter();
  swift_unknownObjectRelease();
  if ((v5 & 1) == 0)
  {
    if ((a2 & 1) == 0 || (v7 = [sub_219BF6394() isSportsEvent], swift_unknownObjectRelease(), !v7))
    {
      v8 = [sub_219BF6394() isLocal];
      swift_unknownObjectRelease();
      if (v8)
      {
        v6 = [objc_opt_self() whiteColor];
        goto LABEL_7;
      }

      v10 = [a1 backingChannel];
      if (v10 && (v11 = [v10 theme], swift_unknownObjectRelease(), v11) || (v12 = objc_msgSend(objc_msgSend(a1, sel_backingTag), sel_theme), swift_unknownObjectRelease(), v12))
      {
        swift_unknownObjectRetain();
        swift_getObjectType();
        v13 = *(*__swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
        v14 = sub_219BF6164();

        swift_unknownObjectRelease();
        if (v14)
        {
          v15 = sub_219BF6CF4();
          swift_unknownObjectRelease();

          return v15;
        }

        swift_getObjectType();
        swift_unknownObjectRetain();
        v16 = sub_219BF6154();
        swift_unknownObjectRelease();
        if (v16)
        {
          goto LABEL_16;
        }
      }

      v17 = [objc_msgSend(a1 backingTag)];
      swift_unknownObjectRelease();
      if (v17)
      {
        swift_getObjectType();
        v18 = sub_219BF6624();
      }

      else
      {
        v19 = [a1 backingChannel];
        if (!v19 || (v20 = [v19 theme], swift_unknownObjectRelease(), !v20))
        {
          v21 = [objc_msgSend(a1 backingTag)];
          swift_unknownObjectRelease();
          if (!v21)
          {
LABEL_16:
            v15 = [objc_opt_self() labelColor];
LABEL_24:
            swift_unknownObjectRelease();
            return v15;
          }
        }

        swift_getObjectType();
        v18 = sub_219BF6134();
      }

      v15 = v18;
      swift_unknownObjectRelease();
      goto LABEL_24;
    }
  }

  v6 = [objc_opt_self() labelColor];
LABEL_7:

  return v6;
}

uint64_t sub_2195C9CC4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 userInterfaceStyle];
  if (v3 >= 3)
  {
    result = sub_219BF7514();
    __break(1u);
  }

  else
  {
    v4 = **(&unk_278242EC8 + v3);
    v5 = sub_219BF2494();
    v6 = *(*(v5 - 8) + 104);

    return v6(a2, v4, v5);
  }

  return result;
}

unint64_t sub_2195C9DAC(uint64_t a1)
{
  result = sub_2195C9DD4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2195C9DD4()
{
  result = qword_280EB2170;
  if (!qword_280EB2170)
  {
    type metadata accessor for TagFeedViewerTitleViewStyler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB2170);
  }

  return result;
}

BOOL sub_2195C9E28(void *a1)
{
  v2 = [objc_msgSend(a1 backingTag)];
  swift_unknownObjectRelease();
  if (v2 || (v4 = [a1 backingChannel]) != 0 && (v5 = objc_msgSend(v4, sel_theme), swift_unknownObjectRelease(), v5))
  {
    swift_unknownObjectRelease();
    return 1;
  }

  else
  {
    v6 = [objc_msgSend(a1 backingTag)];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v6 != 0;
  }
}

uint64_t sub_2195C9F28(uint64_t a1)
{
  sub_2193C97A0();
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193C9834(0, &qword_27CC19BE8, sub_21880702C, type metadata accessor for SearchMoreFeedGroup);
  v6 = *(v5 + 48);
  sub_2193C9834(0, &qword_27CC19C00, type metadata accessor for SearchMoreFeedGroup, sub_21880702C);
  v8 = *(v7 + 48);
  sub_2193C98B0(a1 + v6, v4, type metadata accessor for SearchMoreFeedGroup);
  sub_2193C98B0(a1, &v4[v8], sub_21880702C);
  swift_storeEnumTagMultiPayload();
  sub_2195CB934(0, &qword_27CC19BF8, sub_2193C97A0, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2195CA0BC(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_2195CB934(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v47 = &v40 - v5;
  sub_2195CB934(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v48 = &v40 - v7;
  sub_2195CB934(0, &qword_27CC19C10, sub_2193C9AA8, v3);
  MEMORY[0x28223BE20](v8 - 8);
  v43 = &v40 - v9;
  sub_2195CB998();
  v42 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v41 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF2AB4();
  v53 = *(v13 - 8);
  v54 = v13;
  MEMORY[0x28223BE20](v13);
  v52 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F97D4(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BEF554();
  v50 = *(v18 - 8);
  v51 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v40 - v22;
  v24 = type metadata accessor for RecipesSearchMoreFeedGroupConfigData();
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a1 + OBJC_IVAR____TtC7NewsUI233RecipesSearchMoreFeedGroupEmitter_formatService + 24);
  v44 = *(a1 + OBJC_IVAR____TtC7NewsUI233RecipesSearchMoreFeedGroupEmitter_formatService + 32);
  v45 = v27;
  v46 = __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI233RecipesSearchMoreFeedGroupEmitter_formatService), v27);
  sub_2186FFFE8();
  sub_219BEDD14();
  sub_219BEDCC4();
  v28 = v47;
  sub_219BEDCC4();
  v29 = sub_219BEE5D4();
  (*(*(v29 - 8) + 56))(v17, 1, 1, v29);
  (*(v11 + 16))(v41, v49, v42);
  sub_2193C9AA8(0);
  (*(*(v30 - 8) + 56))(v43, 1, 1, v30);
  v31 = sub_219BF35D4();
  (*(*(v31 - 8) + 56))(v48, 1, 1, v31);
  v55 = 1;
  sub_2195CBA2C();
  swift_allocObject();
  sub_219BF38E4();
  v32 = sub_219BF2774();
  (*(*(v32 - 8) + 56))(v28, 1, 1, v32);
  v33 = qword_27CC08540;
  *MEMORY[0x277D30B98];
  if (v33 != -1)
  {
    swift_once();
  }

  qword_27CCD8A08;
  v34 = v52;
  sub_219BF2A84();
  v35 = sub_218F0AF50(v26, 0x73657069636572, 0xE700000000000000, v23, v21, MEMORY[0x277D84F90], v17, v34, v45, v44);
  (*(v53 + 8))(v34, v54);
  sub_2193C9B64(v17, sub_2186F97D4);
  v36 = v51;
  v37 = *(v50 + 8);
  v37(v21, v51);
  v37(v23, v36);
  v38 = sub_219BF1934();
  (*(*(v38 - 8) + 8))(v26, v38);
  return v35;
}

uint64_t sub_2195CA7B8(uint64_t a1)
{
  v2 = sub_219BED8D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = type metadata accessor for FormatGroupFeedGroupEmitterCursor();
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + OBJC_IVAR____TtC7NewsUI233FormatGroupFeedGroupEmitterCursor_formatGroup, v5, v2);
  v9[3] = v6;
  v9[0] = v7;
  sub_2195CB934(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2195CA92C()
{
  type metadata accessor for FormatGroupFeedGroupEmitterCursor();
  sub_219BE3204();

  v1 = sub_219BE2E54();
  sub_2193C96EC();
  sub_219BE2F64();

  v2 = swift_allocObject();
  *(v2 + 16) = sub_2195CB874;
  *(v2 + 24) = v0;

  v3 = sub_219BE2E54();
  sub_2193C9834(0, &qword_27CC19BE8, sub_21880702C, type metadata accessor for SearchMoreFeedGroup);
  sub_219BE2F64();

  v4 = sub_219BE2E54();
  sub_2193C97A0();
  sub_219BE2F64();

  v5 = sub_219BE2E54();
  v6 = sub_219BE3054();

  return v6;
}

uint64_t sub_2195CAB14(uint64_t a1, uint64_t a2)
{
  v40 = a1;
  sub_2193C9834(0, &qword_27CC19BE8, sub_21880702C, type metadata accessor for SearchMoreFeedGroup);
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = (&v35 - v4);
  v6 = sub_219BDBD64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SearchMoreFeedGroup();
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = v14 >> 6;
  if (v14 >> 6 > 1)
  {
    if (v15 != 2)
    {
      v13 = 1;
      v14 = 1;
    }

    v16 = MEMORY[0x277D84F90];
    if (MEMORY[0x277D84F90] >> 62)
    {
LABEL_11:
      if (!sub_219BF7214())
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  else if (v15)
  {
    v31 = *(a2 + 8);
    v32 = *(a2 + 16);
    v16 = *a2;
    sub_2189651EC(v16, v31, v32, v13, v14);
    if (v16 >> 62)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
    if (MEMORY[0x277D84F90] >> 62)
    {
      goto LABEL_11;
    }
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:

    v30 = sub_219BEEDD4();
    sub_218700100(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v30 - 8) + 104))(v33, *MEMORY[0x277D323A8], v30);
    swift_willThrow();
    return v30;
  }

LABEL_9:
  v37 = v14;
  sub_2195CB8AC();
  v18 = *(v17 + 48);
  v38 = v10;
  v19 = &v12[v18];
  sub_219BDBD54();
  v20 = sub_219BDBD44();
  v35 = v21;
  v36 = v20;
  (*(v7 + 8))(v9, v6);
  v22 = v40;
  v23 = OBJC_IVAR____TtC7NewsUI233FormatGroupFeedGroupEmitterCursor_formatGroup;
  v24 = type metadata accessor for RecipesSearchMoreFeedGroup();
  v25 = *(v24 + 20);
  v26 = sub_219BED8D4();
  (*(*(v26 - 8) + 16))(&v12[v25], v22 + v23, v26);
  v27 = v35;
  *v12 = v36;
  *(v12 + 1) = v27;
  *&v12[*(v24 + 24)] = v16;
  *v19 = v13;
  v19[8] = v37 & 1;
  swift_storeEnumTagMultiPayload();
  v28 = type metadata accessor for FormatGroupFeedGroupEmitterCursor();
  v29 = *(v39 + 48);
  *v5 = v22;
  v5[3] = v28;
  sub_2193C98B0(v12, v5 + v29, type metadata accessor for SearchMoreFeedGroup);
  sub_2193C9984();
  swift_allocObject();

  v30 = sub_219BE3014();
  sub_2193C9B64(v12, type metadata accessor for SearchMoreFeedGroup);
  return v30;
}

uint64_t sub_2195CAF38(uint64_t a1)
{
  sub_2193C97A0();
  MEMORY[0x28223BE20](v2);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD000000000000027, 0x8000000219D28470);
  v9 = a1;
  sub_218A450F0();
  sub_219BF7484();
  v5 = v8;
  *v4 = v7;
  v4[1] = v5;
  swift_storeEnumTagMultiPayload();
  sub_2195CB934(0, &qword_27CC19BF8, sub_2193C97A0, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2195CB090()
{
  v1 = OBJC_IVAR____TtC7NewsUI233RecipesSearchMoreFeedGroupEmitter_config;
  sub_2186FFFE8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI233RecipesSearchMoreFeedGroupEmitter_formatService);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecipesSearchMoreFeedGroupEmitter()
{
  result = qword_27CC1C9D8;
  if (!qword_27CC1C9D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2195CB190()
{
  sub_2186FFFE8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2195CB228()
{
  sub_219BED8D4();
  sub_219BE3204();
  v0 = sub_219BE2E54();
  sub_21880702C();
  v1 = sub_219BE2F64();

  return v1;
}

uint64_t sub_2195CB2F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI233RecipesSearchMoreFeedGroupEmitter_config;
  sub_2186FFFE8();
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for SearchMoreFeedGroupConfig();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2195CB388()
{
  sub_2195CB934(0, &qword_27CC1CA08, sub_2195CBAC0, MEMORY[0x277D84560]);
  sub_2195CBAC0();
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  sub_2195CBB54();
  swift_allocObject();
  *(v4 + v3) = sub_219BEFB94();
  (*(v2 + 104))(v4 + v3, *MEMORY[0x277D32308], v1);
  return v4;
}

uint64_t sub_2195CB520@<X0>(uint64_t *a1@<X8>)
{
  sub_2195CB934(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186FFFE8();
  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2193C9B64(inited + 32, sub_2188317B0);
  sub_2195CBBE8(0);
  a1[3] = v5;
  a1[4] = sub_218700100(&qword_27CC1CA28, sub_2195CBBE8);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_2195CB6A0()
{
  sub_218700100(&qword_27CC1C9F8, type metadata accessor for RecipesSearchMoreFeedGroupEmitter);

  return sub_219BE2324();
}

void sub_2195CB8AC()
{
  if (!qword_27CC0D1D8)
  {
    type metadata accessor for RecipesSearchMoreFeedGroup();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0D1D8);
    }
  }
}

void sub_2195CB934(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2195CB998()
{
  if (!qword_27CC19C20)
  {
    type metadata accessor for SearchMoreFeedServiceConfig();
    sub_218700100(&qword_280EB71E0, type metadata accessor for SearchMoreFeedServiceConfig);
    v0 = sub_219BED924();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC19C20);
    }
  }
}

void sub_2195CBA2C()
{
  if (!qword_27CC19C28)
  {
    type metadata accessor for SearchMoreFeedServiceConfig();
    sub_218700100(&qword_280EB71E0, type metadata accessor for SearchMoreFeedServiceConfig);
    v0 = sub_219BF38F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC19C28);
    }
  }
}

void sub_2195CBAC0()
{
  if (!qword_27CC1CA10)
  {
    type metadata accessor for SearchMoreFeedServiceConfig();
    sub_218700100(&qword_280EB71E0, type metadata accessor for SearchMoreFeedServiceConfig);
    v0 = sub_219BEEC54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1CA10);
    }
  }
}

void sub_2195CBB54()
{
  if (!qword_27CC1CA18)
  {
    type metadata accessor for SearchMoreFeedServiceConfig();
    sub_218700100(&qword_280EB71E0, type metadata accessor for SearchMoreFeedServiceConfig);
    v0 = sub_219BEFBA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1CA18);
    }
  }
}

uint64_t sub_2195CBC1C()
{
  FCCurrentQoSOrUtilityIfMain();
  sub_218846428();
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_2195CBC88@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    sub_2195CC004();
    swift_allocError();
    return swift_willThrow();
  }

  v2 = sub_218E946F8();
  v3 = v2;
  if (!(v2 >> 62))
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_15:

    *a1 = MEMORY[0x277D84F90];
    return result;
  }

  v4 = sub_219BF7214();
  if (!v4)
  {
    goto LABEL_15;
  }

LABEL_4:
  v20 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v4 & ~(v4 >> 63), 0);
  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    v18 = a1;
    v6 = 0;
    v7 = v3;
    v19 = v3 & 0xC000000000000001;
    v8 = v3;
    v9 = v4;
    do
    {
      if (v19)
      {
        v10 = MEMORY[0x21CECE0F0](v6, v7);
      }

      else
      {
        v10 = *(v7 + 8 * v6 + 32);
      }

      v11 = [*(v10 + 16) identifier];
      v12 = sub_219BF5414();
      v14 = v13;

      v16 = *(v20 + 16);
      v15 = *(v20 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_21870B65C((v15 > 1), v16 + 1, 1);
      }

      ++v6;
      *(v20 + 16) = v16 + 1;
      v17 = v20 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      v7 = v8;
    }

    while (v9 != v6);

    *v18 = v20;
  }

  return result;
}

uint64_t sub_2195CBE98()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2195CBF04()
{
  sub_218B21FF0();
  sub_219BE3204();
  swift_allocObject();
  swift_weakInit();
  v0 = sub_219BE2E54();
  sub_2186D0BA8();
  v1 = sub_219BE2F74();

  return v1;
}

unint64_t sub_2195CC004()
{
  result = qword_27CC1CA30;
  if (!qword_27CC1CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CA30);
  }

  return result;
}

unint64_t sub_2195CC06C()
{
  result = qword_27CC1CA38;
  if (!qword_27CC1CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CA38);
  }

  return result;
}

uint64_t sub_2195CC0C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_21896FA3C();
  v34 = *(v7 - 8);
  v8 = *(v34 + 8);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v35 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v12 = *a1;
  v13 = a1[1];
  v14 = *(a1 + 16);
  v15 = *(a1 + 17);
  v16 = *(v3 + 64);
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  *(v17 + 24) = v13;
  *(v17 + 32) = v14;
  *(v17 + 33) = v15;
  v18 = v17 | 0x2000000000000002;
  *(v17 + 40) = a2;
  *(v17 + 48) = a3;
  v19 = sub_219BDFA44();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  v41 = v16;
  sub_2187B14CC(v42, &v37, &unk_280EE7DB0, &qword_280EE7DC0);
  if (*(&v38 + 1))
  {
    sub_2186CB1F0(&v37, v39);
    v20 = qword_280ED32D0;

    if (v20 != -1)
    {
      swift_once();
    }

    v22 = qword_280ED32D8;
    v21 = qword_280ED32E0;
    v23 = qword_280ED32E8;

    sub_2188202A8(v21);
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  else
  {

    sub_218745ACC(&v37, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v22 = qword_280ED32D8;
    v21 = qword_280ED32E0;
    v23 = qword_280ED32E8;

    sub_2188202A8(v21);
  }

  v36 = v18;
  v38 = 0u;
  v37 = 0u;
  v24 = v35;
  sub_2189B4E2C(v11, v35);
  sub_2187B14CC(v44, v39, &qword_280EE33A0, &qword_280EE33B0);
  v25 = (v34[80] + 24) & ~v34[80];
  v26 = (v8 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = v11;
  v27 = (v26 + 47) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  sub_2189B4EAC(v24, v28 + v25);
  v29 = v28 + v26;
  v30 = v39[1];
  *v29 = v39[0];
  *(v29 + 16) = v30;
  *(v29 + 32) = v40;
  v31 = (v28 + v27);
  v32 = (v28 + ((v27 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v31 = 0;
  v31[1] = 0;
  *v32 = v22;
  v32[1] = v21;
  v32[2] = v23;

  sub_2188202A8(v21);
  sub_2186CF94C();
  sub_2189B4DD4();
  sub_219BEB464();

  sub_2187FABEC(v21);
  sub_218745ACC(v42, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_218745ACC(v44, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v34);
  sub_218745ACC(&v37, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
}

void sub_2195CC6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_219BDBD34();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v16 = Strong;
  v39 = a3;
  v46 = sub_219BF6534();
  sub_218805E54();
  sub_2186CFDE4(0, &unk_280EE7DD8);
  v17 = swift_dynamicCast();
  v38 = a2;
  if (v17)
  {
    v37 = a1;
    sub_2186CB1F0(v44, aBlock);
    __swift_project_boxed_opaque_existential_1(aBlock, v41);
    if (sub_219BE1D74() == 0xD000000000000013 && 0x8000000219D28520 == v18)
    {

LABEL_15:
      if (qword_280EE60A0 != -1)
      {
        swift_once();
      }

      v32 = sub_219BE5434();
      __swift_project_value_buffer(v32, qword_280F627F0);
      v33 = sub_219BE5414();
      v34 = sub_219BF6214();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_2186C1000, v33, v34, "Did not present request to avoid duplicate sheets stacking.", v35, 2u);
        MEMORY[0x21CECF960](v35, -1, -1);
      }

      __swift_destroy_boxed_opaque_existential_1(aBlock);
      return;
    }

    v31 = sub_219BF78F4();

    if (v31)
    {
      goto LABEL_15;
    }

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    a1 = v37;
  }

  else
  {
    v45 = 0;
    memset(v44, 0, sizeof(v44));
    sub_218745ACC(v44, &qword_280EE7DD0, &unk_280EE7DD8, MEMORY[0x277D6CAA8], sub_2186C6F70);
  }

  __swift_project_boxed_opaque_existential_1((v4 + 24), *(v4 + 48));
  type metadata accessor for PaidBundleViaOfferUIHandler();
  v19 = sub_219BE1E24();
  if (v19)
  {
    v20 = v19;
    sub_219BDBD24();
    (*(v9 + 16))(v12, v14, v8);

    sub_219BE2E94();

    (*(v9 + 8))(v14, v8);
  }

  v21 = [objc_allocWithZone(MEMORY[0x277CEE8D8]) initWithRequest:a1 bag:objc_msgSend(objc_opt_self() presentingViewController:{"bag"), v16}];
  swift_unknownObjectRelease();
  v22 = v38;
  if (qword_280EE60A0 != -1)
  {
    swift_once();
  }

  v23 = sub_219BE5434();
  __swift_project_value_buffer(v23, qword_280F627F0);
  v24 = sub_219BE5414();
  v25 = sub_219BF6214();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2186C1000, v24, v25, "Presenting AMSUIEngagementTask.", v26, 2u);
    MEMORY[0x21CECF960](v26, -1, -1);
  }

  v27 = [v21 presentEngagement];
  v28 = swift_allocObject();
  v29 = v39;
  *(v28 + 16) = v22;
  *(v28 + 24) = v29;
  v42 = sub_2195CCC38;
  v43 = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218846728;
  v41 = &block_descriptor_142;
  v30 = _Block_copy(aBlock);
  sub_2188202A8(v22);

  [v27 addFinishBlock_];
  _Block_release(v30);
}

uint64_t sub_2195CCC38()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t type metadata accessor for SportsBoxScoresTagFeedGroupConfigData()
{
  result = qword_280E98C98;
  if (!qword_280E98C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2195CCCDC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195CD20C(0, &qword_280E8C7C8, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2195CD1B8();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 20;
    v13 = type metadata accessor for SportsBoxScoresTagFeedGroupConfigData();
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2195CCF44(void *a1)
{
  v3 = v1;
  sub_2195CD20C(0, &qword_27CC1CA40, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2195CD1B8();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for SportsBoxScoresTagFeedGroupConfigData();
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2195CD110(uint64_t a1)
{
  v2 = sub_2195CD1B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2195CD14C(uint64_t a1)
{
  v2 = sub_2195CD1B8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2195CD1B8()
{
  result = qword_280E98CC8[0];
  if (!qword_280E98CC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E98CC8);
  }

  return result;
}

void sub_2195CD20C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2195CD1B8();
    v7 = a3(a1, &type metadata for SportsBoxScoresTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2195CD284()
{
  result = qword_27CC1CA48;
  if (!qword_27CC1CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CA48);
  }

  return result;
}

unint64_t sub_2195CD2DC()
{
  result = qword_280E98CB8;
  if (!qword_280E98CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98CB8);
  }

  return result;
}

unint64_t sub_2195CD334()
{
  result = qword_280E98CC0;
  if (!qword_280E98CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98CC0);
  }

  return result;
}

uint64_t sub_2195CD398()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDBD34();
  MEMORY[0x28223BE20](v8 - 8);
  sub_219BDBBB4();
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A8], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  sub_21870E204();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280F62858 = result;
  return result;
}

uint64_t type metadata accessor for FoodTodayFeedGroupTopicRecipeKnobs()
{
  result = qword_280EA06A8;
  if (!qword_280EA06A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2195CD610()
{
  sub_2186E4FBC(319);
  if (v0 <= 0x3F)
  {
    sub_218D1D174();
    if (v1 <= 0x3F)
    {
      sub_218CC4F9C();
      if (v2 <= 0x3F)
      {
        sub_2186ECA28();
        if (v3 <= 0x3F)
        {
          sub_2186F95C4();
          if (v4 <= 0x3F)
          {
            sub_218CC4F34();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2195CD6F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_219BEFD94();
  v50 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for FoodTodayFeedGroupTopicRecipeKnobs();
  MEMORY[0x28223BE20](v52);
  v51 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4FBC(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v55 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v54 = v39 - v10;
  sub_2195CEA78(0, &qword_280E8C940, MEMORY[0x277D844C8]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = v39 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2195CE9C0();
  v16 = v56;
  sub_219BF7B34();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v40 = v5;
  v41 = v3;
  v47 = 0;
  v48 = v13;
  v49 = a1;
  sub_219BEF814();
  LOBYTE(v62) = 0;
  sub_21905DF6C(&qword_280E912E8, MEMORY[0x277D32720]);
  v18 = v54;
  sub_219BF7674();
  LOBYTE(v62) = 1;
  v19 = v55;
  sub_219BF7674();
  sub_218D1D174();
  v21 = v20;
  LOBYTE(v61) = 2;
  sub_21905DF6C(&qword_280E91468, sub_218D1D174);
  v39[0] = v21;
  sub_219BF7674();
  v22 = v62;
  sub_218CC4F9C();
  LOBYTE(v60) = 3;
  sub_21905DF6C(&qword_280E91798, sub_218CC4F9C);
  sub_219BF7674();
  v56 = v61;
  sub_2186ECA28();
  v24 = v23;
  LOBYTE(v59) = 4;
  sub_21905DF6C(&qword_280E913D8, sub_2186ECA28);
  v39[1] = v24;
  sub_219BF7674();
  v46 = v60;
  sub_2186F95C4();
  v26 = v25;
  LOBYTE(v58) = 5;
  sub_21905DF6C(&qword_280E913F8, sub_2186F95C4);
  v39[2] = v26;
  sub_219BF7674();
  v42 = v59;
  sub_218CC4F34();
  LOBYTE(v57) = 6;
  sub_218CC84B8();
  sub_219BF7674();
  v45 = v58;
  v27 = v51;
  sub_2189B7614(v18, v51);
  v28 = v52;
  sub_2189B7614(v19, v27 + *(v52 + 20));
  v43 = v15;
  v44 = v12;
  if (v22)
  {
    v29 = v22;
  }

  else
  {
    (*(v50 + 104))(v40, *MEMORY[0x277D32A90], v41);
    swift_allocObject();
    v29 = sub_219BEF534();
  }

  *(v27 + v28[6]) = v29;
  v30 = v56;
  v31 = v46;
  if (v56)
  {

    v32 = v30;
  }

  else
  {
    swift_allocObject();

    v32 = sub_219BEEE04();
  }

  v33 = v53;
  v34 = v42;
  *(v27 + v28[7]) = v32;
  v35 = v55;
  if (v31)
  {

    v36 = v31;
  }

  else
  {
    v57 = 0;
    swift_allocObject();

    v36 = sub_219BEF534();
  }

  v37 = v49;
  *(v27 + v28[8]) = v36;
  if (v34)
  {
  }

  else
  {
    LOBYTE(v57) = 0;
    swift_allocObject();

    v34 = sub_219BEF534();
  }

  *(v27 + v28[9]) = v34;
  v38 = v45;
  if (!v45)
  {
    v38 = sub_2194AE724(MEMORY[0x277D84F90]);
  }

  sub_21905F0B8(v35, sub_2186E4FBC);
  sub_21905F0B8(v54, sub_2186E4FBC);
  (*(v48 + 8))(v43, v44);
  *(v27 + v28[10]) = v38;
  sub_2195CEA14(v27, v33);
  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_2195CDE28(void *a1)
{
  v3 = v1;
  sub_2195CEA78(0, &qword_280E8C2C0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2195CE9C0();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_219BEF814();
  sub_21905DF6C(&qword_280E912F0, MEMORY[0x277D32720]);
  sub_219BF77E4();
  if (!v2)
  {
    v10 = type metadata accessor for FoodTodayFeedGroupTopicRecipeKnobs();
    LOBYTE(v14) = 1;
    sub_219BF77E4();
    v14 = *(v3 + v10[6]);
    v13 = 2;
    sub_218D1D174();
    sub_21905DF6C(&qword_280E91470, sub_218D1D174);
    sub_219BF7834();
    v14 = *(v3 + v10[7]);
    v13 = 3;
    sub_218CC4F9C();
    sub_21905DF6C(&qword_280E917A0, sub_218CC4F9C);
    sub_219BF7834();
    v14 = *(v3 + v10[8]);
    v13 = 4;
    sub_2186ECA28();
    sub_21905DF6C(&qword_280E913E0, sub_2186ECA28);
    sub_219BF7834();
    v14 = *(v3 + v10[9]);
    v13 = 5;
    sub_2186F95C4();
    sub_21905DF6C(&qword_280E91400, sub_2186F95C4);
    sub_219BF7834();
    v14 = *(v3 + v10[10]);
    v13 = 6;
    sub_218CC4F34();
    sub_218CC6A10();
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2195CE244()
{
  v1 = *v0;
  v2 = 0x546465726F6E6769;
  v3 = 0xD000000000000015;
  if (v1 == 5)
  {
    v3 = 0xD000000000000020;
  }

  if (v1 != 3)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 > 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000021;
  v5 = 0xD000000000000013;
  if (v1 == 1)
  {
    v5 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    v4 = v5;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2195CE33C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2195CEBF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2195CE364(uint64_t a1)
{
  v2 = sub_2195CE9C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2195CE3A0(uint64_t a1)
{
  v2 = sub_2195CE9C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2195CE410(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BEF814();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v45 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2186E4FBC(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v44 = &v40[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v11 = &v40[-v10];
  sub_218CC85CC();
  v13 = v12;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v40[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v40[-v18];
  v20 = *(v17 + 48);
  v46 = a1;
  sub_2189B7614(a1, &v40[-v18]);
  sub_2189B7614(a2, &v19[v20]);
  v21 = *(v5 + 48);
  if (v21(v19, 1, v4) == 1)
  {
    if (v21(&v19[v20], 1, v4) == 1)
    {
      v42 = v5;
      v43 = a2;
      sub_21905F0B8(v19, sub_2186E4FBC);
      goto LABEL_8;
    }

LABEL_6:
    v22 = v19;
LABEL_14:
    sub_21905F0B8(v22, sub_218CC85CC);
    goto LABEL_15;
  }

  sub_2189B7614(v19, v11);
  if (v21(&v19[v20], 1, v4) == 1)
  {
    (*(v5 + 8))(v11, v4);
    goto LABEL_6;
  }

  v43 = a2;
  v23 = *(v5 + 32);
  v24 = v5;
  v25 = v45;
  v23(v45, &v19[v20], v4);
  sub_21905DF6C(&qword_27CC10CD8, MEMORY[0x277D32720]);
  v41 = sub_219BF53A4();
  v42 = v24;
  v26 = *(v24 + 8);
  v26(v25, v4);
  v26(v11, v4);
  sub_21905F0B8(v19, sub_2186E4FBC);
  if ((v41 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v27 = type metadata accessor for FoodTodayFeedGroupTopicRecipeKnobs();
  v28 = *(v27 + 20);
  v29 = *(v13 + 48);
  v30 = v46;
  sub_2189B7614(v46 + v28, v16);
  v31 = v43 + v28;
  v32 = v43;
  sub_2189B7614(v31, &v16[v29]);
  if (v21(v16, 1, v4) != 1)
  {
    v33 = v44;
    sub_2189B7614(v16, v44);
    if (v21(&v16[v29], 1, v4) != 1)
    {
      v36 = v42;
      v37 = v45;
      (*(v42 + 32))(v45, &v16[v29], v4);
      sub_21905DF6C(&qword_27CC10CD8, MEMORY[0x277D32720]);
      v38 = sub_219BF53A4();
      v39 = *(v36 + 8);
      v39(v37, v4);
      v39(v33, v4);
      sub_21905F0B8(v16, sub_2186E4FBC);
      if ((v38 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    (*(v42 + 8))(v33, v4);
    goto LABEL_13;
  }

  if (v21(&v16[v29], 1, v4) != 1)
  {
LABEL_13:
    v22 = v16;
    goto LABEL_14;
  }

  sub_21905F0B8(v16, sub_2186E4FBC);
LABEL_18:
  sub_218D1D174();
  if (sub_219BEF504())
  {
    sub_218CC4F9C();
    if (sub_219BEEDE4())
    {
      sub_2186ECA28();
      if (sub_219BEF504())
      {
        sub_2186F95C4();
        if (sub_219BEF504())
        {
          v34 = sub_21931A484(*(v30 + *(v27 + 40)), *(v32 + *(v27 + 40)));
          return v34 & 1;
        }
      }
    }
  }

LABEL_15:
  v34 = 0;
  return v34 & 1;
}

unint64_t sub_2195CE9C0()
{
  result = qword_280EA06D8[0];
  if (!qword_280EA06D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA06D8);
  }

  return result;
}

uint64_t sub_2195CEA14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FoodTodayFeedGroupTopicRecipeKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2195CEA78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2195CE9C0();
    v7 = a3(a1, &type metadata for FoodTodayFeedGroupTopicRecipeKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2195CEAF0()
{
  result = qword_27CC1CA50;
  if (!qword_27CC1CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CA50);
  }

  return result;
}

unint64_t sub_2195CEB48()
{
  result = qword_280EA06C8;
  if (!qword_280EA06C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA06C8);
  }

  return result;
}

unint64_t sub_2195CEBA0()
{
  result = qword_280EA06D0;
  if (!qword_280EA06D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA06D0);
  }

  return result;
}

uint64_t sub_2195CEBF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000021 && 0x8000000219CD7680 == a2;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000219CD76B0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CD76F0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x546465726F6E6769 && a2 == 0xED00007344496761 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000219CD7740 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000219CD6980 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219CD6940 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_2195CEE40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  sub_2186E7180(0);
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  AudioFeedGroupKnobs = type metadata accessor for UpNextAudioFeedGroupKnobs();
  MEMORY[0x28223BE20](AudioFeedGroupKnobs);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C51510();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v51 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v39 - v11;
  sub_2195CF858(0, &qword_280E8CD30, MEMORY[0x277D844C8]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2195CF6E0();
  v17 = v52;
  sub_219BF7B34();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v42 = 0;
  v43 = v14;
  v44 = a1;
  v52 = v7;
  LOBYTE(v55) = 0;
  sub_2186F6BC0(&qword_280E91A68, sub_2186E7180);
  v19 = v50;
  v20 = v47;
  sub_219BF7674();
  sub_2186F9548();
  LOBYTE(v54) = 1;
  sub_2186F6BC0(&qword_280E913B8, sub_2186F9548);
  sub_219BF7674();
  v40 = v55;
  LOBYTE(v53) = 2;
  v21 = v13;
  v45 = v16;
  sub_219BF7674();
  v41 = v54;
  v22 = v19;
  v23 = v51;
  sub_2195CF734(v22, v51);
  v24 = v46;
  v25 = *(v46 + 48);
  v26 = v25(v23, 1, v20);
  v27 = v20;
  if (v26 == 1)
  {
    type metadata accessor for AudioFeedServiceConfig();
    sub_2186F6BC0(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig);
    v28 = v48;
    sub_219BEE974();
    v29 = v25(v51, 1, v20);
    v30 = v28;
    v31 = v43;
    v32 = v44;
    if (v29 != 1)
    {
      sub_2195CF798(v51);
    }
  }

  else
  {
    v30 = v48;
    (*(v24 + 32))(v48, v51, v20);
    v31 = v43;
    v32 = v44;
  }

  v33 = v52;
  (*(v24 + 32))(v52, v30, v27);
  v34 = v40;
  if (!v40)
  {
    v53 = 0;
    swift_allocObject();
    v34 = sub_219BEF534();
  }

  v35 = v45;
  *(v33 + *(AudioFeedGroupKnobs + 20)) = v34;
  v36 = v49;
  v37 = v41;
  if (v41)
  {
    sub_2195CF798(v50);
    (*(v31 + 8))(v35, v21);
  }

  else
  {
    v53 = 6;
    v38 = v50;
    swift_allocObject();
    v37 = sub_219BEF534();
    sub_2195CF798(v38);
    (*(v31 + 8))(v45, v21);
  }

  *(v33 + *(AudioFeedGroupKnobs + 24)) = v37;
  sub_2195CF7F4(v33, v36);
  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t sub_2195CF3D4(void *a1)
{
  v3 = v1;
  sub_2195CF858(0, &qword_27CC1CA58, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2195CF6E0();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_2186E7180(0);
  sub_2186F6BC0(&qword_27CC1CA60, sub_2186E7180);
  sub_219BF7834();
  if (!v2)
  {
    AudioFeedGroupKnobs = type metadata accessor for UpNextAudioFeedGroupKnobs();
    v14 = *(v3 + *(AudioFeedGroupKnobs + 20));
    v13 = 1;
    sub_2186F9548();
    sub_2186F6BC0(&qword_280E913C0, sub_2186F9548);
    sub_219BF7834();
    v14 = *(v3 + *(AudioFeedGroupKnobs + 24));
    v13 = 2;
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2195CF638(uint64_t a1)
{
  v2 = sub_2195CF6E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2195CF674(uint64_t a1)
{
  v2 = sub_2195CF6E0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2195CF6E0()
{
  result = qword_280EBC9C8[0];
  if (!qword_280EBC9C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EBC9C8);
  }

  return result;
}

uint64_t sub_2195CF734(uint64_t a1, uint64_t a2)
{
  sub_218C51510();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2195CF798(uint64_t a1)
{
  sub_218C51510();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2195CF7F4(uint64_t a1, uint64_t a2)
{
  AudioFeedGroupKnobs = type metadata accessor for UpNextAudioFeedGroupKnobs();
  (*(*(AudioFeedGroupKnobs - 8) + 32))(a2, a1, AudioFeedGroupKnobs);
  return a2;
}

void sub_2195CF858(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2195CF6E0();
    v7 = a3(a1, &type metadata for UpNextAudioFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2195CF8D0()
{
  result = qword_27CC1CA68;
  if (!qword_27CC1CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CA68);
  }

  return result;
}

unint64_t sub_2195CF928()
{
  result = qword_280EBC9B8;
  if (!qword_280EBC9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBC9B8);
  }

  return result;
}

unint64_t sub_2195CF980()
{
  result = qword_280EBC9C0;
  if (!qword_280EBC9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBC9C0);
  }

  return result;
}

uint64_t sub_2195CF9D4()
{
  sub_219BEEFF4();
  sub_219BEEFE4();
  sub_218954264();
  sub_219BEB2B4();
  if (v3)
  {
    sub_219BEDC74();
    swift_dynamicCast();
  }

  else
  {
    sub_218806FD0(v2);
  }

  type metadata accessor for HistoryFeedServiceConfig();
  sub_2186FF99C(&qword_280EC18D0, type metadata accessor for HistoryFeedServiceConfig);
  v0 = sub_219BEEFD4();

  return v0;
}

uint64_t sub_2195CFAE4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v44 = a2;
  v39 = a1;
  v43 = type metadata accessor for TagFeedAsyncConfig();
  MEMORY[0x28223BE20](v43);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE15B4();
  v37 = *(v8 - 8);
  v38 = v8;
  MEMORY[0x28223BE20](v8);
  v34 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDD0A4();
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BE9EC4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a3;
  v18 = *(a3 + 8);
  v19 = *(a3 + 24);
  v41 = *(a3 + 16);
  v42 = v17;
  v40 = *(a3 + 32);
  sub_218A54C90(v16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v22 = sub_218FE7680(0x7374726F7053796DLL, 0xE800000000000000, v16);

    (*(v14 + 8))(v16, v13);
    if (v22)
    {
      sub_2195D11B8(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
      sub_219BEA7B4();
      if (v48)
      {
        sub_219BDD274();
        if (swift_dynamicCast())
        {
          v24 = v37;
          v23 = v38;
          v25 = v34;
          (*(v37 + 104))(v34, *MEMORY[0x277D2F518], v38);
          sub_219BDD094();
          (*(v24 + 8))(v25, v23);
          sub_219BDD204();

          (*(v35 + 8))(v12, v36);
        }
      }

      else
      {
        sub_218744C90(v47, &qword_280E8B4F0);
      }

      return v22;
    }
  }

  else
  {
    (*(v14 + 8))(v16, v13);
  }

  __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  sub_2186CFDE4(0, &qword_280EC68C0);
  result = sub_219BE1E34();
  if (v46)
  {
    sub_2186CB1F0(&v45, v47);
    if (qword_280EE5F70 != -1)
    {
      swift_once();
    }

    v27 = sub_219BE5434();
    v28 = __swift_project_value_buffer(v27, qword_280F625C8);
    (*(*(v27 - 8) + 16))(&v7[*(v43 + 36)], v28, v27);
    *v7 = 1;
    v29 = v44;
    *(v7 + 1) = 3;
    *(v7 + 2) = v29;
    *(v7 + 3) = 0x7374726F7053796DLL;
    *(v7 + 4) = 0xE800000000000000;
    v31 = v41;
    v30 = v42;
    *(v7 + 5) = v42;
    *(v7 + 6) = v18;
    *(v7 + 7) = v31;
    *(v7 + 8) = v19;
    v32 = v40;
    v7[72] = v40;
    __swift_project_boxed_opaque_existential_1(v47, v48);
    sub_218F20858(v30, v18, v31, v19, v32);
    v33 = v29;
    v22 = sub_21940500C(v7);
    sub_2195D1274(v7, type metadata accessor for TagFeedAsyncConfig);
    __swift_destroy_boxed_opaque_existential_1(v47);
    return v22;
  }

  __break(1u);
  return result;
}

uint64_t sub_2195D0028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v6 = v5;
  v105 = a4;
  v115 = a1;
  v10 = sub_219BE15B4();
  v100 = *(v10 - 8);
  v101 = v10;
  MEMORY[0x28223BE20](v10);
  v99 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDD0A4();
  v103 = *(v12 - 8);
  v104 = v12;
  MEMORY[0x28223BE20](v12);
  v102 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BF2624();
  v97 = *(v14 - 8);
  v98 = v14;
  MEMORY[0x28223BE20](v14);
  v96 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195D11B8(0, &qword_280E907A0, sub_2186F7720, &type metadata for TagFeedOfflineModel, MEMORY[0x277D33530]);
  MEMORY[0x28223BE20](v16 - 8);
  v107 = &v95 - v17;
  v18 = sub_219BF1584();
  v109 = *(v18 - 8);
  v110 = v18;
  MEMORY[0x28223BE20](v18);
  v108 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BF2634();
  v113 = *(v20 - 8);
  v114 = v20;
  v21 = MEMORY[0x28223BE20](v20);
  v106 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v95 - v23;
  v116 = sub_219BF1D74();
  v25 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v27 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195D10EC();
  MEMORY[0x28223BE20](v28 - 8);
  v30 = (&v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = a5[3];
  *&v142[16] = a5[2];
  *&v142[32] = v31;
  v143 = a5[4];
  v32 = a5[1];
  v141 = *a5;
  v33 = *(a2 + 16);
  v117 = *a2;
  v34 = *(a2 + 32);
  v144 = *(a5 + 10);
  *v142 = v32;
  v35 = v32;
  if (v32 == 1)
  {
    v36 = 0;
    v35 = 0;
    v37 = 0;
    v38 = 0uLL;
    v39 = 1;
    v40 = 0uLL;
    v41 = -1;
    v42 = 0uLL;
  }

  else
  {
    v39 = v141;
    v140[0] = *(a5 + 1);
    *(v140 + 3) = *(a5 + 1);
    v37 = *(&v141 + 1);
    v40 = *&v142[8];
    v42 = *&v142[24];
    v41 = v142[40];
    v139[0] = *(a5 + 57);
    *(v139 + 3) = *(a5 + 15);
    v38 = v143;
    v36 = v144;
  }

  v129 = v39;
  *v130 = v140[0];
  *&v130[3] = *(v140 + 3);
  v131 = v37;
  v132 = v35;
  v133 = v40;
  v134 = v42;
  v135 = v41;
  *v136 = v139[0];
  *&v136[3] = *(v139 + 3);
  v137 = v38;
  v138 = v36;
  v111 = v33;
  if (a3 > 6)
  {
    if (a3 > 11)
    {
      if ((a3 - 12) < 2)
      {
        v45 = v6[21];
        sub_2195D1144(&v141, v126);
        v44 = [v45 useFood];
LABEL_10:
        if ((v44 & 1) == 0)
        {
LABEL_48:
          sub_2195D1220(&v129);
          return 0;
        }

        LODWORD(v112) = v34;
        if (v34)
        {
          goto LABEL_12;
        }

LABEL_14:
        v48 = [v117 identifier];
        v47 = sub_219BF5414();
        v46 = v49;

        goto LABEL_15;
      }
    }

    else if ((a3 - 9) < 3)
    {
      v43 = v6[21];
      sub_2195D1144(&v141, v126);
      v44 = [v43 puzzlesEnabled];
      goto LABEL_10;
    }
  }

  sub_2195D1144(&v141, v126);
  LODWORD(v112) = v34;
  if (!v34)
  {
    goto LABEL_14;
  }

LABEL_12:
  v46 = *(&v117 + 1);

  v47 = v117;
LABEL_15:
  *v30 = v47;
  v30[1] = v46;
  v30[2] = a3;
  v50 = *MEMORY[0x277D33B88];
  v51 = sub_219BF2CB4();
  v52 = *(v51 - 8);
  (*(v52 + 104))(v30, v50, v51);
  (*(v52 + 56))(v30, 0, 1, v51);
  (*(v25 + 104))(v27, *MEMORY[0x277D335E0], v116);
  sub_2189A4BB8(v30, v6, v24);
  __swift_project_boxed_opaque_existential_1(v6 + 66, v6[69]);
  if ((sub_219BEED54() & 1) == 0 && (sub_219BF2614() & 1) == 0)
  {
    v57 = v107;
    sub_219BF1B74();
    v59 = v109;
    v58 = v110;
    if ((*(v109 + 48))(v57, 1, v110) == 1)
    {
      (*(v113 + 8))(v24, v114);
      (*(v25 + 8))(v27, v116);
      sub_2195D1274(v30, sub_2195D10EC);
      sub_218AB10D0(v57);
    }

    else
    {
      *&v117 = v27;
      (*(v59 + 32))(v108, v57, v58);
      v61 = v113;
      v60 = v114;
      v62 = v106;
      (*(v113 + 16))(v106, v24, v114);
      if ((*(v61 + 88))(v62, v60) == *MEMORY[0x277D33980])
      {
        v63 = v106;
        (*(v61 + 96))(v106, v60);
        v64 = v96;
        v65 = v97;
        (*(v97 + 32))(v96, v63, v98);
        v66 = v6[19];
        v112 = v6[20];
        __swift_project_boxed_opaque_existential_1(v6 + 16, v66);
        v67 = v117;
        v68 = sub_219BF4984();
        sub_2189A46C0(v115, v68);

        (*(v65 + 8))(v64, v98);
        (*(v109 + 8))(v108, v110);
        (*(v113 + 8))(v24, v114);
        (*(v25 + 8))(v67, v116);
        sub_2195D1274(v30, sub_2195D10EC);
      }

      else
      {
        (*(v59 + 8))(v108, v58);
        v90 = *(v61 + 8);
        v90(v24, v60);
        (*(v25 + 8))(v117, v116);
        sub_2195D1274(v30, sub_2195D10EC);
        v90(v106, v60);
      }
    }

    goto LABEL_48;
  }

  (*(v113 + 8))(v24, v114);
  (*(v25 + 8))(v27, v116);
  sub_2195D1274(v30, sub_2195D10EC);
  if (v132)
  {
    v53 = v131;
    v54 = v132;
  }

  else
  {
    if (v112)
    {
      v55 = *(&v117 + 1);

      v56 = v117;
    }

    else
    {
      v69 = [v117 identifier];
      v70 = sub_219BF5414();
      v55 = v71;

      v56 = v70;
    }

    v53 = sub_218C1D030(v56, v55, a3);
    v54 = v72;
  }

  if (v129 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v74 = sub_218FE7680(v53, v54, v105);

      if (v74)
      {
        sub_2195D11B8(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
        sub_219BEA7B4();
        if (v127)
        {
          sub_219BDD274();
          if (swift_dynamicCast())
          {
            v76 = v100;
            v75 = v101;
            v77 = v99;
            (*(v100 + 104))(v99, *MEMORY[0x277D2F518], v101);
            v78 = v102;
            sub_219BDD094();
            (*(v76 + 8))(v77, v75);
            sub_219BDD204();

            (*(v103 + 8))(v78, v104);
            v79 = *(&v137 + 1);
            if (!*(&v137 + 1))
            {
              goto LABEL_54;
            }

LABEL_51:
            v91 = v137;
            v92 = v138;

            sub_2195D1220(&v129);
            sub_2186CFDE4(0, &qword_27CC1CA70);
            sub_219BF6584();
            if (*(&v124 + 1))
            {
              sub_2186CB1F0(&v123, v126);
              v93 = v127;
              v94 = v128;
              __swift_project_boxed_opaque_existential_1(v126, v127);
              *&v123 = v91;
              *(&v123 + 1) = v79;
              *&v124 = v92;
              (*(v94 + 8))(&v123, v93, v94);
              sub_218AA1438(v91, v79);
              __swift_destroy_boxed_opaque_existential_1(v126);
            }

            else
            {
              sub_218AA1438(v91, v79);
              sub_2195D1274(&v123, sub_2195D12D4);
            }

            return v74;
          }

          v79 = *(&v137 + 1);
          if (*(&v137 + 1))
          {
            goto LABEL_51;
          }
        }

        else
        {

          sub_218744C90(v126, &qword_280E8B4F0);
          v79 = *(&v137 + 1);
          if (*(&v137 + 1))
          {
            goto LABEL_51;
          }
        }

LABEL_54:
        sub_2195D1220(&v129);
        return v74;
      }
    }
  }

  else
  {
  }

  if (v112 >= 2)
  {
    v74 = v111;
    if ((sub_219BED0C4() & 1) == 0)
    {
      sub_219BE9D54();

      v74 = sub_219BE9CE4();
    }

    sub_2195D1220(&v129);
    goto LABEL_41;
  }

  v114 = v53;
  v116 = v54;
  __swift_project_boxed_opaque_existential_1(v6 + 2, v6[5]);
  sub_2186CFDE4(0, qword_280EC2F40);
  sub_2195D11B8(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  sub_219BEA794();
  sub_219BE1E14();

  if (*(&v124 + 1))
  {
    sub_2186CB1F0(&v123, v126);
    v81 = v127;
    v82 = v128;
    __swift_project_boxed_opaque_existential_1(v126, v127);
    v124 = v111;
    v123 = v117;
    v125 = v112;
    v120 = v133;
    v121 = v134;
    v122 = v135;
    v83 = v137;
    v118 = v137;
    v119 = v138;
    v84 = *(v82 + 24);
    sub_218F20858(v133, *(&v133 + 1), v134, *(&v134 + 1), v135);
    sub_218E0DFF8(v83, *(&v83 + 1));
    v74 = v84(&v123, a3, v114, v116, &v120, &v118, v81, v82);
    sub_2195D1220(&v129);
    sub_218AA1438(v118, *(&v118 + 1));
    sub_218DFAEC4(v120, *(&v120 + 1), v121, *(&v121 + 1), v122);
    __swift_destroy_boxed_opaque_existential_1(v126);
LABEL_41:
    sub_2195D11B8(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
    sub_219BEA7B4();
    if (v127)
    {
      sub_219BDD274();
      if (swift_dynamicCast())
      {
        v86 = v99;
        v85 = v100;
        v87 = v101;
        (*(v100 + 104))(v99, *MEMORY[0x277D2F518], v101);
        v88 = v102;
        sub_219BDD094();
        (*(v85 + 8))(v86, v87);
        sub_219BDD204();

        (*(v103 + 8))(v88, v104);
      }

      else
      {
      }
    }

    else
    {

      sub_218744C90(v126, &qword_280E8B4F0);
    }

    v89 = sub_219BEA784();
    v89(v74);

    return v74;
  }

  __break(1u);
  return result;
}

void sub_2195D10EC()
{
  if (!qword_280E902A0)
  {
    sub_219BF2CB4();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E902A0);
    }
  }
}

uint64_t sub_2195D1144(uint64_t a1, uint64_t a2)
{
  sub_2186DEEA0(0, &qword_280EA94E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2195D11B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_2195D1274(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2195D12D4()
{
  if (!qword_27CC1CA78)
  {
    sub_2186CFDE4(255, &qword_27CC1CA70);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1CA78);
    }
  }
}

uint64_t sub_2195D133C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = v5;
  v48 = a2;
  v49 = a3;
  v42 = a1;
  v9 = type metadata accessor for TagFeedAsyncConfig();
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE15B4();
  v41 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BDD0A4();
  v40 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a4;
  v46 = *(a4 + 8);
  v47 = v18;
  v19 = *(a4 + 16);
  v44 = *(a4 + 24);
  v45 = v19;
  v43 = *(a4 + 32);
  v20 = [objc_opt_self() sharedAccount];
  v21 = [v20 isContentStoreFrontSupported];

  if (v21)
  {
    v39 = a5;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v23 = Strong, v24 = sub_218FE7680(0x7548656C7A7A7570, 0xE900000000000062, v49), v23, v24))
    {
      sub_2195D11B8(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
      sub_219BEA7B4();
      if (v53)
      {
        sub_219BDD274();
        result = swift_dynamicCast();
        if (result)
        {
          v26 = v41;
          (*(v41 + 104))(v14, *MEMORY[0x277D2F518], v12);
          sub_219BDD094();
          (*(v26 + 8))(v14, v12);
          sub_219BDD204();

          result = (*(v40 + 8))(v17, v15);
        }
      }

      else
      {
        result = sub_218744C90(v52, &qword_280E8B4F0);
      }

      v38 = v39;
      *v39 = v24;
      *(v38 + 40) = 0;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40));
      sub_2186CFDE4(0, &qword_280EC68C0);
      result = sub_219BE1E34();
      if (v51)
      {
        sub_2186CB1F0(&v50, v52);
        if (qword_280EE5F48 != -1)
        {
          swift_once();
        }

        v27 = sub_219BE5434();
        v28 = __swift_project_value_buffer(v27, qword_280F62580);
        (*(*(v27 - 8) + 16))(&v11[*(v9 + 36)], v28, v27);
        *v11 = 0;
        v30 = v47;
        v29 = v48;
        *(v11 + 1) = 9;
        *(v11 + 2) = v29;
        *(v11 + 3) = 0x7548656C7A7A7570;
        *(v11 + 4) = 0xE900000000000062;
        v32 = v45;
        v31 = v46;
        *(v11 + 5) = v30;
        *(v11 + 6) = v31;
        v33 = v44;
        *(v11 + 7) = v32;
        *(v11 + 8) = v33;
        v34 = v43;
        v11[72] = v43;
        __swift_project_boxed_opaque_existential_1(v52, v53);
        sub_218F20858(v30, v31, v32, v33, v34);
        v35 = v29;
        v36 = sub_21940500C(v11);
        sub_2195D1274(v11, type metadata accessor for TagFeedAsyncConfig);
        v37 = v39;
        *v39 = v36;
        *(v37 + 40) = 0;
        return __swift_destroy_boxed_opaque_existential_1(v52);
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    *(a5 + 24) = &type metadata for AlertContentRegionUnavailable;
    result = sub_2189F7F2C();
    *(a5 + 32) = result;
    *(a5 + 40) = 1;
  }

  return result;
}

uint64_t sub_2195D1848(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v45 = a2;
  v40 = a1;
  v44 = type metadata accessor for TagFeedAsyncConfig();
  MEMORY[0x28223BE20](v44);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE15B4();
  v38 = *(v8 - 8);
  v39 = v8;
  MEMORY[0x28223BE20](v8);
  v35 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDD0A4();
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BE9EC4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a3;
  v19 = *(a3 + 8);
  v20 = *(a3 + 24);
  v42 = *(a3 + 16);
  v43 = v18;
  v41 = *(a3 + 32);
  sub_218A56C88(v15);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v23 = sub_218FE7680(0x627548646F6F66, 0xE700000000000000, v17);

    (*(v14 + 8))(v17, v13);
    if (v23)
    {
      sub_2195D11B8(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
      sub_219BEA7B4();
      if (v49)
      {
        sub_219BDD274();
        if (swift_dynamicCast())
        {
          v25 = v38;
          v24 = v39;
          v26 = v35;
          (*(v38 + 104))(v35, *MEMORY[0x277D2F518], v39);
          sub_219BDD094();
          (*(v25 + 8))(v26, v24);
          sub_219BDD204();

          (*(v36 + 8))(v12, v37);
        }
      }

      else
      {
        sub_218744C90(v48, &qword_280E8B4F0);
      }

      return v23;
    }
  }

  else
  {
    (*(v14 + 8))(v17, v13);
  }

  __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  sub_2186CFDE4(0, &qword_280EC68C0);
  result = sub_219BE1E34();
  if (v47)
  {
    sub_2186CB1F0(&v46, v48);
    if (qword_280EE5F60 != -1)
    {
      swift_once();
    }

    v28 = sub_219BE5434();
    v29 = __swift_project_value_buffer(v28, qword_280F625B0);
    (*(*(v28 - 8) + 16))(&v7[*(v44 + 36)], v29, v28);
    *v7 = 2;
    v30 = v45;
    *(v7 + 1) = 12;
    *(v7 + 2) = v30;
    *(v7 + 3) = 0x627548646F6F66;
    *(v7 + 4) = 0xE700000000000000;
    v32 = v42;
    v31 = v43;
    *(v7 + 5) = v43;
    *(v7 + 6) = v19;
    *(v7 + 7) = v32;
    *(v7 + 8) = v20;
    v33 = v41;
    v7[72] = v41;
    __swift_project_boxed_opaque_existential_1(v48, v49);
    sub_218F20858(v31, v19, v32, v20, v33);
    v34 = v30;
    v23 = sub_21940500C(v7);
    sub_2195D1274(v7, type metadata accessor for TagFeedAsyncConfig);
    __swift_destroy_boxed_opaque_existential_1(v48);
    return v23;
  }

  __break(1u);
  return result;
}

uint64_t sub_2195D1D8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v72 = a4;
  v71 = a1;
  v69 = sub_219BE92E4();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v70 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v73 = &v50 - v13;
  v14 = sub_219BE9EC4();
  v15 = *(v14 - 8);
  *&v16 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a3;
  v67 = *(a3 + 8);
  v20 = *(a3 + 24);
  v66 = *(a3 + 16);
  v65 = v20;
  v64 = *(a3 + 32);
  v21 = [objc_msgSend(*(v6 + 360) possiblyUnfetchedAppConfiguration];
  swift_unknownObjectRelease();
  if (v21)
  {
    v59 = v19;
    v22 = sub_219BF5414();
    v24 = v23;

    v63 = v6;
    v62 = v14;
    v61 = v15;
    v60 = v18;
    v55 = a5;
    if (a5)
    {

      v57 = a5;
    }

    else
    {
      if (!a6)
      {
        v72 = 0;
        v57 = 0;
        v56 = 0;
        goto LABEL_8;
      }

      v72 = 0;
      v57 = 0xE000000000000000;
    }

    v56 = a6;
LABEL_8:
    v80[0] = v22;
    v80[1] = v24;
    v58 = v24;
    v80[2] = a2;
    v80[3] = MEMORY[0x277D84F90];
    v81 = 1;
    sub_218A55778();
    v27 = v26;
    v54 = a2;
    v28 = *(v26 + 48);
    v52 = *MEMORY[0x277D6E4C0];
    v29 = v52;
    v30 = sub_219BE92A4();
    v31 = *(v30 - 8);
    v51 = *(v31 + 104);
    v53 = v31 + 104;
    v32 = v73;
    v51(v73, v29, v30);
    v33 = *MEMORY[0x277D6E500];
    v34 = sub_219BE92B4();
    v35 = *(*(v34 - 8) + 104);
    v35(&v32[v28], v33, v34);
    v36 = *MEMORY[0x277D6E4F0];
    v37 = *(v68 + 104);
    v38 = v32;
    v39 = v69;
    v37(v38, v36, v69);
    v40 = *(v27 + 48);
    v41 = v70;
    v51(v70, v52, v30);
    v35(&v41[v40], *MEMORY[0x277D6E508], v34);
    v37(v41, v36, v39);

    v42 = v54;
    v43 = v59;
    v44 = v67;
    v45 = v66;
    v46 = v65;
    v47 = v64;
    sub_218F20858(v59, v67, v66, v65, v64);
    v48 = v60;
    sub_219BE9EB4();
    LOBYTE(v74) = 1;
    *&v75 = 0;
    *(&v74 + 1) = 0;
    *(&v75 + 1) = v43;
    *&v76 = v44;
    *(&v76 + 1) = v45;
    *&v77 = v46;
    BYTE8(v77) = v47;
    *&v78 = v72;
    *(&v78 + 1) = v57;
    v79 = v56;
    v25 = sub_2195D0028(v71, v80, 13, v48, &v74);
    v82[2] = v76;
    v82[3] = v77;
    v82[4] = v78;
    v83 = v79;
    v82[0] = v74;
    v82[1] = v75;
    sub_218744C90(v82, &qword_280EA94E0);
    (*(v61 + 8))(v48, v62);

    return v25;
  }

  return 0;
}

uint64_t sub_2195D2344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a2;
  v94 = a3;
  v107 = type metadata accessor for HistoryFeedModel(0);
  v82 = *(v107 - 8);
  v4 = MEMORY[0x28223BE20](v107);
  v103 = v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v102 = v81 - v6;
  sub_218985E18();
  v105 = *(v7 - 8);
  v106 = v7;
  MEMORY[0x28223BE20](v7);
  v83 = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219296940();
  MEMORY[0x28223BE20](v9 - 8);
  v93 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_219BF2094();
  v98 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v99 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_219BF2DA4();
  v101 = *(v104 - 1);
  MEMORY[0x28223BE20](v104);
  v13 = v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_219BF1904();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v15 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for HistoryFeedSectionDescriptor();
  v16 = MEMORY[0x28223BE20](v92);
  v97 = v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v81 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v81 - v21;
  v23 = type metadata accessor for ArticleListHistoryFeedGroup();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = (v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v29 = v81 - v28;
  v30 = type metadata accessor for HistoryFeedGroup();
  MEMORY[0x28223BE20](v30 - 8);
  v32 = v81 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195D4698(a1, v32, type metadata accessor for HistoryFeedGroup);
  sub_218B73F4C(v32, v29);
  sub_2195D4698(v29, v22, type metadata accessor for ArticleListHistoryFeedGroup);
  (*(v24 + 56))(v22, 0, 1, v23);
  v86 = *&v29[*(v23 + 24)];
  v91 = v29;
  sub_219BED874();
  v96 = v22;
  sub_2195D4698(v22, v20, type metadata accessor for HistoryFeedSectionDescriptor);
  if ((*(v24 + 48))(v20, 1, v23) == 1)
  {
    v85 = 0xE300000000000000;
    v84 = 7364967;
  }

  else
  {
    sub_218B73F4C(v20, v27);
    v33 = v27[1];
    v84 = *v27;
    v85 = v33;

    sub_2195D3EF0(v27, type metadata accessor for ArticleListHistoryFeedGroup);
  }

  v34 = sub_219BF18F4();
  v35 = *(v34 + 16);
  v95 = v15;
  if (v35)
  {
    v36 = v101 + 16;
    v101 = *(v101 + 16);
    v37 = (*(v36 + 64) + 32) & ~*(v36 + 64);
    v81[1] = v34;
    v38 = v34 + v37;
    v100 = *(v36 + 56);
    v39 = (v36 - 8);
    v40 = MEMORY[0x277D84F90];
    while (1)
    {
      v42 = v104;
      (v101)(v13, v38, v104);
      v43 = sub_219BF2D94();
      result = (*v39)(v13, v42);
      v44 = *(v43 + 16);
      v45 = v40[2];
      v46 = v45 + v44;
      if (__OFADD__(v45, v44))
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        return result;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v46 <= v40[3] >> 1)
      {
        if (*(v43 + 16))
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v45 <= v46)
        {
          v47 = v45 + v44;
        }

        else
        {
          v47 = v45;
        }

        result = sub_2191F7160(result, v47, 1, v40);
        v40 = result;
        if (*(v43 + 16))
        {
LABEL_17:
          if ((v40[3] >> 1) - v40[2] < v44)
          {
            goto LABEL_53;
          }

          swift_arrayInitWithCopy();

          if (v44)
          {
            v48 = v40[2];
            v49 = __OFADD__(v48, v44);
            v50 = v48 + v44;
            if (v49)
            {
              goto LABEL_55;
            }

            v40[2] = v50;
          }

          goto LABEL_7;
        }
      }

      if (v44)
      {
        goto LABEL_50;
      }

LABEL_7:
      v38 += v100;
      if (!--v35)
      {

        v15 = v95;
        v51 = v40[2];
        if (v51)
        {
          goto LABEL_22;
        }

        goto LABEL_40;
      }
    }
  }

  v40 = MEMORY[0x277D84F90];
  v51 = *(MEMORY[0x277D84F90] + 16);
  if (v51)
  {
LABEL_22:
    v104 = *(v98 + 16);
    v52 = v40 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
    v101 = *(v98 + 72);
    v53 = (v98 + 8);
    v54 = MEMORY[0x277D84F90];
    while (1)
    {
      v55 = v99;
      v56 = v108;
      (v104)(v99, v52, v108);
      v57 = sub_219BF2084();
      result = (*v53)(v55, v56);
      v58 = *(v57 + 16);
      v59 = v54[2];
      v60 = v59 + v58;
      if (__OFADD__(v59, v58))
      {
        goto LABEL_51;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v60 <= v54[3] >> 1)
      {
        if (*(v57 + 16))
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v59 <= v60)
        {
          v62 = v59 + v58;
        }

        else
        {
          v62 = v59;
        }

        v54 = sub_218855C7C(isUniquelyReferenced_nonNull_native, v62, 1, v54);
        if (*(v57 + 16))
        {
LABEL_34:
          v63 = (v54[3] >> 1) - v54[2];
          result = sub_219BF3C84();
          if (v63 < v58)
          {
            goto LABEL_54;
          }

          swift_arrayInitWithCopy();

          if (v58)
          {
            v64 = v54[2];
            v49 = __OFADD__(v64, v58);
            v65 = v64 + v58;
            if (v49)
            {
              goto LABEL_56;
            }

            v54[2] = v65;
          }

          goto LABEL_24;
        }
      }

      if (v58)
      {
        goto LABEL_52;
      }

LABEL_24:
      v52 += v101;
      if (!--v51)
      {

        v15 = v95;
        goto LABEL_41;
      }
    }
  }

LABEL_40:

  v54 = MEMORY[0x277D84F90];
LABEL_41:
  MEMORY[0x28223BE20](v66);
  v67 = v89;
  v81[-6] = v86;
  v81[-5] = v67;
  v68 = v84;
  v81[-4] = v90;
  v81[-3] = v68;
  v81[-2] = v85;
  v69 = sub_218DDFA5C(sub_2195D4674, &v81[-8], v54);

  (*(v87 + 8))(v15, v88);
  sub_2195D4698(v96, v97, type metadata accessor for HistoryFeedSectionDescriptor);
  v70 = v69[2];
  if (v70)
  {
    v109 = MEMORY[0x277D84F90];
    sub_218C359A0(0, v70, 0);
    v71 = v109;
    v72 = *(v82 + 80);
    v108 = v69;
    v73 = v69 + ((v72 + 32) & ~v72);
    v74 = *(v82 + 72);
    v75 = v83;
    do
    {
      v76 = v102;
      sub_2195D4698(v73, v102, type metadata accessor for HistoryFeedModel);
      sub_2195D4698(v76, v103, type metadata accessor for HistoryFeedModel);
      sub_2195D3E14(&qword_280ED8650, type metadata accessor for HistoryFeedModel);
      sub_219BE5FB4();
      sub_2195D3EF0(v76, type metadata accessor for HistoryFeedModel);
      v109 = v71;
      v78 = *(v71 + 16);
      v77 = *(v71 + 24);
      if (v78 >= v77 >> 1)
      {
        sub_218C359A0(v77 > 1, v78 + 1, 1);
        v75 = v83;
        v71 = v109;
      }

      *(v71 + 16) = v78 + 1;
      (*(v105 + 32))(v71 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v78, v75, v106);
      v73 += v74;
      --v70;
    }

    while (v70);
  }

  else
  {

    v71 = MEMORY[0x277D84F90];
  }

  v79 = sub_2195D3E14(&qword_280EE5BF8, sub_218985E18);
  v80 = sub_2195D3E14(&unk_280EE5C00, sub_218985E18);
  MEMORY[0x21CEB9170](v71, v106, v79, v80);
  sub_2195D3E14(&qword_280EB4200, type metadata accessor for HistoryFeedSectionDescriptor);
  sub_2195D3E14(&qword_280ED8650, type metadata accessor for HistoryFeedModel);
  sub_219BE6924();
  sub_2195D3EF0(v96, type metadata accessor for HistoryFeedSectionDescriptor);
  return sub_2195D3EF0(v91, type metadata accessor for ArticleListHistoryFeedGroup);
}

uint64_t sub_2195D300C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a2;
  v47 = a3;
  sub_2195D3DE0(0);
  MEMORY[0x28223BE20](v4 - 8);
  v50 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219296940();
  MEMORY[0x28223BE20](v6 - 8);
  v46 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for HistoryFeedSectionDescriptor();
  MEMORY[0x28223BE20](v45);
  v44[2] = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985E18();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v57 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v49 = v44 - v14;
  MEMORY[0x28223BE20](v15);
  v56 = v44 - v16;
  sub_218954178();
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195D3E5C();
  v23 = v22 - 8;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v19 + 16);
  v44[1] = a1;
  v27(v21, a1, v18, v24);
  sub_2195D3E14(&qword_27CC1CA88, sub_218954178);
  sub_219BF56A4();
  v28 = *(v23 + 44);
  sub_2195D3E14(&qword_27CC184F0, sub_218954178);
  sub_219BF5E84();
  if (*&v26[v28] == v60[0])
  {
    v59 = MEMORY[0x277D84F90];
  }

  else
  {
    v33 = v50;
    v32 = v51;
    v54 = (v11 + 16);
    v55 = (v11 + 8);
    v48 = v11;
    v52 = (v11 + 32);
    v53 = (v11 + 48);
    v59 = MEMORY[0x277D84F90];
    do
    {
      v34 = sub_219BF5EC4();
      v35 = v56;
      (*v54)(v56);
      v34(v60, 0);
      sub_219BF5E94();
      sub_2195D3740(v35, v58, v32, v33);
      (*v55)(v35, v10);
      if ((*v53)(v33, 1, v10) == 1)
      {
        sub_2195D3EF0(v33, sub_2195D3DE0);
      }

      else
      {
        v36 = *v52;
        v37 = v49;
        (*v52)(v49, v33, v10);
        v36(v57, v37, v10);
        v38 = v59;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_2191FAEB4(0, v38[2] + 1, 1, v38);
        }

        v40 = v38[2];
        v39 = v38[3];
        v41 = v48;
        if (v40 >= v39 >> 1)
        {
          v43 = sub_2191FAEB4(v39 > 1, v40 + 1, 1, v38);
          v41 = v48;
          v38 = v43;
        }

        v38[2] = v40 + 1;
        v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
        v59 = v38;
        v36(v38 + v42 + *(v41 + 72) * v40, v57, v10);
        v33 = v50;
        v32 = v51;
      }

      sub_219BF5E84();
    }

    while (*&v26[v28] != v60[0]);
  }

  sub_2195D3EF0(v26, sub_2195D3E5C);
  sub_219BE6934();
  v29 = sub_2195D3E14(&qword_280EE5BF8, sub_218985E18);
  v30 = sub_2195D3E14(&unk_280EE5C00, sub_218985E18);
  MEMORY[0x21CEB9170](v59, v10, v29, v30);
  type metadata accessor for HistoryFeedModel(0);
  sub_2195D3E14(&qword_280EB4200, type metadata accessor for HistoryFeedSectionDescriptor);
  sub_2195D3E14(&qword_280ED8650, type metadata accessor for HistoryFeedModel);
  return sub_219BE6924();
}

uint64_t sub_2195D3740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a3;
  v48 = a2;
  v50 = a4;
  v6 = sub_219BF0BD4();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x28223BE20](v6);
  v47 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B6AF30(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985EAC();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for HistoryFeedModel(0);
  MEMORY[0x28223BE20](v16);
  v46 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v41 - v19;
  sub_218985E18();
  v22 = v21;
  v49 = a1;
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    sub_218986048();
    v20 += *(v27 + 48);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_218985FD4();
    v25 = *(v24 + 48);
    v26 = sub_219BF1584();
    (*(*(v26 - 8) + 8))(&v20[v25], v26);
LABEL_5:
    v28 = v50;
    sub_2195D3EF0(v20, type metadata accessor for HistoryFeedGapLocation);
    v29 = *(v22 - 8);
    (*(v29 + 16))(v28, v49, v22);
    return (*(v29 + 56))(v28, 0, 1, v22);
  }

  v41 = v4;
  (*(v13 + 32))(v15, v20, v12);
  sub_219BF07D4();
  v31 = [*(v51 + 16) identifier];
  v32 = sub_219BF5414();
  v42 = v12;
  v33 = v13;
  v35 = v34;

  v36 = sub_2188537B8(v32, v35, v48);

  if (v36)
  {
    v49 = v33;
    __swift_project_boxed_opaque_existential_1((v43 + 16), *(v43 + 40));
    sub_219BF07D4();
    v37 = *(v51 + 16);
    swift_unknownObjectRetain();

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      sub_219BEEFB4();
      swift_unknownObjectRelease();
      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    (*(v44 + 56))(v10, v38, 1, v45);
    v39 = sub_21983F764(v37, v10);
    swift_unknownObjectRelease();
    sub_2195D3EF0(v10, sub_218B6AF30);
    v51 = v39;
    v40 = v42;
    sub_219BF07E4();
    v48 = sub_219BF0804();
    type metadata accessor for HeadlineModel(0);
    sub_2195D3E14(&qword_280EDE358, type metadata accessor for HeadlineModel);
    sub_2195D3E14(&qword_280EDE360, type metadata accessor for HeadlineModel);
    sub_219BF0844();
    swift_storeEnumTagMultiPayload();
    sub_2195D3E14(&qword_280ED8650, type metadata accessor for HistoryFeedModel);
    v28 = v50;
    sub_219BE5FB4();
    (*(v49 + 8))(v15, v40);
    v29 = *(v22 - 8);
  }

  else
  {
    (*(v33 + 8))(v15, v42);
    v29 = *(v22 - 8);
    v28 = v50;
    (*(v29 + 16))(v50, v49, v22);
  }

  return (*(v29 + 56))(v28, 0, 1, v22);
}

uint64_t sub_2195D3E14(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2195D3E5C()
{
  if (!qword_27CC1CA80)
  {
    sub_218954178();
    sub_2195D3E14(&qword_27CC184F0, sub_218954178);
    v0 = sub_219BF7494();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1CA80);
    }
  }
}

uint64_t sub_2195D3EF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2195D3F50@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v31 = a5;
  v32 = a6;
  v29 = a3;
  v30 = a4;
  v35 = a2;
  v9 = sub_219BF2164();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF3C84();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, a1, v13);
  v17 = (*(v14 + 88))(v16, v13);
  if (v17 == *MEMORY[0x277D34128] || v17 == *MEMORY[0x277D34108] || v17 == *MEMORY[0x277D34100] || v17 == *MEMORY[0x277D34130] || v17 == *MEMORY[0x277D34110])
  {
    result = (*(v14 + 8))(v16, v13);
    *a7 = MEMORY[0x277D84F90];
  }

  else if (v17 == *MEMORY[0x277D340F0])
  {
    (*(v14 + 96))(v16, v13);
    v23 = (*(v10 + 32))(v12, v16, v9);
    MEMORY[0x28223BE20](v23);
    v24 = v30;
    *(&v29 - 6) = v29;
    *(&v29 - 5) = v24;
    v25 = v32;
    *(&v29 - 4) = v31;
    *(&v29 - 3) = v25;
    *(&v29 - 2) = v12;
    *a7 = sub_21894C248(sub_2195D4700, (&v29 - 8), v35);
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    sub_2195D4610(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_219C09BA0;
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_219BF7484();
    v27 = v33;
    v28 = v34;
    *(v26 + 56) = MEMORY[0x277D837D0];
    *(v26 + 64) = sub_2186FC3BC();
    *(v26 + 32) = v27;
    *(v26 + 40) = v28;
    MEMORY[0x21CEB8D80]("Unknown format item %{public}@ encountered. Please update this switch statement to handle the new case.", 103, 2, v26);

    *a7 = MEMORY[0x277D84F90];
    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_2195D4300@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a6;
  v23 = a3;
  v24 = a4;
  v9 = sub_219BF0BD4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B6AF30(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
  if (swift_unknownObjectWeakLoadStrong())
  {
    v22 = v9;
    swift_getObjectType();
    v9 = v22;
    sub_219BEEFB4();
    swift_unknownObjectRelease();
    (*(v10 + 56))(v15, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(v15, 1, 1, v9);
  }

  v17 = sub_21983F764(v16, v15);
  sub_2195D3EF0(v15, sub_218B6AF30);
  v26 = v17;
  (*(v10 + 16))(v12, v23, v9);
  sub_21871D24C();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_219C09EC0;
  *(v18 + 32) = v24;
  *(v18 + 40) = a5;

  *(v18 + 48) = sub_219BF2154();
  *(v18 + 56) = v19;
  MEMORY[0x21CEC80A0](v18);

  type metadata accessor for HeadlineModel(0);
  sub_2195D3E14(&qword_280EDE358, type metadata accessor for HeadlineModel);
  sub_2195D3E14(&qword_280EDE360, type metadata accessor for HeadlineModel);
  sub_219BF0844();
  type metadata accessor for HistoryFeedModel(0);
  return swift_storeEnumTagMultiPayload();
}

void sub_2195D4610(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2195D4698(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2195D4728(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_2195D4770(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2195D47E4()
{
  sub_218980668(v0, &v7);
  sub_218980668(&v7, v8);
  sub_2189334B8();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_219C09BA0;
  *(v1 + 56) = &type metadata for SearchHomeSectionTitleViewLayoutAttributes;
  *(v1 + 64) = sub_2195D4920();
  v2 = swift_allocObject();
  *(v1 + 32) = v2;
  v3 = v12;
  v2[3] = v11;
  v2[4] = v3;
  v4 = v14;
  v2[5] = v13;
  v2[6] = v4;
  v5 = v10;
  v2[1] = v9;
  v2[2] = v5;
  return v1;
}

uint64_t sub_2195D48A0(uint64_t a1)
{
  v2 = sub_2195D4974();

  return MEMORY[0x2821D5BC0](a1, v2);
}

uint64_t sub_2195D48DC(uint64_t a1)
{
  v2 = sub_2194D720C();

  return MEMORY[0x2821D5688](a1, v2);
}

unint64_t sub_2195D4920()
{
  result = qword_27CC1CA90;
  if (!qword_27CC1CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CA90);
  }

  return result;
}

unint64_t sub_2195D4974()
{
  result = qword_27CC1CA98;
  if (!qword_27CC1CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CA98);
  }

  return result;
}

uint64_t sub_2195D49FC(uint64_t a1, uint64_t a2)
{

  return sub_2194CD450(a1, a2, 0);
}

uint64_t sub_2195D4A44()
{
  sub_21870F2E8(0, &qword_280EE6900);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2195D4A90()
{
  sub_21870F2E8(0, &qword_280EE69D8);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2195D4AE8(void *a1)
{
  v1 = [a1 identifier];
  v2 = sub_219BF5414();
  v4 = v3;

  sub_219BE2184();
  v5 = sub_2188537B8(v2, v4, v7);

  return v5 & 1;
}

unint64_t sub_2195D4B78()
{
  result = qword_27CC1CAB0;
  if (!qword_27CC1CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CAB0);
  }

  return result;
}

unint64_t sub_2195D4BE0()
{
  result = qword_27CC1CAB8[0];
  if (!qword_27CC1CAB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CC1CAB8);
  }

  return result;
}

uint64_t FollowingDislikedCompositionalLayoutOptionsProvider.__allocating_init(blueprintProvider:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 96), a1);
  return v2;
}

uint64_t sub_2195D4D3C()
{
  v0 = sub_219BEA6B4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = *MEMORY[0x277D6EB80];
  v6 = *(v1 + 104);
  v6(&v9 - v7, v5, v0);
  v6(v4, v5, v0);
  return sub_219BE9F44();
}

uint64_t FollowingDislikedCompositionalLayoutOptionsProvider.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SportsModel()
{
  result = qword_27CC1CB40;
  if (!qword_27CC1CB40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2195D5090()
{
  sub_219BF34F4();
  if (v0 <= 0x3F)
  {
    sub_2195D512C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for TagModel();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2195D512C()
{
  if (!qword_27CC1CB50)
  {
    sub_219BF34F4();
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1CB50);
    }
  }
}

uint64_t sub_2195D5184(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F42657069636572;
  }

  else
  {
    v3 = 0x6143657069636572;
  }

  if (v2)
  {
    v4 = 0xED0000676F6C6174;
  }

  else
  {
    v4 = 0xE900000000000078;
  }

  if (*a2)
  {
    v5 = 0x6F42657069636572;
  }

  else
  {
    v5 = 0x6143657069636572;
  }

  if (*a2)
  {
    v6 = 0xE900000000000078;
  }

  else
  {
    v6 = 0xED0000676F6C6174;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

uint64_t sub_2195D523C()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_2195D52D0()
{
  sub_219BF5524();
}

uint64_t sub_2195D5350()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_2195D53E0@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_2195D5440(uint64_t *a1@<X8>)
{
  v2 = 0x6143657069636572;
  if (*v1)
  {
    v2 = 0x6F42657069636572;
  }

  v3 = 0xED0000676F6C6174;
  if (*v1)
  {
    v3 = 0xE900000000000078;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t RecipeFilterRouteModel.identifier.getter()
{
  if (*v0)
  {
    return 0x6F42657069636572;
  }

  else
  {
    return 0x6143657069636572;
  }
}

unint64_t sub_2195D5500()
{
  result = qword_27CC1CB58;
  if (!qword_27CC1CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1CB58);
  }

  return result;
}

uint64_t ShortcutsImageRequestFactory.__allocating_init(assetManager:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

double ShortcutsImageRequestFactory.createImageRequest(assetHandles:screenScale:size:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t ShortcutsImageRequestFactory.createImageRequest(iconURL:size:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_219BDB854();
  [v3 assetHandleForURL:v4 lifetimeHint:1];

  sub_21897A4D4();
  sub_2189EB528();
  v5 = sub_219BE7D54();
  swift_allocObject();
  result = sub_219BE7D44();
  v7 = MEMORY[0x277D6DD38];
  a1[3] = v5;
  a1[4] = v7;
  *a1 = result;
  return result;
}

uint64_t ShortcutsImageRequestFactory.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_2195D5734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40));
  v12 = *(a6 + OBJC_IVAR____TtC7NewsUI216RecentSearchView_titleLabel);
  sub_2192335DC(v12, a1, a2, *(a5 + 168));
  v13 = *(a6 + OBJC_IVAR____TtC7NewsUI216RecentSearchView_imageView);
  v14 = objc_opt_self();
  v15 = [v14 secondaryLabelColor];
  [v13 setTintColor_];

  v16 = *(a6 + OBJC_IVAR____TtC7NewsUI216RecentSearchView_chevron);
  v17 = [v14 secondaryLabelColor];
  [v16 setTintColor_];

  v18 = *(a6 + OBJC_IVAR____TtC7NewsUI216RecentSearchView_separatorView);
  v19 = [v14 separatorColor];
  sub_219BE60D4();
  [v13 setImage_];
  [v13 setFrame_];
  [v12 setFrame_];
  [v16 setImage_];
  [v16 setFrame_];
  v20 = *(a5 + 128);
  v21 = *(a5 + 136);
  v22 = *(a5 + 144);
  v23 = *(a5 + 152);

  return [v18 setFrame_];
}

uint64_t sub_2195D5900()
{
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  swift_getObjectType();
  return sub_219BE5E14();
}

uint64_t sub_2195D59EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2195D5A4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MastheadModelSupplementaryInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SavedFeedConfigFetchResult()
{
  result = qword_280EBA638;
  if (!qword_280EBA638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2195D5B28()
{
  type metadata accessor for SavedFeedContentConfig();
  if (v0 <= 0x3F)
  {
    sub_2186EE86C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void __swiftcall WelcomeModule.createViewController(welcomeType:)(UIViewController *__return_ptr retstr, NewsUI2::WelcomeType welcomeType)
{
  v3 = *welcomeType;
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI213WelcomeModule_resolver), *(v2 + OBJC_IVAR____TtC7NewsUI213WelcomeModule_resolver + 24));
  type metadata accessor for WelcomeViewController();
  *(swift_allocObject() + 16) = v3;
  v4 = sub_219BE1E04();

  if (!v4)
  {
    __break(1u);
  }
}

id WelcomeModule.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WelcomeModule.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2195D5DAC(char *a1)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1((*v1 + OBJC_IVAR____TtC7NewsUI213WelcomeModule_resolver), *(*v1 + OBJC_IVAR____TtC7NewsUI213WelcomeModule_resolver + 24));
  type metadata accessor for WelcomeViewController();
  *(swift_allocObject() + 16) = v2;
  v3 = sub_219BE1E04();

  if (v3)
  {
    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_2195D5EBC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ExternalAnalyticsFeatureAvailability();
  v3 = swift_allocObject();
  a1[3] = v2;
  result = sub_2195D5F10();
  a1[4] = result;
  *a1 = v3;
  return result;
}

unint64_t sub_2195D5F10()
{
  result = qword_280E9B980;
  if (!qword_280E9B980)
  {
    type metadata accessor for ExternalAnalyticsFeatureAvailability();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9B980);
  }

  return result;
}

uint64_t sub_2195D5F68()
{
  v1 = v0;
  v2 = sub_219BE60C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TitleViewLayoutAttributes(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SportsManagementDetailLayoutSectionDescriptor();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218952C4C();
  sub_219BE8184();
  v12 = *(v11 + 3);
  v19[2] = *(v11 + 2);
  v19[3] = v12;
  v20 = *(v11 + 8);
  v13 = *(v11 + 1);
  v19[0] = *v11;
  v19[1] = v13;
  sub_218D57484();
  sub_218A52EFC(&v11[*(v14 + 48)], v8);
  sub_218D57584();
  v15 = sub_219BF5F94();
  v16 = sub_219BE5804();
  (*(v3 + 104))(v5, *MEMORY[0x277D6D4D0], v2);
  sub_219BE60E4();

  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v17 = sub_219BE57F4();
  sub_219357FA0(v19, v17, v8);
  sub_218967CDC(v19);

  sub_218D57660(v8);
  return v15;
}

uint64_t sub_2195D633C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2195D6384(uint64_t a1, uint64_t a2, char a3, char *a4)
{
  v69 = a1;
  ObjectType = swift_getObjectType();
  v66 = sub_219BDE294();
  v63 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2188118D4(0);
  MEMORY[0x28223BE20](v8 - 8);
  v59 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195D89F4(0);
  MEMORY[0x28223BE20](v10 - 8);
  v68 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TodayRouteModel();
  v60 = *(v12 - 8);
  v61 = v12;
  MEMORY[0x28223BE20](v12);
  v55 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2188115CC(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v54 - v17;
  v67 = sub_219BE8C14();
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v70 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2188115CC(0, &qword_280EE3720, MEMORY[0x277D6EC60]);
  v62 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v54 - v22;
  v24 = v21;
  if (a3)
  {
    v25 = &v54 - v22;
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    v57 = qword_280F61728;
    LODWORD(v56) = sub_219BF6214();
    sub_21874E8AC(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_219C09BA0;
    sub_219BDC104();
    sub_21874E2A0(&unk_27CC1CBB0, MEMORY[0x277CC9AF8]);
    v27 = sub_219BF7894();
    v29 = v28;
    *(v26 + 56) = MEMORY[0x277D837D0];
    *(v26 + 64) = sub_2186FC3BC();
    *(v26 + 32) = v27;
    *(v26 + 40) = v29;
    sub_219BE5314();

    v23 = v25;
  }

  v71 = a4;
  sub_21874E2A0(qword_27CC1CBD0, type metadata accessor for TodayViewController);
  v30 = v23;
  sub_219BE7B94();
  sub_219BE8C04();
  v31 = [a4 tabBarSplitViewFocusable];
  if (v31)
  {
    [v31 toggleSplitViewFocusTo_];
    swift_unknownObjectRelease();
  }

  v32 = *&a4[OBJC_IVAR____TtC7NewsUI219TodayViewController_eventHandler];
  sub_219BDC0F4();
  v69 = v24;
  ObjectType = v30;
  sub_219BEB364();
  v33 = *(v32 + 40);
  v34 = swift_getObjectType();
  v35 = v18;
  v36 = v34;
  v37 = v16;
  v38 = *(v16 + 16);
  v39 = v59;
  v57 = v35;
  v38(v59);
  v40 = *(v16 + 56);
  v56 = v15;
  v40(v39, 0, 1, v15);
  v42 = v63;
  v41 = v64;
  v43 = v66;
  (*(v63 + 104))(v64, *MEMORY[0x277D2FF08], v66);
  v44 = *(v33 + 112);
  v45 = v33;
  v46 = v68;
  v44(a2, v39, v41, v36, v45);
  (*(v42 + 8))(v41, v43);
  sub_2195D8A28(v39, sub_2188118D4);
  if ((*(v60 + 48))(v46, 1, v61) == 1)
  {
    (*(v37 + 8))(v57, v56);
    (*(v65 + 8))(v70, v67);
    (*(v62 + 8))(ObjectType, v69);
    sub_2195D8A28(v46, sub_2195D89F4);
  }

  else
  {
    v47 = v55;
    sub_2195D8A88(v46, v55);
    sub_2192B2CB0(a2, v47);
    v48 = *(v32 + 40);
    v49 = swift_getObjectType();
    v50 = *(*(v32 + 88) + 32);
    v51 = *(v48 + 104);

    v52 = v70;
    v51(a2, v47, v50, v70, v49, v48);

    sub_2195D8A28(v47, type metadata accessor for TodayRouteModel);
    (*(v37 + 8))(v57, v56);
    (*(v65 + 8))(v52, v67);
    (*(v62 + 8))(ObjectType, v69);
  }

  sub_2195D8900(0, &qword_280EE6900, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2195D6BA4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v31 = sub_219BE8C14();
  v8 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v30 = ObjectType;
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    v29 = qword_280F61728;
    v28[3] = sub_219BF6214();
    sub_21874E8AC(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_219C09BA0;
    sub_219BDC104();
    sub_21874E2A0(&unk_27CC1CBB0, MEMORY[0x277CC9AF8]);
    v17 = sub_219BF7894();
    v19 = v18;
    *(v16 + 56) = MEMORY[0x277D837D0];
    *(v16 + 64) = sub_2186FC3BC();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    sub_219BE5314();
  }

  v32 = a4;
  sub_21874E2A0(&unk_27CC1CBA0, type metadata accessor for TagFeedViewController);
  sub_219BE7B94();
  sub_219BE8C04();
  v20 = *(a4 + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_eventHandler);
  sub_218B3C2F8();
  v21 = *(v20 + 40);
  v22 = swift_getObjectType();
  (*(v21 + 48))(a2, 0, v10, v22, v21);
  v23 = *(a4 + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_searchCoordinator);
  if (!v23)
  {
    goto LABEL_9;
  }

  v24 = OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_isSearchPresented;
  *(v23 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_isSearchPresented) = 0;
  v25 = OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_searchController;
  v26 = *(v23 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_searchController);
  swift_unknownObjectRetain();
  if ([v26 isActive] == *(v23 + v24))
  {
    swift_unknownObjectRelease();
LABEL_9:
    (*(v8 + 8))(v10, v31);
    (*(v13 + 8))(v15, v12);
    goto LABEL_10;
  }

  [*(v23 + v25) setActive_];
  (*(v8 + 8))(v10, v31);
  (*(v13 + 8))(v15, v12);
  swift_unknownObjectRelease();
LABEL_10:
  sub_2195D8900(0, &qword_280EE6900, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

void sub_2195D7058(uint64_t *a1, void *a2)
{
  v4 = sub_219BE8C14();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_219BE9414();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  sub_219BF6214();
  sub_219BE5314();

  v10 = sub_219BF53D4();

  v24[0] = a2;
  v11 = [a2 objectForKey_];

  if (v11)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(v25, v26);
    sub_2186CF94C();
    swift_dynamicCast();
    v12 = *(v9 + 16);
    v13 = objc_allocWithZone(type metadata accessor for FeedViewContext());
    swift_unknownObjectRetain();
    v14 = [v13 init];
    v15 = swift_allocObject();
    *(v15 + 16) = v12;
    *(v15 + 24) = v14;
    *(v15 + 32) = 0;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0u;
    *(v15 + 72) = 0u;
    *(v15 + 88) = 0;
    *(v15 + 96) = -1;
    *&v26[0] = v15 | 0x2000000000000004;
    sub_219BE8C04();
    sub_219BE9424();
    v16 = v24[1];
    sub_219BE6474();
    if (v16)
    {

      (*(v6 + 8))(v8, v5);
      sub_218932F9C(*&v26[0]);
      return;
    }

    (*(v6 + 8))(v8, v5);
    sub_218932F9C(*&v26[0]);

    v17 = sub_219BF53D4();

    v18 = [v24[0] objectForKey_];

    if (v18)
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
      sub_218751558(v25, v26);
      sub_2186C6148(0, &qword_280E8E480);
      swift_dynamicCast();
      v19 = v27;
      sub_2195D882C(0, &qword_280EE69A0, &qword_280E8E480, 0x277D75D28, sub_2186C6148);
      sub_2186C6148(0, &qword_280E8E3B0);
      v20 = sub_219BF66A4();
      *(swift_allocObject() + 16) = v19;
      type metadata accessor for TagFeedViewController();
      v21 = v19;
      sub_219BE2FB4();

      *(swift_allocObject() + 16) = v21;
      v22 = v21;
      v23 = sub_219BE2E54();
      sub_219BE3054();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2195D758C(void **a1, void *a2)
{
  v3 = *a1;
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();

  v4 = sub_219BF53D4();

  [a2 setObject:v3 forKey:v4];

  sub_219BF6214();
  v5 = sub_219BE5314();
  MEMORY[0x28223BE20](v5);
  sub_2195D882C(0, &qword_27CC1CB90, &qword_27CC1CB98, sub_21898BF70, sub_2195D897C);
  swift_allocObject();
  sub_219BE30B4();
  v6 = swift_allocObject();
  *(v6 + 16) = 1;
  *(v6 + 24) = v3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2195D8888;
  *(v7 + 24) = v6;
  v8 = v3;
  v9 = sub_219BE2E54();
  v10 = sub_219BE2F64();

  return v10;
}

void sub_2195D7820(char a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v41 = a4;
  v42 = a3;
  v38 = a2;
  v7 = sub_219BED174();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BED1D4();
  v39 = *(v11 - 8);
  v40 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BED214();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - v19;
  if (a1)
  {
    v37 = v8;
    v21 = a5;
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    sub_2186C6148(0, &qword_280E8E3B0);
    v35 = sub_219BF66A4();
    sub_219BED1F4();
    sub_219BED244();
    v36 = *(v15 + 8);
    v36(v18, v14);
    v22 = swift_allocObject();
    v34 = v14;
    v23 = v38;
    v24 = v41;
    v25 = v42;
    v22[2] = v38;
    v22[3] = v25;
    v22[4] = v24;
    v22[5] = v21;
    v47 = sub_2195D87EC;
    v48 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_218793E0C;
    v46 = &block_descriptor_25_2;
    v26 = _Block_copy(&aBlock);
    v27 = v23;
    v28 = v25;

    sub_219BED1A4();
    aBlock = MEMORY[0x277D84F90];
    sub_21874E2A0(&qword_280E927E0, MEMORY[0x277D85198]);
    sub_21879DD98();
    sub_21874E2A0(&qword_280E8EFA0, sub_21879DD98);
    sub_219BF7164();
    v29 = v35;
    MEMORY[0x21CECD420](v20, v13, v10, v26);
    _Block_release(v26);

    (*(v37 + 8))(v10, v7);
    (*(v39 + 8))(v13, v40);
    v36(v20, v34);
  }

  else
  {
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    v30 = [v42 application];
    v31 = swift_allocObject();
    *(v31 + 16) = v41;
    *(v31 + 24) = a5;
    v47 = sub_2195D8AF0;
    v48 = v31;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_218793E0C;
    v46 = &block_descriptor_143;
    v32 = _Block_copy(&aBlock);

    [v30 ts:v32 installCACommitCompletionBlock:?];
    _Block_release(v32);
  }
}

void sub_2195D7DBC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  swift_getObjectType();
  sub_2195D8900(0, &qword_280EE3930, MEMORY[0x277D6EBE8]);
  sub_219BEA9A4();
  sub_219BE70A4();

  sub_219BF6214();
  sub_219BE5314();
  v7 = [a2 application];
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  aBlock[4] = sub_2189A4488;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_31_2;
  v9 = _Block_copy(aBlock);

  [v7 ts:v9 installCACommitCompletionBlock:?];
  _Block_release(v9);
}

void sub_2195D8174(void *a1, void *a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);

  v7 = sub_219BF53D4();

  v8 = [a1 objectForKey_];

  if (v8)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(v29, v30);
    swift_dynamicCast();
    if (v28 == 4)
    {
      v9 = 1;
      goto LABEL_6;
    }

    if (v28 == 8)
    {
      v9 = 0;
LABEL_6:
      if (qword_280E8D830 != -1)
      {
        swift_once();
      }

      sub_219BF6214();
      sub_219BE5314();
      sub_219BF6214();
      v10 = sub_219BE5314();
      MEMORY[0x28223BE20](v10);
      type metadata accessor for TagModel();
      sub_219BE3204();
      sub_2186C6148(0, &qword_280E8E3B0);
      v11 = sub_219BF66A4();
      *(swift_allocObject() + 16) = a1;
      type metadata accessor for TagFeedViewController();
      v12 = a1;
      sub_219BE2F64();

      *(swift_allocObject() + 16) = v12;
      v13 = v12;
      v14 = sub_219BE2E54();
      sub_219BE2F64();

      v15 = swift_allocObject();
      *(v15 + 16) = v9;
      *(v15 + 24) = a2;
      *(v15 + 32) = v13;
      *(v15 + 40) = sub_218967168;
      *(v15 + 48) = v6;
      v16 = swift_allocObject();
      *(v16 + 16) = sub_2195D87DC;
      *(v16 + 24) = v15;
      v17 = v13;
      v18 = a2;

      v19 = sub_219BE2E54();
      sub_219BE2F74();

      v20 = swift_allocObject();
      *(v20 + 16) = sub_218967168;
      *(v20 + 24) = v6;

      v21 = sub_219BE2E54();
      sub_219BE2FD4();

      goto LABEL_11;
    }

    *&v30[0] = 0;
    *(&v30[0] + 1) = 0xE000000000000000;
    sub_219BF7314();
    MEMORY[0x21CECC330](0xD00000000000003BLL, 0x8000000219CFD140);

    v22 = sub_219BF53D4();

    v23 = [a1 objectForKey_];

    if (v23)
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
      sub_218751558(v29, v30);
      swift_dynamicCast();
      LOBYTE(v30[0]) = v27;
      v24 = PPT.Test.rawValue.getter();
      MEMORY[0x21CECC330](v24);

      v25 = objc_allocWithZone(MEMORY[0x277D6D138]);
      v26 = sub_219BF53D4();

      v21 = [v25 initWithMessage_];

      (a3)[2](a3, v21);
LABEL_11:

      return;
    }
  }

  else
  {
    _Block_release(a3);
    __break(1u);
  }

  _Block_release(a3);
  __break(1u);
}

uint64_t sub_2195D871C()
{
  v0 = off_282A4D750[0];
  type metadata accessor for TagService();
  return v0();
}

void sub_2195D882C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_219BE3114();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2195D8894(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_2195D897C(0, &qword_27CC1CB98, sub_21898BF70);
  return v3(a1, a1 + *(v4 + 48));
}

void sub_2195D8900(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D84F78] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2195D897C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_219BDC104();
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2195D8A28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2195D8A88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayRouteModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2195D8AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a3;
  v41 = a4;
  v35 = a1;
  sub_218B7E48C();
  v34 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v33 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEF584();
  v38 = *(v8 - 8);
  v39 = v8;
  MEMORY[0x28223BE20](v8);
  v29 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BEF2A4();
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BEF974();
  v32 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AudioPlaylistFeedLayoutModel();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3F654();
  sub_219BE75E4();
  (*(v14 + 32))(v16, v19, v13);
  v31 = *(v4 + 40);
  ObjectType = swift_getObjectType();
  sub_219BEF574();
  v20 = swift_allocObject();
  swift_weakInit();
  v22 = v33;
  v21 = v34;
  (*(v6 + 16))(v33, v35, v34);
  v23 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  (*(v6 + 32))(v24 + v23, v22, v21);

  v25 = v29;
  sub_219BEECD4();

  (*(v38 + 8))(v25, v39);

  v26 = sub_219BEF294();
  (*(v36 + 8))(v12, v37);
  (*(v14 + 8))(v16, v32);
  return v26;
}

uint64_t sub_2195D8EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_219BF0894();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_219BEDF44();
    if ((*(v5 + 88))(v7, v4) == *MEMORY[0x277D32F88])
    {
      (*(v5 + 96))(v7, v4);
      v9 = sub_219BF13B4();
      v10 = *(v9 - 8);
      if ((*(v10 + 88))(v7, v9) == *MEMORY[0x277D33328])
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v12 = *(*(Strong + OBJC_IVAR____TtC7NewsUI231AudioPlaylistFeedViewController_eventHandler) + 40);
          ObjectType = swift_getObjectType();
          (*(v12 + 64))(a3, ObjectType, v12);

          return swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {

        return (*(v10 + 8))(v7, v9);
      }
    }

    else
    {

      return (*(v5 + 8))(v7, v4);
    }
  }

  return result;
}

uint64_t sub_2195D91E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2195D922C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_2195D8AF8(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_2195D925C(uint64_t a1)
{
  sub_218B7E48C();
  v4 = *(v1 + 16);
  v5 = v1 + ((*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80));

  return sub_2195D8EF4(a1, v4, v5);
}

void sub_2195D92E4()
{
  if (!qword_280E921E0)
  {
    type metadata accessor for PuzzleFeaturedTagFeedGroupConfigData();
    sub_2195D93B0(&qword_280E9AC68, type metadata accessor for PuzzleFeaturedTagFeedGroupConfigData);
    sub_2195D93B0(&qword_280E9AC70, type metadata accessor for PuzzleFeaturedTagFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E921E0);
    }
  }
}

uint64_t sub_2195D93B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PuzzleFeaturedTagFeedGroupEmitter()
{
  result = qword_280EA2800;
  if (!qword_280EA2800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2195D9458()
{
  sub_2195D92E4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E90510);
      if (v2 <= 0x3F)
      {
        sub_2186CFDE4(319, &qword_280E90130);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2195D9534()
{
  sub_2195DB924(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2195D95B4(uint64_t a1)
{
  v3 = type metadata accessor for PuzzleFeaturedTagFeedGroupEmitter();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[4] = a1;
  v19 = v1;
  v18[0] = v1;
  sub_218A35A80();
  sub_219BE3204();
  sub_2195DBB50(v1, v6, type metadata accessor for PuzzleFeaturedTagFeedGroupEmitter);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18[1] = v7 + v5;
  v8 = (v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  sub_2195DA618(v6, v9 + v7);
  *(v9 + v8) = a1;

  v10 = sub_219BE2E54();
  sub_219BF1904();
  sub_219BE2F64();

  v11 = v18[0];
  sub_2195DBB50(v18[0], v6, type metadata accessor for PuzzleFeaturedTagFeedGroupEmitter);
  v12 = swift_allocObject();
  sub_2195DA618(v6, v12 + v7);
  *(v12 + v8) = a1;

  v13 = sub_219BE2E54();
  sub_218A59C84();
  sub_219BE2F64();

  sub_2195DBB50(v11, v6, type metadata accessor for PuzzleFeaturedTagFeedGroupEmitter);
  v14 = swift_allocObject();
  sub_2195DA618(v6, v14 + v7);
  v15 = sub_219BE2E54();
  v16 = sub_219BE3064();

  return v16;
}

uint64_t sub_2195D9868@<X0>(unint64_t *a1@<X8>)
{
  sub_2195D92E4();
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x9000000000000002;
  return result;
}

uint64_t sub_2195D98E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs();
  a2[4] = sub_2195D93B0(&qword_280EA86F0, type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs);
  a2[5] = sub_2195D93B0(&qword_27CC1CC18, type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_2195DBB50(v2 + v4, boxed_opaque_existential_1, type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs);
}

uint64_t sub_2195D99B0()
{
  type metadata accessor for PuzzleFeaturedTagFeedGroupEmitter();
  sub_2189AD5C8();
  v0 = sub_219BEE964();
  sub_2195DB924(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  sub_218A59E00(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;
  sub_2195DBAB4(0, &qword_280E91240, MEMORY[0x277D328E0]);
  swift_allocObject();
  *(v5 + v4) = sub_219BEFB94();
  (*(v3 + 104))(v5 + v4, *MEMORY[0x277D32308], v2);
  sub_2191EDA0C(v5);
  return v0;
}

uint64_t sub_2195D9B80()
{
  sub_2195D92E4();

  return sub_219BEDCA4();
}

uint64_t sub_2195D9BAC@<X0>(uint64_t *a1@<X8>)
{
  sub_2195DB924(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2195D92E4();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218D13D50(inited + 32, sub_2188317B0);
  sub_2195DBBB8(0);
  a1[3] = v5;
  a1[4] = sub_2195D93B0(&qword_27CC1CC28, sub_2195DBBB8);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_2195D9D30()
{
  sub_2195D93B0(&unk_27CC1CBF8, type metadata accessor for PuzzleFeaturedTagFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_2195D9F04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleFeaturedTagFeedGroupEmitter();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEF0B4();
  v8 = *(v19[3] + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v9 = [v8 backingTag];

  v10 = [v9 identifier];
  swift_unknownObjectRelease();
  v11 = sub_219BF5414();
  v13 = v12;

  sub_2195DB924(0, &qword_280EE6A60, sub_218A35A80, MEMORY[0x277D6CF30]);
  sub_2195DBB50(a2, v7, type metadata accessor for PuzzleFeaturedTagFeedGroupEmitter);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  sub_2195DA618(v7, v16 + v14);
  *(v16 + v15) = a1;
  v17 = (v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v17 = v11;
  v17[1] = v13;

  return sub_219BE2F54();
}

uint64_t sub_2195DA13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = sub_219BF0BD4();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2195DA204, 0, 0);
}

uint64_t sub_2195DA204()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v17 = *(v0 + 40);
  v16 = type metadata accessor for PuzzleFeaturedTagFeedGroupEmitter();
  type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs();
  sub_219BEF134();
  sub_219BEF524();
  v4 = *(v2 + 8);
  v4(v1, v3);
  v18 = *(v0 + 16);
  sub_219BEF134();
  sub_219BEF524();
  v5 = v3;
  v4(v1, v3);
  v15 = *(v0 + 24);
  sub_219BEF134();
  sub_219BEF524();
  v4(v1, v3);
  v6 = *(v0 + 112);
  sub_219BEF134();
  sub_219BEF524();
  v4(v1, v5);
  v7 = *(v0 + 113);
  v8 = (v17 + *(v16 + 28));
  v9 = v8[3];
  v10 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v11 = swift_task_alloc();
  *(v0 + 96) = v11;
  *v11 = v0;
  v11[1] = sub_218FCE4D4;
  v13 = *(v0 + 56);
  v12 = *(v0 + 64);

  return MEMORY[0x282192D88](v13, v12, v18, v15, v6, v7, v9, v10);
}

uint64_t sub_2195DA424(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_219BF2034();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (*a1 >> 62)
  {
    v13 = *a1;
    v14 = sub_219BF7214();
    v11 = v13;
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = sub_219BEEDD4();
    sub_2195D93B0(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D323A8], v15);
    swift_willThrow();
    return v4;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_2195DA714(v11, v10);
  v12 = sub_2195DAB98(a3, v10);
  if (!v3)
  {
    v4 = v12;
  }

  (*(v8 + 8))(v10, v7);
  return v4;
}

uint64_t sub_2195DA618(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleFeaturedTagFeedGroupEmitter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2195DA67C(unint64_t *a1)
{
  v3 = *(type metadata accessor for PuzzleFeaturedTagFeedGroupEmitter() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_2195DA424(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

size_t sub_2195DA714@<X0>(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_2195DB924(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v24 - v5;
  v7 = sub_219BF3C84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2195DB924(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v11 = *(sub_219BF3E84() - 8);
  v24[2] = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09BA0;
  if (a1 >> 62)
  {
    v13 = sub_219BF7214();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x277D84F90];
  v24[3] = v12;
  if (!v13)
  {
LABEL_13:
    sub_218F0B984(v14);
    sub_218F0BA7C(v14);
    sub_218F0BB90(v14);
    sub_219BF3E74();
    v23 = sub_219BEC004();
    (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
    sub_219A95188(v14);
    sub_219A95188(v14);
    sub_219A951A0(v14);
    sub_219A951B8(v14);
    sub_219A952CC(v14);
    sub_219A952E4(v14);
    sub_219A953F8(v14);
    return sub_219BF2024();
  }

  v15 = a1;
  v27 = MEMORY[0x277D84F90];
  result = sub_218C34A88(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v24[0] = v6;
    v24[1] = a2;
    v17 = 0;
    v18 = v27;
    v19 = v15;
    v26 = v15 & 0xC000000000000001;
    v25 = *MEMORY[0x277D34118];
    v24[4] = v8 + 32;
    do
    {
      if (v26)
      {
        v20 = MEMORY[0x21CECE0F0](v17, v19);
      }

      else
      {
        v20 = swift_unknownObjectRetain();
      }

      *v10 = v20;
      (*(v8 + 104))(v10, v25, v7);
      v27 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_218C34A88(v21 > 1, v22 + 1, 1);
        v18 = v27;
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v8 + 32))(v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v22, v10, v7);
      v19 = v15;
    }

    while (v13 != v17);
    v6 = v24[0];
    v14 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_2195DAB98(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_2195DB924(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - v5;
  sub_2195DB924(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - v8;
  sub_2195DB924(0, &qword_280E91A70, sub_2189AD5C8, v3);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  v13 = sub_219BF2AB4();
  v37 = *(v13 - 8);
  v38 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PuzzleFeaturedTagFeedGroupConfigData();
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (v2 + *(type metadata accessor for PuzzleFeaturedTagFeedGroupEmitter() + 24));
  v21 = v20[3];
  v35 = v20[4];
  v36 = v21;
  v34 = __swift_project_boxed_opaque_existential_1(v20, v21);
  sub_2195D92E4();
  sub_219BEDD14();
  v33 = *(v17 + 28);
  sub_2189AD5C8();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  sub_219BEF0B4();
  v23 = *(v41 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v24 = sub_219BF35D4();
  (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
  v40 = 38;
  sub_2195DBAB4(0, &qword_280E90090, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  v25 = *(v41 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v26 = sub_219BF2774();
  (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
  v27 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v27 != -1)
  {
    swift_once();
  }

  qword_280F61708;
  sub_219BF2A84();
  v28 = v33;
  v29 = sub_219BF2194();
  (*(v37 + 8))(v15, v38);
  v30 = sub_219BF1934();
  (*(*(v30 - 8) + 8))(&v19[v28], v30);
  return v29;
}

uint64_t sub_2195DB0C4(uint64_t a1)
{
  sub_218A59C84();
  MEMORY[0x28223BE20](v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TagFeedGroup();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195DB2F0(a1, v7);
  sub_2195DBB50(v7, v4, type metadata accessor for TagFeedGroup);
  swift_storeEnumTagMultiPayload();
  sub_2195DB924(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v8 = sub_219BE3014();
  sub_218D13D50(v7, type metadata accessor for TagFeedGroup);
  return v8;
}

uint64_t sub_2195DB2F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  sub_2195DB924(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v21 = v19 - v4;
  v5 = sub_219BEF554();
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v19[0] = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = sub_219BF1904();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BED8D4();
  v12 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  sub_2195D92E4();
  v15 = sub_219BEDCB4();
  v19[1] = v16;
  v19[2] = v15;
  sub_219BEDCC4();
  sub_219BEDCC4();
  type metadata accessor for PuzzleFeaturedTagFeedGroupEmitter();
  sub_2189AD5C8();
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  v17 = sub_219BEE5D4();
  (*(*(v17 - 8) + 56))(v21, 1, 1, v17);
  sub_219BED854();
  (*(v12 + 32))(v22, v14, v20);
  type metadata accessor for TagFeedGroup();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2195DB694(void *a1)
{
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F625E0);
  v3 = a1;
  v4 = sub_219BE5414();
  v5 = sub_219BF61F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2186C1000, v4, v5, "Error while trying to emit Puzzle Featured group: %@", v6, 0xCu);
    sub_218D13D50(v7, sub_2189B3F3C);
    MEMORY[0x21CECF960](v7, -1, -1);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  type metadata accessor for PuzzleFeaturedTagFeedGroupEmitter();
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for TagFeedGroup();
  sub_2195D93B0(&qword_280EDE9C0, type metadata accessor for TagFeedGroup);
  return sub_219BEF194();
}

void sub_2195DB924(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2195DB988(uint64_t a1)
{
  v4 = *(type metadata accessor for PuzzleFeaturedTagFeedGroupEmitter() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v6);
  v8 = (v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2187608D4;

  return sub_2195DA13C(a1, v1 + v5, v7, v9, v10);
}

void sub_2195DBAB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TagFeedServiceConfig();
    v7 = sub_2195D93B0(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2195DBB50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2195DBBEC()
{
  sub_2186C66AC();
  v1 = sub_219BF6F44();
  sub_219BF6214();
  sub_219BE5314();

  sub_21938669C();
  if (v2)
  {
    v3 = v2;
    __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
    sub_219BE5D84();
    v4 = sub_219BE1E24();
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = v4;
    sub_219BE5D54();
  }

  else
  {
    sub_219BF61F4();
    v5 = sub_219BF6F44();
    sub_219BE5314();
  }
}

uint64_t type metadata accessor for NewFollowTodayFeedGroupEmitter()
{
  result = qword_280EAC1E0;
  if (!qword_280EAC1E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2195DBE5C()
{
  sub_2186E06DC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for NewFollowTodayFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E90510);
      if (v2 <= 0x3F)
      {
        sub_2186C6148(319, &qword_280E8DE40);
        if (v3 <= 0x3F)
        {
          sub_2186CFDE4(319, &unk_280E90620);
          if (v4 <= 0x3F)
          {
            sub_2186CFDE4(319, &unk_280E90370);
            if (v5 <= 0x3F)
            {
              sub_2186CFDE4(319, &qword_280E910C0);
              if (v6 <= 0x3F)
              {
                sub_2186C6148(319, &qword_280E8E6C0);
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

uint64_t sub_2195DBFD8(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_2195DBFFC, 0, 0);
}

uint64_t sub_2195DBFFC()
{
  v1 = swift_task_alloc();
  v0[3].i64[0] = v1;
  v1[1] = vextq_s8(v0[2], v0[2], 8uLL);
  v2 = swift_task_alloc();
  v0[3].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_2195DC0D8;

  return MEMORY[0x282190858](&v0[1], &type metadata for NewFollowTodayFeedGroupEmitterCursor, &unk_219C90678, v1, &type metadata for NewFollowTodayFeedGroupEmitterCursor);
}

uint64_t sub_2195DC0D8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2195DC3D4;
  }

  else
  {

    v2 = sub_2195DC1F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2195DC1F4()
{
  v1 = v0[2];
  v0[9] = v1;
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_2195DC298;
  v3 = v0[4];
  v4 = v0[3];

  return sub_2195DCB54(v4, v3, v1);
}

uint64_t sub_2195DC298()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2195DC438, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2195DC3D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2195DC438()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2195DC49C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_218D42644;

  return sub_2195DC53C(a3);
}

uint64_t sub_2195DC53C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  type metadata accessor for TodayFeedServiceContext();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2195DC5CC, 0, 0);
}

uint64_t sub_2195DC5CC()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = type metadata accessor for NewFollowTodayFeedGroupEmitter();
  v4 = *(v2 + *(v3 + 28));
  sub_219BEF0B4();
  sub_2188535C8(v0[2] + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_context, v1, type metadata accessor for TodayFeedServiceContext);

  v5 = *(v1 + 16);
  sub_2195E1B60(v1, type metadata accessor for TodayFeedServiceContext);
  v6 = [v4 newlySubscribedTagIDsInDateRange_];

  if (v6)
  {
    v7 = sub_219BF5924();

    if (*(v7 + 16))
    {
      sub_219BEF0B4();
      v8 = *(v0[3] + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
      swift_unknownObjectRetain();

      sub_219BEF0B4();
      sub_2195DDDC4(v8, v0[4], v7);
      v13 = v0[7];
      swift_unknownObjectRelease();

      __swift_project_boxed_opaque_existential_1((v13 + *(v3 + 32)), *(v13 + *(v3 + 32) + 24));
      v0[9] = sub_219BF1C34();

      v14 = swift_task_alloc();
      v0[10] = v14;
      *v14 = v0;
      v14[1] = sub_2195DC900;

      return MEMORY[0x2821D23D8](v0 + 5);
    }
  }

  v9 = sub_219BEEDD4();
  sub_2195E1B18(&qword_280E917E0, MEMORY[0x277D32430]);
  swift_allocError();
  (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277D323A8], v9);
  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_2195DC900()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_2195DCAE8;
  }

  else
  {

    v2 = sub_2195DCA1C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2195DCA1C()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v2 + 16) = *(v0 + 48);
  v3 = sub_218F9085C(sub_2195E12A4, v2, v1);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_2195DCAE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2195DCB54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  type metadata accessor for TodayFeedGroup();
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2195DCBE8, 0, 0);
}

uint64_t sub_2195DCBE8()
{
  v1 = v0[9];
  if (v1)
  {
    v0[12] = sub_2194CA6EC(v1);
    v0[13] = v2;
    v0[14] = v3;
    v4 = v2;
    sub_219BEF164();
    v0[15] = v0[4];
    v9 = swift_task_alloc();
    v0[16] = v9;
    sub_2186D8D60(0, &qword_280E8EC00, sub_218731D50, MEMORY[0x277D83940]);
    v11 = v10;
    v12 = sub_2186CFDE4(0, &qword_280E8B580);
    v0[17] = v12;
    *v9 = v0;
    v9[1] = sub_2195DCE38;
    v13 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v0 + 5, v4, v11, v12, v13);
  }

  else
  {
    v5 = sub_219BEEDD4();
    sub_2195E1B18(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D323C8], v5);
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2195DCE38()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_2195DD698;
  }

  else
  {
    v2 = sub_2195DCF4C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2195DCF4C()
{
  v1 = v0[18];
  sub_2195DE418(v0[8], v0[15], v0[5]);
  v3 = v2;
  v0[19] = v2;

  if (v1)
  {
    v0[23] = v1;
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    sub_2186F20D4();
    v4 = swift_allocObject();
    v0[2] = 0;
    *(v4 + 16) = xmmword_219C09BA0;
    v0[3] = 0xE000000000000000;
    v0[6] = v1;
    sub_219BF7484();
    v5 = v0[2];
    v6 = v0[3];
    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 64) = sub_2186FC3BC();
    *(v4 + 32) = v5;
    *(v4 + 40) = v6;
    sub_219BE5314();

    v7 = swift_task_alloc();
    v0[24] = v7;
    *v7 = v0;
    v7[1] = sub_2195DD4E8;
    v8 = v0[14];
    v9 = v0[7];
    v10 = v0[8];

    return sub_2195DCB54(v9, v10, v8);
  }

  else
  {
    v12 = swift_task_alloc();
    v0[20] = v12;
    *v12 = v0;
    v12[1] = sub_2195DD1A4;
    v13 = v0[12];
    v14 = v0[8];

    return sub_2195DEE98(v14, v13, v3);
  }
}

uint64_t sub_2195DD1A4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = sub_2195DD838;
  }

  else
  {

    v4 = sub_2195DD2C0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2195DD2C0()
{
  v1 = v0[14];
  sub_2195E06C8(v0[21], v0[11]);
  if (v1)
  {
    v2 = v0[14];
    v3 = v0[11];
    v4 = v0[7];
    sub_218B8B468();
    v6 = (v4 + *(v5 + 48));
    sub_2188535C8(v3, v4, type metadata accessor for TodayFeedGroup);
    v6[3] = &type metadata for NewFollowTodayFeedGroupEmitterCursor;

    swift_unknownObjectRelease();

    *v6 = v2;
    sub_2195E1B60(v3, type metadata accessor for TodayFeedGroup);
  }

  else
  {
    v7 = v0[11];
    v8 = v0[7];

    swift_unknownObjectRelease();

    sub_2195E12C0(v7, v8, type metadata accessor for TodayFeedGroup);
  }

  sub_21903485C(0, &qword_280E91700, type metadata accessor for TodayFeedGroup, sub_218B8B16C, MEMORY[0x277D324E8]);
  swift_storeEnumTagMultiPayload();

  v9 = v0[1];

  return v9();
}

uint64_t sub_2195DD4E8()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_2195DD9E0;
  }

  else
  {
    v2 = sub_2195DD5FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2195DD5FC()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2195DD698()
{
  v1 = v0[18];
  v0[23] = v1;
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v2 = swift_allocObject();
  v0[2] = 0;
  *(v2 + 16) = xmmword_219C09BA0;
  v0[3] = 0xE000000000000000;
  v0[6] = v1;
  sub_219BF7484();
  v3 = v0[2];
  v4 = v0[3];
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_2186FC3BC();
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  sub_219BE5314();

  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = sub_2195DD4E8;
  v6 = v0[14];
  v7 = v0[7];
  v8 = v0[8];

  return sub_2195DCB54(v7, v8, v6);
}

uint64_t sub_2195DD838()
{

  v1 = v0[22];
  v0[23] = v1;
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v2 = swift_allocObject();
  v0[2] = 0;
  *(v2 + 16) = xmmword_219C09BA0;
  v0[3] = 0xE000000000000000;
  v0[6] = v1;
  sub_219BF7484();
  v3 = v0[2];
  v4 = v0[3];
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_2186FC3BC();
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  sub_219BE5314();

  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = sub_2195DD4E8;
  v6 = v0[14];
  v7 = v0[7];
  v8 = v0[8];

  return sub_2195DCB54(v7, v8, v6);
}

uint64_t sub_2195DD9E0()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2195DDA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_2186D8D60(0, qword_280EDB700, type metadata accessor for TodayFeedGroup, MEMORY[0x277D83D88]);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for TodayFeedGroup();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2195DDB9C, 0, 0);
}

uint64_t sub_2195DDB9C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  sub_21903485C(0, &qword_280E91120, type metadata accessor for TodayFeedGroup, sub_218B8B16C, MEMORY[0x277D32AB8]);
  v5 = v4;
  sub_219BEFDA4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2195E11D0(*(v0 + 48), qword_280EDB700, type metadata accessor for TodayFeedGroup);
  }

  else
  {
    sub_2195E12C0(*(v0 + 48), *(v0 + 72), type metadata accessor for TodayFeedGroup);
    sub_219BEF164();
    v8 = *(v0 + 72);
    v10 = sub_21899D954(*(v0 + 16));

    sub_2195E1B60(v8, type metadata accessor for TodayFeedGroup);
    if (v10)
    {
      sub_219034698(*(v0 + 40), *(v0 + 24));
      v6 = 0;
      goto LABEL_4;
    }
  }

  v6 = 1;
LABEL_4:
  (*(*(v5 - 8) + 56))(*(v0 + 24), v6, 1, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2195DDDC4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2195E09FC(a1);
  v5 = result;
  v6 = *(a3 + 16);
  if (!v6)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_23:

    if (!*(v9 + 16))
    {

      v24 = sub_219BEEDD4();
      sub_2195E1B18(&qword_280E917E0, MEMORY[0x277D32430]);
      swift_allocError();
      (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D323A8], v24);
      swift_willThrow();
    }

    return v9;
  }

  v7 = 0;
  v26 = a3 + 32;
  v8 = result + 56;
  v9 = MEMORY[0x277D84F90];
  v27 = v6;
  while (v7 < v6)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_27;
    }

    v11 = (v26 + 16 * v7);
    v13 = *v11;
    v12 = v11[1];
    ++v7;
    if (!*(v5 + 16))
    {

      goto LABEL_15;
    }

    sub_219BF7AA4();

    sub_219BF5524();
    v14 = sub_219BF7AE4();
    v15 = -1 << *(v5 + 32);
    v16 = v14 & ~v15;
    if ((*(v8 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
    {
      v17 = ~v15;
      while (1)
      {
        v18 = (*(v5 + 48) + 16 * v16);
        v19 = *v18 == v13 && v18[1] == v12;
        if (v19 || (sub_219BF78F4() & 1) != 0)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v8 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v6 = v27;
      if (v10 == v27)
      {
        goto LABEL_23;
      }
    }

    else
    {
LABEL_15:
      result = swift_isUniquelyReferenced_nonNull_native();
      v28 = v9;
      if ((result & 1) == 0)
      {
        result = sub_21870B65C(0, *(v9 + 16) + 1, 1);
      }

      v20 = v9;
      v21 = *(v9 + 16);
      v22 = *(v20 + 24);
      if (v21 >= v22 >> 1)
      {
        result = sub_21870B65C((v22 > 1), v21 + 1, 1);
        v20 = v28;
      }

      *(v20 + 16) = v21 + 1;
      v23 = v20 + 16 * v21;
      *(v23 + 32) = v13;
      *(v23 + 40) = v12;
      v6 = v27;
      v9 = v20;
      if (v10 == v27)
      {
        goto LABEL_23;
      }
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

id sub_2195DE078@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for NewFollowTodayFeedGroupEmitter();
  v32 = *(v8 - 8);
  v9 = v32[8];
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186D8D60(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v29 - v12;
  v14 = *a1;
  sub_219BEF0B4();
  v15 = *(v33 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_sportsOnboardingState);

  if (v15 == 1 && (result = [v14 isSports], result) || (v17 = a3, (result = objc_msgSend(v14, sel_feedIDForBin_, 1)) == 0))
  {
    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    v18 = result;
    v19 = sub_219BF5414();
    v30 = v20;
    v31 = v19;

    v21 = sub_219BF5BF4();
    (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
    sub_2188535C8(v17, &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NewFollowTodayFeedGroupEmitter);
    v22 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v23 = (v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = a4;
    v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
    v29 = v13;
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    sub_2195E12C0(v10, v25 + v22, type metadata accessor for NewFollowTodayFeedGroupEmitter);
    *(v25 + v23) = a2;
    *(v25 + v24) = v14;
    v26 = (v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
    v27 = v30;
    *v26 = v31;
    v26[1] = v27;
    swift_unknownObjectRetain_n();

    result = sub_2195E76F4(0, 0, v29, &unk_219C906A8, v25);
    v28 = v32;
    *v32 = v14;
    v28[1] = result;
  }

  return result;
}

uint64_t sub_2195DE360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v12 = swift_task_alloc();
  *(v8 + 24) = v12;
  *v12 = v8;
  v12[1] = sub_218E5F004;

  return sub_2195E1484(a5, a7, a8);
}

void sub_2195DE418(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v84 = a2;
  v5 = sub_219BF0BD4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF02F4();
  v74 = *(v9 - 8);
  v75 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BEE6F4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_219BEFBD4();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = MEMORY[0x277D84F90];
  v85 = a3;
  if (a3 >> 62)
  {
LABEL_36:
    v65 = sub_219BF7214();
    v16 = v85;
    v18 = v65;
  }

  else
  {
    v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v77 = v6;
  v78 = v5;
  v76 = v8;
  v80 = v12;
  v73 = v13;
  v71 = v11;
  v70 = v15;
  v66[2] = a1;
  if (v18)
  {
    v15 = 0;
    v82 = v84 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines;
    v83 = v16 & 0xFFFFFFFFFFFFFF8;
    v84 = v16 & 0xC000000000000001;
    v81 = (v16 + 32);
    while (1)
    {
      if (v84)
      {
        v11 = MEMORY[0x21CECE0F0](v15);
        v19 = __OFADD__(v15++, 1);
        if (v19)
        {
LABEL_23:
          __break(1u);
LABEL_24:
          v26 = v87;
          goto LABEL_26;
        }
      }

      else
      {
        if (v15 >= *(v83 + 16))
        {
          __break(1u);
          goto LABEL_36;
        }

        v11 = *&v81[8 * v15];
        swift_unknownObjectRetain();
        v19 = __OFADD__(v15++, 1);
        if (v19)
        {
          goto LABEL_23;
        }
      }

      v6 = v18;
      v8 = *(v82 + 16);
      v20 = [v11 identifier];
      v12 = sub_219BF5414();
      a1 = v21;

      if (*(v8 + 2) && (sub_219BF7AA4(), sub_219BF5524(), v22 = sub_219BF7AE4(), v23 = -1 << v8[32], v5 = v22 & ~v23, ((*&v8[((v5 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v5) & 1) != 0))
      {
        v13 = ~v23;
        while (1)
        {
          v24 = (*(v8 + 6) + 16 * v5);
          v25 = *v24 == v12 && v24[1] == a1;
          if (v25 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v5 = (v5 + 1) & v13;
          if (((*&v8[((v5 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v5) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        swift_unknownObjectRelease();
      }

      else
      {
LABEL_5:

        sub_219BF73D4();
        v8 = *(v87 + 16);
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      v18 = v6;
      if (v15 == v6)
      {
        goto LABEL_24;
      }
    }
  }

  v26 = MEMORY[0x277D84F90];
LABEL_26:
  v66[1] = v26;
  sub_219BEF0B4();

  v27 = NewsCoreUserDefaults();
  v28 = [v27 BOOLForKey_];

  if (v28)
  {
    v29 = 151870;
  }

  else
  {
    v29 = 135486;
  }

  v30 = objc_opt_self();
  sub_219BEF0B4();
  v31 = *(v86 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
  swift_unknownObjectRetain();

  v32 = type metadata accessor for NewFollowTodayFeedGroupEmitter();
  v33 = *(v32 + 44);
  v34 = v32;
  v82 = v32;
  v35 = v79;
  v36 = [v30 transformationWithFilterOptions:v29 configuration:v31 context:*(v79 + v33)];
  swift_unknownObjectRelease();
  v37 = sub_218731D50();
  v38 = sub_219BF5904();
  v85 = v36;
  v39 = [v36 transformHeadlines_];

  v66[0] = v37;
  v40 = sub_219BF5924();

  v41 = (v35 + *(v34 + 40));
  __swift_project_boxed_opaque_existential_1(v41, v41[3]);
  v42 = v68;
  v43 = v67;
  v44 = v69;
  (*(v68 + 104))(v67, *MEMORY[0x277D329E0], v69);
  v84 = v40;
  v45 = sub_219BF0034();
  (*(v42 + 8))(v43, v44);
  v46 = v41[3];
  v81 = v41[4];
  v69 = __swift_project_boxed_opaque_existential_1(v41, v46);
  v83 = v45;
  v86 = v45;
  v47 = MEMORY[0x277D320C0];
  sub_2186D8D60(0, &unk_280E8EF48, MEMORY[0x277D320C0], MEMORY[0x277D83940]);
  sub_2195E1240(&qword_280E8EF40, &unk_280E8EF48, v47);
  sub_219BF57A4();
  v48 = v73;
  v49 = v70;
  (*(v73 + 104))(v70, *MEMORY[0x277D320E0], v80);
  v50 = v79 + *(v82 + 20);
  v51 = v76;
  sub_219BEF134();
  v52 = v71;
  v79 = v50;
  sub_219B56EAC(v71);
  v53 = v78;
  v82 = *(v77 + 1);
  (v82)(v51, v78);
  v54 = v72;
  v55 = sub_219BEFFD4();
  if (v54)
  {

    (*(v74 + 8))(v52, v75);
    (*(v48 + 8))(v49, v80);
  }

  else
  {
    v56 = v55;

    (*(v74 + 8))(v52, v75);
    (*(v48 + 8))(v49, v80);
    type metadata accessor for NewFollowTodayFeedGroupKnobs();
    sub_219BEF134();
    sub_219BEF524();
    (v82)(v51, v53);
    v57 = v86;
    v58 = *(v56 + 16);
    if (v58 >= v86)
    {
      v86 = v56;
      v61 = MEMORY[0x277D31DF8];
      sub_2186D8D60(0, &unk_280E8EF90, MEMORY[0x277D31DF8], MEMORY[0x277D83940]);
      sub_2195E1240(&qword_280E8EF80, &unk_280E8EF90, v61);
      sub_219BF5794();
      v62 = sub_219BF5904();

      v63 = FCPromoteOneHeadline();

      v64 = v85;
      if (v63)
      {

        sub_219BF5924();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      v59 = sub_219BEEDD4();
      sub_2195E1B18(&qword_280E917E0, MEMORY[0x277D32430]);
      swift_allocError();
      *v60 = v57;
      v60[1] = v58;
      (*(*(v59 - 8) + 104))(v60, *MEMORY[0x277D32400], v59);
      swift_willThrow();
    }
  }
}

uint64_t sub_2195DEE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = MEMORY[0x277D83D88];
  sub_2186D8D60(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v4[6] = swift_task_alloc();
  sub_2186D8D60(0, &qword_280E90150, MEMORY[0x277D33EC8], v5);
  v4[7] = swift_task_alloc();
  sub_2186D8D60(0, &unk_280E91A10, sub_2189AE994, v5);
  v4[8] = swift_task_alloc();
  v6 = sub_219BF2AB4();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_219BF2034();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  sub_2186D8D60(0, &unk_280E8FF30, sub_218A42400, v5);
  v4[15] = swift_task_alloc();
  sub_2186D8D60(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v5);
  v4[16] = swift_task_alloc();
  v8 = sub_219BDBD64();
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  v9 = sub_219BF26F4();
  v4[20] = v9;
  v4[21] = *(v9 - 8);
  v4[22] = swift_task_alloc();
  v10 = sub_219BF1364();
  v4[23] = v10;
  v4[24] = *(v10 - 8);
  v4[25] = swift_task_alloc();
  v11 = sub_219BF3C84();
  v4[26] = v11;
  v4[27] = *(v11 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v12 = sub_219BF3E84();
  v4[30] = v12;
  v4[31] = *(v12 - 8);
  v4[32] = swift_task_alloc();
  v13 = sub_219BF1214();
  v4[33] = v13;
  v4[34] = *(v13 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = type metadata accessor for NewFollowTodayFeedGroupConfigData();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v14 = sub_219BF1934();
  v4[39] = v14;
  v4[40] = *(v14 - 8);
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2195DF42C, 0, 0);
}

uint64_t sub_2195DF42C()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 312);
  v3 = *(v0 + 320);
  v5 = *(v0 + 296);
  v4 = *(v0 + 304);
  v6 = *(v0 + 272);
  v84 = *(v0 + 288);
  v86 = *(v0 + 264);
  v89 = *(v0 + 280);
  sub_2186E06DC();
  sub_219BEDD14();
  (*(v3 + 16))(v1, v4, v2);
  sub_2195E1B60(v4, type metadata accessor for NewFollowTodayFeedGroupConfigData);
  sub_219BEF174();
  sub_219BEDD14();
  (*(v6 + 16))(v89, v5 + *(v84 + 20), v86);
  sub_2195E1B60(v5, type metadata accessor for NewFollowTodayFeedGroupConfigData);
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 336);
  v8 = *(v0 + 320);
  v9 = *(v0 + 272);
  v10 = *(v0 + 280);
  v11 = *(v0 + 264);
  v87 = *(v0 + 32);
  v90 = *(v0 + 312);
  v83 = qword_280F616D8;
  v85 = type metadata accessor for NewFollowTodayFeedGroupEmitter();
  sub_219BF1774();

  (*(v9 + 8))(v10, v11);
  v12 = *(v8 + 8);
  *(v0 + 352) = v12;
  *(v0 + 360) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v7, v90);
  if (v87 >> 62)
  {
    v13 = sub_219BF7214();
  }

  else
  {
    v13 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v94 = MEMORY[0x277D84F90];
    v15 = sub_218C34A88(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
      __break(1u);
      return MEMORY[0x2821921B8](v15, v16, v17, v18, v19);
    }

    v20 = *(v0 + 216);
    if ((v87 & 0xC000000000000001) != 0)
    {
      v21 = 0;
      v22 = *MEMORY[0x277D34128];
      do
      {
        v23 = *(v0 + 232);
        v24 = *(v0 + 208);
        *v23 = MEMORY[0x21CECE0F0](v21, *(v0 + 32));
        (*(v20 + 104))(v23, v22, v24);
        v26 = *(v94 + 16);
        v25 = *(v94 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_218C34A88(v25 > 1, v26 + 1, 1);
        }

        v27 = *(v0 + 232);
        v28 = *(v0 + 208);
        ++v21;
        *(v94 + 16) = v26 + 1;
        (*(v20 + 32))(v94 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v26, v27, v28);
      }

      while (v13 != v21);
    }

    else
    {
      v29 = (*(v0 + 32) + 32);
      v91 = *(v20 + 104);
      do
      {
        **(v0 + 224) = *v29;
        v91();
        v31 = *(v94 + 16);
        v30 = *(v94 + 24);
        swift_unknownObjectRetain();
        if (v31 >= v30 >> 1)
        {
          sub_218C34A88(v30 > 1, v31 + 1, 1);
        }

        v32 = *(v0 + 224);
        v33 = *(v0 + 208);
        *(v94 + 16) = v31 + 1;
        (*(v20 + 32))(v94 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v31, v32, v33);
        ++v29;
        --v13;
      }

      while (v13);
    }

    v14 = MEMORY[0x277D84F90];
  }

  v72 = *(v0 + 256);
  v73 = *(v0 + 248);
  v74 = *(v0 + 240);
  v34 = *(v0 + 192);
  v35 = *(v0 + 200);
  v36 = *(v0 + 176);
  v76 = *(v0 + 184);
  v77 = *(v0 + 168);
  v79 = *(v0 + 160);
  v65 = *(v0 + 152);
  v67 = *(v0 + 144);
  v69 = *(v0 + 136);
  v92 = *(v0 + 128);
  v70 = *(v0 + 120);
  v75 = *(v0 + 64);
  v82 = *(v0 + 48);
  v93 = *(v0 + 40);
  v37 = *(v0 + 24);
  v81 = *(v0 + 56);
  sub_218F0B984(v14);
  sub_218F0BA7C(v14);
  sub_218F0BB90(v14);
  sub_219BF3E74();
  v88 = v37;
  swift_getObjectType();
  sub_2194F6464(v35);
  v71 = MEMORY[0x277D84560];
  sub_2186D8D60(0, &qword_280E8B850, MEMORY[0x277D334E0], MEMORY[0x277D84560]);
  sub_219BF1A44();
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_219C09BA0;
  v39 = swift_allocBox();
  (*(v34 + 16))(v40, v35, v76);
  *v36 = v39;
  v41 = *MEMORY[0x277D33748];
  v42 = sub_219BF2124();
  (*(*(v42 - 8) + 104))(v36, v41, v42);
  (*(v77 + 104))(v36, *MEMORY[0x277D339C8], v79);
  sub_219BF1A04();
  v43 = (v93 + *(v85 + 24));
  v78 = v43[3];
  v80 = v43[4];
  __swift_project_boxed_opaque_existential_1(v43, v78);
  sub_219BF7314();

  v44 = v37;
  v45 = [v37 identifier];
  v46 = sub_219BF5414();
  v48 = v47;

  MEMORY[0x21CECC330](v46, v48);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  sub_219BDBD54();
  v49 = sub_219BDBD44();
  v51 = v50;
  (*(v67 + 8))(v65, v69);
  MEMORY[0x21CECC330](v49, v51);

  v52 = [v44 identifier];
  sub_219BF5414();

  v68 = sub_219BEC004();
  v66 = *(*(v68 - 8) + 56);
  v66(v92, 1, 1, v68);
  sub_219BF1714();
  sub_2191EED30(v38);
  sub_218A42400(0);
  (*(*(v53 - 8) + 56))(v70, 1, 1, v53);
  sub_219BF1764();

  sub_2195E11D0(v70, &unk_280E8FF30, sub_218A42400);
  sub_2195E11D0(v92, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  sub_2186DEF40(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_219C146A0;
  *(v54 + 32) = v88;
  sub_2186D8D60(0, &unk_280E8B790, MEMORY[0x277D34258], v71);
  v55 = (*(v73 + 80) + 32) & ~*(v73 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_219C09BA0;
  (*(v73 + 16))(v56 + v55, v72, v74);
  v66(v92, 1, 1, v68);
  swift_unknownObjectRetain();
  sub_219A95188(v14);
  sub_219A95188(v14);
  sub_219A951A0(v14);
  sub_219A951B8(v14);
  sub_219A952CC(v14);
  sub_219A952E4(v14);
  sub_219A953F8(v14);
  sub_219BF2024();
  v57 = *(v85 + 20);
  sub_2189AE994(0);
  v59 = v58;
  v60 = *(v58 - 8);
  (*(v60 + 16))(v75, v93 + v57, v58);
  (*(v60 + 56))(v75, 0, 1, v59);
  v61 = sub_219BF35D4();
  (*(*(v61 - 8) + 56))(v81, 1, 1, v61);
  *(v0 + 392) = 10;
  sub_21903485C(0, &qword_280E90070, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  v62 = sub_219BF2774();
  (*(*(v62 - 8) + 56))(v82, 1, 1, v62);
  *MEMORY[0x277D30BC8];
  v83;
  sub_219BF2A84();
  v63 = swift_task_alloc();
  *(v0 + 368) = v63;
  *v63 = v0;
  v63[1] = sub_2195E00E4;
  v16 = *(v0 + 112);
  v17 = *(v0 + 88);
  v15 = *(v0 + 328);
  v18 = v78;
  v19 = v80;

  return MEMORY[0x2821921B8](v15, v16, v17, v18, v19);
}

uint64_t sub_2195E00E4(uint64_t a1)
{
  v3 = *v2;
  v3[47] = v1;

  v15 = v3[44];
  v4 = v3[41];
  v5 = v3[39];
  v6 = v3[14];
  v7 = v3[13];
  v8 = v3[12];
  v9 = v3[11];
  v10 = v3[10];
  v11 = v3[9];
  if (v1)
  {
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v15(v4, v5);
    v12 = sub_2195E0518;
  }

  else
  {
    v3[48] = a1;
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v15(v4, v5);
    v12 = sub_2195E0364;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_2195E0364()
{
  v1 = v0[44];
  v2 = v0[43];
  v3 = v0[39];
  v5 = v0[31];
  v4 = v0[32];
  v6 = v0[30];
  (*(v0[24] + 8))(v0[25], v0[23]);
  (*(v5 + 8))(v4, v6);
  v1(v2, v3);

  v7 = v0[1];
  v8 = v0[48];

  return v7(v8);
}

uint64_t sub_2195E0518()
{
  v1 = v0[44];
  v2 = v0[43];
  v3 = v0[39];
  v5 = v0[31];
  v4 = v0[32];
  v6 = v0[30];
  (*(v0[24] + 8))(v0[25], v0[23]);
  (*(v5 + 8))(v4, v6);
  v1(v2, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2195E06C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[3] = a1;
  v13 = a2;
  sub_2186D8D60(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_219BEF554();
  v4 = MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v4);
  v12 = sub_219BED8D4();
  v5 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E06DC();

  v8 = sub_219BEDCB4();
  v11[1] = v9;
  v11[2] = v8;
  sub_219BEDCC4();
  sub_219BEDCC4();
  type metadata accessor for NewFollowTodayFeedGroupEmitter();
  sub_2189AE994(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  type metadata accessor for NewFollowTodayFeedGroupKnobs();
  sub_21903485C(0, &qword_280E91860, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32318]);
  sub_219BEEC84();
  sub_219BED834();
  (*(v5 + 32))(v13, v7, v12);
  type metadata accessor for TodayFeedGroup();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2195E09FC(void *a1)
{
  v14 = sub_21960A8D8();
  v2 = [a1 topStoriesConfig];
  v3 = [v2 channelID];

  if (v3)
  {
    v4 = sub_219BF5414();
    v6 = v5;

    sub_219497B60(&v13, v4, v6);
  }

  v7 = [a1 editorialChannelID];
  if (v7)
  {
    v8 = v7;
    v9 = sub_219BF5414();
    v11 = v10;

    sub_219497B60(&v13, v9, v11);
  }

  return v14;
}

uint64_t sub_2195E0AF4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_2195DBFD8(a1, a2);
}

uint64_t sub_2195E0B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2187608D4;

  return sub_2195DDA7C(a1, a2, a3);
}

uint64_t sub_2195E0C4C@<X0>(uint64_t a1@<X8>)
{
  sub_2186E06DC();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  type metadata accessor for TodayFeedGroupConfig();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2195E0CCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for NewFollowTodayFeedGroupKnobs();
  a2[4] = sub_2195E1B18(&qword_280EB3A00, type metadata accessor for NewFollowTodayFeedGroupKnobs);
  a2[5] = sub_2195E1B18(&qword_280EB3A08, type metadata accessor for NewFollowTodayFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_2188535C8(v2 + v4, boxed_opaque_existential_1, type metadata accessor for NewFollowTodayFeedGroupKnobs);
}

uint64_t sub_2195E0DE8()
{
  sub_2186E06DC();

  return sub_219BEDCA4();
}

uint64_t sub_2195E0E14@<X0>(uint64_t *a1@<X8>)
{
  sub_2186D8D60(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186E06DC();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2195E1B60(inited + 32, sub_2188317B0);
  sub_2186D8D60(0, &qword_280EE7890, type metadata accessor for NewFollowTodayFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v5;
  a1[4] = sub_2195E1BC0();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_2195E0F98()
{
  sub_2195E1B18(&qword_280EAC208, type metadata accessor for NewFollowTodayFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_2195E1124(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2187608D4;

  return sub_2195DC49C(a1, v5, v4);
}

uint64_t sub_2195E11D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186D8D60(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2195E1240(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2186D8D60(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2195E12C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2195E1328(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for NewFollowTodayFeedGroupEmitter() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + v7);
  v11 = *(v1 + v8);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + v9);
  v15 = *(v1 + v9 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_2187609C8;

  return sub_2195DE360(a1, v12, v13, v1 + v6, v10, v11, v14, v15);
}

uint64_t sub_2195E1484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_219BDBD34();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  sub_2186D8D60(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v6 = sub_219BF0BD4();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2195E160C, 0, 0);
}

uint64_t sub_2195E160C()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v17 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  v16 = type metadata accessor for NewFollowTodayFeedGroupEmitter();
  type metadata accessor for NewFollowTodayFeedGroupKnobs();
  sub_219BEF134();
  sub_219BEF524();
  v15 = *(v2 + 8);
  v15(v1, v17);
  sub_2186C6148(0, &qword_280E8E860);
  sub_219BDBD24();
  v8 = *(v6 + 56);
  v8(v3, 0, 1, v7);
  sub_219BDBD24();
  sub_219BDBBF4();
  (*(v6 + 8))(v5, v7);
  v8(v4, 0, 1, v7);
  v9 = sub_2193707CC(v3, v4);
  v0[17] = v9;
  if (v9)
  {
    v10 = v0[16];
    v11 = v0[14];
    v12 = v0[8];
    sub_219BEF134();
    sub_219BEF524();
    v15(v10, v11);
    __swift_project_boxed_opaque_existential_1((v12 + *(v16 + 36)), *(v12 + *(v16 + 36) + 24));
    v0[18] = sub_219BF27F4();
    v13 = swift_task_alloc();
    v0[19] = v13;
    *v13 = v0;
    v13[1] = sub_2195E18B4;
    v9 = v0 + 4;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2821D23D8](v9);
}

uint64_t sub_2195E18B4()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_2195E1A74;
  }

  else
  {

    v2 = sub_2195E19D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2195E19D0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2195E1A74()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2195E1B18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2195E1B60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2195E1BC0()
{
  result = qword_280EE7898;
  if (!qword_280EE7898)
  {
    sub_2186D8D60(255, &qword_280EE7890, type metadata accessor for NewFollowTodayFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE7898);
  }

  return result;
}

uint64_t sub_2195E1C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 80);
  v28 = *(a2 + 64);
  v29 = v5;
  v30 = *(a2 + 96);
  v31 = *(a2 + 112);
  v6 = *(a2 + 16);
  v24 = *a2;
  v25 = v6;
  v7 = *(a2 + 48);
  v26 = *(a2 + 32);
  v27 = v7;
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  sub_2195E1D94();
  result = sub_219BE1E34();
  if (*(&v14 + 1))
  {
    sub_2186CB1F0(&v13, v21);
    v9 = v22;
    v10 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v17 = v28;
    v18 = v29;
    v19 = v30;
    v20 = v31;
    v13 = v24;
    v14 = v25;
    v15 = v26;
    v16 = v27;
    v11 = (*(v10 + 8))(&v13, a3, v9, v10);
    if (v11)
    {
      sub_2187C5110();
      v12 = sub_219BEA784();
      v12(v11);
    }

    __swift_destroy_boxed_opaque_existential_1(v21);
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2195E1D94()
{
  result = qword_280EBF1F0;
  if (!qword_280EBF1F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EBF1F0);
  }

  return result;
}

char *sub_2195E1DF8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC7NewsUI216SearchHeaderView_titleLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v11 = OBJC_IVAR____TtC7NewsUI216SearchHeaderView_bottomMarginView;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v16.receiver = v4;
  v16.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = *&v12[OBJC_IVAR____TtC7NewsUI216SearchHeaderView_titleLabel];
  v14 = v12;
  [v14 addSubview_];
  [v14 addSubview_];

  return v14;
}

void sub_2195E2044()
{
  sub_2195E20D0(&qword_280ED7C40);

  JUMPOUT(0x21CEC1E40);
}

uint64_t sub_2195E20D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SearchHeaderView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for SavedFeedRefreshBlueprintModifier()
{
  result = qword_280EA2100;
  if (!qword_280EA2100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2195E2184()
{
  result = type metadata accessor for SavedFeedRefreshResult();
  if (v1 <= 0x3F)
  {
    result = sub_2195E2208();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2195E2208()
{
  result = qword_280EB7470[0];
  if (!qword_280EB7470[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_280EB7470);
  }

  return result;
}

uint64_t sub_2195E226C(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v128 = a3;
  v129 = a2;
  v117 = sub_219BE6DF4();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v115 = v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195E37D4(0, &qword_280EE4B10, MEMORY[0x277D6DF88]);
  v126 = *(v5 - 8);
  v127 = v5;
  MEMORY[0x28223BE20](v5);
  v125 = (v113 - v6);
  sub_218C249EC();
  MEMORY[0x28223BE20](v7 - 8);
  v113[1] = v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for ArticleListSavedFeedGroup();
  MEMORY[0x28223BE20](v118);
  v121 = v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for SavedFeedSectionDescriptor();
  v10 = MEMORY[0x28223BE20](v138);
  v131 = v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v122 = v113 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v124 = v113 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = v113 - v16;
  sub_218953D48();
  v139 = v18;
  v133 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v137 = v113 - v22;
  sub_218953E34();
  v24 = v23;
  v25 = *(v23 - 8);
  v26 = MEMORY[0x28223BE20](v23);
  v119 = v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = v113 - v28;
  sub_218F93A50();
  v31 = v30 - 8;
  MEMORY[0x28223BE20](v30);
  v33 = v113 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A75210(0);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v130 = v113 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v132 = v113 - v37;
  v114 = v25;
  v38 = *(v25 + 16);
  v120 = a1;
  v38(v29, a1, v24);
  sub_2195E3744(&qword_280EE3678, sub_218953E34);
  sub_219BF56A4();
  v39 = *(v31 + 44);
  sub_2195E3744(&qword_280EE3670, sub_218953E34);
  sub_219BF5E84();
  if (*&v33[v39] == v140[0])
  {
LABEL_5:
    sub_2195E3A08(v33, sub_218F93A50);
    v45 = 1;
    v46 = v132;
    v47 = v139;
  }

  else
  {
    v135 = (v133 + 16);
    v136 = (v133 + 32);
    v134 = v133 + 8;
    v40 = v137;
    while (1)
    {
      v41 = sub_219BF5EC4();
      v42 = v139;
      (*v135)(v40);
      v41(v140, 0);
      sub_219BF5E94();
      v43 = v24;
      v44 = *v136;
      (*v136)(v21, v40, v42);
      sub_219BE6934();
      if (!swift_getEnumCaseMultiPayload())
      {
        break;
      }

      (*v134)(v21, v139);
      sub_2195E3A08(v17, type metadata accessor for SavedFeedSectionDescriptor);
      sub_219BF5E84();
      v24 = v43;
      if (*&v33[v39] == v140[0])
      {
        goto LABEL_5;
      }
    }

    sub_2195E3A08(v33, sub_218F93A50);
    sub_2195E3A08(v17, type metadata accessor for SavedFeedSectionDescriptor);
    v46 = v132;
    v47 = v139;
    v44(v132, v21, v139);
    v45 = 0;
    v24 = v43;
  }

  v48 = v133;
  (*(v133 + 56))(v46, v45, 1, v47);
  v49 = v130;
  sub_2195E39A0(v46, v130, sub_218A75210);
  v50 = (*(v48 + 48))(v49, 1, v47);
  v51 = v131;
  if (v50 == 1)
  {
    v52 = sub_218A75210;
    v53 = v49;
LABEL_11:
    sub_2195E3A08(v53, v52);
    sub_2195E38C8();
    v56 = swift_allocError();
    v58 = v125;
    v57 = v126;
    *v125 = v56;
    v59 = v127;
    (*(v57 + 104))(v58, *MEMORY[0x277D6DF68], v127);
    v129(v58);
    (*(v57 + 8))(v58, v59);
    return sub_2195E3A08(v46, sub_218A75210);
  }

  v54 = v122;
  sub_219BE6934();
  (*(v48 + 8))(v49, v47);
  v55 = v124;
  sub_2195E391C(v54, v124, type metadata accessor for SavedFeedSectionDescriptor);
  sub_2195E39A0(v55, v51, type metadata accessor for SavedFeedSectionDescriptor);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_2195E3A08(v55, type metadata accessor for SavedFeedSectionDescriptor);
    v53 = v51;
    v52 = type metadata accessor for SavedFeedSectionDescriptor;
    goto LABEL_11;
  }

  v61 = v121;
  sub_2195E391C(v51, v121, type metadata accessor for ArticleListSavedFeedGroup);
  v140[0] = *(v61 + *(v118 + 24));

  sub_2191ED6C8(v62);
  v63 = v140[0];
  if (v140[0] >> 62)
  {
    goto LABEL_38;
  }

  v64 = *((v140[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  v137 = v24;
  if (v64)
  {
LABEL_14:
    v65 = 0;
    v136 = (v63 & 0xC000000000000001);
    v134 = v63 & 0xFFFFFFFFFFFFFF8;
    v66 = MEMORY[0x277D84F98];
    v135 = v63;
    while (1)
    {
      if (v136)
      {
        v67 = MEMORY[0x21CECE0F0](v65, v63);
        v68 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v65 >= *(v134 + 16))
        {
          goto LABEL_37;
        }

        v67 = *(v63 + 8 * v65 + 32);
        swift_unknownObjectRetain();
        v68 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          v64 = sub_219BF7214();
          v137 = v24;
          if (!v64)
          {
            break;
          }

          goto LABEL_14;
        }
      }

      v63 = [v67 identifier];
      v69 = sub_219BF5414();
      v24 = v70;

      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v140[0] = v66;
      v73 = sub_21870F700(v69, v24);
      v74 = v66[2];
      v75 = (v72 & 1) == 0;
      v76 = v74 + v75;
      if (__OFADD__(v74, v75))
      {
        goto LABEL_35;
      }

      v63 = v72;
      if (v66[3] >= v76)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v72)
          {
            goto LABEL_15;
          }
        }

        else
        {
          sub_2194902C8();
          if (v63)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
        sub_21947DE18(v76, isUniquelyReferenced_nonNull_native);
        v77 = sub_21870F700(v69, v24);
        if ((v63 & 1) != (v78 & 1))
        {
LABEL_60:
          result = sub_219BF79A4();
          __break(1u);
          return result;
        }

        v73 = v77;
        if (v63)
        {
LABEL_15:

          v66 = v140[0];
          *(*(v140[0] + 56) + 8 * v73) = v67;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_16;
        }
      }

      v66 = v140[0];
      *(v140[0] + 8 * (v73 >> 6) + 64) |= 1 << v73;
      v79 = (v66[6] + 16 * v73);
      *v79 = v69;
      v79[1] = v24;
      *(v66[7] + 8 * v73) = v67;
      swift_unknownObjectRelease();
      v80 = v66[2];
      v81 = __OFADD__(v80, 1);
      v82 = v80 + 1;
      if (v81)
      {
        goto LABEL_36;
      }

      v66[2] = v82;
LABEL_16:
      ++v65;
      v24 = v137;
      v63 = v135;
      if (v68 == v64)
      {
        goto LABEL_40;
      }
    }
  }

  v66 = MEMORY[0x277D84F98];
LABEL_40:

  v84 = *(v123 + 16);
  v85 = MEMORY[0x277D84F90];
  v140[0] = MEMORY[0x277D84F90];
  v86 = *(v84 + 16);
  if (!v86)
  {
    goto LABEL_54;
  }

  v87 = 0;
  v88 = v84 + 40;
  do
  {
    v89 = (v88 + 16 * v87);
    v90 = v87;
    while (1)
    {
      if (v90 >= v86)
      {
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v87 = v90 + 1;
      if (__OFADD__(v90, 1))
      {
        goto LABEL_59;
      }

      if (v66[2])
      {
        break;
      }

LABEL_44:
      ++v90;
      v89 += 2;
      if (v87 == v86)
      {
        v24 = v137;
        goto LABEL_54;
      }
    }

    v92 = *(v89 - 1);
    v91 = *v89;

    sub_21870F700(v92, v91);
    if ((v93 & 1) == 0)
    {

      goto LABEL_44;
    }

    swift_unknownObjectRetain();

    MEMORY[0x21CECC690](v94);
    if (*((v140[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v140[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    v83 = sub_219BF5A54();
    v85 = v140[0];
    v24 = v137;
  }

  while (v87 != v86);
LABEL_54:
  MEMORY[0x28223BE20](v83);
  v111 = v85;
  v112 = v123;
  v95 = sub_218F8CA54(sub_2195E3984, v110);

  v96 = sub_2195E3744(&qword_280EE57A0, sub_218953D48);
  v97 = sub_2195E3744(&unk_280EE57B0, sub_218953D48);
  MEMORY[0x21CEB9170](v95, v139, v96, v97);
  type metadata accessor for SavedFeedModel(0);
  v98 = sub_2195E3744(&qword_280EBA5A0, type metadata accessor for SavedFeedSectionDescriptor);
  v99 = sub_2195E3744(&unk_280EDBC60, type metadata accessor for SavedFeedModel);
  sub_219BEB2D4();
  v100 = sub_21937B808();
  sub_219BEEFF4();
  sub_219BEEFE4();
  type metadata accessor for SavedFeedServiceConfig();
  sub_2195E3744(&qword_280EC6CF0, type metadata accessor for SavedFeedServiceConfig);
  v101 = sub_219BEEFC4();

  v102 = 0;
  if (v101)
  {
    v102 = sub_219BEDC74();
  }

  else
  {
    v140[1] = 0;
    v140[2] = 0;
  }

  v103 = v117;
  v140[0] = v101;
  v140[3] = v102;
  v104 = v119;
  sub_219BEB2C4();
  sub_21885AB78(v100);
  v105 = v116;
  v106 = v24;
  v107 = v115;
  (*(v116 + 104))(v115, *MEMORY[0x277D6D868], v103);
  v108 = sub_2195E3744(&unk_280EBA590, type metadata accessor for SavedFeedSectionDescriptor);
  v111 = v98;
  v112 = v99;
  v110[0] = v99;
  v110[1] = v108;
  v109 = v125;
  sub_219BE85E4();
  (*(v105 + 8))(v107, v103);
  v129(v109);
  (*(v126 + 8))(v109, v127);
  (*(v114 + 8))(v104, v106);
  sub_2195E3A08(v121, type metadata accessor for ArticleListSavedFeedGroup);
  sub_2195E3A08(v124, type metadata accessor for SavedFeedSectionDescriptor);
  sub_2195E3A08(v132, sub_218A75210);
}