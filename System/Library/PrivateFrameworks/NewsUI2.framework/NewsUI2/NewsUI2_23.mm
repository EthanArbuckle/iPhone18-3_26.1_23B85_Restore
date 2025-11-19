uint64_t sub_21895B5DC()
{
  type metadata accessor for NavigationBarBackgroundImageProviderFactory();

  return swift_allocObject();
}

uint64_t sub_21895B610@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EBB100);
  result = sub_219BE1E34();
  if (v23)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    MEMORY[0x28223BE20](v4);
    v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for MiniMastheadViewStyler();
    v21[3] = v9;
    v21[4] = &off_282A9DCE0;
    v21[0] = v8;
    v10 = type metadata accessor for MiniMastheadViewRenderer();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v21, v9);
    MEMORY[0x28223BE20](v12);
    v14 = (&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v19 = v9;
    v20 = &off_282A9DCE0;
    *&v18 = v16;
    sub_2186CB1F0(&v18, v11 + 16);
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = __swift_destroy_boxed_opaque_existential_1(v22);
    a2[3] = v10;
    a2[4] = &off_282A4A128;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21895B888@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EAC238);
  result = sub_219BE1E34();
  if (!v24)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE5AC0);
  result = sub_219BE1DF4();
  if (!v22)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1DF4();
  if (v20)
  {
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    MEMORY[0x28223BE20](v5);
    v7 = (v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7);
    v9 = *v7;
    v10 = type metadata accessor for NameLogoMastheadViewStyler();
    v18[3] = v10;
    v18[4] = &off_282A53E68;
    v18[0] = v9;
    v11 = type metadata accessor for NameLogoMastheadViewRenderer();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v18, v10);
    MEMORY[0x28223BE20](v13);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = *v15;
    v12[15] = v10;
    v12[16] = &off_282A53E68;
    v12[12] = v17;
    sub_2186CB1F0(&v21, (v12 + 2));
    sub_2186CB1F0(&v19, (v12 + 7));
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v23);
    a2[3] = v11;
    a2[4] = &off_282A46C10;
    *a2 = v12;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_21895BBB4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EAC238);
  result = sub_219BE1E34();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for NameLogoMastheadViewStyler();
    v17[3] = v9;
    v17[4] = &off_282A53E68;
    v17[0] = v8;
    v10 = type metadata accessor for NameLogoMastheadViewLayoutAttributesFactory();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x28223BE20](v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[6] = v9;
    v11[7] = &off_282A53E68;
    v11[2] = 0x4052000000000000;
    v11[3] = v16;
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_282A63540;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21895BDE4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EE4FA0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE5170);
  result = sub_219BE1E34();
  if (!v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE5010);
  result = sub_219BE1E34();
  if (v7)
  {
    v5 = sub_219BE58C4();
    swift_allocObject();
    result = sub_219BE58B4();
    v6 = MEMORY[0x277D6D2B0];
    a2[3] = v5;
    a2[4] = v6;
    *a2 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_21895BF94@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TagImageApplier();
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280ED02C0);
  result = sub_219BE1E34();
  v6 = v31;
  if (!v31)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB9700);
  result = sub_219BE1E34();
  if (!v30)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v28)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v23 = v32;
  v24 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v8 = result;
    v26 = v7;
    v27 = sub_218754C0C(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    v25[0] = v8;
    sub_219BE89E4();
    swift_allocObject();
    v9 = sub_219BE8994();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
    MEMORY[0x28223BE20](v10);
    v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = *v12;
    v15 = type metadata accessor for AccessoryButtonRenderer();
    v26 = v15;
    v27 = &off_282A94AE8;
    v25[0] = v14;
    v16 = type metadata accessor for SportsTagRenderer();
    v17 = swift_allocObject();
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v25, v15);
    MEMORY[0x28223BE20](v18);
    v20 = (&v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20);
    v22 = *v20;
    v17[8] = v15;
    v17[9] = &off_282A94AE8;
    v17[2] = v24;
    v17[3] = v6;
    v17[4] = v23;
    v17[5] = v22;
    v17[10] = v9;
    __swift_destroy_boxed_opaque_existential_1(v25);
    result = __swift_destroy_boxed_opaque_existential_1(v29);
    a2[3] = v16;
    a2[4] = &off_282A4A4D8;
    *a2 = v17;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_21895C3D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TagImageApplier();
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280ECF1F8);
  result = sub_219BE1E34();
  v6 = v31;
  if (!v31)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB9700);
  result = sub_219BE1E34();
  if (!v30)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v28)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v23 = v32;
  v24 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v8 = result;
    v26 = v7;
    v27 = sub_218754C0C(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    v25[0] = v8;
    sub_219BE89E4();
    swift_allocObject();
    v9 = sub_219BE8994();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
    MEMORY[0x28223BE20](v10);
    v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = *v12;
    v15 = type metadata accessor for AccessoryButtonRenderer();
    v26 = v15;
    v27 = &off_282A94AE8;
    v25[0] = v14;
    v16 = type metadata accessor for ChannelTagRenderer();
    v17 = swift_allocObject();
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v25, v15);
    MEMORY[0x28223BE20](v18);
    v20 = (&v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20);
    v22 = *v20;
    v17[8] = v15;
    v17[9] = &off_282A94AE8;
    v17[2] = v24;
    v17[3] = v6;
    v17[4] = v23;
    v17[5] = v22;
    v17[10] = v9;
    __swift_destroy_boxed_opaque_existential_1(v25);
    result = __swift_destroy_boxed_opaque_existential_1(v29);
    a2[3] = v16;
    a2[4] = &off_282A662E8;
    *a2 = v17;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_21895C7C4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TagImageApplier();
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECBB38);
  result = sub_219BE1E34();
  v6 = v31;
  if (!v31)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB9700);
  result = sub_219BE1E34();
  if (!v30)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v28)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v23 = v32;
  v24 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v8 = result;
    v26 = v7;
    v27 = sub_218754C0C(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    v25[0] = v8;
    sub_219BE89E4();
    swift_allocObject();
    v9 = sub_219BE8994();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
    MEMORY[0x28223BE20](v10);
    v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = *v12;
    v15 = type metadata accessor for AccessoryButtonRenderer();
    v26 = v15;
    v27 = &off_282A94AE8;
    v25[0] = v14;
    v16 = type metadata accessor for ChannelCoinRenderer();
    v17 = swift_allocObject();
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v25, v15);
    MEMORY[0x28223BE20](v18);
    v20 = (&v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20);
    v22 = *v20;
    v17[8] = v15;
    v17[9] = &off_282A94AE8;
    v17[2] = v24;
    v17[3] = v6;
    v17[4] = v23;
    v17[5] = v22;
    v17[10] = v9;
    __swift_destroy_boxed_opaque_existential_1(v25);
    result = __swift_destroy_boxed_opaque_existential_1(v29);
    a2[3] = v16;
    a2[4] = &off_282A91088;
    *a2 = v17;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_21895CBB8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TagImageApplier();
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBF430);
  result = sub_219BE1E34();
  v6 = v12;
  if (!v12)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE5AC0);
  result = sub_219BE1DF4();
  if (v11)
  {
    v8 = type metadata accessor for ChannelCategoryRenderer();
    v9 = swift_allocObject();
    v9[2] = v5;
    v9[3] = v6;
    v9[4] = v7;
    result = sub_2186CB1F0(&v10, (v9 + 5));
    a2[3] = v8;
    a2[4] = &off_282A600C0;
    *a2 = v9;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_21895CDA0@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, a2);
  result = sub_219BE1E34();
  if (v11)
  {
    v10 = a3(0);
    result = swift_allocObject();
    *(result + 16) = v11;
    *(result + 24) = v12;
    a5[3] = v10;
    a5[4] = a4;
    *a5 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21895CE84@<X0>(void *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810);
  result = sub_219BE1E34();
  if (v25)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186D6710(0, qword_280EC8790);
    result = sub_219BE1E24();
    if (result)
    {
      v9 = result;
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
      MEMORY[0x28223BE20](v10);
      v12 = (v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v13 + 16))(v12);
      v14 = *v12;
      v15 = type metadata accessor for BaseStyler();
      v23[3] = v15;
      v16 = sub_218754C0C(&qword_280EDFED0, type metadata accessor for BaseStyler);
      v23[4] = v16;
      v23[0] = v14;
      a2(0);
      v17 = swift_allocObject();
      v18 = __swift_mutable_project_boxed_opaque_existential_1(v23, v15);
      MEMORY[0x28223BE20](v18);
      v20 = (v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v21 + 16))(v20);
      v22 = *v20;
      v17[5] = v15;
      v17[6] = v16;
      v17[2] = v22;
      v17[8] = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
      v17[9] = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
      v17[7] = v9;
      __swift_destroy_boxed_opaque_existential_1(v23);
      result = __swift_destroy_boxed_opaque_existential_1(v24);
      *a4 = v17;
      a4[1] = a3;
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

uint64_t sub_21895D1DC@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EB9020);
  result = sub_219BE1E34();
  if (v27)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE6570);
    result = sub_219BE1E34();
    if (v25)
    {
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
      MEMORY[0x28223BE20](v9);
      v11 = (&v23[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v11);
      v13 = *v11;
      v14 = type metadata accessor for ChannelEngagementStyler();
      v23[3] = v14;
      v23[4] = &off_282A6D590;
      v23[0] = v13;
      v15 = a2(0);
      v16 = swift_allocObject();
      v17 = __swift_mutable_project_boxed_opaque_existential_1(v23, v14);
      MEMORY[0x28223BE20](v17);
      v19 = (&v23[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v20 + 16))(v19);
      v21 = *v19;
      v16[5] = v14;
      v16[6] = &off_282A6D590;
      v16[2] = v21;
      sub_2186CB1F0(&v24, (v16 + 7));
      __swift_destroy_boxed_opaque_existential_1(v23);
      result = __swift_destroy_boxed_opaque_existential_1(v26);
      a4[3] = v15;
      a4[4] = a3;
      *a4 = v16;
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

uint64_t sub_21895D478@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810);
  result = sub_219BE1E34();
  if (!v23)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, qword_280EC8790);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E902B0);
  result = sub_219BE1E34();
  if (v21)
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    MEMORY[0x28223BE20](v6);
    v8 = (&v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    v10 = *v8;
    v11 = type metadata accessor for BaseStyler();
    v19[3] = v11;
    v19[4] = sub_218754C0C(&qword_280EDFED0, type metadata accessor for BaseStyler);
    v19[0] = v10;
    type metadata accessor for ChannelCategoryStyler();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v11);
    MEMORY[0x28223BE20](v13);
    v15 = (&v19[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = sub_21895F338(*v15, v5, &v20, v12);
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v22);
    *a2 = v17;
    a2[1] = &off_282A38E10;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_21895D7A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810);
  result = sub_219BE1E34();
  if (v20)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    MEMORY[0x28223BE20](v4);
    v6 = (v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for BaseStyler();
    v18[3] = v9;
    v10 = sub_218754C0C(&qword_280EDFED0, type metadata accessor for BaseStyler);
    v18[4] = v10;
    v18[0] = v8;
    v11 = type metadata accessor for ChannelEngagementStyler();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v18, v9);
    MEMORY[0x28223BE20](v13);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = *v15;
    v12[5] = v9;
    v12[6] = v10;
    v12[2] = v17;
    v12[7] = 0x4020000000000000;
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v19);
    a2[3] = v11;
    a2[4] = &off_282A6D590;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21895DA30@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EA3CA0);
  result = sub_219BE1E34();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for ChannelPickerHeaderViewStyler();
    v17[3] = v9;
    v17[4] = &off_282A62700;
    v17[0] = v8;
    v10 = type metadata accessor for ChannelPickerHeaderViewLayoutAttributesFactory();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x28223BE20](v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_282A62700;
    v11[2] = v16;
    sub_21895F694(0, &qword_27CC0B258, type metadata accessor for ChannelPickerHeaderViewLayoutAttributes);
    swift_allocObject();
    v11[7] = sub_219BE2D94();
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_282A59FA0;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21895DC98@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBD0D8);
  result = sub_219BE1E34();
  if (v40)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EA3CA0);
    result = sub_219BE1E34();
    if (v38)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
      v29[1] = v29;
      MEMORY[0x28223BE20](v5);
      v7 = (v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
      v29[0] = v29;
      MEMORY[0x28223BE20](v9);
      v11 = (v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v11);
      v13 = *v7;
      v14 = *v11;
      v15 = type metadata accessor for SeeMoreButtonRenderer();
      v36[3] = v15;
      v36[4] = &off_282A6C9A0;
      v36[0] = v13;
      v16 = type metadata accessor for ChannelPickerHeaderViewStyler();
      v34 = v16;
      v35 = &off_282A62700;
      v33[0] = v14;
      v17 = type metadata accessor for ChannelPickerHeaderViewRenderer();
      v18 = swift_allocObject();
      v19 = __swift_mutable_project_boxed_opaque_existential_1(v36, v15);
      MEMORY[0x28223BE20](v19);
      v21 = (v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v22 + 16))(v21);
      v23 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
      MEMORY[0x28223BE20](v23);
      v25 = (v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v26 + 16))(v25);
      v27 = *v21;
      v28 = *v25;
      v18[10] = v15;
      v18[11] = &off_282A6C9A0;
      v18[7] = v27;
      v32 = &off_282A62700;
      v31 = v16;
      *&v30 = v28;
      sub_2186CB1F0(&v30, (v18 + 2));
      __swift_destroy_boxed_opaque_existential_1(v33);
      __swift_destroy_boxed_opaque_existential_1(v36);
      __swift_destroy_boxed_opaque_existential_1(v37);
      result = __swift_destroy_boxed_opaque_existential_1(v39);
      a2[3] = v17;
      a2[4] = &off_282A99498;
      *a2 = v18;
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

id sub_21895E0EC@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for ChannelPickerHeaderViewStyler();
  v3 = swift_allocObject();
  v4 = *MEMORY[0x277D76988];
  v3[2] = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v3[3] = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  result = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v3[4] = result;
  a1[3] = v2;
  a1[4] = &off_282A62700;
  *a1 = v3;
  return result;
}

uint64_t sub_21895E1B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EE4FA0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE5170);
    result = sub_219BE1DF4();
    if (v7)
    {
      sub_219BE66F4();
      swift_allocObject();
      sub_219BE66E4();
      v5 = sub_219BE58C4();
      swift_allocObject();
      result = sub_219BE58B4();
      v6 = MEMORY[0x277D6D2B0];
      a2[3] = v5;
      a2[4] = v6;
      *a2 = result;
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

uint64_t sub_21895E314@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_219BF30C4();
  swift_allocObject();
  v3 = sub_219BF30B4();
  a1[3] = v2;
  result = sub_218754C0C(&qword_280E901E8, MEMORY[0x277D33CA0]);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_21895E3A0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC6100);
  result = sub_219BE1E34();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for WebEmbedViewStyler();
    v17[3] = v9;
    v17[4] = &off_282A32A58;
    v17[0] = v8;
    v10 = type metadata accessor for WebEmbedViewRenderer();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x28223BE20](v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_282A32A58;
    v11[2] = v16;
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_282A334B8;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21895E5EC@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t sub_21895E63C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC6100);
  result = sub_219BE1E34();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for WebEmbedViewStyler();
    v17[3] = v9;
    v17[4] = &off_282A32A58;
    v17[0] = v8;
    v10 = type metadata accessor for WebEmbedViewLayoutAttributesFactory();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x28223BE20](v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_282A32A58;
    v11[2] = v16;
    sub_21895F6F8(0, &unk_27CC0B248);
    swift_allocObject();
    v11[7] = sub_219BE2D94();
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_282A3C440;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21895E898(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC7090);
  result = sub_219BE1E34();
  if (v16)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    MEMORY[0x28223BE20](v2);
    v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 16))(v4);
    v6 = *v4;
    v7 = type metadata accessor for RecentSearchStyler();
    v14[3] = v7;
    v14[4] = &off_282A64B40;
    v14[0] = v6;
    type metadata accessor for RecentSearchRenderer();
    v8 = swift_allocObject();
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v14, v7);
    MEMORY[0x28223BE20](v9);
    v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v8[5] = v7;
    v8[6] = &off_282A64B40;
    v8[2] = v13;
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

id sub_21895EAA8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for RecentSearchStyler();
  v3 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  *(v3 + 16) = result;
  a1[3] = v2;
  a1[4] = &off_282A64B40;
  *a1 = v3;
  return result;
}

uint64_t sub_21895EB28@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC7090);
  result = sub_219BE1E34();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for RecentSearchStyler();
    v17[3] = v9;
    v17[4] = &off_282A64B40;
    v17[0] = v8;
    v10 = type metadata accessor for RecentSearchLayoutAttributesFactory();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x28223BE20](v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_282A64B40;
    v11[2] = v16;
    sub_21895F6F8(0, &qword_280EE70F0);
    swift_allocObject();
    v11[7] = sub_219BE2D94();
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_282A31FF0;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21895ED84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeeMoreButtonStyler();
  v21[3] = v4;
  v21[4] = &off_282A5FD00;
  v21[0] = a1;
  v5 = type metadata accessor for TitleViewStyler();
  v19 = v5;
  v20 = &off_282A85B98;
  v18[0] = a2;
  type metadata accessor for TitleViewLayoutAttributesFactory();
  v6 = swift_allocObject();
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v21, v4);
  MEMORY[0x28223BE20](v7);
  v9 = (v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
  MEMORY[0x28223BE20](v11);
  v13 = (v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v9;
  v16 = *v13;
  v6[5] = v4;
  v6[6] = &off_282A5FD00;
  v6[2] = v15;
  v6[10] = v5;
  v6[11] = &off_282A85B98;
  v6[7] = v16;
  sub_21895F694(0, &qword_280EE70F8, type metadata accessor for TitleViewLayoutAttributes);
  swift_allocObject();
  v6[12] = sub_219BE2D94();
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v6;
}

id sub_21895EFAC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v17[3] = type metadata accessor for NameLogoMastheadViewRenderer();
  v17[4] = &off_282A46C10;
  v17[0] = a2;
  v16[3] = type metadata accessor for NameLogoMastheadViewLayoutAttributesFactory();
  v16[4] = &off_282A63540;
  v16[0] = a3;
  v9 = OBJC_IVAR____TtC7NewsUI228NameLogoMastheadViewProvider_mastheadView;
  *&a4[v9] = [objc_allocWithZone(type metadata accessor for NameLogoMastheadView()) initWithFrame_];
  v10 = OBJC_IVAR____TtC7NewsUI228NameLogoMastheadViewProvider_margins;
  v11 = *MEMORY[0x277D6DDC8];
  v12 = sub_219BE7F84();
  (*(*(v12 - 8) + 104))(&a4[v10], v11, v12);
  sub_21895F498(a1, &a4[OBJC_IVAR____TtC7NewsUI228NameLogoMastheadViewProvider_model], type metadata accessor for NameLogoMastheadModel);
  sub_218718690(v17, &a4[OBJC_IVAR____TtC7NewsUI228NameLogoMastheadViewProvider_renderer]);
  sub_218718690(v16, &a4[OBJC_IVAR____TtC7NewsUI228NameLogoMastheadViewProvider_layoutAttributesFactory]);
  v15.receiver = a4;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  sub_21895F500(a1, type metadata accessor for NameLogoMastheadModel);
  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v13;
}

id sub_21895F13C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v22 = type metadata accessor for NameLogoMastheadViewRenderer();
  v23 = &off_282A46C10;
  v21[0] = a2;
  v19 = v6;
  v20 = &off_282A63540;
  v18[0] = a3;
  v7 = objc_allocWithZone(type metadata accessor for NameLogoMastheadViewProvider());
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
  MEMORY[0x28223BE20](v8);
  v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
  MEMORY[0x28223BE20](v12);
  v14 = (v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = sub_21895EFAC(a1, *v10, *v14, v7);
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v16;
}

void *sub_21895F338(uint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  v10 = type metadata accessor for BaseStyler();
  v11 = sub_218754C0C(&qword_280EDFED0, type metadata accessor for BaseStyler);
  *&v9 = a1;
  a4[13] = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  a4[14] = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  sub_2186CB1F0(&v9, (a4 + 2));
  a4[7] = a2;
  sub_2186CB1F0(a3, (a4 + 8));
  return a4;
}

void sub_21895F444(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_21895F498(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21895F500(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21895F570()
{
  if (!qword_280ECE590)
  {
    v0 = type metadata accessor for MastheadModelContext();
    if (!v1)
    {
      atomic_store(v0, &qword_280ECE590);
    }
  }
}

uint64_t sub_21895F5B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MiniMastheadModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21895F61C(uint64_t a1)
{
  v3 = *(type metadata accessor for MiniMastheadModel() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 64) & ~*(v3 + 80));

  sub_21926DA24(a1, v4, v1 + 24, v5);
}

void sub_21895F694(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BE2DA4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21895F6F8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_219BE2DA4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_21895F754(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  (*(a3 + 8))(&v5, 0x4024000000000000, 0, a2, a3);
  sub_219BE2F24();

  v3 = sub_219BE3044();

  return v3;
}

uint64_t sub_21895F7D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = CACurrentMediaTime();
  sub_219BE3204();
  v4 = swift_allocObject();
  *(v4 + 2) = v1;
  *(v4 + 3) = v2;
  v4[4] = v3;
  sub_218720448(v1, v2);
  v5 = sub_219BE2E54();
  sub_219BE2F74();

  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;
  sub_218720448(v1, v2);
  v7 = sub_219BE2E54();
  v8 = sub_219BE2FD4();

  return v8;
}

uint64_t sub_21895F938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v30 = a5;
  v29 = a4;
  v8 = sub_219BED214();
  v31 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v28 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = sub_219BE5434();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v33 = a2;
  sub_2190C02CC(v16);
  v17 = sub_219BE5414();
  v18 = sub_219BF6214();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v27 = v8;
    v20 = v19;
    *v19 = 0;
    _os_log_impl(&dword_2186C1000, v17, v18, "Will prime offline content by flushing cached content lookups", v19, 2u);
    v8 = v27;
    MEMORY[0x21CECF960](v20, -1, -1);
  }

  (*(v14 + 8))(v16, v13);
  __swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40));
  sub_2198E9038();
  if (v30)
  {
    sub_219BED1F4();
    v21 = v31;
  }

  else
  {
    v22 = v28;
    sub_219BED1F4();
    sub_219BED244();
    v21 = v31;
    (*(v31 + 8))(v22, v8);
  }

  v23 = sub_219BE2E54();
  v24 = sub_219BE3094();

  (*(v21 + 8))(v12, v8);
  return v24;
}

