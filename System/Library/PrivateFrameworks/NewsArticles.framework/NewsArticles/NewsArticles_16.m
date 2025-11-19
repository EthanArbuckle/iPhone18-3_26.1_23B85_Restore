void sub_1D7B35334()
{
  if (!qword_1EC9E5120)
  {
    sub_1D7B34584();
    sub_1D7996FA4(&qword_1EC9E5090, sub_1D7B34584);
    v0 = sub_1D7D2B40C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E5120);
    }
  }
}

void sub_1D7B353C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for EndOfRecipeSectionDescriptor();
    v8[1] = type metadata accessor for EndOfRecipeModel();
    v8[2] = &type metadata for EndOfRecipeLayoutSectionDescriptor;
    v8[3] = type metadata accessor for EndOfRecipeLayoutModel();
    v8[4] = sub_1D7996FA4(&unk_1EE0C4B98, type metadata accessor for EndOfRecipeSectionDescriptor);
    v8[5] = sub_1D7996FA4(&qword_1EE0CA100, type metadata accessor for EndOfRecipeModel);
    v8[6] = sub_1D7A2B544();
    v8[7] = sub_1D7996FA4(&unk_1EC9E5340, type metadata accessor for EndOfRecipeLayoutModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D7B35528()
{
  if (!qword_1EC9E5130)
  {
    type metadata accessor for EndOfRecipeModelFactory();
    sub_1D7996FA4(&qword_1EC9E5138, type metadata accessor for EndOfRecipeModelFactory);
    v0 = sub_1D7D2F3DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E5130);
    }
  }
}

void sub_1D7B355BC()
{
  if (!qword_1EE0BE930)
  {
    sub_1D798C468(255, &unk_1EE0BFEA0);
    v0 = sub_1D7D3191C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BE930);
    }
  }
}

void sub_1D7B35628()
{
  if (!qword_1EC9E5178)
  {
    sub_1D7996944(255);
    sub_1D7996FA4(&qword_1EC9E4F68, sub_1D7996944);
    sub_1D7996FA4(&qword_1EC9E2A48, type metadata accessor for EndOfRecipeModel);
    v0 = sub_1D7D2E99C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E5178);
    }
  }
}

void sub_1D7B35700()
{
  if (!qword_1EC9E5188)
  {
    sub_1D7996944(255);
    type metadata accessor for EndOfRecipeFeedServiceConfig();
    sub_1D7996FA4(&qword_1EC9E4F68, sub_1D7996944);
    sub_1D7996FA4(&unk_1EE0CD290, type metadata accessor for EndOfRecipeFeedServiceConfig);
    sub_1D7996FA4(&qword_1EC9E2A48, type metadata accessor for EndOfRecipeModel);
    v0 = sub_1D7D2EA1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E5188);
    }
  }
}

void sub_1D7B35830()
{
  if (!qword_1EC9E5198)
  {
    sub_1D7996944(255);
    sub_1D7996FA4(&qword_1EC9E4F68, sub_1D7996944);
    v0 = sub_1D7D2B67C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E5198);
    }
  }
}

void sub_1D7B358CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1D7B35938()
{
  if (!qword_1EE0BFC90)
  {
    sub_1D7D2C12C();
    v0 = sub_1D7D3130C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BFC90);
    }
  }
}

void sub_1D7B35990()
{
  if (!qword_1EC9E51B8)
  {
    type metadata accessor for EndOfRecipeSectionDescriptor();
    type metadata accessor for EndOfRecipeModel();
    sub_1D7996FA4(&unk_1EE0C4B98, type metadata accessor for EndOfRecipeSectionDescriptor);
    sub_1D7996FA4(&qword_1EE0CA100, type metadata accessor for EndOfRecipeModel);
    v0 = sub_1D7D2BB9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E51B8);
    }
  }
}

void sub_1D7B35A7C()
{
  if (!qword_1EC9E51C0)
  {
    type metadata accessor for EndOfRecipeSectionDescriptor();
    type metadata accessor for EndOfRecipeModel();
    sub_1D7996FA4(&unk_1EE0C4B98, type metadata accessor for EndOfRecipeSectionDescriptor);
    sub_1D7996FA4(&qword_1EE0CA100, type metadata accessor for EndOfRecipeModel);
    v0 = sub_1D7D2B6CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E51C0);
    }
  }
}

void sub_1D7B35B68()
{
  if (!qword_1EC9E51D8)
  {
    sub_1D7B35BC4();
    v0 = sub_1D7D2F13C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E51D8);
    }
  }
}

unint64_t sub_1D7B35BC4()
{
  result = qword_1EC9E51E0;
  if (!qword_1EC9E51E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E51E0);
  }

  return result;
}

void sub_1D7B35C20()
{
  if (!qword_1EC9E51F0)
  {
    type metadata accessor for EndOfRecipeBlueprintModifierFactory();
    sub_1D7996FA4(&qword_1EC9E51F8, type metadata accessor for EndOfRecipeBlueprintModifierFactory);
    v0 = type metadata accessor for EndOfRecipeInteractor();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E51F0);
    }
  }
}

char *sub_1D7B35CB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5)
{
  ObjectType = swift_getObjectType();
  v19[3] = type metadata accessor for EndOfRecipeStyler();
  v19[4] = &off_1F52A5FB8;
  v19[0] = a1;
  sub_1D799CC84(v19, &a5[OBJC_IVAR____TtC12NewsArticles25EndOfRecipeViewController_styler]);
  v11 = &a5[OBJC_IVAR____TtC12NewsArticles25EndOfRecipeViewController_eventHandler];
  *v11 = a2;
  *(v11 + 1) = a3;
  *&a5[OBJC_IVAR____TtC12NewsArticles25EndOfRecipeViewController_blueprintViewController] = a4;
  v18.receiver = a5;
  v18.super_class = ObjectType;
  swift_unknownObjectRetain();
  v12 = a4;
  v13 = objc_msgSendSuper2(&v18, sel_initWithNibName_bundle_, 0, 0);
  *(*&v13[OBJC_IVAR____TtC12NewsArticles25EndOfRecipeViewController_eventHandler] + 24) = &off_1F52A5F40;
  swift_unknownObjectWeakAssign();
  v14 = *&v13[OBJC_IVAR____TtC12NewsArticles25EndOfRecipeViewController_blueprintViewController];
  v15 = v13;
  v16 = v14;
  sub_1D7D2B34C();

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v15;
}

void *sub_1D7B35DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v15[3] = type metadata accessor for EndOfRecipeRouter();
  v15[4] = &off_1F52A6A98;
  v15[0] = a3;
  a6[3] = 0;
  swift_unknownObjectWeakInit();
  a6[4] = a1;
  a6[5] = a2;
  sub_1D799CC84(v15, (a6 + 6));
  a6[11] = a4;
  a6[12] = a5;
  ObjectType = swift_getObjectType();
  v13 = *(a2 + 16);
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v13(a6, &off_1F52A68B8, ObjectType, a2);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return a6;
}

uint64_t sub_1D7B35EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v3 = type metadata accessor for EndOfRecipeLayoutSectionDescriptor.Footer(0);
  v44 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v45 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v46 = &v44 - v8;
  v9 = sub_1D7D2EA2C();
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for EndOfRecipeLayoutSectionDescriptor.Header(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v44 - v20;
  v22 = sub_1D7D2BC2C();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A2B48C();
  sub_1D7D2B04C();
  v27 = v53;
  v52 = v54;
  v47 = v55;
  sub_1D7D2BA6C();
  v28 = (*(v23 + 88))(v26, v22);
  if (v28 == *MEMORY[0x1E69D8478])
  {
    v29 = sub_1D7D2BA7C();
    if ((v29 & 0x8000000000000000) == 0)
    {
      if (v29 < *(v27 + 16))
      {
        sub_1D7B365B0(v27 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v29, v21, type metadata accessor for EndOfRecipeLayoutSectionDescriptor.Header);
        sub_1D7B365B0(v21, v17, type metadata accessor for EndOfRecipeLayoutSectionDescriptor.Header);
        v31 = v50;
        v30 = v51;
        (*(v50 + 32))(v12, v17, v51);
        __swift_project_boxed_opaque_existential_1((v48 + 16), *(v48 + 40));
        v32 = sub_1D7D2EA4C();

        (*(v31 + 8))(v12, v30);
        v33 = v21;
        v34 = type metadata accessor for EndOfRecipeLayoutSectionDescriptor.Header;
LABEL_10:
        sub_1D7B36618(v33, v34);
        return v32;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v28 == *MEMORY[0x1E69D8470])
  {
    v35 = sub_1D7D2BA7C();
    v36 = *(v27 + 16);
    v37 = __OFSUB__(v35, v36);
    v38 = v35 - v36;
    if (!v37)
    {
      if ((v38 & 0x8000000000000000) == 0)
      {
        if (v38 < *(v52 + 16))
        {
          v39 = v46;
          sub_1D7B365B0(v52 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v38, v46, type metadata accessor for EndOfRecipeLayoutSectionDescriptor.Footer);
          v40 = v45;
          sub_1D7B365B0(v39, v45, type metadata accessor for EndOfRecipeLayoutSectionDescriptor.Footer);
          v42 = v50;
          v41 = v51;
          (*(v50 + 32))(v12, v40, v51);
          __swift_project_boxed_opaque_existential_1((v48 + 16), *(v48 + 40));
          v32 = sub_1D7D2EA4C();

          (*(v42 + 8))(v12, v41);
          v33 = v39;
          v34 = type metadata accessor for EndOfRecipeLayoutSectionDescriptor.Footer;
          goto LABEL_10;
        }

        goto LABEL_15;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    goto LABEL_12;
  }

LABEL_16:
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

uint64_t sub_1D7B365B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7B36618(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7B3672C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7B36774@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v19[1] = a1;
  v19[2] = a2;
  v20 = a3;
  v3 = sub_1D7D2E65C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7D2E8FC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for EndOfRecipeLayoutModel();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A5FB54();
  sub_1D7D2ABBC();
  (*(v9 + 32))(v12, v16, v8);
  swift_getObjectType();
  sub_1D7D2E4BC();
  v17 = sub_1D7D2E64C();
  (*(v4 + 8))(v7, v3);
  result = (*(v9 + 8))(v12, v8);
  *v20 = v17;
  return result;
}

uint64_t type metadata accessor for EndOfRecipeLayoutModel()
{
  result = qword_1EC9E5200;
  if (!qword_1EC9E5200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1D7B369EC()
{
  v1 = sub_1D7D2E8FC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B3714C(v0, v9);
  (*(v2 + 32))(v5, v9, v1);
  sub_1D7D2E8EC();
  v11 = v10;
  (*(v2 + 8))(v5, v1);
  return v11;
}

uint64_t sub_1D7B36B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8, a2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B3714C(v3, v6);
  v7 = sub_1D7D2E8FC();
  a3[3] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  return (*(*(v7 - 8) + 32))(boxed_opaque_existential_1, v6, v7);
}

uint64_t sub_1D7B36C3C(uint64_t a1)
{
  v2 = sub_1D7B371B0(&qword_1EC9E5058);

  return MEMORY[0x1EEE47CC8](a1, v2);
}

uint64_t sub_1D7B36CE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_1D7D2E8FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B3714C(v3, v13);
  v14 = (*(v6 + 32))(v9, v13, v5);
  v15 = a3(v14);
  (*(v6 + 8))(v9, v5);
  return v15;
}

uint64_t sub_1D7B36EA4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = sub_1D7D2E8FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B3714C(v3, v13);
  v14 = (*(v6 + 32))(v9, v13, v5);
  a3(v14);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D7B37008(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_1D7D2E8FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B3714C(v3, v13);
  v14 = (*(v6 + 32))(v9, v13, v5);
  v15 = a3(v14);
  (*(v6 + 8))(v9, v5);
  return v15;
}

uint64_t sub_1D7B3714C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndOfRecipeLayoutModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7B371B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EndOfRecipeLayoutModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7B37204(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v90 = a3;
  v91 = a2;
  sub_1D7B3846C(0, &qword_1EC9E2008, MEMORY[0x1E69D7ED8]);
  v89 = v5;
  v88 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v87 = v85 - v7;
  v114 = sub_1D7D2EC6C();
  v116 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v8);
  v10 = v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A2B3A0();
  v12 = v11;
  v112 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v94 = v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v100 = v85 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v99 = v85 - v20;
  v21 = type metadata accessor for EndOfRecipeFeedGroup();
  v95 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v93 = v85 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v98 = v85 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v97 = v85 - v33;
  sub_1D7AAF70C();
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  sub_1D7B3846C(0, &qword_1EC9E2710, MEMORY[0x1E69D87F8]);
  v37 = v36;
  v86 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v38);
  v40 = v85 - v39;
  v41 = sub_1D7997034(&qword_1EC9E3AA8, sub_1D7A2B3A0);
  v42 = sub_1D7997034(&qword_1EC9E3AB0, sub_1D7A2B3A0);
  MEMORY[0x1DA706A70](MEMORY[0x1E69E7CC0], v12, v41, v42);
  v43 = type metadata accessor for EndOfRecipeSectionDescriptor();
  v44 = type metadata accessor for EndOfRecipeModel();
  v45 = sub_1D7997034(&unk_1EE0C4B98, type metadata accessor for EndOfRecipeSectionDescriptor);
  v46 = sub_1D7997034(&qword_1EE0CA100, type metadata accessor for EndOfRecipeModel);
  v85[4] = v43;
  v85[3] = v44;
  v85[2] = v45;
  v47 = v10;
  v85[1] = v46;
  result = sub_1D7D2C7FC();
  v106 = v4[2];
  v104 = *(v106 + 16);
  if (!v104)
  {
LABEL_41:
    v84 = v87;
    sub_1D7D2B2AC();
    v91(v84);
    (*(v88 + 8))(v84, v89);
    return (*(v86 + 8))(v40, v37);
  }

  v49 = 0;
  v102 = v116 + 8;
  v103 = v106 + 32;
  v101 = (v112 + 1);
  v112 = v4;
  v113 = v12;
  v92 = v24;
  v115 = v37;
  v111 = v40;
  v105 = v47;
  while (v49 < *(v106 + 16))
  {
    v55 = (v103 + 32 * v49);
    v56 = v55[2];
    v108 = v55[1];
    v57 = v55[3];
    v58 = v56 >> 61;
    if ((v56 >> 61) <= 1)
    {
      v107 = v49;
      v116 = v57;
      if (!v58)
      {
        sub_1D7B38620();
        v68 = swift_projectBox();
        v69 = v97;
        sub_1D7B38560(v68, v97);
        __swift_project_boxed_opaque_existential_1(v4 + 3, v4[6]);
        v110 = type metadata accessor for EndOfRecipeFeedServiceConfig();
        sub_1D7997034(&unk_1EE0CD290, type metadata accessor for EndOfRecipeFeedServiceConfig);
        swift_retain_n();

        sub_1D7D2E26C();
        v37 = v115;
        sub_1D7BE3F8C(v69, v57, v47, v99);
        (*v102)(v47, v114);
        sub_1D7D2C77C();
        sub_1D7D2E5EC();
        sub_1D7D2E5DC();
        v70 = sub_1D7D2E5BC();

        if (v70)
        {
          *(&v118 + 1) = sub_1D7D2DEEC();
          *&v117 = v70;
        }

        else
        {
          v117 = 0u;
          v118 = 0u;
        }

        v49 = v107;
        v82 = v101;
        sub_1D7D2C7EC();

        (*v82)(v99, v113);
        sub_1D7B385C4(v97);

        goto LABEL_7;
      }

      v72 = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v96 = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v73 = *(v72 + 16);
      v109 = v56 & 0x1FFFFFFFFFFFFFFFLL;
      if (v73)
      {
        v74 = v95;
        v75 = v72 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
        swift_retain_n();

        v110 = *(v74 + 72);
        v76 = v93;
        v77 = v105;
        v78 = v94;
        v80 = v101;
        v79 = v102;
        do
        {
          sub_1D7B38560(v75, v76);
          __swift_project_boxed_opaque_existential_1(v4 + 3, v4[6]);
          type metadata accessor for EndOfRecipeFeedServiceConfig();
          sub_1D7997034(&unk_1EE0CD290, type metadata accessor for EndOfRecipeFeedServiceConfig);
          v4 = v112;
          sub_1D7D2E26C();
          sub_1D7BE3F8C(v76, v116, v77, v78);
          sub_1D7B385C4(v76);
          (*v79)(v77, v114);
          sub_1D7D2C77C();
          (*v80)(v78, v113);
          v75 += v110;
          --v73;
        }

        while (v73);
      }

      else
      {
        swift_retain_n();
      }

      sub_1D7D2E5EC();

      sub_1D7D2E5DC();
      type metadata accessor for EndOfRecipeFeedServiceConfig();
      sub_1D7997034(&unk_1EE0CD290, type metadata accessor for EndOfRecipeFeedServiceConfig);
      v83 = sub_1D7D2E5BC();

      if (v83)
      {
        *(&v118 + 1) = sub_1D7D2DEEC();
        *&v117 = v83;
      }

      else
      {
        v117 = 0u;
        v118 = 0u;
      }

      v37 = v115;
      v40 = v111;
      v47 = v105;
      v49 = v107;
      sub_1D7D2C7EC();

      goto LABEL_40;
    }

    if (v58 == 2)
    {
      v107 = v49;
      sub_1D7B38620();
      v50 = swift_projectBox();
      v51 = v98;
      sub_1D7B38560(v50, v98);
      __swift_project_boxed_opaque_existential_1(v4 + 3, v4[6]);
      v110 = type metadata accessor for EndOfRecipeFeedServiceConfig();
      sub_1D7997034(&unk_1EE0CD290, type metadata accessor for EndOfRecipeFeedServiceConfig);
      swift_retain_n();

      sub_1D7D2E26C();
      v116 = v57;
      sub_1D7BE3F8C(v51, v57, v47, v100);
      (*v102)(v47, v114);
      v40 = v111;
      sub_1D7D2C77C();
      sub_1D7D2E5EC();
      sub_1D7D2E5DC();
      v52 = sub_1D7D2E5BC();

      if (v52)
      {
        *(&v118 + 1) = sub_1D7D2DEEC();
        *&v117 = v52;
      }

      else
      {
        v117 = 0u;
        v118 = 0u;
      }

      v49 = v107;
      v53 = v101;
      v54 = v113;
      sub_1D7D2C7EC();

      (*v53)(v100, v54);
      sub_1D7B385C4(v98);
    }

    else
    {
      if (v58 == 3)
      {
        v107 = v49;
        v59 = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v110 = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v60 = *(v59 + 16);
        v116 = v57;
        v96 = v56 & 0x1FFFFFFFFFFFFFFFLL;
        if (v60)
        {
          v61 = v95;
          v62 = v59 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
          swift_retain_n();

          v109 = *(v61 + 72);
          v63 = v92;
          v64 = v94;
          v65 = v105;
          v67 = v101;
          v66 = v102;
          do
          {
            sub_1D7B38560(v62, v63);
            __swift_project_boxed_opaque_existential_1(v4 + 3, v4[6]);
            type metadata accessor for EndOfRecipeFeedServiceConfig();
            sub_1D7997034(&unk_1EE0CD290, type metadata accessor for EndOfRecipeFeedServiceConfig);
            v4 = v112;
            sub_1D7D2E26C();
            sub_1D7BE3F8C(v63, v116, v65, v64);
            sub_1D7B385C4(v63);
            (*v66)(v65, v114);
            sub_1D7D2C77C();
            (*v67)(v64, v113);
            v62 += v109;
            --v60;
          }

          while (v60);
        }

        else
        {
          swift_retain_n();
        }

        sub_1D7D2E5EC();

        sub_1D7D2E5DC();
        type metadata accessor for EndOfRecipeFeedServiceConfig();
        sub_1D7997034(&unk_1EE0CD290, type metadata accessor for EndOfRecipeFeedServiceConfig);
        v81 = sub_1D7D2E5BC();

        if (v81)
        {
          *(&v118 + 1) = sub_1D7D2DEEC();
          *&v117 = v81;
        }

        else
        {
          v117 = 0u;
          v118 = 0u;
        }

        v47 = v105;
        v37 = v115;
        v40 = v111;
        v49 = v107;
        sub_1D7D2C7EC();

LABEL_40:

        goto LABEL_7;
      }

      sub_1D7D2E5EC();

      swift_retain_n();

      sub_1D7D2E5DC();
      type metadata accessor for EndOfRecipeFeedServiceConfig();
      sub_1D7997034(&unk_1EE0CD290, type metadata accessor for EndOfRecipeFeedServiceConfig);
      v71 = sub_1D7D2E5BC();

      if (v71)
      {
        *(&v118 + 1) = sub_1D7D2DEEC();
        *&v117 = v71;
      }

      else
      {
        v117 = 0u;
        v118 = 0u;
      }

      sub_1D7D2C7EC();
    }

    v47 = v105;
LABEL_7:
    if (++v49 == v104)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7B3824C()
{
  sub_1D7B38724();
  v0 = sub_1D7D2B08C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7D3B4E0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E69D7DE8], v0);
  v6(v5 + v2, *MEMORY[0x1E69D7DF0], v0);
  v7 = sub_1D7B22FA4(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v7;
}

unint64_t sub_1D7B38388()
{
  result = qword_1EC9E5210;
  if (!qword_1EC9E5210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E5210);
  }

  return result;
}

void sub_1D7B3846C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for EndOfRecipeSectionDescriptor();
    v8[1] = type metadata accessor for EndOfRecipeModel();
    v8[2] = sub_1D7997034(&unk_1EE0C4B98, type metadata accessor for EndOfRecipeSectionDescriptor);
    v8[3] = sub_1D7997034(&qword_1EE0CA100, type metadata accessor for EndOfRecipeModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D7B38560(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndOfRecipeFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7B385C4(uint64_t a1)
{
  v2 = type metadata accessor for EndOfRecipeFeedGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7B38620()
{
  if (!qword_1EC9E5218)
  {
    type metadata accessor for EndOfRecipeFeedGroup();
    sub_1D7B38690();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E5218);
    }
  }
}

void sub_1D7B38690()
{
  if (!qword_1EC9E5220)
  {
    type metadata accessor for EndOfRecipeFeedServiceConfig();
    sub_1D7997034(&unk_1EE0CD290, type metadata accessor for EndOfRecipeFeedServiceConfig);
    v0 = sub_1D7D2E27C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E5220);
    }
  }
}

void sub_1D7B38724()
{
  if (!qword_1EE0BE938)
  {
    sub_1D7D2B08C();
    v0 = sub_1D7D3191C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BE938);
    }
  }
}

uint64_t static RecipeViewerBlueprint.RecipeItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 48);
  v23 = *(a1 + 32);
  v24 = v3;
  v4 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 48);
  v27 = *(a2 + 32);
  v28 = v6;
  v7 = *(a2 + 16);
  v26[0] = *a2;
  v26[1] = v7;
  v8 = *(a1 + 48);
  v19 = v23;
  v20 = v8;
  v17 = v22[0];
  v18 = v2;
  v9 = *(a2 + 48);
  v14 = v27;
  v15 = v9;
  v25 = *(a1 + 64);
  v29 = *(a2 + 64);
  v21 = *(a1 + 64);
  v16 = *(a2 + 64);
  v12 = v26[0];
  v13 = v5;
  sub_1D7A4DE6C(v22, v32);
  sub_1D7A4DE6C(v26, v32);
  v10 = _s12NewsArticles21RecipeViewerBlueprintO0C4ItemV5ModelO2eeoiySbAG_AGtFZ_0(&v17, &v12);
  v30[2] = v14;
  v30[3] = v15;
  v31 = v16;
  v30[0] = v12;
  v30[1] = v13;
  sub_1D7A4DEC8(v30);
  v32[2] = v19;
  v32[3] = v20;
  v33 = v21;
  v32[0] = v17;
  v32[1] = v18;
  sub_1D7A4DEC8(v32);
  return v10 & 1;
}

uint64_t RecipeViewerBlueprint.RecipeItem.model.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1D7A4DE6C(v8, v7);
}

__n128 RecipeViewerBlueprint.RecipeItem.init(model:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

uint64_t RecipeViewerBlueprint.RecipeItem.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D7B3891C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 48);
  v23 = *(a1 + 32);
  v24 = v3;
  v4 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 48);
  v27 = *(a2 + 32);
  v28 = v6;
  v7 = *(a2 + 16);
  v26[0] = *a2;
  v26[1] = v7;
  v8 = *(a1 + 48);
  v19 = v23;
  v20 = v8;
  v17 = v22[0];
  v18 = v2;
  v9 = *(a2 + 48);
  v14 = v27;
  v15 = v9;
  v25 = *(a1 + 64);
  v29 = *(a2 + 64);
  v21 = *(a1 + 64);
  v16 = *(a2 + 64);
  v12 = v26[0];
  v13 = v5;
  sub_1D7A4DE6C(v22, v32);
  sub_1D7A4DE6C(v26, v32);
  v10 = _s12NewsArticles21RecipeViewerBlueprintO0C4ItemV5ModelO2eeoiySbAG_AGtFZ_0(&v17, &v12);
  v30[2] = v14;
  v30[3] = v15;
  v31 = v16;
  v30[0] = v12;
  v30[1] = v13;
  sub_1D7A4DEC8(v30);
  v32[2] = v19;
  v32[3] = v20;
  v33 = v21;
  v32[0] = v17;
  v32[1] = v18;
  sub_1D7A4DEC8(v32);
  return v10 & 1;
}

