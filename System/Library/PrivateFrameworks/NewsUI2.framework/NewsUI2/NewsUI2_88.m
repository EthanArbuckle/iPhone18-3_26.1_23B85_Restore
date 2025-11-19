void sub_219098AC4(uint64_t *a1@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_219098BE8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  sub_219099A18(0, &unk_280E901B0, MEMORY[0x277D33D70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  sub_218AD7D2C(a1, &v21 - v5);
  v7 = sub_219BF3344();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_218AD7DC0(v6);
  }

  else
  {
    sub_219BF3334();
    (*(v8 + 8))(v6, v7);
    swift_getObjectType();
    sub_219BF6274();
    swift_unknownObjectRelease();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();
  v11 = [v10 bundleForClass_];
  sub_219BDB5E4();

  sub_2186F20D4();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09BA0;
  v13 = [v10 bundleForClass_];
  v14 = sub_219BDB5E4();
  v16 = v15;

  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_2186FC3BC();
  *(v12 + 32) = v14;
  *(v12 + 40) = v16;
  v17 = sub_219BF5454();
  v19 = v18;

  *a2 = v17;
  a2[1] = v19;
  return result;
}

uint64_t sub_219098FF8@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  if (*a2)
  {
    swift_getObjectType();
    sub_219BF6274();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass_];
  sub_219BDB5E4();

  sub_2186F20D4();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  if (v4)
  {
    v9 = [v6 bundleForClass_];
  }

  else
  {
    v9 = [v6 bundleForClass_];
  }

  v10 = sub_219BDB5E4();
  v12 = v11;

  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_2186FC3BC();
  *(v8 + 32) = v10;
  *(v8 + 40) = v12;
  v13 = sub_219BF5454();
  v15 = v14;

  *a3 = v13;
  a3[1] = v15;
  return result;
}

uint64_t sub_2190992EC(void *a1)
{
  if (![a1 useSearchInArticle])
  {
    return MEMORY[0x277D84F90];
  }

  sub_219099A18(0, &qword_280E8BF50, MEMORY[0x277D6D5B8], MEMORY[0x277D84560]);
  sub_219BE6364();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_219C0EE20;
  sub_219BEAE84();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();
  v5 = v4;

  sub_219BE62C4();
  sub_219BEA934();
  v6 = [v2 bundleForClass_];
  sub_219BDB5E4();
  v8 = v7;

  sub_219BE62C4();
  sub_219BEA944();
  v9 = [v2 bundleForClass_];
  sub_219BDB5E4();
  v11 = v10;

  sub_219BE62C4();
  sub_219BEAE94();
  v12 = [v2 bundleForClass_];
  sub_219BDB5E4();

  sub_219BE62C4();
  return v14;
}

uint64_t sub_2190996EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219099A18(0, &qword_280E8F4F8, MEMORY[0x277D6D5B8], MEMORY[0x277D83940]);
    result = sub_219BE1E34();
    if (v7)
    {
      v5 = objc_allocWithZone(sub_219BE6CA4());
      result = sub_219BE6C94();
      v6 = MEMORY[0x277D6D7D8];
      *a2 = result;
      a2[1] = v6;
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

uint64_t sub_219099840()
{
  v0 = sub_219BE2DF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE2044();
  sub_219099A18(0, &qword_280E8F4F8, MEMORY[0x277D6D5B8], MEMORY[0x277D83940]);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280EE4FC0);
  sub_219BE2914();

  (*(v1 + 104))(v3, *MEMORY[0x277D6CF00], v0);
  sub_219BE19F4();

  return (*(v1 + 8))(v3, v0);
}

void sub_219099A18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_219099A7C()
{
  if (!qword_280EE47C8)
  {
    sub_2186D6710(255, &qword_280E8E680);
    sub_218AD78D8();
    v0 = sub_219BE8B84();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE47C8);
    }
  }
}

void sub_219099B0C()
{
  if (!qword_27CC15A20)
  {
    sub_219BF3344();
    sub_218740ED4();
    v0 = sub_219BE8B84();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC15A20);
    }
  }
}

void sub_219099B8C()
{
  if (!qword_280EE5350)
  {
    sub_218740F28();
    v0 = sub_219BE7214();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5350);
    }
  }
}

uint64_t sub_219099BF8(uint64_t a1, uint64_t a2)
{
  v17 = sub_219BE3514();
  v3 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219099F34();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE38C4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE3574();
  if ((*(v10 + 88))(v12, v9) != *MEMORY[0x277D31720])
  {
    return (*(v10 + 8))(v12, v9);
  }

  __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
  sub_219BE35A4();
  sub_219BE3A04();
  (*(v3 + 8))(v5, v17);
  v13 = sub_219BE3534();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    return sub_219099F8C(v8);
  }

  sub_219BE3524();
  return (*(v14 + 8))(v8, v13);
}

uint64_t sub_219099EC8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_219099EE8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 72) = v3;
  return result;
}

void sub_219099F34()
{
  if (!qword_280EE6658)
  {
    sub_219BE3534();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE6658);
    }
  }
}

uint64_t sub_219099F8C(uint64_t a1)
{
  sub_219099F34();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for PreBuyFlowRouteModel()
{
  result = qword_280ECE1B0;
  if (!qword_280ECE1B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21909A05C()
{
  result = sub_21909A100();
  if (v1 <= 0x3F)
  {
    result = sub_219BE3D64();
    if (v2 <= 0x3F)
    {
      result = sub_219BE3EE4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_21909A100()
{
  result = qword_280E8E588;
  if (!qword_280E8E588)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8E588);
  }

  return result;
}

uint64_t sub_21909A14C(void *a1)
{
  v2 = sub_219BE8494();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E9CC08);
  result = sub_219BE1E34();
  v7 = v44;
  if (!v44)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = v45;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EAF978);
  result = sub_219BE1E34();
  if (!v43)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = result;
  v34 = v8;
  v35 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  v10 = v40;
  if (!v40)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v41;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580);
  result = sub_219BE1E34();
  if (!v39)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v12 = __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
  v33[2] = v33;
  MEMORY[0x28223BE20](v12);
  v14 = (v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v17 = type metadata accessor for OfflineStatusBannerStyler();
  v37[3] = v17;
  v37[4] = &off_282A896C0;
  v37[0] = v16;
  type metadata accessor for OfflineStatusBannerCoordinator();
  v18 = swift_allocObject();
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v37, v17);
  v33[1] = v33;
  MEMORY[0x28223BE20](v19);
  v21 = (v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v21;
  v36[3] = v17;
  v36[4] = &off_282A896C0;
  v36[0] = v23;
  v24 = qword_280EABEF0;
  *(v18 + v24) = [objc_allocWithZone(MEMORY[0x277D025D0]) init];
  v25 = (v18 + qword_280EABF10);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v18 + qword_280EABF08);
  v27 = v34;
  *v26 = v7;
  v26[1] = v27;
  sub_218718690(v36, v18 + qword_280EABEE8);
  *(v18 + qword_280EABEF8) = v9;
  v28 = (v18 + qword_280EABF00);
  *v28 = v10;
  v28[1] = v11;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if ([v9 useOfflineMode])
  {
    __swift_project_boxed_opaque_existential_1(v38, v39);
    if (sub_219BEED44())
    {
      v29 = MEMORY[0x277D6DF10];
    }

    else
    {
      v29 = MEMORY[0x277D6DF08];
    }

    (*(v3 + 104))(v5, *v29, v35);
  }

  else
  {
    (*(v3 + 104))(v5, *MEMORY[0x277D6DF08], v35);
  }

  sub_2188043C8();
  swift_allocObject();
  *(v18 + qword_280EABF18) = sub_219BE20D4();
  v30 = *(v18 + v24);

  v31 = v30;
  v32 = sub_219BE8884();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v36);
  *(*(v32 + qword_280EABF08) + 24) = &off_282A72608;
  swift_unknownObjectWeakAssign();
  __swift_destroy_boxed_opaque_existential_1(v38);
  __swift_destroy_boxed_opaque_existential_1(v37);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return v32;
}

uint64_t sub_21909A710(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9D590);
  result = sub_219BE1E34();
  if (!v19)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E9CC08);
  result = sub_219BE1E34();
  v3 = v16;
  if (!v16)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  v6 = v14;
  if (!v14)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580);
  result = sub_219BE1E34();
  if (v13[3])
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v8);
    v10 = (v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = sub_21909B028(*v10, v3, v4, v5, v6, v7, v13);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v18);
    return v12;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_21909A9CC@<X0>(void *a1@<X0>, void *a2@<X8>)
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
    v10 = sub_218803894(&qword_280EDFED0, type metadata accessor for BaseStyler);
    v18[4] = v10;
    v18[0] = v8;
    v11 = type metadata accessor for LegacyOfflineStatusBannerStyler();
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
    a2[4] = &off_282A592D8;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21909AC2C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA2BE0);
  result = sub_219BE1E34();
  if (v5)
  {
    type metadata accessor for OfflineStatusBannerEventHandler();
    v4 = swift_allocObject();
    v4[3] = 0;
    swift_unknownObjectWeakInit();
    v4[4] = v5;
    v4[5] = v6;
    swift_beginAccess();
    *(v5 + 24) = &off_282A3F888;
    result = swift_unknownObjectWeakAssign();
    *a2 = v4;
    a2[1] = &off_282A3F8C8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21909AD10@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9F9F8);
  result = sub_219BE1E34();
  if (v6)
  {
    type metadata accessor for OfflineStatusBannerInteractor();
    v4 = swift_allocObject();
    v4[3] = 0;
    swift_unknownObjectWeakInit();
    v4[4] = v6;
    v4[5] = v7;
    swift_unknownObjectRetain();

    sub_218804058(v5, v6);
    swift_unknownObjectRelease();

    *a2 = v4;
    a2[1] = &off_282A6F740;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21909ADF0@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218803948();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED0D40);
  result = sub_219BE1E34();
  if (!v15)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
    MEMORY[0x28223BE20](v8);
    v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v11 + 16))(v10);
    v12 = sub_2188039CC(v5, *v10, v6, v7);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    result = __swift_destroy_boxed_opaque_existential_1(v14);
    *a2 = v12;
    a2[1] = &off_282AA2488;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

char *sub_21909B028(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v38 = a7;
  v35 = a3;
  v36 = a6;
  v37 = sub_219BE8494();
  v11 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LegacyOfflineStatusBannerStyler();
  v41[3] = v14;
  v41[4] = &off_282A592D8;
  v41[0] = a1;
  v15 = type metadata accessor for LegacyOfflineStatusBannerViewController();
  v16 = objc_allocWithZone(v15);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v41, v14);
  MEMORY[0x28223BE20](v17);
  v19 = (&v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v19;
  v40[3] = v14;
  v40[4] = &off_282A592D8;
  v40[0] = v21;
  v22 = OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController_connectionLabel;
  *&v16[v22] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v23 = OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController_secondaryLabel;
  *&v16[v23] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  *&v16[OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController____lazy_storage___forceReloadButton] = 0;
  v24 = OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController_enableReloadAction;
  sub_218803FE0();
  *&v16[v24] = [objc_allocWithZone(v25) init];
  *&v16[OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController____lazy_storage___setupOfflineModeButton] = 0;
  sub_218718690(v40, &v16[OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController_styler]);
  v26 = &v16[OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController_eventHandler];
  v28 = v35;
  v27 = v36;
  *v26 = a2;
  *(v26 + 1) = v28;
  *&v16[OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController_featureAvailability] = a4;
  v29 = &v16[OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController_commandCenter];
  *v29 = a5;
  *(v29 + 1) = v27;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if ([a4 useOfflineMode])
  {
    v30 = v37;
    v31 = v38;
    __swift_project_boxed_opaque_existential_1(v38, v38[3]);
    if (sub_219BEED44())
    {
      v32 = MEMORY[0x277D6DF10];
    }

    else
    {
      v32 = MEMORY[0x277D6DF08];
    }

    (*(v11 + 104))(v13, *v32, v30);
  }

  else
  {
    (*(v11 + 104))(v13, *MEMORY[0x277D6DF08], v37);
    v31 = v38;
  }

  sub_2188043C8();
  swift_allocObject();
  *&v16[OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController_statusBannerVisibility] = sub_219BE20D4();
  v39.receiver = v16;
  v39.super_class = v15;
  v33 = objc_msgSendSuper2(&v39, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v40);
  *(*&v33[OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController_eventHandler] + 24) = &off_282A31828;
  swift_unknownObjectWeakAssign();
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return v33;
}

uint64_t sub_21909B424@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = sub_219BF1934();
  v14 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v16 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21909B8C4(0, &qword_280E8C960, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21909B870();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v14;
    v11 = v15;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    (*(v12 + 32))(v11, v16, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21909B66C(uint64_t a1)
{
  v2 = sub_21909B870();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21909B6A8(uint64_t a1)
{
  v2 = sub_21909B870();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21909B6FC(void *a1)
{
  sub_21909B8C4(0, &qword_280E8C2E0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21909B870();
  sub_219BF7B44();
  sub_219BF1934();
  sub_218933D7C(&qword_280E90810);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_21909B870()
{
  result = qword_280EA1840[0];
  if (!qword_280EA1840[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA1840);
  }

  return result;
}

void sub_21909B8C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21909B870();
    v7 = a3(a1, &type metadata for SpotlightTodayFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21909B93C()
{
  result = qword_27CC15A28;
  if (!qword_27CC15A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15A28);
  }

  return result;
}

unint64_t sub_21909B994()
{
  result = qword_280EA1830;
  if (!qword_280EA1830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA1830);
  }

  return result;
}

unint64_t sub_21909B9EC()
{
  result = qword_280EA1838;
  if (!qword_280EA1838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA1838);
  }

  return result;
}

uint64_t sub_21909BA64(void *a1, uint64_t a2, void *a3)
{
  v89 = a3;
  v90 = a1;
  v92 = a2;
  sub_21909D7A0(0, &qword_280EE4518, MEMORY[0x277D6E548]);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v83 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v81 = &v78 - v6;
  v7 = sub_219BE92E4();
  v84 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v82 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v80 = &v78 - v10;
  sub_21909D7A0(0, &unk_280EE4470, MEMORY[0x277D6E658]);
  v85 = *(v11 - 8);
  v12 = *(v85 + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  MEMORY[0x28223BE20](v13);
  v86 = &v78 - v14;
  v15 = sub_219BE9EC4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v91 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v78 - v19;
  sub_21909D7A0(0, &unk_280EE3DC0, MEMORY[0x277D6E908]);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v78 - v22;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v25 = result;
    v79 = v7;
    v88 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = *(v16 + 16);
    v26(v23, v92, v15);
    v87 = v16;
    (*(v16 + 56))(v23, 0, 1, v15);
    v27 = v90;
    *&v94 = v90;
    swift_beginAccess();
    sub_2187C04A0();
    v93 = v25;
    v28 = v27;
    v29 = v93;
    sub_219BE1C84();
    swift_endAccess();
    v30 = OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_layoutCoordinator;
    swift_beginAccess();
    sub_21909D8B4(v29 + v30, &v94, &qword_280E9DA68, sub_21909D7F4);
    if (v95)
    {
      sub_21875F93C(&v94, v96);
      v90 = __swift_project_boxed_opaque_existential_1(v96, v96[3]);
      v31 = v12;
      v83 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v78 = v20;
      v26(v20, v92, v15);
      v32 = MEMORY[0x277D6E658];
      v33 = v86;
      sub_21909D8B4(v89, v86, &unk_280EE4470, MEMORY[0x277D6E658]);
      v34 = v20;
      v35 = v15;
      v26(v91, v34, v15);
      sub_21909D8B4(v33, v88, &unk_280EE4470, v32);
      v36 = v28;
      v37 = v87;
      v38 = (*(v87 + 80) + 24) & ~*(v87 + 80);
      v39 = (v17 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
      v40 = (*(v85 + 80) + v39 + 8) & ~*(v85 + 80);
      v41 = (v31 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
      v42 = swift_allocObject();
      *(v42 + 16) = v83;
      (*(v37 + 32))(v42 + v38, v78, v35);
      *(v42 + v39) = v36;
      sub_218FEADDC(v33, v42 + v40);
      v43 = (v42 + v41);
      *v43 = 0;
      v43[1] = 0;
      v44 = *(*v90 + 32);
      v45 = v35;
      if (v44)
      {
        v92 = v35;
        v46 = objc_opt_self();
        v47 = v36;
        swift_retain_n();
        v48 = v47;

        LOBYTE(v47) = [v46 areAnimationsEnabled];
        v49 = swift_allocObject();
        *(v49 + 16) = v47;
        *(v49 + 24) = sub_21909D920;
        *(v49 + 32) = v42;
        swift_beginAccess();
        v50 = *(v44 + 32);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v44 + 32) = v50;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v50 = sub_2191F67A4(0, v50[2] + 1, 1, v50);
          *(v44 + 32) = v50;
        }

        v52 = v93;
        v54 = v50[2];
        v53 = v50[3];
        if (v54 >= v53 >> 1)
        {
          v50 = sub_2191F67A4((v53 > 1), v54 + 1, 1, v50);
        }

        v50[2] = v54 + 1;
        v55 = &v50[2 * v54];
        v55[4] = sub_218FEAE74;
        v55[5] = v49;
        *(v44 + 32) = v50;
        swift_endAccess();

        v56 = v88;
        goto LABEL_24;
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v64 = v36;

      v65 = v64;
      if (!Strong)
      {

        v56 = v88;
LABEL_25:
        (*(v87 + 8))(v91, v45);

        sub_21909D858(v56, &unk_280EE4470, MEMORY[0x277D6E658]);

        return __swift_destroy_boxed_opaque_existential_1(v96);
      }

      v66 = v65;
      v92 = v45;

      v67 = [Strong traitCollection];
      v68 = [v67 horizontalSizeClass];

      v56 = v88;
      if (v68 == 2)
      {
        v90 = v42;
        v70 = v81;
        sub_219BE9E94();
        v69 = v93;
      }

      else
      {
        v69 = v93;
        v70 = v81;
        if (v68 != 1)
        {

          (*(v84 + 56))(v70, 1, 1, v79);
          sub_21909D858(v70, &qword_280EE4518, MEMORY[0x277D6E548]);

          goto LABEL_23;
        }

        v90 = v42;
        sub_219BE9EA4();
      }

      v73 = v84;
      v74 = v70;
      v75 = v70;
      v76 = v79;
      (*(v84 + 56))(v74, 0, 1, v79);
      v77 = v80;
      (*(v73 + 32))(v80, v75, v76);
      sub_218FDF7B0(v77, v66, v56, 0, 0);

      (*(v73 + 8))(v77, v76);

LABEL_23:

LABEL_24:
      v45 = v92;
      goto LABEL_25;
    }

    sub_21909D858(&v94, &qword_280E9DA68, sub_21909D7F4);
    v57 = [v29 traitCollection];
    v58 = [v57 horizontalSizeClass];

    if (v58 == 2)
    {
      v61 = v83;
      sub_219BE9E94();
      v62 = v93;
      v60 = v79;
    }

    else
    {
      v59 = v58 == 1;
      v60 = v79;
      v61 = v83;
      if (!v59)
      {

        (*(v84 + 56))(v61, 1, 1, v60);
        return sub_21909D858(v61, &qword_280EE4518, MEMORY[0x277D6E548]);
      }

      sub_219BE9EA4();
      v62 = v93;
    }

    v71 = v84;
    (*(v84 + 56))(v61, 0, 1, v60);
    v72 = v82;
    (*(v71 + 32))(v82, v61, v60);
    sub_218FDF7B0(v72, v28, v89, 0, 0);

    return (*(v71 + 8))(v72, v60);
  }

  return result;
}

void *sub_21909C564()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [result traitCollection];

    v3 = [v2 horizontalSizeClass];
    return (v3 == 1);
  }

  return result;
}

uint64_t sub_21909C5CC()
{
  sub_2187C5110();
  sub_219BEA7A4();
  aBlock[6] = aBlock[0];
  v0 = NewsActivity2.activityTraits.getter();
  sub_218932F9C(aBlock[0]);
  if (!v0)
  {
    return 1;
  }

  v1 = *(v0 + 2);
  v2 = v0 + 32;
  while (1)
  {
    if (!v1)
    {

      return 1;
    }

    if (*v2 <= 1u && *v2)
    {
      break;
    }

    v3 = sub_219BF78F4();

    ++v2;
    --v1;
    if (v3)
    {
      goto LABEL_11;
    }
  }

LABEL_11:

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = 0;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_21909DC40;
    *(v8 + 24) = v7;
    aBlock[4] = sub_218807D50;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218807CE4;
    aBlock[3] = &block_descriptor_93;
    v9 = _Block_copy(aBlock);
    v10 = v5;

    [v6 performWithoutAnimation_];

    _Block_release(v9);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
      return result;
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    return 1;
  }

  return result;
}

void sub_21909C8A4(void *a1, uint64_t a2)
{
  sub_21909D7A0(0, &unk_280EE3DC0, MEMORY[0x277D6E908]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12[-v5];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_219BE9EC4();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v6, a2, v9);
    (*(v10 + 56))(v6, 0, 1, v9);
    v13 = a1;
    swift_beginAccess();
    sub_2187C04A0();
    v11 = a1;
    sub_219BE1C84();
    swift_endAccess();
  }
}

void sub_21909CA28(void *a1, uint64_t a2, int a3)
{
  LODWORD(v3) = a3;
  v116 = a1;
  v117 = a2;
  sub_21909D7A0(0, &qword_280EE4518, MEMORY[0x277D6E548]);
  MEMORY[0x28223BE20](v4 - 8);
  v109 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v107 = &v101 - v7;
  v8 = sub_219BE92E4();
  v110 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v108 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v106 = &v101 - v11;
  v12 = sub_219BE9EC4();
  v114 = *(v12 - 8);
  v115 = v12;
  v13 = *(v114 + 64);
  MEMORY[0x28223BE20](v12);
  v113 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v101 - v15;
  sub_21909D7A0(0, &unk_280EE3DC0, MEMORY[0x277D6E908]);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v101 - v18;
  sub_21909D7A0(0, &unk_280EE4470, MEMORY[0x277D6E658]);
  v111 = *(v20 - 8);
  v21 = *(v111 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v112 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v101 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v101 - v26;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v30 = [Strong traitCollection];
    v118 = v3;
    v3 = v30;

    v31 = [v3 horizontalSizeClass];
    LOBYTE(v3) = v118;
    if (v31 == 1)
    {
      v104 = v8;
      v32 = swift_unknownObjectWeakLoadStrong();
      if (!v32)
      {
        goto LABEL_35;
      }

      v33 = v32;
      v34 = sub_219BE94F4();
      (*(*(v34 - 8) + 56))(v27, 1, 1, v34);
      v35 = v114;
      v36 = v115;
      v102 = *(v114 + 16);
      v102(v19, v117, v115);
      (*(v35 + 56))(v19, 0, 1, v36);
      v105 = v27;
      v37 = v116;
      *&v119 = v116;
      swift_beginAccess();
      sub_2187C04A0();
      v103 = v37;
      sub_219BE1C84();
      swift_endAccess();
      v38 = OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_layoutCoordinator;
      swift_beginAccess();
      sub_21909D8B4(&v33[v38], &v119, &qword_280E9DA68, sub_21909D7F4);
      v39 = v33;
      if (v120)
      {
        sub_21875F93C(&v119, v121);
        v101 = __swift_project_boxed_opaque_existential_1(v121, v121[3]);
        v109 = swift_allocObject();
        v108 = v33;
        swift_unknownObjectWeakInit();
        v40 = v115;
        v41 = v102;
        v102(v16, v117, v115);
        v42 = MEMORY[0x277D6E658];
        sub_21909D8B4(v105, v24, &unk_280EE4470, MEMORY[0x277D6E658]);
        v41(v113, v16, v40);
        sub_21909D8B4(v24, v112, &unk_280EE4470, v42);
        v43 = v114;
        v44 = (*(v114 + 80) + 24) & ~*(v114 + 80);
        v45 = (v13 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
        v46 = (*(v111 + 80) + v45 + 8) & ~*(v111 + 80);
        v47 = (v21 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
        v48 = swift_allocObject();
        *(v48 + 16) = v109;
        (*(v43 + 32))(v48 + v44, v16, v40);
        v49 = v103;
        *(v48 + v45) = v103;
        sub_218FEADDC(v24, v48 + v46);
        v50 = (v48 + v47);
        *v50 = 0;
        v50[1] = 0;
        v51 = *(*v101 + 32);
        v52 = v43;
        v53 = v49;
        if (v51)
        {
          v54 = objc_opt_self();
          v55 = v53;

          v56 = [v54 areAnimationsEnabled];
          v57 = swift_allocObject();
          *(v57 + 16) = v56;
          *(v57 + 24) = sub_21909DC4C;
          *(v57 + 32) = v48;
          swift_beginAccess();
          v58 = *(v51 + 32);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v51 + 32) = v58;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v58 = sub_2191F67A4(0, v58[2] + 1, 1, v58);
            *(v51 + 32) = v58;
          }

          v60 = v105;
          v3 = v58[2];
          v61 = v58[3];
          if (v3 >= v61 >> 1)
          {
            v58 = sub_2191F67A4((v61 > 1), v3 + 1, 1, v58);
          }

          v58[2] = v3 + 1;
          v62 = &v58[2 * v3];
          v62[4] = sub_218FEB4AC;
          v62[5] = v57;
          *(v51 + 32) = v58;
          swift_endAccess();

          LOBYTE(v3) = v118;
          v63 = v60;
          goto LABEL_34;
        }

        swift_beginAccess();
        v78 = swift_unknownObjectWeakLoadStrong();
        v79 = v53;
        v80 = v79;
        if (v78)
        {
          swift_retain_n();
          v81 = v80;
          v82 = [v78 traitCollection];
          v83 = [v82 horizontalSizeClass];

          if (v83 == 2)
          {
            v85 = v81;
            v84 = v107;
            sub_219BE9E94();
            LOBYTE(v3) = v118;
          }

          else
          {
            LOBYTE(v3) = v118;
            v63 = v105;
            v84 = v107;
            if (v83 != 1)
            {

              (*(v110 + 56))(v84, 1, 1, v104);
              sub_21909D858(v84, &qword_280EE4518, MEMORY[0x277D6E548]);

              v40 = v115;
              goto LABEL_34;
            }

            v85 = v81;
            sub_219BE9EA4();
          }

          v93 = v110;
          v94 = v84;
          v95 = v84;
          v96 = v104;
          (*(v110 + 56))(v94, 0, 1, v104);
          v97 = v106;
          (*(v93 + 32))(v106, v95, v96);
          sub_218FDF7B0(v97, v85, v112, 0, 0);

          (*(v93 + 8))(v97, v96);

          v53 = v103;
          v40 = v115;
        }

        else
        {
          v92 = v79;

          LOBYTE(v3) = v118;
        }

        v63 = v105;
LABEL_34:

        (*(v52 + 8))(v113, v40);

        v98 = MEMORY[0x277D6E658];
        sub_21909D858(v112, &unk_280EE4470, MEMORY[0x277D6E658]);

        sub_21909D858(v63, &unk_280EE4470, v98);

        __swift_destroy_boxed_opaque_existential_1(v121);
LABEL_35:
        if (v3 != 2)
        {
          type metadata accessor for FloatingTabBarNavigationController();
          v99 = v116;
          if (swift_dynamicCastClass())
          {
            v100 = v99;
            sub_219798754(0);
          }

          [v99 setEditing:v3 & 1 animated:0];
        }

        return;
      }

      v72 = v103;
      v73 = v105;
      sub_21909D858(&v119, &qword_280E9DA68, sub_21909D7F4);
      v74 = [v39 traitCollection];
      v75 = [v74 horizontalSizeClass];

      if (v75 == 2)
      {
        v77 = v109;
        sub_219BE9E94();
        LOBYTE(v3) = v118;
        v76 = v73;
      }

      else
      {
        LOBYTE(v3) = v118;
        v76 = v73;
        v77 = v109;
        if (v75 != 1)
        {

          sub_21909D858(v73, &unk_280EE4470, MEMORY[0x277D6E658]);
          (*(v110 + 56))(v77, 1, 1, v104);
          v89 = &qword_280EE4518;
          v90 = MEMORY[0x277D6E548];
          v91 = v77;
LABEL_28:
          sub_21909D858(v91, v89, v90);
          goto LABEL_35;
        }

        sub_219BE9EA4();
      }

      v86 = v110;
      v87 = v104;
      (*(v110 + 56))(v77, 0, 1, v104);
      v88 = v108;
      (*(v86 + 32))(v108, v77, v87);
      sub_218FDF7B0(v88, v72, v76, 0, 0);

      (*(v86 + 8))(v88, v87);
      v89 = &unk_280EE4470;
      v90 = MEMORY[0x277D6E658];
      v91 = v76;
      goto LABEL_28;
    }
  }

  v64 = swift_unknownObjectWeakLoadStrong();
  if (v64)
  {
    v65 = v64;
    v66 = [v64 _uip_sidebar];

    [v66 _setVisible_];
  }

  if (v3 != 2)
  {
    v67 = swift_unknownObjectWeakLoadStrong();
    if (v67)
    {
      LOBYTE(v121[0]) = v3 & 1;
      v68 = v67;

      sub_219BE2744();
    }

    v69 = swift_unknownObjectWeakLoadStrong();
    if (v69)
    {
      v70 = v69;
      v71 = [v69 _uip_sidebar];

      [v71 _setEditing_];
    }
  }
}

void sub_21909D7A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_21909D7F4()
{
  result = qword_280E9DA70;
  if (!qword_280E9DA70)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E9DA70);
  }

  return result;
}