uint64_t sub_21895FC24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE5434();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = a2;
  v14[1] = a3;
  sub_2190C02CC(v8);
  v9 = sub_219BE5414();
  v10 = sub_219BF6214();
  if (!os_log_type_enabled(v9, v10))
  {
    goto LABEL_6;
  }

  v11 = swift_slowAlloc();
  *v11 = 134349056;
  result = sub_219BF5CD4();
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v13 < 9.22337204e18)
  {
    *(v11 + 4) = v13;
    _os_log_impl(&dword_2186C1000, v9, v10, "Did prime offline content, time=%{public}lldms", v11, 0xCu);
    MEMORY[0x21CECF960](v11, -1, -1);
LABEL_6:

    return (*(v6 + 8))(v8, v5);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_21895FDE8(void *a1, void *a2, uint64_t a3)
{
  v39 = sub_219BE5434();
  v6 = *(v39 - 8);
  v7 = MEMORY[0x28223BE20](v39);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  sub_218963158(0, &qword_280EE7DC8, MEMORY[0x277D6CAF0]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v38 - v13;
  v40 = a1;
  v15 = a1;
  sub_2186CFDE4(0, &qword_280E8B580);
  v16 = sub_219BE1D94();
  v17 = swift_dynamicCast();
  v18 = *(*(v16 - 8) + 56);
  if (!v17)
  {
    v18(v14, 1, 1, v16);
    sub_218962CB8(v14);
LABEL_8:
    v40 = a2;
    v41 = a3;
    sub_2190C02CC(v9);
    v31 = a1;
    v32 = sub_219BE5414();
    v33 = sub_219BF6214();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138543362;
      v36 = a1;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_2186C1000, v32, v33, "Failed to prime offline content with error=%{public}@", v34, 0xCu);
      sub_218962D30(v35);
      MEMORY[0x21CECF960](v35, -1, -1);
      MEMORY[0x21CECF960](v34, -1, -1);
    }

    return (*(v6 + 8))(v9, v39);
  }

  v19 = *(v16 - 8);
  v38 = v11;
  v18(v14, 0, 1, v16);
  v20 = (*(v19 + 88))(v14, v16);
  v21 = v6;
  v22 = a2;
  v23 = a3;
  v24 = *MEMORY[0x277D6CAD8];
  (*(v19 + 8))(v14, v16);
  v25 = v20 == v24;
  a3 = v23;
  a2 = v22;
  v6 = v21;
  if (!v25)
  {
    goto LABEL_8;
  }

  v40 = a2;
  v41 = a3;
  v26 = v38;
  sub_2190C02CC(v38);
  v27 = sub_219BE5414();
  v28 = sub_219BF6214();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_2186C1000, v27, v28, "Timed out attempting to prime offline content", v29, 2u);
    MEMORY[0x21CECF960](v29, -1, -1);
  }

  return (*(v21 + 8))(v26, v39);
}

uint64_t sub_218960220(uint64_t a1, uint64_t a2, char a3)
{
  v18[1] = a2;
  v4 = sub_219BED214();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - v9;
  v11 = CACurrentMediaTime();
  sub_218962E3C(0, &qword_280E8B4E0, MEMORY[0x277D83D88]);
  sub_219BE31F4();
  v12 = sub_219BE2E54();
  sub_219BE2F84();

  *(swift_allocObject() + 16) = v11;
  v13 = sub_219BE2E54();
  sub_219BE2F74();

  v14 = sub_219BE2E54();
  sub_219BE2FD4();

  sub_219BED1F4();
  if ((a3 & 1) == 0)
  {
    sub_219BED244();
    (*(v5 + 8))(v8, v4);
  }

  v15 = sub_219BE2E54();
  v16 = sub_219BE3094();

  (*(v5 + 8))(v10, v4);
  return v16;
}

uint64_t sub_218960504(uint64_t a1)
{
  v2 = sub_219BED224();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_280EE5FF0 != -1)
  {
    swift_once();
  }

  v6 = sub_219BE5434();
  __swift_project_value_buffer(v6, qword_280F626B8);
  v7 = sub_219BE5414();
  v8 = sub_219BF6214();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2186C1000, v7, v8, "Will prime offline content by checking newsd for Top Stories", v9, 2u);
    MEMORY[0x21CECF960](v9, -1, -1);
  }

  v10 = *(a1 + 152);
  *v5 = v10;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v11 = v10;
  v12 = sub_219BED254();
  result = (*(v3 + 8))(v5, v2);
  if (v12)
  {
    sub_2186C6148(0, &unk_27CC0B2E0);
    sub_219BE3204();
    sub_219BE2F84();

    v14 = sub_219BE2E54();
    sub_219BE2FD4();

    v15 = sub_219BE2F24();

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2189607D4(uint64_t a1, uint64_t a2)
{
  if (qword_280EE5FF0 != -1)
  {
    swift_once();
  }

  v3 = sub_219BE5434();
  __swift_project_value_buffer(v3, qword_280F626B8);
  v4 = sub_219BE5414();
  v5 = sub_219BF6214();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2186C1000, v4, v5, "Will prime offline content by flushing cached content lookups", v6, 2u);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
  return sub_2198E9038();
}