uint64_t _s12NewsArticles21RecipeViewerBlueprintO0C4ItemV5ModelO2eeoiySbAG_AGtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[1];
  v42 = a1[2];
  v43 = v2;
  v4 = a1[1];
  v41[0] = *a1;
  v41[1] = v4;
  v5 = a2[1];
  v6 = a2[3];
  *&v45[32] = a2[2];
  *&v45[48] = v6;
  v7 = a2[1];
  *v45 = *a2;
  *&v45[16] = v7;
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[3];
  v47[2] = a1[2];
  v47[3] = v10;
  v47[0] = *a1;
  v47[1] = v8;
  v50 = v5;
  v51 = *&v45[32];
  v52 = a2[3];
  v49 = *v45;
  v11 = a1[3];
  *&v54[32] = v42;
  *&v54[48] = v11;
  v44 = *(a1 + 8);
  v46 = *(a2 + 8);
  v12 = *(a2 + 8);
  v48 = *(a1 + 8);
  v53 = v12;
  v13 = *(a1 + 8);
  v55 = v13;
  *v54 = v9;
  *&v54[16] = v3;
  if (!(v13 >> 62))
  {
    if (!(v46 >> 62))
    {
      *v28 = *v54;
      *&v28[8] = *&v54[8];
      *&v28[24] = *&v54[24];
      *&v28[40] = *&v54[40];
      *v38 = *v45;
      *&v38[8] = *&v45[8];
      *&v38[24] = *&v45[24];
      *&v38[40] = *&v45[40];
      v16 = _s12NewsArticles012RecipeViewerC0V2eeoiySbAC_ACtFZ_0(v28, v38);
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  if (v13 >> 62 != 1)
  {
    v55 = v13 & 0x3FFFFFFFFFFFFFFFLL;
    v18 = a2[3];
    v39[2] = a2[2];
    v39[3] = v18;
    v19 = *(a2 + 8);
    v40 = v19;
    v20 = a2[1];
    v39[0] = *a2;
    v39[1] = v20;
    if (v19 >> 62 == 2)
    {
      v40 = v19 & 0x3FFFFFFFFFFFFFFFLL;
      v21 = a1[1];
      v33 = *a1;
      v34 = v21;
      v22 = a1[3];
      v35 = a1[2];
      v36 = v22;
      v23 = a2[1];
      v29 = *a2;
      v30 = v23;
      v24 = a2[3];
      v31 = a2[2];
      v32 = v24;
      v25 = _s12NewsArticles017AsyncRecipeViewerD0V2eeoiySbAC_ACtFZ_0(&v33, &v29);
      v37[0] = v29;
      v37[1] = v30;
      v37[2] = v31;
      v37[3] = v32;
      sub_1D7A4DE6C(v45, v28);
      sub_1D7A4DE6C(v41, v28);
      sub_1D7A4DE6C(v45, v28);
      sub_1D7A4DE6C(v41, v28);
      sub_1D7B39238(v54, v28);
      sub_1D7B39238(v39, v28);
      sub_1D7B39294(v37);
      *v38 = v33;
      *&v38[16] = v34;
      *&v38[32] = v35;
      *&v38[48] = v36;
      sub_1D7B39294(v38);
      if (v25)
      {
        sub_1D79A9404();
        sub_1D79AC5C4();
        v26 = sub_1D7D308CC();
        sub_1D7B392E8(v47, &qword_1EC9E2E40);
        sub_1D7A4DEC8(v45);
        sub_1D7A4DEC8(v41);
        if (v26)
        {
          v17 = 1;
          return v17 & 1;
        }
      }

      else
      {
        sub_1D7B392E8(v47, &qword_1EC9E2E40);
        sub_1D7A4DEC8(v45);
        sub_1D7A4DEC8(v41);
      }

LABEL_13:
      v17 = 0;
      return v17 & 1;
    }

LABEL_12:
    sub_1D7A4DE6C(v45, v39);
    sub_1D7A4DE6C(v41, v39);
    sub_1D7B392E8(v47, &qword_1EC9E2E40);
    goto LABEL_13;
  }

  if (v46 >> 62 != 1)
  {
    goto LABEL_12;
  }

  v14 = a1[1];
  *v28 = *a1;
  *&v28[16] = v14;
  v15 = a1[3];
  *&v28[32] = a1[2];
  *&v28[48] = v15;
  *v38 = *v45;
  *&v38[16] = *&v45[16];
  *&v38[32] = *&v45[32];
  *&v38[48] = *&v45[48];
  v16 = _s12NewsArticles017AsyncRecipeViewerD0V2eeoiySbAC_ACtFZ_0(v28, v38);
LABEL_7:
  v17 = v16;
  sub_1D7A4DE6C(v45, v39);
  sub_1D7A4DE6C(v41, v39);
  sub_1D7B392E8(v47, &qword_1EC9E2E40);
  return v17 & 1;
}

uint64_t _s12NewsArticles21RecipeViewerBlueprintO2eeoiySbAC_ACtFZ_0(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 48);
  v33 = *(a1 + 32);
  v34 = v3;
  v4 = *(a1 + 16);
  v31 = *a1;
  v32 = v4;
  v5 = a2[1];
  v6 = a2[3];
  v38 = a2[2];
  v39 = v6;
  v7 = a2[1];
  v36 = *a2;
  v37 = v7;
  v8 = *(a1 + 48);
  v41[2] = v33;
  v41[3] = v8;
  v41[0] = v31;
  v41[1] = v2;
  v44 = v5;
  v45 = v38;
  v46 = a2[3];
  v35 = *(a1 + 64);
  v40 = a2[4].i64[0];
  v9 = a2[4].i64[0];
  v42 = *(a1 + 64);
  v47 = v9;
  v43 = v36;
  v10 = v40 & 0x3000000000000000;
  v11 = (v35 >> 60) & 3;
  if (!v11)
  {
    if (!v10)
    {
      v22 = v31;
      v23 = v32;
      v24 = v33;
      v25 = v34;
      v26 = v35 & 0xCFFFFFFFFFFFFFFFLL;
      v17 = v36;
      v18 = v37;
      v19 = v38;
      v20 = v39;
      v21 = v40;
      sub_1D7A4D9FC(&v36, v29);
      sub_1D7A4D9FC(&v31, v29);
      sub_1D7A4D9FC(&v31, v29);
      sub_1D7A4D9FC(&v36, v29);
      v14 = _s12NewsArticles21RecipeViewerBlueprintO0C4ItemV5ModelO2eeoiySbAG_AGtFZ_0(&v22, v17.i8);
      sub_1D7B392E8(v41, &qword_1EC9E5228);
      v27[2] = v19;
      v27[3] = v20;
      v28 = v21;
      v27[0] = v17;
      v27[1] = v18;
      sub_1D7A4DEC8(v27);
      v29[2] = v24;
      v29[3] = v25;
      v30 = v26;
      v29[0] = v22;
      v29[1] = v23;
      sub_1D7A4DEC8(v29);
      return v14 & 1;
    }

LABEL_11:
    sub_1D7A4D9FC(&v31, v29);
    sub_1D7A4D9FC(&v36, v29);
    sub_1D7B392E8(v41, &qword_1EC9E5228);
    v14 = 0;
    return v14 & 1;
  }

  if (v11 != 1)
  {
    if (v10 == 0x2000000000000000 && v40 == 0x2000000000000000)
    {
      v15 = vorrq_s8(vorrq_s8(v36, v38), vorrq_s8(v37, v39));
      if (!*&vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL)))
      {
        sub_1D7B392E8(v41, &qword_1EC9E5228);
        v14 = 1;
        return v14 & 1;
      }
    }

    goto LABEL_11;
  }

  if (v10 != 0x1000000000000000)
  {
    goto LABEL_11;
  }

  v12 = v36.i64[0];
  v13 = v31;
  sub_1D7A4D9FC(&v31, v29);
  sub_1D7A4D9FC(&v36, v29);
  v14 = sub_1D7A5A3DC(v13, v12);
  sub_1D7B392E8(v41, &qword_1EC9E5228);
  return v14 & 1;
}

uint64_t get_enum_tag_for_layout_string_12NewsArticles21RecipeViewerBlueprintO(uint64_t a1)
{
  if (((*(a1 + 64) >> 60) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return (*(a1 + 64) >> 60) & 3;
  }
}

uint64_t sub_1D7B39004(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1E && *(a1 + 72))
  {
    return (*a1 + 30);
  }

  v3 = ((*(a1 + 64) >> 60) & 3 | (4 * (*(a1 + 64) & 7))) ^ 0x1F;
  if (v3 >= 0x1D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D7B39054(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1D)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 30;
    if (a3 >= 0x1E)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1E)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 7 | (8 * (-a2 & 0x1F));
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 64) = (v3 | (v3 << 57)) & 0x3000000000000007;
    }
  }

  return result;
}

uint64_t sub_1D7B390D8(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    *(result + 64) = *(result + 64) & 0xCFFFFFFFFFFFFFF8 | (a2 << 60);
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    *(result + 64) = 0x2000000000000000;
  }

  return result;
}

uint64_t sub_1D7B39138(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 72))
  {
    return (*a1 + 126);
  }

  v3 = (((*(a1 + 64) >> 57) >> 5) | (4 * ((*(a1 + 64) >> 57) & 0x18 | *(a1 + 64) & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D7B39194(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 64) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1D7B392E8(uint64_t a1, unint64_t *a2)
{
  sub_1D7B39344(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7B39344(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D7B393A0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for EndOfRecipeSectionDescriptor();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B39844(v1, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_1D7B398A8(v18, v6, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup);
      sub_1D7D2DDFC();
      v21 = v6;
      v22 = a1;
      v23 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup;
      goto LABEL_7;
    }

    v20 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup;
    sub_1D7B398A8(v18, v10, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup);
    sub_1D7D2DDFC();
    v21 = v10;
  }

  else
  {
    v20 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup;
    sub_1D7B398A8(v18, v14, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup);
    sub_1D7D2DDFC();
    v21 = v14;
  }

  v22 = a1;
  v23 = v20;
LABEL_7:
  sub_1D7B398A8(v21, v22, v23);
  return swift_storeEnumTagMultiPayload();
}

uint64_t EndOfRecipeSectionDescriptor.identifier.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EndOfRecipeSectionDescriptor();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B39844(v1, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D7B398A8(v17, v9, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup);
      v19 = _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV10identifierSSvg_0();
      v20 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup;
      v21 = v9;
    }

    else
    {
      sub_1D7B398A8(v17, v5, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup);
      v19 = _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV10identifierSSvg_0();
      v20 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup;
      v21 = v5;
    }
  }

  else
  {
    sub_1D7B398A8(v17, v13, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup);
    v19 = _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV10identifierSSvg_0();
    v20 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup;
    v21 = v13;
  }

  sub_1D7B3AA4C(v21, v20);
  return v19;
}

uint64_t sub_1D7B39844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndOfRecipeSectionDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7B398A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t EndOfRecipeSectionDescriptor.formatContent.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EndOfRecipeSectionDescriptor();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B39844(v1, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D7B398A8(v17, v9, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup);
      _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
      v19 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup;
      v20 = v9;
    }

    else
    {
      sub_1D7B398A8(v17, v5, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup);
      _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
      v19 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup;
      v20 = v5;
    }
  }

  else
  {
    sub_1D7B398A8(v17, v13, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup);
    _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
    v19 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup;
    v20 = v13;
  }

  return sub_1D7B3AA4C(v20, v19);
}

uint64_t sub_1D7B39BAC@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t EndOfRecipeSectionDescriptor.feedGroupDebug.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for EndOfRecipeSectionDescriptor();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B39844(v2, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D7B398A8(v19, v11, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup);
      a1[3] = v8;
      a1[4] = sub_1D7B3A9A0(&qword_1EC9E5230, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v22 = v11;
      v23 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup;
    }

    else
    {
      sub_1D7B398A8(v19, v7, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup);
      a1[3] = v4;
      a1[4] = sub_1D7B3A9A0(&qword_1EC9E3C50, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v22 = v7;
      v23 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup;
    }
  }

  else
  {
    sub_1D7B398A8(v19, v15, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup);
    a1[3] = v12;
    a1[4] = sub_1D7B3A9A0(&qword_1EC9E3590, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    v22 = v15;
    v23 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup;
  }

  return sub_1D7B398A8(v22, boxed_opaque_existential_1, v23);
}

uint64_t sub_1D7B39F30@<X0>(unsigned int *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t EndOfRecipeSectionDescriptor.context.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v3 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v55 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v54 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1D7D2F05C();
  v9 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v10);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v54 - v15;
  v17 = sub_1D7D2DE2C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup();
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for EndOfRecipeSectionDescriptor();
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B39844(v2, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v31 = (v18 + 16);
  v32 = (v9 + 8);
  v33 = (v18 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v34 = v29;
      v35 = v54;
      sub_1D7B398A8(v34, v54, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup);
      (*v31)(v21, v35, v17);
      _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
      v36 = sub_1D7D2F03C();
      v37 = *v32;
      v38 = v16;
      v39 = v56;
      (*v32)(v38, v56);
      _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
      v40 = sub_1D7D2F02C();
      v37(v12, v39);
      (*v33)(v21, v17);
      v41 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup;
    }

    else
    {
      v48 = v29;
      v35 = v55;
      sub_1D7B398A8(v48, v55, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup);
      (*v31)(v21, v35, v17);
      _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
      v36 = sub_1D7D2F03C();
      v49 = *v32;
      v50 = v16;
      v51 = v56;
      (*v32)(v50, v56);
      _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
      v40 = sub_1D7D2F02C();
      v49(v12, v51);
      (*v33)(v21, v17);
      v41 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup;
    }

    v46 = v41;
    v47 = v35;
  }

  else
  {
    sub_1D7B398A8(v29, v25, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup);
    (*v31)(v21, v25, v17);
    _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
    v42 = sub_1D7D2F03C();
    v43 = *v32;
    v44 = v16;
    v45 = v56;
    (*v32)(v44, v56);
    _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
    v40 = sub_1D7D2F02C();
    v43(v12, v45);
    v36 = v42;
    (*v33)(v21, v17);
    v46 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup;
    v47 = v25;
  }

  result = sub_1D7B3AA4C(v47, v46);
  v53 = v57;
  *v57 = v36;
  v53[1] = v40;
  *(v53 + 16) = 0;
  return result;
}

uint64_t _s12NewsArticles28EndOfRecipeSectionDescriptorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v54 - v10;
  v12 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v54 - v18;
  v20 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v54 - v26;
  sub_1D7B3A9E8();
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = &v54 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v32 + 56);
  sub_1D7B39844(a1, v31);
  sub_1D7B39844(a2, &v31[v33]);
  type metadata accessor for EndOfRecipeSectionDescriptor();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v35 = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v36 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup;
      if (v35 == 1)
      {
        sub_1D7B398A8(v31, v19, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup);
        sub_1D7B398A8(&v31[v33], v15, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup);
        v37 = _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV10identifierSSvg_0();
        v39 = v38;
        if (v37 == _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV10identifierSSvg_0() && v39 == v40)
        {
          v41 = 1;
        }

        else
        {
          v41 = sub_1D7D3197C();
        }

        v50 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup;
        sub_1D7B3AA4C(v15, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup);
        v51 = v19;
LABEL_22:
        v52 = v50;
LABEL_23:
        sub_1D7B3AA4C(v51, v52);
        return v41 & 1;
      }
    }

    else
    {
      v36 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup;
      if (v35 == 2)
      {
        sub_1D7B398A8(v31, v11, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup);
        sub_1D7B398A8(&v31[v33], v7, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup);
        v46 = _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV10identifierSSvg_0();
        v48 = v47;
        if (v46 == _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV10identifierSSvg_0() && v48 == v49)
        {
          v41 = 1;
        }

        else
        {
          v41 = sub_1D7D3197C();
        }

        sub_1D7B3AA4C(v7, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup);
        v51 = v11;
        v52 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup;
        goto LABEL_23;
      }
    }
  }

  else
  {
    v36 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup;
    if (!v35)
    {
      sub_1D7B398A8(v31, v27, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup);
      sub_1D7B398A8(&v31[v33], v23, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup);
      v42 = _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV10identifierSSvg_0();
      v44 = v43;
      if (v42 == _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV10identifierSSvg_0() && v44 == v45)
      {
        v41 = 1;
      }

      else
      {
        v41 = sub_1D7D3197C();
      }

      v50 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup;
      sub_1D7B3AA4C(v23, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup);
      v51 = v27;
      goto LABEL_22;
    }
  }

  sub_1D7B3AA4C(v31, v36);
  sub_1D7B3AA4C(&v31[v33], type metadata accessor for EndOfRecipeSectionDescriptor);
  v41 = 0;
  return v41 & 1;
}

uint64_t sub_1D7B3A9A0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D7B3A9E8()
{
  if (!qword_1EC9E5238)
  {
    type metadata accessor for EndOfRecipeSectionDescriptor();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E5238);
    }
  }
}

uint64_t sub_1D7B3AA4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t EndOfRecipeModel.hashValue.getter()
{
  sub_1D7D31A8C();
  type metadata accessor for EndOfRecipeModel();
  sub_1D7996C7C(&unk_1EE0CA0F0, type metadata accessor for EndOfRecipeModel);
  sub_1D7D302CC();
  return sub_1D7D31ABC();
}

uint64_t EndOfRecipeModel.identifier.getter()
{
  v1 = v0;
  sub_1D7996DA4();
  v3 = v2;
  v28 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7996CC4();
  v8 = v7;
  v27 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7996B9C();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for EndOfRecipeModel();
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B3AEF0(v1, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v24 = v27;
      (*(v27 + 32))(v11, v21, v8);
      v23 = sub_1D7D2EBAC();
      (*(v24 + 8))(v11, v8);
    }

    else
    {
      v25 = v28;
      (*(v28 + 32))(v6, v21, v3);
      v23 = sub_1D7D2EBAC();
      (*(v25 + 8))(v6, v3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v14 + 32))(v17, v21, v13);
    v23 = sub_1D7D2EBAC();
    (*(v14 + 8))(v17, v13);
  }

  else
  {
    v23 = sub_1D7D29CEC();
  }

  return v23;
}

uint64_t sub_1D7B3AE74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7996C7C(&qword_1EE0CA110, type metadata accessor for EndOfRecipeModel);

  return MEMORY[0x1EEE45140](a1, a2, v4);
}

uint64_t sub_1D7B3AEF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndOfRecipeModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t EndOfRecipeModel.feedItem.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  sub_1D7996DA4();
  v4 = v3;
  v36 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7996CC4();
  v9 = v8;
  v35 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7996B9C();
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for EndOfRecipeModel();
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = (&v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7B3AEF0(v2, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v26 = v35;
      (*(v35 + 32))(v12, v22, v9);
      v24 = v37;
      sub_1D7D2EBCC();
      (*(v26 + 8))(v12, v9);
      v25 = MEMORY[0x1E69B5E50];
    }

    else
    {
      v31 = v36;
      (*(v36 + 32))(v7, v22, v4);
      v24 = v37;
      sub_1D7D2EBCC();
      (*(v31 + 8))(v7, v4);
      v25 = MEMORY[0x1E69B5E28];
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      (*(v15 + 32))(v18, v22, v14);
      v27 = v37;
      sub_1D7D2EBCC();
      (*(v15 + 8))(v18, v14);
      v28 = *MEMORY[0x1E69B5E70];
      v29 = sub_1D7D2EB6C();
      return (*(*(v29 - 8) + 104))(v27, v28, v29);
    }

    v24 = v37;
    *v37 = *v22;
    v25 = MEMORY[0x1E69B5E40];
  }

  v32 = *v25;
  v33 = sub_1D7D2EB6C();
  return (*(*(v33 - 8) + 104))(v24, v32, v33);
}

uint64_t EndOfRecipeModel.feedContextIdentifier.getter()
{
  sub_1D7996DA4();
  v34 = *(v1 - 8);
  v35 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7996CC4();
  v6 = v5;
  v33 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7996B9C();
  v11 = v10;
  v32 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D7D2EB6C();
  v31 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for EndOfRecipeModel();
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B3AEF0(v0, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v25 = v33;
      (*(v33 + 32))(v9, v22, v6);
      v24 = sub_1D7D2EBAC();
      (*(v25 + 8))(v9, v6);
    }

    else
    {
      v28 = v34;
      v27 = v35;
      (*(v34 + 32))(v4, v22, v35);
      v24 = sub_1D7D2EBAC();
      (*(v28 + 8))(v4, v27);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v26 = v32;
    (*(v32 + 32))(v14, v22, v11);
    v24 = sub_1D7D2EBAC();
    (*(v26 + 8))(v14, v11);
  }

  else
  {
    sub_1D7B401CC(v22, type metadata accessor for EndOfRecipeModel);
    EndOfRecipeModel.feedItem.getter(v18);
    v24 = sub_1D7D2EB5C();
    (*(v31 + 8))(v18, v15);
  }

  return v24;
}

uint64_t EndOfRecipeModel.dragItem.getter@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = sub_1D7D2EAEC();
  v46 = *(v1 - 8);
  v47 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v44 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7996DA4();
  v45 = v4;
  v43 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7D2EC5C();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7996CC4();
  v12 = v11;
  v39 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D7D2ED3C();
  v38 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7996B9C();
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for EndOfRecipeModel();
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v38 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B3AEF0(v48, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v33 = v39;
      (*(v39 + 32))(v15, v29, v12);
      sub_1D7D2EBCC();
      sub_1D7D2EC4C();
      (*(v40 + 8))(v10, v41);
      return (*(v33 + 8))(v15, v12);
    }

    else
    {
      v35 = v42;
      v34 = v43;
      v36 = v45;
      (*(v43 + 32))(v42, v29, v45);
      v37 = v44;
      sub_1D7D2EBCC();
      sub_1D7D2EADC();
      (*(v46 + 8))(v37, v47);
      return (*(v34 + 8))(v35, v36);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v22 + 32))(v25, v29, v21);
    sub_1D7D2EBCC();
    sub_1D7D2ED0C();
    (*(v38 + 8))(v19, v16);
    return (*(v22 + 8))(v25, v21);
  }

  else
  {
    sub_1D7B401CC(v29, type metadata accessor for EndOfRecipeModel);
    v31 = sub_1D7D2C5EC();
    return (*(*(v31 - 8) + 56))(v49, 1, 1, v31);
  }
}

size_t EndOfRecipeModel.keyCommands.getter()
{
  v1 = v0;
  v61 = sub_1D7D2EC5C();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61, v2);
  v58 = v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7996CC4();
  v64 = *(v4 - 8);
  v65 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v63 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B40134(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v66 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D7D2A11C();
  v11 = *(v10 - 8);
  v67 = v10;
  v68 = v11;
  MEMORY[0x1EEE9AC00](v10, v12);
  v56 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v55 = v54 - v16;
  v62 = sub_1D7D2F73C();
  v60 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v17);
  v19 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D7D2ED3C();
  v57 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7996B9C();
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v27);
  v29 = v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for EndOfRecipeModel();
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = v54 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B3AEF0(v1, v33);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v45 = v63;
      v44 = v64;
      v46 = v65;
      (*(v64 + 32))(v63, v33, v65);
      v47 = v58;
      sub_1D7D2EBCC();
      v48 = sub_1D7D2EC3C();
      (*(v59 + 8))(v47, v61);
      sub_1D7B40168(0, &qword_1EC9E8190, MEMORY[0x1E69D77E0], MEMORY[0x1E69E6F90]);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1D7D3C680;
      sub_1D7D2A10C();
      sub_1D7D2A0AC();
      sub_1D7D2A0DC();

      (*(v44 + 8))(v45, v46);
      return v38;
    }

LABEL_7:
    sub_1D7B401CC(v33, type metadata accessor for EndOfRecipeModel);
    return MEMORY[0x1E69E7CC0];
  }

  if (!EnumCaseMultiPayload)
  {
    goto LABEL_7;
  }

  v65 = v26;
  (*(v26 + 32))(v29, v33, v25);
  v63 = v29;
  v64 = v25;
  v54[1] = v1;
  sub_1D7D2EBCC();
  sub_1D7D2ED1C();
  (*(v57 + 8))(v23, v20);
  sub_1D7B40168(0, &qword_1EC9E8190, MEMORY[0x1E69D77E0], MEMORY[0x1E69E6F90]);
  v35 = v68;
  v36 = *(v68 + 72);
  v37 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  v61 = 2 * v36;
  v59 = v37 + 3 * v36;
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1D7D3C680;
  swift_unknownObjectRetain();
  EndOfRecipeModel.identifier.getter();
  sub_1D7D2F72C();
  sub_1D7D2A0CC();
  v39 = *(v60 + 8);
  v40 = v62;
  v39(v19, v62);
  swift_unknownObjectRetain();
  EndOfRecipeModel.identifier.getter();
  sub_1D7D2F72C();
  sub_1D7D2A0FC();
  v39(v19, v40);
  v41 = v35;
  sub_1D7D2A0EC();
  v42 = v66;
  sub_1D7D2A0BC();
  v43 = v67;
  if ((*(v35 + 48))(v42, 1, v67) == 1)
  {
    (*(v65 + 8))(v63, v64);
    swift_unknownObjectRelease();
    sub_1D7B401CC(v42, sub_1D7B40134);
  }

  else
  {
    v50 = *(v35 + 32);
    v51 = v55;
    v50(v55, v42, v43);
    v52 = *(v35 + 16);
    v53 = v56;
    v52(v56, v51, v43);
    v38 = sub_1D79E4E54(1uLL, 4, 1, v38);
    swift_unknownObjectRelease();
    (*(v41 + 8))(v51, v43);
    (*(v65 + 8))(v63, v64);
    *(v38 + 16) = 4;
    v50((v38 + v59), v53, v43);
  }

  return v38;
}

uint64_t EndOfRecipeModel.selectionStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7800];
  v3 = sub_1D7D2A16C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1D7B3C508@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7800];
  v3 = sub_1D7D2A16C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t EndOfRecipeModel.highlightStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EndOfRecipeModel();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B3AEF0(v1, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1D7B401CC(v6, type metadata accessor for EndOfRecipeModel);
  v8 = sub_1D7D2A04C();
  v9 = MEMORY[0x1E69D77A0];
  if (EnumCaseMultiPayload)
  {
    v9 = MEMORY[0x1E69D77A8];
  }

  return (*(*(v8 - 8) + 104))(a1, *v9, v8);
}

