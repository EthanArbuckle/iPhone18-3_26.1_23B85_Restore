uint64_t sub_2199F6BF8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199F9F88(0, &qword_27CC22410, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199F9304(0, &qword_27CC22438, sub_2189529D4, sub_218952A28, MEMORY[0x277D6DF28]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FollowingDislikedViewCellProvider();
  sub_218718690(a1, v8);
  v4 = swift_allocObject();
  sub_2186CB1F0(v8, v4 + 16);
  v5 = sub_219BE1E04();

  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FollowingDislikedViewSupplementaryViewProvider();
  result = sub_219BE1E24();
  if (result)
  {
    *&v8[0] = v3;
    sub_2199F9138();
    v7 = objc_allocWithZone(v6);
    return sub_219BE9B64();
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_2199F6DF4(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &qword_280E8E4C0);
  v3 = sub_219BE1DE4();
  if (v3)
  {
    sub_2186C6148(0, &qword_280E8E790);
    sub_219BE1BB4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2199F6F04(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199F9F88(0, &qword_27CC22410, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199F9304(0, &qword_27CC22438, sub_2189529D4, sub_218952A28, MEMORY[0x277D6DF28]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199F9EC4(0, &qword_27CC224D0, MEMORY[0x277D6E388]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    sub_218704150(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    sub_2199F9438();
    v4 = objc_allocWithZone(v3);
    return sub_219BE9754();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_2199F716C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE70E4();
  sub_219BE1DE4();
  sub_219BE9764();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2199F9CA8();
  if (sub_219BE1E24())
  {
    sub_218704150(&qword_27CC22528, sub_2199F9CA8);
  }

  return sub_219BE9774();
}

uint64_t sub_2199F7270(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199F9F88(0, &qword_27CC22410, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2199F9304(0, &qword_27CC22438, sub_2189529D4, sub_218952A28, MEMORY[0x277D6DF28]);
    result = sub_219BE1E24();
    if (result)
    {
      sub_2199F95B4();
      v4 = objc_allocWithZone(v3);
      return sub_219BEA184();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2199F7390(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECFD08);
  result = sub_219BE1E34();
  if (v16)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    MEMORY[0x28223BE20](v2);
    v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 16))(v4);
    v6 = *v4;
    v7 = type metadata accessor for TagViewRenderer();
    v14[3] = v7;
    v14[4] = &off_282A46F20;
    v14[0] = v6;
    type metadata accessor for FollowingDislikedViewCellProvider();
    v8 = swift_allocObject();
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v14, v7);
    MEMORY[0x28223BE20](v9);
    v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v8[7] = v7;
    v8[8] = &off_282A46F20;
    v8[3] = 0;
    v8[4] = v13;
    swift_unknownObjectWeakInit();
    __swift_destroy_boxed_opaque_existential_1(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2199F75AC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for FollowingDislikedViewController();
  v4 = sub_219BE1E24();
  v3 = &off_282AA43C8;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_2199F7640@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810);
  result = sub_219BE1E34();
  if (v6)
  {
    a2[3] = &type metadata for FollowingDislikedHeaderViewStyler;
    a2[4] = &off_282A40728;
    v4 = swift_allocObject();
    *a2 = v4;
    return sub_2186CB1F0(&v5, v4 + 16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2199F76F8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EB09B0);
  result = sub_219BE1DF4();
  if (v23)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EC9540);
    result = sub_219BE1E34();
    if (v21)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
      MEMORY[0x28223BE20](v5);
      v7 = (&v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = *v7;
      v10 = type metadata accessor for TitleViewRenderer();
      v19[3] = v10;
      v19[4] = &off_282A6AF80;
      v19[0] = v9;
      v11 = type metadata accessor for FollowingHeaderViewRenderer();
      v12 = swift_allocObject();
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
      MEMORY[0x28223BE20](v13);
      v15 = (&v19[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v16 + 16))(v15);
      v17 = *v15;
      v12[10] = v10;
      v12[11] = &off_282A6AF80;
      v12[7] = v17;
      sub_2186CB1F0(&v22, (v12 + 2));
      __swift_destroy_boxed_opaque_existential_1(v19);
      result = __swift_destroy_boxed_opaque_existential_1(v20);
      a2[3] = v11;
      a2[4] = &off_282A60170;
      *a2 = v12;
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

uint64_t sub_2199F799C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EA9380);
  result = sub_219BE1E34();
  if (v34)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EC9540);
    result = sub_219BE1E34();
    if (v32)
    {
      v3 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
      v26[2] = v26;
      MEMORY[0x28223BE20](v3);
      v5 = (v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v6 + 16))(v5);
      v7 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
      v26[1] = v26;
      MEMORY[0x28223BE20](v7);
      v9 = (v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9);
      v11 = *v5;
      v12 = *v9;
      v13 = type metadata accessor for FollowingHeaderViewRenderer();
      v30[3] = v13;
      v30[4] = &off_282A60170;
      v30[0] = v11;
      v14 = type metadata accessor for TitleViewRenderer();
      v28 = v14;
      v29 = &off_282A6AF80;
      v27[0] = v12;
      type metadata accessor for FollowingDislikedViewSupplementaryViewProvider();
      v15 = swift_allocObject();
      v16 = __swift_mutable_project_boxed_opaque_existential_1(v30, v13);
      MEMORY[0x28223BE20](v16);
      v18 = (v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18);
      v20 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
      MEMORY[0x28223BE20](v20);
      v22 = (v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v23 + 16))(v22);
      v24 = *v18;
      v25 = *v22;
      v15[5] = v13;
      v15[6] = &off_282A60170;
      v15[2] = v24;
      v15[10] = v14;
      v15[11] = &off_282A6AF80;
      v15[7] = v25;
      __swift_destroy_boxed_opaque_existential_1(v27);
      __swift_destroy_boxed_opaque_existential_1(v30);
      __swift_destroy_boxed_opaque_existential_1(v31);
      __swift_destroy_boxed_opaque_existential_1(v33);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2199F7DA8(void *a1)
{
  v2 = sub_219BE9BC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BE9BE4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_2199F9EC4(0, &qword_27CC22520, MEMORY[0x277D6E380]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199F9F88(0, &qword_27CC22410, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    (*(v9 + 104))(v11, *MEMORY[0x277D6E378], v8);
    *v5 = 0;
    (*(v3 + 104))(v5, *MEMORY[0x277D6E828], v2);
    sub_219BE9BD4();
    v14[1] = v13;
    sub_2199F9EC4(0, &qword_27CC224D0, MEMORY[0x277D6E388]);
    swift_allocObject();
    return sub_219BE8EC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2199F8050(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199F9F88(0, &qword_27CC22410, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (result)
  {
    sub_2199F9B94(0, &qword_27CC224D8, MEMORY[0x277D6EB70]);
    swift_allocObject();
    return sub_219BEA664();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2199F8108(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for FollowingDislikedViewController();
  result = sub_219BE1E24();
  if (result)
  {
    return sub_219BEA674();
  }

  __break(1u);
  return result;
}

unint64_t sub_2199F816C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199F9F88(0, &qword_27CC22410, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    sub_2199F9EC4(0, &qword_27CC22510, type metadata accessor for FollowingDislikedCompositionalLayoutOptionsProvider);
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    a2[3] = v6;
    result = sub_2199F9E50();
    a2[4] = result;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2199F8230(void *a1)
{
  sub_2199F9DF8();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BEBB84();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE1DF4();
  result = (*(v6 + 48))(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v9, v11, v5);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2199F9B94(0, &qword_27CC224D8, MEMORY[0x277D6EB70]);
    result = sub_219BE1E24();
    if (result)
    {
      sub_2199F9B94(0, &qword_27CC224E0, MEMORY[0x277D6EB00]);
      v13 = sub_219BEA554();
      (*(v6 + 8))(v11, v5);
      return v13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2199F84B4(void *a1)
{
  v2 = sub_219BEBB14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEBAF4();
  MEMORY[0x28223BE20](v6);
  (*(v8 + 104))(&v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D74D58]);
  sub_219BEBB24();
  (*(v3 + 104))(v5, *MEMORY[0x277D74D90], v2);
  sub_219BEBB44();
  sub_219BEBB74();
  sub_219BEBB64();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810);
  result = sub_219BE1E34();
  if (v13)
  {
    v10 = *(*__swift_project_boxed_opaque_existential_1(v12, v13) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme);
    sub_219BEBB54();
    __swift_destroy_boxed_opaque_existential_1(v12);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2199F9B94(0, &qword_27CC224D8, MEMORY[0x277D6EB70]);
    result = sub_219BE1E24();
    if (result)
    {
      sub_219BEA654();

      return sub_219BEBAE4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2199F874C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_219BDF554();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDF544();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    v14 = type metadata accessor for FollowingDislikedTracker();
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    (*(v5 + 104))(v7, *MEMORY[0x277D2DB30], v4);

    sub_219BDF534();
    sub_218704150(&unk_280EE8750, MEMORY[0x277D2DB28]);
    sub_219BDD1F4();

    result = (*(v9 + 8))(v11, v8);
    a2[3] = v14;
    a2[4] = &off_282A8B908;
    *a2 = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2199F89AC(void *a1)
{
  sub_2187F2110();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199F9CA8();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = sub_218704150(&qword_27CC22508, sub_2199F9CA8);
    *(v2 + 32) = v4;
    *(v2 + 40) = v5;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BE8A54();
    result = sub_219BE1DE4();
    if (result)
    {
      v6 = MEMORY[0x277D6E168];
      *(v2 + 48) = result;
      *(v2 + 56) = v6;
      sub_219BE70E4();
      swift_allocObject();
      return sub_219BE70D4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2199F8AE8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199F8FBC();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199F9F88(0, &qword_27CC22410, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    sub_218704150(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    sub_2199F9CA8();
    swift_allocObject();
    return sub_219BE9AB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2199F8CB0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2199F991C();
  if (sub_219BE1E24())
  {
    sub_218704150(&qword_27CC22500, sub_2199F991C);
  }

  return sub_219BE9AC4();
}

uint64_t sub_2199F8D5C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199F8FBC();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE7BC4();

    sub_219BE8A54();
    swift_allocObject();
    return sub_219BE8A44();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2199F8DE4()
{
  if (!qword_27CC22418)
  {
    v0 = MEMORY[0x277D6D8B8];
    sub_2199F9F88(255, &qword_27CC22410, MEMORY[0x277D6D8B8]);
    sub_2199F8EF0();
    sub_2199F9DB4(&qword_27CC22440, &qword_27CC22410, v0);
    sub_218704150(&qword_27CC22498, sub_2199F8EF0);
    v1 = sub_219BE6F54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC22418);
    }
  }
}

void sub_2199F8EF0()
{
  if (!qword_27CC22420)
  {
    sub_2199F8FBC();
    sub_2189528B0();
    sub_218952904();
    sub_218704150(&qword_27CC22490, sub_2199F8FBC);
    v0 = sub_219BE72E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC22420);
    }
  }
}

void sub_2199F8FBC()
{
  if (!qword_27CC22428)
  {
    sub_2186C6148(255, &qword_280E8E4C0);
    sub_2199F9138();
    sub_2199F9438();
    sub_2199F95B4();
    type metadata accessor for FollowingDislikedViewController();
    sub_218704150(&qword_27CC22478, sub_2199F9138);
    sub_218704150(&qword_27CC22480, sub_2199F9438);
    sub_218704150(&qword_27CC22488, sub_2199F95B4);
    v0 = sub_219BE7BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC22428);
    }
  }
}

void sub_2199F9138()
{
  if (!qword_27CC22430)
  {
    v0 = MEMORY[0x277D6D8B8];
    sub_2199F9F88(255, &qword_27CC22410, MEMORY[0x277D6D8B8]);
    sub_2199F9304(255, &qword_27CC22438, sub_2189529D4, sub_218952A28, MEMORY[0x277D6DF28]);
    type metadata accessor for FollowingDislikedViewCellProvider();
    type metadata accessor for FollowingDislikedViewSupplementaryViewProvider();
    sub_2199F9DB4(&qword_27CC22440, &qword_27CC22410, v0);
    sub_2199F939C();
    sub_218704150(&qword_27CC22450, type metadata accessor for FollowingDislikedViewCellProvider);
    sub_218704150(&qword_27CC22458, type metadata accessor for FollowingDislikedViewSupplementaryViewProvider);
    sub_218F97C70();
    v1 = sub_219BE9B94();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC22430);
    }
  }
}

void sub_2199F9304(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, void *))
{
  if (!*a2)
  {
    v11[0] = &type metadata for FollowingDislikedSectionLayoutDescriptor;
    v11[1] = &type metadata for FollowingDislikedLayoutModel;
    v11[2] = a3();
    v11[3] = a4();
    v9 = a5(a1, v11);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_2199F939C()
{
  result = qword_27CC22448;
  if (!qword_27CC22448)
  {
    sub_2199F9304(255, &qword_27CC22438, sub_2189529D4, sub_218952A28, MEMORY[0x277D6DF28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22448);
  }

  return result;
}

void sub_2199F9438()
{
  if (!qword_27CC22460)
  {
    v0 = MEMORY[0x277D6D8B8];
    sub_2199F9F88(255, &qword_27CC22410, MEMORY[0x277D6D8B8]);
    sub_2199F9304(255, &qword_27CC22438, sub_2189529D4, sub_218952A28, MEMORY[0x277D6DF28]);
    type metadata accessor for FollowingDislikedViewController();
    sub_2199F9DB4(&qword_27CC22440, &qword_27CC22410, v0);
    sub_2199F939C();
    sub_218704150(&qword_27CC22468, type metadata accessor for FollowingDislikedViewController);
    sub_218F97C70();
    v1 = sub_219BE9794();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC22460);
    }
  }
}

void sub_2199F95B4()
{
  if (!qword_27CC22470)
  {
    v0 = MEMORY[0x277D6D8B8];
    sub_2199F9F88(255, &qword_27CC22410, MEMORY[0x277D6D8B8]);
    sub_2199F9304(255, &qword_27CC22438, sub_2189529D4, sub_218952A28, MEMORY[0x277D6DF28]);
    type metadata accessor for FollowingDislikedViewController();
    sub_2199F9DB4(&qword_27CC22440, &qword_27CC22410, v0);
    sub_2199F939C();
    sub_218704150(&qword_27CC22468, type metadata accessor for FollowingDislikedViewController);
    v1 = sub_219BEA194();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC22470);
    }
  }
}

void sub_2199F971C()
{
  if (!qword_27CC224A0)
  {
    sub_2199F9304(255, &qword_27CC22438, sub_2189529D4, sub_218952A28, MEMORY[0x277D6DF28]);
    type metadata accessor for FollowingDislikedLayoutBuilder();
    sub_2199F9304(255, &qword_27CC224A8, sub_218CB61D8, sub_218F97C70, MEMORY[0x277D6E7B0]);
    sub_2199F939C();
    sub_218704150(&qword_27CC224B0, type metadata accessor for FollowingDislikedLayoutBuilder);
    sub_2199F9880();
    v0 = sub_219BEA4A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC224A0);
    }
  }
}

unint64_t sub_2199F9880()
{
  result = qword_27CC224B8;
  if (!qword_27CC224B8)
  {
    sub_2199F9304(255, &qword_27CC224A8, sub_218CB61D8, sub_218F97C70, MEMORY[0x277D6E7B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC224B8);
  }

  return result;
}

void sub_2199F991C()
{
  if (!qword_27CC224C0)
  {
    v0 = MEMORY[0x277D6D8B8];
    sub_2199F9F88(255, &qword_27CC22410, MEMORY[0x277D6D8B8]);
    sub_2199F8FBC();
    type metadata accessor for FollowingDislikedViewController();
    sub_2199F9DB4(&qword_27CC22440, &qword_27CC22410, v0);
    sub_218704150(&qword_27CC22490, sub_2199F8FBC);
    sub_218704150(&qword_27CC22468, type metadata accessor for FollowingDislikedViewController);
    v1 = sub_219BE8774();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC224C0);
    }
  }
}

void sub_2199F9A70()
{
  if (!qword_27CC224C8)
  {
    sub_219BE9C54();
    v0 = MEMORY[0x277D6D8B8];
    sub_2199F9F88(255, &qword_27CC22410, MEMORY[0x277D6D8B8]);
    type metadata accessor for FollowingDislikedViewController();
    sub_2199F9DB4(&qword_27CC22440, &qword_27CC22410, v0);
    sub_218704150(&qword_27CC22468, type metadata accessor for FollowingDislikedViewController);
    v1 = sub_219BEA544();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC224C8);
    }
  }
}

void sub_2199F9B94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = MEMORY[0x277D6D8B8];
    sub_2199F9F88(255, &qword_27CC22410, MEMORY[0x277D6D8B8]);
    v10[0] = v7;
    v10[1] = type metadata accessor for FollowingDislikedViewController();
    v10[2] = sub_2199F9DB4(&qword_27CC22440, &qword_27CC22410, v6);
    v10[3] = sub_218704150(&qword_27CC22468, type metadata accessor for FollowingDislikedViewController);
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2199F9CA8()
{
  if (!qword_27CC224F0)
  {
    sub_2199F8FBC();
    v0 = MEMORY[0x277D6D8B8];
    sub_2199F9F88(255, &qword_27CC22410, MEMORY[0x277D6D8B8]);
    sub_218704150(&qword_27CC22490, sub_2199F8FBC);
    sub_2199F9DB4(&qword_27CC224F8, &qword_27CC22410, v0);
    v1 = sub_219BE9AD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC224F0);
    }
  }
}

uint64_t sub_2199F9DB4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_2199F9F88(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2199F9DF8()
{
  if (!qword_280EE3560)
  {
    sub_219BEBB84();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3560);
    }
  }
}

unint64_t sub_2199F9E50()
{
  result = qword_27CC22518;
  if (!qword_27CC22518)
  {
    sub_2199F9EC4(255, &qword_27CC22510, type metadata accessor for FollowingDislikedCompositionalLayoutOptionsProvider);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22518);
  }

  return result;
}

void sub_2199F9EC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = MEMORY[0x277D6D8B8];
    sub_2199F9F88(255, &qword_27CC22410, MEMORY[0x277D6D8B8]);
    v8 = v7;
    v9 = sub_2199F9DB4(&qword_27CC22440, &qword_27CC22410, v6);
    v10 = a3(a1, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_2199F9F88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingDislikedDescriptor;
    v8[1] = &type metadata for FollowingDislikedModel;
    v8[2] = sub_2189528B0();
    v8[3] = sub_218952904();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2199FA00C()
{
  if (!qword_27CC22550)
  {
    type metadata accessor for FollowingDislikedModifierFactory();
    sub_218704150(&qword_27CC22558, type metadata accessor for FollowingDislikedModifierFactory);
    v0 = type metadata accessor for FollowingDislikedInteractor();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC22550);
    }
  }
}

char *sub_2199FA0A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5)
{
  ObjectType = swift_getObjectType();
  v16[3] = type metadata accessor for FollowingDislikedStyler();
  v16[4] = &off_282A5BCB0;
  v16[0] = a1;
  *&a5[OBJC_IVAR____TtC7NewsUI231FollowingDislikedViewController_prewarm] = 1;
  *&a5[OBJC_IVAR____TtC7NewsUI231FollowingDislikedViewController____lazy_storage___closeBarButtonItem] = 0;
  sub_218718690(v16, &a5[OBJC_IVAR____TtC7NewsUI231FollowingDislikedViewController_styler]);
  v11 = &a5[OBJC_IVAR____TtC7NewsUI231FollowingDislikedViewController_eventHandler];
  *v11 = a2;
  *(v11 + 1) = a3;
  *&a5[OBJC_IVAR____TtC7NewsUI231FollowingDislikedViewController_blueprintViewController] = a4;
  v15.receiver = a5;
  v15.super_class = ObjectType;
  swift_unknownObjectRetain();
  a4;
  v12 = objc_msgSendSuper2(&v15, sel_initWithNibName_bundle_, 0, 0);
  *(*&v12[OBJC_IVAR____TtC7NewsUI231FollowingDislikedViewController_eventHandler] + 24) = &off_282AA43D0;
  swift_unknownObjectWeakAssign();
  v13 = v12;
  sub_219BE8744();

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v13;
}

void *sub_2199FA1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15[3] = type metadata accessor for FollowingDislikedRouter();
  v15[4] = &off_282A44A50;
  v15[0] = a3;
  v14[3] = type metadata accessor for FollowingDislikedTracker();
  v14[4] = &off_282A8B908;
  v14[0] = a4;
  a5[3] = 0;
  swift_unknownObjectWeakInit();
  a5[4] = a1;
  a5[5] = a2;
  sub_218718690(v15, (a5 + 6));
  sub_218718690(v14, (a5 + 11));
  ObjectType = swift_getObjectType();
  v11 = *(a2 + 16);
  swift_unknownObjectRetain();

  v11(v12, &off_282A65E30, ObjectType, a2);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return a5;
}

void *sub_2199FA2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v24 = type metadata accessor for FollowingDislikedRouter();
  v25 = &off_282A44A50;
  v23[0] = a3;
  v21 = v8;
  v22 = &off_282A8B908;
  v20[0] = a4;
  type metadata accessor for FollowingDislikedEventHandler();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  MEMORY[0x28223BE20](v10);
  v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  MEMORY[0x28223BE20](v14);
  v16 = (v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = sub_2199FA1D4(a1, a2, *v12, *v16, v9);
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v18;
}