uint64_t sub_21909D858(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_21909D7A0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21909D8B4(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_21909D7A0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_3Tm_7()
{
  v1 = sub_219BE9EC4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_21909D7A0(0, &unk_280EE4470, MEMORY[0x277D6E658]);
  v6 = (v4 + *(*(v5 - 8) + 80) + 8) & ~*(*(v5 - 8) + 80);
  v7 = (*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  v8 = sub_219BE94F4();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v6, 1, v8))
  {
    (*(v9 + 8))(v0 + v6, v8);
  }

  if (*(v0 + v7))
  {
  }

  return swift_deallocObject();
}

void *sub_21909DB14()
{
  v1 = *(sub_219BE9EC4() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_21909D7A0(0, &unk_280EE4470, MEMORY[0x277D6E658]);
  v5 = *(v4 - 8);
  v6 = (v3 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + v3);
  v9 = v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return sub_218FE1838(v7, v0 + v2, v8, (v0 + v6), v10, v11);
}

uint64_t sub_21909DC50(uint64_t a1)
{
  v3 = type metadata accessor for CuratedAudioFeedGroup();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  AudioFeedGroup = type metadata accessor for UpNextAudioFeedGroup();
  MEMORY[0x28223BE20](AudioFeedGroup - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ForYouAudioFeedGroup();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AudioFeedGroup();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - v17;
  sub_21909E61C(a1, &v36 - v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_21909E61C(a1, v16);
      sub_21909E6B4();
      swift_allocObject();
      v24 = sub_219BE3014();
      v26 = type metadata accessor for AudioFeedGroup;
      v25 = v18;
    }

    else
    {
      v31 = sub_21909E73C(v18, v5, type metadata accessor for CuratedAudioFeedGroup);
      MEMORY[0x28223BE20](v31);
      *(&v36 - 2) = v1;
      *(&v36 - 1) = v5;
      sub_219BF1904();
      sub_219BE3204();
      sub_21909E61C(a1, v16);
      v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
      v33 = swift_allocObject();
      sub_21909E73C(v16, v33 + v32, type metadata accessor for AudioFeedGroup);
      v34 = sub_219BE2E54();
      v24 = sub_219BE2F74();

      v25 = v5;
      v26 = type metadata accessor for CuratedAudioFeedGroup;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v27 = sub_21909E73C(v18, v8, type metadata accessor for UpNextAudioFeedGroup);
    MEMORY[0x28223BE20](v27);
    *(&v36 - 2) = v1;
    *(&v36 - 1) = v8;
    sub_219BF1904();
    sub_219BE3204();
    sub_21909E61C(a1, v16);
    v28 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v29 = swift_allocObject();
    sub_21909E73C(v16, v29 + v28, type metadata accessor for AudioFeedGroup);
    v30 = sub_219BE2E54();
    v24 = sub_219BE2F74();

    v25 = v8;
    v26 = type metadata accessor for UpNextAudioFeedGroup;
  }

  else
  {
    v20 = sub_21909E73C(v18, v11, type metadata accessor for ForYouAudioFeedGroup);
    MEMORY[0x28223BE20](v20);
    *(&v36 - 2) = v1;
    *(&v36 - 1) = v11;
    sub_219BF1904();
    sub_219BE3204();
    sub_21909E61C(a1, v16);
    v21 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v22 = swift_allocObject();
    sub_21909E73C(v16, v22 + v21, type metadata accessor for AudioFeedGroup);
    v23 = sub_219BE2E54();
    v24 = sub_219BE2F74();

    v25 = v11;
    v26 = type metadata accessor for ForYouAudioFeedGroup;
  }

  sub_21909E840(v25, v26);
  return v24;
}

uint64_t sub_21909E1BC(uint64_t a1)
{
  v12 = sub_219BF2AB4();
  v2 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BF1904();
  v5 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  sub_219BED874();
  if (qword_280E8D7D8 != -1)
  {
    swift_once();
  }

  sub_219BF2AA4();
  v8 = sub_219BF21A4();
  (*(v2 + 8))(v4, v12);
  (*(v5 + 8))(v7, v11);
  return v8;
}

uint64_t sub_21909E3CC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v15 = sub_219BF2AB4();
  v5 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BF1904();
  v8 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  a3(0);
  sub_219BED874();
  if (qword_280E8D7D8 != -1)
  {
    swift_once();
  }

  sub_219BF2AA4();
  v11 = sub_219BF21A4();
  (*(v5 + 8))(v7, v15);
  (*(v8 + 8))(v10, v14);
  return v11;
}

uint64_t sub_21909E61C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21909E6B4()
{
  if (!qword_27CC15A30)
  {
    type metadata accessor for AudioFeedGroup();
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC15A30);
    }
  }
}

uint64_t sub_21909E73C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21909E840(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21909E8D4(uint64_t a1)
{
  v2 = sub_21909F404();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_21909E914()
{
  result = qword_280EE2B08;
  if (!qword_280EE2B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE2B08);
  }

  return result;
}

uint64_t sub_21909E9B0(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v85 = a5;
  v86 = a6;
  v84 = a4;
  v75 = a3;
  v8 = sub_219BE6DF4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v72 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21909F324(0, &qword_280EE4B20, MEMORY[0x277D6DF88]);
  v71 = v11;
  v70 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v69 = &v63 - v12;
  sub_21898BEA4();
  MEMORY[0x28223BE20](v13 - 8);
  v83 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350();
  v89 = v15;
  v87 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v82 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v63 - v18;
  sub_21898BCDC();
  MEMORY[0x28223BE20](v20 - 8);
  v67 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408();
  v23 = v22;
  v68 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v77 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_219BEB1B4();
  v65 = v25;
  v26 = sub_2186CC224(&unk_280EE36D0, sub_218954408);
  v27 = sub_219BF5E44();
  v28 = MEMORY[0x277D84F90];
  v74 = v8;
  v73 = v9;
  v76 = v23;
  v88 = a1;
  if (v27)
  {
    v64 = v19;
    v92 = MEMORY[0x277D84F90];
    v29 = v27;
    sub_218C357A0(0, v27 & ~(v27 >> 63), 0);
    v28 = v92;
    result = sub_219BF5DF4();
    if (v29 < 0)
    {
      __break(1u);
      return result;
    }

    v31 = v29;
    v63 = a2;
    v80 = (v87 + 8);
    v81 = (v87 + 16);
    v79 = v87 + 32;
    v32 = v89;
    v33 = v64;
    v78 = v26;
    do
    {
      v89 = v31;
      v34 = sub_219BF5EC4();
      v35 = v82;
      (*v81)(v82);
      v34(v91, 0);
      v36 = sub_219BE6934();
      v90 = v91[0];
      MEMORY[0x28223BE20](v36);
      v59 = v84;
      v60 = v85;
      v61 = v86;
      v62 = v35;
      v37 = sub_218F8B68C(sub_21909F3E4, (&v63 - 6));
      sub_21898BF70();
      v39 = v38;
      v40 = sub_2186CC224(&qword_280EE5CE8, sub_21898BF70);
      v41 = sub_2186CC224(&unk_280EE5CF0, sub_21898BF70);
      MEMORY[0x21CEB9170](v37, v39, v40, v41);
      type metadata accessor for TagFeedModel(0);
      sub_2186F7410();
      sub_2186CC224(&unk_280EDE820, type metadata accessor for TagFeedModel);
      sub_219BE6924();
      (*v80)(v35, v32);
      v92 = v28;
      v43 = *(v28 + 16);
      v42 = *(v28 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_218C357A0(v42 > 1, v43 + 1, 1);
        v28 = v92;
      }

      *(v28 + 16) = v43 + 1;
      (*(v87 + 32))(v28 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v43, v33, v32);
      sub_219BF5E94();
      v31 = v89 - 1;
    }

    while (v89 != 1);
    a2 = v63;
  }

  else
  {
    v32 = v89;
  }

  v44 = sub_2186CC224(&qword_280EE5870, sub_218954350);
  v45 = sub_2186CC224(&qword_280EE5880, sub_218954350);
  MEMORY[0x21CEB9170](v28, v32, v44, v45);
  type metadata accessor for TagFeedModel(0);
  v46 = sub_2186F7410();
  v47 = sub_2186CC224(&unk_280EDE820, type metadata accessor for TagFeedModel);
  sub_219BEB1A4();
  v48 = sub_219759E94();
  sub_219BEEFF4();
  sub_219BEEFE4();
  type metadata accessor for TagFeedServiceConfig();
  sub_2186CC224(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
  v49 = sub_219BEEFC4();

  v50 = a2;
  if (v49)
  {
    v51 = sub_219BEDC74();
  }

  else
  {
    v51 = 0;
    v91[1] = 0;
    v91[2] = 0;
  }

  v52 = v74;
  v53 = v72;
  v91[0] = v49;
  v91[3] = v51;
  v54 = v76;
  v55 = v77;
  sub_219BEB2C4();
  sub_21885AB78(v48);
  v56 = v73;
  (*(v73 + 104))(v53, *MEMORY[0x277D6D868], v52);
  v57 = sub_218D5BF28();
  v61 = v46;
  v62 = v47;
  v59 = v47;
  v60 = v57;
  v58 = v69;
  sub_219BE85A4();
  (*(v56 + 8))(v53, v52);
  v50(v58);
  (*(v70 + 8))(v58, v71);
  return (*(v68 + 8))(v55, v54);
}

void sub_21909F324(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TagFeedSectionDescriptor;
    v8[1] = type metadata accessor for TagFeedModel(255);
    v8[2] = sub_2186F7410();
    v8[3] = sub_2186CC224(&unk_280EDE820, type metadata accessor for TagFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_21909F404()
{
  result = qword_280EE2B10;
  if (!qword_280EE2B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE2B10);
  }

  return result;
}

uint64_t sub_21909F458()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 240);

  __swift_destroy_boxed_opaque_existential_1(v0 + 288);
  __swift_destroy_boxed_opaque_existential_1(v0 + 328);

  __swift_destroy_boxed_opaque_existential_1(v0 + 376);

  __swift_destroy_boxed_opaque_existential_1(v0 + 424);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 472);
  __swift_destroy_boxed_opaque_existential_1(v0 + 512);
  __swift_destroy_boxed_opaque_existential_1(v0 + 552);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 608);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 672);
  __swift_destroy_boxed_opaque_existential_1(v0 + 712);
  __swift_destroy_boxed_opaque_existential_1(v0 + 752);
  __swift_destroy_boxed_opaque_existential_1(v0 + 792);

  __swift_destroy_boxed_opaque_existential_1(v0 + 848);
  __swift_destroy_boxed_opaque_existential_1(v0 + 888);
  __swift_destroy_boxed_opaque_existential_1(v0 + 928);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 984);
  __swift_destroy_boxed_opaque_existential_1(v0 + 1024);
  __swift_destroy_boxed_opaque_existential_1(v0 + 1064);
  __swift_destroy_boxed_opaque_existential_1(v0 + 1104);
  __swift_destroy_boxed_opaque_existential_1(v0 + 1144);
  __swift_destroy_boxed_opaque_existential_1(v0 + 1184);
  __swift_destroy_boxed_opaque_existential_1(v0 + 1224);
  __swift_destroy_boxed_opaque_existential_1(v0 + 1264);
  return v0;
}

uint64_t sub_21909F5C0()
{
  sub_21909F458();

  return swift_deallocClassInstance();
}