uint64_t sub_1D7B3C680@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  MEMORY[0x1EEE9AC00](v3, a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B3AEF0(v7, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1D7B401CC(v6, type metadata accessor for EndOfRecipeModel);
  v9 = sub_1D7D2A04C();
  v10 = MEMORY[0x1E69D77A0];
  if (EnumCaseMultiPayload)
  {
    v10 = MEMORY[0x1E69D77A8];
  }

  return (*(*(v9 - 8) + 104))(a2, *v10, v9);
}

uint64_t EndOfRecipeModel.contextMenuWithContext<A, B, C, D>(_:)(void (*a1)(unint64_t, char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v113 = a7;
  v114 = a8;
  v111 = a5;
  v112 = a6;
  v109 = a3;
  v110 = a4;
  v107 = a2;
  v115 = a1;
  v100 = sub_1D7D2EC5C();
  v98 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v9);
  v96 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7996CC4();
  v105 = v11;
  v104 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v103 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1D7D2EAEC();
  v97 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99, v14);
  v95 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7996DA4();
  v106 = v16;
  v108 = *(v16 - 8);
  v17 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v16, v18);
  v101 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v102 = &v88 - v21;
  v93 = sub_1D7D2ED3C();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93, v22);
  v91 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D7D29C6C();
  v116 = *(v24 - 8);
  v117 = v24;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = (&v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_1D7D29C7C();
  v89 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v88 - v34;
  sub_1D7996B9C();
  v94 = v36;
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36, v39);
  v90 = &v88 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v88 - v42;
  v44 = type metadata accessor for EndOfRecipeModel();
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v88 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B3AEF0(v118, v47);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v50 = v104;
      v51 = v103;
      v52 = v105;
      (*(v104 + 32))(v103, v47, v105);
      sub_1D7D29C8C();
      v53 = v96;
      sub_1D7D2EBCC();
      v54 = sub_1D7D2EC3C();
      (*(v98 + 8))(v53, v100);
      *v27 = v54;
      v56 = v116;
      v55 = v117;
      (*(v116 + 104))(v27, *MEMORY[0x1E69B5720], v117);
      v119 = v107;
      v120 = v109;
      v121 = v110;
      v122 = v111;
      v123 = v112;
      v124 = v113;
      v125 = v114;
      v126 = a9;
      sub_1D7D29B5C();
      v57 = sub_1D7D29B3C();
      MEMORY[0x1DA7076C0](v27, v57);

      (*(v56 + 8))(v27, v55);
      swift_allocObject();
      v49 = sub_1D7D29C3C();
      (*(v50 + 8))(v51, v52);
    }

    else
    {
      v71 = *(v108 + 32);
      v105 = v108 + 32;
      v118 = v71;
      v72 = v102;
      v73 = v106;
      v71(v102, v47, v106);
      v74 = v95;
      sub_1D7D2EBCC();
      v75 = sub_1D7D2EABC();
      v104 = *(v97 + 8);
      v76 = v99;
      (v104)(v74, v99);
      v119 = v107;
      v120 = v109;
      v121 = v110;
      v122 = v111;
      v123 = v112;
      v124 = v113;
      v125 = v114;
      v126 = a9;
      sub_1D7D29B5C();
      v77 = sub_1D7D29B3C();
      sub_1D7B3D3F0(v77, v75);
      v79 = v78;
      sub_1D7D29C8C();
      sub_1D7D2EBCC();
      v80 = sub_1D7D2EACC();
      (v104)(v74, v76);
      *v27 = v80;
      v27[1] = 0;
      v82 = v116;
      v81 = v117;
      (*(v116 + 104))(v27, *MEMORY[0x1E69B5710], v117);
      MEMORY[0x1DA7076C0](v27, v79);

      (*(v82 + 8))(v27, v81);
      v83 = v108;
      v84 = v101;
      (*(v108 + 16))(v101, v72, v73);
      v85 = (*(v83 + 80) + 16) & ~*(v83 + 80);
      v86 = swift_allocObject();
      v118(v86 + v85, v84, v73);
      swift_allocObject();
      v49 = sub_1D7D29C3C();
      (*(v83 + 8))(v72, v73);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v58 = v37;
    v59 = *(v37 + 32);
    v114 = v37 + 32;
    v115 = v59;
    v60 = v94;
    v59(v43, v47, v94);
    v119 = MEMORY[0x1E69E7CD0];
    v61 = v89;
    (*(v89 + 104))(v31, *MEMORY[0x1E69B5780], v28);
    sub_1D7B3DEA4(v35, v31);
    (*(v61 + 8))(v35, v28);
    sub_1D7D29C8C();
    v62 = v91;
    sub_1D7D2EBCC();
    v63 = sub_1D7D2ED1C();
    (*(v92 + 8))(v62, v93);
    v64 = EndOfRecipeModel.identifier.getter();
    *v27 = v63;
    v27[1] = 0;
    v27[2] = 0;
    v27[3] = v64;
    v27[4] = v65;
    v67 = v116;
    v66 = v117;
    (*(v116 + 104))(v27, *MEMORY[0x1E69B5728], v117);
    MEMORY[0x1DA7076C0](v27, v119);

    (*(v67 + 8))(v27, v66);
    v68 = v90;
    (*(v58 + 16))(v90, v43, v60);
    v69 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v70 = swift_allocObject();
    v115(v70 + v69, v68, v60);
    swift_allocObject();
    v49 = sub_1D7D29C3C();
    (*(v58 + 8))(v43, v60);
  }

  else
  {
    sub_1D7B401CC(v47, type metadata accessor for EndOfRecipeModel);
    return 0;
  }

  return v49;
}

uint64_t sub_1D7B3D2F4()
{
  v0 = sub_1D7D2ED3C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D2FF3C();
  sub_1D7996B9C();
  sub_1D7D2EBCC();
  sub_1D7D2ED1C();
  (*(v1 + 8))(v4, v0);
  return sub_1D7D2FF2C();
}

void sub_1D7B3D3F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7D29C7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v28 - v11;
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = v28 - v16;
  v18 = 0;
  v29 = a1;
  v30 = a2;
  v21 = *(a1 + 56);
  v20 = a1 + 56;
  v19 = v21;
  v22 = 1 << *(v20 - 24);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v28[2] = v5 + 32;
  v28[3] = v5 + 16;
  v28[1] = v5 + 8;
  if ((v23 & v19) != 0)
  {
    do
    {
      v26 = v18;
LABEL_9:
      v27 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      (*(v5 + 16))(v17, *(v29 + 48) + *(v5 + 72) * (v27 | (v26 << 6)), v4, v15);
      (*(v5 + 32))(v8, v17, v4);
      sub_1D7B3DEA4(v12, v8);
      (*(v5 + 8))(v12, v4);
    }

    while (v24);
  }

  while (1)
  {
    v26 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v26 >= v25)
    {

      return;
    }

    v24 = *(v20 + 8 * v26);
    ++v18;
    if (v24)
    {
      v18 = v26;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1D7B3D60C()
{
  v0 = sub_1D7D2EAEC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7D2FDEC();
  sub_1D7996DA4();
  sub_1D7D2EBCC();
  sub_1D7D2EACC();
  (*(v1 + 8))(v4, v0);
  return sub_1D7D2FDDC();
}

id sub_1D7B3D704()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC640]);
  sub_1D7B404D4();
  v1 = sub_1D7D3062C();
  v2 = [v0 initWithItemProviders_];

  return v2;
}

uint64_t EndOfRecipeModel.debugContextMenuWithContext<A, B, C, D>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v52 = a5;
  v53 = a8;
  v51 = a4;
  v57 = a2;
  v58 = a3;
  v59 = a6;
  v60 = a7;
  v15 = sub_1D7D2C80C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v54 = &v47 - v18;
  v19 = type metadata accessor for EndOfRecipeModel();
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B3AEF0(v9, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1D7B401CC(v22, type metadata accessor for EndOfRecipeModel);
  if (!EnumCaseMultiPayload)
  {
    return 0;
  }

  v49 = v16;
  v50 = v15;
  sub_1D7B40168(0, &qword_1EE0BAE40, sub_1D7A52854, MEMORY[0x1E69E6F90]);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1D7D3B4D0;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1D7D481C0;
  v25 = sub_1D7D2A36C();
  v55 = a9;
  v56 = a1;
  v26 = v51;
  v27 = v52;
  v28 = v53;
  v29 = sub_1D7D2A2AC();
  if (v29)
  {
    v30 = MEMORY[0x1E69D7890];
    v31 = v25;
  }

  else
  {
    v31 = 0;
    v30 = 0;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
  }

  *(v24 + 32) = v29;
  *(v24 + 56) = v31;
  *(v24 + 64) = v30;
  v33 = sub_1D7D2A29C();
  if (v33)
  {
    v34 = MEMORY[0x1E69D7890];
    v35 = v25;
  }

  else
  {
    v35 = 0;
    v34 = 0;
    *(v24 + 80) = 0;
    *(v24 + 88) = 0;
  }

  *(v24 + 72) = v33;
  *(v24 + 96) = v35;
  *(v24 + 104) = v34;
  v36 = sub_1D7D2A27C();
  if (v36)
  {
    v37 = MEMORY[0x1E69D7890];
    v38 = v25;
  }

  else
  {
    v38 = 0;
    v37 = 0;
    *(v24 + 120) = 0;
    *(v24 + 128) = 0;
  }

  *(v24 + 112) = v36;
  *(v24 + 136) = v38;
  *(v24 + 144) = v37;
  v39 = sub_1D7D2A2BC();
  if (v39)
  {
    v40 = MEMORY[0x1E69D7890];
    v41 = v25;
  }

  else
  {
    v41 = 0;
    v40 = 0;
    *(v24 + 160) = 0;
    *(v24 + 168) = 0;
  }

  *(v24 + 152) = v39;
  *(v24 + 176) = v41;
  *(v24 + 184) = v40;
  v57 = a2;
  v58 = a3;
  v59 = v26;
  v60 = v27;
  v61 = a6;
  v62 = a7;
  v63 = v28;
  v64 = v55;
  sub_1D7D29B5C();
  v42 = v54;
  sub_1D7D29B4C();
  type metadata accessor for EndOfRecipeFeedServiceConfig();
  sub_1D7996C7C(&unk_1EE0CD290, type metadata accessor for EndOfRecipeFeedServiceConfig);
  v43 = v50;
  v44 = sub_1D7D2C7CC();
  (*(v49 + 8))(v42, v43);
  sub_1D7D29B2C();
  v45 = sub_1D7D2A28C();

  sub_1D7AAF6F4(v44);
  if (v45)
  {
    v46 = MEMORY[0x1E69D7890];
  }

  else
  {
    v25 = 0;
    v46 = 0;
    *(v24 + 200) = 0;
    *(v24 + 208) = 0;
  }

  *(v24 + 192) = v45;
  *(v24 + 216) = v25;
  *(v24 + 224) = v46;
  sub_1D7D29C8C();
  sub_1D7D2A53C();
  sub_1D7D2A51C();

  return sub_1D7D29C4C();
}

uint64_t sub_1D7B3DC5C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1D7D31A8C();
  sub_1D7D303FC();
  v8 = sub_1D7D31ABC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1D7D3197C() & 1) != 0)
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

    sub_1D7B3E96C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1D7B3DDAC(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1D7D31A8C();
  MEMORY[0x1DA70F500](a2);
  v6 = sub_1D7D31ABC();
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
    sub_1D7B3EAEC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D7B3DEA4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1D7D29C7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1D7996C7C(&qword_1EC9E5248, MEMORY[0x1E69B5790]);
  v34 = a2;
  v12 = sub_1D7D302BC();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1D7996C7C(&qword_1EC9E5250, MEMORY[0x1E69B5790]);
      v22 = sub_1D7D3030C();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1D7B3EC38(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1D7B3E184()
{
  v1 = v0;
  v2 = *v0;
  sub_1D7B23B50();
  result = sub_1D7D3140C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1D7D31A8C();
      sub_1D7D303FC();
      result = sub_1D7D31ABC();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D7B3E3D8()
{
  v1 = v0;
  v2 = *v0;
  sub_1D7B40390();
  result = sub_1D7D3140C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_1D7D31A8C();
      MEMORY[0x1DA70F500](v16);
      result = sub_1D7D31ABC();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D7B3E61C()
{
  v1 = v0;
  v36 = sub_1D7D29C7C();
  v2 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v3);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1D7B40440();
  result = sub_1D7D3140C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v0;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
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
    v34 = v2 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v2 + 72) * (v16 | (v8 << 6));
      v20 = *(v2 + 32);
      v32 = *(v2 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1D7996C7C(&qword_1EC9E5248, MEMORY[0x1E69B5790]);
      result = sub_1D7D302BC();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v1 = v30;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_1D7B3E96C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1D7B3E184();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1D7B3EEDC();
      goto LABEL_16;
    }

    sub_1D7B3F388();
  }

  v10 = *v4;
  sub_1D7D31A8C();
  sub_1D7D303FC();
  result = sub_1D7D31ABC();
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

      result = sub_1D7D3197C();
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
  result = sub_1D7D31A1C();
  __break(1u);
  return result;
}

uint64_t sub_1D7B3EAEC(uint64_t result, unint64_t a2, char a3)
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
    sub_1D7B3E3D8();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1D7B3F02C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1D7B3F5B4();
  }

  v8 = *v3;
  sub_1D7D31A8C();
  MEMORY[0x1DA70F500](v4);
  result = sub_1D7D31ABC();
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
  result = sub_1D7D31A1C();
  __break(1u);
  return result;
}

uint64_t sub_1D7B3EC38(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1D7D29C7C();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D7B3E61C();
  }

  else
  {
    if (v13 > v12)
    {
      sub_1D7B3F160();
      goto LABEL_12;
    }

    sub_1D7B3F7C8();
  }

  v14 = *v3;
  sub_1D7996C7C(&qword_1EC9E5248, MEMORY[0x1E69B5790]);
  v15 = sub_1D7D302BC();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_1D7996C7C(&qword_1EC9E5250, MEMORY[0x1E69B5790]);
      v23 = sub_1D7D3030C();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D7D31A1C();
  __break(1u);
  return result;
}

void *sub_1D7B3EEDC()
{
  v1 = v0;
  sub_1D7B23B50();
  v2 = *v0;
  v3 = sub_1D7D313FC();
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

void *sub_1D7B3F02C()
{
  v1 = v0;
  sub_1D7B40390();
  v2 = *v0;
  v3 = sub_1D7D313FC();
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

void *sub_1D7B3F160()
{
  v1 = v0;
  v2 = sub_1D7D29C7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B40440();
  v7 = *v0;
  v8 = sub_1D7D313FC();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
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

LABEL_21:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_1D7B3F388()
{
  v1 = v0;
  v2 = *v0;
  sub_1D7B23B50();
  result = sub_1D7D3140C();
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
      sub_1D7D31A8C();

      sub_1D7D303FC();
      result = sub_1D7D31ABC();
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

uint64_t sub_1D7B3F5B4()
{
  v1 = v0;
  v2 = *v0;
  sub_1D7B40390();
  result = sub_1D7D3140C();
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
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_1D7D31A8C();
      MEMORY[0x1DA70F500](v15);
      result = sub_1D7D31ABC();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
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

uint64_t sub_1D7B3F7C8()
{
  v1 = v0;
  v33 = sub_1D7D29C7C();
  v2 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_1D7B40440();
  v7 = sub_1D7D3140C();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v0;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v2 + 16;
    v32 = v2;
    v15 = v7 + 56;
    v29 = (v2 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1D7996C7C(&qword_1EC9E5248, MEMORY[0x1E69B5790]);
      result = sub_1D7D302BC();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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

uint64_t _s12NewsArticles16EndOfRecipeModelO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1D7996DA4();
  v70 = *(v4 - 8);
  v71 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v67 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v66 = &v66 - v9;
  sub_1D7996CC4();
  v11 = v10;
  v69 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v66 - v17;
  sub_1D7996B9C();
  v20 = v19;
  v68 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v66 - v26;
  sub_1D7B40520();
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = &v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v32 + 56);
  sub_1D7B3AEF0(a1, v31);
  sub_1D7B3AEF0(a2, &v31[v33]);
  type metadata accessor for EndOfRecipeModel();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v69 + 8))(v31, v11);
        goto LABEL_21;
      }

      v35 = v69;
      v36 = *(v69 + 32);
      v36(v18, v31, v11);
      v36(v14, &v31[v33], v11);
      v37 = sub_1D7D2EBAC();
      v39 = v38;
      if (v37 == sub_1D7D2EBAC() && v39 == v40)
      {
        v41 = 1;
      }

      else
      {
        v41 = sub_1D7D3197C();
      }

      v63 = *(v35 + 8);
      v63(v14, v11);
      v63(v18, v11);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        (*(v70 + 8))(v31, v71);
        goto LABEL_21;
      }

      v49 = v70;
      v48 = v71;
      v50 = *(v70 + 32);
      v51 = v66;
      v50(v66, v31, v71);
      v52 = v67;
      v50(v67, &v31[v33], v48);
      v53 = sub_1D7D2EBAC();
      v55 = v54;
      if (v53 == sub_1D7D2EBAC() && v55 == v56)
      {
        v41 = 1;
      }

      else
      {
        v41 = sub_1D7D3197C();
      }

      v65 = *(v49 + 8);
      v65(v52, v48);
      v65(v51, v48);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v68 + 8))(v31, v20);
      goto LABEL_21;
    }

    v42 = v68;
    v43 = *(v68 + 32);
    v43(v27, v31, v20);
    v43(v23, &v31[v33], v20);
    v44 = sub_1D7D2EBAC();
    v46 = v45;
    if (v44 == sub_1D7D2EBAC() && v46 == v47)
    {
      v41 = 1;
    }

    else
    {
      v41 = sub_1D7D3197C();
    }

    v64 = *(v42 + 8);
    v64(v23, v20);
    v64(v27, v20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload())
    {

LABEL_21:
      sub_1D7B401CC(&v31[v33], type metadata accessor for EndOfRecipeModel);
      v41 = 0;
      return v41 & 1;
    }

    v58 = sub_1D7D29CEC();
    v60 = v59;
    if (v58 == sub_1D7D29CEC() && v60 == v61)
    {
      v41 = 1;
    }

    else
    {
      v41 = sub_1D7D3197C();
    }
  }

  return v41 & 1;
}

void sub_1D7B40168(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7B401CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_6(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v6, v4 | 7);
}

uint64_t sub_1D7B40314(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

void sub_1D7B40390()
{
  if (!qword_1EE0BEC40)
  {
    sub_1D7B403EC();
    v0 = sub_1D7D3142C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BEC40);
    }
  }
}

unint64_t sub_1D7B403EC()
{
  result = qword_1EE0C6FA0[0];
  if (!qword_1EE0C6FA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0C6FA0);
  }

  return result;
}

void sub_1D7B40440()
{
  if (!qword_1EC9E5258)
  {
    sub_1D7D29C7C();
    sub_1D7996C7C(&qword_1EC9E5248, MEMORY[0x1E69B5790]);
    v0 = sub_1D7D3142C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E5258);
    }
  }
}

unint64_t sub_1D7B404D4()
{
  result = qword_1EC9E5260;
  if (!qword_1EC9E5260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC9E5260);
  }

  return result;
}

void sub_1D7B40520()
{
  if (!qword_1EC9E5268)
  {
    type metadata accessor for EndOfRecipeModel();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E5268);
    }
  }
}

uint64_t sub_1D7B40584()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D7B406C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_1D7D2B41C();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  sub_1D7D2E83C();
  v5[10] = swift_task_alloc();
  v7 = sub_1D7D2E74C();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  sub_1D7D2E76C();
  v5[14] = swift_task_alloc();
  sub_1D7D2E79C();
  v5[15] = swift_task_alloc();
  sub_1D7D2E7DC();
  v5[16] = swift_task_alloc();
  sub_1D7D2E7FC();
  v5[17] = swift_task_alloc();
  v8 = sub_1D7D2E81C();
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();
  sub_1D7B4272C(0, &qword_1EE0BF8B8, MEMORY[0x1E69B5BB8]);
  v5[21] = swift_task_alloc();
  v9 = sub_1D7D2B02C();
  v5[22] = v9;
  v5[23] = *(v9 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  sub_1D7B4272C(0, &qword_1EE0BF8C0, MEMORY[0x1E69B5BB0]);
  v5[26] = swift_task_alloc();
  v10 = sub_1D7D2E84C();
  v5[27] = v10;
  v5[28] = *(v10 - 8);
  v5[29] = swift_task_alloc();
  sub_1D7D288EC();
  v5[30] = swift_task_alloc();
  v11 = sub_1D7D2889C();
  v5[31] = v11;
  v5[32] = *(v11 - 8);
  v5[33] = swift_task_alloc();
  v12 = sub_1D7D2883C();
  v5[34] = v12;
  v5[35] = *(v12 - 8);
  v5[36] = swift_task_alloc();
  sub_1D7B4272C(0, &qword_1EE0BF790, MEMORY[0x1E69B5FB0]);
  v5[37] = swift_task_alloc();
  v13 = sub_1D7D2EB7C();
  v5[38] = v13;
  v5[39] = *(v13 - 8);
  v5[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7B40BF8, 0, 0);
}

uint64_t sub_1D7B40BF8()
{
  v1 = v0[6];
  if (qword_1EC9DFD38 != -1)
  {
    swift_once();
    v1 = v0[6];
  }

  v36 = v1;
  v2 = v0[37];
  v27 = v0[38];
  v28 = v0[39];
  v3 = v0[35];
  v4 = v0[36];
  v25 = v0[40];
  v5 = v0[34];
  v16 = v0[33];
  v31 = v0[32];
  v33 = v0[31];
  v26 = v0[29];
  v29 = v0[28];
  v30 = v0[27];
  v6 = v0[25];
  v18 = v0[26];
  v39 = v0[23];
  v37 = v0[24];
  v38 = v0[22];
  v19 = v0[21];
  v7 = v0[19];
  v20 = v0[20];
  v21 = v0[18];
  v24 = v0[13];
  v22 = v0[12];
  v23 = v0[11];
  v32 = v0[8];
  v34 = v0[7];
  v35 = v0[9];
  v8 = v0[4];
  (*(v28 + 104))();
  v9 = sub_1D7D2EC6C();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  (*(v3 + 104))(v4, *MEMORY[0x1E69D7110], v5);
  sub_1D7D2AF9C();
  sub_1D7D30FFC();
  sub_1D7D2AF9C();
  sub_1D7D2AFDC();
  sub_1D7D2AF7C();
  sub_1D7D2AFEC();
  sub_1D7D2AFCC();
  sub_1D7D2AF8C();
  sub_1D7D2AFBC();
  sub_1D7D2AFFC();
  sub_1D7D2AFAC();
  sub_1D7D2E1FC();
  sub_1D7D2E1EC();
  sub_1D7D2E1DC();

  sub_1D7D2886C();
  v17 = *(v39 + 16);
  v17(v6, v8, v38);
  sub_1D7D2E7AC();
  v10 = sub_1D7D2E7BC();
  (*(*(v10 - 8) + 56))(v18, 0, 1, v10);
  v11 = sub_1D7D2E80C();
  (*(*(v11 - 8) + 56))(v19, 1, 1, v11);
  (*(v7 + 104))(v20, *MEMORY[0x1E69B5BC0], v21);
  sub_1D7D2E7EC();
  sub_1D7D2E78C();
  sub_1D7D2E78C();
  (*(v22 + 104))(v24, *MEMORY[0x1E69B5BA8], v23);
  sub_1D7D2E75C();
  sub_1D7D2E82C();

  sub_1D7D2E77C();
  v12 = sub_1D7D2E06C();
  (*(v29 + 8))(v26, v30);
  (*(v31 + 8))(v16, v33);
  (*(v3 + 8))(v4, v5);
  sub_1D7B426D0(v2, &qword_1EE0BF790, MEMORY[0x1E69B5FB0]);
  (*(v28 + 8))(v25, v27);
  v17(v37, v8, v38);
  (*(v32 + 104))(v35, *MEMORY[0x1E69D7F78], v34);
  v13 = swift_task_alloc();
  v13[2] = v36;
  v13[3] = v8;
  v13[4] = v12;
  sub_1D7A289B0(sub_1D7B4264C, v13);

  type metadata accessor for EndOfRecipeLayoutModel();
  sub_1D7B2E060();
  sub_1D799707C(&qword_1EC9E5058, type metadata accessor for EndOfRecipeLayoutModel);
  sub_1D7D2A22C();
  sub_1D7D2E05C();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1D7B4147C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v36[0] = a4;
  v36[1] = a2;
  v8 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for EndOfRecipeSectionDescriptor();
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = v36 - v26;
  sub_1D7A2B3A0();
  sub_1D7D2A43C();
  sub_1D7B39844(v27, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D7B398A8(v23, v15, type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup);
      v29 = v37;
      sub_1D7B417AC(a1, a3, v15, a5);
      v30 = v29;
      v31 = type metadata accessor for RelatedArticlesEndOfRecipeFeedGroup;
      v32 = v15;
    }

    else
    {
      sub_1D7B398A8(v23, v11, type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup);
      v35 = v37;
      sub_1D7B417AC(a1, a3, v11, a5);
      v30 = v35;
      v31 = type metadata accessor for RelatedRecipesEndOfRecipeFeedGroup;
      v32 = v11;
    }

    sub_1D7B42670(v32, v31);
    result = sub_1D7B42670(v27, type metadata accessor for EndOfRecipeSectionDescriptor);
    v33 = v30;
    if (v30)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1D7B398A8(v23, v19, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup);
    v33 = v37;
    sub_1D7B417AC(a1, a3, v19, a5);
    sub_1D7B42670(v19, type metadata accessor for RecipeTopicsEndOfRecipeFeedGroup);
    result = sub_1D7B42670(v27, type metadata accessor for EndOfRecipeSectionDescriptor);
    if (v33)
    {
LABEL_8:
      *v36[0] = v33;
    }
  }

  return result;
}