void sub_2189608E4()
{
  if (qword_280EE5FF0 != -1)
  {
    swift_once();
  }

  v0 = sub_219BE5434();
  __swift_project_value_buffer(v0, qword_280F626B8);
  v1 = sub_219BE5414();
  v2 = sub_219BF6214();
  if (!os_log_type_enabled(v1, v2))
  {
    goto LABEL_8;
  }

  v3 = swift_slowAlloc();
  *v3 = 134349056;
  sub_219BF5CD4();
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v4 < 9.22337204e18)
  {
    *(v3 + 4) = v4;
    _os_log_impl(&dword_2186C1000, v1, v2, "Did prime offline content, time=%{public}lldms", v3, 0xCu);
    MEMORY[0x21CECF960](v3, -1, -1);
LABEL_8:

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_218960A2C(void *a1)
{
  sub_218963158(0, &qword_280EE7DC8, MEMORY[0x277D6CAF0]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v22 - v3;
  v22[1] = a1;
  v5 = a1;
  sub_2186CFDE4(0, &qword_280E8B580);
  v6 = sub_219BE1D94();
  v7 = swift_dynamicCast();
  v8 = *(*(v6 - 8) + 56);
  if (v7)
  {
    v9 = *(v6 - 8);
    v8(v4, 0, 1, v6);
    v10 = (*(v9 + 88))(v4, v6);
    v11 = *MEMORY[0x277D6CAD8];
    (*(v9 + 8))(v4, v6);
    if (v10 == v11)
    {
      if (qword_280EE5FF0 != -1)
      {
        swift_once();
      }

      v12 = sub_219BE5434();
      __swift_project_value_buffer(v12, qword_280F626B8);
      v13 = sub_219BE5414();
      v14 = sub_219BF6214();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_2186C1000, v13, v14, "Timed out attempting to prime offline content", v15, 2u);
LABEL_12:
        MEMORY[0x21CECF960](v15, -1, -1);
        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v8(v4, 1, 1, v6);
    sub_218962CB8(v4);
  }

  if (qword_280EE5FF0 != -1)
  {
    swift_once();
  }

  v16 = sub_219BE5434();
  __swift_project_value_buffer(v16, qword_280F626B8);
  v17 = a1;
  v13 = sub_219BE5414();
  v18 = sub_219BF6214();

  if (os_log_type_enabled(v13, v18))
  {
    v15 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v15 = 138543362;
    v20 = a1;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v21;
    *v19 = v21;
    _os_log_impl(&dword_2186C1000, v13, v18, "Failed to prime offline content with error=%{public}@", v15, 0xCu);
    sub_218962D30(v19);
    MEMORY[0x21CECF960](v19, -1, -1);
    goto LABEL_12;
  }

LABEL_13:
}

uint64_t sub_218960D7C()
{
  sub_218962DB8(0, &unk_27CC0B300, &unk_27CC0B2E0, 0x277D31420, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_218960E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_218963158(0, &qword_280E8EAA0, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = sub_219BF5BF4();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = sub_218846958;
  v13[5] = v11;
  v13[6] = a3;
  v13[7] = a4;

  sub_218AB3D80(0, 0, v10, &unk_219C0A930, v13);
}

uint64_t sub_218960F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  return MEMORY[0x2822009F8](sub_218960F8C, 0, 0);
}

uint64_t sub_218960F8C()
{
  sub_219BDC134();
  *(v0 + 56) = sub_219BDC124();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v2 = sub_2186C6148(0, &unk_27CC0B2E0);
  *v1 = v0;
  v1[1] = sub_218961070;

  return MEMORY[0x28218ED80](v0 + 16, &unk_219C0A938, 0, v2);
}

uint64_t sub_218961070()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_2189611FC;
  }

  else
  {

    v3 = sub_21896118C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21896118C()
{
  v1 = *(v0 + 16);
  (*(v0 + 24))(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2189611FC()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);

  v2(v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_218961280(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x2822009F8](sub_2189612A0, 0, 0);
}

uint64_t sub_2189612A0()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2189613B0;
  v2 = swift_continuation_init();
  sub_218963280();
  v0[17] = v3;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21896154C;
  v0[13] = &block_descriptor;
  v0[14] = v2;
  [v1 fetchCachedTodayFeedWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2189613B0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_2189614E0;
  }

  else
  {
    v2 = sub_2189614C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2189614E0()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21896154C(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_2186CFDE4(0, &qword_280E8B580);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_218961628(void **a1, void *a2)
{
  v78 = type metadata accessor for TodayConfigFetchResult();
  MEMORY[0x28223BE20](v78);
  v79 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for TodayConfig();
  MEMORY[0x28223BE20](v80);
  v81 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDBD34();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v83 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v76 - v11;
  MEMORY[0x28223BE20](v10);
  v87 = &v76 - v13;
  v14 = *a1;
  if (qword_280EE5FF0 != -1)
  {
    swift_once();
  }

  v15 = sub_219BE5434();
  v16 = __swift_project_value_buffer(v15, qword_280F626B8);
  v17 = v14;
  v86 = v16;
  v18 = sub_219BE5414();
  v19 = sub_219BF6214();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = v6;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138543362;
    *(v21 + 4) = v17;
    *v22 = v17;
    v23 = v17;
    _os_log_impl(&dword_2186C1000, v18, v19, "Successfully retrieved prefetched Today feed from newsd: %{public}@", v21, 0xCu);
    sub_218962D30(v22);
    MEMORY[0x21CECF960](v22, -1, -1);
    v24 = v21;
    v6 = v20;
    MEMORY[0x21CECF960](v24, -1, -1);
  }

  v25 = a2[10];
  v26 = a2[11];
  __swift_project_boxed_opaque_existential_1(a2 + 7, v25);
  v88 = xmmword_219C0A870;
  v27 = v87;
  (*(v26 + 80))(&v88, v25, v26);
  v28 = [v17 publishDate];
  sub_219BDBCA4();

  LOBYTE(v28) = sub_219BDBC14();
  v84 = *(v7 + 8);
  v84(v12, v6);
  if ((v28 & 1) == 0)
  {
    v82 = v7 + 8;
    v43 = v83;
    (*(v7 + 16))(v83, v27, v6);
    v44 = v17;
    v45 = sub_219BE5414();
    v46 = sub_219BF6214();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *&v88 = v86;
      *v47 = 136446466;
      v48 = [v44 publishDate];
      LODWORD(v81) = v46;
      v49 = v48;
      sub_219BDBCA4();

      sub_218963060(&qword_280EE9C60, MEMORY[0x277CC9578]);
      v50 = sub_219BF7894();
      v52 = v51;
      v53 = v84;
      v84(v12, v6);
      v54 = sub_2186D1058(v50, v52, &v88);

      *(v47 + 4) = v54;
      *(v47 + 12) = 2082;
      v55 = sub_219BF7894();
      v57 = v56;
      v53(v43, v6);
      v58 = sub_2186D1058(v55, v57, &v88);

      *(v47 + 14) = v58;
      _os_log_impl(&dword_2186C1000, v45, v81, "Today feed from newsd is not newer than our last update, publishDate=%{public}s, lastUpdate=%{public}s", v47, 0x16u);
      v59 = v86;
      swift_arrayDestroy();
      MEMORY[0x21CECF960](v59, -1, -1);
      MEMORY[0x21CECF960](v47, -1, -1);
    }

    else
    {

      v53 = v84;
      v84(v43, v6);
    }

    sub_218962E3C(0, &qword_280EE6900, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v60 = sub_219BE3014();
    v53(v87, v6);
    return v60;
  }

  CACurrentMediaTime();
  v29 = [v17 contentArchive];
  v77 = a2;
  v30 = [v29 unarchiveIntoContentContext_];

  v31 = v30;
  v32 = sub_219BE5414();
  v33 = sub_219BF6214();

  v34 = os_log_type_enabled(v32, v33);
  v83 = v31;
  if (v34)
  {
    v82 = v7 + 8;
    v35 = v6;
    v36 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v88 = v6;
    *v36 = 136446466;
    v37 = [objc_opt_self() stringFromByteCount:objc_msgSend(v31 countStyle:{sel_storageSize), 0}];
    v38 = sub_219BF5414();
    v40 = v39;

    v41 = sub_2186D1058(v38, v40, &v88);

    *(v36 + 4) = v41;
    *(v36 + 12) = 2050;
    sub_219BF5CD4();
    if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v42 > -9.22337204e18)
    {
      if (v42 < 9.22337204e18)
      {
        *(v36 + 14) = v42;
        _os_log_impl(&dword_2186C1000, v32, v33, "Did unarchive prefetched Today feed articles, size=%{public}s, time=%{public}lldms", v36, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v6);
        MEMORY[0x21CECF960](v6, -1, -1);
        MEMORY[0x21CECF960](v36, -1, -1);

        v6 = v35;
        goto LABEL_14;
      }

LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_14:
  CACurrentMediaTime();
  sub_219BEE324();
  swift_allocObject();
  sub_219BEE314();
  v60 = [v17 configData];
  v61 = sub_219BDBA04();
  v63 = v62;

  sub_218963060(&unk_280EDF358, type metadata accessor for TodayConfig);
  v17 = v81;
  v64 = v85;
  sub_219BE1974();
  if (v64)
  {
    v84(v87, v6);

    sub_2186C6190(v61, v63);

    return v60;
  }

  sub_2186C6190(v61, v63);

  v65 = sub_219BE5414();
  v66 = sub_219BF6214();
  v67 = os_log_type_enabled(v65, v66);
  v33 = v79;
  if (!v67)
  {
LABEL_23:

    sub_218962EFC(v17, v33, type metadata accessor for TodayConfig);
    if (qword_27CC08840 == -1)
    {
LABEL_24:
      v71 = qword_27CCD8EF0;
      v72 = v77;
      v73 = v77[13];

      v74 = [v73 possiblyUnfetchedAppConfiguration];
      v75 = v78;
      *(v33 + *(v78 + 20)) = v71;
      *(v33 + *(v75 + 24)) = v74;
      MEMORY[0x28223BE20](v74);
      *(&v76 - 2) = v72;
      *(&v76 - 1) = v33;
      sub_218962E3C(0, &qword_280EE6900, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v60 = sub_219BE30B4();

      sub_218962E9C(v17, type metadata accessor for TodayConfig);
      v84(v87, v6);
      sub_218962E9C(v33, type metadata accessor for TodayConfigFetchResult);
      return v60;
    }

LABEL_29:
    swift_once();
    goto LABEL_24;
  }

  v68 = swift_slowAlloc();
  *v68 = 134349056;
  result = sub_219BF5CD4();
  if ((*&v70 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v70 <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v70 < 9.22337204e18)
  {
    *(v68 + 4) = v70;
    _os_log_impl(&dword_2186C1000, v65, v66, "Did decode prefetched Today feed config, time=%{public}lldms", v68, 0xCu);
    MEMORY[0x21CECF960](v68, -1, -1);
    goto LABEL_23;
  }

LABEL_32:
  __break(1u);
  return result;
}

void sub_218962130(void *a1)
{
  if (qword_280EE5FF0 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F626B8);
  v3 = a1;
  oslog = sub_219BE5414();
  v4 = sub_219BF61F4();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = a1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_2186C1000, oslog, v4, "Failed to retrieve prefetched Today feed from newsd, error=%{public}@", v5, 0xCu);
    sub_218962D30(v6);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }
}

uint64_t sub_21896227C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for TodayConfigFetchResult();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = swift_allocObject();
  swift_weakInit();
  sub_218962EFC(a6, &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TodayConfigFetchResult);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = a3;
  v17[4] = a4;
  sub_218962F64(&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v18 = (v17 + ((v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_2187A913C;
  v18[1] = v14;

  sub_219BE3494();
}

void sub_218962444(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Result = type metadata accessor for TodayConfigFetchResult();
  v12 = *(Result - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](Result - 8);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v27 = a5;
    v28 = a2;
    v29 = a3;
    __swift_project_boxed_opaque_existential_1((Strong + 112), *(Strong + 136));
    type metadata accessor for TodayFeedOfflineFeedUpdater();
    sub_218962EFC(a4, &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TodayConfigFetchResult);
    v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v17 = swift_allocObject();
    sub_218962F64(&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
    v18 = sub_219BE1E04();

    if (v18)
    {
      MEMORY[0x28223BE20](v19);
      *(&v27 - 2) = v15;
      *(&v27 - 1) = v18;
      sub_219BE3204();
      v20 = swift_allocObject();
      *(v20 + 16) = v27;
      *(v20 + 24) = a6;

      v21 = sub_219BE2E54();
      sub_219BE2F74();

      v22 = swift_allocObject();
      *(v22 + 16) = v28;
      *(v22 + 24) = v29;

      v23 = sub_219BE2E54();
      sub_219BE2FD4();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v24 = sub_219BE1D94();
    sub_218963060(&qword_27CC0B2F0, MEMORY[0x277D6CAF0]);
    v25 = swift_allocError();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D6CAE0], v24);
    a2(v25);
  }
}

uint64_t sub_2189627D4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3[3] = type metadata accessor for TodayFeedOfflineFeedUpdater.ConfigTransformer();
  v3[4] = &off_282A49950;
  v3[0] = swift_allocObject();
  sub_2186CFDE4(0, qword_280EB9BC0);
  sub_219BE1BA4();
  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TodayConfigFetchResult();
  return sub_219BE1BA4();
}

uint64_t sub_2189628B4(void *a1, uint64_t *a2)
{
  v3 = a1[10];
  v4 = a1[11];
  v5 = *a2;
  __swift_project_boxed_opaque_existential_1(a1 + 7, v3);
  v10 = xmmword_219C0A870;
  v9[3] = v5;
  v9[4] = &off_282A49960;
  v9[0] = a2;
  v6 = *(v4 + 64);

  v7 = v6(&v10, v9, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v7;
}

uint64_t sub_21896298C(uint64_t a1, uint64_t (*a2)(void))
{
  if (qword_280EE5FF0 != -1)
  {
    swift_once();
  }

  v3 = sub_219BE5434();
  __swift_project_value_buffer(v3, qword_280F626B8);
  v4 = sub_219BE5414();
  v5 = sub_219BF6214();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2186C1000, v4, v5, "Did adopt prefetched Today feed groups", v6, 2u);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  return a2();
}

uint64_t sub_218962A88(void *a1, uint64_t (*a2)(void *))
{
  if (qword_280EE5FF0 != -1)
  {
    swift_once();
  }

  v4 = sub_219BE5434();
  __swift_project_value_buffer(v4, qword_280F626B8);
  v5 = a1;
  v6 = sub_219BE5414();
  v7 = sub_219BF61F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = a1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2186C1000, v6, v7, "Failed to adopt prefetched Today feed groups, error=%{public}@", v8, 0xCu);
    sub_218962D30(v9);
    MEMORY[0x21CECF960](v9, -1, -1);
    MEMORY[0x21CECF960](v8, -1, -1);
  }

  return a2(a1);
}

uint64_t sub_218962BE4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);

  return swift_deallocClassInstance();
}

uint64_t sub_218962CB8(uint64_t a1)
{
  sub_218963158(0, &qword_280EE7DC8, MEMORY[0x277D6CAF0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218962D30(uint64_t a1)
{
  sub_218962DB8(0, &qword_280E8D9F0, &qword_280E8DA00, 0x277D82BB8, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218962DB8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186C6148(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_218962E3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
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

uint64_t sub_218962E9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218962EFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218962F64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayConfigFetchResult();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218962FC8()
{
  v1 = *(type metadata accessor for TodayConfigFetchResult() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  sub_218962444(v3, v4, v5, v0 + v2, v7, v8);
}

uint64_t sub_218963060(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2189630A8(void *a1)
{
  type metadata accessor for TodayConfigFetchResult();

  return sub_2189627D4(a1);
}

void sub_218963158(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_2189631AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2187608D4;

  return sub_218960F68(a1, v4, v5, v6, v7, v9, v8);
}

void sub_218963280()
{
  if (!qword_27CC0B310)
  {
    sub_2186C6148(255, &unk_27CC0B2E0);
    sub_2186CFDE4(255, &qword_280E8B580);
    v0 = sub_219BF5C44();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0B310);
    }
  }
}

uint64_t sub_218963310()
{
  v13 = sub_219BDF274();
  v0 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BDEEB4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDFE74();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF5414();
  sub_219BDFE64();
  sub_218963C98(&qword_27CC1A3E0, MEMORY[0x277D2E1B8]);
  sub_219BDCCC4();
  (*(v8 + 8))(v10, v7);
  (*(v0 + 104))(v2, *MEMORY[0x277D2D9C8], v13);
  sub_219BDEEA4();
  sub_218963C98(&unk_27CC15AA0, MEMORY[0x277D2D740]);
  sub_219BDCCC4();
  (*(v4 + 8))(v6, v3);
  sub_219BDF854();
  sub_218963C98(&unk_27CC15AD0, MEMORY[0x277D2DDA8]);
  memset(v14, 0, sizeof(v14));
  sub_219BDCCE4();
  return sub_218806FD0(v14);
}

uint64_t sub_218963668(uint64_t a1)
{
  v20 = a1;
  v1 = sub_219BDF074();
  v18 = *(v1 - 8);
  v19 = v1;
  MEMORY[0x28223BE20](v1);
  v17 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BE1544();
  v3 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDBD64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE1524();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDBD54();
  sub_219BDBD44();
  (*(v7 + 8))(v9, v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D2F3B0], v16);
  (*(v18 + 104))(v17, *MEMORY[0x277D2D810], v19);
  sub_219BE1514();
  sub_218963C98(&qword_280EE7FE0, MEMORY[0x277D2F398]);
  sub_219BDCCC4();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_2189639A4()
{
  sub_218774F78(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_218963A50(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  *(v4 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_218963AB4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_218963B4C;
}

void sub_218963B4C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
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

uint64_t sub_218963BD0(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  sub_219BDD154();
}

uint64_t sub_218963C98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218963CE0(uint64_t a1)
{
  v27 = a1;
  v26 = type metadata accessor for TagsSearchMoreFeedGroup();
  MEMORY[0x28223BE20](v26);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for RecipesSearchMoreFeedGroup();
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BF1904();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ArticlesSearchMoreFeedGroup();
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SearchMoreFeedGroup();
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218965054(v27, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v17 = (v7 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2189650B8(v15, v5, type metadata accessor for RecipesSearchMoreFeedGroup);
      sub_219BED874();
      v18 = sub_219BF18C4();
      (*v17)(v9, v6);
      v19 = sub_2189640AC(v18);

      v20 = v5;
      v21 = type metadata accessor for RecipesSearchMoreFeedGroup;
    }

    else
    {
      sub_2189650B8(v15, v2, type metadata accessor for TagsSearchMoreFeedGroup);
      sub_219BED874();
      v23 = sub_219BF1864();
      (*v17)(v9, v6);
      v19 = sub_2189642DC(v23);

      v20 = v2;
      v21 = type metadata accessor for TagsSearchMoreFeedGroup;
    }
  }

  else
  {
    sub_2189650B8(v15, v12, type metadata accessor for ArticlesSearchMoreFeedGroup);
    sub_219BED874();
    v22 = sub_219BF18D4();
    (*v17)(v9, v6);
    v19 = sub_2189642DC(v22);

    v20 = v12;
    v21 = type metadata accessor for ArticlesSearchMoreFeedGroup;
  }

  sub_218965120(v20, v21);
  return v19;
}

uint64_t sub_2189640AC(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x21CECE0F0](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v8 = [v5 identifier];
      v9 = sub_219BF5414();
      v11 = v10;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_218840D24(0, *(v4 + 2) + 1, 1, v4);
      }

      v13 = *(v4 + 2);
      v12 = *(v4 + 3);
      if (v13 >= v12 >> 1)
      {
        v4 = sub_218840D24((v12 > 1), v13 + 1, 1, v4);
      }

      *(v4 + 2) = v13 + 1;
      v14 = &v4[16 * v13];
      *(v14 + 4) = v9;
      *(v14 + 5) = v11;
      ++v3;
      if (v7 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_19:
  v15 = sub_218845F78(v4);

  *(swift_allocObject() + 16) = v15;
  v16 = sub_219BE2E54();
  v17 = sub_219BE2F64();

  result = swift_allocObject();
  *(result + 16) = v17;
  return result;
}

uint64_t sub_2189642DC(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_17;
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
        goto LABEL_15;
      }

LABEL_7:
      v7 = [v5 identifier];
      v8 = sub_219BF5414();
      v10 = v9;
      swift_unknownObjectRelease();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_218840D24(0, *(v4 + 2) + 1, 1, v4);
      }

      v12 = *(v4 + 2);
      v11 = *(v4 + 3);
      if (v12 >= v11 >> 1)
      {
        v4 = sub_218840D24((v11 > 1), v12 + 1, 1, v4);
      }

      *(v4 + 2) = v12 + 1;
      v13 = &v4[16 * v12];
      *(v13 + 4) = v8;
      *(v13 + 5) = v10;
      ++v3;
      if (v6 == i)
      {
        goto LABEL_19;
      }
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    v5 = *(a1 + 8 * v3 + 32);
    swift_unknownObjectRetain();
    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_19:
  v14 = sub_218845F78(v4);

  *(swift_allocObject() + 16) = v14;
  v15 = sub_219BE2E54();
  v16 = sub_219BE2F64();

  result = swift_allocObject();
  *(result + 16) = v16;
  return result;
}

uint64_t sub_21896450C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  if ((v6 >> 6) - 1 >= 2)
  {
    if (v6 >> 6)
    {
      goto LABEL_30;
    }

    v8 = v3 & 0xFFFFFFFFFFFFFF8;
    v25 = *a1;
    if (v3 >> 62)
    {
      goto LABEL_29;
    }

    v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
LABEL_30:
      sub_21896519C();
      swift_allocObject();
      return sub_219BE3014();
    }

LABEL_6:
    v10 = 0;
    v26 = v9;
    v11 = a2 + 56;
    while (1)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x21CECE0F0](v10, v25);
        v13 = __OFADD__(v10++, 1);
        if (v13)
        {
LABEL_25:
          __break(1u);
          goto LABEL_30;
        }
      }

      else
      {
        if (v10 >= *(v8 + 16))
        {
          __break(1u);
LABEL_29:
          v9 = sub_219BF7214();
          if (!v9)
          {
            goto LABEL_30;
          }

          goto LABEL_6;
        }

        v12 = *(v25 + 32 + 8 * v10);
        swift_unknownObjectRetain();
        v13 = __OFADD__(v10++, 1);
        if (v13)
        {
          goto LABEL_25;
        }
      }

      v14 = [v12 identifier];
      v15 = sub_219BF5414();
      v17 = v16;

      if (*(a2 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v18 = sub_219BF7AE4(), v19 = -1 << *(a2 + 32), v20 = v18 & ~v19, ((*(v11 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0))
      {
        v21 = ~v19;
        while (1)
        {
          v22 = (*(a2 + 48) + 16 * v20);
          v23 = *v22 == v15 && v22[1] == v17;
          if (v23 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v20 = (v20 + 1) & v21;
          if (((*(v11 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        swift_unknownObjectRelease();
      }

      else
      {
LABEL_7:

        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      if (v10 == v26)
      {
        goto LABEL_30;
      }
    }
  }

  sub_21896519C();
  swift_allocObject();
  sub_2189651EC(v3, v2, v5, v4, v6);
  return sub_219BE3014();
}

uint64_t sub_2189647F0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = v6 >> 6;
  if (v6 >> 6 > 1)
  {
    if (v7 != 2)
    {
LABEL_31:
      sub_21896519C();
      swift_allocObject();
      return sub_219BE3014();
    }
  }

  else if (v7)
  {
    v9 = v3 & 0xFFFFFFFFFFFFFF8;
    v27 = *a1;
    if (v3 >> 62)
    {
      goto LABEL_30;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
    {
      v11 = 0;
      v28 = i;
      v12 = a2 + 56;
      while (1)
      {
        if ((v27 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x21CECE0F0](v11, v27);
        }

        else
        {
          if (v11 >= *(v9 + 16))
          {
            goto LABEL_29;
          }

          v13 = *(v27 + 32 + 8 * v11);
        }

        v14 = v13;
        if (__OFADD__(v11++, 1))
        {
          break;
        }

        v16 = [v13 identifier];
        v17 = sub_219BF5414();
        v19 = v18;

        if (*(a2 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v20 = sub_219BF7AE4(), v21 = -1 << *(a2 + 32), v22 = v20 & ~v21, ((*(v12 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0))
        {
          v23 = ~v21;
          while (1)
          {
            v24 = (*(a2 + 48) + 16 * v22);
            v25 = *v24 == v17 && v24[1] == v19;
            if (v25 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            v22 = (v22 + 1) & v23;
            if (((*(v12 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
            {
              goto LABEL_6;
            }
          }
        }

        else
        {
LABEL_6:

          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
        }

        if (v11 == v28)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      ;
    }

    goto LABEL_31;
  }

  sub_21896519C();
  swift_allocObject();
  sub_2189651EC(v3, v2, v5, v4, v6);
  return sub_219BE3014();
}

uint64_t sub_218964AD0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  if (v6 >> 6 >= 2)
  {
    if (v6 >> 6 != 2)
    {
      goto LABEL_30;
    }

    v8 = v3 & 0xFFFFFFFFFFFFFF8;
    v25 = *a1;
    if (v3 >> 62)
    {
      goto LABEL_29;
    }

    v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
LABEL_30:
      sub_21896519C();
      swift_allocObject();
      return sub_219BE3014();
    }

LABEL_6:
    v10 = 0;
    v26 = v9;
    v11 = a2 + 56;
    while (1)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x21CECE0F0](v10, v25);
        v13 = __OFADD__(v10++, 1);
        if (v13)
        {
LABEL_25:
          __break(1u);
          goto LABEL_30;
        }
      }

      else
      {
        if (v10 >= *(v8 + 16))
        {
          __break(1u);
LABEL_29:
          v9 = sub_219BF7214();
          if (!v9)
          {
            goto LABEL_30;
          }

          goto LABEL_6;
        }

        v12 = *(v25 + 32 + 8 * v10);
        swift_unknownObjectRetain();
        v13 = __OFADD__(v10++, 1);
        if (v13)
        {
          goto LABEL_25;
        }
      }

      v14 = [v12 identifier];
      v15 = sub_219BF5414();
      v17 = v16;

      if (*(a2 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v18 = sub_219BF7AE4(), v19 = -1 << *(a2 + 32), v20 = v18 & ~v19, ((*(v11 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0))
      {
        v21 = ~v19;
        while (1)
        {
          v22 = (*(a2 + 48) + 16 * v20);
          v23 = *v22 == v15 && v22[1] == v17;
          if (v23 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v20 = (v20 + 1) & v21;
          if (((*(v11 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        swift_unknownObjectRelease();
      }

      else
      {
LABEL_7:

        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      if (v10 == v26)
      {
        goto LABEL_30;
      }
    }
  }

  sub_21896519C();
  swift_allocObject();
  sub_2189651EC(v3, v2, v5, v4, v6);
  return sub_219BE3014();
}

uint64_t sub_218964DB4()
{

  return swift_deallocClassInstance();
}

unint64_t sub_218964E14()
{
  result = qword_27CC0B320;
  if (!qword_27CC0B320)
  {
    type metadata accessor for SearchMoreFeedGroup();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B320);
  }

  return result;
}

uint64_t sub_218964E74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_218963CE0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_218964EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_218964F54;

  return MEMORY[0x282191870](a1, a2, a3);
}

uint64_t sub_218964F54(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_218965054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchMoreFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2189650B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218965120(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21896519C()
{
  if (!qword_27CC0B328)
  {
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0B328);
    }
  }
}

uint64_t sub_2189651EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 0xBFu)
  {
  }

  return result;
}

uint64_t ShortcutIconURL.x1URL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_219BDB954();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ShortcutIconURL.x2URL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShortcutIconURL() + 20);
  v4 = sub_219BDB954();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShortcutIconURL.x3URL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShortcutIconURL() + 24);
  v4 = sub_219BDB954();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id ShortcutIconURL.dynamicColor.getter()
{
  v1 = (v0 + *(type metadata accessor for ShortcutIconURL() + 28));
  if (*v1)
  {
    return [objc_opt_self() ts:*v1 dynamicColor:v1[1] withDarkStyleVariant:?];
  }

  else
  {
    return 0;
  }
}

uint64_t ShortcutIconURL.url(at:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  if (a2 < 3.0)
  {
    if (a2 >= 2.0)
    {
      v10 = 20;
      goto LABEL_11;
    }

    if (a2 >= 1.0)
    {
      goto LABEL_12;
    }

    if (qword_280EE5F18 != -1)
    {
      swift_once();
    }

    v6 = sub_219BE5434();
    __swift_project_value_buffer(v6, qword_280F62538);
    v7 = sub_219BE5414();
    v8 = sub_219BF6214();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134349056;
      *(v9 + 4) = a2;
      _os_log_impl(&dword_2186C1000, v7, v8, "Unexpected screen scale=%{public}f when determining shortcut icon url, using 3x", v9, 0xCu);
      MEMORY[0x21CECF960](v9, -1, -1);
    }
  }

  v10 = 24;
LABEL_11:
  v3 += *(type metadata accessor for ShortcutIconURL() + v10);
LABEL_12:
  v11 = sub_219BDB954();
  v12 = *(*(v11 - 8) + 16);

  return v12(a1, v3, v11);
}

uint64_t sub_2189655A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218966498(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2189655D8(uint64_t a1)
{
  v2 = sub_218966138();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218965614(uint64_t a1)
{
  v2 = sub_218966138();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ShortcutIconURL.encode(to:)(void *a1)
{
  v3 = v1;
  sub_2189661E0(0, &qword_27CC0B330, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218966138();
  sub_219BF7B44();
  LOBYTE(v14[0]) = 0;
  sub_219BDB954();
  sub_2188390BC(&unk_280EE9D40);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for ShortcutIconURL();
    LOBYTE(v14[0]) = 1;
    sub_219BF7834();
    LOBYTE(v14[0]) = 2;
    sub_219BF7834();
    v11 = (v3 + *(v10 + 28));
    v12 = v11[1];
    v14[0] = *v11;
    v14[1] = v12;
    v14[2] = v11[2];
    v15 = 3;
    sub_21896618C();
    sub_219BF77E4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t ShortcutIconURL.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v36 = sub_219BDB954();
  v34 = *(v36 - 8);
  v3 = MEMORY[0x28223BE20](v36);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v29 - v7;
  MEMORY[0x28223BE20](v6);
  v35 = &v29 - v9;
  sub_2189661E0(0, &qword_27CC0B348, MEMORY[0x277D844C8]);
  v37 = v10;
  v39 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = type metadata accessor for ShortcutIconURL();
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218966138();
  v38 = v12;
  v16 = v40;
  sub_219BF7B34();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v8;
  v31 = v13;
  v40 = a1;
  v32 = v15;
  LOBYTE(v41) = 0;
  sub_2188390BC(&unk_280EE9D10);
  v17 = v35;
  v18 = v36;
  v19 = v37;
  sub_219BF7734();
  v35 = *(v34 + 32);
  (v35)(v32, v17, v18);
  LOBYTE(v41) = 1;
  v20 = v30;
  sub_219BF7734();
  (v35)(&v32[*(v31 + 20)], v20, v18);
  LOBYTE(v41) = 2;
  v21 = v5;
  sub_219BF7734();
  v22 = v31;
  (v35)(&v32[*(v31 + 24)], v21, v18);
  v44 = 3;
  sub_218966244();
  v23 = v38;
  sub_219BF76E4();
  (*(v39 + 8))(v23, v19);
  v25 = v32;
  v24 = v33;
  v26 = &v32[*(v22 + 28)];
  v27 = v42;
  *v26 = v41;
  *(v26 + 1) = v27;
  *(v26 + 2) = v43;
  sub_218966298(v25, v24);
  __swift_destroy_boxed_opaque_existential_1(v40);
  return sub_2189662FC(v25);
}

BOOL _s7NewsUI215ShortcutIconURLV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_219BDB8A4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ShortcutIconURL();
  if ((sub_219BDB8A4() & 1) == 0 || (sub_219BDB8A4() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 28);
  v6 = a1 + v5;
  v7 = *(a1 + v5);
  v8 = *(a1 + v5 + 8);
  v10 = *(a1 + v5 + 16);
  v9 = *(a1 + v5 + 24);
  v11 = *(a1 + v5 + 32);
  v12 = *(v6 + 40);
  v13 = a2 + v5;
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v13 + 24);
  v17 = *(v13 + 32);
  v29 = *(v13 + 40);
  v18 = v7;
  if (v7)
  {
    if (v14)
    {
      v28 = v11;
      v19 = *v13;
      v20 = *(v13 + 16);
      sub_2189666A0();
      sub_2189665E8(v19, v15);
      v27 = v9;
      v21 = v12;
      v22 = v19;
      sub_2189665E8(v18, v8);
      if (sub_219BF6DD4() & 1) != 0 && (sub_219BF6DD4() & 1) != 0 && (v10 == v20 && v27 == v16 || (sub_219BF78F4()))
      {
        if (v28 == v17 && v21 == v29)
        {

          sub_218966644(v18, v8);
          return 1;
        }

        v26 = sub_219BF78F4();

        sub_218966644(v18, v8);
        return (v26 & 1) != 0;
      }

      v24 = v18;
      v25 = v8;
LABEL_17:
      sub_218966644(v24, v25);
      return 0;
    }

LABEL_15:
    sub_2189665E8(v14, v15);
    sub_2189665E8(v18, v8);
    sub_218966644(v18, v8);
    v24 = v14;
    v25 = v15;
    goto LABEL_17;
  }

  if (v14)
  {
    goto LABEL_15;
  }

  return 1;
}

unint64_t sub_218966138()
{
  result = qword_27CC0B338;
  if (!qword_27CC0B338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B338);
  }

  return result;
}

unint64_t sub_21896618C()
{
  result = qword_27CC0B340;
  if (!qword_27CC0B340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B340);
  }

  return result;
}

void sub_2189661E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218966138();
    v7 = a3(a1, &type metadata for ShortcutIconURL.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218966244()
{
  result = qword_27CC0B350;
  if (!qword_27CC0B350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B350);
  }

  return result;
}

uint64_t sub_218966298(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutIconURL();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2189662FC(uint64_t a1)
{
  v2 = type metadata accessor for ShortcutIconURL();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_218966394()
{
  result = qword_27CC0B358;
  if (!qword_27CC0B358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B358);
  }

  return result;
}

unint64_t sub_2189663EC()
{
  result = qword_27CC0B360;
  if (!qword_27CC0B360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B360);
  }

  return result;
}

unint64_t sub_218966444()
{
  result = qword_27CC0B368;
  if (!qword_27CC0B368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B368);
  }

  return result;
}

uint64_t sub_218966498(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x4C52553178 && a2 == 0xE500000000000000;
  if (v3 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C52553278 && a2 == 0xE500000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C52553378 && a2 == 0xE500000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *sub_2189665E8(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = a2;
  }

  return result;
}

void *sub_218966644(void *result, void *a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_2189666A0()
{
  result = qword_280E8DA00;
  if (!qword_280E8DA00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8DA00);
  }

  return result;
}

uint64_t sub_2189666EC(void *a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v5 = sub_219BE9414();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = -1;

  v10 = sub_219BF53D4();

  v11 = [a1 objectForKey_];

  if (v11)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(v20, v21);
    sub_2186CF94C();
    swift_dynamicCast();
    v12 = swift_allocObject();
    v13 = v19;
    v12[2] = a1;
    v12[3] = v13;
    v12[4] = a3;
    v14 = a1;

    sub_219BE6454();

    v15 = sub_219BF53D4();

    v16 = [v14 objectForKey_];

    if (v16)
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
      sub_218751558(v20, v21);
      swift_dynamicCast();
      *&v21[0] = v9 | 0x6000000000000006;
      (*(v6 + 104))(v8, *MEMORY[0x277D6E598], v5);
      sub_219BE6474();
      (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  (*(v6 + 8))(v8, v5);

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_218966A2C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v5 = sub_219BED174();
  v32 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BED1D4();
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BED214();
  v29 = v11;
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  sub_2186C6148(0, &qword_280E8E3B0);
  v18 = sub_219BF66A4();
  sub_219BED1F4();
  sub_219BED244();
  v28 = *(v12 + 8);
  v28(v15, v11);
  v19 = swift_allocObject();
  v20 = v26;
  v21 = v27;
  v19[2] = a2;
  v19[3] = v20;
  v19[4] = v21;
  aBlock[4] = sub_218967580;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_16;
  v22 = _Block_copy(aBlock);
  v23 = a2;

  sub_219BED1A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21874E060(&qword_280E927E0, MEMORY[0x277D85198]);
  sub_21879DD98();
  sub_21874E060(&qword_280E8EFA0, sub_21879DD98);
  sub_219BF7164();
  MEMORY[0x21CECD420](v17, v10, v7, v22);
  _Block_release(v22);

  (*(v32 + 8))(v7, v5);
  (*(v30 + 8))(v10, v31);
  return (v28)(v17, v29);
}

void sub_218966E0C(void *a1, void (*a2)(id))
{

  v4 = sub_219BF53D4();

  v5 = [a1 objectForKey_];

  if (v5)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(&v17, &v18);
    sub_2186C6148(0, &qword_280E8E480);
    swift_dynamicCast();
    type metadata accessor for MagazineSectionsViewController();
    sub_219BF6584();

    v6 = v19;
    if (!v19)
    {
      v13 = objc_allocWithZone(MEMORY[0x277D6D138]);
      v14 = sub_219BF53D4();
      v11 = [v13 initWithMessage_];

      a2(v11);
LABEL_10:

      return;
    }

    v7 = sub_219BE8394();
    if (v7)
    {
      v8 = v7;
      [v7 bounds];
      v21.origin.x = 0.0;
      v21.origin.y = 0.0;
      v21.size.width = 0.0;
      v21.size.height = 0.0;
      if (!CGRectEqualToRect(v20, v21))
      {
        v11 = v8;

        v15 = sub_219BF53D4();

        [a1 setObject:v11 forKey:v15];

        v12 = 0;
        goto LABEL_9;
      }
    }

    v9 = objc_allocWithZone(MEMORY[0x277D6D138]);
    v10 = sub_219BF53D4();
    v11 = [v9 initWithMessage_];

    v12 = v11;
LABEL_9:
    a2(v12);

    goto LABEL_10;
  }

  __break(1u);
}

id _s7NewsUI215PaywallViewDataCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_218967170(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v4 = sub_219BED174();
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BED1D4();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BED214();
  v28 = v10;
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  sub_2186C6148(0, &qword_280E8E3B0);
  v17 = sub_219BF66A4();
  sub_219BED1F4();
  sub_219BED244();
  v27 = *(v11 + 8);
  v27(v14, v10);
  v18 = swift_allocObject();
  v19 = v25;
  v20 = v26;
  v18[2] = a1;
  v18[3] = v19;
  v18[4] = v20;
  aBlock[4] = sub_218967550;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_0;
  v21 = _Block_copy(aBlock);
  v22 = a1;

  sub_219BED1A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21874E060(&qword_280E927E0, MEMORY[0x277D85198]);
  sub_21879DD98();
  sub_21874E060(&qword_280E8EFA0, sub_21879DD98);
  sub_219BF7164();
  MEMORY[0x21CECD420](v16, v9, v6, v21);
  _Block_release(v21);

  (*(v31 + 8))(v6, v4);
  (*(v29 + 8))(v9, v30);
  return (v27)(v16, v28);
}

uint64_t sub_21896755C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_218967594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v25 = a2;
  v3 = type metadata accessor for ChannelPickerHeaderViewLayoutAttributes(0);
  MEMORY[0x28223BE20](v3 - 8);
  v27 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ChannelPickerLayoutSectionDescriptor() - 8;
  v5 = MEMORY[0x28223BE20](v26);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = sub_219BDC104();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE9834();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218967B40();
  (*(v15 + 104))(v17, *MEMORY[0x277D6E758], v14);
  sub_219BE9614();
  v18 = sub_219BF6424();
  (*(v11 + 8))(v13, v10);
  (*(v15 + 8))(v17, v14);
  __swift_project_boxed_opaque_existential_1((v24 + 16), *(v24 + 40));
  sub_218951AE4();
  sub_219BE8184();
  v19 = *(v9 + 3);
  v29[2] = *(v9 + 2);
  v29[3] = v19;
  v30 = *(v9 + 8);
  v20 = *(v9 + 1);
  v29[0] = *v9;
  v29[1] = v20;
  sub_218967C1C(v29, v28);
  sub_218967D30(v9, type metadata accessor for ChannelPickerLayoutSectionDescriptor);
  sub_219BE8184();
  v21 = v27;
  sub_218967C78(&v7[*(v26 + 28)], v27);
  sub_218967D30(v7, type metadata accessor for ChannelPickerLayoutSectionDescriptor);
  sub_219A4ECF4(v29, v18, v21);
  sub_218967CDC(v29);
  sub_218967D30(v21, type metadata accessor for ChannelPickerHeaderViewLayoutAttributes);
  return v18;
}

uint64_t sub_218967A00()
{
  v0 = sub_219BE9834();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218967B40();
  (*(v1 + 104))(v3, *MEMORY[0x277D6E758], v0);
  sub_219BF6444();
  return (*(v1 + 8))(v3, v0);
}

void sub_218967B40()
{
  if (!qword_27CC0B380)
  {
    type metadata accessor for TitleView();
    sub_218967BD4(&qword_280E92810, type metadata accessor for TitleView);
    v0 = sub_219BE8224();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0B380);
    }
  }
}

uint64_t sub_218967BD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218967C78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelPickerHeaderViewLayoutAttributes(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218967D30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_218967DA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_218967DEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_218967E3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[0] = a4;
  sub_218968468(0, &qword_27CC0B398, MEMORY[0x277D84538]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189683C0();
  sub_219BF7B44();
  v14 = 0;
  sub_219BF77F4();
  if (!v4)
  {
    v12[1] = v12[0];
    v13 = 1;
    sub_2189684CC();
    sub_219BF7834();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_218967FDC()
{
  if (*v0)
  {
    return 0x73746F6C73;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_218968018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73746F6C73 && a2 == 0xE500000000000000)
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

uint64_t sub_2189680F8(uint64_t a1)
{
  v2 = sub_2189683C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218968134(uint64_t a1)
{
  v2 = sub_2189683C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218968170@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2189681C0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_2189681C0(void *a1)
{
  sub_218968468(0, &qword_27CC0B388, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189683C0();
  sub_219BF7B34();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_219BF76F4();
    v10[15] = 1;
    sub_218968414();
    sub_219BF7734();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_2189683C0()
{
  result = qword_27CC0B390;
  if (!qword_27CC0B390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B390);
  }

  return result;
}

unint64_t sub_218968414()
{
  result = qword_280E92518;
  if (!qword_280E92518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E92518);
  }

  return result;
}

void sub_218968468(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2189683C0();
    v7 = a3(a1, &type metadata for LegacyAudioPlaylistFeedGroupConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2189684CC()
{
  result = qword_280E92520;
  if (!qword_280E92520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E92520);
  }

  return result;
}

unint64_t sub_218968534()
{
  result = qword_27CC0B3A0;
  if (!qword_27CC0B3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B3A0);
  }

  return result;
}

unint64_t sub_21896858C()
{
  result = qword_27CC0B3A8;
  if (!qword_27CC0B3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B3A8);
  }

  return result;
}

unint64_t sub_2189685E4()
{
  result = qword_27CC0B3B0;
  if (!qword_27CC0B3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B3B0);
  }

  return result;
}

void sub_218968688()
{
  if (!qword_280E8F368)
  {
    type metadata accessor for SearchModel(255);
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8F368);
    }
  }
}

void sub_2189686E0(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  if (!*a2)
  {
    sub_218968688();
    sub_2186C6F70(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_218968774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for SearchModel(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SearchResultsGroup();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189695F4(v3, v12, type metadata accessor for SearchResultsGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v22 = *v12;
        v23 = *(v12 + 24);
        v44 = *(v12 + 8);
        v45 = v23;
        v46 = *(v12 + 5);
        v24 = sub_218968C30(a1, v22);

        if (*(v24 + 16))
        {
          *a2 = v24;
          v25 = v45;
          *(a2 + 8) = v44;
          *(a2 + 24) = v25;
          *(a2 + 40) = v46;
          goto LABEL_23;
        }
      }

      else
      {
        v39 = *v12;
        v40 = *(v12 + 24);
        v44 = *(v12 + 8);
        v45 = v40;
        v46 = *(v12 + 5);
        v41 = sub_218968C30(a1, v39);

        if (*(v41 + 16))
        {
          *a2 = v41;
          v42 = v45;
          *(a2 + 8) = v44;
          *(a2 + 24) = v42;
          *(a2 + 40) = v46;
          goto LABEL_23;
        }
      }

      v37 = &qword_280EC6990;
      v38 = &qword_280EC69A0;
      goto LABEL_28;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v14 = *v12;
      v15 = *(v12 + 24);
      v44 = *(v12 + 8);
      v45 = v15;
      v46 = *(v12 + 5);
      v16 = sub_218968C30(a1, v14);

      if (*(v16 + 16))
      {
        *a2 = v16;
        v17 = v45;
        *(a2 + 8) = v44;
        *(a2 + 24) = v17;
        *(a2 + 40) = v46;
LABEL_23:
        swift_storeEnumTagMultiPayload();
        return (*(v10 + 56))(a2, 0, 1, v9);
      }

      v37 = &qword_280EC30F0;
      v38 = qword_280EC3100;
      goto LABEL_28;
    }

    v33 = *v12;
    v34 = *(v12 + 24);
    v44 = *(v12 + 8);
    v45 = v34;
    v46 = *(v12 + 5);
    v35 = sub_218968C30(a1, v33);

    if (*(v35 + 16))
    {
      *a2 = v35;
      v36 = v45;
      *(a2 + 8) = v44;
      *(a2 + 24) = v36;
      *(a2 + 40) = v46;
      goto LABEL_23;
    }

LABEL_20:
    v37 = &qword_280ED01D0;
    v38 = &qword_280ED01E0;
LABEL_28:
    sub_2187B1C64(&v44, v37, v38);

    return (*(v10 + 56))(a2, 1, 1, v9);
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = *v12;
      v19 = *(v12 + 24);
      v44 = *(v12 + 8);
      v45 = v19;
      v46 = *(v12 + 5);
      v20 = sub_218968C30(a1, v18);

      if (*(v20 + 16))
      {
        *a2 = v20;
        v21 = v45;
        *(a2 + 8) = v44;
        *(a2 + 24) = v21;
        *(a2 + 40) = v46;
        goto LABEL_23;
      }
    }

    else
    {
      v29 = *v12;
      v30 = *(v12 + 24);
      v44 = *(v12 + 8);
      v45 = v30;
      v46 = *(v12 + 5);
      v31 = sub_218968C30(a1, v29);

      if (*(v31 + 16))
      {
        *a2 = v31;
        v32 = v45;
        *(a2 + 8) = v44;
        *(a2 + 24) = v32;
        *(a2 + 40) = v46;
        goto LABEL_23;
      }
    }

    goto LABEL_20;
  }

  sub_218969590(v12, v8);
  v26 = sub_218ABE09C();
  if (v27)
  {
    v28 = sub_2188537B8(v26, v27, a1);

    sub_21896965C(v8, type metadata accessor for SearchModel);
    if ((v28 & 1) == 0)
    {
      sub_2189695F4(v3, a2, type metadata accessor for SearchResultsGroup);
      return (*(v10 + 56))(a2, 0, 1, v9);
    }
  }

  else
  {
    sub_21896965C(v8, type metadata accessor for SearchModel);
  }

  return (*(v10 + 56))(a2, 1, 1, v9);
}

uint64_t sub_218968C30(uint64_t a1, uint64_t a2)
{
  v88 = sub_219BF0B74();
  v4 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v87 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308();
  v86 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v85 = v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_219BF0F34();
  v96 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v83 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88();
  v82 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v81 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_219BF04A4();
  v13 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v79 = v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018();
  v78 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v77 = v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SearchModel(0);
  v19 = MEMORY[0x28223BE20](v18);
  v93 = v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v67 - v22;
  MEMORY[0x28223BE20](v21);
  v26 = v67 - v25;
  v95 = *(a2 + 16);
  if (v95)
  {
    v27 = v7;
    v28 = 0;
    v90 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v94 = a2 + v90;
    v29 = v4;
    v30 = *(v24 + 72);
    v75 = (v27 + 32);
    v74 = (v29 + 8);
    v73 = (v27 + 8);
    v72 = (v11 + 32);
    v71 = (v96 + 8);
    v70 = v11 + 8;
    v69 = (v16 + 32);
    v68 = (v13 + 8);
    v67[1] = v16 + 8;
    v96 = a1 + 56;
    v31 = MEMORY[0x277D84F90];
    v89 = v18;
    v91 = v30;
    v92 = v67 - v25;
    v76 = a1;
    while (1)
    {
      sub_2189695F4(v94 + v30 * v28, v26, type metadata accessor for SearchModel);
      sub_2189695F4(v26, v23, type metadata accessor for SearchModel);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        break;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v45 = v81;
        v46 = v82;
        (*v72)(v81, v23, v82);
        v47 = v83;
        sub_219BF07D4();
        v48 = sub_219BF0F14();
        (*v71)(v47, v84);
        v49 = [v48 identifier];
        swift_unknownObjectRelease();
        v40 = sub_219BF5414();
        v42 = v50;

        v51 = &v98;
LABEL_15:
        (**(v51 - 32))(v45, v46);
        goto LABEL_16;
      }

      if (EnumCaseMultiPayload != 3)
      {
        v32 = type metadata accessor for SearchModel;
        v33 = v23;
LABEL_4:
        sub_21896965C(v33, v32);
        goto LABEL_5;
      }

      v35 = v85;
      v36 = v86;
      (*v75)(v85, v23, v86);
      v37 = v87;
      sub_219BF07D4();
      v38 = sub_219BF0B44();
      (*v74)(v37, v88);
      v39 = [v38 identifier];

      v40 = sub_219BF5414();
      v42 = v41;

      v43 = v36;
      a1 = v76;
      (*v73)(v35, v43);
LABEL_16:
      v26 = v92;
      if (!*(a1 + 16) || (sub_219BF7AA4(), sub_219BF5524(), v56 = sub_219BF7AE4(), v57 = -1 << *(a1 + 32), v58 = v56 & ~v57, ((*(v96 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0))
      {
LABEL_25:

        sub_218969590(v26, v93);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v99 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_218C34130(0, *(v31 + 16) + 1, 1);
          v31 = v99;
        }

        v64 = *(v31 + 16);
        v63 = *(v31 + 24);
        if (v64 >= v63 >> 1)
        {
          sub_218C34130(v63 > 1, v64 + 1, 1);
          v31 = v99;
        }

        *(v31 + 16) = v64 + 1;
        v65 = v31 + v90 + v64 * v91;
        v30 = v91;
        sub_218969590(v93, v65);
        goto LABEL_6;
      }

      v59 = ~v57;
      while (1)
      {
        v60 = (*(a1 + 48) + 16 * v58);
        v61 = *v60 == v40 && v60[1] == v42;
        if (v61 || (sub_219BF78F4() & 1) != 0)
        {
          break;
        }

        v58 = (v58 + 1) & v59;
        if (((*(v96 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v30 = v91;
LABEL_5:
      sub_21896965C(v26, type metadata accessor for SearchModel);
LABEL_6:
      if (++v28 == v95)
      {
        return v31;
      }
    }

    if (!EnumCaseMultiPayload)
    {

      sub_2186F8128();
      v32 = type metadata accessor for SearchFeedGapLocation;
      v33 = &v23[*(v44 + 48)];
      goto LABEL_4;
    }

    v45 = v77;
    v46 = v78;
    (*v69)(v77, v23, v78);
    v52 = v79;
    sub_219BF07D4();
    v53 = sub_219BF0404();
    (*v68)(v52, v80);
    v54 = [v53 identifier];
    swift_unknownObjectRelease();
    v40 = sub_219BF5414();
    v42 = v55;

    v51 = &v97;
    goto LABEL_15;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_218969590(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2189695F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21896965C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2189696BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[1] = a2;
  sub_2189698E4();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21896993C();
  v7 = v6;
  sub_219BF07D4();
  v14[0] = sub_219BF07B4();
  v8 = v22[2];
  v9 = *MEMORY[0x277D337A0];
  v10 = sub_219BF2204();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v5, v9, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  v12 = v8;
  swift_unknownObjectRetain();
  sub_219BF07D4();
  sub_2187B14CC(&v21, &v19, &unk_27CC20250, &qword_280E8FD20);
  sub_218969A64(&v20);
  sub_2187B14CC(&v23, &v18, &unk_27CC20260, &qword_280E901E0);
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  sub_219BF09F4();
  (*(*(v7 - 8) + 8))(a1, v7);
  return sub_218969A64(v22);
}

void sub_2189698E4()
{
  if (!qword_27CC0B3B8)
  {
    sub_219BF2204();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0B3B8);
    }
  }
}

void sub_21896993C()
{
  if (!qword_280E90E40)
  {
    sub_2189699BC();
    sub_218969A10();
    v0 = sub_219BF0854();
    if (!v1)
    {
      atomic_store(v0, &qword_280E90E40);
    }
  }
}

unint64_t sub_2189699BC()
{
  result = qword_280ECB8F8;
  if (!qword_280ECB8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECB8F8);
  }

  return result;
}

unint64_t sub_218969A10()
{
  result = qword_280ECB900[0];
  if (!qword_280ECB900[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ECB900);
  }

  return result;
}

uint64_t sub_218969D60()
{

  return swift_deallocClassInstance();
}

unint64_t sub_218969EF0()
{
  result = qword_27CC0B3C0;
  if (!qword_27CC0B3C0)
  {
    type metadata accessor for StubFeatureAvailability();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B3C0);
  }

  return result;
}

unint64_t sub_218969F44(void *a1, uint64_t a2, uint64_t a3)
{
  v420 = a1;
  v419 = a3;
  v399 = a2;
  v3 = type metadata accessor for CustomItemRouteModel();
  MEMORY[0x28223BE20](v3 - 8);
  v406 = &v382 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v390 = type metadata accessor for PuzzleModel();
  MEMORY[0x28223BE20](v390);
  v405 = &v382 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WebEmbedRouteModel();
  MEMORY[0x28223BE20](v6 - 8);
  v404 = &v382 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDD664();
  v408 = *(v8 - 8);
  v409 = v8;
  MEMORY[0x28223BE20](v8);
  v407 = &v382 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21896FA3C();
  v418 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v395 = &v382 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v403 = &v382 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v394 = &v382 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v397 = &v382 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v393 = &v382 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v401 = &v382 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v392 = &v382 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v396 = &v382 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v389 = &v382 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v402 = &v382 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v391 = &v382 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v400 = &v382 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v383 = &v382 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v385 = &v382 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v388 = &v382 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v416 = (&v382 - v42);
  v43 = MEMORY[0x28223BE20](v41);
  v387 = &v382 - v44;
  v417 = v45;
  MEMORY[0x28223BE20](v43);
  v415 = &v382 - v46;
  v414 = sub_219BE8C14();
  v398 = *(v414 - 8);
  MEMORY[0x28223BE20](v414);
  v413 = &v382 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_219BE9414();
  v49 = *(v48 - 8);
  v410 = v48;
  v411 = v49;
  v50 = MEMORY[0x28223BE20](v48);
  v384 = &v382 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v50);
  v386 = &v382 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v412 = &v382 - v55;
  MEMORY[0x28223BE20](v54);
  v57 = &v382 - v56;
  v58 = sub_219BDD944();
  MEMORY[0x28223BE20](v58 - 8);
  v60 = &v382 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for MagazineFeedRouteModel();
  MEMORY[0x28223BE20](v61);
  v63 = &v382 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *v419;
  v64 = *(v419 + 1);
  v66 = *(v419 + 2);
  v67 = *(v419 + 3);
  v68 = v419[32];
  sub_21896FE88(v420, v63, type metadata accessor for MagazineFeedRouteModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v401 = v67;
    v403 = v66;
    v404 = v64;
    v405 = v65;
    LODWORD(v406) = v68;
    v89 = v412;
    v88 = v413;
    v91 = v414;
    v90 = v415;
    v92 = v416;
    v419 = v57;
    v420 = v60;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v124 = *(v63 + 9);
        v430 = *(v63 + 8);
        v431[0] = v124;
        *(v431 + 9) = *(v63 + 153);
        v125 = *(v63 + 5);
        v426 = *(v63 + 4);
        v427 = v125;
        v126 = *(v63 + 7);
        v428 = *(v63 + 6);
        v429 = v126;
        v127 = *(v63 + 1);
        v422 = *v63;
        v423 = v127;
        v128 = *(v63 + 3);
        v424 = *(v63 + 2);
        v425 = v128;
        v129 = v421;
        v130 = *(v421 + 112);
        v131 = swift_allocObject();
        sub_21896FC94(&v422, v131 + 16);
        v420 = v131;
        v132 = v131 | 0x6000000000000004;
        v133 = *(v129 + 64);
        v134 = sub_219BDFA44();
        v135 = v92;
        (*(*(v134 - 8) + 56))(v92, 1, 1, v134);
        sub_218718690(v129 + 72, &v439);
        v449 = 0;
        v447 = 0u;
        v448 = 0u;
        *&v433 = v130;
        sub_21896FEF0(&v447, &v435, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        if (*(&v436 + 1))
        {
          sub_21875F93C(&v435, &v444);
          v136 = v417;
          v137 = v388;
          if (qword_280ED32D0 != -1)
          {
            swift_once();
          }

          v139 = qword_280ED32D8;
          v138 = qword_280ED32E0;
          v140 = qword_280ED32E8;

          v421 = v138;
          sub_2188202A8(v138);
          __swift_destroy_boxed_opaque_existential_1(&v444);
        }

        else
        {
          sub_21896FF74(&v435, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
          v136 = v417;
          v137 = v388;
          if (qword_280ED32D0 != -1)
          {
            swift_once();
          }

          v139 = qword_280ED32D8;
          v272 = qword_280ED32E0;
          v140 = qword_280ED32E8;

          v421 = v272;
          sub_2188202A8(v272);
        }

        v438 = v132;
        *(&v436 + 1) = sub_219BDD274();
        *&v435 = v133;
        sub_21896FE88(v135, v137, sub_21896FA3C);
        sub_21896FEF0(&v439, &v444, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        v273 = (v418[80] + 24) & ~v418[80];
        v274 = (v136 + v273 + 7) & 0xFFFFFFFFFFFFFFF8;
        v275 = v133;
        v276 = (v274 + 47) & 0xFFFFFFFFFFFFFFF8;
        v277 = swift_allocObject();
        *(v277 + 16) = v275;
        sub_21896FA98(v137, v277 + v273, sub_21896FA3C);
        v278 = v277 + v274;
        v279 = v445;
        *v278 = v444;
        *(v278 + 16) = v279;
        *(v278 + 32) = v446;
        v280 = (v277 + v276);
        v281 = (v277 + ((v276 + 23) & 0xFFFFFFFFFFFFFFF8));
        *v280 = 0;
        v280[1] = 0;
        v282 = v421;
        *v281 = v139;
        v281[1] = v282;
        v281[2] = v140;
        swift_retain_n();

        sub_2188202A8(v282);
        sub_2186CF94C();
        sub_2186F7D20(&qword_280EE5A90, 255, sub_2186CF94C);
        sub_219BEB464();

        sub_2187FABEC(v282);
        sub_21896FF74(&v447, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        sub_21896FF74(&v439, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        sub_2189700AC(v416, sub_21896FA3C);
        sub_21896FCF0(&v422);
        v295 = &v435;
        goto LABEL_79;
      }

      (v408)[4](v407, v63, v409);
      v420 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
      v416 = *(v421 + 112);
      v214 = sub_219BDD654();
      v419 = v214;
      v215 = swift_allocObject();
      v216 = v404;
      v217 = v405;
      v218 = v403;
      v219 = v401;
      v220 = v406;
      sub_21897010C(v405, v404, v403, v401, v406);
      v221 = [v214 identifier];
      v222 = sub_219BF5414();
      v224 = v223;

      v225 = v420;
      swift_unknownObjectRelease();
      *(v215 + 16) = v222;
      *(v215 + 24) = v224;
      *(v215 + 32) = v225;
      *(v215 + 40) = 0;
      *(v215 + 48) = 1;
      *(v215 + 56) = 0;
      *(v215 + 64) = v217;
      *(v215 + 72) = v216;
      *(v215 + 80) = v218;
      *(v215 + 88) = v219;
      *(v215 + 96) = v220;
      v419 = v215;
      v226 = v215 | 0x2000000000000006;
      v227 = v421;
      v228 = *(v421 + 64);
      v229 = sub_219BDFA44();
      v230 = v402;
      (*(*(v229 - 8) + 56))(v402, 1, 1, v229);
      sub_218718690(v227 + 72, &v422);
      v441 = 0;
      v439 = 0u;
      v440 = 0u;
      *&v435 = v416;
      sub_21896FEF0(&v439, &v444, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (*(&v445 + 1))
      {
        sub_21875F93C(&v444, &v447);
        v231 = qword_280ED32D0;
        v232 = v225;
        v233 = v389;
        if (v231 != -1)
        {
          swift_once();
        }

        v235 = qword_280ED32D8;
        v234 = qword_280ED32E0;
        v236 = qword_280ED32E8;

        v421 = v234;
        sub_2188202A8(v234);
        __swift_destroy_boxed_opaque_existential_1(&v447);
      }

      else
      {
        v283 = v225;
        sub_21896FF74(&v444, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        v233 = v389;
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v235 = qword_280ED32D8;
        v284 = qword_280ED32E0;
        v236 = qword_280ED32E8;

        v421 = v284;
        sub_2188202A8(v284);
      }

      *&v433 = v226;
      *(&v445 + 1) = sub_219BDD274();
      *&v444 = v228;
      sub_21896FE88(v230, v233, sub_21896FA3C);
      sub_21896FEF0(&v422, &v447, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v285 = (v418[80] + 24) & ~v418[80];
      v286 = v228;
      v287 = (v417 + v285 + 7) & 0xFFFFFFFFFFFFFFF8;
      v288 = (v287 + 47) & 0xFFFFFFFFFFFFFFF8;
      v289 = swift_allocObject();
      *(v289 + 16) = v286;
      sub_21896FA98(v233, v289 + v285, sub_21896FA3C);
      v290 = v289 + v287;
      v291 = v448;
      *v290 = v447;
      *(v290 + 16) = v291;
      *(v290 + 32) = v449;
      v292 = (v289 + v288);
      v293 = (v289 + ((v288 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v292 = 0;
      v292[1] = 0;
      v294 = v421;
      *v293 = v235;
      v293[1] = v294;
      v293[2] = v236;
      swift_retain_n();

      sub_2188202A8(v294);
      sub_2186CF94C();
      sub_2186F7D20(&qword_280EE5A90, 255, sub_2186CF94C);
      sub_219BEB464();

      sub_2187FABEC(v294);

      sub_21896FF74(&v439, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      sub_21896FF74(&v422, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      sub_2189700AC(v402, sub_21896FA3C);
      (v408[1])(v407, v409);
      sub_218806FD0(&v444);
    }

    else if (EnumCaseMultiPayload)
    {
      v163 = *(v63 + 1);
      v165 = *(v63 + 2);
      v164 = *(v63 + 3);
      v166 = *(v63 + 4);
      v167 = v63[40];
      v420 = *v63;
      *&v422 = v420;
      *(&v422 + 1) = v163;
      *&v423 = v165;
      *(&v423 + 1) = v164;
      *&v424 = v166;
      BYTE8(v424) = v167;
      v168 = sub_219BD4870(EnumCaseMultiPayload, v70, v71, v72, v73, v74);
      v170 = sub_21896D844(v168, v169);

      if (v170)
      {
        v419 = v166;
        (*(v398 + 16))(v88, v399, v91);
        v171 = v386;
        sub_219BE9424();
        v173 = v410;
        v172 = v411;
        v174 = v384;
        (v411[2])(v384, v171, v410);
        v175 = (v172[11])(v174, v173);
        v176 = *MEMORY[0x277D6E598];
        v177 = (v172 + 1);
        v416 = v172 + 1;
        LODWORD(v415) = v167;
        if (v175 == v176)
        {
          v412 = *v177;
          (v412)(v174, v173);
          v414 = *(v421 + 112);
          v178 = swift_allocObject();
          v179 = v165;
          v180 = v164;
          v181 = v419;
          v182 = v420;
          v183 = v178;
          *&v422 = v420;
          *(&v422 + 1) = v163;
          v184 = v163;
          *&v423 = v179;
          *(&v423 + 1) = v180;
          *&v424 = v419;
          v185 = v167;
          BYTE8(v424) = v167;
          v186 = sub_21896FE24(v420, v184, v179, v180, v419, v167);
          v192 = sub_219BD47C0(v186, v187, v188, v189, v190, v191);
          v443 = v167;
          *(v183 + 16) = v182;
          *(v183 + 24) = v184;
          *(v183 + 32) = v179;
          *(v183 + 40) = v180;
          *(v183 + 48) = v181;
          *(v183 + 56) = v167 & 1 | 0x8000000000000000;
          *(v183 + 64) = v192;
          *(v183 + 72) = v193;
          *(v183 + 80) = MEMORY[0x277D84F90];
          v411 = v183;
          v406 = v183 | 0x5000000000000000;
          v194 = v181;
          v195 = v180;
          v196 = v421;
          v197 = *(v421 + 64);
          v198 = sub_219BDFA44();
          v199 = v185;
          v200 = v385;
          (*(*(v198 - 8) + 56))(v385, 1, 1, v198);
          v201 = sub_218718690(v196 + 72, &v447);
          *&v439 = v182;
          *(&v439 + 1) = v184;
          v413 = v184;
          v408 = v179;
          v409 = v195;
          *&v440 = v179;
          *(&v440 + 1) = v195;
          v441 = v194;
          v442 = v199;
          v207 = sub_219BD48CC(v201, v202, v203, v204, v205, v206);
          v407 = v208;
          v446 = 0;
          v444 = 0u;
          v445 = 0u;
          v438 = v414;
          sub_21896FEF0(&v444, &v433, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
          if (v434)
          {
            sub_21875F93C(&v433, &v435);
            v209 = qword_280ED32D0;
            swift_unknownObjectRetain();
            v210 = v383;
            if (v209 != -1)
            {
              swift_once();
            }

            v211 = qword_280ED32E0;
            v212 = qword_280ED32E8;
            v414 = qword_280ED32D8;

            v421 = v211;
            v213 = v212;
            sub_2188202A8(v211);
            __swift_destroy_boxed_opaque_existential_1(&v435);
          }

          else
          {
            swift_unknownObjectRetain();
            sub_21896FF74(&v433, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
            v210 = v383;
            if (qword_280ED32D0 != -1)
            {
              swift_once();
            }

            v369 = qword_280ED32E0;
            v370 = qword_280ED32E8;
            v414 = qword_280ED32D8;

            v421 = v369;
            v213 = v370;
            sub_2188202A8(v369);
          }

          v432 = v406;
          v434 = sub_219BDD274();
          *&v433 = v197;
          sub_21896FE88(v200, v210, sub_21896FA3C);
          sub_21896FEF0(&v447, &v435, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
          v371 = (v418[80] + 24) & ~v418[80];
          v372 = (v417 + v371 + 7) & 0xFFFFFFFFFFFFFFF8;
          v373 = v210;
          v374 = (v372 + 47) & 0xFFFFFFFFFFFFFFF8;
          v375 = swift_allocObject();
          *(v375 + 16) = v197;
          sub_21896FA98(v373, v375 + v371, sub_21896FA3C);
          v376 = v375 + v372;
          v377 = v436;
          *v376 = v435;
          *(v376 + 16) = v377;
          *(v376 + 32) = v437;
          v378 = (v375 + v374);
          v379 = v407;
          *v378 = v207;
          v378[1] = v379;
          v380 = (v375 + ((v374 + 23) & 0xFFFFFFFFFFFFFFF8));
          v381 = v421;
          *v380 = v414;
          v380[1] = v381;
          v380[2] = v213;
          swift_retain_n();
          swift_unknownObjectRetain();

          sub_2188202A8(v381);
          sub_2186CF94C();
          sub_2186F7D20(&qword_280EE5A90, 255, sub_2186CF94C);
          sub_219BEB464();

          swift_unknownObjectRelease();

          sub_2187FABEC(v381);
          sub_21896FDCC(v420, v413, v408, v409, v419, v415);
          sub_21896FF74(&v444, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
          sub_21896FF74(&v447, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
          sub_2189700AC(v385, sub_21896FA3C);
          (v412)(v386, v410);
          sub_218806FD0(&v433);
        }

        else
        {
          v418 = *v177;
          (v418)(v174, v173);
          v354 = v419;
          v355 = v164;
          v356 = v165;
          v357 = v167;
          v421 = *(v421 + 112);
          v358 = swift_allocObject();
          v359 = v420;
          *&v422 = v420;
          *(&v422 + 1) = v163;
          *&v423 = v356;
          *(&v423 + 1) = v355;
          *&v424 = v354;
          BYTE8(v424) = v357;
          v360 = sub_21896FE24(v420, v163, v356, v355, v354, v357);
          v366 = sub_219BD47C0(v360, v361, v362, v363, v364, v365);
          LOBYTE(v447) = v357;
          *(v358 + 16) = v359;
          *(v358 + 24) = v163;
          *(v358 + 32) = v356;
          *(v358 + 40) = v355;
          *(v358 + 48) = v354;
          *(v358 + 56) = v357 & 1 | 0x8000000000000000;
          *(v358 + 64) = v366;
          *(v358 + 72) = v367;
          *(v358 + 80) = &unk_282A21B78;
          *&v439 = v358 | 0x5000000000000000;
          sub_219BE6474();
          sub_21896FDCC(v359, v163, v356, v355, v419, v415);
          sub_218932F9C(v439);
          return (v418)(v171, v410);
        }
      }

      else
      {
        return sub_21896FDCC(v420, v163, v165, v164, v166, v167);
      }
    }

    else
    {
      v93 = v420;
      sub_21896FA98(v63, v420, MEMORY[0x277D2FB40]);
      (*(v398 + 16))(v88, v399, v91);
      sub_219BE9424();
      v94 = v410;
      v95 = v411;
      v96 = v89;
      (v411[13])(v89, *MEMORY[0x277D6E598], v410);
      sub_2186F7D20(&unk_280EE44E0, 255, MEMORY[0x277D6E5A8]);
      v97 = sub_219BF53A4();
      v100 = v95[1];
      v98 = v95 + 1;
      v99 = v100;
      (v100)(v96, v94);
      v101 = v90;
      if ((v97 & 1) == 0)
      {
        v102 = sub_219BE8BF4();
        if (v102)
        {
          v103 = v102;
          sub_218C1A2CC(&v422);
          v104 = v422;
          if ((~v422 & 0xF000000000000007) != 0)
          {
            v368 = v419;
            sub_219BE6474();

            (v99)(v368, v94);
            sub_2189700AC(v420, MEMORY[0x277D2FB40]);
            return sub_218970170(v104);
          }
        }
      }

      v416 = v99;
      v411 = v98;
      v105 = v421;
      v106 = *(v421 + 112);
      sub_2187B2C48();
      v108 = v107;
      v109 = swift_allocBox();
      v111 = v110;
      v112 = *(v108 + 48);
      sub_2187B2DA0();
      v114 = *(v113 + 48);
      sub_21896FE88(v93, v111, MEMORY[0x277D2FB40]);
      v115 = MEMORY[0x277D84F90];
      *(v111 + v114) = MEMORY[0x277D84F90];
      *(v111 + v112) = v115;
      v414 = v109;
      v116 = v109 | 2;
      v117 = *(v105 + 64);
      v118 = sub_219BDFA44();
      (*(*(v118 - 8) + 56))(v101, 1, 1, v118);
      sub_218718690(v105 + 72, &v422);
      v441 = 0;
      v439 = 0u;
      v440 = 0u;
      *&v435 = v106;
      sub_21896FEF0(&v439, &v444, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (*(&v445 + 1))
      {
        sub_21875F93C(&v444, &v447);
        *&v444 = v116;
        v119 = sub_2194DA78C(&v447);
        v421 = v120;
        v122 = v121;
        __swift_destroy_boxed_opaque_existential_1(&v447);
        v123 = v417;
      }

      else
      {
        sub_21896FF74(&v444, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        v123 = v417;
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v119 = qword_280ED32D8;
        v343 = qword_280ED32E0;
        v122 = qword_280ED32E8;

        v421 = v343;
        sub_2188202A8(v343);
      }

      v344 = v387;
      *&v433 = v116;
      *(&v445 + 1) = sub_219BDD274();
      *&v444 = v117;
      sub_21896FE88(v101, v344, sub_21896FA3C);
      sub_21896FEF0(&v422, &v447, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v345 = (v418[80] + 24) & ~v418[80];
      v346 = (v123 + v345 + 7) & 0xFFFFFFFFFFFFFFF8;
      v347 = (v346 + 47) & 0xFFFFFFFFFFFFFFF8;
      v348 = swift_allocObject();
      *(v348 + 16) = v117;
      sub_21896FA98(v344, v348 + v345, sub_21896FA3C);
      v349 = v348 + v346;
      v350 = v448;
      *v349 = v447;
      *(v349 + 16) = v350;
      *(v349 + 32) = v449;
      v351 = (v348 + v347);
      v352 = (v348 + ((v347 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v351 = 0;
      v351[1] = 0;
      v353 = v421;
      *v352 = v119;
      v352[1] = v353;
      v352[2] = v122;
      swift_retain_n();

      sub_2188202A8(v353);
      sub_2186CF94C();
      sub_2186F7D20(&qword_280EE5A90, 255, sub_2186CF94C);
      sub_219BEB464();

      sub_2187FABEC(v353);
      sub_21896FF74(&v439, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      sub_21896FF74(&v422, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      sub_2189700AC(v415, sub_21896FA3C);
      (v416)(v419, v410);
      sub_2189700AC(v420, MEMORY[0x277D2FB40]);
      sub_218806FD0(&v444);
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v141 = v404;
        sub_21896FA98(v63, v404, type metadata accessor for WebEmbedRouteModel);
        v142 = *(v421 + 112);
        v143 = sub_219BDB954();
        v144 = swift_allocBox();
        (*(*(v143 - 8) + 16))(v145, v141, v143);
        v146 = v144 | 0x6000000000000000;
        v147 = sub_219BDFA44();
        v148 = v396;
        (*(*(v147 - 8) + 56))(v396, 1, 1, v147);
        *&v424 = 0;
        v422 = 0u;
        v423 = 0u;
        v441 = 0;
        v439 = 0u;
        v440 = 0u;
        *&v435 = v142;
        sub_21896FEF0(&v439, &v444, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        v420 = v144;
        if (*(&v445 + 1))
        {
          sub_21875F93C(&v444, &v447);
          if (qword_280ED32D0 != -1)
          {
            swift_once();
          }

          v150 = qword_280ED32D8;
          v149 = qword_280ED32E0;
          v151 = qword_280ED32E8;

          v421 = v149;
          sub_2188202A8(v149);
          __swift_destroy_boxed_opaque_existential_1(&v447);
        }

        else
        {
          sub_21896FF74(&v444, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
          if (qword_280ED32D0 != -1)
          {
            swift_once();
          }

          v150 = qword_280ED32D8;
          v320 = qword_280ED32E0;
          v151 = qword_280ED32E8;

          v421 = v320;
          sub_2188202A8(v320);
        }

        *&v433 = v146;
        v444 = 0u;
        v445 = 0u;
        v321 = v392;
        sub_21896FE88(v148, v392, sub_21896FA3C);
        sub_21896FEF0(&v422, &v447, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        v322 = (v418[80] + 24) & ~v418[80];
        v323 = (v417 + v322 + 7) & 0xFFFFFFFFFFFFFFF8;
        v324 = (v323 + 47) & 0xFFFFFFFFFFFFFFF8;
        v325 = swift_allocObject();
        *(v325 + 16) = 0;
        sub_21896FA98(v321, v325 + v322, sub_21896FA3C);
        v326 = v325 + v323;
        v327 = v448;
        *v326 = v447;
        *(v326 + 16) = v327;
        *(v326 + 32) = v449;
        v328 = (v325 + v324);
        v329 = (v325 + ((v324 + 23) & 0xFFFFFFFFFFFFFFF8));
        *v328 = 0;
        v328[1] = 0;
        v330 = v421;
        *v329 = v150;
        v329[1] = v330;
        v329[2] = v151;

        sub_2188202A8(v330);
        sub_2186CF94C();
        sub_2186F7D20(&qword_280EE5A90, 255, sub_2186CF94C);
        sub_219BEB464();

        sub_2187FABEC(v330);
        sub_21896FF74(&v439, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        sub_21896FF74(&v422, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        sub_2189700AC(v148, sub_21896FA3C);
        v270 = type metadata accessor for WebEmbedRouteModel;
        v271 = v404;
      }

      else
      {
        v245 = v405;
        sub_21896FA98(v63, v405, type metadata accessor for PuzzleModel);
        v246 = v421;
        v247 = *(v421 + 112);
        v248 = swift_allocBox();
        sub_21896FE88(v245, v249, type metadata accessor for PuzzleModel);
        v250 = v248 | 0xE000000000000006;
        v251 = *(v246 + 64);
        v252 = sub_219BDFA44();
        v253 = v401;
        (*(*(v252 - 8) + 56))(v401, 1, 1, v252);
        sub_218718690(v246 + 72, &v422);
        v441 = 0;
        v439 = 0u;
        v440 = 0u;
        *&v435 = v247;
        sub_21896FEF0(&v439, &v444, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        v420 = v248;
        if (*(&v445 + 1))
        {
          sub_21875F93C(&v444, &v447);
          v254 = v417;
          if (qword_280ED32D0 != -1)
          {
            swift_once();
          }

          v256 = qword_280ED32D8;
          v255 = qword_280ED32E0;
          v257 = qword_280ED32E8;

          v421 = v255;
          sub_2188202A8(v255);
          __swift_destroy_boxed_opaque_existential_1(&v447);
        }

        else
        {
          sub_21896FF74(&v444, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
          v254 = v417;
          if (qword_280ED32D0 != -1)
          {
            swift_once();
          }

          v256 = qword_280ED32D8;
          v331 = qword_280ED32E0;
          v257 = qword_280ED32E8;

          v421 = v331;
          sub_2188202A8(v331);
        }

        *&v433 = v250;
        *(&v445 + 1) = sub_219BDD274();
        *&v444 = v251;
        v332 = v251;
        v333 = v393;
        sub_21896FE88(v253, v393, sub_21896FA3C);
        sub_21896FEF0(&v422, &v447, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        v334 = (v418[80] + 24) & ~v418[80];
        v335 = (v254 + v334 + 7) & 0xFFFFFFFFFFFFFFF8;
        v336 = (v335 + 47) & 0xFFFFFFFFFFFFFFF8;
        v337 = swift_allocObject();
        *(v337 + 16) = v332;
        sub_21896FA98(v333, v337 + v334, sub_21896FA3C);
        v338 = v337 + v335;
        v339 = v448;
        *v338 = v447;
        *(v338 + 16) = v339;
        *(v338 + 32) = v449;
        v340 = (v337 + v336);
        v341 = (v337 + ((v336 + 23) & 0xFFFFFFFFFFFFFFF8));
        *v340 = 0;
        v340[1] = 0;
        v342 = v421;
        *v341 = v256;
        v341[1] = v342;
        v341[2] = v257;
        swift_retain_n();

        sub_2188202A8(v342);
        sub_2186CF94C();
        sub_2186F7D20(&qword_280EE5A90, 255, sub_2186CF94C);
        sub_219BEB464();

        sub_2187FABEC(v342);
        sub_21896FF74(&v439, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        sub_21896FF74(&v422, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        sub_2189700AC(v401, sub_21896FA3C);
        v270 = type metadata accessor for PuzzleModel;
        v271 = v405;
      }

      goto LABEL_78;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v152 = v406;
      sub_21896FA98(v63, v406, type metadata accessor for CustomItemRouteModel);
      v153 = *(v421 + 112);
      v154 = sub_219BDB954();
      v155 = swift_allocBox();
      (*(*(v154 - 8) + 16))(v156, v152, v154);
      v157 = v155 | 0x6000000000000000;
      v158 = sub_219BDFA44();
      v159 = v397;
      (*(*(v158 - 8) + 56))(v397, 1, 1, v158);
      *&v424 = 0;
      v422 = 0u;
      v423 = 0u;
      v441 = 0;
      v439 = 0u;
      v440 = 0u;
      *&v435 = v153;
      sub_21896FEF0(&v439, &v444, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      v420 = v155;
      if (*(&v445 + 1))
      {
        sub_21875F93C(&v444, &v447);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v161 = qword_280ED32D8;
        v160 = qword_280ED32E0;
        v162 = qword_280ED32E8;

        v421 = v160;
        sub_2188202A8(v160);
        __swift_destroy_boxed_opaque_existential_1(&v447);
      }

      else
      {
        sub_21896FF74(&v444, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v161 = qword_280ED32D8;
        v259 = qword_280ED32E0;
        v162 = qword_280ED32E8;

        v421 = v259;
        sub_2188202A8(v259);
      }

      *&v433 = v157;
      v444 = 0u;
      v445 = 0u;
      v260 = v394;
      sub_21896FE88(v159, v394, sub_21896FA3C);
      sub_21896FEF0(&v422, &v447, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v261 = (v418[80] + 24) & ~v418[80];
      v262 = (v417 + v261 + 7) & 0xFFFFFFFFFFFFFFF8;
      v263 = (v262 + 47) & 0xFFFFFFFFFFFFFFF8;
      v264 = swift_allocObject();
      *(v264 + 16) = 0;
      sub_21896FA98(v260, v264 + v261, sub_21896FA3C);
      v265 = v264 + v262;
      v266 = v448;
      *v265 = v447;
      *(v265 + 16) = v266;
      *(v265 + 32) = v449;
      v267 = (v264 + v263);
      v268 = (v264 + ((v263 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v267 = 0;
      v267[1] = 0;
      v269 = v421;
      *v268 = v161;
      v268[1] = v269;
      v268[2] = v162;

      sub_2188202A8(v269);
      sub_2186CF94C();
      sub_2186F7D20(&qword_280EE5A90, 255, sub_2186CF94C);
      sub_219BEB464();

      sub_2187FABEC(v269);
      sub_21896FF74(&v439, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      sub_21896FF74(&v422, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      sub_2189700AC(v159, sub_21896FA3C);
      v270 = type metadata accessor for CustomItemRouteModel;
      v271 = v406;
      goto LABEL_78;
    }

    if (EnumCaseMultiPayload == 7)
    {
      v75 = *v63;
      v76 = v421;
      v77 = *(v421 + 112);
      v78 = swift_allocObject();
      *(v78 + 16) = v75;
      v79 = v78 | 0x7000000000000004;
      v80 = *(v76 + 64);
      v81 = sub_219BDFA44();
      v82 = v403;
      (*(*(v81 - 8) + 56))(v403, 1, 1, v81);
      sub_218718690(v76 + 72, &v422);
      v441 = 0;
      v439 = 0u;
      v440 = 0u;
      *&v435 = v77;
      sub_21896FEF0(&v439, &v444, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      v419 = v75;
      v420 = v78;
      if (*(&v445 + 1))
      {
        sub_21875F93C(&v444, &v447);
        v83 = qword_280ED32D0;

        v84 = v417;
        if (v83 != -1)
        {
          swift_once();
        }

        v86 = qword_280ED32D8;
        v85 = qword_280ED32E0;
        v87 = qword_280ED32E8;

        v421 = v85;
        sub_2188202A8(v85);
        __swift_destroy_boxed_opaque_existential_1(&v447);
      }

      else
      {

        sub_21896FF74(&v444, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        v84 = v417;
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v86 = qword_280ED32D8;
        v296 = qword_280ED32E0;
        v87 = qword_280ED32E8;

        v421 = v296;
        sub_2188202A8(v296);
      }

      *&v433 = v79;
      *(&v445 + 1) = sub_219BDD274();
      *&v444 = v80;
      v297 = v395;
      sub_21896FE88(v82, v395, sub_21896FA3C);
      sub_21896FEF0(&v422, &v447, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v298 = v80;
      v299 = (v418[80] + 24) & ~v418[80];
      v300 = (v84 + v299 + 7) & 0xFFFFFFFFFFFFFFF8;
      v301 = (v300 + 47) & 0xFFFFFFFFFFFFFFF8;
      v302 = swift_allocObject();
      *(v302 + 16) = v298;
      sub_21896FA98(v297, v302 + v299, sub_21896FA3C);
      v303 = v302 + v300;
      v304 = v448;
      *v303 = v447;
      *(v303 + 16) = v304;
      *(v303 + 32) = v449;
      v305 = (v302 + v301);
      v306 = (v302 + ((v301 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v305 = 0;
      v305[1] = 0;
      v307 = v421;
      *v306 = v86;
      v306[1] = v307;
      v306[2] = v87;
      swift_retain_n();

      sub_2188202A8(v307);
      sub_2186CF94C();
      sub_2186F7D20(&qword_280EE5A90, 255, sub_2186CF94C);
      sub_219BEB464();

      sub_2187FABEC(v307);

      sub_21896FF74(&v439, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      sub_21896FF74(&v422, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v270 = sub_21896FA3C;
      v271 = v403;
LABEL_78:
      sub_2189700AC(v271, v270);
      v295 = &v444;
LABEL_79:
      sub_218806FD0(v295);
    }

    v237 = v421;
    v238 = *(v421 + 112);
    v239 = *(v421 + 64);
    v240 = sub_219BDFA44();
    v241 = v400;
    (*(*(v240 - 8) + 56))(v400, 1, 1, v240);
    sub_218718690(v237 + 72, &v422);
    v441 = 0;
    v439 = 0u;
    v440 = 0u;
    *&v435 = v238;
    sub_21896FEF0(&v439, &v444, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (*(&v445 + 1))
    {
      sub_21875F93C(&v444, &v447);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v243 = qword_280ED32D8;
      v242 = qword_280ED32E0;
      v244 = qword_280ED32E8;

      v421 = v242;
      sub_2188202A8(v242);
      __swift_destroy_boxed_opaque_existential_1(&v447);
    }

    else
    {
      sub_21896FF74(&v444, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v243 = qword_280ED32D8;
      v308 = qword_280ED32E0;
      v244 = qword_280ED32E8;

      v421 = v308;
      sub_2188202A8(v308);
    }

    *&v433 = 0xF000000000000030;
    *(&v445 + 1) = sub_219BDD274();
    *&v444 = v239;
    v309 = v239;
    v310 = v391;
    sub_21896FE88(v241, v391, sub_21896FA3C);
    sub_21896FEF0(&v422, &v447, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v311 = (v418[80] + 24) & ~v418[80];
    v312 = (v417 + v311 + 7) & 0xFFFFFFFFFFFFFFF8;
    v313 = (v312 + 47) & 0xFFFFFFFFFFFFFFF8;
    v314 = swift_allocObject();
    *(v314 + 16) = v309;
    sub_21896FA98(v310, v314 + v311, sub_21896FA3C);
    v315 = v314 + v312;
    v316 = v448;
    *v315 = v447;
    *(v315 + 16) = v316;
    *(v315 + 32) = v449;
    v317 = (v314 + v313);
    v318 = (v314 + ((v313 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v317 = 0;
    v317[1] = 0;
    v319 = v421;
    *v318 = v243;
    v318[1] = v319;
    v318[2] = v244;
    swift_retain_n();

    sub_2188202A8(v319);
    sub_2186CF94C();
    sub_2186F7D20(&qword_280EE5A90, 255, sub_2186CF94C);
    sub_219BEB464();

    sub_2187FABEC(v319);
    sub_21896FF74(&v439, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    sub_21896FF74(&v422, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    sub_2189700AC(v400, sub_21896FA3C);
    return sub_218806FD0(&v444);
  }
}

uint64_t sub_21896D844(void *a1, uint64_t a2)
{
  if (qword_27CC07E20 != -1)
  {
    swift_once();
  }

  sub_2186F7D20(&qword_27CC0B3C8, a2, type metadata accessor for MagazineFeedRouter);
  sub_219BDC7D4();
  v11[6] = 44;
  v11[7] = 0xE100000000000000;
  sub_2187F3BD4();
  v3 = sub_219BF6FE4();

  if (*(v3 + 16))
  {
    v4 = [a1 identifier];
    v5 = sub_219BF5414();
    v7 = v6;

    v12[0] = v5;
    v12[1] = v7;
    MEMORY[0x28223BE20](v8);
    v11[2] = v12;
    LOBYTE(v4) = sub_2186D128C(sub_2186D1338, v11, v3);

    v9 = v4 ^ 1;
  }

  else
  {

    v9 = 1;
  }

  return v9 & 1;
}

uint64_t sub_21896DA1C(uint64_t a1)
{
  v246 = a1;
  v224 = type metadata accessor for PuzzleModel();
  MEMORY[0x28223BE20](v224);
  v238 = &v222 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_219BDD664();
  v240 = *(v2 - 8);
  v241 = v2;
  MEMORY[0x28223BE20](v2);
  v239 = &v222 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21896F9B8();
  v234 = v4;
  MEMORY[0x28223BE20](v4);
  v235 = &v222 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NewsActivity2.Article(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v230 = &v222 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v231 = &v222 - v9;
  sub_21896FA3C();
  v244 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v228 = &v222 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v237 = &v222 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v226 = &v222 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v236 = &v222 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v232 = &v222 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v233 = &v222 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v223 = &v222 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v229 = &v222 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v225 = &v222 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v242 = &v222 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v227 = &v222 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v222 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v222 - v37;
  v243 = v39;
  MEMORY[0x28223BE20](v36);
  v41 = &v222 - v40;
  v42 = sub_219BDD944();
  v43 = MEMORY[0x28223BE20](v42);
  v45 = &v222 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v43);
  v48 = &v222 - v47;
  MEMORY[0x28223BE20](v46);
  v50 = &v222 - v49;
  v51 = type metadata accessor for MagazineFeedRouteModel();
  MEMORY[0x28223BE20](v51);
  v53 = &v222 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21896FE88(v246, v53, type metadata accessor for MagazineFeedRouteModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v228 = v48;
    v229 = v42;
    v236 = v45;
    v237 = v38;
    v71 = v242;
    v246 = v50;
    v238 = v41;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v102 = *(v53 + 9);
        v268 = *(v53 + 8);
        v269[0] = v102;
        *(v269 + 9) = *(v53 + 153);
        v103 = *(v53 + 5);
        v264 = *(v53 + 4);
        v265 = v103;
        v104 = *(v53 + 7);
        v266 = *(v53 + 6);
        v267 = v104;
        v105 = *(v53 + 1);
        v260 = *v53;
        v261 = v105;
        v106 = *(v53 + 3);
        v262 = *(v53 + 2);
        v263 = v106;
        v107 = v245;
        v108 = *(v245 + 112);
        v109 = swift_allocObject();
        sub_21896FC94(&v260, v109 + 16);
        v246 = v109;
        v110 = *(v107 + 64);
        v111 = sub_219BDFA44();
        v112 = v71;
        (*(*(v111 - 8) + 56))(v71, 1, 1, v111);
        sub_218718690(v107 + 72, &v251);
        v250[0] = v108;
        sub_219BDC8D4();
        sub_219BDC8B4();
        if (qword_280EE9210 != -1)
        {
          swift_once();
        }

        sub_219BDC8C4();

        v259 = v109 | 0x6000000000000004;
        *(&v248 + 1) = sub_219BDD274();
        *&v247 = v110;
        v113 = v71;
        v114 = v225;
        sub_21896FE88(v113, v225, sub_21896FA3C);
        v115 = v112;
        v116 = MEMORY[0x277D2D578];
        sub_21896FEF0(&v251, &v256, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        v117 = (*(v244 + 80) + 24) & ~*(v244 + 80);
        v118 = (v243 + v117 + 7) & 0xFFFFFFFFFFFFFFF8;
        v119 = swift_allocObject();
        *(v119 + 16) = v110;
        sub_21896FA98(v114, v119 + v117, sub_21896FA3C);
        v120 = v119 + v118;
        v121 = v257;
        *v120 = v256;
        *(v120 + 16) = v121;
        *(v120 + 32) = v258;
        v122 = (v119 + ((v118 + 47) & 0xFFFFFFFFFFFFFFF8));
        *v122 = 0;
        v122[1] = 0;
        sub_2186CF94C();
        sub_2186F7D20(&qword_280EE5A90, 255, sub_2186CF94C);
        swift_retain_n();
        v70 = sub_219BEB454();

        sub_21896FF74(&v251, &qword_280EE33A0, &qword_280EE33B0, v116);
        sub_2189700AC(v115, sub_21896FA3C);
        sub_21896FCF0(&v260);
        sub_218806FD0(&v247);
      }

      else
      {
        (*(v240 + 32))(v239, v53, v241);
        v162 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
        v163 = v245;
        v164 = *(v245 + 112);
        v165 = sub_219BDD654();
        v166 = swift_allocObject();
        v167 = [v165 identifier];
        v168 = sub_219BF5414();
        v170 = v169;

        swift_unknownObjectRelease();
        *(v166 + 16) = v168;
        *(v166 + 24) = v170;
        *(v166 + 32) = v162;
        *(v166 + 40) = 0;
        *(v166 + 48) = 1;
        *(v166 + 56) = 0u;
        *(v166 + 72) = 0u;
        *(v166 + 88) = 0;
        *(v166 + 96) = -1;
        v171 = *(v163 + 64);
        v172 = sub_219BDFA44();
        v173 = v233;
        (*(*(v172 - 8) + 56))(v233, 1, 1, v172);
        sub_218718690(v163 + 72, &v260);
        *&v247 = v164;
        sub_219BDC8D4();
        v174 = v162;
        sub_219BDC8B4();
        if (qword_280EE9210 != -1)
        {
          swift_once();
        }

        sub_219BDC8C4();

        v250[0] = v166 | 0x2000000000000006;
        *(&v257 + 1) = sub_219BDD274();
        *&v256 = v171;
        v175 = v232;
        sub_21896FE88(v173, v232, sub_21896FA3C);
        sub_21896FEF0(&v260, &v251, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        v176 = (*(v244 + 80) + 24) & ~*(v244 + 80);
        v177 = (v243 + v176 + 7) & 0xFFFFFFFFFFFFFFF8;
        v178 = swift_allocObject();
        *(v178 + 16) = v171;
        sub_21896FA98(v175, v178 + v176, sub_21896FA3C);
        v179 = v178 + v177;
        v180 = v252;
        *v179 = v251;
        *(v179 + 16) = v180;
        *(v179 + 32) = v253;
        v181 = (v178 + ((v177 + 47) & 0xFFFFFFFFFFFFFFF8));
        *v181 = 0;
        v181[1] = 0;
        sub_2186CF94C();
        sub_2186F7D20(&qword_280EE5A90, 255, sub_2186CF94C);
        swift_retain_n();
        v70 = sub_219BEB454();

        sub_21896FF74(&v260, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        sub_2189700AC(v173, sub_21896FA3C);
        (*(v240 + 8))(v239, v241);
        sub_218806FD0(&v256);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v123 = v35;
      v124 = *v53;
      v125 = *(v53 + 1);
      v126 = *(v53 + 2);
      v127 = *(v53 + 3);
      v128 = *(v53 + 4);
      v129 = v53[40];
      v237 = *(v245 + 112);
      v130 = swift_allocObject();
      *&v260 = v124;
      *(&v260 + 1) = v125;
      *&v261 = v126;
      *(&v261 + 1) = v127;
      *&v262 = v128;
      BYTE8(v262) = v129;
      v131 = sub_21896FE24(v124, v125, v126, v127, v128, v129);
      v137 = sub_219BD47C0(v131, v132, v133, v134, v135, v136);
      v255 = v129;
      *(v130 + 16) = v124;
      *(v130 + 24) = v125;
      *(v130 + 32) = v126;
      *(v130 + 40) = v127;
      *(v130 + 48) = v128;
      *(v130 + 56) = v129 & 1 | 0x8000000000000000;
      *(v130 + 64) = v137;
      *(v130 + 72) = v138;
      *(v130 + 80) = MEMORY[0x277D84F90];
      v241 = v130;
      v236 = (v130 | 0x5000000000000000);
      v139 = v245;
      v239 = *(v245 + 64);
      v140 = sub_219BDFA44();
      v141 = v123;
      (*(*(v140 - 8) + 56))(v123, 1, 1, v140);
      v142 = sub_218718690(v139 + 72, &v256);
      v245 = v125;
      v246 = v124;
      *&v251 = v124;
      *(&v251 + 1) = v125;
      v242 = v126;
      *&v252 = v126;
      *(&v252 + 1) = v127;
      v143 = v127;
      v238 = v128;
      v253 = v128;
      LODWORD(v240) = v129;
      v254 = v129;
      v149 = sub_219BD48CC(v142, v144, v145, v146, v147, v148);
      v151 = v150;
      v259 = v237;
      sub_219BDC8D4();
      swift_unknownObjectRetain();
      sub_219BDC8B4();
      if (qword_280EE9210 != -1)
      {
        swift_once();
      }

      sub_219BDC8C4();

      v250[4] = v236;
      v250[3] = sub_219BDD274();
      v152 = v239;
      v250[0] = v239;
      v153 = v123;
      v154 = v227;
      sub_21896FE88(v153, v227, sub_21896FA3C);
      sub_21896FEF0(&v256, &v247, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v155 = (*(v244 + 80) + 24) & ~*(v244 + 80);
      v156 = (v243 + v155 + 7) & 0xFFFFFFFFFFFFFFF8;
      v157 = swift_allocObject();
      v244 = v141;
      v158 = v157;
      *(v157 + 16) = v152;
      sub_21896FA98(v154, v157 + v155, sub_21896FA3C);
      v159 = v158 + v156;
      v160 = v248;
      *v159 = v247;
      *(v159 + 16) = v160;
      *(v159 + 32) = v249;
      v161 = (v158 + ((v156 + 47) & 0xFFFFFFFFFFFFFFF8));
      *v161 = v149;
      v161[1] = v151;
      sub_2186CF94C();
      sub_2186F7D20(&qword_280EE5A90, 255, sub_2186CF94C);
      swift_retain_n();
      swift_unknownObjectRetain();
      v70 = sub_219BEB454();
      swift_unknownObjectRelease();

      sub_21896FDCC(v246, v245, v242, v143, v238, v240);
      sub_21896FF74(&v256, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      sub_2189700AC(v244, sub_21896FA3C);
      sub_218806FD0(v250);
    }

    else
    {
      v72 = v246;
      sub_21896FA98(v53, v246, MEMORY[0x277D2FB40]);
      v73 = v245;
      v74 = *(v245 + 112);
      sub_2187B2C48();
      v76 = v75;
      v242 = swift_allocBox();
      v78 = v77;
      v79 = *(v76 + 48);
      sub_2187B2DA0();
      v241 = v80;
      v81 = *(v80 + 48);
      sub_21896FE88(v72, v78, MEMORY[0x277D2FB40]);
      v82 = MEMORY[0x277D84F90];
      *(v78 + v81) = MEMORY[0x277D84F90];
      *(v78 + v79) = v82;
      v83 = *(v73 + 64);
      v84 = sub_219BDFA44();
      (*(*(v84 - 8) + 56))(v238, 1, 1, v84);
      sub_218718690(v73 + 72, &v260);
      *&v247 = v74;
      sub_219BDC8D4();
      sub_219BDC8B4();
      if (qword_280EE9210 != -1)
      {
        swift_once();
      }

      v85 = sub_219BDC8C4();

      v86 = v234;
      v87 = v235;
      v89 = v230;
      v88 = v231;
      v90 = v237;
      if (v85)
      {
        sub_21896FE88(v78, v231, type metadata accessor for NewsActivity2.Article);
        sub_21896FE88(v88, v89, type metadata accessor for NewsActivity2.Article);

        v91 = v236;
        sub_21896FA98(v89, v236, MEMORY[0x277D2FB40]);
        sub_2189700AC(v88, type metadata accessor for NewsActivity2.Article);
        v92 = swift_getEnumCaseMultiPayload();
        v93 = v246;
        if (v92 == 1)
        {
          v94 = swift_projectBox();
          sub_21896FE88(v94, v87, sub_21896F9B8);
          v95 = v228;
          sub_21896FA98(v87 + *(v86 + 48), v228, MEMORY[0x277D2FB40]);
          __swift_destroy_boxed_opaque_existential_1(v87);

          sub_2186C66AC();
          v96 = sub_219BF6F44();
          sub_2186C6FC8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
          v97 = swift_allocObject();
          *(v97 + 16) = xmmword_219C09BA0;
          v98 = sub_219BDD8C4();
          v100 = v99;
          *(v97 + 56) = MEMORY[0x277D837D0];
          *(v97 + 64) = sub_2186FC3BC();
          *(v97 + 32) = v98;
          *(v97 + 40) = v100;
          sub_219BF6214();
          sub_219BE5314();

          v101 = MEMORY[0x277D2FB40];
          sub_2189700AC(v95, MEMORY[0x277D2FB40]);
          sub_21896FF74(&v260, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
          sub_2189700AC(v238, sub_21896FA3C);
          sub_2189700AC(v93, v101);

          return 0;
        }

        sub_2189700AC(v91, MEMORY[0x277D2FB40]);
      }

      v250[0] = v242 | 2;
      *(&v257 + 1) = sub_219BDD274();
      *&v256 = v83;
      v213 = v238;
      sub_21896FE88(v238, v90, sub_21896FA3C);
      sub_21896FEF0(&v260, &v251, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v214 = (*(v244 + 80) + 24) & ~*(v244 + 80);
      v215 = v90;
      v216 = (v243 + v214 + 7) & 0xFFFFFFFFFFFFFFF8;
      v217 = swift_allocObject();
      *(v217 + 16) = v83;
      sub_21896FA98(v215, v217 + v214, sub_21896FA3C);
      v218 = v217 + v216;
      v219 = v252;
      *v218 = v251;
      *(v218 + 16) = v219;
      *(v218 + 32) = v253;
      v220 = (v217 + ((v216 + 47) & 0xFFFFFFFFFFFFFFF8));
      *v220 = 0;
      v220[1] = 0;
      sub_2186CF94C();
      sub_2186F7D20(&qword_280EE5A90, 255, sub_2186CF94C);
      swift_retain_n();
      v70 = sub_219BEB454();

      sub_21896FF74(&v260, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      sub_2189700AC(v213, sub_21896FA3C);
      sub_2189700AC(v246, MEMORY[0x277D2FB40]);
      sub_218806FD0(&v256);
    }

    return v70;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload != 7)
      {
        v182 = v245;
        v183 = *(v245 + 112);
        v184 = *(v245 + 64);
        v185 = sub_219BDFA44();
        v186 = v229;
        (*(*(v185 - 8) + 56))(v229, 1, 1, v185);
        sub_218718690(v182 + 72, &v260);
        *&v247 = v183;
        sub_219BDC8D4();
        sub_219BDC8B4();
        if (qword_280EE9210 != -1)
        {
          swift_once();
        }

        sub_219BDC8C4();

        v250[0] = 0xF000000000000030;
        *(&v257 + 1) = sub_219BDD274();
        *&v256 = v184;
        v187 = v223;
        sub_21896FE88(v186, v223, sub_21896FA3C);
        v188 = MEMORY[0x277D2D578];
        sub_21896FEF0(&v260, &v251, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        v189 = (*(v244 + 80) + 24) & ~*(v244 + 80);
        v190 = v186;
        v191 = (v243 + v189 + 7) & 0xFFFFFFFFFFFFFFF8;
        v192 = swift_allocObject();
        *(v192 + 16) = v184;
        sub_21896FA98(v187, v192 + v189, sub_21896FA3C);
        v193 = v192 + v191;
        v194 = v252;
        *v193 = v251;
        *(v193 + 16) = v194;
        *(v193 + 32) = v253;
        v195 = (v192 + ((v191 + 47) & 0xFFFFFFFFFFFFFFF8));
        *v195 = 0;
        v195[1] = 0;
        sub_2186CF94C();
        sub_2186F7D20(&qword_280EE5A90, 255, sub_2186CF94C);
        swift_retain_n();
        v70 = sub_219BEB454();

        sub_21896FF74(&v260, &qword_280EE33A0, &qword_280EE33B0, v188);
        sub_2189700AC(v190, sub_21896FA3C);
        sub_218806FD0(&v256);
        return v70;
      }

      v55 = *v53;
      v56 = v245;
      v57 = *(v245 + 112);
      v58 = swift_allocObject();
      *(v58 + 16) = v55;
      v59 = v58 | 0x7000000000000004;
      v60 = *(v56 + 64);
      v61 = sub_219BDFA44();
      v62 = v237;
      (*(*(v61 - 8) + 56))(v237, 1, 1, v61);
      sub_218718690(v56 + 72, &v260);
      *&v247 = v57;
      sub_219BDC8D4();

      sub_219BDC8B4();
      if (qword_280EE9210 != -1)
      {
        swift_once();
      }

      sub_219BDC8C4();

      v250[0] = v59;
      *(&v257 + 1) = sub_219BDD274();
      *&v256 = v60;
      v63 = v228;
      sub_21896FE88(v62, v228, sub_21896FA3C);
      sub_21896FEF0(&v260, &v251, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v64 = (*(v244 + 80) + 24) & ~*(v244 + 80);
      v65 = (v243 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
      v66 = swift_allocObject();
      *(v66 + 16) = v60;
      sub_21896FA98(v63, v66 + v64, sub_21896FA3C);
      v67 = v66 + v65;
      v68 = v252;
      *v67 = v251;
      *(v67 + 16) = v68;
      *(v67 + 32) = v253;
      v69 = (v66 + ((v65 + 47) & 0xFFFFFFFFFFFFFFF8));
      *v69 = 0;
      v69[1] = 0;
      sub_2186CF94C();
      sub_2186F7D20(&qword_280EE5A90, 255, sub_2186CF94C);
      swift_retain_n();
      v70 = sub_219BEB454();

      sub_218806FD0(&v256);

      sub_21896FF74(&v260, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v211 = sub_21896FA3C;
      v212 = v62;
      goto LABEL_33;
    }

    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 4)
  {
LABEL_20:
    sub_2189700AC(v53, type metadata accessor for MagazineFeedRouteModel);
    return 0;
  }

  v196 = v238;
  sub_21896FA98(v53, v238, type metadata accessor for PuzzleModel);
  v197 = v245;
  v198 = *(v245 + 112);
  v199 = swift_allocBox();
  sub_21896FE88(v196, v200, type metadata accessor for PuzzleModel);
  v201 = *(v197 + 64);
  v202 = sub_219BDFA44();
  v203 = v236;
  (*(*(v202 - 8) + 56))(v236, 1, 1, v202);
  *&v262 = 0;
  v260 = 0u;
  v261 = 0u;
  *&v247 = v198;
  sub_219BDC8D4();
  sub_219BDC8B4();
  if (qword_280EE9210 != -1)
  {
    swift_once();
  }

  sub_219BDC8C4();

  v250[0] = v199 | 0xE000000000000006;
  *(&v257 + 1) = sub_219BDD274();
  *&v256 = v201;
  v204 = v226;
  sub_21896FE88(v203, v226, sub_21896FA3C);
  sub_21896FEF0(&v260, &v251, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v205 = (*(v244 + 80) + 24) & ~*(v244 + 80);
  v206 = (v243 + v205 + 7) & 0xFFFFFFFFFFFFFFF8;
  v207 = swift_allocObject();
  *(v207 + 16) = v201;
  sub_21896FA98(v204, v207 + v205, sub_21896FA3C);
  v208 = v207 + v206;
  v209 = v252;
  *v208 = v251;
  *(v208 + 16) = v209;
  *(v208 + 32) = v253;
  v210 = (v207 + ((v206 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v210 = 0;
  v210[1] = 0;
  sub_2186CF94C();
  sub_2186F7D20(&qword_280EE5A90, 255, sub_2186CF94C);
  swift_retain_n();
  v70 = sub_219BEB454();

  sub_218806FD0(&v256);

  sub_21896FF74(&v260, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_2189700AC(v203, sub_21896FA3C);
  v211 = type metadata accessor for PuzzleModel;
  v212 = v196;
LABEL_33:
  sub_2189700AC(v212, v211);
  return v70;
}

uint64_t sub_21896F928()
{
  MEMORY[0x21CECFA80](v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  return swift_deallocClassInstance();
}

void sub_21896F9B8()
{
  if (!qword_280EE37C0)
  {
    sub_2186CFDE4(255, &qword_280EE37C8);
    sub_219BDD944();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE37C0);
    }
  }
}

void sub_21896FA3C()
{
  if (!qword_280EE8610)
  {
    sub_219BDFA44();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE8610);
    }
  }
}

uint64_t sub_21896FA98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21896FB00(void *a1)
{
  sub_21896FA3C();

  return sub_2194DAF24(a1);
}

uint64_t sub_21896FBB0(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5)
{
  if (a5 == 2 || a5 == 1)
  {

    v7 = a3;
  }

  else
  {
    if (a5)
    {
      return result;
    }

    swift_unknownObjectRelease();
    v7 = a2;
  }
}

uint64_t sub_21896FC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 < 2u)
  {
  }

  if (a5 == 2)
  {
  }

  return result;
}

uint64_t sub_21896FD44(uint64_t result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = a6 >> 62;
  if ((a6 >> 62) > 1)
  {
    if (v6 != 2)
    {
      return result;
    }

    sub_21896FDCC(result, a2, a3, a4, a5, a6 & 1);
    goto LABEL_6;
  }

  if (v6)
  {
LABEL_6:

    goto LABEL_7;
  }

  sub_21896FDCC(result, a2, a3, a4, a5, a6 & 1);
LABEL_7:
}

uint64_t sub_21896FDCC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

id sub_21896FE24(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {
    swift_unknownObjectRetain();

    return a3;
  }
}

uint64_t sub_21896FE88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21896FEF0(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_2186C6FC8(0, a3, a4, a5, MEMORY[0x277D83D88]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_21896FF74(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_2186C6FC8(0, a2, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_21896FFE8(void *a1)
{
  sub_21896FA3C();
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_2189700AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21897010C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 < 2u)
  {
  }

  if (a5 == 2)
  {
  }

  return result;
}

unint64_t sub_218970170(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_218932F9C(result);
  }

  return result;
}

uint64_t sub_21897018C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218970B3C(0, &qword_27CC0B3D0, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for LatestStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218970A84();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_218970BA0(&unk_280E92630, MEMORY[0x277D31C50]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_218970AD8(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218970438()
{
  sub_219BF7AA4();
  MEMORY[0x21CECE850](0);
  return sub_219BF7AE4();
}

uint64_t sub_21897049C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x724774616D726F66 && a2 == 0xEB0000000070756FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_219BF78F4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_218970528(uint64_t a1)
{
  v2 = sub_218970A84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218970564(uint64_t a1)
{
  v2 = sub_218970A84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2189705F8(void *a1)
{
  sub_218970B3C(0, &qword_280E8C4A0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218970A84();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_218970BA0(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218970780()
{
  v0 = sub_219BED784();
  v2 = v1;
  if (v0 == sub_219BED784() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_219BF78F4();
  }

  return v4 & 1;
}

uint64_t sub_2189708E4(uint64_t a1)
{
  result = sub_218970BA0(&qword_280EB8558, type metadata accessor for LatestStoriesTodayFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21897093C(uint64_t a1)
{
  v2 = sub_218970BA0(&qword_280EB8588, type metadata accessor for LatestStoriesTodayFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_2189709D8(void *a1)
{
  a1[1] = sub_218970BA0(&qword_280EB8588, type metadata accessor for LatestStoriesTodayFeedGroup);
  a1[2] = sub_218970BA0(&qword_280EB8560, type metadata accessor for LatestStoriesTodayFeedGroup);
  result = sub_218970BA0(&qword_280EB8570, type metadata accessor for LatestStoriesTodayFeedGroup);
  a1[3] = result;
  return result;
}

unint64_t sub_218970A84()
{
  result = qword_280EB85A0[0];
  if (!qword_280EB85A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EB85A0);
  }

  return result;
}

uint64_t sub_218970AD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LatestStoriesTodayFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218970B3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218970A84();
    v7 = a3(a1, &type metadata for LatestStoriesTodayFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218970BA0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218970BFC()
{
  result = qword_27CC0B3D8;
  if (!qword_27CC0B3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B3D8);
  }

  return result;
}

unint64_t sub_218970C54()
{
  result = qword_280EB8590;
  if (!qword_280EB8590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB8590);
  }

  return result;
}

unint64_t sub_218970CAC()
{
  result = qword_280EB8598;
  if (!qword_280EB8598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB8598);
  }

  return result;
}

uint64_t type metadata accessor for AudioPlaylistFeedConfigFetchResult()
{
  result = qword_280EA1108;
  if (!qword_280EA1108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218970D74()
{
  type metadata accessor for AudioPlaylistFeedContentConfig();
  if (v0 <= 0x3F)
  {
    sub_2186EE86C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_218970DF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218971608(0, &qword_27CC0B410, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for SportsInjuryReportsTagFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218971550();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_21897166C(&unk_280E92630, MEMORY[0x277D31C50]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_2189715A4(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2189710A4(uint64_t a1)
{
  v2 = sub_218971550();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2189710E0(uint64_t a1)
{
  v2 = sub_218971550();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21897115C(void *a1)
{
  sub_218971608(0, &qword_27CC0B420, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218971550();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_21897166C(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2189713C0(uint64_t a1)
{
  result = sub_21897166C(&unk_27CC1C630, type metadata accessor for SportsInjuryReportsTagFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218971418(void *a1)
{
  a1[1] = sub_21897166C(&qword_27CC0B3F8, type metadata accessor for SportsInjuryReportsTagFeedGroup);
  a1[2] = sub_21897166C(&qword_27CC0B400, type metadata accessor for SportsInjuryReportsTagFeedGroup);
  result = sub_21897166C(&qword_27CC0B408, type metadata accessor for SportsInjuryReportsTagFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_2189714C4(uint64_t a1)
{
  v2 = sub_21897166C(&qword_27CC0B3F8, type metadata accessor for SportsInjuryReportsTagFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_218971550()
{
  result = qword_27CC0B418;
  if (!qword_27CC0B418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B418);
  }

  return result;
}

uint64_t sub_2189715A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsInjuryReportsTagFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218971608(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218971550();
    v7 = a3(a1, &type metadata for SportsInjuryReportsTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21897166C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2189716C8()
{
  result = qword_27CC0B428;
  if (!qword_27CC0B428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B428);
  }

  return result;
}

unint64_t sub_218971720()
{
  result = qword_27CC0B430;
  if (!qword_27CC0B430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B430);
  }

  return result;
}

unint64_t sub_218971778()
{
  result = qword_27CC0B438;
  if (!qword_27CC0B438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B438);
  }

  return result;
}

uint64_t sub_2189717F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE65A0);
  result = sub_219BE1E34();
  if (v7)
  {
    v5 = type metadata accessor for ContinueReadingModule();
    v6 = swift_allocObject();
    result = sub_2186CB1F0(v9, v6 + 32);
    *(v6 + 16) = v7;
    *(v6 + 24) = v8;
    a2[3] = v5;
    a2[4] = &protocol witness table for ContinueReadingModule;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2189718C4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ContinueReadingDialogRequestFactory();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_282A3DAA8;
  *a1 = result;
  return result;
}

uint64_t sub_21897190C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EB1168);
  result = sub_219BE1E34();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for ContinueReadingInteractor();
    v17[3] = v9;
    v17[4] = &off_282A9A378;
    v17[0] = v8;
    v10 = type metadata accessor for ContinueReadingEventHandler();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x28223BE20](v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_282A9A378;
    v11[2] = v16;
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_282A54498;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218971B38@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA6BB8);
  result = sub_219BE1E34();
  if (!v26)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE91B4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218716B60();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CF94C();
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
    v23[1] = v23;
    MEMORY[0x28223BE20](v8);
    v10 = (v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = *v10;
    v13 = type metadata accessor for ContinueReadingPromptTracker();
    v24[3] = v13;
    v24[4] = &off_282A52718;
    v24[0] = v12;
    v14 = type metadata accessor for ContinueReadingInteractor();
    v15 = swift_allocObject();
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v24, v13);
    MEMORY[0x28223BE20](v16);
    v18 = (v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = *v18;
    *(v15 + 5) = v13;
    *(v15 + 6) = &off_282A52718;
    *(v15 + 2) = v20;
    v21 = OBJC_IVAR____TtC7NewsUI225ContinueReadingInteractor_exposureData;
    v22 = type metadata accessor for ContinueReadingPromptExposureData();
    (*(*(v22 - 8) + 56))(&v15[v21], 1, 1, v22);
    *(v15 + 7) = v5;
    *(v15 + 8) = v6;
    *&v15[OBJC_IVAR____TtC7NewsUI225ContinueReadingInteractor_navigator] = v7;
    __swift_destroy_boxed_opaque_existential_1(v24);
    result = __swift_destroy_boxed_opaque_existential_1(v25);
    a2[3] = v14;
    a2[4] = &off_282A9A378;
    *a2 = v15;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_218971E7C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810);
  result = sub_219BE1E34();
  if (v20)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    MEMORY[0x28223BE20](v4);
    v6 = (v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for BaseStyler();
    v18[3] = v9;
    v10 = sub_218703FE8(&qword_280EDFED0, type metadata accessor for BaseStyler);
    v18[4] = v10;
    v18[0] = v8;
    v11 = type metadata accessor for ContinueReadingPromptStyler();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v18, v9);
    MEMORY[0x28223BE20](v13);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = *v15;
    v12[5] = v9;
    v12[6] = v10;
    v12[2] = v17;
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v19);
    a2[3] = v11;
    a2[4] = &off_282A75658;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2189720DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for ContinueReadingPromptTracker();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_282A52718;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218972164(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E34();
  if (!v25)
  {
    __break(1u);
    goto LABEL_7;
  }

  v33[0] = v24;
  v33[1] = v25;
  v38 = v30;
  v39 = v31;
  v40 = v32;
  v34 = v26;
  v35 = v27;
  v37 = v29;
  v36 = v28;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA9A00);
  result = sub_219BE1E34();
  if (!v23)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E97550);
  result = sub_219BE1E34();
  if (!v21)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E2F0);
  v3 = sub_219BE1E24();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EA99F0);
  result = sub_219BE1E34();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    MEMORY[0x28223BE20](v4);
    v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v7 + 16))(v6);
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    MEMORY[0x28223BE20](v8);
    v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v11 + 16))(v10);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v12);
    v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v15 + 16))(v14);
    v16 = sub_218972824(v33, *v6, *v10, v3, *v14);

    __swift_destroy_boxed_opaque_existential_1(v18);
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v22);
    return v16;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_21897256C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*__swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 136);
  sub_2186C6148(0, &qword_280E8DB00);
  v7 = v6;
  v8 = sub_219BF6BC4();
  [a1 setAccessoryButtonColor_];
  [a1 setAccessoryButtonFont_];

  v9 = *(*__swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 144);
  v10 = sub_219BF6BC4();
  [a1 setMessageTextColor_];
  [a1 setMessageFont_];

  v11 = *(*__swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 152);
  v12 = sub_2194ECA5C(a2);
  [a1 setTitleTextColor_];
  [a1 setTitleFont_];
}

uint64_t sub_21897273C(uint64_t a1, void *a2)
{
  v11 = type metadata accessor for ContinueReadingPromptStyler();
  v12 = &off_282A75658;
  v10[0] = a1;
  v4 = objc_allocWithZone(MEMORY[0x277CEE920]);

  v5 = [v4 init];
  v6 = __swift_project_boxed_opaque_existential_1(v10, v11);
  v7 = v5;
  v8 = [a2 traitCollection];
  sub_21897256C(v7, v8, *v6);

  [a2 setPreferredAppearance_];
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

char *sub_218972824(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v49 = a4;
  v9 = *a5;
  v10 = type metadata accessor for ContinueReadingEventHandler();
  v64[3] = v10;
  v64[4] = &off_282A54498;
  v64[0] = a2;
  v11 = type metadata accessor for ContinueReadingDialogRequestFactory();
  v62 = v11;
  v63 = &off_282A3DAA8;
  v61[0] = a3;
  v59 = v9;
  v60 = &off_282A75658;
  v58[0] = a5;
  v48 = type metadata accessor for ContinueReadingViewController();
  v12 = objc_allocWithZone(v48);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v64, v10);
  MEMORY[0x28223BE20](v13);
  v15 = (&v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v61, v62);
  MEMORY[0x28223BE20](v17);
  v19 = (&v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v58, v59);
  MEMORY[0x28223BE20](v21);
  v23 = (&v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = *v15;
  v26 = *v19;
  v27 = *v23;
  v57[3] = v10;
  v57[4] = &off_282A54498;
  v57[0] = v25;
  v56[3] = v11;
  v56[4] = &off_282A3DAA8;
  v56[0] = v26;
  v54 = v9;
  v55 = &off_282A75658;
  v53[0] = v27;
  v28 = OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_relativeTabBarController;
  *&v12[OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_relativeTabBarController] = 0;
  v29 = &v12[OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_content];
  v30 = *(a1 + 80);
  *(v29 + 4) = *(a1 + 64);
  *(v29 + 5) = v30;
  *(v29 + 6) = *(a1 + 96);
  v29[112] = *(a1 + 112);
  v31 = *(a1 + 16);
  *v29 = *a1;
  *(v29 + 1) = v31;
  v32 = *(a1 + 48);
  *(v29 + 2) = *(a1 + 32);
  *(v29 + 3) = v32;
  sub_218718690(v57, &v12[OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_eventHandler]);
  sub_218718690(v56, &v12[OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_dialogRequestFactory]);
  v33 = v49;
  *&v12[v28] = v49;
  sub_218718690(v53, &v12[OBJC_IVAR____TtC7NewsUI229ContinueReadingViewController_styler]);
  v34 = *(a1 + 80);
  v51[4] = *(a1 + 64);
  v51[5] = v34;
  v51[6] = *(a1 + 96);
  v52 = *(a1 + 112);
  v35 = *(a1 + 16);
  v51[0] = *a1;
  v51[1] = v35;
  v36 = *(a1 + 48);
  v51[2] = *(a1 + 32);
  v51[3] = v36;
  v37 = v33;
  v38 = sub_218C51900(v51);
  v50.receiver = v12;
  v50.super_class = v48;
  v39 = objc_msgSendSuper2(&v50, sel_initWithRequest_, v38);

  v40 = v39;
  [v40 setDelegate_];
  v41 = __swift_project_boxed_opaque_existential_1(v53, v54);
  sub_21897273C(*v41, v40);
  v42 = [v40 presentationController];
  v43 = v40;
  if (v42)
  {
    v44 = v42;
    objc_opt_self();
    v45 = swift_dynamicCastObjCClass();
    if (v45)
    {
      v46 = v45;
      [v45 setDismissDelayTimeInterval_];
      [v46 setRelativeTabBarController_];
    }

    v43 = v44;
  }

  __swift_destroy_boxed_opaque_existential_1(v57);
  __swift_destroy_boxed_opaque_existential_1(v53);
  __swift_destroy_boxed_opaque_existential_1(v56);
  __swift_destroy_boxed_opaque_existential_1(v58);
  __swift_destroy_boxed_opaque_existential_1(v61);
  __swift_destroy_boxed_opaque_existential_1(v64);
  return v40;
}

uint64_t type metadata accessor for SharedWithYouFeedRefreshResult()
{
  result = qword_27CC0B4A8;
  if (!qword_27CC0B4A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218972D3C()
{
  sub_2187E7248();
  if (v0 <= 0x3F)
  {
    sub_219BF0BD4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_218972DC0(uint64_t a1, uint64_t a2)
{
  sub_218972E2C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

void sub_218972E2C()
{
  if (!qword_27CC0FAE0)
  {
    sub_218972EAC();
    sub_218972F00();
    v0 = sub_219BF0854();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0FAE0);
    }
  }
}

unint64_t sub_218972EAC()
{
  result = qword_27CC20240;
  if (!qword_27CC20240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20240);
  }

  return result;
}

unint64_t sub_218972F00()
{
  result = qword_27CC0FAF0;
  if (!qword_27CC0FAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0FAF0);
  }

  return result;
}

uint64_t sub_218972F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218972E2C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t type metadata accessor for SportsFavoritesModel()
{
  result = qword_27CC0B4B8;
  if (!qword_27CC0B4B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21897301C(uint64_t a1)
{
  sub_218972E2C();
  if (v3 <= 0x3F)
  {
    v4 = v2;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
  }
}

uint64_t sub_2189730C0()
{
  sub_218972E2C();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218973C60(v0, v8);
  (*(v3 + 32))(v6, v8, v2);
  v9 = sub_219BF07B4();
  (*(v3 + 8))(v6, v2);
  return v9;
}

uint64_t sub_218973208()
{
  sub_219BF7AA4();
  sub_219BF52F4();
  return sub_219BF7AE4();
}

uint64_t sub_218973260(uint64_t a1, uint64_t a2)
{
  v4 = sub_218973424(&qword_27CC0B4E0);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_2189732C8()
{
  sub_219BF7AA4();
  sub_219BF52F4();
  return sub_219BF7AE4();
}

uint64_t sub_218973424(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SportsFavoritesModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218973468@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_219BEAF84();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_2189734EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_218972E2C();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v18 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218973C60(v2, v14);
  (*(v6 + 32))(v12, v14, v5);
  (*(v6 + 16))(v9, v12, v5);
  sub_2199E1620(v9, a1);
  (*(v6 + 8))(v12, v5);
  v15 = *MEMORY[0x277D32DC0];
  v16 = sub_219BF0614();
  return (*(*(v16 - 8) + 104))(a1, v15, v16);
}

uint64_t sub_218973700@<X0>(unsigned int *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t sub_218973770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  sub_218972E2C();
  v17 = v16;
  v18 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v30 - v22;
  v24 = type metadata accessor for SportsFavoritesModel();
  MEMORY[0x28223BE20](v24 - 8);
  v26 = v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218973C60(v10, v26);
  (*(v18 + 32))(v23, v26, v17);
  v27 = sub_219BE5A14();
  (*(v18 + 16))(v21, v23, v17);
  (*(v13 + 16))(v15, a1, v12);
  swift_getWitnessTable();
  v28 = sub_219876240(v21, v15, v27, v12);
  (*(v18 + 8))(v23, v17);
  return v28;
}

uint64_t sub_2189739EC()
{
  sub_218973CF8(0, &qword_27CC110C0, sub_218973CC4, MEMORY[0x277D84560]);
  *(swift_allocObject() + 16) = xmmword_219C09BA0;
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C0B8C0;
  v1 = sub_219BE6684();
  v2 = sub_219BE6654();
  if (v2)
  {
    v3 = MEMORY[0x277D6D630];
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v0 + 40) = 0;
    *(v0 + 48) = 0;
  }

  *(v0 + 32) = v2;
  *(v0 + 56) = v4;
  *(v0 + 64) = v3;
  v5 = sub_219BE6634();
  if (v5)
  {
    v6 = MEMORY[0x277D6D630];
    v7 = v1;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    *(v0 + 80) = 0;
    *(v0 + 88) = 0;
  }

  *(v0 + 72) = v5;
  *(v0 + 96) = v7;
  *(v0 + 104) = v6;
  v8 = sub_219BE6614();
  if (v8)
  {
    v9 = MEMORY[0x277D6D630];
  }

  else
  {
    v1 = 0;
    v9 = 0;
    *(v0 + 120) = 0;
    *(v0 + 128) = 0;
  }

  *(v0 + 112) = v8;
  *(v0 + 136) = v1;
  *(v0 + 144) = v9;
  sub_219BE5A14();
  sub_219BE6B74();
  sub_219BE6B44();

  return sub_219BE59D4();
}

uint64_t sub_218973C60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsFavoritesModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_218973CF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_218973D5C()
{
  result = qword_27CC110D0;
  if (!qword_27CC110D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CC110D0);
  }

  return result;
}

uint64_t sub_218973DC0(uint64_t a1, uint64_t a2)
{
  sub_218972E2C();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  sub_218973FC4();
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 56);
  sub_218973C60(a1, v15);
  sub_218973C60(a2, &v15[v16]);
  v17 = *(v6 + 32);
  v17(v11, v15, v5);
  v17(v9, &v15[v16], v5);
  v18 = sub_219BF07B4();
  v20 = v19;
  if (v18 == sub_219BF07B4() && v20 == v21)
  {
    v23 = 1;
  }

  else
  {
    v23 = sub_219BF78F4();
  }

  v24 = *(v6 + 8);
  v24(v9, v5);
  v24(v11, v5);
  return v23 & 1;
}

void sub_218973FC4()
{
  if (!qword_27CC0B4F0)
  {
    type metadata accessor for SportsFavoritesModel();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0B4F0);
    }
  }
}

uint64_t type metadata accessor for SportsRecordTagFeedGroupConfigData()
{
  result = qword_280E9EAE0;
  if (!qword_280E9EAE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21897409C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189745CC(0, &qword_27CC0B4F8, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218974578();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 10;
    v13 = type metadata accessor for SportsRecordTagFeedGroupConfigData();
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218974304(void *a1)
{
  v3 = v1;
  sub_2189745CC(0, &qword_27CC0B508, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218974578();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for SportsRecordTagFeedGroupConfigData();
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2189744D0(uint64_t a1)
{
  v2 = sub_218974578();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21897450C(uint64_t a1)
{
  v2 = sub_218974578();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218974578()
{
  result = qword_27CC0B500;
  if (!qword_27CC0B500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B500);
  }

  return result;
}

void sub_2189745CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218974578();
    v7 = a3(a1, &type metadata for SportsRecordTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218974644()
{
  result = qword_27CC0B510;
  if (!qword_27CC0B510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B510);
  }

  return result;
}

unint64_t sub_21897469C()
{
  result = qword_27CC0B518;
  if (!qword_27CC0B518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B518);
  }

  return result;
}

unint64_t sub_2189746F4()
{
  result = qword_27CC0B520;
  if (!qword_27CC0B520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B520);
  }

  return result;
}

uint64_t sub_218974748(void *a1)
{
  sub_2189751A4(0, &qword_280E8C638, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218975090();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BED8D4();
  sub_218975208(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for CuratedTagFeedGroup();
    v9[14] = 1;
    sub_219BF77F4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_218974914@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_219BED8D4();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189751A4(0, &qword_27CC0B528, MEMORY[0x277D844C8]);
  v28 = v7;
  v25 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for CuratedTagFeedGroup();
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218975090();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v12;
  v13 = v25;
  v14 = v26;
  v30 = 0;
  sub_218975208(&unk_280E92630, MEMORY[0x277D31C50]);
  v15 = v27;
  sub_219BF7734();
  (*(v14 + 32))(v23, v6, v15);
  v29 = 1;
  v16 = sub_219BF76F4();
  v18 = v17;
  (*(v13 + 8))(v9, v28);
  v20 = v23;
  v19 = v24;
  v21 = &v23[*(v10 + 20)];
  *v21 = v16;
  v21[1] = v18;
  sub_2189750E4(v20, v19);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_218975148(v20);
}

uint64_t sub_218974C54()
{
  if (*v0)
  {
    return 0x65707974627573;
  }

  else
  {
    return 0x724774616D726F66;
  }
}

uint64_t sub_218974C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x724774616D726F66 && a2 == 0xEB0000000070756FLL;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65707974627573 && a2 == 0xE700000000000000)
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

uint64_t sub_218974D78(uint64_t a1)
{
  v2 = sub_218975090();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218974DB4(uint64_t a1)
{
  v2 = sub_218975090();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218974F20(uint64_t a1)
{
  result = sub_218975208(&unk_280ED1950, type metadata accessor for CuratedTagFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218974F78(void *a1)
{
  a1[1] = sub_218975208(&qword_280ED1988, type metadata accessor for CuratedTagFeedGroup);
  a1[2] = sub_218975208(&qword_280ED1960, type metadata accessor for CuratedTagFeedGroup);
  result = sub_218975208(&qword_280ED1970, type metadata accessor for CuratedTagFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_218975024(uint64_t a1)
{
  v2 = sub_218975208(&qword_280ED1988, type metadata accessor for CuratedTagFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_218975090()
{
  result = qword_280ED19A0;
  if (!qword_280ED19A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED19A0);
  }

  return result;
}

uint64_t sub_2189750E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratedTagFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218975148(uint64_t a1)
{
  v2 = type metadata accessor for CuratedTagFeedGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2189751A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218975090();
    v7 = a3(a1, &type metadata for CuratedTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218975208(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218975264()
{
  result = qword_27CC0B530;
  if (!qword_27CC0B530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B530);
  }

  return result;
}

unint64_t sub_2189752BC()
{
  result = qword_280ED1990;
  if (!qword_280ED1990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED1990);
  }

  return result;
}

unint64_t sub_218975314()
{
  result = qword_280ED1998;
  if (!qword_280ED1998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED1998);
  }

  return result;
}

unint64_t sub_218975388@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2189753BC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_2189753BC(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2189753D0()
{
  result = qword_27CC0B538;
  if (!qword_27CC0B538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B538);
  }

  return result;
}

uint64_t sub_218975434(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_218975490(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for MyMagazinesSectionHeaderSeparatorViewLayoutOptions()
{
  result = qword_27CC0B540;
  if (!qword_27CC0B540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218975564()
{
  result = sub_219BE8164();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2189755E0()
{
  sub_21879D924();
  swift_allocObject();
  sub_219BE30B4();
  sub_218975678();
  v0 = sub_219BE31C4();

  return v0;
}

uint64_t sub_218975678()
{
  if ([*(v0 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_featureAvailability) useFeedDifferentiationMode] && (v1 = objc_msgSend(*(v0 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_bundleSubscriptionManager), sel_cachedSubscription), v2 = objc_msgSend(v1, sel_isSubscribed), v1, v2))
  {
    sub_21879D924();
    swift_allocObject();
    return sub_219BE30B4();
  }

  else
  {
    sub_21879D924();
    swift_allocObject();
    return sub_219BE3014();
  }
}

void sub_21897574C()
{
  if (qword_280EE5F18 != -1)
  {
    swift_once();
  }

  v0 = sub_219BE5434();
  __swift_project_value_buffer(v0, qword_280F62538);
  v1 = sub_219BE5414();
  v2 = sub_219BF6214();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2186C1000, v1, v2, "Completed shortcut startup tasks", v3, 2u);
    MEMORY[0x21CECF960](v3, -1, -1);
  }
}

uint64_t sub_21897582C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_280EE5F18 != -1)
  {
    swift_once();
  }

  v7 = sub_219BE5434();
  __swift_project_value_buffer(v7, qword_280F62538);
  v8 = sub_219BE5414();
  v9 = sub_219BF6214();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2186C1000, v8, v9, "Shortcuts(V1) ShortcutsStartupTask running...", v10, 2u);
    MEMORY[0x21CECF960](v10, -1, -1);
  }

  swift_weakInit();
  sub_2189759F0(a5);
  swift_weakDestroy();
  [*(*__swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_shortcutService) *(a5 + OBJC:sel_validateShortcuts IVAR:? :? :? :? TtC7NewsUI220ShortcutsStartupTask:? shortcutService + 24)) + OBJC:? IVAR:? :? :? :? TtC7NewsUI215ShortcutService:?shortcutList)];
  v11 = sub_219BE5414();
  v12 = sub_219BF6214();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2186C1000, v11, v12, "Shortcuts(V1) ShortcutsStartupTask completed", v13, 2u);
    MEMORY[0x21CECF960](v13, -1, -1);
  }

  return a1();
}

void sub_2189759F0(uint64_t a1)
{
  sub_218976B44();
  if (qword_280EE5F18 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F62538);
  v3 = sub_219BE5414();
  v4 = sub_219BF6214();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2186C1000, v3, v4, "Shortcuts(V1): Favorites auto onboard", v5, 2u);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  v6 = (a1 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_shortcutsOnboardingManager);
  v7 = *(a1 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_shortcutsOnboardingManager + 24);
  v8 = *(a1 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_shortcutsOnboardingManager + 32);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_shortcutsOnboardingManager), v7);
  if ((*(v8 + 8))(v7, v8))
  {
    goto LABEL_8;
  }

  oslog = (a1 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_shortcutService);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_shortcutService), *(a1 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_shortcutService + 24));
  v9 = sub_218C552B4();
  if (v9 >> 62)
  {
    v22 = sub_219BF7214();

    if (!v22)
    {
      goto LABEL_14;
    }

LABEL_8:
    v11 = v6[3];
    v12 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v11);
    v13 = (*(v12 + 8))(v11, v12);
    __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_shortcutService), *(a1 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_shortcutService + 24));
    v14 = sub_218C552B4();
    if (v14 >> 62)
    {
      v15 = sub_219BF7214();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    osloga = sub_219BE5414();
    v16 = sub_219BF6214();
    if (os_log_type_enabled(osloga, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v117[0] = v18;
      *v17 = 136446466;
      v120 = v13;
      type metadata accessor for FCShortcutsOnboardingState(0);
      v19 = sub_219BF5484();
      v21 = sub_2186D1058(v19, v20, v117);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2050;
      *(v17 + 14) = v15;
      _os_log_impl(&dword_2186C1000, osloga, v16, "Shortcuts(V1): Favorites auto onboarding state %{public}s and shortcuts count %{public}ld", v17, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x21CECF960](v18, -1, -1);
      MEMORY[0x21CECF960](v17, -1, -1);

      return;
    }

    goto LABEL_41;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v10)
  {
    goto LABEL_8;
  }

LABEL_14:
  v112 = *(a1 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_configurationManager);
  v23 = [v112 configuration];
  if (!v23)
  {
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
    return;
  }

  v24 = v23;
  if (([v23 respondsToSelector_] & 1) == 0)
  {
LABEL_37:
    swift_unknownObjectRelease();
    goto LABEL_38;
  }

  v25 = [v24 autoOnboardShortcuts];
  swift_unknownObjectRelease();
  if ((v25 & 1) == 0)
  {
LABEL_38:
    osloga = sub_219BE5414();
    v38 = sub_219BF6214();
    if (!os_log_type_enabled(osloga, v38))
    {
LABEL_41:

      return;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Shortcuts(v1): ShortcutsStartupTask favorites will not auto onboard.";
LABEL_40:
    _os_log_impl(&dword_2186C1000, osloga, v38, v40, v39, 2u);
    MEMORY[0x21CECF960](v39, -1, -1);
    goto LABEL_41;
  }

  v26 = *(a1 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_subscriptionController);
  v27 = [v26 orderedCachedSubscribedTags];
  if (!v27)
  {
    osloga = sub_219BE5414();
    v38 = sub_219BF6214();
    if (!os_log_type_enabled(osloga, v38))
    {
      goto LABEL_41;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Shortcuts(v1): ShortcutsStartupTask will not auto onboard with orderedCachedSubscribedTags";
    goto LABEL_40;
  }

  v28 = v27;
  sub_2186D8870();
  v29 = sub_219BF5924();

  v117[0] = MEMORY[0x277D84F90];
  if (v29 >> 62)
  {
    goto LABEL_117;
  }

  for (i = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {

    if (i)
    {
      v31 = 0;
      while (1)
      {
        if ((v29 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x21CECE0F0](v31, v29);
          v33 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }
        }

        else
        {
          if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_116;
          }

          v32 = *(v29 + 8 * v31 + 32);
          swift_unknownObjectRetain();
          v33 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_36;
          }
        }

        v34 = [v32 identifier];
        if (!v34)
        {
          sub_219BF5414();
          v34 = sub_219BF53D4();
        }

        v35 = [v26 isChannelPermanentForTagID_];

        if (v35)
        {
          goto LABEL_22;
        }

        v36 = [v32 identifier];
        if (!v36)
        {
          sub_219BF5414();
          v36 = sub_219BF53D4();
        }

        v37 = [v26 hasAutoFavoriteSubscriptionForTagID_];

        if (v37)
        {
LABEL_22:
          swift_unknownObjectRelease();
        }

        else
        {
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
        }

        ++v31;
        if (v33 == i)
        {
          v41 = v117[0];
          goto LABEL_48;
        }
      }
    }

    v41 = MEMORY[0x277D84F90];
LABEL_48:
    swift_bridgeObjectRelease_n();

    v42 = [v112 configuration];
    if (!v42)
    {
      goto LABEL_133;
    }

    v43 = v42;
    if ([v42 respondsToSelector_])
    {
      v44 = [v43 minShortcutsOnboardCount];
    }

    else
    {
      v44 = 4;
    }

    swift_unknownObjectRelease();
    if (v41 < 0 || (v41 & 0x4000000000000000) != 0)
    {
      v29 = sub_219BF7214();
    }

    else
    {
      v29 = *(v41 + 16);
    }

    if (v29 < v44)
    {
      v45 = sub_219BE5414();
      v46 = sub_219BF6214();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 134349056;
        *(v47 + 4) = v44;
        _os_log_impl(&dword_2186C1000, v45, v46, "Shortcuts(v1): ShortcutsStartupTask will not auto onboard when subscription count less than %{public}lld tags.", v47, 0xCu);
        MEMORY[0x21CECF960](v47, -1, -1);
      }

      return;
    }

    v48 = *(a1 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_feedPersonalizing);
    v113 = v41;
    if (v29)
    {
      v117[0] = MEMORY[0x277D84F90];
      sub_21870B65C(0, v29 & ~(v29 >> 63), 0);
      if (v29 < 0)
      {
        __break(1u);
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      v49 = v117[0];
      v50 = v41 & 0xC000000000000001;
      if ((v41 & 0xC000000000000001) == 0 && v29 > *(v41 + 16))
      {
        goto LABEL_128;
      }

      v51 = 0;
      do
      {
        if (v50)
        {
          v52 = MEMORY[0x21CECE0F0](v51, v41);
        }

        else
        {
          v52 = *(v41 + 8 * v51 + 32);
          swift_unknownObjectRetain();
        }

        v53 = [v52 identifier];
        v54 = sub_219BF5414();
        v56 = v55;
        swift_unknownObjectRelease();

        v117[0] = v49;
        v58 = *(v49 + 16);
        v57 = *(v49 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_21870B65C((v57 > 1), v58 + 1, 1);
          v49 = v117[0];
        }

        ++v51;
        *(v49 + 16) = v58 + 1;
        v59 = v49 + 16 * v58;
        *(v59 + 32) = v54;
        *(v59 + 40) = v56;
        v41 = v113;
      }

      while (v29 != v51);
    }

    v60 = sub_219BF5904();

    v61 = [v48 rankTagIDsDescending_];

    if (v61)
    {
      a1 = sub_219BF5924();
    }

    else
    {
      a1 = MEMORY[0x277D84F90];
      if (v29)
      {
        v117[0] = MEMORY[0x277D84F90];
        sub_21870B65C(0, v29 & ~(v29 >> 63), 0);
        if (v29 < 0)
        {
          goto LABEL_130;
        }

        a1 = v117[0];
        v90 = v113;
        if ((v113 & 0xC000000000000001) == 0 && v29 > *(v113 + 16))
        {
          goto LABEL_131;
        }

        v91 = 0;
        do
        {
          if ((v113 & 0xC000000000000001) != 0)
          {
            v92 = MEMORY[0x21CECE0F0](v91, v90);
          }

          else
          {
            v92 = *(v90 + 8 * v91 + 32);
            swift_unknownObjectRetain();
          }

          v93 = [v92 identifier];
          v94 = sub_219BF5414();
          v96 = v95;
          swift_unknownObjectRelease();

          v117[0] = a1;
          v98 = *(a1 + 16);
          v97 = *(a1 + 24);
          if (v98 >= v97 >> 1)
          {
            sub_21870B65C((v97 > 1), v98 + 1, 1);
            a1 = v117[0];
          }

          ++v91;
          *(a1 + 16) = v98 + 1;
          v99 = a1 + 16 * v98;
          *(v99 + 32) = v94;
          *(v99 + 40) = v96;
          v90 = v113;
        }

        while (v29 != v91);
      }
    }

    v62 = [v112 configuration];
    if (!v62)
    {
      goto LABEL_134;
    }

    v63 = v62;
    v64 = ([v62 respondsToSelector_] & 1) != 0 ? objc_msgSend(v63, sel_shortcutsOnboardCount) : 6;
    swift_unknownObjectRelease();
    v65 = *(a1 + 16);
    if (!v65)
    {
      break;
    }

    v66 = 0;
    v67 = v65 - 1;
    v26 = (a1 + 40);
    while (v66 < *(a1 + 16))
    {
      v68 = *(v26 - 1);
      v29 = *v26;
      v69 = *__swift_project_boxed_opaque_existential_1(oslog, oslog[3].isa);

      if (!sub_218C556E8(v68, v29))
      {
        sub_218C553A4(v69);
      }

      __swift_project_boxed_opaque_existential_1(oslog, oslog[3].isa);
      v70 = sub_218C552B4();
      if (v70 >> 62)
      {
        v29 = v70;
        v71 = sub_219BF7214();
      }

      else
      {
        v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v26 += 2;
      if (v71 == v64 || v67 == v66++)
      {
        goto LABEL_92;
      }
    }

LABEL_116:
    __break(1u);
LABEL_117:
    ;
  }

LABEL_92:

  __swift_project_boxed_opaque_existential_1(oslog, oslog[3].isa);
  v73 = sub_218C552B4();
  if (v73 >> 62)
  {
    v100 = v73;
    v74 = sub_219BF7214();
    v73 = v100;
    if (!v74)
    {
      goto LABEL_120;
    }

LABEL_94:
    v75 = v73;
    v117[0] = MEMORY[0x277D84F90];
    sub_21870B65C(0, v74 & ~(v74 >> 63), 0);
    if ((v74 & 0x8000000000000000) == 0)
    {
      v76 = 0;
      v77 = v117[0];
      v78 = v75;
      oslogb = (v75 & 0xC000000000000001);
      v79 = v75;
      v80 = v74;
      do
      {
        if (oslogb)
        {
          v81 = MEMORY[0x21CECE0F0](v76, v78);
        }

        else
        {
          v81 = *(v78 + 8 * v76 + 32);
        }

        v82 = v81;
        v83 = [v81 identifier];
        v84 = sub_219BF5414();
        v86 = v85;

        v117[0] = v77;
        v88 = *(v77 + 16);
        v87 = *(v77 + 24);
        if (v88 >= v87 >> 1)
        {
          sub_21870B65C((v87 > 1), v88 + 1, 1);
          v77 = v117[0];
        }

        ++v76;
        *(v77 + 16) = v88 + 1;
        v89 = v77 + 16 * v88;
        *(v89 + 32) = v84;
        *(v89 + 40) = v86;
        v78 = v79;
      }

      while (v80 != v76);

      goto LABEL_121;
    }

LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v74)
  {
    goto LABEL_94;
  }

LABEL_120:

  v77 = MEMORY[0x277D84F90];
LABEL_121:

  v101 = sub_219BE5414();
  v102 = sub_219BF6214();

  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v117[0] = v104;
    *v103 = 136446210;
    v105 = MEMORY[0x21CECC6D0](v77, MEMORY[0x277D837D0]);
    v107 = v106;

    v108 = sub_2186D1058(v105, v107, v117);

    *(v103 + 4) = v108;
    _os_log_impl(&dword_2186C1000, v101, v102, "Shortcuts(v1): ShortcutsStartupTask auto onboarded with %{public}s favorites", v103, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v104);
    MEMORY[0x21CECF960](v104, -1, -1);
    MEMORY[0x21CECF960](v103, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_218718690(Strong + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_shortcutsOnboardingManager, v117);

    v110 = v118;
    v111 = v119;
    __swift_project_boxed_opaque_existential_1(v117, v118);
    (*(v111 + 16))(1, v110, v111);
    __swift_destroy_boxed_opaque_existential_1(v117);
  }
}

uint64_t sub_21897681C(uint64_t (*a1)(void))
{
  if (qword_280EE5F18 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F62538);
  v3 = sub_219BE5414();
  v4 = sub_219BF6214();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2186C1000, v3, v4, "Shortcuts(V2) ShortcutsStartupTask running...", v5, 2u);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  if (qword_27CC084A0 != -1)
  {
    swift_once();
  }

  sub_218977404(&qword_27CC0B610);
  sub_219BDC7D4();
  if (v13 == 1)
  {
    v6 = sub_219BE5414();
    v7 = sub_219BF6214();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2186C1000, v6, v7, "Shortcuts(V2) ShortcutsStartupTask resetting customize affordance display launch count", v8, 2u);
      MEMORY[0x21CECF960](v8, -1, -1);
    }

    if (qword_27CC08498 != -1)
    {
      swift_once();
    }

    sub_218977404(&qword_27CC0B618);
    sub_219BDCA54();
    sub_219BDCA54();
  }

  v9 = sub_219BE5414();
  v10 = sub_219BF6214();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2186C1000, v9, v10, "Shortcuts(V2) ShortcutsStartupTask completed", v11, 2u);
    MEMORY[0x21CECF960](v11, -1, -1);
  }

  return a1();
}

void sub_218976B44()
{
  v2 = v0;
  v3 = (v0 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_shortcutService);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_shortcutService), *(v0 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_shortcutService + 24));
  v4 = sub_218C552B4();
  if (v4 >> 62)
  {
    v5 = sub_219BF7214();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 != 1)
  {
    return;
  }

  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v6 = sub_218C552B4();
  if (v6 >> 62)
  {
    v46 = v6;
    v47 = sub_219BF7214();
    v6 = v46;
    if (v47)
    {
LABEL_6:
      if ((v6 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x21CECE0F0](0);
      }

      else
      {
        if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_40;
        }

        v7 = *(v6 + 32);
      }

      v48 = v7;

      v1 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
      v8 = [v48 identifier];
      v9 = sub_219BF5414();
      v11 = v10;
      v12 = [*(v2 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_configurationManager) configuration];
      if (!v12)
      {
        __break(1u);
        return;
      }

      v13 = v12;

      v14 = [v13 editorialChannelID];
      swift_unknownObjectRelease();
      if (v14)
      {
        v15 = sub_219BF5414();
        v17 = v16;

        if (v9 == v15 && v11 == v17)
        {
        }

        else
        {
          v19 = sub_219BF78F4();

          if ((v19 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        v2 = (v2 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_shortcutsOnboardingManager);
        v20 = v2[3];
        v21 = v2[4];
        __swift_project_boxed_opaque_existential_1(v2, v20);
        if ((*(v21 + 8))(v20, v21) != 2)
        {
          if (qword_280EE5F18 == -1)
          {
LABEL_22:
            v22 = sub_219BE5434();
            __swift_project_value_buffer(v22, qword_280F62538);
            v48 = v48;
            v23 = sub_219BE5414();
            v24 = sub_219BF6214();

            if (os_log_type_enabled(v23, v24))
            {
              v25 = swift_slowAlloc();
              v26 = swift_slowAlloc();
              v49 = v26;
              *v25 = 136446210;
              v27 = [v48 v1[278]];
              v28 = sub_219BF5414();
              v30 = v29;

              v31 = sub_2186D1058(v28, v30, &v49);

              *(v25 + 4) = v31;
              v1 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
              _os_log_impl(&dword_2186C1000, v23, v24, "Shortcuts(V1): ShortcutsStartupTask will offboard user from shortcuts and clear shortcut list when the only shortcut is tagID=%{public}s and shortcut state is not onboarded", v25, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v26);
              MEMORY[0x21CECF960](v26, -1, -1);
              MEMORY[0x21CECF960](v25, -1, -1);
            }

            v32 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
            v33 = [v48 v1[278]];
            v34 = sub_219BF5414();
            v36 = v35;

            v37 = *v32;
            if (sub_218C556E8(v34, v36))
            {

              v38 = sub_219BE5414();
              v39 = sub_219BF6214();

              if (os_log_type_enabled(v38, v39))
              {
                v40 = swift_slowAlloc();
                v41 = swift_slowAlloc();
                v49 = v41;
                *v40 = 136315138;
                *(v40 + 4) = sub_2186D1058(v34, v36, &v49);
                _os_log_impl(&dword_2186C1000, v38, v39, "Removed favorited shortcut=%s", v40, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v41);
                MEMORY[0x21CECF960](v41, -1, -1);
                MEMORY[0x21CECF960](v40, -1, -1);
              }

              v42 = *(v37 + OBJC_IVAR____TtC7NewsUI215ShortcutService_shortcutList);
              v43 = sub_219BF53D4();
              [v42 removeShortcutWithIdentifier_];
            }

            else
            {
            }

            v44 = v2[3];
            v45 = v2[4];
            __swift_project_boxed_opaque_existential_1(v2, v44);
            (*(v45 + 24))(v44, v45);
            goto LABEL_30;
          }

LABEL_40:
          swift_once();
          goto LABEL_22;
        }
      }

      else
      {
      }

LABEL_30:

      return;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_6;
  }
}

uint64_t sub_2189770F0()
{
  v1 = OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_executionPhase;
  v2 = sub_219BE2C14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_shortcutService);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI220ShortcutsStartupTask_shortcutsOnboardingManager);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_2189771C0()
{
  sub_2189770F0();

  return swift_deallocClassInstance();
}

uint64_t sub_218977220()
{
  sub_218977394();
  sub_219BE3204();
  v0 = sub_219BE2E54();
  v1 = sub_219BE2F74();

  return v1;
}

void sub_218977394()
{
  if (!qword_280E8B4D8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8B4D8);
    }
  }
}

uint64_t sub_218977404(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ShortcutsStartupTask();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218977448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_219BDFFD4();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v42 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_219BDE384();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v38 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218977BEC(0, &qword_27CC0B620, MEMORY[0x277D2FFA0]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - v8;
  sub_218977BEC(0, &qword_280EE8648, MEMORY[0x277D2DDE0]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = sub_219BDF884();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v40 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BDE394();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v38 - v21;
  v23 = COERCE_DOUBLE(sub_219BDE364());
  if (v24)
  {
    v39 = 0;
  }

  else
  {
    if ((~*&v23 & 0x7FF0000000000000) == 0)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v23 <= -2147483650.0)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v23 >= 2147483650.0)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v39 = v23;
  }

  sub_219BDE344();
  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v25 >= 9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  sub_219BDE354();
  (*(v17 + 16))(v20, v22, v16);
  v26 = (*(v17 + 88))(v20, v16);
  if (v26 == *MEMORY[0x277D2FFB8])
  {
    v27 = MEMORY[0x277D2DDF0];
  }

  else if (v26 == *MEMORY[0x277D2FFC0])
  {
    v27 = MEMORY[0x277D2DDF8];
  }

  else if (v26 == *MEMORY[0x277D2FFD0])
  {
    v27 = MEMORY[0x277D2DE08];
  }

  else if (v26 == *MEMORY[0x277D2FFB0])
  {
    v27 = MEMORY[0x277D2DE20];
  }

  else if (v26 == *MEMORY[0x277D2FFA8])
  {
    v27 = MEMORY[0x277D2DE10];
  }

  else
  {
    if (v26 != *MEMORY[0x277D2FFC8])
    {
      goto LABEL_38;
    }

    v27 = MEMORY[0x277D2DE00];
  }

  (*(v17 + 8))(v22, v16);
  (*(v14 + 104))(v40, *v27, v13);
  sub_219BDE334();
  v28 = v41;
  if ((*(v5 + 48))(v9, 1, v41) != 1)
  {
    v30 = v38;
    (*(v5 + 16))(v38, v9, v28);
    v31 = (*(v5 + 88))(v30, v28);
    if (v31 == *MEMORY[0x277D2FF90])
    {
      v32 = MEMORY[0x277D2DDD0];
LABEL_30:
      v33 = *v32;
      v34 = sub_219BDF874();
      v35 = *(v34 - 8);
      (*(v35 + 104))(v12, v33, v34);
      (*(v5 + 8))(v9, v28);
      (*(v35 + 56))(v12, 0, 1, v34);
      goto LABEL_31;
    }

    if (v31 == *MEMORY[0x277D2FF98])
    {
      v32 = MEMORY[0x277D2DDD8];
      goto LABEL_30;
    }

    if (v31 == *MEMORY[0x277D2FF88])
    {
      v32 = MEMORY[0x277D2DDC8];
      goto LABEL_30;
    }

    while (1)
    {
LABEL_38:
      sub_219BF7514();
      __break(1u);
    }
  }

  sub_218977C40(v9);
  v29 = sub_219BDF874();
  (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
LABEL_31:
  (*(v43 + 104))(v42, *MEMORY[0x277D2E2B0], v44);
  sub_219BE0454();
  v36 = sub_219BDE374();
  return (*(*(v36 - 8) + 8))(a1, v36);
}

void sub_218977BEC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_218977C40(uint64_t a1)
{
  sub_218977BEC(0, &qword_27CC0B620, MEMORY[0x277D2FFA0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}