uint64_t sub_2199FA4D8(unint64_t a1, uint64_t a2)
{
  v43 = a2;
  v42 = sub_219BE6234();
  v3 = *(v42 - 8);
  v4 = MEMORY[0x28223BE20](v42);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_22:
    v7 = sub_219BF7214();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v8 = 0;
      v9 = 0;
      v40 = a1 & 0xFFFFFFFFFFFFFF8;
      v41 = a1 & 0xC000000000000001;
      v37 = (v3 + 88);
      v36 = *MEMORY[0x277D6D558];
      v34 = *MEMORY[0x277D6D568];
      v33 = *MEMORY[0x277D6D560];
      HIDWORD(v32) = *MEMORY[0x277D6D570];
      v35 = (v3 + 8);
      v38 = v7;
      v39 = a1;
      while (1)
      {
        if (v41)
        {
          v10 = MEMORY[0x21CECE0F0](v8, a1, v4);
        }

        else
        {
          if (v8 >= *(v40 + 16))
          {
            goto LABEL_21;
          }

          v10 = *(a1 + 8 * v8 + 32);
        }

        v11 = v10;
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v44 = v9;
        v14 = *(v43 + 16);
        v13 = *(v43 + 24);
        ObjectType = swift_getObjectType();
        v16 = [v11 identifier];
        v17 = v6;
        v18 = sub_219BF5414();
        v20 = v19;

        v21 = v18;
        v6 = v17;
        v22 = (*(v13 + 32))(v21, v20, ObjectType, v13);

        v23 = *(v22 + 72);

        v3 = v23;
        sub_219BE2184();

        v24 = v42;
        v25 = (*v37)(v17, v42);
        if (v25 == v36)
        {

          (*v35)(v17, v24);
        }

        else
        {
          if (v25 == v34)
          {
            (*v35)(v17, v24);
          }

          else if (v25 != v33 && v25 != HIDWORD(v32))
          {
            result = sub_219BF7514();
            __break(1u);
            return result;
          }

          if ((v44 & 1) == 0)
          {
            v26 = [v11 identifier];
            v27 = sub_219BF5414();
            v29 = v28;

            v30 = v27;
            v3 = v14;
            v9 = sub_21987B00C(v30, v29, ObjectType, v13);
            v6 = v17;

            goto LABEL_6;
          }
        }

        v9 = 1;
LABEL_6:
        a1 = v39;
        ++v8;
        if (v12 == v38)
        {
          return v9 & 1;
        }
      }
    }
  }

  LOBYTE(v9) = 0;
  return v9 & 1;
}

uint64_t sub_2199FA890(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v53 = a3;
  v50 = a2;
  v70 = a1;
  v4 = sub_219BDF104();
  v5 = *(v4 - 8);
  v62 = v4;
  v63 = v5;
  MEMORY[0x28223BE20](v4);
  v60 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_219BDF324();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_219BDF314();
  v59 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v54 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_219BDF4B4();
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v47 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_219BDFF74();
  v52 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v46 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_219BDFC24();
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v41 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_219BE0604();
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE1714();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21934C4BC();
  sub_2187F3258();
  v68 = v18;
  v65 = sub_219BDCD44();
  v19 = *(v65 - 8);
  v67 = *(v19 + 72);
  v72 = *(v19 + 80);
  v20 = v19;
  v21 = (v72 + 32) & ~v72;
  v22 = swift_allocObject();
  v73 = xmmword_219C09BA0;
  *(v22 + 16) = xmmword_219C09BA0;
  v71 = *MEMORY[0x277CEAD18];
  v23 = *(v20 + 104);
  v23(v22 + v21);
  v69 = v20 + 104;
  v66 = v23;
  v64 = "andHandler.swift";
  sub_2199FBAC8(&unk_280EE7F60, MEMORY[0x277D2F890]);
  sub_219BDCCC4();

  (*(v15 + 8))(v17, v14);
  (*(v42 + 104))(v41, *MEMORY[0x277D2DFD8], v43);
  sub_219BE05F4();
  v24 = swift_allocObject();
  *(v24 + 16) = v73;
  v25 = v65;
  (v23)(v24 + v21, v71, v65);
  sub_2199FBAC8(&qword_27CC13298, MEMORY[0x277D2E640]);
  v26 = v44;
  sub_219BDCCC4();

  (*(v45 + 8))(v13, v26);
  (*(v48 + 16))(v47, v53, v49);
  v27 = v46;
  sub_219BDFF64();
  v28 = swift_allocObject();
  *(v28 + 16) = v73;
  v29 = v71;
  v30 = v66;
  (v66)(v28 + v21, v71, v25);
  sub_2199FBAC8(&qword_27CC132A0, MEMORY[0x277D2E270]);
  v31 = v51;
  sub_219BDCCC4();

  (*(v52 + 8))(v27, v31);
  (*(v56 + 104))(v55, *MEMORY[0x277D2DA00], v57);
  v32 = v54;
  sub_219BDF304();
  v33 = swift_allocObject();
  *(v33 + 16) = v73;
  v34 = v65;
  v30(v33 + v21, v29, v65);
  sub_2199FBAC8(&unk_27CC132A8, MEMORY[0x277D2D9F8]);
  v35 = v58;
  sub_219BDCCC4();

  (*(v59 + 8))(v32, v35);
  v36 = [v50 sourceChannel];
  v37 = v60;
  sub_219BE01F4();
  v38 = swift_allocObject();
  *(v38 + 16) = v73;
  (v66)(v38 + v21, v71, v34);
  sub_2199FBAC8(&unk_280EE8890, MEMORY[0x277D2D8B8]);
  v39 = v62;
  sub_219BDCCC4();

  (*(v63 + 8))(v37, v39);
  sub_219BE0214();
  sub_2199FBAC8(&qword_27CC132B8, MEMORY[0x277D2E3C8]);
  memset(v74, 0, sizeof(v74));
  sub_219BDCCE4();
  swift_unknownObjectRelease();
  return sub_218806FD0(v74);
}

uint64_t sub_2199FB314()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_2199FB398(unint64_t a1)
{
  v2 = v1;
  v4 = sub_219BDF4B4();
  v5 = *(v4 - 8);
  v69 = v4;
  v70 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v68 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v67 = &v56 - v8;
  v9 = sub_219BE6234();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v79 = a1;
  v80 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v14 = 0;
    v77 = v79 & 0xFFFFFFFFFFFFFF8;
    v78 = v79 & 0xC000000000000001;
    v75 = (v10 + 88);
    v74 = *MEMORY[0x277D6D558];
    v71 = *MEMORY[0x277D6D568];
    v66 = *MEMORY[0x277D6D560];
    v57 = *MEMORY[0x277D6D570];
    v65 = (v10 + 8);
    v64 = *MEMORY[0x277D2DAE8];
    v62 = v70 + 16;
    v63 = v70 + 104;
    v61 = v6 + 7;
    v60 = v70 + 32;
    v59 = v70 + 8;
    v76 = i;
    v58 = v9;
    while (1)
    {
      if (v78)
      {
        v29 = MEMORY[0x21CECE0F0](v14, v79, v11);
      }

      else
      {
        if (v14 >= *(v77 + 16))
        {
          goto LABEL_18;
        }

        v29 = *(v79 + 8 * v14 + 32);
      }

      v30 = v29;
      v10 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v31 = v2[3];
      ObjectType = swift_getObjectType();
      v81 = v30;
      v33 = [v30 identifier];
      v34 = sub_219BF5414();
      v36 = v35;

      v37 = (*(v31 + 32))(v34, v36, ObjectType, v31);

      v6 = *(v37 + 72);

      v38 = v80;
      sub_219BE2184();

      v39 = (*v75)(v38, v9);
      if (v39 == v74 || v39 == v71)
      {
        (*v65)(v80, v9);
        v15 = v69;
        v16 = v70;
        v17 = *(v70 + 104);
        v73 = v14 + 1;
        v18 = v67;
        v17(v67, v64, v69);
        v72 = v2[5];
        v19 = v2;
        v20 = v68;
        (*(v16 + 16))(v68, v18, v15);
        v21 = (*(v16 + 80) + 24) & ~*(v16 + 80);
        v22 = (v61 + v21) & 0xFFFFFFFFFFFFFFF8;
        v23 = swift_allocObject();
        v24 = v81;
        *(v23 + 16) = v81;
        v25 = v20;
        v2 = v19;
        v9 = v58;
        (*(v16 + 32))(v23 + v21, v25, v15);
        *(v23 + v22) = v2;
        v26 = v24;

        v6 = v72;
        sub_219BDD154();

        v27 = v18;
        v10 = v73;
        (*(v16 + 8))(v27, v15);
        v28 = v76;
      }

      else
      {
        v28 = v76;
        if (v39 == v66)
        {
          v40 = v81;
        }

        else
        {
          v40 = v81;
          if (v39 != v57)
          {
            goto LABEL_34;
          }
        }
      }

      ++v14;
      if (v10 == v28)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:
  v41 = v2[4];
  v42 = v79;
  if (v56)
  {
    v43 = sub_219BF7214();
  }

  else
  {
    v43 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v43)
  {
    goto LABEL_32;
  }

  v82 = MEMORY[0x277D84F90];
  sub_21870B65C(0, v43 & ~(v43 >> 63), 0);
  if ((v43 & 0x8000000000000000) == 0)
  {
    v44 = 0;
    v45 = v82;
    do
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v46 = MEMORY[0x21CECE0F0](v44, v42);
      }

      else
      {
        v46 = *(v42 + 8 * v44 + 32);
      }

      v47 = v46;
      v48 = [v46 identifier];
      v49 = sub_219BF5414();
      v51 = v50;

      v82 = v45;
      v53 = *(v45 + 16);
      v52 = *(v45 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_21870B65C((v52 > 1), v53 + 1, 1);
        v45 = v82;
      }

      ++v44;
      *(v45 + 16) = v53 + 1;
      v54 = v45 + 16 * v53;
      *(v54 + 32) = v49;
      *(v54 + 40) = v51;
    }

    while (v43 != v44);
LABEL_32:
    v55 = sub_219BF5904();

    [v41 removeIssueIDs_];

    return;
  }

  __break(1u);
LABEL_34:
  sub_219BF7514();
  __break(1u);
}

uint64_t sub_2199FBA28(uint64_t a1)
{
  v3 = *(sub_219BDF4B4() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2199FA890(a1, v5, v1 + v4, v6);
}

uint64_t sub_2199FBAC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2199FBB10(char *a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = sub_219BEFA04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v3[2];
  v11 = *(v10 + 16);
  if (v11)
  {
    v19[1] = v5;
    v19[3] = v2;
    v12 = *(v7 + 16);
    v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v12(v9, v10 + v13, v6);
    if (v11 == 1)
    {
      (*(v7 + 32))(a1, v9, v6);
      return 0;
    }

    else
    {
      v12(a1, v9, v6);
      sub_218B674BC(v10, v10 + v13, 1, (2 * v11) | 1);
      v18 = v17;
      (*(v7 + 8))(v9, v6);
      result = swift_allocObject();
      *(result + 16) = v18;
    }
  }

  else
  {
    v15 = sub_219BEEDD4();
    sub_218EA25D0();
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D32390], v15);
    return swift_willThrow();
  }

  return result;
}