uint64_t sub_1D7B417AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v111 = a2;
  v96 = a1;
  v92 = a4;
  v119 = type metadata accessor for EndOfRecipeLayoutModel();
  MEMORY[0x1EEE9AC00](v119, v5);
  v116 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1D7D2E8FC();
  v118 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115, v7);
  v114 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A5FB54();
  v113 = v9;
  v117 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v87 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1D7D2BE9C();
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90, v12);
  v91 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B4272C(0, &qword_1EE0CB3B8, MEMORY[0x1E69D7318]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v106 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v105 = &v86 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v104 = &v86 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v103 = &v86 - v25;
  v109 = sub_1D7D2893C();
  v107 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109, v26);
  v102 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1D7D2E03C();
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94, v28);
  v88 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v108 = &v86 - v32;
  v101 = MEMORY[0x1E69B5A60];
  sub_1D7B4272C(0, &unk_1EE0BF978, MEMORY[0x1E69B5A60]);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v36 = &v86 - v35;
  v37 = sub_1D7D2DE2C();
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v39);
  v41 = &v86 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = MEMORY[0x1E69B5B80];
  sub_1D7B4272C(0, &unk_1EE0BF8D8, MEMORY[0x1E69B5B80]);
  MEMORY[0x1EEE9AC00](v42 - 8, v43);
  v45 = &v86 - v44;
  v99 = MEMORY[0x1E69B5900];
  sub_1D7B4272C(0, &qword_1EE0BF9F0, MEMORY[0x1E69B5900]);
  MEMORY[0x1EEE9AC00](v46 - 8, v47);
  v49 = &v86 - v48;
  v95 = sub_1D7D2F05C();
  v98 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95, v50);
  v52 = &v86 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = a3;
  _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
  v53 = sub_1D7D2DEBC();
  (*(*(v53 - 8) + 56))(v49, 1, 1, v53);
  (*(v38 + 16))(v41, a3, v37);
  sub_1D7D2E6DC();
  v54 = sub_1D7D2E6EC();
  (*(*(v54 - 8) + 56))(v45, 0, 1, v54);
  v55 = sub_1D7D2E3BC();
  (*(*(v55 - 8) + 56))(v36, 1, 1, v55);
  sub_1D7B574D0();
  sub_1D7A2B3A0();
  sub_1D799707C(qword_1EC9E5270, type metadata accessor for EndOfRecipeSectionDescriptor);
  sub_1D799707C(&qword_1EC9E2A48, type metadata accessor for EndOfRecipeModel);
  sub_1D7D2A48C();

  sub_1D7B426D0(v36, &unk_1EE0BF978, v101);
  sub_1D7B426D0(v45, &unk_1EE0BF8D8, v100);
  sub_1D7B426D0(v49, &qword_1EE0BF9F0, v99);
  v56 = *(v98 + 8);
  v57 = v95;
  v56(v52, v95);
  _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
  v58 = sub_1D7D2FE5C();
  v56(v52, v57);
  v120[3] = sub_1D7D2FACC();
  v120[4] = MEMORY[0x1E69B6560];
  v120[0] = v58;
  v59 = sub_1D7D2894C();
  v60 = *(*(v59 - 8) + 56);
  v60(v103, 1, 1, v59);
  v60(v104, 1, 1, v59);
  v60(v105, 1, 1, v59);
  v61 = v59;
  v62 = v102;
  v60(v106, 1, 1, v61);
  v63 = v58;

  v64 = v108;
  sub_1D7D2892C();
  v65 = v112;
  sub_1D7D2E04C();
  if (v65)
  {
    (*(v107 + 8))(v62, v109);

    return sub_1D7B426D0(v120, &qword_1EE0BF858, sub_1D7AE9C70);
  }

  else
  {
    v67 = MEMORY[0x1E69E7CC0];
    v106 = v63;
    (*(v107 + 8))(v62, v109);

    sub_1D7B426D0(v120, &qword_1EE0BF858, sub_1D7AE9C70);
    v68 = v88;
    (*(v93 + 16))(v88, v64, v94);
    v120[0] = sub_1D7B2E364(v68);
    v120[1] = v69;
    v120[2] = v70;
    v71 = *MEMORY[0x1E69D8660];
    v72 = sub_1D7D2BE8C();
    v73 = v91;
    (*(*(v72 - 8) + 104))(v91, v71, v72);
    (*(v89 + 104))(v73, *MEMORY[0x1E69D8668], v90);
    v74 = sub_1D7D2E00C();
    v75 = *(v74 + 16);
    if (v75)
    {
      v107 = 0;
      v121 = v67;
      sub_1D7A5C4AC(0, v75, 0);
      v76 = v121;
      v77 = *(v118 + 16);
      v78 = (*(v118 + 80) + 32) & ~*(v118 + 80);
      v105 = v74;
      v79 = v74 + v78;
      v111 = *(v118 + 72);
      v112 = v77;
      v109 = v117 + 32;
      v110 = (v118 + 8);
      v80 = v87;
      v118 += 16;
      do
      {
        v81 = v114;
        v82 = v115;
        v83 = v112;
        v112(v114, v79, v115);
        v83(v116, v81, v82);
        sub_1D799707C(&unk_1EC9E5340, type metadata accessor for EndOfRecipeLayoutModel);
        sub_1D7D2ABAC();
        (*v110)(v81, v82);
        v121 = v76;
        v85 = *(v76 + 16);
        v84 = *(v76 + 24);
        if (v85 >= v84 >> 1)
        {
          sub_1D7A5C4AC(v84 > 1, v85 + 1, 1);
          v76 = v121;
        }

        *(v76 + 16) = v85 + 1;
        (*(v117 + 32))(v76 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v85, v80, v113);
        v79 += v111;
        --v75;
      }

      while (v75);
    }

    sub_1D7B2E060();
    sub_1D799707C(&qword_1EC9E5058, type metadata accessor for EndOfRecipeLayoutModel);
    sub_1D7D2B06C();

    return (*(v93 + 8))(v108, v94);
  }
}

uint64_t sub_1D7B42588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D7A4E2D8;

  return sub_1D7B406C0(a1, a2, a3, a4);
}

uint64_t sub_1D7B42670(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7B426D0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D7B4272C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D7B4272C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D3130C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7B42780()
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

char *sub_1D7B4283C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v8 = v7;
  v112 = a7;
  v113 = a6;
  v108 = a3;
  v109 = a4;
  v99 = a2;
  v96 = type metadata accessor for ArticleViewerBlueprint.ArticleItem(0);
  v114 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96, v11);
  v13 = (&v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7B56CD0();
  v107 = v14;
  v105 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v100 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v103 = &v91 - v19;
  v20 = sub_1D7D2EB7C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20, v23);
  v97 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v98 = &v91 - v26;
  v27 = type metadata accessor for ArticleViewerBlueprint(0);
  MEMORY[0x1EEE9AC00](v27, v27);
  v102 = (&v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = (&v91 - v31);
  v131 = a1;
  v7[3] = a1;
  *(&v91 - v31) = MEMORY[0x1E69E7CC0];
  v101 = v33;
  swift_storeEnumTagMultiPayload();
  sub_1D7B57244(0, &qword_1EE0C0450, type metadata accessor for ArticleViewerBlueprint, MEMORY[0x1E69D6538]);
  swift_allocObject();
  v104 = a1;

  v7[2] = sub_1D7D28ECC();
  sub_1D7A0E924(a5, (v7 + 5));
  v34 = v112;
  v7[4] = v113;
  v35 = *(*v7 + 152);
  v110 = v21;
  v111 = v20;
  v38 = *(v21 + 16);
  v37 = v21 + 16;
  v36 = v38;
  v38(v7 + v35, v34, v20);
  sub_1D7A0E924(a5, &v127);
  v106 = a5;
  if (v130)
  {
    swift_unknownObjectRetain();

    v39 = v127;
    v40 = v128;
    v114 = v129;
    sub_1D7B56C18();
    v108 = v41;
    v103 = sub_1D7B571FC(&unk_1EE0BFE58, sub_1D7B56C18);
    sub_1D7D2B76C();
    v42 = swift_allocObject();
    swift_weakInit();
    v43 = swift_allocObject();
    v44 = v104;
    *(v43 + 16) = v42;
    *(v43 + 24) = v44;
    v101 = *(&v39 + 1);
    v102 = v39;
    *(v43 + 32) = v39;
    v99 = v40;
    *(v43 + 48) = v40;
    *(v43 + 56) = v114;

    sub_1D7A03D20(v39, *(&v39 + 1), v40);
    sub_1D7D28EEC();

    __swift_project_boxed_opaque_existential_1(&v116, *(&v117 + 1));

    sub_1D7D28AEC();

    __swift_destroy_boxed_opaque_existential_1(&v116);
    v98 = v7[2];
    sub_1D7D2B76C();

    v45 = v100;
    sub_1D7D28EDC();

    v46 = v101;
    v47 = v102;
    v48 = v99;
    sub_1D7B44C30(v45, v102, v101, v99, v114, sub_1D7B51E08, v32);
    (*(v105 + 8))(v45, v107);
    sub_1D7B571FC(qword_1EE0C7510, type metadata accessor for ArticleViewerBlueprint);
    sub_1D7D28F1C();

    sub_1D79DA510(v47, v46, v48);
    swift_unknownObjectRelease();
    (*(v110 + 8))(v112, v111);
    sub_1D7A0EA20(v106);
    sub_1D7B49994(v32, type metadata accessor for ArticleViewerBlueprint);
  }

  else
  {
    sub_1D799D69C(&v127, v124);
    sub_1D7B56C18();
    v100 = v49;
    v94 = sub_1D7B571FC(&unk_1EE0BFE58, sub_1D7B56C18);
    swift_unknownObjectRetain_n();
    sub_1D7D2B76C();
    v50 = swift_allocObject();
    swift_weakInit();
    sub_1D799CC84(v124, &v116);
    v51 = v98;
    v52 = v111;
    v92 = v36;
    v93 = v37;
    v36(v98, v112, v111);
    v53 = v110;
    v54 = (*(v110 + 80) + 88) & ~*(v110 + 80);
    v55 = swift_allocObject();
    v56 = v99;
    *(v55 + 2) = v50;
    *(v55 + 3) = v56;
    *(v55 + 4) = v108;
    sub_1D799D69C(&v116, (v55 + 40));
    *(v55 + 10) = v113;
    (*(v53 + 32))(&v55[v54], v51, v52);

    swift_unknownObjectRetain();
    sub_1D7D28EEC();

    __swift_project_boxed_opaque_existential_1(&v116, *(&v117 + 1));

    sub_1D7D28AEC();

    __swift_destroy_boxed_opaque_existential_1(&v116);
    v95 = v7[2];
    sub_1D7D2B76C();

    v57 = v103;
    sub_1D7D28EDC();

    v58 = v125;
    v59 = v126;
    __swift_project_boxed_opaque_existential_1(v124, v125);
    (*(v59 + 8))(v122, v58, v59);
    v60 = v122[0];
    v99 = v123;
    v100 = v122[1];
    v61 = MEMORY[0x1E69E7CC0];
    v121 = MEMORY[0x1E69E7CC0];
    *&v116 = MEMORY[0x1E69E7CC0];
    swift_unknownObjectRetain();

    sub_1D7B51A98(v57, &v116, v113, &v121);
    v98 = v7;

    swift_unknownObjectRelease();
    v62 = v116;
    v63 = *(v116 + 16);
    v104 = v60;
    v94 = v116;
    if (v63)
    {
      v120 = v61;
      sub_1D79A8814(0, v63, 0);
      v64 = v120;
      v65 = (v62 + 32);
      type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model(0);
      v66 = v96;
      do
      {
        v67 = *v65;
        v68 = v65[1];
        v69 = v65[3];
        v118 = v65[2];
        v119 = v69;
        v116 = v67;
        v117 = v68;
        v70 = *v65;
        v71 = v65[1];
        v72 = v65[3];
        v13[2] = v65[2];
        v13[3] = v72;
        *v13 = v70;
        v13[1] = v71;
        swift_storeEnumTagMultiPayload();
        *(v13 + *(v66 + 20)) = v61;
        sub_1D79F5B54(&v116, &v115);
        v120 = v64;
        v74 = *(v64 + 16);
        v73 = *(v64 + 24);
        if (v74 >= v73 >> 1)
        {
          sub_1D79A8814(v73 > 1, v74 + 1, 1);
          v66 = v96;
          v64 = v120;
        }

        *(v64 + 16) = v74 + 1;
        sub_1D7B551E8(v13, v64 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v74, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
        v65 += 4;
        --v63;
      }

      while (v63);
      v75 = v103;
      v60 = v104;
    }

    else
    {
      v75 = v57;
      v64 = v61;
    }

    v76 = v111;
    v77 = v112;
    v78 = v110;
    v79 = v107;
    if (v60)
    {
      v80 = v60;
      v81 = v97;
      v92(v97, v112, v111);
      v82 = v121;
      sub_1D7A0EF34(v80);
      v114 = sub_1D7B52768(v82, v94, sub_1D7B57354);
      swift_unknownObjectRelease();

      v83 = v80;
      v78 = v110;
      v76 = v111;
      sub_1D7A0EB20(v83);

      (*(v105 + 8))(v75, v107);
      v84 = (*(v78 + 88))(v81, v76);
      if (v84 == *MEMORY[0x1E69B5F60] || v84 == *MEMORY[0x1E69B5F20] || v84 == *MEMORY[0x1E69B5EA0])
      {
        v85 = v99 & 1 | 0x8000000000000000;
        v87 = v106;
        v88 = v102;
        v86 = v114;
      }

      else
      {

        v85 = v99 & 1;
        (*(v78 + 8))(v97, v76);
        v86 = 0;
        v87 = v106;
        v88 = v102;
      }

      v89 = v104;
      *v88 = v64;
      v88[1] = v89;
      v88[2] = v100;
      v88[3] = v85;
      v88[4] = v86;
      v77 = v112;
    }

    else
    {

      swift_unknownObjectRelease();

      (*(v105 + 8))(v75, v79);

      v88 = v102;
      *v102 = v64;
      v87 = v106;
    }

    swift_storeEnumTagMultiPayload();
    sub_1D7B571FC(qword_1EE0C7510, type metadata accessor for ArticleViewerBlueprint);
    sub_1D7D28F1C();
    swift_unknownObjectRelease();

    (*(v78 + 8))(v77, v76);
    sub_1D7A0EA20(v87);
    sub_1D7B49994(v88, type metadata accessor for ArticleViewerBlueprint);
    __swift_destroy_boxed_opaque_existential_1(v124);
    return v98;
  }

  return v8;
}

char *sub_1D7B43494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v8 = v7;
  v112 = a7;
  v113 = a6;
  v108 = a3;
  v109 = a4;
  v99 = a2;
  v96 = type metadata accessor for ArticleViewerBlueprint.ArticleItem(0);
  v114 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96, v11);
  v13 = (&v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7B55348(0);
  v107 = v14;
  v105 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v100 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v103 = &v91 - v19;
  v20 = sub_1D7D2EB7C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20, v23);
  v97 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v98 = &v91 - v26;
  v27 = type metadata accessor for ArticleViewerBlueprint(0);
  MEMORY[0x1EEE9AC00](v27, v27);
  v102 = (&v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = (&v91 - v31);
  v131 = a1;
  v7[3] = a1;
  *(&v91 - v31) = MEMORY[0x1E69E7CC0];
  v101 = v33;
  swift_storeEnumTagMultiPayload();
  sub_1D7B57244(0, &qword_1EE0C0450, type metadata accessor for ArticleViewerBlueprint, MEMORY[0x1E69D6538]);
  swift_allocObject();
  v104 = a1;

  v7[2] = sub_1D7D28ECC();
  sub_1D7A0E924(a5, (v7 + 5));
  v34 = v112;
  v7[4] = v113;
  v35 = *(*v7 + 152);
  v110 = v21;
  v111 = v20;
  v38 = *(v21 + 16);
  v37 = v21 + 16;
  v36 = v38;
  v38(v7 + v35, v34, v20);
  sub_1D7A0E924(a5, &v127);
  v106 = a5;
  if (v130)
  {
    swift_unknownObjectRetain();

    v39 = v127;
    v40 = v128;
    v114 = v129;
    sub_1D7B348D0();
    v108 = v41;
    v103 = sub_1D7B571FC(&qword_1EC9E5040, sub_1D7B348D0);
    sub_1D7D2B76C();
    v42 = swift_allocObject();
    swift_weakInit();
    v43 = swift_allocObject();
    v44 = v104;
    *(v43 + 16) = v42;
    *(v43 + 24) = v44;
    v101 = *(&v39 + 1);
    v102 = v39;
    *(v43 + 32) = v39;
    v99 = v40;
    *(v43 + 48) = v40;
    *(v43 + 56) = v114;

    sub_1D7A03D20(v39, *(&v39 + 1), v40);
    sub_1D7D28EEC();

    __swift_project_boxed_opaque_existential_1(&v116, *(&v117 + 1));

    sub_1D7D28AEC();

    __swift_destroy_boxed_opaque_existential_1(&v116);
    v98 = v7[2];
    sub_1D7D2B76C();

    v45 = v100;
    sub_1D7D28EDC();

    v46 = v101;
    v47 = v102;
    v48 = v99;
    sub_1D7B44C30(v45, v102, v101, v99, v114, sub_1D7B52EC4, v32);
    (*(v105 + 8))(v45, v107);
    sub_1D7B571FC(qword_1EE0C7510, type metadata accessor for ArticleViewerBlueprint);
    sub_1D7D28F1C();

    sub_1D79DA510(v47, v46, v48);
    swift_unknownObjectRelease();
    (*(v110 + 8))(v112, v111);
    sub_1D7A0EA20(v106);
    sub_1D7B49994(v32, type metadata accessor for ArticleViewerBlueprint);
  }

  else
  {
    sub_1D799D69C(&v127, v124);
    sub_1D7B348D0();
    v100 = v49;
    v94 = sub_1D7B571FC(&qword_1EC9E5040, sub_1D7B348D0);
    swift_unknownObjectRetain_n();
    sub_1D7D2B76C();
    v50 = swift_allocObject();
    swift_weakInit();
    sub_1D799CC84(v124, &v116);
    v51 = v98;
    v52 = v111;
    v92 = v36;
    v93 = v37;
    v36(v98, v112, v111);
    v53 = v110;
    v54 = (*(v110 + 80) + 88) & ~*(v110 + 80);
    v55 = swift_allocObject();
    v56 = v99;
    *(v55 + 2) = v50;
    *(v55 + 3) = v56;
    *(v55 + 4) = v108;
    sub_1D799D69C(&v116, (v55 + 40));
    *(v55 + 10) = v113;
    (*(v53 + 32))(&v55[v54], v51, v52);

    swift_unknownObjectRetain();
    sub_1D7D28EEC();

    __swift_project_boxed_opaque_existential_1(&v116, *(&v117 + 1));

    sub_1D7D28AEC();

    __swift_destroy_boxed_opaque_existential_1(&v116);
    v95 = v7[2];
    sub_1D7D2B76C();

    v57 = v103;
    sub_1D7D28EDC();

    v58 = v125;
    v59 = v126;
    __swift_project_boxed_opaque_existential_1(v124, v125);
    (*(v59 + 8))(v122, v58, v59);
    v60 = v122[0];
    v99 = v123;
    v100 = v122[1];
    v61 = MEMORY[0x1E69E7CC0];
    v121 = MEMORY[0x1E69E7CC0];
    *&v116 = MEMORY[0x1E69E7CC0];
    swift_unknownObjectRetain();

    sub_1D7B523F8(v57, &v116, v113, &v121);
    v98 = v7;

    swift_unknownObjectRelease();
    v62 = v116;
    v63 = *(v116 + 16);
    v104 = v60;
    v94 = v116;
    if (v63)
    {
      v120 = v61;
      sub_1D79A8814(0, v63, 0);
      v64 = v120;
      v65 = (v62 + 32);
      type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model(0);
      v66 = v96;
      do
      {
        v67 = *v65;
        v68 = v65[1];
        v69 = v65[3];
        v118 = v65[2];
        v119 = v69;
        v116 = v67;
        v117 = v68;
        v70 = *v65;
        v71 = v65[1];
        v72 = v65[3];
        v13[2] = v65[2];
        v13[3] = v72;
        *v13 = v70;
        v13[1] = v71;
        swift_storeEnumTagMultiPayload();
        *(v13 + *(v66 + 20)) = v61;
        sub_1D79F5B54(&v116, &v115);
        v120 = v64;
        v74 = *(v64 + 16);
        v73 = *(v64 + 24);
        if (v74 >= v73 >> 1)
        {
          sub_1D79A8814(v73 > 1, v74 + 1, 1);
          v66 = v96;
          v64 = v120;
        }

        *(v64 + 16) = v74 + 1;
        sub_1D7B551E8(v13, v64 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v74, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
        v65 += 4;
        --v63;
      }

      while (v63);
      v75 = v103;
      v60 = v104;
    }

    else
    {
      v75 = v57;
      v64 = v61;
    }

    v76 = v111;
    v77 = v112;
    v78 = v110;
    v79 = v107;
    if (v60)
    {
      v80 = v60;
      v81 = v97;
      v92(v97, v112, v111);
      v82 = v121;
      sub_1D7A0EF34(v80);
      v114 = sub_1D7B52768(v82, v94, sub_1D7A0EF78);
      swift_unknownObjectRelease();

      v83 = v80;
      v78 = v110;
      v76 = v111;
      sub_1D7A0EB20(v83);

      (*(v105 + 8))(v75, v107);
      v84 = (*(v78 + 88))(v81, v76);
      if (v84 == *MEMORY[0x1E69B5F60] || v84 == *MEMORY[0x1E69B5F20] || v84 == *MEMORY[0x1E69B5EA0])
      {
        v85 = v99 & 1 | 0x8000000000000000;
        v87 = v106;
        v88 = v102;
        v86 = v114;
      }

      else
      {

        v85 = v99 & 1;
        (*(v78 + 8))(v97, v76);
        v86 = 0;
        v87 = v106;
        v88 = v102;
      }

      v89 = v104;
      *v88 = v64;
      v88[1] = v89;
      v88[2] = v100;
      v88[3] = v85;
      v88[4] = v86;
      v77 = v112;
    }

    else
    {

      swift_unknownObjectRelease();

      (*(v105 + 8))(v75, v79);

      v88 = v102;
      *v102 = v64;
      v87 = v106;
    }

    swift_storeEnumTagMultiPayload();
    sub_1D7B571FC(qword_1EE0C7510, type metadata accessor for ArticleViewerBlueprint);
    sub_1D7D28F1C();
    swift_unknownObjectRelease();

    (*(v78 + 8))(v77, v76);
    sub_1D7A0EA20(v87);
    sub_1D7B49994(v88, type metadata accessor for ArticleViewerBlueprint);
    __swift_destroy_boxed_opaque_existential_1(v124);
    return v98;
  }

  return v8;
}

uint64_t sub_1D7B4417C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, _OWORD *, uint64_t, uint64_t *), uint64_t (*a9)(__int128 *))
{
  v60 = a8;
  v56 = a7;
  v12 = type metadata accessor for ArticleViewerBlueprint.ArticleItem(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = (&v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_1D7D2EB7C();
  v59 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v58 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ArticleViewerBlueprint(0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = result;
    v54 = v17;
    v62 = v20;
    v55 = v23;
    v27 = a5[3];
    v26 = a5[4];
    __swift_project_boxed_opaque_existential_1(a5, v27);
    (*(v26 + 8))(v67, v27, v26);
    v53 = v67[0];
    v61 = v67[1];
    v57 = v68;
    v28 = MEMORY[0x1E69E7CC0];
    v66 = MEMORY[0x1E69E7CC0];
    *&v64[0] = MEMORY[0x1E69E7CC0];

    swift_unknownObjectRetain();
    v60(a1, v64, a6, &v66);
    v60 = v25;

    swift_unknownObjectRelease();
    v29 = *&v64[0];
    v30 = *(*&v64[0] + 16);
    v52 = *&v64[0];
    if (v30)
    {
      v65 = v28;
      sub_1D79A8814(0, v30, 0);
      v31 = MEMORY[0x1E69E7CC0];
      v32 = v65;
      v33 = (v29 + 32);
      type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model(0);
      do
      {
        v34 = *v33;
        v35 = v33[1];
        v36 = v33[3];
        v64[2] = v33[2];
        v64[3] = v36;
        v64[0] = v34;
        v64[1] = v35;
        v37 = *v33;
        v38 = v33[1];
        v39 = v33[3];
        v16[2] = v33[2];
        v16[3] = v39;
        *v16 = v37;
        v16[1] = v38;
        swift_storeEnumTagMultiPayload();
        *(v16 + *(v12 + 20)) = v31;
        sub_1D79F5B54(v64, v63);
        v65 = v32;
        v41 = *(v32 + 16);
        v40 = *(v32 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_1D79A8814(v40 > 1, v41 + 1, 1);
          v31 = MEMORY[0x1E69E7CC0];
          v32 = v65;
        }

        *(v32 + 16) = v41 + 1;
        sub_1D7B551E8(v16, v32 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v41, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
        v33 += 4;
        --v30;
      }

      while (v30);
    }

    else
    {
      v32 = v28;
    }

    v42 = v55;
    v43 = v54;
    v44 = v53;
    if (v53)
    {
      v51 = a9;
      v45 = v59;
      v46 = v58;
      (*(v59 + 16))(v58, v56, v54);
      v47 = v66;
      sub_1D7A0EF34(v44);
      v56 = sub_1D7B52768(v47, v52, v51);
      sub_1D7A0EB20(v44);

      v48 = (*(v45 + 88))(v46, v43);
      if (v48 == *MEMORY[0x1E69B5F60] || v48 == *MEMORY[0x1E69B5F20] || v48 == *MEMORY[0x1E69B5EA0])
      {
        v49 = v57 & 1 | 0x8000000000000000;
        v50 = v56;
      }

      else
      {

        v49 = v57 & 1;
        (*(v59 + 8))(v58, v43);
        v50 = 0;
      }

      *v42 = v32;
      v42[1] = v44;
      v42[2] = v61;
      v42[3] = v49;
      v42[4] = v50;
    }

    else
    {

      *v42 = v32;
    }

    swift_storeEnumTagMultiPayload();
    sub_1D7B571FC(qword_1EE0C7510, type metadata accessor for ArticleViewerBlueprint);
    sub_1D7D28F1C();
    sub_1D7B49994(v42, type metadata accessor for ArticleViewerBlueprint);
  }

  return result;
}

uint64_t sub_1D7B44768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1D7B56CD0();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ArticleViewerBlueprint(0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = (&v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = a3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D7B56C18();
    v24 = v13;
    sub_1D7B571FC(&unk_1EE0BFE58, sub_1D7B56C18);
    sub_1D7D2B76C();
    sub_1D7D28EDC();

    sub_1D7B44C30(v17, a4, a5, a6, a7, sub_1D7B51E08, v21);
    (*(v14 + 8))(v17, v24);
    sub_1D7B571FC(qword_1EE0C7510, type metadata accessor for ArticleViewerBlueprint);
    sub_1D7D28F1C();
    sub_1D7B49994(v21, type metadata accessor for ArticleViewerBlueprint);
  }

  return result;
}

uint64_t sub_1D7B449CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1D7B55348(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ArticleViewerBlueprint(0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = (&v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = a3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D7B348D0();
    v24 = v13;
    sub_1D7B571FC(&qword_1EC9E5040, sub_1D7B348D0);
    sub_1D7D2B76C();
    sub_1D7D28EDC();

    sub_1D7B44C30(v17, a4, a5, a6, a7, sub_1D7B52EC4, v21);
    (*(v14 + 8))(v17, v24);
    sub_1D7B571FC(qword_1EE0C7510, type metadata accessor for ArticleViewerBlueprint);
    sub_1D7D28F1C();
    sub_1D7B49994(v21, type metadata accessor for ArticleViewerBlueprint);
  }

  return result;
}

uint64_t sub_1D7B44C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t, _OWORD *, double)@<X5>, void *a7@<X8>)
{
  v38 = a2;
  v37 = a7;
  v39 = type metadata accessor for ArticleViewerBlueprint.ArticleItem(0);
  v12 = *(v39 - 8);
  v14 = MEMORY[0x1EEE9AC00](v39, v13);
  v16 = (&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1E69E7CC0];
  *&v41[0] = MEMORY[0x1E69E7CC0];
  a6(a1, v41, v14);
  v18 = *&v41[0];
  v19 = *(*&v41[0] + 16);
  if (v19)
  {
    v34 = a3;
    v35 = a4;
    v36 = a5;
    v42 = v17;
    sub_1D79A8814(0, v19, 0);
    v20 = v42;
    type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model(0);
    v21 = v19 - 1;
    for (i = 32; ; i += 64)
    {
      v23 = *(v18 + i);
      v24 = *(v18 + i + 16);
      v25 = *(v18 + i + 48);
      v41[2] = *(v18 + i + 32);
      v41[3] = v25;
      v41[0] = v23;
      v41[1] = v24;
      v26 = *(v18 + i);
      v27 = *(v18 + i + 16);
      v28 = *(v18 + i + 48);
      v16[2] = *(v18 + i + 32);
      v16[3] = v28;
      *v16 = v26;
      v16[1] = v27;
      swift_storeEnumTagMultiPayload();
      *(v16 + *(v39 + 20)) = v17;
      sub_1D79F5B54(v41, v40);
      v42 = v20;
      v30 = *(v20 + 16);
      v29 = *(v20 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1D79A8814(v29 > 1, v30 + 1, 1);
        v20 = v42;
      }

      *(v20 + 16) = v30 + 1;
      sub_1D7B551E8(v16, v20 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v30, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
      if (!v21)
      {
        break;
      }

      --v21;
    }

    a5 = v36;
    a4 = v35;
    a3 = v34;
  }

  else
  {

    v20 = MEMORY[0x1E69E7CC0];
  }

  v31 = v37;
  v32 = v38;
  *v37 = v20;
  v31[1] = v32;
  v31[2] = a3;
  v31[3] = a4;
  v31[4] = a5;
  type metadata accessor for ArticleViewerBlueprint(0);
  swift_storeEnumTagMultiPayload();
  return sub_1D7A03D20(v32, a3, a4);
}

uint64_t sub_1D7B44EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, _OWORD *, double))
{
  v7 = type metadata accessor for ArticleViewerBlueprint(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = (&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D7B44FF8(a1, a5, v10);
    sub_1D7B571FC(qword_1EE0C7510, type metadata accessor for ArticleViewerBlueprint);
    sub_1D7D28F1C();
    sub_1D7B49994(v10, type metadata accessor for ArticleViewerBlueprint);
  }

  return result;
}

uint64_t sub_1D7B44FF8@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, _OWORD *, double)@<X3>, void *a3@<X8>)
{
  v28 = type metadata accessor for ArticleViewerBlueprint.ArticleItem(0);
  v6 = *(v28 - 8);
  v8 = MEMORY[0x1EEE9AC00](v28, v7);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1E69E7CC0];
  *&v30[0] = MEMORY[0x1E69E7CC0];
  a2(a1, v30, v8);
  v12 = *&v30[0];
  v13 = *(*&v30[0] + 16);
  if (v13)
  {
    v27 = a3;
    v31 = v11;
    sub_1D79A8814(0, v13, 0);
    v14 = v31;
    type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model(0);
    v15 = v13 - 1;
    for (i = 32; ; i += 64)
    {
      v17 = *(v12 + i);
      v18 = *(v12 + i + 16);
      v19 = *(v12 + i + 48);
      v30[2] = *(v12 + i + 32);
      v30[3] = v19;
      v30[0] = v17;
      v30[1] = v18;
      v20 = *(v12 + i);
      v21 = *(v12 + i + 16);
      v22 = *(v12 + i + 48);
      v10[2] = *(v12 + i + 32);
      v10[3] = v22;
      *v10 = v20;
      v10[1] = v21;
      swift_storeEnumTagMultiPayload();
      v23 = v11;
      *(v10 + *(v28 + 20)) = v11;
      sub_1D79F5B54(v30, v29);
      v31 = v14;
      v25 = *(v14 + 16);
      v24 = *(v14 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1D79A8814(v24 > 1, v25 + 1, 1);
        v14 = v31;
      }

      *(v14 + 16) = v25 + 1;
      sub_1D7B551E8(v10, v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v25, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
      if (!v15)
      {
        break;
      }

      --v15;
      v11 = v23;
    }

    a3 = v27;
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v14;
  type metadata accessor for ArticleViewerBlueprint(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D7B4522C(uint64_t *a1, uint64_t (**a2)(void))
{
  v60 = a2;
  v58 = sub_1D7D2E8FC();
  v3 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v4);
  v56 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D7D29C1C();
  v61 = *(v6 - 8);
  v62 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v59 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v63 = v48 - v11;
  v12 = type metadata accessor for EndOfArticleLayoutModel();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v57 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v48 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v48 - v21;
  sub_1D7B57020(0);
  v24 = v23 - 8;
  MEMORY[0x1EEE9AC00](v23, v25);
  v54 = v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = v48 - v29;
  v55 = *a1;
  v53 = sub_1D7B57020;
  sub_1D7B4C274(a1, v48 - v29, sub_1D7B57020);
  v31 = *(v24 + 56);
  sub_1D7A5FC40();
  v33 = v32;
  sub_1D7D2ABBC();
  v34 = *(v33 - 8);
  v51 = *(v34 + 8);
  v52 = v34 + 8;
  v51(&v30[v31], v33);
  v50 = type metadata accessor for EndOfArticleLayoutModel;
  sub_1D7B4C274(v22, v18, type metadata accessor for EndOfArticleLayoutModel);
  v49 = *(v3 + 32);
  v35 = v56;
  v36 = v58;
  v49(v56, v18, v58);
  sub_1D7D2E8DC();
  v37 = (v3 + 8);
  v38 = *(v3 + 8);
  v48[1] = v37;
  v38(v35, v36);
  v48[0] = type metadata accessor for EndOfArticleLayoutModel;
  sub_1D7B49994(v22, type metadata accessor for EndOfArticleLayoutModel);
  v48[2] = *v60;
  v39 = v54;
  sub_1D7B4C274(v60, v54, v53);
  v40 = *(v24 + 56);
  sub_1D7D2ABBC();
  v51((v39 + v40), v33);
  v41 = v57;
  sub_1D7B4C274(v18, v57, v50);
  v49(v35, v41, v36);
  v42 = v59;
  sub_1D7D2E8DC();
  v38(v35, v36);
  sub_1D7B49994(v18, v48[0]);
  v43 = v63;
  LOBYTE(v36) = sub_1D7D2AD3C();
  v44 = *(v61 + 8);
  v45 = v42;
  v46 = v62;
  v44(v45, v62);
  v44(v43, v46);
  return v36 & 1;
}

uint64_t sub_1D7B456A0(uint64_t a1)
{
  sub_1D7B55348(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v45 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A2B598();
  v46 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B560E4();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v42 - v20;
  v22 = *(*v1 + 144);
  swift_beginAccess();
  v47 = v22;
  sub_1D7B4C274(v1 + v22, v21, sub_1D7B560E4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D7B562A0(0, &qword_1EC9E5428, sub_1D7A2B598, sub_1D7B55348);
      v44 = v14;
      v25 = *(v24 + 48);
      v49 = *(v1 + *(*v1 + 152));
      sub_1D7996944(0);
      sub_1D7B571FC(&qword_1EC9E4F68, sub_1D7996944);
      v26 = v1;
      sub_1D7D2AEEC();
      v48 = *(v26 + *(*v26 + 160));
      sub_1D7B348D0();
      sub_1D7B571FC(&qword_1EC9E5040, sub_1D7B348D0);
      sub_1D7D2B77C();
      swift_storeEnumTagMultiPayload();
      v27 = v47;
      swift_beginAccess();
      sub_1D7B5623C(v17, v26 + v27);
      swift_endAccess();
      (*(v5 + 8))(&v21[v25], v4);
      return (*(v9 + 8))(v21, v46);
    }

    sub_1D7B49994(v21, sub_1D7B560E4);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 2)
  {
LABEL_7:
    v39 = *(v1 + *(*v1 + 152));
    v40 = *(v1 + *(*v1 + 160));
    *v17 = a1;
    *(v17 + 1) = v39;
    *(v17 + 2) = v40;
    swift_storeEnumTagMultiPayload();
    v41 = v47;
    swift_beginAccess();

    v38 = v1 + v41;
    goto LABEL_8;
  }

  sub_1D7B562A0(0, &qword_1EC9E5428, sub_1D7A2B598, sub_1D7B55348);
  v30 = v29;
  v31 = *(v9 + 32);
  v42 = *(v29 + 48);
  v43 = v31;
  v44 = v14;
  v32 = v46;
  v31(v12, v21, v46);
  v33 = *(v5 + 32);
  v34 = &v21[v42];
  v35 = v45;
  v33(v45, v34, v4);
  v36 = *(v30 + 48);
  v43(v17, v12, v32);
  v33(&v17[v36], v35, v4);
  swift_storeEnumTagMultiPayload();
  v37 = v47;
  swift_beginAccess();
  v38 = v1 + v37;
LABEL_8:
  sub_1D7B5623C(v17, v38);
  return swift_endAccess();
}

uint64_t sub_1D7B45BFC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v103 = a3;
  v104 = a2;
  v105 = a4;
  sub_1D7B57244(0, &qword_1EE0BD540, type metadata accessor for AlertOpenBlockedStory, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v93 = &v88 - v8;
  v94 = type metadata accessor for AlertOpenBlockedStory();
  v92 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94, v9);
  v91 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1D7D2EB3C();
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98, v11);
  v96 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v95 = &v88 - v15;
  v16 = type metadata accessor for RecipeRouteModel();
  MEMORY[0x1EEE9AC00](v16, v17);
  v101 = (&v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = (&v88 - v21);
  type metadata accessor for BlueprintRecipeViewerToken();
  v23 = swift_allocObject();
  sub_1D7B562A0(0, &qword_1EE0BECB0, sub_1D79A9404, type metadata accessor for RecipeRouteContext);
  v25 = *(v24 + 48);
  v26 = a1[2];
  *v22 = v26;
  v27 = type metadata accessor for RecipeBlueprintRouteModelRequest();
  sub_1D7B4C274(a1 + *(v27 + 24), v22 + v25, type metadata accessor for RecipeRouteContext);
  v90 = v16;
  swift_storeEnumTagMultiPayload();
  v100 = v4;
  v28 = v4[2];
  v29 = v26;

  v99 = v29;
  v30 = [v29 identifier];
  v31 = sub_1D7D3034C();
  v33 = v32;

  sub_1D7B556FC(0, &qword_1EC9E53E8, &off_1F52A61A0, type metadata accessor for BlueprintRecipeViewerBlueprintProvider);
  v35 = v34;
  swift_allocObject();

  v102 = v23;
  v36 = sub_1D7B4C2DC(v28, v31, v33, v23);
  v111[3] = v35;
  v111[4] = &protocol witness table for BlueprintRecipeViewerBlueprintProvider<A>;
  v111[0] = v36;
  v37 = *(a1 + *(v27 + 28));
  if ((v37 & 0xFF00) != 0x200 && (*(a1 + *(v27 + 28)) & 0x100) != 0)
  {
    v38 = v100[3];
    v39 = [objc_msgSend(v99 sourceChannel)];
    swift_unknownObjectRelease();
    if (!v39)
    {
      sub_1D7D3034C();
      v39 = sub_1D7D3031C();
    }

    v40 = [v38 hasMutedSubscriptionForTagID_];

    v41 = v97;
    v42 = *(v97 + 104);
    v89 = v35;
    if (v40)
    {
      v43 = *MEMORY[0x1E69B5E00];
      v44 = v95;
      v45 = v98;
      v42(v95, v43, v98);
    }

    else
    {
      v44 = v95;
      v45 = v98;
      v42(v95, *MEMORY[0x1E69B5DF8], v98);
      v43 = *MEMORY[0x1E69B5E00];
    }

    v46 = v96;
    v42(v96, v43, v45);
    v47 = v44;
    v48 = sub_1D7D2EB2C();
    v49 = *(v41 + 8);
    v49(v46, v45);
    v49(v47, v45);
    v35 = v89;
    if (v48)
    {
      v50 = v100[7];
      v51 = v100[8];
      __swift_project_boxed_opaque_existential_1(v100 + 4, v50);
      v109[0] = v37;
      v52 = v93;
      (*(v51 + 24))(v99, v109, v50, v51);
      v53 = v94;
      if ((*(v92 + 48))(v52, 1, v94) != 1)
      {
        v71 = v91;
        sub_1D7B551E8(v52, v91, type metadata accessor for AlertOpenBlockedStory);
        v72 = a1[1];
        v100 = *a1;
        sub_1D7AD8D2C();
        v74 = v73;
        v75 = swift_allocBox();
        v77 = v76;
        v78 = *(v74 + 48);
        v76[3] = v53;
        v76[4] = sub_1D7B571FC(&qword_1EC9E5370, type metadata accessor for AlertOpenBlockedStory);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v77);
        sub_1D7B4C274(v71, boxed_opaque_existential_1, type metadata accessor for AlertOpenBlockedStory);
        sub_1D7B4C274(v22, v77 + v78, type metadata accessor for RecipeRouteModel);
        v56 = v101;
        *v101 = v75;
        swift_storeEnumTagMultiPayload();
        sub_1D799CC84(v111, v109);
        v80 = __swift_mutable_project_boxed_opaque_existential_1(v109, v110);
        v81 = MEMORY[0x1EEE9AC00](v80, v80);
        v83 = (&v88 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v84 + 16))(v83, v81);
        v85 = *v83;
        type metadata accessor for RecipeBlueprintRouteModel();
        v63 = swift_allocObject();
        v107 = v35;
        v108 = &protocol witness table for BlueprintRecipeViewerBlueprintProvider<A>;
        *&v106 = v85;

        sub_1D7B49994(v71, type metadata accessor for AlertOpenBlockedStory);
        sub_1D7B49994(v22, type metadata accessor for RecipeRouteModel);
        v86 = OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel____lazy_storage___transitionIdentifier;
        sub_1D7B57244(0, &qword_1EE0BB250, MEMORY[0x1E69D83F0], MEMORY[0x1E69E6720]);
        (*(*(v87 - 8) + 56))(v63 + v86, 1, 1, v87);
        *(v63 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel__observer + 8) = 0;
        swift_unknownObjectWeakInit();
        *(v63 + 16) = v100;
        *(v63 + 24) = v72;
        v66 = v63 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel_routeModel;
        v67 = v56;
        goto LABEL_12;
      }

      sub_1D7B4C198(v52, &qword_1EE0BD540, type metadata accessor for AlertOpenBlockedStory);
    }
  }

  v55 = *a1;
  v54 = a1[1];
  v56 = v101;
  sub_1D7B4C274(v22, v101, type metadata accessor for RecipeRouteModel);
  sub_1D799CC84(v111, v109);
  v57 = __swift_mutable_project_boxed_opaque_existential_1(v109, v110);
  v58 = MEMORY[0x1EEE9AC00](v57, v57);
  v60 = (&v88 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v61 + 16))(v60, v58);
  v62 = *v60;
  type metadata accessor for RecipeBlueprintRouteModel();
  v63 = swift_allocObject();
  v107 = v35;
  v108 = &protocol witness table for BlueprintRecipeViewerBlueprintProvider<A>;
  *&v106 = v62;

  sub_1D7B49994(v22, type metadata accessor for RecipeRouteModel);
  v64 = OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel____lazy_storage___transitionIdentifier;
  sub_1D7B57244(0, &qword_1EE0BB250, MEMORY[0x1E69D83F0], MEMORY[0x1E69E6720]);
  (*(*(v65 - 8) + 56))(v63 + v64, 1, 1, v65);
  *(v63 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel__observer + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v63 + 16) = v55;
  *(v63 + 24) = v54;
  v66 = v63 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel_routeModel;
  v67 = v56;