uint64_t sub_21909F61C(uint64_t *a1, uint64_t a2)
{
  v838 = a2;
  v839 = a1;
  v2 = type metadata accessor for FoodTodayFeedGroupKnobs();
  MEMORY[0x28223BE20](v2 - 8);
  v774 = &v672 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v777 = type metadata accessor for FoodTodayFeedGroupEmitter();
  MEMORY[0x28223BE20](v777);
  v776 = &v672 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E16D0();
  v828 = v5;
  v775 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v823 = (&v672 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v825 = (&v672 - v8);
  v780 = type metadata accessor for ChannelPickerTodayFeedGroupEmitter();
  MEMORY[0x28223BE20](v780);
  v779 = &v672 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190A6884(0, qword_280E97668, type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs);
  MEMORY[0x28223BE20](v10 - 8);
  v796 = &v672 - v11;
  v12 = type metadata accessor for ChannelPickerTodayFeedGroupConfigData();
  MEMORY[0x28223BE20](v12 - 8);
  v771 = &v672 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v795 = type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs();
  v794 = *(v795 - 8);
  v14 = MEMORY[0x28223BE20](v795);
  v785 = &v672 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v778 = &v672 - v16;
  sub_2186E14F4();
  v830 = v17;
  v797 = *(v17 - 1);
  MEMORY[0x28223BE20](v17);
  v829 = (&v672 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v770 = type metadata accessor for SavedStoriesTodayFeedGroupEmitter();
  MEMORY[0x28223BE20](v770);
  v768 = &v672 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E13DC();
  v769 = v20;
  v767 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v766 = &v672 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ChannelTodayFeedGroupKnobs();
  MEMORY[0x28223BE20](v22 - 8);
  v765 = &v672 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E12C4();
  v773 = v24;
  v772 = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v24);
  v764 = &v672 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v820 = &v672 - v27;
  v763 = type metadata accessor for ShortcutsTodayFeedGroupEmitter();
  MEMORY[0x28223BE20](v763);
  v760 = &v672 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E1164();
  v761 = v29;
  v759 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v756 = &v672 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v762 = type metadata accessor for IntroToSportsTodayFeedGroupEmitter();
  MEMORY[0x28223BE20](v762);
  v758 = &v672 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E104C();
  v819 = v32;
  v757 = *(v32 - 1);
  MEMORY[0x28223BE20](v32);
  v818 = (&v672 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for MySportsTodayFeedGroupKnobs();
  MEMORY[0x28223BE20](v34 - 8);
  v822 = &v672 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0E98();
  v827 = v36;
  v826 = *(v36 - 8);
  v37 = MEMORY[0x28223BE20](v36);
  v821 = &v672 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v824 = &v672 - v39;
  v40 = type metadata accessor for EngagementTodayFeedGroupKnobs();
  MEMORY[0x28223BE20](v40 - 8);
  v750 = &v672 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190A6714(0, &qword_280E922F0, sub_2186E0DF0, sub_2186E0E44);
  v755 = v42;
  v754 = *(v42 - 8);
  v43 = MEMORY[0x28223BE20](v42);
  v748 = &v672 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v751 = &v672 - v45;
  v46 = type metadata accessor for SharedWithYouTodayFeedGroupKnobs();
  MEMORY[0x28223BE20](v46 - 8);
  v749 = &v672 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0CD8();
  v753 = v48;
  v752 = *(v48 - 8);
  v49 = MEMORY[0x28223BE20](v48);
  v743 = &v672 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v817 = &v672 - v51;
  v52 = type metadata accessor for SeenContentMarkTodayFeedGroupKnobs();
  MEMORY[0x28223BE20](v52 - 8);
  v738 = &v672 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0BC0();
  v745 = v54;
  v744 = *(v54 - 8);
  v55 = MEMORY[0x28223BE20](v54);
  v736 = &v672 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v742 = &v672 - v57;
  v58 = type metadata accessor for SuggestionTodayFeedGroupKnobs();
  MEMORY[0x28223BE20](v58 - 8);
  v737 = &v672 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0AA8();
  v747 = v60;
  v746 = *(v60 - 8);
  v61 = MEMORY[0x28223BE20](v60);
  v735 = &v672 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v814 = &v672 - v63;
  v64 = type metadata accessor for SubscriptionTodayFeedGroupKnobs();
  MEMORY[0x28223BE20](v64 - 8);
  v803 = &v672 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v697 = type metadata accessor for SubscriptionTodayFeedGroupEmitter();
  MEMORY[0x28223BE20](v697);
  v696 = &v672 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0990();
  v741 = v67;
  v739 = *(v67 - 8);
  v68 = MEMORY[0x28223BE20](v67);
  v802 = &v672 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v804 = &v672 - v70;
  v71 = type metadata accessor for SpotlightTodayFeedGroupKnobs();
  MEMORY[0x28223BE20](v71 - 8);
  v728 = &v672 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0878();
  v733 = *(v73 - 8);
  v734 = v73;
  v74 = MEMORY[0x28223BE20](v73);
  v726 = &v672 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v74);
  v732 = &v672 - v76;
  v77 = type metadata accessor for NewFollowTodayFeedGroupKnobs();
  MEMORY[0x28223BE20](v77 - 8);
  v727 = &v672 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v731 = type metadata accessor for NewFollowTodayFeedGroupEmitter();
  MEMORY[0x28223BE20](v731);
  v730 = &v672 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E06DC();
  v811 = v80;
  v729 = *(v80 - 8);
  v81 = MEMORY[0x28223BE20](v80);
  v725 = &v672 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v81);
  v810 = &v672 - v83;
  v723 = type metadata accessor for MagazineTodayFeedGroupEmitter();
  MEMORY[0x28223BE20](v723);
  v721 = &v672 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190A6714(0, &qword_280E923C0, sub_2186E0634, sub_2186E0688);
  v719 = *(v85 - 8);
  v720 = v85;
  MEMORY[0x28223BE20](v85);
  v718 = &v672 - v86;
  v87 = type metadata accessor for TopicTodayFeedGroupKnobs();
  MEMORY[0x28223BE20](v87 - 8);
  v715 = &v672 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E03A0();
  v724 = v89;
  v722 = *(v89 - 8);
  v90 = MEMORY[0x28223BE20](v89);
  v713 = &v672 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v90);
  v809 = &v672 - v92;
  v93 = type metadata accessor for LatestStoriesTodayFeedGroupKnobs();
  MEMORY[0x28223BE20](v93 - 8);
  v710 = &v672 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0288();
  v808 = v95;
  v717 = *(v95 - 8);
  v96 = MEMORY[0x28223BE20](v95);
  v708 = &v672 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v96);
  v807 = &v672 - v98;
  v99 = type metadata accessor for MissedStoriesTodayFeedGroupKnobs();
  MEMORY[0x28223BE20](v99 - 8);
  v709 = &v672 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0170();
  v716 = v101;
  v714 = *(v101 - 8);
  v102 = MEMORY[0x28223BE20](v101);
  v707 = &v672 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v102);
  v806 = &v672 - v104;
  v105 = type metadata accessor for ForYouTodayFeedGroupKnobs();
  MEMORY[0x28223BE20](v105 - 8);
  v706 = &v672 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0010();
  v711 = *(v107 - 8);
  v712 = v107;
  v108 = MEMORY[0x28223BE20](v107);
  v705 = &v672 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v108);
  v805 = &v672 - v110;
  v704 = type metadata accessor for TrendingTodayFeedGroupEmitter();
  MEMORY[0x28223BE20](v704);
  v702 = &v672 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DF784();
  v703 = v112;
  v701 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v700 = &v672 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = MEMORY[0x277D32318];
  sub_2190A6790(0, &qword_280E91860, MEMORY[0x277D32318]);
  v816 = v115;
  v815 = *(v115 - 8);
  v116 = MEMORY[0x28223BE20](v115);
  v688 = &v672 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v116);
  v675 = &v672 - v118;
  v119 = MEMORY[0x277D321A0];
  sub_2190A6790(0, &qword_280E91A20, MEMORY[0x277D321A0]);
  v783 = v120;
  v798 = *(v120 - 8);
  v121 = MEMORY[0x28223BE20](v120);
  v687 = &v672 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v121);
  v673 = &v672 - v123;
  sub_2190A6884(0, &qword_280E912E0, MEMORY[0x277D32720]);
  MEMORY[0x28223BE20](v124 - 8);
  v693 = &v672 - v125;
  sub_2190A682C(0, &unk_280E91850, &qword_280E91860, v114);
  v127 = MEMORY[0x28223BE20](v126 - 8);
  v781 = &v672 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = MEMORY[0x28223BE20](v127);
  v831 = &v672 - v130;
  v131 = MEMORY[0x28223BE20](v129);
  v674 = &v672 - v132;
  MEMORY[0x28223BE20](v131);
  v786 = &v672 - v133;
  sub_2190A682C(0, &unk_280E91A10, &qword_280E91A20, v119);
  v135 = MEMORY[0x28223BE20](v134 - 8);
  v698 = &v672 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = MEMORY[0x28223BE20](v135);
  v784 = &v672 - v138;
  v139 = MEMORY[0x28223BE20](v137);
  v672 = &v672 - v140;
  MEMORY[0x28223BE20](v139);
  v692 = &v672 - v141;
  v690 = type metadata accessor for CuratedTodayFeedGroupConfigData();
  v142 = MEMORY[0x28223BE20](v690);
  v689 = &v672 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = MEMORY[0x28223BE20](v142);
  v740 = &v672 - v145;
  MEMORY[0x28223BE20](v144);
  v686 = (&v672 - v146);
  sub_2190A6884(0, qword_280EBBA10, type metadata accessor for CuratedTodayFeedGroupKnobs);
  v148 = MEMORY[0x28223BE20](v147 - 8);
  v782 = &v672 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v148);
  v793 = &v672 - v150;
  v834 = type metadata accessor for CuratedTodayFeedGroupKnobs();
  v792 = *(v834 - 8);
  v151 = MEMORY[0x28223BE20](v834);
  v813 = &v672 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = MEMORY[0x28223BE20](v151);
  v691 = &v672 - v154;
  MEMORY[0x28223BE20](v153);
  v833 = &v672 - v155;
  sub_2186DE644();
  v837 = v156;
  v832 = *(v156 - 1);
  v157 = MEMORY[0x28223BE20](v156);
  v812 = &v672 - ((v158 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v157);
  v836 = &v672 - v159;
  v160 = type metadata accessor for LegacyLocalNewsTodayFeedGroupEmitter();
  MEMORY[0x28223BE20](v160);
  v162 = &v672 - ((v161 + 15) & 0xFFFFFFFFFFFFFFF0);
  v683 = type metadata accessor for LocalNewsTodayFeedGroupConfigData();
  v163 = MEMORY[0x28223BE20](v683);
  v682 = &v672 - ((v164 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v163);
  v680 = &v672 - v165;
  v685 = type metadata accessor for LocalNewsTodayFeedGroupEmitter();
  v166 = MEMORY[0x28223BE20](v685);
  v684 = &v672 - ((v167 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v166);
  v678 = &v672 - v168;
  sub_2186DF3DC();
  v699 = v169;
  v788 = *(v169 - 8);
  v170 = MEMORY[0x28223BE20](v169);
  v789 = &v672 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v170);
  v791 = &v672 - v172;
  v173 = type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs();
  MEMORY[0x28223BE20](v173 - 8);
  v787 = &v672 - ((v174 + 15) & 0xFFFFFFFFFFFFFFF0);
  v695 = type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter();
  v175 = MEMORY[0x28223BE20](v695);
  v694 = &v672 - ((v176 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v175);
  v676 = &v672 - v177;
  v790 = type metadata accessor for NewspaperTodayFeedGroupConfigData();
  v178 = MEMORY[0x28223BE20](v790);
  v679 = &v672 - ((v179 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = MEMORY[0x28223BE20](v178);
  v182 = &v672 - v181;
  v183 = MEMORY[0x28223BE20](v180);
  v185 = &v672 - v184;
  MEMORY[0x28223BE20](v183);
  v187 = &v672 - v186;
  v681 = type metadata accessor for NewspaperTodayFeedGroupEmitter();
  v188 = MEMORY[0x28223BE20](v681);
  v190 = &v672 - ((v189 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v188);
  v677 = &v672 - v191;
  sub_2186DE858();
  v835 = v192;
  v801 = *(v192 - 8);
  v193 = MEMORY[0x28223BE20](v192);
  v799 = &v672 - ((v194 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = MEMORY[0x28223BE20](v193);
  v197 = &v672 - v196;
  MEMORY[0x28223BE20](v195);
  v800 = &v672 - v198;
  v199 = type metadata accessor for TodayFeedGroupConfig();
  MEMORY[0x28223BE20](v199);
  v201 = &v672 - ((v200 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190A68D8(v839, v201, type metadata accessor for TodayFeedGroupConfig);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v397 = v801;
      v398 = v800;
      v399 = v835;
      (*(v801 + 32))(v800, v201, v835);
      v400 = v840;
      v401 = [*(v840 + 224) modernLocalNewspaperEnabled];
      v402 = *(v397 + 16);
      if (!v401)
      {
        v543 = *(v397 + 16);
        v402(v799, v398, v399);
        sub_2190A68D8(v838 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_legacyNewspaperKnobs, v787, type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs);
        sub_218718690(v400 + 16, v864);
        sub_218718690(v400 + 240, &v862);
        v544 = *(v400 + 280);
        v545 = [v544 paidAccessChecker];
        if (!v545)
        {
          goto LABEL_138;
        }

        v546 = v545;
        v547 = [v544 subscriptionController];
        if (!v547)
        {
          goto LABEL_141;
        }

        v548 = v547;
        sub_218718690(v400 + 288, &v860);
        sub_218718690(v400 + 552, &v857);
        v550 = v694;
        v549 = v695;
        v551 = &v694[*(v695 + 52)];
        *v551 = 0x657061707377654ELL;
        *(v551 + 1) = 0xE900000000000072;
        v543(v550, v799, v835);
        sub_2190A68D8(v787, &v550[v549[5]], type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs);
        sub_218718690(v864, &v550[v549[6]]);
        sub_218718690(&v862, &v550[v549[7]]);
        *&v550[v549[8]] = v546;
        *&v550[v549[9]] = v548;
        sub_218718690(&v860, &v550[v549[10]]);
        sub_218718690(&v857, &v550[v549[12]]);
        sub_219BEDD14();
        v552 = *&v182[v790[7]];

        sub_2190A6A44(v182, type metadata accessor for NewspaperTodayFeedGroupConfigData);
        v553 = *(v552 + 16);
        if (v553)
        {
          *&v854 = MEMORY[0x277D84F90];
          sub_218C35840(0, v553, 0);
          isUniquelyReferenced_nonNull_native = v854;
          *&v840 = v552;
          v554 = (v552 + 40);
          do
          {
            v556 = *(v554 - 1);
            v555 = *v554;
            *&v854 = isUniquelyReferenced_nonNull_native;
            v558 = *(isUniquelyReferenced_nonNull_native + 16);
            v557 = *(isUniquelyReferenced_nonNull_native + 24);

            if (v558 >= v557 >> 1)
            {
              sub_218C35840((v557 > 1), v558 + 1, 1);
              isUniquelyReferenced_nonNull_native = v854;
            }

            *(isUniquelyReferenced_nonNull_native + 16) = v558 + 1;
            v559 = isUniquelyReferenced_nonNull_native + 24 * v558;
            *(v559 + 32) = v556;
            *(v559 + 40) = v555;
            *(v559 + 48) = 0;
            v554 += 2;
            --v553;
          }

          while (v553);
        }

        else
        {

          isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
        }

        v642 = v679;
        sub_219BEDD14();
        v352 = *(v642 + v790[8]);

        sub_2190A6A44(v642, type metadata accessor for NewspaperTodayFeedGroupConfigData);
        v643 = *(v352 + 16);
        if (v643)
        {
          *&v854 = MEMORY[0x277D84F90];
          sub_218C35840(0, v643, 0);
          v644 = v854;
          *&v840 = v352;
          v645 = (v352 + 40);
          do
          {
            v646 = *(v645 - 1);
            v352 = *v645;
            *&v854 = v644;
            v648 = *(v644 + 16);
            v647 = *(v644 + 24);

            if (v648 >= v647 >> 1)
            {
              sub_218C35840((v647 > 1), v648 + 1, 1);
              v644 = v854;
            }

            *(v644 + 16) = v648 + 1;
            v649 = v644 + 24 * v648;
            *(v649 + 32) = v646;
            *(v649 + 40) = v352;
            *(v649 + 48) = 1;
            v645 += 2;
            --v643;
          }

          while (v643);
        }

        else
        {

          v644 = MEMORY[0x277D84F90];
        }

        *&v854 = isUniquelyReferenced_nonNull_native;
        sub_2191EE600(v644);
        v650 = v854;
        *&v840 = *(v854 + 16);
        if (!v840)
        {
          v651 = MEMORY[0x277D84F98];
LABEL_124:

          __swift_destroy_boxed_opaque_existential_1(&v857);
          __swift_destroy_boxed_opaque_existential_1(&v860);
          __swift_destroy_boxed_opaque_existential_1(&v862);
          __swift_destroy_boxed_opaque_existential_1(v864);
          sub_2190A6A44(v787, type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs);
          v668 = *(v801 + 8);
          v669 = v835;
          v668(v799, v835);
          v670 = v694;
          *&v694[*(v695 + 44)] = v651;
          sub_2190A6BCC(v670, v676, type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter);
          sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
          swift_allocObject();
          sub_2186DFCB0(&qword_27CC15A58, type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter);
          v274 = sub_219BEDF84();
          v668(v800, v669);
          return v274;
        }

        v342 = 0;
        v353 = (v854 + 48);
        v651 = MEMORY[0x277D84F98];
        while (1)
        {
          if (v342 >= *(v650 + 16))
          {
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            swift_once();
LABEL_19:
            v354 = sub_219BE5434();
            v355 = __swift_project_value_buffer(v354, qword_280F62520);
            v356 = &v353[v684];
            v357 = v684;
            (*(*(v354 - 8) + 16))(v356, v355, v354);
            (isUniquelyReferenced_nonNull_native)(v357, v789, v342);
            v358 = v680;
            sub_219BEDD14();
            v359 = v683;
            v360 = (v358 + *(v683 + 24));
            v361 = *v360;
            v362 = v360[1];

            sub_2190A6A44(v358, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
            sub_218D384FC(v361, v362, v838, v357 + *(v352 + 20));

            sub_218718690(v864, v357 + *(v352 + 24));
            sub_218718690(&v862, v357 + *(v352 + 28));
            sub_218718690(&v860, v357 + *(v352 + 32));
            *(v357 + *(v352 + 36)) = v839;
            *(v357 + *(v352 + 40)) = v837;
            *(v357 + *(v352 + 44)) = v836;
            sub_218718690(&v857, v357 + *(v352 + 48));
            sub_218718690(&v854, v357 + *(v352 + 52));
            v363 = v682;
            sub_219BEDD14();
            v364 = (v363 + *(v359 + 24));
            v366 = *v364;
            v365 = v364[1];

            sub_2190A6A44(v363, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
            v367 = 0x654E206C61636F4CLL;
            if (v365)
            {
              strcpy(v853, "Local News (");
              BYTE13(v853[0]) = 0;
              HIWORD(v853[0]) = -5120;
              MEMORY[0x21CECC330](v366, v365);

              MEMORY[0x21CECC330](41, 0xE100000000000000);
              v368 = *(&v853[0] + 1);
              v367 = *&v853[0];
            }

            else
            {
              v368 = 0xEA00000000007377;
            }

            v633 = v788;
            v634 = v678;
            __swift_destroy_boxed_opaque_existential_1(&v854);
            __swift_destroy_boxed_opaque_existential_1(&v857);
            __swift_destroy_boxed_opaque_existential_1(&v860);
            __swift_destroy_boxed_opaque_existential_1(&v862);
            __swift_destroy_boxed_opaque_existential_1(v864);
            v635 = *(v633 + 8);
            v635(v789, v342);
            v636 = (v357 + *(v352 + 56));
            *v636 = v367;
            v636[1] = v368;
            sub_2190A6BCC(v357, v634, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
            sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
            swift_allocObject();
            sub_2186DFCB0(&unk_280EE17D0, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
            v274 = sub_219BEDF94();
            v635(v791, v342);
            return v274;
          }

          v352 = *(v353 - 2);
          v654 = *(v353 - 1);
          v655 = *v353;
          sub_21892DEAC();
          sub_21892DEAC();
          sub_21892DEAC();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v854 = v651;
          v656 = sub_21870F700(v352, v654);
          v658 = v651[2];
          v659 = (v657 & 1) == 0;
          v660 = __OFADD__(v658, v659);
          v661 = v658 + v659;
          if (v660)
          {
            goto LABEL_127;
          }

          v662 = v657;
          if (v651[3] < v661)
          {
            break;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_118;
          }

          isUniquelyReferenced_nonNull_native = v656;
          sub_219492AC0();
          v656 = isUniquelyReferenced_nonNull_native;
          if (v662)
          {
LABEL_110:
            v652 = v656;
            sub_218D89920();
            v651 = v854;
            v653 = *(v854 + 56) + 24 * v652;
            *v653 = v352;
            *(v653 + 8) = v654;
            *(v653 + 16) = v655;
            sub_218D89920();
            sub_218D89920();
            goto LABEL_111;
          }

LABEL_119:
          v651 = v854;
          *(v854 + 8 * (v656 >> 6) + 64) |= 1 << v656;
          v664 = (v651[6] + 16 * v656);
          *v664 = v352;
          v664[1] = v654;
          v665 = v651[7] + 24 * v656;
          *v665 = v352;
          *(v665 + 8) = v654;
          *(v665 + 16) = v655;
          sub_218D89920();
          v666 = v651[2];
          v660 = __OFADD__(v666, 1);
          v667 = v666 + 1;
          if (v660)
          {
            goto LABEL_128;
          }

          v651[2] = v667;
LABEL_111:
          ++v342;
          v353 += 24;
          if (v840 == v342)
          {
            goto LABEL_124;
          }
        }

        sub_219481CD0(v661, isUniquelyReferenced_nonNull_native);
        v656 = sub_21870F700(v352, v654);
        if ((v662 & 1) != (v663 & 1))
        {
          goto LABEL_142;
        }

LABEL_118:
        if (v662)
        {
          goto LABEL_110;
        }

        goto LABEL_119;
      }

      v839 = *(v397 + 16);
      v402(v197, v398, v399);
      v403 = *(v838 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_newspaperKnobs);
      sub_218718690(v400 + 96, v864);
      sub_218718690(v400 + 472, &v862);
      v404 = *(v400 + 280);
      v405 = [v404 paidAccessChecker];
      if (!v405)
      {
        goto LABEL_137;
      }

      v406 = v405;
      v838 = v403;
      v407 = [v404 subscriptionController];
      if (v407)
      {
        v836 = v407;
        v837 = v406;
        v408 = v840;
        sub_218718690(v840 + 240, &v860);
        sub_218718690(v408 + 552, &v857);
        v409 = v681;
        v410 = *(v681 + 52);
        if (qword_280EE5F08 != -1)
        {
          swift_once();
        }

        v411 = sub_219BE5434();
        v412 = __swift_project_value_buffer(v411, qword_280F62520);
        (*(*(v411 - 8) + 16))(&v190[v410], v412, v411);
        (v839)(v190, v197, v835);
        sub_219BEDD14();
        v413 = v790;
        v414 = &v187[v790[6]];
        v415 = *v414;
        v416 = v414[1];

        sub_2190A6A44(v187, type metadata accessor for NewspaperTodayFeedGroupConfigData);
        sub_218F63BE4(v415, v416, v838, &v190[v409[5]]);

        sub_218718690(v864, &v190[v409[6]]);
        sub_218718690(&v862, &v190[v409[7]]);
        *&v190[v409[8]] = v837;
        *&v190[v409[9]] = v836;
        sub_218718690(&v860, &v190[v409[10]]);
        sub_218718690(&v857, &v190[v409[11]]);
        sub_219BEDD14();
        v417 = &v185[v413[6]];
        v419 = *v417;
        v418 = *(v417 + 1);

        sub_2190A6A44(v185, type metadata accessor for NewspaperTodayFeedGroupConfigData);
        v420 = 0x657061707377654ELL;
        v421 = v409;
        if (v418)
        {
          *&v854 = 0x657061707377654ELL;
          *(&v854 + 1) = 0xEB00000000282072;
          MEMORY[0x21CECC330](v419, v418);

          MEMORY[0x21CECC330](41, 0xE100000000000000);
          v422 = *(&v854 + 1);
          v420 = v854;
        }

        else
        {
          v422 = 0xE900000000000072;
        }

        v637 = v677;
        __swift_destroy_boxed_opaque_existential_1(&v857);
        __swift_destroy_boxed_opaque_existential_1(&v860);
        __swift_destroy_boxed_opaque_existential_1(&v862);
        __swift_destroy_boxed_opaque_existential_1(v864);
        v638 = *(v801 + 8);
        v639 = v197;
        v640 = v835;
        v638(v639, v835);
        v641 = &v190[v421[12]];
        *v641 = v420;
        v641[1] = v422;
        sub_2190A6BCC(v190, v637, type metadata accessor for NewspaperTodayFeedGroupEmitter);
        sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
        swift_allocObject();
        sub_2186DFCB0(qword_280EAC010, type metadata accessor for NewspaperTodayFeedGroupEmitter);
        v274 = sub_219BEDF94();
        v638(v800, v640);
        return v274;
      }

LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      result = sub_219BF79A4();
      __break(1u);
      return result;
    case 2u:
      v340 = v788;
      v341 = v791;
      v342 = v699;
      (*(v788 + 32))(v791, v201, v699);
      v343 = v840;
      v344 = [*(v840 + 224) modernLocalNewspaperEnabled];
      isUniquelyReferenced_nonNull_native = *(v340 + 16);
      if (!v344)
      {
        (isUniquelyReferenced_nonNull_native)(v162, v341, v342);
        sub_2190A68D8(v838 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_legacyLocalNewsKnobs, &v162[v160[5]], type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs);
        sub_218718690(v343 + 56, &v162[v160[6]]);
        sub_218718690(v343 + 424, &v162[v160[7]]);
        sub_218718690(v343 + 552, &v162[v160[8]]);
        v542 = &v162[v160[9]];
        *v542 = 0x654E206C61636F4CLL;
        *(v542 + 1) = 0xEA00000000007377;
        sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
        swift_allocObject();
        sub_2186DFCB0(&unk_27CC15A48, type metadata accessor for LegacyLocalNewsTodayFeedGroupEmitter);
        v274 = sub_219BEDF84();
        (*(v340 + 8))(v341, v342);
        return v274;
      }

      (isUniquelyReferenced_nonNull_native)(v789, v341, v342);
      v346 = *(v838 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_localNewsKnobs);
      sub_218718690(v343 + 96, v864);
      sub_218718690(v343 + 472, &v862);
      sub_218718690(v343 + 424, &v860);
      v347 = *(v343 + 464);
      v348 = *(v343 + 280);
      swift_unknownObjectRetain();
      v349 = [v348 localAreasManager];
      if (!v349)
      {
        goto LABEL_136;
      }

      v350 = v349;
      v351 = [v348 subscriptionController];
      if (!v351)
      {
        goto LABEL_139;
      }

      v836 = v351;
      v837 = v350;
      v838 = v346;
      v839 = v347;
      sub_218718690(v343 + 1024, &v857);
      sub_218718690(v343 + 552, &v854);
      v352 = v685;
      v353 = *(v685 + 60);
      if (qword_280EE5F08 != -1)
      {
        goto LABEL_129;
      }

      goto LABEL_19;
    case 3u:
      v371 = v700;
      v369 = v701;
      v372 = v703;
      (*(v701 + 32))(v700, v201, v703);
      v378 = v702;
      (*(v369 + 16))(v702, v371, v372);
      v379 = v704;
      sub_2190A68D8(v838 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_trendingKnobs, &v378[*(v704 + 20)], type metadata accessor for TrendingTodayFeedGroupKnobs);
      v380 = v840;
      sub_218718690(v840 + 96, &v378[v379[6]]);
      v381 = *(v380 + 280);
      v382 = &v378[v379[8]];
      *v382 = 0x676E69646E657254;
      *(v382 + 1) = 0xE800000000000000;
      *&v378[v379[7]] = v381;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      sub_2186DFCB0(&unk_280EADE08, type metadata accessor for TrendingTodayFeedGroupEmitter);
      v383 = v381;
      goto LABEL_46;
    case 4u:
      v301 = v711;
      v302 = *(v711 + 32);
      v303 = v805;
      v304 = v201;
      v305 = v712;
      v302(v805, v304, v712);
      v306 = v705;
      (*(v301 + 16))(v705, v303, v305);
      v307 = v706;
      sub_2190A68D8(v838 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_forYouKnobs, v706, type metadata accessor for ForYouTodayFeedGroupKnobs);
      v308 = v840;
      sub_218718690(v840 + 96, v864);
      v839 = *(v308 + 280);
      v309 = [v839 paidAccessChecker];
      if (!v309)
      {
        goto LABEL_131;
      }

      v310 = v309;
      sub_218718690(v308 + 240, &v862);
      sub_218718690(v308 + 176, &v860);
      v838 = *(v308 + 216);
      sub_218718690(v308 + 792, &v857);
      sub_218718690(v308 + 1264, &v854);
      type metadata accessor for ForYouTodayFeedGroupEmitter();
      v311 = swift_allocObject();
      v312 = (v311 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_name);
      *v312 = 0x756F5920726F46;
      v312[1] = 0xE700000000000000;
      v302((v311 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_config), v306, v305);
      sub_2190A6BCC(v307, v311 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_knobs, type metadata accessor for ForYouTodayFeedGroupKnobs);
      sub_2186CB1F0(v864, v311 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_formatService);
      *(v311 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_paidAccessChecker) = v310;
      sub_2186CB1F0(&v862, v311 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_personalizationService);
      sub_2186CB1F0(&v860, v311 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_headlineService);
      *(v311 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_feedPersonalizer) = v838;
      v313 = v839;
      *(v311 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_cloudContext) = v839;
      sub_2186CB1F0(&v857, v311 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_sportsGraphManager);
      sub_2186CB1F0(&v854, v311 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_articleForYouAvailability);
      *&v864[0] = v311;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      sub_2186DFCB0(&qword_280EB8970, type metadata accessor for ForYouTodayFeedGroupEmitter);
      swift_unknownObjectRetain();
      v314 = v313;
      v274 = sub_219BEDF94();
      (*(v301 + 8))(v805, v305);
      return v274;
    case 5u:
      v444 = v714;
      v445 = *(v714 + 32);
      v446 = v806;
      v447 = v201;
      v448 = v716;
      v445(v806, v447, v716);
      v449 = v707;
      (*(v444 + 16))(v707, v446, v448);
      v450 = v709;
      sub_2190A68D8(v838 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_missedStoriesKnobs, v709, type metadata accessor for MissedStoriesTodayFeedGroupKnobs);
      v451 = v840;
      sub_218718690(v840 + 96, v864);
      v839 = *(v451 + 280);
      v452 = [v839 paidAccessChecker];
      if (!v452)
      {
        goto LABEL_133;
      }

      v453 = v452;
      sub_218718690(v451 + 240, &v862);
      sub_218718690(v451 + 176, &v860);
      v838 = *(v451 + 216);
      sub_218718690(v451 + 792, &v857);
      type metadata accessor for MissedStoriesTodayFeedGroupEmitter();
      v454 = swift_allocObject();
      v455 = v454 + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_name;
      strcpy((v454 + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_name), "Missed Stories");
      *(v455 + 15) = -18;
      v445((v454 + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_config), v449, v448);
      sub_2190A6BCC(v450, v454 + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_knobs, type metadata accessor for MissedStoriesTodayFeedGroupKnobs);
      sub_2186CB1F0(v864, v454 + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_formatService);
      *(v454 + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_paidAccessChecker) = v453;
      sub_2186CB1F0(&v862, v454 + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_personalizationService);
      sub_2186CB1F0(&v860, v454 + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_headlineService);
      *(v454 + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_feedPersonalizer) = v838;
      v456 = v839;
      *(v454 + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_cloudContext) = v839;
      sub_2186CB1F0(&v857, v454 + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_sportsGraphManager);
      *&v864[0] = v454;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      sub_2186DFCB0(&unk_280E9FCB8, type metadata accessor for MissedStoriesTodayFeedGroupEmitter);
      swift_unknownObjectRetain();
      v457 = v456;
      v274 = sub_219BEDF94();
      (*(v444 + 8))(v806, v448);
      return v274;
    case 6u:
      v483 = v717;
      v484 = *(v717 + 32);
      v485 = v807;
      v486 = v808;
      v484(v807, v201, v808);
      v487 = v708;
      (*(v483 + 16))(v708, v485, v486);
      v488 = v710;
      sub_2190A68D8(v838 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_latestStoriesKnobs, v710, type metadata accessor for LatestStoriesTodayFeedGroupKnobs);
      v489 = v840;
      sub_218718690(v840 + 96, v864);
      v490 = *(v489 + 280);
      v491 = [v490 paidAccessChecker];
      if (!v491)
      {
        goto LABEL_134;
      }

      v492 = v491;
      type metadata accessor for LatestStoriesTodayFeedGroupEmitter();
      v493 = swift_allocObject();
      v494 = v493 + OBJC_IVAR____TtC7NewsUI234LatestStoriesTodayFeedGroupEmitter_name;
      strcpy((v493 + OBJC_IVAR____TtC7NewsUI234LatestStoriesTodayFeedGroupEmitter_name), "Latest Stories");
      *(v494 + 15) = -18;
      v495 = v487;
      v496 = v808;
      v484((v493 + OBJC_IVAR____TtC7NewsUI234LatestStoriesTodayFeedGroupEmitter_config), v495, v808);
      sub_2190A6BCC(v488, v493 + OBJC_IVAR____TtC7NewsUI234LatestStoriesTodayFeedGroupEmitter_knobs, type metadata accessor for LatestStoriesTodayFeedGroupKnobs);
      sub_2186CB1F0(v864, v493 + OBJC_IVAR____TtC7NewsUI234LatestStoriesTodayFeedGroupEmitter_formatService);
      *(v493 + OBJC_IVAR____TtC7NewsUI234LatestStoriesTodayFeedGroupEmitter_paidAccessChecker) = v492;
      *(v493 + OBJC_IVAR____TtC7NewsUI234LatestStoriesTodayFeedGroupEmitter_cloudContext) = v490;
      *&v864[0] = v493;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      sub_2186DFCB0(&qword_280EA0200, type metadata accessor for LatestStoriesTodayFeedGroupEmitter);
      v497 = v490;
      v274 = sub_219BEDF94();
      (*(v483 + 8))(v807, v496);
      return v274;
    case 7u:
      v384 = v722;
      v385 = v809;
      v386 = v201;
      v387 = v724;
      (*(v722 + 32))(v809, v386, v724);
      v388 = *(v384 + 16);
      v389 = v713;
      v388(v713, v385, v387);
      v390 = v715;
      sub_2190A68D8(v838 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_topicKnobs, v715, type metadata accessor for TopicTodayFeedGroupKnobs);
      v391 = v840;
      sub_218718690(v840 + 96, v864);
      v392 = [*(v391 + 280) appConfigurationManager];
      sub_218718690(v391 + 792, &v862);
      type metadata accessor for TopicTodayFeedGroupEmitter(0);
      v393 = swift_allocObject();
      v394 = (v393 + OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_name);
      *v394 = 0x6369706F54;
      v394[1] = 0xE500000000000000;
      v388((v393 + OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_config), v389, v387);
      sub_21902C8E0(v392, v390, v393 + OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_knobs);
      sub_2190A6A44(v390, type metadata accessor for TopicTodayFeedGroupKnobs);
      v395 = *(v384 + 8);
      v395(v389, v387);
      sub_2186CB1F0(v864, v393 + OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_formatService);
      *(v393 + OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_configurationManager) = v392;
      sub_2186CB1F0(&v862, v393 + OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_sportsGraphManager);
      *&v864[0] = v393;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      sub_2186DFCB0(&unk_280EB9AA8, type metadata accessor for TopicTodayFeedGroupEmitter);
      v274 = sub_219BEDF94();
      v396 = v809;
      goto LABEL_50;
    case 8u:
      v507 = v718;
      v506 = v719;
      v508 = v720;
      (*(v719 + 32))(v718, v201, v720);
      v509 = v721;
      (*(v506 + 16))(v721, v507, v508);
      v510 = v723;
      sub_2190A68D8(v838 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_magazineKnobs, &v509[*(v723 + 20)], type metadata accessor for MagazineTodayFeedGroupKnobs);
      v511 = v840;
      v512 = *(v840 + 232);
      sub_218718690(v840 + 552, &v509[v510[7]]);
      v513 = *(v511 + 280);
      sub_218718690(v511 + 888, &v509[v510[9]]);
      *&v509[v510[6]] = v512;
      *&v509[v510[8]] = v513;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      sub_2186DFCB0(&qword_280EB0130, type metadata accessor for MagazineTodayFeedGroupEmitter);

      v514 = v513;
      v274 = sub_219BEDF94();
      (*(v506 + 8))(v507, v508);
      return v274;
    case 9u:
      v326 = v729;
      v327 = v810;
      v328 = v811;
      v839 = *(v729 + 32);
      (v839)(v810, v201, v811);
      v329 = v725;
      (*(v326 + 16))(v725, v327, v328);
      v330 = v727;
      sub_2190A68D8(v838 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_newFollowKnobs, v727, type metadata accessor for NewFollowTodayFeedGroupKnobs);
      v331 = v840;
      sub_218718690(v840 + 96, v864);
      v332 = *(v331 + 280);
      v333 = [v332 subscriptionController];
      if (!v333)
      {
        goto LABEL_132;
      }

      v334 = v333;
      v336 = v730;
      v335 = v731;
      sub_218718690(v331 + 288, &v730[*(v731 + 32)]);
      sub_218718690(v331 + 176, &v336[v335[9]]);
      sub_218718690(v331 + 240, &v336[v335[10]]);
      v337 = &v336[v335[12]];
      *v337 = 0x6F6C6C6F4677654ELL;
      *(v337 + 1) = 0xE900000000000077;
      v338 = v811;
      (v839)(v336, v329, v811);
      sub_2190A6BCC(v330, &v336[v335[5]], type metadata accessor for NewFollowTodayFeedGroupKnobs);
      sub_2186CB1F0(v864, &v336[v335[6]]);
      *&v336[v335[7]] = v334;
      *&v336[v335[11]] = v332;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      sub_2186DFCB0(&unk_280EAC218, type metadata accessor for NewFollowTodayFeedGroupEmitter);
      v339 = v332;
      v274 = sub_219BEDF94();
      (*(v326 + 8))(v810, v338);
      return v274;
    case 0xAu:
      v371 = v732;
      v369 = v733;
      v501 = *(v733 + 32);
      v372 = v734;
      v501(v732, v201, v734);
      v502 = v726;
      (*(v369 + 16))(v726, v371, v372);
      v503 = v728;
      sub_2190A68D8(v838 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_spotlightKnobs, v728, type metadata accessor for SpotlightTodayFeedGroupKnobs);
      v504 = v840;
      sub_218718690(v840 + 96, v864);
      sub_218718690(v504 + 240, &v862);
      type metadata accessor for SpotlightTodayFeedGroupEmitter();
      v505 = swift_allocObject();
      v501((v505 + OBJC_IVAR____TtC7NewsUI230SpotlightTodayFeedGroupEmitter_config), v502, v372);
      sub_2190A6BCC(v503, v505 + OBJC_IVAR____TtC7NewsUI230SpotlightTodayFeedGroupEmitter_knobs, type metadata accessor for SpotlightTodayFeedGroupKnobs);
      sub_2186CB1F0(v864, v505 + OBJC_IVAR____TtC7NewsUI230SpotlightTodayFeedGroupEmitter_formatService);
      sub_2186CB1F0(&v862, v505 + OBJC_IVAR____TtC7NewsUI230SpotlightTodayFeedGroupEmitter_personalizationService);
      *&v864[0] = v505;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      v376 = &unk_280EAADD0;
      v377 = type metadata accessor for SpotlightTodayFeedGroupEmitter;
      goto LABEL_45;
    case 0xBu:
      v287 = v739;
      v288 = *(v739 + 32);
      v289 = v804;
      v290 = v741;
      v288(v804, v201, v741);
      (*(v287 + 16))(v802, v289, v290);
      sub_2190A68D8(v838 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_subscriptionKnobs, v803, type metadata accessor for SubscriptionTodayFeedGroupKnobs);
      v291 = v840;
      sub_218718690(v840 + 96, v864);
      v292 = *(v291 + 280);
      v293 = [v292 subscriptionController];
      if (v293)
      {
        v294 = v293;
        sub_218718690(v291 + 288, &v862);
        sub_218718690(v291 + 176, &v860);
        sub_218718690(v291 + 240, &v857);
        v295 = [v292 paidAccessChecker];
        if (v295)
        {
          v296 = v295;
          v297 = [v292 readingHistory];
          v299 = v696;
          v298 = v697;
          v300 = &v696[*(v697 + 52)];
          strcpy(v300, "Subscription");
          v300[13] = 0;
          *(v300 + 7) = -5120;
          v288(v299, v802, v290);
          sub_2190A6BCC(v803, &v299[v298[5]], type metadata accessor for SubscriptionTodayFeedGroupKnobs);
          sub_2186CB1F0(v864, &v299[v298[6]]);
          *&v299[v298[7]] = v294;
          sub_2186CB1F0(&v862, &v299[v298[8]]);
          sub_2186CB1F0(&v860, &v299[v298[9]]);
          sub_2186CB1F0(&v857, &v299[v298[10]]);
          *&v299[v298[11]] = v296;
          *&v299[v298[12]] = v297;
          sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
          swift_allocObject();
          sub_2186DFCB0(&qword_280EA1778, type metadata accessor for SubscriptionTodayFeedGroupEmitter);
          v274 = sub_219BEDF94();
          (*(v287 + 8))(v804, v290);
          return v274;
        }
      }

      else
      {
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
      }

      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      goto LABEL_140;
    case 0xCu:
      v315 = v746;
      v316 = *(v746 + 32);
      v317 = v814;
      v318 = v201;
      v319 = v747;
      v316(v814, v318, v747);
      v320 = v735;
      (*(v315 + 16))(v735, v317, v319);
      v321 = v737;
      sub_2190A68D8(v838 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_suggestionKnobs, v737, type metadata accessor for SuggestionTodayFeedGroupKnobs);
      v322 = v840;
      sub_218718690(v840 + 96, v864);
      sub_218718690(v322 + 288, &v862);
      sub_218718690(v322 + 176, &v860);
      v323 = *(v322 + 216);
      v839 = *(v322 + 416);
      sub_218718690(v322 + 792, &v857);
      type metadata accessor for SuggestionTodayFeedGroupEmitter();
      v324 = swift_allocObject();
      v325 = (v324 + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_name);
      *v325 = 0x6974736567677553;
      v325[1] = 0xEA00000000006E6FLL;
      v316((v324 + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_config), v320, v319);
      sub_2190A6BCC(v321, v324 + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_knobs, type metadata accessor for SuggestionTodayFeedGroupKnobs);
      sub_2186CB1F0(v864, v324 + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_formatService);
      sub_2186CB1F0(&v862, v324 + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_tagService);
      sub_2186CB1F0(&v860, v324 + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_headlineService);
      *(v324 + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_feedPersonalizer) = v323;
      *(v324 + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_suggestionClusteringService) = v839;
      sub_2186CB1F0(&v857, v324 + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_sportsGraphManager);
      *&v864[0] = v324;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      sub_2186DFCB0(&qword_280EA7A30, type metadata accessor for SuggestionTodayFeedGroupEmitter);
      swift_unknownObjectRetain();

      v274 = sub_219BEDF94();
      (*(v315 + 8))(v814, v319);
      return v274;
    case 0xDu:
      v369 = v744;
      v479 = *(v744 + 32);
      v371 = v742;
      v372 = v745;
      v479(v742, v201, v745);
      v480 = v736;
      (*(v369 + 16))(v736, v371, v372);
      v481 = v738;
      sub_2190A68D8(v838 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_seenContentMarkKnobs, v738, type metadata accessor for SeenContentMarkTodayFeedGroupKnobs);
      sub_218718690(v840 + 96, v864);
      type metadata accessor for SeenContentMarkTodayFeedGroupEmitter();
      v482 = swift_allocObject();
      v479((v482 + OBJC_IVAR____TtC7NewsUI236SeenContentMarkTodayFeedGroupEmitter_config), v480, v372);
      sub_2190A6BCC(v481, v482 + OBJC_IVAR____TtC7NewsUI236SeenContentMarkTodayFeedGroupEmitter_knobs, type metadata accessor for SeenContentMarkTodayFeedGroupKnobs);
      sub_2186CB1F0(v864, v482 + OBJC_IVAR____TtC7NewsUI236SeenContentMarkTodayFeedGroupEmitter_formatService);
      *&v864[0] = v482;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      v376 = &unk_280E9A8F8;
      v377 = type metadata accessor for SeenContentMarkTodayFeedGroupEmitter;
      goto LABEL_45;
    case 0xEu:
      v275 = v752;
      v276 = *(v752 + 32);
      v277 = v817;
      v278 = v201;
      v279 = v753;
      v276(v817, v278, v753);
      v280 = v743;
      (*(v275 + 16))(v743, v277, v279);
      v281 = v749;
      sub_2190A68D8(v838 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_sharedWithYouKnobs, v749, type metadata accessor for SharedWithYouTodayFeedGroupKnobs);
      v282 = v840;
      sub_218718690(v840 + 96, v864);
      v283 = *(v282 + 280);
      sub_218718690(v282 + 176, &v862);
      sub_218718690(v282 + 608, &v860);
      type metadata accessor for SharedWithYouTodayFeedGroupEmitter(0);
      v284 = swift_allocObject();
      v285 = v284 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_name;
      strcpy((v284 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_name), "SharedWithYou");
      *(v285 + 14) = -4864;
      v276((v284 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_config), v280, v279);
      sub_2190A6BCC(v281, v284 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_knobs, type metadata accessor for SharedWithYouTodayFeedGroupKnobs);
      sub_2186CB1F0(v864, v284 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_formatService);
      *(v284 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_cloudContext) = v283;
      sub_2186CB1F0(&v862, v284 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_headlineService);
      sub_2186CB1F0(&v860, v284 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_sharedItemManager);
      *&v864[0] = v284;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      sub_2186DFCB0(&qword_280E9EF70, type metadata accessor for SharedWithYouTodayFeedGroupEmitter);
      v286 = v283;
      v274 = sub_219BEDF94();
      (*(v275 + 8))(v817, v279);
      return v274;
    case 0xFu:
      v369 = v754;
      v370 = *(v754 + 32);
      v371 = v751;
      v372 = v755;
      v370(v751, v201, v755);
      v373 = v748;
      (*(v369 + 16))(v748, v371, v372);
      v374 = v750;
      sub_2190A68D8(v838 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_engagementKnobs, v750, type metadata accessor for EngagementTodayFeedGroupKnobs);
      sub_218718690(v840 + 512, v864);
      type metadata accessor for EngagementTodayFeedGroupEmitter();
      v375 = swift_allocObject();
      v370((v375 + OBJC_IVAR____TtC7NewsUI231EngagementTodayFeedGroupEmitter_config), v373, v372);
      sub_2190A6BCC(v374, v375 + OBJC_IVAR____TtC7NewsUI231EngagementTodayFeedGroupEmitter_knobs, type metadata accessor for EngagementTodayFeedGroupKnobs);
      sub_2186CB1F0(v864, v375 + OBJC_IVAR____TtC7NewsUI231EngagementTodayFeedGroupEmitter_engagementInlineViewManager);
      *&v864[0] = v375;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      v376 = &unk_280EA9678;
      v377 = type metadata accessor for EngagementTodayFeedGroupEmitter;
LABEL_45:
      sub_2186DFCB0(v376, v377);
LABEL_46:
      v274 = sub_219BEDF94();
      (*(v369 + 8))(v371, v372);
      return v274;
    case 0x10u:
      v217 = v826;
      v218 = *(v826 + 32);
      v836 = (v826 + 32);
      v837 = v218;
      v219 = v824;
      v220 = v827;
      v218(v824, v201, v827);
      (*(v217 + 16))(v821, v219, v220);
      sub_2190A68D8(v838 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_mySportsKnobs, v822, type metadata accessor for MySportsTodayFeedGroupKnobs);
      v221 = v840;
      v834 = *(v840 + 224);
      sub_218718690(v840 + 96, v864);
      v835 = *(v221 + 648);
      sub_218718690(v221 + 672, &v862);
      sub_218718690(v221 + 848, &v860);
      sub_218718690(v221 + 328, &v857);
      sub_218718690(v221 + 712, &v854);
      v831 = *(v221 + 832);
      v832 = *(v221 + 840);
      sub_218718690(v221 + 752, v853);
      v833 = *(v221 + 280);
      v840 = *(v221 + 968);
      v222 = __swift_mutable_project_boxed_opaque_existential_1(&v862, v863);
      v839 = &v672;
      MEMORY[0x28223BE20](v222);
      v224 = (&v672 - ((v223 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v225 + 16))(v224);
      v226 = __swift_mutable_project_boxed_opaque_existential_1(&v860, v861);
      v838 = &v672;
      MEMORY[0x28223BE20](v226);
      v228 = (&v672 - ((v227 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v229 + 16))(v228);
      v230 = __swift_mutable_project_boxed_opaque_existential_1(&v857, v858);
      v830 = &v672;
      MEMORY[0x28223BE20](v230);
      v232 = (&v672 - ((v231 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v233 + 16))(v232);
      v234 = __swift_mutable_project_boxed_opaque_existential_1(&v854, v855);
      v829 = &v672;
      MEMORY[0x28223BE20](v234);
      v236 = (&v672 - ((v235 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v237 + 16))(v236);
      v238 = *v224;
      v239 = *v228;
      v240 = *v232;
      v241 = *v236;
      v242 = type metadata accessor for SportsFavoritesService();
      v852 = &off_282A62438;
      v851 = v242;
      *&v850 = v238;
      v820 = type metadata accessor for MySportsTagService();
      v849 = &off_282A97430;
      v848 = v820;
      v847[0] = v239;
      v243 = type metadata accessor for TagHighlightsService();
      v846 = &off_282A90268;
      v845 = v243;
      v844[0] = v240;
      v244 = type metadata accessor for SportsRecommendationManager();
      v843 = &off_282A790B8;
      v842 = v244;
      v841[0] = v241;
      v828 = type metadata accessor for MySportsTodayFeedGroupEmitter();
      v245 = swift_allocObject();
      v246 = __swift_mutable_project_boxed_opaque_existential_1(&v850, v242);
      v825 = &v672;
      MEMORY[0x28223BE20](v246);
      v248 = (&v672 - ((v247 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v249 + 16))(v248);
      v250 = __swift_mutable_project_boxed_opaque_existential_1(v847, v848);
      v823 = &v672;
      MEMORY[0x28223BE20](v250);
      v252 = (&v672 - ((v251 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v253 + 16))(v252);
      v254 = __swift_mutable_project_boxed_opaque_existential_1(v844, v845);
      v819 = &v672;
      MEMORY[0x28223BE20](v254);
      v256 = (&v672 - ((v255 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v257 + 16))(v256);
      v258 = __swift_mutable_project_boxed_opaque_existential_1(v841, v842);
      v818 = &v672;
      MEMORY[0x28223BE20](v258);
      v260 = (&v672 - ((v259 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v261 + 16))(v260);
      v262 = *v248;
      v263 = *v252;
      v264 = *v256;
      v265 = *v260;
      v266 = (v245 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_sportsFavoritesService);
      v266[3] = v242;
      v266[4] = &off_282A62438;
      *v266 = v262;
      v267 = (v245 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_mySportsTagService);
      v267[3] = v820;
      v267[4] = &off_282A97430;
      *v267 = v263;
      v268 = (v245 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_tagHighlightsService);
      v268[3] = v243;
      v268[4] = &off_282A90268;
      *v268 = v264;
      v269 = (v245 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_recommendationManager);
      v269[3] = v244;
      v269[4] = &off_282A790B8;
      *v269 = v265;
      v270 = (v245 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_name);
      *v270 = 0x74726F705320794DLL;
      v270[1] = 0xE900000000000073;
      v271 = v827;
      v837(v245 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_config, v821, v827);
      sub_2190A6BCC(v822, v245 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_knobs, type metadata accessor for MySportsTodayFeedGroupKnobs);
      *(v245 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_featureAvailability) = v834;
      sub_2186CB1F0(v864, v245 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_formatService);
      *(v245 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_sportsTopicClusteringService) = v835;
      *(v245 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_sportsSectionService) = v831;
      *(v245 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_sportsScoreSorter) = v832;
      sub_2186CB1F0(v853, v245 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_sportsOnboardingManager);
      v272 = v833;
      *(v245 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_cloudContext) = v833;
      *(v245 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_sportsConfiguringDataService) = v840;
      swift_unknownObjectRetain();

      v273 = v272;
      swift_unknownObjectRetain();
      __swift_destroy_boxed_opaque_existential_1(v841);
      __swift_destroy_boxed_opaque_existential_1(v844);
      __swift_destroy_boxed_opaque_existential_1(v847);
      __swift_destroy_boxed_opaque_existential_1(&v850);
      __swift_destroy_boxed_opaque_existential_1(&v854);
      __swift_destroy_boxed_opaque_existential_1(&v857);
      __swift_destroy_boxed_opaque_existential_1(&v860);
      __swift_destroy_boxed_opaque_existential_1(&v862);
      *&v864[0] = v245;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      sub_2186DFCB0(&qword_280EAFD20, type metadata accessor for MySportsTodayFeedGroupEmitter);
      v274 = sub_219BEDF94();
      (*(v826 + 8))(v824, v271);
      return v274;
    case 0x11u:
      v423 = v757;
      v424 = v818;
      v425 = v819;
      (*(v757 + 32))(v818, v201, v819);
      v426 = v758;
      (*(v423 + 16))(v758, v424, v425);
      v427 = v762;
      sub_2190A68D8(v838 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_introToSportsKnobs, &v426[*(v762 + 20)], type metadata accessor for IntroToSportsTodayFeedGroupKnobs);
      v428 = v840;
      sub_218718690(v840 + 96, &v426[v427[6]]);
      v429 = *(v428 + 648);
      v430 = *(v428 + 832);
      v431 = *(v428 + 840);
      sub_218718690(v428 + 848, &v426[v427[10]]);
      v432 = *(v428 + 280);
      v433 = &v426[v427[13]];
      *v433 = 0x6F54206F72746E49;
      *(v433 + 1) = 0xEF7374726F705320;
      *&v426[v427[7]] = v429;
      *&v426[v427[8]] = v430;
      *&v426[v427[9]] = v431;
      *&v426[v427[11]] = v432;
      v434 = v427[12];
      v840 = *(v428 + 968);
      *&v426[v434] = v840;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      sub_2186DFCB0(&unk_280EA03E8, type metadata accessor for IntroToSportsTodayFeedGroupEmitter);

      v435 = v432;
      swift_unknownObjectRetain();
      v274 = sub_219BEDF94();
      (*(v423 + 8))(v818, v819);
      return v274;
    case 0x12u:
      v436 = v759;
      v437 = v756;
      v438 = v761;
      (*(v759 + 32))(v756, v201, v761);
      v498 = v760;
      (*(v436 + 16))(v760, v437, v438);
      v499 = v763;
      sub_2190A68D8(v838 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_shortcutsKnobs, &v498[*(v763 + 20)], type metadata accessor for ShortcutsTodayFeedGroupKnobs);
      sub_218718690(v840 + 96, &v498[*(v499 + 24)]);
      v500 = &v498[*(v499 + 28)];
      *v500 = 0x74756374726F6853;
      *(v500 + 1) = 0xE900000000000073;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      v442 = &unk_280EAB310;
      v443 = type metadata accessor for ShortcutsTodayFeedGroupEmitter;
      goto LABEL_43;
    case 0x13u:
      v532 = v772;
      v533 = v820;
      v534 = v201;
      v387 = v773;
      (*(v772 + 32))(v820, v534, v773);
      v535 = *(v532 + 16);
      v536 = v764;
      v535(v764, v533, v387);
      v537 = v765;
      sub_2190A68D8(v838 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_channelKnobs, v765, type metadata accessor for ChannelTodayFeedGroupKnobs);
      v538 = v840;
      sub_218718690(v840 + 96, v864);
      sub_218718690(v538 + 240, &v862);
      v539 = [*(v538 + 280) appConfigurationManager];
      type metadata accessor for ChannelTodayFeedGroupEmitter();
      v540 = swift_allocObject();
      v541 = (v540 + OBJC_IVAR____TtC7NewsUI228ChannelTodayFeedGroupEmitter_name);
      *v541 = 0x6C656E6E616843;
      v541[1] = 0xE700000000000000;
      v535((v540 + OBJC_IVAR____TtC7NewsUI228ChannelTodayFeedGroupEmitter_config), v536, v387);
      sub_21971BEF4(v539, v537, v540 + OBJC_IVAR____TtC7NewsUI228ChannelTodayFeedGroupEmitter_knobs);
      sub_2190A6A44(v537, type metadata accessor for ChannelTodayFeedGroupKnobs);
      v395 = *(v532 + 8);
      v395(v536, v387);
      sub_2186CB1F0(v864, v540 + OBJC_IVAR____TtC7NewsUI228ChannelTodayFeedGroupEmitter_formatService);
      sub_2186CB1F0(&v862, v540 + OBJC_IVAR____TtC7NewsUI228ChannelTodayFeedGroupEmitter_personalizationService);
      *(v540 + OBJC_IVAR____TtC7NewsUI228ChannelTodayFeedGroupEmitter_configurationManager) = v539;
      *&v864[0] = v540;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      sub_2186DFCB0(&unk_280EB5008, type metadata accessor for ChannelTodayFeedGroupEmitter);
      v274 = sub_219BEDF94();
      v396 = v820;
LABEL_50:
      v395(v396, v387);
      return v274;
    case 0x14u:
      v436 = v767;
      v437 = v766;
      v438 = v769;
      (*(v767 + 32))(v766, v201, v769);
      v439 = v768;
      (*(v436 + 16))(v768, v437, v438);
      v440 = v770;
      sub_2190A68D8(v838 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_savedStoriesKnobs, &v439[*(v770 + 20)], type metadata accessor for SavedStoriesTodayFeedGroupKnobs);
      sub_218718690(v840 + 96, &v439[*(v440 + 24)]);
      v441 = &v439[*(v440 + 28)];
      strcpy(v441, "SavedStories");
      v441[13] = 0;
      *(v441 + 7) = -5120;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      v442 = &unk_280EA2070;
      v443 = type metadata accessor for SavedStoriesTodayFeedGroupEmitter;
LABEL_43:
      sub_2186DFCB0(v442, v443);
      v274 = sub_219BEDF94();
      (*(v436 + 8))(v437, v438);
      return v274;
    case 0x15u:
      v458 = v797;
      (*(v797 + 32))(v829, v201, v830);
      v459 = *(v838 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_channelPickerKnobs);
      v460 = v771;
      sub_219BEDD14();
      v461 = *(v460 + 16);
      v462 = *(v460 + 24);

      sub_2190A6A44(v460, type metadata accessor for ChannelPickerTodayFeedGroupConfigData);
      if (*(v459 + 16))
      {
        v463 = sub_21870F700(v461, v462);
        v465 = v464;

        v466 = v779;
        v467 = v816;
        v468 = v815;
        v469 = v831;
        v470 = v698;
        if (v465)
        {
          v471 = *(v459 + 56);
          v472 = v794;
          v473 = v471 + *(v794 + 72) * v463;
          v474 = v796;
          sub_2190A68D8(v473, v796, type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs);
          (*(v472 + 56))(v474, 0, 1, v795);
          v475 = v778;
          sub_2190A6BCC(v474, v778, type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs);
          v476 = v840;
          v477 = v780;
          v478 = v829;
          goto LABEL_75;
        }
      }

      else
      {

        v466 = v779;
        v467 = v816;
        v468 = v815;
        v469 = v831;
        v470 = v698;
      }

      (*(v794 + 56))(v796, 1, 1, v795);
      v571 = v798;
      v572 = v784;
      v573 = v783;
      (*(v798 + 56))(v784, 1, 1, v783);
      (*(v468 + 56))(v469, 1, 1, v467);
      sub_2190A6AA4(v572, v470, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      v574 = *(v571 + 48);
      if (v574(v470, 1, v573) == 1)
      {
        type metadata accessor for TodayFeedServiceConfig();
        sub_2186DFCB0(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
        v571 = v798;
        v575 = v470;
        v576 = v687;
        sub_219BEE974();
        v577 = v576;
        if (v574(v575, 1, v573) != 1)
        {
          sub_2190A6B14(v575, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
        }
      }

      else
      {
        v577 = v687;
        (*(v571 + 32))(v687, v470, v573);
      }

      (*(v571 + 32))(v785, v577, v573);
      v578 = v781;
      sub_2190A6AA4(v831, v781, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      v579 = *(v468 + 48);
      v580 = v579(v578, 1, v467);
      v477 = v780;
      v478 = v829;
      if (v580 == 1)
      {
        type metadata accessor for TodayFeedServiceConfig();
        sub_2186DFCB0(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
        v581 = v688;
        v582 = v781;
        sub_219BEEC74();
        v583 = v579(v582, 1, v467);
        v584 = v581;
        v585 = v467;
        v458 = v797;
        if (v583 != 1)
        {
          sub_2190A6B14(v582, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
          v585 = v467;
        }
      }

      else
      {
        v584 = v688;
        (*(v468 + 32))(v688, v578, v467);
        v585 = v467;
        v458 = v797;
      }

      v586 = v795;
      v587 = *(v468 + 32);
      v588 = v785;
      v587(&v785[*(v795 + 20)], v584, v585);
      *&v864[0] = 1;
      sub_2186F9548();
      swift_allocObject();
      *(v588 + *(v586 + 24)) = sub_219BEF534();
      *&v864[0] = 6;
      swift_allocObject();
      v589 = sub_219BEF534();
      sub_2190A6B14(v831, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      sub_2190A6B14(v784, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      *(v588 + *(v586 + 28)) = v589;
      v475 = v778;
      sub_2190A6BCC(v588, v778, type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs);
      v590 = v796;
      v591 = (*(v794 + 48))(v796, 1, v586);
      v476 = v840;
      if (v591 != 1)
      {
        sub_2190A6B70(v590, qword_280E97668, type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs);
      }

LABEL_75:
      v592 = v830;
      (*(v458 + 16))(v466, v478, v830);
      sub_2190A68D8(v475, &v466[v477[5]], type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs);
      sub_218718690(v476 + 96, &v466[v477[6]]);
      sub_218718690(v476 + 1064, &v466[v477[7]]);
      sub_218718690(v476 + 1104, &v466[v477[8]]);
      sub_218718690(v476 + 288, &v466[v477[9]]);
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      sub_2186DFCB0(&unk_27CC15A38, type metadata accessor for ChannelPickerTodayFeedGroupEmitter);
      v274 = sub_219BEDF94();
      sub_2190A6A44(v475, type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs);
      (*(v458 + 8))(v478, v592);
      return v274;
    case 0x16u:
      v515 = v775;
      v516 = v825;
      v517 = v828;
      (*(v775 + 32))(v825, v201, v828);
      v518 = OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_foodKnobs;
      v519 = *(v515 + 16);
      v520 = v823;
      v519(v823, v516, v517);
      v521 = v774;
      sub_2190A68D8(v838 + v518, v774, type metadata accessor for FoodTodayFeedGroupKnobs);
      v522 = v840;
      sub_218718690(v840 + 96, v864);
      sub_218718690(v522 + 1144, &v862);
      sub_218718690(v522 + 1184, &v860);
      v523 = *(v522 + 368);
      sub_218718690(v522 + 376, &v857);
      sub_218718690(v522 + 288, &v854);
      sub_218718690(v522 + 1224, v853);
      v524 = v777;
      v525 = v776;
      v526 = &v776[*(v777 + 56)];
      *v526 = 1685024582;
      *(v526 + 1) = 0xE400000000000000;
      v527 = v520;
      v528 = v828;
      v519(v525, v527, v828);
      sub_2190A68D8(v521, &v525[v524[5]], type metadata accessor for FoodTodayFeedGroupKnobs);
      sub_218718690(v864, &v525[v524[6]]);
      sub_218718690(&v862, &v525[v524[7]]);
      sub_218718690(&v860, &v525[v524[8]]);
      *&v525[v524[9]] = v523;
      sub_218718690(&v857, &v525[v524[10]]);
      sub_218718690(&v854, &v525[v524[11]]);
      sub_218718690(v853, &v525[v524[12]]);
      sub_2190A6940();
      sub_218718690(&v862, &v850);
      v529 = swift_allocObject();
      sub_2186CB1F0(&v850, v529 + 16);

      v530 = MEMORY[0x21CEB8A80](&unk_219C5A4D0, v529);
      __swift_destroy_boxed_opaque_existential_1(v853);
      __swift_destroy_boxed_opaque_existential_1(&v854);
      __swift_destroy_boxed_opaque_existential_1(&v857);
      __swift_destroy_boxed_opaque_existential_1(&v860);
      __swift_destroy_boxed_opaque_existential_1(&v862);
      __swift_destroy_boxed_opaque_existential_1(v864);
      sub_2190A6A44(v521, type metadata accessor for FoodTodayFeedGroupKnobs);
      v531 = *(v515 + 8);
      v531(v823, v528);
      *&v525[v524[13]] = v530;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      sub_2186DFCB0(&qword_280EBE8B8, type metadata accessor for FoodTodayFeedGroupEmitter);
      v274 = sub_219BEDF94();
      v531(v825, v528);
      return v274;
    default:
      v202 = v837;
      (*(v832 + 32))(v836, v201, v837);
      v203 = *(v838 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_curatedKnobs);
      v204 = sub_219BEDCA4();
      if (*(v203 + 16))
      {
        v206 = sub_21870F700(v204, v205);
        v208 = v207;

        v209 = v816;
        v210 = v815;
        if (v208)
        {
          v211 = *(v203 + 56);
          v212 = v792;
          v213 = v211 + v792[9] * v206;
          v214 = v793;
          sub_2190A68D8(v213, v793, type metadata accessor for CuratedTodayFeedGroupKnobs);
          (v212[7])(v214, 0, 1, v834);
          sub_2190A6BCC(v214, v833, type metadata accessor for CuratedTodayFeedGroupKnobs);
          v215 = v840;
          v216 = v812;
          goto LABEL_90;
        }
      }

      else
      {

        v209 = v816;
        v210 = v815;
      }

      v560 = v792[7];
      v560(v793, 1, 1, v834);
      v561 = v686;
      sub_219BEDD14();
      v562 = *v561;
      v563 = v561[1];

      sub_2190A6A44(v561, type metadata accessor for CuratedTodayFeedGroupConfigData);
      if (*(v203 + 16))
      {
        v564 = sub_21870F700(v562, v563);
        v566 = v565;

        if (v566)
        {
          v567 = v792;
          v568 = *(v203 + 56) + v792[9] * v564;
          v569 = v782;
          sub_2190A68D8(v568, v782, type metadata accessor for CuratedTodayFeedGroupKnobs);
          v560(v569, 0, 1, v834);
          sub_2190A6BCC(v569, v833, type metadata accessor for CuratedTodayFeedGroupKnobs);
          v570 = v567[6];
          v215 = v840;
          v202 = v837;
          goto LABEL_88;
        }
      }

      else
      {
      }

      v560(v782, 1, 1, v834);
      v593 = v798;
      v594 = v692;
      v595 = v783;
      (*(v798 + 56))(v692, 1, 1, v783);
      (*(v210 + 56))(v786, 1, 1, v209);
      v596 = sub_219BEF814();
      (*(*(v596 - 8) + 56))(v693, 1, 1, v596);
      v597 = v672;
      sub_2190A6AA4(v594, v672, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      v598 = *(v593 + 48);
      if (v598(v597, 1, v595) == 1)
      {
        type metadata accessor for TodayFeedServiceConfig();
        sub_2186DFCB0(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
        v593 = v798;
        v599 = v673;
        sub_219BEE974();
        v600 = v598(v597, 1, v595);
        v202 = v837;
        if (v600 != 1)
        {
          sub_2190A6B14(v597, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
        }
      }

      else
      {
        v599 = v673;
        (*(v593 + 32))(v673, v597, v595);
        v202 = v837;
      }

      v601 = v691;
      (*(v593 + 32))(v691, v599, v595);
      *&v864[0] = 1;
      sub_2186F9548();
      swift_allocObject();
      v602 = sub_219BEF534();
      v603 = v834;
      *&v601[*(v834 + 20)] = v602;
      *&v864[0] = 0x7FFFFFFFFFFFFFFFLL;
      swift_allocObject();
      *&v601[v603[6]] = sub_219BEF534();
      LOBYTE(v864[0]) = 1;
      sub_2186F95C4();
      swift_allocObject();
      *&v601[v603[7]] = sub_219BEF534();
      *&v864[0] = 0;
      sub_2186ECA28();
      swift_allocObject();
      *&v601[v603[8]] = sub_219BEF534();
      v604 = v674;
      sub_2190A6AA4(v786, v674, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      v605 = *(v210 + 48);
      if (v605(v604, 1, v209) == 1)
      {
        type metadata accessor for TodayFeedServiceConfig();
        sub_2186DFCB0(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
        v606 = v675;
        sub_219BEEC74();
        if (v605(v604, 1, v209) != 1)
        {
          sub_2190A6B14(v604, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
        }
      }

      else
      {
        v606 = v675;
        (*(v210 + 32))(v675, v604, v209);
      }

      v607 = v834;
      v608 = v691;
      (*(v210 + 32))(&v691[*(v834 + 36)], v606, v209);
      v609 = v693;
      sub_2189B7614(v693, v608 + *(v607 + 40));
      LOBYTE(v864[0]) = 1;
      swift_allocObject();
      v610 = sub_219BEF534();
      sub_2190A6B70(v609, &qword_280E912E0, MEMORY[0x277D32720]);
      sub_2190A6B14(v786, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      sub_2190A6B14(v692, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      *(v608 + *(v607 + 44)) = v610;
      sub_2190A6BCC(v608, v833, type metadata accessor for CuratedTodayFeedGroupKnobs);
      v570 = v792[6];
      v611 = v782;
      if (v570(v782, 1, v607) != 1)
      {
        sub_2190A6B70(v611, qword_280EBBA10, type metadata accessor for CuratedTodayFeedGroupKnobs);
      }

      v215 = v840;
LABEL_88:
      v216 = v812;
      v612 = v793;
      if (v570(v793, 1, v834) != 1)
      {
        sub_2190A6B70(v612, qword_280EBBA10, type metadata accessor for CuratedTodayFeedGroupKnobs);
      }

LABEL_90:
      v613 = *(v832 + 16);
      v613(v216, v836, v202);
      v614 = v813;
      sub_2190A68D8(v833, v813, type metadata accessor for CuratedTodayFeedGroupKnobs);
      sub_218718690((v215 + 12), v864);
      v834 = v215[74];
      v835 = v215[75];
      sub_218718690((v215 + 69), &v862);
      v838 = v215[28];
      sub_218718690((v215 + 123), &v860);
      v615 = __swift_mutable_project_boxed_opaque_existential_1(&v862, v863);
      *&v840 = &v672;
      MEMORY[0x28223BE20](v615);
      v617 = (&v672 - ((v616 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v618 + 16))(v617);
      v619 = *v617;
      v620 = type metadata accessor for TodayFeedEngagementEventHandler();
      v858 = v620;
      v859 = &off_282A6F2F0;
      *&v857 = v619;
      type metadata accessor for CuratedTodayFeedGroupEmitter();
      v621 = swift_allocObject();
      v622 = __swift_mutable_project_boxed_opaque_existential_1(&v857, v620);
      v839 = &v672;
      MEMORY[0x28223BE20](v622);
      v624 = (&v672 - ((v623 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v625 + 16))(v624);
      v626 = *v624;
      v856 = &off_282A6F2F0;
      v855 = v620;
      v627 = v812;
      *&v854 = v626;
      v613((v621 + OBJC_IVAR____TtC7NewsUI228CuratedTodayFeedGroupEmitter_config), v812, v837);
      v628 = v837;
      sub_2190A68D8(v614, v621 + OBJC_IVAR____TtC7NewsUI228CuratedTodayFeedGroupEmitter_knobs, type metadata accessor for CuratedTodayFeedGroupKnobs);
      sub_218718690(v864, v621 + OBJC_IVAR____TtC7NewsUI228CuratedTodayFeedGroupEmitter_formatService);
      sub_218718690(&v854, v621 + OBJC_IVAR____TtC7NewsUI228CuratedTodayFeedGroupEmitter_todayFeedEngagementEventHandler);
      *(v621 + OBJC_IVAR____TtC7NewsUI228CuratedTodayFeedGroupEmitter_featureAvailability) = v838;
      sub_218718690(&v860, v621 + OBJC_IVAR____TtC7NewsUI228CuratedTodayFeedGroupEmitter_puzzleHistoryService);
      swift_unknownObjectRetain();
      v629 = v740;
      sub_219BEDD14();
      if (*v629 == 0x69726F7453706F74 && v629[1] == 0xEA00000000007365)
      {
        sub_2190A6A44(v629, type metadata accessor for CuratedTodayFeedGroupConfigData);
      }

      else
      {
        v630 = sub_219BF78F4();
        sub_2190A6A44(v629, type metadata accessor for CuratedTodayFeedGroupConfigData);
        if ((v630 & 1) == 0)
        {
          goto LABEL_95;
        }
      }

      swift_getObjectType();
      v631 = v689;
      sub_219BEDD14();
      sub_2190A6A44(v631, type metadata accessor for CuratedTodayFeedGroupConfigData);
      sub_219BE3954();
LABEL_95:
      __swift_destroy_boxed_opaque_existential_1(&v860);
      __swift_destroy_boxed_opaque_existential_1(v864);
      sub_2190A6A44(v813, type metadata accessor for CuratedTodayFeedGroupKnobs);
      v632 = *(v832 + 8);
      v632(v627, v628);
      __swift_destroy_boxed_opaque_existential_1(&v854);
      __swift_destroy_boxed_opaque_existential_1(&v857);
      __swift_destroy_boxed_opaque_existential_1(&v862);
      *&v864[0] = v621;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      sub_2186DFCB0(&unk_280EB4A40, type metadata accessor for CuratedTodayFeedGroupEmitter);
      v274 = sub_219BEDF94();
      sub_2190A6A44(v833, type metadata accessor for CuratedTodayFeedGroupKnobs);
      v632(v836, v628);
      return v274;
  }
}

void sub_2190A6714(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_219BEDD94();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2190A6790(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TodayFeedServiceConfig();
    v7 = sub_2186DFCB0(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2190A682C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2190A6790(255, a3, a4);
    v5 = sub_219BF6FB4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2190A6884(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_2190A68D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2190A6940()
{
  if (!qword_280EE7E30)
  {
    sub_218A450F0();
    v0 = sub_219BE1CF4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7E30);
    }
  }
}

uint64_t sub_2190A69A8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187608D4;

  return sub_219667628(a1, v1 + 16);
}

uint64_t sub_2190A6A44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2190A6AA4(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_2190A682C(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_2190A6B14(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_2190A682C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_2190A6B70(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2190A6884(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2190A6BCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2190A6C4C(uint64_t a1)
{
  v2 = sub_2190A7148();

  return MEMORY[0x2821D5BC0](a1, v2);
}

uint64_t sub_2190A6C88(uint64_t a1)
{
  v2 = sub_2190A6CCC();

  return MEMORY[0x2821D5688](a1, v2);
}

unint64_t sub_2190A6CCC()
{
  result = qword_27CC15A60;
  if (!qword_27CC15A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15A60);
  }

  return result;
}

uint64_t sub_2190A6D20(uint64_t a1)
{
  v2 = type metadata accessor for ChannelIssuesLayoutSectionDescriptor.Header();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v20 = type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes();
  MEMORY[0x28223BE20](v20);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v24 = MEMORY[0x277D84F90];
    sub_218C34270(0, v11, 0);
    v12 = v24;
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_2190A7080(v13, v8, type metadata accessor for ChannelIssuesLayoutSectionDescriptor.Header);
      sub_2190A7080(v8, v6, type metadata accessor for ChannelIssuesLayoutSectionDescriptor.Header);
      sub_2190A6FC4(v6, v10);
      sub_2190A70E8(v8, type metadata accessor for ChannelIssuesLayoutSectionDescriptor.Header);
      v24 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_218C34270((v15 > 1), v16 + 1, 1);
        v12 = v24;
      }

      v22 = v20;
      v23 = sub_2190A7028();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21);
      sub_2190A7080(v10, boxed_opaque_existential_1, type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes);
      *(v12 + 16) = v16 + 1;
      sub_2186CB1F0(&v21, v12 + 40 * v16 + 32);
      sub_2190A70E8(v10, type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t type metadata accessor for ChannelIssuesLayoutSectionDescriptor.Header()
{
  result = qword_27CC15A78;
  if (!qword_27CC15A78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2190A6FC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2190A7028()
{
  result = qword_27CC15A68;
  if (!qword_27CC15A68)
  {
    type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15A68);
  }

  return result;
}

uint64_t sub_2190A7080(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2190A70E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2190A7148()
{
  result = qword_27CC15A70;
  if (!qword_27CC15A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15A70);
  }

  return result;
}

uint64_t sub_2190A719C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes();

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_2188C5558);
}

uint64_t sub_2190A71F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes();

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_2188C561C);
}

uint64_t sub_2190A725C(uint64_t a1)
{
  result = type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_2190A7300@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v44 = a2;
  sub_2190A9AE4(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v41 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v41 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  v43 = sub_219BDF3A4();
  v17 = *(v43 - 8);
  v18 = MEMORY[0x28223BE20](v43);
  v42 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = 0.0;
  if (!a1)
  {
    goto LABEL_11;
  }

  result = [a1 progressLevel];
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = [a1 lastPlayedDate];
  if (v24)
  {
    v25 = v24;
    sub_219BDBCA4();

    v26 = sub_219BDBD34();
    (*(*(v26 - 8) + 56))(v14, 0, 1, v26);
  }

  else
  {
    v26 = sub_219BDBD34();
    (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
  }

  sub_218A5DD60(v14, v16);
  sub_219BDBD34();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v16, 1, v26) == 1)
  {
    result = sub_2190A9A2C(v16, &qword_280EE9C40, MEMORY[0x277CC9578]);
  }

  else
  {
    sub_219BDBC84();
    v29 = v28;
    result = (*(v27 + 8))(v16, v26);
    v23 = v29 * 1000.0;
  }

LABEL_11:
  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v30 = 0.0;
  if (a1)
  {
    v31 = [a1 completedDate];
    if (v31)
    {
      v32 = v31;
      sub_219BDBCA4();

      v33 = 0;
    }

    else
    {
      v33 = 1;
    }

    v34 = sub_219BDBD34();
    v35 = *(v34 - 8);
    (*(v35 + 56))(v8, v33, 1, v34);
    sub_218A5DD60(v8, v11);
    if ((*(v35 + 48))(v11, 1, v34) == 1)
    {
      result = sub_2190A9A2C(v11, &qword_280EE9C40, MEMORY[0x277CC9578]);
    }

    else
    {
      sub_219BDBC84();
      v37 = v36;
      result = (*(v35 + 8))(v11, v34);
      v30 = v37 * 1000.0;
    }
  }

  if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_30;
  }

  if (v30 <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v30 < 9.22337204e18)
  {
    sub_219BDF374();
    v38 = [v3 identifier];
    sub_219BF5414();

    v39 = [objc_msgSend(v3 puzzleType)];
    swift_unknownObjectRelease();
    sub_219BF5414();

    v40 = v43;
    (*(v17 + 16))(v42, v22, v43);
    [v3 isPaid];
    [v3 difficulty];
    sub_219BDEF74();
    return (*(v17 + 8))(v22, v40);
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2190A7950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2190A9AE4(0, &qword_280EE5200, MEMORY[0x277D6D9B8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_219BE7394();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - v16;
  sub_2190A7CEC(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_2190A9A2C(v10, &qword_280EE5200, MEMORY[0x277D6D9B8]);
  }

  v27 = a3;
  v19 = *(v12 + 32);
  v19(v17, v10, v11);
  if (a2)
  {
    v20 = sub_219BE82D4();
    if (v20)
    {
      v26 = v20;
      sub_219BE7384();
      sub_2186D6710(0, &qword_280E8E680);
      if (swift_dynamicCast())
      {

        swift_unknownObjectRelease();
      }

      else
      {
        sub_219BE7384();
        sub_2186C6148(0, &qword_280E8E560);
        if (swift_dynamicCast())
        {
        }

        else
        {
          (*(v12 + 16))(v15, v17, v11);
          sub_218718690(a4, v28);
          v21 = (*(v12 + 80) + 24) & ~*(v12 + 80);
          v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
          v25 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
          v23 = swift_allocObject();
          *(v23 + 16) = a2;
          v19((v23 + v21), v15, v11);
          *(v23 + v22) = v27;
          sub_2186CB1F0(v28, v23 + v25);

          sub_219BDD154();
        }
      }
    }
  }

  return (*(v12 + 8))(v17, v11);
}

uint64_t sub_2190A7CEC(uint64_t a1, uint64_t a2)
{
  sub_2190A9AE4(0, &qword_280EE5200, MEMORY[0x277D6D9B8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2190A7D80(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v131 = a5;
  v152 = a4;
  v160 = a3;
  v168 = a1;
  v125 = sub_219BDEFE4();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v123 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_219BDEF94();
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v132 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_219BE1714();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v136 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_219BE09E4();
  v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v153 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_219BDF104();
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v149 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_2190A9AE4(0, &qword_280EE8330, MEMORY[0x277D2E738], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v146 = &v122 - v13;
  v148 = sub_219BE0724();
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v139 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_219BE0D44();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v143 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_219BDF0E4();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v140 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_219BDFE74();
  v158 = *(v159 - 1);
  MEMORY[0x28223BE20](v159);
  v157 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190A9AE4(0, &unk_27CC15A90, MEMORY[0x277D6E130], v11);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v122 - v22;
  v24 = sub_219BDF274();
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v128 = &v122 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v161 = sub_219BDEEB4();
  ObjectType = *(v161 - 1);
  v27 = MEMORY[0x28223BE20](v161);
  v129 = &v122 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v122 - v29;
  v135 = a2;
  v130 = v21;
  if (a2)
  {
    sub_219BE8304();
    v31 = sub_219BE89F4();
    (*(*(v31 - 8) + 56))(v23, 0, 1, v31);
  }

  else
  {
    v32 = sub_219BE89F4();
    (*(*(v32 - 8) + 56))(v23, 1, 1, v32);
  }

  sub_219BDF284();
  sub_219BDEEA4();
  sub_2190A9AE4(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v34 = v33;
  v35 = sub_219BDCD44();
  v171 = v35;
  v36 = *(v35 - 8);
  v169 = *(v36 + 72);
  v37 = *(v36 + 80);
  v38 = (v37 + 32) & ~v37;
  v39 = swift_allocObject();
  v172 = xmmword_219C09BA0;
  *(v39 + 16) = xmmword_219C09BA0;
  v40 = *MEMORY[0x277CEAD18];
  v41 = *(v36 + 104);
  v41(v39 + v38, v40, v35);
  v170 = "foodClusteringService";
  v42 = sub_2190A9A9C(&unk_27CC15AA0, MEMORY[0x277D2D740]);
  v43 = v161;
  v127 = v42;
  sub_219BDCCC4();

  v126 = ObjectType[1];
  ++ObjectType;
  v126(v30, v43);
  sub_219BF5414();
  v44 = v157;
  sub_219BDFE64();
  v167 = v34;
  v45 = swift_allocObject();
  *(v45 + 16) = v172;
  v156 = v38;
  LODWORD(v165) = v40;
  v166 = v41;
  v41(v45 + v38, v40, v171);
  sub_2190A9A9C(&qword_27CC1A3E0, MEMORY[0x277D2E1B8]);
  v46 = v159;
  sub_219BDCCC4();

  (*(v158 + 8))(v44, v46);
  sub_219BE7384();
  sub_2186D6710(0, &qword_280E8E260);
  v47 = swift_dynamicCast();
  v164 = v37;
  v162 = v36 + 104;
  if (v47)
  {
    v48 = v165;
    v49 = v173;
    ObjectType = swift_getObjectType();
    v50 = v140;
    sub_219BF67F4();
    v51 = v156;
    v52 = swift_allocObject();
    *(v52 + 16) = v172;
    v166(v52 + v51, v48, v171);
    sub_2190A9A9C(&qword_280EE88B0, MEMORY[0x277D2D8A8]);
    v53 = v142;
    sub_219BDCCC4();

    (*(v141 + 8))(v50, v53);
    v54 = v143;
    sub_219BF6834();
    v55 = swift_allocObject();
    *(v55 + 16) = v172;
    v56 = v48;
    v57 = v171;
    v166(v55 + v51, v56, v171);
    sub_2190A9A9C(&qword_280EE8190, MEMORY[0x277D2ECA0]);
    v58 = v145;
    sub_219BDCCC4();

    (*(v144 + 8))(v54, v58);
    v59 = v146;
    ObjectType = v49;
    sub_219BF6824();
    v60 = v59;
    v61 = v147;
    v62 = v148;
    v63 = (*(v147 + 48))(v60, 1, v148);
    v64 = v166;
    if (v63 == 1)
    {
      sub_2190A9A2C(v60, &qword_280EE8330, MEMORY[0x277D2E738]);
    }

    else
    {
      v80 = v166;
      v81 = v139;
      (*(v61 + 32))(v139, v60, v62);
      v82 = swift_allocObject();
      *(v82 + 16) = v172;
      v80(v82 + v51, v165, v57);
      v64 = v80;
      sub_2190A9A9C(&unk_27CC0DC50, MEMORY[0x277D2E738]);
      sub_219BDCCC4();

      (*(v61 + 8))(v81, v62);
    }

    v83 = v165;
    v84 = [ObjectType sourceChannel];
    if (v84)
    {
      v85 = v149;
      v165 = v84;
      sub_219BE01F4();
      v86 = swift_allocObject();
      *(v86 + 16) = v172;
      v87 = v171;
      v64(v86 + v51, v83, v171);
      sub_2190A9A9C(&unk_280EE8890, MEMORY[0x277D2D8B8]);
      v88 = v151;
      sub_219BDCCC4();

      (*(v150 + 8))(v85, v88);
      v89 = v153;
      sub_219BE01E4();
      v90 = swift_allocObject();
      *(v90 + 16) = v172;
      v166(v90 + v51, v83, v87);
      sub_2190A9A9C(&qword_280EE8270, MEMORY[0x277D2E9C0]);
      v91 = v155;
      sub_219BDCCC4();
      swift_unknownObjectRelease();

      (*(v154 + 8))(v89, v91);
    }

    sub_219BDFF44();
    sub_2190A9A9C(&qword_280EE8508, MEMORY[0x277D2E250]);
    v174 = 0u;
    v175 = 0u;
    sub_219BDCCE4();
    goto LABEL_13;
  }

  sub_219BE7384();
  sub_2186C6148(0, &qword_280E8DAB0);
  if (swift_dynamicCast())
  {
    v65 = v173;
    v66 = v136;
    ObjectType = v173;
    sub_21934C4BC();
    v67 = v156;
    v68 = swift_allocObject();
    *(v68 + 16) = v172;
    v166(v68 + v67, v165, v171);
    sub_2190A9A9C(&unk_280EE7F60, MEMORY[0x277D2F890]);
    v69 = v138;
    sub_219BDCCC4();

    (*(v137 + 8))(v66, v69);
    v70 = [v65 sourceChannel];
    v71 = v149;
    sub_219BE01F4();
    swift_unknownObjectRelease();
    v72 = swift_allocObject();
    *(v72 + 16) = v172;
    v73 = v166;
    v166(v72 + v67, v165, v171);
    sub_2190A9A9C(&unk_280EE8890, MEMORY[0x277D2D8B8]);
    v74 = v151;
    sub_219BDCCC4();

    (*(v150 + 8))(v71, v74);
    v75 = ObjectType;
    v76 = [ObjectType sourceChannel];
    v77 = v153;
    sub_219BE01E4();
    swift_unknownObjectRelease();
    v78 = swift_allocObject();
    *(v78 + 16) = v172;
    v73(v78 + v67, v165, v171);
    sub_2190A9A9C(&qword_280EE8270, MEMORY[0x277D2E9C0]);
    v79 = v155;
    sub_219BDCCC4();

    (*(v154 + 8))(v77, v79);
    sub_219BDF854();
    sub_2190A9A9C(&unk_27CC15AD0, MEMORY[0x277D2DDA8]);
    v174 = 0u;
    v175 = 0u;
    sub_219BDCCE4();

    return sub_218806FD0(&v174);
  }

  sub_219BE7384();
  sub_2186C6148(0, &qword_27CC15AB0);
  if (swift_dynamicCast())
  {
    v93 = v173;
    __swift_project_boxed_opaque_existential_1(v131, v131[3]);
    v94 = [v93 identifier];
    sub_219BF5414();

    v95 = sub_219BF3424();

    v96 = v132;
    v159 = v95;
    v160 = v93;
    sub_2190A7300(v95, v132);
    v97 = v156;
    v98 = swift_allocObject();
    *(v98 + 16) = v172;
    v99 = v171;
    v100 = v166;
    v166(v98 + v97, v165, v171);
    sub_2190A9A9C(&qword_280EE8910, MEMORY[0x277D2D788]);
    v101 = v134;
    sub_219BDCCC4();

    (*(v133 + 8))(v96, v101);
    if (v135)
    {
      v102 = v130;
      sub_219BE8304();
      v103 = 0;
    }

    else
    {
      v103 = 1;
      v102 = v130;
    }

    v118 = sub_219BE89F4();
    (*(*(v118 - 8) + 56))(v102, v103, 1, v118);
    sub_219BDF284();
    v119 = v129;
    sub_219BDEEA4();
    v120 = swift_allocObject();
    *(v120 + 16) = v172;
    v100(v120 + v97, v165, v99);
    v121 = v161;
    sub_219BDCCC4();

    v126(v119, v121);
    sub_219BDFE24();
    sub_2190A9A9C(&unk_27CC15AC0, MEMORY[0x277D2E188]);
    v174 = 0u;
    v175 = 0u;
    sub_219BDCCE4();

    return sub_218806FD0(&v174);
  }

  sub_219BE7384();
  sub_2186C6148(0, &qword_280E8DA30);
  result = swift_dynamicCast();
  if (result)
  {
    v104 = v173;
    v105 = [v173 identifier];
    sub_219BF5414();

    ObjectType = v104;
    [v104 isPaid];
    v106 = [v104 totalTime];
    sub_219BF5414();

    v107 = v123;
    sub_219BDEFB4();
    v108 = v156;
    v109 = swift_allocObject();
    *(v109 + 16) = v172;
    v166(v109 + v108, v165, v171);
    sub_2190A9A9C(&qword_280EE8900, MEMORY[0x277D2D798]);
    v110 = v125;
    sub_219BDCCC4();

    (*(v124 + 8))(v107, v110);
    v161 = [ObjectType sourceChannel];
    v111 = v149;
    sub_219BE01F4();
    v112 = swift_allocObject();
    *(v112 + 16) = v172;
    v113 = v165;
    v166(v112 + v108, v165, v171);
    sub_2190A9A9C(&unk_280EE8890, MEMORY[0x277D2D8B8]);
    v114 = v151;
    sub_219BDCCC4();

    (*(v150 + 8))(v111, v114);
    v115 = v153;
    sub_219BE01E4();
    v116 = swift_allocObject();
    *(v116 + 16) = v172;
    v166(v116 + v108, v113, v171);
    sub_2190A9A9C(&qword_280EE8270, MEMORY[0x277D2E9C0]);
    v117 = v155;
    sub_219BDCCC4();

    (*(v154 + 8))(v115, v117);
    sub_219BDFE34();
    sub_2190A9A9C(&qword_27CC15AB8, MEMORY[0x277D2E198]);
    v174 = 0u;
    v175 = 0u;
    sub_219BDCCE4();

LABEL_13:
    swift_unknownObjectRelease();
    return sub_218806FD0(&v174);
  }

  return result;
}

uint64_t sub_2190A9980(uint64_t a1)
{
  v3 = *(sub_219BE7394() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + 16);

  return sub_2190A7D80(a1, v7, (v1 + v4), v6, (v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2190A9A2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2190A9AE4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2190A9A9C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2190A9AE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2190A9B48()
{
  sub_2186DCF58();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v41 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v41 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  v17 = sub_2190AA0D4();
  if (v17)
  {
    v45 = v8;
    v18 = v17;
    v19 = [v17 quiescenceInterval];

    v20 = [*(v0 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_userInfo) appReviewRequestLastShownDate];
    if (v20)
    {
      v21 = v20;
      sub_219BDBCA4();

      v22 = *(v5 + 32);
      v22(v3, v14, v4);
      (*(v5 + 56))(v3, 0, 1, v4);
      v22(v16, v3, v4);
    }

    else
    {
      (*(v5 + 56))(v3, 1, 1, v4);
      sub_219BDBBB4();
      if ((*(v5 + 48))(v3, 1, v4) != 1)
      {
        sub_2190AB1F0(v3, sub_2186DCF58);
      }
    }

    v44 = v19;
    sub_219BDBBF4();
    sub_219BDBCB4();
    LODWORD(v27) = sub_219BDBC24();
    v28 = *(v5 + 8);
    v28(v11, v4);
    v28(v14, v4);
    v29 = v45;
    if (qword_27CC08578 != -1)
    {
      swift_once();
    }

    v30 = sub_219BE5434();
    __swift_project_value_buffer(v30, qword_27CCD8A38);
    (*(v5 + 16))(v29, v16, v4);
    v31 = sub_219BE5414();
    v32 = sub_219BF6214();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v43 = v27;
      v27 = v33;
      v42 = swift_slowAlloc();
      v46 = v42;
      *v27 = 67109634;
      *(v27 + 4) = v43 & 1;
      *(v27 + 8) = 2048;
      *(v27 + 10) = v44;
      *(v27 + 18) = 2080;
      sub_2190AB250(&qword_280EE9C60, MEMORY[0x277CC9578]);
      v34 = sub_219BF7894();
      v36 = v35;
      v28(v29, v4);
      v37 = sub_2186D1058(v34, v36, &v46);

      *(v27 + 20) = v37;
      _os_log_impl(&dword_2186C1000, v31, v32, "Checking quiescenceIntervalHasElapsed [%{BOOL}d]: quiescence interval [%lld]. Last App Review Request Date [%s]", v27, 0x1Cu);
      v38 = v42;
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x21CECF960](v38, -1, -1);
      v39 = v27;
      LOBYTE(v27) = v43;
      MEMORY[0x21CECF960](v39, -1, -1);
    }

    else
    {

      v28(v29, v4);
    }

    v28(v16, v4);
  }

  else
  {
    if (qword_27CC08578 != -1)
    {
      swift_once();
    }

    v23 = sub_219BE5434();
    __swift_project_value_buffer(v23, qword_27CCD8A38);
    v24 = sub_219BE5414();
    v25 = sub_219BF6214();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2186C1000, v24, v25, "Quiescence interval is null. Exiting.", v26, 2u);
      MEMORY[0x21CECF960](v26, -1, -1);
    }

    LOBYTE(v27) = 0;
  }

  return v27 & 1;
}

id sub_2190AA0D4()
{
  v1 = OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager____lazy_storage___appReviewRequestConfig;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager____lazy_storage___appReviewRequestConfig);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = [*(v0 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_configurationManager) possiblyUnfetchedAppConfiguration];
    if ([v4 respondsToSelector_])
    {
      v3 = [v4 appReviewRequestConfig];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v3 = 0;
    }

    v5 = *(v0 + v1);
    *(v0 + v1) = v3;
    v6 = v3;
    sub_2190AAF44(v5);
  }

  sub_2190AB1E0(v2);
  return v3;
}

void sub_2190AA1A4(uint64_t a1)
{
  v2 = sub_219BE14C4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v9 = *(v3 + 16);
  v9(&v21 - v7, a1, v2);
  v10 = (*(v3 + 88))(v8, v2);
  v11 = *MEMORY[0x277D2F310];
  v21 = *(v3 + 8);
  v21(v8, v2);
  if (v10 == v11)
  {
    sub_2190AA464();
  }

  else
  {
    if (qword_27CC08578 != -1)
    {
      swift_once();
    }

    v12 = sub_219BE5434();
    __swift_project_value_buffer(v12, qword_27CCD8A38);
    v9(v6, a1, v2);
    v13 = sub_219BE5414();
    v14 = sub_219BF6214();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      v17 = sub_219BE14B4();
      v19 = v18;
      v21(v6, v2);
      v20 = sub_2186D1058(v17, v19, &v22);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_2186C1000, v13, v14, "Skipping feedType %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x21CECF960](v16, -1, -1);
      MEMORY[0x21CECF960](v15, -1, -1);
    }

    else
    {

      v21(v6, v2);
    }
  }
}

void sub_2190AA464()
{
  v1 = v0;
  if (qword_27CC08578 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_27CCD8A38);
  v3 = sub_219BE5414();
  v4 = sub_219BF6214();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2186C1000, v3, v4, "Determining if review prompt needs to be displayed", v5, 2u);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store + 24);
  v7 = *(v1 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store), v6);
  (*(v7 + 8))(v37, v6, v7);
  if (v38)
  {
    oslog = sub_219BE5414();
    v8 = sub_219BF6214();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "No stored state found. Skipping processing";
LABEL_21:
      _os_log_impl(&dword_2186C1000, oslog, v8, v10, v9, 2u);
      MEMORY[0x21CECF960](v9, -1, -1);
      goto LABEL_34;
    }

    goto LABEL_34;
  }

  v11 = v37[0];
  v12 = v37[1];
  v14 = v37[2];
  v13 = v37[3];
  v15 = sub_2190AA0D4();
  if (v15)
  {
    oslog = v15;
    v16 = [v15 minNumberOfCombinedActions];
    v17 = [oslog minNumberOfLikedArticles];
    v35 = [oslog minNumberOfSavedArticles];
    v18 = [oslog minNumberOfSharedArticles];
    v19 = [oslog minNumberOfEndOfArticleReads];
    v20 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      __break(1u);
    }

    else
    {
      v21 = v20 + v14;
      if (!__OFADD__(v20, v14))
      {
        if (v21 < v16)
        {
          if (v12 >= v17)
          {
            v23 = sub_219BE5414();
            v29 = sub_219BF6214();
            if (!os_log_type_enabled(v23, v29))
            {
              goto LABEL_33;
            }

            v30 = swift_slowAlloc();
            *v30 = 134217984;
            *(v30 + 4) = v17;
            v31 = "Reached minNumberOfLikedArticles %ld";
          }

          else
          {
            if (v11 < v35)
            {
              v34 = v18;
              if (v14 < v18)
              {
                v22 = v19;
                v23 = sub_219BE5414();
                v33 = sub_219BF6214();
                v24 = os_log_type_enabled(v23, v33);
                if (v13 < v22)
                {
                  if (v24)
                  {
                    v25 = swift_slowAlloc();
                    *v25 = 134220288;
                    *(v25 + 4) = v11;
                    *(v25 + 12) = 2048;
                    *(v25 + 14) = v35;
                    *(v25 + 22) = 2048;
                    *(v25 + 24) = v12;
                    *(v25 + 32) = 2048;
                    *(v25 + 34) = v17;
                    *(v25 + 42) = 2048;
                    *(v25 + 44) = v21;
                    *(v25 + 52) = 2048;
                    *(v25 + 54) = v16;
                    *(v25 + 62) = 2048;
                    *(v25 + 64) = v14;
                    *(v25 + 72) = 2048;
                    *(v25 + 74) = v34;
                    *(v25 + 82) = 2048;
                    *(v25 + 84) = v13;
                    *(v25 + 92) = 2048;
                    *(v25 + 94) = v22;
                    _os_log_impl(&dword_2186C1000, v23, v33, "Skipping review prompt request. Threshold not reached: saved %ld/%ld, liked %ld/%ld, combined %ld/%ld, shared %ld/%ld, eoa %ld/%ld", v25, 0x66u);
                    MEMORY[0x21CECF960](v25, -1, -1);
                  }

                  goto LABEL_34;
                }

                if (!v24)
                {
                  goto LABEL_33;
                }

                v30 = swift_slowAlloc();
                *v30 = 134217984;
                *(v30 + 4) = v22;
                v31 = "Reached minNumberOfEndOfArticleReads %ld";
                v32 = v33;
                goto LABEL_31;
              }

              v23 = sub_219BE5414();
              v29 = sub_219BF6214();
              if (os_log_type_enabled(v23, v29))
              {
                v30 = swift_slowAlloc();
                *v30 = 134217984;
                *(v30 + 4) = v34;
                v31 = "Reached minNumberOfSharedArticles %ld";
                goto LABEL_30;
              }

LABEL_33:

              sub_2190AA9F8();
              goto LABEL_34;
            }

            v23 = sub_219BE5414();
            v29 = sub_219BF6214();
            if (!os_log_type_enabled(v23, v29))
            {
              goto LABEL_33;
            }

            v30 = swift_slowAlloc();
            *v30 = 134217984;
            *(v30 + 4) = v35;
            v31 = "Reached minNumberOfSavedArticles %ld";
          }

LABEL_30:
          v32 = v29;
LABEL_31:
          _os_log_impl(&dword_2186C1000, v23, v32, v31, v30, 0xCu);
          v28 = v30;
          goto LABEL_32;
        }

        v23 = sub_219BE5414();
        v26 = sub_219BF6214();
        if (os_log_type_enabled(v23, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 134217984;
          *(v27 + 4) = v16;
          _os_log_impl(&dword_2186C1000, v23, v26, "Reached minNumberOfCombinedActions %ld", v27, 0xCu);
          v28 = v27;
LABEL_32:
          MEMORY[0x21CECF960](v28, -1, -1);
          goto LABEL_33;
        }

        goto LABEL_33;
      }
    }

    __break(1u);
    return;
  }

  oslog = sub_219BE5414();
  v8 = sub_219BF6214();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "No appReviewRequestConfig found. Skipping processing";
    goto LABEL_21;
  }

LABEL_34:
}

void sub_2190AA9F8()
{
  v1 = v0;
  sub_2190AAF54();
  if (v2)
  {
    v3 = v2;
    if (qword_27CC08578 != -1)
    {
      swift_once();
    }

    v4 = sub_219BE5434();
    __swift_project_value_buffer(v4, qword_27CCD8A38);
    v5 = sub_219BE5414();
    v6 = sub_219BF6214();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2186C1000, v5, v6, "Requesting review prompt", v7, 2u);
      MEMORY[0x21CECF960](v7, -1, -1);
    }

    sub_219BDD154();
    v8 = *(v1 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_userInfo);
    sub_218718690(v1 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store, v16);
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    sub_2186CB1F0(v16, v9 + 24);
    *(v9 + 64) = v3;
    v10 = v8;
    v11 = v3;
    sub_219BE3494();
  }

  else
  {
    if (qword_27CC08578 != -1)
    {
      swift_once();
    }

    v12 = sub_219BE5434();
    __swift_project_value_buffer(v12, qword_27CCD8A38);
    oslog = sub_219BE5414();
    v13 = sub_219BF6214();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2186C1000, oslog, v13, "No active window scene! Skipping review prompt", v14, 2u);
      MEMORY[0x21CECF960](v14, -1, -1);
    }
  }
}

id sub_2190AAC74(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_219BDBD34();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDBCB4();
  v10 = sub_219BDBC04();
  (*(v7 + 8))(v9, v6);
  [a1 setAppReviewRequestLastShownDate_];

  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  memset(v14, 0, sizeof(v14));
  (*(v12 + 24))(v14, v11, v12);
  return [objc_opt_self() requestReviewInScene_];
}

uint64_t sub_2190AADCC()
{
  sub_219BE0F04();
  sub_2190AB250(&qword_27CC15B90, MEMORY[0x277D2EDD8]);
  memset(v1, 0, sizeof(v1));
  sub_219BDCCE4();
  return sub_2190AB1F0(v1, sub_21880702C);
}

void sub_2190AAF44(id a1)
{
  if (a1 != 1)
  {
  }
}

void sub_2190AAF54()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_219004C80();
  sub_2190AB250(&qword_280E8DA40, sub_219004C80);
  v2 = sub_219BF5D44();

  if ((v2 & 0xC000000000000001) != 0)
  {
    sub_219BF71C4();
    sub_219BF5D94();
    v2 = v20;
    v3 = v21;
    v4 = v22;
    v5 = v23;
    v6 = v24;
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v2 + 56);
  }

  v17 = v4;
  v10 = (v4 + 64) >> 6;
  while (v2 < 0)
  {
    v16 = sub_219BF7244();
    if (!v16 || (v18 = v16, swift_dynamicCast(), v15 = v19, v13 = v5, v14 = v6, !v19))
    {
LABEL_20:
      sub_21892DE98();
      return;
    }

LABEL_18:
    if (![v15 activationState])
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        goto LABEL_20;
      }
    }

    v5 = v13;
    v6 = v14;
  }

  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (v6)
  {
LABEL_14:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_20;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

id sub_2190AB1E0(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_2190AB1F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2190AB250(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2190AB2A8(char *a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v72 = a3;
  v73 = a2;
  sub_218C6994C(0, &qword_280EE4B40, MEMORY[0x277D6DF88]);
  v70 = *(v5 - 8);
  v71 = v5;
  MEMORY[0x28223BE20](v5);
  v69 = (&v56 - v6);
  v62 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v62);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C6994C(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v10 = v9;
  v66 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v63 = &v56 - v11;
  sub_218A7BA30(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84();
  v16 = v15;
  v68 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v65 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v67 = &v56 - v19;
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C6994C(0, &qword_280EE5750, MEMORY[0x277D6D710]);
  v24 = v23;
  v25 = *(v23 - 8);
  v26 = MEMORY[0x28223BE20](v23);
  v64 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v56 - v28;
  sub_219BEB354();
  if ((*(v25 + 48))(v22, 1, v24) == 1)
  {
    v30 = sub_218A2D984;
    v31 = v22;
LABEL_5:
    sub_218C69A30(v31, v30);
    sub_2190ABB38();
    v33 = swift_allocError();
    v35 = v69;
    v34 = v70;
    *v69 = v33;
    v36 = v71;
    (*(v34 + 104))(v35, *MEMORY[0x277D6DF68], v71);
    v73(v35);
    return (*(v34 + 8))(v35, v36);
  }

  (*(v25 + 32))(v29, v22, v24);
  sub_219BEB1C4();
  v32 = v68;
  if ((*(v68 + 48))(v14, 1, v16) == 1)
  {
    (*(v25 + 8))(v29, v24);
    v30 = sub_218A7BA30;
    v31 = v14;
    goto LABEL_5;
  }

  v38 = *(v32 + 32);
  v60 = v16;
  v38(v67, v14, v16);
  (*(v25 + 16))(v64, v29, v24);
  v39 = v10;
  v40 = *(v66 + 16);
  v41 = v63;
  v58 = v66 + 16;
  v59 = a1;
  v57 = v40;
  v40(v63, a1, v10);
  *v8 = v61;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  v8[32] = 1;
  swift_storeEnumTagMultiPayload();
  sub_218C698F4();
  sub_219BE5FB4();
  sub_219BE69E4();
  v42 = v41;
  sub_219BEB234();
  sub_218A7BAF8();
  sub_2187490E4();
  sub_219BE78F4();
  __swift_project_boxed_opaque_existential_1(v74, v74[3]);
  v43 = v29;
  if (sub_219BE6E54())
  {
    v44 = MEMORY[0x277D6DF80];
    v45 = v69;
  }

  else
  {
    sub_218A7BB4C();
    v47 = *(v46 + 48);
    v48 = *(v46 + 64);
    v45 = v69;
    v57(v69, v41, v39);
    sub_218718690(v74, v45 + v47);
    v49 = *MEMORY[0x277D6D868];
    v50 = sub_219BE6DF4();
    (*(*(v50 - 8) + 104))(v45 + v48, v49, v50);
    v44 = MEMORY[0x277D6DF78];
  }

  v52 = v70;
  v51 = v71;
  (*(v70 + 104))(v45, *v44, v71);
  v73(v45);
  (*(v52 + 8))(v45, v51);
  v53 = *(v68 + 8);
  v54 = v60;
  v53(v65, v60);
  (*(v66 + 8))(v42, v39);
  v55 = *(v25 + 8);
  v55(v64, v24);
  v53(v67, v54);
  v55(v43, v24);
  return __swift_destroy_boxed_opaque_existential_1(v74);
}

uint64_t sub_2190ABAA4(uint64_t a1)
{
  v2 = sub_218B128D8();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_2190ABAE4()
{
  result = qword_280EA36B8;
  if (!qword_280EA36B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA36B8);
  }

  return result;
}

unint64_t sub_2190ABB38()
{
  result = qword_27CC15B98;
  if (!qword_27CC15B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15B98);
  }

  return result;
}

unint64_t sub_2190ABBA0()
{
  result = qword_27CC15BA0;
  if (!qword_27CC15BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15BA0);
  }

  return result;
}

uint64_t sub_2190ABC3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v230 = a2;
  sub_2186EB308();
  v290 = v3;
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v250 = &v225 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v278 = &v225 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v249 = &v225 - v10;
  MEMORY[0x28223BE20](v9);
  v277 = &v225 - v11;
  sub_2186EB018();
  v289 = v12;
  v285 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v226 = &v225 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v248 = &v225 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v247 = &v225 - v18;
  MEMORY[0x28223BE20](v17);
  v246 = &v225 - v19;
  v286 = sub_219BF04A4();
  v20 = *(v286 - 8);
  v21 = MEMORY[0x28223BE20](v286);
  v245 = &v225 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v276 = &v225 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v244 = &v225 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v275 = &v225 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v243 = &v225 - v30;
  MEMORY[0x28223BE20](v29);
  v274 = &v225 - v31;
  sub_2186EAB88();
  v33 = v32;
  v34 = *(v32 - 8);
  v35 = MEMORY[0x28223BE20](v32);
  v225 = &v225 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v242 = &v225 - v37;
  v273 = sub_219BF0F34();
  v38 = *(v273 - 8);
  v39 = MEMORY[0x28223BE20](v273);
  v241 = &v225 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v272 = &v225 - v41;
  v42 = type metadata accessor for SearchModel(0);
  v240 = *(v42 - 8);
  v43 = MEMORY[0x28223BE20](v42);
  v233 = &v225 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v232 = &v225 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v262 = &v225 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v261 = &v225 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v260 = &v225 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v259 = &v225 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v258 = &v225 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v257 = &v225 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v256 = &v225 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v255 = &v225 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v254 = &v225 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v253 = &v225 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v69 = &v225 - v68;
  MEMORY[0x28223BE20](v67);
  v252 = &v225 - v70;
  v269 = type metadata accessor for SearchResultsGroup();
  v71 = *(v269 - 8);
  result = MEMORY[0x28223BE20](v269);
  v264 = &v225 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v298 = 0u;
  v299 = 0u;
  v297 = 0u;
  v300 = -1;
  v229 = a1;
  v74 = *(a1 + 16);
  v268 = *(v74 + 16);
  if (v268)
  {
    v228 = (&v297 + 8);
    v266 = v74 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
    v282 = (v4 + 32);
    v288 = (v34 + 8);
    v287 = (v285 + 1);
    v283 = (v4 + 8);
    v280 = (v285 + 4);
    v285 = (v20 + 32);
    v251 = (v34 + 32);
    v267 = v38;
    v270 = (v38 + 32);
    v227 = xmmword_219C09BA0;
    v239 = MEMORY[0x277D84F90];
    v238 = MEMORY[0x277D84F90];
    v237 = MEMORY[0x277D84F90];
    v236 = MEMORY[0x277D84F90];
    v235 = MEMORY[0x277D84F90];
    v234 = MEMORY[0x277D84F90];
    v271 = v4;
    v75 = 0;
    v281 = v20;
    v284 = v33;
    v265 = v71;
    v76 = v264;
    v263 = v74;
    while (v75 < *(v74 + 16))
    {
      sub_2190AEE30(v266 + *(v71 + 72) * v75, v76, type metadata accessor for SearchResultsGroup);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        if (EnumCaseMultiPayload)
        {
          v279 = v75;
          if (EnumCaseMultiPayload == 1)
          {
            v100 = *v76;
            v296 = *(v76 + 40);
            v101 = *(v76 + 24);
            v294 = *(v76 + 8);
            v295 = v101;
            v102 = *(v100 + 16);
            if (!v102)
            {

              v106 = MEMORY[0x277D84F90];
LABEL_131:
              sub_2187B14CC(&v294, v293, &qword_280ED01D0, &qword_280ED01E0);
              v292 = v106;
              sub_218B6F318(&v292, v291);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v235 = sub_2191F9C74(0, *(v235 + 2) + 1, 1, v235);
              }

              v71 = v265;
              v74 = v263;
              v201 = *(v235 + 2);
              v200 = *(v235 + 3);
              v202 = v201 + 1;
              if (v201 >= v200 >> 1)
              {
                v235 = sub_2191F9C74((v200 > 1), v201 + 1, 1, v235);
              }

              sub_218B6F544(&v292);
              result = sub_2187B1C64(&v294, &qword_280ED01D0, &qword_280ED01E0);
              v77 = &v267;
              goto LABEL_4;
            }

            v103 = (*(v240 + 80) + 32) & ~*(v240 + 80);
            v231 = v100;
            v104 = v100 + v103;
            v105 = *(v240 + 72);
            v106 = MEMORY[0x277D84F90];
            v107 = v254;
            v108 = v253;
            while (2)
            {
              sub_2190AEE30(v104, v108, type metadata accessor for SearchModel);
              sub_2190AEE30(v108, v107, type metadata accessor for SearchModel);
              v109 = swift_getEnumCaseMultiPayload();
              if (v109 <= 1)
              {
                if (!v109)
                {

                  sub_2186F8128();
                  v111 = type metadata accessor for SearchFeedGapLocation;
                  v112 = v107 + *(v110 + 48);
                  goto LABEL_43;
                }

                v113 = v246;
                v114 = v107;
                v115 = v289;
                (*v280)(v246, v114, v289);
                v116 = v243;
                sub_219BF07D4();
                sub_2190AEF38(v108, type metadata accessor for SearchModel);
                (*v287)(v113, v115);
                v117 = *v285;
                (*v285)(v274, v116, v286);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v106 = sub_2191F9DC0(0, *(v106 + 2) + 1, 1, v106);
                }

                v119 = *(v106 + 2);
                v118 = *(v106 + 3);
                v33 = v284;
                if (v119 >= v118 >> 1)
                {
                  v106 = sub_2191F9DC0(v118 > 1, v119 + 1, 1, v106);
                }

                *(v106 + 2) = v119 + 1;
                v117(&v106[((*(v281 + 80) + 32) & ~*(v281 + 80)) + *(v281 + 72) * v119], v274, v286);
                v107 = v254;
                v108 = v253;
              }

              else
              {
                if (v109 == 2)
                {
                  (*v288)(v107, v33);
                  goto LABEL_34;
                }

                if (v109 == 3)
                {
                  (*v283)(v107, v290);
                  goto LABEL_34;
                }

                v111 = type metadata accessor for SearchModel;
                v112 = v107;
LABEL_43:
                sub_2190AEF38(v112, v111);
LABEL_34:
                sub_2190AEF38(v108, type metadata accessor for SearchModel);
              }

              v104 += v105;
              if (!--v102)
              {

                v76 = v264;
                goto LABEL_131;
              }

              continue;
            }
          }

          v139 = *v76;
          v296 = *(v76 + 40);
          v140 = *(v76 + 24);
          v294 = *(v76 + 8);
          v295 = v140;
          v141 = *(v139 + 16);
          if (!v141)
          {

            v145 = MEMORY[0x277D84F90];
LABEL_136:
            sub_2187B14CC(&v294, v293, &qword_280ED01D0, &qword_280ED01E0);
            v292 = v145;
            sub_218B6F318(&v292, v291);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v236 = sub_2191F9C74(0, *(v236 + 2) + 1, 1, v236);
            }

            v71 = v265;
            v74 = v263;
            v201 = *(v236 + 2);
            v203 = *(v236 + 3);
            v202 = v201 + 1;
            if (v201 >= v203 >> 1)
            {
              v236 = sub_2191F9C74((v203 > 1), v201 + 1, 1, v236);
            }

            sub_218B6F544(&v292);
            result = sub_2187B1C64(&v294, &qword_280ED01D0, &qword_280ED01E0);
            v77 = &v268;
            goto LABEL_4;
          }

          v142 = (*(v240 + 80) + 32) & ~*(v240 + 80);
          v231 = v139;
          v143 = v139 + v142;
          v144 = *(v240 + 72);
          v145 = MEMORY[0x277D84F90];
          v146 = v256;
          v147 = v255;
          while (2)
          {
            sub_2190AEE30(v143, v147, type metadata accessor for SearchModel);
            sub_2190AEE30(v147, v146, type metadata accessor for SearchModel);
            v148 = swift_getEnumCaseMultiPayload();
            if (v148 <= 1)
            {
              if (!v148)
              {

                sub_2186F8128();
                v150 = type metadata accessor for SearchFeedGapLocation;
                v151 = v146 + *(v149 + 48);
                goto LABEL_82;
              }

              v152 = v247;
              v153 = v146;
              v154 = v289;
              (*v280)(v247, v153, v289);
              v155 = v244;
              sub_219BF07D4();
              sub_2190AEF38(v147, type metadata accessor for SearchModel);
              (*v287)(v152, v154);
              v156 = *v285;
              (*v285)(v275, v155, v286);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v145 = sub_2191F9DC0(0, *(v145 + 2) + 1, 1, v145);
              }

              v158 = *(v145 + 2);
              v157 = *(v145 + 3);
              v33 = v284;
              if (v158 >= v157 >> 1)
              {
                v145 = sub_2191F9DC0(v157 > 1, v158 + 1, 1, v145);
              }

              *(v145 + 2) = v158 + 1;
              v156(&v145[((*(v281 + 80) + 32) & ~*(v281 + 80)) + *(v281 + 72) * v158], v275, v286);
              v146 = v256;
              v147 = v255;
            }

            else
            {
              if (v148 == 2)
              {
                (*v288)(v146, v33);
                goto LABEL_73;
              }

              if (v148 == 3)
              {
                (*v283)(v146, v290);
                goto LABEL_73;
              }

              v150 = type metadata accessor for SearchModel;
              v151 = v146;
LABEL_82:
              sub_2190AEF38(v151, v150);
LABEL_73:
              sub_2190AEF38(v147, type metadata accessor for SearchModel);
            }

            v143 += v144;
            if (!--v141)
            {

              v76 = v264;
              goto LABEL_136;
            }

            continue;
          }
        }

        v137 = v232;
        sub_2190AEED0(v76, v232, type metadata accessor for SearchModel);
        sub_2190AEE30(v137, v233, type metadata accessor for SearchModel);
        v138 = swift_getEnumCaseMultiPayload();
        if (v138 <= 1)
        {
          if (v138)
          {
            v215 = *v280;
            v279 = v75;
            v216 = v226;
            v217 = v289;
            v215(v226, v233, v289);
            sub_2190AE7DC(0, &qword_27CC17440, MEMORY[0x277D32CE0]);
            v218 = swift_allocObject();
            *(v218 + 16) = v227;
            sub_219BF07D4();
            v219 = v216;
            v75 = v279;
            (*v287)(v219, v217);
            sub_2190AEF38(v232, type metadata accessor for SearchModel);
            result = sub_2190AEF38(&v297, sub_2190AE78C);
            LOBYTE(v292) = 1;
            *&v297 = v218;
            v76 = v264;
            v220 = v228;
            *v228 = 0u;
            v220[1] = 0u;
            *(v220 + 4) = 0;
            v300 = 1;
            goto LABEL_6;
          }

          sub_2190AEF38(v232, type metadata accessor for SearchModel);
          sub_2190AEF38(&v297, sub_2190AE78C);
          v196 = v233;

          sub_2186F8128();
          v198 = type metadata accessor for SearchFeedGapLocation;
          v199 = v196 + *(v197 + 48);
        }

        else
        {
          if (v138 == 2)
          {
            v212 = v225;
            (*v251)(v225, v233, v33);
            sub_2190AE7DC(0, &qword_27CC15BB0, MEMORY[0x277D33058]);
            v213 = swift_allocObject();
            *(v213 + 16) = v227;
            sub_219BF07D4();
            (*v288)(v212, v33);
            sub_2190AEF38(v232, type metadata accessor for SearchModel);
            result = sub_2190AEF38(&v297, sub_2190AE78C);
            LOBYTE(v292) = 0;
            *&v297 = v213;
            v76 = v264;
            v214 = v228;
            *v228 = 0u;
            v214[1] = 0u;
            *(v214 + 4) = 0;
            v300 = 0;
            goto LABEL_6;
          }

          if (v138 == 3)
          {
            sub_2190AEF38(v232, type metadata accessor for SearchModel);
            sub_2190AEF38(&v297, sub_2190AE78C);
            result = (*v283)(v233, v290);
LABEL_169:
            v298 = 0u;
            v299 = 0u;
            v297 = 0u;
            v300 = -1;
            goto LABEL_6;
          }

          sub_2190AEF38(v232, type metadata accessor for SearchModel);
          sub_2190AEF38(&v297, sub_2190AE78C);
          v199 = v233;
          v198 = type metadata accessor for SearchModel;
        }

        result = sub_2190AEF38(v199, v198);
        goto LABEL_169;
      }

      v279 = v75;
      if (EnumCaseMultiPayload <= 4)
      {
        if (EnumCaseMultiPayload == 3)
        {
          v83 = *v76;
          v296 = *(v76 + 40);
          v84 = *(v76 + 24);
          v294 = *(v76 + 8);
          v295 = v84;
          v85 = *(v83 + 16);
          if (v85)
          {
            v86 = (*(v240 + 80) + 32) & ~*(v240 + 80);
            v231 = v83;
            v87 = v83 + v86;
            v88 = *(v240 + 72);
            v89 = MEMORY[0x277D84F90];
            v90 = v252;
            while (1)
            {
              sub_2190AEE30(v87, v90, type metadata accessor for SearchModel);
              sub_2190AEE30(v90, v69, type metadata accessor for SearchModel);
              v93 = swift_getEnumCaseMultiPayload();
              if (v93 <= 1)
              {
                if (v93)
                {
                  (*v287)(v69, v289);
                  goto LABEL_15;
                }

                sub_2186F8128();
                v91 = type metadata accessor for SearchFeedGapLocation;
                v92 = &v69[*(v94 + 48)];
              }

              else
              {
                if (v93 == 2)
                {
                  v95 = v242;
                  (*v251)(v242, v69, v33);
                  v96 = v241;
                  sub_219BF07D4();
                  sub_2190AEF38(v90, type metadata accessor for SearchModel);
                  (*v288)(v95, v33);
                  v97 = *v270;
                  (*v270)(v272, v96, v273);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v89 = sub_2191F9E08(0, *(v89 + 2) + 1, 1, v89);
                  }

                  v99 = *(v89 + 2);
                  v98 = *(v89 + 3);
                  if (v99 >= v98 >> 1)
                  {
                    v89 = sub_2191F9E08(v98 > 1, v99 + 1, 1, v89);
                  }

                  *(v89 + 2) = v99 + 1;
                  v97(&v89[((*(v267 + 80) + 32) & ~*(v267 + 80)) + *(v267 + 72) * v99], v272, v273);
                  v90 = v252;
                  goto LABEL_16;
                }

                if (v93 == 3)
                {
                  (*v283)(v69, v290);
                  goto LABEL_15;
                }

                v91 = type metadata accessor for SearchModel;
                v92 = v69;
              }

              sub_2190AEF38(v92, v91);
LABEL_15:
              sub_2190AEF38(v90, type metadata accessor for SearchModel);
LABEL_16:
              v87 += v88;
              if (!--v85)
              {

                v76 = v264;
                goto LABEL_142;
              }
            }
          }

          v89 = MEMORY[0x277D84F90];
LABEL_142:
          sub_2187B14CC(&v294, v293, &qword_280EC30F0, qword_280EC3100);
          v292 = v89;
          sub_2190AEDC8(&v292, v291);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v234 = sub_2191F9DF4(0, *(v234 + 2) + 1, 1, v234);
          }

          v71 = v265;
          v74 = v263;
          v201 = *(v234 + 2);
          v204 = *(v234 + 3);
          v202 = v201 + 1;
          if (v201 >= v204 >> 1)
          {
            v234 = sub_2191F9DF4((v204 > 1), v201 + 1, 1, v234);
          }

          sub_2190AEE00(&v292);
          result = sub_2187B1C64(&v294, &qword_280EC30F0, qword_280EC3100);
          v77 = &v266;
          goto LABEL_4;
        }

        v159 = *v76;
        v296 = *(v76 + 40);
        v160 = *(v76 + 24);
        v294 = *(v76 + 8);
        v295 = v160;
        v161 = *(v159 + 16);
        if (v161)
        {
          v162 = (*(v240 + 80) + 32) & ~*(v240 + 80);
          v231 = v159;
          v163 = v159 + v162;
          v164 = *(v240 + 72);
          v165 = MEMORY[0x277D84F90];
          v166 = v262;
          v167 = v261;
          while (1)
          {
            sub_2190AEE30(v163, v167, type metadata accessor for SearchModel);
            sub_2190AEE30(v167, v166, type metadata accessor for SearchModel);
            v168 = swift_getEnumCaseMultiPayload();
            if (v168 <= 1)
            {
              break;
            }

            if (v168 == 2)
            {
              (*v288)(v166, v33);
            }

            else
            {
              if (v168 != 3)
              {
                v170 = type metadata accessor for SearchModel;
                v171 = v166;
LABEL_100:
                sub_2190AEF38(v171, v170);
                goto LABEL_91;
              }

              (*v283)(v166, v290);
            }

LABEL_91:
            sub_2190AEF38(v167, type metadata accessor for SearchModel);
LABEL_92:
            v163 += v164;
            if (!--v161)
            {

              v76 = v264;
              goto LABEL_154;
            }
          }

          if (v168)
          {
            v172 = v248;
            v173 = v166;
            v174 = v289;
            (*v280)(v248, v173, v289);
            v175 = v245;
            sub_219BF07D4();
            sub_2190AEF38(v167, type metadata accessor for SearchModel);
            (*v287)(v172, v174);
            v176 = *v285;
            (*v285)(v276, v175, v286);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v165 = sub_2191F9DC0(0, *(v165 + 2) + 1, 1, v165);
            }

            v178 = *(v165 + 2);
            v177 = *(v165 + 3);
            v33 = v284;
            if (v178 >= v177 >> 1)
            {
              v165 = sub_2191F9DC0(v177 > 1, v178 + 1, 1, v165);
            }

            *(v165 + 2) = v178 + 1;
            v176(&v165[((*(v281 + 80) + 32) & ~*(v281 + 80)) + *(v281 + 72) * v178], v276, v286);
            v166 = v262;
            v167 = v261;
            goto LABEL_92;
          }

          sub_2186F8128();
          v170 = type metadata accessor for SearchFeedGapLocation;
          v171 = v166 + *(v169 + 48);
          goto LABEL_100;
        }

        v165 = MEMORY[0x277D84F90];
LABEL_154:
        sub_2187B14CC(&v294, v293, &qword_280ED01D0, &qword_280ED01E0);
        v292 = v165;
        sub_218B6F318(&v292, v291);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v239 = sub_2191F9C74(0, *(v239 + 2) + 1, 1, v239);
        }

        v71 = v265;
        v74 = v263;
        v207 = *(v239 + 2);
        v206 = *(v239 + 3);
        v208 = v207 + 1;
        if (v207 >= v206 >> 1)
        {
          v239 = sub_2191F9C74((v206 > 1), v207 + 1, 1, v239);
        }

        sub_218B6F544(&v292);
        result = sub_2187B1C64(&v294, &qword_280ED01D0, &qword_280ED01E0);
        v209 = &v271;
LABEL_165:
        v211 = *(v209 - 32);
        *(v211 + 16) = v208;
        v79 = (v211 + 48 * v207);
        goto LABEL_5;
      }

      if (EnumCaseMultiPayload != 5)
      {
        v179 = *v76;
        v296 = *(v76 + 40);
        v180 = *(v76 + 24);
        v294 = *(v76 + 8);
        v295 = v180;
        v181 = *(v179 + 16);
        if (v181)
        {
          v182 = (*(v240 + 80) + 32) & ~*(v240 + 80);
          v231 = v179;
          v183 = v179 + v182;
          v184 = *(v240 + 72);
          v185 = MEMORY[0x277D84F90];
          v186 = v260;
          v187 = v259;
          do
          {
            sub_2190AEE30(v183, v187, type metadata accessor for SearchModel);
            sub_2190AEED0(v187, v186, type metadata accessor for SearchModel);
            v188 = swift_getEnumCaseMultiPayload();
            if (v188 <= 1)
            {
              if (v188)
              {
                (*v287)(v186, v289);
              }

              else
              {

                sub_2186F8128();
                sub_2190AEF38(v186 + *(v195 + 48), type metadata accessor for SearchFeedGapLocation);
              }
            }

            else if (v188 == 2)
            {
              (*v288)(v186, v33);
            }

            else if (v188 == 3)
            {
              v189 = *v282;
              v190 = v250;
              v191 = v186;
              v192 = v290;
              (*v282)(v250, v191, v290);
              v189(v278, v190, v192);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v185 = sub_2191F8404(0, *(v185 + 2) + 1, 1, v185);
              }

              v194 = *(v185 + 2);
              v193 = *(v185 + 3);
              v33 = v284;
              if (v194 >= v193 >> 1)
              {
                v185 = sub_2191F8404(v193 > 1, v194 + 1, 1, v185);
              }

              *(v185 + 2) = v194 + 1;
              v189(&v185[((*(v271 + 80) + 32) & ~*(v271 + 80)) + *(v271 + 72) * v194], v278, v290);
              v186 = v260;
              v187 = v259;
            }

            else
            {
              sub_2190AEF38(v186, type metadata accessor for SearchModel);
            }

            v183 += v184;
            --v181;
          }

          while (v181);

          v74 = v263;
        }

        else
        {

          v185 = MEMORY[0x277D84F90];
        }

        sub_2187B14CC(&v294, v293, &qword_280EC6990, &qword_280EC69A0);
        v292 = v185;
        sub_218C92DAC(&v292, v291);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v238 = sub_2191F9C60(0, *(v238 + 2) + 1, 1, v238);
        }

        v71 = v265;
        v76 = v264;
        v207 = *(v238 + 2);
        v210 = *(v238 + 3);
        v208 = v207 + 1;
        if (v207 >= v210 >> 1)
        {
          v238 = sub_2191F9C60((v210 > 1), v207 + 1, 1, v238);
        }

        sub_218C92E08(&v292);
        result = sub_2187B1C64(&v294, &qword_280EC6990, &qword_280EC69A0);
        v209 = &v270;
        goto LABEL_165;
      }

      v120 = *v76;
      v296 = *(v76 + 40);
      v121 = *(v76 + 24);
      v294 = *(v76 + 8);
      v295 = v121;
      v122 = *(v120 + 16);
      if (v122)
      {
        v123 = (*(v240 + 80) + 32) & ~*(v240 + 80);
        v231 = v120;
        v124 = v120 + v123;
        v125 = *(v240 + 72);
        v126 = MEMORY[0x277D84F90];
        v127 = v258;
        v128 = v257;
        do
        {
          sub_2190AEE30(v124, v128, type metadata accessor for SearchModel);
          sub_2190AEED0(v128, v127, type metadata accessor for SearchModel);
          v129 = swift_getEnumCaseMultiPayload();
          if (v129 <= 1)
          {
            if (v129)
            {
              (*v287)(v127, v289);
            }

            else
            {

              sub_2186F8128();
              sub_2190AEF38(v127 + *(v136 + 48), type metadata accessor for SearchFeedGapLocation);
            }
          }

          else if (v129 == 2)
          {
            (*v288)(v127, v33);
          }

          else if (v129 == 3)
          {
            v130 = *v282;
            v131 = v249;
            v132 = v127;
            v133 = v290;
            (*v282)(v249, v132, v290);
            v130(v277, v131, v133);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v126 = sub_2191F8404(0, *(v126 + 2) + 1, 1, v126);
            }

            v135 = *(v126 + 2);
            v134 = *(v126 + 3);
            v33 = v284;
            if (v135 >= v134 >> 1)
            {
              v126 = sub_2191F8404(v134 > 1, v135 + 1, 1, v126);
            }

            *(v126 + 2) = v135 + 1;
            v130(&v126[((*(v271 + 80) + 32) & ~*(v271 + 80)) + *(v271 + 72) * v135], v277, v290);
            v127 = v258;
            v128 = v257;
          }

          else
          {
            sub_2190AEF38(v127, type metadata accessor for SearchModel);
          }

          v124 += v125;
          --v122;
        }

        while (v122);

        v74 = v263;
      }

      else
      {

        v126 = MEMORY[0x277D84F90];
      }

      sub_2187B14CC(&v294, v293, &qword_280EC6990, &qword_280EC69A0);
      v292 = v126;
      sub_218C92DAC(&v292, v291);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v237 = sub_2191F9C60(0, *(v237 + 2) + 1, 1, v237);
      }

      v71 = v265;
      v76 = v264;
      v201 = *(v237 + 2);
      v205 = *(v237 + 3);
      v202 = v201 + 1;
      if (v201 >= v205 >> 1)
      {
        v237 = sub_2191F9C60((v205 > 1), v201 + 1, 1, v237);
      }

      sub_218C92E08(&v292);
      result = sub_2187B1C64(&v294, &qword_280EC6990, &qword_280EC69A0);
      v77 = &v269;
LABEL_4:
      v78 = *(v77 - 32);
      *(v78 + 16) = v202;
      v79 = (v78 + 48 * v201);
LABEL_5:
      v80 = v291[2];
      v81 = v291[1];
      v79[2] = v291[0];
      v79[3] = v81;
      v79[4] = v80;
      v75 = v279;
LABEL_6:
      if (++v75 == v268)
      {
        goto LABEL_172;
      }
    }

    __break(1u);
  }

  else
  {
    v238 = MEMORY[0x277D84F90];
    v237 = MEMORY[0x277D84F90];
    v236 = MEMORY[0x277D84F90];
    v235 = MEMORY[0x277D84F90];
    v239 = MEMORY[0x277D84F90];
    v234 = MEMORY[0x277D84F90];
LABEL_172:
    v221 = v230;
    v222 = v235;
    *v230 = v234;
    v221[1] = v222;
    v223 = v237;
    v221[2] = v236;
    v221[3] = v223;
    v224 = v239;
    v221[4] = v238;
    v221[5] = v224;
    sub_2190AEE30(&v297, (v221 + 6), sub_2190AE78C);
    sub_2190AEF38(&v297, sub_2190AE78C);
    result = sub_2190AEF38(v229, type metadata accessor for SearchResults);
    v221[13] = MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2190AE238@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for RecipesSearchFeedGroup();
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF1904();
  v19 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SavedRecipesSearchFeedGroup();
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SearchFeedGroup();
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190AEE30(a1, v15, type metadata accessor for SearchFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (((1 << EnumCaseMultiPayload) & 0x67) != 0)
  {
    sub_2190AEF38(v15, type metadata accessor for SearchFeedGroup);
    return sub_2190AEE98(v2, v20);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_2190AEED0(v15, v6, type metadata accessor for RecipesSearchFeedGroup);
    sub_2190AE534(*&v6[*(v4 + 20)], v20);
    return sub_2190AEF38(v6, type metadata accessor for RecipesSearchFeedGroup);
  }

  else
  {
    sub_2190AEED0(v15, v12, type metadata accessor for SavedRecipesSearchFeedGroup);
    sub_219BED874();
    v18 = sub_219BF18C4();
    (*(v19 + 8))(v9, v7);
    sub_2190AE534(v18, v20);

    return sub_2190AEF38(v12, type metadata accessor for SavedRecipesSearchFeedGroup);
  }
}

uint64_t sub_2190AE534@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  if (a1 >> 62)
  {
    v6 = sub_219BF7214();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
LABEL_12:
    v19 = sub_218845F78(v7);

    v20 = sub_2190AE830(v3[3], v19);
    v21 = sub_2190AE830(v3[4], v19);
    v22 = *v3;
    v23 = v3[1];
    v24 = v3[2];
    v25 = v3[5];
    sub_2190AEE30((v3 + 6), (a2 + 6), sub_2190AE78C);
    v26 = v3[13];

    result = sub_2194796A0(v19, v26);
    *a2 = v22;
    a2[1] = v23;
    a2[2] = v24;
    a2[3] = v20;
    a2[4] = v21;
    a2[5] = v25;
    a2[13] = result;
    return result;
  }

  v27 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v7 = v27;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x21CECE0F0](v9, a1);
      }

      else
      {
        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = [v11 identifier];
      v13 = sub_219BF5414();
      v15 = v14;

      v17 = *(v27 + 16);
      v16 = *(v27 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_21870B65C((v16 > 1), v17 + 1, 1);
      }

      ++v9;
      *(v27 + 16) = v17 + 1;
      v18 = v27 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
    }

    while (v6 != v9);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_2190AE744(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2190AE78C()
{
  if (!qword_27CC15BA8)
  {
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC15BA8);
    }
  }
}

void sub_2190AE7DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF78A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2190AE830(uint64_t a1, uint64_t a2)
{
  v50 = sub_219BF0B74();
  v4 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308();
  v56 = v6;
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v54 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v55 = &v41 - v10;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  v61 = MEMORY[0x277D84F90];
  sub_218C369E0(0, v11, 0);
  v12 = 0;
  result = v61;
  v42 = a1 + 32;
  v47 = v7 + 16;
  v46 = (v4 + 8);
  v14 = a2 + 56;
  v45 = (v7 + 8);
  v53 = (v7 + 32);
  v48 = v7;
  v41 = v11;
  while (1)
  {
    v43 = result;
    v44 = v12;
    result = sub_218C92DAC(v42 + 48 * v12, &v58);
    v15 = v58;
    v52 = *(v58 + 16);
    if (v52)
    {
      break;
    }

    v17 = MEMORY[0x277D84F90];
LABEL_23:
    sub_2187B14CC(&v59, v60 + 8, &qword_280EC6990, &qword_280EC69A0);
    sub_218C92E08(&v58);
    *&v60[0] = v17;
    result = v43;
    v61 = v43;
    v37 = *(v43 + 16);
    v36 = *(v43 + 24);
    if (v37 >= v36 >> 1)
    {
      sub_218C369E0((v36 > 1), v37 + 1, 1);
      result = v61;
    }

    v12 = v44 + 1;
    *(result + 16) = v37 + 1;
    v38 = (result + 48 * v37);
    v39 = v60[0];
    v40 = v60[2];
    v38[3] = v60[1];
    v38[4] = v40;
    v38[2] = v39;
    if (v12 == v41)
    {
      return result;
    }
  }

  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  v51 = v58;
  while (v16 < *(v15 + 16))
  {
    v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v19 = *(v7 + 72);
    (*(v7 + 16))(v55, v15 + v18 + v19 * v16, v56);
    v20 = v49;
    sub_219BF07D4();
    v21 = sub_219BF0B44();
    (*v46)(v20, v50);
    v22 = [v21 identifier];

    v23 = sub_219BF5414();
    v25 = v24;

    if (*(a2 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v26 = sub_219BF7AE4(), v27 = -1 << *(a2 + 32), v28 = v26 & ~v27, ((*(v14 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) != 0))
    {
      v29 = ~v27;
      while (1)
      {
        v30 = (*(a2 + 48) + 16 * v28);
        v31 = *v30 == v23 && v30[1] == v25;
        if (v31 || (sub_219BF78F4() & 1) != 0)
        {
          break;
        }

        v28 = (v28 + 1) & v29;
        if (((*(v14 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      result = (*v45)(v55, v56);
    }

    else
    {
LABEL_17:

      v32 = *v53;
      (*v53)(v54, v55, v56);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_218C36A00(0, *(v17 + 16) + 1, 1);
        v17 = v57;
      }

      v35 = *(v17 + 16);
      v34 = *(v17 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_218C36A00(v34 > 1, v35 + 1, 1);
        v17 = v57;
      }

      *(v17 + 16) = v35 + 1;
      result = (v32)(v17 + v18 + v35 * v19, v54, v56);
    }

    ++v16;
    v7 = v48;
    v15 = v51;
    if (v16 == v52)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2190AEE30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2190AEED0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2190AEF38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2190AEFB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2190AEFF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_2190AF040(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI214SearchFeedPoolV09TopResultC7ResultsOSg(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

NewsUI2::Storefront_optional __swiftcall Storefront.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_219BF7614();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t Storefront.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x313434333431;
  v3 = 0x343434333431;
  v4 = 0x303634333431;
  if (v1 != 3)
  {
    v4 = 0x353534333431;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_2190AF1C8()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_2190AF2A0()
{
  sub_219BF5524();
}

uint64_t sub_2190AF364()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

void sub_2190AF444(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x313434333431;
  v5 = 0x343434333431;
  v6 = 0x303634333431;
  if (v2 != 3)
  {
    v6 = 0x353534333431;
  }

  if (v2 != 2)
  {
    v5 = v6;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x8000000219CD7820;
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2190AF4D8(uint64_t a1)
{
  v2 = sub_2190AFD88();
  v3 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A30](a1, v2, v3);
}

uint64_t sub_2190AF52C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2190AFD88();
  v5 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A28](a1, a2, v4, v5);
}

uint64_t sub_2190AF588(uint64_t a1)
{
  v2 = sub_2190AFD88();
  v3 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A20](a1, v2, v3);
}

uint64_t sub_2190AF5DC()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[15] = 0;
  sub_21871A648();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC15BB8 = result;
  return result;
}

uint64_t sub_2190AF7B4()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[15] = 0;
  sub_21871A648();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC15BC0 = result;
  return result;
}

uint64_t sub_2190AF98C()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2190AFDDC();
  v10[15] = 0;
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  sub_2190AFE8C();
  sub_2190AFEE4();
  *(swift_allocObject() + 16) = xmmword_219C0D560;
  v10[14] = 0;
  sub_219BDC954();
  v10[13] = 1;
  sub_219BDC954();
  v10[12] = 2;
  sub_219BDC954();
  v10[11] = 3;
  sub_219BDC954();
  v10[10] = 4;
  sub_219BDC954();
  sub_2190AFF34();
  result = sub_219BDC9B4();
  qword_27CC15BC8 = result;
  return result;
}

unint64_t sub_2190AFD14()
{
  result = qword_27CC15BD0;
  if (!qword_27CC15BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15BD0);
  }

  return result;
}

unint64_t sub_2190AFD88()
{
  result = qword_27CC15BD8;
  if (!qword_27CC15BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15BD8);
  }

  return result;
}

void sub_2190AFDDC()
{
  if (!qword_27CC15BE0)
  {
    sub_2190AFE38();
    v0 = sub_219BDC9E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC15BE0);
    }
  }
}

unint64_t sub_2190AFE38()
{
  result = qword_27CC15BE8;
  if (!qword_27CC15BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15BE8);
  }

  return result;
}

void sub_2190AFE8C()
{
  if (!qword_27CC15BF0)
  {
    sub_2190AFEE4();
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC15BF0);
    }
  }
}

void sub_2190AFEE4()
{
  if (!qword_27CC15BF8)
  {
    v0 = sub_219BDC964();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC15BF8);
    }
  }
}

unint64_t sub_2190AFF34()
{
  result = qword_27CC15C00;
  if (!qword_27CC15C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15C00);
  }

  return result;
}

uint64_t sub_2190AFF8C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EE33B0);
    result = sub_219BE1E34();
    if (v9)
    {
      v6 = type metadata accessor for SharedWithYouFeedModule();
      v7 = swift_allocObject();
      sub_2186CB1F0(v10, v7 + 16);
      *(v7 + 56) = v5;
      result = sub_2186CB1F0(&v8, v7 + 64);
      a2[3] = v6;
      a2[4] = &protocol witness table for SharedWithYouFeedModule;
      *a2 = v7;
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

uint64_t sub_2190B00A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90260);
  result = sub_219BE1E34();
  if (v7)
  {
    v4 = type metadata accessor for SharedWithYouFeedDataProvider();
    v5 = swift_allocObject();
    result = sub_2186CB1F0(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_282A60138;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2190B0154()
{
  v0 = sub_219BE3344();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SharedWithYouFeedViewController();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC15C08);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC15C10);
  sub_219BE2914();
  type metadata accessor for SharedWithYouFeedRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_27CC15C18);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC15C20);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC15C28);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC15C30);
  sub_219BE2914();

  sub_2186C709C(0, &unk_280E90370);
  sub_219BE2914();
  (*(v1 + 104))(v3, *MEMORY[0x277D6CF70], v0);
  sub_219BE19A4();

  (*(v1 + 8))(v3, v0);
  sub_218987294();
  sub_219BE2904();

  type metadata accessor for SharedWithYouFeedBlueprintModifierFactory();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC15C38);
  sub_219BE2914();

  sub_2190B61F0();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2190B6A88();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2190B6CD0();
  sub_219BE2904();

  sub_219BE9C54();
  sub_219BE2904();

  sub_2190B62DC();
  sub_219BE2904();

  sub_2190B6BC4();
  sub_219BE2904();

  sub_2190B6764();
  sub_219BE2904();

  type metadata accessor for SharedWithYouFeedBlueprintLayoutBuilder();
  sub_219BE2904();

  sub_2190B6D64();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8E74();
  sub_219BE2904();

  sub_2190B6418();
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE3DE0);
  sub_219BE2914();
  sub_219BE95A4();
  sub_219BE19C4();

  sub_21879AAE0(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2190B6594();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2190B681C();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2190B699C();
  sub_219BE2904();

  type metadata accessor for SharedWithYouFeedBlueprintViewCellProvider();
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for SharedWithYouFeedBlueprintViewSupplementaryViewProvider();
  sub_219BE2904();

  sub_2190B6EA0();
  sub_219BE2904();

  sub_2190B6F34();
  sub_219BE2904();

  sub_2190B7020();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE70E4();
  sub_219BE2904();

  sub_2190B70B4();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8A54();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EE3C80);
  sub_219BE2914();

  sub_219BE9534();
  sub_219BE2904();

  sub_219BE9564();
  sub_219BE2904();

  sub_2190B71A0();
  sub_219BE2904();

  sub_2190B72E0();
  sub_219BE2904();
}

uint64_t sub_2190B0DE4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC15C08);
  result = sub_219BE1E34();
  if (!v50)
  {
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC15C18);
  result = sub_219BE1E34();
  if (!v47)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B6D64();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FD80);
  result = sub_219BE1E34();
  if (!v45)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_219BF4FF4();
  swift_allocObject();
  v5 = sub_219BF4FE4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE5150);
  result = sub_219BE1E34();
  if (!v42)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v39 = v43;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218716B60();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v35 = result;
  v36 = v42;
  v37 = v48;
  v38 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E890);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = result;
  v7 = v5;
  v8 = v47;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v41[0])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E24();
  if (result)
  {
    v9 = result;
    v45 = v4;
    v46 = sub_218713920(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    v44[0] = v9;
    sub_219BE6AE4();
    swift_allocObject();
    v34[0] = sub_219BE6AC4();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v49, v50);
    v34[2] = v34;
    MEMORY[0x28223BE20](v10);
    v12 = (v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = *v12;
    v15 = type metadata accessor for SharedWithYouFeedStyler();
    v45 = v15;
    v46 = &off_282A64F90;
    v44[0] = v14;
    v16 = type metadata accessor for SharedWithYouFeedViewController();
    v17 = objc_allocWithZone(v16);
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
    v34[1] = v34;
    MEMORY[0x28223BE20](v18);
    v20 = (v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20);
    v22 = *v20;
    v41[3] = v15;
    v41[4] = &off_282A64F90;
    v41[0] = v22;
    sub_218718690(v41, &v17[OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_styler]);
    v23 = &v17[OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_eventHandler];
    v24 = v37;
    *v23 = v8;
    *(v23 + 1) = v24;
    v25 = v38;
    *&v17[OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_blueprintViewController] = v38;
    *&v17[OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_sharingActivityProviderFactory] = v7;
    v26 = &v17[OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_toolbarManager];
    v27 = v39;
    *v26 = v36;
    *(v26 + 1) = v27;
    *&v17[OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_newsActivityManager] = v35;
    *&v17[OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_userInfo] = v6;
    *&v17[OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_commandContainer] = v34[0];
    v40.receiver = v17;
    v40.super_class = v16;
    swift_unknownObjectRetain();
    v28 = v25;

    swift_unknownObjectRetain();

    v29 = v6;

    v30 = objc_msgSendSuper2(&v40, sel_initWithNibName_bundle_, 0, 0);
    *(*&v30[OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_eventHandler] + 24) = &off_282A60990;
    swift_unknownObjectWeakAssign();
    v31 = *&v30[OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_blueprintViewController];
    v32 = v30;
    v33 = v31;
    sub_219BE8744();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v41);
    __swift_destroy_boxed_opaque_existential_1(v44);
    __swift_destroy_boxed_opaque_existential_1(v49);
    return v32;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2190B1504@<X0>(void *a1@<X0>, void *a2@<X8>)
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
    v10 = sub_218713920(&qword_280EDFED0, type metadata accessor for BaseStyler);
    v18[4] = v10;
    v18[0] = v8;
    v11 = type metadata accessor for SharedWithYouFeedStyler();
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
    a2[4] = &off_282A64F90;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2190B1764@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v11);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE33B0);
  result = sub_219BE1E34();
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B7C50(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for SharedWithYouFeedRouter();
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2186CB1F0(v11, v8 + 24);
    *(v8 + 64) = v5;
    result = sub_2186CB1F0(&v9, v8 + 72);
    *(v8 + 112) = v6;
    a2[3] = v7;
    a2[4] = &off_282A58828;
    *a2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_2190B18F8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SharedWithYouFeedViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_2190B1978@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC15C20);
  result = sub_219BE1E34();
  v5 = v20;
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC15C10);
  result = sub_219BE1E34();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC15C28);
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
    v15 = sub_2190B7A44(v5, v6, *v9, *v13);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v16);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    *a2 = v15;
    a2[1] = &off_282A88EB0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2190B1C28@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_219BED184();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC15C30);
  result = sub_219BE1E34();
  v9 = v30;
  if (!v30)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = v31;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B7C50(0, &qword_280E90730, sub_2186F175C, &type metadata for SharedWithYouFeedOfflineModel, MEMORY[0x277D33538]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = result;
  v28 = v10;
  v29 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B61F0();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = result;
  v27 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SharedWithYouFeedBlueprintModifierFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = result;
  v14 = v5;
  v26 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B6764();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = result;
  v25 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B71A0();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B72E0();
  result = sub_219BE1E24();
  if (result)
  {
    v17 = result;
    sub_2190B78B8();
    v18 = swift_allocObject();
    v18[3] = 0;
    swift_unknownObjectWeakInit();
    sub_2186C6148(0, &qword_280E8E3B0);
    v19 = v26;
    (*(v14 + 104))(v7, *MEMORY[0x277D851B8], v26);
    v20 = sub_219BF66E4();
    (*(v14 + 8))(v7, v19);
    v18[12] = v20;
    v21 = v28;
    v22 = v29;
    v18[6] = v29;
    v18[7] = v21;
    v18[4] = v12;
    v18[5] = v13;
    v18[8] = v27;
    v18[9] = v15;
    v18[10] = v16;
    v18[11] = v17;
    *(v22 + OBJC_IVAR____TtC7NewsUI228SharedWithYouFeedDataManager_delegate + 8) = &off_282A4E560;
    result = swift_unknownObjectWeakAssign();
    v23 = v25;
    *v25 = v18;
    v23[1] = &off_282A4E578;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2190B1FC0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE0204();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE02D4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0);
  result = sub_219BE1E34();
  if (v11)
  {
    v8 = type metadata accessor for SharedWithYouFeedTracker();
    v9 = swift_allocObject();
    v9[3] = v7;
    v9[4] = v6;
    v9[2] = v5;
    result = sub_2186CB1F0(&v10, (v9 + 5));
    a2[3] = v8;
    a2[4] = &off_282A638D0;
    *a2 = v9;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2190B2138@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_219BED184();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SharedWithYouFeedServiceContextFactory();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186FF61C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = result;
  v20 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186FF588();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90260);
  result = sub_219BE1E34();
  if (!v25)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90370);
  result = sub_219BE1DF4();
  if (v23)
  {
    v12 = type metadata accessor for SharedWithYouFeedDataManager();
    v13 = objc_allocWithZone(v12);
    *&v13[OBJC_IVAR____TtC7NewsUI228SharedWithYouFeedDataManager_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v14 = OBJC_IVAR____TtC7NewsUI228SharedWithYouFeedDataManager_accessQueue;
    sub_2186C6148(0, &qword_280E8E3B0);
    (*(v5 + 104))(v7, *MEMORY[0x277D851B8], v4);
    v15 = sub_219BF66E4();
    (*(v5 + 8))(v7, v4);
    *&v13[v14] = v15;
    *&v13[OBJC_IVAR____TtC7NewsUI228SharedWithYouFeedDataManager_feedServiceContextFactory] = v9;
    *&v13[OBJC_IVAR____TtC7NewsUI228SharedWithYouFeedDataManager_feedServiceConfigFetcher] = v10;
    *&v13[OBJC_IVAR____TtC7NewsUI228SharedWithYouFeedDataManager_feedService] = v11;
    sub_218718690(v24, &v13[OBJC_IVAR____TtC7NewsUI228SharedWithYouFeedDataManager_sharedItemManager]);
    sub_218718690(v22, &v13[OBJC_IVAR____TtC7NewsUI228SharedWithYouFeedDataManager_headlineService]);
    v21.receiver = v13;
    v21.super_class = v12;

    v16 = objc_msgSendSuper2(&v21, sel_init);
    __swift_project_boxed_opaque_existential_1(v24, v25);
    sub_218713920(&qword_27CC15DD8, type metadata accessor for SharedWithYouFeedDataManager);
    v17 = v16;
    sub_219BF2F24();

    __swift_destroy_boxed_opaque_existential_1(v22);
    result = __swift_destroy_boxed_opaque_existential_1(v24);
    v18 = v20;
    *v20 = v17;
    v18[1] = &off_282AA17C8;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_2190B255C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE9E20);
  result = sub_219BE1E34();
  if (v35)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_27CC15C38);
    result = sub_219BE1E34();
    if (v33)
    {
      v3 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
      v27[2] = v27;
      MEMORY[0x28223BE20](v3);
      v5 = (v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v6 + 16))(v5);
      v7 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
      v27[1] = v27;
      MEMORY[0x28223BE20](v7);
      v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v9);
      v11 = *v5;
      v12 = type metadata accessor for HeadlineModelFactory();
      v31[3] = v12;
      v31[4] = &off_282A8B8E8;
      v31[0] = v11;
      v29 = &type metadata for SharedWithYouFeedSectionFactory;
      v30 = &off_282A6AB48;
      v13 = swift_allocObject();
      v28[0] = v13;
      v14 = *(v9 + 1);
      *(v13 + 16) = *v9;
      *(v13 + 32) = v14;
      *(v13 + 48) = *(v9 + 2);
      *(v13 + 64) = *(v9 + 6);
      type metadata accessor for SharedWithYouFeedBlueprintModifierFactory();
      v15 = swift_allocObject();
      v16 = __swift_mutable_project_boxed_opaque_existential_1(v31, v12);
      MEMORY[0x28223BE20](v16);
      v18 = (v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18);
      v20 = __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
      MEMORY[0x28223BE20](v20);
      v22 = v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v23 + 16))(v22);
      v24 = *v18;
      v15[5] = v12;
      v15[6] = &off_282A8B8E8;
      v15[2] = v24;
      v15[10] = &type metadata for SharedWithYouFeedSectionFactory;
      v15[11] = &off_282A6AB48;
      v25 = swift_allocObject();
      v15[7] = v25;
      v26 = *(v22 + 1);
      *(v25 + 16) = *v22;
      *(v25 + 32) = v26;
      *(v25 + 48) = *(v22 + 2);
      *(v25 + 64) = *(v22 + 6);
      __swift_destroy_boxed_opaque_existential_1(v28);
      __swift_destroy_boxed_opaque_existential_1(v31);
      __swift_destroy_boxed_opaque_existential_1(v32);
      __swift_destroy_boxed_opaque_existential_1(v34);
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