void __swiftcall SavedFeedModule.createViewController()(UIViewController *__return_ptr retstr)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for SavedFeedViewController();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v1;
  v2 = sub_219BE1E04();

  swift_unownedRelease();
  if (v2)
  {
    sub_219BED0C4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2199FBE3C(void *a1, uint64_t a2)
{
  v4 = sub_219BEBC84();
  v5 = *(v4 - 8);
  v30 = v4;
  v31 = v5;
  MEMORY[0x28223BE20](v4);
  v29 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_219BE14C4();
  v7 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE14A4();
  v11 = *(v10 - 8);
  v27 = v10;
  v28 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE15B4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  v24 = a1[3];
  v25 = v18;
  v23 = __swift_project_boxed_opaque_existential_1(a1, v24);
  swift_unownedRetainStrong();
  (*(v15 + 104))(v17, *MEMORY[0x277D2F530], v14);
  sub_219BDD0F4();
  (*(v15 + 8))(v17, v14);
  (*(v7 + 104))(v9, *MEMORY[0x277D2F300], v26);
  sub_219BE1484();
  sub_218BDE568(&qword_280EE8010, MEMORY[0x277D2F280]);
  v19 = v27;
  sub_219BDD1F4();

  (*(v28 + 8))(v13, v19);
  sub_219BDD274();
  sub_219BE1B94();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();
  __swift_project_boxed_opaque_existential_1((a2 + 64), *(a2 + 88));
  sub_219BEC134();
  __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  sub_219BF5414();
  v20 = v29;
  sub_219BEBC44();
  sub_218BDE568(&qword_280EE34B8, MEMORY[0x277D2D120]);
  v21 = v30;
  sub_219BEC144();

  (*(v31 + 8))(v20, v21);
  sub_218BDE5B0();
  sub_219BE1BA4();
  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t SavedFeedModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  return v0;
}

uint64_t SavedFeedModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_2199FC3B8()
{
  v1 = *v0;
  __swift_project_boxed_opaque_existential_1((*v0 + 16), *(*v0 + 40));
  type metadata accessor for SavedFeedViewController();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v1;
  v2 = sub_219BE1E04();

  result = swift_unownedRelease();
  if (v2)
  {
    sub_219BED0C4();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2199FC4DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 && (v10[6] = v2, v5 = sub_21947D1C0(v3, 0), v6 = sub_2194ABD64(v10, v5 + 4, v3, a2), , result = sub_21892DE98(), v6 != v3))
  {
    __break(1u);
  }

  else
  {
    v8 = off_282A4D758;
    type metadata accessor for TagService();
    v9 = v8();

    return v9;
  }

  return result;
}

uint64_t sub_2199FC5EC@<X0>(char **a1@<X0>, int64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  if (*a1 >> 62)
  {
    goto LABEL_40;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v7 = MEMORY[0x277D84F90];
  v25 = a2;
  v26 = v3;
  if (v6)
  {
    v27 = MEMORY[0x277D84F90];
    result = sub_218C384C8(0, v6 & ~(v6 >> 63), 0);
    if ((v6 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v7 = v27;
      a2 = v5 & 0xC000000000000001;
      do
      {
        if (a2)
        {
          v10 = MEMORY[0x21CECE0F0](v9, v5);
        }

        else
        {
          v10 = *&v5[8 * v9 + 32];
        }

        v11 = [*(v10 + 16) iAdCategories];
        if (v11)
        {
          v12 = v11;
          v13 = sub_219BF5924();
        }

        else
        {

          v13 = MEMORY[0x277D84F90];
        }

        v15 = *(v27 + 16);
        v14 = *(v27 + 24);
        v16 = v15 + 1;
        if (v15 >= v14 >> 1)
        {
          sub_218C384C8((v14 > 1), v15 + 1, 1);
        }

        ++v9;
        *(v27 + 16) = v16;
        *(v27 + 8 * v15 + 32) = v13;
      }

      while (v6 != v9);
      goto LABEL_17;
    }

    __break(1u);
  }

  else
  {
    v16 = *(MEMORY[0x277D84F90] + 16);
    v5 = MEMORY[0x277D84F90];
    if (v16)
    {
LABEL_17:
      v3 = 0;
      v5 = MEMORY[0x277D84F90];
      do
      {
        if (v3 >= *(v7 + 16))
        {
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          v6 = sub_219BF7214();
          goto LABEL_3;
        }

        v17 = *(v7 + 8 * v3 + 32);
        v18 = *(v17 + 16);
        a2 = *(v5 + 2);
        v19 = a2 + v18;
        if (__OFADD__(a2, v18))
        {
          goto LABEL_36;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v19 <= *(v5 + 3) >> 1)
        {
          if (*(v17 + 16))
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (a2 <= v19)
          {
            v21 = a2 + v18;
          }

          else
          {
            v21 = a2;
          }

          v5 = sub_218840D24(isUniquelyReferenced_nonNull_native, v21, 1, v5);
          if (*(v17 + 16))
          {
LABEL_30:
            if ((*(v5 + 3) >> 1) - *(v5 + 2) < v18)
            {
              goto LABEL_38;
            }

            swift_arrayInitWithCopy();

            if (v18)
            {
              v22 = *(v5 + 2);
              v23 = __OFADD__(v22, v18);
              v24 = v22 + v18;
              if (v23)
              {
                goto LABEL_39;
              }

              *(v5 + 2) = v24;
            }

            goto LABEL_19;
          }
        }

        if (v18)
        {
          goto LABEL_37;
        }

LABEL_19:
        ++v3;
      }

      while (v16 != v3);
    }

    *v25 = v5;
  }

  return result;
}

uint64_t sub_2199FC8A8()
{
  sub_219ADE0A8();
  sub_218A3A1C4();
  sub_219BE3204();

  v0 = sub_219BE2E54();
  sub_2186D0BA8();
  v1 = sub_219BE2F74();

  return v1;
}

uint64_t sub_2199FC98C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 81))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 80);
  if (v3 <= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2199FC9D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 246;
    if (a3 >= 0xF6)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_2199FCA54()
{
  v1 = *(v0 + 80);
  if (v1 <= 4)
  {
    v7 = 0x686372616573;
    v8 = 0x6169726F74696465;
    v9 = 0x74756374726F6873;
    if (v1 != 3)
    {
      v9 = 0x73656C7A7A7570;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*(v0 + 80))
    {
      v7 = 0x6E69776F6C6C6F66;
    }

    if (*(v0 + 80) <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 0x6974736567677573;
    v3 = 0x73676E6974746573;
    if (v1 != 9)
    {
      v3 = 0x656D656761676E65;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0x77654E6C61636F6CLL;
    v5 = 0x7374726F7073;
    if (v1 != 6)
    {
      v5 = 0x7069726373627573;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*(v0 + 80) <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

BOOL sub_2199FCBC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_2199FCD50(v7, v9);
}

uint64_t sub_2199FCCC4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80) - 3;
  v4 = sub_219BE5DA4();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x277D6D398];
  if (v3 >= 5)
  {
    v6 = MEMORY[0x277D6D390];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

void sub_2199FCD64(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v35 = a2;
  v6 = sub_219BE1444();
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x28223BE20](v6);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_219BDF6F4();
  v31 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2199FD1A0();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BDCC14();
  v16 = MEMORY[0x28223BE20](v15);
  (*(v18 + 16))(&v30 - v17, a1, v15, v16);
  if (swift_dynamicCast())
  {
    (*(v12 + 8))(v14, v11);
    v19 = sub_219BDCC04();
    v20 = sub_219BDD084();
    v22 = v21;

    if (!v3)
    {
      sub_2199FD234(&qword_27CC22568, MEMORY[0x277D2DCD8]);
      v23 = v36;
      sub_219BE1974();
      v25 = v32;
      sub_219BDF6E4();
      v26 = sub_219BE1434();
      v28 = v27;
      sub_2186C6190(v20, v22);
      (*(v33 + 8))(v25, v34);
      (*(v31 + 8))(v9, v23);
      *a3 = v26;
      a3[1] = v28;
      v29 = type metadata accessor for EngagementEvent();
      swift_storeEnumTagMultiPayload();
      (*(*(v29 - 8) + 56))(a3, 0, 1, v29);
    }
  }

  else
  {
    v24 = type metadata accessor for EngagementEvent();
    (*(*(v24 - 8) + 56))(a3, 1, 1, v24);
  }
}

void sub_2199FD1A0()
{
  if (!qword_280EE8F68)
  {
    sub_219BDF704();
    sub_2199FD234(qword_280EE86B0, MEMORY[0x277D2DCE8]);
    v0 = sub_219BDCC14();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE8F68);
    }
  }
}

uint64_t sub_2199FD234(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2199FD3F4()
{
  sub_2199FD480(&qword_27CC18288);

  JUMPOUT(0x21CEC1E40);
}

uint64_t sub_2199FD480(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FollowingNotificationsSectionFooterView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2199FD4D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a3;
  sub_2199FEBAC(0, &qword_280E8C5E0, MEMORY[0x277D84538]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199FEB58();
  sub_219BF7B44();
  v16 = a2;
  v15 = 0;
  type metadata accessor for TodayFeedGroupKnobs();
  sub_2199FEC10(&qword_280ECFCA0, type metadata accessor for TodayFeedGroupKnobs);
  sub_219BF7834();
  if (!v4)
  {
    LOBYTE(v16) = 1;
    sub_219BF7824();
    v16 = a4;
    v15 = 2;
    sub_2199FE784();
    sub_2199FEC10(&qword_280E91530, sub_2199FE784);
    sub_219BF7834();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_2199FD714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2199FED70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2199FD73C(uint64_t a1)
{
  v2 = sub_2199FEB58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2199FD778(uint64_t a1)
{
  v2 = sub_2199FEB58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2199FD7B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2199FE8D8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_2199FD80C()
{
  sub_219BEF524();
  if (qword_280EE9480 != -1)
  {
    swift_once();
  }

  return sub_2190EA6E0(qword_280EE9488);
}

uint64_t sub_2199FD88C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v113 = a4;
  v114 = a2;
  v115 = a3;
  sub_2199FE730(0, qword_280EC4E40, type metadata accessor for FoodTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v5 - 8);
  v108 = &v93 - v6;
  sub_2199FE730(0, qword_280EA8320, type metadata accessor for SavedStoriesTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v7 - 8);
  v107 = &v93 - v8;
  sub_2199FE730(0, qword_280EBBE88, type metadata accessor for ChannelTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v9 - 8);
  v106 = &v93 - v10;
  sub_2199FE730(0, qword_280EB2C98, type metadata accessor for ShortcutsTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v11 - 8);
  v105 = &v93 - v12;
  sub_2199FE730(0, qword_280EA6580, type metadata accessor for IntroToSportsTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v13 - 8);
  v104 = &v93 - v14;
  sub_2199FE730(0, qword_280EB7D68, type metadata accessor for MySportsTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v15 - 8);
  v103 = &v93 - v16;
  sub_2199FE730(0, &qword_280EB0D78, type metadata accessor for EngagementTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v17 - 8);
  v102 = &v93 - v18;
  sub_2199FE730(0, qword_280EA4B50, type metadata accessor for SharedWithYouTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v19 - 8);
  v101 = &v93 - v20;
  sub_2199FE730(0, qword_280E9F0C8, type metadata accessor for SeenContentMarkTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v21 - 8);
  v112 = &v93 - v22;
  sub_2199FE730(0, qword_280EB2360, type metadata accessor for SpotlightTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v23 - 8);
  v111 = &v93 - v24;
  sub_2199FE730(0, qword_280EAE8E0, type metadata accessor for SuggestionTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v25 - 8);
  v110 = &v93 - v26;
  sub_2199FE730(0, qword_280EA7AE8, type metadata accessor for SubscriptionTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v27 - 8);
  v109 = (&v93 - v28);
  sub_2199FE730(0, qword_280EB39A0, type metadata accessor for NewFollowTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v93 - v30;
  sub_2199FE730(0, qword_280EB82B0, type metadata accessor for MagazineTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v93 - v33;
  sub_2199FE730(0, qword_280EBFC48, type metadata accessor for TopicTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v93 - v36;
  sub_2199FE730(0, qword_280EA6350, type metadata accessor for LatestStoriesTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v38 - 8);
  v40 = &v93 - v39;
  sub_2199FE730(0, qword_280EA5F10, type metadata accessor for MissedStoriesTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v41 - 8);
  v43 = &v93 - v42;
  sub_2199FE730(0, qword_280EBE4F0, type metadata accessor for ForYouTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v44 - 8);
  v46 = &v93 - v45;
  sub_2199FE730(0, qword_280EB6060, type metadata accessor for TrendingTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v47 - 8);
  v49 = &v93 - v48;
  sub_2199FE730(0, qword_280EE2CE8, type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v50 - 8);
  v52 = &v93 - v51;
  sub_2199FE730(0, qword_280EA0080, type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v53 - 8);
  v55 = &v93 - v54;
  if (!a1)
  {
    v57 = type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs();
    (*(*(v57 - 8) + 56))(v55, 1, 1, v57);
    v58 = type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs();
    (*(*(v58 - 8) + 56))(v52, 1, 1, v58);
    v59 = type metadata accessor for TrendingTodayFeedGroupKnobs();
    v60 = *(*(v59 - 8) + 56);
    v100 = v49;
    v60(v49, 1, 1, v59);
    v61 = type metadata accessor for ForYouTodayFeedGroupKnobs();
    v62 = *(*(v61 - 8) + 56);
    v99 = v46;
    v62(v46, 1, 1, v61);
    v63 = type metadata accessor for MissedStoriesTodayFeedGroupKnobs();
    v64 = *(*(v63 - 8) + 56);
    v98 = v43;
    v64(v43, 1, 1, v63);
    v65 = type metadata accessor for LatestStoriesTodayFeedGroupKnobs();
    v66 = *(*(v65 - 8) + 56);
    v97 = v40;
    v66(v40, 1, 1, v65);
    v67 = type metadata accessor for TopicTodayFeedGroupKnobs();
    v68 = *(*(v67 - 8) + 56);
    v96 = v37;
    v68(v37, 1, 1, v67);
    v69 = type metadata accessor for MagazineTodayFeedGroupKnobs();
    v70 = *(*(v69 - 8) + 56);
    v95 = v34;
    v70(v34, 1, 1, v69);
    v71 = type metadata accessor for NewFollowTodayFeedGroupKnobs();
    v72 = *(*(v71 - 8) + 56);
    v94 = v31;
    v72(v31, 1, 1, v71);
    v73 = type metadata accessor for SubscriptionTodayFeedGroupKnobs();
    (*(*(v73 - 8) + 56))(v109, 1, 1, v73);
    v74 = type metadata accessor for SuggestionTodayFeedGroupKnobs();
    (*(*(v74 - 8) + 56))(v110, 1, 1, v74);
    v75 = type metadata accessor for SpotlightTodayFeedGroupKnobs();
    (*(*(v75 - 8) + 56))(v111, 1, 1, v75);
    v76 = type metadata accessor for SeenContentMarkTodayFeedGroupKnobs();
    (*(*(v76 - 8) + 56))(v112, 1, 1, v76);
    v77 = type metadata accessor for SharedWithYouTodayFeedGroupKnobs();
    v78 = v101;
    (*(*(v77 - 8) + 56))(v101, 1, 1, v77);
    v79 = type metadata accessor for EngagementTodayFeedGroupKnobs();
    v80 = v102;
    (*(*(v79 - 8) + 56))(v102, 1, 1, v79);
    v81 = type metadata accessor for MySportsTodayFeedGroupKnobs();
    v82 = v103;
    (*(*(v81 - 8) + 56))(v103, 1, 1, v81);
    v83 = type metadata accessor for IntroToSportsTodayFeedGroupKnobs();
    v84 = v104;
    (*(*(v83 - 8) + 56))(v104, 1, 1, v83);
    v85 = type metadata accessor for ShortcutsTodayFeedGroupKnobs();
    v86 = v105;
    (*(*(v85 - 8) + 56))(v105, 1, 1, v85);
    v87 = type metadata accessor for ChannelTodayFeedGroupKnobs();
    v88 = v106;
    (*(*(v87 - 8) + 56))(v106, 1, 1, v87);
    v89 = type metadata accessor for SavedStoriesTodayFeedGroupKnobs();
    v90 = v107;
    (*(*(v89 - 8) + 56))(v107, 1, 1, v89);
    v91 = type metadata accessor for FoodTodayFeedGroupKnobs();
    v92 = v108;
    (*(*(v91 - 8) + 56))(v108, 1, 1, v91);
    type metadata accessor for TodayFeedGroupKnobs();
    swift_allocObject();
    a1 = sub_219280AE0(v55, v52, 0, 0, v100, v99, v98, v97, v96, v95, v94, v109, v110, v111, v112, 0, v78, v80, v82, v84, v86, v88, v90, 0, v92);
    if (v113)
    {
      return a1;
    }

LABEL_5:
    v116 = 1;
    sub_2199FE784();
    swift_allocObject();
    sub_219BEF534();
    return a1;
  }

  if (!v113)
  {
    goto LABEL_5;
  }

  return a1;
}

void sub_2199FE730(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_2199FE784()
{
  if (!qword_280E91520)
  {
    sub_2199FE888();
    sub_2199FEC10(&qword_280EABB60, sub_2199FE888);
    sub_2199FEC10(&qword_280EABB70, sub_2199FE888);
    sub_2199FEC10(&qword_280EABB68, sub_2199FE888);
    v0 = sub_219BEF544();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91520);
    }
  }
}

void sub_2199FE888()
{
  if (!qword_280EABB58)
  {
    refreshed = type metadata accessor for OverridableFeedRefreshStrategy();
    if (!v1)
    {
      atomic_store(refreshed, &qword_280EABB58);
    }
  }
}

uint64_t sub_2199FE8D8(void *a1)
{
  sub_2199FEBAC(0, &qword_280E8CEA8, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v13[-v6];
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199FEB58();
  sub_219BF7B34();
  if (!v1)
  {
    type metadata accessor for TodayFeedGroupKnobs();
    LOBYTE(v15) = 0;
    sub_2199FEC10(&qword_280ECFC98, type metadata accessor for TodayFeedGroupKnobs);
    sub_219BF7674();
    v9 = v17;
    LOBYTE(v14) = 1;
    sub_219BF7674();
    v10 = v15;
    v11 = v16;
    sub_2199FE784();
    v13[7] = 2;
    sub_2199FEC10(&qword_280E91528, sub_2199FE784);
    sub_219BF7674();
    v8 = sub_2199FD88C(v9, v10, v11, v14);
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_2199FEB58()
{
  result = qword_280ECC5F8[0];
  if (!qword_280ECC5F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ECC5F8);
  }

  return result;
}

void sub_2199FEBAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2199FEB58();
    v7 = a3(a1, &type metadata for TodayFeedKnobsConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2199FEC10(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2199FEC6C()
{
  result = qword_27CC22580;
  if (!qword_27CC22580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22580);
  }

  return result;
}

unint64_t sub_2199FECC4()
{
  result = qword_280ECC5E8;
  if (!qword_280ECC5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECC5E8);
  }

  return result;
}

unint64_t sub_2199FED1C()
{
  result = qword_280ECC5F0;
  if (!qword_280ECC5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECC5F0);
  }

  return result;
}

uint64_t sub_2199FED70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6E4B70756F7267 && a2 == 0xEA00000000007362;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70756F724778616DLL && a2 == 0xE900000000000073 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5368736572666572 && a2 == 0xEF79676574617274)
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

uint64_t sub_2199FEEB0(uint64_t a1, void *a2)
{
  v4 = sub_219BF1584();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = *(v5 + 16);
  v11(&v21 - v9, a1, v4);
  if (qword_280EE2698 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v4, qword_280F62308);
  sub_2199FF624();
  if (sub_219BF53A4())
  {
    result = [a2 respondsToSelector_];
    if (result)
    {
      v13 = [a2 offlineStatusBannerDeviceOfflineTitle];
      if (v13)
      {
        v14 = v13;
        v15 = sub_219BF5414();
      }

      else
      {
        v15 = 0;
      }

      (*(v5 + 8))(v10, v4);
      return v15;
    }

    __break(1u);
    goto LABEL_37;
  }

  if (qword_280EE2690 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v4, qword_280F622F0);
  v11(v8, v16, v4);
  v17 = sub_219BF53A4();
  v18 = *(v5 + 8);
  v18(v8, v4);
  if (v17)
  {
    result = [a2 respondsToSelector_];
    if ((result & 1) == 0)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v19 = [a2 offlineStatusBannerPoorConnectionTitle];
    if (!v19)
    {
      goto LABEL_32;
    }

LABEL_26:
    v20 = v19;
    v15 = sub_219BF5414();

LABEL_33:
    v18(v10, v4);
    return v15;
  }

  if (qword_27CC07DB8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v4, qword_27CCD84B0);
  if (sub_219BF53A4())
  {
    result = [a2 respondsToSelector_];
    if ((result & 1) == 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v19 = [a2 offlineStatusBannerServerProblemTitle];
    if (v19)
    {
      goto LABEL_26;
    }

    goto LABEL_32;
  }

  if (qword_27CC07DC0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v4, qword_27CCD84C8);
  if (sub_219BF53A4())
  {
    result = [a2 respondsToSelector_];
    if ((result & 1) == 0)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v19 = [a2 offlineStatusBannerUpdateRequiredTitle];
    if (v19)
    {
      goto LABEL_26;
    }

    goto LABEL_32;
  }

  if (qword_27CC07DC8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v4, qword_27CCD84E0);
  if ((sub_219BF53A4() & 1) == 0)
  {
    v18(v10, v4);
    return sub_219BF1554();
  }

  result = [a2 respondsToSelector_];
  if (result)
  {
    v19 = [a2 offlineStatusBannerDeviceObsoletionTitle];
    if (v19)
    {
      goto LABEL_26;
    }

LABEL_32:
    v15 = 0;
    goto LABEL_33;
  }

LABEL_40:
  __break(1u);
  return result;
}

id sub_2199FF35C(uint64_t a1, void *a2)
{
  v4 = sub_219BF1584();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218805670();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2199FF5C0(a1, v10);
  if ((*(v5 + 48))(v10, 1, v4) != 1)
  {
    (*(v5 + 32))(v7, v10, v4);
    v15 = sub_2199FEEB0(v7, a2);
    if (!v16)
    {
      v15 = sub_219BF1554();
    }

    v17 = v15;
    (*(v5 + 8))(v7, v4);
    return v17;
  }

  result = [a2 respondsToSelector_];
  if (result)
  {
    v12 = [a2 offlineStatusBannerDeviceOnlineTitle];
    if (v12)
    {
      v13 = v12;
      v14 = sub_219BF5414();
    }

    else
    {
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v13 = [objc_opt_self() bundleForClass_];
      v14 = sub_219BDB5E4();
    }

    v17 = v14;

    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_2199FF5C0(uint64_t a1, uint64_t a2)
{
  sub_218805670();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2199FF624()
{
  result = qword_280E90880;
  if (!qword_280E90880)
  {
    sub_219BF1584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E90880);
  }

  return result;
}

uint64_t sub_2199FF68C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MagazineSectionConfig();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  if (![a1 isSubscribed])
  {
    goto LABEL_28;
  }

  sub_219BDC8D4();
  sub_219BDC8B4();
  if (qword_27CC07FA8 != -1)
  {
    swift_once();
  }

  sub_219BDC8A4();

  if (v28 == 1)
  {
    v26 = a2;
    v13 = *(a3 + 16);
    if (v13)
    {
      v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v15 = *(v7 + 72);
      v16 = a3 + v14;
      v17 = MEMORY[0x277D84F90];
      v27 = v14;
      do
      {
        sub_2199FFD68(v16, v12);
        v18 = &v12[*(v6 + 36)];
        if (v18[16] == 2 && ((v19 = *v18, !*&v12[*(v6 + 36) + 8]) ? (v20 = v19 == 2) : (v20 = 0), v20))
        {
          sub_21915D970(v12, v10);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v28 = v17;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_218C371C0(0, *(v17 + 16) + 1, 1);
            v14 = v27;
            v17 = v28;
          }

          v23 = *(v17 + 16);
          v22 = *(v17 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_218C371C0(v22 > 1, v23 + 1, 1);
            v14 = v27;
            v17 = v28;
          }

          *(v17 + 16) = v23 + 1;
          sub_21915D970(v10, v17 + v14 + v23 * v15);
        }

        else
        {
          sub_2199FFDCC(v12);
        }

        v16 += v15;
        --v13;
      }

      while (v13);
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }

    v28 = v17;
    sub_219A00068();
    sub_219A00868(&qword_280E8F1E0, sub_219A00068);
    v24 = sub_219BF56E4();

    v28 = v26;

    sub_2191EF978(v24);
    return v28;
  }

  else
  {
LABEL_28:
    if ([a1 isSubscribed])
    {
    }

    else
    {

      return a3;
    }
  }

  return a2;
}

uint64_t sub_2199FF9C8(void *a1, uint64_t a2, uint64_t a3)
{
  v12 = a3;
  sub_219A00758(0, &qword_27CC22588, sub_219A002F0, &type metadata for MagazineSectionsConfig.CodingKeys, MEMORY[0x277D84538]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A002F0();
  sub_219BF7B44();
  v14 = a2;
  v13 = 0;
  sub_219A00398();
  sub_219BF7834();
  if (!v3)
  {
    v14 = v12;
    v13 = 1;
    sub_219BF7834();
  }

  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_2199FFB88()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_2199FFBC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000219D44BD0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219D44BF0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_2199FFCA8(uint64_t a1)
{
  v2 = sub_219A002F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2199FFCE4(uint64_t a1)
{
  v2 = sub_219A002F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2199FFD20@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_219A000C0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_2199FFD68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineSectionConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2199FFDCC(uint64_t a1)
{
  v2 = type metadata accessor for MagazineSectionConfig();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2199FFE28(void *a1, uint64_t a2)
{
  sub_219A00758(0, &qword_27CC225A0, sub_219A00704, &type metadata for MagazineSubscriberBasedSectionsConfig.CodingKeys, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A00704();
  sub_219BF7B44();
  v10[1] = a2;
  sub_219A00068();
  sub_219A007C0();
  sub_219BF7834();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2199FFFA8(uint64_t a1)
{
  v2 = sub_219A00704();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2199FFFE4(uint64_t a1)
{
  v2 = sub_219A00704();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219A00020@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_219A00514(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_219A00068()
{
  if (!qword_280E8F1E8)
  {
    type metadata accessor for MagazineSectionConfig();
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8F1E8);
    }
  }
}

uint64_t sub_219A000C0(void *a1)
{
  sub_219A00758(0, &qword_280E8CE38, sub_219A002F0, &type metadata for MagazineSectionsConfig.CodingKeys, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_219A002F0();
  sub_219BF7B34();
  if (!v1)
  {
    v10[8] = 0;
    sub_219A00344();
    sub_219BF7734();
    v8 = v11;
    v10[7] = 1;
    sub_219BF7734();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_219A002F0()
{
  result = qword_280EC7A00[0];
  if (!qword_280EC7A00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EC7A00);
  }

  return result;
}

unint64_t sub_219A00344()
{
  result = qword_280E994B8;
  if (!qword_280E994B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E994B8);
  }

  return result;
}

unint64_t sub_219A00398()
{
  result = qword_27CC22590;
  if (!qword_27CC22590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22590);
  }

  return result;
}

unint64_t sub_219A00410()
{
  result = qword_27CC22598;
  if (!qword_27CC22598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22598);
  }

  return result;
}

unint64_t sub_219A00468()
{
  result = qword_280EC79F0;
  if (!qword_280EC79F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC79F0);
  }

  return result;
}

unint64_t sub_219A004C0()
{
  result = qword_280EC79F8;
  if (!qword_280EC79F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC79F8);
  }

  return result;
}

uint64_t sub_219A00514(void *a1)
{
  sub_219A00758(0, &qword_280E8C7F8, sub_219A00704, &type metadata for MagazineSubscriberBasedSectionsConfig.CodingKeys, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A00704();
  v9 = v8;
  sub_219BF7B34();
  if (!v1)
  {
    type metadata accessor for MagazineSectionConfig();
    sub_219A00868(&qword_280ECA868, type metadata accessor for MagazineSectionConfig);
    v9 = sub_219BF7654();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_219A00704()
{
  result = qword_280E994D0;
  if (!qword_280E994D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E994D0);
  }

  return result;
}

void sub_219A00758(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_219A007C0()
{
  result = qword_27CC225A8;
  if (!qword_27CC225A8)
  {
    sub_219A00068();
    sub_219A00868(&qword_27CC225B0, type metadata accessor for MagazineSectionConfig);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC225A8);
  }

  return result;
}

uint64_t sub_219A00868(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_219A008C4()
{
  result = qword_27CC225B8;
  if (!qword_27CC225B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC225B8);
  }

  return result;
}

unint64_t sub_219A0091C()
{
  result = qword_280E994C0;
  if (!qword_280E994C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E994C0);
  }

  return result;
}

unint64_t sub_219A00974()
{
  result = qword_280E994C8;
  if (!qword_280E994C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E994C8);
  }

  return result;
}

uint64_t sub_219A009D8(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v34 = a3;
  v35 = a2;
  v33 = sub_219BE6DF4();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A01028(0, &unk_280EE4AF8, MEMORY[0x277D6DF88]);
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  sub_218DC260C();
  MEMORY[0x28223BE20](v10 - 8);
  sub_219A01028(0, &qword_280EE3638, MEMORY[0x277D6EC60]);
  v27 = *(v11 - 8);
  v28 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v37 = v3;
  v14 = sub_21894A2F4(sub_219A0111C, v36);
  sub_218954178();
  v16 = v15;
  v17 = sub_2186FF9E4(&qword_280EE5978, sub_218954178);
  v18 = sub_2186FF9E4(&qword_280EE5988, sub_218954178);
  MEMORY[0x21CEB9170](v14, v16, v17, v18);
  type metadata accessor for HistoryFeedSectionDescriptor();
  type metadata accessor for HistoryFeedModel(0);
  sub_2186FF9E4(&qword_280EB4200, type metadata accessor for HistoryFeedSectionDescriptor);
  sub_2186FF9E4(&qword_280ED8650, type metadata accessor for HistoryFeedModel);
  sub_219BEB2D4();
  v32 = a1;
  v19 = sub_2195CF9D4();
  sub_219BEEFF4();
  sub_219BEEFE4();
  type metadata accessor for HistoryFeedServiceConfig();
  sub_2186FF9E4(&qword_280EC18D0, type metadata accessor for HistoryFeedServiceConfig);
  v20 = sub_219BEEFC4();

  v21 = 0;
  if (v20)
  {
    v21 = sub_219BEDC74();
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  v38 = v20;
  v41 = v21;
  v22 = v28;
  sub_219BEB2C4();
  sub_21885AB78(v19);
  v23 = v31;
  v24 = v33;
  (*(v31 + 104))(v6, *MEMORY[0x277D6D868], v33);
  sub_2186FF9E4(&qword_280EB41F8, type metadata accessor for HistoryFeedSectionDescriptor);
  sub_219BE85E4();
  (*(v23 + 8))(v6, v24);
  v35(v9);
  (*(v29 + 8))(v9, v30);
  return (*(v27 + 8))(v13, v22);
}

uint64_t sub_219A00F04(uint64_t a1)
{
  v2 = sub_219A01174();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_219A00F44()
{
  result = qword_27CC225C0;
  if (!qword_27CC225C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC225C0);
  }

  return result;
}

void sub_219A01028(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for HistoryFeedSectionDescriptor();
    v8[1] = type metadata accessor for HistoryFeedModel(255);
    v8[2] = sub_2186FF9E4(&qword_280EB4200, type metadata accessor for HistoryFeedSectionDescriptor);
    v8[3] = sub_2186FF9E4(&qword_280ED8650, type metadata accessor for HistoryFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_219A0111C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  __swift_project_boxed_opaque_existential_1(v5 + 1, v5[4]);
  return sub_2195D300C(a1, *v5, a2);
}

unint64_t sub_219A01174()
{
  result = qword_27CC225C8;
  if (!qword_27CC225C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC225C8);
  }

  return result;
}

uint64_t sub_219A011EC(uint64_t a1, uint64_t a2)
{
  v87 = sub_219BF0BD4();
  v4 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v86 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218972E2C();
  v92 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF2164();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v91 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF3C84();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v77 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v80 = &v55 - v17;
  v88 = a2;
  v85 = OBJC_IVAR____TtC7NewsUI221SportsFavoritesConfig_formatContent;
  result = sub_219BF18E4();
  v76 = *(result + 16);
  if (v76)
  {
    v19 = 0;
    v84 = OBJC_IVAR____TtC7NewsUI221SportsFavoritesConfig_feedContext;
    v75 = v14 + 16;
    v74 = v14 + 88;
    v73 = *MEMORY[0x277D34128];
    v72 = *MEMORY[0x277D34108];
    v71 = *MEMORY[0x277D34100];
    v70 = *MEMORY[0x277D34130];
    v69 = *MEMORY[0x277D34118];
    v68 = *MEMORY[0x277D340E8];
    v78 = (v14 + 8);
    v62 = (v14 + 96);
    v61 = (v11 + 32);
    v67 = *MEMORY[0x277D34110];
    v63 = a1;
    v56 = (a1 + 32);
    v90 = (v4 + 16);
    v65 = *MEMORY[0x277D340F0];
    v83 = v7 + 32;
    v60 = (v11 + 8);
    v82 = xmmword_219C09EC0;
    v81 = MEMORY[0x277D84F90];
    v20 = v14;
    v21 = v77;
    v59 = v10;
    v58 = v13;
    v57 = v14;
    v66 = result;
    while (v19 < *(result + 16))
    {
      v22 = result + ((*(v20 + 80) + 32) & ~*(v20 + 80));
      v23 = *(v20 + 72);
      v79 = v19;
      v24 = *(v20 + 16);
      v25 = v80;
      v24(v80, v22 + v23 * v19, v13);
      v24(v21, v25, v13);
      v26 = (*(v20 + 88))(v21, v13);
      v32 = v26 == v73 || v26 == v72 || v26 == v71 || v26 == v70 || v26 == v69 || v26 == v68 || v26 == v67;
      v33 = v78;
      v34 = v78 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v32 || v26 != v65)
      {
        v44 = *v78;
        (*v78)(v21, v13);
        v36 = MEMORY[0x277D84F90];
      }

      else
      {
        (*v62)(v21, v13);
        (*v61)(v91, v21, v10);
        v35 = *(v63 + 16);
        if (v35)
        {
          v64 = v34;
          v94 = MEMORY[0x277D84F90];
          sub_218C384E8(0, v35, 0);
          v36 = v94;
          v89 = *v90;
          v37 = v56;
          do
          {
            v38 = v7;
            v93 = *v37;
            v89(v86, v88 + v84, v87);
            sub_21871D24C();
            v39 = swift_allocObject();
            *(v39 + 16) = v82;
            swift_unknownObjectRetain_n();
            *(v39 + 32) = sub_219BF17D4();
            *(v39 + 40) = v40;
            *(v39 + 48) = sub_219BF2154();
            *(v39 + 56) = v41;
            MEMORY[0x21CEC80A0](v39);

            sub_218972EAC();
            sub_218972F00();
            sub_219BF0844();
            swift_unknownObjectRelease();
            v94 = v36;
            v43 = *(v36 + 16);
            v42 = *(v36 + 24);
            if (v43 >= v42 >> 1)
            {
              sub_218C384E8(v42 > 1, v43 + 1, 1);
              v36 = v94;
            }

            *(v36 + 16) = v43 + 1;
            v7 = v38;
            (*(v38 + 32))(v36 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v43, v9, v92);
            ++v37;
            --v35;
          }

          while (v35);
          v10 = v59;
          v13 = v58;
          v20 = v57;
          v33 = v78;
        }

        else
        {
          v36 = MEMORY[0x277D84F90];
        }

        (*v60)(v91, v10);
        v44 = *v33;
      }

      result = v44(v80, v13);
      v45 = *(v36 + 16);
      v46 = v81;
      v47 = v81[2];
      v48 = v47 + v45;
      if (__OFADD__(v47, v45))
      {
        goto LABEL_51;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v48 <= v46[3] >> 1)
      {
        result = v46;
      }

      else
      {
        if (v47 <= v48)
        {
          v50 = v47 + v45;
        }

        else
        {
          v50 = v47;
        }

        result = sub_2191F68F0(isUniquelyReferenced_nonNull_native, v50, 1, v46);
      }

      v51 = *(v36 + 16);
      v81 = result;
      if (v51)
      {
        if ((*(result + 24) >> 1) - *(result + 16) < v45)
        {
          goto LABEL_53;
        }

        swift_arrayInitWithCopy();

        v21 = v77;
        if (v45)
        {
          v52 = v81[2];
          v53 = __OFADD__(v52, v45);
          v54 = v52 + v45;
          if (v53)
          {
            goto LABEL_54;
          }

          v81[2] = v54;
        }
      }

      else
      {

        v21 = v77;
        if (v45)
        {
          goto LABEL_52;
        }
      }

      v19 = v79 + 1;
      result = v66;
      if (v79 + 1 == v76)
      {
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
  }

  else
  {
    v81 = MEMORY[0x277D84F90];
LABEL_49:

    return v81;
  }

  return result;
}

uint64_t type metadata accessor for MagazineFeedRouteModel()
{
  result = qword_27CC225D0;
  if (!qword_27CC225D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219A01A7C()
{
  result = sub_219BDD944();
  if (v1 <= 0x3F)
  {
    result = sub_219BDD664();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for WebEmbedRouteModel();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for PuzzleModel();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for CustomItemRouteModel();
          if (v5 <= 0x3F)
          {
            result = sub_219BDE674();
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_219A01B54()
{
  v22 = sub_219BE9C04();
  v0 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v2 = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_219BDF074();
  v3 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE1544();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_219BE1524();
  v10 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v23 + 16);
  v13 = sub_219BE9924();
  v21[0] = v14;
  v21[1] = v13;
  (*(v7 + 104))(v9, *MEMORY[0x277D2F3B8], v6);
  sub_219BE9934();
  v15 = (*(v0 + 88))(v2, v22);
  if (v15 == *MEMORY[0x277D6E830])
  {
    v16 = MEMORY[0x277D2D868];
  }

  else
  {
    if (v15 != *MEMORY[0x277D6E840] && v15 != *MEMORY[0x277D6E848] && v15 != *MEMORY[0x277D6E838])
    {
      result = sub_219BF7514();
      __break(1u);
      return result;
    }

    v16 = MEMORY[0x277D2D810];
  }

  (*(v3 + 104))(v5, *v16, v25);
  sub_219BE1514();
  sub_219A04C7C(&qword_280EE7FE0, MEMORY[0x277D2F398]);
  v19 = v24;
  sub_219BDD1F4();
  (*(v10 + 8))(v12, v19);
  return sub_219BDD134();
}

uint64_t sub_219A01F44(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_219BDBD34();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_219BE1574();
  v6 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE9C04();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  v16 = sub_219BDF244();
  v32 = *(v16 - 8);
  v33 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE17A4();
  sub_219A04C7C(&qword_280EE7F30, MEMORY[0x277D2F910]);
  memset(v37, 0, sizeof(v37));
  v36 = a1;
  sub_219BDCCE4();
  sub_21874625C(v37, sub_21880702C);
  sub_219BE8F44();
  (*(v10 + 32))(v12, v15, v9);
  v19 = (*(v10 + 88))(v12, v9);
  if (v19 == *MEMORY[0x277D6E830])
  {
    (*(v6 + 104))(v8, *MEMORY[0x277D2F428], v30);
  }

  else
  {
    v20 = *(v6 + 104);
    if (v19 == *MEMORY[0x277D6E840] || v19 == *MEMORY[0x277D6E848] || v19 == *MEMORY[0x277D6E838])
    {
      v20(v8, *MEMORY[0x277D2F420], v30);
    }

    else
    {
      v20(v8, *MEMORY[0x277D2F430], v30);
      (*(v10 + 8))(v12, v9);
    }
  }

  sub_219BDF234();
  sub_2187F5E64(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v21 = sub_219BDCD44();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_219C09BA0;
  (*(v22 + 104))(v24 + v23, *MEMORY[0x277CEAD18], v21);
  sub_219A04C7C(&qword_280EE8810, MEMORY[0x277D2D9A8]);
  v25 = v33;
  sub_219BDCCC4();

  (*(v32 + 8))(v18, v25);
  sub_219BDF524();
  sub_219BE8F64();
  sub_219A04C7C(&qword_280EE8760, MEMORY[0x277D2DB18]);
  sub_219BDCC64();
  v26 = v35;
  v27 = *(v34 + 8);
  v27(v5, v35);
  sub_219BE8F54();
  sub_219BDCC74();
  return (v27)(v5, v26);
}

uint64_t sub_219A0256C(uint64_t a1)
{
  sub_218985EAC();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AudioPlaylistFeedModel();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B7E48C();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A04B18(0, &qword_27CC225E8, MEMORY[0x277D6DA48]);
  sub_219BE7564();
  sub_219BE5FC4();
  (*(v12 + 8))(v14, v11);
  (*(v4 + 32))(v6, v9, v3);
  sub_219BF07D4();
  v15 = *(v17[1] + 16);
  swift_unknownObjectRetain();

  sub_219A027BC(a1, v15);
  swift_unknownObjectRelease();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_219A027BC(uint64_t a1, void *a2)
{
  v24 = a1;
  sub_219A04B18(0, &qword_27CC225E8, MEMORY[0x277D6DA48]);
  v23 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  *&v7 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v22 = &v21 - v8;
  [*(v2 + 64) markArticleAsSeenWithHeadline:a2 rememberForever:{1, v7}];
  __swift_project_boxed_opaque_existential_1((v2 + 72), *(v2 + 96));
  v9 = [a2 identifier];
  v10 = sub_219BF5414();
  v12 = v11;

  sub_219771548(v10, v12);

  __swift_project_boxed_opaque_existential_1((v2 + 128), *(v2 + 152));
  v13 = [a2 identifier];
  sub_219BF5414();

  v14 = sub_219BF4774();

  v16 = v22;
  v15 = v23;
  (*(v5 + 16))(v22, v24, v23);
  v17 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  (*(v5 + 32))(v18 + v17, v16, v15);
  v19 = v18 + ((v6 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v19 = v2;
  *(v19 + 8) = v14 & 1;
  swift_unknownObjectRetain();

  sub_219BDD154();
}

uint64_t sub_219A02A24(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v153 = a5;
  v185 = a4;
  v189 = a3;
  v198 = a1;
  v159 = sub_219BDBD34();
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v157 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_219BDF8A4();
  v155 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v154 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_2187F5E64(0, &unk_280EE8690, MEMORY[0x277D2DD28], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v151 = &v128 - v10;
  v180 = sub_219BDF754();
  v181 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v152 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_219BDBD64();
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v131 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_219BDFFB4();
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v134 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_219BE1714();
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v128 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_219BE0444();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v140 = &v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187F5E64(0, &unk_27CC225F0, sub_218B7E48C, v8);
  MEMORY[0x28223BE20](v16 - 8);
  v144 = &v128 - v17;
  sub_218B7E48C();
  v184 = v18;
  v183 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v174 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A04B18(0, &qword_27CC0CA18, MEMORY[0x277D6EC60]);
  v177 = v20;
  v176 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v173 = &v128 - v21;
  sub_218F93C2C(0);
  MEMORY[0x28223BE20](v22 - 8);
  v175 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A04B18(0, &qword_27CC17670, MEMORY[0x277D6D710]);
  v178 = v24;
  v182 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v160 = &v128 - v25;
  v150 = sub_219BE09E4();
  v149 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v148 = &v128 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_219BDF104();
  v146 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v145 = &v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187F5E64(0, &qword_280EE8330, MEMORY[0x277D2E738], v8);
  MEMORY[0x28223BE20](v28 - 8);
  v170 = &v128 - v29;
  v172 = sub_219BE0724();
  v171 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v143 = &v128 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_219BE1774();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v137 = &v128 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_219BEFBD4();
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v164 = &v128 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_219BDF1A4();
  v168 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v167 = &v128 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_219BDFCE4();
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v161 = &v128 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_219BE0D44();
  v187 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v179 = &v128 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_219BDF0E4();
  v193 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v38 = &v128 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = a2;
  ObjectType = swift_getObjectType();
  sub_219BF67F4();
  sub_2187F5E64(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v195 = v39;
  v40 = sub_219BDCD44();
  v41 = *(v40 - 8);
  v194 = *(v41 + 72);
  v42 = *(v41 + 80);
  v43 = (v42 + 32) & ~v42;
  v44 = swift_allocObject();
  v200 = xmmword_219C09BA0;
  *(v44 + 16) = xmmword_219C09BA0;
  v197 = *MEMORY[0x277CEAD18];
  v45 = *(v41 + 104);
  v45(v44 + v43);
  v192 = "ylistFeedTracker.swift";
  sub_219A04C7C(&qword_280EE88B0, MEMORY[0x277D2D8A8]);
  sub_219BDCCC4();

  (*(v193 + 8))(v38, v36);
  v46 = v179;
  sub_219BF6834();
  v47 = swift_allocObject();
  *(v47 + 16) = v200;
  v190 = v40;
  v191 = v43;
  v193 = v41 + 104;
  (v45)(v47 + v43, v197, v40);
  sub_219A04C7C(&qword_280EE8190, MEMORY[0x277D2ECA0]);
  v48 = v186;
  sub_219BDCCC4();

  (v187)[1](v46, v48);
  sub_219A04B18(0, &qword_27CC225E8, MEMORY[0x277D6DA48]);
  v50 = v49;
  v51 = sub_219A04C7C(&qword_27CC22608, type metadata accessor for AudioPlaylistFeedModel);
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v179 = v51;
  v186 = v50;
  v53 = v42;
  v54 = v161;
  sub_219BDFCD4();
  v55 = v45;
  v56 = v191;
  v57 = swift_allocObject();
  *(v57 + 16) = v200;
  v58 = v190;
  v196 = v55;
  (v55)(v57 + v56, v197, v190);
  sub_219A04C7C(&unk_280EE8590, MEMORY[0x277D2E058]);
  v59 = v163;
  sub_219BDCCC4();

  (*(v162 + 8))(v54, v59);
  v60 = v165;
  v61 = v164;
  v62 = v166;
  (*(v165 + 104))(v164, *MEMORY[0x277D328F8], v166);
  v63 = v167;
  v64 = v199;
  sub_219BE02C4();
  (*(v60 + 8))(v61, v62);
  v187 = v53;
  v65 = swift_allocObject();
  *(v65 + 16) = v200;
  (v196)(v65 + v56, v197, v58);
  sub_219A04C7C(&unk_280EE8850, MEMORY[0x277D2D950]);
  v66 = v169;
  sub_219BDCCC4();

  (*(v168 + 8))(v63, v66);
  v67 = [v64 scoreProfile];
  v68 = v184;
  v69 = v183;
  v70 = v172;
  v71 = v171;
  if (v67)
  {
    v72 = v67;
    if ([v67 hasShadowScores])
    {
      [v72 shadowTabiScore];
      [v72 shadowAgedPersonalizationScore];
      v73 = v137;
      sub_219BE1764();
      v74 = v191;
      v75 = swift_allocObject();
      *(v75 + 16) = v200;
      (v196)(v75 + v74, v197, v190);
      sub_219A04C7C(&unk_280EE7F40, MEMORY[0x277D2F8F0]);
      v76 = v139;
      sub_219BDCCC4();

      (*(v138 + 8))(v73, v76);
    }

    else
    {
    }
  }

  v77 = v170;
  sub_219BF6824();
  if ((*(v71 + 48))(v77, 1, v70) == 1)
  {
    sub_219A04C0C(v77, &qword_280EE8330, MEMORY[0x277D2E738]);
    v78 = v191;
  }

  else
  {
    v79 = v143;
    (*(v71 + 32))(v143, v77, v70);
    v78 = v191;
    v80 = swift_allocObject();
    *(v80 + 16) = v200;
    (v196)(v80 + v78, v197, v190);
    sub_219A04C7C(&unk_27CC0DC50, MEMORY[0x277D2E738]);
    sub_219BDCCC4();

    (*(v71 + 8))(v79, v70);
  }

  v81 = [v199 sourceChannel];
  if (v81)
  {
    v185 = *(v185 + 112);
    v82 = v145;
    v172 = v81;
    sub_219BE01F4();
    v83 = swift_allocObject();
    *(v83 + 16) = v200;
    v84 = v197;
    (v196)(v83 + v78, v197, v190);
    sub_219A04C7C(&unk_280EE8890, MEMORY[0x277D2D8B8]);
    v85 = v147;
    sub_219BDCCC4();

    (*(v146 + 8))(v82, v85);
    v86 = v148;
    sub_219BE01E4();
    v87 = swift_allocObject();
    *(v87 + 16) = v200;
    v68 = v184;
    (v196)(v87 + v191, v84, v190);
    sub_219A04C7C(&qword_280EE8270, MEMORY[0x277D2E9C0]);
    v78 = v191;
    v88 = v150;
    v69 = v183;
    sub_219BDCCC4();
    swift_unknownObjectRelease();

    (*(v149 + 8))(v86, v88);
  }

  v89 = v173;
  sub_219BE7594();
  v90 = v174;
  sub_219BE7564();
  sub_219BE5F84();
  (*(v69 + 8))(v90, v68);
  v91 = v175;
  v92 = v177;
  sub_219BEB244();

  (*(v176 + 8))(v89, v92);
  v93 = v182;
  v94 = v178;
  if ((*(v182 + 48))(v91, 1, v178) == 1)
  {
    sub_21874625C(v91, sub_218F93C2C);
    v95 = v190;
    v96 = v181;
    v97 = v180;
    v98 = v196;
    goto LABEL_17;
  }

  (*(v93 + 32))(v160, v91, v94);
  v99 = v144;
  sub_219BE7564();
  (*(v69 + 56))(v99, 0, 1, v68);
  v100 = sub_219BE6A34();
  result = sub_219A04C0C(v99, &unk_27CC225F0, sub_218B7E48C);
  v96 = v181;
  if (v100 < 0xFFFFFFFF80000000)
  {
    goto LABEL_26;
  }

  if (v100 > 0x7FFFFFFF)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v101 = v140;
  sub_219BE0434();
  v102 = swift_allocObject();
  *(v102 + 16) = v200;
  v95 = v190;
  v98 = v196;
  (v196)(v102 + v78, v197, v190);
  sub_219A04C7C(&unk_280EE8400, MEMORY[0x277D2E530]);
  v103 = v142;
  sub_219BDCCC4();

  (*(v141 + 8))(v101, v103);
  (*(v182 + 8))(v160, v94);
  v97 = v180;
LABEL_17:
  if ([v199 respondsToSelector_])
  {
    v104 = [v199 parentIssue];
    if (v104)
    {
      v105 = v128;
      v187 = v104;
      sub_21934C4BC();
      v106 = swift_allocObject();
      *(v106 + 16) = v200;
      v107 = v197;
      (v196)(v106 + v78, v197, v190);
      sub_219A04C7C(&unk_280EE7F60, MEMORY[0x277D2F890]);
      v108 = v130;
      sub_219BDCCC4();

      (*(v129 + 8))(v105, v108);
      v109 = v131;
      sub_219BDBD54();
      sub_219BDBD44();
      (*(v132 + 8))(v109, v133);
      v110 = v134;
      sub_219BDFFA4();
      v96 = v181;
      v111 = swift_allocObject();
      *(v111 + 16) = v200;
      v112 = v107;
      v98 = v196;
      (v196)(v111 + v191, v112, v190);
      sub_219A04C7C(&unk_280EE84F0, MEMORY[0x277D2E290]);
      v78 = v191;
      v113 = v136;
      sub_219BDCCC4();

      v97 = v180;
      v95 = v190;
      (*(v135 + 8))(v110, v113);
    }
  }

  v114 = v151;
  sub_219BF6804();
  if ((*(v96 + 48))(v114, 1, v97) == 1)
  {
    sub_219A04C0C(v114, &unk_280EE8690, MEMORY[0x277D2DD28]);
    v115 = v98;
    v116 = v95;
    v117 = v78;
    v118 = v197;
  }

  else
  {
    (*(v96 + 32))(v152, v114, v97);
    v119 = swift_allocObject();
    *(v119 + 16) = v200;
    (v196)(v119 + v78, v197, v95);
    sub_219A04C7C(&unk_280EE86A0, MEMORY[0x277D2DD28]);
    v116 = v95;
    v120 = v96;
    v117 = v78;
    v121 = v152;
    sub_219BDCCC4();

    v118 = v197;
    v115 = v196;
    (*(v120 + 8))(v121, v97);
  }

  v122 = v154;
  sub_219BDF894();
  v123 = swift_allocObject();
  *(v123 + 16) = v200;
  v115(v123 + v117, v118, v116);
  sub_219A04C7C(&qword_280EE8640, MEMORY[0x277D2DE40]);
  v124 = v156;
  sub_219BDCCC4();

  (*(v155 + 8))(v122, v124);
  sub_219BE0834();
  v125 = v157;
  sub_219BE75A4();
  sub_219A04C7C(&qword_280EE82C0, MEMORY[0x277D2E858]);
  sub_219BDCC64();
  v126 = *(v158 + 8);
  v127 = v159;
  v126(v125, v159);
  sub_219BE7574();
  v201[3] = sub_219BDF4D4();
  __swift_allocate_boxed_opaque_existential_1(v201);
  swift_unknownObjectRetain();
  sub_219BDF4C4();
  sub_219BDCC84();
  v126(v125, v127);
  return sub_21874625C(v201, sub_21880702C);
}

uint64_t sub_219A04A54(uint64_t a1)
{
  sub_219A04B18(0, &qword_27CC225E8, MEMORY[0x277D6DA48]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_219A02A24(a1, v6, v1 + v5, v8, v9);
}

void sub_219A04B18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for AudioPlaylistFeedSectionDescriptor();
    v8[1] = type metadata accessor for AudioPlaylistFeedModel();
    v8[2] = sub_219A04C7C(&unk_27CC11BE0, type metadata accessor for AudioPlaylistFeedSectionDescriptor);
    v8[3] = sub_219A04C7C(&unk_27CC0B7F0, type metadata accessor for AudioPlaylistFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_219A04C0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2187F5E64(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219A04C7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SportsEventInfoTagFeedGroupKnobs()
{
  result = qword_280EA4890;
  if (!qword_280EA4890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219A04D38()
{
  sub_2189AD5C8();
  if (v0 <= 0x3F)
  {
    sub_218BE9934();
    if (v1 <= 0x3F)
    {
      sub_2186F9548();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_219A04DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v33 = a6;
  v34 = a5;
  v35 = a4;
  v36 = a3;
  sub_2189ADE0C();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8();
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE64(a1, v14);
  v20 = *(v17 + 48);
  if (v20(v14, 1, v16) == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    v32 = a8;
    sub_21877CE58(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    a8 = v32;
    sub_219BEE974();
    if (v20(v14, 1, v16) != 1)
    {
      sub_2189ADEC8(v14);
    }
  }

  else
  {
    (*(v17 + 32))(v19, v14, v16);
  }

  (*(v17 + 32))(a8, v19, v16);
  v22 = v33;
  v21 = v34;
  if (a2)
  {
    v23 = a2;
  }

  else
  {
    v24 = sub_219BF1F54();
    sub_218C3DB88(v24);

    sub_218BE9934();
    swift_allocObject();
    v23 = sub_219BEEE04();
  }

  v25 = v35;
  v26 = type metadata accessor for SportsEventInfoTagFeedGroupKnobs();
  *(a8 + v26[5]) = v23;
  v27 = v36;
  if (v36)
  {

    v28 = v27;
  }

  else
  {
    sub_218BE9934();
    swift_allocObject();

    v28 = sub_219BEEE04();
  }

  *(a8 + v26[6]) = v28;
  if (v25)
  {

    v29 = v25;
  }

  else
  {
    v37 = 2;
    sub_2186F9548();
    swift_allocObject();

    v29 = sub_219BEF534();
  }

  *(a8 + v26[7]) = v29;
  if (v21)
  {

    v30 = v21;
  }

  else
  {
    v37 = 2;
    sub_2186F9548();
    swift_allocObject();

    v30 = sub_219BEF534();
  }

  *(a8 + v26[8]) = v30;
  if (v22)
  {
  }

  else
  {
    v37 = 1;
    sub_2186F9548();
    swift_allocObject();

    v22 = sub_219BEF534();
  }

  *(a8 + v26[9]) = v22;
  if (!a7)
  {
    v37 = 1;
    sub_2186F9548();
    swift_allocObject();
    a7 = sub_219BEF534();
  }

  result = sub_2189ADEC8(a1);
  *(a8 + v26[10]) = a7;
  return result;
}

uint64_t sub_219A05264@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  sub_2189AD5C8();
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  v59 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SportsEventInfoTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE0C();
  MEMORY[0x28223BE20](v8 - 8);
  v62 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v63 = &v46 - v11;
  sub_219A06230(0, &qword_280E8CA00, MEMORY[0x277D844C8]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v46 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A06178();
  v17 = v64;
  sub_219BF7B34();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v50 = 0;
  v51 = v14;
  v52 = v5;
  v53 = v7;
  v54 = a1;
  LOBYTE(v71) = 0;
  sub_21877CE58(&qword_280E91A88, sub_2189AD5C8);
  v19 = v63;
  v20 = v58;
  sub_219BF7674();
  sub_218BE9934();
  LOBYTE(v70) = 1;
  sub_21877CE58(&qword_280E917C0, sub_218BE9934);
  sub_219BF7674();
  v56 = v71;
  LOBYTE(v69) = 2;
  sub_219BF7674();
  v49 = v70;
  sub_2186F9548();
  LOBYTE(v68) = 3;
  sub_21877CE58(&qword_280E913B8, sub_2186F9548);
  sub_219BF7674();
  v48 = v69;
  LOBYTE(v67) = 4;
  sub_219BF7674();
  v61 = v68;
  LOBYTE(v66) = 5;
  sub_219BF7674();
  v46 = v67;
  LOBYTE(v65) = 6;
  v64 = v16;
  sub_219BF7674();
  v21 = v66;
  v22 = v62;
  sub_2189ADE64(v19, v62);
  v23 = v57;
  v24 = *(v57 + 48);
  v25 = v24(v22, 1, v20);
  v47 = v13;
  v55 = v21;
  if (v25 == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_21877CE58(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v26 = v59;
    sub_219BEE974();
    v27 = v24(v62, 1, v20);
    v28 = v51;
    if (v27 != 1)
    {
      sub_2189ADEC8(v62);
    }
  }

  else
  {
    v26 = v59;
    (*(v23 + 32))(v59, v62, v20);
    v28 = v51;
  }

  v29 = *(v23 + 32);
  v30 = v53;
  v29(v53, v26, v20);
  v32 = v63;
  v31 = v64;
  if (v56)
  {
    v33 = v56;
  }

  else
  {
    v34 = sub_219BF1F54();
    sub_218C3DB88(v34);

    swift_allocObject();
    v32 = v63;
    v33 = sub_219BEEE04();
    v31 = v64;
  }

  v35 = v52;
  *(v30 + v52[5]) = v33;
  v36 = v49;
  v37 = v61;
  if (v49)
  {

    v38 = v36;
  }

  else
  {
    swift_allocObject();

    v38 = sub_219BEEE04();
    v37 = v61;
    v31 = v64;
  }

  *(v30 + v35[6]) = v38;
  v39 = v48;
  v40 = v46;
  if (v48)
  {

    v41 = v39;
  }

  else
  {
    v65 = 2;
    swift_allocObject();

    v41 = sub_219BEF534();
    v37 = v61;
    v31 = v64;
  }

  *(v30 + v35[7]) = v41;
  if (v37)
  {

    v42 = v37;
  }

  else
  {
    v65 = 2;
    swift_allocObject();

    v42 = sub_219BEF534();
    v31 = v64;
  }

  *(v30 + v35[8]) = v42;
  if (v40)
  {
  }

  else
  {
    v65 = 1;
    swift_allocObject();

    v43 = sub_219BEF534();
    v31 = v64;
    v40 = v43;
  }

  *(v30 + v35[9]) = v40;
  if (v55)
  {

    sub_2189ADEC8(v32);
    (*(v28 + 8))(v31, v47);
    v44 = v55;
  }

  else
  {
    v65 = 1;
    swift_allocObject();
    v45 = v31;
    v44 = sub_219BEF534();

    sub_2189ADEC8(v32);
    (*(v28 + 8))(v45, v47);
  }

  *(v30 + v35[10]) = v44;
  sub_219A061CC(v30, v60);
  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t sub_219A05AF8(void *a1)
{
  v3 = v1;
  sub_219A06230(0, &qword_27CC22610, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A06178();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_2189AD5C8();
  sub_21877CE58(&qword_27CC0BEC8, sub_2189AD5C8);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for SportsEventInfoTagFeedGroupKnobs();
    v14 = *(v3 + v10[5]);
    v13 = 1;
    sub_218BE9934();
    sub_21877CE58(&qword_27CC0EE30, sub_218BE9934);
    sub_219BF7834();
    v14 = *(v3 + v10[6]);
    v13 = 2;
    sub_219BF7834();
    v14 = *(v3 + v10[7]);
    v13 = 3;
    sub_2186F9548();
    sub_21877CE58(&qword_280E913C0, sub_2186F9548);
    sub_219BF7834();
    v14 = *(v3 + v10[8]);
    v13 = 4;
    sub_219BF7834();
    v14 = *(v3 + v10[9]);
    v13 = 5;
    sub_219BF7834();
    v14 = *(v3 + v10[10]);
    v13 = 6;
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_219A05E90()
{
  if (*v0 > 2u)
  {
    return 0xD000000000000015;
  }

  v2 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v2;
  }

  else
  {
    return 0x73656C7572;
  }
}

uint64_t sub_219A05F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_219A063AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_219A05FA4(uint64_t a1)
{
  v2 = sub_219A06178();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219A05FE0(uint64_t a1)
{
  v2 = sub_219A06178();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219A06050()
{
  type metadata accessor for TagFeedServiceConfig();
  sub_21877CE58(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
  if (sub_219BEE9F4() & 1) != 0 && (sub_218BE9934(), type metadata accessor for SportsEventInfoTagFeedGroupKnobs(), (sub_219BEEDE4()) && (sub_219BEEDE4() & 1) != 0 && (sub_2186F9548(), (sub_219BEF504()) && (sub_219BEF504() & 1) != 0 && (sub_219BEF504())
  {
    return sub_219BEF504() & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_219A06178()
{
  result = qword_280EA48B8;
  if (!qword_280EA48B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA48B8);
  }

  return result;
}

uint64_t sub_219A061CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsEventInfoTagFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219A06230(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219A06178();
    v7 = a3(a1, &type metadata for SportsEventInfoTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219A062A8()
{
  result = qword_27CC22618;
  if (!qword_27CC22618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22618);
  }

  return result;
}

unint64_t sub_219A06300()
{
  result = qword_280EA48A8;
  if (!qword_280EA48A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA48A8);
  }

  return result;
}

unint64_t sub_219A06358()
{
  result = qword_280EA48B0;
  if (!qword_280EA48B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA48B0);
  }

  return result;
}

uint64_t sub_219A063AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000219CEB600 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219CEB620 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219D44D30 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219D44D50 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219D44D70 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219D44D90 == a2)
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

unint64_t BridgedAlertArticleUnavailableType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

id BridgedAlertArticleUnavailable.__allocating_init(blockedReason:)()
{
  v1 = sub_219BDE254();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_allocWithZone(v0);
  sub_219BDE214();
  (*(v2 + 32))(v5 + OBJC_IVAR___TSAlertArticleUnavailable_alert, v4, v1);
  v7.receiver = v5;
  v7.super_class = v0;
  return objc_msgSendSuper2(&v7, sel_init);
}

id BridgedAlertArticleUnavailable.init(blockedReason:)()
{
  v1 = sub_219BDE254();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDE214();
  (*(v2 + 32))(v0 + OBJC_IVAR___TSAlertArticleUnavailable_alert, v4, v1);
  v5 = type metadata accessor for BridgedAlertArticleUnavailable();
  v7.receiver = v0;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t type metadata accessor for BridgedAlertArticleUnavailable()
{
  result = qword_27CC22628;
  if (!qword_27CC22628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id BridgedAlertArticleUnavailable.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  if (!a1)
  {
    v4 = MEMORY[0x277D2FEB8];
LABEL_5:
    v5 = OBJC_IVAR___TSAlertArticleUnavailable_alert;
    v6 = *v4;
    v7 = sub_219BDE254();
    (*(*(v7 - 8) + 104))(&v3[v5], v6, v7);
    v9.receiver = v3;
    v9.super_class = v1;
    return objc_msgSendSuper2(&v9, sel_init);
  }

  if (a1 == 1)
  {
    v4 = MEMORY[0x277D2FEC0];
    goto LABEL_5;
  }

  result = sub_219BF7974();
  __break(1u);
  return result;
}

id BridgedAlertArticleUnavailable.init(type:)(uint64_t a1)
{
  if (!a1)
  {
    v2 = MEMORY[0x277D2FEB8];
LABEL_5:
    v3 = OBJC_IVAR___TSAlertArticleUnavailable_alert;
    v4 = *v2;
    v5 = sub_219BDE254();
    (*(*(v5 - 8) + 104))(&v1[v3], v4, v5);
    v7.receiver = v1;
    v7.super_class = type metadata accessor for BridgedAlertArticleUnavailable();
    return objc_msgSendSuper2(&v7, sel_init);
  }

  if (a1 == 1)
  {
    v2 = MEMORY[0x277D2FEC0];
    goto LABEL_5;
  }

  result = sub_219BF7974();
  __break(1u);
  return result;
}

id sub_219A06C3C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_219BF53D4();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id BridgedAlertArticleUnavailable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedAlertArticleUnavailable.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BridgedAlertArticleUnavailable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_219A06DC4()
{
  result = qword_27CC22620;
  if (!qword_27CC22620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22620);
  }

  return result;
}

uint64_t sub_219A06E9C()
{
  result = sub_219BDE254();
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

uint64_t sub_219A06FD4()
{
  sub_2186FE720();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BF1904();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BEC004();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  sub_219BED874();
  sub_219BF1824();
  (*(v4 + 8))(v6, v3);
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    sub_218BFB694(v2);
    return sub_219BED774();
  }

  else
  {
    (*(v8 + 32))(v13, v2, v7);
    (*(v8 + 16))(v11, v13, v7);
    v15 = (*(v8 + 88))(v11, v7);
    if (v15 == *MEMORY[0x277D2D4D8])
    {
      v16 = *(v8 + 8);
      v16(v13, v7);
      v16(v11, v7);
      return 0x656C6C69666C7546;
    }

    else if (v15 == *MEMORY[0x277D2D4D0])
    {
      v17 = *(v8 + 8);
      v17(v13, v7);
      v17(v11, v7);
      return 0x64656C6C69666E55;
    }

    else
    {
      result = sub_219BF78E4();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_219A072FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A07B08(0, &qword_27CC22658, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for SponsoredBannerTagFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A07A50();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_219A07B6C(&unk_280E92630, MEMORY[0x277D31C50]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_219A07AA4(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219A075A8(uint64_t a1)
{
  v2 = sub_219A07A50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219A075E4(uint64_t a1)
{
  v2 = sub_219A07A50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219A07660(void *a1)
{
  sub_219A07B08(0, &qword_27CC22668, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A07A50();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_219A07B6C(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_219A077E8(void *a1)
{
  a1[1] = sub_219A07B6C(&qword_27CC22638, type metadata accessor for SponsoredBannerTagFeedGroup);
  a1[2] = sub_219A07B6C(&qword_27CC1C6E8, type metadata accessor for SponsoredBannerTagFeedGroup);
  result = sub_219A07B6C(&qword_27CC1C7F8, type metadata accessor for SponsoredBannerTagFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_219A0796C(uint64_t a1)
{
  result = sub_219A07B6C(&qword_27CC22650, type metadata accessor for SponsoredBannerTagFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_219A079C4(uint64_t a1)
{
  v2 = sub_219A07B6C(&qword_27CC22638, type metadata accessor for SponsoredBannerTagFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_219A07A50()
{
  result = qword_27CC22660;
  if (!qword_27CC22660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22660);
  }

  return result;
}

uint64_t sub_219A07AA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SponsoredBannerTagFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219A07B08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219A07A50();
    v7 = a3(a1, &type metadata for SponsoredBannerTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_219A07B6C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_219A07BC8()
{
  result = qword_27CC22670;
  if (!qword_27CC22670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22670);
  }

  return result;
}

unint64_t sub_219A07C20()
{
  result = qword_27CC22678;
  if (!qword_27CC22678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22678);
  }

  return result;
}

unint64_t sub_219A07C78()
{
  result = qword_27CC22680;
  if (!qword_27CC22680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22680);
  }

  return result;
}

uint64_t sub_219A07CCC(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      MEMORY[0x28223BE20](a1);
      sub_219BE3204();
      v4 = sub_219BE2E54();
      v5 = sub_219BE2F74();

      return v5;
    }

    else
    {
      sub_219A09BD8();
      swift_allocObject();
      return sub_219BE3014();
    }
  }

  else
  {
    if (qword_280E8D818 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v9 = swift_allocObject();
    v10 = v9;
    *(v9 + 16) = xmmword_219C09EC0;
    v11 = MEMORY[0x277D83C10];
    *(v9 + 56) = MEMORY[0x277D83B88];
    *(v9 + 64) = v11;
    *(v9 + 32) = a3;
    v12 = a4 & 1;
    if (v12)
    {
      v13 = 0x636572506D616574;
    }

    else
    {
      v13 = 0x746C7561666564;
    }

    if (v12)
    {
      v14 = 0xEE0065636E656465;
    }

    else
    {
      v14 = 0xE700000000000000;
    }

    *(v9 + 96) = MEMORY[0x277D837D0];
    *(v9 + 104) = sub_2186FC3BC();
    *(v10 + 72) = v13;
    *(v10 + 80) = v14;
    sub_219BF6214();
    sub_219BE5314();

    MEMORY[0x28223BE20](v15);
    return sub_219BE3204();
  }
}

uint64_t sub_219A07F68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = a1[1];
  a2[1] = v2;
}

uint64_t sub_219A07F9C(uint64_t a1, __int16 a2)
{
  sub_2186D6710(0, &qword_280E8E080);
  sub_219BE3204();

  v5 = sub_219BE2E54();
  sub_21946A754();
  sub_219BE2F64();

  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2 & 1;
  *(v6 + 33) = HIBYTE(a2) & 1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_219A09D78;
  *(v7 + 24) = v6;

  v8 = sub_219BE2E54();
  sub_219BE2F74();

  v9 = sub_219BE2E54();
  v10 = sub_219BE2FD4();

  return v10;
}

id sub_219A08148(void **a1, void *a2)
{
  v3 = *a1;
  __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
  sub_2191ABC74(1);
  __swift_project_boxed_opaque_existential_1(a2 + 7, a2[10]);
  v4 = off_282A790C0[0];
  type metadata accessor for SportsRecommendationManager();
  v4();
  result = [v3 respondsToSelector_];
  if (result)
  {
    v6 = [v3 editorialFallbackSportsTopicTagIds];
    if (v6)
    {
      v7 = v6;
      sub_219BF5924();
    }

    v8 = off_282A4D758;
    type metadata accessor for TagService();
    v8();

    sub_219BF29D4();
    sub_219BE3204();

    v9 = sub_219BE2E54();
    sub_219A09D14(0, &qword_280E8EFD0, type metadata accessor for TagModel, MEMORY[0x277D83940]);
    sub_219BE2F64();

    v10 = sub_219BE2E54();
    sub_218845868();
    sub_219BE2F64();

    v11 = sub_219BE2E54();
    sub_219BE3054();

    v12 = sub_219BE31A4();

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219A083F0(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, int a8)
{
  v116 = a8;
  v114 = a1;
  v115 = a7;
  v119 = a6;
  v113 = 0;
  v11 = sub_219BE4F54();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BE4EF4();
  v16 = MEMORY[0x277D84F90];
  v120 = MEMORY[0x277D84F90];
  v17 = *(v15 + 16);
  v112 = a2;
  if (v17)
  {
    v110 = v15;
    v111 = a4;
    v118 = a5;
    v20 = *(v12 + 16);
    v19 = v12 + 16;
    v18 = v20;
    v21 = v15 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v22 = *(v19 + 56);
    v117 = MEMORY[0x277D84F90];
    v20(v14, v21, v11);
    while (1)
    {
      v23 = [sub_219BE4F44() asSports];
      swift_unknownObjectRelease();
      v24 = (*(v19 - 8))(v14, v11);
      if (v23)
      {
        MEMORY[0x21CECC690](v24);
        if (*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v117 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_219BF5A14();
        }

        sub_219BF5A54();
        v117 = v120;
      }

      v21 += v22;
      if (!--v17)
      {
        break;
      }

      v18(v14, v21, v11);
    }

    a4 = v111;
    v16 = MEMORY[0x277D84F90];
  }

  else
  {

    v117 = MEMORY[0x277D84F90];
  }

  v120 = v16;
  v25 = a4 & 0xFFFFFFFFFFFFFF8;
  if (a4 >> 62)
  {
LABEL_52:
    v26 = sub_219BF7214();
  }

  else
  {
    v26 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = 0;
  v28 = a4;
  v29 = a4 & 0xC000000000000001;
  a4 = MEMORY[0x277D84F90];
  while (v26 != v27)
  {
    if (v29)
    {
      v30 = MEMORY[0x21CECE0F0](v27, v28);
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v27 >= *(v25 + 16))
      {
        goto LABEL_50;
      }

      v30 = *(v28 + 8 * v27 + 32);

      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }
    }

    v32 = [*(v30 + 16) asSports];

    ++v27;
    if (v32)
    {
      MEMORY[0x21CECC690](v33);
      if (*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      a4 = v120;
      v27 = v31;
    }
  }

  result = [*(v119 + 160) mutedTagIDs];
  if (!result)
  {
    __break(1u);
    goto LABEL_154;
  }

  v35 = result;
  v36 = sub_219BF5924();

  v37 = sub_218845F78(v36);

  v120 = a4;

  sub_2191EE304(v38);
  v39 = v120;
  v121 = MEMORY[0x277D84F90];
  if (v120 >> 62)
  {
    v55 = v120;
    v40 = sub_219BF7214();
    v39 = v55;
    if (v40)
    {
      goto LABEL_28;
    }

LABEL_54:
    v54 = MEMORY[0x277D84F90];
    goto LABEL_55;
  }

  v40 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v40)
  {
    goto LABEL_54;
  }

LABEL_28:
  v41 = 0;
  v118 = v39 & 0xFFFFFFFFFFFFFF8;
  v119 = v39 & 0xC000000000000001;
  v111 = v39;
  v25 = v39 + 32;
  v42 = v37 + 56;
  while (v119)
  {
    v43 = MEMORY[0x21CECE0F0](v41, v111);
    v44 = __OFADD__(v41++, 1);
    if (v44)
    {
      goto LABEL_47;
    }

LABEL_33:
    v45 = [v43 identifier];
    a4 = sub_219BF5414();
    v47 = v46;

    if (*(v37 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v48 = sub_219BF7AE4(), v49 = -1 << *(v37 + 32), v50 = v48 & ~v49, ((*(v42 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) != 0))
    {
      v51 = ~v49;
      while (1)
      {
        v52 = (*(v37 + 48) + 16 * v50);
        v53 = *v52 == a4 && v52[1] == v47;
        if (v53 || (sub_219BF78F4() & 1) != 0)
        {
          break;
        }

        v50 = (v50 + 1) & v51;
        if (((*(v42 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      swift_unknownObjectRelease();

      if (v41 == v40)
      {
        goto LABEL_48;
      }
    }

    else
    {
LABEL_29:

      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      if (v41 == v40)
      {
        goto LABEL_48;
      }
    }
  }

  if (v41 >= *(v118 + 16))
  {
    goto LABEL_51;
  }

  v43 = *(v25 + 8 * v41);
  swift_unknownObjectRetain();
  v44 = __OFADD__(v41++, 1);
  if (!v44)
  {
    goto LABEL_33;
  }

LABEL_47:
  __break(1u);
LABEL_48:
  v54 = v121;
LABEL_55:

  if (qword_280E8D818 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_219C0EE20;
  v57 = v114;
  v58 = v112;
  v59 = v117;
  if (v114 >> 62)
  {
    v100 = v56;
    v101 = sub_219BF7214();
    v57 = v114;
    v60 = v101;
    v56 = v100;
  }

  else
  {
    v60 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v61 = MEMORY[0x277D83B88];
  v62 = MEMORY[0x277D83C10];
  *(v56 + 56) = MEMORY[0x277D83B88];
  *(v56 + 64) = v62;
  *(v56 + 32) = v60;
  if (v58 >> 62)
  {
    v102 = v56;
    v103 = sub_219BF7214();
    v57 = v114;
    v63 = v103;
    v56 = v102;
  }

  else
  {
    v63 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v56 + 96) = v61;
  *(v56 + 104) = v62;
  *(v56 + 72) = v63;
  if (v59 >> 62)
  {
    v104 = v56;
    v105 = sub_219BF7214();
    v57 = v114;
    v64 = v105;
    v56 = v104;
  }

  else
  {
    v64 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v56 + 136) = v61;
  *(v56 + 144) = v62;
  *(v56 + 112) = v64;
  if (v54 < 0 || (v54 & 0x4000000000000000) != 0)
  {
    goto LABEL_123;
  }

  v65 = *(v54 + 16);
  while (1)
  {
    *(v56 + 176) = v61;
    *(v56 + 184) = v62;
    *(v56 + 152) = v65;
    v66 = v57;

    sub_219BF6214();
    sub_219BE5314();

    v120 = v58;

    sub_2191EE304(v67);

    sub_2191EE304(v68);
    sub_218845868();
    v61 = v69;
    v70 = sub_218ACCA38();
    v58 = sub_219BF56E4();

    v120 = v66;
    sub_2191EE304(v59);
    sub_2191EE304(v54);
    v62 = sub_219BF56E4();

    v71 = sub_218D0E668(v58, v116 & 1);

    v54 = v115;
    if ((v115 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_123:
    v106 = v56;
    v107 = sub_219BF7214();
    v57 = v114;
    v65 = v107;
    v56 = v106;
  }

  if (!(v71 >> 62))
  {
    v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v72 >= v115)
    {
      v73 = v115;
    }

    else
    {
      v73 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v74 = v115 == 0;
    if (v115)
    {
      v75 = v73;
    }

    else
    {
      v75 = 0;
    }

    if (v72 >= v75)
    {
      goto LABEL_75;
    }

LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v70 = sub_219BF7214();
  result = sub_219BF7214();
  if (result < 0)
  {
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
    return result;
  }

  if (v70 >= v54)
  {
    v108 = v54;
  }

  else
  {
    v108 = v70;
  }

  if (v70 < 0)
  {
    v108 = v54;
  }

  v74 = v54 == 0;
  if (v54)
  {
    v75 = v108;
  }

  else
  {
    v75 = 0;
  }

  if (sub_219BF7214() < v75)
  {
    goto LABEL_134;
  }

LABEL_75:
  if ((v71 & 0xC000000000000001) != 0 && v75)
  {
    sub_2186D6710(0, &qword_280E8E420);

    v76 = 0;
    do
    {
      v77 = v76 + 1;
      sub_219BF7334();
      v76 = v77;
    }

    while (v75 != v77);
  }

  else
  {
  }

  if (v71 >> 62)
  {
    v78 = sub_219BF7564();
    v79 = v80;
    v70 = v81;
    v75 = v82;

    if ((v75 & 1) == 0)
    {
      goto LABEL_85;
    }
  }

  else
  {
    v70 = 0;
    v78 = v71 & 0xFFFFFFFFFFFFFF8;
    v79 = (v71 & 0xFFFFFFFFFFFFFF8) + 32;
    v75 = (2 * v75) | 1;
    if ((v75 & 1) == 0)
    {
      goto LABEL_85;
    }
  }

  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v84 = swift_dynamicCastClass();
  if (!v84)
  {
    swift_unknownObjectRelease();
    v84 = MEMORY[0x277D84F90];
  }

  v85 = *(v84 + 16);

  if (__OFSUB__(v75 >> 1, v70))
  {
    goto LABEL_149;
  }

  if (v85 != (v75 >> 1) - v70)
  {
    goto LABEL_150;
  }

  v71 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  v54 = v115;
  if (v71)
  {
    goto LABEL_93;
  }

  v71 = MEMORY[0x277D84F90];
  while (2)
  {
    swift_unknownObjectRelease();
LABEL_93:
    v70 = sub_218D0E668(v62, v116 & 1);

    v73 = v70 & 0xFFFFFFFFFFFFFF8;
    v75 = v70 >> 62;
    if (!(v70 >> 62))
    {
      v86 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v86 >= v54)
      {
        v87 = v54;
      }

      else
      {
        v87 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v74)
      {
        v79 = 0;
      }

      else
      {
        v79 = v87;
      }

      if (v86 >= v79)
      {
        break;
      }

      goto LABEL_148;
    }

LABEL_135:
    if (v70 < 0)
    {
      v78 = v70;
    }

    else
    {
      v78 = v73;
    }

    v62 = sub_219BF7214();
    result = sub_219BF7214();
    if (result < 0)
    {
      goto LABEL_155;
    }

    if (v62 >= v54)
    {
      v109 = v54;
    }

    else
    {
      v109 = v62;
    }

    if (v62 < 0)
    {
      v109 = v54;
    }

    if (v74)
    {
      v79 = 0;
    }

    else
    {
      v79 = v109;
    }

    if (sub_219BF7214() < v79)
    {
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      swift_unknownObjectRelease_n();
      v54 = v115;
LABEL_85:
      sub_218B673FC(v78, v79, v70, v75);
      v71 = v83;
      continue;
    }

    break;
  }

  if ((v70 & 0xC000000000000001) != 0 && v79)
  {
    sub_2186D6710(0, &qword_280E8E420);

    v88 = 0;
    do
    {
      v89 = v88 + 1;
      sub_219BF7334();
      v88 = v89;
    }

    while (v79 != v89);
  }

  else
  {
  }

  if (v75)
  {
    v91 = sub_219BF7564();
    v92 = v94;
    v90 = v95;
    v93 = v96;

    if (v93)
    {
      goto LABEL_112;
    }

    goto LABEL_111;
  }

  v90 = 0;
  v91 = v70 & 0xFFFFFFFFFFFFFF8;
  v92 = (v70 & 0xFFFFFFFFFFFFFF8) + 32;
  v93 = (2 * v79) | 1;
  if ((v93 & 1) == 0)
  {
LABEL_111:
    sub_218B673FC(v91, v92, v90, v93);
    goto LABEL_117;
  }

LABEL_112:
  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v97 = swift_dynamicCastClass();
  if (!v97)
  {
    swift_unknownObjectRelease();
    v97 = MEMORY[0x277D84F90];
  }

  v98 = *(v97 + 16);

  if (__OFSUB__(v93 >> 1, v90))
  {
    __break(1u);
    goto LABEL_152;
  }

  if (v98 != (v93 >> 1) - v90)
  {
LABEL_152:
    swift_unknownObjectRelease_n();
    goto LABEL_111;
  }

  v99 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v99)
  {
LABEL_117:
    swift_unknownObjectRelease();
  }

  return v71;
}

uint64_t sub_219A09014()
{
  if (qword_280E8D818 != -1)
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

uint64_t sub_219A09140()
{
  sub_219BF29B4();
  sub_219BF3DD4();

  v0 = off_282A4D758;
  type metadata accessor for TagService();
  v1 = v0();

  return v1;
}

uint64_t sub_219A091D8(uint64_t *a1)
{
  v1 = *a1;
  v9 = MEMORY[0x277D84F90];
  if (*a1 >> 62)
  {
LABEL_18:
    v2 = sub_219BF7214();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (v2 != v3)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x21CECE0F0](v3, v1);
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v4 = *(v1 + 8 * v3 + 32);

      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    v6 = [*(v4 + 16) asSports];

    ++v3;
    if (v6)
    {
      MEMORY[0x21CECC690](v7);
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v3 = v5;
    }
  }

  sub_219A09D14(0, &qword_280EE6A50, sub_218845868, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_219A093A4()
{
  if (qword_280E8D818 != -1)
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

  sub_219A09D14(0, &qword_280EE6A50, sub_218845868, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_219A09534()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 120);

  __swift_destroy_boxed_opaque_existential_1(v0 + 168);

  return swift_deallocClassInstance();
}

uint64_t sub_219A0959C(uint64_t a1, __int16 a2)
{
  type metadata accessor for FCSportsOnboardingState(0);
  sub_219BE3204();
  v4 = sub_219BE2CC4();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2 & 1;
  *(v5 + 25) = HIBYTE(a2) & 1;
  v6 = sub_219BE2F84();

  return v6;
}

uint64_t sub_219A09690(unint64_t a1)
{
  v47 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x21CECE0F0](v3, a1);
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_27;
      }

LABEL_9:
      v7 = [v5 sportsParentTagIdentifiers];
      if (v7)
      {
        v8 = v7;
        v9 = sub_219BF5924();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        v9 = MEMORY[0x277D84F90];
      }

      v10 = *(v9 + 16);
      v11 = *(v4 + 2);
      v12 = v11 + v10;
      if (__OFADD__(v11, v10))
      {
        goto LABEL_29;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v12 <= *(v4 + 3) >> 1)
      {
        if (*(v9 + 16))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v11 <= v12)
        {
          v14 = v11 + v10;
        }

        else
        {
          v14 = v11;
        }

        v4 = sub_218840D24(isUniquelyReferenced_nonNull_native, v14, 1, v4);
        if (*(v9 + 16))
        {
LABEL_21:
          if ((*(v4 + 3) >> 1) - *(v4 + 2) < v10)
          {
            goto LABEL_31;
          }

          swift_arrayInitWithCopy();

          if (v10)
          {
            v15 = *(v4 + 2);
            v16 = __OFADD__(v15, v10);
            v17 = v15 + v10;
            if (v16)
            {
              goto LABEL_32;
            }

            *(v4 + 2) = v17;
          }

          goto LABEL_5;
        }
      }

      if (v10)
      {
        goto LABEL_30;
      }

LABEL_5:
      ++v3;
      if (v6 == i)
      {
        goto LABEL_35;
      }
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

    v5 = *(a1 + 8 * v3 + 32);
    swift_unknownObjectRetain();
    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_35:
  if (v47)
  {
    v18 = sub_219BF7214();
  }

  else
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v49 = MEMORY[0x277D84F90];
    result = sub_21870B65C(0, v18 & ~(v18 >> 63), 0);
    if (v18 < 0)
    {
      goto LABEL_70;
    }

    v21 = 0;
    v19 = v49;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x21CECE0F0](v21, a1);
      }

      else
      {
        v22 = *(a1 + 8 * v21 + 32);
        swift_unknownObjectRetain();
      }

      v23 = [v22 identifier];
      v24 = sub_219BF5414();
      v26 = v25;
      swift_unknownObjectRelease();

      v28 = *(v49 + 16);
      v27 = *(v49 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_21870B65C((v27 > 1), v28 + 1, 1);
      }

      ++v21;
      *(v49 + 16) = v28 + 1;
      v29 = v49 + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
    }

    while (v18 != v21);
  }

  v30 = sub_218845F78(v19);

  v31 = *(v4 + 2);
  if (!v31)
  {
    v34 = MEMORY[0x277D84F90];
LABEL_68:

    return v34;
  }

  v32 = 0;
  v33 = v30 + 56;
  v34 = MEMORY[0x277D84F90];
  v48 = *(v4 + 2);
  while (v32 < *(v4 + 2))
  {
    v35 = &v4[16 * v32 + 32];
    v37 = *v35;
    v36 = *(v35 + 1);
    ++v32;
    if (*(v30 + 16))
    {
      sub_219BF7AA4();

      sub_219BF5524();
      v38 = sub_219BF7AE4();
      v39 = -1 << *(v30 + 32);
      v40 = v38 & ~v39;
      if ((*(v33 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
      {
        v41 = ~v39;
        while (1)
        {
          v42 = (*(v30 + 48) + 16 * v40);
          v43 = *v42 == v37 && v42[1] == v36;
          if (v43 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v40 = (v40 + 1) & v41;
          if (((*(v33 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
          {
            goto LABEL_61;
          }
        }

        goto LABEL_50;
      }
    }

    else
    {
    }

LABEL_61:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21870B65C(0, *(v34 + 16) + 1, 1);
    }

    v45 = *(v34 + 16);
    v44 = *(v34 + 24);
    if (v45 >= v44 >> 1)
    {
      result = sub_21870B65C((v44 > 1), v45 + 1, 1);
    }

    *(v34 + 16) = v45 + 1;
    v46 = v34 + 16 * v45;
    *(v46 + 32) = v37;
    *(v46 + 40) = v36;
    v31 = v48;
LABEL_50:
    if (v32 == v31)
    {
      goto LABEL_68;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
  return result;
}

uint64_t sub_219A09B48()
{
  v1 = v0[24];
  v2 = v0[25];
  __swift_project_boxed_opaque_existential_1(v0 + 21, v1);
  return (*(v2 + 8))(v1, v2);
}

void sub_219A09BD8()
{
  if (!qword_280EE6D90)
  {
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE6D90);
    }
  }
}

uint64_t sub_219A09C28()
{
  if (*(v0 + 33))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_219A07F9C(*(v0 + 24), v1 | *(v0 + 32));
}

uint64_t sub_219A09C70()
{
  v1 = *(v0 + 33);
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 16), *(*(v0 + 16) + 40));
  return sub_2191ABC74(v1);
}

void sub_219A09D14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219A09D78(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (*(v5 + 33))
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return sub_219A083F0(a1, a2, a3, a4, a5, *(v5 + 16), *(v5 + 24), v6 | *(v5 + 32));
}

uint64_t sub_219A09D98@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *a1;
  v7 = a1[1];
  sub_21946A754();
  result = v5(v6, v7, a1 + v8[12], *(a1 + v8[16]), *(a1 + v8[20]));
  *a2 = result;
  a2[1] = v10;
  return result;
}

void sub_219A09E80(void *a1)
{
  if (sub_219BED0C4())
  {
    v8 = [objc_opt_self() clearColor];
    sub_219BEDA04();
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D75788]) init];
    v4 = *(*__swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
    v5 = v3;
    [v5 setBackgroundColor_];
    v6 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    [v5 setShadowImage_];

    [v5 setShadowColor_];
    v7 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    [v5 setBackgroundImage_];

    v8 = v5;
    [a1 setStandardAppearance_];
    [a1 setCompactAppearance_];
    [a1 setScrollEdgeAppearance_];
  }
}

id sub_219A0A020()
{
  v1 = v0;
  v23 = sub_219BF2A64();
  v2 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v22 = sub_219BDB5E4();

  sub_21899E550();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09EC0;
  v8 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v9 = sub_2186C6148(0, &qword_280E8DB00);
  v10 = v8;
  v11 = sub_219BF6BC4();
  v12 = [v11 fontWithSize_];

  v13 = MEMORY[0x277D740C0];
  *(inited + 40) = v12;
  v14 = *v13;
  *(inited + 64) = v9;
  *(inited + 72) = v14;
  __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  v15 = v14;
  sub_219BF2C64();
  v16 = sub_219BF2A54();
  (*(v2 + 8))(v4, v23);
  *(inited + 104) = sub_2186C6148(0, &qword_280E8DA80);
  *(inited + 80) = v16;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588();
  swift_arrayDestroy();
  v17 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v18 = sub_219BF53D4();

  type metadata accessor for Key(0);
  sub_21899E604();
  v19 = sub_219BF5204();

  v20 = [v17 initWithString:v18 attributes:v19];

  return v20;
}

uint64_t sub_219A0A354()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SharedWithYouFeedGroup()
{
  result = qword_27CC226C8;
  if (!qword_27CC226C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_219A0A498()
{
  result = qword_27CC22698;
  if (!qword_27CC22698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22698);
  }

  return result;
}

unint64_t sub_219A0A4F4()
{
  result = qword_27CC226A0;
  if (!qword_27CC226A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC226A0);
  }

  return result;
}

uint64_t sub_219A0A594()
{
  v1 = type metadata accessor for ArticleListSharedWithYouFeedGroup();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C60F58(v0, v6);
  sub_218AC3514(v6, v3);
  v7 = sub_218DEC780();
  sub_218C61024(v3);
  return v7;
}

uint64_t sub_219A0A670(uint64_t a1)
{
  v2 = sub_219A0AB28(&qword_27CC24C70, type metadata accessor for SharedWithYouFeedGroup);

  return MEMORY[0x282191918](a1, v2);
}

uint64_t sub_219A0A6EC()
{
  sub_219A0AB28(&qword_27CC22688, type metadata accessor for SharedWithYouFeedGroup);

  return sub_219BF1174();
}

uint64_t sub_219A0A770()
{
  v1 = type metadata accessor for ArticleListSharedWithYouFeedGroup();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C60F58(v0, v6);
  sub_218AC3514(v6, v3);
  v7 = *v3;

  sub_218C61024(v3);
  return v7;
}

uint64_t sub_219A0A850(uint64_t a1)
{
  v2 = sub_219A0AB28(&qword_27CC22688, type metadata accessor for SharedWithYouFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_219A0A8BC()
{
  sub_219A0AB28(&qword_27CC22690, type metadata accessor for SharedWithYouFeedGroup);

  return sub_219BE2324();
}

uint64_t sub_219A0AA00@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ArticleListSharedWithYouFeedGroup();
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C60F58(v1, v8);
  sub_218AC3514(v8, v5);
  a1[3] = v3;
  a1[4] = sub_219A0AB28(&qword_27CC122E8, type metadata accessor for ArticleListSharedWithYouFeedGroup);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_218AC3514(v5, boxed_opaque_existential_1);
}

uint64_t sub_219A0AB28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219A0AB70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListSharedWithYouFeedGroup();

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_21891A7DC);
}

uint64_t sub_219A0ABC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArticleListSharedWithYouFeedGroup();

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_21891A888);
}

uint64_t sub_219A0AC30(uint64_t a1)
{
  result = type metadata accessor for ArticleListSharedWithYouFeedGroup();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_219A0ACD4()
{
  sub_218774F78(v0 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_219A0AD40()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_219A0ADF4()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_219A0B7B8();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v1 = CACurrentMediaTime();
  if (qword_27CC08530 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  sub_219BE3204();
  sub_2187D9028();
  v2 = sub_219BF66A4();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = v1;

  sub_219BE2F94();

  v4 = sub_219BF66A4();
  *(swift_allocObject() + 16) = v1;
  sub_219BE2FE4();
}

void sub_219A0B044(void *a1, uint64_t a2, double a3)
{
  v4 = *(*a2 + 88);
  v5 = *(*a2 + 80);
  (*(v4 + 40))(*a1, v5, v4);
  sub_21980317C();
  sub_219A0BDD8(&qword_27CC22758, sub_21980317C);
  sub_219BE6E84();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *(v7 + 32) = v6;
  *(v7 + 40) = a3;
  v8 = sub_219BE2E54();
  sub_219BE2F74();
}

uint64_t sub_219A0B200()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_27CC08530 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_219C09BA0;
    sub_219BF5CD4();
    v2 = MEMORY[0x277D83A80];
    *(v1 + 56) = MEMORY[0x277D839F8];
    *(v1 + 64) = v2;
    *(v1 + 32) = v3;
    sub_219BF6214();
    sub_219BE5314();

    if (swift_unknownObjectWeakLoadStrong())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_219A0B7B8();
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_219A0B374(uint64_t a1)
{
  v2 = sub_219BF1584();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CC08530 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09EC0;
  sub_219BF5CD4();
  v7 = MEMORY[0x277D83A80];
  *(v6 + 56) = MEMORY[0x277D839F8];
  *(v6 + 64) = v7;
  *(v6 + 32) = v8;
  v23 = 0;
  v24 = 0xE000000000000000;
  v22 = a1;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v9 = v23;
  v10 = v24;
  *(v6 + 96) = MEMORY[0x277D837D0];
  *(v6 + 104) = sub_2186FC3BC();
  *(v6 + 72) = v9;
  *(v6 + 80) = v10;
  sub_219BE5314();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = v3;
    v21 = v2;
    v19 = "error=%{public}@";
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = objc_opt_self();
    v14 = [v13 bundleForClass_];
    sub_219BDB5E4();

    v15 = [v13 bundleForClass_];
    sub_219BDB5E4();

    sub_219BF1514();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_219A0B9EC(v5, Strong);
      swift_unknownObjectRelease();
    }

    v18 = v20;
    v17 = v21;
    swift_unknownObjectRelease();
    return (*(v18 + 8))(v5, v17);
  }

  return result;
}

uint64_t sub_219A0B71C()
{
  v0 = off_282A51F58;
  type metadata accessor for MagazineCategoriesPickerDataManager();
  return v0();
}

uint64_t sub_219A0B7B8()
{
  v0 = sub_219BE2864();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A0BD14(0, &qword_280E8C090, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09EC0;
  sub_219BE2854();
  sub_219BE2844();
  v6[1] = v4;
  sub_219A0BDD8(&qword_280EE73C0, MEMORY[0x277D6CD38]);
  sub_219A0BD14(0, &unk_280E8F5C0, MEMORY[0x277D83940]);
  sub_21881CB9C();
  sub_219BF7164();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_219BE1D24();

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_219A0B9EC(uint64_t a1, uint64_t a2)
{
  v15[0] = a2;
  v16 = a1;
  v3 = sub_219BF1584();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = sub_219BE2864();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(a2 + OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_eventManager);
  sub_219A0BD14(0, &qword_280E8C090, MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09EC0;
  sub_219BE2854();
  sub_219BE2844();
  v17 = v10;
  sub_219A0BDD8(&qword_280EE73C0, MEMORY[0x277D6CD38]);
  sub_219A0BD14(0, &unk_280E8F5C0, MEMORY[0x277D83940]);
  sub_21881CB9C();
  sub_219BF7164();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v4 + 16))(v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v3);
  v12 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  (*(v4 + 32))(v13 + v12, v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

  sub_219BE1D24();

  (*(v7 + 8))(v9, v6);
}

void sub_219A0BD14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_219BE2864();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_219A0BD74()
{
  sub_219BF1584();

  return sub_2190FF498();
}

uint64_t sub_219A0BDD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219A0BE7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A0C640(0, &qword_280E8CD38, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for TrendingMagazineFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A0C588();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_219A0C6A4(&unk_280E92630, MEMORY[0x277D31C50]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_219A0C5DC(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219A0C128(uint64_t a1)
{
  v2 = sub_219A0C588();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219A0C164(uint64_t a1)
{
  v2 = sub_219A0C588();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219A0C1B8(void *a1)
{
  sub_219A0C640(0, &qword_280E8C500, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A0C588();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_219A0C6A4(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_219A0C340(uint64_t a1)
{
  v2 = sub_219A0C6A4(&qword_280EBCA90, type metadata accessor for TrendingMagazineFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_219A0C3AC(void *a1)
{
  a1[1] = sub_219A0C6A4(&qword_280EBCA90, type metadata accessor for TrendingMagazineFeedGroup);
  a1[2] = sub_219A0C6A4(&qword_280EBCA68, type metadata accessor for TrendingMagazineFeedGroup);
  result = sub_219A0C6A4(&qword_280EBCA78, type metadata accessor for TrendingMagazineFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_219A0C530(uint64_t a1)
{
  result = sub_219A0C6A4(&qword_280EBCA60, type metadata accessor for TrendingMagazineFeedGroup);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_219A0C588()
{
  result = qword_280EBCAA8;
  if (!qword_280EBCAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBCAA8);
  }

  return result;
}

uint64_t sub_219A0C5DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrendingMagazineFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219A0C640(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219A0C588();
    v7 = a3(a1, &type metadata for TrendingMagazineFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_219A0C6A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_219A0C700()
{
  result = qword_27CC22760;
  if (!qword_27CC22760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22760);
  }

  return result;
}

unint64_t sub_219A0C758()
{
  result = qword_280EBCA98;
  if (!qword_280EBCA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBCA98);
  }

  return result;
}

unint64_t sub_219A0C7B0()
{
  result = qword_280EBCAA0;
  if (!qword_280EBCAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBCAA0);
  }

  return result;
}

uint64_t sub_219A0C804(void *a1)
{
  v3 = v1;
  sub_219A0D340(0, &qword_280E8C5B0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A0D22C();
  sub_219BF7B44();
  v13 = 0;
  sub_219BED8D4();
  sub_219A0D434(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for PuzzleListTagFeedGroup() + 20));
    v11[15] = 1;
    sub_2186DC224(0);
    sub_219A0D3A4(&qword_280E8EEB8, &qword_280E905E0);
    sub_219BF7834();
    v11[14] = 2;
    sub_219BF7824();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_219A0CA54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_219BED8D4();
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v24 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A0D340(0, &qword_27CC22768, MEMORY[0x277D844C8]);
  v25 = v6;
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for PuzzleListTagFeedGroup();
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A0D22C();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v22;
  v12 = v23;
  v19 = v9;
  v20 = v11;
  v29 = 0;
  sub_219A0D434(&unk_280E92630, MEMORY[0x277D31C50]);
  v15 = v24;
  v14 = v25;
  sub_219BF7734();
  (*(v12 + 32))(v20, v15, v4);
  sub_2186DC224(0);
  v28 = 1;
  sub_219A0D3A4(&qword_27CC22770, &qword_27CC22778);
  sub_219BF7734();
  *&v20[*(v19 + 20)] = v26;
  v27 = 2;
  v16 = sub_219BF7724();
  (*(v13 + 8))(v8, v14);
  v17 = v20;
  *&v20[*(v19 + 24)] = v16;
  sub_219A0D280(v17, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_219A0D2E4(v17);
}

uint64_t sub_219A0CE60()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x6C6F536C61746F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x724774616D726F66;
  }
}

uint64_t sub_219A0CED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_219A0D594(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_219A0CEF8(uint64_t a1)
{
  v2 = sub_219A0D22C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219A0CF34(uint64_t a1)
{
  v2 = sub_219A0D22C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219A0D0A0(uint64_t a1)
{
  result = sub_219A0D434(&qword_280EC71D8, type metadata accessor for PuzzleListTagFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_219A0D0F8(void *a1)
{
  a1[1] = sub_219A0D434(&qword_280EC7208, type metadata accessor for PuzzleListTagFeedGroup);
  a1[2] = sub_219A0D434(&qword_280EC71E0, type metadata accessor for PuzzleListTagFeedGroup);
  result = sub_219A0D434(&qword_280EC71F0, type metadata accessor for PuzzleListTagFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_219A0D1A4(uint64_t a1)
{
  v2 = sub_219A0D434(&qword_280EC7208, type metadata accessor for PuzzleListTagFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_219A0D22C()
{
  result = qword_280EC7220;
  if (!qword_280EC7220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC7220);
  }

  return result;
}

uint64_t sub_219A0D280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleListTagFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219A0D2E4(uint64_t a1)
{
  v2 = type metadata accessor for PuzzleListTagFeedGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_219A0D340(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219A0D22C();
    v7 = a3(a1, &type metadata for PuzzleListTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_219A0D3A4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_2186DC224(255);
    sub_219A0D434(a2, MEMORY[0x277D335C8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_219A0D434(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_219A0D490()
{
  result = qword_27CC22780;
  if (!qword_27CC22780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22780);
  }

  return result;
}

unint64_t sub_219A0D4E8()
{
  result = qword_280EC7210;
  if (!qword_280EC7210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC7210);
  }

  return result;
}

unint64_t sub_219A0D540()
{
  result = qword_280EC7218;
  if (!qword_280EC7218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC7218);
  }

  return result;
}

uint64_t sub_219A0D594(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x724774616D726F66 && a2 == 0xEB0000000070756FLL;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CD6C80 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F536C61746F74 && a2 == 0xEB00000000646576)
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

uint64_t type metadata accessor for PuzzleArchiveTagFeedGroupKnobs()
{
  result = qword_280EABA90;
  if (!qword_280EABA90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219A0D730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2189ADE0C();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE64(a1, v10);
  v16 = *(v13 + 48);
  if (v16(v10, 1, v12) == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    v19 = a2;
    sub_21877C750(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    a2 = v19;
    sub_219BEE974();
    if (v16(v10, 1, v12) != 1)
    {
      sub_2189ADEC8(v10);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v10, v12);
  }

  (*(v13 + 32))(a4, v15, v12);
  if (!a2)
  {
    v20 = 1;
    sub_2186F9548();
    swift_allocObject();
    a2 = sub_219BEF534();
  }

  v17 = type metadata accessor for PuzzleArchiveTagFeedGroupKnobs();
  *(a4 + *(v17 + 20)) = a2;
  if (!a3)
  {
    v20 = 5;
    sub_2186F9548();
    swift_allocObject();
    a3 = sub_219BEF534();
  }

  result = sub_2189ADEC8(a1);
  *(a4 + *(v17 + 24)) = a3;
  return result;
}

uint64_t sub_219A0DA24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  sub_2189AD5C8();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PuzzleArchiveTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE0C();
  MEMORY[0x28223BE20](v8 - 8);
  v51 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v50 = &v39 - v11;
  sub_219A0E380(0, &qword_280E8CB18, MEMORY[0x277D844C8]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A0E2C8();
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
  sub_21877C750(&qword_280E91A88, sub_2189AD5C8);
  v19 = v50;
  v20 = v47;
  sub_219BF7674();
  sub_2186F9548();
  LOBYTE(v54) = 1;
  sub_21877C750(&qword_280E913B8, sub_2186F9548);
  sub_219BF7674();
  v40 = v55;
  LOBYTE(v53) = 2;
  v21 = v13;
  v45 = v16;
  sub_219BF7674();
  v41 = v54;
  v22 = v19;
  v23 = v51;
  sub_2189ADE64(v22, v51);
  v24 = v46;
  v25 = *(v46 + 48);
  v26 = v25(v23, 1, v20);
  v27 = v20;
  if (v26 == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_21877C750(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v28 = v48;
    sub_219BEE974();
    v29 = v25(v51, 1, v20);
    v30 = v28;
    v31 = v43;
    v32 = v44;
    if (v29 != 1)
    {
      sub_2189ADEC8(v51);
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
    v53 = 1;
    swift_allocObject();
    v34 = sub_219BEF534();
  }

  v35 = v45;
  *(v33 + *(v5 + 20)) = v34;
  v36 = v49;
  v37 = v41;
  if (v41)
  {
    sub_2189ADEC8(v50);
    (*(v31 + 8))(v35, v21);
  }

  else
  {
    v53 = 5;
    v38 = v50;
    swift_allocObject();
    v37 = sub_219BEF534();
    sub_2189ADEC8(v38);
    (*(v31 + 8))(v45, v21);
  }

  *(v33 + *(v5 + 24)) = v37;
  sub_219A0E31C(v33, v36);
  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t sub_219A0DFBC(void *a1)
{
  v3 = v1;
  sub_219A0E380(0, &qword_27CC22788, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219A0E2C8();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_2189AD5C8();
  sub_21877C750(&qword_27CC0BEC8, sub_2189AD5C8);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for PuzzleArchiveTagFeedGroupKnobs();
    v14 = *(v3 + *(v10 + 20));
    v13 = 1;
    sub_2186F9548();
    sub_21877C750(&qword_280E913C0, sub_2186F9548);
    sub_219BF7834();
    v14 = *(v3 + *(v10 + 24));
    v13 = 2;
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_219A0E220(uint64_t a1)
{
  v2 = sub_219A0E2C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219A0E25C(uint64_t a1)
{
  v2 = sub_219A0E2C8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219A0E2C8()
{
  result = qword_280EABAB8[0];
  if (!qword_280EABAB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EABAB8);
  }

  return result;
}

uint64_t sub_219A0E31C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleArchiveTagFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219A0E380(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219A0E2C8();
    v7 = a3(a1, &type metadata for PuzzleArchiveTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219A0E3F8()
{
  result = qword_27CC22790;
  if (!qword_27CC22790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC22790);
  }

  return result;
}

unint64_t sub_219A0E450()
{
  result = qword_280EABAA8;
  if (!qword_280EABAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EABAA8);
  }

  return result;
}

unint64_t sub_219A0E4A8()
{
  result = qword_280EABAB0;
  if (!qword_280EABAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EABAB0);
  }

  return result;
}

uint64_t sub_219A0E4FC(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v107 = a3;
  v108 = a2;
  v6 = sub_219BE6DF4();
  v100 = *(v6 - 8);
  v101 = v6;
  MEMORY[0x28223BE20](v6);
  v99 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A0F830(0, &qword_280EE4B18, MEMORY[0x277D6DF88]);
  v105 = *(v8 - 8);
  v106 = v8;
  MEMORY[0x28223BE20](v8);
  v104 = &v88 - v9;
  v10 = type metadata accessor for AudioFeedGapLocation(0);
  MEMORY[0x28223BE20](v10 - 8);
  v96 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_219BF0BD4();
  v98 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v13 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AudioFeedGroup();
  v95 = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v88 - v18;
  MEMORY[0x28223BE20](v20);
  v97 = &v88 - v21;
  sub_219A0F830(0, &qword_280EE3690, MEMORY[0x277D6EC60]);
  v23 = v22;
  v102 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v103 = &v88 - v24;
  sub_21929BEC4();
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A0F830(0, &qword_280EE57D0, MEMORY[0x277D6D710]);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v111 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v88 - v32;
  v112 = v23;
  v35 = v34;
  sub_219BEB244();
  if ((*(v29 + 48))(v27, 1, v35) == 1)
  {
    sub_219A0FA08(v27, sub_21929BEC4);
LABEL_5:
    v39 = v104;
    v38 = v105;
    v40 = v106;
    (*(v105 + 104))(v104, *MEMORY[0x277D6DF80], v106);
    v108(v39);
    return (*(v38 + 8))(v39, v40);
  }

  (*(v29 + 32))(v33, v27, v35);
  v36 = sub_218E666F8();
  if (v37)
  {
    (*(v29 + 8))(v33, v35);
    goto LABEL_5;
  }

  v89 = v36;
  v92 = v33;
  v93 = v29;
  v109 = v35;
  (*(v102 + 16))(v103, a1, v112);
  v42 = v4[2];
  v43 = v42 >> 61;
  v91 = a1;
  v90 = v42;
  if ((v42 >> 61) <= 1)
  {
    if (v43)
    {
      v70 = *((v42 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v97 = *((v42 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_219BE6944();
      sub_219BEB214();

      v88 = v70;
      v71 = *(v70 + 16);
      if (v71)
      {
        v94 = v4[3];
        v72 = v88 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
        v95 = *(v95 + 72);
        v73 = v98 + 1;
        v74 = (v93 + 8);
        do
        {
          sub_21909E61C(v72, v19);
          __swift_project_boxed_opaque_existential_1(v4 + 4, v4[7]);
          type metadata accessor for AudioFeedServiceConfig();
          sub_219A0F924(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig);
          sub_219BEE7A4();
          v75 = v111;
          sub_218AB609C(v19, v94, v13, v111);
          sub_219A0FA08(v19, type metadata accessor for AudioFeedGroup);
          (*v73)(v13, v110);
          sub_219BEB1E4();
          (*v74)(v75, v109);
          v72 += v95;
          --v71;
        }

        while (v71);
      }

      v76 = swift_allocObject();
      sub_219A0F96C(0, &qword_280E91AF0, MEMORY[0x277D32188]);
      swift_allocObject();

      *(v76 + 16) = sub_219BEE874();
      v77 = v96;
      *v96 = v76;
      v78 = *MEMORY[0x277D33090];
      sub_219A0F96C(0, &qword_280E90A18, MEMORY[0x277D33098]);
      (*(*(v79 - 8) + 104))(v77, v78, v79);
      sub_219AD0160(v77, v111);
      result = sub_219A0FA08(v77, type metadata accessor for AudioFeedGapLocation);
      if (!__OFADD__(v89, *(v88 + 16)))
      {
        v69 = v111;
        sub_219BEB1F4();
LABEL_24:
        (*(v93 + 8))(v69, v109);
        goto LABEL_26;
      }
    }

    else
    {
      sub_21911C3C0();
      v50 = swift_projectBox();
      v51 = v97;
      sub_21909E61C(v50, v97);
      __swift_project_boxed_opaque_existential_1(v4 + 4, v4[7]);
      v52 = v4[3];
      type metadata accessor for AudioFeedServiceConfig();
      sub_219A0F924(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig);

      sub_219BEE7A4();
      v53 = v111;
      sub_218AB609C(v51, v52, v13, v111);
      v98[1](v13, v110);
      sub_219BEB234();
      v54 = *(v93 + 8);
      v55 = v109;
      v54(v53, v109);
      v56 = swift_allocObject();
      sub_219A0F96C(0, &qword_280E91AF0, MEMORY[0x277D32188]);
      swift_allocObject();

      *(v56 + 16) = sub_219BEE874();
      v57 = v96;
      *v96 = v56;
      v58 = *MEMORY[0x277D33090];
      sub_219A0F96C(0, &qword_280E90A18, MEMORY[0x277D33098]);
      (*(*(v59 - 8) + 104))(v57, v58, v59);
      sub_219AD0160(v57, v53);
      result = sub_219A0FA08(v57, type metadata accessor for AudioFeedGapLocation);
      if (!__OFADD__(v89, 1))
      {
        v60 = v111;
        sub_219BEB1F4();

        v54(v60, v55);
        sub_219A0FA08(v97, type metadata accessor for AudioFeedGroup);
        goto LABEL_26;
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  v44 = v110;
  if (v43 != 2)
  {
    if (v43 == 3)
    {
      v45 = *((v42 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v97 = *((v42 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_219BE6944();
      sub_219BEB214();

      v46 = *(v45 + 16);
      if (v46)
      {
        v96 = v4[3];
        v47 = v45 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
        v95 = *(v95 + 72);
        ++v98;
        v48 = (v93 + 8);
        do
        {
          sub_21909E61C(v47, v16);
          __swift_project_boxed_opaque_existential_1(v4 + 4, v4[7]);
          type metadata accessor for AudioFeedServiceConfig();
          sub_219A0F924(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig);
          sub_219BEE7A4();
          v49 = v111;
          sub_218AB609C(v16, v96, v13, v111);
          sub_219A0FA08(v16, type metadata accessor for AudioFeedGroup);
          (*v98)(v13, v110);
          sub_219BEB1E4();
          (*v48)(v49, v109);
          v47 += v95;
          --v46;
        }

        while (v46);
      }

      goto LABEL_26;
    }

    type metadata accessor for AudioFeedServiceConfig();
    sub_219A0F924(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig);

    if ((sub_219BEE854() & 1) == 0)
    {
      sub_219BEB204();

      goto LABEL_26;
    }

    v65 = swift_allocObject();
    sub_219A0F96C(0, &qword_280E91AF0, MEMORY[0x277D32188]);
    swift_allocObject();

    *(v65 + 16) = sub_219BEE874();
    v66 = v96;
    *v96 = v65;
    v67 = *MEMORY[0x277D33068];
    sub_219A0F96C(0, &qword_280E90A18, MEMORY[0x277D33098]);
    (*(*(v68 - 8) + 104))(v66, v67, v68);
    v69 = v111;
    sub_219AD0160(v66, v111);
    sub_219A0FA08(v66, type metadata accessor for AudioFeedGapLocation);
    sub_219BEB234();

    goto LABEL_24;
  }

  sub_21911C3C0();
  v61 = swift_projectBox();
  v62 = v97;
  sub_21909E61C(v61, v97);
  __swift_project_boxed_opaque_existential_1(v4 + 4, v4[7]);
  v63 = v4[3];
  type metadata accessor for AudioFeedServiceConfig();
  sub_219A0F924(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig);

  sub_219BEE7A4();
  v64 = v111;
  sub_218AB609C(v62, v63, v13, v111);
  v98[1](v13, v44);
  sub_219BEB234();

  (*(v93 + 8))(v64, v109);
  sub_219A0FA08(v62, type metadata accessor for AudioFeedGroup);
LABEL_26:
  type metadata accessor for AudioFeedServiceConfig();
  sub_219A0F924(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig);
  sub_219BEF3D4();
  sub_219BEEFF4();
  sub_219BEEFE4();
  v80 = sub_219BEEFC4();

  v81 = 0;
  if (v80)
  {
    v81 = sub_219BEDC74();
  }

  else
  {
    v114 = 0;
    v115 = 0;
  }

  v82 = v103;
  v113 = v80;
  v116 = v81;
  v83 = v112;
  sub_219BEB2C4();

  v85 = v99;
  v84 = v100;
  v86 = v101;
  (*(v100 + 104))(v99, *MEMORY[0x277D6D868], v101);
  type metadata accessor for AudioFeedSectionDescriptor();
  type metadata accessor for AudioFeedModel(0);
  sub_219A0F924(&qword_280EBC460, type metadata accessor for AudioFeedSectionDescriptor);
  sub_219A0F924(&qword_280EDCBF0, type metadata accessor for AudioFeedModel);
  sub_219A0F924(&qword_280EBC458, type metadata accessor for AudioFeedSectionDescriptor);
  v87 = v104;
  sub_219BE85E4();
  (*(v84 + 8))(v85, v86);
  v108(v87);
  (*(v105 + 8))(v87, v106);
  (*(v102 + 8))(v82, v83);
  return (*(v93 + 8))(v92, v109);
}

uint64_t sub_219A0F70C(uint64_t a1)
{
  v2 = sub_218CF98C4();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_219A0F74C()
{
  result = qword_280EA6FA8;
  if (!qword_280EA6FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA6FA8);
  }

  return result;
}

void sub_219A0F830(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for AudioFeedSectionDescriptor();
    v8[1] = type metadata accessor for AudioFeedModel(255);
    v8[2] = sub_219A0F924(&qword_280EBC460, type metadata accessor for AudioFeedSectionDescriptor);
    v8[3] = sub_219A0F924(&qword_280EDCBF0, type metadata accessor for AudioFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_219A0F924(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_219A0F96C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AudioFeedServiceConfig();
    v7 = sub_219A0F924(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_219A0FA08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_219A0FAD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PuzzleEmbedShowFullScreenModalMessageHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_219A0FB38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_219A1049C(0, &qword_280E8FE00, MEMORY[0x277D34450]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14[-v5];
  if (*(a1 + 16))
  {
    v7 = sub_21870F700(0x6566664572756C62, 0xEA00000000007463);
    if (v8)
    {
      sub_2186D1230(*(a1 + 56) + 32 * v7, v14);
      if (swift_dynamicCast())
      {
        sub_219BF4564();
        v9 = sub_219BF4574();
        v10 = *(v9 - 8);
        if ((*(v10 + 48))(v6, 1, v9) != 1)
        {
          (*(v10 + 32))(a2, v6, v9);
          return (*(v10 + 56))(a2, 0, 1, v9);
        }

        sub_219A104F8(v6);
      }
    }
  }

  v11 = sub_219BF4574();
  return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
}

uint64_t sub_219A0FD1C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 2;
  }

  v2 = sub_21870F700(0x6C70656D61477369, 0xEA00000000007961);
  if ((v3 & 1) != 0 && (sub_2186D1230(*(a1 + 56) + 32 * v2, v6), swift_dynamicCast()))
  {
    return v5;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_219A0FDBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v4 = sub_21870F700(0x7079546C61646F6DLL, 0xE900000000000065);
    if (v5)
    {
      sub_2186D1230(*(a1 + 56) + 32 * v4, v8);
      if (swift_dynamicCast())
      {
        return sub_219BF1CA4();
      }
    }
  }

  v7 = sub_219BF1CC4();
  return (*(*(v7 - 8) + 56))(a2, 1, 1, v7);
}

uint64_t sub_219A0FF1C(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_skipModalPresentation) != 1)
    {
      *(result + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_skipModalPresentation) = 1;
      v5 = result;
      __swift_project_boxed_opaque_existential_1((*(result + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_eventHandler) + 48), *(*(result + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_eventHandler) + 72));
      sub_219320C0C(a1, a2, v5, &off_282A94CA0);
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_219BE1B14();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_219A10024(void *a1)
{
  sub_219A1049C(0, &unk_27CC21C30, MEMORY[0x277D33598]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v32 - v3 + 16;
  sub_219A1049C(0, &qword_280E8FE00, MEMORY[0x277D34450]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v32 - v6 + 16;
  v8 = sub_219BF2EB4();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v13 = [a1 body];
  v14 = sub_219BF5214();

  v15 = sub_2187A1A2C(v14);

  if (v15)
  {
    if (*(v15 + 16))
    {
      v16 = sub_21870F700(25705, 0xE200000000000000);
      if (v17)
      {
        sub_2186D1230(*(v15 + 56) + 32 * v16, v32);
        if (swift_dynamicCast())
        {
          sub_219A0FB38(v15, v7);
          sub_219A0FD1C(v15);
          sub_219A0FDBC(v15, v4);

          sub_219BF2E94();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v19 = Strong;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v20 = *(v19 + OBJC_IVAR____TtC7NewsUI216PuzzleInteractor_puzzle);
              swift_unknownObjectRetain();
              sub_219A0FF1C(v12, v20);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
            }

            swift_unknownObjectRelease();
          }

          (*(v9 + 8))(v12, v8);
          return;
        }
      }
    }
  }

  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v21 = sub_219BE5434();
  __swift_project_value_buffer(v21, qword_280F625E0);
  swift_unknownObjectRetain();
  v22 = sub_219BE5414();
  v23 = sub_219BF61F4();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v32[0] = v25;
    *v24 = 136315138;
    v26 = [a1 body];
    sub_219BF5214();

    v27 = sub_219BF5224();
    v29 = v28;

    v30 = sub_2186D1058(v27, v29, v32);

    *(v24 + 4) = v30;
    _os_log_impl(&dword_2186C1000, v22, v23, "PuzzleEmbedShowFullScreenModalMessageHandler received invalid message %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x21CECF960](v25, -1, -1);
    MEMORY[0x21CECF960](v24, -1, -1);
  }
}

void sub_219A1049C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_219A104F8(uint64_t a1)
{
  sub_219A1049C(0, &qword_280E8FE00, MEMORY[0x277D34450]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_219A10570()
{
  v1 = OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController____lazy_storage___clearButton;
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController____lazy_storage___clearButton];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController____lazy_storage___clearButton];
  }

  else
  {
    ObjectType = swift_getObjectType();
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v19[3] = ObjectType;
    v19[0] = v0;
    v7 = v0;
    v8 = sub_219BF53D4();

    if (ObjectType)
    {
      v9 = __swift_project_boxed_opaque_existential_1(v19, ObjectType);
      v10 = *(ObjectType - 8);
      MEMORY[0x28223BE20](v9);
      v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v12);
      v13 = sub_219BF78D4();
      (*(v10 + 8))(v12, ObjectType);
      __swift_destroy_boxed_opaque_existential_1(v19);
    }

    else
    {
      v13 = 0;
    }

    v14 = objc_allocWithZone(MEMORY[0x277D751E0]);
    v15 = [v14 initWithTitle:v8 style:0 target:v13 action:{sel_clearHistory, v19[0]}];

    swift_unknownObjectRelease();
    v16 = *&v0[v1];
    *&v0[v1] = v15;
    v3 = v15;

    v2 = 0;
  }

  v17 = v2;
  return v3;
}

id sub_219A10924()
{
  v1 = v0;
  v28.receiver = v0;
  v28.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v28, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController_blueprintViewController];
  [v0 addChildViewController_];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = [v2 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  [v4 addSubview_];

  [v2 didMoveToParentViewController_];
  result = [v2 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v7 = result;
  [result bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v6 setFrame_];
  sub_219BE8664();
  v16 = sub_219BE7BC4();

  sub_218807578();
  sub_2186FFA2C(&qword_280E90610, 255, sub_218807578);
  sub_219BF6C74();

  sub_219BE8664();
  v17 = sub_219BE7BC4();

  [v1 setContentScrollView:v17 forEdge:15];

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v20 = sub_219BF53D4();

  [v1 setTitle_];

  v21 = sub_219BF65B4();
  v22 = [v1 title];
  [v21 setTitle_];

  if ((sub_219BF6564() & 1) == 0)
  {
    v23 = sub_219BF65B4();
    v24 = sub_219A10570();
    [v23 setRightBarButtonItem_];
  }

  v25 = [v1 traitCollection];
  sub_219A13158();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2186FFA2C(&unk_280EBE320, v26, type metadata accessor for HistoryFeedViewController);
  sub_2186FFA2C(&qword_280EBE318, v27, type metadata accessor for HistoryFeedViewController);

  sub_219BEEA54();
}

uint64_t sub_219A10D94()
{
  v0 = sub_219BEDA44();
  MEMORY[0x28223BE20](v0);
  sub_219BEDA34();
  sub_2186FFA2C(&qword_280E92580, 255, MEMORY[0x277D31D00]);
  return sub_219BF1C54();
}

void sub_219A10E8C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController_blueprintViewController);

    sub_219BE8664();
    v3 = sub_219BE7BC4();

    [v3 reloadData];
  }
}

id sub_219A11064(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_219BE7C14();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24.receiver = v2;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, sel_viewWillAppear_, a1 & 1, v7);
  result = [v2 view];
  if (result)
  {
    v11 = result;
    v12 = sub_219BF6C14();

    if (v12)
    {

      sub_219BE8664();
      v13 = sub_219BE7BC4();

      sub_219BF6C34();
    }

    sub_219BE8694();
    sub_219BE20E4();

    if ((v23 & 1) == 0)
    {
      sub_219BE8664();
      v14 = sub_219BE7BC4();

      [v14 selectItemAtIndexPath:0 animated:0 scrollPosition:0];
    }

    swift_getObjectType();
    sub_219BE7544();
    sub_219BE5CC4();
    v23 = sub_219BE5CA4();
    v15 = [v2 title];
    if (v15)
    {
      v22 = v2;
      v16 = v6;
      v17 = v5;
      v18 = v15;
      v19 = sub_219BF5414();
      v21 = v20;

      v5 = v17;
      v6 = v16;
    }

    else
    {
      v19 = 0;
      v21 = 0xE000000000000000;
    }

    *v9 = v19;
    v9[1] = v21;
    (*(v6 + 104))(v9, *MEMORY[0x277D6DCB0], v5);
    sub_219BE7C24();
    sub_2186FFA2C(&qword_280EE4E50, 255, MEMORY[0x277D6DCC8]);
    sub_219BE7514();
    (*(v6 + 8))(v9, v5);

    return sub_219A1139C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219A1139C()
{
  sub_219BEAE34();
  sub_219BEE674();
  v5 = 0;
  v6 = sub_219BEE664();
  v3 = 0u;
  v4 = 0u;
  sub_219BE6A74();

  sub_219A13358(&v3, sub_219149814);

  sub_219BEAE44();
  v0 = sub_219BEE664();
  v5 = 0;
  v6 = v0;
  v3 = 0u;
  v4 = 0u;
  sub_219BE6A74();

  sub_219A13358(&v3, sub_219149814);

  sub_219BEAE54();
  v1 = sub_219BEE664();
  v5 = 0;
  v6 = v1;
  v3 = 0u;
  v4 = 0u;
  sub_219BE6A74();

  sub_219A13358(&v3, sub_219149814);
}

id sub_219A11558(char a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidAppear_, a1 & 1);
  result = [v1 view];
  if (result)
  {
    v4 = result;
    v5 = [result window];

    if (v5)
    {
      v6 = [v5 windowScene];

      if (v6)
      {
        v7 = [v1 title];
        [v6 setTitle_];
      }
    }

    return sub_219BE7884();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219A118B4()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BE8644();
  *v7 = sub_219BF1554();
  v7[1] = v8;
  v9 = sub_219BE5AA4();
  v10 = MEMORY[0x277D6D2E8];
  v7[5] = v9;
  v7[6] = v10;
  __swift_allocate_boxed_opaque_existential_1(v7 + 2);
  sub_219BE5A94();
  v7[7] = sub_219BF1534();
  v7[8] = v11;
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECA8], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_219A11AD8()
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
  v12 = sub_219BE6C74();
  v13 = MEMORY[0x277D6D7C0];
  v10[3] = v12;
  v10[4] = v13;
  __swift_allocate_boxed_opaque_existential_1(v10);
  sub_219BE6C64();
  v14 = *MEMORY[0x277D6D9C8];
  v15 = sub_219BE73A4();
  (*(*(v15 - 8) + 104))(&v6[v11], v14, v15);
  (*(v4 + 104))(v6, *MEMORY[0x277D6EC90], v3);
  v16 = v19;
  (*(v0 + 104))(v2, *MEMORY[0x277D6ECA8], v19);
  sub_219BE6BD4();

  (*(v0 + 8))(v2, v16);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_219A11DE8()
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

uint64_t sub_219A11FC4()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BE8644();
  if (qword_280E92A48 != -1)
  {
    swift_once();
  }

  v8 = sub_219BF01B4();
  v9 = __swift_project_value_buffer(v8, qword_280F61940);
  v7[3] = v8;
  v7[4] = sub_2186FFA2C(&qword_280E91000, 255, MEMORY[0x277D32BC8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v9, v8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v13 = sub_219BF54E4();
  v15 = v14;

  v7[5] = v13;
  v7[6] = v15;
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC80], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECB0], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_219A1231C()
{
  sub_219BE8664();
  v0 = sub_219BE7BC4();

  [v0 reloadData];
}

void sub_219A12388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE9F74();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a3, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == *MEMORY[0x277D6E950])
  {
    (*(v6 + 8))(v9, v5);
LABEL_3:
    v11 = *(*(v3 + OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    (*(v11 + 48))(ObjectType, v11);
    return;
  }

  if (v10 == *MEMORY[0x277D6E928])
  {
    v13 = *(*(v3 + OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController_eventHandler) + 40);
    v14 = swift_getObjectType();
    (*(v13 + 40))(v14, v13);
  }

  else
  {
    if (v10 == *MEMORY[0x277D6E948])
    {
      goto LABEL_3;
    }

    if (v10 != *MEMORY[0x277D6E978])
    {
      if (v10 == *MEMORY[0x277D6E930])
      {
        goto LABEL_3;
      }

      if (v10 != *MEMORY[0x277D6E958])
      {
        if (v10 == *MEMORY[0x277D6E970])
        {
          sub_219BE8664();
          v15 = sub_219BE7BC4();

          v16 = [v15 collectionViewLayout];

          [v16 invalidateLayout];
          sub_219BE8664();
          v17 = sub_219BE7BC4();

          [v17 reloadData];
        }

        else
        {
          (*(v6 + 8))(v9, v5);
        }
      }
    }
  }
}

uint64_t sub_219A12624()
{
  sub_218985EAC();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HistoryFeedModel(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985E18();
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    sub_218986048();
    v12 = &v7[*(v13 + 48)];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_218985FD4();
    v10 = *(v9 + 48);
    v11 = sub_219BF1584();
    (*(*(v11 - 8) + 8))(&v7[v10], v11);
    v12 = v7;
LABEL_5:
    sub_219A13358(v12, type metadata accessor for HistoryFeedGapLocation);
    return 0;
  }

  (*(v2 + 32))(v4, v7, v1);
  sub_219BF07D4();
  swift_unknownObjectRetain();

  sub_219BE5F84();
  v15 = sub_219BF4FC4();
  swift_unknownObjectRelease();

  (*(v2 + 8))(v4, v1);
  return v15;
}

void sub_219A128B4(uint64_t a1, char a2)
{
  v3 = sub_219BEB384();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BEB394();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    sub_219BE8644();
    if (qword_280E92A48 != -1)
    {
      swift_once();
    }

    v11 = sub_219BF01B4();
    v12 = __swift_project_value_buffer(v11, qword_280F61940);
    v10[3] = v11;
    v10[4] = sub_2186FFA2C(&qword_280E91000, 255, MEMORY[0x277D32BC8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v12, v11);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v16 = sub_219BF54E4();
    v18 = v17;

    v10[5] = v16;
    v10[6] = v18;
    (*(v8 + 104))(v10, *MEMORY[0x277D6EC80], v7);
    (*(v4 + 104))(v6, *MEMORY[0x277D6ECB0], v3);
    sub_219BE6BD4();

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_219A12C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController_eventHandler);
  __swift_project_boxed_opaque_existential_1(v7 + 11, v7[14]);
  sub_218A8AB54();
  v8 = v7[5];
  ObjectType = swift_getObjectType();
  return (*(v8 + 64))(a2, 0, a4, ObjectType, v8);
}

uint64_t sub_219A12D08(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE8F74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1((*(v2 + OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController_eventHandler) + 88), *(*(v2 + OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController_eventHandler) + 112));
  (*(v5 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  (*(v5 + 32))(v8 + v7, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_219BDD154();
}

uint64_t sub_219A12E94(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 56))(a2, ObjectType, v4);
}

void sub_219A12EFC(char a1)
{
  v2 = sub_219BF65B4();
  if (a1)
  {
    sub_219399E20();
    v3 = sub_219BF5904();
    v4 = &selRef_setRightBarButtonItems_;
  }

  else
  {
    v3 = sub_219A10570();
    v4 = &selRef_setRightBarButtonItem_;
  }

  v5 = v3;
  [v2 *v4];
}

uint64_t sub_219A130E8(uint64_t a1)
{
  v3 = *(sub_219BE8F74() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_218A8A03C(a1, v4);
}

void sub_219A13158()
{
  v1 = &v0[OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController_styler];
  sub_218718690(&v0[OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController_styler], v13);
  v2 = __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    v5 = *(*__swift_project_boxed_opaque_existential_1((*v2 + 16), *(*v2 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
    [v4 setBackgroundColor_];

    __swift_destroy_boxed_opaque_existential_1(v13);
    v6 = __swift_project_boxed_opaque_existential_1(v1, *(v1 + 3));
    v7 = [v0 navigationItem];
    v8 = *v6;
    if (sub_219BED0C4())
    {
      v9 = [objc_opt_self() clearColor];
    }

    else
    {
      v9 = *(*__swift_project_boxed_opaque_existential_1((v8 + 16), *(v8 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
    }

    v10 = v9;
    sub_219BEDA04();

    v11 = __swift_project_boxed_opaque_existential_1(v1, *(v1 + 3));
    sub_219BE8664();
    v12 = sub_219BE7BC4();

    [v12 setBackgroundColor_];
    [v12 setAlwaysBounceVertical_];
    [v12 setContentInset_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_219A13358(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219A133C0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_218718690(a1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for WebEmbedModule();
    v7 = objc_allocWithZone(v6);
    sub_218718690(v10, &v7[OBJC_IVAR____TtC7NewsUI214WebEmbedModule_resolver]);
    *&v7[OBJC_IVAR____TtC7NewsUI214WebEmbedModule_tracker] = v5;
    v9.receiver = v7;
    v9.super_class = v6;
    v8 = objc_msgSendSuper2(&v9, sel_init);
    result = __swift_destroy_boxed_opaque_existential_1(v10);
    a2[3] = v6;
    a2[4] = &protocol witness table for WebEmbedModule;
    *a2 = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219A13498()
{
  type metadata accessor for WebEmbedContainerViewController();
  sub_219BE2904();

  sub_2186C709C(0, &qword_280ED2040);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280ED2048);
  sub_219BE2914();
  type metadata accessor for WebEmbedRouter();
  sub_219BE19C4();

  sub_2186C709C(0, qword_280EBFAB0);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EC6108);
  sub_219BE2914();

  sub_2186C709C(0, qword_280ECF830);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280EC2CD8);
  sub_219BE2914();

  type metadata accessor for NewsAssetURLSchemeHandlerFactory();
  sub_219BE2904();

  type metadata accessor for NewsWebArchiveURLSchemeHandlerFactory();
  sub_219BE2904();
}

uint64_t sub_219A1374C(void *a1)
{
  v2 = sub_219BF1664();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219A14C10();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ED2040);
  result = sub_219BE1E34();
  if (!v76)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E966F8);
  result = sub_219BE1E34();
  if (!v74)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBFAB0);
  result = sub_219BE1E34();
  v10 = v71;
  if (!v71)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v58 = v5;
  v59 = v3;
  v57 = v72;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BF3254();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = type metadata accessor for WebEmbedResource();
  sub_219BE1E34();
  result = (*(*(v12 - 8) + 48))(v8, 1, v12);
  if (result == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC22800);
  result = sub_219BE1E34();
  if (!v70)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v53 = v11;
  v54 = v10;
  v55 = v2;
  v56 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_27CC22808);
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v75, v76);
    v52[4] = v52;
    MEMORY[0x28223BE20](v14);
    v16 = (v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16);
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v73, v74);
    v52[3] = v52;
    MEMORY[0x28223BE20](v18);
    v20 = (v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20);
    v22 = *v16;
    v23 = *v20;
    v24 = type metadata accessor for WebEmbedStyler();
    v67 = v24;
    v68 = &off_282A49630;
    v66[0] = v22;
    v25 = type metadata accessor for WebEmbedViewLayoutAttributesFactory();
    v64 = v25;
    v65 = &off_282A3C440;
    v63[0] = v23;
    v26 = type metadata accessor for WebEmbedContainerViewController();
    v27 = objc_allocWithZone(v26);
    v28 = __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
    v52[2] = v52;
    MEMORY[0x28223BE20](v28);
    v30 = (v52 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v31 + 16))(v30);
    v32 = __swift_mutable_project_boxed_opaque_existential_1(v63, v64);
    v52[1] = v52;
    MEMORY[0x28223BE20](v32);
    v34 = (v52 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v35 + 16))(v34);
    v36 = *v30;
    v37 = *v34;
    v62[3] = v24;
    v62[4] = &off_282A49630;
    v61[4] = &off_282A3C440;
    v62[0] = v36;
    v61[3] = v25;
    v61[0] = v37;
    v38 = OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_embedLocation;
    v40 = v58;
    v39 = v59;
    v41 = v55;
    (*(v59 + 104))(v58, *MEMORY[0x277D33428], v55);
    v42 = sub_219BF1654();
    (*(v39 + 8))(v40, v41);
    *&v27[v38] = v42;
    sub_218718690(v62, &v27[OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_styler]);
    sub_218718690(v61, &v27[OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_layoutAttributesFactory]);
    v43 = &v27[OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_eventHandler];
    v44 = v53;
    v46 = v56;
    v45 = v57;
    *v43 = v54;
    *(v43 + 1) = v45;
    *&v27[OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_webEmbedViewController] = v44;
    sub_219097244(v46, &v27[OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_resource]);
    sub_218718690(v69, &v27[OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_webEmbedDataSourceService]);
    *&v27[OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_feedConfigurationFactory] = v13;
    v60.receiver = v27;
    v60.super_class = v26;
    swift_unknownObjectRetain();
    v47 = v44;
    swift_unknownObjectRetain();
    v48 = objc_msgSendSuper2(&v60, sel_initWithNibName_bundle_, 0, 0);
    *(*&v48[OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_eventHandler] + 24) = &off_282A8D5E8;
    swift_unknownObjectWeakAssign();
    v49 = *&v48[OBJC_IVAR____TtC7NewsUI231WebEmbedContainerViewController_webEmbedViewController];
    v50 = v48;
    v51 = v49;
    sub_219BF31D4();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v69);
    sub_218DF8804(v46);
    __swift_destroy_boxed_opaque_existential_1(v61);
    __swift_destroy_boxed_opaque_existential_1(v62);
    __swift_destroy_boxed_opaque_existential_1(v63);
    __swift_destroy_boxed_opaque_existential_1(v66);
    __swift_destroy_boxed_opaque_existential_1(v73);
    __swift_destroy_boxed_opaque_existential_1(v75);
    return v50;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_219A13F74@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_219A14C10();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = type metadata accessor for WebEmbedResource();
  sub_219BE1E34();
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = type metadata accessor for WebEmbedStyler();
    v10 = swift_allocObject();
    result = sub_2190972A8(v6, v10 + OBJC_IVAR____TtC7NewsUI214WebEmbedStyler_resource);
    a2[3] = v9;
    a2[4] = &off_282A49630;
    *a2 = v10;
  }

  return result;
}

uint64_t sub_219A140A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for WebEmbedRouter();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    result = sub_2186CB1F0(v8, v7 + 24);
    *(v7 + 64) = v5;
    a2[3] = v6;
    a2[4] = &off_282A58A50;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_219A14160(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for WebEmbedContainerViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_219A141E0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC6108);
  result = sub_219BE1E34();
  v5 = v20;
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ED2048);
  result = sub_219BE1E34();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECF830);
  result = sub_219BE1E34();
  if (v17)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v7);
    v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v10 + 16))(v9);
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
    MEMORY[0x28223BE20](v11);
    v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v14 + 16))(v13);
    v15 = sub_219A1495C(v5, v6, *v9, *v13);
    __swift_destroy_boxed_opaque_existential_1(v16);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    *a2 = v15;
    a2[1] = &off_282A6FDB8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_219A14488@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC2CD8);
  result = sub_219BE1E34();
  if (v5)
  {
    type metadata accessor for WebEmbedInteractor();
    v4 = swift_allocObject();
    v4[3] = 0;
    result = swift_unknownObjectWeakInit();
    v4[4] = v5;
    v4[5] = v6;
    *a2 = v4;
    a2[1] = &off_282A9E698;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219A14540@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for WebEmbedTracker();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_282A77528;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219A145C8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WebEmbedDataManager();
  result = swift_allocObject();
  *a1 = result;
  a1[1] = &off_282A6A000;
  return result;
}

uint64_t sub_219A14668(void *a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void), void *a5)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, a2);
  result = sub_219BE1E34();
  if (v14)
  {
    v9 = a4(0);
    v10 = objc_allocWithZone(v9);
    sub_218718690(v13, v10 + *a5);
    v12.receiver = v10;
    v12.super_class = v9;
    v11 = objc_msgSendSuper2(&v12, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v13);
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}