LABEL_12:
  sub_1D7B4C274(v67, v66, type metadata accessor for RecipeRouteModel);
  sub_1D7B551E8(v56, v63 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel_currentModel, type metadata accessor for RecipeRouteModel);
  sub_1D799D69C(&v106, v63 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel_blueprintProvider);
  *(v63 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel_blueprintTraits) = MEMORY[0x1E69E7CC0];
  *(v63 + OBJC_IVAR____TtC12NewsArticles25RecipeBlueprintRouteModel__observer + 8) = v103;
  swift_unknownObjectWeakAssign();
  __swift_destroy_boxed_opaque_existential_1(v109);
  v68 = v105;
  v69 = v102;
  *v105 = v63;
  v68[1] = v69;
  return __swift_destroy_boxed_opaque_existential_1(v111);
}

uint64_t sub_1D7B46730(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  sub_1D7B57244(0, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v16 - v10;
  sub_1D7D3085C();
  v12 = sub_1D7D3087C();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v4;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;

  swift_unknownObjectRetain();
  v14 = a3;
  sub_1D7C4C028(0, 0, v11, &unk_1D7D4FC90, v13);
}

uint64_t sub_1D7B4688C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[7] = *a4;
  v8 = sub_1D7D2BA4C();
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7B46978, 0, 0);
}

uint64_t sub_1D7B46978()
{
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1D7B46A2C;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];

  return sub_1D7B2BD1C(v4, v2, v3);
}

uint64_t sub_1D7B46A2C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 96) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1D7B46B80, 0, 0);
  }
}

uint64_t sub_1D7B46B80()
{
  v1 = (*(*(v0[7] + 88) + 40))(v0[12], *(v0[7] + 80));
  v0[13] = v1;

  v0[2] = v1;
  v2 = swift_task_alloc();
  v0[14] = v2;
  sub_1D7B558E0(0);
  v4 = v3;
  v5 = sub_1D7B571FC(&unk_1EC9E5410, sub_1D7B558E0);
  *v2 = v0;
  v2[1] = sub_1D7B46CC8;
  v6 = v0[10];

  return MEMORY[0x1EEE46930](v6, v0 + 2, v4, v5);
}

uint64_t sub_1D7B46CC8()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1D7B46FD8;
  }

  else
  {
    (*(v2[9] + 8))(v2[10], v2[8]);
    v3 = sub_1D7B46DF4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D7B46DF4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    sub_1D7D3084C();
    v0[17] = sub_1D7D3083C();
    v3 = sub_1D7D307DC();

    return MEMORY[0x1EEE6DFA0](sub_1D7B46EE0, v3, v2);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1D7B46EE0()
{

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1D7B2ACB0();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1D7B46F6C, 0, 0);
}

uint64_t sub_1D7B46F6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D7B46FD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D7B47044()
{
  v1 = *v0;
  v2 = CACurrentMediaTime();
  sub_1D7D29FFC();
  v3 = *(v1 + 88);
  v4 = *(v1 + 80);
  (*(v3 + 56))();

  if (qword_1EC9DFDA0 != -1)
  {
    swift_once();
  }

  v5 = sub_1D7D29AFC();
  __swift_project_value_buffer(v5, qword_1ECA0BB60);
  v6 = sub_1D7D29ADC();
  v7 = sub_1D7D30C2C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D7987000, v6, v7, "EndOfRecipe feed relayout starting", v8, 2u);
    MEMORY[0x1DA7102E0](v8, -1, -1);
  }

  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 2) = v4;
  *(v10 + 3) = v3;
  v10[4] = v2;
  *(v10 + 5) = v9;
  sub_1D7B558E0(0);
  sub_1D7B571FC(&unk_1EC9E5410, sub_1D7B558E0);

  sub_1D7D2A70C();
}

uint64_t sub_1D7B472B4()
{
  if (qword_1EC9DFDA0 != -1)
  {
    swift_once();
  }

  v0 = sub_1D7D29AFC();
  __swift_project_value_buffer(v0, qword_1ECA0BB60);
  v1 = sub_1D7D29ADC();
  v2 = sub_1D7D30C2C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 134217984;
    sub_1D7D3094C();
    *(v3 + 4) = v4;
    _os_log_impl(&dword_1D7987000, v1, v2, "EndOfRecipe feed relayout finished; time=%fms", v3, 0xCu);
    MEMORY[0x1DA7102E0](v3, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1D7B2ACB0();
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

void sub_1D7B47424(uint64_t a1, uint64_t a2)
{
  sub_1D7A060E8();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B57244(0, &qword_1EC9E5400, type metadata accessor for EndOfRecipeRouteModel, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = (&v29 - v12);
  v14 = type metadata accessor for EndOfRecipeRouteModel();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B4782C(a1, a2, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1D7B4C198(v13, &qword_1EC9E5400, type metadata accessor for EndOfRecipeRouteModel);
    if (qword_1EC9DFDA0 != -1)
    {
      swift_once();
    }

    v19 = sub_1D7D29AFC();
    __swift_project_value_buffer(v19, qword_1ECA0BB60);
    (*(v6 + 16))(v9, a1, v5);
    v20 = sub_1D7D29ADC();
    v21 = sub_1D7D30C4C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136315138;
      v24 = sub_1D7D29ECC();
      v26 = v25;
      (*(v6 + 8))(v9, v5);
      v27 = sub_1D7B06D4C(v24, v26, &v30);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_1D7987000, v20, v21, "Failed to find route for selected item=%s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1DA7102E0](v23, -1, -1);
      MEMORY[0x1DA7102E0](v22, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }
  }

  else
  {
    sub_1D7B551E8(v13, v18, type metadata accessor for EndOfRecipeRouteModel);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      __swift_project_boxed_opaque_existential_1((Strong + 48), *(Strong + 72));
      sub_1D7B5A104(v18);
      sub_1D7B49994(v18, type metadata accessor for EndOfRecipeRouteModel);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7B49994(v18, type metadata accessor for EndOfRecipeRouteModel);
    }
  }
}

uint64_t sub_1D7B4782C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v158 = a3;
  v152 = a2;
  v4 = sub_1D7D2EC5C();
  v145 = *(v4 - 8);
  v146 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v143 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v142 = &v123 - v9;
  v150 = type metadata accessor for RecipeBlueprintRouteModelRequest();
  MEMORY[0x1EEE9AC00](v150, v10);
  v151 = (&v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v139 = type metadata accessor for RecipeRouteContext();
  MEMORY[0x1EEE9AC00](v139, v12);
  v148 = (&v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7996CC4();
  v149 = v14;
  v147 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v144 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D7D2EB6C();
  v154 = *(v17 - 8);
  v155 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v153 = &v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_1D7D2EAEC();
  v130 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134, v20);
  v128 = &v123 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7996DA4();
  v137 = v22;
  v136 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v132 = &v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for ArticleNavigationAction();
  MEMORY[0x1EEE9AC00](v138, v25);
  v140 = &v123 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ArticleBlueprintRouteResult(0);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v141 = &v123 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_1D7D2ED3C();
  v129 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133, v30);
  v127 = &v123 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A060E8();
  v33 = v32;
  v135 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v34);
  v131 = &v123 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for ArticleBlueprintRouteRequest(0);
  MEMORY[0x1EEE9AC00](v125, v36);
  v38 = &v123 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A2B598();
  v40 = v39;
  v124 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v41);
  v43 = &v123 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B57244(0, &qword_1EC9E5310, sub_1D7A2B3A0, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v44 - 8, v45);
  v126 = &v123 - v46;
  sub_1D7996B9C();
  v48 = v47;
  v49 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v50);
  v52 = &v123 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for EndOfRecipeModel();
  MEMORY[0x1EEE9AC00](v53, v54);
  v56 = &v123 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = a1;
  sub_1D7D29EEC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v60 = v147;
      v61 = v144;
      v62 = v149;
      (*(v147 + 32))(v144, v56, v149);
      sub_1D7B571FC(&qword_1EC9E2A48, type metadata accessor for EndOfRecipeModel);
      v63 = v153;
      sub_1D7D29EFC();
      v64 = sub_1D7D2EAFC();
      v66 = v65;
      (*(v154 + 8))(v63, v155);
      v67 = v148;
      *v148 = v64;
      *(v67 + 8) = v66;
      *(v67 + 16) = 0;
      *(v67 + 24) = 0;
      *(v67 + 32) = 0;
      v68 = *(v139 + 20);
      v69 = type metadata accessor for ArticleRouteModel();
      (*(*(v69 - 8) + 56))(v67 + v68, 1, 1, v69);
      v70 = v142;
      sub_1D7D2EBCC();
      v71 = sub_1D7D2EC2C();
      v156 = v72;
      v73 = *(v145 + 8);
      v74 = v70;
      v75 = v146;
      v73(v74, v146);
      v76 = v143;
      sub_1D7D2EBCC();
      v77 = sub_1D7D2EC3C();
      v73(v76, v75);
      v79 = v150;
      v78 = v151;
      sub_1D7B4C274(v67, v151 + *(v150 + 24), type metadata accessor for RecipeRouteContext);
      v80 = *(v79 + 32);
      v81 = *MEMORY[0x1E69B5E98];
      v82 = sub_1D7D2EB7C();
      (*(*(v82 - 8) + 104))(v78 + v80, v81, v82);
      v84 = v156;
      v83 = v157;
      *v78 = v71;
      v78[1] = v84;
      v78[2] = v77;
      *(v78 + *(v79 + 28)) = 258;
      sub_1D7B45BFC(v78, v83, &off_1F52A64F0, &v160);
      sub_1D7B49994(v78, type metadata accessor for RecipeBlueprintRouteModelRequest);
      sub_1D7B49994(v67, type metadata accessor for RecipeRouteContext);
      (*(v60 + 8))(v61, v62);
      v85 = v160;

      v86 = v158;
      *v158 = v85;
      v87 = type metadata accessor for EndOfRecipeRouteModel();
      swift_storeEnumTagMultiPayload();
      v88 = *(*(v87 - 8) + 56);
      v89 = v86;
    }

    else
    {
      v113 = v136;
      v114 = v132;
      v115 = v137;
      (*(v136 + 32))(v132, v56, v137);
      v116 = v128;
      sub_1D7D2EBCC();
      v117 = sub_1D7D2EACC();
      (*(v130 + 8))(v116, v134);
      sub_1D7B571FC(&qword_1EC9E2A48, type metadata accessor for EndOfRecipeModel);
      v118 = v153;
      sub_1D7D29EFC();
      v119 = sub_1D7D2EAFC();
      v121 = v120;
      (*(v154 + 8))(v118, v155);
      (*(v113 + 8))(v114, v115);
      v122 = v158;
      *v158 = v117;
      v122[1] = v119;
      v122[2] = v121;
      v87 = type metadata accessor for EndOfRecipeRouteModel();
      swift_storeEnumTagMultiPayload();
      v88 = *(*(v87 - 8) + 56);
      v89 = v122;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D7B49994(v56, type metadata accessor for EndOfRecipeModel);
      v58 = type metadata accessor for EndOfRecipeRouteModel();
      return (*(*(v58 - 8) + 56))(v158, 1, 1, v58);
    }

    v123 = v49;
    v90 = *(v49 + 32);
    v91 = v48;
    v90(v52, v56, v48);
    sub_1D7D2A6EC();
    v159 = v160;
    sub_1D7996944(0);
    sub_1D7B571FC(&qword_1EC9E4F68, sub_1D7996944);
    sub_1D7D2AEEC();

    v92 = v156;
    sub_1D7D29ECC();
    v93 = v126;
    sub_1D7D2C79C();

    (*(v124 + 8))(v43, v40);
    v94 = v135;
    v95 = v131;
    (*(v135 + 16))(v131, v92, v33);
    v96 = v127;
    sub_1D7D2EBCC();
    v97 = sub_1D7D2ED1C();
    (*(v129 + 8))(v96, v133);
    sub_1D7B499F4(v93, (v38 + 48));
    v98 = *(v125 + 36);
    v99 = *MEMORY[0x1E69B5E98];
    v100 = sub_1D7D2EB7C();
    (*(*(v100 - 8) + 104))(&v38[v98], v99, v100);
    v101 = sub_1D7D29ECC();
    v103 = v102;
    (*(v94 + 8))(v95, v33);
    *v38 = v101;
    *(v38 + 1) = v103;
    *(v38 + 2) = 0;
    *(v38 + 3) = 0;
    *(v38 + 4) = v97;
    *(v38 + 20) = 512;
    v104 = v157;
    v105 = v140;
    swift_storeEnumTagMultiPayload();
    v106 = v141;
    sub_1D7B4AF9C(v38, v104, &off_1F52A6500, v105, 0, 0, v141);
    sub_1D7B49994(v105, type metadata accessor for ArticleNavigationAction);
    sub_1D7B49994(v38, type metadata accessor for ArticleBlueprintRouteRequest);
    sub_1D7B4C198(v93, &qword_1EC9E5310, sub_1D7A2B3A0);
    (*(v123 + 8))(v52, v91);
    sub_1D7B562A0(0, &qword_1EC9E5320, type metadata accessor for RouteModel, MEMORY[0x1E69D8098]);
    v108 = *(v107 + 48);
    sub_1D7B4C208();
    v110 = *(v109 + 48);
    v111 = v158;
    sub_1D7B4C274(v106, v158, type metadata accessor for ArticleRouteModel);
    sub_1D7B49994(v106, type metadata accessor for ArticleBlueprintRouteResult);
    *(v111 + v110) = 0;
    type metadata accessor for RouteModel();
    swift_storeEnumTagMultiPayload();
    v112 = sub_1D7D2B54C();
    (*(*(v112 - 8) + 16))(v111 + v108, v152, v112);
    v87 = type metadata accessor for EndOfRecipeRouteModel();
    swift_storeEnumTagMultiPayload();
    v88 = *(*(v87 - 8) + 56);
    v89 = v111;
  }

  return v88(v89, 0, 1, v87);
}