uint64_t sub_2190B29C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE9E20);
  result = sub_219BE1E34();
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EE9F20);
    result = sub_219BE1E34();
    if (v6)
    {
      a2[3] = &type metadata for SharedWithYouFeedSectionFactory;
      a2[4] = &off_282A6AB48;
      v5 = swift_allocObject();
      *a2 = v5;
      result = sub_2186CB1F0(&v8, v5 + 16);
      *(v5 + 56) = v6;
      *(v5 + 64) = v7;
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

uint64_t sub_2190B2ADC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987294();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2190B62DC();
    result = sub_219BE1E24();
    if (result)
    {
      sub_2190B61F0();
      swift_allocObject();
      return sub_219BE6EB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2190B2BC4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2190B6A88();
  result = sub_219BE1E24();
  if (result)
  {
    sub_2190B77CC();
    swift_allocObject();
    sub_218713920(&qword_27CC15DD0, sub_2190B6A88);
    sub_219BE8FA4();
    sub_219BE6ED4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2190B2CA8(void *a1)
{
  sub_2190B7778(0, &qword_280EE3A90, MEMORY[0x277D6EB30]);
  MEMORY[0x28223BE20](v2 - 8);
  sub_219BEA594();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SharedWithYouFeedBlueprintLayoutBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B6BC4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B6CD0();
  result = sub_219BE1E24();
  if (result)
  {
    sub_2190B6A88();
    swift_allocObject();
    return sub_219BEA474();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2190B2E28(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = sub_219BE9534();
  result = sub_219BE1DE4();
  if (result)
  {
    v11 = v3;
    v12 = MEMORY[0x277D6E678];
    *&v10 = result;
    sub_219BEA494();
    __swift_destroy_boxed_opaque_existential_1(&v10);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v5 = sub_219BF0214();
    sub_218718690(a2, &v10);
    v6 = swift_allocObject();
    sub_2186CB1F0(&v10, v6 + 16);
    v7 = sub_219BE1E04();

    if (v7)
    {
      v11 = v5;
      v12 = sub_218713920(&unk_280E90FE0, MEMORY[0x277D32C00]);
      *&v10 = v7;
      sub_219BEA494();
      __swift_destroy_boxed_opaque_existential_1(&v10);
      v8 = sub_219BE99D4();
      swift_allocObject();
      v9 = sub_219BE99C4();
      v11 = v8;
      v12 = MEMORY[0x277D6E7D8];
      *&v10 = v9;
      sub_219BEA494();
      return __swift_destroy_boxed_opaque_existential_1(&v10);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2190B3008(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B6764();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0);
  result = sub_219BE1DF4();
  if (v3)
  {
    sub_2190B6CD0();
    swift_allocObject();
    return sub_219BE99A4();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2190B31B0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B6418();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE39D0);
    result = sub_219BE1E34();
    if (v3)
    {
      sub_2190B62DC();
      swift_allocObject();
      return sub_219BE72C4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2190B3308(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

uint64_t sub_2190B334C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879AAE0(0, &unk_280E91DA0, MEMORY[0x277D33AC8], MEMORY[0x277D33AC0], MEMORY[0x277D31F40]);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BF44C4();
    result = sub_219BE1E24();
    if (result)
    {
      v4 = result;
      type metadata accessor for SharedWithYouFeedBlueprintLayoutBuilder();
      result = swift_allocObject();
      *(result + 16) = v3;
      *(result + 24) = v4;
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

uint64_t sub_2190B3438(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987294();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B6418();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0);
  result = sub_219BE1DF4();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE39D0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B7020();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE70E4();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    sub_218713920(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    sub_2190B6D64();
    v4 = objc_allocWithZone(v3);
    return sub_219BE8754();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2190B3744(uint64_t a1, void *a2)
{
  v3 = sub_219BE8FC4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BF3E94();
  if (sub_219BE1E24())
  {
    sub_218713920(&qword_280E8FF80, MEMORY[0x277D34268]);
  }

  sub_219BE8704();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2190B6EA0();
  v8 = v7;
  v9 = sub_219BE1E24();
  v10 = v9;
  if (v9)
  {
    v9 = sub_218713920(&qword_27CC15DB8, sub_2190B6EA0);
  }

  else
  {
    v8 = 0;
    v19 = 0;
    v20 = 0;
  }

  v18 = v10;
  v21 = v8;
  v22 = v9;
  sub_219BE86F4();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2190B6CD0();
  v12 = v11;
  v13 = sub_219BE1E24();
  v14 = v13;
  if (v13)
  {
    v13 = sub_218713920(&qword_27CC15DB0, sub_2190B6CD0);
  }

  else
  {
    v12 = 0;
    v19 = 0;
    v20 = 0;
  }

  v18 = v14;
  v21 = v12;
  v22 = v13;
  sub_219BE8724();
  (*(v4 + 104))(v6, *MEMORY[0x277D6E3C8], v3);
  sub_219BE86C4();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280E8FF70);
  result = sub_219BE1E34();
  if (v18)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2190B6764();
    result = sub_219BE1E24();
    if (result)
    {
      v16 = result;
      swift_getObjectType();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = v16;
      sub_219BF35C4();
      swift_allocObject();
      sub_218713920(&qword_27CC15C68, sub_2190B6764);

      sub_219BF35A4();
      sub_219BF3EC4();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2190B3B3C()
{
  sub_2190B7778(0, &qword_27CC15DC0, sub_218C8AAD8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v15 - v1;
  sub_218C8AAD8();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_219BE86A4();

    v16 = v15[1];
    sub_218987294();
    sub_218713920(&unk_27CC12F70, sub_218987294);
    sub_219BE7B94();

    v10 = sub_219462998();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v10 = 0xF000000000000007;
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    sub_219BE86A4();

    v15[0] = v16;
    sub_218987294();
    sub_218713920(&unk_27CC12F70, sub_218987294);
    sub_219BE7B94();

    (*(v5 + 56))(v2, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v2, 1, 1, v4);
  }

  sub_219BE6684();
  type metadata accessor for SharedWithYouFeedSectionDescriptor();
  type metadata accessor for SharedWithYouFeedModel(0);
  sub_218713920(&qword_27CC0FB80, type metadata accessor for SharedWithYouFeedSectionDescriptor);
  sub_218713920(&unk_27CC0B830, type metadata accessor for SharedWithYouFeedModel);
  sub_219BF44D4();
  sub_2190B7700(v2);
  type metadata accessor for SharedWithYouFeedServiceConfig();
  sub_218713920(&qword_280EAB3F0, type metadata accessor for SharedWithYouFeedServiceConfig);
  v13 = sub_219BE6624();

  sub_21885AB78(v10);
  return v13;
}

uint64_t sub_2190B3F14(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879AAE0(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
  result = sub_219BE1DE4();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE73A0);
    result = sub_219BE1E34();
    if (v4)
    {
      v3 = objc_allocWithZone(sub_219BE8E74());
      return sub_219BE8E64();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2190B4054(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE8E74();
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B6594();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B681C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B699C();
  result = sub_219BE1E24();
  if (result)
  {
    sub_2190B6418();
    swift_allocObject();
    return sub_219BE7BB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2190B41B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B6418();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE7BC4();

    sub_219BE95A4();
    swift_allocObject();
    result = sub_219BE9594();
    v4 = MEMORY[0x277D6E690];
    *a2 = result;
    a2[1] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2190B4270()
{
  v0 = sub_219BE80A4();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6DDE0]);
  return sub_219BE9574();
}

uint64_t sub_2190B4340(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    sub_21879AAE0(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
    v3 = objc_allocWithZone(v2);
    return sub_219BE9454();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2190B4410(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987294();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B6764();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SharedWithYouFeedBlueprintViewCellProvider();
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
  type metadata accessor for SharedWithYouFeedBlueprintViewSupplementaryViewProvider();
  result = sub_219BE1E24();
  if (result)
  {
    *&v8[0] = v3;
    sub_2190B6594();
    v7 = objc_allocWithZone(v6);
    return sub_219BE9B64();
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_2190B45AC(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE8E74();
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

uint64_t sub_2190B46B4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EE3C80);
  result = sub_219BE1DF4();
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(v3, v4);
    sub_219BEA274();
    sub_219BE9B74();

    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2190B4790(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987294();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B6764();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B7020();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_218713920(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE4800);
  result = sub_219BE1E34();
  if (v5)
  {
    sub_2190B681C();
    v4 = objc_allocWithZone(v3);
    return sub_219BE9744();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_2190B49E0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE70E4();
  sub_219BE1DE4();
  sub_219BE9764();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE9564();
  sub_219BE1DE4();
  sub_219BE9784();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2190B70B4();
  if (sub_219BE1E24())
  {
    sub_218713920(&qword_27CC15DA8, sub_2190B70B4);
  }

  sub_219BE9774();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2190B6D64();
  sub_219BE1E24();
  return sub_219BE9714();
}

uint64_t sub_2190B4B6C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987294();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2190B6764();
    result = sub_219BE1E24();
    if (result)
    {
      sub_2190B699C();
      v4 = objc_allocWithZone(v3);
      return sub_219BE9F24();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2190B4C2C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810);
  result = sub_219BE1E34();
  if (v22)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280E91810);
    result = sub_219BE1E34();
    v3 = v19;
    if (v19)
    {
      v4 = v20;
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
      MEMORY[0x28223BE20](v5);
      v7 = (v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = *v7;
      v10 = type metadata accessor for BaseStyler();
      v18[3] = v10;
      v11 = sub_218713920(&qword_280EDFED0, type metadata accessor for BaseStyler);
      v18[4] = v11;
      v18[0] = v9;
      type metadata accessor for SharedWithYouFeedBlueprintViewCellProvider();
      v12 = swift_allocObject();
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v18, v10);
      MEMORY[0x28223BE20](v13);
      v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v16 + 16))(v15);
      v17 = *v15;
      v12[7] = v10;
      v12[8] = v11;
      v12[3] = 0;
      v12[4] = v17;
      swift_unknownObjectWeakInit();
      v12[9] = v3;
      v12[10] = v4;
      __swift_destroy_boxed_opaque_existential_1(v18);
      __swift_destroy_boxed_opaque_existential_1(v21);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2190B4EE4(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SharedWithYouFeedViewController();
  v4 = sub_219BE1E24();
  v3 = &off_282A60980;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_2190B4F78(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90FD0);
  sub_218718690(a1, v5);
  v2 = swift_allocObject();
  sub_2186CB1F0(v5, v2 + 16);
  sub_219BE1E14();

  if (v7)
  {
    type metadata accessor for SharedWithYouFeedBlueprintViewSupplementaryViewProvider();
    v4 = swift_allocObject();
    sub_2186CB1F0(&v6, v4 + 16);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2190B507C(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C3070C(0, &qword_280E8B8A8, MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2190B6F34();
  v5 = v4;
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    *(v3 + 56) = v5;
    *(v3 + 64) = sub_218713920(&qword_27CC15DA0, sub_2190B6F34);
    *(v3 + 32) = v7;
    sub_218C3070C(0, &qword_280E8EF20, MEMORY[0x277D83940]);
    sub_219BE1BA4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2190B51D4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B6418();
  result = sub_219BE1E24();
  if (result)
  {
    sub_2190B6EA0();
    swift_allocObject();
    return sub_219BE8914();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2190B524C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987294();
  result = sub_219BE1E24();
  if (result)
  {
    sub_2190B6F34();
    swift_allocObject();
    return sub_219BEEB34();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2190B52E4(void *a1)
{
  v2 = sub_219BE9BC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BE9BE4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_2190B7640();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987294();
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    (*(v9 + 104))(v11, *MEMORY[0x277D6E378], v8);
    *v5 = 0;
    (*(v3 + 104))(v5, *MEMORY[0x277D6E828], v2);
    sub_219BE9BD4();
    v14[1] = v13;
    sub_2190B7020();
    swift_allocObject();
    return sub_219BE8EC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2190B553C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &qword_280E90FB0);
  sub_219BE1E34();
  sub_2190B7438();
  swift_allocObject();
  sub_219BEFCE4();
  sub_218713920(&qword_27CC15D80, sub_2190B7438);
  sub_219BE8EA4();

  sub_2190B7510();
  swift_allocObject();
  sub_219BF0074();
  sub_218713920(&qword_27CC15D90, sub_2190B7510);
  sub_219BE8EA4();
}

uint64_t sub_2190B56D0(void *a1)
{
  sub_2187F2110();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B70B4();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = sub_218713920(&qword_27CC15D68, sub_2190B70B4);
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

uint64_t sub_2190B5814(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B6418();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987294();
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
    sub_218713920(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    sub_2190B70B4();
    swift_allocObject();
    return sub_219BE9AB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2190B59F4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B6418();
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

uint64_t sub_2190B5AB0(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2190B6D64();
  v7 = sub_219BE1E24();
  if (v7)
  {
    v8 = v7;
    v9 = sub_218713920(a3, sub_2190B6D64);
    v7 = v8;
  }

  else
  {
    v9 = 0;
  }

  return a5(v7, v9);
}

uint64_t sub_2190B5B64@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B6D64();
  v4 = v3;
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_218713920(&qword_27CC15D50, sub_2190B6D64);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2190B5C0C(void *a1)
{
  sub_2190B7778(0, &unk_280EE3E00, MEMORY[0x277D6E8E0]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v12 - v3;
  v5 = sub_219BE9524();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_219BE9564();
  result = sub_219BE1DE4();
  if (result)
  {
    v12[4] = v9;
    v12[5] = MEMORY[0x277D6E680];
    v12[1] = result;
    *v8 = 2;
    (*(v6 + 104))(v8, *MEMORY[0x277D6E670], v5);
    v11 = sub_219BE9D64();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    sub_219BE9534();
    swift_allocObject();
    return sub_219BE9514();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2190B5E1C()
{
  sub_2190B7778(0, &unk_280EE3E00, MEMORY[0x277D6E8E0]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_219BE8944();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE8544();
  MEMORY[0x28223BE20](v7 - 8);
  sub_219BE9564();
  if (qword_280E8D890 != -1)
  {
    swift_once();
  }

  v8 = qword_280F61760;
  (*(v4 + 104))(v6, *MEMORY[0x277D6E080], v3);
  v9 = sub_219BE9D64();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  v10 = v8;
  sub_219BE8534();
  return sub_219BE9554();
}

uint64_t sub_2190B603C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B6764();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C6148(0, &qword_280E8E350);
    result = sub_219BE1E24();
    if (result)
    {
      sub_2190B71A0();
      swift_allocObject();
      return sub_219BDEB44();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2190B612C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987294();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2190B6764();
    result = sub_219BE1E24();
    if (result)
    {
      sub_2190B72E0();
      swift_allocObject();
      return sub_219BDEC54();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2190B61F0()
{
  if (!qword_27CC15C40)
  {
    sub_218987294();
    sub_2190B62DC();
    sub_218713920(&unk_27CC12F70, sub_218987294);
    sub_218713920(&qword_27CC15CC0, sub_2190B62DC);
    v0 = sub_219BE6F54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC15C40);
    }
  }
}

void sub_2190B62DC()
{
  if (!qword_27CC15C48)
  {
    type metadata accessor for SharedWithYouFeedSectionDescriptor();
    type metadata accessor for SharedWithYouFeedModel(255);
    sub_2190B6418();
    sub_218713920(&qword_27CC0FB80, type metadata accessor for SharedWithYouFeedSectionDescriptor);
    sub_218713920(&unk_27CC0B830, type metadata accessor for SharedWithYouFeedModel);
    sub_218713920(&qword_27CC15CB8, sub_2190B6418);
    v0 = sub_219BE72E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC15C48);
    }
  }
}

void sub_2190B6418()
{
  if (!qword_27CC15C50)
  {
    sub_2186C6148(255, &qword_280E8E4C0);
    sub_2190B6594();
    sub_2190B681C();
    sub_2190B699C();
    type metadata accessor for SharedWithYouFeedViewController();
    sub_218713920(&qword_27CC15CA0, sub_2190B6594);
    sub_218713920(&qword_27CC15CA8, sub_2190B681C);
    sub_218713920(&qword_27CC15CB0, sub_2190B699C);
    v0 = sub_219BE7BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC15C50);
    }
  }
}