uint64_t *sub_1D7B48840()
{
  v1 = *v0;
  sub_1D79C92AC((v0 + 2));

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1D7B48938()
{
  sub_1D7B48840();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7B489A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1D7B489FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v106 = a3;
  v105 = a2;
  v129 = a4;
  v5 = sub_1D7D2EAEC();
  v114 = *(v5 - 8);
  v115 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v113 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for RecipeBlueprintRouteModelRequest();
  MEMORY[0x1EEE9AC00](v108, v8);
  v111 = (&v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v104 = type metadata accessor for RecipeRouteContext();
  MEMORY[0x1EEE9AC00](v104, v10);
  v110 = (&v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = sub_1D7D2EC5C();
  v109 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112, v12);
  v107 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for ArticleNavigationAction();
  MEMORY[0x1EEE9AC00](v121, v14);
  v122 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ArticleBlueprintRouteResult(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v123 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B56050();
  v20 = v19;
  v119 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v118 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for ArticleBlueprintRouteRequest(0);
  MEMORY[0x1EEE9AC00](v117, v23);
  v25 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A2B598();
  v27 = v26;
  v116 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B57244(0, &qword_1EC9E5310, sub_1D7A2B3A0, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v120 = &v102 - v33;
  v34 = sub_1D7D2ED3C();
  v127 = *(v34 - 8);
  v128 = v34;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v102 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1D7D2EB6C();
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v40);
  v42 = &v102 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v102 - v45;
  v125 = v20;
  v126 = a1;
  sub_1D7D29EFC();
  v47 = (*(v39 + 88))(v46, v38);
  if (v47 == *MEMORY[0x1E69B5E20] || v47 == *MEMORY[0x1E69B5DC8] || v47 == *MEMORY[0x1E69B5E60])
  {
    goto LABEL_25;
  }

  if (v47 != *MEMORY[0x1E69B5E70])
  {
    if (v47 != *MEMORY[0x1E69B5E78] && v47 != *MEMORY[0x1E69B5E38] && v47 != *MEMORY[0x1E69B5DC0])
    {
      if (v47 == *MEMORY[0x1E69B5E28])
      {
        (*(v39 + 96))(v46, v38);
        v73 = v113;
        v74 = v114;
        v75 = v115;
        (*(v114 + 32))(v113, v46, v115);
        v76 = sub_1D7D2EACC();
        sub_1D7D29EFC();
        v77 = sub_1D7D2EAFC();
        v79 = v78;
        (*(v39 + 8))(v42, v38);
        (*(v74 + 8))(v73, v75);
        v80 = v129;
        *v129 = v76;
        v80[1] = v77;
        v80[2] = v79;
        v68 = type metadata accessor for EndOfRecipeRouteModel();
        swift_storeEnumTagMultiPayload();
        v69 = *(*(v68 - 8) + 56);
        v70 = v80;
        goto LABEL_6;
      }

      if (v47 != *MEMORY[0x1E69B5DB8] && v47 != *MEMORY[0x1E69B5E68] && v47 != *MEMORY[0x1E69B5E18] && v47 != *MEMORY[0x1E69B5E40])
      {
        if (v47 == *MEMORY[0x1E69B5E50])
        {
          (*(v39 + 96))(v46, v38);
          v81 = v109;
          v82 = v107;
          (*(v109 + 32))(v107, v46, v112);
          v83 = v106;

          v84 = sub_1D7D29ECC();
          v85 = v110;
          *v110 = v105;
          *(v85 + 8) = v83;
          *(v85 + 16) = v84;
          *(v85 + 24) = v86;
          *(v85 + 32) = 1;
          v87 = *(v104 + 20);
          v88 = type metadata accessor for ArticleRouteModel();
          (*(*(v88 - 8) + 56))(v85 + v87, 1, 1, v88);
          v89 = sub_1D7D2EC2C();
          v91 = v90;
          v92 = sub_1D7D2EC3C();
          v93 = v108;
          v94 = v111;
          sub_1D7B4C274(v85, v111 + *(v108 + 24), type metadata accessor for RecipeRouteContext);
          v95 = *(v93 + 32);
          v96 = *MEMORY[0x1E69B5E98];
          v97 = sub_1D7D2EB7C();
          (*(*(v97 - 8) + 104))(v94 + v95, v96, v97);
          *v94 = v89;
          v94[1] = v91;
          v94[2] = v92;
          *(v94 + *(v93 + 28)) = 258;
          sub_1D7B45BFC(v94, v124, &off_1F52A64F0, v131);
          v98 = v131[0];
          sub_1D7B456A0(v131[1]);
          sub_1D7B49994(v94, type metadata accessor for RecipeBlueprintRouteModelRequest);
          sub_1D7B49994(v85, type metadata accessor for RecipeRouteContext);
          (*(v81 + 8))(v82, v112);

          v99 = v129;
          *v129 = v98;
          v68 = type metadata accessor for EndOfRecipeRouteModel();
          swift_storeEnumTagMultiPayload();
          v69 = *(*(v68 - 8) + 56);
          v70 = v99;
          goto LABEL_6;
        }

        if (v47 != *MEMORY[0x1E69B5DF0] && v47 != *MEMORY[0x1E69B5E48] && v47 != *MEMORY[0x1E69B5DD0] && v47 != *MEMORY[0x1E69B5E10] && v47 != *MEMORY[0x1E69B5E58])
        {
          if (v47 != *MEMORY[0x1E69B5E30])
          {
            v100 = type metadata accessor for EndOfRecipeRouteModel();
            (*(*(v100 - 8) + 56))(v129, 1, 1, v100);
            return (*(v39 + 8))(v46, v38);
          }

          goto LABEL_26;
        }
      }
    }

LABEL_25:
    (*(v39 + 8))(v46, v38);
LABEL_26:
    v72 = type metadata accessor for EndOfRecipeRouteModel();
    v69 = *(*(v72 - 8) + 56);
    v70 = v129;
    v71 = 1;
    return v69(v70, v71, 1, v72);
  }

  (*(v39 + 96))(v46, v38);
  v48 = *(v127 + 32);
  v103 = v37;
  v48(v37, v46, v128);
  v49 = v124;
  sub_1D7D2A6EC();
  v130 = v131[0];
  sub_1D7996944(0);
  sub_1D7B571FC(&qword_1EC9E4F68, sub_1D7996944);
  sub_1D7D2AEEC();

  v50 = v125;
  v51 = v126;
  sub_1D7D29ECC();
  v52 = v120;
  sub_1D7D2C79C();

  (*(v116 + 8))(v30, v27);
  v54 = v118;
  v53 = v119;
  (*(v119 + 16))(v118, v51, v50);
  v55 = v103;
  v56 = sub_1D7D2ED1C();
  sub_1D7B499F4(v52, (v25 + 48));
  v57 = *(v117 + 36);
  v58 = *MEMORY[0x1E69B5E98];
  v59 = sub_1D7D2EB7C();
  (*(*(v59 - 8) + 104))(&v25[v57], v58, v59);
  v60 = sub_1D7D29ECC();
  v62 = v61;
  (*(v53 + 8))(v54, v50);
  *v25 = v60;
  *(v25 + 1) = v62;
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  *(v25 + 4) = v56;
  *(v25 + 20) = 512;
  v63 = v122;
  swift_storeEnumTagMultiPayload();
  v64 = v123;
  sub_1D7B4AF9C(v25, v49, &off_1F52A6500, v63, 0, 0, v123);
  sub_1D7B49994(v63, type metadata accessor for ArticleNavigationAction);
  sub_1D7B562A0(0, &qword_1EC9E5320, type metadata accessor for RouteModel, MEMORY[0x1E69D8098]);
  sub_1D7B4C208();
  v66 = *(v65 + 48);
  v67 = v129;
  sub_1D7B4C274(v64, v129, type metadata accessor for ArticleRouteModel);
  *(v67 + v66) = 0;
  type metadata accessor for RouteModel();
  swift_storeEnumTagMultiPayload();
  sub_1D7D2B53C();
  sub_1D7B49994(v64, type metadata accessor for ArticleBlueprintRouteResult);
  sub_1D7B49994(v25, type metadata accessor for ArticleBlueprintRouteRequest);
  sub_1D7B4C198(v52, &qword_1EC9E5310, sub_1D7A2B3A0);
  (*(v127 + 8))(v55, v128);
  v68 = type metadata accessor for EndOfRecipeRouteModel();
  swift_storeEnumTagMultiPayload();
  v69 = *(*(v68 - 8) + 56);
  v70 = v67;
LABEL_6:
  v71 = 0;
  v72 = v68;
  return v69(v70, v71, 1, v72);
}

uint64_t sub_1D7B498C0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1D7B2ACB0();
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

uint64_t sub_1D7B49994(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7B499F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69E6720];
  sub_1D7B57244(0, &qword_1EC9E5310, sub_1D7A2B3A0, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for EndOfRecipeSectionDescriptor();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B552D4(a1, v8, &qword_1EC9E5310, sub_1D7A2B3A0, v4, sub_1D7B57244);
  sub_1D7A2B3A0();
  v14 = v13;
  v15 = *(v13 - 8);
  if ((*(v15 + 48))(v8, 1, v13) == 1)
  {
    result = sub_1D7B4C198(v8, &qword_1EC9E5310, sub_1D7A2B3A0);
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 40) = -1;
  }

  else
  {
    sub_1D7D2A43C();
    (*(v15 + 8))(v8, v14);
    v19 = v9;
    v20 = &protocol witness table for EndOfRecipeSectionDescriptor;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
    sub_1D7B551E8(v12, boxed_opaque_existential_1, type metadata accessor for EndOfRecipeSectionDescriptor);
    sub_1D799D69C(&v18, v21);
    result = sub_1D799D69C(v21, a2);
    *(a2 + 40) = 0;
  }

  return result;
}

void sub_1D7B49C38(void **a1)
{
  sub_1D7B57020(0);
  v3 = *(v2 - 8);
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1D7B5056C(v4);
  }

  v5 = v4[2];
  v6[0] = v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v6[1] = v5;
  sub_1D7B4C8D0(v6);
  *a1 = v4;
}

uint64_t sub_1D7B49CE0(void **a1, uint64_t (*a2)(uint64_t, uint64_t), void (*a3)(uint64_t, void, uint64_t, unint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, void *))
{
  sub_1D7B554EC(0);
  v9 = *(v8 - 8);
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1D7B50580(v10);
  }

  v11 = v10[2];
  v13[0] = v10 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v13[1] = v11;
  result = sub_1D7B4C9FC(v13, a2, a3, a4);
  *a1 = v10;
  return result;
}

uint64_t sub_1D7B49DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v156 = a5;
  v157 = a6;
  v153 = a4;
  v147 = a3;
  v148 = a2;
  v170 = a7;
  v8 = sub_1D7D2EB7C();
  v149 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69E6720];
  sub_1D7B57244(0, &qword_1EE0BD540, type metadata accessor for AlertOpenBlockedStory, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v151 = &v146 - v15;
  v16 = type metadata accessor for AlertOpenBlockedStory();
  v150 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v146 = &v146 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_1D7D2EB3C();
  v172 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155, v19);
  v154 = &v146 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v146 - v23;
  v165 = type metadata accessor for ArticleViewerBlueprintRouteArticle();
  MEMORY[0x1EEE9AC00](v165, v25);
  v166 = (&v146 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v160 = type metadata accessor for ArticleViewerBlueprint(0);
  MEMORY[0x1EEE9AC00](v160, v27);
  v161 = &v146 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v163 = &v146 - v31;
  v159 = type metadata accessor for ArticleViewerBlueprint.ArticleItem(0);
  MEMORY[0x1EEE9AC00](v159, v32);
  v34 = (&v146 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v158 = type metadata accessor for ArticleNavigationAction();
  MEMORY[0x1EEE9AC00](v158, v35);
  v175 = &v146 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B57244(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0], v12);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v164 = &v146 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v162 = &v146 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v146 - v45;
  v171 = type metadata accessor for ArticleRouteModel();
  MEMORY[0x1EEE9AC00](v171, v47);
  v169 = (&v146 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for BlueprintArticleViewerToken();
  v173 = swift_allocObject();
  v168 = a1;
  v49 = *(a1 + 32);
  v50 = [v49 routeURL];
  v174 = v49;
  v152 = v16;
  if (v50)
  {
    v157 = v24;
    v51 = v50;
    sub_1D7D281EC();

    v52 = sub_1D7D2824C();
    (*(*(v52 - 8) + 56))(v46, 0, 1, v52);
    sub_1D7B4C198(v46, &qword_1EE0CB770, MEMORY[0x1E6968FB0]);
  }

  else
  {
    v52 = sub_1D7D2824C();
    (*(*(v52 - 8) + 56))(v46, 1, 1, v52);
    sub_1D7B4C198(v46, &qword_1EE0CB770, MEMORY[0x1E6968FB0]);
    if ([v49 contentType] != 1)
    {
      v80 = v168;
      sub_1D7B552D4(v168 + 48, &v178, &qword_1EE0BC150, &type metadata for ArticleBlueprintGroupDataContext, MEMORY[0x1E69E6720], sub_1D7B55820);
      if (BYTE8(v179[1]) == 255)
      {
        sub_1D7B4C860(&v178, &qword_1EE0BC150, &type metadata for ArticleBlueprintGroupDataContext);
        v120 = *v80;
        v91 = *(v80 + 8);
        sub_1D7B56AF0(0, &qword_1EC9E5438, type metadata accessor for BlueprintArticleViewerBlueprintProvider);
        v122 = v121;
        swift_allocObject();
        swift_bridgeObjectRetain_n();

        v100 = v120;
        v124 = sub_1D7B54A50(v123, v120, v91);

        v185 = v122;
        v186 = &protocol witness table for BlueprintArticleViewerBlueprintProvider<A>;
        v184[0] = v124;
      }

      else
      {
        v181 = v178;
        *v182 = v179[0];
        *&v182[9] = *(v179 + 9);
        v166 = v167[2];
        v91 = *(v80 + 8);
        v175 = *v80;
        sub_1D7A0E924(&v181, &v178);
        v92 = type metadata accessor for ArticleBlueprintRouteRequest(0);
        v93 = v11;
        (*(v149 + 16))(v11, v80 + *(v92 + 36), v8);
        sub_1D7B56AF0(0, &qword_1EC9E5440, type metadata accessor for BlueprintGroupArticleViewerBlueprintProvider);
        v95 = v94;
        swift_allocObject();
        swift_bridgeObjectRetain_n();
        v96 = v174;
        swift_unknownObjectRetain();
        v97 = v166;

        v98 = v173;

        v99 = v97;
        v100 = v175;
        v101 = sub_1D7B4283C(v99, v175, v91, v98, &v178, v96, v93);
        v185 = v95;
        v186 = &protocol witness table for BlueprintGroupArticleViewerBlueprintProvider<A>;
        v184[0] = v101;
        sub_1D7A0EA20(&v181);
      }

      v77 = v169;
      v125 = v156;
      v126 = v157;
      v78 = v172;
      if (*(v80 + 24))
      {
        v127 = *(v80 + 16);
        v128 = *(v80 + 24);
      }

      else
      {

        v125 = v156;
        v127 = v100;
        v128 = v91;
      }

      *&v181 = v100;
      *(&v181 + 1) = v91;
      *v182 = v174;
      *&v182[8] = v174;
      *&v182[16] = v125;
      *&v182[24] = v126;
      *&v183 = v127;
      *(&v183 + 1) = v128;
      sub_1D799CC84(v184, v180);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v129 = v167[4];
      }

      else
      {
        swift_unknownObjectRetain();
        v129 = v147;
      }

      type metadata accessor for ArticleBlueprintRouteModel();
      v130 = swift_allocObject();
      *(v130 + 192) = 0;
      swift_unknownObjectWeakInit();
      *(v130 + 248) = 0u;
      *(v130 + 232) = 0u;
      *(v130 + 216) = 0u;
      *(v130 + 200) = 0u;
      v131 = *v182;
      *(v130 + 16) = v181;
      *(v130 + 32) = v131;
      v132 = v183;
      *(v130 + 48) = *&v182[16];
      *(v130 + 64) = v132;
      sub_1D799D69C(v180, v130 + 80);
      *(v130 + 192) = v129;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRetain();
      sub_1D79F5B54(&v181, &v178);
      swift_unknownObjectRetain();
      sub_1D79F5B54(&v181, &v178);

      swift_unknownObjectRelease();
      v133 = *v182;
      *(v130 + 120) = v181;
      *(v130 + 136) = v133;
      v134 = v183;
      *(v130 + 152) = *&v182[16];
      *(v130 + 168) = v134;
      type metadata accessor for ArticleViewerBlueprintRouteModel();
      swift_allocObject();
      v135 = sub_1D7CA81CC(v130);
      swift_setDeallocating();
      v136 = *(v130 + 32);
      v176[0] = *(v130 + 16);
      v176[1] = v136;
      v137 = *(v130 + 64);
      v176[2] = *(v130 + 48);
      v176[3] = v137;
      sub_1D7A0AD5C(v176);
      __swift_destroy_boxed_opaque_existential_1(v130 + 80);
      v138 = *(v130 + 136);
      v177[0] = *(v130 + 120);
      v177[1] = v138;
      v139 = *(v130 + 168);
      v177[2] = *(v130 + 152);
      v177[3] = v139;
      sub_1D7A0AD5C(v177);
      sub_1D79C92AC(v130 + 184);
      v140 = *(v130 + 216);
      v178 = *(v130 + 200);
      v179[0] = v140;
      v141 = *(v130 + 248);
      v179[1] = *(v130 + 232);
      v179[2] = v141;
      sub_1D7B4C860(&v178, &qword_1EE0C0600, &type metadata for Article);
      swift_deallocClassInstance();
      sub_1D7A0AD5C(&v181);
      sub_1D7B562A0(0, &qword_1EE0C36D0, type metadata accessor for ArticleViewerBlueprintRouteModel, type metadata accessor for ArticleNavigationAction);
      v143 = *(v142 + 48);
      *v77 = v135;
      sub_1D7B4C274(v153, v77 + v143, type metadata accessor for ArticleNavigationAction);
      swift_storeEnumTagMultiPayload();
      __swift_destroy_boxed_opaque_existential_1(v184);
      v79 = v173;
      goto LABEL_6;
    }

    v157 = v24;
  }

  v53 = v174;
  v54 = [v174 identifier];
  v55 = sub_1D7D3034C();
  v57 = v56;

  v58 = [swift_unknownObjectRetain() identifier];
  v59 = sub_1D7D3034C();
  v61 = v60;

  *&v181 = v55;
  *(&v181 + 1) = v57;
  *v182 = v53;
  *&v182[16] = 0uLL;
  *&v183 = v59;
  *(&v183 + 1) = v61;
  swift_storeEnumTagMultiPayload();
  sub_1D7D2824C();
  v62 = v162;
  (*(*(v52 - 8) + 56))(v162, 1, 1, v52);
  v63 = *v182;
  *v34 = v181;
  v34[1] = v63;
  v64 = v183;
  v34[2] = *&v182[16];
  v34[3] = v64;
  type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model(0);
  swift_storeEnumTagMultiPayload();
  *(v34 + *(v159 + 20)) = MEMORY[0x1E69E7CC0];
  v65 = v163;
  sub_1D7B4C274(v34, v163, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
  swift_storeEnumTagMultiPayload();
  v66 = type metadata accessor for ArticleViewerBlueprintProvider();
  v67 = swift_allocObject();
  sub_1D7B4C274(v65, v161, type metadata accessor for ArticleViewerBlueprint);
  sub_1D7B57244(0, &qword_1EE0C0450, type metadata accessor for ArticleViewerBlueprint, MEMORY[0x1E69D6538]);
  swift_allocObject();
  sub_1D79F5B54(&v181, &v178);
  v68 = sub_1D7D28ECC();
  sub_1D7B49994(v65, type metadata accessor for ArticleViewerBlueprint);
  *(v67 + 16) = v68;
  v69 = *v182;
  v70 = v166;
  *v166 = v181;
  v70[1] = v69;
  v71 = v183;
  v70[2] = *&v182[16];
  v70[3] = v71;
  swift_storeEnumTagMultiPayload();
  v72 = MEMORY[0x1E6968FB0];
  v73 = v164;
  sub_1D7B552D4(v62, v164, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D7B57244);
  type metadata accessor for ArticleViewerBlueprintRouteModel();
  v74 = swift_allocObject();
  *(&v179[0] + 1) = v66;
  *&v179[1] = &protocol witness table for ArticleViewerBlueprintProvider;
  *&v178 = v67;
  sub_1D7B49994(v34, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
  sub_1D7B4C198(v62, &qword_1EE0CB770, v72);
  *(v74 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shadowObserver + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1D7B4C274(v70, v74 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_article, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  sub_1D799D69C(&v178, v74 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_articleBlueprintProvider);
  sub_1D79A8B40(v73, v74 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_referringURL);
  *(v74 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shadowObserver + 8) = 0;
  swift_unknownObjectWeakAssign();
  sub_1D7B551E8(v70, v74 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shownArticle, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  sub_1D7B562A0(0, &qword_1EE0C36D0, type metadata accessor for ArticleViewerBlueprintRouteModel, type metadata accessor for ArticleNavigationAction);
  v76 = *(v75 + 48);
  v77 = v169;
  *v169 = v74;
  sub_1D7B551E8(v175, v77 + v76, type metadata accessor for ArticleNavigationAction);
  swift_storeEnumTagMultiPayload();
  v78 = v172;
  v79 = v173;
  v24 = v157;
  v80 = v168;
LABEL_6:
  v81 = *(v80 + 40);
  if ((v81 & 0xFF00) != 0x200 && (*(v80 + 40) & 0x100) != 0)
  {
    v82 = v167[5];
    v83 = [v174 sourceChannelID];
    if (v83 && (v84 = v83, v85 = [v82 hasMutedSubscriptionForTagID_], v84, v85))
    {
      v86 = *MEMORY[0x1E69B5E00];
      v87 = *(v78 + 104);
      v88 = v155;
      v87(v24, v86, v155);
      v89 = v86;
      v90 = v88;
      v78 = v172;
    }

    else
    {
      v87 = *(v78 + 104);
      v90 = v155;
      v87(v24, *MEMORY[0x1E69B5DF8], v155);
      v89 = *MEMORY[0x1E69B5E00];
    }

    v102 = v24;
    v103 = v154;
    v87(v154, v89, v90);
    v104 = v90;
    v105 = sub_1D7D2EB2C();
    v106 = *(v78 + 8);
    v106(v103, v104);
    v106(v102, v104);
    if (v105)
    {
      sub_1D7B4C274((v167 + 6), &v181, sub_1D7B55180);
      v107 = *&v182[8];
      if (*&v182[8])
      {
        v108 = v81;
        v109 = *&v182[16];
        __swift_project_boxed_opaque_existential_1(&v181, *&v182[8]);
        LOBYTE(v178) = v108;
        v110 = v151;
        (*(v109 + 8))(v174, &v178, v107, v109);
        __swift_destroy_boxed_opaque_existential_1(&v181);
        v111 = v152;
        if ((*(v150 + 48))(v110, 1, v152) != 1)
        {
          v112 = v146;
          sub_1D7B551E8(v110, v146, type metadata accessor for AlertOpenBlockedStory);
          sub_1D7B55250();
          v114 = v113;
          v115 = swift_allocBox();
          v117 = v116;
          v118 = *(v114 + 48);
          v116[3] = v111;
          v116[4] = sub_1D7B571FC(&qword_1EC9E5370, type metadata accessor for AlertOpenBlockedStory);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v117);
          v79 = v173;
          sub_1D7B551E8(v112, boxed_opaque_existential_1, type metadata accessor for AlertOpenBlockedStory);
          sub_1D7B551E8(v77, v117 + v118, type metadata accessor for ArticleRouteModel);
          *v77 = v115;
          swift_storeEnumTagMultiPayload();
          goto LABEL_28;
        }
      }

      else
      {
        sub_1D7B49994(&v181, sub_1D7B55180);
        v110 = v151;
        (*(v150 + 56))(v151, 1, 1, v152);
      }

      sub_1D7B4C198(v110, &qword_1EE0BD540, type metadata accessor for AlertOpenBlockedStory);
    }
  }

LABEL_28:
  v144 = v170;
  sub_1D7B551E8(v77, v170, type metadata accessor for ArticleRouteModel);
  result = type metadata accessor for ArticleBlueprintRouteResult(0);
  *(v144 + *(result + 20)) = v79;
  return result;
}

uint64_t sub_1D7B4AF9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v156 = a5;
  v157 = a6;
  v153 = a4;
  v147 = a3;
  v148 = a2;
  v170 = a7;
  v8 = sub_1D7D2EB7C();
  v149 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69E6720];
  sub_1D7B57244(0, &qword_1EE0BD540, type metadata accessor for AlertOpenBlockedStory, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v151 = &v146 - v15;
  v16 = type metadata accessor for AlertOpenBlockedStory();
  v150 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v146 = &v146 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_1D7D2EB3C();
  v172 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155, v19);
  v154 = &v146 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v146 - v23;
  v165 = type metadata accessor for ArticleViewerBlueprintRouteArticle();
  MEMORY[0x1EEE9AC00](v165, v25);
  v166 = (&v146 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v160 = type metadata accessor for ArticleViewerBlueprint(0);
  MEMORY[0x1EEE9AC00](v160, v27);
  v161 = &v146 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v163 = &v146 - v31;
  v159 = type metadata accessor for ArticleViewerBlueprint.ArticleItem(0);
  MEMORY[0x1EEE9AC00](v159, v32);
  v34 = (&v146 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v158 = type metadata accessor for ArticleNavigationAction();
  MEMORY[0x1EEE9AC00](v158, v35);
  v175 = &v146 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B57244(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0], v12);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v164 = &v146 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v162 = &v146 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v146 - v45;
  v171 = type metadata accessor for ArticleRouteModel();
  MEMORY[0x1EEE9AC00](v171, v47);
  v169 = (&v146 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for BlueprintArticleViewerToken();
  v173 = swift_allocObject();
  v168 = a1;
  v49 = *(a1 + 32);
  v50 = [v49 routeURL];
  v174 = v49;
  v152 = v16;
  if (v50)
  {
    v157 = v24;
    v51 = v50;
    sub_1D7D281EC();

    v52 = sub_1D7D2824C();
    (*(*(v52 - 8) + 56))(v46, 0, 1, v52);
    sub_1D7B4C198(v46, &qword_1EE0CB770, MEMORY[0x1E6968FB0]);
  }

  else
  {
    v52 = sub_1D7D2824C();
    (*(*(v52 - 8) + 56))(v46, 1, 1, v52);
    sub_1D7B4C198(v46, &qword_1EE0CB770, MEMORY[0x1E6968FB0]);
    if ([v49 contentType] != 1)
    {
      v80 = v168;
      sub_1D7B552D4(v168 + 48, &v178, &qword_1EE0BC150, &type metadata for ArticleBlueprintGroupDataContext, MEMORY[0x1E69E6720], sub_1D7B55820);
      if (BYTE8(v179[1]) == 255)
      {
        sub_1D7B4C860(&v178, &qword_1EE0BC150, &type metadata for ArticleBlueprintGroupDataContext);
        v120 = *v80;
        v91 = *(v80 + 8);
        sub_1D7B556FC(0, &qword_1EC9E5328, &off_1F52A6190, type metadata accessor for BlueprintArticleViewerBlueprintProvider);
        v122 = v121;
        swift_allocObject();
        swift_bridgeObjectRetain_n();

        v100 = v120;
        v124 = sub_1D7B54DE8(v123, v120, v91);

        v185 = v122;
        v186 = &protocol witness table for BlueprintArticleViewerBlueprintProvider<A>;
        v184[0] = v124;
      }

      else
      {
        v181 = v178;
        *v182 = v179[0];
        *&v182[9] = *(v179 + 9);
        v166 = v167[2];
        v91 = *(v80 + 8);
        v175 = *v80;
        sub_1D7A0E924(&v181, &v178);
        v92 = type metadata accessor for ArticleBlueprintRouteRequest(0);
        v93 = v11;
        (*(v149 + 16))(v11, v80 + *(v92 + 36), v8);
        sub_1D7B556FC(0, &unk_1EC9E5378, &off_1F52A6190, type metadata accessor for BlueprintGroupArticleViewerBlueprintProvider);
        v95 = v94;
        swift_allocObject();
        swift_bridgeObjectRetain_n();
        v96 = v174;
        swift_unknownObjectRetain();
        v97 = v166;

        v98 = v173;

        v99 = v97;
        v100 = v175;
        v101 = sub_1D7B43494(v99, v175, v91, v98, &v178, v96, v93);
        v185 = v95;
        v186 = &protocol witness table for BlueprintGroupArticleViewerBlueprintProvider<A>;
        v184[0] = v101;
        sub_1D7A0EA20(&v181);
      }

      v77 = v169;
      v125 = v156;
      v126 = v157;
      v78 = v172;
      if (*(v80 + 24))
      {
        v127 = *(v80 + 16);
        v128 = *(v80 + 24);
      }

      else
      {

        v125 = v156;
        v127 = v100;
        v128 = v91;
      }

      *&v181 = v100;
      *(&v181 + 1) = v91;
      *v182 = v174;
      *&v182[8] = v174;
      *&v182[16] = v125;
      *&v182[24] = v126;
      *&v183 = v127;
      *(&v183 + 1) = v128;
      sub_1D799CC84(v184, v180);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v129 = v167[4];
      }

      else
      {
        swift_unknownObjectRetain();
        v129 = v147;
      }

      type metadata accessor for ArticleBlueprintRouteModel();
      v130 = swift_allocObject();
      *(v130 + 192) = 0;
      swift_unknownObjectWeakInit();
      *(v130 + 248) = 0u;
      *(v130 + 232) = 0u;
      *(v130 + 216) = 0u;
      *(v130 + 200) = 0u;
      v131 = *v182;
      *(v130 + 16) = v181;
      *(v130 + 32) = v131;
      v132 = v183;
      *(v130 + 48) = *&v182[16];
      *(v130 + 64) = v132;
      sub_1D799D69C(v180, v130 + 80);
      *(v130 + 192) = v129;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRetain();
      sub_1D79F5B54(&v181, &v178);
      swift_unknownObjectRetain();
      sub_1D79F5B54(&v181, &v178);

      swift_unknownObjectRelease();
      v133 = *v182;
      *(v130 + 120) = v181;
      *(v130 + 136) = v133;
      v134 = v183;
      *(v130 + 152) = *&v182[16];
      *(v130 + 168) = v134;
      type metadata accessor for ArticleViewerBlueprintRouteModel();
      swift_allocObject();
      v135 = sub_1D7CA81CC(v130);
      swift_setDeallocating();
      v136 = *(v130 + 32);
      v176[0] = *(v130 + 16);
      v176[1] = v136;
      v137 = *(v130 + 64);
      v176[2] = *(v130 + 48);
      v176[3] = v137;
      sub_1D7A0AD5C(v176);
      __swift_destroy_boxed_opaque_existential_1(v130 + 80);
      v138 = *(v130 + 136);
      v177[0] = *(v130 + 120);
      v177[1] = v138;
      v139 = *(v130 + 168);
      v177[2] = *(v130 + 152);
      v177[3] = v139;
      sub_1D7A0AD5C(v177);
      sub_1D79C92AC(v130 + 184);
      v140 = *(v130 + 216);
      v178 = *(v130 + 200);
      v179[0] = v140;
      v141 = *(v130 + 248);
      v179[1] = *(v130 + 232);
      v179[2] = v141;
      sub_1D7B4C860(&v178, &qword_1EE0C0600, &type metadata for Article);
      swift_deallocClassInstance();
      sub_1D7A0AD5C(&v181);
      sub_1D7B562A0(0, &qword_1EE0C36D0, type metadata accessor for ArticleViewerBlueprintRouteModel, type metadata accessor for ArticleNavigationAction);
      v143 = *(v142 + 48);
      *v77 = v135;
      sub_1D7B4C274(v153, v77 + v143, type metadata accessor for ArticleNavigationAction);
      swift_storeEnumTagMultiPayload();
      __swift_destroy_boxed_opaque_existential_1(v184);
      v79 = v173;
      goto LABEL_6;
    }

    v157 = v24;
  }

  v53 = v174;
  v54 = [v174 identifier];
  v55 = sub_1D7D3034C();
  v57 = v56;

  v58 = [swift_unknownObjectRetain() identifier];
  v59 = sub_1D7D3034C();
  v61 = v60;

  *&v181 = v55;
  *(&v181 + 1) = v57;
  *v182 = v53;
  *&v182[16] = 0uLL;
  *&v183 = v59;
  *(&v183 + 1) = v61;
  swift_storeEnumTagMultiPayload();
  sub_1D7D2824C();
  v62 = v162;
  (*(*(v52 - 8) + 56))(v162, 1, 1, v52);
  v63 = *v182;
  *v34 = v181;
  v34[1] = v63;
  v64 = v183;
  v34[2] = *&v182[16];
  v34[3] = v64;
  type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model(0);
  swift_storeEnumTagMultiPayload();
  *(v34 + *(v159 + 20)) = MEMORY[0x1E69E7CC0];
  v65 = v163;
  sub_1D7B4C274(v34, v163, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
  swift_storeEnumTagMultiPayload();
  v66 = type metadata accessor for ArticleViewerBlueprintProvider();
  v67 = swift_allocObject();
  sub_1D7B4C274(v65, v161, type metadata accessor for ArticleViewerBlueprint);
  sub_1D7B57244(0, &qword_1EE0C0450, type metadata accessor for ArticleViewerBlueprint, MEMORY[0x1E69D6538]);
  swift_allocObject();
  sub_1D79F5B54(&v181, &v178);
  v68 = sub_1D7D28ECC();
  sub_1D7B49994(v65, type metadata accessor for ArticleViewerBlueprint);
  *(v67 + 16) = v68;
  v69 = *v182;
  v70 = v166;
  *v166 = v181;
  v70[1] = v69;
  v71 = v183;
  v70[2] = *&v182[16];
  v70[3] = v71;
  swift_storeEnumTagMultiPayload();
  v72 = MEMORY[0x1E6968FB0];
  v73 = v164;
  sub_1D7B552D4(v62, v164, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D7B57244);
  type metadata accessor for ArticleViewerBlueprintRouteModel();
  v74 = swift_allocObject();
  *(&v179[0] + 1) = v66;
  *&v179[1] = &protocol witness table for ArticleViewerBlueprintProvider;
  *&v178 = v67;
  sub_1D7B49994(v34, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
  sub_1D7B4C198(v62, &qword_1EE0CB770, v72);
  *(v74 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shadowObserver + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1D7B4C274(v70, v74 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_article, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  sub_1D799D69C(&v178, v74 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_articleBlueprintProvider);
  sub_1D79A8B40(v73, v74 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_referringURL);
  *(v74 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shadowObserver + 8) = 0;
  swift_unknownObjectWeakAssign();
  sub_1D7B551E8(v70, v74 + OBJC_IVAR____TtC12NewsArticles32ArticleViewerBlueprintRouteModel_shownArticle, type metadata accessor for ArticleViewerBlueprintRouteArticle);
  sub_1D7B562A0(0, &qword_1EE0C36D0, type metadata accessor for ArticleViewerBlueprintRouteModel, type metadata accessor for ArticleNavigationAction);
  v76 = *(v75 + 48);
  v77 = v169;
  *v169 = v74;
  sub_1D7B551E8(v175, v77 + v76, type metadata accessor for ArticleNavigationAction);
  swift_storeEnumTagMultiPayload();
  v78 = v172;
  v79 = v173;
  v24 = v157;
  v80 = v168;
LABEL_6:
  v81 = *(v80 + 40);
  if ((v81 & 0xFF00) != 0x200 && (*(v80 + 40) & 0x100) != 0)
  {
    v82 = v167[5];
    v83 = [v174 sourceChannelID];
    if (v83 && (v84 = v83, v85 = [v82 hasMutedSubscriptionForTagID_], v84, v85))
    {
      v86 = *MEMORY[0x1E69B5E00];
      v87 = *(v78 + 104);
      v88 = v155;
      v87(v24, v86, v155);
      v89 = v86;
      v90 = v88;
      v78 = v172;
    }

    else
    {
      v87 = *(v78 + 104);
      v90 = v155;
      v87(v24, *MEMORY[0x1E69B5DF8], v155);
      v89 = *MEMORY[0x1E69B5E00];
    }

    v102 = v24;
    v103 = v154;
    v87(v154, v89, v90);
    v104 = v90;
    v105 = sub_1D7D2EB2C();
    v106 = *(v78 + 8);
    v106(v103, v104);
    v106(v102, v104);
    if (v105)
    {
      sub_1D7B4C274((v167 + 6), &v181, sub_1D7B55180);
      v107 = *&v182[8];
      if (*&v182[8])
      {
        v108 = v81;
        v109 = *&v182[16];
        __swift_project_boxed_opaque_existential_1(&v181, *&v182[8]);
        LOBYTE(v178) = v108;
        v110 = v151;
        (*(v109 + 8))(v174, &v178, v107, v109);
        __swift_destroy_boxed_opaque_existential_1(&v181);
        v111 = v152;
        if ((*(v150 + 48))(v110, 1, v152) != 1)
        {
          v112 = v146;
          sub_1D7B551E8(v110, v146, type metadata accessor for AlertOpenBlockedStory);
          sub_1D7B55250();
          v114 = v113;
          v115 = swift_allocBox();
          v117 = v116;
          v118 = *(v114 + 48);
          v116[3] = v111;
          v116[4] = sub_1D7B571FC(&qword_1EC9E5370, type metadata accessor for AlertOpenBlockedStory);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v117);
          v79 = v173;
          sub_1D7B551E8(v112, boxed_opaque_existential_1, type metadata accessor for AlertOpenBlockedStory);
          sub_1D7B551E8(v77, v117 + v118, type metadata accessor for ArticleRouteModel);
          *v77 = v115;
          swift_storeEnumTagMultiPayload();
          goto LABEL_28;
        }
      }

      else
      {
        sub_1D7B49994(&v181, sub_1D7B55180);
        v110 = v151;
        (*(v150 + 56))(v151, 1, 1, v152);
      }

      sub_1D7B4C198(v110, &qword_1EE0BD540, type metadata accessor for AlertOpenBlockedStory);
    }
  }

LABEL_28:
  v144 = v170;
  sub_1D7B551E8(v77, v170, type metadata accessor for ArticleRouteModel);
  result = type metadata accessor for ArticleBlueprintRouteResult(0);
  *(v144 + *(result + 20)) = v79;
  return result;
}

uint64_t sub_1D7B4C198(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D7B57244(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D7B4C208()
{
  if (!qword_1EE0C9960[0])
  {
    type metadata accessor for ArticleRouteModel();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EE0C9960);
    }
  }
}

uint64_t sub_1D7B4C274(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7B4C2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  sub_1D7B55348(0);
  v18 = v8;
  v17 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  *(v4 + 24) = a1;
  *&v27 = MEMORY[0x1E69E7CC0];
  v31 = 0x1000000000000000;
  sub_1D7B55820(0, &qword_1EC9E53F0, &type metadata for RecipeViewerBlueprint, MEMORY[0x1E69D6538]);
  swift_allocObject();

  *(v4 + 16) = sub_1D7D28ECC();
  sub_1D7B348D0();
  v16[0] = v12;
  sub_1D7B571FC(&qword_1EC9E5040, sub_1D7B348D0);
  sub_1D7D2B76C();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a2;
  v14[4] = a3;

  sub_1D7D28EEC();

  __swift_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));

  sub_1D7D28AEC();

  __swift_destroy_boxed_opaque_existential_1(&v27);
  sub_1D7D2B76C();

  sub_1D7D28EDC();

  sub_1D7B4C700(v11, v24);

  (*(v17 + 8))(v11, v18);
  v21 = v24[2];
  v22 = v24[3];
  v23 = v25;
  v20 = v24[1];
  v19 = v24[0];
  sub_1D7B5587C();
  sub_1D7D28F1C();

  v29 = v21;
  v30 = v22;
  v31 = v23;
  v27 = v19;
  v28 = v20;
  sub_1D7A4D754(&v27);
  return v4;
}

uint64_t sub_1D7B4C648(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D7B4C700(a1, &v3);
    sub_1D7B5587C();
    sub_1D7D28F1C();

    return sub_1D7A4D754(&v3);
  }

  return result;
}

uint64_t sub_1D7B4C700@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  v21 = MEMORY[0x1E69E7CC0];
  sub_1D7B546E8(a1, &v21);
  v4 = v21;
  v5 = *(v21 + 16);
  if (v5)
  {
    v17 = a2;
    v21 = v3;
    sub_1D7A5C41C(0, v5, 0);
    v6 = v21;
    v7 = (v4 + 80);
    do
    {
      v8 = *(v7 - 5);
      v9 = *(v7 - 4);
      v19 = *(v7 - 3);
      v20 = *(v7 - 6);
      v10 = *(v7 - 2);
      v18 = *(v7 - 1);
      v11 = *v7;
      v21 = v6;
      v12 = *(v6 + 16);
      v13 = *(v6 + 24);

      v14 = v9;

      if (v12 >= v13 >> 1)
      {
        sub_1D7A5C41C((v13 > 1), v12 + 1, 1);
        v6 = v21;
      }

      v7 += 7;
      *(v6 + 16) = v12 + 1;
      v15 = (v6 + 72 * v12);
      v15[4] = v20;
      v15[5] = v8;
      v15[6] = v9;
      v15[7] = v19;
      v15[8] = v10;
      v15[9] = v18;
      v15[10] = v11;
      v15[12] = 0;
      --v5;
    }

    while (v5);

    a2 = v17;
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v6;
  a2[8] = 0x1000000000000000;
  return result;
}

uint64_t sub_1D7B4C860(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D7B55820(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D7B4C8D0(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D7D318FC();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D7B57020(0);
        v6 = sub_1D7D3070C();
        *(v6 + 16) = v5;
      }

      sub_1D7B57020(0);
      v8[0] = v6 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80));
      v8[1] = v5;
      sub_1D7B4D26C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D7B4CB48(0, v2, 1, a1);
  }
}

uint64_t sub_1D7B4C9FC(void *a1, uint64_t (*a2)(uint64_t, uint64_t), void (*a3)(uint64_t, void, uint64_t, unint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, void *))
{
  v8 = a1[1];
  result = sub_1D7D318FC();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      if (v8 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D7B554EC(0);
        v11 = sub_1D7D3070C();
        *(v11 + 16) = v8 / 2;
      }

      sub_1D7B554EC(0);
      v13[0] = v11 + ((*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80));
      v13[1] = v8 / 2;
      sub_1D7B4E3B4(v13, v14, a1, v10, a2, a3);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

void sub_1D7B4CB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v101 = a1;
  v89 = sub_1D7D2E8FC();
  v7 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89, v8);
  v88 = &v69[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v87 = sub_1D7D29C1C();
  v10 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87, v11);
  v86 = &v69[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13, v14);
  v104 = &v69[-v15];
  v16 = type metadata accessor for EndOfArticleLayoutModel();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v85 = &v69[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19, v20);
  v84 = &v69[-v21];
  MEMORY[0x1EEE9AC00](v22, v23);
  v83 = &v69[-v24];
  sub_1D7B57020(0);
  v90 = v25;
  MEMORY[0x1EEE9AC00](v25, v26);
  v78 = &v69[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v28, v29);
  v82 = &v69[-v30];
  MEMORY[0x1EEE9AC00](v31, v32);
  v81 = &v69[-v33];
  MEMORY[0x1EEE9AC00](v34, v35);
  v105 = &v69[-v36];
  MEMORY[0x1EEE9AC00](v37, v38);
  v103 = &v69[-v40];
  v71 = a2;
  if (a3 != a2)
  {
    v41 = *a4;
    v42 = *(v39 + 72);
    v102 = (v7 + 32);
    v80 = (v7 + 8);
    v79 = (v10 + 8);
    v43 = v41 + v42 * (a3 - 1);
    v76 = -v42;
    v44 = v101 - a3;
    v77 = v41;
    v70 = v42;
    v45 = v41 + v42 * a3;
LABEL_5:
    v75 = a3;
    v72 = v45;
    v73 = v44;
    v91 = v44;
    v74 = v43;
    v46 = v90;
    while (1)
    {
      v100 = v43;
      v101 = v45;
      v47 = v103;
      sub_1D7B4C274(v45, v103, sub_1D7B57020);
      sub_1D7B4C274(v43, v105, sub_1D7B57020);
      v99 = *v47;
      v48 = v81;
      sub_1D7B4C274(v47, v81, sub_1D7B57020);
      v49 = *(v46 + 48);
      sub_1D7A5FC40();
      v51 = v50;
      v52 = v83;
      sub_1D7D2ABBC();
      v53 = *(v51 - 8);
      v97 = *(v53 + 8);
      v98 = v53 + 8;
      v97(&v48[v49], v51);
      v96 = type metadata accessor for EndOfArticleLayoutModel;
      v54 = v84;
      sub_1D7B4C274(v52, v84, type metadata accessor for EndOfArticleLayoutModel);
      v95 = *v102;
      v55 = v88;
      v56 = v89;
      v95(v88, v54, v89);
      sub_1D7D2E8DC();
      v93 = *v80;
      v93(v55, v56);
      v92 = type metadata accessor for EndOfArticleLayoutModel;
      v46 = v90;
      sub_1D7B49994(v52, type metadata accessor for EndOfArticleLayoutModel);
      v94 = *v105;
      v57 = v82;
      sub_1D7B4C274(v105, v82, sub_1D7B57020);
      v58 = *(v46 + 48);
      sub_1D7D2ABBC();
      v97(&v57[v58], v51);
      v59 = v85;
      sub_1D7B4C274(v54, v85, v96);
      v95(v55, v59, v56);
      v60 = v86;
      sub_1D7D2E8DC();
      v93(v55, v56);
      sub_1D7B49994(v54, v92);
      v61 = v104;
      LOBYTE(v54) = sub_1D7D2AD3C();
      v62 = *v79;
      v63 = v87;
      (*v79)(v60, v87);
      v64 = v63;
      v65 = v101;
      v62(v61, v64);
      v66 = v100;
      sub_1D7B49994(v105, sub_1D7B57020);
      sub_1D7B49994(v103, sub_1D7B57020);
      if ((v54 & 1) == 0)
      {
LABEL_4:
        a3 = v75 + 1;
        v43 = v74 + v70;
        v44 = v73 - 1;
        v45 = v72 + v70;
        if (v75 + 1 == v71)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v77)
      {
        break;
      }

      v67 = v78;
      sub_1D7B551E8(v65, v78, sub_1D7B57020);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D7B551E8(v67, v66, sub_1D7B57020);
      v43 = v66 + v76;
      v45 = v65 + v76;
      if (__CFADD__(v91++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D7B4D26C(unint64_t *a1, uint64_t a2, unint64_t *a3, int64_t a4)
{
  v6 = v5;
  v172 = a1;
  v197 = sub_1D7D2E8FC();
  v9 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197, v10);
  v196 = &v166 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_1D7D29C1C();
  v12 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195, v13);
  v194 = &v166 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v210 = &v166 - v17;
  v18 = type metadata accessor for EndOfArticleLayoutModel();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v193 = &v166 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v192 = &v166 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v191 = &v166 - v26;
  sub_1D7B57020(0);
  v211 = v27;
  v181 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v28);
  v176 = &v166 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v185 = &v166 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v190 = &v166 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v189 = &v166 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v212 = (&v166 - v41);
  MEMORY[0x1EEE9AC00](v42, v43);
  v209 = (&v166 - v44);
  MEMORY[0x1EEE9AC00](v45, v46);
  v169 = (&v166 - v47);
  MEMORY[0x1EEE9AC00](v48, v49);
  v168 = (&v166 - v50);
  v51 = a3[1];
  if (v51 < 1)
  {
    v53 = MEMORY[0x1E69E7CC0];
LABEL_97:
    v4 = *v172;
    if (!*v172)
    {
      goto LABEL_137;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_99;
  }

  v52 = 0;
  v188 = (v9 + 32);
  v187 = (v9 + 8);
  v186 = (v12 + 8);
  v53 = MEMORY[0x1E69E7CC0];
  v167 = a3;
  v171 = a4;
  while (1)
  {
    v175 = v52;
    if (v52 + 1 >= v51)
    {
      v61 = v52 + 1;
    }

    else
    {
      v182 = v51;
      v4 = *a3;
      v54 = *(v181 + 72);
      v55 = *a3 + v54 * (v52 + 1);
      v56 = v168;
      sub_1D7B4C274(v55, v168, sub_1D7B57020);
      v57 = v169;
      sub_1D7B4C274(v4 + v54 * v52, v169, sub_1D7B57020);
      LODWORD(v183) = sub_1D7B4522C(v56, v57);
      if (v6)
      {
        sub_1D7B49994(v57, sub_1D7B57020);
        sub_1D7B49994(v56, sub_1D7B57020);
        goto LABEL_109;
      }

      v170 = v53;
      sub_1D7B49994(v57, sub_1D7B57020);
      sub_1D7B49994(v56, sub_1D7B57020);
      v58 = (v52 + 2);
      v59 = v4 + v54 * (v52 + 2);
      v60 = v54;
      v184 = v54;
      v180 = 0;
      while (1)
      {
        v61 = v182;
        if (v182 == v58)
        {
          break;
        }

        v208 = v59;
        v62 = v209;
        v206 = v58;
        sub_1D7B4C274(v59, v209, sub_1D7B57020);
        sub_1D7B4C274(v55, v212, sub_1D7B57020);
        v205 = *v62;
        v63 = v62;
        v64 = v189;
        sub_1D7B4C274(v63, v189, sub_1D7B57020);
        v65 = *(v211 + 48);
        sub_1D7A5FC40();
        v67 = v66;
        v68 = v191;
        sub_1D7D2ABBC();
        v69 = *(v67 - 8);
        v203 = *(v69 + 8);
        v204 = (v69 + 8);
        v203(v64 + v65, v67);
        v202 = type metadata accessor for EndOfArticleLayoutModel;
        v70 = v192;
        sub_1D7B4C274(v68, v192, type metadata accessor for EndOfArticleLayoutModel);
        v207 = v55;
        v201 = *v188;
        v71 = v196;
        v72 = v197;
        (v201)(v196, v70, v197);
        sub_1D7D2E8DC();
        v200 = *v187;
        (v200)(v71, v72);
        v198 = type metadata accessor for EndOfArticleLayoutModel;
        sub_1D7B49994(v68, type metadata accessor for EndOfArticleLayoutModel);
        v199 = *v212;
        v73 = v190;
        sub_1D7B4C274(v212, v190, sub_1D7B57020);
        v74 = *(v211 + 48);
        sub_1D7D2ABBC();
        v203(v73 + v74, v67);
        v75 = v180;
        v76 = v193;
        sub_1D7B4C274(v70, v193, v202);
        (v201)(v71, v76, v72);
        v77 = v207;
        v78 = v194;
        sub_1D7D2E8DC();
        v79 = v72;
        v6 = v75;
        (v200)(v71, v79);
        sub_1D7B49994(v70, v198);
        v53 = v210;
        v4 = sub_1D7D2AD3C() & 1;
        v80 = *v186;
        v81 = v195;
        (*v186)(v78, v195);
        v80(v53, v81);
        sub_1D7B49994(v212, sub_1D7B57020);
        sub_1D7B49994(v209, sub_1D7B57020);
        v60 = v184;
        v58 = v206 + 1;
        v59 = v208 + v184;
        v55 = v77 + v184;
        if ((v183 & 1) != v4)
        {
          v61 = v206;
          break;
        }
      }

      a4 = v171;
      a3 = v167;
      if ((v183 & 1) == 0)
      {
        goto LABEL_24;
      }

      if (v61 < v175)
      {
        goto LABEL_130;
      }

      if (v175 < v61)
      {
        v82 = v60 * (v61 - 1);
        v83 = v61;
        v84 = v61 * v60;
        v182 = v61;
        v85 = v175;
        v86 = v175 * v60;
        do
        {
          if (v85 != --v83)
          {
            v4 = *a3;
            if (!*a3)
            {
              goto LABEL_134;
            }

            sub_1D7B551E8(v4 + v86, v176, sub_1D7B57020);
            if (v86 < v82 || v4 + v86 >= v4 + v84)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v86 != v82)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1D7B551E8(v176, v4 + v82, sub_1D7B57020);
            v60 = v184;
          }

          ++v85;
          v82 -= v60;
          v84 -= v60;
          v86 += v60;
        }

        while (v85 < v83);
        a4 = v171;
        v53 = v170;
        v61 = v182;
      }

      else
      {
LABEL_24:
        v53 = v170;
      }
    }

    v87 = a3[1];
    if (v61 < v87)
    {
      if (__OFSUB__(v61, v175))
      {
        goto LABEL_127;
      }

      if (v61 - v175 < a4)
      {
        if (__OFADD__(v175, a4))
        {
          goto LABEL_128;
        }

        if (v175 + a4 >= v87)
        {
          v88 = a3[1];
        }

        else
        {
          v88 = v175 + a4;
        }

        if (v88 < v175)
        {
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          v53 = sub_1D7B50220(v53);
LABEL_99:
          v213 = v53;
          v162 = *(v53 + 2);
          if (v162 >= 2)
          {
            while (*a3)
            {
              v163 = *&v53[16 * v162];
              v164 = *&v53[16 * v162 + 24];
              sub_1D7B4F558(*a3 + *(v181 + 72) * v163, (*a3 + *(v181 + 72) * *&v53[16 * v162 + 16]), *a3 + *(v181 + 72) * v164, v4);
              if (v6)
              {
                goto LABEL_109;
              }

              if (v164 < v163)
              {
                goto LABEL_124;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v53 = sub_1D7B50220(v53);
              }

              if (v162 - 2 >= *(v53 + 2))
              {
                goto LABEL_125;
              }

              v165 = &v53[16 * v162];
              *v165 = v163;
              *(v165 + 1) = v164;
              v213 = v53;
              sub_1D7B50194(v162 - 1);
              v53 = v213;
              v162 = *(v213 + 2);
              if (v162 <= 1)
              {
                goto LABEL_109;
              }
            }

            goto LABEL_135;
          }

LABEL_109:

          return;
        }

        if (v61 != v88)
        {
          break;
        }
      }
    }

    v52 = v61;
LABEL_36:
    if (v52 < v175)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = sub_1D79E4688(0, *(v53 + 2) + 1, 1, v53);
    }

    v4 = *(v53 + 2);
    v89 = *(v53 + 3);
    v90 = v4 + 1;
    if (v4 >= v89 >> 1)
    {
      v53 = sub_1D79E4688((v89 > 1), v4 + 1, 1, v53);
    }

    *(v53 + 2) = v90;
    v91 = &v53[16 * v4];
    *(v91 + 4) = v175;
    *(v91 + 5) = v52;
    if (!*v172)
    {
      goto LABEL_136;
    }

    if (v4)
    {
      v92 = *v172;
      while (1)
      {
        v93 = v90 - 1;
        if (v90 >= 4)
        {
          break;
        }

        if (v90 == 3)
        {
          v94 = *(v53 + 4);
          v95 = *(v53 + 5);
          v104 = __OFSUB__(v95, v94);
          v96 = v95 - v94;
          v97 = v104;
LABEL_57:
          if (v97)
          {
            goto LABEL_115;
          }

          v110 = &v53[16 * v90];
          v112 = *v110;
          v111 = *(v110 + 1);
          v113 = __OFSUB__(v111, v112);
          v114 = v111 - v112;
          v115 = v113;
          if (v113)
          {
            goto LABEL_118;
          }

          v116 = &v53[16 * v93 + 32];
          v118 = *v116;
          v117 = *(v116 + 1);
          v104 = __OFSUB__(v117, v118);
          v119 = v117 - v118;
          if (v104)
          {
            goto LABEL_121;
          }

          if (__OFADD__(v114, v119))
          {
            goto LABEL_122;
          }

          if (v114 + v119 >= v96)
          {
            if (v96 < v119)
            {
              v93 = v90 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v120 = &v53[16 * v90];
        v122 = *v120;
        v121 = *(v120 + 1);
        v104 = __OFSUB__(v121, v122);
        v114 = v121 - v122;
        v115 = v104;
LABEL_71:
        if (v115)
        {
          goto LABEL_117;
        }

        v123 = &v53[16 * v93];
        v125 = *(v123 + 4);
        v124 = *(v123 + 5);
        v104 = __OFSUB__(v124, v125);
        v126 = v124 - v125;
        if (v104)
        {
          goto LABEL_120;
        }

        if (v126 < v114)
        {
          goto LABEL_3;
        }

LABEL_78:
        v4 = v93 - 1;
        if (v93 - 1 >= v90)
        {
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_133;
        }

        v131 = *&v53[16 * v4 + 32];
        v132 = *&v53[16 * v93 + 40];
        sub_1D7B4F558(*a3 + *(v181 + 72) * v131, (*a3 + *(v181 + 72) * *&v53[16 * v93 + 32]), *a3 + *(v181 + 72) * v132, v92);
        if (v6)
        {
          goto LABEL_109;
        }

        if (v132 < v131)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_1D7B50220(v53);
        }

        if (v4 >= *(v53 + 2))
        {
          goto LABEL_112;
        }

        v133 = &v53[16 * v4];
        *(v133 + 4) = v131;
        *(v133 + 5) = v132;
        v213 = v53;
        sub_1D7B50194(v93);
        v53 = v213;
        v90 = *(v213 + 2);
        if (v90 <= 1)
        {
          goto LABEL_3;
        }
      }

      v98 = &v53[16 * v90 + 32];
      v99 = *(v98 - 64);
      v100 = *(v98 - 56);
      v104 = __OFSUB__(v100, v99);
      v101 = v100 - v99;
      if (v104)
      {
        goto LABEL_113;
      }

      v103 = *(v98 - 48);
      v102 = *(v98 - 40);
      v104 = __OFSUB__(v102, v103);
      v96 = v102 - v103;
      v97 = v104;
      if (v104)
      {
        goto LABEL_114;
      }

      v105 = &v53[16 * v90];
      v107 = *v105;
      v106 = *(v105 + 1);
      v104 = __OFSUB__(v106, v107);
      v108 = v106 - v107;
      if (v104)
      {
        goto LABEL_116;
      }

      v104 = __OFADD__(v96, v108);
      v109 = v96 + v108;
      if (v104)
      {
        goto LABEL_119;
      }

      if (v109 >= v101)
      {
        v127 = &v53[16 * v93 + 32];
        v129 = *v127;
        v128 = *(v127 + 1);
        v104 = __OFSUB__(v128, v129);
        v130 = v128 - v129;
        if (v104)
        {
          goto LABEL_123;
        }

        if (v96 < v130)
        {
          v93 = v90 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v51 = a3[1];
    a4 = v171;
    if (v52 >= v51)
    {
      goto LABEL_97;
    }
  }

  v170 = v53;
  v180 = v6;
  v134 = *a3;
  v135 = *(v181 + 72);
  v136 = (*a3 + v135 * (v61 - 1));
  v183 = -v135;
  v137 = (v175 - v61);
  v184 = v134;
  v173 = v135;
  v138 = v134 + v61 * v135;
  v174 = v88;
LABEL_89:
  v182 = v61;
  v177 = v138;
  v178 = v137;
  v139 = v137;
  v179 = v136;
  while (1)
  {
    v199 = v138;
    v200 = v139;
    v140 = v209;
    sub_1D7B4C274(v138, v209, sub_1D7B57020);
    v198 = v136;
    sub_1D7B4C274(v136, v212, sub_1D7B57020);
    v208 = *v140;
    v141 = v189;
    sub_1D7B4C274(v140, v189, sub_1D7B57020);
    v142 = *(v211 + 48);
    sub_1D7A5FC40();
    v144 = v143;
    v145 = v191;
    sub_1D7D2ABBC();
    v146 = *(v144 - 8);
    v206 = *(v146 + 8);
    v207 = v146 + 8;
    (v206)(v141 + v142, v144);
    v205 = type metadata accessor for EndOfArticleLayoutModel;
    v147 = v192;
    sub_1D7B4C274(v145, v192, type metadata accessor for EndOfArticleLayoutModel);
    v204 = *v188;
    v148 = v196;
    v149 = v197;
    (v204)(v196, v147, v197);
    sub_1D7D2E8DC();
    v202 = *v187;
    (v202)(v148, v149);
    v201 = type metadata accessor for EndOfArticleLayoutModel;
    sub_1D7B49994(v145, type metadata accessor for EndOfArticleLayoutModel);
    v203 = *v212;
    v150 = v190;
    sub_1D7B4C274(v212, v190, sub_1D7B57020);
    v151 = *(v211 + 48);
    sub_1D7D2ABBC();
    (v206)(v150 + v151, v144);
    v152 = v193;
    sub_1D7B4C274(v147, v193, v205);
    (v204)(v148, v152, v149);
    v153 = v194;
    sub_1D7D2E8DC();
    (v202)(v148, v149);
    sub_1D7B49994(v147, v201);
    v154 = v210;
    v4 = sub_1D7D2AD3C();
    v155 = *v186;
    v156 = v195;
    (*v186)(v153, v195);
    v155(v154, v156);
    sub_1D7B49994(v212, sub_1D7B57020);
    sub_1D7B49994(v209, sub_1D7B57020);
    if ((v4 & 1) == 0)
    {
LABEL_88:
      v61 = v182 + 1;
      v136 = (v179 + v173);
      v137 = (v178 - 1);
      v138 = v177 + v173;
      v52 = v174;
      if (v182 + 1 != v174)
      {
        goto LABEL_89;
      }

      v6 = v180;
      a3 = v167;
      v53 = v170;
      goto LABEL_36;
    }

    v157 = v200;
    if (!v184)
    {
      break;
    }

    v4 = sub_1D7B57020;
    v158 = v199;
    v159 = v185;
    sub_1D7B551E8(v199, v185, sub_1D7B57020);
    v160 = v198;
    swift_arrayInitWithTakeFrontToBack();
    sub_1D7B551E8(v159, v160, sub_1D7B57020);
    v136 = (v160 + v183);
    v138 = v158 + v183;
    v161 = __CFADD__(v157, 1);
    v139 = (v157 + 1);
    if (v161)
    {
      goto LABEL_88;
    }
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
}

void sub_1D7B4E3B4(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), void (*a6)(uint64_t, void, uint64_t, unint64_t))
{
  v187 = a6;
  v175 = a5;
  v7 = v6;
  v178 = a1;
  v204 = sub_1D7D2E8FC();
  v10 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204, v11);
  v203 = &v171 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = sub_1D7D29C1C();
  v13 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202, v14);
  v201 = &v171 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v217 = &v171 - v18;
  v19 = type metadata accessor for EndOfRecipeLayoutModel();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v200 = &v171 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v199 = &v171 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v198 = &v171 - v27;
  sub_1D7B554EC(0);
  v29 = v28;
  v188 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v181 = &v171 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v192 = &v171 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v197 = &v171 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v196 = &v171 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v219 = (&v171 - v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  v216 = (&v171 - v46);
  MEMORY[0x1EEE9AC00](v47, v48);
  v174 = &v171 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v173 = &v171 - v52;
  v53 = a3[1];
  if (v53 < 1)
  {
    v55 = MEMORY[0x1E69E7CC0];
LABEL_97:
    a4 = *v178;
    if (!*v178)
    {
      goto LABEL_137;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_99;
  }

  v54 = 0;
  v195 = (v10 + 32);
  v194 = (v10 + 8);
  v193 = (v13 + 8);
  v55 = MEMORY[0x1E69E7CC0];
  v172 = a3;
  v177 = a4;
  v218 = v29;
LABEL_4:
  v180 = v54;
  if (v54 + 1 >= v53)
  {
    v65 = v54 + 1;
  }

  else
  {
    v189 = v53;
    v56 = *a3;
    v57 = *(v188 + 72);
    v58 = v56 + v57 * (v54 + 1);
    v59 = v173;
    sub_1D7B4C274(v58, v173, sub_1D7B554EC);
    v215 = v56;
    v60 = v56 + v57 * v54;
    v61 = v174;
    sub_1D7B4C274(v60, v174, sub_1D7B554EC);
    LODWORD(v190) = v175(v59, v61);
    if (v7)
    {
      sub_1D7B49994(v61, sub_1D7B554EC);
      sub_1D7B49994(v59, sub_1D7B554EC);
      goto LABEL_109;
    }

    v176 = v55;
    sub_1D7B49994(v61, sub_1D7B554EC);
    sub_1D7B49994(v59, sub_1D7B554EC);
    v62 = v54 + 2;
    v63 = v215 + v57 * (v54 + 2);
    v64 = v57;
    v191 = v57;
    v186 = 0;
    while (1)
    {
      v65 = v189;
      if (v189 == v62)
      {
        break;
      }

      v214 = v62;
      v215 = v63;
      v66 = v216;
      sub_1D7B4C274(v63, v216, sub_1D7B554EC);
      v213 = v58;
      sub_1D7B4C274(v58, v219, sub_1D7B554EC);
      v212 = *v66;
      v67 = v66;
      v68 = v196;
      sub_1D7B4C274(v67, v196, sub_1D7B554EC);
      v69 = *(v29 + 48);
      sub_1D7A5FB54();
      v71 = v70;
      v72 = v198;
      sub_1D7D2ABBC();
      v73 = *(v71 - 8);
      v210 = *(v73 + 8);
      v211 = (v73 + 8);
      (v210)(v68 + v69, v71);
      v209 = type metadata accessor for EndOfRecipeLayoutModel;
      v74 = v199;
      sub_1D7B4C274(v72, v199, type metadata accessor for EndOfRecipeLayoutModel);
      v208 = *v195;
      v75 = v203;
      v76 = v204;
      (v208)(v203, v74, v204);
      sub_1D7D2E8DC();
      v206 = *v194;
      (v206)(v75, v76);
      v205 = type metadata accessor for EndOfRecipeLayoutModel;
      sub_1D7B49994(v72, type metadata accessor for EndOfRecipeLayoutModel);
      v207 = *v219;
      v77 = v197;
      sub_1D7B4C274(v219, v197, sub_1D7B554EC);
      v55 = *(v218 + 48);
      sub_1D7D2ABBC();
      (v210)(v77 + v55, v71);
      v78 = v200;
      v7 = v186;
      sub_1D7B4C274(v74, v200, v209);
      (v208)(v75, v78, v76);
      v79 = v201;
      sub_1D7D2E8DC();
      v80 = v76;
      v29 = v218;
      (v206)(v75, v80);
      sub_1D7B49994(v74, v205);
      v81 = v217;
      LODWORD(v75) = sub_1D7D2AD3C() & 1;
      v82 = *v193;
      v83 = v79;
      v84 = v202;
      (*v193)(v83, v202);
      v82(v81, v84);
      sub_1D7B49994(v219, sub_1D7B554EC);
      sub_1D7B49994(v216, sub_1D7B554EC);
      v64 = v191;
      v62 = v214 + 1;
      v63 = v215 + v191;
      v58 = v213 + v191;
      if ((v190 & 1) != v75)
      {
        v65 = v214;
        break;
      }
    }

    a4 = v177;
    a3 = v172;
    if ((v190 & 1) == 0)
    {
      goto LABEL_24;
    }

    if (v65 < v180)
    {
      goto LABEL_130;
    }

    if (v180 < v65)
    {
      v85 = v64 * (v65 - 1);
      v86 = v65 * v64;
      v189 = v65;
      v87 = v180;
      v88 = v180 * v64;
      do
      {
        if (v87 != --v65)
        {
          v89 = *a3;
          if (!*a3)
          {
            goto LABEL_134;
          }

          sub_1D7B551E8(v89 + v88, v181, sub_1D7B554EC);
          if (v88 < v85 || v89 + v88 >= (v89 + v86))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v88 != v85)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_1D7B551E8(v181, v89 + v85, sub_1D7B554EC);
          v64 = v191;
        }

        ++v87;
        v85 -= v64;
        v86 -= v64;
        v88 += v64;
      }

      while (v87 < v65);
      a4 = v177;
      v55 = v176;
      v29 = v218;
      v65 = v189;
    }

    else
    {
LABEL_24:
      v55 = v176;
    }
  }

  v90 = a3[1];
  if (v65 >= v90)
  {
    goto LABEL_34;
  }

  if (__OFSUB__(v65, v180))
  {
    goto LABEL_127;
  }

  if (v65 - v180 >= a4)
  {
LABEL_34:
    v91 = v65;
    goto LABEL_35;
  }

  if (__OFADD__(v180, a4))
  {
    goto LABEL_128;
  }

  if ((v180 + a4) < v90)
  {
    v90 = v180 + a4;
  }

  if (v90 < v180)
  {
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    v55 = sub_1D7B50220(v55);
LABEL_99:
    v220 = v55;
    v167 = *(v55 + 16);
    if (v167 >= 2)
    {
      while (*a3)
      {
        v168 = *(v55 + 16 * v167);
        v169 = *(v55 + 16 * (v167 - 1) + 40);
        v187(*a3 + *(v188 + 72) * v168, *a3 + *(v188 + 72) * *(v55 + 16 * (v167 - 1) + 32), *a3 + *(v188 + 72) * v169, a4);
        if (v7)
        {
          goto LABEL_109;
        }

        if (v169 < v168)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_1D7B50220(v55);
        }

        if (v167 - 2 >= *(v55 + 16))
        {
          goto LABEL_125;
        }

        v170 = (v55 + 16 * v167);
        *v170 = v168;
        v170[1] = v169;
        v220 = v55;
        sub_1D7B50194(v167 - 1);
        v55 = v220;
        v167 = *(v220 + 16);
        if (v167 <= 1)
        {
          goto LABEL_109;
        }
      }

      goto LABEL_135;
    }

LABEL_109:

    return;
  }

  v182 = v90;
  if (v65 == v90)
  {
    goto LABEL_34;
  }

  v176 = v55;
  v186 = v7;
  v138 = *a3;
  v139 = *(v188 + 72);
  v140 = *a3 + v139 * (v65 - 1);
  v190 = -v139;
  v141 = (v180 - v65);
  v191 = v138;
  v179 = v139;
  v142 = (v138 + v65 * v139);
LABEL_89:
  v189 = v65;
  v183 = v142;
  v184 = v141;
  v143 = v141;
  v185 = v140;
  v144 = v140;
  while (1)
  {
    v206 = v142;
    v207 = v143;
    v145 = v216;
    sub_1D7B4C274(v142, v216, sub_1D7B554EC);
    v205 = v144;
    sub_1D7B4C274(v144, v219, sub_1D7B554EC);
    v215 = *v145;
    v146 = v196;
    sub_1D7B4C274(v145, v196, sub_1D7B554EC);
    v147 = *(v29 + 48);
    sub_1D7A5FB54();
    v149 = v148;
    v150 = v198;
    sub_1D7D2ABBC();
    v151 = *(v149 - 8);
    v213 = *(v151 + 8);
    v214 = v151 + 8;
    v213(v146 + v147, v149);
    v212 = type metadata accessor for EndOfRecipeLayoutModel;
    v152 = v199;
    sub_1D7B4C274(v150, v199, type metadata accessor for EndOfRecipeLayoutModel);
    v211 = *v195;
    v153 = v203;
    v154 = v204;
    (v211)(v203, v152, v204);
    sub_1D7D2E8DC();
    v209 = *v194;
    (v209)(v153, v154);
    v208 = type metadata accessor for EndOfRecipeLayoutModel;
    sub_1D7B49994(v150, type metadata accessor for EndOfRecipeLayoutModel);
    v210 = *v219;
    v155 = v197;
    sub_1D7B4C274(v219, v197, sub_1D7B554EC);
    v156 = *(v218 + 48);
    sub_1D7D2ABBC();
    v213(v155 + v156, v149);
    v157 = v200;
    sub_1D7B4C274(v152, v200, v212);
    (v211)(v153, v157, v154);
    v158 = v201;
    sub_1D7D2E8DC();
    (v209)(v153, v154);
    sub_1D7B49994(v152, v208);
    v159 = v217;
    a4 = sub_1D7D2AD3C();
    v160 = *v193;
    v161 = v202;
    (*v193)(v158, v202);
    v160(v159, v161);
    sub_1D7B49994(v219, sub_1D7B554EC);
    sub_1D7B49994(v216, sub_1D7B554EC);
    if ((a4 & 1) == 0)
    {
      v29 = v218;
LABEL_88:
      v65 = v189 + 1;
      v140 = v185 + v179;
      v141 = v184 - 1;
      v142 = (v183 + v179);
      if (v189 + 1 != v182)
      {
        goto LABEL_89;
      }

      v7 = v186;
      a3 = v172;
      v55 = v176;
      v91 = v182;
LABEL_35:
      if (v91 < v180)
      {
        goto LABEL_126;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = sub_1D79E4688(0, *(v55 + 16) + 1, 1, v55);
      }

      a4 = *(v55 + 16);
      v92 = *(v55 + 24);
      v93 = a4 + 1;
      v94 = a3;
      if (a4 >= v92 >> 1)
      {
        v55 = sub_1D79E4688((v92 > 1), a4 + 1, 1, v55);
      }

      *(v55 + 16) = v93;
      v95 = v55 + 16 * a4;
      *(v95 + 32) = v180;
      *(v95 + 40) = v91;
      v96 = *v178;
      if (!*v178)
      {
        goto LABEL_136;
      }

      v182 = v91;
      if (a4)
      {
        a3 = v96;
        while (1)
        {
          v97 = v93 - 1;
          if (v93 >= 4)
          {
            break;
          }

          if (v93 == 3)
          {
            v98 = *(v55 + 32);
            v99 = *(v55 + 40);
            v108 = __OFSUB__(v99, v98);
            v100 = v99 - v98;
            v101 = v108;
LABEL_56:
            if (v101)
            {
              goto LABEL_115;
            }

            v114 = (v55 + 16 * v93);
            v116 = *v114;
            v115 = v114[1];
            v117 = __OFSUB__(v115, v116);
            v118 = v115 - v116;
            v119 = v117;
            if (v117)
            {
              goto LABEL_118;
            }

            v120 = (v55 + 32 + 16 * v97);
            v122 = *v120;
            v121 = v120[1];
            v108 = __OFSUB__(v121, v122);
            v123 = v121 - v122;
            if (v108)
            {
              goto LABEL_121;
            }

            if (__OFADD__(v118, v123))
            {
              goto LABEL_122;
            }

            if (v118 + v123 >= v100)
            {
              if (v100 < v123)
              {
                v97 = v93 - 2;
              }

              goto LABEL_77;
            }

            goto LABEL_70;
          }

          v124 = (v55 + 16 * v93);
          v126 = *v124;
          v125 = v124[1];
          v108 = __OFSUB__(v125, v126);
          v118 = v125 - v126;
          v119 = v108;
LABEL_70:
          if (v119)
          {
            goto LABEL_117;
          }

          v127 = v55 + 16 * v97;
          v129 = *(v127 + 32);
          v128 = *(v127 + 40);
          v108 = __OFSUB__(v128, v129);
          v130 = v128 - v129;
          if (v108)
          {
            goto LABEL_120;
          }

          if (v130 < v118)
          {
            goto LABEL_3;
          }

LABEL_77:
          a4 = v97 - 1;
          if (v97 - 1 >= v93)
          {
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            goto LABEL_129;
          }

          if (!*v94)
          {
            goto LABEL_133;
          }

          v135 = *(v55 + 32 + 16 * a4);
          v136 = *(v55 + 32 + 16 * v97 + 8);
          v187(*v94 + *(v188 + 72) * v135, *v94 + *(v188 + 72) * *(v55 + 32 + 16 * v97), *v94 + *(v188 + 72) * v136, a3);
          if (v7)
          {
            goto LABEL_109;
          }

          if (v136 < v135)
          {
            goto LABEL_111;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v55 = sub_1D7B50220(v55);
          }

          if (a4 >= *(v55 + 16))
          {
            goto LABEL_112;
          }

          v137 = v55 + 16 * a4;
          *(v137 + 32) = v135;
          *(v137 + 40) = v136;
          v220 = v55;
          sub_1D7B50194(v97);
          v55 = v220;
          v93 = *(v220 + 16);
          if (v93 <= 1)
          {
            goto LABEL_3;
          }
        }

        v102 = v55 + 32 + 16 * v93;
        v103 = *(v102 - 64);
        v104 = *(v102 - 56);
        v108 = __OFSUB__(v104, v103);
        v105 = v104 - v103;
        if (v108)
        {
          goto LABEL_113;
        }

        v107 = *(v102 - 48);
        v106 = *(v102 - 40);
        v108 = __OFSUB__(v106, v107);
        v100 = v106 - v107;
        v101 = v108;
        if (v108)
        {
          goto LABEL_114;
        }

        v109 = (v55 + 16 * v93);
        v111 = *v109;
        v110 = v109[1];
        v108 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v108)
        {
          goto LABEL_116;
        }

        v108 = __OFADD__(v100, v112);
        v113 = v100 + v112;
        if (v108)
        {
          goto LABEL_119;
        }

        if (v113 >= v105)
        {
          v131 = (v55 + 32 + 16 * v97);
          v133 = *v131;
          v132 = v131[1];
          v108 = __OFSUB__(v132, v133);
          v134 = v132 - v133;
          if (v108)
          {
            goto LABEL_123;
          }

          if (v100 < v134)
          {
            v97 = v93 - 2;
          }

          goto LABEL_77;
        }

        goto LABEL_56;
      }

LABEL_3:
      a3 = v94;
      v53 = v94[1];
      v54 = v182;
      a4 = v177;
      if (v182 >= v53)
      {
        goto LABEL_97;
      }

      goto LABEL_4;
    }

    v162 = v207;
    if (!v191)
    {
      break;
    }

    a4 = sub_1D7B554EC;
    v163 = v206;
    v164 = v192;
    sub_1D7B551E8(v206, v192, sub_1D7B554EC);
    v165 = v205;
    v29 = v218;
    swift_arrayInitWithTakeFrontToBack();
    sub_1D7B551E8(v164, v165, sub_1D7B554EC);
    v144 = (v165 + v190);
    v142 = (v163 + v190);
    v166 = __CFADD__(v162, 1);
    v143 = v162 + 1;
    if (v166)
    {
      goto LABEL_88;
    }
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
}